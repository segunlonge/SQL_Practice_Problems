/*
Question 42: Late orders - which employees?
--------------------------------------------------------------------------------------------------------------------------

Which sales people have the most orders arriving late?
*/

SELECT O.[employeeid],
       E.lastname,
       Count([orderid]) AS TotalLateOrders
FROM   [SQL_Problems].[dbo].[orders] O
       JOIN [SQL_Problems].[dbo].[employees] E
         ON O.employeeid = E.employeeid
WHERE  shippeddate >= requireddate
GROUP  BY O.[employeeid],
          E.lastname 

