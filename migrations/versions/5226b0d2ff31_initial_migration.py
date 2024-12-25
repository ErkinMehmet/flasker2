"""initial migration

Revision ID: 5226b0d2ff31
Revises: 
Create Date: 2024-12-14 17:45:23.742041

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '5226b0d2ff31'
down_revision = None
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    with op.batch_alter_table('users', schema=None) as batch_op:
        batch_op.add_column(sa.Column('favorite_color', sa.String(length=120), nullable=True))

    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    with op.batch_alter_table('users', schema=None) as batch_op:
        batch_op.drop_column('favorite_color')

    # ### end Alembic commands ###