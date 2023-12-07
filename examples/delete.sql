CREATE TABLE IF NOT EXISTS actor_sample
(
    actor_id    SERIAL,
    first_name  VARCHAR(45) NOT NULL,
    last_name   VARCHAR(45) NOT NULL,
    last_update TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (actor_id)
);

INSERT INTO actor_sample (first_name, last_name)
SELECT first_name, last_name
FROM actor;

SELECT *
FROM actor_sample;


DELETE
FROM actor_sample
WHERE actor_id = 1;


DELETE
FROM actor_sample
WHERE first_name = 'ED';


SELECT *
FROM film;

DELETE
FROM actor_sample
WHERE actor_id IN (SELECT actor_id
                   FROM film_actor
                   WHERE film_id IN (SELECT film_id
                                     FROM film
                                     WHERE title = 'ACADEMY DINOSAUR'));


DELETE
FROM actor_sample
WHERE actor_id IN (1, 10, 20, 30, 40, 53);

SELECT actor_id
FROM film_actor
WHERE film_id IN (1);

SELECT film_id
FROM film
WHERE title = 'ACADEMY DINOSAUR';

DROP TABLE actor_sample;