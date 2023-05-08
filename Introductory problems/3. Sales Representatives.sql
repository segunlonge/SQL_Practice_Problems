/*
Question 3: Sales Representatives

We’d like to see just the FirstName, LastName, and HireDate of all the employees with the title of Sales Representative. 
Write a SQL statement that returns only those employees.

*/

SELECT FirstName, LastName, HireDate
FROM [SQL_Problems].[dbo].[Employees]
WHERE Title = 'Sales Representative'
