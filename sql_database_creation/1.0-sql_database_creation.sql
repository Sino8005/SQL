
-- Create a new database:
CREATE DATABASE my_first_database;

-- Verify database creation:
SHOW DATABASES;

-- You should see 'my_first_database' listed among the databases.

-- Creating Tables
-- Tables are the primary storage objects in a database. Each table stores data related to a specific topic.

-- Select your database:
USE my_first_database;

-- Create a table for storing information about users:
CREATE TABLE users (
    user_id INT AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (user_id)
);

-- Verify table creation:
SHOW TABLES;

-- You should see 'users' listed among the tables.

-- Adding More Tables
-- Let's create another table for storing information about products:

CREATE TABLE products (
    product_id INT AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (product_id)
);

-- Verify table creation:
SHOW TABLES;

-- You should see 'products' listed among the tables.

-- Inserting Data into Tables
-- Let's insert some sample data into the 'users' table:

INSERT INTO users (username, email) VALUES ('JohnDoe', 'john@example.com');
INSERT INTO users (username, email) VALUES ('JaneSmith', 'jane@example.com');

-- Verify data insertion:
SELECT * FROM users;

-- You should see the inserted rows in the 'users' table.

-- Insert some sample data into the 'products' table:

INSERT INTO products (product_name, price) VALUES ('Laptop', 999.99);
INSERT INTO products (product_name, price) VALUES ('Smartphone', 499.99);

-- Verify data insertion:
SELECT * FROM products;

-- You should see the inserted rows in the 'products' table.

-- Modifying Tables
-- You can modify the structure of existing tables using the ALTER TABLE command.

-- Example: Adding a new column to the 'users' table:
ALTER TABLE users ADD COLUMN age INT;

-- Verify the modification:
DESCRIBE users;

-- You should see the new 'age' column added to the 'users' table.

-- Example: Adding a new column to the 'products' table:
ALTER TABLE products ADD COLUMN stock INT DEFAULT 0;

-- Verify the modification:
DESCRIBE products;

-- You should see the new 'stock' column added to the 'products' table.

-- Deleting Data from Tables
-- You can delete data from tables using the DELETE command.

-- Example: Deleting a user from the 'users' table:
DELETE FROM users WHERE username = 'JohnDoe';

-- Verify the deletion:
SELECT * FROM users;

-- Example: Deleting a product from the 'products' table:
DELETE FROM products WHERE product_name = 'Laptop';

-- Verify the deletion:
SELECT * FROM products;

-- Dropping Tables and Databases
-- You can remove tables or entire databases using the DROP command.

-- Example: Dropping the 'users' table:
DROP TABLE users;

-- Verify the table drop:
SHOW TABLES;

-- Example: Dropping the 'products' table:
DROP TABLE products;

-- Verify the table drop:
SHOW TABLES;

-- Example: Dropping the database:
DROP DATABASE my_first_database;

-- Verify the database drop:
SHOW DATABASES;

-- You should no longer see 'my_first_database' listed among the databases.

