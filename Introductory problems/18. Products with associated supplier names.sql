/*
Question 18: Products with associated supplier names
------------------------------------------------
Show for each product, the associated Supplier. Show the ProductID, ProductName, and the CompanyName of the Supplier
Sort the result by ProductID
*/

SELECT P.productid,
       P.productname,
       S.companyname
FROM   [SQL_Problems].[dbo].[suppliers] S
       INNER JOIN [SQL_Problems].[dbo].[products] P
               ON S.supplierid = P.productid
ORDER  BY P.productid ASC 