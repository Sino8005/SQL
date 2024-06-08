-- The LIKE operator is used in SQL to search for a specified pattern in a column. It is commonly used with wildcard characters:

-- %: Represents zero or more characters.
-- _: Represents a single character.


-- Write a query to find all actors whose last name starts with 'Smi'.
SELECT first_name, last_name
FROM actor
WHERE last_name LIKE 'do%';

-- Explanation:
-- The actor table contains a column named 'last_name'.
-- The query filters the records to include only those actors whose last name starts with 'do'.



-- Write a query to find all films whose title contains the word 'Adventure'.
SELECT title
FROM film
WHERE title LIKE '%Song%';

-- Explanation:
-- The film table contains a column named 'title'.
-- The query filters the records to include only those films whose title contains the word 'Song'.


-- Write a query to find all actors whose first name ends with 'a'.
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE '%a';

-- Explanation:
-- The actor table contains a column named 'first_name'.
-- The query filters the records to include only those actors whose first name ends with 'a'.


-- Write a query to find all films whose title starts with 'The'.
SELECT title
FROM film
WHERE title LIKE 'The%';

-- Explanation:
-- The film table contains a column named 'title'.
-- The query filters the records to include only those films whose title starts with 'The'.


-- Practice Question:
-- Write a query to find all actors whose last name ends with 'son'.
-- Write a query to find all films whose title contains the word 'Love'.



-- Wildcards are special characters used in SQL with the LIKE operator to search for a specified pattern in a column.
-- Write a query to find all actors whose last name contains 'e' followed by any single character.
SELECT first_name, last_name
FROM actor
WHERE last_name LIKE '%e_';

-- Explanation:
-- The % wildcard represents zero or more characters.
-- The _ wildcard represents a single character.
-- The query filters the records to include only those actors whose last name contains 'e' followed by any single character.


-- Write a query to find all films whose title starts with 'A' and ends with 'e'.
SELECT title
FROM film
WHERE title LIKE 'A%e';

-- Explanation:
-- The % wildcard represents zero or more characters.
-- The query filters the records to include only those films whose title starts with 'A' and ends with 'e'.


-- Practice Question:
-- Write a query to find all actors whose first name contains 'ann'.

