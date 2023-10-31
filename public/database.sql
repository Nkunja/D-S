CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE DATABASE authtest;

CREATE TABLE users (
    user_id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    user_name TEXT NOT NULL,
    user_email TEXT NOT NULL UNIQUE,
    user_password TEXT NOT NULL
);

SELECT * FROM users;

INSERT INTO users (user_name,user_email,user_password) VALUES ('John','john@doe.com','John');

--psql -U postgres
--\c authtest
--dt
--heroku pg:psql