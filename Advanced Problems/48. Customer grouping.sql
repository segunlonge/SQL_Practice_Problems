/*
Question 48: Customer grouping
--------------------------------------------------------------------------------------------------------------------------

Categorise customers into groups depending on how much they ordered in 2016 so that customers can
be targeted with different sales materials

*/

SELECT C.customerid,
       C.companyname,
       Sum(OD.unitprice * OD.quantity) AS TotalOrderAmount,
       CASE
         WHEN Sum(OD.unitprice * OD.quantity) BETWEEN 0 AND 1000 THEN 'Low'
         WHEN Sum(OD.unitprice * OD.quantity) BETWEEN 1000 AND 5000 THEN
         'Medium'
         WHEN Sum(OD.unitprice * OD.quantity) BETWEEN 5000 AND 10000 THEN 'High'
         WHEN Sum(OD.unitprice * OD.quantity) > 10000 THEN 'Very High'
       END                             AS CustomerGroup
FROM   [SQL_Problems].[dbo].[customers] C
       JOIN [SQL_Problems].[dbo].[orders] O
         ON C.customerid = O.customerid
       JOIN [SQL_Problems].[dbo].[orderdetails] OD
         ON O.orderid = OD.orderid
WHERE  Year(O.orderdate) = '2016'
GROUP  BY C.customerid,
          C.companyname
ORDER  BY C.customerid 
