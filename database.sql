-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 08, 2025 lúc 10:55 PM
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
-- Cơ sở dữ liệu: `db_ordergogi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username_admin` varchar(50) NOT NULL,
  `password_admin` varchar(100) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username_admin`, `password_admin`, `admin_name`, `admin_phone`) VALUES
(1, 'vnk', 'vnk@123', 'Võ Ngân Khanh', '079267285'),
(2, 'dtht', 'dtht@123', 'Đồng Thị Huyền Trang', '0111111111');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_bill`
--

CREATE TABLE `tbl_bill` (
  `id_bill` int(11) NOT NULL,
  `id_table` int(11) NOT NULL,
  `date_check_in` datetime NOT NULL,
  `date_check_out` datetime NOT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `id_admin` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `total_amount` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_bill`
--

INSERT INTO `tbl_bill` (`id_bill`, `id_table`, `date_check_in`, `date_check_out`, `id_customer`, `id_admin`, `status`, `total_amount`) VALUES
(70, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(71, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(72, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(73, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(74, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(75, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(76, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(77, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(78, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(79, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(81, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 2, 1, '79'),
(82, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(85, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 2, 1, '458'),
(86, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(90, 5, '2025-05-08 16:38:54', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(91, 6, '2025-05-08 17:12:07', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(92, 6, '2025-05-08 17:12:15', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(93, 1, '2025-05-08 19:18:45', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(94, 2, '2025-05-08 19:26:51', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(95, 2, '2025-05-08 19:27:02', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(96, 2, '2025-05-08 19:27:05', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(97, 2, '2025-05-08 19:28:02', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(98, 2, '2025-05-08 19:28:17', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(99, 2, '2025-05-08 19:28:21', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(100, 2, '2025-05-08 19:28:25', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(101, 2, '2025-05-08 19:29:56', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(102, 2, '2025-05-08 19:29:57', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(103, 2, '2025-05-08 19:30:01', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(104, 2, '2025-05-08 19:30:03', '2025-05-08 19:45:16', NULL, 2, 1, '158'),
(106, 2, '2025-05-08 23:17:19', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(108, 4, '2025-05-08 23:21:22', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(109, 5, '2025-05-08 23:23:53', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(110, 5, '2025-05-08 23:25:00', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(111, 5, '2025-05-08 23:25:27', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(112, 5, '2025-05-08 23:26:01', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(113, 5, '2025-05-08 23:27:27', '0000-00-00 00:00:00', NULL, 2, 0, NULL),
(117, 3, '2025-05-09 03:19:41', '0000-00-00 00:00:00', NULL, 2, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_bill_info`
--

CREATE TABLE `tbl_bill_info` (
  `id_bill_info` int(11) NOT NULL,
  `id_bill` int(11) NOT NULL,
  `id_food` int(11) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_bill_info`
--

INSERT INTO `tbl_bill_info` (`id_bill_info`, `id_bill`, `id_food`, `quantity`, `price`, `status`) VALUES
(1, 81, 1, 1.00, 79000.00, 2),
(5, 85, 1, 1.00, 79000.00, 1),
(6, 85, 7, 1.00, 379000.00, 1),
(16, 104, 1, 2.00, 79000.00, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_call_staff`
--

CREATE TABLE `tbl_call_staff` (
  `id` int(11) NOT NULL,
  `id_table` int(11) NOT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `call_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_call_staff`
--

INSERT INTO `tbl_call_staff` (`id`, `id_table`, `bill_id`, `call_time`) VALUES
(3, 4, 66, '2025-05-08 05:14:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id_customer` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `birth` datetime DEFAULT NULL,
  `gender` bit(1) DEFAULT NULL,
  `phone` varchar(10) NOT NULL,
  `reset_token` varchar(255) DEFAULT NULL,
  `reset_expiry` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id_customer`, `username`, `password`, `fullname`, `email`, `birth`, `gender`, `phone`, `reset_token`, `reset_expiry`) VALUES
(17, 'trang', '$2y$10$apD48oTMsIYBtnX0gP.ebuKXRKQlFWNioYLpTWWi3GdHfOT6R29u6', 'tênmoiw', 'dongthhihuyentrang@gmail.com', '2000-08-02 00:00:00', b'1', '1111111111', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id_food` int(11) NOT NULL,
  `food_name` varchar(50) NOT NULL,
  `id_category` int(11) NOT NULL,
  `status` bit(1) NOT NULL,
  `image` varchar(50) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_food`
--

INSERT INTO `tbl_food` (`id_food`, `food_name`, `id_category`, `status`, `image`, `price`) VALUES
(1, 'Salad mùa xuân', 1, b'1', '60018682_Salad_mua_xuan_1.jpg', 79000.00),
(2, 'Há cảo truyền thống Hàn Quốc', 1, b'1', '60000131_ha_cao_tt_1.jpg', 79000.00),
(3, 'Set kimbap (ALC)', 1, b'1', '60000127_kimbap_chien_1.jpg', 59000.00),
(4, 'Toboki xào hải sản', 1, b'1', '60000147_Tokboki_xao_hai_san_1.jpg', 109000.00),
(5, 'Dê quân cờ', 2, b'1', '60017517_decatquanco_1_1.jpg', 169000.00),
(6, 'Dê nướng tảng', 2, b'1', '60017516_de_nuong_tang_1_1.jpg', 169000.00),
(7, 'Diềm bụng bò Mỹ/ Canada Tươi/ sốt OBT 200g', 2, b'1', '60010635_diem_bung_tuoi_200_1.jpg', 379000.00),
(8, 'Diềm bụng bò Mỹ/ Canada Tươi/ sốt OBT 100g', 2, b'1', '60010634_diem_bung_tuoi_100_1.jpg', 199000.00),
(9, 'Sườn heo gabi', 3, b'1', '60000137_suon_heo_galbi_1.jpg', 139000.00),
(10, 'Má heo Mỹ tươi/sốt obathan', 3, b'1', '60000080_ma_heo_obathan_1.jpg', 149000.00),
(11, 'Nạc vai heo Mỹ sốt OBT/tươi', 3, b'1', '60000046_nac_vai_cay_1_1.jpg', 109000.00),
(12, 'Sườn heo Mỹ sốt Obathan ALC', 3, b'1', '60000031_Suon_heo_sot_Gabil_1_1.jpg', 149000.00),
(12, 'Mỳ tương đen', 4, b'1', '60017526_mituongden_1_1.jpg', 89000.00),
(13, 'Cơm rang kim chi', 4, b'1', '60013787_comrang_kimchi-min_1_1.jpg', 79000.00),
(14, 'Canh rong biển thịt', 4, b'1', '60000100_Canh_rong_bien_thit_1.jpg', 109000.00),
(15, 'Lẩu dê', 5, b'1', '60017527_laude_1.jpg', 389000.00),
(16, 'Lẩu bull gogi (cỡ lớn)', 5, b'1', '60000114_lau_bulgogi_1.jpg', 309000.00),
(17, 'Tôm nướng Gogi', 6, b'1', '60012739_tom_alc_1.jpg', 229000.00),
(18, 'Bào ngư', 6, b'1', '60008388_bao_ngu_1.jpg', 309000.00),
(19, 'Kem Caramen Flan cake', 7, b'1', '60000165_Caramel_1_1.jpg', 15000.00),
(20, 'Kem tươi vị Chocolate', 7, b'1', '60000154_kem_scl_1_1.jpg', 15000.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_food_category`
--

CREATE TABLE `tbl_food_category` (
  `id_category` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_food_category`
--

INSERT INTO `tbl_food_category` (`id_category`, `category_name`) VALUES
(1, 'Khai vị & Ăn kèm'),
(2, 'Thịt bò'),
(3, 'Thịt heo'),
(4, 'Cơm & Canh & Mỳ'),
(5, 'Lẩu'),
(6, 'Hải sản'),
(7, 'Tráng miệng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_table`
--

CREATE TABLE `tbl_table` (
  `id_table` int(11) NOT NULL,
  `name_table` varchar(20) NOT NULL,
  `status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_table`
--

INSERT INTO `tbl_table` (`id_table`, `name_table`, `status`) VALUES
(1, 'Bàn 1', b'1'),
(2, 'Bàn 2', b'1'),
(3, 'Bàn 3', b'1'),
(4, 'Bàn 4', b'1'),
(5, 'Bàn 5', b'0'),
(6, 'Bàn 6', b'0');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `username_admin` (`username_admin`);

--
-- Chỉ mục cho bảng `tbl_bill`
--
ALTER TABLE `tbl_bill`
  ADD PRIMARY KEY (`id_bill`),
  ADD KEY `fk_bill_admin` (`id_admin`),
  ADD KEY `fk_bill_customer` (`id_customer`),
  ADD KEY `fk_bill_table` (`id_table`);

--
-- Chỉ mục cho bảng `tbl_bill_info`
--
ALTER TABLE `tbl_bill_info`
  ADD PRIMARY KEY (`id_bill_info`,`id_bill`),
  ADD KEY `id_bill` (`id_bill`),
  ADD KEY `id_food` (`id_food`);

--
-- Chỉ mục cho bảng `tbl_call_staff`
--
ALTER TABLE `tbl_call_staff`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id_customer`),
  ADD UNIQUE KEY `unique_username` (`username`),
  ADD UNIQUE KEY `unique_phone` (`phone`),
  ADD UNIQUE KEY `unique_email` (`email`);

--
-- Chỉ mục cho bảng `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id_food`,`id_category`),
  ADD KEY `fk_food_category` (`id_category`);

--
-- Chỉ mục cho bảng `tbl_food_category`
--
ALTER TABLE `tbl_food_category`
  ADD PRIMARY KEY (`id_category`);

--
-- Chỉ mục cho bảng `tbl_table`
--
ALTER TABLE `tbl_table`
  ADD PRIMARY KEY (`id_table`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_bill`
--
ALTER TABLE `tbl_bill`
  MODIFY `id_bill` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT cho bảng `tbl_bill_info`
--
ALTER TABLE `tbl_bill_info`
  MODIFY `id_bill_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `tbl_call_staff`
--
ALTER TABLE `tbl_call_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id_food` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tbl_food_category`
--
ALTER TABLE `tbl_food_category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_table`
--
ALTER TABLE `tbl_table`
  MODIFY `id_table` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_bill`
--
ALTER TABLE `tbl_bill`
  ADD CONSTRAINT `fk_bill_admin` FOREIGN KEY (`id_admin`) REFERENCES `tbl_admin` (`id_admin`),
  ADD CONSTRAINT `fk_bill_customer` FOREIGN KEY (`id_customer`) REFERENCES `tbl_customer` (`id_customer`),
  ADD CONSTRAINT `fk_bill_table` FOREIGN KEY (`id_table`) REFERENCES `tbl_table` (`id_table`),
  ADD CONSTRAINT `tbl_bill_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `tbl_customer` (`id_customer`);

--
-- Các ràng buộc cho bảng `tbl_bill_info`
--
ALTER TABLE `tbl_bill_info`
  ADD CONSTRAINT `tbl_bill_info_ibfk_1` FOREIGN KEY (`id_bill`) REFERENCES `tbl_bill` (`id_bill`),
  ADD CONSTRAINT `tbl_bill_info_ibfk_2` FOREIGN KEY (`id_food`) REFERENCES `tbl_food` (`id_food`);

--
-- Các ràng buộc cho bảng `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD CONSTRAINT `fk_food_category` FOREIGN KEY (`id_category`) REFERENCES `tbl_food_category` (`id_category`),
  ADD CONSTRAINT `tbl_food_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `tbl_food_category` (`id_category`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
