SELECT [OrderID]
      ,[OrderDate]
      ,[RequiredDate]
      ,[ShippedDate]
  FROM [SQL_Problems].[dbo].[Orders]
WHERE ShippedDate >= RequiredDate
ORDER BY OrderID