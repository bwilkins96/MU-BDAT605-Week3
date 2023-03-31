-- BDAT 605: Database Principles 

/*
Write a script that adds rows to the database that you created in exercise 2.
Add two rows to the Users and Products tables.

Add three rows to the Downloads table: one row for user 1 and product 2; one for user 2 and product 1; and one for user 2 and product 2. 
Use the GETDATE function to insert the current date and time into the DownloadDate column.
*/

USE MyWebDB;
GO

INSERT INTO Users VALUES 
	('johndoe@email.com', 'John', 'Doe'),
	('janedoe@email.com', 'Jane', 'Doe');

INSERT INTO Products VALUES
	('Happy Song'),
	('Cat Video');

INSERT INTO Downloads VALUES
	(1, GETDATE(), 'cat.mp4', 2),
	(2, GETDATE(), 'happy_song.song', 1),
	(2, GETDATE(), 'cat.mp4', 2)