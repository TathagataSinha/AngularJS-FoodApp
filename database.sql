-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 27, 2018 at 05:19 AM
-- Server version: 5.6.36-82.0-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parthasa_food`
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
(3, 'kol311', 'Kolkata', '22.5726° N, 88.3639° E', 'Kolkata,West Bengal,India,PIN 700001'),
(4, 'noi123', 'Noida', '28.5355° N, 77.3910° E', 'Noida,Uttar pradesh,PIN 201301'),
(5, 'chen321', 'chennai', '13.0827° N, 80.2707° E', 'Chennai,Tamil Nadu,PIN 600001'),
(6, 'pune113', 'Pune', '18.5204° N, 73.8567° E', 'Pune,Maharastra,PIN 411001'),
(7, 'guw112', 'Guwahati', '26.1445° N, 91.7362° E', 'Guwahati,Assam,PIN 781001'),
(8, 'ben121', 'Bengaluru', '12.9716° N, 77.5946° E', 'Bengaluru,Karnataka,PIN 560001'),
(9, 'moh132', 'Mohali', '30.7046° N, 76.7179° E', 'Mohali,Punjab,PIN 140055'),
(10, 'shim142', 'Shimla', '31.1048° N, 77.1734° E', 'Shimla,Himachal Pradesh,PIN 171001');


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
  `address` varchar(1000) DEFAULT NULL,
  `hash` varchar(100) NOT NULL,
  `active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `password`, `email`, `phone_no`, `created_date`, `updated_date`, `address`, `hash`, `active`) VALUES
