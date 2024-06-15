-- Introduction to LEFT JOIN and RIGHT JOIN

-- In SQL, a JOIN clause is used to combine rows from two or more tables based on a related column between them.
-- LEFT JOIN and RIGHT JOIN are types of OUTER JOINS.
-- LEFT JOIN returns all records from the left table (table1), and the matched records from the right table (table2). 
-- The result is NULL from the right side if there is no match.
-- RIGHT JOIN returns all records from the right table (table2), and the matched records from the left table (table1).
-- The result is NULL from the left side if there is no match.

-- Let's start with LEFT JOIN using the 'customer' and 'rental' tables in the Sakila database.
-- The 'customer' table contains information about customers.
-- The 'rental' table contains information about rentals, including the 'customer_id' of the customer who rented a film.

-- Basic LEFT JOIN Example:
SELECT customer.customer_id, customer.first_name, customer.last_name, rental.rental_id
FROM customer
LEFT JOIN rental ON customer.customer_id = rental.customer_id;

-- This query retrieves all customers and their rental information, if available.
-- If a customer has not rented any films, their rental information will be NULL.

-- Now, let's look at a RIGHT JOIN example using the same tables.
-- Basic RIGHT JOIN Example:
SELECT customer.customer_id, customer.first_name, customer.last_name, rental.rental_id
FROM customer
RIGHT JOIN rental ON customer.customer_id = rental.customer_id;

-- This query retrieves all rentals and the customer information for each rental.
-- If a rental does not have a corresponding customer (which is unlikely in this scenario), the customer information will be NULL.

-- Combining LEFT JOIN and RIGHT JOIN:
-- It is often useful to compare the results of LEFT JOIN and RIGHT JOIN to understand the differences in the data returned.

-- Practice Problems:
-- 1. Retrieve the first name, last name, and email of all customers, along with the date of their last rental (if any).
--    Use a LEFT JOIN between 'customer' and 'rental' tables.

-- 2. Retrieve the title and description of all films, along with the rental date (if any).
--    Use a LEFT JOIN between 'film' and 'inventory' tables, then a LEFT JOIN with 'rental' table.

-- 3. Retrieve the store ID, and address of all stores, along with the staff first name and last name (if any).
--    Use a LEFT JOIN between 'store' and 'address' tables, then a LEFT JOIN with 'staff' table.

-- 4. Retrieve the first name and last name of all customers who have rented a film, and the title of the film.
--    Use a RIGHT JOIN between 'rental' and 'customer' tables, then a RIGHT JOIN with 'inventory' and 'film' tables.

-- 5. Retrieve the first name, last name, and email of all customers, along with the payment amount (if any).
--    Use a LEFT JOIN between 'customer' and 'payment' tables.


-- Solutions to Practice Problems:

-- Solution 1:
SELECT customer.first_name, customer.last_name, customer.email, rental.rental_date
FROM customer
LEFT JOIN rental ON customer.customer_id = rental.customer_id
ORDER BY rental.rental_date DESC;

-- Solution 2:
SELECT film.title, film.description, rental.rental_date
FROM film
LEFT JOIN inventory ON film.film_id = inventory.film_id
LEFT JOIN rental ON inventory.inventory_id = rental.inventory_id;

-- Solution 3:
SELECT store.store_id, address.address, staff.first_name, staff.last_name
FROM store
LEFT JOIN address ON store.address_id = address.address_id
LEFT JOIN staff ON store.store_id = staff.store_id;

-- Solution 4:
SELECT customer.first_name, customer.last_name, film.title
FROM rental
RIGHT JOIN customer ON rental.customer_id = customer.customer_id
RIGHT JOIN inventory ON rental.inventory_id = inventory.inventory_id
RIGHT JOIN film ON inventory.film_id = film.film_id;

-- Solution 5:
SELECT customer.first_name, customer.last_name, customer.email, payment.amount
FROM customer
LEFT JOIN payment ON customer.customer_id = payment.customer_id;


