/*
Write a SQL query to find all duplicate emails in a table named Person.

+----+---------+
| Id | Email   |
+----+---------+
| 1  | a@b.com |
| 2  | c@d.com |
| 3  | a@b.com |
+----+---------+
For example, your query should return the following for the above table:

+---------+
| Email   |
+---------+
| a@b.com |
+---------+
Note: All emails are in lowercase.
'''
-- solution_1 using count and having

select Email
from person
group by Email
-- return all emails whose count is greater than 1
having count(Email)>1
;

-- solution_2 using self join

SELECT DISTINCT p1.Email
FROM Person p1, Person p2
-- selecting email duplicate email id's(same email but different person id )
WHERE p1.Email = p2.Email and p1.id != p2.id
;
