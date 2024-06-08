-- The NOT operator is used in SQL to filter records that do not match a specified condition.

-- Write a query to find all actors whose first name is not 'Nick'.
SELECT first_name, last_name
FROM actor
WHERE NOT first_name = 'Nick';

-- Explanation:
-- The actor table contains a column named 'first_name'.
-- The query filters the records to include only those actors whose first name is not 'Nick' using the NOT operator.


-- Write a query to find all films that are not rated 'R'.
SELECT title, rating
FROM film
WHERE NOT rating = 'R';

-- Explanation:
-- The film table contains a column named 'rating'.
-- The query filters the records to include only those films that are not rated 'R' using the NOT operator.


-- Practice Question:
---- Write a query to find all actors whose last name is not 'Doe'.



-- The INTO statement in SQL is often used with the INSERT statement to add new records into a table.
-- Write a query to insert a new customer into the customer table.
INSERT INTO customer (store_id, first_name, last_name, email, address_id, active, create_date)
VALUES (1, 'John', 'Doe', 'john.doe@example.com', 1, 1, CURDATE());

-- Explanation:
-- The customer table contains columns named 'store_id', 'first_name', 'last_name', 'email', 'address_id', 'active', and 'create_date'.
-- The query inserts a new customer with the specified values into the customer table.


-- Write a query to insert a new customer into the customer table.
INSERT INTO customer (store_id, first_name, last_name, email, address_id, active, create_date)
VALUES (2, 'Jane', 'Smith', 'jane.smith@example.com', 2, 1, CURDATE());

-- Explanation:
-- The customer table contains columns named 'store_id', 'first_name', 'last_name', 'email', 'address_id', 'active', and 'create_date'.
-- The query inserts a new customer with the specified values into the customer table.


-- Practice Question:
-- Write a query to insert a new customer with the following details:
-- store_id: 1
-- first_name: 'Michael'
-- last_name: 'Brown'
-- email: 'michael.brown@example.com'
-- address_id: 4
-- active: 1
-- create_date: current date



-- In SQL, NULL represents a missing or undefined value. It is important to understand that NULL is different from zero, an empty string, or any other default value. 
-- When a column in a table has a NULL value, it means that the value is unknown or not applicable.


-- Write a query to find all customers whose email is NULL.
SELECT first_name, last_name
FROM customer
WHERE email IS NULL;

-- Explanation:
-- The customer table contains a column named 'email'.
-- The query filters the records to include only those customers whose email is NULL.


-- Write a query to find all customers whose address_id is NULL.
SELECT first_name, last_name
FROM customer
WHERE address_id IS NULL;

-- Explanation:
-- The customer table contains a column named 'address_id'.
-- The query filters the records to include only those customers whose address_id is NULL.


-- Practice Question:
-- Write a query to find all customers whose first name is NULL.

