/*
Question 40: Orders - accidental double-entry details, derived table
--------------------------------------------------------------------------------------------------------------------------
Return the order details of those duplicate items but do not return duplicate rows

*/
SELECT DISTINCT orderdetails.orderid,
                productid,
                unitprice,
                quantity,
                discount
FROM   orderdetails
       JOIN (SELECT orderid
             FROM   orderdetails
             WHERE  quantity >= 60
             GROUP  BY orderid,
                       quantity
             HAVING Count(*) > 1) PotentialProblemOrders
         ON PotentialProblemOrders.orderid = orderdetails.orderid
ORDER  BY orderid,
          productid 