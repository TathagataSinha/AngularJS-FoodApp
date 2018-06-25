-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2018 at 08:05 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_code` varchar(30) NOT NULL,
  `city_name` varchar(30) NOT NULL,
  `city_location` varchar(50) NOT NULL,
  `city_address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_code`, `city_name`, `city_location`, `city_address`) VALUES
(1, 'dl435', 'New Delhi', '28.6139° N, 77.2090° E', 'New Delhi,India,PIN 110001'),
(2, 'mum421', 'Mumbai', '19.0760° N, 72.8777° E', 'Mumbai,Maharastra,India,PIN 400004'),
(3, 'kol311', 'Kolkata', '22.5726° N, 88.3639° E', 'Kolkata,West Bengal,India,PIN 700001');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_no` varchar(30) NOT NULL,
  `created_date` varchar(30) NOT NULL,
  `updated_date` varchar(30) NOT NULL,
  `address` varchar(1000) NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `password`, `email`, `phone_no`, `created_date`, `update_date`, `address`) VALUES
(3, 'Manas Pratim Sarma', '04e5341683dd221c606a3d107a2c15ce', 'mps@gmail.com', '+918574158936', '2018-06-15 10:42:55', '', ''),
(4, 'Tathagata Abhigyan Sinha', '8a3dcf8cd371d65c076c4f1bb3c5f8f4', 'tathagataabhiyansinha123123@gmail.com', '+919825874158', '2018-06-15 10:51:49', '', ''),
(5, 'Rupak Gogoi', '24d135baa06470f825b6f5b345834d7a', '2014dib1995sad@mail.com', '+918574158936', '2018-06-15 11:09:19', '', ''),
(6, 'Priyotosh Kalita', '629631d8c77ac272104676fc6686a405', 'priyotoshkalita@gmail.com', '+9103612773887', '2018-06-15 11:55:55', '', ''),
(7, 'Perth Xrma', 'f0379aa3b94f435c057060d21e7afb10', 'perthxrma@gmail.com', '+919954099540', '2018-06-15 12:15:49', '', ''),
(8, 'John Smith', '9fac6799b5827bb87ec6b080792ea19d', 'john@mail.com', '+17895247856', '2018-06-15 14:58:04', '', ''),
(10, 'ASDASDDsad AD SAD ', '9f1019eeb4f3b35a43241388c227be57', 'sdadsa@dsadsa.com', '+987885887231', '2018-06-21 15:53:03', '', ''),
(11, 'dsadsads sad', 'dc06698f0e2e75751545455899adccc3', 'email@email.com', '+91978258788', '2018-06-21 16:14:31', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `food_category`
--

CREATE TABLE `food_category` (
  `foodcategory_id` int(11) NOT NULL,
  `foodcategory_code` varchar(30) NOT NULL,
  `foodcategory_name` varchar(30) NOT NULL,
  `foodcategory_description` varchar(100) NOT NULL,
  `restaurant_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `food_items`
--

CREATE TABLE `food_items` (
  `food_id` int(11) NOT NULL,
  `food_code` varchar(30) NOT NULL,
  `food_name` varchar(50) NOT NULL,
  `food_ingredients` varchar(100) NOT NULL,
  `food_category` varchar(50) DEFAULT NULL,
  `food_photo` varchar(1000) DEFAULT NULL,
  `food_description` varchar(200) NOT NULL,
  `food_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `food_photos`
--

CREATE TABLE `food_photos` (
  `foodphoto_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `photo_url` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mall`
--

CREATE TABLE `mall` (
  `mall_id` int(11) NOT NULL,
  `mall_code` varchar(50) NOT NULL,
  `mall_name` varchar(100) NOT NULL,
  `mall_description` varchar(100) NOT NULL,
  `mall_address` varchar(100) NOT NULL,
  `mall_location` varchar(100) NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mall`
--

INSERT INTO `mall` (`mall_id`, `mall_code`, `mall_name`, `mall_description`, `mall_address`, `mall_location`, `city_id`) VALUES
(1, 'dlf123', 'DLF Mall of India', 'Mall Description', 'Plot No _ M 03, Sector 18,Noida NCR', '28.6139 N, 77.2090 E', 1),
(2, 'spf312', 'Shopprix Mall', 'Supertech Shopprix Mall', 'Supertech Shopprix Mall, Sector 61,Noida, Delhi NCR ', '28.6139 N, 77.2090 E', 1),
(3, 'inf789', 'Infiniti Mall', 'Infiniti Mall is a chain of shopping malls in India. It is a subsidiary of K. Raheja Constructions', 'New Link Road, Oshiwara, Andheri West, Mumbai, Maharashtra 400053', '28.6139 N, 77.2090 E', 2),
(4, 'scf678', 'South City Mall', 'South City Mall is a shopping mall in south Kolkata, India. Located on Prince Anwar Shah Road.', '375, Prince Anwar Shah Road, Kolkata, West Bengal 700068', '28.6139 N, 77.2090 E', 3),
(5, 'pfc912', 'Pacific Mall\r\n', 'Pacific Mall ', 'Najafgarh Road, Tagore Garden, Block 6, Tilak Nagar, New Delhi, Delhi 110018', '28.6139 N, 77.2090 E', 1),
(6, 'phn412', 'Phoenix Marketcity', 'Phoenix Marketcity', 'Lal Bahadur Shastri Road, Kurla West, Kamani, Kamani, Ashok Nagar, Kurla, Mumbai, Maharashtra 400070', '23.5610 N 56.3135 E', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mall_photos`
--

CREATE TABLE `mall_photos` (
  `mallphoto_id` int(11) NOT NULL,
  `mall_id` int(11) NOT NULL,
  `mallphoto_url` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mall_photos`
--

INSERT INTO `mall_photos` (`mallphoto_id`, `mall_id`, `mallphoto_url`) VALUES
(1, 1, 'https://media-cdn.tripadvisor.com/media/photo-o/0d/7e/15/0f/img-20161101-wa0009-largejpg.jpg'),
(3, 3, 'https://media-cdn.tripadvisor.com/media/photo-o/0d/7e/15/0f/img-20161101-wa0009-largejpg.jpg'),
(4, 4, 'https://media-cdn.tripadvisor.com/media/photo-o/0d/7e/15/0f/img-20161101-wa0009-largejpg.jpg'),
(5, 2, 'https://media-cdn.tripadvisor.com/media/photo-o/0d/7e/15/0f/img-20161101-wa0009-largejpg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mycart`
--

CREATE TABLE `mycart` (
  `cart_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `deleted` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_code` varchar(50) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `address` varchar(300) NOT NULL,
  `description` varchar(300) NOT NULL,
  `date` varchar(15) NOT NULL,
  `total` double NOT NULL,
  `status` enum('Confirmed','Delivered') NOT NULL,
  `deleted` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `restaurant_id` int(11) NOT NULL,
  `restaurant_code` varchar(50) NOT NULL,
  `restaurant_name` varchar(100) NOT NULL,
  `restaurant_address` varchar(100) NOT NULL,
  `restaurant_location` varchar(100) NOT NULL,
  `restaurant_rating` double DEFAULT NULL,
  `restaurant_qrcode` varchar(1000) NOT NULL,
  `mall_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_food`
--

CREATE TABLE `restaurant_food` (
  `restaurantfood_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_photos`
--

CREATE TABLE `restaurant_photos` (
  `restaurantphoto_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `photo_url` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD UNIQUE KEY `city_code` (`city_code`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `food_category`
--
ALTER TABLE `food_category`
  ADD PRIMARY KEY (`foodcategory_id`),
  ADD UNIQUE KEY `foodcategory_code` (`foodcategory_code`),
  ADD KEY `restaurant_id` (`restaurant_id`);

--
-- Indexes for table `food_items`
--
ALTER TABLE `food_items`
  ADD PRIMARY KEY (`food_id`),
  ADD UNIQUE KEY `food_code` (`food_code`);

--
-- Indexes for table `food_photos`
--
ALTER TABLE `food_photos`
  ADD PRIMARY KEY (`foodphoto_id`),
  ADD KEY `food_id` (`food_id`);

--
-- Indexes for table `mall`
--
ALTER TABLE `mall`
  ADD PRIMARY KEY (`mall_id`),
  ADD UNIQUE KEY `mall_code` (`mall_code`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `mall_photos`
--
ALTER TABLE `mall_photos`
  ADD PRIMARY KEY (`mallphoto_id`),
  ADD KEY `mall_id` (`mall_id`);

--
-- Indexes for table `mycart`
--
ALTER TABLE `mycart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `Customer_id` (`customer_id`),
  ADD KEY `Food_Id` (`food_id`),
  ADD KEY `restaurant_id` (`restaurant_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `order_code` (`order_code`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `restaurant_id` (`restaurant_id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`restaurant_id`),
  ADD UNIQUE KEY `restaurant_code` (`restaurant_code`),
  ADD KEY `mall_id` (`mall_id`);

--
-- Indexes for table `restaurant_food`
--
ALTER TABLE `restaurant_food`
  ADD PRIMARY KEY (`restaurantfood_id`),
  ADD KEY `food_Id` (`food_id`),
  ADD KEY `restaurant_Id` (`restaurant_id`);

--
-- Indexes for table `restaurant_photos`
--
ALTER TABLE `restaurant_photos`
  ADD PRIMARY KEY (`restaurantphoto_id`),
  ADD KEY `restaurant_id` (`restaurant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `food_category`
--
ALTER TABLE `food_category`
  MODIFY `foodcategory_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_items`
--
ALTER TABLE `food_items`
  MODIFY `food_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_photos`
--
ALTER TABLE `food_photos`
  MODIFY `foodphoto_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mall`
--
ALTER TABLE `mall`
  MODIFY `mall_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mall_photos`
--
ALTER TABLE `mall_photos`
  MODIFY `mallphoto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mycart`
--
ALTER TABLE `mycart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `restaurant_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant_food`
--
ALTER TABLE `restaurant_food`
  MODIFY `restaurantfood_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant_photos`
--
ALTER TABLE `restaurant_photos`
  MODIFY `restaurantphoto_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food_category`
--
ALTER TABLE `food_category`
  ADD CONSTRAINT `food_category_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `food_photos`
--
ALTER TABLE `food_photos`
  ADD CONSTRAINT `food_photos_ibfk_1` FOREIGN KEY (`food_id`) REFERENCES `food_items` (`food_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mall`
--
ALTER TABLE `mall`
  ADD CONSTRAINT `mall_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`);

--
-- Constraints for table `mall_photos`
--
ALTER TABLE `mall_photos`
  ADD CONSTRAINT `mall_photos_ibfk_1` FOREIGN KEY (`mall_id`) REFERENCES `mall` (`mall_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mycart`
--
ALTER TABLE `mycart`
  ADD CONSTRAINT `mycart_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mycart_ibfk_2` FOREIGN KEY (`food_id`) REFERENCES `food_items` (`food_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mycart_ibfk_3` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD CONSTRAINT `restaurant_ibfk_1` FOREIGN KEY (`mall_id`) REFERENCES `mall` (`mall_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `restaurant_food`
--
ALTER TABLE `restaurant_food`
  ADD CONSTRAINT `restaurant_food_ibfk_1` FOREIGN KEY (`food_id`) REFERENCES `food_items` (`food_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `restaurant_food_ibfk_2` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `restaurant_photos`
--
ALTER TABLE `restaurant_photos`
  ADD CONSTRAINT `restaurant_photos_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
