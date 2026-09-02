-- Retrive All Customer Data 
SELECT * 
FROM customers l;

-- Retrive All Order Data 
SELECT * 
FROM orders ;

-- Retrive each customer's name , country , and score.
SELECT  first_name , Country , Score 
fROM customers;

-- Retrieve customers with a score not equal to O
SELECT * 
FROM customers 
WHERE score  != 0;

-- Retrieve customers from Germany
SELECT * 
FROM customers 
WHERE country = 'Germany';