(5, 'Rupak Gogoi', '24d135baa06470f825b6f5b345834d7a', '2014dib1995sad@mail.com', '+918574158936', '2018-06-15 11:09:19', '', '', '', 0),
(7, 'Perth Xrma', 'f0379aa3b94f435c057060d21e7afb10', 'perthxrma@gmail.com', '+919954099540', '2018-06-15 12:15:49', '', '', '', 0),
(8, 'John Smith', '9fac6799b5827bb87ec6b080792ea19d', 'john@mail.com', '+17895247856', '2018-06-15 14:58:04', '', '', '', 0),
(10, 'ASDASDDsad AD SAD ', '9f1019eeb4f3b35a43241388c227be57', 'sdadsa@dsadsa.com', '+987885887231', '2018-06-21 15:53:03', '', '', '', 0),
(14, 'First Last', 'f5ca9f9db948ea49efe78a5edf91cd74', 'johdn@mail.com', '+918978254789', '2018-06-25 11:59:47', '2018-06-25 11:59:47', NULL, '', 0),
(16, 'Rupak Gogoi', '30a402668647b9aa22b298fdb62cc0bd', 'rupakgogoi@gmail.com', '+919954099540', '2018-06-25 12:24:33', '2018-06-25 12:24:33', NULL, '', 0),
(17, 'Rupak Gogoi', '30a402668647b9aa22b298fdb62cc0bd', 'dfsfsdfskgogoi@gmail.com', '+919954099540', '2018-06-25 12:35:23', '2018-06-25 12:35:23', NULL, '', 0),
(25, 'Partha', 'e10adc3949ba59abbe56e057f20f883e', 'parthasaraama96@gmail.com', '+98789888585', '2018-06-26 10:39:49', '2018-06-26 10:39:49', NULL, 'acc3e0404646c57502b480dc052c4fe1', 0),
(27, 'Partha', 'e10adc3949ba59abbe56e057f20f883e', 'partshasarma96@gmail.com', '+98789888585', '2018-06-26 10:54:06', '2018-06-26 10:54:06', NULL, 'b6a1085a27ab7bff7550f8a3bd017df8', 0),
(28, 'Partha', 'e10adc3949ba59abbe56e057f20f883e', 'qwewqe', '+98789888585', '2018-06-26 10:56:03', '2018-06-26 10:56:03', NULL, 'd2ddea18f00665ce8623e36bd4e3c7c5', 0),
(29, 'Partha Sarma', 'e10adc3949ba59abbe56e057f20f883e', 'parthasarma96@gmail.com', '+98789888585', '2018-06-26 10:57:54', '2018-06-26 10:57:54', NULL, '4f6ffe13a5d75b2d6a3923922b3922e5', 0),
(30, 'Partha Sarma', 'e10adc3949ba59abbe56e057f20f883e', 'parthasaarma96@gmail.com', '+98789888585', '2018-06-26 10:59:46', '2018-06-26 10:59:46', NULL, 'b86e8d03fe992d1b0e19656875ee557c', 0),
(31, 'Partha Sarma', 'e10adc3949ba59abbe56e057f20f883e', 'parthaasaarma96@gmail.com', '+98789888585', '2018-06-26 11:00:21', '2018-06-26 11:00:21', NULL, 'b337e84de8752b27eda3a12363109e80', 0),
(32, 'Partha Sarma', 'e10adc3949ba59abbe56e057f20f883e', 'parthaasaarmaa96@gmail.com', '+98789888585', '2018-06-26 11:00:35', '2018-06-26 11:00:35', NULL, 'e2a2dcc36a08a345332c751b2f2e476c', 0),
(33, 'Partha Sarma', 'e10adc3949ba59abbe56e057f20f883e', 'parthaaasaarmaa96@gmail.com', '+98789888585', '2018-06-26 11:00:56', '2018-06-26 11:00:56', NULL, 'e165421110ba03099a1c0393373c5b43', 0),
(34, 'Partha Sarma', 'e10adc3949ba59abbe56e057f20f883e', 'parthaaasaaarmaa96@gmail.com', '+98789888585', '2018-06-26 11:03:10', '2018-06-26 11:03:10', NULL, '4c27cea8526af8cfee3be5e183ac9605', 0),
(35, 'Partha Sarma', 'e10adc3949ba59abbe56e057f20f883e', 'parthaaasaaarmaaa96@gmail.com', '+98789888585', '2018-06-26 11:04:40', '2018-06-26 11:04:40', NULL, 'e165421110ba03099a1c0393373c5b43', 0),
(36, 'Tathagata Abhigyan Sinha', 'a0de3811d49a7c5cd06c2b2a16d865d2', 'sinha.tathagataabhigyan@gmail.com', '+918876327852', '2018-06-26 11:12:04', '2018-06-26 11:12:04', NULL, '704afe073992cbe4813cae2f7715336f', 0),
(37, 'Tathagata Abhigyan Sinha', 'a0de3811d49a7c5cd06c2b2a16d865d2', 'iampps147@gmail.com', '+918876327852', '2018-06-26 11:14:06', '2018-06-26 11:14:06', NULL, '58e4d44e550d0f7ee0a23d6b02d9b0db', 0),
(38, 'Tathagata Abhigyan Sinha', 'a0de3811d49a7c5cd06c2b2a16d865d2', 'dasdsad@dasdsadsad.com', '+918876327852', '2018-06-26 11:15:08', '2018-06-26 11:15:08', NULL, '5ec91aac30eae62f4140325d09b9afd0', 0),
(39, 'Tathagata Abhigyan Sinha', 'a0de3811d49a7c5cd06c2b2a16d865d2', 'dasdsad@dsadasdsadsad.com', '+918876327852', '2018-06-26 11:16:08', '2018-06-26 11:16:08', NULL, '9bf31c7ff062936a96d3c8bd1f8f2ff3', 0),
(40, 'rupak gogoi', 'a4d697463a11d20834693fbe54b5e64f', '2014dib25@gmail.com', '8402814579', '2018-06-26 11:45:48', '2018-06-26 11:45:48', NULL, '1f50893f80d6830d62765ffad7721742', 1),
(41, 'rupak gogoi', 'a4d697463a11d20834693fbe54b5e64f', '2014dibb25@gmail.com', '8402814579', '2018-06-26 11:55:20', '2018-06-26 11:55:20', NULL, 'b53b3a3d6ab90ce0268229151c9bde11', 0),
(42, 'rupak gogoi', 'a4d697463a11d20834693fbe54b5e64f', '2014dibbddd25@gmail.com', '8402814579', '2018-06-26 12:01:58', '2018-06-26 12:01:58', NULL, '43ec517d68b6edd3015b3edc9a11367b', 0),
(43, 'priyotosh kalita', '0f017d5fbba93d643871f8de51179c75', 'priyotoshkalita@gmail.com', '+918486243899', '2018-06-26 12:13:36', '2018-06-26 12:13:36', NULL, '735b90b4568125ed6c3f678819b6e058', 1);

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
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
