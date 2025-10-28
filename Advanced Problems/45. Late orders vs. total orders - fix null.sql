/*
Question 45: Late orders vs. total orders - fix null
--------------------------------------------------------------------------------------------------------------------------

In question 44 Buchanan showed NULL for late orders because he has not late orders.
Fix the query to show 0 rather than NULL (Fix using ISNULL function)

*/

WITH cte_emplyees_late_orders
     AS (SELECT O.[employeeid],
                E.lastname,
                Count(O.[orderid]) AS TotalLateOrders
         FROM   [SQL_Problems].[dbo].[orders] O
                JOIN [SQL_Problems].[dbo].[employees] E
                  ON O.employeeid = E.employeeid
         --JOIN cte_totalorders o1
         --ON o.EmployeeID = o1.EmployeeID
         WHERE  shippeddate >= requireddate
         GROUP  BY O.[employeeid],
                   E.lastname)
SELECT O.employeeid,
       E.lastname,
       Isnull(LO.totallateorders, 0),
       Count(O.orderid) AS AllOrders
FROM   [SQL_Problems].[dbo].[orders] O
       LEFT JOIN cte_emplyees_late_orders LO
              ON O.employeeid = LO.employeeid
       LEFT JOIN [SQL_Problems].[dbo].[employees] E
              ON E.employeeid = O.employeeid
GROUP  BY O.employeeid,
          E.lastname,
          LO.totallateorders 