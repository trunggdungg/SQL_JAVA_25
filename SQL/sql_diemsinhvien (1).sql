-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3308
-- Thời gian đã tạo: Th7 11, 2024 lúc 06:20 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sql_diemsinhvien`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyennganh`
--

CREATE TABLE `chuyennganh` (
  `id_chuyenNganh` int(11) NOT NULL,
  `ten_chuyenNganh` varchar(50) NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chuyennganh`
--

INSERT INTO `chuyennganh` (`id_chuyenNganh`, `ten_chuyenNganh`, `department_id`) VALUES
(1, 'Software Engineering', 1),
(2, 'Data Science', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `class_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `class`
--

INSERT INTO `class` (`class_id`, `department_id`, `class_name`) VALUES
(1, 1, 'Class A'),
(2, 2, 'Class B');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `department`
--

INSERT INTO `department` (`department_id`, `department_name`) VALUES
(1, 'Department of Computer Science'),
(2, 'Department of Mathematics');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diemdanh`
--

CREATE TABLE `diemdanh` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `tenLopHocPhan` varchar(50) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `ngayDiemDanh` date NOT NULL,
  `stastus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `diemdanh`
--

INSERT INTO `diemdanh` (`id`, `student_id`, `tenLopHocPhan`, `subject_id`, `ngayDiemDanh`, `stastus`) VALUES
(1, 1, 'Class A', 1, '2024-07-01', 1),
(2, 2, 'Class B', 2, '2024-07-02', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hosotamtru`
--

CREATE TABLE `hosotamtru` (
  `id_hso` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `noiTamtru` varchar(100) NOT NULL,
  `ngayTamTru` date NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hosotamtru`
--

INSERT INTO `hosotamtru` (`id_hso`, `student_id`, `noiTamtru`, `ngayTamTru`, `note`) VALUES
(1, 2, 'Hà Nội', '2024-07-24', 'Đang tạm trú!');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `huyen`
--

CREATE TABLE `huyen` (
  `mahuyen` int(11) NOT NULL,
  `tenhuyen` varchar(50) NOT NULL,
  `matinh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `huyen`
--

INSERT INTO `huyen` (`mahuyen`, `tenhuyen`, `matinh`) VALUES
(1, 'District 1', 1),
(2, 'District 2', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lophocphan`
--

CREATE TABLE `lophocphan` (
  `maLopHocPhan` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `tenLopHocPhan` varchar(50) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `thoiGian` datetime NOT NULL,
  `diaDiem` varchar(70) NOT NULL,
  `namhoc` date NOT NULL,
  `siso` int(11) NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lophocphan`
--

INSERT INTO `lophocphan` (`maLopHocPhan`, `subject_id`, `tenLopHocPhan`, `teacher_id`, `thoiGian`, `diaDiem`, `namhoc`, `siso`, `department_id`) VALUES
(1, 1, '', 1, '0000-00-00 00:00:00', '', '0000-00-00', 0, 1),
(2, 2, '', 1, '0000-00-00 00:00:00', '', '0000-00-00', 0, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Admin'),
(2, 'Teacher'),
(3, 'Student');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `score_subject`
--

CREATE TABLE `score_subject` (
  `socre_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `lanhoc` int(11) NOT NULL,
  `namhoc` varchar(50) NOT NULL,
  `diemChuyenCan` decimal(10,2) NOT NULL,
  `diemGiuaKy` decimal(10,2) NOT NULL,
  `diemThi` decimal(10,2) NOT NULL,
  `diemTongKet` decimal(10,2) NOT NULL,
  `xepLoai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `score_subject`
--

INSERT INTO `score_subject` (`socre_id`, `student_id`, `subject_id`, `lanhoc`, `namhoc`, `diemChuyenCan`, `diemGiuaKy`, `diemThi`, `diemTongKet`, `xepLoai`) VALUES
(1, 1, 1, 1, '2023-2024', 8.00, 9.00, 7.00, 8.80, 'A+');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `score_training`
--

CREATE TABLE `score_training` (
  `score_train_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `year` varchar(50) NOT NULL,
  `hocky` int(2) NOT NULL,
  `total_score` decimal(10,2) NOT NULL,
  `xeploai` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `score_training`
--

INSERT INTO `score_training` (`score_train_id`, `student_id`, `year`, `hocky`, `total_score`, `xeploai`) VALUES
(1, 1, '2023-2024', 1, 90.00, 'Tốt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(120) NOT NULL,
  `phone` int(11) NOT NULL,
  `cccd` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `name_father` varchar(50) NOT NULL,
  `name_mother` varchar(50) NOT NULL,
  `maxa` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `mahuyen` int(11) DEFAULT NULL,
  `matinh` int(11) DEFAULT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `students`
--

INSERT INTO `students` (`student_id`, `student_name`, `gender`, `dob`, `address`, `phone`, `cccd`, `email`, `name_father`, `name_mother`, `maxa`, `user_id`, `mahuyen`, `matinh`, `class_id`) VALUES
(1, 'Jane Doe', '', '0000-00-00', '', 0, 0, '', '', '', 1, 3, 1, 1, 1),
(2, 'Jack Smith', '', '0000-00-00', '', 0, 0, '', '', '', 2, 3, 2, 2, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student_lophocphan`
--

CREATE TABLE `student_lophocphan` (
  `student_id` int(11) NOT NULL,
  `lophocphan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `student_lophocphan`
--

INSERT INTO `student_lophocphan` (`student_id`, `lophocphan_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subjects`
--

CREATE TABLE `subjects` (
  `subjetc_id` int(11) NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  `sotinchi` int(10) NOT NULL,
  `hocky` int(2) NOT NULL,
  `id_chuyenNganh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `subjects`
--

INSERT INTO `subjects` (`subjetc_id`, `subject_name`, `sotinchi`, `hocky`, `id_chuyenNganh`) VALUES
(1, 'Mathematics', 0, 0, 0),
(2, 'Computer Science', 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teachers`
--

CREATE TABLE `teachers` (
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(120) NOT NULL,
  `address` varchar(120) NOT NULL,
  `phone` int(10) NOT NULL,
  `cccd` int(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `teachers`
--

INSERT INTO `teachers` (`teacher_id`, `teacher_name`, `dob`, `gender`, `address`, `phone`, `cccd`, `email`, `user_id`) VALUES
(1, 'Mr. John Doe', '0000-00-00', '', '', 0, 0, '', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinh`
--

CREATE TABLE `tinh` (
  `matinh` int(11) NOT NULL,
  `tentinh` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tinh`
--

INSERT INTO `tinh` (`matinh`, `tentinh`) VALUES
(1, 'Hanoi'),
(2, 'Ho Chi Minh City');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'adminpass', 1),
(2, 'teacher1', 'teacherpass', 2),
(3, 'student1', 'studentpass', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xa`
--

CREATE TABLE `xa` (
  `maxa` int(11) NOT NULL,
  `tenxa` varchar(50) NOT NULL,
  `mahuyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `xa`
--

INSERT INTO `xa` (`maxa`, `tenxa`, `mahuyen`) VALUES
(1, 'Ward 1', 1),
(2, 'Ward 2', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chuyennganh`
--
ALTER TABLE `chuyennganh`
  ADD PRIMARY KEY (`id_chuyenNganh`),
  ADD KEY `department_id` (`department_id`);

--
-- Chỉ mục cho bảng `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Chỉ mục cho bảng `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Chỉ mục cho bảng `diemdanh`
--
ALTER TABLE `diemdanh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Chỉ mục cho bảng `hosotamtru`
--
ALTER TABLE `hosotamtru`
  ADD PRIMARY KEY (`id_hso`),
  ADD KEY `student_id` (`student_id`);

--
-- Chỉ mục cho bảng `huyen`
--
ALTER TABLE `huyen`
  ADD PRIMARY KEY (`mahuyen`),
  ADD KEY `matinh` (`matinh`);

--
-- Chỉ mục cho bảng `lophocphan`
--
ALTER TABLE `lophocphan`
  ADD PRIMARY KEY (`maLopHocPhan`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Chỉ mục cho bảng `score_subject`
--
ALTER TABLE `score_subject`
  ADD PRIMARY KEY (`socre_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Chỉ mục cho bảng `score_training`
--
ALTER TABLE `score_training`
  ADD PRIMARY KEY (`score_train_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Chỉ mục cho bảng `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `maxa` (`maxa`),
  ADD KEY `huyen_id` (`mahuyen`),
  ADD KEY `tinh_id` (`matinh`),
  ADD KEY `class_id` (`class_id`);

--
-- Chỉ mục cho bảng `student_lophocphan`
--
ALTER TABLE `student_lophocphan`
  ADD PRIMARY KEY (`student_id`,`lophocphan_id`),
  ADD KEY `lophocphan_id` (`lophocphan_id`);

--
-- Chỉ mục cho bảng `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subjetc_id`);

--
-- Chỉ mục cho bảng `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacher_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `tinh`
--
ALTER TABLE `tinh`
  ADD PRIMARY KEY (`matinh`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Chỉ mục cho bảng `xa`
--
ALTER TABLE `xa`
  ADD PRIMARY KEY (`maxa`),
  ADD KEY `mahuyen` (`mahuyen`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chuyennganh`
--
ALTER TABLE `chuyennganh`
  MODIFY `id_chuyenNganh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `diemdanh`
--
ALTER TABLE `diemdanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `hosotamtru`
--
ALTER TABLE `hosotamtru`
  MODIFY `id_hso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `huyen`
--
ALTER TABLE `huyen`
  MODIFY `mahuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `lophocphan`
--
ALTER TABLE `lophocphan`
  MODIFY `maLopHocPhan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `score_subject`
--
ALTER TABLE `score_subject`
  MODIFY `socre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `score_training`
--
ALTER TABLE `score_training`
  MODIFY `score_train_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subjetc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tinh`
--
ALTER TABLE `tinh`
  MODIFY `matinh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `xa`
--
ALTER TABLE `xa`
  MODIFY `maxa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chuyennganh`
--
ALTER TABLE `chuyennganh`
  ADD CONSTRAINT `chuyennganh_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);

--
-- Các ràng buộc cho bảng `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);

--
-- Các ràng buộc cho bảng `diemdanh`
--
ALTER TABLE `diemdanh`
  ADD CONSTRAINT `diemdanh_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

--
-- Các ràng buộc cho bảng `hosotamtru`
--
ALTER TABLE `hosotamtru`
  ADD CONSTRAINT `hosotamtru_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

--
-- Các ràng buộc cho bảng `huyen`
--
ALTER TABLE `huyen`
  ADD CONSTRAINT `huyen_ibfk_1` FOREIGN KEY (`matinh`) REFERENCES `tinh` (`matinh`);

--
-- Các ràng buộc cho bảng `lophocphan`
--
ALTER TABLE `lophocphan`
  ADD CONSTRAINT `lophocphan_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subjetc_id`),
  ADD CONSTRAINT `lophocphan_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`),
  ADD CONSTRAINT `lophocphan_ibfk_3` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);

--
-- Các ràng buộc cho bảng `score_subject`
--
ALTER TABLE `score_subject`
  ADD CONSTRAINT `score_subject_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `score_subject_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subjetc_id`);

--
-- Các ràng buộc cho bảng `score_training`
--
ALTER TABLE `score_training`
  ADD CONSTRAINT `score_training_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

--
-- Các ràng buộc cho bảng `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `students_ibfk_2` FOREIGN KEY (`maxa`) REFERENCES `xa` (`maxa`),
  ADD CONSTRAINT `students_ibfk_3` FOREIGN KEY (`mahuyen`) REFERENCES `huyen` (`mahuyen`),
  ADD CONSTRAINT `students_ibfk_4` FOREIGN KEY (`matinh`) REFERENCES `tinh` (`matinh`),
  ADD CONSTRAINT `students_ibfk_5` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`);

--
-- Các ràng buộc cho bảng `student_lophocphan`
--
ALTER TABLE `student_lophocphan`
  ADD CONSTRAINT `student_lophocphan_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `student_lophocphan_ibfk_2` FOREIGN KEY (`lophocphan_id`) REFERENCES `lophocphan` (`maLopHocPhan`);

--
-- Các ràng buộc cho bảng `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);

--
-- Các ràng buộc cho bảng `xa`
--
ALTER TABLE `xa`
  ADD CONSTRAINT `xa_ibfk_1` FOREIGN KEY (`mahuyen`) REFERENCES `huyen` (`mahuyen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
