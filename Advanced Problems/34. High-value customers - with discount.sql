/*
Question 34: High-value customers - with discount
--------------------------------------------------------------------------------------------------------------------------

Redefined: High-value customers are those who've made at least 1 order with a total value (not including the discount) equal to 
$15,000 or more and we want to consider orders made in the year 2016.

Same as question 33 but apply the discount
*/

SELECT o.customerid,
       Sum(( od.unitprice * od.quantity ))                       AS
       total_price_without_discount,
       Sum(( od.unitprice * od.quantity * ( 1 - od.discount ) )) AS
	   total_price_with_discount
FROM   [SQL_Problems].[dbo].[orders] o
       INNER JOIN [SQL_Problems].[dbo].[orderdetails] od
               ON o.orderid = od.orderid
WHERE  Year(o.orderdate) = '2016'
GROUP  BY o.customerid
--order by total_price desc
HAVING Sum(( od.unitprice * od.quantity )) >= 15000
ORDER  BY total_price_without_discount DESC 
 