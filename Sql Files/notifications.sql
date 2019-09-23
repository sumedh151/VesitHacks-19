-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2019 at 06:20 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ratingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `note_id` int(11) NOT NULL,
  `ssn` int(11) DEFAULT NULL,
  `initiated_at` datetime DEFAULT NULL,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`note_id`, `ssn`, `initiated_at`, `content`) VALUES
(1, 25, '2019-09-09 00:00:00', '{\'25\':{\'1\':[(19,17,\'content\'),(17,20,\'content\')]0:[(20,22,\'content\'),(22,24,\'content\')]\'to\':49}}'),
(2, 24, '2019-09-12 00:00:00', '{\'24\':{\'1\':[(19,17,\'content\'),(17,20,\'content\')]0:[(20,22,\'content\'),(22,24,\'content\')]\'to\':40}}'),
(3, 23, '2019-08-01 00:00:00', '{\'23\':{\'1\':[(19,17,\'content\'),(17,20,\'content\')]0:[(20,22,\'content\'),(22,24,\'content\')]\'to\':47}}'),
(4, 22, '2019-09-20 00:00:00', '{\'22\':{\'1\':[(19,17,\'content\'),(17,20,\'content\')]0:[(20,22,\'content\'),(22,24,\'content\')]\'to\':35}}'),
(5, 21, '2019-09-22 00:00:00', '{\'21\':{\'1\':[(19,17,\'content\'),(17,20,\'content\')]0:[(20,22,\'content\'),(22,24,\'content\')]\'to\':46}}'),
(6, 20, '2019-08-02 00:00:00', '{\'20\':{\'1\':[(19,17,\'content\'),(17,20,\'content\')]0:[(20,22,\'content\'),(22,24,\'content\')]\'to\':47}}'),
(7, 19, '2019-09-02 00:00:00', '{\'19\':{\'1\':[(19,17,\'content\'),(17,20,\'content\')]0:[(20,22,\'content\'),(22,24,\'content\')]\'to\':35}}'),
(8, 18, '2019-09-09 00:00:00', '{\'18\':{\'1\':[(19,17,\'content\'),(17,20,\'content\')]0:[(20,22,\'content\'),(22,24,\'content\')]\'to\':47}}'),
(9, 17, '2019-09-16 00:00:00', '{\'17\':{\'1\':[(19,17,\'content\'),(17,20,\'content\')]0:[(20,22,\'content\'),(22,24,\'content\')]\'to\':27}}'),
(10, 16, '2019-09-11 00:00:00', '{\'16\':{\'1\':[(19,17,\'content\'),(17,20,\'content\')]0:[(20,22,\'content\'),(22,24,\'content\')]\'to\':34}}'),
(11, 15, '2019-08-17 00:00:00', '{\'15\':{\'1\':[(19,17,\'content\'),(17,20,\'content\')]0:[(20,22,\'content\'),(22,24,\'content\')]\'to\':40}}'),
(12, 14, '2019-08-09 00:00:00', '{\'14\':{\'1\':[(19,17,\'content\'),(17,20,\'content\')]0:[(20,22,\'content\'),(22,24,\'content\')]\'to\':45}}'),
(13, 13, '2019-09-16 00:00:00', '{\'13\':{\'1\':[(19,17,\'content\'),(17,20,\'content\')]0:[(20,22,\'content\'),(22,24,\'content\')]\'to\':38}}'),
(14, 12, '2019-08-16 00:00:00', '{\'12\':{\'1\':[(19,17,\'content\'),(17,20,\'content\')]0:[(20,22,\'content\'),(22,24,\'content\')]\'to\':28}}'),
(15, 11, '2019-08-16 00:00:00', '{\'11\':{\'1\':[(19,17,\'content\'),(17,20,\'content\')]0:[(20,22,\'content\'),(22,24,\'content\')]\'to\':36}}'),
(16, 10, '2019-09-12 00:00:00', '{\'10\':{\'1\':[(19,17,\'content\'),(17,20,\'content\')]0:[(20,22,\'content\'),(22,24,\'content\')]\'to\':30}}'),
(17, 9, '2019-09-02 00:00:00', '{\'9\':{\'1\':[(19,17,\'content\'),(17,20,\'content\')]0:[(20,22,\'content\'),(22,24,\'content\')]\'to\':37}}'),
(18, 8, '2019-08-15 00:00:00', '{\'8\':{\'1\':[(19,17,\'content\'),(17,20,\'content\')]0:[(20,22,\'content\'),(22,24,\'content\')]\'to\':44}}'),
(19, 7, '2019-08-08 00:00:00', '{\'7\':{\'1\':[(19,17,\'content\'),(17,20,\'content\')]0:[(20,22,\'content\'),(22,24,\'content\')]\'to\':47}}'),
(20, 6, '2019-08-02 00:00:00', '{\'6\':{\'1\':[(19,17,\'content\'),(17,20,\'content\')]0:[(20,22,\'content\'),(22,24,\'content\')]\'to\':31}}'),
(21, 1, '2019-09-23 07:05:36', '{1: {\'1\': [22], \'0\': [], \'to\': 25}}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`note_id`),
  ADD KEY `ssn` (`ssn`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`ssn`) REFERENCES `user` (`ssn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
