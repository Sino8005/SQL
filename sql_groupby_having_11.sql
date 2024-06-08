-- The GROUP BY clause in SQL is used to arrange identical data into groups. 
-- It is often used with aggregate functions (COUNT, SUM, AVG, MAX, MIN) to perform calculations on each group of data.


-- Write a query to count the number of categories.
SELECT name AS category_name, COUNT(*) AS category_count
FROM category
GROUP BY name;

-- Explanation:
-- The category table contains a column named 'name'.
-- The query groups the categories by name and counts the number of categories for each name.


-- Write a query to count the number of films in each category.
SELECT c.category_id, c.name AS category_name, COUNT(fc.film_id) AS film_count
FROM category AS c
JOIN film_category AS fc ON c.category_id = fc.category_id
GROUP BY c.category_id, c.name;

-- Explanation:
-- The tables named 'category' and 'film_category' are joined on the 'category_id' column.
-- The query groups the categories by category ID and name and counts the number of films in each category.


-- Write a query to count the number of films for each rating.
SELECT rating, COUNT(*) AS film_count
FROM film
GROUP BY rating;

-- Explanation:
-- The film table contains a column named 'rating'.
-- The query groups the films by rating and counts the number of films for each rating.


-- Write a query to count the number of films released in each year.
SELECT release_year, COUNT(*) AS film_count
FROM film
GROUP BY release_year;

-- Explanation:
-- The film table contains a column named 'release_year'.
-- The query groups the films by release year and counts the number of films released in each year.


-- Practice Question : 
-- Write a query to count the number of films for each rental duration.



-- The HAVING clause in SQL is used to filter records that work with GROUP BY.
-- It is similar to the WHERE clause but is used for aggregate functions and group results.


-- Write a query to count the number of films in each category and only include categories with more than 10 films.
SELECT c.name AS category_name, COUNT(fc.film_id) AS film_count
FROM category AS c
JOIN film_category AS fc ON c.category_id = fc.category_id
GROUP BY c.name
HAVING COUNT(fc.film_id) > 10;

-- Explanation:
-- The tables named 'category' and 'film_category' are joined on the 'category_id' column.
-- The query groups the categories by name, counts the number of films in each category, and only includes categories with more than 10 films.


-- Write a query to find the release years where the average length of films is greater than 100 minutes.
SELECT release_year, AVG(length) AS avg_length
FROM film
GROUP BY release_year
HAVING AVG(length) > 100;

-- Explanation:
-- The film table contains columns named 'release_year' and 'length'.
-- The query groups the films by release year, calculates the average length of films for each year, and only includes years with an average length greater than 100 minutes.


-- Write a query to count the number of films for each rating and only include ratings with more than 20 films.
SELECT rating, COUNT(*) AS film_count
FROM film
GROUP BY rating
HAVING COUNT(*) > 20;

-- Explanation:
-- The film table contains a column named 'rating'.
-- The query groups the films by rating, counts the number of films for each rating, and only includes ratings with more than 20 films.


-- Practice Question:
-- Write a query to find the ratings where the average rental rate of films is greater than $2.00.
