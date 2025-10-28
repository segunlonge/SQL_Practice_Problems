/*
Question 53: Countries with suppliers or customers, version 2
--------------------------------------------------------------------------------------------------------------------------
Some Northwind emplyees are planning a business trip, and would like to visit as many suppliers and customers as possible.

For their planning, they'd like to see a list of all countries where suppliers and/or customers are based

*/

SELECT DISTINCT C.country AS CustomerCountry,
                S.country AS SupplierCountry
FROM   [SQL_Problems].[dbo].[customers] C
       LEFT JOIN [SQL_Problems].[dbo].[suppliers] S
              ON C.country = S.country
UNION
SELECT DISTINCT C.country AS CustomerCountry,
                S.country AS SupplierCountry
FROM   [SQL_Problems].[dbo].[customers] C
       RIGHT JOIN [SQL_Problems].[dbo].[suppliers] S
               ON C.country = S.country 