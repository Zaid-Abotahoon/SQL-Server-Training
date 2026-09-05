-- INSERT
INSERT INTO  customers (id, first_name, country, score) 
VALUES 
	(6 , 'Ahmad' , 'Jordan' , NULL) ,  
	(7 , 'Anas' , 'Saudi Arabia' , 432); 


INSERT INTO  customers 
VALUES
	(8 , 'Rami' , Null , Null); 


INSERT INTO  customers (id , first_name)
VALUES	
	(9 , 'Shara')


-- Copy data from 'customers' table into 'persons'
INSERT INTO persons (id , person_name , birth_date , phone)
SELECT 
id, 
first_name, 
NULL,
'UnKnown' 
FROM customers

-----------------------------------------------------------------------------------------
-- UPDATE
-- Change the score of customer with ID 6 to O ?
UPDATE customers
SET score = 0
WHERE id = 6 
/* NOTE : Check with SELECT before running UPDATE to avoid updating the wrong data
	SELECT *
	FROM customers
	WHERE id = 6
*/
		
/* Change the score of customer with ID 9 to O and
update the country to 'UK' ? */
UPDATE customers
SET score = 0 ,
	country = 'UK'
WHERE id = 9 


/* Update all customers with a NULL score
by setting their score to O ? */
UPDATE customers
SET score = 0 
WHERE score IS NULL

-----------------------------------------------------------------------------------------
-- DELETE 
-- Delete all customers with an ID greater than 5
DELETE FROM customers 
WHERE id > 5
/* NOTE : Check with SELECT before running DELETE to avoid deleting the wrong data
	SELECT * 
	FROM customers 
	WHERE id > 5
*/

-- Delete all data from the persons table
TRUNCATE TABLE persons
/*TRUNCATE:
Clears the whole table at once without checking or logging*/
