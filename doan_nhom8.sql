-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 29, 2024 lúc 10:00 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doan_nhom8`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

CREATE TABLE `manufactures` (
  `manu_id` int(11) NOT NULL,
  `manu_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_id`, `manu_name`) VALUES
(1, 'Apple'),
(2, 'Samsung'),
(3, 'Oppo'),
(4, 'Xiaomi'),
(5, 'Sony');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `manu_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `feature` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `manu_id`, `type_id`, `price`, `image`, `description`, `feature`, `created_at`) VALUES
(1, 'iPhone 14', 1, 1, 25000000, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-14-pro_2__4.png', 'Apple iPhone 14 với 128GB bộ nhớ', 1, '2024-10-27 16:29:56'),
(2, 'Galaxy S22', 2, 1, 22000000, 'https://product.hstatic.net/1000370129/product/1e241019518f8f97535f104_master_e873eca7c12845f39ec8c99440a3c984_master_b7970d594c2a4bd7a0dd5111dc86943f', 'Samsung Galaxy S22 với màn hình 6.1 inch', 0, '2024-10-27 16:29:56'),
(5, 'Oppo Find X3', 3, 1, 18000000, 'oppo_find_x3.jpg', 'Oppo Find X3 với camera chất lượng cao', 0, '2024-10-27 16:32:28'),
(6, 'Mi 11', 4, 1, 20000000, 'mi11.jpg', 'Xiaomi Mi 11 với Snapdragon 888', 0, '2024-10-27 16:32:28'),
(7, 'Sony Xperia 5', 5, 1, 23000000, 'xperia5.jpg', 'Sony Xperia 5 với thiết kế đẹp', 0, '2024-10-27 16:32:28'),
(8, 'MacBook Pro', 1, 2, 50000000, 'macbook_pro.jpg', 'Apple MacBook Pro M1', 1, '2024-10-27 16:32:28'),
(9, 'Galaxy Book', 2, 2, 30000000, 'galaxy_book.jpg', 'Samsung Galaxy Book Pro 360', 0, '2024-10-27 16:32:28'),
(10, 'Oppo Tablet', 3, 4, 15000000, 'oppo_tablet.jpg', 'Oppo máy tính bảng cho giải trí', 0, '2024-10-27 16:32:28'),
(11, 'Mi Pad', 4, 4, 17000000, 'mi_pad.jpg', 'Xiaomi Mi Pad với màn hình 11 inch', 0, '2024-10-27 16:32:28'),
(12, 'Sony WH-1000XM4', 5, 5, 7000000, 'sony_wh1000xm4.jpg', 'Tai nghe Sony chất lượng cao', 1, '2024-10-27 16:32:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

CREATE TABLE `protypes` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_id`, `type_name`) VALUES
(1, 'Điện thoại'),
(2, 'Laptop'),
(3, 'Loa'),
(4, 'Máy tính bảng'),
(5, 'Tai nghe');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `manufactures`
--
ALTER TABLE `manufactures`
  ADD PRIMARY KEY (`manu_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `protypes`
--
ALTER TABLE `protypes`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `manufactures`
--
ALTER TABLE `manufactures`
  MODIFY `manu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `protypes`
--
ALTER TABLE `protypes`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
