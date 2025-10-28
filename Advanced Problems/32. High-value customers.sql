/*
Question 32: High-value customers
--------------------------------------------------------------------------------------------------------------------------

High-value customers are those who've made at least 1 order with a total value (not including the discount) equal to 
$10,000 or more and we want to consider orders made in the year 2016.
*/

SELECT o.customerid,
       od.orderid,
       Sum(( od.unitprice * od.quantity )) AS total_price
FROM   [SQL_Problems].[dbo].[orders] o
       INNER JOIN [SQL_Problems].[dbo].[orderdetails] od
               ON o.orderid = od.orderid
WHERE  Year(o.orderdate) = '2016'
GROUP  BY o.customerid,
          od.orderid
-- It is necessary to use the keyword Having because you can only filter after aggregation with it not with a where clause
HAVING Sum(( od.unitprice * od.quantity )) >= 10000
ORDER  BY total_price DESC 
 