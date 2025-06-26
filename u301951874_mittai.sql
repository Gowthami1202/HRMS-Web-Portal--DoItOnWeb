-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 23, 2025 at 03:19 AM
-- Server version: 10.11.10-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u301951874_mittai`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `parant_name` varchar(50) NOT NULL,
  `assignment_date` date NOT NULL,
  `work_description` varchar(500) NOT NULL,
  `deadline_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assign_staff`
--

CREATE TABLE `assign_staff` (
  `id` int(11) NOT NULL,
  `staff_id` int(10) NOT NULL,
  `class_id` int(10) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `assign_staff`
--

INSERT INTO `assign_staff` (`id`, `staff_id`, `class_id`, `subject`, `status`, `user_id`, `date`) VALUES
(1, 3, 1, 'Maths', 'class_teacher', 1, '2018-05-30'),
(2, 3, 2, '2', 'class', 1, '2018-05-30');

-- --------------------------------------------------------

--
-- Table structure for table `assign_time_tabil`
--

CREATE TABLE `assign_time_tabil` (
  `id` int(11) NOT NULL,
  `staff_id` int(10) DEFAULT NULL,
  `day_id` int(10) DEFAULT NULL,
  `subject_id` int(10) DEFAULT NULL,
  `period_id` varchar(11) DEFAULT NULL,
  `class_id` int(10) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assing_details`
--

CREATE TABLE `assing_details` (
  `id` int(11) NOT NULL,
  `class_name` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `staff_name` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `time_in` varchar(100) DEFAULT NULL,
  `time_out` varchar(100) DEFAULT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `time_in`, `time_out`, `user_id`, `date`) VALUES
(3, '02:47PM', NULL, '4', '2018-03-22'),
(4, '09:08PM', NULL, '3', '2018-06-26'),
(5, '10:51AM', NULL, '1', '2022-10-30'),
(6, '08:36AM', NULL, '1', '2022-12-02'),
(7, '09:49PM', NULL, '1', '2024-08-23');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(10) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `chat_message` varchar(500) DEFAULT NULL,
  `to_id` int(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `user_id`, `chat_message`, `to_id`, `date`) VALUES
(1, 1, 'hi', NULL, '2018-05-29 21:11:05'),
(2, 1, 'hi', NULL, '2018-06-15 00:04:38');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `standard` varchar(30) NOT NULL,
  `section_name` varchar(225) NOT NULL,
  `user_id` int(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `standard`, `section_name`, `user_id`, `date`) VALUES
(2, '2\'Std', 'A', 1, '2018-06-29'),
(3, '3\'STD', 'A', 1, '2018-06-29'),
(4, '4\'STD', 'A', 1, '2018-06-29'),
(5, '5\'STD', 'A', 1, '2018-06-29'),
(7, '6\'STD', 'A', 1, '2018-06-29'),
(8, '1\'std', 'B', 1, '2018-07-21'),
(9, '1std', 'B', 1, '2018-07-21'),
(10, '3\'STD', '1', 18, '0000-00-00'),
(11, '1std', '1', 18, '0000-00-00'),
(12, '1std', '1', 18, '0000-00-00'),
(13, '2\'Std', '1', 18, '0000-00-00'),
(14, '5\'STD', '1', 18, '0000-00-00'),
(15, '8 std', '1', 18, '0000-00-00'),
(16, '2\'Std', '1', 18, '0000-00-00'),
(17, 'retretretre', '1', 18, '0000-00-00'),
(18, 'retretretre', '1', 18, '0000-00-00'),
(19, 'feew', '1', 18, '0000-00-00'),
(20, '3\'STD', 'gfdgfd', 1, '2018-07-24'),
(21, '5\'STD', 'B', 1, '2018-07-24'),
(22, 'hi1', 'hi2', 1, '2018-07-24');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(225) NOT NULL,
  `customer_type` varchar(225) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `customer_address` longtext NOT NULL,
  `number` varchar(225) NOT NULL,
  `tin_no` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `customer_type`, `created_date`, `modified_date`, `customer_address`, `number`, `tin_no`) VALUES
(4, 'ANANDA STORE', 'RETAIL', '2022-11-08 00:00:00', '2022-10-31 03:33:43', 'CHROMPET', '9176334200', '33AHYPM7663C1ZX'),
(5, 'VVMART', 'RETAIL', '2022-11-04 00:00:00', '2022-11-04 03:26:46', 'Sembakkam', '8939093337', '33ABXPJ7672F2Z5'),
(6, 'CHROME FRESH super market', 'RETAIL', '2022-11-08 00:00:00', '2022-11-08 07:01:35', 'Chrompet', '044 35005511', '33AALFC6603N1ZA'),
(7, 'VS HYPER super market', 'RETAIL', '2022-11-08 00:00:00', '2022-11-08 07:05:21', 'Nanganallur', '044 22244455', '33AAMFV0840R1ZN'),
(8, 'VV MART', 'RETAIL', '2022-11-08 00:00:00', '2022-11-08 07:14:24', 'Nanganallur', '7200773337', '33ABXPJ7672F2Z5'),
(9, 'TNS PROVISION store', 'RETAIL', '2022-11-08 00:00:00', '2022-11-08 07:20:52', 'Chrompet', '6381741908', 'nil'),
(10, 'MY CHOICE super market', 'RETAIL', '2022-11-08 00:00:00', '2022-11-08 07:25:22', 'Thoraipakkam', '7667055841', 'nil'),
(11, 'NEW MYCHOICE Super market', 'RETAIL', '2022-11-08 00:00:00', '2022-11-08 07:27:27', 'Thoraipakkam', '8072079067', 'nil'),
(12, 'UNIVERCELL Super market', 'RETAIL', '2022-12-14 00:00:00', '2022-11-08 07:29:31', 'Nanganallur', '9962039925', '33AVTPR5129B1ZH'),
(13, 'MADURA Super market', 'RETAIL', '2022-12-14 00:00:00', '2022-11-08 07:31:22', 'Nanganallur', '9445238320', '33AKXPR2236E1ZZ'),
(14, 'SAPESH Super market', 'RETAIL', '2022-11-08 00:00:00', '2022-11-08 07:33:19', 'Chrompet', '9444622166', 'nil'),
(15, 'NADAR PROVISION Store', 'RETAIL', '2022-11-08 00:00:00', '2022-11-08 07:34:51', 'Chrompet', '044 22654444', 'nil'),
(16, 'HNS HYPER Super market', 'RETAIL', '2022-11-08 00:00:00', '2022-11-08 07:36:55', 'Thoraipakkam', '8610599875', 'nil'),
(17, 'JEYAMURUGAN STORE', 'RETAIL', '2022-12-14 00:00:00', '2022-12-14 05:42:41', 'PALLAVARAM', '9884888333', '33BGCPD9673H1ZD');

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` int(11) NOT NULL,
  `day_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `day_name`) VALUES
