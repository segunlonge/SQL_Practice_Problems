



WITH CTE_OrdersDaysBetween_V2
AS
(SELECT 
       [CustomerID]
      ,[OrderDate]
	  ,OrderID AS NextOrderID
	  ,LEAD(OrderDate,1) OVER (PARTITION BY CustomerID ORDER BY Customerid, OrderID) AS NextOrderDate
	  ,LEAD(OrderID,1) OVER (PARTITION BY CustomerID ORDER BY Customerid) AS OrderID
  FROM [SQL_Problems].[dbo].[Orders]
)

SELECT
CustomerID,
OrderDate,
NextOrderDate,
OrderID,
NextOrderID,
DATEDIFF(day, OrderDate, NextOrderDate) as DaysBetweenOrders
FROM CTE_OrdersDaysBetween_V2
WHERE DATEDIFF(day, OrderDate, NextOrderDate) >= 0 AND DATEDIFF(day, OrderDate, NextOrderDate) <= 5
AND OrderID > NextOrderID