USE sakila;

-- 1.Drop column picture from staff.
ALTER TABLE staff
DROP COLUMN picture;

SELECT * FROM staff;

-- 2.A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer.
SELECT * FROM customer
WHERE first_name = 'TAMMY' AND last_name = 'SANDERS';

INSERT INTO staff(first_name, last_name, address_id, email, store_id, active, username, last_update)
VALUES
('Tammy', 'Sanders', 79, 'TAMMY.SANDERS@sakilacustomer.org', 2, 1, 'Tammy', '2006-02-15 03:57:20');

SELECT * FROM staff;

-- 3.Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. 
SELECT * FROM rental;

SELECT customer_id FROM customer
WHERE first_name = 'CHARLOTTE' and last_name = 'HUNTER';  -- 130

SELECT film_id FROM film
WHERE title = 'ACADEMY DINOSAUR';    -- 1

SELECT inventory_id FROM inventory
WHERE film_id = 1 AND store_id = 1;    -- 1,2,3,4
SELECT inventory_id FROM rental
WHERE inventory_id < 5 AND return_date IS NOT NULL;

SELECT staff_id FROM staff
WHERE first_name = 'Mike';      -- 1

INSERT INTO rental(rental_date, inventory_id, customer_id, return_date, staff_id, last_update)
VALUES
('2023-03-06 12:57:00', 1, 130, NULL, 1, '2023-03-06 12:57:00');