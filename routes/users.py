from flask import Blueprint, render_template, request, flash,redirect,url_for,current_app,g,session,jsonify
from flasker.app import db,admin_required,socketio
from flasker.models import Users,Friends,Messages
from flasker.forms import UserForm,PwdForm
from werkzeug.security import generate_password_hash,check_password_hash
from flask_login import login_required,current_user
from werkzeug.utils import secure_filename
import uuid as uuid
import os
from sqlalchemy import or_
from flasker.enums import MessageType, MessageStatus, MessagePriority
from datetime import datetime
from flask_socketio import emit

# Create a Blueprint for user routes
user_bp = Blueprint('user_bp', __name__)

@user_bp.route('/user/add',methods=['GET','POST'])
def add_user():
    name=None
    email=None
    form=UserForm()
    err=''
    # valider
    if form.validate_on_submit():
        user=Users.query.filter_by(email=form.email.data).first()
        if user is None:
            # hasher le mdp
            hashed_pw=generate_password_hash(form.password_hash.data)
            user=Users(name=form.name.data,username=form.username.data,email=form.email.data,favorite_color='red',about_author=form.about_author.data,password_hash=hashed_pw,admin=form.admin.data)
            db.session.add(user)
            db.session.commit()
            flash("Formulaire soumis avec succès.", "success")
        else:
            err="Le mail existe déjà."
            flash(err, "warning")
            
        name=form.name.data
        email=form.email.data
        form.name.data=''
        form.username.data=''
        form.email.data=''
        form.about_author.data=''
        form.password_hash.data=''
        form.password_hash2.data=''
        
    our_users=Users.query.order_by(Users.createdAt)
    return render_template("add_user.html",name=name,email=email,form=form,our_users=our_users,error=err)

# mettre à jour la bd
@user_bp.route('/update/<int:id>',methods=['GET','POST'])
@login_required
def update(id):
    form = UserForm()
    name_to_update=Users.query.get_or_404(id)
    our_users=[]
    if request.method=="POST":
        name_to_update.name=request.form['name']
        name_to_update.username=request.form['username']
        name_to_update.email=request.form['email']
        name_to_update.favorite_color='Bleu'
        name_to_update.about_author=request.form['about_author']

        admin_value = request.form.get('admin')
        if admin_value == 'on':  # 'on' is the default value for checked checkboxes
            name_to_update.admin = True
        else:
            name_to_update.admin = False
            
        pic=request.files['profile_pic']
        if pic and pic.filename:
            pic_filename=secure_filename(pic.filename)
            pic_name=str(uuid.uuid1(id))+"_"+pic_filename
            name_to_update.profile_pic=pic_name
            upload_folder = current_app.config['UPLOAD_FOLDER']
            pic.save(os.path.join(upload_folder,pic_name))    
        try:
            db.session.commit()
            flash("Utilisateur mis à jour avec succès.")
            our_users=Users.query.order_by(Users.createdAt)
            post=1
            if current_user.id==name_to_update.id:
                return redirect(url_for('core_bp.dashboard'))
            elif current_user.admin:
                return redirect(url_for('admin_bp.admin'))
            else:
                return render_template("update.html",form=form,name_to_update=name_to_update,our_users=our_users,p=1)
        except:
            flash("Erreur inattendue.")
            return render_template("update.html",form=form,name_to_update=name_to_update,our_users=our_users,p=2)
    else:
        return render_template("update.html",form=form,name_to_update=name_to_update,our_users=our_users,p=3)

@user_bp.route('/delete/<int:id>',methods=['GET','POST'])
@login_required
@admin_required
def delete(id):
    name=None
    form=UserForm()
    user_to_delete=Users.query.get_or_404(id)
    try:
        db.session.delete(user_to_delete)
        db.session.commit()
        flash("L'utilisateur a été supprimé avec succès")
        our_users=Users.query.order_by(Users.createdAt)
        return render_template("add_user.html",name=name,form=form,our_users=our_users)
    except:
        flash("Whoops il y eut un problème!")
        return render_template("add_user.html",name=name,form=form,our_users=our_users)

    

@user_bp.route('/test_pw',methods=['GET','POST'])
@login_required
def test_pw():
    email=None
    pwd=None
    pwd2=None
    ok=None
    form=PwdForm()
    # valider
    if form.validate_on_submit():
        email=form.email.data
        pwd=form.password_hash.data
        form.email.data=''
        form.password_hash=''
        pwd2=Users.query.filter_by(email=email).first()
        ok=check_password_hash(pwd2.password_hash,pwd)
        flash("Formulaire soumis avec succès.")
    return render_template("test_pw.html",email=email,pwd=pwd,pwd2=pwd2,form=form,ok=ok)

