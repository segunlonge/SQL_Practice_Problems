/*
Question 9: Orders shipping to any country in Latin America
------------------------------------------------
Show all orders from any Latin American country 
*/

SELECT
	OrderID,
	CustomerID,
	ShipCountry
FROM [SQL_Problems].[dbo].[Orders]
WHERE ShipCountry IN (
'Brazil',
'Mexico',
'Argentina',
'Venezuela'
)