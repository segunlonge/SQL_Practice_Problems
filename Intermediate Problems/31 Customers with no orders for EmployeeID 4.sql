select c.CustomerID, o.CustomerID, o.EmployeeID
  from Customers c
  left join Orders o
  on o.CustomerID = c.CustomerID
  and o.EmployeeID = 4
  where o.CustomerID is null

  --e.g. CustomerId CACTU has order through employee 4 and other employees so putting where clause employee <> 4 won't work
  --as it would only exclude that particular customer that came through 4 but not one that never order with 4

select c.CustomerID, o.CustomerID, o.EmployeeID
  from Customers c
  left join Orders o
  on o.CustomerID = c.CustomerID
  --and o.EmployeeID = 4
  --where o.CustomerID is null
  where o.EmployeeID <> 4
  order by c.CustomerID

-- Alternative way using Exist and corrolated subquery
select customerid
from customers
where not exists
	(select customerid from
		orders
			where orders.CustomerID = customers.CustomerID
			and EmployeeID = 4
			)




