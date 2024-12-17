-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 17, 2024 at 05:41 AM
-- Server version: 10.11.10-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u887634221_roby`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `is_ban` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=not_ban,1=ban',
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `role` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `is_ban`, `created_at`, `role`) VALUES
(2, 'Admin', 'admin@gmail.com', '$2y$10$sPR0h.V0oWKl0xB3jXRvoudhZBsHv9KY2qbZnfwKn8Bgh.LzZNFq6', '9876549878', 0, '2023-09-03', 'Admin'),
(4, 'Ahsan', 'ahsanhabibrafat11@gmail.com', '$2y$10$mwFzRAOwWmlHTaPjTD262eG4BNiAILeSrJoC1D2XkkvdkwqsHrx2e', '01613805702', 0, '2024-12-04', 'Admin'),
(8, 'Masud', 'masud@gmail.com', '$2y$10$n8acWwOoMF6EyDUfZTzmR.M.rXCUqiTizCOY9Bv..UnnDYE0oWQji', NULL, 0, '2024-12-08', 'Salesman'),
(10, 'testmanager', 'testmanager@gmail.com', '$2y$10$NTBoJ2U.r43tDSz3uPUy2emaT9SpO2PpGEEIlkXqqWaVvYLkxV46a', '01613805702', 0, '2024-12-16', 'manager'),
(12, 'salesman', 'salesman@gmail.com', '$2y$10$3vni.MaSJD0NC78A9s6FMe9VqtjTcflKXA2OuvMxf3jSNxt52QuBi', '01613805702', 0, '2024-12-16', 'salesman');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=visible,1=hidden'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `status`) VALUES
(4, 'Foam', 'All', 0),
(5, 'Curtain', 'China', 0),
(6, 'Curtain', 'Crush', 0),
(7, 'Curtain', 'JC', 0),
(8, 'Cloth', 'China', 0),
(9, 'Cloth', 'BD', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=visible,1=hidden',
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `status`, `created_at`) VALUES
(5, 'Ahsan', 'rhtujyikuolui', '01613805702', 0, '2024-12-04'),
(6, 'Killer Roby', 'Mirboxtula', '01711044502', 0, '2024-12-04'),
(7, 'Ahsan', 'Shibganj', '016138065702', 0, '2024-12-04'),
(8, 'Rihan', 'sg', '01758388875', 0, '2024-12-05'),
(12, 'ruhan', 'shibganz', '01758388875', 0, '2024-12-06'),
(13, 'Rafin', 'Ukk', '01613805702', 0, '2024-12-07'),
(14, 'killerPB', 'UK', '01613805702', 0, '2024-12-07'),
(15, 'Sanim', 'ukk', '01613805702', 0, '2024-12-07'),
(16, 'Ayan', 'kanaighat', '01613805702', 0, '2024-12-07'),
(18, 'রোহান', 'শিবগঞ্জ', '01787120006', 0, '2024-12-08'),
(21, 'yeasir', 'usa', '01613805702', 0, '2024-12-16');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `expense_date` datetime NOT NULL,
  `expenses_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `description` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `due` double NOT NULL,
  `category` varchar(45) NOT NULL,
  `paid` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`expense_date`, `expenses_id`, `amount`, `description`, `created_at`, `due`, `category`, `paid`) VALUES
