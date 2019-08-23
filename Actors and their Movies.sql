/*
Write a SQL Query to find the name of those movies where one or more actors acted in two or more movies.

*/
-- idea here is to first find the actor_id of actors who worked have worked in more than one movies and then find the movies title using them
select movie_title

-- select the  movie title based on join conditions below
from movies
join movies_cast
-- join where actor id is in the below finded
on movies.movie_id=movies_cast.movie_id
join actors
on actors.actor_id=movies_cast.actor_id
-- finding actor id's who have acted in more than one movies 
where actors.actor_id in (select actor_id from movies_cast group by actor_id having count(*)>=2)
