from enum import Enum

class MessageType(Enum):
    TEXT = 'text'
    IMAGE = 'image'
    FILE = 'file'
    VIDEO = 'video'

class MessageStatus(Enum):
    SENT = 'sent'
    DELIVERED = 'delivered'
    READ = 'read'
    FAILED = 'failed'

class MessagePriority(Enum):
    NORMAL = 0
    HIGH = 1
