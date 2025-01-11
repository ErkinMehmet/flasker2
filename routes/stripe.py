from flask import Blueprint, request, jsonify, current_app,render_template
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
import stripe

stripe_bp = Blueprint('stripe_bp', __name__)

stripe.api_key =  os.getenv('STRIPE_SECRET_KEY') 
print(os.getenv('STRIPE_SECRET_KEY') )

@stripe_bp.route('/stripe-payment', methods=['POST','GET'])
def home():
    stripe_publishable_key = os.getenv('STRIPE_PUBLISHABLE_KEY') 
    return render_template('/stripe/stripe.html', stripe_publishable_key=stripe_publishable_key)

@stripe_bp.route('/create-checkout-session', methods=['POST'])
def create_checkout_session():
    YOUR_DOMAIN =  request.host_url 
    try:
        # Create a new Checkout Session
        checkout_session = stripe.checkout.Session.create(
            payment_method_types=['card'],
            line_items=[
                {
                    'price_data': {
                        'currency': 'usd',
                        'product_data': {
                            'name': 'Test Product',
                        },
                        'unit_amount': 2000,  # Price in cents (2000 = $20.00)
                    },
                    'quantity': 1,
                },
            ],
            mode='payment',
            success_url=YOUR_DOMAIN + '/stripe/stripe-success',
            cancel_url=YOUR_DOMAIN + '/stripe/stripe-cancel',
        )
        return jsonify({'id': checkout_session.id})
    except Exception as e:
        return str(e)

@stripe_bp.route('/stripe-success')
def success():
    return render_template('stripe/stripeSuccess.html')

@stripe_bp.route('/stripe/stripeCancel')
def cancel():
    return render_template('cancel.html')
