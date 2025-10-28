/*
Question 37: Orders - random assortment
--------------------------------------------------------------------------------------------------------------------------

Show a random set of 2% of all orders
*/

--Technique for generating random number for each row which the Rand() does not return
--The NewID() function gives a GUID number which we don't want (consists of numbers and letters)
--The Checksum() function returns a checksum or hash value for a given expression which a numeric value
--The ABS() function gives the absolute value of the returned number
--We use modulus (%) to return the remainder of the number divided by the count of records in orders table
SELECT TOP (2) PERCENT A.OrderID, A.RandomValue, A.RandomValue2
FROM
(SELECT OrderId, 
		RandomValue = ABS(CHECKSUM(NewID()))%(SELECT COUNT(*) FROM [SQL_Problems].[dbo].[Orders]) + 1, 
		ABS(CHECKSUM(NewID())) AS RandomValue2
	FROM [SQL_Problems].[dbo].[Orders]) AS A


--Examples of Modulus
SELECT 482 / 10 AS Integer, 482 % 10 AS Remainder;
--Division by ten will always return a number betwee 1-10 if the numerator is in 100s i.e.
--return the last digit of the hundreds