-- Use Having if using an aggregate function as a filter rather than using Where
WITH cte_double_entry (orderid, counting) AS
(SELECT distinct orderid, count(*) as counting
FROM [SQL_Problems].[dbo].[OrderDetails]
WHERE Quantity >= 60
GROUP BY orderid, quantity
HAVING count(*) >=2)

select oda.orderid, ProductID, UnitPrice, Quantity, Discount
from cte_double_entry as oda
left join (
SELECT [OrderID]
      ,[ProductID]
      ,[UnitPrice]
      ,[Quantity]
      ,[Discount]
  FROM [SQL_Problems].[dbo].[OrderDetails]
) as od
  ON oda.orderid = od.OrderID



