WITH CTE_OrdersDaysBetween
AS
(Select InitialOrder.CustomerID,
InitialOrderID = InitialOrder.OrderID,
InitialOrderDate = InitialOrder.OrderDate,
NextOrderID = NextOrder.OrderID,
NextOrderDate = NextOrder.OrderDate,
DATEDIFF(day, NextOrder.OrderDate, InitialOrder.OrderDate) as DaysBetweenOrders
from Orders InitialOrder
join Orders NextOrder on InitialOrder.CustomerID = NextOrder.CustomerID
)

SELECT * FROM CTE_OrdersDaysBetween
where DaysBetweenOrders >= 0 AND DaysBetweenOrders <= 5
AND InitialOrderID > NextOrderID
ORDER BY CustomerID