('2024-12-04 00:00:00', 1, 500, 'chocolate', '2024-12-04 14:44:27', 0, 'Snacks (own)', 0),
('2024-12-04 00:00:00', 2, 5000, 'thamed', '2024-12-04 15:07:26', 4000, 'Marchant Payments & Dues', 1000),
('2024-12-04 00:00:00', 3, 8000, 'thamed', '2024-12-04 15:08:10', 5000, 'Employee\'s Payments & Dues', 3000),
('2024-12-05 00:00:00', 4, 15000, 'Mahbub Hasan', '2024-12-05 16:54:41', 5000, 'Marchant Payments & Dues', 10000),
('2024-12-05 00:00:00', 5, 15000, 'Apollo', '2024-12-05 17:01:25', 10000, 'Marchant Payments & Dues', 5000),
('2024-12-05 00:00:00', 6, 4500, 'RajRahi', '2024-12-05 17:04:22', 0, 'Electricity Bill', 0),
('2024-12-08 00:00:00', 7, 5000, 'Karmo 180 - 3\" 10p', '2024-12-08 19:10:41', 0, 'Foam Bill', 0),
('2024-12-08 00:00:00', 8, 2000, 'By Bodrul', '2024-12-08 19:11:00', 0, 'Electricity Bill', 0),
('2024-12-08 00:00:00', 9, 250, 'Islamia', '2024-12-08 19:11:15', 0, 'Transport Bill', 0),
('2024-12-08 00:00:00', 10, 234, 'asdgf', '2024-12-08 20:02:30', 0, 'Clothing Bill (own)', 0),
('2024-12-11 00:00:00', 11, 500, 'test -1', '2024-12-11 06:47:27', 0, 'Marchant Payments & Dues', 500),
('2024-12-11 00:00:00', 12, 500, 'test -2', '2024-12-11 07:00:49', 0, 'Clothing Bill (others)', 0),
('2024-12-11 00:00:00', 13, 1000, 'Paid by Bikash', '2024-12-11 10:37:53', 0, 'Electricity Bill', 0),
('2024-12-11 00:00:00', 14, 2669, 'uo', '2024-12-11 20:06:04', 0, 'Snacks (own)', 0),
('2024-12-12 00:00:00', 15, 200, 'Customer er basha', '2024-12-12 11:36:49', 0, 'Transportation Bill', 0),
('2024-12-12 00:00:00', 16, 7200, 'Karmo 280 10p', '2024-12-12 11:37:24', 0, 'Foam Bill', 0),
('2024-12-12 00:00:00', 17, 19800, 'Bengal HD 10p\r\nBengal Surma 10p', '2024-12-12 11:37:54', 0, 'Foam Bill', 0),
('2024-12-12 00:00:00', 18, 24000, 'New Joma', '2024-12-12 11:38:08', 0, 'Mohajon Joma', 0),
('2024-12-12 00:00:00', 19, 7000, 'Rohan', '2024-12-12 11:38:23', 0, 'R-Joma', 0),
('2024-12-12 00:00:00', 20, 8000, 'Rayhan', '2024-12-12 11:38:34', 0, 'R-Joma', 0),
('2024-12-12 00:00:00', 21, 5000, 'Al Aqsa', '2024-12-12 11:38:51', 0, 'R-Joma', 0),
('2024-12-16 00:00:00', 22, 4000, 'Rajrahi', '2024-12-16 18:47:50', 0, 'R-Joma', 0),
('2024-12-16 00:00:00', 23, 3000, 'Nrc', '2024-12-16 18:48:07', 0, 'Foam Bill', 0),
('2024-12-16 00:00:00', 24, 500000, 'Khorsed', '2024-12-16 18:53:15', 1500000, 'Marchant Payments & Dues', 300000);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `tracking_no` varchar(100) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `total_amount` double NOT NULL,
  `order_date` date NOT NULL,
  `order_status` varchar(100) NOT NULL,
  `payment_mode` varchar(100) NOT NULL COMMENT 'cash, online',
  `order_placed_by_id` int(11) NOT NULL,
  `due` double NOT NULL,
  `advance` double NOT NULL,
  `discount` double NOT NULL,
  `delivery_date` date DEFAULT NULL,
  `description` varchar(45) NOT NULL,
  `unit` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `tracking_no`, `invoice_no`, `total_amount`, `order_date`, `order_status`, `payment_mode`, `order_placed_by_id`, `due`, `advance`, `discount`, `delivery_date`, `description`, `unit`) VALUES
