/* Create a new table called persons
with columns: id, person name, birth date, and phone */
CREATE TABLE persons (
	id INT NOT NULL ,
	person_name VARCHAR(40) NOT NULL , 
	birth_date DATE ,
	phone VARCHAR(10) NOT NULL
	CONSTRAINT pk_persons PRIMARY KEY (id)

);

-- Add a new column called email to the persons table
ALTER TABLE persons
	ADD email VARCHAR(20) NOT NULL;
	 

-- Remove the column phone from the persons table
ALTER TABLE persons 
	DROP COLUMN phone;


-- Delete the table persons from the database
DROP TABLE persons ;