(1, 'Sunday'),
(2, 'Monday'),
(3, 'Tuesday'),
(4, 'Wednesday'),
(5, 'Thursday'),
(6, 'Friday'),
(7, 'Saturday');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` int(11) NOT NULL,
  `exam_name` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`, `exam_name`, `user_id`, `date`) VALUES
(1, 'annual', 1, '2018-03-22'),
(2, 'monthly', 1, '2018-03-22'),
(4, 'english', 2, '2018-06-15');

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedule`
--

CREATE TABLE `exam_schedule` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `exam_date` date NOT NULL,
  `exam_time` varchar(20) NOT NULL,
  `pass_mark` int(11) NOT NULL,
  `total_mark` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` int(11) NOT NULL,
  `fees_name` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `fees_name`, `user_id`, `date`) VALUES
(1, 'Hostal Fees', 1, '2018-07-05'),
(3, 'Tution Fees', 1, '2018-07-05'),
(4, 'Admission Fees', 1, '2018-07-05'),
(5, 'Book Fees', 1, '2018-07-05'),
(6, 'Uniform Fees', 1, '2018-07-05'),
(7, 'Extra Caricular Activity', 1, '2018-07-05'),
(8, 'Van Fees', 1, '2018-07-05');

-- --------------------------------------------------------

--
-- Table structure for table `fees_detail`
--

