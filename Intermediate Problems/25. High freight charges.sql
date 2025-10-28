/*
Question 25: High frieght charges
------------------------------------------------
Return the three ship countries with the highest average freight overall, in descending order
by average frieght
*/

SELECT TOP 3 [shipcountry],
             Avg([freight]) AverageFreight
FROM   [SQL_Problems].[dbo].[orders]
GROUP  BY shipcountry
ORDER  BY averagefreight DESC 