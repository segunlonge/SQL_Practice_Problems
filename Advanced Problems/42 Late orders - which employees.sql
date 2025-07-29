SELECT 
	   O.[EmployeeID]
	  ,E.LastName
	  ,COUNT([OrderID]) AS TotalLateOrders
  FROM [SQL_Problems].[dbo].[Orders] O
  JOIN [SQL_Problems].[dbo].[Employees] E
  ON O.EmployeeID = E.EmployeeID
WHERE ShippedDate >= RequiredDate
GROUP BY O.[EmployeeID], E.LastName

