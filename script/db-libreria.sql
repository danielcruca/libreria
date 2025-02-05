-- Create the database
CREATE DATABASE my_database;

-- Use the database
USE my_database;

-- Create the first table
CREATE TABLE table1 (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  age INT NOT NULL
);

-- Create the second table
CREATE TABLE table2 (
  id INT AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(255) NOT NULL,
  table1_id INT NOT NULL,
  FOREIGN KEY (table1_id) REFERENCES table1(id)
);

-- Insert some data into table1
INSERT INTO table1 (name, age) VALUES
  ('John', 25),
  ('Jane', 30),
  ('Bob', 35);

-- Insert some data into table2
INSERT INTO table2 (email, table1_id) VALUES
  ('john@example.com', 1),
  ('jane@example.com', 2),
  ('bob@example.com', 3);