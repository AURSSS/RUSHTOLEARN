-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2022 at 07:56 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workfile`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `video_id` int(11) NOT NULL,
  `video_name` varchar(100) DEFAULT NULL,
  `wdescription` text DEFAULT NULL,
  `uploader` int(11) DEFAULT NULL,
  `video_dir` varchar(255) DEFAULT NULL,
  `publish_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`video_id`, `video_name`, `wdescription`, `uploader`, `video_dir`, `publish_time`) VALUES
(15, 'rida', 'rida coding while hes angry and nothingelse', 19, 'courses/video_61e23d167dced4.700570211642216726.mp4', '2022-01-22 02:07:40'),
(16, 'name', 'description xD', 23, 'courses/video_61e5a7217c3e21642440481.', '2022-01-22 02:07:40'),
(17, 'a wolf trying to hunt abad', 'i will cape it short', 26, 'courses/video_61e818be988304.209415471642600638.mp4', '2022-01-22 02:07:40');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `card_num` bigint(20) NOT NULL,
  `card_cvc` int(5) NOT NULL,
  `card_exp_month` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `card_exp_year` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `item_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `item_price` float(10,2) NOT NULL,
  `item_price_currency` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'usd',
  `paid_amount` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `paid_amount_currency` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `txn_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wprofile`
--

CREATE TABLE `wprofile` (
  `profile_id` int(11) NOT NULL,
  `wid` int(11) NOT NULL,
  `fullName` varchar(60) NOT NULL,
  `specialty` varchar(60) NOT NULL,
  `job` varchar(60) NOT NULL,
  `country` varchar(60) NOT NULL,
  `phone` int(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `about` varchar(500) NOT NULL,
  `addres` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wprofile`
--

INSERT INTO `wprofile` (`profile_id`, `wid`, `fullName`, `specialty`, `job`, `country`, `phone`, `email`, `about`, `addres`) VALUES
(1, 23, 'said weld said', 'code maker', 'killer', 'USA', 0, 'k.anderson@example.com', 'bullshit', 'A108 Adam Street, New York, NY 535022'),
(2, 32, 'abad kakku', 'software enginer', 'programmer', 'somewhere in the world', 2147483647, 'crazynigga@gmail.com', 'trying to help reda ', 'he doesn\'t blong to anywhare'),
(3, 36, 'ashraf programmer', 'web dev', 'student', 'dutch', 2147483647, 'email@gmail.com', 'something about my life ...', 'some where dutch');

-- --------------------------------------------------------

--
-- Table structure for table `wuser`
--

