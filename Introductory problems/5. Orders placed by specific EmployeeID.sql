/*
Question 5: Orders placed by specific EmployeeID
------------------------------------------------
Show all the orders placed by a specific employee. The EmployeeID for this Employee (Steven Buchanan) is 5.
*/ 

SELECT OrderID, OrderDate
FROM [SQL_Problems].[dbo].[Orders]
WHERE EmployeeID = 5
