-- BDAT 605: Database Principles 

/*
Write an ALTER TABLE statement that adds two new columns to the Products table created in exercise 2.

a) Add one column for product price that provides for three digits to the left of the decimal point and two to the right. 
This column should have a default value of 9.99.

b) Add one column for the date and time that the product was added to the database.
*/

USE MyWebDB;
GO

ALTER TABLE Products
	ADD Price DECIMAL DEFAULT 9.99 NOT NULL,
		DateAdded DATETIME DEFAULT GETDATE() NOT NULL;