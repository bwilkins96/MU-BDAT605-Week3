-- BDAT 605: Database Principles 

/*
Creates a database named Membership with
Individuals, Groups, and GroupMembership tables
*/

USE Master;
GO

IF DB_ID('Membership') IS NOT NULL
	DROP DATABASE Membership;
GO

CREATE DATABASE Membership;
GO

USE Membership;
GO

CREATE TABLE Individuals (
	IndividualID INT PRIMARY KEY IDENTITY,
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	Address VARCHAR(100),
	Phone VARCHAR(100) NOT NULL
);

CREATE TABLE Groups (
	GroupID INT PRIMARY KEY IDENTITY,
	GroupName VARCHAR(50) NOT NULL,
	Dues MONEY NOT NULL DEFAULT 0 CHECK(Dues > 0)
);

CREATE TABLE GroupMembership (
	GroupID INT REFERENCES Groups(GroupID),
	IndividualID INT REFERENCES Individuals(IndividualID),
	--PRIMARY KEY(GroupID, IndividualID)
);

