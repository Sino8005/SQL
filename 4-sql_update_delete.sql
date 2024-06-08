-- The UPDATE statement in SQL is used to modify existing records in a table. 

-- Write a query to update the last name of the actor with actor_id 1 to 'Doe'.
UPDATE actor
SET last_name = 'Doe'
WHERE actor_id = 1;

-- Explanation:
-- The actor table contains columns named 'actor_id' and 'last_name'.
-- The query updates the last name of the actor with actor_id 1 to 'Doe'.


-- Write a query to update the rental duration of the film with film_id 1 to 5 days.
UPDATE film
SET rental_duration = 5
WHERE film_id = 1;

-- Explanation:
-- The film table contains columns named 'film_id' and 'rental_duration'.
-- The query updates the rental duration of the film with film_id 1 to 5 days.


-- Practice Question:
-- Write a query to update the first name of the actor with actor_id 2 to 'Jane'.




-- The DELETE statement in SQL is used to remove existing records from a table. You can delete one or more records at once.

-- Write a query to delete the actor with actor_id 1.
DELETE FROM actor
WHERE actor_id = 1;

-- Explanation:
-- The actor table contains a column named 'actor_id'.
-- The query deletes the actor with actor_id 1 from the table.


-- Write a query to delete all films with a rating of 'NC-17'.
DELETE FROM film
WHERE rating = 'NC-17';

-- Explanation:
-- The film table contains a column named 'rating'.
-- The query deletes all films with a rating of 'NC-17' from the table.


-- Practice Question:
-- Write a query to delete the actor with the last name 'Doe'.