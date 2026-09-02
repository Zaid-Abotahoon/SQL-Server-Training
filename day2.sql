/* Retrieve all customers and 
sort the results by the highest score first */
SELECT * 
FROM customers 
ORDER BY score DESC;


/* Retrieve all customers and
sort the results by the lowest score first */
SELECT * 
FROM customers 
ORDER BY score ASC;



/* Retrieve all customers and
sort the results by the country
and then by the highest score */
SELECT * 
FROM customers 
ORDER BY country ASC , score DESC;


-- Find the total score for each country
SELECT 
	country , 
	SUM (score) AS total_score
FROM customers
GROUP BY country;

-- Find the total score and total number of customers for each country 
SELECT 
	country ,
	SUM (score) AS total_score ,
	COUNT (id) AS total_customers
	FROM customers 
	GROUP BY country;