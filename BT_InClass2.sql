-- Lấy danh sách các quốc gia duy nhất.
select distinct(country) from person;
-- Sắp xếp danh sách người theo tên đầy đủ (fullname) theo thứ tự tăng dần.
SELECT * FROM person  ORDER BY fullname ASC;
-- Sắp xếp danh sách người theo nghề nghiệp (job) theo thứ tự giảm dần.
select * from person order by job asc;
-- Lấy danh sách các nghề nghiệp (job) duy nhất mà người trong bảng đang làm.
select distinct(job) from person;
-- Đếm số người theo từng quốc gia và sắp xếp theo số lượng người giảm dần.
select count(id) as number_person,country from person group by country order by number_person desc;
-- Tính tổng lương (salary) của tất cả người trong bảng.
select sum(salary) as tongluong from person;
-- Tính tổng lương trung bình của người theo từng nghề nghiệp (job) và sắp xếp theo lương trung bình tăng dần.
select count(id) as number,sum(salary) as tongluong, sum(salary)/count(id) as luongTB , job from Person group by job order by luongTB asc;
select count(id) ,job , avg(salary) from person group by job;
-- Lấy ra người có lương (salary) lớn hơn 50000 và ngày sinh (birthday) nằm trong khoảng ‘1990-01-01’ đến ‘1995-12-31’.
select * from person where salary > 5000 and birthday between "1990-01-01" and "1995-12-31";
-- Lấy ra người có lương (salary) lớn hơn 60000 và nghề nghiệp (job) là ‘Developer’ hoặc ‘Engineer’.
select * from person where salary > 60000 and (job ="Developer" or job= "Engineer");
-- Lấy ra danh sách các nghề nghiệp (job) duy nhất mà có ít nhất 3 người làm.
select count(id) as sl,job from person group by job having sl >=3;
select distinct(job) from person;
-- Lấy ra người nam (gender = ‘Male’) có lương (salary) cao nhất.
select max(salary) from person where gender ="M" ;
-- Lấy ra người nữ (gender = ‘Female’) có lương (salary) thấp nhất.
select min(salary) from person where gender = "F";
-- Lấy danh sách người (không trùng lặp) theo thứ tự tên đầy đủ tăng dần.
select distinct(fullname) as name from person order by name asc;
-- Đếm số người sinh vào các tháng khác nhau và sắp xếp theo thứ tự số lượng tăng dần.
SELECT MONTH(birthday) as month, COUNT(id) as number_of_people FROM Person GROUP BY MONTH(birthday) ORDER BY number_of_people asc;
-- Tính tổng lương (salary) của tất cả người trong bảng.
select sum(salary) from person;


select * from person;