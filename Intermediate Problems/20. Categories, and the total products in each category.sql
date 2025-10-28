/*
Question 20: Categories, and the total products in each category
------------------------------------------------
We'd like to see the total number of products in each category.

Sort the results by the total number of products, in descending order
*/

SELECT C.categoryname,
       Count(productid) AS TotalProducts
FROM   [SQL_Problems].[dbo].[products] P
       INNER JOIN [SQL_Problems].[dbo].[categories] C
               ON P.categoryid = C.categoryid
GROUP  BY C.categoryname
ORDER  BY C.categoryname 