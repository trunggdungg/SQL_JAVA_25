create database ktra_sql;
create table Categories(
category_id  int primary key,
category_name varchar(50)
);

create table Products (
product_id  int primary key,
product_name varchar(50),
category_id  int,
price decimal(10,2),
foreign key (category_id) references categories(category_id)
);

create table Customers (
customer_id  int primary key,
customer_name varchar(50),
email varchar(30)
);

create table orders(
order_id  int primary key,
customer_id  int,
order_date date,
foreign key (customer_id) references Customers(customer_id)
);

create table OrderDetails (
order_detail_id int primary key,
order_id int,
product_id int,
quantity int,
foreign key (order_id) references Orders(order_id),
foreign key (product_id) references products(product_id)
);

-- Thêm dữ liệu vào bảng Categories
INSERT INTO Categories (category_id, category_name) VALUES
(1, 'Electronics'),
(2, 'Books'),
(3, 'Clothing'),
(4, 'Home & Kitchen'),
(5, 'Toys & Games'),
(6, 'Wood');


-- Thêm dữ liệu vào bảng Products
INSERT INTO Products (product_id, product_name, category_id, price) VALUES
(1, 'Smartphone', 1, 699.99),
(2, 'Laptop', 1, 1299.99),
(3, 'Novel', 2, 15.99),
(4, 'T-shirt', 3, 9.99),
(5, 'Coffee Maker', 4, 49.99),
(6, 'Chair', 6, 33.99);

-- Thêm dữ liệu vào bảng Customers
INSERT INTO Customers (customer_id, customer_name, email) VALUES
(1, 'John Doe', 'john@example.com'),
(2, 'Jane Smith', 'jane@example.com'),
(3, 'Robert Brown', 'robert@example.com'),
(4, 'Emily Davis', 'emily@example.com'),
(5, 'Michael Wilson', 'michael@example.com');

-- Thêm dữ liệu vào bảng Orders
INSERT INTO Orders (order_id, customer_id, order_date) VALUES
(1, 1, '2023-07-01'),
(2, 2, '2023-07-02'),
(3, 3, '2023-07-03'),
(4, 4, '2023-07-04'),
(5, 5, '2023-07-05');

-- Thêm dữ liệu vào bảng OrderDetails
INSERT INTO OrderDetails (order_detail_id, order_id, product_id, quantity) VALUES
(1, 1, 1, 1),
(2, 1, 3, 2),
(3, 2, 2, 1),
(4, 3, 4, 3),
(5, 4, 5, 1);

-- Lấy thông tin tất cả các sản phẩm đã được đặt trong một đơn đặt hàng cụ thể.
select products.product_id,products.product_name,products.category_id ,products.price,orderdetails.quantity,orders.order_id,orders.order_date from orders 
join orderdetails on orders.order_id = orderdetails.order_id
join products on orderdetails.product_id= products.product_id 
where orders.order_id  = 1;
-- Tính tổng số tiền trong một đơn đặt hàng cụ thể.
select products.product_id,products.product_name,products.category_id ,products.price,orderdetails.quantity,orders.order_id,orders.order_date,(products.price * orderdetails.quantity) as tongtien from orders 
join orderdetails on orders.order_id = orderdetails.order_id
join products on orderdetails.product_id= products.product_id 
where orders.order_id  = 1;
-- Lấy danh sách các sản phẩm chưa có trong bất kỳ đơn đặt hàng nào.
select products.product_id, products.product_name,orderdetails.order_detail_id from products
left join orderdetails on products.product_id = orderdetails.product_id 
where orderdetails.product_id is null;

-- Đếm số lượng sản phẩm trong mỗi danh mục. (category_name, total_products)
select count(products.product_id) as soluong,categories.category_name from products join categories on products.category_id = categories.category_id group by category_name;
-- Tính tổng số lượng sản phẩm đã đặt bởi mỗi khách hàng (customer_name, total_ordered)
select count(orderdetails.order_id),customers.customer_name from customers 
join  orders on customers.customer_id = orders.order_id
join orderdetails on orders.order_id = orderdetails.order_id
group by customer_name;
-- Lấy thông tin danh mục có nhiều sản phẩm nhất (category_name, product_count)
select count(products.product_id) as sl,categories.category_name from categories join products on categories.category_id = products.category_id group by category_name limit 1;
-- Tính tổng số sản phẩm đã được đặt cho mỗi danh mục (category_name, total_ordered)
select count(products.product_id) as sl,categories.category_name from orderdetails 
join products on orderdetails.product_id = products.product_id
join categories on categories.category_id = products.category_id group by category_name;
-- Lấy thông tin về top 3 khách hàng có số lượng sản phẩm đặt hàng lớn nhất (customer_id, customer_name, total_ordered)
select customers.customer_id, customers.customer_name, sum(orderdetails.quantity) as sl from customers 
join orders on customers.customer_id  = orders.customer_id
join orderdetails on orders.order_id = orderdetails.order_id group by customers.customer_id, customers.customer_name order by sl desc limit 3;
-- Lấy thông tin về khách hàng đã đặt hàng nhiều hơn một lần trong khoảng thời gian cụ thể từ ngày A -> ngày B (customer_id, customer_name, total_orders)

-- Lấy thông tin về các sản phẩm đã được đặt hàng nhiều lần nhất và số lượng đơn đặt hàng tương ứng (product_id, product_name, total_ordered)
select products.product_id,products.product_name , count(orderdetails.product_id) as sl from products 
join orderdetails on products.product_id = orderdetails.product_id group by product_id,product_name order by sl asc; 
