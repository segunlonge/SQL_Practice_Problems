/*
Question 41: Late orders
--------------------------------------------------------------------------------------------------------------------------

Select the orders that have been reported late by customers
*/

SELECT [orderid],
       [orderdate],
       [requireddate],
       [shippeddate]
FROM   [SQL_Problems].[dbo].[orders]
WHERE  shippeddate >= requireddate
ORDER  BY orderid 