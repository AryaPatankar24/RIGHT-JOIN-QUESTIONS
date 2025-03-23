USE sakila;

#1. 1. List all films, along with the names of the actors who have appeared in them (include films with no actors). 

SELECT f.title, a.first_name, a.last_name
FROM actor a 
RIGHT JOIN film_actor fa ON fa.actor_id = a.actor_id
RIGHT JOIN film f ON f.film_id = fa.film_id
ORDER BY f.title;

#2. Find all inventory items, along with the corresponding rental information (include inventory items that have not been rented). 

SELECT i.inventory_id, i.film_id, i.store_id, r.rental_id, r.rental_date
FROM rental r 
RIGHT JOIN inventory i ON r.inventory_id = i.inventory_id
ORDER BY i.inventory_id;

#3. List all categories, along with the films that belong to each category (include categories with no associated films). 

SELECT c.category_id, c.name AS category_name, f.title
FROM film_category fc 
RIGHT JOIN category c ON c.category_id = fc.category_id
RIGHT JOIN film f ON f.film_id = fc.film_id
ORDER BY c.category_id;

#4. . Find all actors, along with the films in which they have appeared (include actors who have not appeared in any film)

SELECT a.actor_id, a.first_name, a.last_name, f.film_id, f.title
FROM film_actor fa
RIGHT JOIN actor a ON a.actor_id = fa.actor_id
RIGHT JOIN film f ON f.film_id = fa.film_id
ORDER BY a.actor_id;

#5. List all rentals, along with the corresponding customer information (include rentals where customer information might be missing).

SELECT r.rental_id, r.rental_date, r.inventory_id, r.customer_id, c.first_name, c.last_name
FROM customer c 
RIGHT JOIN rental r ON r.customer_id = c.customer_id
ORDER BY r.rental_id;
