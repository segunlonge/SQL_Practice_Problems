Select distinct
OrderDetails.OrderID,
ProductID ,UnitPrice,
Quantity,
Discount 
From OrderDetails 
Join (Select 
		OrderID 
	From OrderDetails 
	Where Quantity >= 60 
	Group By OrderID, 
	Quantity Having Count(*) > 1
	) PotentialProblemOrders 
	on PotentialProblemOrders.OrderID = OrderDetails.OrderID 
	Order by OrderID, ProductID