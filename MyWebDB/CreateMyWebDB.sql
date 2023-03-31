-- BDAT 605: Database Principles 

/*
Creates a MyWebDB database with Users, Downloads, and Products tables
*/

USE master;
GO

IF DB_ID('MyWebDB') IS NOT NULL
	DROP DATABASE MyWebDB;
GO

CREATE DATABASE MyWebDB;
GO

USE MyWebDB;
GO

CREATE TABLE Users (
	UserID INT PRIMARY KEY IDENTITY,
	EmailAddress VARCHAR(50) NOT NULL,
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL
);

CREATE TABLE Products (
	ProductID INT PRIMARY KEY IDENTITY,
	ProductName VARCHAR(50) NOT NULL
)

CREATE TABLE Downloads (
	DownloadID INT PRIMARY KEY IDENTITY,
	UserID INT REFERENCES Users(UserID) NOT NULL,
	DownloadDate DATETIME NOT NULL,
	"FileName" VARCHAR(50) NOT NULL,
	ProductID INT REFERENCES Products(ProductID) NOT NULL
);

CREATE INDEX IX_Downloads_UserID
	ON Downloads(UserID);

CREATE INDEX IX_Downloads_ProductID
	ON Downloads(ProductID);
