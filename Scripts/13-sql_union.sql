-- Introduction to UNION

-- The UNION operator is used to combine the result sets of two or more SELECT statements.
-- Each SELECT statement within the UNION must have the same number of columns in the result sets with similar data types.
-- The columns must also be in the same order.

-- Let's start with a basic example of UNION using the 'actor' and 'staff' tables in the Sakila database.
-- The 'actor' table contains information about actors.
-- The 'staff' table contains information about store staff.

-- Basic UNION Example:
SELECT first_name, last_name FROM actor
UNION
SELECT first_name, last_name FROM staff;

-- This query retrieves the first name and last name of all actors and all staff members.
-- The UNION operator removes duplicate rows from the result set.

-- UNION ALL:
-- The UNION ALL operator is similar to the UNION operator, but it allows duplicate rows in the result set.

-- Example of UNION ALL:
SELECT first_name, last_name FROM actor
UNION ALL
SELECT first_name, last_name FROM staff;

-- This query retrieves the first name and last name of all actors and all staff members, including duplicates.

-- Practice Problems:
-- 1. Retrieve the titles of all films and the names of all categories.
--    Use UNION between 'film' and 'category' tables.


-- 2. Retrieve the first names and last names of all customers and staff members, ensuring no duplicates.
--    Use UNION between 'customer' and 'staff' tables.


-- 3. Retrieve all unique cities from the 'address' table and the 'city' table.
--    Use UNION between 'address' and 'city' tables.


-- 4. Retrieve the first names of actors and customers, including duplicates.
--    Use UNION ALL between 'actor' and 'customer' tables.


-- Solutions to Practice Problems:

-- Solution 1:
SELECT title AS Name FROM film
UNION
SELECT name AS Name FROM category;

-- Solution 2:
SELECT first_name, last_name FROM customer
UNION
SELECT first_name, last_name FROM staff;

-- Solution 3:
SELECT city FROM address
UNION
SELECT city FROM city;

-- Solution 4:
SELECT first_name FROM actor
UNION ALL
SELECT first_name FROM customer;


