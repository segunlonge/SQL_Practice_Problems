SELECT DISTINCT C.Country AS CustomerCountry, S.Country  AS SupplierCountry
FROM [SQL_Problems].[dbo].[Customers] C
LEFT JOIN [SQL_Problems].[dbo].[Suppliers] S
ON C.Country = S.Country
UNION
SELECT DISTINCT C.Country AS CustomerCountry, S.Country  AS SupplierCountry
FROM [SQL_Problems].[dbo].[Customers] C
RIGHT JOIN [SQL_Problems].[dbo].[Suppliers] S
ON C.Country = S.Country