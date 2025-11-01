############################
##### EJERCICIOS JOINS #####
############################
USE sakila;

-- 1. Obtener los clientes y las películas que han alquilado.
-- solución final:
SELECT c.customer_id, CONCAT(c.first_name, " ", c.last_name) AS cliente, f.title, f.film_id
	FROM customer AS c
    INNER JOIN rental AS r
    ON c.customer_id = r.customer_id
    INNER JOIN inventory AS i
    ON r.inventory_id = i.inventory_id
    INNER JOIN film AS f
    ON i.film_id = f.film_id;
    
-- 2. Obtener los actores y las películas en las que han actuado.

SELECT a.first_name, a.last_name, f.title 
	FROM actor AS a LEFT JOIN film_actor AS f_a USING (actor_id) 
	INNER JOIN film AS f USING (film_id);
	 

    
-- 3. Obtener todas las películas y, si están disponibles en inventario, mostrar la cantidad disponible.
SELECT f.title, i.inventory_id
	FROM film AS f
    LEFT JOIN inventory AS i
    ON f.film_id = i.film_id;

SELECT f.title, COUNT(f.title)
	FROM film AS f
    LEFT JOIN inventory AS i
    ON f.film_id = i.film_id
    GROUP BY f.title;
    
SELECT f.title, COUNT(i.inventory_id)
	FROM film AS f
    LEFT JOIN inventory AS i
    ON f.film_id = i.film_id
    GROUP BY f.title;
    
############################
##### EJERCICIOS UNION #####
############################

/* Ejercicio 1

Encuentra todos los actores cuyos nombres comienzan con la letra "A" en la tabla `actor`, 
y encuentra todos los clientes cuyos nombres comienzan con la letra "B" en la tabla `customer`. 
Combina ambos resultados en una sola tabla. */

SELECT first_name, "actor" AS tipo
	FROM actor
	WHERE first_name LIKE "A%"

UNION

SELECT first_name, "customer"
	FROM customer
    WHERE first_name LIKE "B%";
  
#############################################
##### EJERCICIOS COMPLEJAS y SUBQUERIES #####
#############################################

/* Ejercicio 1

Encuentra el nombre y apellido de los actores que han actuado en películas que se alquilaron después de que la película
"ACADEMY DINOSAUR" se alquilara por primera vez. Ordena los resultados alfabéticamente por apellido. */

SELECT a.first_name, a.last_name
	FROM actor AS a;
    
-- where -> la peli se alquiló por primera vez
SELECT MIN(rental_date)
	FROM film AS f
    INNER JOIN inventory as i
    USING (film_id)
    INNER JOIN rental
    USING (inventory_id)
    WHERE title = "ACADEMY DINOSAUR"; -- = 2005-05-27 07:03:28
    
SELECT actor.first_name, actor.last_name, rental.rental_date
	FROM actor
    INNER JOIN film_actor
    USING (actor_id)
    INNER JOIN film AS f
    USING (film_id)
    INNER JOIN inventory
    USING (film_id)
    INNER JOIN rental
    USING (inventory_id)
    WHERE rental_date > "2005-05-27 07:03:28";
    
-- solución final:

SELECT actor.first_name, actor.last_name, rental.rental_date
	FROM actor
    INNER JOIN film_actor
    USING (actor_id)
    INNER JOIN film AS f
    USING (film_id)
    INNER JOIN inventory
    USING (film_id)
    INNER JOIN rental
    USING (inventory_id)
    WHERE rental_date > (SELECT MIN(rental_date)
								FROM film AS f
								INNER JOIN inventory as i
								USING (film_id)
								INNER JOIN rental
								USING (inventory_id)
								WHERE title = "ACADEMY DINOSAUR")
	ORDER BY last_name;
    
SELECT first_name, last_name
FROM actor
WHERE actor_id IN (SELECT actor_id
						FROM film_actor
                        WHERE film_id IN (SELECT film_id
											FROM inventory
                                            WHERE inventory_id IN (SELECT inventory_id
																	FROM rental
                                                                    WHERE rental_date > '2005-05-27 07:03:28')))
ORDER BY last_name;

-- CTEs

WITH actores_pelis AS (
						SELECT a.first_name, a.last_name, f.title
							FROM actor AS a
                            INNER JOIN film_actor
                            USING (actor_id)
                            INNER JOIN film AS f
                            USING (film_id))
                            
SELECT *
	FROM actores_pelis
    WHERE first_name = "PENELOPE";
    
SELECT *
	FROM actores_pelis;
    
SELECT a.first_name, a.last_name, f.title
							FROM actor AS a
                            INNER JOIN film_actor
                            USING (actor_id)
                            INNER JOIN film AS f
                            USING (film_id)
                            WHERE first_name = "PENELOPE";
                            
 WITH actores AS                            
(SELECT actor.first_name, actor.last_name, rental.rental_date, f.title AS patata
	FROM actor
    INNER JOIN film_actor
    USING (actor_id)
    INNER JOIN film AS f
    USING (film_id)
    INNER JOIN inventory
    USING (film_id)
    INNER JOIN rental
    USING (inventory_id))
    
SELECT first_name, patata
	FROM actores
    WHERE rental_date > (SELECT MIN(rental_date)
								FROM film AS f
								INNER JOIN inventory as i
								USING (film_id)
								INNER JOIN rental
								USING (inventory_id)
								WHERE title = "ACADEMY DINOSAUR")
	ORDER BY last_name;