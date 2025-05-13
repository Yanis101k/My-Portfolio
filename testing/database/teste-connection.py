# testing/database/test-connection.py
import sys
import os
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '../../')))

from database.connection import DatabaseConnection

# Adjust this path if needed based on your folder structure
DB_PATH = 'database/portfolio.db'

# Create a DatabaseConnection instance
db = DatabaseConnection(DB_PATH)

try:
    # Try to open the connection
    conn = db.open()
    print("✅ Successfully connected to the SQLite database.")

    # Optional: fetch and print all tables
    cursor = conn.cursor()
    cursor.execute("SELECT name FROM sqlite_master WHERE type='table';")
    tables = cursor.fetchall()

    print("📋 Tables found:")
    for table in tables:
        print(" -", table["name"])

except Exception as e:
    print("❌ Connection failed.")
    print("Error:", e)

finally:
    # Close the connection in all cases
    db.close()