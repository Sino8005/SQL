USE sakila;

# The SELECT statement is used to select data from a database. It can be used to select all the columns and rows of the table actor.
SELECT *
FROM actor;

-- Explanation:Select all actors from the actor table

#Select specific columns from the actor table
SELECT actor_id, first_name
FROM actor;

#Select Distinct statement is used to return only distinct (different) values from a column in a table. This query returns each rating type only once, even if it appears multiple times in the table.
SELECT DISTINCT rating
FROM film;

-- Practice Question for SELECT: Write a query to list the titles and release years of all films.
SELECT titles,release_year
FROM films;




-- WHERE clause is used to filter records based on specified conditions. This query returns all films released in the year 2006.
SELECT title, release_year
FROM film
WHERE release_year = 2006;

-- Explanation:
-- The film table contains a column named 'release_year'.
-- By using the WHERE clause, we filter the records to only include films released in 2006.


-- Use the WHERE clause to find all rentals that occurred between '2005-05-01' and '2005-05-31'.
SELECT rental_id, rental_date, customer_id
FROM rental
WHERE rental_date BETWEEN '2005-05-01' AND '2005-05-31';


-- Explanation:
-- The rental table contains a column named 'rental_date'.
-- By using the WHERE clause with the BETWEEN operator, we filter the records to include only rentals that occurred in May 2005.


-- Practice Question for Where clause:  Write a query to find all films with a rating of 'R'.
SELECT rating
FROM film
WHERE ='R';



-- ORDER BY clause is used to sort the result set of a query by one or more columns. This query will sort all films by their title in ascending order.
SELECT title, release_year
FROM film
ORDER BY title;

-- Explanation:
-- The film table contains a column named 'title'.
-- By using ORDER BY title, we sort the films alphabetically by their title in ascending order.


-- ORDER BY clause to sort the table in descending order. This query will sort all rentals by their rental date in descending order.
SELECT rental_id, rental_date, customer_id
FROM rental
ORDER BY rental_date DESC;

-- Explanation:
-- The rental table contains a column named 'rental_date'.
-- By using ORDER BY rental_date DESC, we sort the rentals by their rental date in descending order (most recent rentals first).


-- ORDER BY clause to sort the table in ascending order. By default, if no keyword is specified, the order is ascending. 
SELECT title, release_year
FROM film
ORDER BY release_year ASC;

-- Explanation:
-- The film table contains a column named 'release_year'.
-- By using ORDER BY release_year ASC, we explicitly sort the films by their release year in ascending order (earliest releases first).


#ORDER BY clause using both ASC and DESC to sort films first by their release year in ascending order and then by rental rate in descending order.
SELECT title, release_year, rental_rate
FROM film
ORDER BY release_year ASC, rental_rate DESC;

-- Explanation:
-- The film table contains columns named 'release_year' and 'rental_rate'.
-- By using ORDER BY release_year ASC, rental_rate DESC, we first sort the films by their release year in ascending order.
-- For films released in the same year, we then sort them by rental rate in descending order (highest rental rates first).


-- Practice Question for ORDER BY clause: Write a query to list all customers, sorted by their last name in ascending order.

SELECT customers
FROM 
ORDER BY 
