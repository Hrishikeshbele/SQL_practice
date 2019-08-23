/*
Write a SQL Query to find the name of all reviewers who have rated their ratings with a NULL value.

*/

/* we first selected all reviewers_id whose rating is null from ratings table and then selected the name 
  corresponding these id's */
select reviewer_name 
from reviewers 
where reviewer_id in(select reviewer_id from ratings where reviewer_stars is NULL)
