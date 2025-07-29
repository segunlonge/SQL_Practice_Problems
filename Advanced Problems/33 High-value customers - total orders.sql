-- Use Having if using an aggregate function in as a filter rather than using where
select o.CustomerID, sum((od.UnitPrice * od.Quantity)) as total_price
 FROM [SQL_Problems].[dbo].[Orders] o
 inner join [SQL_Problems].[dbo].[OrderDetails] od
 on o.OrderID = od.OrderID
 where year(o.OrderDate) = '2016'
 group by o.CustomerID
 --order by total_price desc
 having sum((od.UnitPrice * od.Quantity)) >= 15000
 order by total_price desc
 