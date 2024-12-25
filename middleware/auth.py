from flask import abort,request,g,jsonify
from functools import wraps
import jwt

# Définir un middleware
def require_authorization(f):
    @wraps(f)   
    def decorated_function(*args, **kwargs):
        auth_header = request.headers.get("Authorization")
        if not auth_header or not auth_header.startswith("AppKey "):
            abort(401, description="Le header est manquant.")
        provided_key = auth_header.split(" ")[1]
        if provided_key != g.clefapi:
            abort(401, description="Clé invalide")
    return decorated_function

def verify_jwt(token):
    try:
        # Decode the token using the secret key
        payload = jwt.decode(token, g.clefapi, algorithms=["HS256"])
        return payload  # Return the decoded payload if valid
    except jwt.ExpiredSignatureError:
        return {"error": "Token has expired"}
    except jwt.InvalidTokenError:
        return {"error": "Invalid token"}
def require_jwt(f):
    @wraps(f)
    def decorated_function(*args, **kwargs):
        # Get the token from the Authorization header
        auth_header = request.headers.get('Authorization')
        print(auth_header)
        if not auth_header:
            return jsonify({"error": "Missing token"}), 403

        try:
            # The token is in the format "Bearer <token>"
            token = auth_header.split(" ")[1]
        except IndexError:
            return jsonify({"error": "Invalid token format"}), 403

        # Verify the JWT token
        payload = verify_jwt(token)

        if "error" in payload:
            return jsonify(payload), 403  # If the token is invalid or expired

        # If the token is valid, pass control to the route handler
        return f(payload, *args, **kwargs)

    return decorated_function   
