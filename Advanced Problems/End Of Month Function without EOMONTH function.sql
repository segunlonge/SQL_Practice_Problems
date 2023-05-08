DECLARE @test DATETIME
SET @test = GETDATE()  -- or any other date

--SELECT DATEADD(month, ((YEAR(@test) - 1900) * 12) + MONTH(@test), -1)

SELECT YEAR(@test)
SELECT YEAR(@test) - 1900
SELECT (YEAR(@test) - 1900) * 12
SELECT MONTH(@test)


--The solution takes as base the first known date by SQL Server (1900-01-01). 
--Then it calculates the number of months that have passed until your given date (@test) by fours steps: 
--1. Calculate how many years have passed: given year - 1900 
--2. Multiply the result of step 1 by 12 to transform it to months 
--3. Add to result of step 2 the months of given date 
--4. The magic number is finally converted to DATETIME by using DATEADD function removing one month