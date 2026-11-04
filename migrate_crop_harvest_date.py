"""Add actual harvest date tracking to crops."""
import os
import sys

sys.path.insert(0, os.path.dirname(__file__))

from sqlalchemy import text

from app import create_app, db

app = create_app()

with app.app_context():
    with db.engine.connect() as conn:
        exists = conn.execute(text(
            "SELECT COUNT(*) FROM information_schema.columns "
            "WHERE table_schema = DATABASE() AND table_name = 'crops' "
            "AND column_name = 'actual_harvest_date'"
        )).scalar() > 0
        if not exists:
            conn.execute(text("ALTER TABLE crops ADD COLUMN actual_harvest_date DATE"))
            print("  + crops.actual_harvest_date added")
        else:
            print("  . crops.actual_harvest_date already exists")
        conn.commit()
    print("\nCrop harvest date migration complete.")