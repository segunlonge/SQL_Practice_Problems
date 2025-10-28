/*
Question 26: High frieght charges-20215
------------------------------------------------
Return the three ship countries with the highest average freight overall, in descending order
by average frieght but this time from year 2015
*/

SELECT TOP 3 [shipcountry],
             Avg([freight]) AverageFreight
FROM   [SQL_Problems].[dbo].[orders]
WHERE  Year(orderdate) = '2015'
GROUP  BY shipcountry
ORDER  BY averagefreight DESC 