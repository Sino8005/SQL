-- Introduction to CROSS JOIN and SELF JOIN

-- CROSS JOIN:
-- A CROSS JOIN returns the Cartesian product of the two tables involved, meaning it combines each row of the first table with each row of the second table.
-- This type of join does not require any condition to join the tables.

-- Let's start with a basic example of CROSS JOIN using the 'actor' and 'film_category' tables in the Sakila database.
-- The 'actor' table contains information about actors.
-- The 'film_category' table contains information about film categories.

-- Basic CROSS JOIN Example:
SELECT actor.actor_id, actor.first_name, actor.last_name, film_category.category_id
FROM actor
CROSS JOIN film_category;

-- This query retrieves the Cartesian product of the 'actor' and 'film_category' tables.
-- The result set will contain every possible combination of rows from the two tables.

-- SELF JOIN:
-- A SELF JOIN is a regular join, but the table is joined with itself.
-- This can be useful for comparing rows within the same table.

-- Let's look at a basic example of SELF JOIN using the 'staff' table in the Sakila database.
-- The 'staff' table contains information about store staff.

-- Basic SELF JOIN Example:
SELECT a.staff_id AS Staff_A_ID, a.first_name AS Staff_A_First_Name, b.staff_id AS Staff_B_ID, b.first_name AS Staff_B_First_Name
FROM staff a
INNER JOIN staff b ON a.store_id = b.store_id AND a.staff_id <> b.staff_id;

-- This query retrieves pairs of staff members who work in the same store.
-- We use table aliases (a and b) to distinguish between the two instances of the 'staff' table.
-- The condition 'a.staff_id <> b.staff_id' ensures that we do not join a row with itself.

-- Practice Problems:
-- 1. Retrieve all combinations of first names and last names from the 'customer' table using CROSS JOIN.
-- 2. Retrieve all possible pairs of films and categories using CROSS JOIN between 'film' and 'category' tables.
-- 3. Retrieve pairs of customers who live in the same city using SELF JOIN on the 'customer' table.
-- 4. Retrieve all combinations of staff members' first names and last names using CROSS JOIN on the 'staff' table.
-- 5. Retrieve pairs of films with different lengths using SELF JOIN on the 'film' table.

-- Solutions to Practice Problems:

-- Solution 1:
SELECT a.first_name AS Customer_First_Name, a.last_name AS Customer_Last_Name, b.first_name AS Combined_First_Name, b.last_name AS Combined_Last_Name
FROM customer a
CROSS JOIN customer b;

-- Solution 2:
SELECT film.title AS Film_Title, category.name AS Category_Name
FROM film
CROSS JOIN category;

-- Solution 3:
SELECT a.customer_id AS Customer_A_ID, a.first_name AS Customer_A_First_Name, a.last_name AS Customer_A_Last_Name, b.customer_id AS Customer_B_ID, b.first_name AS Customer_B_First_Name, b.last_name AS Customer_B_Last_Name
FROM customer a
INNER JOIN customer b ON a.address_id = b.address_id AND a.customer_id <> b.customer_id;

-- Solution 4:
SELECT a.first_name AS Staff_First_Name_A, a.last_name AS Staff_Last_Name_A, b.first_name AS Staff_First_Name_B, b.last_name AS Staff_Last_Name_B
FROM staff a
CROSS JOIN staff b;

-- Solution 5:
SELECT a.film_id AS Film_A_ID, a.title AS Film_A_Title, a.length AS Film_A_Length, b.film_id AS Film_B_ID, b.title AS Film_B_Title, b.length AS Film_B_Length
FROM film a
INNER JOIN film b ON a.length <> b.length;

