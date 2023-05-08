/*
Question 2: Certain fields from Categories

In the Categories table, selecting all the fields using this SQL: Select * from Categories …will return 4 columns. 
We only want to see two columns, CategoryName and Description.
*/


SELECT CategoryName, [Description]
FROM [SQL_Problems].[dbo].[Categories]