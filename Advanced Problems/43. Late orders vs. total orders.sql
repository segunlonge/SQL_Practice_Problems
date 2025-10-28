/*
Question 43: Late orders vs. total orders
--------------------------------------------------------------------------------------------------------------------------

Which sales people have the most orders arriving late? And how does that stack against the total orders related to them?
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
SELECT LO.employeeid,
       LO.lastname,
	   Count(O.orderid) AS AllOrders,
       LO.totallateorders
FROM   [SQL_Problems].[dbo].[orders] O
       JOIN cte_emplyees_late_orders LO
         ON O.employeeid = LO.employeeid
GROUP  BY LO.employeeid,
          LO.lastname,
          LO.totallateorders 









