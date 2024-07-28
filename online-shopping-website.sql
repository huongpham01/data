-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2024 at 09:08 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online-shopping-website`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_users`
--

CREATE TABLE `address_users` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `shipName` varchar(255) DEFAULT NULL,
  `shipAddress` varchar(255) DEFAULT NULL,
  `shipEmail` varchar(255) DEFAULT NULL,
  `shipPhoneNumber` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address_users`
--

INSERT INTO `address_users` (`id`, `userId`, `shipName`, `shipAddress`, `shipEmail`, `shipPhoneNumber`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'Hương', '123 Street', 'user1@gmail.com', '0987654321', '2024-06-18 14:32:52', '2024-06-18 14:32:52'),
(15, 1, '1', NULL, NULL, NULL, '2024-06-21 14:01:26', '2024-06-21 14:01:26'),
(16, 2, '2', NULL, NULL, NULL, '2024-06-21 14:02:20', '2024-06-21 14:02:20'),
(17, 1, '1', NULL, NULL, NULL, '2024-06-21 14:03:44', '2024-06-21 14:03:44'),
(18, 2, '2', NULL, NULL, NULL, '2024-06-21 14:05:37', '2024-06-21 14:05:37'),
(19, 2, '2', NULL, NULL, NULL, '2024-06-21 14:06:11', '2024-06-21 14:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `all_codes`
--

CREATE TABLE `all_codes` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `all_codes`
--

INSERT INTO `all_codes` (`id`, `type`, `value`, `code`, `createdAt`, `updatedAt`) VALUES
(1, 'ROLE', 'admin', 'R1', '2024-06-18 14:18:45', '2024-06-18 14:18:45'),
(2, 'ROLE', 'user', 'R2', '2024-06-18 14:18:45', '2024-06-18 14:18:45'),
(3, 'STATUS', 'Kích hoạt', 'S1', '2024-06-18 14:53:58', '2024-06-18 14:53:58'),
(4, 'STATUS', 'Không kích hoạt', 'S2', '2024-06-18 14:54:13', '2024-06-18 14:54:13'),
(5, 'CATEGORY', 'Áo thun', 'ao-thun', '2024-06-18 14:54:53', '2024-06-18 14:54:53'),
(6, 'CATEGORY', 'Áo sơ mi', 'ao-so-mi', '2024-06-18 14:55:07', '2024-06-18 14:55:07'),
(7, 'CATEGORY', 'Áo khoác', 'ao-khoac', '2024-06-18 14:55:18', '2024-06-18 14:55:18'),
(8, 'CATEGORY', 'Áo dài', 'quan-dai', '2024-06-18 14:55:31', '2024-06-18 14:55:31'),
(9, 'CATEGORY', 'Áo ngắn', 'quan-ngan', '2024-06-18 14:55:43', '2024-06-18 14:55:43'),
(10, 'CATEGORY', 'Hoodie', 'hoodie', '2024-06-18 14:56:44', '2024-06-18 14:56:44'),
(11, 'CATEGORY', 'Giày thể thao', 'giay-the-thao', '2024-06-18 14:57:30', '2024-06-18 14:57:30'),
(12, 'BRAND', 'Neko', 'neko', '2024-06-18 14:58:26', '2024-06-18 14:58:26'),
(13, 'BRAND', 'COOLMATE', 'coolmate', '2024-06-18 14:58:44', '2024-06-18 14:58:44'),
(14, 'BRAND', 'LEVENTS', 'levents', '2024-06-18 14:59:03', '2024-06-18 14:59:03'),
(15, 'BRAND', 'ADIDAS', 'adidas', '2024-06-18 14:59:16', '2024-06-18 14:59:16'),
(16, 'BRAND', 'NIKE', 'nike', '2024-06-18 14:59:29', '2024-06-18 14:59:29'),
(17, 'BRAND', 'PUMA', 'puma', '2024-06-18 14:59:51', '2024-06-18 14:59:51'),
(18, 'BRAND', 'Bitis\'s', 'bitis', '2024-06-18 15:01:14', '2024-06-18 15:01:14'),
(19, 'SIZE', 'S', 'S', '2024-06-18 15:02:02', '2024-06-18 15:02:02'),
(20, 'SIZE', 'M', 'M', '2024-06-18 15:02:12', '2024-06-18 15:02:12'),
(21, 'SIZE', 'L', 'L', '2024-06-18 15:02:26', '2024-06-18 15:02:26'),
(22, 'SIZE', 'XL', 'XL', '2024-06-18 15:02:32', '2024-06-18 15:02:32'),
(23, 'SIZE', 'XXL', 'XXL', '2024-06-18 15:02:39', '2024-06-18 15:02:39'),
(24, 'STATUS-ORDER', 'Chờ xác nhận', 'S3', '2024-06-18 15:03:20', '2024-06-18 15:03:20'),
(26, 'STATUS-ORDER', 'Đã giao hàng', 'S6', '2024-06-18 15:03:52', '2024-06-18 15:03:52'),
(27, 'STATUS-ORDER', 'Hủy đơn', 'S7', '2024-06-18 15:04:20', '2024-06-18 15:04:20'),
(28, 'COLOR', 'Trắng', '#ffffff', '2024-06-18 15:05:34', '2024-06-18 15:05:34'),
(29, 'COLOR', 'Xanh', '#1f87e8', '2024-06-18 15:05:42', '2024-06-18 15:05:42'),
(30, 'COLOR', 'Hồng', '#fb879e', '2024-06-19 15:36:42', '2024-06-19 15:36:42'),
(31, 'COLOR', 'Đen', '#000000', '2024-06-19 16:20:43', '2024-06-19 16:20:43'),
(32, 'COLOR', 'Xám', '#a9a9a9', '2024-06-21 13:04:24', '2024-06-21 13:04:24'),
(33, 'COLOR', 'Vàng', '#fcc02e', '2024-06-21 13:04:43', '2024-06-21 13:04:43'),
(34, 'COLOR', 'Đen', 'Đen', '2024-06-21 13:10:58', '2024-06-21 13:10:58'),
(35, 'COLOR', 'Xanh', 'Xanh', '2024-06-21 13:34:17', '2024-06-21 13:34:17'),
(36, 'COLOR', 'Trắng', 'Trắng', '2024-06-21 13:35:12', '2024-06-21 13:35:12'),
(37, 'COLOR', 'Xám', 'Xám', '2024-06-21 13:35:12', '2024-06-21 13:35:12'),
(38, 'COLOR', 'Hồng', 'Hồng', '2024-06-21 13:43:12', '2024-06-21 13:43:12');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `addressUserId` int(11) DEFAULT NULL,
  `shipperId` int(11) DEFAULT NULL,
  `statusId` varchar(255) DEFAULT NULL,
  `typeShipId` int(11) DEFAULT NULL,
  `voucherId` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `isPaymentOnline` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `addressUserId`, `shipperId`, `statusId`, `typeShipId`, `voucherId`, `note`, `isPaymentOnline`, `createdAt`, `updatedAt`, `image`) VALUES
(19, 1, NULL, 'S6', 2, NULL, 'Test', 0, '2024-06-21 14:01:26', '2024-06-21 14:05:56', NULL),
(20, 1, NULL, 'S6', 2, NULL, 'Test', 0, '2024-06-21 14:02:20', '2024-06-21 14:04:36', NULL),
(21, 1, NULL, 'S6', 2, NULL, 'Test', 0, '2024-06-21 14:03:44', '2024-06-21 14:04:19', NULL),
(22, 1, NULL, 'S3', 2, NULL, 'Test', 0, '2024-06-21 14:05:37', '2024-06-21 14:05:37', NULL),
(23, 1, NULL, 'S3', 2, NULL, 'Test', 0, '2024-06-21 14:06:11', '2024-06-21 14:06:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `realPrice` bigint(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `orderId`, `productId`, `quantity`, `realPrice`, `createdAt`, `updatedAt`) VALUES
(15, 19, 18, 2, 200000, '2024-06-21 14:01:26', '2024-06-21 14:01:26'),
(16, 20, 19, 5, 500000, '2024-06-21 14:02:20', '2024-06-21 14:02:20'),
(17, 21, 20, 5, 500000, '2024-06-21 14:03:44', '2024-06-21 14:03:44'),
(18, 22, 26, 3, 960000, '2024-06-21 14:05:37', '2024-06-21 14:05:37'),
(19, 23, 26, 3, 960000, '2024-06-21 14:06:11', '2024-06-21 14:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `statusId` varchar(255) DEFAULT NULL,
  `categoryId` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `brandId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `content`, `statusId`, `categoryId`, `view`, `brandId`, `createdAt`, `updatedAt`) VALUES
