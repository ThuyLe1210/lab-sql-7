use sakila;
-- In the table actor, which are the actors whose last names are not repeated? 
select first_name, last_name from actor group by last_name having count(last_name) = 1;
-- Which last names appear more than once? 
select first_name, last_name, count(last_name) from actor group by last_name having count(last_name) > 1 order by count(last_name) desc;
-- Using the rental table, find out how many rentals were processed by each employee.
select staff_id, count(rental_id) from rental group by staff_id order by count(rental_id) desc;
-- Using the film table, find out how many films were released each year.
select release_year, count(film_id) from film group by release_year; 
-- Using the film table, find out for each rating how many films were there.
select rating, count(film_id) from film group by rating;
-- What is the mean length of the film for each rating type. Round off the average lengths to two decimal places
select rating, round(avg(length), 2) as avg_length from film group by rating order by avg_length;
-- which kind of movies (rating) have a mean duration of more than two hours
select rating, round(avg(length), 2) as avg_length from film group by rating having avg_length > 120;
