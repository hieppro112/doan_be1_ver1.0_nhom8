-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 24, 2024 at 09:31 AM
-- Server version: 8.0.31
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- 1.Viết câu truy vấn lấy ra các cột ID, name, price, image, description trong bảng product:

SELECT `id`, `name`, `price`, `image`,`description` 
FROM `products`

-- 2.Viết câu truy vấn lấy ra sản phẩm có id = 10

SELECT `id`, `name`, `price`, `image`,`description` 
FROM `products` 
WHERE `id` = 10

-- 3.câu truy vấn lấy ra các sản phẩm có type_id = 1

SELECT `id`, `name`, `price`, `image`,`description` 
FROM `products` 
WHERE `type_id` = 1

-- 4. Viết câu truy vấn lấy ra các sản phẩm có tên hãng manu_name là
-- “Apple"

SELECT `id`, `name`, `price`, `image`,`description` 
FROM `products` 
WHERE `manu_name` = 'Apple';

-- 5.Viết câu truy vấn lấy ra 10 sản phẩm mới nhất

SELECT `id`, `name`, `price`, `image`,`description` 
FROM `products` 
ORDER BY created_at DESC
LIMIT 10;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


--  cau 6: Viết câu truy vấn lấy ra 10 sản phẩm tiếp theo 10 sản phẩm mới nhất
SELECT * 
FROM products 
ORDER BY created_at DESC 
LIMIT 10 OFFSET 10;

-- cau 7: Viết câu truy vấn lấy ra tất cả sản phẩm mà nội dung có chứa từ khoá “128GB"
SELECT *
FROM products
WHERE products.description LIKE %"128GB"%;

-- cau 8: Viết câu truy vấn xóa sản phẩm có id=10 trong bảng products

DELETE FROM products 
WHERE products.id =10;

-- cau 9: Viết câu truy vấn thêm 1 sản phẩm

INSERT INTO products VALUES (17, 'laptop acer', 2, 2, 30000000, 'galaxy_book.jpg', 'may tinh sai bao ngon ', 0, '2024-10-27 16:32:28');

-- cau 10: Viết câu truy vấn sửa giá của sản phẩm có id=11 thành 899,000 VND
UPDATE products 
SET products.price = '899.000'
WHERE id = 11;