(12, 'Áo thun tay lỡ form rộng unisex Neko.sg ATL452', 'You want an easy pair of shorts that look as good as they feel? Here you go. They\'re made from soft fleece that\'s smooth on the outside and looped on the inside—that means lightweight comfort wherever you wear \'em.\r\n\r\n\r\nBenefits\r\n\r\nLoopback fleece is lightweight, soft and easy to wear.\r\nElastic waistband with drawcord gets you the perfect fit.\r\nSide pockets let you stash your phone and keys.\r\n\r\nProduct Details\r\n\r\nBody: 80% cotton/20% polyester. Pocket Bags: 100% cotton.\r\nEmbroidered Jumpman logo\r\nMachine wash\r\nImported\r\nColour Shown: Black/Black/White\r\nStyle: FQ4534-010\r\nCountry/Region of Origin: Cambodia,China', 'S1', 'ao-thun', '2', 'neko', '2024-06-21 13:10:58', '2024-06-21 13:13:28'),
(13, 'Áo thun tay lỡ form rộng unisex Neko.sg ATL193', '', 'S1', 'ao-thun', '2', 'neko', '2024-06-21 13:15:04', '2024-06-21 13:16:51'),
(14, 'Áo thun tay lỡ form rộng Neko.sg ATL429', '', 'S1', 'ao-thun', NULL, 'neko', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(15, 'Áo thun tay lỡ form rộng unisex Neko.sg ATL474', '', 'S1', 'ao-thun', NULL, 'neko', '2024-06-21 13:18:15', '2024-06-21 13:18:15'),
(16, 'Áo thun tay lỡ form rộng Neko.sg ATL433', 'You want an easy pair of shorts that look as good as they feel? Here you go. They\'re made from soft fleece that\'s smooth on the outside and looped on the inside—that means lightweight comfort wherever you wear \'em.\r\nBenefits\r\nLoopback fleece is lightweight, soft and easy to wear.\r\nElastic waistband with drawcord gets you the perfect fit.\r\nSide pockets let you stash your phone and keys.\r\nProduct Details\r\nBody: 80% cotton/20% polyester. Pocket Bags: 100% cotton.\r\nEmbroidered Jumpman logo\r\nMachine wash\r\nImported', 'S1', 'ao-thun', NULL, 'neko', '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(17, 'Áo thun tay lỡ form rộng Neko.sg ATL427', 'You want an easy pair of shorts that look as good as they feel? Here you go. They\'re made from soft fleece that\'s smooth on the outside and looped on the inside—that means lightweight comfort wherever you wear them.', 'S1', 'ao-thun', NULL, 'neko', '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(18, 'Áo phông tay lỡ form rộng unisex Neko.sg ATL283', 'You want an easy pair of shorts that look as good as they feel? Here you go. They\'re made from soft fleece that\'s smooth on the outside and looped on the inside—that means lightweight comfort wherever you wear them.', 'S1', 'ao-thun', NULL, 'neko', '2024-06-21 13:23:18', '2024-06-21 13:23:18'),
(19, ' Áo thun tay lỡ form rộng unisex Neko.sg ATL471', 'You want an easy pair of shorts that look as good as they feel? Here you go. They\'re made from soft fleece that\'s smooth on the outside and looped on the inside—that means lightweight comfort wherever you wear them.', 'S1', 'ao-thun', NULL, 'neko', '2024-06-21 13:25:31', '2024-06-21 13:25:31'),
(20, 'Áo thun tay lỡ form rộng unisex Neko.sg ATL404', 'You want an easy pair of shorts that look as good as they feel? Here you go. They\'re made from soft fleece that\'s smooth on the outside and looped on the inside—that means lightweight comfort wherever you wear them.', 'S1', 'ao-thun', NULL, 'neko', '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(21, ' Áo Thun Local Brand họa tiết Gấu Dâu nam nữ cổ tròn', 'You want an easy pair of shorts that look as good as they feel? Here you go. They\'re made from soft fleece that\'s smooth on the outside and looped on the inside—that means lightweight comfort wherever you wear them.', 'S1', 'ao-thun', '1', 'neko', '2024-06-21 13:30:49', '2024-06-21 13:38:18'),
(22, 'Áo Sơ Mi Dài Tay Premium Poplin', 'You want an easy pair of shorts that look as good as they feel? Here you go. They\'re made from soft fleece that\'s smooth on the outside and looped on the inside—that means lightweight comfort wherever you wear them.', 'S1', 'ao-so-mi', NULL, 'coolmate', '2024-06-21 13:34:17', '2024-06-21 13:34:17'),
(23, 'Áo Sơ mi dài tay Café-DriS', 'You want an easy pair of shorts that look as good as they feel? Here you go. They\'re made from soft fleece that\'s smooth on the outside and looped on the inside—that means lightweight comfort wherever you wear them.', 'S1', 'ao-so-mi', '1', 'coolmate', '2024-06-21 13:35:12', '2024-06-21 13:35:50'),
(24, 'Áo Sơ Mi Dài Tay Essentials Cotton', 'You want an easy pair of shorts that look as good as they feel? Here you go. They\'re made from soft fleece that\'s smooth on the outside and looped on the inside—that means lightweight comfort wherever you wear them.', 'S1', 'ao-so-mi', NULL, 'coolmate', '2024-06-21 13:36:42', '2024-06-21 13:36:42'),
(25, 'Áo Khoác Nam chạy bộ Fast & Free', 'You want an easy pair of shorts that look as good as they feel? Here you go. They\'re made from soft fleece that\'s smooth on the outside and looped on the inside—that means lightweight comfort wherever you wear them.', 'S1', 'ao-so-mi', '1', 'coolmate', '2024-06-21 13:37:28', '2024-06-21 13:38:27'),
(26, 'Áo Khoác Nam Thể Thao Pro Active', 'You want an easy pair of shorts that look as good as they feel? Here you go. They\'re made from soft fleece that\'s smooth on the outside and looped on the inside—that means lightweight comfort wherever you wear them.', 'S1', 'ao-so-mi', NULL, 'coolmate', '2024-06-21 13:39:13', '2024-06-21 13:39:13'),
(27, 'Áo Thun Nam Gym Powerfit', 'You want an easy pair of shorts that look as good as they feel? Here you go. They\'re made from soft fleece that\'s smooth on the outside and looped on the inside—that means lightweight comfort wherever you wear them.', 'S1', 'ao-thun', NULL, 'coolmate', '2024-06-21 13:39:56', '2024-06-21 13:39:56'),
(28, 'Áo Thun Cotton in hình Duetcats', 'You want an easy pair of shorts that look as good as they feel? Here you go. They\'re made from soft fleece that\'s smooth on the outside and looped on the inside—that means lightweight comfort wherever you wear them.', 'S1', 'ao-thun', NULL, 'coolmate', '2024-06-21 13:41:00', '2024-06-21 13:41:00'),
(29, 'Levents® Stars Spray Boxy 2.0 Tee', 'You want an easy pair of shorts that look as good as they feel? Here you go. They\'re made from soft fleece that\'s smooth on the outside and looped on the inside—that means lightweight comfort wherever you wear them.', 'S1', 'ao-thun', '2', 'levents', '2024-06-21 13:41:45', '2024-06-21 13:51:13'),
(30, 'Levents® XL Logo Striped Shirt', 'You want an easy pair of shorts that look as good as they feel? Here you go. They\'re made from soft fleece that\'s smooth on the outside and looped on the inside—that means lightweight comfort wherever you wear them.', 'S1', 'ao-so-mi', '2', 'levents', '2024-06-21 13:43:12', '2024-06-21 13:51:39'),
(31, 'Levents® Sticker Raglan Boxy 2.0 Hoodie', 'You want an easy pair of shorts that look as good as they feel? Here you go. They\'re made from soft fleece that\'s smooth on the outside and looped on the inside—that means lightweight comfort wherever you wear them.', 'S1', 'hoodie', NULL, 'levents', '2024-06-21 13:45:23', '2024-06-21 13:45:23'),
(32, 'Jordan', 'You want an easy pair of shorts that look as good as they feel? Here you go. They\'re made from soft fleece that\'s smooth on the outside and looped on the inside—that means lightweight comfort wherever you wear them.', 'S1', 'ao-thun', NULL, 'nike', '2024-06-21 13:46:32', '2024-06-21 13:46:32'),
(33, 'Jordan Sport', 'You want an easy pair of shorts that look as good as they feel? Here you go. They\'re made from soft fleece that\'s smooth on the outside and looped on the inside—that means lightweight comfort wherever you wear them.', 'S1', 'quan-dui', NULL, 'nike', '2024-06-21 13:47:46', '2024-06-21 13:47:46'),
(34, 'Nike ACG Smith Summit', 'You want an easy pair of shorts that look as good as they feel? Here you go. They\'re made from soft fleece that\'s smooth on the outside and looped on the inside—that means lightweight comfort wherever you wear them.', 'S1', 'quan-dai', NULL, 'nike', '2024-06-21 13:48:55', '2024-06-21 13:48:55'),
(35, 'NEUCLASSICS SWEAT PANTS', 'You want an easy pair of shorts that look as good as they feel? Here you go. They\'re made from soft fleece that\'s smooth on the outside and looped on the inside—that means lightweight comfort wherever you wear them.', 'S1', 'quan-dai', NULL, 'adidas', '2024-06-21 13:49:36', '2024-06-21 13:49:36'),
(36, '12 ZIP WINDBREAKER', 'You want an easy pair of shorts that look as good as they feel? Here you go. They\'re made from soft fleece that\'s smooth on the outside and looped on the inside—that means lightweight comfort wherever you wear them.', 'S1', 'quan-dai', NULL, 'adidas', '2024-06-21 13:50:35', '2024-06-21 13:50:35');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `originalPrice` bigint(20) DEFAULT NULL,
  `discountPrice` bigint(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `productId`, `color`, `originalPrice`, `discountPrice`, `createdAt`, `updatedAt`) VALUES
(32, 12, 'Đen', 150000, 100000, '2024-06-21 13:10:58', '2024-06-21 13:13:28'),
(33, 13, '#ffffff', 150000, 100000, '2024-06-21 13:15:04', '2024-06-21 13:16:51'),
(34, 13, '#000000', 150000, 100000, '2024-06-21 13:15:04', '2024-06-21 13:16:51'),
(35, 13, '#a9a9a9', 150000, 100000, '2024-06-21 13:15:04', '2024-06-21 13:16:51'),
(36, 13, '#1f87e8', 150000, 100000, '2024-06-21 13:15:04', '2024-06-21 13:16:51'),
(37, 14, '#000000', 150000, 100000, '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(38, 14, '#fb879e', 150000, 100000, '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(39, 14, '#a9a9a9', 150000, 100000, '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(40, 14, '#1f87e8', 150000, 100000, '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(41, 15, '#000000', 150000, 100000, '2024-06-21 13:18:15', '2024-06-21 13:18:15'),
(42, 15, '#ffffff', 150000, 100000, '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(43, 15, '#a9a9a9', 150000, 100000, '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(44, 15, '#1f87e8', 150000, 100000, '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(45, 16, '#000000', 150000, 100000, '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(46, 16, '#fb879e', 150000, 100000, '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(47, 16, '#a9a9a9', 150000, 100000, '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(48, 16, '#1f87e8', 150000, 100000, '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(49, 17, '#ffffff', 150000, 100000, '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(50, 17, '#000000', 150000, 100000, '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(51, 17, '#a9a9a9', 150000, 100000, '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(52, 17, '#1f87e8', 150000, 100000, '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(53, 18, '#1f87e8', 150000, 100000, '2024-06-21 13:23:18', '2024-06-21 13:23:18'),
(54, 18, '#ffffff', 150000, 100000, '2024-06-21 13:23:18', '2024-06-21 13:23:18'),
(55, 19, '#fb879e', 150000, 100000, '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(56, 19, '#ffffff', 150000, 100000, '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(57, 19, '#000000', 150000, 100000, '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(58, 19, '#1f87e8', 150000, 100000, '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(59, 20, '#1f87e8', 150000, 100000, '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(60, 20, '#ffffff', 150000, 100000, '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(61, 20, '#a9a9a9', 150000, 100000, '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(62, 21, '#fb879e', 150000, 100000, '2024-06-21 13:30:49', '2024-06-21 13:30:49'),
(63, 21, '#000000', 150000, 100000, '2024-06-21 13:30:49', '2024-06-21 13:30:49'),
(64, 21, '#ffffff', 150000, 100000, '2024-06-21 13:30:49', '2024-06-21 13:30:49'),
(65, 22, 'Đen', 350000, 320000, '2024-06-21 13:34:17', '2024-06-21 13:34:17'),
(66, 22, 'Xanh', 350000, 320000, '2024-06-21 13:34:17', '2024-06-21 13:34:17'),
(67, 23, 'Trắng', 350000, 320000, '2024-06-21 13:35:12', '2024-06-21 13:35:12'),
(68, 23, 'Xám', 350000, 320000, '2024-06-21 13:35:12', '2024-06-21 13:35:12'),
(69, 23, 'Xanh', 350000, 320000, '2024-06-21 13:35:12', '2024-06-21 13:35:12'),
(70, 24, 'Trắng', 350000, 320000, '2024-06-21 13:36:42', '2024-06-21 13:36:42'),
(71, 24, 'Xanh', 350000, 320000, '2024-06-21 13:36:42', '2024-06-21 13:36:42'),
(72, 25, 'Đen', 350000, 320000, '2024-06-21 13:37:28', '2024-06-21 13:37:28'),
(73, 25, 'Xám', 350000, 320000, '2024-06-21 13:37:28', '2024-06-21 13:37:28'),
(74, 26, 'Đen', 350000, 320000, '2024-06-21 13:39:13', '2024-06-21 13:39:13'),
(75, 26, 'Xám', 350000, 320000, '2024-06-21 13:39:13', '2024-06-21 13:39:13'),
(76, 27, 'Đen', 350000, 320000, '2024-06-21 13:39:56', '2024-06-21 13:39:56'),
(77, 27, 'Xanh', 350000, 320000, '2024-06-21 13:39:56', '2024-06-21 13:39:56'),
(78, 28, 'Đen', 250000, 220000, '2024-06-21 13:41:00', '2024-06-21 13:41:00'),
(79, 28, 'Xanh', 250000, 220000, '2024-06-21 13:41:00', '2024-06-21 13:41:00'),
(80, 29, 'Đen', 250000, 220000, '2024-06-21 13:41:45', '2024-06-21 13:51:13'),
(81, 29, 'Trắng', 250000, 220000, '2024-06-21 13:41:45', '2024-06-21 13:51:13'),
(82, 30, 'Hồng', 1300000, 1100000, '2024-06-21 13:43:12', '2024-06-21 13:51:39'),
(83, 30, 'Xanh', 1300000, 1100000, '2024-06-21 13:43:12', '2024-06-21 13:51:39'),
(84, 31, 'Đen', 2000000, 1860000, '2024-06-21 13:45:23', '2024-06-21 13:45:23'),
(85, 32, 'Đen', 1900000, 1800000, '2024-06-21 13:46:32', '2024-06-21 13:46:32'),
(86, 32, 'Trắng', 1900000, 1800000, '2024-06-21 13:46:32', '2024-06-21 13:46:32'),
(87, 33, 'Đen', 900000, 800000, '2024-06-21 13:47:46', '2024-06-21 13:47:46'),
(88, 33, 'Xanh', 900000, 800000, '2024-06-21 13:47:46', '2024-06-21 13:47:46'),
(89, 34, 'Đen', 1050000, 950000, '2024-06-21 13:48:55', '2024-06-21 13:48:55'),
(90, 34, 'Xanh', 1050000, 950000, '2024-06-21 13:48:55', '2024-06-21 13:48:55'),
(91, 35, 'Đen', 1050000, 950000, '2024-06-21 13:49:36', '2024-06-21 13:49:36'),
(92, 35, 'Xanh', 1050000, 950000, '2024-06-21 13:49:36', '2024-06-21 13:49:36'),
(93, 36, 'Trắng', 1250000, 950000, '2024-06-21 13:50:35', '2024-06-21 13:50:35');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `productDetailId` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `productDetailId`, `image`, `createdAt`, `updatedAt`) VALUES
(42, 32, '1718950408179_1718950349134.jpeg', '2024-06-21 13:13:28', '2024-06-21 13:13:28'),
(43, 32, '1718950408179_Há»ng.jpg', '2024-06-21 13:13:28', '2024-06-21 13:13:28'),
(44, 32, '1718950408180_Tráº¯ng.jpg', '2024-06-21 13:13:28', '2024-06-21 13:13:28'),
(45, 32, '1718950408180_XÃ¡m.jpg', '2024-06-21 13:13:28', '2024-06-21 13:13:28'),
(46, 32, '1718950408180_Xanh dÆ°Æ¡ng.jpg', '2024-06-21 13:13:28', '2024-06-21 13:13:28'),
(63, 37, '1718950593358_Äen.jpg', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(64, 38, '1718950593358_Äen.jpg', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(65, 39, '1718950593358_Äen.jpg', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(66, 40, '1718950593358_Äen.jpg', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(67, 37, '1718950593358_Há»ng.jpg', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(68, 38, '1718950593358_Há»ng.jpg', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(69, 39, '1718950593358_Há»ng.jpg', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(70, 40, '1718950593358_Há»ng.jpg', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(71, 37, '1718950593359_XÃ¡m.jpg', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(72, 38, '1718950593359_XÃ¡m.jpg', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(73, 39, '1718950593359_XÃ¡m.jpg', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(74, 40, '1718950593359_XÃ¡m.jpg', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(75, 37, '1718950593359_Xanh dÆ°Æ¡ng.jpg', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(76, 38, '1718950593359_Xanh dÆ°Æ¡ng.jpg', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(77, 39, '1718950593359_Xanh dÆ°Æ¡ng.jpg', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(78, 40, '1718950593359_Xanh dÆ°Æ¡ng.jpg', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(79, 33, '1718950611108_1718950601573.jpeg', '2024-06-21 13:16:51', '2024-06-21 13:16:51'),
(80, 33, '1718950611108_1718950601586.jpeg', '2024-06-21 13:16:51', '2024-06-21 13:16:51'),
(81, 33, '1718950611108_1718950601593.jpeg', '2024-06-21 13:16:51', '2024-06-21 13:16:51'),
(82, 33, '1718950611108_1718950601597.jpeg', '2024-06-21 13:16:51', '2024-06-21 13:16:51'),
(83, 41, '1718950696128_Äen.jpg', '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(84, 42, '1718950696128_Äen.jpg', '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(85, 43, '1718950696128_Äen.jpg', '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(86, 44, '1718950696128_Äen.jpg', '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(87, 41, '1718950696128_Tráº¯ng.jpg', '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(88, 42, '1718950696128_Tráº¯ng.jpg', '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(89, 43, '1718950696128_Tráº¯ng.jpg', '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(90, 44, '1718950696128_Tráº¯ng.jpg', '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(91, 41, '1718950696128_XÃ¡m.jpg', '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(92, 42, '1718950696128_XÃ¡m.jpg', '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(93, 43, '1718950696128_XÃ¡m.jpg', '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(94, 44, '1718950696128_XÃ¡m.jpg', '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(95, 41, '1718950696128_Xanh dÆ°Æ¡ng.jpg', '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(96, 42, '1718950696128_Xanh dÆ°Æ¡ng.jpg', '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(97, 43, '1718950696128_Xanh dÆ°Æ¡ng.jpg', '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(98, 44, '1718950696128_Xanh dÆ°Æ¡ng.jpg', '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(99, 45, '1718950804897_Äen.jpg', '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(100, 46, '1718950804897_Äen.jpg', '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(101, 47, '1718950804897_Äen.jpg', '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(102, 48, '1718950804897_Äen.jpg', '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(103, 45, '1718950804897_Há»ng.jpg', '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(104, 46, '1718950804897_Há»ng.jpg', '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(105, 47, '1718950804897_Há»ng.jpg', '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(106, 48, '1718950804897_Há»ng.jpg', '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(107, 45, '1718950804898_XÃ¡m.jpg', '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(108, 46, '1718950804898_XÃ¡m.jpg', '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(109, 47, '1718950804898_XÃ¡m.jpg', '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(110, 48, '1718950804898_XÃ¡m.jpg', '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(111, 45, '1718950804898_Xanh dÆ°Æ¡ng.jpg', '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(112, 46, '1718950804898_Xanh dÆ°Æ¡ng.jpg', '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(113, 47, '1718950804898_Xanh dÆ°Æ¡ng.jpg', '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(114, 48, '1718950804898_Xanh dÆ°Æ¡ng.jpg', '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(115, 49, '1718950914556_Tráº¯ng.jpg', '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(116, 50, '1718950914556_Tráº¯ng.jpg', '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(117, 51, '1718950914556_Tráº¯ng.jpg', '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(118, 52, '1718950914556_Tráº¯ng.jpg', '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(119, 49, '1718950914556_Xanh dÆ°Æ¡ng.jpg', '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(120, 50, '1718950914556_Xanh dÆ°Æ¡ng.jpg', '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(121, 51, '1718950914556_Xanh dÆ°Æ¡ng.jpg', '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(122, 52, '1718950914556_Xanh dÆ°Æ¡ng.jpg', '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(123, 49, '1718950914556_XÃ¡m.jpg', '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(124, 50, '1718950914556_XÃ¡m.jpg', '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(125, 51, '1718950914556_XÃ¡m.jpg', '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(126, 52, '1718950914556_XÃ¡m.jpg', '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(127, 49, '1718950914556_Äen.jpg', '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(128, 50, '1718950914556_Äen.jpg', '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(129, 51, '1718950914556_Äen.jpg', '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(130, 52, '1718950914556_Äen.jpg', '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(131, 53, '1718950998724_Xanh.jpg', '2024-06-21 13:23:18', '2024-06-21 13:23:18'),
(132, 54, '1718950998724_Xanh.jpg', '2024-06-21 13:23:18', '2024-06-21 13:23:18'),
(133, 53, '1718950998724_Tráº¯ng.jpg', '2024-06-21 13:23:18', '2024-06-21 13:23:18'),
(134, 54, '1718950998724_Tráº¯ng.jpg', '2024-06-21 13:23:18', '2024-06-21 13:23:18'),
(135, 55, '1718951132235_Há»ng.jpg', '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(136, 56, '1718951132235_Há»ng.jpg', '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(137, 57, '1718951132235_Há»ng.jpg', '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(138, 58, '1718951132235_Há»ng.jpg', '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(139, 55, '1718951132235_Tráº¯ng.jpg', '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(140, 56, '1718951132235_Tráº¯ng.jpg', '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(141, 57, '1718951132235_Tráº¯ng.jpg', '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(142, 58, '1718951132235_Tráº¯ng.jpg', '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(143, 55, '1718951132235_Äen.jpg', '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(144, 56, '1718951132235_Äen.jpg', '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(145, 57, '1718951132235_Äen.jpg', '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(146, 58, '1718951132235_Äen.jpg', '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(147, 55, '1718951132235_Xanh dÆ°Æ¡ng.jpg', '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(148, 56, '1718951132235_Xanh dÆ°Æ¡ng.jpg', '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(149, 57, '1718951132235_Xanh dÆ°Æ¡ng.jpg', '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(150, 58, '1718951132235_Xanh dÆ°Æ¡ng.jpg', '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(151, 59, '1718951374423_Xanh dÆ°Æ¡ng.jpg', '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(152, 60, '1718951374423_Xanh dÆ°Æ¡ng.jpg', '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(153, 61, '1718951374423_Xanh dÆ°Æ¡ng.jpg', '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(154, 59, '1718951374423_Tráº¯ng.jpg', '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(155, 60, '1718951374423_Tráº¯ng.jpg', '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(156, 61, '1718951374423_Tráº¯ng.jpg', '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(157, 59, '1718951374423_XÃ¡m.jpg', '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(158, 60, '1718951374423_XÃ¡m.jpg', '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(159, 61, '1718951374423_XÃ¡m.jpg', '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(160, 62, '1718951450006_Tráº¯ng.jpg', '2024-06-21 13:30:50', '2024-06-21 13:30:50'),
(161, 63, '1718951450006_Tráº¯ng.jpg', '2024-06-21 13:30:50', '2024-06-21 13:30:50'),
(162, 64, '1718951450006_Tráº¯ng.jpg', '2024-06-21 13:30:50', '2024-06-21 13:30:50'),
(163, 62, '1718951450006_Há»ng.jpg', '2024-06-21 13:30:50', '2024-06-21 13:30:50'),
(164, 63, '1718951450006_Há»ng.jpg', '2024-06-21 13:30:50', '2024-06-21 13:30:50'),
(165, 64, '1718951450006_Há»ng.jpg', '2024-06-21 13:30:50', '2024-06-21 13:30:50'),
(166, 62, '1718951450006_Äen.jpg', '2024-06-21 13:30:50', '2024-06-21 13:30:50'),
(167, 63, '1718951450006_Äen.jpg', '2024-06-21 13:30:50', '2024-06-21 13:30:50'),
(168, 64, '1718951450006_Äen.jpg', '2024-06-21 13:30:50', '2024-06-21 13:30:50'),
(169, 65, '1718951657650_Đen.jpg', '2024-06-21 13:34:17', '2024-06-21 13:34:17'),
(170, 66, '1718951657650_Đen.jpg', '2024-06-21 13:34:17', '2024-06-21 13:34:17'),
(171, 65, '1718951657650_Xanh.jpg', '2024-06-21 13:34:17', '2024-06-21 13:34:17'),
(172, 66, '1718951657650_Xanh.jpg', '2024-06-21 13:34:17', '2024-06-21 13:34:17'),
(173, 67, '1718951713083_Trắng.jpg', '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(174, 68, '1718951713083_Trắng.jpg', '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(175, 69, '1718951713083_Trắng.jpg', '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(176, 67, '1718951713083_XÃ¡m.jpg', '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(177, 68, '1718951713083_XÃ¡m.jpg', '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(178, 69, '1718951713083_XÃ¡m.jpg', '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(179, 67, '1718951713083_Xanh nhạt.jpg', '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(180, 68, '1718951713083_Xanh nhạt.jpg', '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(181, 69, '1718951713083_Xanh nhạt.jpg', '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(182, 70, '1718951802159_Trắng.jpg', '2024-06-21 13:36:42', '2024-06-21 13:36:42'),
(183, 71, '1718951802159_Trắng.jpg', '2024-06-21 13:36:42', '2024-06-21 13:36:42'),
(184, 70, '1718951802160_Xanh forever.jpg', '2024-06-21 13:36:42', '2024-06-21 13:36:42'),
(185, 71, '1718951802160_Xanh forever.jpg', '2024-06-21 13:36:42', '2024-06-21 13:36:42'),
(186, 70, '1718951802160_Xanh Navy.jpg', '2024-06-21 13:36:42', '2024-06-21 13:36:42'),
(187, 71, '1718951802160_Xanh Navy.jpg', '2024-06-21 13:36:42', '2024-06-21 13:36:42'),
(188, 72, '1718951848534_Đen.jpg', '2024-06-21 13:37:28', '2024-06-21 13:37:28'),
(189, 73, '1718951848534_Đen.jpg', '2024-06-21 13:37:28', '2024-06-21 13:37:28'),
(190, 72, '1718951848534_XÃ¡m.jpg', '2024-06-21 13:37:28', '2024-06-21 13:37:28'),
(191, 73, '1718951848534_XÃ¡m.jpg', '2024-06-21 13:37:28', '2024-06-21 13:37:28'),
(192, 74, '1718951953285_Đen.jpg', '2024-06-21 13:39:13', '2024-06-21 13:39:13'),
(193, 75, '1718951953285_Đen.jpg', '2024-06-21 13:39:13', '2024-06-21 13:39:13'),
(194, 74, '1718951953285_XÃ¡m.jpg', '2024-06-21 13:39:13', '2024-06-21 13:39:13'),
(195, 75, '1718951953285_XÃ¡m.jpg', '2024-06-21 13:39:13', '2024-06-21 13:39:13'),
(196, 76, '1718951996436_Đen.jpg', '2024-06-21 13:39:56', '2024-06-21 13:39:56'),
(197, 77, '1718951996436_Đen.jpg', '2024-06-21 13:39:56', '2024-06-21 13:39:56'),
(198, 76, '1718951996436_Xanh Navy.jpg', '2024-06-21 13:39:56', '2024-06-21 13:39:56'),
(199, 77, '1718951996436_Xanh Navy.jpg', '2024-06-21 13:39:56', '2024-06-21 13:39:56'),
(200, 78, '1718952060104_Đen.jpg', '2024-06-21 13:41:00', '2024-06-21 13:41:00'),
(201, 79, '1718952060104_Đen.jpg', '2024-06-21 13:41:00', '2024-06-21 13:41:00'),
(202, 78, '1718952060104_Xanh Navy.jpg', '2024-06-21 13:41:00', '2024-06-21 13:41:00'),
(203, 79, '1718952060104_Xanh Navy.jpg', '2024-06-21 13:41:00', '2024-06-21 13:41:00'),
(212, 84, '1718952323729_1.jpg', '2024-06-21 13:45:23', '2024-06-21 13:45:23'),
(213, 85, '1718952392202_Đen.jpg', '2024-06-21 13:46:32', '2024-06-21 13:46:32'),
(214, 86, '1718952392202_Đen.jpg', '2024-06-21 13:46:32', '2024-06-21 13:46:32'),
(215, 85, '1718952392202_Trắng.jpg', '2024-06-21 13:46:32', '2024-06-21 13:46:32'),
(216, 86, '1718952392202_Trắng.jpg', '2024-06-21 13:46:32', '2024-06-21 13:46:32'),
(217, 87, '1718952466429_trắng.jpg', '2024-06-21 13:47:46', '2024-06-21 13:47:46'),
(218, 88, '1718952466429_trắng.jpg', '2024-06-21 13:47:46', '2024-06-21 13:47:46'),
(219, 87, '1718952466429_xanh.jpg', '2024-06-21 13:47:46', '2024-06-21 13:47:46'),
(220, 88, '1718952466429_xanh.jpg', '2024-06-21 13:47:46', '2024-06-21 13:47:46'),
(221, 89, '1718952535689_Đen.jpg', '2024-06-21 13:48:55', '2024-06-21 13:48:55'),
(222, 90, '1718952535689_Đen.jpg', '2024-06-21 13:48:55', '2024-06-21 13:48:55'),
(223, 89, '1718952535689_Xanh.jpg', '2024-06-21 13:48:55', '2024-06-21 13:48:55'),
(224, 90, '1718952535689_Xanh.jpg', '2024-06-21 13:48:55', '2024-06-21 13:48:55'),
(225, 91, '1718952576099_Đen.jpg', '2024-06-21 13:49:36', '2024-06-21 13:49:36'),
(226, 92, '1718952576099_Đen.jpg', '2024-06-21 13:49:36', '2024-06-21 13:49:36'),
(227, 91, '1718952576099_Trắng.jpg', '2024-06-21 13:49:36', '2024-06-21 13:49:36'),
(228, 92, '1718952576099_Trắng.jpg', '2024-06-21 13:49:36', '2024-06-21 13:49:36'),
(229, 93, '1718952635941_1.jpg', '2024-06-21 13:50:35', '2024-06-21 13:50:35'),
(230, 80, '1718952673125_1718952659402.jpeg', '2024-06-21 13:51:13', '2024-06-21 13:51:13'),
(231, 80, '1718952673125_1718952659408.jpeg', '2024-06-21 13:51:13', '2024-06-21 13:51:13'),
(232, 82, '1718952699779_1718952687799.jpeg', '2024-06-21 13:51:39', '2024-06-21 13:51:39'),
(233, 82, '1718952699779_1718952687805.jpeg', '2024-06-21 13:51:39', '2024-06-21 13:51:39');

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` int(11) NOT NULL,
  `productDetailId` int(11) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `sizeId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `productDetailId`, `height`, `weight`, `sizeId`, `createdAt`, `updatedAt`) VALUES
(94, 32, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:10:58', '2024-06-21 13:10:58'),
(95, 32, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:10:58', '2024-06-21 13:10:58'),
(96, 32, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:10:58', '2024-06-21 13:10:58'),
(97, 33, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:15:04', '2024-06-21 13:15:04'),
(98, 33, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:15:04', '2024-06-21 13:15:04'),
(99, 33, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:15:04', '2024-06-21 13:15:04'),
(100, 33, '1m74-1m76', '70kg-76kg', 'XL', '2024-06-21 13:15:04', '2024-06-21 13:15:04'),
(101, 34, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:15:04', '2024-06-21 13:15:04'),
(102, 34, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:15:04', '2024-06-21 13:15:04'),
(103, 34, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:15:04', '2024-06-21 13:15:04'),
(104, 34, '1m74-1m76', '70kg-76kg', 'XL', '2024-06-21 13:15:04', '2024-06-21 13:15:04'),
(105, 35, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:15:04', '2024-06-21 13:15:04'),
(106, 35, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:15:04', '2024-06-21 13:15:04'),
(107, 35, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:15:04', '2024-06-21 13:15:04'),
(108, 35, '1m74-1m76', '70kg-76kg', 'XL', '2024-06-21 13:15:04', '2024-06-21 13:15:04'),
(109, 36, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:15:04', '2024-06-21 13:15:04'),
(110, 36, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:15:05', '2024-06-21 13:15:05'),
(111, 36, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:15:05', '2024-06-21 13:15:05'),
(112, 36, '1m74-1m76', '70kg-76kg', 'XL', '2024-06-21 13:15:05', '2024-06-21 13:15:05'),
(113, 37, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(114, 37, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(115, 37, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(116, 37, '1m74-1m76', '70kg-76kg', 'XL', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(117, 37, '1m66-1m77', '76kg-80kg', 'XXL', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(118, 38, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(119, 38, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(120, 38, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(121, 38, '1m74-1m76', '70kg-76kg', 'XL', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(122, 38, '1m66-1m77', '76kg-80kg', 'XXL', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(123, 39, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(124, 39, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(125, 39, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(126, 39, '1m74-1m76', '70kg-76kg', 'XL', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(127, 39, '1m66-1m77', '76kg-80kg', 'XXL', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(128, 40, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(129, 40, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(130, 40, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(131, 40, '1m74-1m76', '70kg-76kg', 'XL', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(132, 40, '1m66-1m77', '76kg-80kg', 'XXL', '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(133, 41, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(134, 41, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(135, 41, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(136, 42, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(137, 42, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(138, 42, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(139, 43, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(140, 43, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(141, 43, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(142, 44, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(143, 44, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(144, 44, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(145, 45, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(146, 45, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(147, 45, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(148, 46, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(149, 46, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(150, 46, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(151, 47, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(152, 47, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(153, 47, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(154, 48, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(155, 48, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(156, 48, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(157, 49, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(158, 49, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(159, 49, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(160, 50, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(161, 50, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(162, 50, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(163, 51, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(164, 51, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(165, 51, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(166, 52, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(167, 52, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(168, 52, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(169, 53, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:23:18', '2024-06-21 13:23:18'),
(170, 53, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:23:18', '2024-06-21 13:23:18'),
(171, 53, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:23:18', '2024-06-21 13:23:18'),
(172, 54, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:23:18', '2024-06-21 13:23:18'),
(173, 54, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:23:18', '2024-06-21 13:23:18'),
(174, 54, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:23:18', '2024-06-21 13:23:18'),
(175, 55, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(176, 55, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(177, 55, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(178, 56, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(179, 56, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(180, 56, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(181, 57, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(182, 57, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(183, 57, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(184, 58, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(185, 58, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(186, 58, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(187, 59, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(188, 59, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(189, 59, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(190, 59, '1m74-1m76', '70kg-76kg', 'XL', '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(191, 59, '1m66-1m77', '76kg-80kg', 'XXL', '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(192, 60, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(193, 60, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(194, 60, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(195, 60, '1m74-1m76', '70kg-76kg', 'XL', '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(196, 60, '1m66-1m77', '76kg-80kg', 'XXL', '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(197, 61, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(198, 61, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(199, 61, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(200, 61, '1m74-1m76', '70kg-76kg', 'XL', '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(201, 61, '1m66-1m77', '76kg-80kg', 'XXL', '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(202, 62, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:30:49', '2024-06-21 13:30:49'),
(203, 62, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:30:49', '2024-06-21 13:30:49'),
(204, 62, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:30:49', '2024-06-21 13:30:49'),
(205, 62, '1m74-1m76', '70kg-76kg', 'XL', '2024-06-21 13:30:49', '2024-06-21 13:30:49'),
(206, 63, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:30:49', '2024-06-21 13:30:49'),
(207, 63, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:30:49', '2024-06-21 13:30:49'),
(208, 63, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:30:49', '2024-06-21 13:30:49'),
(209, 63, '1m74-1m76', '70kg-76kg', 'XL', '2024-06-21 13:30:49', '2024-06-21 13:30:49'),
(210, 64, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:30:49', '2024-06-21 13:30:49'),
(211, 64, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:30:49', '2024-06-21 13:30:49'),
(212, 64, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:30:49', '2024-06-21 13:30:49'),
(213, 64, '1m74-1m76', '70kg-76kg', 'XL', '2024-06-21 13:30:49', '2024-06-21 13:30:49'),
(214, 65, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:34:17', '2024-06-21 13:34:17'),
(215, 65, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:34:17', '2024-06-21 13:34:17'),
(216, 65, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:34:17', '2024-06-21 13:34:17'),
(217, 66, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:34:17', '2024-06-21 13:34:17'),
(218, 66, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:34:17', '2024-06-21 13:34:17'),
(219, 66, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:34:17', '2024-06-21 13:34:17'),
(220, 67, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:35:12', '2024-06-21 13:35:12'),
(221, 67, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(222, 67, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(223, 67, '1m74-1m76', '70kg-76kg', 'XL', '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(224, 68, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(225, 68, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(226, 68, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(227, 68, '1m74-1m76', '70kg-76kg', 'XL', '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(228, 69, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(229, 69, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(230, 69, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(231, 69, '1m74-1m76', '70kg-76kg', 'XL', '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(232, 70, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:36:42', '2024-06-21 13:36:42'),
(233, 70, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:36:42', '2024-06-21 13:36:42'),
(234, 70, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:36:42', '2024-06-21 13:36:42'),
(235, 70, '1m74-1m76', '70kg-76kg', 'XL', '2024-06-21 13:36:42', '2024-06-21 13:36:42'),
(236, 71, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:36:42', '2024-06-21 13:36:42'),
(237, 71, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:36:42', '2024-06-21 13:36:42'),
(238, 71, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:36:42', '2024-06-21 13:36:42'),
(239, 71, '1m74-1m76', '70kg-76kg', 'XL', '2024-06-21 13:36:42', '2024-06-21 13:36:42'),
(240, 72, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:37:28', '2024-06-21 13:37:28'),
(241, 72, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:37:28', '2024-06-21 13:37:28'),
(242, 72, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:37:28', '2024-06-21 13:37:28'),
(243, 72, '1m74-1m76', '70kg-76kg', 'XL', '2024-06-21 13:37:28', '2024-06-21 13:37:28'),
(244, 73, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:37:28', '2024-06-21 13:37:28'),
(245, 73, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:37:28', '2024-06-21 13:37:28'),
(246, 73, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:37:28', '2024-06-21 13:37:28'),
(247, 73, '1m74-1m76', '70kg-76kg', 'XL', '2024-06-21 13:37:28', '2024-06-21 13:37:28'),
(248, 74, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:39:13', '2024-06-21 13:39:13'),
(249, 74, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:39:13', '2024-06-21 13:39:13'),
(250, 74, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:39:13', '2024-06-21 13:39:13'),
(251, 74, '1m74-1m76', '70kg-76kg', 'XL', '2024-06-21 13:39:13', '2024-06-21 13:39:13'),
(252, 75, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:39:13', '2024-06-21 13:39:13'),
(253, 75, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:39:13', '2024-06-21 13:39:13'),
(254, 75, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:39:13', '2024-06-21 13:39:13'),
(255, 75, '1m74-1m76', '70kg-76kg', 'XL', '2024-06-21 13:39:13', '2024-06-21 13:39:13'),
(256, 76, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:39:56', '2024-06-21 13:39:56'),
(257, 76, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:39:56', '2024-06-21 13:39:56'),
(258, 76, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:39:56', '2024-06-21 13:39:56'),
(259, 76, '1m74-1m76', '70kg-76kg', 'XL', '2024-06-21 13:39:56', '2024-06-21 13:39:56'),
(260, 77, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:39:56', '2024-06-21 13:39:56'),
(261, 77, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:39:56', '2024-06-21 13:39:56'),
(262, 77, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:39:56', '2024-06-21 13:39:56'),
(263, 77, '1m74-1m76', '70kg-76kg', 'XL', '2024-06-21 13:39:56', '2024-06-21 13:39:56'),
(264, 78, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:41:00', '2024-06-21 13:41:00'),
(265, 78, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:41:00', '2024-06-21 13:41:00'),
(266, 78, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:41:00', '2024-06-21 13:41:00'),
(267, 78, '1m74-1m76', '70kg-76kg', 'XL', '2024-06-21 13:41:00', '2024-06-21 13:41:00'),
(268, 79, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:41:00', '2024-06-21 13:41:00'),
(269, 79, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:41:00', '2024-06-21 13:41:00'),
(270, 79, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:41:00', '2024-06-21 13:41:00'),
(271, 79, '1m74-1m76', '70kg-76kg', 'XL', '2024-06-21 13:41:00', '2024-06-21 13:41:00'),
(272, 80, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:41:45', '2024-06-21 13:41:45'),
(273, 80, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:41:45', '2024-06-21 13:41:45'),
(274, 80, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:41:45', '2024-06-21 13:41:45'),
(275, 80, '1m74-1m76', '70kg-76kg', 'XL', '2024-06-21 13:41:45', '2024-06-21 13:41:45'),
(276, 81, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:41:45', '2024-06-21 13:41:45'),
(277, 81, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:41:45', '2024-06-21 13:41:45'),
(278, 81, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:41:45', '2024-06-21 13:41:45'),
(279, 81, '1m74-1m76', '70kg-76kg', 'XL', '2024-06-21 13:41:45', '2024-06-21 13:41:45'),
(280, 82, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:43:12', '2024-06-21 13:43:12'),
(281, 82, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:43:12', '2024-06-21 13:43:12'),
(282, 82, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:43:12', '2024-06-21 13:43:12'),
(283, 83, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:43:12', '2024-06-21 13:43:12'),
(284, 83, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:43:12', '2024-06-21 13:43:12'),
(285, 83, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:43:12', '2024-06-21 13:43:12'),
(286, 84, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:45:23', '2024-06-21 13:45:23'),
(287, 84, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:45:23', '2024-06-21 13:45:23'),
(288, 84, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:45:23', '2024-06-21 13:45:23'),
(289, 85, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:46:32', '2024-06-21 13:46:32'),
(290, 85, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:46:32', '2024-06-21 13:46:32'),
(291, 85, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:46:32', '2024-06-21 13:46:32'),
(292, 86, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:46:32', '2024-06-21 13:46:32'),
(293, 86, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:46:32', '2024-06-21 13:46:32'),
(294, 86, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:46:32', '2024-06-21 13:46:32'),
(295, 87, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:47:46', '2024-06-21 13:47:46'),
(296, 87, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:47:46', '2024-06-21 13:47:46'),
(297, 87, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:47:46', '2024-06-21 13:47:46'),
(298, 88, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:47:46', '2024-06-21 13:47:46'),
(299, 88, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:47:46', '2024-06-21 13:47:46'),
(300, 88, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:47:46', '2024-06-21 13:47:46'),
(301, 89, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:48:55', '2024-06-21 13:48:55'),
(302, 89, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:48:55', '2024-06-21 13:48:55'),
(303, 89, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:48:55', '2024-06-21 13:48:55'),
(304, 90, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:48:55', '2024-06-21 13:48:55'),
(305, 90, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:48:55', '2024-06-21 13:48:55'),
(306, 90, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:48:55', '2024-06-21 13:48:55'),
(307, 91, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:49:36', '2024-06-21 13:49:36'),
(308, 91, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:49:36', '2024-06-21 13:49:36'),
(309, 91, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:49:36', '2024-06-21 13:49:36'),
(310, 92, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:49:36', '2024-06-21 13:49:36'),
(311, 92, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:49:36', '2024-06-21 13:49:36'),
(312, 92, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:49:36', '2024-06-21 13:49:36'),
(313, 93, '1m60-1m65', '55kg-60kg', 'S', '2024-06-21 13:50:35', '2024-06-21 13:50:35'),
(314, 93, '1m64-1m69', '60kg-65kg', 'M', '2024-06-21 13:50:35', '2024-06-21 13:50:35'),
(315, 93, '1m70-1m74', '66kg-70kg', 'L', '2024-06-21 13:50:35', '2024-06-21 13:50:35');

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `supplierId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receipts`
--

INSERT INTO `receipts` (`id`, `userId`, `supplierId`, `createdAt`, `updatedAt`) VALUES
(12, 3, 1, '2024-06-21 13:10:58', '2024-06-21 13:10:58'),
(13, 3, 1, '2024-06-21 13:15:04', '2024-06-21 13:15:04'),
(14, 3, 1, '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(15, 3, 1, '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(16, 3, 1, '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(17, 3, 1, '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(18, 3, 1, '2024-06-21 13:23:18', '2024-06-21 13:23:18'),
(19, 3, 1, '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(20, 3, 1, '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(21, 3, 1, '2024-06-21 13:30:49', '2024-06-21 13:30:49'),
(22, 3, 2, '2024-06-21 13:34:17', '2024-06-21 13:34:17'),
(23, 3, 2, '2024-06-21 13:35:12', '2024-06-21 13:35:12'),
(24, 3, 2, '2024-06-21 13:36:42', '2024-06-21 13:36:42'),
(25, 3, 2, '2024-06-21 13:37:28', '2024-06-21 13:37:28'),
(26, 3, 2, '2024-06-21 13:39:13', '2024-06-21 13:39:13'),
(27, 3, 2, '2024-06-21 13:39:56', '2024-06-21 13:39:56'),
(28, 3, 2, '2024-06-21 13:41:00', '2024-06-21 13:41:00'),
(29, 3, 2, '2024-06-21 13:41:45', '2024-06-21 13:41:45'),
(30, 3, 2, '2024-06-21 13:43:12', '2024-06-21 13:43:12'),
(31, 3, 2, '2024-06-21 13:45:23', '2024-06-21 13:45:23'),
(32, 3, 2, '2024-06-21 13:46:32', '2024-06-21 13:46:32'),
(33, 3, 2, '2024-06-21 13:47:46', '2024-06-21 13:47:46'),
(34, 3, 2, '2024-06-21 13:48:55', '2024-06-21 13:48:55'),
(35, 3, 2, '2024-06-21 13:49:36', '2024-06-21 13:49:36'),
(36, 3, 2, '2024-06-21 13:50:35', '2024-06-21 13:50:35');

-- --------------------------------------------------------

--
-- Table structure for table `receipt_details`
--

CREATE TABLE `receipt_details` (
  `id` int(11) NOT NULL,
  `receiptId` int(11) DEFAULT NULL,
  `sizeId` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receipt_details`
--

INSERT INTO `receipt_details` (`id`, `receiptId`, `sizeId`, `quantity`, `price`, `createdAt`, `updatedAt`) VALUES
(29, 12, 94, 30, 70000, '2024-06-21 13:10:58', '2024-06-21 13:10:58'),
(30, 12, 95, 30, 70000, '2024-06-21 13:10:58', '2024-06-21 13:10:58'),
(31, 12, 96, 30, 70000, '2024-06-21 13:10:58', '2024-06-21 13:10:58'),
(32, 13, 97, 20, 70000, '2024-06-21 13:15:04', '2024-06-21 13:15:04'),
(33, 13, 98, 20, 70000, '2024-06-21 13:15:04', '2024-06-21 13:15:04'),
(34, 13, 99, 20, 70000, '2024-06-21 13:15:04', '2024-06-21 13:15:04'),
(35, 13, 100, 20, 70000, '2024-06-21 13:15:04', '2024-06-21 13:15:04'),
(36, 13, 101, 20, 70000, '2024-06-21 13:15:04', '2024-06-21 13:15:04'),
(37, 13, 102, 20, 70000, '2024-06-21 13:15:04', '2024-06-21 13:15:04'),
(38, 13, 103, 20, 70000, '2024-06-21 13:15:04', '2024-06-21 13:15:04'),
(39, 13, 104, 20, 70000, '2024-06-21 13:15:04', '2024-06-21 13:15:04'),
(40, 13, 105, 20, 70000, '2024-06-21 13:15:04', '2024-06-21 13:15:04'),
(41, 13, 106, 20, 70000, '2024-06-21 13:15:04', '2024-06-21 13:15:04'),
(42, 13, 107, 20, 70000, '2024-06-21 13:15:04', '2024-06-21 13:15:04'),
(43, 13, 108, 20, 70000, '2024-06-21 13:15:04', '2024-06-21 13:15:04'),
(44, 13, 109, 20, 70000, '2024-06-21 13:15:05', '2024-06-21 13:15:05'),
(45, 13, 110, 20, 70000, '2024-06-21 13:15:05', '2024-06-21 13:15:05'),
(46, 13, 111, 20, 70000, '2024-06-21 13:15:05', '2024-06-21 13:15:05'),
(47, 13, 112, 20, 70000, '2024-06-21 13:15:05', '2024-06-21 13:15:05'),
(48, 14, 113, 20, 70000, '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(49, 14, 114, 20, 70000, '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(50, 14, 115, 20, 70000, '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(51, 14, 116, 20, 70000, '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(52, 14, 117, 20, 70000, '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(53, 14, 118, 20, 70000, '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(54, 14, 119, 20, NULL, '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(55, 14, 120, 20, NULL, '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(56, 14, 121, 20, NULL, '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(57, 14, 122, 20, NULL, '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(58, 14, 123, 20, NULL, '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(59, 14, 124, 20, NULL, '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(60, 14, 125, 20, NULL, '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(61, 14, 126, 20, NULL, '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(62, 14, 127, 20, NULL, '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(63, 14, 128, 20, NULL, '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(64, 14, 129, 20, NULL, '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(65, 14, 130, 20, NULL, '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(66, 14, 131, 20, NULL, '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(67, 14, 132, 20, NULL, '2024-06-21 13:16:33', '2024-06-21 13:16:33'),
(68, 15, 133, 10, NULL, '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(69, 15, 134, 10, NULL, '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(70, 15, 135, 10, NULL, '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(71, 15, 136, 10, NULL, '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(72, 15, 137, 10, NULL, '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(73, 15, 138, 10, NULL, '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(74, 15, 139, 10, NULL, '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(75, 15, 140, 10, NULL, '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(76, 15, 141, 10, NULL, '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(77, 15, 142, 10, NULL, '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(78, 15, 143, 10, NULL, '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(79, 15, 144, 10, NULL, '2024-06-21 13:18:16', '2024-06-21 13:18:16'),
(80, 16, 145, 10, NULL, '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(81, 16, 146, 10, NULL, '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(82, 16, 147, 10, NULL, '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(83, 16, 148, 10, NULL, '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(84, 16, 149, 10, NULL, '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(85, 16, 150, 10, NULL, '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(86, 16, 151, 10, NULL, '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(87, 16, 152, 10, NULL, '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(88, 16, 153, 10, NULL, '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(89, 16, 154, 10, NULL, '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(90, 16, 155, 10, NULL, '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(91, 16, 156, 10, NULL, '2024-06-21 13:20:04', '2024-06-21 13:20:04'),
(92, 17, 157, 10, NULL, '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(93, 17, 158, 10, NULL, '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(94, 17, 159, 10, NULL, '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(95, 17, 160, 10, NULL, '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(96, 17, 161, 10, NULL, '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(97, 17, 162, 10, NULL, '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(98, 17, 163, 10, NULL, '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(99, 17, 164, 10, NULL, '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(100, 17, 165, 10, NULL, '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(101, 17, 166, 10, NULL, '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(102, 17, 167, 10, NULL, '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(103, 17, 168, 10, NULL, '2024-06-21 13:21:54', '2024-06-21 13:21:54'),
(104, 18, 169, 10, NULL, '2024-06-21 13:23:18', '2024-06-21 13:23:18'),
(105, 18, 170, 10, NULL, '2024-06-21 13:23:18', '2024-06-21 13:23:18'),
(106, 18, 171, 10, NULL, '2024-06-21 13:23:18', '2024-06-21 13:23:18'),
(107, 18, 172, 10, NULL, '2024-06-21 13:23:18', '2024-06-21 13:23:18'),
(108, 18, 173, 10, NULL, '2024-06-21 13:23:18', '2024-06-21 13:23:18'),
(109, 18, 174, 10, NULL, '2024-06-21 13:23:18', '2024-06-21 13:23:18'),
(110, 19, 175, 10, NULL, '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(111, 19, 176, 10, NULL, '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(112, 19, 177, 10, NULL, '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(113, 19, 178, 10, NULL, '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(114, 19, 179, 10, NULL, '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(115, 19, 180, 10, NULL, '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(116, 19, 181, 10, NULL, '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(117, 19, 182, 10, NULL, '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(118, 19, 183, 10, NULL, '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(119, 19, 184, 10, NULL, '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(120, 19, 185, 10, NULL, '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(121, 19, 186, 10, NULL, '2024-06-21 13:25:32', '2024-06-21 13:25:32'),
(122, 20, 187, 10, NULL, '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(123, 20, 188, 10, NULL, '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(124, 20, 189, 10, NULL, '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(125, 20, 190, 10, NULL, '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(126, 20, 191, 10, NULL, '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(127, 20, 192, 10, NULL, '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(128, 20, 193, 10, NULL, '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(129, 20, 194, 10, NULL, '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(130, 20, 195, 10, NULL, '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(131, 20, 196, 10, NULL, '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(132, 20, 197, 10, NULL, '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(133, 20, 198, 10, NULL, '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(134, 20, 199, 10, NULL, '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(135, 20, 200, 10, NULL, '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(136, 20, 201, 10, NULL, '2024-06-21 13:29:34', '2024-06-21 13:29:34'),
(137, 21, 202, 10, NULL, '2024-06-21 13:30:49', '2024-06-21 13:30:49'),
(138, 21, 203, 10, NULL, '2024-06-21 13:30:49', '2024-06-21 13:30:49'),
(139, 21, 204, 10, NULL, '2024-06-21 13:30:49', '2024-06-21 13:30:49'),
(140, 21, 205, 10, NULL, '2024-06-21 13:30:49', '2024-06-21 13:30:49'),
(141, 21, 206, 10, NULL, '2024-06-21 13:30:49', '2024-06-21 13:30:49'),
(142, 21, 207, 10, NULL, '2024-06-21 13:30:49', '2024-06-21 13:30:49'),
(143, 21, 208, 10, NULL, '2024-06-21 13:30:49', '2024-06-21 13:30:49'),
(144, 21, 209, 10, NULL, '2024-06-21 13:30:49', '2024-06-21 13:30:49'),
(145, 21, 210, 10, NULL, '2024-06-21 13:30:49', '2024-06-21 13:30:49'),
(146, 21, 211, 10, NULL, '2024-06-21 13:30:49', '2024-06-21 13:30:49'),
(147, 21, 212, 10, NULL, '2024-06-21 13:30:49', '2024-06-21 13:30:49'),
(148, 21, 213, 10, 70000, '2024-06-21 13:30:50', '2024-06-21 13:30:50'),
(149, 22, 214, 10, 170000, '2024-06-21 13:34:17', '2024-06-21 13:34:17'),
(150, 22, 215, 10, 170000, '2024-06-21 13:34:17', '2024-06-21 13:34:17'),
(151, 22, 216, 10, 170000, '2024-06-21 13:34:17', '2024-06-21 13:34:17'),
(152, 22, 217, 10, 170000, '2024-06-21 13:34:17', '2024-06-21 13:34:17'),
(153, 22, 218, 10, 170000, '2024-06-21 13:34:17', '2024-06-21 13:34:17'),
(154, 22, 219, 10, 170000, '2024-06-21 13:34:17', '2024-06-21 13:34:17'),
(155, 23, 220, 10, 170000, '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(156, 23, 221, 10, 170000, '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(157, 23, 222, 10, 170000, '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(158, 23, 223, 10, 170000, '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(159, 23, 224, 10, 170000, '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(160, 23, 225, 10, 170000, '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(161, 23, 226, 10, 170000, '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(162, 23, 227, 10, 170000, '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(163, 23, 228, 10, 170000, '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(164, 23, 229, 10, 170000, '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(165, 23, 230, 10, 170000, '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(166, 23, 231, 10, 170000, '2024-06-21 13:35:13', '2024-06-21 13:35:13'),
(167, 24, 232, 10, 170000, '2024-06-21 13:36:42', '2024-06-21 13:36:42'),
(168, 24, 233, 10, 170000, '2024-06-21 13:36:42', '2024-06-21 13:36:42'),
(169, 24, 234, 10, 170000, '2024-06-21 13:36:42', '2024-06-21 13:36:42'),
(170, 24, 235, 10, 170000, '2024-06-21 13:36:42', '2024-06-21 13:36:42'),
(171, 24, 236, 10, 170000, '2024-06-21 13:36:42', '2024-06-21 13:36:42'),
(172, 24, 237, 10, 170000, '2024-06-21 13:36:42', '2024-06-21 13:36:42'),
(173, 24, 238, 10, 170000, '2024-06-21 13:36:42', '2024-06-21 13:36:42'),
(174, 24, 239, 10, 170000, '2024-06-21 13:36:42', '2024-06-21 13:36:42'),
(175, 25, 240, 10, 170000, '2024-06-21 13:37:28', '2024-06-21 13:37:28'),
(176, 25, 241, 10, 170000, '2024-06-21 13:37:28', '2024-06-21 13:37:28'),
(177, 25, 242, 10, 170000, '2024-06-21 13:37:28', '2024-06-21 13:37:28'),
(178, 25, 243, 10, 170000, '2024-06-21 13:37:28', '2024-06-21 13:37:28'),
(179, 25, 244, 10, 170000, '2024-06-21 13:37:28', '2024-06-21 13:37:28'),
(180, 25, 245, 10, 170000, '2024-06-21 13:37:28', '2024-06-21 13:37:28'),
(181, 25, 246, 10, 170000, '2024-06-21 13:37:28', '2024-06-21 13:37:28'),
(182, 25, 247, 10, 170000, '2024-06-21 13:37:28', '2024-06-21 13:37:28'),
(183, 26, 248, 10, 170000, '2024-06-21 13:39:13', '2024-06-21 13:39:13'),
(184, 26, 249, 10, 170000, '2024-06-21 13:39:13', '2024-06-21 13:39:13'),
(185, 26, 250, 10, 170000, '2024-06-21 13:39:13', '2024-06-21 13:39:13'),
(186, 26, 251, 10, 170000, '2024-06-21 13:39:13', '2024-06-21 13:39:13'),
(187, 26, 252, 10, 170000, '2024-06-21 13:39:13', '2024-06-21 13:39:13'),
(188, 26, 253, 10, 170000, '2024-06-21 13:39:13', '2024-06-21 13:39:13'),
(189, 26, 254, 10, 170000, '2024-06-21 13:39:13', '2024-06-21 13:39:13'),
(190, 26, 255, 10, 170000, '2024-06-21 13:39:13', '2024-06-21 13:39:13'),
(191, 27, 256, 10, 170000, '2024-06-21 13:39:56', '2024-06-21 13:39:56'),
(192, 27, 257, 10, 170000, '2024-06-21 13:39:56', '2024-06-21 13:39:56'),
(193, 27, 258, 10, 170000, '2024-06-21 13:39:56', '2024-06-21 13:39:56'),
(194, 27, 259, 10, 170000, '2024-06-21 13:39:56', '2024-06-21 13:39:56'),
(195, 27, 260, 10, 170000, '2024-06-21 13:39:56', '2024-06-21 13:39:56'),
(196, 27, 261, 10, 170000, '2024-06-21 13:39:56', '2024-06-21 13:39:56'),
(197, 27, 262, 10, 170000, '2024-06-21 13:39:56', '2024-06-21 13:39:56'),
(198, 27, 263, 10, 170000, '2024-06-21 13:39:56', '2024-06-21 13:39:56'),
(199, 28, 264, 10, 100000, '2024-06-21 13:41:00', '2024-06-21 13:41:00'),
(200, 28, 265, 10, 100000, '2024-06-21 13:41:00', '2024-06-21 13:41:00'),
(201, 28, 266, 10, 100000, '2024-06-21 13:41:00', '2024-06-21 13:41:00'),
(202, 28, 267, 10, 100000, '2024-06-21 13:41:00', '2024-06-21 13:41:00'),
(203, 28, 268, 10, 100000, '2024-06-21 13:41:00', '2024-06-21 13:41:00'),
(204, 28, 269, 10, 100000, '2024-06-21 13:41:00', '2024-06-21 13:41:00'),
(205, 28, 270, 10, 100000, '2024-06-21 13:41:00', '2024-06-21 13:41:00'),
(206, 28, 271, 10, 100000, '2024-06-21 13:41:00', '2024-06-21 13:41:00'),
(207, 29, 272, 10, 100000, '2024-06-21 13:41:45', '2024-06-21 13:41:45'),
(208, 29, 273, 10, 100000, '2024-06-21 13:41:45', '2024-06-21 13:41:45'),
(209, 29, 274, 10, 100000, '2024-06-21 13:41:45', '2024-06-21 13:41:45'),
(210, 29, 275, 10, 100000, '2024-06-21 13:41:45', '2024-06-21 13:41:45'),
(211, 29, 276, 10, 100000, '2024-06-21 13:41:45', '2024-06-21 13:41:45'),
(212, 29, 277, 10, 100000, '2024-06-21 13:41:45', '2024-06-21 13:41:45'),
(213, 29, 278, 10, 100000, '2024-06-21 13:41:45', '2024-06-21 13:41:45'),
(214, 29, 279, 10, 100000, '2024-06-21 13:41:45', '2024-06-21 13:41:45'),
(215, 30, 280, 10, 870000, '2024-06-21 13:43:12', '2024-06-21 13:43:12'),
(216, 30, 281, 10, 870000, '2024-06-21 13:43:12', '2024-06-21 13:43:12'),
(217, 30, 282, 10, 870000, '2024-06-21 13:43:12', '2024-06-21 13:43:12'),
(218, 30, 283, 10, 870000, '2024-06-21 13:43:12', '2024-06-21 13:43:12'),
(219, 30, 284, 10, 870000, '2024-06-21 13:43:12', '2024-06-21 13:43:12'),
(220, 30, 285, 10, 870000, '2024-06-21 13:43:12', '2024-06-21 13:43:12'),
(221, 31, 286, 10, 1000000, '2024-06-21 13:45:23', '2024-06-21 13:45:23'),
(222, 31, 287, 10, 1000000, '2024-06-21 13:45:23', '2024-06-21 13:45:23'),
(223, 31, 288, 10, 1000000, '2024-06-21 13:45:23', '2024-06-21 13:45:23'),
(224, 32, 289, 10, 750000, '2024-06-21 13:46:32', '2024-06-21 13:46:32'),
(225, 32, 290, 10, 750000, '2024-06-21 13:46:32', '2024-06-21 13:46:32'),
(226, 32, 291, 10, 750000, '2024-06-21 13:46:32', '2024-06-21 13:46:32'),
(227, 32, 292, 10, 750000, '2024-06-21 13:46:32', '2024-06-21 13:46:32'),
(228, 32, 293, 10, 750000, '2024-06-21 13:46:32', '2024-06-21 13:46:32'),
(229, 32, 294, 10, 750000, '2024-06-21 13:46:32', '2024-06-21 13:46:32'),
(230, 33, 295, 10, 500000, '2024-06-21 13:47:46', '2024-06-21 13:47:46'),
(231, 33, 296, 10, 500000, '2024-06-21 13:47:46', '2024-06-21 13:47:46'),
(232, 33, 297, 10, 500000, '2024-06-21 13:47:46', '2024-06-21 13:47:46'),
(233, 33, 298, 10, 500000, '2024-06-21 13:47:46', '2024-06-21 13:47:46'),
(234, 33, 299, 10, 500000, '2024-06-21 13:47:46', '2024-06-21 13:47:46'),
(235, 33, 300, 10, 500000, '2024-06-21 13:47:46', '2024-06-21 13:47:46'),
(236, 34, 301, 10, 650000, '2024-06-21 13:48:55', '2024-06-21 13:48:55'),
(237, 34, 302, 10, 650000, '2024-06-21 13:48:55', '2024-06-21 13:48:55'),
(238, 34, 303, 10, 650000, '2024-06-21 13:48:55', '2024-06-21 13:48:55'),
(239, 34, 304, 10, 650000, '2024-06-21 13:48:55', '2024-06-21 13:48:55'),
(240, 34, 305, 10, 650000, '2024-06-21 13:48:55', '2024-06-21 13:48:55'),
(241, 34, 306, 10, 650000, '2024-06-21 13:48:55', '2024-06-21 13:48:55'),
(242, 35, 307, 10, 650000, '2024-06-21 13:49:36', '2024-06-21 13:49:36'),
(243, 35, 308, 10, 650000, '2024-06-21 13:49:36', '2024-06-21 13:49:36'),
(244, 35, 309, 10, 650000, '2024-06-21 13:49:36', '2024-06-21 13:49:36'),
(245, 35, 310, 10, 650000, '2024-06-21 13:49:36', '2024-06-21 13:49:36'),
(246, 35, 311, 10, 650000, '2024-06-21 13:49:36', '2024-06-21 13:49:36'),
(247, 35, 312, 10, 650000, '2024-06-21 13:49:36', '2024-06-21 13:49:36'),
(248, 36, 313, 10, 650000, '2024-06-21 13:50:35', '2024-06-21 13:50:35'),
(249, 36, 314, 10, 650000, '2024-06-21 13:50:35', '2024-06-21 13:50:35'),
(250, 36, 315, 10, 650000, '2024-06-21 13:50:35', '2024-06-21 13:50:35');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('migration-create-address_user.js'),
('migration-create-allcode.js'),
('migration-create-order_detail.js'),
('migration-create-order.js'),
('migration-create-product_detail.js'),
('migration-create-product_image.js'),
('migration-create-product_size.js'),
('migration-create-product.js'),
('migration-create-receipt_detail.js'),
('migration-create-receipt.js'),
('migration-create-shop_cart.js'),
('migration-create-supplier.js'),
('migration-create-type_ship.js'),
('migration-create-type_voucher.js'),
('migration-create-user.js'),
('migration-create-voucher_used.js'),
('migration-create-voucher.js');

-- --------------------------------------------------------

--
-- Table structure for table `shop_carts`
--

CREATE TABLE `shop_carts` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `sizeId` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `statusId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_carts`
--

INSERT INTO `shop_carts` (`id`, `userId`, `sizeId`, `quantity`, `statusId`, `createdAt`, `updatedAt`) VALUES
(13, 5, 170, 5, '0', '2024-06-21 13:57:28', '2024-06-21 13:57:28'),
(14, 5, 170, 5, '0', '2024-06-21 14:00:55', '2024-06-21 14:00:55'),
(18, 2, 250, 3, '0', '2024-06-21 14:06:19', '2024-06-21 14:06:19');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `address`, `phoneNumber`, `email`, `createdAt`, `updatedAt`) VALUES
(1, 'Supplier 1', 'Address 1', '0123456789', 'supplier1@gmail.com', '2024-06-18 14:22:14', '2024-06-18 14:22:14'),
(2, 'Supplier 2', 'Address of suppier 2', '0213456789', 'supplier2@gmail.com', '2024-06-18 14:22:39', '2024-06-18 14:22:39'),
(3, 'Supplier 3', 'Address of suppier 3', '0132456789', 'supplier3@gmail.com', '2024-06-18 14:22:54', '2024-06-18 14:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `type_ships`
--

CREATE TABLE `type_ships` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `type_ships`
--

INSERT INTO `type_ships` (`id`, `type`, `price`, `createdAt`, `updatedAt`) VALUES
(1, 'Hỏa tốc', 50000, '2024-06-18 14:20:16', '2024-06-18 14:20:16'),
(2, 'Giao hàng nhanh', 30000, '2024-06-18 14:20:32', '2024-06-18 14:20:32'),
(3, 'Giao hàng tiết kiệm', 20000, '2024-06-18 14:20:43', '2024-06-18 14:20:43');

-- --------------------------------------------------------

--
-- Table structure for table `type_vouchers`
--

CREATE TABLE `type_vouchers` (
  `id` int(11) NOT NULL,
  `typeVoucher` varchar(255) DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `maxValue` bigint(20) DEFAULT NULL,
  `minValue` bigint(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `image` longblob DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `roleId` varchar(255) DEFAULT NULL,
  `statusId` varchar(255) DEFAULT NULL,
  `isActivePhone` tinyint(1) DEFAULT NULL,
  `userToken` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `fullName`, `address`, `phoneNumber`, `image`, `dob`, `roleId`, `statusId`, `isActivePhone`, `userToken`, `createdAt`, `updatedAt`) VALUES
(1, 'phamhuong@gmail.com', '$2a$10$14lHW1VBXc5zTp1CSEvL6egQm1eL.Xv.ClRXDMwJLJoWWCAGPTUPW', 'Phạm Hương', NULL, '0912345678', NULL, NULL, 'R2', 'S1', 0, '', '2024-06-18 14:24:12', '2024-06-18 14:24:12'),
(2, 'phamsuong@gmail.com', '$2a$10$DgHbqqJ.T0lvz9a0O.cAceeQKXowDIISlvN1LETrCuix4AvkYuzTG', 'Phạm Sương', NULL, '0369258147', NULL, NULL, 'R2', 'S1', 0, '', '2024-06-18 14:25:34', '2024-06-18 14:25:34'),
(3, 'admin@gmail.com', '$2a$10$oMizy/yTeyss74WkervWlumg7ZON6u1N445BdPGf/Kj8P0RdGVahO', 'ADMIN', NULL, '0321654987', NULL, NULL, 'R1', 'S1', 0, '', '2024-06-18 14:27:42', '2024-06-18 14:27:42'),
(5, 'nhubinh@gmail.com', '$2a$10$GeiSUwKCORH5AkUKD8LJlOT5AjB1xHLbIz8qx9.o5HPzSPCgrjnEK', 'Như Bình', NULL, '0654789321', NULL, NULL, 'R2', 'S1', 0, '', '2024-06-21 12:54:01', '2024-06-21 12:54:01'),
(6, 'vanhai@gmail.com', '$2a$10$FK4XG2RnjUd2orKiBV/NmOd0GSDzwqb4Wj3B4A05wwtAeaQO4niUO', 'Văn Hải', NULL, '0325647889', NULL, NULL, 'R2', 'S1', 0, '', '2024-06-21 12:54:12', '2024-06-21 12:54:12'),
(7, 'ngockhanh@gmail.com', '$2a$10$Km/dseDm1mKoNvJmMRF/N.GYXnVTRIFftxTK1VRaR26/Ifl0.InhK', 'Ngọc Khánh', NULL, '0325898721', NULL, NULL, 'R2', 'S1', 0, '', '2024-06-21 12:56:40', '2024-06-21 12:56:40'),
(8, 'ngocanh@gmail.com', '$2a$10$bHhdPNG2IFBOa1FTNU3g7.abUKrm/2h2H7InXCezJaUtWetxupjqC', 'Ngọc Ánh', NULL, '0911456987', NULL, NULL, 'R2', 'S1', 0, '', '2024-06-21 12:57:01', '2024-06-21 12:57:01'),
(9, 'phuonganh@gmail.com', '$2a$10$71ZPZ1nMEcn9hymVbbKtTOVKNC1TN70bQe5YGBdW/nY76JR22rLxm', 'Phương Anh', NULL, '0918654787', NULL, NULL, 'R2', 'S1', 0, '', '2024-06-21 12:58:13', '2024-06-21 12:58:13');

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` int(11) NOT NULL,
  `fromDate` varchar(255) DEFAULT NULL,
  `toDate` varchar(255) DEFAULT NULL,
  `typeVoucherId` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `codeVoucher` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `voucher_useds`
--

CREATE TABLE `voucher_useds` (
  `id` int(11) NOT NULL,
  `voucherId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_users`
--
ALTER TABLE `address_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all_codes`
--
ALTER TABLE `all_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipt_details`
--
ALTER TABLE `receipt_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `shop_carts`
--
ALTER TABLE `shop_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_ships`
--
ALTER TABLE `type_ships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_vouchers`
--
ALTER TABLE `type_vouchers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voucher_useds`
--
ALTER TABLE `voucher_useds`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address_users`
--
ALTER TABLE `address_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `all_codes`
--
ALTER TABLE `all_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `receipt_details`
--
ALTER TABLE `receipt_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `shop_carts`
--
ALTER TABLE `shop_carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `type_ships`
--
ALTER TABLE `type_ships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `type_vouchers`
--
ALTER TABLE `type_vouchers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voucher_useds`
--
ALTER TABLE `voucher_useds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
