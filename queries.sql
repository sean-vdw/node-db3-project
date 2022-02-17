-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT 
	p.ProductName, c.CategoryName
FROM Product as p
JOIN category as c on p.categoryid = c.id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
Select o.id, s.CompanyName 
from [order] as o
join shipper as s on o.ShipVia = s.id
where OrderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT p.ProductName, od.quantity 
from orderdetail as od
join product as p on od.productid = p.Id
where od.orderid = 10251
order by p.productname;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
Select o.id, c.companyname, e.lastname
from [order] as o
join customer as c on o.customerid = c.Id
join employee as e on o.employeeid = e.Id;