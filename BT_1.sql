--  Tạo 1 bảng Person với các thông tin sau:
-- id: kiểu số nguyên,
-- fullname: chữ,
-- job: chữ,
-- birthday: ngày/tháng/năm,
-- salary: kiểu số,
-- address: chữ.
-- Thêm 10 bản ghi vào bảng trên.

CREATE TABLE Person (
    id INT PRIMARY KEY,
    fullname VARCHAR(255),
    job VARCHAR(255),
    birthday DATE,
    salary DECIMAL(10, 2),
    address VARCHAR(255)
);

INSERT INTO Person (id, fullname, job, birthday, salary, address) VALUES
(1, 'Nguyễn Văn A', 'Kỹ sư', '1985-01-15', 1500.00, '123 Đường A, Quận B, TP. HCM'),
(2, 'Trần Thị B', 'Giáo viên', '1990-02-20', 1200.00, '456 Đường C, Quận D, Hà Nội'),
(3, 'Lê Văn C', 'Bác sĩ', '1978-03-25', 2000.00, '789 Đường E, Quận F, Đà Nẵng'),
(4, 'Phạm Thị D', 'Nhân viên văn phòng', '1982-04-10', 1000.00, '321 Đường G, Quận H, TP. HCM'),
(5, 'Hoàng Văn E', 'Kinh doanh', '1988-05-15', 1800.00, '654 Đường I, Quận J, Hà Nội'),
(6, 'Vũ Thị F', 'Kỹ thuật viên', '1992-06-05', 1400.00, '987 Đường K, Quận L, TP. HCM'),
(7, 'Đỗ Văn G', 'Lập trình viên', '1995-07-22', 1600.00, '111 Đường M, Quận N, Đà Nẵng'),
(8, 'Phan Thị H', 'Thiết kế đồ họa', '1983-08-18', 1300.00, '222 Đường O, Quận P, Hà Nội'),
(9, 'Trương Văn I', 'Chuyên viên tư vấn', '1987-09-30', 1700.00, '333 Đường Q, Quận R, TP. HCM'),
(10, 'Lý Thị J', 'Kế toán', '1991-10-25', 1500.00, '444 Đường S, Quận T, Đà Nẵng');

select * from person;
