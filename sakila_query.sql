use sakila;

# write a querry to selct all the customer name from the customer table who have rented more the three 

# retrive all the films from table that were released in 2006 and are in the comedy category

# display the total number of rental for each film in the descending order of rentel count 

# find the total amount of payment made by each customer where the total payment is greater than 50.
#( from payment table)

SELECT customer_id, SUM(amount) AS total_payment
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 50;


# retrieve the actor IDs and count of films they appeared in, for actors who have acted in more than 5 
#( film_actor)
SELECT actor_id, COUNT(film_id) AS film_count
FROM film_actor
WHERE actor_id > 50
GROUP BY actor_id
HAVING COUNT(film_id) > 5;

# List all films with their rental cost (rental_rate * length ) and sort them by the calculated cost in des
#(film)

SELECT title, rental_rate * length AS rental_cost
FROM film
ORDER BY rental_cost DESC;
