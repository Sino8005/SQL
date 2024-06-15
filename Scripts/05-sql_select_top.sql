The SELECT TOP statement in SQL is used to limit the number of rows returned in a query result. 
This is useful when you want to retrieve only a subset of records from a table. Different SQL databases have different syntax for limiting results:
In SQL Server, you use SELECT TOP.
In MySQL and PostgreSQL, you use LIMIT.
In Oracle, you use ROWNUM.
For this guide, we'll focus on MySQL's LIMIT syntax, which is applicable to the Sakila database.
LIMIT clause: Specifies the maximum number of rows to return.



-- Write a query to select the top 5 actors from the actor table.
SELECT first_name, last_name
FROM actor
LIMIT 5;

-- Explanation:
-- The actor table contains columns named 'first_name' and 'last_name'.
-- The query retrieves the first 5 rows from the actor table.



-- Write a query to select the top 10 films ordered by release year in descending order.
SELECT title, release_year
FROM film
ORDER BY release_year DESC
LIMIT 10;

-- Explanation:
-- The film table contains columns named 'title' and 'release_year'.
-- The query retrieves the top 10 films, ordered by release year in descending order.


-- Write a query to select the top 3 films with the highest rental rate.
SELECT title, rental_rate
FROM film
ORDER BY rental_rate DESC
LIMIT 3;

-- Explanation:
-- The film table contains columns named 'title' and 'rental_rate'.
-- The query retrieves the top 3 films with the highest rental rate, ordered by rental rate in descending order.


-- Write a query to select the top 5 most recently added films.
SELECT title, release_year
FROM film
ORDER BY release_year DESC
LIMIT 5;

-- Explanation:
-- The film table contains columns named 'title' and 'release_year'.
-- The query retrieves the top 5 most recently added films, ordered by release year in descending order.


-- Write a query to select the top 5 longest films by length.
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 5;

-- Explanation:
-- The film table contains columns named 'title' and 'length'.
-- The query retrieves the top 5 longest films, ordered by length in descending order.


-- Practice Question:
-- -- Write a query to select the top 10 actors ordered by their last name in ascending order.