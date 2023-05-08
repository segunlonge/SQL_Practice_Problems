/*
Question 4: Sales Representatives in the United States

Now we’d like to see the same columns as above, but only for those employees that both have the title of Sales Representative, 
and also are in the United States.
 
*/

SELECT FirstName, LastName, HireDate
FROM [SQL_Problems].[dbo].[Employees]
WHERE Title = 'Sales Representative'
AND Country = 'USA'
