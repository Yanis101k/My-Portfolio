# database/connection.py

import sqlite3  # Import the built-in SQLite3 module to work with SQLite databases


class DatabaseConnection:
    def __init__(self, db_path):
        """
        Constructor method.
        Stores the path to the SQLite database file and initializes the connection as None.
        This class will handle connecting to and disconnecting from the database.
        """
        self.db_path = db_path  # Path to your SQLite file (e.g., 'database/portfolio.db')
        self.connection = None  # Placeholder for the actual connection object

    def open(self):
        """
        Opens a new connection to the SQLite database.

        - Uses sqlite3.connect to open the database file
        - Sets the row_factory so we can access query results like dictionaries (e.g., row['title'])
        - Returns the connection object to be used in queries
        """
        self.connection = sqlite3.connect(self.db_path)
        self.connection.row_factory = sqlite3.Row  # Makes row results behave like dictionaries
        return self.connection

    def close(self):
        """
        Closes the database connection if it's open.

        - Prevents memory leaks and keeps database access clean
        - Resets self.connection to None for safety
        """
        if self.connection:
            self.connection.close()  # Properly close the connection to free resources
            self.connection = None  # Reset the connection object to clean up