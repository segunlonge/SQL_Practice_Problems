SELECT e.employeeid,
       e.lastname,
       o.orderid,
       od.quantity
FROM   [SQL_Problems].[dbo].[employees] AS e
       INNER JOIN [SQL_Problems].[dbo].[orders] AS o
               ON e.employeeid = o.employeeid
       INNER JOIN [SQL_Problems].[dbo].[orderdetails] od
               ON o.orderid = od.orderid
       INNER JOIN [SQL_Problems].[dbo].[products] AS p
               ON p.productid = od.productid 