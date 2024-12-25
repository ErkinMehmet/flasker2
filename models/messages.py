from datetime import datetime
from flasker.app import db
from flasker.enums import MessageType, MessageStatus, MessagePriority

class Messages(db.Model):
    __tablename__ = 'messages'

    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    sender_id = db.Column(db.Integer, db.ForeignKey('users.id'), nullable=False)
    receiver_id = db.Column(db.Integer, db.ForeignKey('users.id'), nullable=True)
    message_text = db.Column(db.Text, nullable=True)
    attachment_url = db.Column(db.Text, nullable=True)
    created_at = db.Column(db.DateTime, default=datetime.now, nullable=False)
    updated_at = db.Column(db.DateTime, onupdate=datetime.now)
    read_at = db.Column(db.DateTime, onupdate=datetime.now)
    is_read = db.Column(db.Boolean, default=False, nullable=False)
    is_deleted = db.Column(db.Boolean, default=False, nullable=False)
    
    # Removed chat_id and reply_to_message_id
    message_type = db.Column(db.Enum(MessageType), nullable=True)  # Use Enum for message_type
    status = db.Column(db.Enum(MessageStatus), nullable=True)  # Use Enum for status
    priority = db.Column(db.Enum(MessagePriority), default=MessagePriority.NORMAL, nullable=True)  # Enum for priority

    # Relationships
    sender = db.relationship('Users', foreign_keys=[sender_id], backref='sent_messages')
    receiver = db.relationship('Users', foreign_keys=[receiver_id], backref='received_messages')

    def __repr__(self):
        return f'<ChatMessage {self.id} from {self.sender_id} to {self.receiver_id}>'