-- BDAT 605: Database Principles 

/*
Write CREATE INDEX statements to create a clustered index on the GroupID column
and a nonclustered index on the IndividualID column of the GroupMembership table.
*/

USE Membership;
GO

CREATE CLUSTERED INDEX GroupClustIdx
	ON GroupMembership(GroupID);

CREATE INDEX IndivIdx
	ON GroupMembership(IndividualID);