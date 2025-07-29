/*
Question 6: Supplers and ContactTitles
--------------------------------------
In the Suppliers table, show the SupplierID, ContactName, and ContactTitle for those Suppliers whose ContactTitle is not Marketing Manager.
*/

SELECT SupplierID, ContactName, ContactTitle
FROM [SQL_Problems].[dbo].[Suppliers]
WHERE ContactTitle != 'Marketing Manager'