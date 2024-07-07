-- Create the database
-- CREATE DATABASE Database;

-- Create the tables
CREATE TABLE Manufacturer (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT NOT NULL
);

CREATE TABLE Subject (
    id INTEGER PRIMARY KEY,
    manufacturer_id INTEGER,
    name TEXT NOT NULL,
    description TEXT NOT NULL,
    FOREIGN KEY (manufacturer_id) REFERENCES Manufacturer(id)
);

CREATE TABLE Experience (
    id INTEGER PRIMARY KEY,
    subject_id INTEGER,
    date DATE NOT NULL,
    description TEXT NOT NULL,
    FOREIGN KEY (subject_id) REFERENCES Subject(id)
);

CREATE TABLE Rate (
    id INTEGER PRIMARY KEY,
    experience_id INTEGER,
    rate TEXT NOT NULL,
    FOREIGN KEY (experience_id) REFERENCES Experience(id)
);