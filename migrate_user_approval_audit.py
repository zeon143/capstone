"""Create the user approval decision history table."""
import os
import sys

sys.path.insert(0, os.path.dirname(__file__))

from sqlalchemy import text
from app import create_app, db

app = create_app()

with app.app_context():
    with db.engine.connect() as conn:
        exists = conn.execute(text(
            "SELECT COUNT(*) FROM information_schema.tables "
            "WHERE table_schema = DATABASE() AND table_name = 'user_approval_audits'"
        )).scalar() > 0
        if not exists:
            conn.execute(text("""
                CREATE TABLE user_approval_audits (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    user_id INT NOT NULL,
                    admin_id INT NOT NULL,
                    action VARCHAR(20) NOT NULL,
                    reason TEXT,
                    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
                    FOREIGN KEY (user_id) REFERENCES users(id),
                    FOREIGN KEY (admin_id) REFERENCES users(id),
                    INDEX ix_user_approval_audits_user_id (user_id),
                    INDEX ix_user_approval_audits_admin_id (admin_id)
                )
            """))
            print('  + user_approval_audits table created')
        else:
            print('  . user_approval_audits already exists')
        conn.commit()
    print('User approval audit migration complete.')