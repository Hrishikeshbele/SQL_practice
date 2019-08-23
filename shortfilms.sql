/*
Write a SQL Query to find those lowest duration movies along with the year, director’s name(first and last name combined), 
actor’s name(first and last name combined) and his/her role in that production.
*/

SELECT movie_title, movie_year, CONCAT(TRIM(director_first_name), TRIM(director_last_name)) as director_name, 

       CONCAT(TRIM(actor_first_name), TRIM(actor_last_name)) as actor_name, role 

FROM  movies

NATURAL JOIN movies_directors

NATURAL JOIN movies_cast

NATURAL JOIN directors

NATURAL JOIN actors

WHERE movie_time=(SELECT MIN(movie_time) FROM movies);
