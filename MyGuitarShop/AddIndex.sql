-- BDAT 605: Database Principles 

/*
Write a script that adds an index to the MyGuitarShop database for the zip code field in the Addresses table.
*/

USE MyGuitarShop;
GO

CREATE INDEX IX_Addresses_ZipCode
	ON Addresses(ZipCode);