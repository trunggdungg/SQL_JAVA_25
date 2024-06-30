-- Tạo một bảng mới có tên “Product” với các trường: “product_id” , “product_name” (varchar), “price” (double) và “quantity” (int).
-- Thêm 10 sản phẩm vào bảng “Product” với thông tin sản phẩm bất kỳ.
-- Thêm một trường “description” (varchar) vào bảng “Product” sau khi đã tạo bảng.
-- Cập nhật giá (price) của sản phẩm có “product_id” là 1 thành 99.
-- Tăng giá của sản phẩm có “product_id” là 2 lên 10%.

CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    price DOUBLE,
    quantity INT
);
INSERT INTO Product (product_id, product_name, price, quantity) VALUES
(1, 'Product A', 50.00, 100),
(2, 'Product B', 75.00, 200),
(3, 'Product C', 20.00, 150),
(4, 'Product D', 30.00, 300),
(5, 'Product E', 25.00, 250),
(6, 'Product F', 40.00, 350),
(7, 'Product G', 60.00, 400),
(8, 'Product H', 80.00, 450),
(9, 'Product I', 90.00, 500),
(10, 'Product J', 100.00, 550);

select * from Product;
ALTER TABLE Product ADD description VARCHAR(255);
UPDATE Product SET price = 99 WHERE product_id = 1;
UPDATE Product SET price = price+ (price * 0.1) WHERE product_id = 2;