(60, 6, 'INV-599594', '', 500, '2024-12-07', 'sale', '', 0, 0, 500, 0, '2024-12-07', 'test-1', ''),
(61, 6, 'INV-173176', '', 500, '2024-12-07', 'order', '', 0, 250, 250, 0, '2024-12-07', 'test-2', ''),
(62, 6, 'INV-742501', '', 600, '2024-12-07', 'sale', '', 0, 100, 500, 0, '2024-12-07', 'created by test : Ahsan', ''),
(63, 7, 'INV-101400', '', 800, '2024-12-07', 'sale', '', 0, 700, 100, 0, '2024-12-07', 'yooo', ''),
(64, 6, 'INV-101343', '', 1200, '2024-12-07', 'sale', '', 0, 1000, 200, 0, '2024-12-07', 'hello', ''),
(65, 6, 'INV-988960', '', 750, '2024-12-07', 'sale', '', 0, 700, 50, 0, '2024-12-07', 'yoooooooooooooooooooooo', ''),
(66, 6, 'INV-736283', '', 1000, '2024-12-07', 'sale', '', 0, 0, 1000, 0, '2024-12-07', 'cap5', ''),
(67, 6, 'INV-414896', '', 19950, '2024-12-07', 'sale', '', 0, 19900, 50, 0, '2024-12-07', 'updated', ''),
(68, 6, 'INV-121356', '', 27000, '2024-12-07', 'sale', '', 0, 26000, 1000, 0, '2024-12-07', '2', ''),
(69, 14, 'INV-715058', '', 3950, '2024-12-07', 'sale', '', 0, 3900, 50, 0, '2024-12-07', '200', ''),
(70, 6, 'INV-889158', '', 3900, '2024-12-07', 'sale', '', 0, 3400, 500, 0, '2024-12-07', 'yoooooooooooooooooooooo', ''),
(71, 7, 'INV-230564', '', 450, '2024-12-07', 'sale', '', 0, 400, 50, 0, '2024-12-07', 'pillow', ''),
(72, 8, 'INV-587447', '', 3600, '2024-12-08', 'sale', '', 0, 3500, 100, 0, '2024-12-08', 'test 1.0', ''),
(73, 6, 'INV-446393', '', 12000, '2024-12-08', 'sale', '', 0, 11800, 200, 0, '2024-12-08', 'test-2', ''),
(74, 7, 'INV-722626', '', 5000, '2024-12-08', 'sale', '', 0, 4000, 1000, 0, '2024-12-08', 'test-2', ''),
(75, 6, 'INV-675077', '', 5000, '2024-12-08', 'sale', '', 0, 1000, 4000, 0, '2024-12-08', 'test -3', ''),
(76, 5, 'INV-124128', '', 50, '2024-12-08', 'sale', '', 0, 40, 10, 0, '2024-12-08', 'cap out of stack', ''),
(77, 5, 'INV-123201', '', 400, '2024-12-08', 'sale', '', 0, 0, 400, 0, '2024-12-08', 'test-4', ''),
(78, 6, 'INV-569880', '', 390, '2024-12-08', 'sale', '', 0, 290, 100, 0, '2024-12-08', 'break;', ''),
(79, 6, 'INV-502861', '', 400, '2024-12-08', 'sale', '', 0, 0, 400, 0, '2024-12-08', 'exit;', ''),
(80, 6, 'INV-429178', '', 400, '2024-12-08', 'sale', '', 0, 0, 400, 0, '2024-12-08', 'exit;', ''),
(81, 6, 'INV-125646', '', 149500, '2024-12-08', 'sale', '', 0, 148500, 1000, 0, '2024-12-08', 'ter\r\n', ''),
(82, 6, 'INV-625064', '', 149500, '2024-12-08', 'sale', '', 0, 148500, 1000, 0, '2024-12-08', 'ter\r\n', ''),
(83, 6, 'INV-606163', '', 29900, '2024-12-08', 'sale', '', 0, 28900, 1000, 0, '2024-12-08', '2', ''),
(84, 7, 'INV-923600', '', 2380, '2024-12-08', 'sale', '', 0, 2180, 200, 0, '2024-12-08', 'sedtnh', ''),
(85, 6, 'INV-265020', '', 15580, '2024-12-08', 'sale', '', 0, 15560, 20, 0, '2024-12-08', 'sdf', ''),
(86, 6, 'INV-249690', '', 60900, '2024-12-08', 'sale', '', 0, 990, 110, 0, '2024-12-08', 'sdf', ''),
(87, 6, 'INV-139514', '', 61000, '2024-12-08', 'sale', '', 0, 1000, 100, 0, '2024-12-08', 'adgf', ''),
(88, 7, 'INV-575590', '', 16400, '2024-12-08', 'order', '', 0, 1400, 100, 0, '2024-12-08', 'das', ''),
(89, 7, 'INV-737425', '', 3100, '2024-12-08', 'sale', '', 0, 3000, 100, 0, '2024-12-08', 'HGFD', ''),
(90, 7, 'INV-228472', '', 14900, '2024-12-08', 'sale', '', 0, 14800, 100, 0, '2024-12-08', 'SDH', ''),
(91, 6, 'INV-637111', '', 2500, '2024-12-08', 'sale', '', 0, 2400, 100, 0, '2024-12-08', 'ZSFGH', ''),
(92, 6, 'INV-878767', '', 2500, '2024-12-08', 'sale', '', 0, 2400, 100, 0, '2024-12-08', 'ZSFGH', ''),
(93, 6, 'INV-515469', '', 2500, '2024-12-08', 'sale', '', 0, 2400, 100, 0, '2024-12-08', 'ZSFGH', ''),
(94, 6, 'INV-128861', '', 60, '2024-12-08', 'sale', '', 0, -140, 200, 0, '2024-12-08', 'sfrhdt', ''),
(95, 6, 'INV-740429', '', 750, '2024-12-08', 'sale', '', 0, 650, 100, 0, '2024-12-08', 'New', ''),
(96, 6, 'INV-512408', '', 760, '2024-12-08', 'sale', '', 0, 700, 60, 0, '2024-12-08', 'Voj', ''),
(97, 6, 'INV-876787', '', 14500, '2024-12-08', 'sale', '', 0, 14400, 100, 0, '2024-12-09', 'Fyyc', ''),
(98, 7, 'INV-712580', '', 2250, '2024-12-08', 'order', '', 0, 0, 2250, 0, '2024-12-10', '4 Kuchir 3p', ''),
(99, 7, 'INV-999550', '', 54000, '2024-12-08', 'sale', '', 0, 0, 54000, 0, '2024-12-09', 'BD Channel Cover', ''),
(100, 7, 'INV-742082', '', 5400, '2024-12-08', 'sale', '', 0, 0, 5400, 0, '2024-12-09', 'BD Channel Cover', ''),
(101, 7, 'INV-498284', '', 1100, '2024-12-08', 'sale', '', 0, 0, 1100, 0, '2024-12-09', 'BD Channel Cover', ''),
(102, 18, 'INV-480286', '', 550, '2024-12-08', 'sale', '', 0, 0, 550, 0, '2024-12-08', '4 kuchir 1p', ''),
(103, 6, 'INV-925045', '', 745, '2024-12-08', 'sale', '', 0, 712, 33, 0, '2024-12-02', 'dftgh', ''),
(104, 7, 'INV-338709', '', 835, '2024-12-08', 'sale', '', 0, 690, 145, 0, '2024-12-09', 'SDf', ''),
(105, 19, 'INV-407005', '', 1000, '2024-12-09', 'order', '', 0, 0, 1000, 0, '2024-12-10', 'yu', ''),
(106, 5, 'INV-256266', '', 480, '2024-12-09', 'sale', '', 0, 0, 480, 0, '2024-12-12', 'Dhdvd', ''),
(107, 6, 'INV-598807', '', 52600, '2024-12-11', 'sale', '', 0, 50300, 1200, 0, '2024-12-12', 'xb', ''),
(108, 6, 'INV-565436', '', 400, '2024-12-11', 'sale', '', 0, 380, 20, 0, '2024-12-12', 'zdv', ''),
(109, 5, 'INV-508003', '', 5500, '2024-12-11', 'sale', '', 0, 500, 5000, 0, '2024-12-12', 'trer', ''),
(110, 15, 'INV-699574', '', 1900, '2024-12-12', 'order', '', 0, 400, 1500, 0, '2024-12-13', '..', ''),
(111, 7, 'INV-479868', '', 28250, '2024-12-12', 'order', '', 0, 250, 28000, 0, '2024-12-20', ',,', ''),
(112, 6, 'INV-428572', '', 5800, '2024-12-12', 'sale', '', 0, 0, 5800, 0, '2024-12-12', 'Yooo', ''),
(113, 7, 'INV-909345', '', 26000, '2024-12-16', 'order', '', 0, 21000, 5000, 0, '2024-12-18', 'nothing', ''),
(114, 6, 'INV-381539', '', 2000, '2024-12-16', 'sale', '', 0, 0, 2000, 0, '2024-12-17', 'wefwf', '');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `quantity` double NOT NULL,
  `discount` double NOT NULL,
  `advance` double NOT NULL,
  `due` double NOT NULL,
  `unit` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `price`, `quantity`, `discount`, `advance`, `due`, `unit`) VALUES
