from flask import Blueprint, render_template, request, flash,redirect,url_for,current_app
from flasker.app import db
from flasker.models import Users,Friends
from flasker.forms import UserForm,LoginForm
from werkzeug.security import generate_password_hash,check_password_hash
from flask_login import login_required,login_user,current_user,logout_user
from werkzeug.utils import secure_filename
import uuid as uuid
import os

# Create a Blueprint for user routes
presentation_bp = Blueprint('presentation_bp', __name__)

@presentation_bp.route('/presentation/<int:slide_number>')
@login_required
def presentation(slide_number):
    if slide_number < 1 or slide_number > 5:
        return "Page not found", 404
    return render_template(f'/presentation/{slide_number}.html', slide_number=slide_number)
