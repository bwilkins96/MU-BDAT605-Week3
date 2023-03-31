-- BDAT 605: Database Principles 

/*
Write an ALTER TABLE statement that adds two new check constraints to the Invoices table of the AP database. 
The first should allow (1) PaymentDate to be null only if PaymentTotal is zero and 
(2) PaymentDate to be not null only if PaymentTotal is greater than zero. 
The second constraint should prevent the sum of PaymentTotal and CreditTotal from being greater than InvoiceTotal.
*/

USE AP;
GO

ALTER TABLE Invoices
	ADD CHECK((PaymentDate IS NULL AND PaymentTotal = 0) OR (PaymentDate IS NOT NULL AND PaymentTotal > 0)),
		CHECK((PaymentTotal + CreditTotal) <= InvoiceTotal);