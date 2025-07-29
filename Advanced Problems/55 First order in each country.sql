WITH CTE_EarliestDate AS
(SELECT 
  ROW_NUMBER() OVER(PARTITION BY ShipCountry ORDER BY OrderDate ASC) AS Row#, OrderID,
  ShipCountry, OrderDate
FROM [SQL_Problems].[dbo].[Orders]
--ORDER BY ShipCountry
)

SELECT O.ShipCountry, O.CustomerID, O.OrderID
FROM [SQL_Problems].[dbo].[Orders] O
JOIN CTE_EarliestDate D
ON D.OrderID = O.OrderID
WHERE D.Row# = 1
ORDER BY O.ShipCountry