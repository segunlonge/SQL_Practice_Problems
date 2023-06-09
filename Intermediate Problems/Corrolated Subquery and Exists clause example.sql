--An example of a corrolated Sub query in combination with Exists
--All customers who order products shipped from Brazil
SELECT [CustomerID]
      ,[CompanyName]
      ,[ContactName]
      ,[ContactTitle]
      ,[Address]
      ,[City]
      ,[Region]
      ,[PostalCode]
      ,[Country]
      ,[Phone]
      ,[Fax]
  FROM [SQL_Problems].[dbo].[Customers] C
  WHERE EXISTS (
	SELECT CustomerID, ShipCountry
		FROM [SQL_Problems].[dbo].[Orders]
		WHERE C.CustomerID = CustomerID
			AND ShipCountry = 'Brazil'
			)