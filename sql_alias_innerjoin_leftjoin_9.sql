-- Aliases in SQL are temporary names given to tables or columns to make queries easier to read and write. Aliases are created using the AS keyword.
-- Column Aliases: Used to rename a column in the result set.
-- Table Aliases: Used to rename a table in the query, often to shorten table names in joins.

-- Write a query to select film titles with a column alias 'Film Title'.
SELECT title AS 'Film Title'
FROM film;

-- Explanation:
-- The column named 'title' is renamed to 'Film Title' in the result set.


-- Write a query to select category names with a column alias 'Category Name'.
SELECT name AS 'Category Name'
FROM category;

-- Explanation:
-- The column named 'name' is renamed to 'Category Name' in the result set.


-- Write a query to select category names using a table alias 'cat'.
SELECT cat.name
FROM category AS cat;

-- Explanation:
-- The table named 'category' is renamed to 'cat' in the query, making it easier to reference the table.



-- The JOIN clause in SQL is used to combine rows from two or more tables based on a related column between them.
-- Let's start with the INNER JOIN clause, The INNER JOIN clause in SQL is used to combine rows from two or more tables based on a related column between them.
-- It returns only the rows where there is a match in both tables.

-- Write a query to join the address and customer tables to get customer names and their addresses.
SELECT c.first_name, c.last_name, a.address
FROM customer AS c
INNER JOIN address AS a ON c.address_id = a.address_id;

-- Explanation:
-- The tables named 'customer' and 'address' are joined on the 'address_id' column.
-- The query retrieves the first name, last name, and address of customers.


-- Write a query to join the category and film_category tables to get category names and film IDs.
SELECT c.name AS 'Category Name', fc.film_id
FROM category AS c
INNER JOIN film_category AS fc ON c.category_id = fc.category_id;

-- Explanation:
-- The tables named 'category' and 'film_category' are joined on the 'category_id' column.
-- The query retrieves the category name and film IDs.


-- Write a query to join the category and film_category tables to get film IDs in the 'Action' category.
SELECT fc.film_id
FROM category AS c
INNER JOIN film_category AS fc ON c.category_id = fc.category_id
WHERE c.name = 'Action';

-- Explanation:
-- The tables named 'category' and 'film_category' are joined on the 'category_id' column.
-- The query retrieves film IDs that belong to the 'Action' category.



-- Practice Question: 
-- Write a query to join the address and customer tables to get customer names and their cities.



