"""Add Friends table

Revision ID: 2be396640d07
Revises: 74351bc6bcca
Create Date: 2024-12-23 09:06:02.116335

"""
from alembic import op
import sqlalchemy as sa
from sqlalchemy.dialects import mysql

# revision identifiers, used by Alembic.
revision = '2be396640d07'
down_revision = '74351bc6bcca'
branch_labels = None
depends_on = None


def upgrade():
    op.create_table('friends',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('smaller_user_id', sa.Integer(), nullable=False),
    sa.Column('bigger_user_id', sa.Integer(), nullable=False),
    sa.Column('friends_since', sa.DateTime(), nullable=True),
    sa.Column('category', sa.String(length=100), nullable=True),
    sa.Column('last_updated_at', sa.DateTime(), nullable=True),
    sa.Column('last_deleted_at', sa.DateTime(), nullable=True),
    sa.ForeignKeyConstraint(['bigger_user_id'], ['users.id'], ),
    sa.ForeignKeyConstraint(['smaller_user_id'], ['users.id'], ),
    sa.PrimaryKeyConstraint('id')
    )
    op.drop_table('articles')
    # ### end Alembic commands ###


def downgrade():

    op.drop_table('friends')
    op.drop_table('Articles')
    # ### end Alembic commands ###
