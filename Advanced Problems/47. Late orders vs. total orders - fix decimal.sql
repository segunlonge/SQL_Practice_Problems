/*
Question 47: Late orders vs. total orders - fix decimal
--------------------------------------------------------------------------------------------------------------------------

Change the PercentageLateOrders to 2 decimal places

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
       Isnull(LO.totallateorders, 0)
       AS LateOrders,
       Count(O.orderid)
       AS AllOrders,
       Cast(Round(Cast(Isnull(LO.totallateorders, 0) AS DECIMAL(7, 2)) / Cast(
                       Count(O.orderid) AS DECIMAL(7, 2)), 2) AS NUMERIC(36, 2))
       AS
       PercentageLateOrders
FROM   [SQL_Problems].[dbo].[orders] O
       LEFT JOIN cte_emplyees_late_orders LO
              ON O.employeeid = LO.employeeid
       LEFT JOIN [SQL_Problems].[dbo].[employees] E
              ON E.employeeid = O.employeeid
GROUP  BY O.employeeid,
          E.lastname,
          LO.totallateorders 