CREATE TABLE `fees_detail` (
  `id` int(11) NOT NULL,
  `fees_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `amount` varchar(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `fees_detail`
--

INSERT INTO `fees_detail` (`id`, `fees_id`, `class_id`, `amount`, `user_id`, `date`) VALUES
(1, 1, 1, '1000', 1, '2018-03-22'),
(2, 1, 4, '4000', 1, '2018-06-15'),
(4, 4, 3, '123', 1, '2018-06-28'),
(5, 3, 3, '1500', 1, '2018-06-28'),
(7, 7, 2, '1500', 1, '2018-06-29'),
(8, 5, 5, '1500', 1, '2018-06-29'),
(9, 7, 3, '1500', 1, '2018-06-29'),
(10, 7, 4, '1500', 1, '2018-06-29'),
(12, 3, 3, '1500', 1, '2018-06-30'),
(13, 4, 2, '1500', 1, '2018-07-05'),
(14, 7, 4, '1500', 1, '2018-07-05'),
(15, 6, 7, '123', 1, '2018-07-05'),
(16, 8, 4, '677657', 1, '2018-07-05'),
(17, 1, 8, '123', 1, '2018-07-05'),
(18, 1, 8, '123', 1, '2018-07-22'),
(19, 1, 2, '1500', 1, '2018-07-05'),
(20, 4, 3, '1500', 1, '2018-07-16'),
(21, 5, 3, '1500', 1, '2018-07-16');

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` int(11) NOT NULL,
  `food_name` varchar(225) NOT NULL,
  `gst_percentage` varchar(225) NOT NULL,
  `created_date` date NOT NULL,
  `modified_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `food_name`, `gst_percentage`, `created_date`, `modified_date`) VALUES
(8, 'Sweet', '5', '2022-11-03', '2022-11-01 10:45:58'),
(9, 'Karam', '12', '2022-11-03', '2022-11-01 11:41:38');

-- --------------------------------------------------------

--
-- Table structure for table `food_items`
--

CREATE TABLE `food_items` (
  `id` int(11) NOT NULL,
  `item_name` varchar(225) NOT NULL,
  `food_id` int(11) NOT NULL,
  `hsn_code` int(11) NOT NULL,
  `mrp` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `rate` varchar(225) NOT NULL,
  `customer_id` varchar(225) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `food_items`
--

INSERT INTO `food_items` (`id`, `item_name`, `food_id`, `hsn_code`, `mrp`, `qty`, `rate`, `customer_id`, `created_date`, `modified_date`, `status`) VALUES
(3, 'GROUNDNET PIECES[100gm]', 8, 1202, 35, 10, '23.275', '5', '2023-11-16 00:00:00', '2022-11-03 16:48:57', 0),
(4, 'GROUNDNET BALL', 8, 1202, 35, 10, '23.75', '4', '2023-11-10 00:00:00', '2022-11-03 16:52:45', 0),
(5, 'GROUNDNET BAR', 8, 1202, 35, 10, '23.75', '4', '2023-11-08 00:00:00', '2022-11-03 16:54:05', 0),
(6, 'NICE CUTTING PIECES', 8, 1202, 35, 5, '24.70', '4', '2023-11-16 00:00:00', '2022-11-03 16:56:30', 0),
(7, 'NICE CUTTING BAR', 8, 1202, 35, 10, '23.75', '4', '2023-11-10 00:00:00', '2022-11-03 17:01:31', 0),
(8, 'SESAME BALL WHITE', 8, 210690, 35, 10, '23.75', '4', '2023-11-10 00:00:00', '2022-11-03 17:03:56', 0),
(9, 'SESAME BALL BLACK', 8, 1202, 35, 10, '23.75', '4', '2023-11-08 00:00:00', '2022-11-03 17:05:35', 0),
(10, 'CHIKKI', 8, 1202, 35, 9, '23.75', '4', '2023-11-16 00:00:00', '2022-11-03 17:08:50', 0),
(11, 'FRIED GRAM BALL', 8, 210690, 35, 10, '23.75', '4', '2023-11-10 00:00:00', '2022-11-03 17:09:54', 0),
(12, 'GROUNDNET ROLL', 8, 210690, 55, 10, '34.20', '4', '2022-11-03 00:00:00', '2022-11-03 17:12:43', 0),
(13, 'SEASEME ROLL WHITE', 8, 210690, 55, 10, '34.20', '4', '2022-11-03 00:00:00', '2022-11-03 17:14:07', 0),
(14, 'SEASEME ROLL BLACK', 8, 210690, 55, 10, '34.20', '4', '2022-11-03 00:00:00', '2022-11-03 17:15:11', 0),
(15, 'SESAME BAR WHITE', 8, 1202, 35, 10, '23.75', '4', '2022-11-03 00:00:00', '2022-11-03 17:16:47', 0),
(16, 'SEASEME BAR BLACK', 8, 1202, 35, 10, '23.75', '4', '2022-11-03 00:00:00', '2022-11-03 17:17:58', 0),
(17, 'KAMARKUT BIG', 8, 210690, 25, 10, '17.10', '4', '2023-11-02 00:00:00', '2022-11-03 17:20:52', 0),
(18, 'KAMARKUT SMALL', 8, 210690, 16, 10, '11.40', '4', '2023-11-07 00:00:00', '2022-11-03 17:22:11', 0),
(19, 'MIXED MITTAI', 8, 210690, 20, 48, '14.25', '4', '2023-11-16 00:00:00', '2022-11-03 17:24:43', 0),
(20, 'JELLY MITTAI', 8, 210690, 35, 15, '23.75', '4', '2023-11-08 00:00:00', '2022-11-03 17:27:38', 0),
(21, 'GINGER MITTAI', 8, 210690, 30, 30, '20.90', '4', '2023-11-02 00:00:00', '2022-11-03 17:29:48', 0),
(22, 'MASALA PORI', 8, 2106, 35, 10, '24.70', '4', '2023-11-07 00:00:00', '2022-11-03 17:32:31', 0),
(23, 'MAKROONS', 8, 210690, 60, 8, '39.90', '4', '2023-11-16 00:00:00', '2022-11-03 17:34:16', 0),
(24, 'K P TOPICO CHIPS', 8, 2106, 50, 10, '33.25', '4', '2023-08-08 00:00:00', '2022-11-03 17:40:08', 0),
(25, 'K P SNACKS', 8, 2106, 50, 40, '33.25', '4', '2023-10-18 00:00:00', '2022-11-03 17:41:51', 0),
(26, 'K P NENTHRAM CHIPS', 8, 1202, 65, 10, '43.70', '4', '2023-06-01 00:00:00', '2022-11-03 17:48:28', 0),
(27, 'COCONUT MILK MURUKU', 9, 210690, 45, 10, '28.571', '4', '2023-11-10 00:00:00', '2022-11-03 17:55:21', 0),
(28, 'PEPER MURUKU', 9, 210690, 45, 5, '28.571', '4', '2023-11-25 00:00:00', '2022-11-03 17:56:37', 1),
(29, 'POTATO CHIPS', 9, 210690, 52, 20, '32.50', '4', '2023-11-10 00:00:00', '2022-11-03 17:57:39', 1),
(30, 'WHEEL CHIPS', 9, 210690, 25, 10, '14.732', '4', '2023-11-04 00:00:00', '2022-11-03 17:58:46', 1),
(31, 'ONION CHIPS', 9, 210690, 25, 10, '14.732', '4', '2023-11-02 00:00:00', '2022-11-03 18:00:10', 1),
(32, 'APPLAM CHIPS', 9, 210690, 25, 10, '15.178', '4', '2023-11-02 00:00:00', '2022-11-03 18:01:07', 0),
(33, 'pillow chips', 9, 210690, 25, 10, '15.178', '4', '2023-11-25 00:00:00', '2022-11-04 02:49:22', 1),
(34, 'chippy chips', 9, 210690, 25, 10, '15.178', '4', '2023-11-04 00:00:00', '2022-11-04 02:50:04', 1),
(35, 'garlic chips', 9, 210690, 25, 10, '15.178', '4', '2023-10-11 00:00:00', '2022-11-04 02:51:02', 0),
(36, 'CORN CHIPS', 9, 210690, 50, 10, '28.571', '4', '2023-11-24 00:00:00', '2022-11-04 02:54:00', 1),
(37, 'THATTAI', 9, 210690, 45, 5, '28.571', '4', '2023-11-25 00:00:00', '2022-11-04 02:54:54', 1),
(38, 'AACHU MURUKU', 8, 2106, 45, 5, '30.40', '4', '2023-11-04 00:00:00', '2022-11-04 02:56:16', 0),
(39, 'TAPIOCO ROUND CHIPS', 9, 210690, 50, 5, '31.696', '4', '2023-11-25 00:00:00', '2022-11-04 03:01:39', 1),
(40, 'TAPIOCO KUCHI CHIPS', 9, 210690, 50, 5, '31.696', '4', '2023-11-25 00:00:00', '2022-11-04 03:03:12', 1),
(41, 'Masala kadalai', 9, 210690, 58, 10, '36.25', '4', '2023-11-25 00:00:00', '2022-11-04 03:09:05', 1),
(42, 'Kara kadalai', 9, 210690, 58, 10, '36.25', '4', '2023-11-10 00:00:00', '2022-11-04 03:10:06', 1),
(43, 'Banana chips[200gm]', 9, 210690, 100, 10, '63.392', '4', '2023-11-17 00:00:00', '2022-11-04 03:14:48', 0),
(44, 'Banana chips[100gm]', 9, 210690, 55, 10, '34.821', '4', '2023-11-10 00:00:00', '2022-11-04 03:17:56', 0),
(45, 'Snacks[150gm]', 9, 210690, 55, 70, '34.375', '4', '2023-11-25 00:00:00', '2022-11-04 03:21:53', 1),
(46, 'GROUNDNET PIECES[400gm]', 8, 1202, 130, 25, '86.45', '5', '2023-11-02 00:00:00', '2023-02-10 04:40:18', 0),
(47, 'PORI BALL', 8, 210690, 35, 10, '24.70', '5', '2023-07-07 00:00:00', '2023-04-06 04:21:40', 0),
(49, 'GROUNDNET PIECES[200gm]', 8, 210690, 65, 50, '43.225', '5', '2023-11-10 00:00:00', '2023-06-22 07:37:11', 0),
(50, 'SALT SEEDAI', 9, 210690, 40, 20, '34.821', '5', '2023-09-08 00:00:00', '2023-09-08 09:36:30', 0),
(51, 'SWEET SEEDAI', 8, 2106, 50, 10, '34.20', '5', '2023-09-08 00:00:00', '2023-09-08 09:40:06', 0);

-- --------------------------------------------------------

--
-- Table structure for table `groupsms`
--

CREATE TABLE `groupsms` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `message` varchar(2000) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `issue_book`
--

CREATE TABLE `issue_book` (
  `id` int(11) NOT NULL,
  `school_id` int(100) DEFAULT NULL,
  `class_id` int(100) DEFAULT NULL,
  `book_id` varchar(100) DEFAULT NULL,
  `book_name` varchar(100) DEFAULT NULL,
  `author_name` varchar(200) NOT NULL,
  `return_date` varchar(25) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `issue_book`
--

INSERT INTO `issue_book` (`id`, `school_id`, `class_id`, `book_id`, `book_name`, `author_name`, `return_date`, `status`, `user_id`, `date`) VALUES
(1, 5, 1, '01', 'english', 'hentry', '01/03/2018', 'Active', 1, '2018-03-22');

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `id` int(50) NOT NULL,
  `date` date NOT NULL,
  `book_id` varchar(100) DEFAULT NULL,
  `book_name` varchar(100) NOT NULL,
  `author_name` varchar(200) NOT NULL,
  `penality_amount` varchar(100) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `total_book` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`id`, `date`, `book_id`, `book_name`, `author_name`, `penality_amount`, `status`, `total_book`, `user_id`) VALUES
(1, '2018-03-22', '01', 'english', 'hentry', '200', 'Active', '3', 1),
(2, '2018-06-15', '01111', 'dvfrd', 'shakesphere', '500', 'Active', '6', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pay`
--

CREATE TABLE `pay` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `fees_id` int(11) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `paid_amount` varchar(100) DEFAULT NULL,
  `balance` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_amound`
--

CREATE TABLE `pay_amound` (
  `id` int(10) NOT NULL,
  `School_id` int(11) DEFAULT NULL,
  `fees_id` int(10) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `total_amound` int(10) DEFAULT NULL,
  `payed` varchar(100) DEFAULT NULL,
  `balance` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_details`
--

CREATE TABLE `pay_details` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `fees_id` int(11) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `paid_amount` varchar(100) DEFAULT NULL,
  `balance` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penality`
--

CREATE TABLE `penality` (
  `id` int(11) NOT NULL,
  `school_id` int(100) NOT NULL,
  `class_id` int(100) NOT NULL,
  `book_id` varchar(100) NOT NULL,
  `book_name` varchar(100) NOT NULL,
  `author_name` varchar(100) NOT NULL,
  `penality_amount` varchar(100) NOT NULL,
  `penality_date` varchar(25) NOT NULL,
  `status` varchar(100) NOT NULL,
  `user_id` int(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `penality`
--

INSERT INTO `penality` (`id`, `school_id`, `class_id`, `book_id`, `book_name`, `author_name`, `penality_amount`, `penality_date`, `status`, `user_id`, `date`) VALUES
(1, 5, 1, '01', 'english', 'hentry', '100', '05/03/2018', 'Active', 1, '2018-03-22'),
(2, 5, 1, '01', 'english', 'hentry', '500', '', 'Active', 1, '2018-06-15'),
(3, 5, 1, '01', 'english', 'hentry', '500', '16/06/2018', 'Inactive', 1, '2018-06-15'),
(4, 5, 1, '01', 'english', 'hentry', '1000', '20/06/2018', 'Active', 1, '2018-06-15'),
(5, 5, 1, '01', 'english', 'hentry', '1000', '20/06/2018', 'Active', 1, '2018-06-15'),
(6, 5, 1, '01', 'english', 'hentry', '1000', '29/05/2018', 'Active', 1, '2018-06-15'),
(7, 5, 1, '01', 'english', 'hentry', '1000', '14/06/2018', 'Active', 1, '2018-06-15');

-- --------------------------------------------------------

--
-- Table structure for table `period_group`
--

CREATE TABLE `period_group` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `group_name` varchar(50) NOT NULL,
  `total_periods` int(11) NOT NULL,
  `total_breaks` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `principal_record`
--

CREATE TABLE `principal_record` (
  `id` int(11) NOT NULL,
  `school_id` int(10) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `date_of_join` varchar(25) DEFAULT NULL,
  `date_of_birth` varchar(25) DEFAULT NULL,
  `blood_group` varchar(100) DEFAULT NULL,
  `cast` varchar(100) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `study` varchar(200) DEFAULT NULL,
  `university` varchar(200) DEFAULT NULL,
  `pass_out` varchar(200) DEFAULT NULL,
  `principal_id` varchar(100) DEFAULT NULL,
  `other` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `basic_salary` varchar(100) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `physical_status` varchar(100) DEFAULT NULL,
  `institute_name` varchar(100) DEFAULT NULL,
  `percentage` varchar(100) DEFAULT NULL,
  `marksheet_no` varchar(100) DEFAULT NULL,
  `year_of_exp` varchar(100) DEFAULT NULL,
  `status` varchar(10) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `principal_record`
--

INSERT INTO `principal_record` (`id`, `school_id`, `full_name`, `father_name`, `date_of_join`, `date_of_birth`, `blood_group`, `cast`, `pincode`, `address`, `state`, `mobile`, `email`, `password`, `photo`, `study`, `university`, `pass_out`, `principal_id`, `other`, `gender`, `basic_salary`, `religion`, `country`, `physical_status`, `institute_name`, `percentage`, `marksheet_no`, `year_of_exp`, `status`, `user_id`, `date`) VALUES
(1, 2, 'mani', NULL, NULL, NULL, NULL, NULL, NULL, 'nagercoil', NULL, '9876543765', 'mani@gmail.com', '12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL),
(2, 1, 'Admin', NULL, NULL, NULL, NULL, NULL, NULL, 'nagercoil', NULL, '9942564382', 'admin@gmail.com', '12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL),
(3, 2, 'mani', NULL, NULL, NULL, NULL, NULL, NULL, 'nagercoil', NULL, '9876543765', 'mani@gmail.com', '12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL),
(4, 2, 'manikandan', NULL, NULL, NULL, NULL, NULL, NULL, 'nagercoil', NULL, '9876543765', 'mani@gmail.com', '12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL),
(5, 2, 'manikandan', NULL, NULL, NULL, NULL, NULL, NULL, 'nagercoil', NULL, '9876543765', 'mani@gmail.com', '12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL),
(6, 2, 'manikandan', NULL, NULL, NULL, NULL, NULL, NULL, 'nagercoil', NULL, '9876543765', 'mani@gmail.com', '12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL),
(7, 10, 'shahi', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '9840446898', 'shahi@gmail.com', 'shahi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive', NULL, NULL),
(8, 10, 'shahi', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '9840446898', 'shahi@gmail.com', 'shahi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive', NULL, NULL),
(9, 10, 'shahila', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '9840446898', 'shahi@gmail.com', 'shahi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `id` int(11) NOT NULL,
  `school_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `user_type` varchar(10) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `photo` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `section_name` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`id`, `section_name`, `user_id`, `date`) VALUES
