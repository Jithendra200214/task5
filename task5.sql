USE ecommercedb;
INSERT INTO Customers (Name, Email) VALUES
('Alice','alice@example.com'),
('Bob','bob@example.com'),
('Charlie','charlie@example.com'),
('Diana','diana@example.com'),
('Eve','eve@example.com');
select * from customers;
select * from orders;
select * from products;
INSERT INTO Orders (Customer_ID, Order_Date, Total_Amount) VALUES
(9,'2025-09-01',120),
(10,'2025-09-02',240),
(11,'2025-09-03',50),
(12,'2025-09-04',180);

INSERT INTO Products (Name, Price) VALUES
('Phone',500.00),
('Tab',50.00),
('Charger',20.00),
('Case',10.00);

INSERT INTO Order_Items (Order_ID, Product_ID, Quantity, Price) VALUES
(6,4,1,500.00),
(7,5,3,50.00),
(8,6,1,20.00),
(9,4,1,500.00),
(9,7,2,30.00);

-- inner join (customers with their orders)
Select c.customer_id,c.name as customer_name, o.order_id,o.total_amount 
from customers c
inner join orders o on c.customer_id=o.customer_id;

-- left join (all the customers even without the orders)
select c.customer_id,c.name as customer_name, o.order_id,o.total_amount 
from customers c
left join orders o on c.customer_id = o.customer_id;

-- right join (all orders if the customer is missing)
select c.customer_id, c.name as customer_name, o.order_id, o.total_amount
from customers c
right join orders o on c.customer_id=o.customer_id;

-- full join (union of left join and right join)
select c.customer_id, c.name as customer_name, o.order_id, o.total_amount
from customers c
left join orders o on c.customer_id=o.customer_id
union
select c.customer_id,c.name as customer_name, o.order_id, o.total_amount
from customers c
right join orders o on c.customer_id = o.customer_id;

-- orders details 
select o.order_id, c.name as customer_name, p.name as product, oi.quantity as quantity, (oi.quantity*p.price) as total_price
from orders o
join customers c on o.customer_id = c.customer_id
join order_items oi on o.order_id = oi.order_id
join products p on oi.product_id = p. product_id
order by total_price desc;
