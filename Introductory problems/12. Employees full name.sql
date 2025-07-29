/*
Question 12: Employees full name
------------------------------------------------
Show FirstName and LastName from Employees table and create new column called FullName by joining FirstName and LastName
*/

SELECT [lastname],
       [firstname],
       Concat(firstname, ' ', lastname) AS FullName
FROM   [SQL_Problems].[dbo].[employees] 