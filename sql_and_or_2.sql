-- The AND operator is used in SQL to filter records that satisfy multiple conditions simultaneously. 

-- Write a query to find all films released in the year 2006 with a rating of 'PG-13'.
SELECT title, release_year, rating
FROM film
WHERE release_year = 2006 AND rating = 'PG-13';

-- Explanation:
-- The film table contains columns named 'release_year' and 'rating'.
-- The query filters the records to include only those films that were released in 2006 and have a rating of 'PG-13'.


-- Write a query to find all actors with the first name 'Nick' and the last name 'Wahlberg'.
SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick' AND last_name = 'Wahlberg';

-- Explanation:
-- The actor table contains columns named 'first_name' and 'last_name'.
-- The query filters the records to include only those actors with the first name 'Nick' and the last name 'Wahlberg'.


-- Write a query to find all films with a rating of 'G' and a rental duration of 7 days.
SELECT title, rating, rental_duration
FROM film
WHERE rating = 'G' AND rental_duration = 7;

-- Explanation:
-- The film table contains columns named 'title', 'rating', and 'rental_duration'.
-- The query filters the records to include only those films with a rating of 'G' and a rental duration of 7 days.


-- Write a query to find all actors with the first name 'Sandra' and whose last name starts with 'K'.
SELECT first_name, last_name
FROM actor
WHERE first_name = 'Sandra' AND last_name LIKE 'K%';

-- Explanation:
-- The actor table contains columns named 'first_name' and 'last_name'.
-- The query filters the records to include only those actors with the first name 'Sandra' and whose last name starts with the letter 'K'.


-- Practice Question: 
-- Write a query to find all actors with the last name 'Smith' and whose first name starts with 'J'.
-- Write a query to find all actors with the first name 'Julia' and the last name 'Roberts'.



-- The OR operator is used in SQL to filter records that satisfy at least one of multiple conditions.
-- Write a query to find all actors with the first name 'Nick' or 'Penelope'.
SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick' OR first_name = 'Penelope';

-- Explanation:
-- The actor table contains a column named 'first_name'.
-- The query filters the records to include actors with the first name 'Nick' or 'Penelope'.


-- Write a query to find all films released in 2005 or 2006.
SELECT title, release_year
FROM film
WHERE release_year = 2005 OR release_year = 2006;


-- Write a query to find all films with a length of 90 minutes or 120 minutes.
SELECT title, length
FROM film
WHERE length = 90 OR length = 120;


-- Practic Question : 
-- Write a query to find all actors with the last name 'Smith' or 'Johnson'.
-- Write a query to find all films with a rental rate of $0.99 or $4.99.


