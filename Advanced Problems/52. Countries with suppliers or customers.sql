/*
Question 52: Countries with suppliers or customers
--------------------------------------------------------------------------------------------------------------------------
Some Northwind emplyees are planning a business trip, and would like to visit as many suppliers and customers as possible.

For their planning, they'd like to see a list of all countries where suppliers and/or customers are based

*/

SELECT C.country AS CustomerCountry
FROM   [SQL_Problems].[dbo].[customers] C
UNION
SELECT S.country AS SupplerCountry
FROM   [SQL_Problems].[dbo].[suppliers] S 