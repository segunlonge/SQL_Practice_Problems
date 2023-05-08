-- Use Having if using an aggregate function in as a filter rather than using where
-- Don't forget to put in precedence rules when performing arithmetric calculations
select o.CustomerID, sum((od.UnitPrice * od.Quantity)) as total_price_without_discount, sum((od.UnitPrice * od.Quantity * (1-od.Discount))) as Discount
 FROM [SQL_Problems].[dbo].[Orders] o
 inner join [SQL_Problems].[dbo].[OrderDetails] od
 on o.OrderID = od.OrderID
 where year(o.OrderDate) = '2016'
 group by o.CustomerID
 --order by total_price desc
 having sum((od.UnitPrice * od.Quantity)) >= 15000
 order by total_price_without_discount desc
 