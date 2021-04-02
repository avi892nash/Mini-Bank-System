DROP IF EXISTS users;
DROP IF EXISTS Accounts;
CREATE TABLE users (
    user_id INT GENERATED ALWAYS AS IDENTITY,
    user_name VARCHAR(40),
    user_phone int,
    cutomer_email VARCHAR(40),
    created_date DATE, 
    username VARCHAR(40),
    security_pass VARCHAR(40),
    PRIMARY KEY(user_id)
);

CREATE TYPE STATUS AS ENUM ('SUCCESS', 'PENDING');

CREATE TABLE Accounts (
    account_id INT GENERATED ALWAYS AS IDENTITY,
    account_name VARCHAR(10),
    created_date DATE,
    other_details VARCHAR(40),
    account_type VARCHAR(10),
    verification STATUS,
    user_id INT REFERENCES users(user_id)
);