-- Aggregate functions perform a calculation on a set of values and return a single value. Common aggregate functions include:

-- COUNT: Returns the number of rows.
-- SUM: Returns the total sum of a numeric column.
-- AVG: Returns the average value of a numeric column.
-- MAX: Returns the maximum value in a set.
-- MIN: Returns the minimum value in a set.


-- Write a query to count the total number of films.
SELECT COUNT(*) AS total_films
FROM film;

-- Explanation:
-- The COUNT(*) function returns the total number of rows in the film table.


-- Write a query to count the number of actors with the last name 'Smith'.
SELECT COUNT(*) AS smith_actors
FROM actor
WHERE last_name = 'Smith';

-- Explanation:
-- The COUNT(*) function returns the number of rows in the actor table where the last name is 'Smith'.


-- Write a query to count the number of films released in 2006.
SELECT COUNT(*) AS films_2006
FROM film
WHERE release_year = 2006;

-- Explanation:
-- The COUNT(*) function returns the number of rows in the film table where the release year is 2006.



-- Write a query to find the average length of all films.
SELECT AVG(length) AS average_length
FROM film;

-- Explanation:
-- The AVG(length) function calculates the average value of the length column in the film table.


-- Write a query to find the maximum rental rate of all films.
SELECT MAX(rental_rate) AS max_rental_rate
FROM film;

-- Explanation:
-- The MAX(rental_rate) function returns the highest value in the rental_rate column in the film table.


-- Write a query to calculate the total length of all films.
SELECT SUM(length) AS total_length
FROM film;

-- Explanation:
-- The SUM(length) function calculates the total sum of the length column in the film table.


-- Write a query to find the minimum replacement cost of all films.
SELECT MIN(replacement_cost) AS min_replacement_cost
FROM film;

-- Explanation:
-- The MIN(replacement_cost) function returns the lowest value in the replacement_cost column in the film table.


-- Practice Question:
-- Write a query to find the average rental rate of all films.
-- Write a query to calculate the total length of all films.
-- Write a query to count the number of actors with the first name 'John'.

