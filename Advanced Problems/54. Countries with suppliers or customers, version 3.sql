WITH CTE_Customer AS
(SELECT C.Country AS Country, COUNT(C.Country) AS TotalCustomers, '' AS TotalSuppliers
FROM [SQL_Problems].[dbo].[Customers] C
GROUP BY C.Country),

CTE_Supplier AS
(SELECT S.Country AS Country, '' AS TotalCustomers, COUNT(S.Country) AS TotalSuppliers
FROM [SQL_Problems].[dbo].[Suppliers] S
GROUP BY S.Country)

SELECT C.Country, ISNULL(S.TotalSuppliers,0) AS TotalSuppliers, C.TotalCustomers FROM CTE_Customer C
LEFT JOIN CTE_Supplier S
ON C.Country = S.Country

