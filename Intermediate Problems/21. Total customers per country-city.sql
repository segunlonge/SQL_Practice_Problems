/*
Question 21: Total customers per country/city
------------------------------------------------
Show the total number of customers per Country and City in the Customers table
*/

SELECT C.country,
       C.city,
       Count(*) AS TotalCustomers
FROM   [SQL_Problems].[dbo].[customers] AS C
GROUP  BY C.country,
          C.city 