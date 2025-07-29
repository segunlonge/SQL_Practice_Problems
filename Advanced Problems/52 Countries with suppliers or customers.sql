SELECT C.Country AS CustomerCountry
FROM [SQL_Problems].[dbo].[Customers] C
UNION
SELECT S.Country AS SupplerCountry
FROM [SQL_Problems].[dbo].[Suppliers] S