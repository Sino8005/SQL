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







