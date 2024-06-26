CREATE DATABASE IF NOT EXISTS simple_api;
USE simple_api;

-- Create the users table
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    ingredients VARCHAR(50) NOT NULL,
    steps VARCHAR(100) NOT NULL,
    note VARCHAR(500) NOT NULL 
);

-- Insert dummy values into the users table
INSERT INTO users (title, ingredients, steps, note) VALUES
('telur ceplok', 'telur', 'masak sampek matang', 'selesai'),
('terong goreng', 'terong', 'ptong terong goreng',  'selesai'),
('sambel', 'cabe', 'ulek ',  'selesai');


-- Create a new user for the database
CREATE USER 'rest_api_demo'@'localhost' IDENTIFIED BY 'rest_api_demo';

-- Grant DML privileges to the new user on the simple_api database
GRANT SELECT, INSERT, UPDATE, DELETE ON simple_api.* TO 'rest_api_demo'@'localhost';

-- Apply the changes
FLUSH PRIVILEGES;