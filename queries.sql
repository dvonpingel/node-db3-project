-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select productname, categoryname from Product as p join Category as c on p.categoryId = c.id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select o.id, s.companyname, o.orderdate from 'order' as o join Shipper as s on o.ShipVia = s.id where o.orderdate < '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select 
    o.id, productname, count(od.orderid) as Quantity
from orderdetail as od
join 'order' as o on o.id = od.orderid
join product as p on od.productid = p.id
where orderid is 10251

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select
    o.id as OrderId, c.companyname as Company, e.lastname as Employee_Last_Name
from 'order' as o
join customer as c on o.customerid = c.id
join employee as e on o.employeeid = e.id
