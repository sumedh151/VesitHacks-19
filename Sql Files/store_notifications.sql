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
-- Table structure for table `store_notifications`
--

CREATE TABLE `store_notifications` (
  `ssn` int(11) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `note_list` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_notifications`
--

INSERT INTO `store_notifications` (`ssn`, `last_updated`, `note_list`) VALUES
(1, '2019-09-20 10:10:10', '[\'notification_id\':\'status\']'),
(2, '2019-09-21 10:10:10', '[\'notification_id\':\'status\']'),
(3, '2019-09-22 10:10:10', '[\'notification_id\':\'status\']'),
(4, '2019-09-23 10:10:10', '[\'notification_id\':\'status\']'),
(5, '2019-09-24 10:10:10', '[\'notification_id\':\'status\']'),
(6, '2019-09-25 10:10:10', '[\'notification_id\':\'status\']'),
(7, '2019-09-26 10:10:10', '[\'notification_id\':\'status\']'),
(8, '2019-09-27 10:10:10', '[{\'notification_id\':\'status\'}]'),
(9, '2019-09-28 10:10:10', '[{\'notification_id\':\'status\'}]'),
(10, '2019-09-29 10:10:10', '[{\'notification_id\':\'status\'}]'),
(11, '2019-09-30 10:10:10', '[{\'notification_id\':\'status\'}]'),
(12, '2019-10-01 10:10:10', '[{\'notification_id\':\'status\'}]'),
(13, '2019-10-02 10:10:10', '[{\'notification_id\':\'status\'}]'),
(14, '2019-10-03 10:10:10', '[{\'notification_id\':\'status\'}]'),
(15, '2019-10-04 10:10:10', '[{\'notification_id\':\'status\'}]'),
(16, '2019-10-05 10:10:10', '[{\'notification_id\':\'status\'}]'),
(17, '2019-10-06 10:10:10', '[{\'notification_id\':\'status\'}]'),
(18, '2019-10-07 10:10:10', '[{\'notification_id\':\'status\'}]'),
(19, '2019-10-08 10:10:10', '[{\'notification_id\':\'status\'}]'),
(20, '2019-10-09 10:10:10', '[{\'notification_id\':\'status\'}]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `store_notifications`
--
ALTER TABLE `store_notifications`
  ADD KEY `ssn` (`ssn`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `store_notifications`
--
ALTER TABLE `store_notifications`
  ADD CONSTRAINT `store_notifications_ibfk_1` FOREIGN KEY (`ssn`) REFERENCES `user` (`ssn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
