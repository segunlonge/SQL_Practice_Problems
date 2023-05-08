
SELECT Top 10 O.OrderID, COUNT(OD.OrderID) AS TotalOrderDetails
 FROM [SQL_Problems].[dbo].[Orders] O
 INNER JOIN [SQL_Problems].[dbo].[OrderDetails] OD
 ON O.OrderID = OD.OrderID
 --WHERE O.OrderId = '10337'
 GROUP BY O.OrderID
 ORDER BY TotalOrderDetails DESC