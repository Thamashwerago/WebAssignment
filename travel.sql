-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2022 at 11:07 PM
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
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `placeId` int(11) NOT NULL,
  `cateId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`placeId`, `cateId`) VALUES
(4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `userId` int(11) NOT NULL,
  `placeId` int(11) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `userId` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `summary` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favplace`
--

CREATE TABLE `favplace` (
  `userId` int(11) NOT NULL,
  `placeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favplace`
--

INSERT INTO `favplace` (`userId`, `placeId`) VALUES
(1, 4),
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `likeplace`
--

CREATE TABLE `likeplace` (
  `userId` int(11) NOT NULL,
  `placeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `placeimg`
--

CREATE TABLE `placeimg` (
  `placeId` int(11) NOT NULL,
  `imgName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `placeId` int(11) NOT NULL,
  `placename` varchar(50) NOT NULL,
  `thumbnail` varchar(40) NOT NULL,
  `likes` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `uploadtime` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`placeId`, `placename`, `thumbnail`, `likes`, `views`, `uploadtime`, `description`) VALUES
(1, 'Dunhinda Ella', 'Dunhinda.jpg', 0, 0, 1, 'Dunhinda is a very popular waterfall in Sri Lanka. It has a height of 64 meters. Therefore it is not leading from its height. But, it is a remarkable waterfall when considering the beauty of it. The name Dunhinda derived from the misty appearance in front of the waterfall during the rainy season.'),
(4, 'Ruwanwelisaya', 'Ruwanwelisaya.jpg', 0, 0, 65767, 'The Ruwanweli Maha Seya, also known as the Mahathupa is a stupa in Anuradhapura, Sri Lanka. Two quarts or one Dona of the Buddha\'s relics are enshrined in the stupa, making it the largest collection of his relics anywhere. It was built by Sinhalese King Dutugemunu in c. 140 B.C., who became king of Sri Lanka after a war in which the Chola King Elāra was defeated. It is also known as Swarnamali Seya, Svaṇṇamāli Mahaceti and Rathnamali Seya.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `username`, `email`, `password`) VALUES
(1, 'test', 'test@touronline.space', 'test_123');

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `userId` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `likeplace`
--
ALTER TABLE `likeplace`
  ADD KEY `userId` (`userId`),
  ADD KEY `placeId` (`placeId`);

--
-- Indexes for table `placeimg`
--
ALTER TABLE `placeimg`
  ADD PRIMARY KEY (`placeId`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`placeId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `placeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `likeplace`
--
ALTER TABLE `likeplace`
  ADD CONSTRAINT `likeplace_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`),
  ADD CONSTRAINT `likeplace_ibfk_2` FOREIGN KEY (`placeId`) REFERENCES `places` (`placeId`);

--
-- Constraints for table `placeimg`
--
ALTER TABLE `placeimg`
  ADD CONSTRAINT `placeimg_ibfk_1` FOREIGN KEY (`placeId`) REFERENCES `places` (`placeId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
