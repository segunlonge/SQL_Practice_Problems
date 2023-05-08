SELECT c.customerid,
       o.customerid
FROM   [SQL_Problems].[dbo].[customers] c
       LEFT JOIN [SQL_Problems].[dbo].[orders] o
              ON c.customerid = o.customerid
WHERE  o.customerid IS NULL