@user_bp.route('/togglefriend/<int:id>',methods=['GET','POST'])
@login_required
def togglefriend(id):
    friend=Users.query.get_or_404(id)
    me=current_user
    smaller=min(me.id,friend.id)
    bigger=max(me.id,friend.id)
    existing_friendship = Friends.query.filter_by(
        smaller_user_id=smaller,
        bigger_user_id=bigger
    ).first()
    if existing_friendship:
        db.session.delete(existing_friendship)
        db.session.commit()
        return redirect(url_for('admin_bp.admin'))  # Redirect to an appropriate route
    else:
        new_friendship = Friends(smaller_user_id=smaller, bigger_user_id=bigger)
        db.session.add(new_friendship)
        db.session.commit()
        return redirect(url_for('admin_bp.admin')) 
    

@user_bp.route('/message/<int:id>',methods=['GET','POST'])
@login_required
def message(id):
    session['chatUserId']=id 
    user_chat=Users.query.get_or_404(id)
    session['chatUserName']=user_chat.username 
    chat_history = Messages.query.filter(
                or_(
                    (Messages.sender_id == current_user.id) & (Messages.receiver_id == id),
                    (Messages.receiver_id == current_user.id) & (Messages.sender_id == id)
                )
            ).order_by(Messages.id.desc()).limit(5).all()
    chat_history=sorted(chat_history, key=lambda msg: msg.created_at)
    # Store a simplified version of the chat history in the session (only the necessary data)
    session['chat_history'] = [
        {
            'id': msg.id,
            'sender_id': msg.sender_id,
            'receiver_id': msg.receiver_id,
            'message_text': msg.message_text,
            'created_at': msg.created_at,
            'read_at': msg.read_at.strftime('%Y-%m-%d %H:%M:%S') if msg.read_at else None,
            'is_read': msg.is_read
        } 
        for msg in chat_history
    ]
    
    print(session['chat_history'])
    return redirect(url_for('admin_bp.admin')) 

"""
@user_bp.route('/sendmessage',methods=['GET','POST'])
@login_required
def sendmessage():
    print("sending")
    if request.method == 'POST':
        print("sending messages post")
        message = request.form.get('message')
        chat_user_id = session.get('chatUserId')
        if message:
            new_message = Messages(
                sender_id=current_user.id,  # Assuming you're using Flask-Login and have access to `current_user`
                receiver_id=chat_user_id,
                message_text=message,
                message_type=MessageType.TEXT,  # Assuming message type is text
                status=MessageStatus.SENT,     # Assuming status is sent
                priority=MessagePriority.NORMAL,  # Set priority to normal by default
            )
            db.session.add(new_message)
            db.session.commit()

            chat_history = Messages.query.filter(
                or_(
                    (Messages.sender_id == current_user.id) & (Messages.receiver_id == chat_user_id),
                    (Messages.receiver_id == current_user.id) & (Messages.sender_id == chat_user_id)
                )
            ).order_by(Messages.created_at.desc()).limit(5).all()
            chat_history=sorted(chat_history, key=lambda msg: msg.created_at)
            session['chat_history'] = [
                {
                    'id': msg.id,
                    'sender_id': msg.sender_id,
                    'receiver_id': msg.receiver_id,
                    'message_text': msg.message_text,
                    'created_at': msg.created_at,
                    'read_at': msg.read_at.strftime('%Y-%m-%d %H:%M:%S') if msg.read_at else None,
                    'is_read': msg.is_read
                } 
                for msg in chat_history
            ]
            # interagir avec socket
            #socketio.emit('my_event', {'message': 'Hello from /emit_eventroute'})
    return redirect(request.referrer or request.url) 
    """

@user_bp.route('/load_more_messages', methods=['GET'])
@login_required
def load_more_messages():
    chat_user_id = session.get('chatUserId')
    last_message = session.get('chat_history', [None])[0]
    max_id=last_message['id']
    limit = 10  # Number of messages to load per request
    if not last_message:
        max_id= db.session.query(db.func.max(Messages.id)).scalar() or 0
        if max_id==0:
            return jsonify({'error': 'Aucun message fut trouvé'}), 400

    # Get messages older than the ones already loaded
    last_messages = Messages.query.filter(
        ((Messages.sender_id == current_user.id) & (Messages.receiver_id == chat_user_id)) |
        ((Messages.receiver_id == current_user.id) & (Messages.sender_id == chat_user_id))
    ).filter(Messages.id < max_id).order_by(Messages.created_at.desc()).limit(limit).all()
    last_messages=sorted(last_messages, key=lambda msg: msg.created_at)
    # Return the messages in JSON format
    messages = [{
        'id': msg.id,
        'sender_id': msg.sender_id,
        'receiver_id': msg.receiver_id,
        'message_text': msg.message_text,
        'created_at': msg.created_at.strftime('%Y-%m-%d %H:%M:%S'),
        'read_at': msg.read_at.strftime('%Y-%m-%d %H:%M:%S') if msg.read_at else None,
        'is_read': msg.is_read
    } for msg in last_messages]
    session['chat_history'] = messages + session.get('chat_history', [])
    return jsonify({'messages': messages}),200


@user_bp.route('/clear_session', methods=['POST'])
def clear_session():
    if 'chatUserId' in session:
        session.pop('chatUserId', None)
    return redirect(request.referrer or request.url) 