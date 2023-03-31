-- BDAT 605: Database Principles

/*
Delete the GroupMembership table from the Membership database. 
Then, write a CREATE TABLE statement that recreates the table, 
this time with a unique constraint that prevents an individual 
from being a member in the same group twice.
*/

USE Membership;
GO

DROP TABLE GroupMembership;
GO

CREATE TABLE GroupMembership (
	GroupID INT REFERENCES Groups(GroupID),
	IndividualID INT REFERENCES Individuals(IndividualID),
	UNIQUE(GroupID, IndividualID)
);
