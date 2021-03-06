CREATE TABLE helo_users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(20),
    password VARCHAR(20),
    profile_pic TEXT
);

CREATE TABLE helo_posts (
    id SERIAL PRIMARY KEY,
    title VARCHAR(45),
    img TEXT,
    content TEXT,
    author_id INTEGER REFERENCES helo_users (id)
);

ALTER TABLE helo_users
ALTER COLUMN password TYPE TEXT;