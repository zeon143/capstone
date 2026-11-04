"""Add registration approval and separated user-name fields."""
import os
import sys

sys.path.insert(0, os.path.dirname(__file__))

from sqlalchemy import text
from app import create_app, db

app = create_app()

columns = {
    'first_name': 'VARCHAR(80)',
    'middle_name': 'VARCHAR(80)',
    'last_name': 'VARCHAR(80)',
    'account_status': "VARCHAR(20) NOT NULL DEFAULT 'approved'",
}

with app.app_context():
    with db.engine.connect() as conn:
        for name, definition in columns.items():
            exists = conn.execute(text(
                "SELECT COUNT(*) FROM information_schema.columns "
                "WHERE table_schema = DATABASE() AND table_name = 'users' AND column_name = :name"
            ), {'name': name}).scalar() > 0
            if not exists:
                conn.execute(text(f'ALTER TABLE users ADD COLUMN {name} {definition}'))
                print(f'  + users.{name} added')

        conn.execute(text("""
            UPDATE users
            SET account_status = CASE WHEN is_active = 1 THEN 'approved' ELSE 'suspended' END
            WHERE account_status IS NULL OR account_status = ''
        """))
        conn.execute(text("""
            UPDATE users
            SET first_name = SUBSTRING_INDEX(TRIM(full_name), ' ', 1),
                last_name = TRIM(SUBSTRING(full_name, LOCATE(' ', TRIM(full_name)) + 1))
            WHERE (first_name IS NULL OR first_name = '') AND full_name LIKE '% %'
        """))
        conn.commit()
    print('User approval and name migration complete.')