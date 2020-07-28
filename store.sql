-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2020 at 11:25 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `password`) VALUES
(1, 'kl', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `ad_images`
--

CREATE TABLE `ad_images` (
  `ad_id` varchar(50) NOT NULL,
  `image_url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ad_images`
--

INSERT INTO `ad_images` (`ad_id`, `image_url`) VALUES
('7637326921595359191', '4941595359196.pet.jpg'),
('7637326921595359191', '4551595359196.pet.jpg'),
('7637326921595359191', '3801595359196.pet.jpg'),
('7637326921595359191', '9001595359196.pet.jpg'),
('7637326921595359191', '9341595359196.pet.jpg'),
('8878647791595359472', '6461595359472.pet.jpg'),
('8425485801595359729', '8941595359729.pet.jpg'),
('8425485801595359729', '4331595359729.pet.jpg'),
('8425485801595359729', '5861595359729.pet.jpg'),
('8425485801595359729', '9551595359730.pet.jpg'),
('8425485801595359729', '5781595359730.pet.jpg'),
('9007098931595359879', '9771595359879.pet.jpg'),
('9007098931595359879', '4391595359879.pet.jpg'),
('9007098931595359879', '4591595359880.pet.jpg'),
('9007098931595359879', '5661595359881.pet.jpg'),
('5270584991595441793', '4921595441793.pet.jpg'),
('5967220391595486773', '5481595486773.pet.jpg'),
('5967220391595486773', '7161595486773.pet.jpg'),
('5967220391595486773', '6031595486774.pet.jpg'),
('2794657141595489894', '7861595489894.pet.jpg'),
('2794657141595489894', '3711595489894.pet.jpg'),
('2794657141595489894', '8181595489894.pet.jpg'),
('7688127321595492036', '5651595492036.pet.jpg'),
('5789281721595948800', '3501595948800.pet.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ad_info`
--

CREATE TABLE `ad_info` (
  `ad_id` varchar(50) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `pet_name` varchar(100) NOT NULL DEFAULT 'unknown',
  `pet_category` varchar(10) NOT NULL,
  `breed` varchar(30) NOT NULL,
  `color` varchar(30) DEFAULT NULL,
  `gender` varchar(1) NOT NULL,
  `age` tinyint(1) NOT NULL,
  `age_type` varchar(8) NOT NULL,
  `size` tinyint(1) NOT NULL,
  `vaccinated` tinyint(1) NOT NULL,
  `neutured` tinyint(1) NOT NULL,
  `weight` tinyint(1) NOT NULL,
  `city_village` varchar(30) NOT NULL,
  `district` varchar(30) NOT NULL,
  `state` varchar(20) NOT NULL,
  `description` varchar(300) NOT NULL,
  `about_pet` varchar(600) DEFAULT NULL,
  `adoption_rules` varchar(300) DEFAULT NULL,
  `available` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ad_info`
--

INSERT INTO `ad_info` (`ad_id`, `user_id`, `pet_name`, `pet_category`, `breed`, `color`, `gender`, `age`, `age_type`, `size`, `vaccinated`, `neutured`, `weight`, `city_village`, `district`, `state`, `description`, `about_pet`, `adoption_rules`, `available`) VALUES
('2794657141595489894', '12', 'jhony', 'Dog', 'Golden Retrievers', NULL, '0', 3, 'Year(s)', 0, 1, 1, 2, 'mapusa', 'district 6', 'Goa', 'cute ped, calm', 'pet doest like cold shower', 'pet must place inside the house', NULL),
('5270584991595441793', '12', 'asdfasdf', 'Dog', 'German Shepherds', NULL, '1', 2, 'Month(s)', 1, 1, 0, 2, 'asdfsadf', 'asdfasdf', 'Maharastra', 'asdfsadf', 'asdfsadf', 'asdfasdfasdf', NULL),
('5789281721595948800', '12', 'sdfgsdfg', 'Bird', 'Parrot', NULL, '1', 1, 'Month(s)', 2, 0, -1, 2, 'sdfgdsfg', 'sdfgsdf', 'Goa', 'sdfgsdfg', 'sdfgsdfg', 'sdfgsdg', NULL),
('5967220391595486773', '12', 'toto', 'Dog', 'Beagles', NULL, '0', 3, 'Month(s)', 1, 1, 0, 2, 'Margao', 'district 6', 'Goa', 'sweet dog.', 'Please note this pet doesnt like cold shower', 'must have space at home to be adopted', NULL),
('7688127321595492036', '12', 'asdfasdf', 'Cat', 'Persian', NULL, '1', 1, 'Month(s)', 1, 1, 1, 2, 'asdfasdf', 'asdfasdf', 'Karnataka', 'asdasdf', 'asdfasdfsadf', 'asdfasdf', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(255) NOT NULL,
  `feedback_user` varchar(255) NOT NULL,
  `feedback_descr` varbinary(1000) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `feedback_user`, `feedback_descr`, `rating`) VALUES
(1, 'sdfgsdgf', 0x2073646773646773, 4),
(2, 'haha', 0x616861686120, 4),
(3, 'khan', 0x20617364666173646661736664, 5),
(4, 'xfg', 0x2067666864666867, 4);

-- --------------------------------------------------------

--
-- Table structure for table `found_pets`
--

CREATE TABLE `found_pets` (
  `found_pets_id` int(255) NOT NULL,
  `found_name` varchar(50) NOT NULL,
  `found_address` varchar(255) NOT NULL,
  `found_description` varbinary(1000) NOT NULL,
  `found_species` varchar(50) NOT NULL,
  `found_breed` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `hospital_id` int(255) NOT NULL,
  `hospital_name` varchar(255) NOT NULL,
  `hospital_phone_no` varchar(20) NOT NULL,
  `hospital_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`hospital_id`, `hospital_name`, `hospital_phone_no`, `hospital_address`) VALUES
(17, 'fsdlfnvdv', '565', 'shanta durga'),
(18, '', '4564', ''),
(19, 'shawn hostpit', '11111', 'right his house'),
(20, 'shawn hostpit', '11111', 'right his house');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lost_pets`
--

CREATE TABLE `lost_pets` (
  `lost_pets_id` int(255) NOT NULL,
  `lost_name` varchar(50) NOT NULL,
  `lost_breed` varchar(50) NOT NULL,
  `lost_age` int(100) NOT NULL,
  `lost_address` varchar(50) NOT NULL,
  `lost_description` text NOT NULL,
  `lost_species` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pets`
--

CREATE TABLE `pets` (
  `pets_id` int(255) NOT NULL,
  `pet_name` varchar(30) NOT NULL,
  `breed` varchar(30) NOT NULL,
  `age` int(100) NOT NULL,
  `address` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  `health` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `species` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pet_list`
--

CREATE TABLE `pet_list` (
  `pets_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tips`
--

CREATE TABLE `tips` (
  `tip_id` int(255) NOT NULL,
  `animals` varchar(255) NOT NULL,
  `description` varbinary(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tips`
--

INSERT INTO `tips` (`tip_id`, `animals`, `description`) VALUES
(1, 'dog', 0x4920616d206120736865657020616e642049206c696b6520746f2072756e2061726f756e6420696e207468652077696c64),
(5, '', 0x202049554249554955464249424952554256494e565545524e49554e45525649554549555256),
(6, 'dog', 0x20204f4b504f4b504f4b504f4b504f4b504f4b504f4b),
(9, 'dog', 0x436f6d6d756e6963617465207769746820796f757220646f6720616e6420646576656c6f7020612072656c6174696f6e736869702e20446f67732061726520736f6369616c2063726561747572657320616e642074686579206e65656420746f20696e7465726163742077697468207468656972206f776e65722e205175616c6974792074696d652077696c6c2068656c7020796f752067657420746f206b6e6f7720796f757220646f6720616e6420756e6465727374616e642020706172746963756c6172206e656564732074686174206974206d6967687420686176652c2061732077656c6c20656e68616e636520796f7572206162696c69747920746f207265636f676e697a65206561726c79207369676e73206f6620616e20696c6c6e657373207468617420636f756c6420626520646576656c6f70696e672e20496e206164646974696f6e2c2074696d65207370656e7420696e20646576656c6f70696e6720612072656c6174696f6e736869702077696c6c2068656c702070726576656e74206d616e7920756e646573697261626c65206265686176696f72616c207061747465726e732e),
(10, 'dog', 0x547261696e20796f757220646f6720746f20666f6c6c6f77207468652073696d706c6520636f6d6d616e64732e20507570707920616e6420646f6720747261696e696e6720636c61737365732063616e20626520766572792068656c7066756c2e205468652062657474657220796f757220646f6720697320617420666f6c6c6f77696e6720626173696320616e64206e656365737361727920636f6d6d616e64732c20746865206772656174657220746865206368616e63657320617265207468617420796f757220646f672077696c6c206c6976652061207361666520616e64206c6f6e67206c6966652e),
(13, 'dog', 0x547261696e20796f757220646f6720746f20666f6c6c6f77207468652073696d706c6520636f6d6d616e64732e20507570707920616e6420646f6720747261696e696e6720636c61737365732063616e20626520766572792068656c7066756c2e205468652062657474657220796f757220646f6720697320617420666f6c6c6f77696e6720626173696320616e64206e656365737361727920636f6d6d616e64732c20746865206772656174657220746865206368616e63657320617265207468617420796f757220646f672077696c6c206c6976652061207361666520616e64206c6f6e67206c6966652e68697568666469756866697564687369667568666973756820672e),
(15, 'general', 0x2020617364666173646661736664),
(17, 'cat', 0x496d206173206c617a792061732063616e206265),
(18, 'general', 0x2020706f70),
(22, 'cat', 0x2020496d206e6f742061206361742c20696d2061206d6f7573652e),
(24, 'general', 0x20206e6f20796f75206172652e),
(25, 'dog', 0x4a7573742077686f20646f20796f75207468696e6b20796f752061726520736f6e6e793f0d0a5768617427726520796f7520676f6e6e6120646f206875683f0d0a),
(26, 'cat', 0x202077687920646f207765206c696b6520636174733f0d0a4920646f6e2774207265616c6c79206b6e6f772e0d0a427574207468657927726520637574652e),
(27, 'general', 0x2020776520417245206a757374206b6964732e0d0a5761697420617265207765207265616c6c793f204920646f6e742774206b6e6f7720666f7220737572652e),
(29, 'dog', 0x202077686f3f206d653f207965616820796f752e0d0a676574206f76657220686572652e20706c656173652e),
(30, 'dog', 0x202077686f206c65742074686520646f6773206f75743f0d0a77686f2e2077686f2e2077686f3f),
(32, 'general', 0x202063686f6b6f6b6f),
(33, 'cat', 0x202049276d20736f2063686f636f6c6174792e207965616161616161682e),
(34, 'general', 0x696a616f69736a6f69646a6f73696f2e617568697573616975686973756875682e0d0a616a736f696a6f69646a6f696a6f692e3f),
(36, 'dog', 0x20206c703f0d0a6b6f),
(39, 'cat', 0x20206d6f656f70),
(56, 'dog', 0x20206c2e696f6f692e),
(65, 'general', 0x20207768792e273b2e2f2e2c2e273b0d0a),
(70, 'general', 0x20206975646869756869756863),
(71, 'general', 0x20206c616b73636961736a636f6961736f64696a6f616973646f736964),
(73, 'cat', 0x2020476f6420426c6573732053617368612e),
(74, 'general', 0x2020),
(75, 'general', 0x2020746f6d);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `profile_img_url` varchar(35) NOT NULL DEFAULT 'profile_img/default.jpg',
  `update_timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `contact`, `city`, `address`, `profile_img_url`, `update_timestamp`) VALUES
(12, 'hasibbbb', 'ha@gmail.com', 'b84d7f8d4fa7713e702ab0d9d2632d75', '8329441405', '8329441405', 'Pune', 'profile_img/121595489993.jpg', '2020-07-23 09:39:53'),
(13, 'pet', 'pet@gmail.com', '8f0457d9f2fe82cce4ebbb58fa97b26f', '8329441405', 'mpusa', 'Goa', 'profile_img/default.jpg', '2020-07-23 13:02:08'),
(14, 'shawn lobo', 'shawn@1gmail.com', 'c13aed6e636748fcee07cab2e7dc82c3', '8329441406', 'Mapusa', 'Khorlim', 'profile_img/default.jpg', '2020-07-28 20:42:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `user_id` int(255) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `username`, `password`, `firstname`, `lastname`, `phone_no`, `address`) VALUES
(1, 'Bag', '4567', 'Baggy', 'George', '123456789', 'Brooklyn'),
(10, 'f dvs', '234', 'gsdsc', 'yrhy', '5675', 'svsdvdsvsv');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` bigint(20) NOT NULL,
  `ad_id` varchar(50) NOT NULL,
  `user_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `ad_id`, `user_id`) VALUES
(47, '5270584991595441793', '12'),
(50, '5967220391595486773', '12'),
(51, '5789281721595948800', '12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `ad_info`
--
ALTER TABLE `ad_info`
  ADD PRIMARY KEY (`ad_id`);
ALTER TABLE `ad_info` ADD FULLTEXT KEY `pet_name` (`pet_name`,`pet_category`,`breed`,`gender`,`city_village`,`district`,`state`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `found_pets`
--
ALTER TABLE `found_pets`
  ADD PRIMARY KEY (`found_pets_id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`hospital_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lost_pets`
--
ALTER TABLE `lost_pets`
  ADD PRIMARY KEY (`lost_pets_id`);

--
-- Indexes for table `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`pets_id`);

--
-- Indexes for table `pet_list`
--
ALTER TABLE `pet_list`
  ADD PRIMARY KEY (`pets_id`);

--
-- Indexes for table `tips`
--
ALTER TABLE `tips`
  ADD PRIMARY KEY (`tip_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `found_pets`
--
ALTER TABLE `found_pets`
  MODIFY `found_pets_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `hospital_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `lost_pets`
--
ALTER TABLE `lost_pets`
  MODIFY `lost_pets_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pets`
--
ALTER TABLE `pets`
  MODIFY `pets_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pet_list`
--
ALTER TABLE `pet_list`
  MODIFY `pets_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tips`
--
ALTER TABLE `tips`
  MODIFY `tip_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pet_list`
--
ALTER TABLE `pet_list`
  ADD CONSTRAINT `pet_list_ibfk_1` FOREIGN KEY (`pets_id`) REFERENCES `pets` (`pets_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
