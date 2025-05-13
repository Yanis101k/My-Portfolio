
-- this file will containe setup ( tables creations ) for our portfolio database 

-- delete the tables if they exist before to create a new ones
DROP TABLE IF EXISTS projects ; 

DROP TABLE IF EXISTS messages ; 

-- create projects table
CREATE TABLE IF NOT EXISTS projects (
    id INTEGER PRIMARY KEY AUTOINCREMENT, -- unique ID for each project
    title TEXT NOT NULL,                  -- project title
    description TEXT NOT NULL,            -- brief description
    tech_stack TEXT NOT NULL,             -- used technologies
    github_url TEXT NOT NULL,             -- GitHub link
    image_path TEXT                       -- project image or logo
);

-- create contact_messages table
CREATE TABLE IF NOT EXISTS contact_messages (
    id INTEGER PRIMARY KEY AUTOINCREMENT,  -- unique ID for each message
    visitor_firstName VARCHAR(100) NOT NULL, -- visitor first name
    visitor_lastName VARCHAR(100) NOT NULL,  -- visitor last name
    message TEXT NOT NULL,                   -- visitor message
    preferred_contact_method TEXT NOT NULL CHECK (preferred_contact_method IN ('phone', 'email')), -- contact preference
    visitor_email VARCHAR(321),              -- email (optional)
    visitor_phone VARCHAR(20),               -- phone (optional)
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP -- time of submission
);

SELECT name FROM sqlite_master WHERE type='table';