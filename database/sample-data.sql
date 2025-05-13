
INSERT INTO projects (title, description, tech_stack, github_url, image_path)
VALUES (
    'Task Tracker Web App',
    'A simple task management web application built using Flask and SQLite.',
    'Python, Flask, SQLite, HTML, CSS, JavaScript',
    'https://github.com/yanis-kaced/task-tracker',
    'images/task-tracker-logo.png'
);

INSERT INTO contact_messages (
    visitor_firstName,
    visitor_lastName,
    message,
    preferred_contact_method,
    visitor_email,
    visitor_phone
)
VALUES (
    'Jane',
    'Doe',
    'Hi Yanis, I really like your portfolio. Could we connect?',
    'email',
    'jane.doe@example.com',
    NULL
);
INSERT INTO contact_messages (
    visitor_firstName,
    visitor_lastName,
    message,
    preferred_contact_method,
    visitor_email,
    visitor_phone
)
VALUES (
    'Ali',
    'Bensalah',
    "I'm interested in hiring you for a project. Can we talk by phone?",
    'phone',
    NULL,
    '+447123456789'
);

SELECT * FROM projects ; 

SELECT * FROM  contact_messages ; 