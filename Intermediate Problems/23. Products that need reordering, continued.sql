/*
Question 23: Products that need reordering, continued
------------------------------------------------
What products do we have in our inventory that should be reordered?
Slight change in reorder level filter
*/

SELECT productid,
       productname,
       unitsinstock,
       unitsonorder,
       reorderlevel,
       discontinued
FROM   [SQL_Problems].[dbo].[products]
WHERE  unitsinstock + unitsonorder <= reorderlevel
       AND discontinued = 0