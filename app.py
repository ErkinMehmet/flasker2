from flask import Flask,render_template,flash,request,redirect,url_for,abort, jsonify,g,current_app,session
from flask_wtf import FlaskForm
from wtforms import StringField,SubmitField,PasswordField,BooleanField,ValidationError
from wtforms.validators import DataRequired,EqualTo,Length
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime
from dataclasses import dataclass
from flask_migrate import Migrate
import os
from datetime import date
from werkzeug.security import generate_password_hash,check_password_hash
from wtforms.widgets import TextArea
from flask_login import LoginManager,login_required,UserMixin,logout_user,current_user,login_user
from flask_ckeditor import CKEditor
from functools import wraps
from werkzeug.utils import secure_filename
from flask_redis import FlaskRedis
from flasgger import Swagger
from flask_cors import CORS
from flask_socketio import SocketIO, emit, join_room, leave_room
import openai
import getpass

from flasker.regressors.dt import train_dt_predictor
from flasker.regressors.predictor import Prediction, Predictor
from flasker.forms import UserForm,LoginForm,PostForm,PwdForm,NamerForm,SearchForm
from flasker.enums import MessageType, MessageStatus, MessagePriority

@dataclass
class AppEnvironment:
    api_key: str

# initialiser la bd
db=SQLAlchemy()
migrate=Migrate()
login_manager=LoginManager()
socketio = SocketIO()
openai.api_key=os.getenv("OPENAI", "default_api_key")

def admin_required(f):
    @wraps(f)
    def decorated_function(*args, **kwargs):
        if not current_user.is_authenticated or not current_user.admin:
            abort(403)   # or another page like login or an error page
        return f(*args, **kwargs)
    return decorated_function

from flasker.models import Posts,Users,Articles,Messages
from flasker.routes import user_bp,post_bp,test_bp,core_bp,admin_bp,api_bp,auth_bp,presentation_bp,ai_bp

def create_app(env: AppEnvironment = None) -> Flask:
    app=Flask(__name__)

    ckeditor=CKEditor(app)
    # ajouter la bd SQLite
    #app.config['SQLALCHEMY_DATABASE_URI']='sqlite:///users.db'F
    #app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
    # ajouter la bd MySQL
    db_user = os.getenv('SQLALCHEMY_DATABASE_USER')
    db_password = os.getenv('SQLALCHEMY_DATABASE_PWD')
    db_server = os.getenv('SQLALCHEMY_DATABASE_SERVER')
    db_name = os.getenv('SQLALCHEMY_DATABASE')
    if not db_password:
        db_password = getpass.getpass('Veuillez saisir le mot de passe à la base de données: ')
    db_uri = f"mysql+pymysql://{db_user}:{db_password}@{db_server}/{db_name}"
    app.config['API_KEY']= os.getenv("API_KEY", "default_api_key")
    
    app.config['SQLALCHEMY_DATABASE_URI']=db_uri
    app.config['SECRET_KEY']= os.getenv('SECRET_KEY')
    app.config['UPLOAD_FOLDER']= os.getenv('UPLOAD_FOLDER', 'static/images/')
    app.config['NAME']= os.getenv('NAME')
    app.config['TITLE']= os.getenv('TITLE')
    app.config['DESCRIPTION']= os.getenv('DESCRIPTION')
    app.config['SITEPHP']= os.getenv('SITEPHP','http://localhost:8000/')
    app.config['BDQM']= os.getenv('BDQM')
    app.config['ALLOWED_EXTENSIONS'] = {'png', 'jpg', 'jpeg', 'gif'}
    app.config['OPENAI'] = os.getenv("OPENAI", "default_api_key")
    app.config['SITEVUE']= os.getenv('SITEVUE','http://localhost:5173/')


    # Utiliser g (comme redis) pour stocker des variables
    @app.before_request
    def add_sitephp_to_g():
        g.sitephp = current_app.config['SITEPHP']
        g.clefapi=current_app.config['API_KEY']
        g.sitevue=current_app.config['SITEVUE']


    #cors, redis et swagger
    swagger = Swagger(app)
    app.config['REDIS_URL'] = 'redis://localhost:6379/0'
    redis_client = FlaskRedis(app)
    CORS(app)
    socketio.init_app(app)
    db.init_app(app)
    migrate.init_app(app, db)
    #db=SQLAlchemy(app)
    #migrate=Migrate(app,db)
    #app.dt_predictor=train_dt_predictor(app)
    #app.kmc_predictor=initiate_kmc_predictor(app)

    # Flask login
    login_manager.init_app(app)
    login_manager.login_view='core_bp.login'
    @login_manager.user_loader
    def load_user(user_id):
        return Users.query.get(int(user_id))
    

    app.register_blueprint(user_bp)
    app.register_blueprint(post_bp)
    app.register_blueprint(test_bp)
    app.register_blueprint(core_bp)
    app.register_blueprint(admin_bp)
    app.register_blueprint(api_bp)
    app.register_blueprint(auth_bp)
    app.register_blueprint(presentation_bp)
    app.register_blueprint(ai_bp)  

    @app.context_processor
    def base():
        form=SearchForm()
        return dict(form=form)
    

    @socketio.on('send_message')
    def handle_message(data):
        pass

    @socketio.on('connect')
    def handle_connect():
        print('A user has connected')

    @socketio.on('disconnect')
    def handle_disconnect():
        print('A user has disconnected')

    @socketio.on('envoyer_msg')
    def handle_my_event(data):
        print('New message!',data)
        sender_id = current_user.id
        message = data['message']
        receiver_id = session.get('chatUserId')
        if message and receiver_id:
            print("creating record in the db")
            new_message = Messages(
                sender_id=current_user.id,  # Assuming you're using Flask-Login and have access to `current_user`
                receiver_id=receiver_id,
                message_text=message,
                message_type=MessageType.TEXT,  # Assuming message type is text
                status=MessageStatus.SENT,     # Assuming status is sent
                priority=MessagePriority.NORMAL,  # Set priority to normal by default
            )
            db.session.add(new_message)
            db.session.commit()
            new_message2=[
                {
                    'id': new_message.id,
                    'sender_id': new_message.sender_id,
                    'receiver_id': new_message.receiver_id,
                    'message_text': new_message.message_text,
                    'created_at': new_message.created_at.strftime('%Y-%m-%d %H:%M:%S') if new_message.created_at else None,
                    'read_at': new_message.read_at.strftime('%Y-%m-%d %H:%M:%S') if new_message.read_at else None,
                    'is_read': new_message.is_read
                } 
            ]
            if 'chat_history' in session:
                session['chat_history'] += [new_message2]  # Append the new message to the existing history
            else:
                session['chat_history'] = [new_message2]
            emit('receive_message', {'message': new_message2}, receiver_id=receiver_id )
    return app