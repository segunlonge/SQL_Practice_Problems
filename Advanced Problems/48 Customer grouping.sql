SELECT C.CustomerID, C.CompanyName, SUM(OD.UnitPrice*OD.Quantity) AS TotalOrderAmount,
CASE 
	WHEN SUM(OD.UnitPrice*OD.Quantity) BETWEEN 0 AND 1000 THEN 'Low'
	WHEN SUM(OD.UnitPrice*OD.Quantity) BETWEEN 1000 AND 5000 THEN 'Medium'
	WHEN SUM(OD.UnitPrice*OD.Quantity) BETWEEN 5000 AND 10000 THEN 'High'
	WHEN SUM(OD.UnitPrice*OD.Quantity) > 10000 THEN 'Very High'
END AS CustomerGroup
FROM [SQL_Problems].[dbo].[Customers] C
JOIN [SQL_Problems].[dbo].[Orders] O
ON C.CustomerID = O.CustomerID
JOIN [SQL_Problems].[dbo].[OrderDetails] OD
ON O.OrderID = OD.OrderID
WHERE YEAR(O.OrderDate) = '2016'
GROUP BY
C.CustomerID,
C.CompanyName
ORDER BY C.CustomerID
