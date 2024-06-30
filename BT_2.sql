-- Tạo các bảng:

-- tbl_sinhvien (id, ten, tuoi, gioiTinh, maLop)
-- tbl_giaovien (id, ten, tuoi, gioiTinh, soNamKN)
-- tbl_diem (id, maSV, diemToan, diemLy, diemHoa)
-- Thêm data vào các bảng, mỗi bảng 5 records
-- Tiến hành thực hành, thay đổi cấu trúc bảng bằng alter, update ,v…v… bằng các kiến thức đã học.

CREATE TABLE tbl_sinhvien (
    id INT PRIMARY KEY,
    ten VARCHAR(255),
    tuoi INT,
    gioiTinh VARCHAR(10),
    maLop VARCHAR(50)
);
CREATE TABLE tbl_giaovien (
    id INT PRIMARY KEY,
    ten VARCHAR(255),
    tuoi INT,
    gioiTinh VARCHAR(10),
    soNamKN INT
);

CREATE TABLE tbl_diem (
    id INT PRIMARY KEY,
    maSV INT,
    diemToan FLOAT,
    diemLy FLOAT,
    diemHoa FLOAT,
    FOREIGN KEY (maSV) REFERENCES tbl_sinhvien(id)
);
INSERT INTO tbl_sinhvien (id, ten, tuoi, gioiTinh, maLop) VALUES
(1, 'Nguyễn Văn A', 20, 'Nam', 'L01'),
(2, 'Trần Thị B', 21, 'Nữ', 'L02'),
(3, 'Lê Văn C', 22, 'Nam', 'L01'),
(4, 'Phạm Thị D', 23, 'Nữ', 'L03'),
(5, 'Hoàng Văn E', 24, 'Nam', 'L02');

INSERT INTO tbl_giaovien (id, ten, tuoi, gioiTinh, soNamKN) VALUES
(1, 'Nguyễn Thị F', 40, 'Nữ', 15),
(2, 'Phạm Văn G', 45, 'Nam', 20),
(3, 'Trần Thị H', 35, 'Nữ', 10),
(4, 'Lê Văn I', 50, 'Nam', 25),
(5, 'Hoàng Thị J', 30, 'Nữ', 8);

INSERT INTO tbl_diem (id, maSV, diemToan, diemLy, diemHoa) VALUES
(1, 1, 8.5, 7.5, 9.0),
(2, 2, 6.0, 8.0, 7.0),
(3, 3, 9.0, 8.5, 8.0),
(4, 4, 7.0, 6.5, 7.5),
(5, 5, 8.0, 7.0, 8.5);

select * from tbl_diem;
select * from tbl_giaovien;
select * from tbl_sinhvien;