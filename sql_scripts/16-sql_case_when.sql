-- Extensive Documentation on CASE WHEN in SQL

-- Introduction to CASE WHEN
-- The CASE statement is SQL's way of handling if/then logic.
-- CASE can be used in any statement or clause that allows a valid expression.

-- Basic Syntax of CASE WHEN
-- The CASE statement goes through conditions and returns a value when the first condition is met.
-- If no conditions are true, it returns the value in the ELSE clause.
-- If there is no ELSE part and no conditions are true, it returns NULL.

-- Basic Syntax:
-- CASE
--     WHEN condition1 THEN result1
--     WHEN condition2 THEN result2
--     ...
--     ELSE resultN
-- END

-- Example 1: Basic CASE WHEN
-- Categorize films based on their length.
SELECT title, length,
    CASE
        WHEN length < 60 THEN 'Short'
        WHEN length BETWEEN 60 AND 120 THEN 'Medium'
        ELSE 'Long'
    END AS film_length_category
FROM film;

-- Example 2: CASE WHEN with Multiple Conditions
-- Determine the film rating based on rental rate.
SELECT title, rental_rate,
    CASE
        WHEN rental_rate < 1 THEN 'Low'
        WHEN rental_rate BETWEEN 1 AND 2 THEN 'Medium'
        ELSE 'High'
    END AS rental_rate_category
FROM film;

-- Example 3: CASE WHEN in the SELECT Clause with Aggregate Functions
-- Calculate the total amount paid by each customer and categorize them.
SELECT customer_id, SUM(amount) AS total_amount_paid,
    CASE
        WHEN SUM(amount) < 50 THEN 'Low spender'
        WHEN SUM(amount) BETWEEN 50 AND 150 THEN 'Medium spender'
        ELSE 'High spender'
    END AS spender_category
FROM payment
GROUP BY customer_id;

-- Example 4: CASE WHEN in the WHERE Clause
-- Retrieve films based on a specific category using a CASE statement.
SELECT title
FROM film
WHERE
    CASE
        WHEN title LIKE 'A%' THEN 'Starts with A'
        WHEN title LIKE 'B%' THEN 'Starts with B'
        ELSE 'Other'
    END = 'Starts with A';

-- Example 5: CASE WHEN in the ORDER BY Clause
-- Order films by rental duration categories.
SELECT title, rental_duration,
    CASE
        WHEN rental_duration < 3 THEN 'Short'
        WHEN rental_duration BETWEEN 3 AND 6 THEN 'Medium'
        ELSE 'Long'
    END AS rental_duration_category
FROM film
ORDER BY 
    CASE
        WHEN rental_duration < 3 THEN 1
        WHEN rental_duration BETWEEN 3 AND 6 THEN 2
        ELSE 3
    END;

-- Example 6: Nested CASE WHEN
-- Categorize films based on rental rate and length.
SELECT title, rental_rate, length,
    CASE
        WHEN rental_rate < 2 THEN
            CASE
                WHEN length < 60 THEN 'Low rate, short film'
                WHEN length BETWEEN 60 AND 120 THEN 'Low rate, medium film'
                ELSE 'Low rate, long film'
            END
        WHEN rental_rate BETWEEN 2 AND 4 THEN
            CASE
                WHEN length < 60 THEN 'Medium rate, short film'
                WHEN length BETWEEN 60 AND 120 THEN 'Medium rate, medium film'
                ELSE 'Medium rate, long film'
            END
        ELSE
            CASE
                WHEN length < 60 THEN 'High rate, short film'
                WHEN length BETWEEN 60 AND 120 THEN 'High rate, medium film'
                ELSE 'High rate, long film'
            END
    END AS film_category
FROM film;

-- Example 7: CASE WHEN with Boolean Expressions
-- Mark films as 'Classic' if released before 2000.
SELECT title, release_year,
    CASE
        WHEN release_year < 2000 THEN 'Classic'
        ELSE 'Modern'
    END AS film_type
FROM film;

-- Practice Problems
-- 1. Categorize actors based on the number of films they have acted in.
--    Hint: Use a subquery to count the number of films for each actor.


-- 2. Categorize rentals based on the rental duration.
--    Hint: Use a CASE statement in the SELECT clause.


-- 3. Assign a staff performance category based on the number of rentals they have processed.
--    Hint: Use a subquery to count the number of rentals for each staff member.


-- 4. Mark customers as 'Loyal' or 'New' based on the number of rentals.
--    Hint: Use a CASE statement in the SELECT clause.


-- 5. Categorize payments based on the amount paid.
--    Hint: Use a CASE statement in the SELECT clause.


-- Solutions to Practice Problems

-- Solution 1:
SELECT actor_id, first_name, last_name,
    CASE
        WHEN (SELECT COUNT(*) FROM film_actor WHERE film_actor.actor_id = actor.actor_id) < 10 THEN 'Few films'
        WHEN (SELECT COUNT(*) FROM film_actor WHERE film_actor.actor_id = actor.actor_id) BETWEEN 10 AND 20 THEN 'Moderate films'
        ELSE 'Many films'
    END AS film_count_category
FROM actor;

-- Solution 2:
SELECT rental_id, rental_date, return_date,
    CASE
        WHEN DATEDIFF(return_date, rental_date) < 3 THEN 'Short rental'
        WHEN DATEDIFF(return_date, rental_date) BETWEEN 3 AND 7 THEN 'Medium rental'
        ELSE 'Long rental'
    END AS rental_duration_category
FROM rental;

-- Solution 3:
SELECT staff_id, first_name, last_name,
    CASE
        WHEN (SELECT COUNT(*) FROM rental WHERE rental.staff_id = staff.staff_id) < 100 THEN 'Low performance'
        WHEN (SELECT COUNT(*) FROM rental WHERE rental.staff_id = staff.staff_id) BETWEEN 100 AND 300 THEN 'Medium performance'
        ELSE 'High performance'
    END AS performance_category
FROM staff;

-- Solution 4:
SELECT customer_id, first_name, last_name,
    CASE
        WHEN (SELECT COUNT(*) FROM rental WHERE rental.customer_id = customer.customer_id) > 20 THEN 'Loyal'
        ELSE 'New'
    END AS customer_status
FROM customer;

-- Solution 5:
SELECT payment_id, amount,
    CASE
        WHEN amount < 2 THEN 'Small payment'
        WHEN amount BETWEEN 2 AND 5 THEN 'Medium payment'
        ELSE 'Large payment'
    END AS payment_category
FROM payment;
