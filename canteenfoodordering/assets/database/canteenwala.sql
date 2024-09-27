-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306
-- Generation Time: Apr 27, 2023 at 08:38 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `canteenwala`
--

-- --------------------------------------------------------

--
-- Table structure for table `combo`
--

CREATE TABLE `combo` (
  `combo_id` varchar(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `price` float NOT NULL,
  `food_id` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `time_required` time NOT NULL,
  `img_id` int(11) NOT NULL,
  `image` varchar(45) NOT NULL,
  `visible` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `combo`
--

INSERT INTO `combo` (`combo_id`, `name`, `price`, `food_id`, `quantity`, `time_required`, `img_id`, `image`, `visible`) VALUES
('C1', 'Refreshment', 20, 'a:2:{i:0;s:3:\"Tea\";i:1;s:12:\"Bread Butter\";}', 0, '00:00:05', 21, '', 1),
('C2', 'Chinese platter 1', 100, 'a:2:{i:0;s:19:\"Manchurian dry Half\";i:1;s:15:\"Fried Rice Half\";}', 0, '00:00:05', 23, '', 0),
('C3', 'Chinese platter 2', 100, 'a:2:{i:0;s:15:\"Fried Rice Half\";i:1;s:18:\"Hakka Noodles Half\";}', 0, '00:00:05', 24, '', 0),
('C4', 'Chaat', 40, 'a:2:{i:0;s:7:\"SevPuri\";i:1;s:10:\"Geela Bhel\";}', 0, '00:00:05', 25, '', 0),
('C5', 'Upvas Special', 90, 'a:3:{i:0;s:13:\"Sabudana Vada\";i:1;s:13:\"Potato Finger\";i:2;s:16:\"Sabudana Khichdi\";}', 0, '00:00:05', 26, '', 0),
('C6', 'South Indian Special', 60, 'a:2:{i:0;s:11:\"Masala Dosa\";i:1;s:13:\"Onion Uttappa\";}', 0, '00:00:05', 27, '', 0),
('C7', 'Monsoon Special', 20, 'a:2:{i:0;s:8:\"Tea Full\";i:1;s:8:\"Vada Pav\";}', 0, '00:00:05', 28, '', 0),
('C8', 'Fast Special', 80, 'a:2:{i:0;s:13:\"Sabudana Vada\";i:1;s:17:\"Sabudana Khichadi\";}', 0, '00:00:05', 29, '', 0),
('C9', 'Morning Special', 40, 'a:4:{i:0;s:8:\"Tea Full\";i:1;s:8:\"Vada Pav\";i:2;s:13:\"Bread Patties\";i:3;s:11:\"Only Samosa\";}', 0, '00:00:05', 30, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `food_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(45) NOT NULL,
  `quantity` int(11) NOT NULL,
  `img_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`food_id`, `name`, `price`, `category`, `quantity`, `img_id`, `image`, `visible`, `time`) VALUES
(1, 'Tea Full', 10, 'Tea', 10, 1, '', 1, '00:00:05'),
(2, 'Black Tea with Lemon', 10, 'Tea', 40, 2, 'black', 1, '00:00:05'),
(3, 'Coffee', 15, 'Coffee', 0, 3, 'coffee.jpg', 1, '00:00:05'),
(4, 'Only Vada', 10, 'Snacks', 0, 4, 'vada.jpg', 1, '00:00:05'),
(5, 'Vada Pav', 12, 'Snacks', 0, 5, 'vada pav.jpg', 1, '00:00:05'),
(6, 'Only Samosa', 12, 'Snacks', 0, 6, 'samosa.jpg', 1, '00:00:05'),
(7, 'Samosa Pav', 15, 'Snacks', 0, 7, 'samosa pav.jpg', 1, '00:00:05'),
(8, 'Bread Patties', 15, 'Snacks', 0, 8, 'bread patties.jpg', 1, '00:00:05'),
(9, 'Kanda Poha With Sev', 20, 'Snacks', 0, 9, 'poha.jpg', 1, '00:00:05'),
(10, 'Upama With Coconut', 20, 'Snacks', 0, 10, '0', 1, '00:00:00'),
(11, 'Poha Missal', 25, 'Snacks', 0, 11, '0', 1, '00:00:00'),
(12, 'Missal Pav', 40, 'Snacks', 0, 12, '0', 0, '00:00:00'),
(13, 'Vada Missal Pav', 50, 'Snacks', 0, 13, '0', 0, '00:00:00'),
(14, 'Idaly 2 Pc', 25, 'South Indian', 0, 14, '0', 0, '00:00:00'),
(15, 'Idaly Vada', 25, 'South Indian', 0, 15, '0', 0, '00:00:00'),
(16, 'Menduvada 2 Pc', 30, 'South Indian', 0, 16, '0', 0, '00:00:00'),
(17, 'Sada dosa ', 30, 'South Indian', 0, 17, '0', 0, '00:00:00'),
(18, 'Masala Dosa', 40, 'South Indian', 0, 18, '0', 1, '00:00:00'),
(19, 'Mysore Sada Dosa', 40, 'South Indian', 0, 19, '0', 0, '00:00:00'),
(20, 'Mysore Masala Dosa', 50, 'South Indian', 0, 20, '0', 0, '00:00:00'),
(21, 'Sada Uttappa', 30, 'South Indian', 0, 21, '0', 0, '00:00:00'),
(22, 'Tomato Uttappa', 40, 'South Indian', 0, 22, '0', 0, '00:00:00'),
(23, 'Onion Uttappa', 40, 'South Indian', 0, 23, '0', 0, '00:00:00'),
(24, 'Tomato Onion Uttappa', 40, 'South Indian', 0, 24, '0', 0, '00:00:00'),
(25, 'Dahi Vada', 35, 'South Indian', 0, 25, '0', 0, '00:00:00'),
(26, 'Bread Butter', 15, 'Sandwich', 0, 26, '0', 0, '00:00:00'),
(27, 'Bread Butter Jam', 20, 'Sandwich', 0, 27, '0', 1, '00:00:00'),
(28, 'Veg Sada Sandwich', 25, 'Sandwich', 0, 28, '0', 0, '00:00:00'),
(29, 'Veg Toast Sandwich', 30, 'Sandwich', 0, 29, '0', 0, '00:00:00'),
(30, 'Veg Mayo Toast', 35, 'Sandwich', 0, 30, '0', 0, '00:00:00'),
(31, 'Veg Cheese Toast', 40, 'Sandwich', 0, 31, '0', 0, '00:00:00'),
(32, 'Veg Mayo Cheese Toast', 45, 'Sandwich', 0, 32, '0', 0, '00:00:00'),
(33, 'Mix Chilly Toast', 50, 'Sandwich', 0, 33, '0', 0, '00:00:00'),
(34, 'Veg Grill', 60, 'Jambo Grill', 0, 34, '0', 0, '00:00:00'),
(35, 'Veg Mayo Grill', 70, 'Jambo Grill', 0, 35, '0', 0, '00:00:00'),
(36, 'Veg Cheese Grill', 80, 'Jambo Grill', 0, 36, '0', 0, '00:00:00'),
(37, 'Veg Mayo Cheese Grill', 90, 'Jambo Grill', 0, 37, '0', 0, '00:00:00'),
(38, 'Mix Chilly Grill', 100, 'Jambo Grill', 0, 38, '0', 0, '00:00:00'),
(39, 'Sabudana Vada 2 PCS', 30, 'Fasting', 0, 39, '0', 0, '00:00:00'),
(40, 'Potato Finger', 50, 'Fasting', 0, 40, '0', 0, '00:00:00'),
(41, 'Sabudana Khichadi', 30, 'Fasting', 0, 41, '0', 0, '00:00:00'),
(42, '1 Sabji 3 Roti', 60, 'Lunch', 0, 42, '0', 0, '00:00:00'),
(43, '5 Puri Dalrice Chhach', 60, 'Lunch', 0, 43, '0', 0, '00:00:00'),
(44, 'Masala Chhach', 12, 'Lunch', 0, 44, '0', 0, '00:00:00'),
(45, 'Lassi', 25, 'Lunch', 0, 45, '0', 0, '00:00:00'),
(46, 'Regular Dal', 15, 'Lunch', 0, 46, '0', 0, '00:00:00'),
(47, 'Dal Tadka', 25, 'Lunch', 0, 47, '0', 0, '00:00:00'),
(48, 'Dal Khichdi Tadka', 70, 'Lunch', 0, 48, '0', 0, '00:00:00'),
(49, 'Dal Khichdi Tadka', 80, 'Lunch', 0, 49, '0', 0, '00:00:00'),
(50, 'Lunch Bhaji', 20, 'Lunch', 0, 50, '0', 0, '00:00:00'),
(51, 'Puri Bhaji', 35, 'Lunch', 0, 51, '0', 0, '00:00:00'),
(52, 'SevPuri', 25, 'Chat', 0, 52, '0', 0, '00:00:00'),
(53, 'Masala Puri', 20, 'Chat', 0, 53, '0', 0, '00:00:00'),
(54, 'Sukha Bhel', 25, 'Chat', 0, 54, '0', 0, '00:00:00'),
(55, 'Geela Bhel', 25, 'Chat', 0, 55, '0', 0, '00:00:00'),
(56, 'Dahi Puri', 35, 'Chat', 0, 56, '0', 0, '00:00:00'),
(57, 'Butter Dabeli', 15, 'Chat', 0, 57, '0', 0, '00:00:00'),
(58, 'Samosa Chat', 30, 'Chat', 0, 58, '0', 0, '00:00:00'),
(59, 'Bread Pattice Chat', 30, 'Chat', 0, 59, '0', 0, '00:00:00'),
(60, 'Chinese Bhaji 10 PC', 25, 'Chat', 0, 60, '0', 0, '00:00:00'),
(61, 'Chinese Bhel Hot', 40, 'Chat', 0, 61, '0', 0, '00:00:00'),
(62, 'Chinese Bhel Cool', 25, 'Chat', 0, 62, '0', 0, '00:00:00'),
(63, 'Sada Paratha with Butter', 20, 'Paratha', 0, 118, '', 0, '00:00:00'),
(64, 'Aloo Paratha with Butter', 30, 'Paratha', 0, 119, '', 0, '00:00:00'),
(65, 'Gobi Paratha with Butter', 35, 'Paratha', 0, 120, '', 0, '00:00:00'),
(66, 'Aloo Gobhi Paratha with Butter', 40, 'Paratha', 0, 121, '', 0, '00:00:00'),
(67, 'Onion Paratha with Butter', 30, 'Paratha', 0, 122, '', 0, '00:00:00'),
(68, 'Methi Paratha with Butter', 30, 'Paratha', 0, 123, '', 0, '00:00:00'),
(69, 'Pavbhaji', 60, 'Special', 0, 124, '', 0, '00:00:00'),
(70, 'Masala Pav', 45, 'Special', 0, 125, '', 0, '00:00:00'),
(71, 'Masala Cheese Pav', 55, 'Special', 0, 126, '', 0, '00:00:00'),
(72, 'Masala Rice', 70, 'Special', 0, 127, '', 0, '00:00:00'),
(73, 'Chhola Puri', 35, 'Special', 0, 128, '', 0, '00:00:00'),
(74, 'Masala Papad', 20, 'Special', 0, 129, '', 0, '00:00:00'),
(75, 'Paneer Chilly 10 PCS', 110, 'Starter', 0, 130, '', 0, '00:00:00'),
(76, 'Paneer Crispy', 110, 'Starter', 0, 131, '', 0, '00:00:00'),
(77, 'Veg Crispy', 90, 'Starter', 0, 132, '', 0, '00:00:00'),
(78, 'Manchurian Dry Full 10 PC', 90, 'Starter', 0, 133, '', 0, '00:00:00'),
(79, 'Manchurian Gravy Full 10 PC', 90, 'Starter', 0, 134, '', 0, '00:00:00'),
(80, 'Manchurian Dry Half 6 PC', 55, 'Starter', 0, 135, '', 0, '00:00:00'),
(81, 'Manchurian Gravy Half 6 PC', 55, 'Starter', 0, 136, '', 0, '00:00:00'),
(82, 'Manchow Soup', 25, 'Starter', 0, 137, '', 0, '00:00:00'),
(83, 'Regular Rice', 20, 'Rice', 0, 138, '', 0, '00:00:00'),
(84, 'Jeera Rice', 30, 'Rice', 0, 139, '', 0, '00:00:00'),
(85, 'Fried Rice Full', 80, 'Rice', 0, 140, '', 0, '00:00:00'),
(86, 'Fried Rice Half', 50, 'Rice', 0, 141, '', 0, '00:00:00'),
(87, 'Schezwan Rice Full', 90, 'Rice', 0, 142, '', 0, '00:00:00'),
(88, 'Schezwan Rice Half', 55, 'Rice', 0, 143, '', 0, '00:00:00'),
(89, 'Manchurian Rice With Gravy Full', 100, 'Rice', 0, 144, '', 0, '00:00:00'),
(90, 'Manchurian Rice With Gravy Half', 60, 'Rice', 0, 145, '', 0, '00:00:00'),
(91, 'Triple Rice With Schezwan Gravy Full', 110, 'Rice', 0, 146, '', 0, '00:00:00'),
(92, 'Triple Rice With Schezwan Gravy Half', 70, 'Rice', 0, 147, '', 0, '00:00:00'),
(93, 'Hakka Noodles Full', 80, 'Noodle', 0, 148, '', 0, '00:00:00'),
(94, 'Hakka Noodles Half', 50, 'Noodle', 0, 149, '', 0, '00:00:00'),
(95, 'Schezwan Noodles Full', 90, 'Noodle', 0, 150, '', 0, '00:00:00'),
(96, 'Shezwan Noodles Half', 55, 'Noodle', 0, 151, '', 0, '00:00:00'),
(97, 'Triple Noodles Full', 110, 'Noodle', 0, 152, '', 0, '00:00:00'),
(98, 'Triple Noodles Half', 70, 'Noodle', 0, 153, '', 0, '00:00:00'),
(99, 'Manchurian Noodles Full', 100, 'Noodle', 0, 154, '', 0, '00:00:00'),
(100, 'Manchurian Noodles Half', 60, 'Noodle', 0, 155, '', 0, '00:00:00'),
(101, 'Nimbu Pani', 15, 'Shakes', 0, 156, '', 0, '00:00:00'),
(102, 'Pudina Nimbu Pani', 20, 'Shakes', 0, 157, '', 0, '00:00:00'),
(103, 'Rose Shake', 30, 'Shakes', 0, 158, '', 0, '00:00:00'),
(104, 'Strawberry Shake', 30, 'Shakes', 0, 159, '', 0, '00:00:00'),
(105, 'Pineapple Shake', 30, 'Shakes', 0, 160, '', 0, '00:00:00'),
(106, 'Chocolate Shake', 40, 'Shakes', 0, 161, '', 0, '00:00:00'),
(107, 'Cold Coffe', 40, 'Shakes', 0, 162, '', 0, '00:00:00'),
(108, 'Papad 1 PCS', 5, 'Extra', 0, 163, '', 0, '00:00:00'),
(109, 'Schezwan Chatni', 10, 'Extra', 0, 164, '', 0, '00:00:00'),
(110, 'Coconut Chatni', 5, 'Extra', 0, 165, '', 0, '00:00:00'),
(111, 'Chapati 1 PC', 7, 'Extra', 0, 166, '', 0, '00:00:00'),
(112, 'Puri 1 PCS', 4, 'Extra', 0, 167, '', 0, '00:00:00'),
(113, 'Butter Dabeli', 10, 'Extra', 0, 168, '', 0, '00:00:00'),
(114, 'Cheese', 20, 'Extra', 0, 169, '', 0, '00:00:00'),
(115, 'Burger', 30, 'opt 1', 5, 170, '0', 0, '00:00:00'),
(116, 'test', 50, 'opt 1', 50, 171, 'img_2023_04_27_21_21_53_8183.png', 0, '00:00:00'),
(117, 'Sample', 88, 'Sample', 8, 172, '', 0, '00:00:00'),
(118, 'sample', 55, 'sample3', 8, 173, 'img_2023_04_27_21_27_31_1826.png', 1, '00:00:00'),
(119, 'Tea Full', 10, 'Tea', 10, 174, '', 0, '00:00:00'),
(120, 'Tea Full', 10, 'Tea', 10, 175, '', 0, '00:00:00'),
(121, 'Tea Full', 10, 'Tea', 10, 176, '', 0, '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `order_today`
--

CREATE TABLE `order_today` (
  `Order_id` varchar(45) NOT NULL,
  `food` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `combo` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `status` int(1) NOT NULL,
  `user_id` varchar(45) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_today`
--

INSERT INTO `order_today` (`Order_id`, `food`, `combo`, `status`, `user_id`, `time`, `cost`) VALUES
('', '', '', 2, '20102164', '2023-03-16 14:28:38', 20),
('AP1178', 'a:0:{}', 'a:1:{s:11:\"Refreshment\";i:2;}', 2, '20102164', '2023-04-03 16:18:45', 40),
('AP1366', '', '', 3, '20102179', '2022-10-13 17:11:47', 12),
('AP1400', '', '', 3, '20102047', '2022-10-13 17:07:07', 125),
('AP1554', 'a:1:{s:11:\"Masala Dosa\";i:1;}', 'a:0:{}', 2, '20102164', '2023-03-16 16:30:08', 40),
('AP1633', '', '', 2, '20102164', '2022-10-13 18:54:50', 70),
('AP1829', 'a:2:{s:19:\"Kanda Poha With Sev\";i:1;s:6:\"Coffee\";i:1;}', 'a:1:{s:11:\"Refreshment\";i:1;}', 2, '20102164', '2023-03-16 16:04:47', 55),
('AP1926', 'a:2:{s:8:\"Tea Full\";i:2;s:8:\"Vada Pav\";i:2;}', 'a:1:{s:17:\"Chinese platter 2\";i:2;}', 0, '20102164', '2023-03-17 08:08:04', 244),
('AP1930', 'a:2:{s:20:\"Black Tea with Lemon\";i:1;s:8:\"Tea Full\";i:2;}', 'a:0:{}', 2, '20102164', '2023-04-03 14:57:00', 30),
('AP1979', '', '', 2, '20102164', '2022-10-13 17:17:43', 40),
('AP2070', 'a:0:{}', 'a:1:{s:11:\"Refreshment\";i:2;}', 0, '20102164', '2023-03-17 08:08:40', 40),
('AP2146', 'a:0:{}', 'a:0:{}', 2, '20102164', '2023-03-16 15:22:50', 62),
('AP2148', 'a:3:{s:8:\"Tea Full\";i:1;s:8:\"Vada Pav\";i:1;s:11:\"Only Samosa\";i:1;}', 'a:1:{s:11:\"Refreshment\";i:1;}', 2, '20102164', '2023-03-16 16:11:14', 54),
('AP2225', 'a:3:{s:8:\"Tea Full\";i:1;s:20:\"Black Tea with Lemon\";i:1;s:9:\"Only Vada\";i:1;}', 'a:0:{}', 2, '20102164', '2023-03-30 18:06:21', 30),
('AP2317', 's:57:\"a:2:{s:8:\"Tea Full\";i:1;s:20:\"Black Tea with Lemon\";i:1;}\";', 'a:0:{}', 3, '20102164', '2023-03-28 17:28:15', 20),
('AP2408', '', '', 2, '20102164', '2022-10-13 17:25:38', 10),
('AP2456', '', '', 3, '20102164', '2022-10-13 17:07:21', 0),
('AP2476', 'a:0:{}', 'a:0:{}', 2, '20102164', '2023-03-16 15:18:17', 35),
('AP2495', 'a:2:{s:8:\"Tea Full\";i:1;s:20:\"Black Tea with Lemon\";i:1;}', 'a:0:{}', 3, '20102164', '2023-03-28 17:47:47', 20),
('AP2526', 'a:2:{s:8:\"Tea Full\";i:1;s:20:\"Black Tea with Lemon\";i:1;}', 'a:0:{}', 1, '20102164', '2023-03-30 17:44:28', 20),
('AP286', 'a:3:{s:11:\"Poha Missal\";i:1;s:19:\"Kanda Poha With Sev\";i:1;s:11:\"Masala Dosa\";i:1;}', 'a:0:{}', 2, '20102164', '2023-03-16 16:11:35', 85),
('AP2868', '', '', 2, '20102164', '2022-10-12 18:52:53', 60),
('AP2887', '', '', 2, '20102164', '2022-10-14 04:43:46', 80),
('AP2946', 'a:3:{s:11:\"Masala Dosa\";i:1;s:8:\"Vada Pav\";i:1;s:19:\"Kanda Poha With Sev\";i:1;}', 'a:1:{s:11:\"Refreshment\";i:1;}', 2, '20102164', '2023-03-16 15:54:54', 92),
('AP3059', 'a:2:{s:8:\"Tea Full\";i:1;s:20:\"Black Tea with Lemon\";i:1;}', 'a:0:{}', 0, '20102164', '2023-03-28 17:08:57', 20),
('AP3087', 'a:3:{s:20:\"Black Tea with Lemon\";i:2;s:11:\"Only Samosa\";i:2;s:9:\"Only Vada\";i:1;}', 'a:0:{}', 2, '20102164', '2023-04-03 12:31:04', 54),
('AP331', 'a:1:{s:20:\"Black Tea with Lemon\";i:2;}', 'a:0:{}', 2, '20102164', '2023-04-03 13:52:44', 20),
('AP3406', 'a:3:{s:21:\" Black Tea With Lemon\";i:1;s:6:\"Coffee\";i:1;s:11:\"Only Samosa\";i:1;}', 'a:0:{}', 2, '20102118', '2023-03-17 10:05:06', 37),
('AP3534', 's:25:\"a:1:{s:8:\"Tea Full\";i:1;}\";', 'a:0:{}', 3, '20102164', '2023-03-28 17:27:45', 10),
('AP3673', 'a:3:{s:13:\"Bread Patties\";i:1;s:8:\"Tea Full\";i:3;s:6:\"Coffee\";i:2;}', 'a:0:{}', 2, '20102164', '2023-03-16 16:35:31', 75),
('AP3929', 'a:3:{s:8:\"Tea Full\";i:1;s:20:\"Black Tea with Lemon\";i:1;s:9:\"Only Vada\";i:1;}', 'a:0:{}', 1, '20102164', '2023-03-30 17:33:14', 30),
('AP3987', 'a:0:{}', 'a:1:{s:17:\"Chinese platter 2\";i:1;}', 2, '20102164', '2023-03-16 16:04:33', 100),
('AP4493', 'a:3:{s:8:\"Tea Full\";i:1;s:20:\"Black Tea with Lemon\";i:1;s:8:\"Vada Pav\";i:1;}', 'a:0:{}', 3, '20102164', '2023-03-30 17:24:53', 32),
('AP4644', '', '', 2, '20102164', '2022-10-14 16:00:41', 42),
('AP4782', 'a:3:{s:11:\"Poha Missal\";i:1;s:21:\" Black Tea With Lemon\";i:1;s:6:\"Coffee\";i:1;}', 'a:0:{}', 2, '20102164', '2023-03-16 16:04:25', 50),
('AP4905', '', '', 3, '20102164', '2022-10-13 17:26:57', 100),
('AP4912', 'a:1:{s:8:\"Tea Full\";i:1;}', 'a:0:{}', 1, '00000000', '2023-04-09 14:30:34', 10),
('AP5312', 'a:0:{}', 'a:1:{s:11:\"Refreshment\";i:2;}', 2, '20102164', '2023-04-03 16:20:09', 40),
('AP5524', 'a:1:{s:8:\"Tea Full\";i:3;}', 'a:0:{}', 2, '20102164', '2023-03-16 16:29:58', 30),
('AP5880', 'a:2:{s:18:\"Upama With Coconut\";i:2;s:11:\"Poha Missal\";i:2;}', 'a:1:{s:11:\"Refreshment\";i:1;}', 2, '20102164', '2023-03-17 05:35:29', 110),
('AP5906', 'a:0:{}', 'a:1:{s:11:\"Refreshment\";i:2;}', 2, '20102164', '2023-04-03 16:18:31', 40),
('AP6158', 'a:1:{s:20:\"Black Tea with Lemon\";i:1;}', 'a:0:{}', 3, '20102164', '2023-03-28 17:15:59', 30),
('AP6248', 'a:0:{}', 'a:1:{s:17:\"Chinese platter 2\";i:1;}', 2, '20102164', '2023-03-16 16:11:22', 100),
('AP6297', 'a:1:{s:20:\"Black Tea with Lemon\";i:1;}', 'a:0:{}', 3, '20102164', '2023-03-28 18:01:10', 10),
('AP6747', 'a:3:{s:6:\"Coffee\";i:1;s:20:\"Black Tea with Lemon\";i:1;s:11:\"Only Samosa\";i:1;}', 'a:0:{}', 2, '20102164', '2023-04-03 14:07:55', 37),
('AP7181', 'a:2:{s:8:\"Tea Full\";i:1;s:21:\" Black Tea With Lemon\";i:1;}', 'a:0:{}', 0, '20102118', '2023-03-17 08:57:33', 20),
('AP7228', '', '', 2, '20102164', '2023-03-16 14:33:38', 100),
('AP7521', 'a:2:{s:20:\"Black Tea with Lemon\";i:1;s:8:\"Tea Full\";i:1;}', 'a:0:{}', 2, '20102164', '2023-04-03 16:20:42', 20),
('AP764', 'a:0:{}', 'a:1:{s:17:\"Chinese platter 2\";i:1;}', 2, '20102164', '2023-03-16 15:55:03', 100),
('AP7788', 'a:1:{s:20:\"Black Tea with Lemon\";i:1;}', 'a:0:{}', 0, '20102164', '2023-03-28 17:11:03', 30),
('AP7825', 'a:1:{s:21:\" Black Tea With Lemon\";i:1;}', 'a:1:{s:11:\"Refreshment\";i:2;}', 2, '20102164', '2023-03-16 16:35:18', 50),
('AP7937', 'a:2:{s:13:\"Bread Patties\";i:1;s:8:\"Tea Full\";i:1;}', 'a:0:{}', 2, '20102164', '2023-03-16 15:55:15', 25),
('AP7954', 'a:1:{s:20:\"Black Tea with Lemon\";i:1;}', 'a:0:{}', 2, '20102164', '2023-04-03 14:05:27', 10),
('AP8100', 'a:2:{s:8:\"Tea Full\";i:2;s:21:\" Black Tea With Lemon\";i:2;}', 'a:1:{s:2:\"C1\";i:1;}', 2, '20102164', '2023-03-16 15:25:49', 60),
('AP8105', 'a:0:{}', 'a:1:{s:2:\"C1\";i:1;}', 2, '20102164', '2023-03-16 14:56:37', 55),
('AP8182', 'a:2:{s:11:\"Masala Dosa\";i:2;s:21:\" Black Tea With Lemon\";i:1;}', 'a:0:{}', 2, '20102164', '2023-03-17 08:08:58', 90),
('AP8197', 'a:2:{s:18:\"Upama With Coconut\";i:1;s:20:\"Black Tea with Lemon\";i:1;}', 'a:0:{}', 1, '20102164', '2023-03-28 17:48:33', 30),
('AP8217', 'a:0:{}', 'a:0:{}', 2, '20102164', '2023-03-30 18:55:04', 0),
('AP822', 'a:2:{s:6:\"Coffee\";i:2;s:11:\"Only Samosa\";i:2;}', 'a:0:{}', 2, '20102164', '2023-04-03 14:08:13', 54),
('AP8252', '', '', 2, '20102164', '2022-10-14 16:03:41', 40),
('AP8345', 'a:1:{s:20:\"Black Tea with Lemon\";i:1;}', 'a:0:{}', 0, '20102164', '2023-04-27 17:46:03', 10),
('AP8602', '', '', 2, '20102164', '2023-03-16 12:15:30', 84),
('AP8838', '', '', 3, '20102164', '2022-10-12 18:45:27', 30),
('AP888', 'a:1:{s:8:\"Tea Full\";i:1;}', 'a:0:{}', 1, '20102164', '2023-03-30 18:05:29', 10),
('AP8902', 'a:0:{}', 'a:1:{s:5:\"Chaat\";i:2;}', 2, '20102164', '2023-03-17 05:35:04', 80),
('AP9114', 'a:1:{s:20:\"Black Tea with Lemon\";i:1;}', 'a:0:{}', 2, '20102164', '2023-03-30 18:48:23', 10),
('AP9128', 'a:2:{s:20:\"Black Tea with Lemon\";i:1;s:8:\"Tea Full\";i:1;}', 'a:0:{}', 2, '20102164', '2023-03-30 18:04:37', 20),
('AP9477', 'a:1:{s:8:\"Tea Full\";i:1;}', 'a:0:{}', 3, '20102164', '2023-03-28 17:49:39', 10),
('AP9715', 'a:2:{s:8:\"Tea Full\";i:2;s:8:\"Vada Pav\";i:1;}', 'a:0:{}', 0, '20102164', '2023-03-17 05:34:51', 32),
('AP9937', 'a:1:{s:20:\"Black Tea with Lemon\";i:1;}', 'a:0:{}', 2, '20102164', '2023-04-03 14:07:04', 46);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_temp`
--

CREATE TABLE `password_reset_temp` (
  `email` varchar(250) NOT NULL,
  `onetimekey` varchar(250) NOT NULL,
  `expDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `password_reset_temp`
--

INSERT INTO `password_reset_temp` (`email`, `onetimekey`, `expDate`) VALUES
('2010164@apsit.edu.in', '2015000d3a4ef6c7c', '2023-03-14 21:22:15'),
('20102164@apsit.edu.in', '20107000f407b86c33', '2023-03-14 21:22:45'),
('20102164@apsit.edu.in', '201070001a803774c3', '2023-03-14 21:24:28'),
('20102164@apsit.edu.in', '20107000d0a9be1ba4', '2023-03-14 21:28:22'),
('20102164@apsit.edu.in', '2010700060c15efee3', '2023-03-14 21:30:14'),
('dsfkjhg@jdskaf.das', '48369800c47f11', '2023-03-18 13:25:18'),
('dsfkjhg@jdskaf.das', '48361738856ce4', '2023-03-18 13:25:21'),
('dcfvs@fd.bv', '4836853d152801', '2023-03-18 13:28:36'),
('20102164@apsit.edu.in', '2010700059d7ef5ccc', '2023-03-18 13:35:26'),
('20102164@apsit.edu.in', '201070006ba318d5a8', '2023-04-22 18:02:17'),
('20102164@apsit.edu.in', '201070004cda9330f0', '2023-04-22 18:05:53');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `item_id` varchar(20) NOT NULL,
  `item_name` varchar(200) NOT NULL,
  `category` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`item_id`, `item_name`, `category`, `price`, `quantity`, `time`) VALUES
('', ' Black Tea With Lemon', 'food', 0, 1, '2023-03-16'),
('', 'Refreshment', 'food', 0, 2, '2023-03-16'),
('10', 'Upama With Coconut', 'food', 20, 2, '2023-03-17'),
('11', 'Poha Missal', 'food', 25, 2, '2023-03-17'),
('', 'Refreshment', 'combo', 20, 1, '2023-03-17'),
('C4', 'Chaat', 'combo', 40, 2, '2023-03-17'),
('18', 'Masala Dosa', 'food', 40, 2, '2023-03-17'),
('2', ' Black Tea With Lemon', 'food', 10, 1, '2023-03-17'),
('2', ' Black Tea With Lemon', 'food', 10, 1, '2023-03-17'),
('3', 'Coffee', 'food', 15, 1, '2023-03-17'),
('6', 'Only Samosa', 'food', 12, 1, '2023-03-17');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_ID` varchar(45) NOT NULL,
  `email_id` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `contact` int(10) NOT NULL,
  `category` varchar(45) NOT NULL,
  `department` varchar(45) DEFAULT NULL,
  `first_login` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_ID`, `email_id`, `password`, `first_name`, `last_name`, `contact`, `category`, `department`, `first_login`) VALUES
('00000000', 'admin@gmail.com', 'canteenwala', '', '', 0, 'admin', NULL, 1),
('20102001', '20102001@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102002', '20102002@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102005', '20102005@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102007', '20102007@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102008', '20102008@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102009', '20102009@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102010', '20102010@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102011', '20102011@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102012', '20102012@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102014', '20102014@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102015', '20102015@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102016', '20102016@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102017', '20102017@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102018', '20102018@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102019', '20102019@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102020', '20102020@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102021', '20102021@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102022', '20102022@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102023', '20102023@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102024', '20102024@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102025', '20102025@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102026', '20102026@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102027', '20102027@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102028', '20102028@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102029', '20102029@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102030', '20102030@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102032', '20102032@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102033', '20102033@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102035', '20102035@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 1),
('20102036', '20102036@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102038', '20102038@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102040', '20102040@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102041', '20102041@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102042', '20102042@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102043', '20102043@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102044', '20102044@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102045', '20102045@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102046', '20102046@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102047', '20102047@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 1),
('20102048', '20102048@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102049', '20102049@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102050', '20102050@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102052', '20102052@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102053', '20102053@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102054', '20102054@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102056', '20102056@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102058', '20102058@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102059', '20102059@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102060', '20102060@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102061', '20102061@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102062', '20102062@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102063', '20102063@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102064', '20102064@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102065', '20102065@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102066', '20102066@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102067', '20102067@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102068', '20102068@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102069', '20102069@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102070', '20102070@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102071', '20102071@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102072', '20102072@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102073', '20102073@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102074', '20102074@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102075', '20102075@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102076', '20102076@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102077', '20102077@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102078', '20102078@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102079', '20102079@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102080', '20102080@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102081', '20102081@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102082', '20102082@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102083', '20102083@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102084', '20102084@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102085', '20102085@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102086', '20102086@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102087', '20102087@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102088', '20102088@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102089', '20102089@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102090', '20102090@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102091', '20102091@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102092', '20102092@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102093', '20102093@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102094', '20102094@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102095', '20102095@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102096', '20102096@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102098', '20102098@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102099', '20102099@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102100', '20102100@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102101', '20102101@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102102', '20102102@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102103', '20102103@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102105', '20102105@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102106', '20102106@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102107', '20102107@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102108', '20102108@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102109', '20102109@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102110', '20102110@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102111', '20102111@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102112', '20102112@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102113', '20102113@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102114', '20102114@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102115', '20102115@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102116', '20102116@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102117', '20102117@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102118', '20102118@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 1),
('20102119', '20102119@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102120', '20102120@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102121', '20102121@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102122', '20102122@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102123', '20102123@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102124', '20102124@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102125', '20102125@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102126', '20102126@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102127', '20102127@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102128', '20102128@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102129', '20102129@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102130', '20102130@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102131', '20102131@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102132', '20102132@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102133', '20102133@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102134', '20102134@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102135', '20102135@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102136', '20102136@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102137', '20102137@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102138', '20102138@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102139', '20102139@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102140', '20102140@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102141', '20102141@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102142', '20102142@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102143', '20102143@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102144', '20102144@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102145', '20102145@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102146', '20102146@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102147', '20102147@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102148', '20102148@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102149', '20102149@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102150', '20102150@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102151', '20102151@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102152', '20102152@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102153', '20102153@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102154', '20102154@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102155', '20102155@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102156', '20102156@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102157', '20102157@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102158', '20102158@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102159', '20102159@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102160', '20102160@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102161', '20102161@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102162', '20102162@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102163', '20102163@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102164', '20102164@apsit.edu.in', 'Me@20102164Apsit', 'Megha', 'Soni', 2147483647, 'Student', 'Computer', 1),
('20102165', '20102165@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102166', '20102166@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102167', '20102167@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102168', '20102168@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102169', '20102169@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102170', '20102170@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102171', '20102171@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102172', '20102172@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102173', '20102173@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102175', '20102175@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102176', '20102176@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102177', '20102177@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102179', '20102179@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 1),
('20102180', '20102180@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102181', '20102181@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102182', '20102182@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102183', '20102183@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102184', '20102184@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102185', '20102185@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102186', '20102186@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102187', '20102187@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102188', '20102188@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102189', '20102189@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102190', '20102190@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102191', '20102191@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102192', '20102192@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102193', '20102193@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102194', '20102194@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102195', '20102195@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102196', '20102196@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102197', '20102197@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102198', '20102198@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102199', '20102199@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102200', '20102200@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102202', '20102202@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102203', '20102203@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102204', '20102204@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('20102205', '20102205@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('21202001', '21202001@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('21202002', '21202002@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('21202003', '21202003@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('21202004', '21202004@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('21202005', '21202005@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('21202006', '21202006@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('21202007', '21202007@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('21202008', '21202008@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('21202009', '21202009@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('21202010', '21202010@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('21202011', '21202011@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('21202012', '21202012@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('21202013', '21202013@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('21202014', '21202014@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('21202015', '21202015@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('21202016', '21202016@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('21202017', '21202017@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0),
('21202018', '21202018@apsit.edu.in', 'canteen', '', '', 0, '', NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `order_today`
--
ALTER TABLE `order_today`
  ADD UNIQUE KEY `Order_id` (`Order_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
