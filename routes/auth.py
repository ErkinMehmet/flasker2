from flask import Blueprint, request, jsonify, current_app
from flasker.app import db
from flasker.models import Users
from flasker.forms import UserForm,LoginForm
from werkzeug.security import generate_password_hash,check_password_hash
from flask_login import login_required,login_user,current_user,logout_user
from werkzeug.utils import secure_filename
import uuid as uuid
import os,jwt
from datetime import datetime, timedelta
from werkzeug.security import generate_password_hash,check_password_hash

auth_bp = Blueprint('auth_bp', __name__)


@auth_bp.route('/api-login', methods=['POST'])
def login():
    # Simulate user authentication
    SECRET_KEY=current_app.config['API_KEY']
    data = request.json
    username = data.get('username')
    password = data.get('password')
    user=Users.query.filter_by(username=username).first()
    ok=check_password_hash(user.password_hash,password)
    if ok:  # Replace with your logic
        if user.admin:
            role="admin"
        else:
            role="utilisateur"
        payload = {
            "username": username,
            "role": role,
            "exp": datetime.utcnow() +timedelta(hours=1)
        }
        token = jwt.encode(payload, SECRET_KEY, algorithm="HS256")
        return jsonify({"token": token})
    else:
        return jsonify({"error": "Invalid credentials"}), 401