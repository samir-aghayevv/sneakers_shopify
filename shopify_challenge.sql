## task 1, answer: 54

SELECT 
	COUNT(ShipperID)
FROM 
	Orders
WHERE ShipperID = 1;


## task 2, answer: 	Peacock

SELECT 
	Employees.EmployeeID, Employees.LastName, COUNT(Orders.OrderID) as order_number
FROM 
	Orders
LEFT JOIN Employees ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY 
	Employees.LastName
ORDER BY 
	order_number DESC 
LIMIT 1;


## Task 3, answer: Boston Crab Meat, 160 units sold

SELECT 
	ProductName, SUM(Quantity) as total_sold
FROM 
	Orders, OrderDetails, Customers, Products
WHERE 
	OrderDetails.OrderID = Orders.OrderID AND OrderDetails.ProductID = Products.ProductID AND Customers.CustomerID = Orders.CustomerID AND Customers.Country = "Germany" 
GROUP BY 
	ProductName
ORDER BY 
	total_sold DESC 
LIMIT 1