(1, 'A', 1, '2018-03-22'),
(2, 'B', 1, '2018-05-18'),
(4, 't', 2, '2018-06-15');

-- --------------------------------------------------------

--
-- Table structure for table `staff_record`
--

CREATE TABLE `staff_record` (
  `id` int(11) NOT NULL,
  `school_id` int(10) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `date_of_join` varchar(25) DEFAULT NULL,
  `date_of_birth` varchar(25) DEFAULT NULL,
  `blood_group` varchar(100) DEFAULT NULL,
  `cast` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `mobile` varchar(25) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `study` varchar(200) DEFAULT NULL,
  `university` varchar(200) DEFAULT NULL,
  `pass_out` varchar(200) DEFAULT NULL,
  `staff_id` varchar(100) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `basic_salary` varchar(100) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `physical_status` varchar(100) DEFAULT NULL,
  `institute_name` varchar(100) DEFAULT NULL,
  `percentage` varchar(100) DEFAULT NULL,
  `marksheet_no` varchar(100) DEFAULT NULL,
  `year_of_exp` varchar(100) DEFAULT NULL,
  `status` varchar(10) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `staff_record`
--

INSERT INTO `staff_record` (`id`, `school_id`, `full_name`, `father_name`, `date_of_join`, `date_of_birth`, `blood_group`, `cast`, `pincode`, `address`, `state`, `mobile`, `email`, `password`, `photo`, `study`, `university`, `pass_out`, `staff_id`, `user_type`, `gender`, `basic_salary`, `religion`, `country`, `physical_status`, `institute_name`, `percentage`, `marksheet_no`, `year_of_exp`, `status`, `user_id`, `date`) VALUES
(1, 3, 'viji', NULL, NULL, NULL, NULL, NULL, NULL, 'nagercoil', NULL, '9876543765', 'viji@gmail.com', '12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL),
(2, 3, 'viji', NULL, NULL, NULL, NULL, NULL, NULL, 'nagercoil', NULL, '9876543765', 'viji@gmail.com', '12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff_time_table`
--

CREATE TABLE `staff_time_table` (
  `id` int(10) NOT NULL,
  `day_id` int(10) DEFAULT NULL,
  `staff_id` int(10) NOT NULL,
  `class_id` int(10) DEFAULT NULL,
  `pried_1` varchar(100) DEFAULT NULL,
  `pried_2` varchar(100) DEFAULT NULL,
  `pried_3` varchar(100) DEFAULT NULL,
  `pried_4` varchar(100) DEFAULT NULL,
  `pried_5` varchar(100) DEFAULT NULL,
  `pried_6` varchar(100) DEFAULT NULL,
  `pried_7` varchar(100) DEFAULT NULL,
  `pried_8` varchar(100) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `subject_1` varchar(100) DEFAULT NULL,
  `subject_2` varchar(100) DEFAULT NULL,
  `subject_3` varchar(100) DEFAULT NULL,
  `subject_4` varchar(100) DEFAULT NULL,
  `subject_5` varchar(100) DEFAULT NULL,
  `subject_6` varchar(100) DEFAULT NULL,
  `subject_7` varchar(100) DEFAULT NULL,
  `subject_8` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `staff_time_table`
--

INSERT INTO `staff_time_table` (`id`, `day_id`, `staff_id`, `class_id`, `pried_1`, `pried_2`, `pried_3`, `pried_4`, `pried_5`, `pried_6`, `pried_7`, `pried_8`, `user_id`, `subject_1`, `subject_2`, `subject_3`, `subject_4`, `subject_5`, `subject_6`, `subject_7`, `subject_8`) VALUES
(54, 2, 3, 3, '1 A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tamil', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 3, 3, 2, '1 B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'English', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 3, 3, 5, NULL, '2 B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Science', NULL, NULL, NULL, NULL, NULL, NULL),
(57, 2, 3, 2, '2 A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'History', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 4, 3, 4, '2 B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PT', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 4, 3, 4, NULL, NULL, NULL, NULL, '2 A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'English', NULL, NULL, NULL),
(60, 3, 3, 5, '2 B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Leisure Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 3, 3, 4, NULL, NULL, NULL, 'Leisure Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Leisure Time', NULL, NULL, NULL, NULL),
(62, 2, 3, 2, NULL, NULL, NULL, '2 B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tamil', NULL, NULL, NULL, NULL),
(63, 5, 3, 2, NULL, NULL, NULL, NULL, 'Leisure Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Leisure Time', NULL, NULL, NULL),
(64, 4, 3, 4, NULL, NULL, NULL, NULL, 'Leisure Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Leisure Time', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `first_name` varchar(225) NOT NULL,
  `last_name` varchar(225) NOT NULL,
  `gender` varchar(225) NOT NULL,
  `father_name` varchar(225) NOT NULL,
  `mother_name` varchar(225) NOT NULL,
  `address` longtext NOT NULL,
  `dob` date NOT NULL,
  `income_doc` varchar(225) NOT NULL,
  `address_doc` varchar(225) NOT NULL,
  `mobile` varchar(225) NOT NULL,
  `photo` varchar(225) NOT NULL,
  `date_of_join` varchar(225) NOT NULL,
  `blood_group` varchar(225) NOT NULL,
  `religion` varchar(225) NOT NULL,
  `mother_tongue` varchar(225) NOT NULL,
  `second_language` varchar(225) NOT NULL,
  `physical_status` varchar(225) NOT NULL,
  `admission_no` varchar(225) NOT NULL,
  `medium` varchar(225) NOT NULL,
  `sub_cast` varchar(225) NOT NULL,
  `first_language` varchar(225) NOT NULL,
  `hostler` varchar(225) NOT NULL,
  `nationality` varchar(225) NOT NULL,
  `age` varchar(225) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `class_id`, `first_name`, `last_name`, `gender`, `father_name`, `mother_name`, `address`, `dob`, `income_doc`, `address_doc`, `mobile`, `photo`, `date_of_join`, `blood_group`, `religion`, `mother_tongue`, `second_language`, `physical_status`, `admission_no`, `medium`, `sub_cast`, `first_language`, `hostler`, `nationality`, `age`, `status`, `user_id`, `created_date`) VALUES
(2, 3, 'karthika', 'j', 'Male', 'fdsfds', '08526717901', 'ssssssssss\r\nsafa', '2018-08-21', '', '', '08526717901', '', '', '', '', '', '', '', '123124', '', '', '', '', '', '', 0, 0, '2018-07-05 15:58:15'),
(3, 2, 'karthika', 'j', 'Male', 'fdsfds', '08526717901', 'ssssssssss\r\nsafa', '2018-07-25', '', '', '08526717901', '', '', '', '', '', '', '', '1234', '', '', '', '', '', '', 0, 0, '2018-07-05 15:58:15');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

CREATE TABLE `student_attendance` (
  `id` int(11) NOT NULL,
  `school_id` int(10) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `present` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_attendance`
--

INSERT INTO `student_attendance` (`id`, `school_id`, `class_id`, `present`, `user_id`, `date`) VALUES
(3, 5, 1, 'Absent', 3, '2018-05-28');

-- --------------------------------------------------------

--
-- Table structure for table `student_fees`
--

CREATE TABLE `student_fees` (
  `id` int(11) NOT NULL,
  `admission_no` varchar(225) NOT NULL,
  `user_name` varchar(225) NOT NULL,
  `standard` varchar(225) NOT NULL,
  `created_date` varchar(225) NOT NULL,
  `monthly_fees` varchar(225) NOT NULL,
  `monthlyamount` varchar(225) NOT NULL,
  `qauntity` varchar(225) NOT NULL,
  `monthly_price` varchar(225) NOT NULL,
  `monthly_paid` varchar(225) NOT NULL,
  `yearly_fees_name` varchar(225) NOT NULL,
  `yearly_fees_cost` varchar(225) NOT NULL,
  `yearlyqauntity` varchar(225) NOT NULL,
  `yearly_price` varchar(225) NOT NULL,
  `yearlypaid` varchar(225) NOT NULL,
  `yearlyunpaid` varchar(225) NOT NULL,
  `monthly_unpaid` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_marklist`
--

CREATE TABLE `student_marklist` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `exam_id` varchar(100) NOT NULL,
  `subject_id` int(10) NOT NULL,
  `mark` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_record`
--

CREATE TABLE `student_record` (
  `id` int(11) NOT NULL,
  `school_id` int(10) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `date_of_join` varchar(25) DEFAULT NULL,
  `date_of_birth` varchar(25) DEFAULT NULL,
  `blood_group` varchar(10) DEFAULT NULL,
  `class_id` int(10) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `mother_tongue` varchar(100) DEFAULT NULL,
  `second_language` varchar(100) DEFAULT NULL,
  `physical_status` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `admission_no` int(100) DEFAULT NULL,
  `father_name` varchar(20) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `medium` varchar(100) DEFAULT NULL,
  `sub_cast` varchar(100) DEFAULT NULL,
  `first_language` varchar(100) DEFAULT NULL,
  `hostler` varchar(100) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_record`
--

INSERT INTO `student_record` (`id`, `school_id`, `full_name`, `date_of_join`, `date_of_birth`, `blood_group`, `class_id`, `mobile`, `email`, `status`, `password`, `religion`, `mother_tongue`, `second_language`, `physical_status`, `photo`, `admission_no`, `father_name`, `gender`, `age`, `medium`, `sub_cast`, `first_language`, `hostler`, `nationality`, `address`, `user_id`, `date`) VALUES
(1, 5, 'siva', '01/03/2018', '03/03/1991', 'A+', 1, '9876543765', 'siva@gmail.com', NULL, '12345', 'Hindu', 'Tamil', 'English', 'ss', '', 1, 'mani', 'Male', '33', 'Tamil', 'ss', 'Tamil', 'ss', 'indian', 'nagercoil', 3, '2018-03-22');

-- --------------------------------------------------------

--
-- Table structure for table `student_timetable`
--

CREATE TABLE `student_timetable` (
  `id` int(11) NOT NULL,
  `days` varchar(100) NOT NULL,
  `staff_name` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `start_time` varchar(100) NOT NULL,
  `start_min` varchar(100) NOT NULL,
  `end_time` varchar(100) NOT NULL,
  `end_min` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_time_table`
--

CREATE TABLE `student_time_table` (
  `id` int(10) NOT NULL,
  `day_id` int(10) NOT NULL,
  `class_id` int(10) NOT NULL,
  `pried_1` varchar(10) NOT NULL,
  `pried_2` varchar(10) NOT NULL,
  `pried_3` varchar(10) NOT NULL,
  `pried_4` varchar(10) NOT NULL,
  `pried_5` varchar(10) NOT NULL,
  `pried_6` varchar(10) NOT NULL,
  `pried_7` varchar(10) NOT NULL,
  `pried_8` varchar(10) NOT NULL,
  `user_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_time_table`
--

INSERT INTO `student_time_table` (`id`, `day_id`, `class_id`, `pried_1`, `pried_2`, `pried_3`, `pried_4`, `pried_5`, `pried_6`, `pried_7`, `pried_8`, `user_id`) VALUES
(5, 2, 1, 'English', 'English', 'English', 'English', 'English', 'English', 'English', 'English', NULL),
(6, 4, 1, 'English', 'English', 'Maths', 'Maths', 'English', 'English', 'English', 'English', NULL),
(7, 5, 1, 'English', 'English', 'Maths', 'English', 'Maths', 'English', 'English', 'English', NULL),
(8, 1, 1, 'English', 'English', 'English', 'English', 'English', 'English', 'English', 'English', NULL),
(9, 7, 1, 'English', 'Maths', 'English', 'Maths', 'English', 'English', 'Maths', 'English', NULL),
(10, 2, 2, 'Tamil', 'English', 'Maths', 'PT', 'Science', 'History', 'Maths', 'Tamil', NULL),
(11, 3, 4, 'PT', 'Maths', 'PT', 'Tamil', 'Tamil', 'Tamil', 'Maths', 'Tamil', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `sub_name` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `sub_name`, `user_id`, `date`) VALUES
(1, 'English', 1, '2018-03-22'),
(2, 'Maths', 1, '2018-03-22'),
(3, 'Tamil', 1, '2018-05-18'),
(4, 'PT', 1, '2018-05-18'),
(5, 'Science', 1, '2018-05-18'),
(6, 'History', 1, '2018-05-18'),
(8, 'nano', 2, '2018-06-15');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `id` int(10) NOT NULL,
  `staff_id` int(10) NOT NULL,
  `day_id` int(10) NOT NULL,
  `class_id` int(10) NOT NULL,
  `pried_1` varchar(10) NOT NULL,
  `pried_2` varchar(10) NOT NULL,
  `pried_3` varchar(10) NOT NULL,
  `pried_4` varchar(10) NOT NULL,
  `pried_5` varchar(10) NOT NULL,
  `pried_6` varchar(10) NOT NULL,
  `pried_7` varchar(10) NOT NULL,
  `pried_8` varchar(10) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `todolist`
--

CREATE TABLE `todolist` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `to_date` varchar(25) NOT NULL,
  `messege` varchar(500) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `id` int(11) NOT NULL,
  `full_name` varchar(200) DEFAULT NULL,
  `age` int(2) DEFAULT NULL,
  `dob` varchar(25) DEFAULT NULL,
  `father_name` varchar(200) DEFAULT NULL,
  `doj` varchar(25) DEFAULT NULL,
  `blood_group` varchar(100) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(300) DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `id_no` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `salary` varchar(500) DEFAULT NULL,
  `region` varchar(500) DEFAULT NULL,
  `country` varchar(500) DEFAULT NULL,
  `experience` varchar(100) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`id`, `full_name`, `age`, `dob`, `father_name`, `doj`, `blood_group`, `mobile`, `email`, `password`, `address`, `pincode`, `photo`, `id_no`, `gender`, `salary`, `region`, `country`, `experience`, `user_type`, `status`, `user_id`, `date`) VALUES
(1, 'arul', 25, '08/03/2018', 'mani', '15/03/2018', 'A+', '9876543765', 'arul@gmail.com', '', 'nagercoil', 629801, '', '01', 'Male', '7500', 'ggg', 'eee', '3', 'transport', 'Active', 1, '2018-03-22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `user_type` varchar(10) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `photo` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `mobile`, `address`, `user_type`, `status`, `photo`) VALUES
(1, 'Admin', 'admin@gmail.com', '12345', '9876543765', 'nagercoil', 'admin', 'Active', '1.png'),
(2, NULL, 'mani@gmail.com', '12345', '9876543765', 'ssssssssss\r\nsafa', 'principal', 'Active', '2.png'),
(3, 'viji', 'viji@gmail.com', '12345', '9876543765', 'nagercoil', 'staff', 'Active', '3.png'),
(4, 'arul', 'arul@gmail.com', '12345', '9876543765', 'nagercoil', 'transport', 'Active', ''),
(5, 'siva', 'siva@gmail.com', '12345', '9876543765', 'nagercoil', 'student', 'Active', ''),
(6, 'kannan', 'kannan@gmail.com', '12345', '9876543765', NULL, 'student', 'Inactive', ''),
(7, 'vijay', 'vijay@gmail.com', '111111', '7894561230', '', 'principal', 'Inactive', ''),
(8, 'abi', 'abi@gmail.com', '111111', '7894561230', NULL, 'staff', 'Inactive', ''),
(9, 'vijay', 'admin@gmail.com', '12345', '7894561230', 'gggggggggggg', 'transport', 'Active', ''),
(10, 'shahila', 'shahi@gmail.com', 'shahi', '9840446898', '', 'principal', 'Inactive', ''),
(11, 'abi', 'abi@gmail.com', '111111', '7894561230', NULL, 'staff', 'Inactive', ''),
(12, 'vijay', 'admin@gmail.com', '12345', '7894561230', 'gggg', 'transport', 'Active', ''),
(13, 'abi', 'abi@gmail.com', '111111', '7894561230', NULL, 'student', 'Inactive', ''),
(14, 'abi', 'abi@gmail.com', '111111', '7894561230', NULL, 'staff', 'Inactive', ''),
(15, 'abiya', 'abik@gmail.com', '111111', '7867930908', '', 'principal', 'Inactive', ''),
(16, 'karthika dhandapani', 'somasundaram.v@ninjacart.com', '12345', '8526717901', NULL, 'staff', 'Inactive', ''),
(17, 'karthika dhandapani', 'admin143@gmail.com', '12345', '8526717901', '', '', 'Inactive', ''),
(18, 'dhandapani', 'admin156@gmail.com', '12345', '8526717901', '', '', 'Inactive', ''),
(19, 'karthika dhandapani', 'mani123@gmail.com', '12345', '8526717901', '', 'admin', 'Inactive', ''),
(20, 'rahul', 'rahul@gmail.com', '12345', '8526717901', '', 'accounts', 'Inactive', ''),
(21, 'karthika dhandapani', 'library@gmail.com', '12345', '8526717901', '', 'library', 'Inactive', '');

-- --------------------------------------------------------

--
-- Table structure for table `vechicle`
--

CREATE TABLE `vechicle` (
  `id` int(11) NOT NULL,
  `vechicle_no` varchar(100) DEFAULT NULL,
  `vechicle_name` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `vechicle`
--

INSERT INTO `vechicle` (`id`, `vechicle_no`, `vechicle_name`, `user_id`, `date`) VALUES
(1, 'tn 74 4041', 'splender', 1, '2018-03-22'),
(4, '1546', 'van', 1, '2018-06-15');

-- --------------------------------------------------------

--
-- Table structure for table `yearly_fees_detail`
--

CREATE TABLE `yearly_fees_detail` (
  `id` int(11) NOT NULL,
  `fees_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `amount` varchar(225) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `yearly_fees_detail`
--

INSERT INTO `yearly_fees_detail` (`id`, `fees_id`, `class_id`, `amount`, `user_id`, `date`) VALUES
(1, 4, 4, '1500', 1, '2018-07-05'),
(2, 5, 5, '1500', 1, '2018-07-05'),
(3, 6, 2, '1500', 1, '2018-07-05'),
(4, 1, 2, '1500', 1, '2018-07-05'),
(5, 4, 2, '1500', 1, '2018-07-05'),
(6, 4, 3, '1500', 1, '2018-07-05'),
(7, 8, 2, '1500', 1, '2018-07-16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_staff`
--
ALTER TABLE `assign_staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_time_tabil`
--
ALTER TABLE `assign_time_tabil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assing_details`
--
ALTER TABLE `assing_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_schedule`
--
ALTER TABLE `exam_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees_detail`
--
ALTER TABLE `fees_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_items`
--
ALTER TABLE `food_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groupsms`
--
ALTER TABLE `groupsms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_book`
--
ALTER TABLE `issue_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay`
--
ALTER TABLE `pay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_amound`
--
ALTER TABLE `pay_amound`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_details`
--
ALTER TABLE `pay_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penality`
--
ALTER TABLE `penality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `period_group`
--
ALTER TABLE `period_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `principal_record`
--
ALTER TABLE `principal_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_record`
--
ALTER TABLE `staff_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_time_table`
--
ALTER TABLE `staff_time_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_fees`
--
ALTER TABLE `student_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_marklist`
--
ALTER TABLE `student_marklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_record`
--
ALTER TABLE `student_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_timetable`
--
ALTER TABLE `student_timetable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_time_table`
--
ALTER TABLE `student_time_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todolist`
--
ALTER TABLE `todolist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vechicle`
--
ALTER TABLE `vechicle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yearly_fees_detail`
--
ALTER TABLE `yearly_fees_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assign_staff`
--
ALTER TABLE `assign_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assign_time_tabil`
--
ALTER TABLE `assign_time_tabil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assing_details`
--
ALTER TABLE `assing_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exam_schedule`
--
ALTER TABLE `exam_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `fees_detail`
--
ALTER TABLE `fees_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `food_items`
--
ALTER TABLE `food_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `groupsms`
--
ALTER TABLE `groupsms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issue_book`
--
ALTER TABLE `issue_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `library`
--
ALTER TABLE `library`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pay`
--
ALTER TABLE `pay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_amound`
--
ALTER TABLE `pay_amound`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_details`
--
ALTER TABLE `pay_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penality`
--
ALTER TABLE `penality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `period_group`
--
ALTER TABLE `period_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `principal_record`
--
ALTER TABLE `principal_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff_record`
--
ALTER TABLE `staff_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff_time_table`
--
ALTER TABLE `staff_time_table`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_attendance`
--
ALTER TABLE `student_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_fees`
--
ALTER TABLE `student_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_marklist`
--
ALTER TABLE `student_marklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_record`
--
ALTER TABLE `student_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_timetable`
--
ALTER TABLE `student_timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_time_table`
--
ALTER TABLE `student_time_table`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `todolist`
--
ALTER TABLE `todolist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `vechicle`
--
ALTER TABLE `vechicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `yearly_fees_detail`
--
ALTER TABLE `yearly_fees_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
