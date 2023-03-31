-- BDAT 605: Database Principles 

/*
Write a SELECT statement that joins the three tables and retrieves the data from these tables
Sort the results by the email address in descending order and the product name in ascending order.
*/

USE MyWebDB;
GO

SELECT EmailAddress, FirstName, LastName, DownloadDate, [FileName], ProductName  
FROM Users 
JOIN Downloads ON Users.UserID = Downloads.UserID
JOIN Products ON Downloads.ProductID = Products.ProductID
ORDER BY EmailAddress DESC, ProductName ASC;