-- BDAT 605: Database Principles 

/*
Write an ALTER TABLE statement that modifies the Users table created in exercise 2 so 
the FirstName column cannot store null values and can store a maximum of 20 characters.

Code a statement that attempts to insert a null value into this column. 
It should fail due to the not null constraint.

Code another statement that attempts to insert a first name that’s longer than 20 characters. 
It should fail due to the length of the column. 
*/

USE MyWebDB;
GO

ALTER TABLE Users
	ALTER COLUMN FirstName VARCHAR(20) NOT NULL;

INSERT INTO Users (FirstName) 
VALUES (NULL);

INSERT INTO Users (FirstName)
VALUES ('loooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong string');