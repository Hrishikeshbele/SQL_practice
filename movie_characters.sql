'''
Write a SQL Query to find the movie_title and name of director (first and last names combined) who directed a movie 
that casted a role as ‘SeanMaguire’.

'''
--main idea here is first get movie_id and then find director_id from it and name of the director from director_id

-- we use trim to remove spaces in string and add them by using concat functn
select CONCAT(TRIM(directors.director_first_name), TRIM(directors.director_last_name)) as director_name,movie_title
from directors
-- we have joined directors and movie_dir to get directors name from dir_id which we are geting from movie_id
join movies_directors
on directors.director_id=movies_directors.director_id
-- we have joined movies to get title of movie from movie_id
join movies
on movies.movie_id=movies_directors.movie_id
-- we joined movies_cast to get movie id of role seanmaguire
join movies_cast
on movies_cast.movie_id=movies.movie_id 
where role='SeanMaguire'
