/*
Question 36: Orders with many line items
--------------------------------------------------------------------------------------------------------------------------

Show the 10 orders with the most line items, in order of total line items
*/

SELECT TOP 10 O.orderid,
              Count(OD.orderid) AS TotalOrderDetails
FROM   [SQL_Problems].[dbo].[orders] O
       INNER JOIN [SQL_Problems].[dbo].[orderdetails] OD
               ON O.orderid = OD.orderid
--WHERE O.OrderId = '10337'
GROUP  BY O.orderid
ORDER  BY totalorderdetails DESC 