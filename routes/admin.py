from flask import Blueprint, render_template, request, flash,redirect,url_for,current_app
from flasker.app import db
from flasker.models import Users,Friends
from flasker.forms import UserForm,LoginForm
from werkzeug.security import generate_password_hash,check_password_hash
from flask_login import login_required,login_user,current_user,logout_user
from werkzeug.utils import secure_filename
import uuid as uuid
import os
from sqlalchemy import or_, and_, case

# Create a Blueprint for user routes
admin_bp = Blueprint('admin_bp', __name__)

@admin_bp.route('/admin')
@login_required
def admin():
    id = current_user.id
    if 1 == 1:  # Replace with your actual condition
        our_users = db.session.query(
            Users,
            case(
                (
                    or_(
                        and_(Friends.smaller_user_id == Users.id, Friends.bigger_user_id == id),
                        and_(Friends.bigger_user_id == Users.id, Friends.smaller_user_id == id)
                    ),
                    True
                ),
                else_=False
            ).label('is_friend')
        ).outerjoin(
            Friends,
            or_(
                and_(Friends.smaller_user_id == Users.id, Friends.bigger_user_id == id),
                and_(Friends.bigger_user_id == Users.id, Friends.smaller_user_id == id)
            )
        ).order_by(Users.createdAt).all()

        return render_template("admin.html", our_users=our_users)
    else:
        flash("Cette page est réservée pour les admins")
        return redirect(url_for('core_bp.login'))