--code to update multiple rows using subquary in where statement
--note:first we need to disable safe upadate mode which only allows to update one row at time.
use sql_store;
UPDATE orders
SET comments="Gold customer"
WHERE customer_id IN 
(SELECT customer_id
FROM customers
WHERE points>3000)
