/*
Question 15: When was the first order
------------------------------------------------
Show the date of the first order
*/

SELECT Min(orderdate) AS FirstOrder
FROM   [SQL_Problems].[dbo].[orders] 