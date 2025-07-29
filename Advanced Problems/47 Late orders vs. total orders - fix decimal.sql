With cte_emplyees_late_orders as
(
SELECT 
	   O.[EmployeeID]
	  ,E.LastName
	  ,COUNT(O.[OrderID]) AS TotalLateOrders
  FROM [SQL_Problems].[dbo].[Orders] O
 JOIN [SQL_Problems].[dbo].[Employees] E
  ON O.EmployeeID = E.EmployeeID
  --JOIN cte_totalorders o1
  --ON o.EmployeeID = o1.EmployeeID
WHERE ShippedDate >= RequiredDate
GROUP BY O.[EmployeeID], E.LastName
)

SELECT O.EmployeeID, E.LastName, ISNULL(LO.TotalLateOrders,0) as LateOrders, COUNT(O.OrderID) as AllOrders, 
Cast(Round(Cast(ISNULL(LO.TotalLateOrders,0) as decimal(7,2))/Cast(COUNT(O.OrderID) as decimal(7,2)),2) as numeric(36,2)) as PercentageLateOrders  
FROM [SQL_Problems].[dbo].[Orders] O
LEFT JOIN cte_emplyees_late_orders LO
ON O.EmployeeID = LO.EmployeeID
LEFT JOIN [SQL_Problems].[dbo].[Employees] E
ON E.EmployeeID = O.EmployeeID
GROUP BY O.EmployeeID, E.LastName, LO.TotalLateOrders