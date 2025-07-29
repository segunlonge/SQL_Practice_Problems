/*
Question 7: Products with "queso" in ProductName
------------------------------------------------
In the products table, we’d like to see the ProductID and ProductName for those products where the ProductName includes the string “queso”.
*/

SELECT [ProductID]
      ,[ProductName]
  FROM [SQL_Problems].[dbo].[Products]
  WHERE ProductName  like '%queso%'