-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2023 at 12:39 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brighteyes`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`user_id`, `product_id`, `quantity`) VALUES
(10, 21, 1),
(10, 15, 1),
(1, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_image`) VALUES
(1, 'Cat-eye sunglasses', 'sunglassCat.jpg'),
(2, 'Mirrored Sunglasses', 'sunglassMirror.jpg'),
(3, 'Sunglass Chain', 'sunglassChain.jpg'),
(4, 'Kids Eyeglasses', 'sunglassKids.jpg'),
(5, 'Sunglass Cases', 'sunglassCases.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `comment_date` datetime NOT NULL DEFAULT current_timestamp(),
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `user_id`, `comment`, `comment_date`, `product_id`) VALUES
(1, 1, 'Comment...\r\n                    ', '2023-01-11 13:40:50', 23),
(2, 2, 'very good.                    ', '2023-01-04 14:52:16', 14),
(3, 3, 'Comment...\r\n                    ', '2023-01-02 22:15:32', 13),
(4, 3, 'Comment...\r\n                    ', '2023-01-02 22:17:43', 15),
(5, 6, 'It was a dark and stormy night...\r\n', '2023-01-02 14:41:59', 11),
(6, 6, 'Comment...\r\n                    ', '2023-01-02 22:01:31', 19),
(7, 10, 'very good.                    ', '2023-01-03 09:00:07', 13),
(8, 1, 'Comment...\r\n                    ', '2023-01-11 13:47:18', 23),
(9, 2, 'Comment...\r\n                    ', '2023-01-13 20:56:05', 16),
(10, 2, 'Comment...\r\n                    ', '2023-01-13 20:56:09', 16),
(11, 2, 'Comment...\r\n                    ', '2023-01-14 21:43:17', 15),
(12, 2, 'Comment...\r\n                    ', '2023-01-14 21:43:21', 15),
(13, 2, 'niceee                    ', '2023-01-14 21:43:35', 15),
(14, 2, 'nice .\r\n                  ', '2023-01-20 23:18:55', 33),
(15, 2, 'very nice.\r\n                    ', '2023-01-20 23:24:16', 17),
(16, 2, 'very nice.                    ', '2023-01-20 23:37:00', 34),
(17, 2, 'very nice.\r\n                    ', '2023-01-20 23:39:37', 32),
(18, 2, 'very nice.\r\n                    ', '2023-01-20 23:52:12', 39),
(19, 2, 'very nice.\r\n                    ', '2023-01-21 00:03:37', 27);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `subject`, `msg`) VALUES
('mohammad', 'mohammadalnuqeiti@gmail.com', 'mmm', 'mmmmmmmmmm'),
('mohammad', 'mohammadalnuqeiti@gmail.com', 'mmm', 'dddddddd');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  `total_price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_date`, `user_id`, `total_price`) VALUES
(22, '2023-01-02 15:57:09', 1, '120'),
(23, '2023-01-02 16:04:37', 1, '139'),
(24, '2023-01-02 16:59:46', 1, '158'),
(25, '2023-01-02 17:04:23', 1, '158'),
(26, '2023-01-02 17:21:13', 1, '0'),
(27, '2023-01-02 17:25:40', 1, '0'),
(28, '2023-01-02 17:34:51', 1, '0'),
(29, '2023-01-02 18:02:49', 1, '0'),
(30, '2023-01-02 18:07:16', 1, '0'),
(31, '2023-01-02 18:44:38', 1, '0'),
(32, '2023-01-02 20:13:39', 1, '59'),
(33, '2023-01-02 20:15:00', 1, '0'),
(34, '2023-01-02 20:15:16', 1, '59'),
(35, '2023-01-02 21:19:43', 1, '59'),
(36, '2023-01-02 21:31:23', 1, '59'),
(37, '2023-01-02 21:32:03', 1, '99'),
(38, '2023-01-03 09:01:43', 1, '99'),
(39, '2023-01-03 15:55:09', 1, '118'),
(40, '2023-01-04 19:19:37', 13, '236'),
(41, '2023-01-04 19:23:31', 13, '236'),
(42, '2023-01-04 19:24:51', 13, '236'),
(43, '2023-01-04 19:26:58', 13, '177'),
(44, '2023-01-04 20:08:36', 13, '236'),
(45, '2023-01-04 20:09:09', 13, '236'),
(46, '2023-01-04 20:11:59', 13, '236'),
(47, '2023-01-04 20:13:00', 13, '177'),
(48, '2023-01-04 20:14:35', 13, '59'),
(49, '2023-01-04 20:15:32', 13, '10'),
(50, '2023-01-04 20:16:45', 10, '55'),
(51, '2023-01-04 20:18:00', 1, '500'),
(52, '2023-01-04 20:21:15', 10, '59'),
(53, '2023-01-04 20:22:42', 10, '59'),
(54, '2023-01-04 20:29:09', 6, '177'),
(55, '2023-01-04 20:29:31', 6, '0'),
(56, '2023-01-04 20:34:16', 6, '274'),
(57, '2023-01-04 21:09:42', 6, '59'),
(58, '2023-01-04 21:10:14', 6, '59'),
(59, '2023-01-04 21:14:23', 6, '158'),
(60, '2023-01-04 21:24:02', 6, '198'),
(61, '2023-01-05 14:55:08', 1, '217'),
(62, '2023-01-05 14:55:08', 1, '0'),
(63, '2023-01-05 14:55:35', 1, '59'),
(64, '2023-01-05 14:55:35', 1, '0'),
(65, '2023-01-05 14:56:41', 1, '40'),
(66, '2023-01-05 14:56:41', 1, '0'),
(67, '2023-01-05 14:58:22', 1, '59'),
(68, '2023-01-05 14:58:56', 1, '295'),
(69, '2023-01-05 14:58:56', 1, '0'),
(70, '2023-01-05 14:59:24', 1, '59'),
(71, '2023-01-05 14:59:24', 1, '0'),
(72, '2023-01-05 15:00:08', 6, '229'),
(73, '2023-01-05 15:01:00', 6, '118'),
(74, '2023-01-05 15:01:32', 6, '158'),
(75, '2023-01-05 15:01:32', 6, '0'),
(76, '2023-01-05 15:04:12', 6, '158'),
(77, '2023-01-05 15:04:13', 6, '0'),
(78, '2023-01-05 15:04:38', 6, '40'),
(79, '2023-01-05 15:04:38', 6, '0'),
(80, '2023-01-05 15:04:56', 6, '59'),
(81, '2023-01-05 15:04:56', 6, '0'),
(82, '2023-01-05 15:06:15', 6, '111'),
(83, '2023-01-05 15:06:15', 6, '0'),
(84, '2023-01-05 15:07:15', 6, '99'),
(85, '2023-01-05 15:07:15', 6, '0'),
(86, '2023-01-05 15:09:17', 6, '59'),
(87, '2023-01-05 15:09:17', 6, '0'),
(88, '2023-01-05 15:09:30', 6, '59'),
(89, '2023-01-05 15:09:50', 6, '266'),
(90, '2023-01-05 15:10:15', 6, '99'),
(91, '2023-01-05 15:10:15', 6, '0'),
(92, '2023-01-05 15:10:44', 6, '59'),
(93, '2023-01-05 15:10:59', 6, '59'),
(94, '2023-01-05 15:11:29', 6, '236'),
(95, '2023-01-05 15:11:53', 6, '197'),
(96, '2023-01-05 15:12:10', 6, '10'),
(97, '2023-01-05 15:12:57', 6, '236'),
(98, '2023-01-05 15:13:55', 6, '59'),
(99, '2023-01-05 15:26:35', 2, '236'),
(100, '2023-01-05 15:50:28', 13, '177'),
(101, '2023-01-05 15:50:49', 13, '92'),
(102, '2023-01-05 16:03:27', 13, '258'),
(103, '2023-01-05 16:07:30', 13, '119'),
(104, '2023-01-10 15:29:14', 1, '177'),
(105, '2023-01-10 15:30:38', 1, '10'),
(106, '2023-01-10 15:43:28', 1, '228'),
(107, '2023-01-10 16:18:25', 1, '59'),
(108, '2023-01-10 16:25:58', 1, '276'),
(109, '2023-01-11 17:28:41', 1, '217'),
(110, '2023-01-12 10:55:27', 2, '59'),
(111, '2023-01-13 20:50:26', 2, '139'),
(112, '2023-01-13 20:53:28', 2, '80'),
(113, '2023-01-13 20:57:12', 2, '148'),
(114, '2023-01-14 21:48:11', 2, '110'),
(115, '2023-01-20 23:08:14', 2, '80'),
(116, '2023-01-20 23:20:17', 2, '247'),
(117, '2023-01-20 23:25:22', 2, '315'),
(118, '2023-01-20 23:41:27', 2, '275'),
(119, '2023-01-20 23:53:23', 2, '227'),
(120, '2023-01-21 00:05:02', 2, '198');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `product_id`, `quantity`, `price`) VALUES
(22, 14, 1, '40'),
(23, 13, 1, '59'),
(23, 14, 1, '40'),
(24, 13, 1, '59'),
(24, 14, 1, '40'),
(24, 16, 1, '59'),
(25, 11, 1, '59'),
(25, 13, 1, '59'),
(25, 14, 1, '40'),
(25, 17, 1, '69'),
(25, 19, 1, '10'),
(30, 13, 1, '59'),
(30, 18, 1, '10'),
(30, 19, 1, '10'),
(32, 13, 1, '59'),
(34, 13, 1, '59'),
(35, 11, 1, '59'),
(36, 13, 1, '59'),
(37, 13, 1, '59'),
(37, 14, 1, '40'),
(38, 13, 1, '59'),
(38, 14, 1, '40'),
(39, 11, 1, '59'),
(39, 13, 1, '59'),
(42, 13, 2, '59'),
(42, 22, 2, '59'),
(43, 13, 1, '59'),
(43, 22, 1, '59'),
(43, 13, 1, '59'),
(45, 13, 1, '59'),
(45, 22, 2, '59'),
(45, 13, 1, '59'),
(46, 13, 1, '59'),
(46, 22, 2, '59'),
(46, 13, 1, '59'),
(47, 11, 2, '59'),
(47, 13, 1, '59'),
(53, 13, 1, '59'),
(54, 11, 1, '59'),
(54, 13, 1, '59'),
(54, 16, 1, '59'),
(56, 13, 2, '59'),
(56, 15, 3, '52'),
(57, 13, 1, '59'),
(58, 13, 1, '59'),
(59, 11, 2, '59'),
(59, 14, 1, '40'),
(60, 13, 2, '59'),
(60, 16, 1, '59'),
(60, 20, 3, '7'),
(61, 26, 3, '59'),
(61, 14, 1, '40'),
(63, 13, 1, '59'),
(65, 14, 1, '40'),
(67, 13, 1, '59'),
(68, 13, 1, '59'),
(68, 11, 1, '59'),
(68, 16, 3, '59'),
(70, 16, 1, '59'),
(72, 13, 3, '59'),
(72, 15, 1, '52'),
(73, 11, 1, '59'),
(73, 16, 1, '59'),
(74, 14, 1, '40'),
(74, 13, 1, '59'),
(74, 11, 1, '59'),
(76, 14, 1, '40'),
(76, 13, 1, '59'),
(76, 11, 1, '59'),
(78, 14, 1, '40'),
(80, 11, 1, '59'),
(82, 15, 1, '52'),
(82, 13, 1, '59'),
(84, 13, 1, '59'),
(84, 14, 1, '40'),
(86, 13, 1, '59'),
(88, 11, 1, '59'),
(89, 16, 1, '59'),
(89, 17, 3, '69'),
(90, 14, 1, '40'),
(90, 11, 1, '59'),
(92, 11, 1, '59'),
(93, 16, 1, '59'),
(94, 13, 2, '59'),
(94, 11, 1, '59'),
(94, 16, 1, '59'),
(95, 16, 1, '59'),
(95, 17, 2, '69'),
(96, 18, 1, '10'),
(97, 13, 1, '59'),
(97, 11, 3, '59'),
(98, 13, 1, '59'),
(99, 11, 3, '59'),
(99, 13, 1, '59'),
(100, 11, 2, '59'),
(100, 13, 1, '59'),
(101, 14, 1, '40'),
(101, 15, 1, '52'),
(102, 11, 2, '59'),
(102, 15, 2, '52'),
(102, 13, 2, '59'),
(103, 13, 1, '59'),
(103, 15, 2, '52'),
(104, 13, 3, '59'),
(105, 19, 1, '10'),
(106, 13, 2, '59'),
(106, 23, 2, '55'),
(107, 13, 1, '59'),
(108, 11, 1, '59'),
(108, 13, 4, '59'),
(109, 13, 3, '59'),
(109, 14, 1, '40'),
(110, 13, 1, '59'),
(111, 11, 2, '59'),
(111, 13, 1, '0'),
(112, 11, 2, '40'),
(113, 16, 2, '59'),
(113, 15, 1, '30'),
(114, 15, 1, '30'),
(114, 11, 2, '40'),
(115, 14, 2, '40'),
(116, 33, 2, '35'),
(116, 34, 3, '59'),
(117, 17, 2, '69'),
(117, 24, 3, '59'),
(118, 34, 2, '59'),
(118, 38, 1, '10'),
(118, 32, 3, '49'),
(119, 32, 1, '49'),
(119, 39, 2, '89'),
(120, 27, 1, '40'),
(120, 25, 2, '79');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `discount` tinyint(1) NOT NULL DEFAULT 0,
  `new_Price` decimal(10,0) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `productName`, `price`, `discount`, `new_Price`, `image`, `description`, `category`) VALUES
