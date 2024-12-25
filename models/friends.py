from datetime import datetime
from flasker.app import db

class Friends(db.Model):
    id = db.Column(db.Integer, primary_key=True)  # Primary Key
    smaller_user_id = db.Column(db.Integer, db.ForeignKey('users.id'), nullable=False)
    bigger_user_id = db.Column(db.Integer, db.ForeignKey('users.id'), nullable=False)
    friends_since = db.Column(db.DateTime, default=datetime.now)  # Date when friendship started
    category = db.Column(db.String(100), nullable=True)  # Category of friendship (optional)
    last_updated_at = db.Column(db.DateTime, default=datetime.now, onupdate=datetime.now)  # Last updated time
    last_deleted_at = db.Column(db.DateTime, nullable=True)  # Time when the friendship was deleted (if applicable)

    # Relationships for easier access
    smaller_user = db.relationship('Users', foreign_keys=[smaller_user_id], backref='friends_as_smaller')
    bigger_user = db.relationship('Users', foreign_keys=[bigger_user_id], backref='friends_as_bigger')

    def __repr__(self):
        return f"<Friendship {self.smaller_user_id}-{self.bigger_user_id}>"
