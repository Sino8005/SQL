-- Advanced Guide on SQL Database Creation and Management

-- Introduction
-- This script covers advanced topics in SQL database creation and management using MySQL.
-- It includes advanced table creation, indexing, constraints, views, stored procedures, triggers, and more.

-- 1. Advanced Table Creation
-- Creating tables with advanced data types, constraints, and indexing.

-- Create a database for advanced examples:
CREATE DATABASE advanced_db;

-- Select the newly created database:
USE advanced_db;

-- Create a table with various data types and constraints:
-- Constraints are rules enforced on data columns to ensure data integrity and consistency.
-- Common constraints include PRIMARY KEY, FOREIGN KEY, UNIQUE, NOT NULL, CHECK, and DEFAULT.

CREATE TABLE departments (
    department_id INT AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (department_id)
);

CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT, -- AUTO_INCREMENT generates a unique ID for each new row.
    first_name VARCHAR(50) NOT NULL, -- NOT NULL ensures the column cannot have a NULL value.
    last_name VARCHAR(50) NOT NULL,
    birth_date DATE, -- DATE stores year, month, and day.
    hire_date DATE NOT NULL DEFAULT (CURRENT_DATE), -- DEFAULT sets a default value if none is provided.
    salary DECIMAL(10, 2) NOT NULL, -- CHECK constraint might not be supported, ensure salary is validated in application logic.
    email VARCHAR(100) UNIQUE, -- UNIQUE ensures all values in the column are different.
    department_id INT,
    PRIMARY KEY (employee_id), -- PRIMARY KEY uniquely identifies each row.
    FOREIGN KEY (department_id) REFERENCES departments(department_id) -- FOREIGN KEY links to another table.
);

-- Create a table with composite primary key and foreign key:
CREATE TABLE projects (
    project_id INT AUTO_INCREMENT,
    project_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (project_id)
);

CREATE TABLE project_assignments (
    employee_id INT,
    project_id INT,
    assignment_date DATE NOT NULL,
    PRIMARY KEY (employee_id, project_id), -- Composite primary key on two columns.
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id), -- FOREIGN KEY to employees table.
    FOREIGN KEY (project_id) REFERENCES projects(project_id) -- FOREIGN KEY to projects table.
);

-- 2. Indexing
-- Creating and using indexes to improve query performance.
-- Indexes are used to quickly locate data without having to search every row in a table.

-- Create indexes on the 'employees' table:
CREATE INDEX idx_last_name ON employees(last_name); -- Speeds up queries that filter by last name.
CREATE INDEX idx_department_id ON employees(department_id); -- Speeds up queries that filter by department ID.

-- Create a unique index on the 'email' column:
CREATE UNIQUE INDEX idx_email ON employees(email); -- Ensures email values are unique and speeds up lookups.

-- 3. Constraints
-- Implementing various constraints to enforce data integrity.
-- Constraints help ensure that the data in the database adheres to business rules.

-- Example: Adding a CHECK constraint on the 'salary' column:
ALTER TABLE employees ADD CONSTRAINT chk_salary CHECK (salary > 0); -- Ensures salary is always greater than 0.

-- Example: Adding a DEFAULT constraint on the 'hire_date' column:
ALTER TABLE employees MODIFY hire_date DATE DEFAULT (CURRENT_DATE); -- Sets the default value of hire_date to the current date if none is provided.

-- 4. Views
-- Creating and managing views to simplify complex queries.
-- A view is a virtual table based on the result set of an SQL query.

-- Create a view to display employee details with their department names:
CREATE VIEW employee_details AS
SELECT e.employee_id, e.first_name, e.last_name, e.email, e.salary, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id;

-- Query the view:
SELECT * FROM employee_details; -- Retrieves data from the view just like a table.

-- 5. Stored Procedures
-- Creating and using stored procedures for reusable SQL code blocks.
-- A stored procedure is a set of SQL statements that can be executed as a program.

-- Create a stored procedure to give a raise to an employee:
DELIMITER //
CREATE PROCEDURE give_raise(IN emp_id INT, IN raise_amount DECIMAL(10, 2))
BEGIN
    UPDATE employees
    SET salary = salary + raise_amount
    WHERE employee_id = emp_id;
END //
DELIMITER ;

-- Call the stored procedure:
CALL give_raise(1, 500.00); -- Increases the salary of the employee with ID 1 by 500.00.

-- Adding Data to Tables
-- To see the stored procedure in action and to retrieve meaningful data from the view, let's add some sample data.

-- Insert data into departments table:
INSERT INTO departments (department_name) VALUES ('HR'), ('IT'), ('Finance');

-- Insert data into employees table:
INSERT INTO employees (first_name, last_name, birth_date, hire_date, salary, email, department_id)
VALUES 
('John', 'Doe', '1980-01-15', '2010-06-01', 55000.00, 'john.doe@example.com', 1),
('Jane', 'Smith', '1985-07-30', '2012-09-15', 62000.00, 'jane.smith@example.com', 2),
('Alice', 'Johnson', '1990-02-20', '2015-11-20', 75000.00, 'alice.johnson@example.com', 3);

-- Insert data into projects table:
INSERT INTO projects (project_name) VALUES ('Project Alpha'), ('Project Beta');

-- Insert data into project_assignments table:
INSERT INTO project_assignments (employee_id, project_id, assignment_date)
VALUES
(1, 1, '2023-01-01'),
(2, 2, '2023-01-15'),
(3, 1, '2023-02-01');

-- Query the view to see the inserted data:
SELECT * FROM employee_details;

-- Call the stored procedure to give a raise to an employee:
CALL give_raise(1, 5000.00); -- Increases the salary of the employee with ID 1 by 5000.00.

-- Verify the salary update:
SELECT * FROM employees WHERE employee_id = 1;

-- The salary of the employee with ID 1 should now reflect the increase.

