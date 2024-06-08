-- The RIGHT JOIN (or RIGHT OUTER JOIN) clause in SQL returns all rows from the right table and the matched rows from the left table. 
-- If no match is found, NULL values are returned for columns from the left table.

-- Write a query to join the address and customer tables to get all customers and their associated addresses.
SELECT c.first_name, c.last_name, a.address
FROM customer AS c
RIGHT JOIN address AS a ON c.address_id = a.address_id;

-- Explanation:
-- The tables named 'customer' and 'address' are joined on the 'address_id' column.
-- The query retrieves all customers and their associated addresses, including customers without addresses.


-- Write a query to join the category and film_category tables to get all film IDs and their categories.
SELECT fc.film_id, c.name AS 'Category Name'
FROM film_category AS fc
RIGHT JOIN category AS c ON fc.category_id = c.category_id;

-- Explanation:
-- The tables named 'film_category' and 'category' are joined on the 'category_id' column.
-- The query retrieves all film IDs and their categories, including films without categories.


-- Write a query to join the category and film_category tables to list all categories and their film counts.
SELECT c.name AS 'Category Name', COUNT(fc.film_id) AS 'Film Count'
FROM film_category AS fc
RIGHT JOIN category AS c ON fc.category_id = c.category_id
GROUP BY c.name;

-- Explanation:
-- The tables named 'film_category' and 'category' are joined on the 'category_id' column.
-- The query retrieves all categories and the count of films in each category, including categories without films.


-- Practice Question:
-- Write a query to join the address and customer tables to get all customers and their postal codes.



-- The LEFT JOIN (or LEFT OUTER JOIN) clause in SQL returns all rows from the left table and the matched rows from the right table. 
-- If no match is found, NULL values are returned for columns from the right table.

-- Write a query to join the address and customer tables to get all addresses and their associated customers.
SELECT a.address, c.first_name, c.last_name
FROM address AS a
LEFT JOIN customer AS c ON a.address_id = c.address_id;

-- Explanation:
-- The tables named 'address' and 'customer' are joined on the 'address_id' column.
-- The query retrieves all addresses and their associated customers, including addresses without customers.


-- Write a query to join the category and film_category tables to get category names and film IDs.
SELECT c.name AS 'Category Name', fc.film_id
FROM category AS c
LEFT JOIN film_category AS fc ON c.category_id = fc.category_id;

-- Explanation:
-- The tables named 'category' and 'film_category' are joined on the 'category_id' column.
-- The query retrieves the category name and film IDs, including categories without films.


-- Write a query to join the address and customer tables to get all addresses and customer postal codes.
SELECT a.address, a.postal_code, c.first_name, c.last_name
FROM address AS a
LEFT JOIN customer AS c ON a.address_id = c.address_id;

-- Explanation:
-- The tables named 'address' and 'customer' are joined on the 'address_id' column.
-- The query retrieves all addresses and their customer postal codes, including addresses without customers.


-- Practice Question: 
-- Write a query to join the category and film_category tables to get the count of films per category.




