-- Use Having if using an aggregate function as a filter rather than using Where
SELECT orderid, Quantity, count(*)
FROM [SQL_Problems].[dbo].[OrderDetails]
WHERE Quantity >= 60
GROUP BY orderid, quantity
HAVING count(*) >=2
ORDER BY quantity