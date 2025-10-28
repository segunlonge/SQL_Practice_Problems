/*
Question 24: Customer list by region
------------------------------------------------
Sort Customers with no region (null in the Region field) to be at the end,
instead of at the top, where you'd normally find the null values.

Within the same region, companies should be sorted by CustomerID
*/

SELECT [CustomerID]
      ,[CompanyName]
      ,[Region]
	  ,CASE WHEN Region is null then 1
		else 0
		END AS RegionCode
  FROM [SQL_Problems].[dbo].[Customers]
  ORDER BY RegionCode, Region, CustomerID DESC