(11, 'Page', 'Cat Eye Tortoise Eyeglasses', '59', 1, '40', 'Cat-eye-sunglass1.jpg', 'Page Cat Eye glasses are made polished metal and superior TR90 material. Featured with pearl decorated temple arms hollowed-out frames, it is a good choice for most of women in all collections. Blue blocker lenses and tinted lenses both are available.\r\n\r\n', 1),
(13, 'Myra', 'Cat Eye Multicolor Eyeglasses', '59', 0, '0', 'Cat-eye-sunglass2.jpg', 'Myra eyeglasses are made from flexible and colorful TR90. Featured with integrated nose pads and distinctive cat-eye design, it can be worn easily in party or at home', 1),
(14, 'Anna', 'Round Pink Eyeglasses', '40', 0, '0', 'KIDS-EYEGLASSES1.jpg', 'Anna eyeglasses are made of environmental-friendly and anti-allergic TR90 material. Featured with soft material and elastic cord and crafted from a single piece of soft, flexible TR90 plastic, there are no hinges or metal parts. They are more comfortable and safer than usual frames. These round eyeglasses are sized for Preschool. Plus: Impact-resistant polycarbonate lenses are the best choice for this frame.', 4),
(15, 'Joanna', 'Rectangle Green Eyeglasses', '52', 1, '30', 'KIDS-EYEGLASSES2.jpg', 'Made of lightweight and flexible TR90, featured with silicone anti-slip holder, this pair will put up with your on the go lifestyle day in and day out. The temple length can be adjusted according to needs, this frame is suitable for children aged 5~12 to wear.', 4),
(16, 'Muskogee', 'Horn Champagne Sunglasses', '59', 0, '0', 'MIRRORED-SUNGLASSES1.jpg', 'Muskogee sunglasses are stylish and sleek offering a bold champagne frame adorned with studded accents and squared lenses. Its timeless design is comfortable, lightweight and suitable for men and women.', 2),
(17, 'Oswego', 'Aviator Golden Sunglasses', '69', 0, '0', 'MIRRORED-SUNGLASSES2.jpg', 'Are you looking for a pair of affordable and chic mirrored sunglasses? Glassesshop offers 4 colors mirrored sunglasses. Add a timeless touch to your look with these mirrored sunglasses, a must have accessory for anyone who likes to make a striking and lasting impression', 2),
(18, 'Case', 'Postmodernism B10', '10', 1, '5', 'sunglass-cases1.jpg', 'SKU: CASE_POSTMODERNISM_B10', 5),
(19, 'Case', 'Case_Voyage_B17', '10', 0, '0', 'sunglass-cases2.jpg', 'SKU: CASE_VOYAGE_B17', 5),
(20, 'Glasses Chain', 'Silver Chain', '7', 0, '0', 'chain_1.jpg', 'Glasses Chain for Women', 3),
(21, 'Glasses Chain', 'Star Chain', '7', 0, '0', 'chain_2.jpg', 'Glasses Chain for Women', 3),
(22, 'Hannah', 'Cat Eye Champagne Eyeglasses', '59', 0, '0', 'Cat-eye-sunglass3.jpg', 'Hannah eyeglasses are made of lightweight and comfortable TR90 material. This horn-rimmed medium-sized frame is a must-have pick for all seasons. The glitters on the sides add so much modern take on a classic shape, featuring softly curved lenses and delicately detailed temple arms.', 1),
(23, 'Susanna', 'Cat Eye Black/Golden Eyeglasses', '55', 0, '0', 'Cat-eye-sunglass4.jpg', 'Cat-eye gets an ultramodern makeover in these Susanna eyeglasses. The slim, metal silhouette has an understated yet bold effect, so you can integrate a little personality into every occasion. Adjustable nose pads and spring hinges ensure a comfy and durable fit.', 1),
(24, 'Battle', 'Browline Black/Golden Sunglasses', '59', 0, '0', 'MIRRORED-SUNGLASSES3.jpg', 'Are you looking for a pair of affordable and chic mirrored sunglasses? Glassesshop offers 4 colors mirrored sunglasses. Add a timeless touch to your look with these mirrored sunglasses, a must have accessory for anyone who likes to make a striking and lasting impression.', 2),
(25, 'Marlowe', 'Cat Eye Rose Gold(Rose Gold mirror-coating) Sunglasses', '79', 0, '0', 'MIRRORED-SUNGLASSES4.jpg', 'Marlowe\'s flirty cat-eye shape and pink mirrored lenses are a year-round must have. Featuring adjustable nose pads and metal frame for a lightweight, barely there feel.', 2),
(26, 'Margaret', 'Oval Orange Eyeglasses', '59', 0, '0', 'KIDS-EYEGLASSES3.jpg', 'Made of lightweight and flexible TR90, featured with silicone anti-slip holder, Margaret eyeglasses will put up with your on the go lifestyle day in and day out. The temple length can be adjusted according to needs, this frame is suitable for children aged 5~12 to wear', 4),
(27, 'Besty', 'Round Blue Eyeglasses', '49', 1, '40', 'KIDS-EYEGLASSES4.jpg', 'Besty eyeglasses Round eyeglasses are made of environmental-friendly and anti-allergic TR90 material .Featured with soft material, they are only 9.6g and perfect for kids. Reading or sport eyeglasses both are available.', 4),
(28, 'Case', 'Case Cartoon Pattern B5', '5', 0, '0', 'sunglass-cases3.jpg', 'SKU: CASE_CARTOON_PATTERN_B5', 5),
(29, 'Case', 'Parrot_package', '10', 0, '0', 'sunglass-cases4.jpg', 'SKU: PARROT_CLOTH_AND_CASE', 5),
(30, 'Glasses Chain ', 'Beads Chain', '7', 0, '0', 'chain_3.jpg', 'Glasses Chain for Women', 3),
(31, 'Glasses Chain ', 'Gold Chain', '7', 0, '0', 'chain_5.jpg', 'Glasses Chain for Women', 3),
(32, 'Kama', 'Cat Eye Black/Golden Eyeglasses', '49', 0, '0', 'Cat-eye-sunglass5.jpg', 'Take your cat-eye to the next level with these Kama eyewear. Featured with metal bridge and integrated nose pads, they are great choice for adding a hint of attitude into the mix. The TR90 frame is lightweight and minimalistic, with spring hinges ensuring all-day comfort.', 1),
(33, 'Bray', 'Oval Purple Eyeglasses', '35', 0, '0', 'KIDS-EYEGLASSES5.jpg', 'GlassesShop Bray Oval eyeglasses are made of superlight and flexible TR90 material, coming in three color options: black, purple and blue. Featured with a soft nose-pads and comfortable temple arms. The TR90 frame is a classic oval style, perfect for women in all collections. It is available for progressive and bifocal lenses.', 4),
(34, 'Sheila', 'Horn Champagne Sunglasses', '59', 0, '0', 'MIRRORED-SUNGLASSES5.jpg', 'Are you looking for a pair of affordable and chic mirrored sunglasses? Glassesshop offers 4 colors mirrored sunglasses. Add a timeless touch to your look with these mirrored sunglasses, a must have accessory for anyone who likes to make a striking and lasting impression.', 2),
(35, 'Case', 'Case Gray B3', '5', 0, '0', 'sunglass-cases5.jpg', 'SKU: CASE_GRAY_B3', 5),
(36, 'Glasses Chain ', 'Mix Beads Chain', '7', 0, '0', 'chain_6.jpg', 'Glasses Chain for Women', 3),
(37, 'Glasses Chain ', 'Mix Colors Chain', '7', 0, '0', 'chain_9.jpg', 'Glasses Chain for Women', 3),
(38, 'Case ', 'Case Blue Floral B4', '10', 0, '0', 'sunglass-cases6.jpg', 'SKU: CASE_BLUE_FLORAL_B4', 5),
(39, 'Hacken', 'Round Black Sunglasses', '89', 0, '0', 'MIRRORED-SUNGLASSES6.jpg', 'Are you looking for a pair of affordable and chic mirrored sunglasses? Glassesshop offers 4 colors mirrored sunglasses. Add a timeless touch to your look with these mirrored sunglasses, a must have accessory for anyone who likes to make a striking and lasting impression.', 2),
(40, 'Jerry', 'Rectangle Gray Eyeglasses', '30', 0, '0', 'KIDS-EYEGLASSES6.jpg', 'Glassesshop Jerry Rectangle eyeglasses are made of environmental-friendly and anti-allergic TR90 material.Featured with soft material and elastic cord, they are only 10g and perfect for kids. Reading or sport eyeglasses both are available.', 4),
(51, '', 'cat eye sunglass', '55', 0, '0', '../image/Cat-eye-sunglass6.jpg', 'Cat-eye gets an ultramodern makeover in these Jocelyn eyewear. The slim, metal silhouette has an understated yet bold effect, so you can integrate a little personality into every occasion. Adjustable nose pads and spring hinges ensure a comfy and durable fit.\r\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `FullName` varchar(255) NOT NULL,
  `PhoneNumber` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `created` date NOT NULL DEFAULT current_timestamp(),
  `image` varchar(255) NOT NULL DEFAULT 'usericon.png',
  `LastLogin` datetime NOT NULL DEFAULT current_timestamp(),
  `IsDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `Role` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `FullName`, `PhoneNumber`, `Email`, `Password`, `created`, `image`, `LastLogin`, `IsDeleted`, `Role`) VALUES
(1, 'mohammad', 790369501, 'mohammadali@gmail.com', 'Asdf$3214', '2023-01-02', 'usericon.png', '2023-01-21 00:05:27', 0, 1),
(2, 'asem yaseen', 790369501, 'asem@gmail.com', 'Asdf$3214', '2023-01-02', 'usericon.png', '2023-01-12 09:52:06', 1, 0),
(3, 'mohammad maslamani', 2147483647, 'maslamani@gmail.com', 'Asdf$3214', '2023-01-02', 'usericon.png', '2023-01-02 22:26:14', 0, 0),
(4, 'ruba shandaq', 790369501, 'ruba@gmail.com', 'Asdf$3214', '2023-01-02', 'usericon.png', '2022-12-28 21:59:13', 0, 0),
(5, 'tabarak alhawadi', 790369501, 'tabarak@gmail.com', 'Asdf$3214', '2023-01-02', 'usericon.png', '2022-12-28 21:59:38', 0, 0),
(6, 'abed', 2147483647, 'abed@gmail.com', 'Asdf$3214', '2023-01-02', 'usericon.png', '2023-01-02 08:53:26', 0, 0),
(7, 'ahmed', 2147483647, 'ahmad@gmail.com', 'Asdf$3214', '2023-01-02', 'usericon.png', '2022-12-31 10:55:12', 0, 0),
(8, 'Amro shandaq', 2147483647, 'amro@gmail.com', 'Asdf$3214', '2023-01-02', 'usericon.png', '2022-12-30 22:24:26', 0, 0),
(9, 'Alaa', 2147483647, 'alaa@gmail.com', 'Asdf$3214', '2023-01-02', 'usericon.png', '2022-12-30 22:26:00', 0, 0),
(10, 'talab', 2147483647, 'talab@gmail.com', 'Asdf$3214', '2023-01-02', 'usericon.png', '2022-12-31 11:56:19', 0, 0),
(11, 'asem ', 2147483647, 'alssaa@gmail.com', 'Asdf$3214', '2023-01-02', 'usericon.png', '2022-12-31 11:57:51', 0, 0),
(12, 'mohammad', 790369501, 'mohammadalnuqeiti123@gmail.com', 'Asdf$3214', '2023-01-02', 'usericon.png', '2022-12-31 20:12:28', 0, 0),
(13, 'obaida', 2147483647, 'obaida@gmail.com', 'Asdf$3214', '2023-01-02', 'usericon.png', '2023-01-02 01:03:08', 0, 0),
(14, 'oday', 790369501, 'oday@gmail.com', 'Asdf$3214', '2023-01-02', 'usericon.png', '2023-01-02 14:39:16', 0, 0),
(15, 'ali', 790369501, 'Ali@gmail.com', 'Asdf$3214', '2023-01-02', 'usericon.png', '2023-01-02 20:28:24', 1, 0),
(16, 'mohammad', 1234567898, 'moham8888madalnuqeiti@gmail.com', 'Asdf$3214', '2023-01-14', 'usericon.png', '2023-01-14 21:54:00', 1, 0),
(17, 'mohammad ali', 790369501, 'mohammadalnuqeiti12@gmail.com', 'Asdfg#1234', '2023-01-20', 'usericon.png', '2023-01-20 23:42:54', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `ccc` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `orders_ibfk_1` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_ibfk_1` (`category`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `ccc` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
