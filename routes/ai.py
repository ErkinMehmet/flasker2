from flask import Blueprint, request, jsonify, current_app,render_template
from flasker.models import Users
from flasker.forms import UserForm,LoginForm
from werkzeug.security import generate_password_hash,check_password_hash
from flask_login import login_required,login_user,current_user,logout_user
from werkzeug.utils import secure_filename
import uuid as uuid
import os,jwt
from datetime import datetime, timedelta
from werkzeug.security import generate_password_hash,check_password_hash

ai_bp = Blueprint('ai_bp', __name__)

