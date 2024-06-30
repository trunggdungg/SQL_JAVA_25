-- Dùng bảng persion giải tiếp các bài tập sau:

-- Lấy ra danh sách các nghề nghiệp (job) duy nhất mà người trong bảng không làm trùng lặp.
select distinct(job) from person;
-- Lấy ra danh sách các người có nghề nghiệp (job) là ‘Manager’ và lương (salary) lớn hơn 70000.
select * from person where job = "Manager" and salary > 70000;
-- Lấy ra người có tuổi từ 25 đến 35.
select * from person where (year(curdate()) - year(birthday) between 25 and 35) ;
-- Lấy ra danh sách các quốc gia (country) và tổng số lượng người từng quốc gia.
select count(id),country from person group by country;
-- Tính số lượng nam (gender = ‘Male’) và nữ (gender = ‘Female’) trong bảng.
select count(gender),gender from person group by gender;
-- Lấy ra danh sách người có cùng nghề nghiệp (job) và quốc gia (country).
select count(id) as soluong,job,country from person group by job,country;
-- Lấy ra danh sách người theo thứ tự giảm dần của ngày sinh (birthday).
select fullname,birthday as ngaysinh from person order by day(ngaysinh) desc; 
-- Lấy ra các nghề nghiệp (job) và tổng số lượng người làm nghề đó, nhưng chỉ hiển thị những nghề nghiệp có ít nhất 3 người làm.
select count(id) as soluong,job from person  group by job having soluong >=3;