/*
Question 33: High-value customers - total orders
--------------------------------------------------------------------------------------------------------------------------

Redefined: High-value customers are those who've made at least 1 order with a total value (not including the discount) equal to 
$15,000 or more and we want to consider orders made in the year 2016.
*/

SELECT o.customerid,
       Sum(( od.unitprice * od.quantity )) AS total_price
FROM   [SQL_Problems].[dbo].[orders] o
       INNER JOIN [SQL_Problems].[dbo].[orderdetails] od
               ON o.orderid = od.orderid
WHERE  Year(o.orderdate) = '2016'
GROUP  BY o.customerid
-- It is necessary to use the keyword Having because you can only filter after aggregation with it not with a where clause
HAVING Sum(( od.unitprice * od.quantity )) >= 15000
ORDER  BY total_price DESC 
 