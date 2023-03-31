-- BDAT 605: Database Principles 

/*
Write an ALTER TABLE statement that adds a new column, DuesPaid, to the Individuals table. 
Use the bit data type, disallow null values, and assign a default Boolean value of False.
*/

USE Membership;
GO

ALTER TABLE Individuals
	ADD DuesPaid BIT NOT NULL DEFAULT 0; 