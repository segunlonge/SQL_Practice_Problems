/*
Question 22: Products that need reordering
------------------------------------------------
What products do we have in our inventory that should be reordered?
*/

SELECT productid,
       productname,
       unitsinstock,
       reorderlevel
FROM   [SQL_Problems].[dbo].[products]
WHERE  unitsinstock < reorderlevel 
