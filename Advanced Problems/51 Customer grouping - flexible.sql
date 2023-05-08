WITH CTE_CustomerGrouping AS
(SELECT C.CustomerID, C.CompanyName, SUM(OD.UnitPrice*OD.Quantity) AS TotalOrderAmount
FROM [SQL_Problems].[dbo].[Customers] C
JOIN [SQL_Problems].[dbo].[Orders] O
ON C.CustomerID = O.CustomerID
JOIN [SQL_Problems].[dbo].[OrderDetails] OD
ON O.OrderID = OD.OrderID
WHERE YEAR(O.OrderDate) = '2016'
GROUP BY
C.CustomerID,
C.CompanyName)

SELECT CG.CompanyName, CG.CustomerID, CG.TotalOrderAmount, CT.CustomerGroupName FROM CTE_CustomerGrouping CG
JOIN [SQL_Problems].[dbo].[CustomerGroupThresholds] CT
ON CG.TotalOrderAmount < CT.RangeTop AND CG.TotalOrderAmount > CT.RangeBottom
ORDER BY CG.CompanyName
