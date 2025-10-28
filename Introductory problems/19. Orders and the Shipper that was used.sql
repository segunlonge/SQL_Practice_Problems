/*
Question 19: Orders and the Shipper that was used
------------------------------------------------
Show a list of Orders that were made, including the Shipper that was used.
Show the OrderID, OrderDate (date only), and CompanyName of the Shipper, and sort by OrderID.

Show only those rows with an OrderID of less than 10270
*/

SELECT O.orderid,
       CONVERT(DATE, O.orderdate) AS Date,
       S.companyname
FROM   [SQL_Problems].[dbo].[orders] O
       INNER JOIN [SQL_Problems].[dbo].[shippers] S
               ON O.shipvia = S.shipperid
WHERE  O.orderid < '10270'
ORDER  BY O.orderid ASC 