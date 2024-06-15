-- Introduction to INNER JOIN

-- In SQL, an INNER JOIN is used to combine rows from two or more tables based on a related column between them.
-- The INNER JOIN keyword selects records that have matching values in both tables.

-- Let's start with a basic example using the 'actor' and 'film_actor' tables in the Sakila database.

-- The 'actor' table contains information about actors.
-- The 'film_actor' table contains information about the relationship between films and actors (which actor starred in which film).

-- To find all films that a particular actor has appeared in, we need to join these two tables on their common column, 'actor_id'.

-- Basic INNER JOIN Example:
USE sakila; 

SELECT actor.actor_id, actor.first_name, actor.last_name, film_actor.film_id
FROM actor
INNER JOIN film_actor ON actor.actor_id = film_actor.actor_id;

-- Explanation:
-- SELECT actor.actor_id, actor.first_name, actor.last_name, film_actor.film_id: Specifies the columns to retrieve.
-- FROM actor: Specifies the first table to join.
-- INNER JOIN film_actor ON actor.actor_id = film_actor.actor_id: Specifies the second table and the condition for the join (matching 'actor_id' in both tables).

-- Now, let's include information from the 'film' table to see the titles of the films in which the actors have appeared.

SELECT actor.first_name, actor.last_name, film.title
FROM actor
INNER JOIN film_actor ON actor.actor_id = film_actor.actor_id
INNER JOIN film ON film_actor.film_id = film.film_id;

-- This query joins three tables: 'actor', 'film_actor', and 'film'.
-- It retrieves the first name and last name of the actor, and the title of the film.

-- Let's break this down step by step:
-- 1. Join the 'actor' and 'film_actor' tables on the 'actor_id' column.
-- 2. Join the result with the 'film' table on the 'film_id' column.

-- Practice Problems:
-- 1. Retrieve the first name, last name, and email of all customers who have rented a film.
--    Hint: Join the 'customer' table with the 'rental' table using the 'customer_id' column.
SELECT customer.first_name, customer.last_name, customer.email
FROM customer
INNER JOIN rental ON customer.customer_id = rental.customer_id;

-- 2. Retrieve the title and description of all films that have been rented, along with the rental date.
--    Hint: Join the 'film', 'inventory', and 'rental' tables.
SELECT film.title, film.description, rental.rental_date
FROM film
INNER JOIN inventory ON film.film_id = inventory.film_id
INNER JOIN rental ON inventory.inventory_id = rental.inventory_id;

-- 3. Retrieve the staff first name, last name, and the titles of the films they have rented out.
--    Hint: Join the 'staff', 'rental', and 'inventory' tables, and then join with the 'film' table.
SELECT staff.first_name, staff.last_name, film.title
FROM staff
INNER JOIN rental ON staff.staff_id = rental.staff_id
INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
INNER JOIN film ON inventory.film_id = film.film_id;

-- 4. Retrieve the names of stores and the address of the store's location.
--    Hint: Join the 'store' and 'address' tables.
SELECT store.store_id, address.address
FROM store
INNER JOIN address ON store.address_id = address.address_id;

-- 5. Retrieve the first name and last name of all customers, along with the titles of the films they have rented.
--    Hint: Join the 'customer', 'rental', 'inventory', and 'film' tables.
SELECT customer.first_name, customer.last_name, film.title
FROM customer
INNER JOIN rental ON customer.customer_id = rental.customer_id
INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
INNER JOIN film ON inventory.film_id = film.film_id;

-- Conclusion:
-- INNER JOINs are powerful tools for combining data from multiple tables based on related columns.
-- Practice these queries to become familiar with how INNER JOINs work and how they can be used to retrieve meaningful data from a relational database.
-- Remember, the key to mastering INNER JOINs is to understand the relationships between the tables and how to use the common columns to combine them.