(1, 1, 1, 15000, 1, 0, 0, 0, ''),
(2, 1, 4, 12599, 1, 0, 0, 0, ''),
(3, 1, 5, 350, 1, 0, 0, 0, ''),
(4, 1, 7, 20, 2, 0, 0, 0, ''),
(5, 2, 1, 15000, 1, 0, 0, 0, ''),
(6, 2, 4, 12599, 1, 0, 0, 0, ''),
(7, 3, 1, 15000, 1, 0, 0, 0, ''),
(8, 3, 2, 84000, 1, 0, 0, 0, ''),
(9, 4, 5, 350, 1, 0, 0, 0, ''),
(10, 5, 2, 84000, 1, 0, 0, 0, ''),
(11, 6, 6, 50, 10, 0, 0, 0, ''),
(12, 7, 8, 12000, 5, 0, 0, 0, ''),
(13, 7, 2, 84000, 2, 0, 0, 0, ''),
(14, 8, 4, 12599, 10, 0, 0, 0, ''),
(15, 8, 9, 400, 2, 0, 0, 0, ''),
(16, 9, 4, 12599, 10, 0, 0, 0, ''),
(17, 10, 2, 84000, 10, 0, 0, 0, ''),
(18, 11, 2, 84000, 10, 0, 0, 0, ''),
(19, 12, 8, 12000, 5, 0, 0, 0, ''),
(20, 13, 4, 12599, 5, 0, 0, 0, ''),
(21, 13, 12, 1000, 3, 0, 0, 0, ''),
(22, 14, 4, 12599, 1, 0, 0, 0, ''),
(23, 15, 16, 1800, 10, 0, 0, 0, ''),
(24, 15, 17, 1400, 5, 0, 0, 0, ''),
(25, 16, 16, 1800, 10, 0, 0, 0, ''),
(26, 17, 6, 50, 2, 0, 0, 0, ''),
(27, 18, 6, 50, 5, 0, 0, 0, ''),
(28, 19, 6, 50, 3, 0, 0, 0, ''),
(29, 20, 9, 400, 1, 0, 0, 0, ''),
(30, 21, 9, 400, 1, 0, 0, 0, ''),
(31, 21, 2, 84000, 1, 0, 0, 0, ''),
(32, 22, 2, 84000, 10, 0, 0, 0, ''),
(33, 23, 2, 84000, 2, 5000, 0, 0, ''),
(34, 24, 9, 400, 1, 270, 0, 0, ''),
(35, 25, 9, 400, 2, 100, 0, 0, ''),
(36, 25, 17, 1400, 2, 800, 0, 0, ''),
(37, 35, 2, 84000, 2, 8000, 6000, 154000, ''),
(38, 36, 4, 12599, 1, 100, 5000, 7499, ''),
(39, 37, 18, 800, 2, 600, 20, 980, ''),
(40, 37, 9, 400, 1, 20, 50, 330, ''),
(41, 38, 6, 50, 2, 69, 20, 11, ''),
(42, 39, 17, 1400, 2, 800, 1000, 1000, ''),
(43, 40, 2, 84000, 1, 4000, 50000, 30000, ''),
(44, 41, 9, 400, 1, 50, 300, 50, ''),
(45, 43, 9, 400, 1, 50, 50, 300, 'Piece'),
(46, 44, 9, 400, 20, 500, 500, 7000, 'Set'),
(47, 45, 19, 1000, 2, 100, 1000, 900, 'Set'),
(48, 46, 9, 400, 5, 1000, 500, 500, 'Piece'),
(49, 47, 9, 400, 1, 50, 300, 50, 'Piece'),
(50, 48, 22, 750, 90, 0, 67000, 500, 'Piece'),
(51, 49, 23, 500, 2, 200, 500, 300, 'Piece'),
(52, 49, 24, 800, 2, 600, 500, 500, 'Piece'),
(53, 49, 9, 400, 20, 0, 8000, 0, 'Piece'),
(54, 49, 22, 750, 10, 0, 7500, 0, 'Piece'),
(55, 50, 23, 500, 12, 500, 2500, 3000, 'Piece'),
(56, 51, 29, 2600, 1, 600, 1000, 1000, 'Piece'),
(57, 52, 21, 750, 1, 500, 250, 0, 'Piece'),
(58, 52, 30, 560, 1, 60, 50, 450, 'Piece'),
(59, 53, 29, 2600, 1, 600, 1000, 1000, 'Piece'),
(60, 54, 29, 2600, 10, 50, 50, 25900, 'Piece'),
(61, 54, 30, 560, 100, 6000, 10000, 40000, 'Piece'),
(62, 55, 9, 400, 1, 1, 399, 0, 'Piece'),
(63, 56, 9, 400, 1, 399, 1, 0, 'Piece'),
(64, 57, 26, 800, 1, 100, 500, 200, 'Piece'),
(65, 58, 26, 800, 1, 100, 400, 300, 'Piece'),
(66, 59, 28, 869, 1, 0, 9, 860, 'Piece'),
(67, 60, 30, 560, 1, 60, 500, 0, 'Piece'),
(68, 61, 30, 560, 1, 60, 250, 250, 'Piece'),
(69, 62, 27, 800, 1, 200, 500, 100, 'Piece'),
(70, 63, 28, 869, 1, 69, 100, 700, 'Piece'),
(71, 64, 25, 1500, 1, 300, 200, 1000, 'Piece'),
(72, 65, 27, 800, 1, 50, 50, 700, 'Piece'),
(73, 66, 9, 400, 4, 600, 1000, 0, 'Piece'),
(74, 67, 9, 400, 50, 50, 50, 19900, 'Piece'),
(75, 68, 20, 15000, 2, 3000, 1000, 26000, 'Piece'),
(76, 69, 24, 800, 5, 50, 50, 3900, 'Piece'),
(77, 70, 24, 800, 5, 100, 500, 3400, 'Piece'),
(78, 71, 23, 500, 1, 50, 50, 400, 'Piece'),
(79, 73, 29, 2600, 5, 1000, 200, 11800, 'Piece'),
(80, 75, 29, 2600, 2, 200, 4000, 1000, 'Piece'),
(81, 76, 9, 400, 1, 350, 10, 40, 'Piece'),
(82, 83, 20, 15000, 2, 100, 1000, 28900, 'Piece'),
(83, 84, 27, 800, 3, 20, 200, 2180, 'Piece'),
(84, 85, 29, 2600, 6, 20, 20, 15560, 'Piece'),
(85, 86, 9, 400, 3, 100, 110, 990, 'Piece'),
(86, 86, 20, 15000, 4, 200, 0, 59800, 'Piece'),
(87, 87, 9, 400, 3, 100, 100, 1000, 'Piece'),
(88, 87, 20, 15000, 4, 100, 200, 59700, 'Piece'),
(89, 88, 9, 400, 4, 100, 100, 1400, 'Piece'),
(90, 88, 20, 15000, 1, 100, 100, 14800, 'Piece'),
(91, 89, 9, 400, 8, 100, 100, 3000, 'Piece'),
(92, 90, 20, 15000, 1, 100, 100, 14800, 'Piece'),
(93, 94, 30, 560, 1, 500, 200, -140, 'Piece'),
(94, 95, 9, 400, 2, 50, 100, 650, 'Piece'),
(95, 96, 9, 400, 2, 40, 60, 700, 'Piece'),
(96, 97, 20, 15000, 1, 500, 100, 14400, 'Piece'),
(97, 98, 22, 750, 3, 0, 2250, 0, 'Piece'),
(98, 101, 23, 500, 4, 900, 1100, 0, 'Piece'),
(99, 102, 22, 750, 1, 200, 550, 0, 'Piece'),
(100, 103, 21, 750, 1, 5, 33, 712, 'Set'),
(101, 104, 28, 869, 1, 34, 145, 690, 'Piece'),
(102, 105, 28, 869, 5, 3345, 1000, 0, 'Piece'),
(103, 106, 23, 500, 1, 20, 480, 0, 'Piece'),
(104, 108, 21, 750, 2, 1100, 20, 380, 'Piece'),
(105, 109, 37, 600, 10, 500, 5000, 500, 'Piece'),
(106, 110, 22, 750, 10, 5600, 1500, 400, 'Piece'),
(107, 111, 38, 550, 65, 7500, 28000, 250, 'Piece'),
(108, 112, 39, 900, 7, 500, 5800, 0, 'Piece'),
(109, 113, 39, 900, 40, 10000, 5000, 21000, 'Piece'),
(110, 114, 38, 550, 5, 750, 2000, 0, 'Piece');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=visible,1=hidden',
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `memo_id` varchar(45) NOT NULL,
  `unit` varchar(45) NOT NULL,
  `purchaseRate` double NOT NULL,
  `minimum_sale_rate` double NOT NULL,
  `supplier_name` varchar(45) NOT NULL,
  `advance` double NOT NULL,
  `due` double NOT NULL,
  `paid` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `price`, `quantity`, `image`, `status`, `created_at`, `memo_id`, `unit`, `purchaseRate`, `minimum_sale_rate`, `supplier_name`, `advance`, `due`, `paid`, `total`) VALUES
