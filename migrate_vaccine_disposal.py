"""
Migration: Vaccine disposal tracking
- Adds quantity_disposed to vaccine_inventory
- Creates vaccine_disposals audit table

Run: python migrate_vaccine_disposal.py
"""
import os
import sys

sys.path.insert(0, os.path.dirname(__file__))

from sqlalchemy import text

from app import create_app, db

app = create_app()


def column_exists(conn, table, column):
    result = conn.execute(text(
        "SELECT COUNT(*) FROM information_schema.columns "
        "WHERE table_schema = DATABASE() AND table_name = :t AND column_name = :c"
    ), {"t": table, "c": column})
    return result.scalar() > 0


def table_exists(conn, table):
    result = conn.execute(text(
        "SELECT COUNT(*) FROM information_schema.tables "
        "WHERE table_schema = DATABASE() AND table_name = :t"
    ), {"t": table})
    return result.scalar() > 0


with app.app_context():
    with db.engine.connect() as conn:
        if not column_exists(conn, 'vaccine_inventory', 'quantity_disposed'):
            conn.execute(text(
                "ALTER TABLE vaccine_inventory "
                "ADD COLUMN quantity_disposed INT NOT NULL DEFAULT 0"
            ))
            print("  + vaccine_inventory.quantity_disposed added")
        else:
            print("  . vaccine_inventory.quantity_disposed already exists")

        if not table_exists(conn, 'vaccine_disposals'):
            conn.execute(text("""
                CREATE TABLE vaccine_disposals (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    vaccine_inventory_id INT NOT NULL,
                    farm_id INT NOT NULL,
                    disposed_by_id INT NOT NULL,
                    quantity_disposed INT NOT NULL,
                    reason VARCHAR(200) NOT NULL,
                    notes TEXT,
                    disposed_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
                    FOREIGN KEY (vaccine_inventory_id) REFERENCES vaccine_inventory(id),
                    FOREIGN KEY (farm_id) REFERENCES farms(id),
                    FOREIGN KEY (disposed_by_id) REFERENCES users(id),
                    INDEX ix_vaccine_disposals_vaccine_id (vaccine_inventory_id),
                    INDEX ix_vaccine_disposals_disposed_at (disposed_at)
                )
            """))
            print("  + vaccine_disposals table created")
        else:
            print("  . vaccine_disposals table already exists")

        conn.commit()

    print("\nVaccine disposal migration complete.")
