/*
Question 51: Customer grouping - flexible
--------------------------------------------------------------------------------------------------------------------------
Group customers using the CustomerGroupThresholds table rather than hardcoding in with 
case statements

*/

WITH cte_customergrouping
     AS (SELECT C.customerid,
                C.companyname,
                Sum(OD.unitprice * OD.quantity) AS TotalOrderAmount
         FROM   [SQL_Problems].[dbo].[customers] C
                JOIN [SQL_Problems].[dbo].[orders] O
                  ON C.customerid = O.customerid
                JOIN [SQL_Problems].[dbo].[orderdetails] OD
                  ON O.orderid = OD.orderid
         WHERE  Year(O.orderdate) = '2016'
         GROUP  BY C.customerid,
                   C.companyname)
SELECT CG.companyname,
       CG.customerid,
       CG.totalorderamount,
       CT.customergroupname
FROM   cte_customergrouping CG
       JOIN [SQL_Problems].[dbo].[customergroupthresholds] CT
         ON CG.totalorderamount < CT.rangetop
            AND CG.totalorderamount > CT.rangebottom
ORDER  BY CG.companyname 
