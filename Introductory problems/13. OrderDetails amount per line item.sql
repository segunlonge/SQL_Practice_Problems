/*
Question 13: OrderDetails amount per line item
------------------------------------------------
Show FirstName and LastName from Employees table and create new column called FullName by joining FirstName and LastName
*/

SELECT [orderid],
       [productid],
       [unitprice],
       [quantity],
       [discount],
       unitprice * quantity AS TotalPrice
FROM   [SQL_Problems].[dbo].[orderdetails] 