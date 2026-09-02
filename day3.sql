/* Find the average score for each country
considering only customers with a score not equal to 0
and return only those countries with an average score greater than 430
*/
SELECT 
	country , 
	AVG (score)  AS average_score
FROM customers
WHERE score != 0 
GROUP BY country
HAVING AVG(score) > 430 ;


-- Return Unique List of All Countries
SELECT DISTINCT 
	country 
FROM customers;


-- Retrieve Only 3 Customers
SELECT TOP 3 
	* 
FROM customers;

-- Retrieve the Top 3 Customers with the Highest Scores
SELECT TOP 3 
	score
FROM customers
ORDER BY score DESC;


-- Retrieve the Lowest 2 Customers based on the Score
SELECT TOP 2 
	score
FROM customers
ORDER BY score ASC;


-- Get the Two Most Recent Orders
SELECT TOP 2 *
FROM orders
ORDER BY order_date DESC;




-- Static (Fixed) Values 
SELECT  
	id ,
	first_name ,
	'New Customers' AS customer_type
FROM customers ;


/* 
Highlight & Execute :
You can quickly execute a specific command without others by highlighting it and creating a query so that only the highlighted command will be executed.
*/