(21, 5, 'China Silk', 'Ordered by Saiful', 750, 844, 'assets/uploads/products/1733990933.jpg', 0, '2024-12-06', '5001', '0', 550, 0, 'Ifti Fabrics', 0, 0, 0, 0),
(22, 5, 'China Silk', 'Ordered by Saiful', 750, 76, '', 1, '2024-12-06', '5001', '0', 0, 0, 'Ifti Fabrics', 0, 0, 0, 0),
(23, 4, 'pillow-pice', '', 500, 194, '', 0, '2024-12-06', '50018', '0', 0, 0, 'Apollo', 0, 0, 0, 0),
(24, 4, 'pillow-set', '1 set =5p', 800, 180, '', 0, '2024-12-06', '50032', 'set', 700, 750, 'Apollo', 0, 0, 0, 0),
(25, 4, 'Pillow- pieces', '', 1500, 499, '', 0, '2024-12-07', '5006', '', 500, 1100, 'PP', 0, 0, 0, 0),
(26, 4, 'keyboard-piece', '', 800, 5, '', 0, '2024-12-07', '2669', '', 500, 750, 'Pc gardern', 0, 0, 0, 0),
(27, 4, 'mouse -pieces', '', 800, 44, '', 0, '2024-12-07', '50096', 'Piece', 500, 750, 'Pc gardern', 0, 0, 0, 0),
(28, 0, 'mouse', '', 869, 84, '', 0, '2024-12-07', '26966', 'Set', 550, 826, 'Apollo', 0, 0, 0, 0),
(29, 4, 'test-26', '', 2600, 4, '', 0, '2024-12-07', '12326', 'Piece', 0, 0, 'MU', 0, 0, 0, 0),
(30, 4, 'test-26 (set)', '', 560, 4, '', 0, '2024-12-07', '5001568', 'Set', 500, 520, 'Mu', 0, 0, 0, 0),
(31, 4, 'China Silk', 'Ordered by saiful', 650, 60, '', 0, '2024-12-08', '2001', '', 550, 630, 'Ifti Fabrics', 0, 0, 0, 0),
(32, 4, 'btest', '', 800, 5, '', 0, '2024-12-11', '5001', '', 500, 3, 'Apollo', 0, 0, 0, 0),
(33, 4, 'yo', '', 2000, 10, '', 0, '2024-12-11', '5001', '', 500, 700, 'PP', 0, 0, 0, 0),
(36, 5, 'stok', '', 4000, 200, '', 0, '2024-12-11', '5001', '', 500, 20, 'PP', 0, 0, 0, 0),
(37, 4, 'stockIn2', '', 600, 40, '', 0, '2024-12-11', '50016', '', 500, 400, 'PP', 0, 0, 0, 50),
(38, 8, 'silk Shining', 'Ordered by sohel', 550, 110, '', 0, '2024-12-12', '120', '', 400, 470, 'ifti', 0, 0, 0, 180),
(39, 9, 'Hoodie', 'Very nice hoodie', 900, 4, '', 0, '2024-12-12', '5000069', '', 1200, 0, 'KillerBrand', 0, 0, 0, 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`expenses_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `expenses_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
