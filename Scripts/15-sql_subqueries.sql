-- Introduction to Subqueries

-- A subquery, also known as an inner query or nested query, is a query within another SQL query.
-- Subqueries are used to perform operations that require multiple steps, such as filtering, transforming, and aggregating data.

-- Types of Subqueries
-- 1. Single-row subquery: Returns a single row.
-- 2. Multiple-row subquery: Returns multiple rows.
-- 3. Multiple-column subquery: Returns multiple columns.
-- 4. Correlated subquery: References columns from the outer query.

-- Subqueries in the SELECT Clause
-- Subqueries can be used in the SELECT clause to compute values for each row.

-- Example 1: Single-row subquery in SELECT clause
-- Find the title of the film with the highest rental rate.
SELECT title, rental_rate
FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

-- Example 2: Multiple-row subquery in SELECT clause
-- Find the titles of the films that have been rented more than once.
SELECT title
FROM film
WHERE film_id IN (SELECT film_id FROM rental GROUP BY film_id HAVING COUNT(*) > 1);

-- Subqueries in the WHERE Clause
-- Subqueries are often used in the WHERE clause to filter results based on the outcome of another query.

-- Example 3: Single-row subquery in WHERE clause
-- Find the actors who acted in the film with the longest runtime.
SELECT first_name, last_name
FROM actor
WHERE actor_id IN (SELECT actor_id FROM film_actor WHERE film_id = (SELECT film_id FROM film ORDER BY length DESC LIMIT 1));

-- Example 4: Multiple-row subquery in WHERE clause
-- Find all customers who rented films released in 2006.
SELECT first_name, last_name
FROM customer
WHERE customer_id IN (SELECT customer_id FROM rental WHERE inventory_id IN (SELECT inventory_id FROM inventory WHERE film_id IN (SELECT film_id FROM film WHERE release_year = 2006)));

-- Subqueries in the FROM Clause
-- Subqueries in the FROM clause are treated as tables or views, often called derived tables.

-- Example 5: Subquery in FROM clause
-- Calculate the average rental duration for each film category.
SELECT category_name, AVG(rental_duration) AS avg_rental_duration
FROM (SELECT f.title, c.name AS category_name, f.rental_duration
      FROM film f
      JOIN film_category fc ON f.film_id = fc.film_id
      JOIN category c ON fc.category_id = c.category_id) AS film_category_rental
GROUP BY category_name;

-- Correlated Subqueries
-- A correlated subquery is a subquery that references columns from the outer query.
-- The subquery is executed once for each row processed by the outer query.

-- Example 6: Correlated subquery
-- Find customers who have rented more than the average number of rentals.
SELECT first_name, last_name
FROM customer c
WHERE (SELECT COUNT(*) FROM rental r WHERE r.customer_id = c.customer_id) > (SELECT AVG(rental_count) FROM (SELECT COUNT(*) AS rental_count FROM rental GROUP BY customer_id) AS avg_rentals);

-- Subqueries with EXISTS
-- The EXISTS keyword is used to check the existence of rows returned by the subquery.

-- Example 7: Subquery with EXISTS
-- Find all films that have been rented at least once.
SELECT title
FROM film f
WHERE EXISTS (SELECT 1 FROM inventory i WHERE i.film_id = f.film_id AND EXISTS (SELECT 1 FROM rental r WHERE r.inventory_id = i.inventory_id));

-- Subqueries with NOT EXISTS
-- The NOT EXISTS keyword is used to check the non-existence of rows returned by the subquery.

-- Example 8: Subquery with NOT EXISTS
-- Find all films that have never been rented.
SELECT title
FROM film f
WHERE NOT EXISTS (SELECT 1 FROM inventory i WHERE i.film_id = f.film_id AND EXISTS (SELECT 1 FROM rental r WHERE r.inventory_id = i.inventory_id));

-- Practice Problems
-- 1. Find the names of customers who have rented a film in the category 'Action'.
-- 2. Find the titles of films that have never been rented.
-- 3. Find the staff members who processed rentals for the customer with the most rentals.
-- 4. Find the names of actors who have acted in more than 10 films.
-- 5. Find the titles and rental rates of films that are more expensive than the average rental rate.

-- Solutions to Practice Problems

-- Solution 1:
SELECT first_name, last_name
FROM customer
WHERE customer_id IN (SELECT customer_id FROM rental WHERE inventory_id IN (SELECT inventory_id FROM inventory WHERE film_id IN (SELECT film_id FROM film WHERE film_id IN (SELECT film_id FROM film_category WHERE category_id = (SELECT category_id FROM category WHERE name = 'Action')))));

-- Solution 2:
SELECT title
FROM film f
WHERE NOT EXISTS (SELECT 1 FROM inventory i WHERE i.film_id = f.film_id AND EXISTS (SELECT 1 FROM rental r WHERE r.inventory_id = i.inventory_id));

-- Solution 3:
SELECT first_name, last_name
FROM staff s
WHERE staff_id IN (SELECT staff_id FROM rental WHERE customer_id = (SELECT customer_id FROM rental GROUP BY customer_id ORDER BY COUNT(*) DESC LIMIT 1));

-- Solution 4:
SELECT first_name, last_name
FROM actor a
WHERE (SELECT COUNT(*) FROM film_actor fa WHERE fa.actor_id = a.actor_id) > 10;

-- Solution 5:
SELECT title, rental_rate
FROM film
WHERE rental_rate > (SELECT AVG(rental_rate) FROM film);
