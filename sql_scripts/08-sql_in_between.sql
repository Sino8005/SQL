-- The IN clause in SQL is used to filter records based on a list of specified values. It simplifies the query when you need to check if a column value matches any value in a given list.

-- Write a query to find all actors whose last name is either 'Smith', 'Johnson', or 'Williams'.
SELECT first_name, last_name
FROM actor
WHERE last_name IN ('Smith', 'Johnson', 'Williams');

-- Explanation:
-- The actor table contains a column named 'last_name'.
-- The query filters the records to include only those actors whose last name is 'Smith', 'Johnson', or 'Williams'.


-- Write a query to find all films with a rating of 'G', 'PG', or 'PG-13'.
SELECT title, rating
FROM film
WHERE rating IN ('G', 'PG', 'PG-13');

-- Explanation:
-- The film table contains a column named 'rating'.
-- The query filters the records to include only those films with a rating of 'G', 'PG', or 'PG-13'.


-- Write a query to find all films released in the years 2005, 2006, or 2007.
SELECT title, release_year
FROM film
WHERE release_year IN (2005, 2006, 2007);

-- Explanation:
-- The film table contains a column named 'release_year'.
-- The query filters the records to include only those films released in 2005, 2006, or 2007.


-- Write a query to find all actors whose first name is 'John', 'Jane', or 'Jim'.
SELECT first_name, last_name
FROM actor
WHERE first_name IN ('John', 'Jane', 'Jim');

-- Explanation:
-- The actor table contains a column named 'first_name'.
-- The query filters the records to include only those actors whose first name is 'John', 'Jane', or 'Jim'.


-- Practice Question : 
-- Write a query to find all actors whose last name is 'Garcia', 'Martinez', or 'Davis'.
-- Write a query to find all films with a rating of 'R' or 'NC-17'.



-- The BETWEEN clause in SQL is used to filter records that fall within a specified range of values. The range is inclusive, meaning that the start and end values are included in the result.

-- Write a query to find all films with a length between 90 and 120 minutes.
SELECT title, length
FROM film
WHERE length BETWEEN 90 AND 120;

-- Explanation:
-- The film table contains a column named 'length'.
-- The query filters the records to include only those films with a length between 90 and 120 minutes.


-- Write a query to find all actors with actor_id between 10 and 20.
SELECT actor_id, first_name, last_name
FROM actor
WHERE actor_id BETWEEN 10 AND 20;

-- Explanation:
-- The actor table contains a column named 'actor_id'.
-- The query filters the records to include only those actors with an actor_id between 10 and 20.


-- Write a query to find all films released between the years 2005 and 2007.
SELECT title, release_year
FROM film
WHERE release_year BETWEEN 2005 AND 2007;

-- Explanation:
-- The film table contains a column named 'release_year'.
-- The query filters the records to include only those films released between 2005 and 2007.


-- Write a query to find all actors whose first name is alphabetically between 'A' and 'M'.
SELECT first_name, last_name
FROM actor
WHERE first_name BETWEEN 'A' AND 'M'


-- Explanation:
-- The actor table contains a column named 'first_name'.
-- The query filters the records to include only those actors whose first name is alphabetically between 'A' and 'M'.


-- Practice question:
-- Write a query to find all films with a rental rate between $2.00 and $4.00.