CREATE TABLE `wuser` (
  `wid` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `wname` varchar(20) NOT NULL,
  `wimage` varchar(255) NOT NULL,
  `img_dir` varchar(255) NOT NULL,
  `wemail` text NOT NULL,
  `rem` varchar(255) NOT NULL,
  `wpassword` varchar(255) NOT NULL,
  `date_join` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `access_level` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wuser`
--

INSERT INTO `wuser` (`wid`, `profile_id`, `user_id`, `wname`, `wimage`, `img_dir`, `wemail`, `rem`, `wpassword`, `date_join`, `access_level`) VALUES
(19, 0, 0, 'rida', '', '', 'rida@gmail.com', '', '$2y$10$ldljmzucXaRwM7dulhuilufWP23pqVed9BQ4BQSYwhLHxpaWih06G', '0000-00-00 00:00:00', 'user'),
(20, 0, 0, 'admin', '', '', 'admin@jotmail.fr', '', '$2y$10$BR5rulGf88ncI.SzYMvW6eg.B2DAdW9dY7FYAaBwJ7Gc9.orQ9fsy', '0000-00-00 00:00:00', 'user'),
(21, 0, 0, 'mohammed', '', '', 'mohammed@gmail.com', '', '$2y$10$ODR6nzofkmwXdxz4YdBpEOZp2QWPK/nMLUs/hohFBQl29c9LYlCNm', '0000-00-00 00:00:00', 'user'),
(22, 0, 0, 'work', '', '', 'mohammed55@gmail.com', '', '$2y$10$3R.O7VskeJrjC2glrrkeY.K19RPu7U4Qo.S4.8QGtMNKpf/686rC2', '0000-00-00 00:00:00', 'admin'),
(23, 0, 0, 'said', 'img_6201616b168e19.898391821644257643.jpg', 'uploads/img_6201616b168e19.898391821644257643.jpg', 'said@gmail.com', '', '$2y$10$mH7FLVCnJjO84QTE7/4eoenpni8nB9sdXg35tFNsZ/7CTE2COapFa', '2022-02-07 18:14:03', 'user'),
(24, 0, 0, 'nawaf', '', '', 'nawaf@gmail.com', '', '$2y$10$Xb2iPiOq.t/R2hKVGX4cpe4Sf39RtKjv8hs0pTgeImw.N7cRjCIxi', '0000-00-00 00:00:00', 'user'),
(26, 0, 0, 'kakku', '', 'uploads/img_61e817e9a05183.813611141642600425.jpg', 'kakku@gmail.com', '', '$2y$10$MfwdFmNhmRqAjcbbg4qMn.2duh.ka7H.xOyzghFU8tF0e03L.MLvG', '2022-01-19 13:53:45', 'user'),
(27, 0, 0, 'test2', '', '', 'test@gmail.com', '', '$2y$10$DiTpo6KPOAvizZEgJjQuoeuvisCYwPGbPuVU8PirwGkpwj4fCUPcW', '2022-01-18 19:26:46', 'user'),
(28, 0, 0, 'myuncle', '', 'uploads/img_61ed55ba49fcc8.143396441642943930.png', 'myuncle@gmail.com', '', '$2y$10$6A4eJWprg/qwyYCIb9ZaberEThKIFqFZTQtHFBDEclK8Db0/GXEWe', '2022-01-23 13:18:50', 'user'),
(29, 0, 0, 'potato', '', 'uploads/img_61f0c0c63d18a0.656330811643167942.png', 'potato@gmail.com', '', '$2y$10$Bhii3sIBh7Bq2bdvtxkxuunZIUeKsSHvKoaxmkR1GPRLQ2dXZSbVi', '2022-01-26 03:32:22', 'user'),
(30, 0, 0, 'bilal', 'img_620076bbe8e181.009839671644197563.png', 'uploads/img_620076bbe8e181.009839671644197563.png', 'bilal@gmail.com', '', '$2y$10$8wnIeWaJG5md5GpkXCpcyOXkF/oO.tS0p0mJBf12pqYLGRLqF3Wiq', '2022-02-07 01:32:43', 'user'),
(31, 0, 0, 'test3', 'img_62012def626b05.850608811644244463.png', 'uploads/img_62012def626b05.850608811644244463.png', 'test3@gmail.com', '', '$2y$10$F9be4YhAJGtFoUHWr3tqBuq2ABbtK/ZrN0SS5WrcQbyxj27asgEEC', '2022-02-07 14:34:23', 'user'),
(32, 0, 0, 'newaccount', '', '', 'email20@gmail.com', '', '$2y$10$rsHJ4wliNzPuCoyY3UPptOs5U5aeGORg1H62s/rVLxBZoB/SM0e9y', '2022-02-08 02:36:55', 'user'),
(36, 0, 0, 'ashraf', '', '', 'ashraf@gmail.com', '', '$2y$10$gDGRdOdNSQYO8HWsbBCmw.oA0JFtBCmiAGm8U.6PuUWogetNdk9CS', '2022-02-08 19:20:41', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`video_id`),
  ADD KEY `test` (`uploader`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wprofile`
--
ALTER TABLE `wprofile`
  ADD PRIMARY KEY (`profile_id`),
  ADD KEY `test2` (`wid`);

--
-- Indexes for table `wuser`
--
ALTER TABLE `wuser`
  ADD PRIMARY KEY (`wid`),
  ADD UNIQUE KEY `wname` (`wname`),
  ADD UNIQUE KEY `wemail` (`wemail`) USING HASH,
  ADD KEY `user_id` (`user_id`),
  ADD KEY `rem` (`rem`),
  ADD KEY `profile_id` (`profile_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wprofile`
--
ALTER TABLE `wprofile`
  MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wuser`
--
ALTER TABLE `wuser`
  MODIFY `wid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `test` FOREIGN KEY (`uploader`) REFERENCES `wuser` (`wid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wprofile`
--
ALTER TABLE `wprofile`
  ADD CONSTRAINT `test2` FOREIGN KEY (`wid`) REFERENCES `wuser` (`wid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
