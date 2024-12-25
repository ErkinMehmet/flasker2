from flask import Blueprint, request, jsonify, current_app,render_template
from flasker.app import db,openai
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

@ai_bp.route('/generate', methods=['GET','POST'])
def generate():
    if request.method == 'POST':
        # Get the user's input from the form
        prompt = request.form.get('prompt', '')

        if not prompt:
            # Return an error if no prompt is provided
            return render_template('generate.html', error="Prompt is required.")

        try:
            # Call OpenAI's completions.create method to generate a response
            response = openai.completions.create(
                model="gpt-4o-mini",  # Or "gpt-3.5-turbo"
                prompt=prompt,
                max_tokens=50  # You can adjust this value as needed
            )

            # Extract the response text
            generated_text = response['choices'][0]['text']

            # Render the same template with the response
            return render_template('generate.html', response=generated_text)

        except Exception as e:
            # Handle errors from the OpenAI API
            return render_template('generate.html', error=f"An error occurred: {e}")

    # Handle GET request to render the form
    return render_template('generate.html')