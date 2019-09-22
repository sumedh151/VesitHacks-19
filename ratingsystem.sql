-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2019 at 10:00 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

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
-- Table structure for table `changes`
--

CREATE TABLE `changes` (
  `ssn` int(11) DEFAULT NULL,
  `team_change` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `note_id` int(11) NOT NULL,
  `ssn` int(11) DEFAULT NULL,
  `initiated_at` datetime DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `team_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `ssn` int(11) NOT NULL,
  `deadline` text,
  `rating` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`team_id`, `task_id`, `ssn`, `deadline`, `rating`) VALUES
(1, 1, 1, '2019-10-08', '{\'2019-09-23\' : {\"param1\":\'3.4\',\"param2\":\'3.4\',\"paramn\" : \'3.4\'}, \'2019-09-30\' : {\"param1\":\'3.4\',\"param2\":\'3.4\',\"paramn\" : \'3.4\'},}'),
(2, 2, 55, '2019-10-09', '{\'2019-09-23\' : {\'param1\' : 8,\'param2\' : 4,\'paramn\' : 10},\'2019-09-30\' :{\'param1\' :4, \'param2\':1\'paramn\':8}}'),
(3, 3, 12, '2019-10-10', '{\'2019-09-23\' : {\'param1\' : 4,\'param2\' : 2,\'paramn\' : 9},\'2019-09-30\' :{\'param1\' :8, \'param2\':5\'paramn\':4}}'),
(4, 4, 25, '2019-10-11', '{\'2019-09-23\' : {\'param1\' : 3,\'param2\' : 7,\'paramn\' : 7},\'2019-09-30\' :{\'param1\' :1, \'param2\':7\'paramn\':5}}'),
(5, 5, 34, '2019-10-12', '{\'2019-09-23\' : {\'param1\' : 2,\'param2\' : 1,\'paramn\' : 1},\'2019-09-30\' :{\'param1\' :8, \'param2\':7\'paramn\':10}}'),
(6, 6, 35, '2019-10-13', '{\'2019-09-23\' : {\'param1\' : 7,\'param2\' : 4,\'paramn\' : 5},\'2019-09-30\' :{\'param1\' :10, \'param2\':8\'paramn\':1}}'),
(7, 7, 35, '2019-10-14', '{\'2019-09-23\' : {\'param1\' : 4,\'param2\' : 6,\'paramn\' : 8},\'2019-09-30\' :{\'param1\' :7, \'param2\':3\'paramn\':3}}'),
(8, 8, 73, '2019-10-15', '{\'2019-09-23\' : {\'param1\' : 2,\'param2\' : 9,\'paramn\' : 7},\'2019-09-30\' :{\'param1\' :5, \'param2\':2\'paramn\':9}}'),
(9, 9, 56, '2019-10-16', '{\'2019-09-23\' : {\'param1\' : 10,\'param2\' : 8,\'paramn\' : 4},\'2019-09-30\' :{\'param1\' :3, \'param2\':10\'paramn\':6}}'),
(10, 10, 43, '2019-10-17', '{\'2019-09-23\' : {\'param1\' : 4,\'param2\' : 6,\'paramn\' : 7},\'2019-09-30\' :{\'param1\' :3, \'param2\':10\'paramn\':8}}'),
(11, 11, 35, '2019-10-18', '{\'2019-09-23\' : {\'param1\' : 7,\'param2\' : 8,\'paramn\' : 9},\'2019-09-30\' :{\'param1\' :8, \'param2\':5\'paramn\':1}}'),
(12, 12, 49, '2019-10-19', '{\'2019-09-23\' : {\'param1\' : 1,\'param2\' : 6,\'paramn\' : 4},\'2019-09-30\' :{\'param1\' :1, \'param2\':9\'paramn\':8}}'),
(13, 13, 53, '2019-10-20', '{\'2019-09-23\' : {\'param1\' : 6,\'param2\' : 3,\'paramn\' : 8},\'2019-09-30\' :{\'param1\' :9, \'param2\':2\'paramn\':3}}'),
(14, 14, 69, '2019-10-21', '{\'2019-09-23\' : {\'param1\' : 4,\'param2\' : 4,\'paramn\' : 8},\'2019-09-30\' :{\'param1\' :4, \'param2\':9\'paramn\':7}}'),
(15, 15, 44, '2019-10-22', '{\'2019-09-23\' : {\'param1\' : 8,\'param2\' : 3,\'paramn\' : 3},\'2019-09-30\' :{\'param1\' :7, \'param2\':9\'paramn\':4}}'),
(16, 16, 54, '2019-10-23', '{\'2019-09-23\' : {\'param1\' : 5,\'param2\' : 7,\'paramn\' : 7},\'2019-09-30\' :{\'param1\' :10, \'param2\':5\'paramn\':10}}'),
(17, 17, 67, '2019-10-24', '{\'2019-09-23\' : {\'param1\' : 3,\'param2\' : 1,\'paramn\' : 6},\'2019-09-30\' :{\'param1\' :10, \'param2\':8\'paramn\':4}}'),
(18, 18, 75, '2019-10-25', '{\'2019-09-23\' : {\'param1\' : 2,\'param2\' : 5,\'paramn\' : 1},\'2019-09-30\' :{\'param1\' :6, \'param2\':5\'paramn\':3}}'),
(19, 19, 68, '2019-10-26', '{\'2019-09-23\' : {\'param1\' : 1,\'param2\' : 9,\'paramn\' : 9},\'2019-09-30\' :{\'param1\' :4, \'param2\':10\'paramn\':4}}'),
(20, 20, 62, '2019-10-27', '{\'2019-09-23\' : {\'param1\' : 10,\'param2\' : 9,\'paramn\' : 5},\'2019-09-30\' :{\'param1\' :5, \'param2\':4\'paramn\':8}}'),
(21, 21, 73, '2019-10-28', '{\'2019-09-23\' : {\'param1\' : 4,\'param2\' : 1,\'paramn\' : 3},\'2019-09-30\' :{\'param1\' :7, \'param2\':4\'paramn\':5}}'),
(22, 22, 38, '2019-10-29', '{\'2019-09-23\' : {\'param1\' : 1,\'param2\' : 6,\'paramn\' : 5},\'2019-09-30\' :{\'param1\' :2, \'param2\':4\'paramn\':7}}'),
(23, 23, 62, '2019-10-30', '{\'2019-09-23\' : {\'param1\' : 3,\'param2\' : 1,\'paramn\' : 6},\'2019-09-30\' :{\'param1\' :4, \'param2\':10\'paramn\':6}}'),
(24, 24, 61, '2019-10-31', '{\'2019-09-23\' : {\'param1\' : 6,\'param2\' : 3,\'paramn\' : 2},\'2019-09-30\' :{\'param1\' :3, \'param2\':1\'paramn\':3}}'),
(25, 25, 51, '2019-11-01', '{\'2019-09-23\' : {\'param1\' : 10,\'param2\' : 1,\'paramn\' : 10},\'2019-09-30\' :{\'param1\' :4, \'param2\':5\'paramn\':6}}'),
(1, 26, 10, '2019-11-02', '{\'2019-09-23\' : {\'param1\' : 6,\'param2\' : 10,\'paramn\' : 6},\'2019-09-30\' :{\'param1\' :7, \'param2\':8\'paramn\':1}}'),
(2, 27, 61, '2019-11-03', '{\'2019-09-23\' : {\'param1\' : 10,\'param2\' : 9,\'paramn\' : 9},\'2019-09-30\' :{\'param1\' :6, \'param2\':10\'paramn\':9}}'),
(3, 28, 18, '2019-11-04', '{\'2019-09-23\' : {\'param1\' : 4,\'param2\' : 9,\'paramn\' : 3},\'2019-09-30\' :{\'param1\' :8, \'param2\':7\'paramn\':7}}'),
(4, 29, 29, '2019-11-05', '{\'2019-09-23\' : {\'param1\' : 4,\'param2\' : 7,\'paramn\' : 10},\'2019-09-30\' :{\'param1\' :7, \'param2\':10\'paramn\':10}}'),
(5, 30, 43, '2019-11-06', '{\'2019-09-23\' : {\'param1\' : 3,\'param2\' : 4,\'paramn\' : 8},\'2019-09-30\' :{\'param1\' :4, \'param2\':5\'paramn\':10}}'),
(6, 31, 37, '2019-11-07', '{\'2019-09-23\' : {\'param1\' : 4,\'param2\' : 3,\'paramn\' : 6},\'2019-09-30\' :{\'param1\' :9, \'param2\':5\'paramn\':2}}'),
(7, 32, 39, '2019-11-08', '{\'2019-09-23\' : {\'param1\' : 6,\'param2\' : 4,\'paramn\' : 8},\'2019-09-30\' :{\'param1\' :10, \'param2\':8\'paramn\':5}}'),
(8, 33, 46, '2019-11-09', '{\'2019-09-23\' : {\'param1\' : 1,\'param2\' : 2,\'paramn\' : 7},\'2019-09-30\' :{\'param1\' :8, \'param2\':9\'paramn\':4}}'),
(9, 34, 54, '2019-11-10', '{\'2019-09-23\' : {\'param1\' : 10,\'param2\' : 5,\'paramn\' : 3},\'2019-09-30\' :{\'param1\' :7, \'param2\':4\'paramn\':4}}'),
(10, 35, 66, '2019-11-11', '{\'2019-09-23\' : {\'param1\' : 1,\'param2\' : 1,\'paramn\' : 5},\'2019-09-30\' :{\'param1\' :1, \'param2\':3\'paramn\':7}}'),
(11, 36, 57, '2019-11-12', '{\'2019-09-23\' : {\'param1\' : 8,\'param2\' : 4,\'paramn\' : 9},\'2019-09-30\' :{\'param1\' :4, \'param2\':5\'paramn\':4}}'),
(12, 37, 45, '2019-11-13', '{\'2019-09-23\' : {\'param1\' : 4,\'param2\' : 4,\'paramn\' : 5},\'2019-09-30\' :{\'param1\' :6, \'param2\':8\'paramn\':10}}'),
(13, 38, 44, '2019-11-14', '{\'2019-09-23\' : {\'param1\' : 1,\'param2\' : 9,\'paramn\' : 6},\'2019-09-30\' :{\'param1\' :5, \'param2\':9\'paramn\':5}}'),
(14, 39, 39, '2019-11-15', '{\'2019-09-23\' : {\'param1\' : 9,\'param2\' : 1,\'paramn\' : 7},\'2019-09-30\' :{\'param1\' :2, \'param2\':3\'paramn\':5}}'),
(15, 40, 35, '2019-11-16', '{\'2019-09-23\' : {\'param1\' : 4,\'param2\' : 8,\'paramn\' : 1},\'2019-09-30\' :{\'param1\' :7, \'param2\':4\'paramn\':7}}'),
(16, 41, 42, '2019-11-17', '{\'2019-09-23\' : {\'param1\' : 3,\'param2\' : 1,\'paramn\' : 9},\'2019-09-30\' :{\'param1\' :10, \'param2\':8\'paramn\':3}}'),
(17, 42, 36, '2019-11-18', '{\'2019-09-23\' : {\'param1\' : 5,\'param2\' : 7,\'paramn\' : 3},\'2019-09-30\' :{\'param1\' :3, \'param2\':2\'paramn\':8}}'),
(18, 43, 67, '2019-11-19', '{\'2019-09-23\' : {\'param1\' : 8,\'param2\' : 7,\'paramn\' : 7},\'2019-09-30\' :{\'param1\' :4, \'param2\':6\'paramn\':10}}'),
(19, 44, 71, '2019-11-20', '{\'2019-09-23\' : {\'param1\' : 3,\'param2\' : 5,\'paramn\' : 4},\'2019-09-30\' :{\'param1\' :7, \'param2\':2\'paramn\':7}}'),
(20, 45, 67, '2019-11-21', '{\'2019-09-23\' : {\'param1\' : 6,\'param2\' : 8,\'paramn\' : 7},\'2019-09-30\' :{\'param1\' :8, \'param2\':6\'paramn\':4}}'),
(21, 46, 42, '2019-11-22', '{\'2019-09-23\' : {\'param1\' : 9,\'param2\' : 4,\'paramn\' : 7},\'2019-09-30\' :{\'param1\' :2, \'param2\':5\'paramn\':8}}'),
(22, 47, 69, '2019-11-23', '{\'2019-09-23\' : {\'param1\' : 5,\'param2\' : 5,\'paramn\' : 10},\'2019-09-30\' :{\'param1\' :8, \'param2\':1\'paramn\':10}}'),
(23, 48, 67, '2019-11-24', '{\'2019-09-23\' : {\'param1\' : 10,\'param2\' : 9,\'paramn\' : 9},\'2019-09-30\' :{\'param1\' :9, \'param2\':5\'paramn\':5}}'),
(24, 49, 75, '2019-11-25', '{\'2019-09-23\' : {\'param1\' : 6,\'param2\' : 1,\'paramn\' : 1},\'2019-09-30\' :{\'param1\' :3, \'param2\':6\'paramn\':5}}'),
(25, 50, 70, '2019-11-26', '{\'2019-09-23\' : {\'param1\' : 8,\'param2\' : 10,\'paramn\' : 5},\'2019-09-30\' :{\'param1\' :6, \'param2\':1\'paramn\':6}}');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `t_id` int(11) NOT NULL,
  `team_name` varchar(30) DEFAULT NULL,
  `mgr_ssn` int(11) DEFAULT NULL,
  `team_path` text,
  `members` text,
  `team_status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`t_id`, `team_name`, `mgr_ssn`, `team_path`, `members`, `team_status`) VALUES
(1, 'team1', 25, '{22,23}', '{1: \'2011-09-07\', 10: \'2011-09-07\', 19: \'2011-09-07\', 28: \'2011-09-07\', 37: \'2011-09-07\', 46: \'2011-09-07\', 55: \'2011-09-07\'}', 0),
(2, 'team2', 24, '{23}', '{55: \'2011-09-07\', 61: \'2011-09-07\', 67: \'2011-09-07\', 73: \'2011-09-07\'}', 1),
(3, 'team3', 23, NULL, '{12: \'2011-09-07\', 18: \'2011-09-07\', 24: \'2011-09-07\', 22: \'2011-09-07\', 36: \'2011-09-07\', 42: \'2011-09-07\'}', 0),
(4, 'team4', 22, '{23}', '{25: \'2011-09-07\', 29: \'2011-09-07\', 33: \'2011-09-07\', 37: \'2011-09-07\', 41: \'2011-09-07\', 45: \'2011-09-07\', 49: \'2011-09-07\', 53: \'2011-09-07\', 57: \'2011-09-07\', 61: \'2011-09-07\', 65: \'2011-09-07\', 69: \'2011-09-07\', 73: \'2011-09-07\', 77: \'2011-09-07\'}', 0),
(5, 'team5', 21, NULL, '{34: \'2011-09-07\', 43: \'2011-09-07\', 52: \'2011-09-07\', 61: \'2011-09-07\', 70: \'2011-09-07\', 79: \'2011-09-07\'}', 0),
(6, 'team6', 20, NULL, '{35: \'2015-10-20\', 37: \'2015-10-20\', 39: \'2015-10-20\', 41: \'2015-10-20\', 43: \'2015-10-20\', 45: \'2015-10-20\', 47: \'2015-10-20\', 49: \'2015-10-20\', 51: \'2015-10-20\', 53: \'2015-10-20\', 55: \'2015-10-20\', 57: \'2015-10-20\', 59: \'2015-10-20\', 61: \'2015-10-20\', 63: \'2015-10-20\', 65: \'2015-10-20\', 67: \'2015-10-20\', 69: \'2015-10-20\', 71: \'2015-10-20\', 73: \'2015-10-20\', 75: \'2015-10-20\', 77: \'2015-10-20\', 79: \'2015-10-20\'}', 1),
(7, 'team7', 19, '{25}', '{35: \'2015-10-20\', 39: \'2015-10-20\', 43: \'2015-10-20\', 47: \'2015-10-20\', 51: \'2015-10-20\', 55: \'2015-10-20\', 59: \'2015-10-20\', 63: \'2015-10-20\', 67: \'2015-10-20\', 71: \'2015-10-20\', 75: \'2015-10-20\', 79: \'2015-10-20\'}', 1),
(8, 'team8', 18, '{23}', '{73: \'2015-10-20\', 46: \'2015-10-20\', 77: \'2015-10-20\', 44: \'2015-10-20\', 59: \'2015-10-20\', 75: \'2015-10-20\', 48: \'2015-10-20\', 47: \'2015-10-20\', 67: \'2015-10-20\', 79: \'2015-10-20\'}', 1),
(9, 'team9', 17, NULL, '{56: \'2015-10-20\', 54: \'2015-10-20\', 69: \'2015-10-20\', 42: \'2015-10-20\', 43: \'2015-10-20\', 37: \'2015-10-20\', 72: \'2015-10-20\', 51: \'2015-10-20\', 44: \'2015-10-20\', 53: \'2015-10-20\'}', 1),
(10, 'team10', 16, NULL, '{43: \'2015-10-20\', 66: \'2015-10-20\', 40: \'2015-10-20\', 39: \'2015-10-20\', 53: \'2015-10-20\', 44: \'2015-10-20\', 64: \'2015-10-20\', 60: \'2015-10-20\', 54: \'2015-10-20\', 73: \'2015-10-20\'}', 1),
(11, 'team11', 15, NULL, '{35: \'2015-10-20\', 57: \'2015-10-20\', 46: \'2015-10-20\', 68: \'2015-10-20\', 48: \'2015-10-20\', 75: \'2015-10-20\', 69: \'2015-10-20\', 45: \'2015-10-20\', 66: \'2015-10-20\', 71: \'2015-10-20\'}', 0),
(12, 'team12', 14, NULL, '{49: \'2015-10-20\', 45: \'2015-10-20\', 50: \'2015-10-20\', 40: \'2015-10-20\', 39: \'2015-10-20\', 57: \'2015-10-20\', 68: \'2015-10-20\', 74: \'2015-10-20\', 54: \'2015-10-20\', 67: \'2015-10-20\'}', 1),
(13, 'team13', 13, NULL, '{53: \'2015-10-20\', 44: \'2015-10-20\', 72: \'2015-10-20\', 71: \'2015-10-20\', 40: \'2015-10-20\', 62: \'2015-10-20\', 46: \'2015-10-20\', 64: \'2015-10-20\', 38: \'2015-10-20\', 55: \'2015-10-20\'}', 1),
(14, 'team14', 12, '{23}', '{69: \'2015-10-20\', 39: \'2015-10-20\', 74: \'2015-10-20\', 42: \'2015-10-20\', 41: \'2015-10-20\', 50: \'2015-10-20\', 66: \'2015-10-20\', 80: \'2015-10-20\', 43: \'2015-10-20\', 45: \'2015-10-20\'}', 0),
(15, 'team15', 11, NULL, '{44: \'2015-10-20\', 35: \'2015-10-20\', 42: \'2015-10-20\', 38: \'2015-10-20\', 77: \'2015-10-20\', 48: \'2015-10-20\', 58: \'2015-10-20\', 70: \'2015-10-20\', 39: \'2015-10-20\', 76: \'2015-10-20\'}', 1),
(16, 'team16', 10, '{25}', '{54: \'2015-10-20\', 36: \'2015-10-20\', 59: \'2015-10-20\', 55: \'2015-10-20\', 69: \'2015-10-20\', 49: \'2015-10-20\', 62: \'2015-10-20\', 39: \'2015-10-20\', 74: \'2015-10-20\', 40: \'2015-10-20\'}', 0),
(17, 'team17', 9, NULL, '{67: \'2015-10-20\', 37: \'2015-10-20\', 39: \'2015-10-20\', 57: \'2015-10-20\', 69: \'2015-10-20\', 71: \'2015-10-20\', 53: \'2015-10-20\', 38: \'2015-10-20\', 36: \'2015-10-20\', 42: \'2015-10-20\'}', 1),
(18, 'team18', 8, NULL, '{75: \'2015-10-20\', 67: \'2015-10-20\', 40: \'2015-10-20\', 56: \'2015-10-20\', 63: \'2015-10-20\', 44: \'2015-10-20\', 65: \'2015-10-20\', 76: \'2015-10-20\', 64: \'2015-10-20\', 38: \'2015-10-20\'}', 0),
(19, 'team19', 7, NULL, '{68: \'2015-10-20\', 71: \'2015-10-20\', 80: \'2015-10-20\', 35: \'2015-10-20\', 39: \'2015-10-20\', 67: \'2015-10-20\', 61: \'2015-10-20\', 78: \'2015-10-20\', 37: \'2015-10-20\', 43: \'2015-10-20\'}', 1),
(20, 'team20', 6, NULL, '{62: \'2015-10-20\', 67: \'2015-10-20\', 75: \'2015-10-20\', 64: \'2015-10-20\', 35: \'2015-10-20\', 54: \'2015-10-20\', 43: \'2015-10-20\', 52: \'2015-10-20\', 68: \'2015-10-20\', 42: \'2015-10-20\'}', 0),
(21, 'team21', 5, NULL, '{73: \'2015-10-20\', 42: \'2015-10-20\', 43: \'2015-10-20\', 64: \'2015-10-20\', 45: \'2015-10-20\', 41: \'2015-10-20\', 40: \'2015-10-20\', 49: \'2015-10-20\', 35: \'2015-10-20\', 74: \'2015-10-20\'}', 0),
(22, 'team22', 4, NULL, '{38: \'2015-10-20\', 69: \'2015-10-20\', 67: \'2015-10-20\', 41: \'2015-10-20\', 52: \'2015-10-20\', 72: \'2015-10-20\', 79: \'2015-10-20\', 42: \'2015-10-20\', 76: \'2015-10-20\', 37: \'2015-10-20\'}', 1),
(23, 'team23', 3, NULL, '{62: \'2015-10-20\', 67: \'2015-10-20\', 75: \'2015-10-20\', 64: \'2015-10-20\', 35: \'2015-10-20\', 54: \'2015-10-20\', 43: \'2015-10-20\', 52: \'2015-10-20\', 68: \'2015-10-20\', 42: \'2015-10-20\'}', 0),
(24, 'team24', 2, NULL, '{61: \'2015-10-20\', 75: \'2015-10-20\', 73: \'2015-10-20\', 47: \'2015-10-20\', 65: \'2015-10-20\', 52: \'2015-10-20\', 50: \'2015-10-20\', 48: \'2015-10-20\', 71: \'2015-10-20\', 58: \'2015-10-20\'}', 1),
(25, 'team25', 1, '{25}', '{51: \'2015-10-20\', 70: \'2015-10-20\', 59: \'2015-10-20\', 63: \'2015-10-20\', 64: \'2015-10-20\', 75: \'2015-10-20\', 45: \'2015-10-20\', 49: \'2015-10-20\', 46: \'2015-10-20\', 72: \'2015-10-20\'}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ssn` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `t_id` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ssn`, `name`, `email`, `dob`, `t_id`) VALUES
(1, 'abcd1', 'abcd1@testmail.com', '1999-10-04', '{1:[2,\'desg1\'], 25:[1,\'desg2\']}'),
(2, 'abcd2', 'abcd2@testmail.com', '1999-10-05', '{24:[1,\'desg2\']}'),
(3, 'abcd3', 'abcd3@testmail.com', '1999-10-06', '{23:[1,\'desg2\']}'),
(4, 'abcd4', 'abcd4@testmail.com', '1999-10-07', '{22:[1,\'desg2\']}'),
(5, 'abcd5', 'abcd5@testmail.com', '1999-10-08', '{21:[1,\'desg2\']}'),
(6, 'abcd6', 'abcd6@testmail.com', '1999-10-09', '{20:[1,\'desg2\']}'),
(7, 'abcd7', 'abcd7@testmail.com', '1999-10-10', '{19:[1,\'desg2\']}'),
(8, 'abcd8', 'abcd8@testmail.com', '1999-10-11', '{18:[1,\'desg2\']}'),
(9, 'abcd9', 'abcd9@testmail.com', '1999-10-12', '{17:[1,\'desg2\']}'),
(10, 'abcd10', 'abcd10@testmail.com', '1999-10-13', '{1:[2,\'desg1\'], 16:[1,\'desg2\']}'),
(11, 'abcd11', 'abcd11@testmail.com', '1999-10-14', '{15:[1,\'desg2\']}'),
(12, 'abcd12', 'abcd12@testmail.com', '1999-10-15', '{15:[1,\'desg2\']}'),
(13, 'abcd13', 'abcd13@testmail.com', '1999-10-16', '{15:[1,\'desg2\']}'),
(14, 'abcd14', 'abcd14@testmail.com', '1999-10-17', '{15:[1,\'desg2\']}'),
(15, 'abcd15', 'abcd15@testmail.com', '1999-10-18', '{15:[1,\'desg2\']}'),
(16, 'abcd16', 'abcd16@testmail.com', '1999-10-19', '{15:[1,\'desg2\']}'),
(17, 'abcd17', 'abcd17@testmail.com', '1999-10-20', '{15:[1,\'desg2\']}'),
(18, 'abcd18', 'abcd18@testmail.com', '1999-10-21', '{15:[1,\'desg2\']}'),
(19, 'abcd19', 'abcd19@testmail.com', '1999-10-22', '{15:[1,\'desg2\']}'),
(20, 'abcd20', 'abcd20@testmail.com', '1999-10-23', '{15:[1,\'desg2\']}'),
(21, 'abcd21', 'abcd21@testmail.com', '1999-10-24', '{15:[1,\'desg2\']}'),
(22, 'abcd22', 'abcd22@testmail.com', '1999-10-25', '{4:[1,\'desg2\']}'),
(23, 'abcd23', 'abcd23@testmail.com', '1999-10-26', '{3:[1,\'desg2\']}'),
(24, 'abcd24', 'abcd24@testmail.com', '1999-10-27', '{2:[1,\'desg2\']}'),
(25, 'abcd25', 'abcd25@testmail.com', '1999-10-28', '{1:[1,\'desg1\'], 4:[2,\'desg2\']}'),
(26, 'abcd26', 'abcd26@testmail.com', '1999-10-29', NULL),
(27, 'abcd27', 'abcd27@testmail.com', '1999-10-30', NULL),
(28, 'abcd28', 'abcd28@testmail.com', '1999-10-31', NULL),
(29, 'abcd29', 'abcd29@testmail.com', '1999-11-01', NULL),
(30, 'abcd30', 'abcd30@testmail.com', '1999-11-02', NULL),
(31, 'abcd31', 'abcd31@testmail.com', '1999-11-03', NULL),
(32, 'abcd32', 'abcd32@testmail.com', '1999-11-04', NULL),
(33, 'abcd33', 'abcd33@testmail.com', '1999-11-05', NULL),
(34, 'abcd34', 'abcd34@testmail.com', '1999-11-06', NULL),
(35, 'abcd35', 'abcd35@testmail.com', '1999-11-07', NULL),
(36, 'abcd36', 'abcd36@testmail.com', '1999-11-08', NULL),
(37, 'abcd37', 'abcd37@testmail.com', '1999-11-09', NULL),
(38, 'abcd38', 'abcd38@testmail.com', '1999-11-10', NULL),
(39, 'abcd39', 'abcd39@testmail.com', '1999-11-11', NULL),
(40, 'abcd40', 'abcd40@testmail.com', '1999-11-12', NULL),
(41, 'abcd41', 'abcd41@testmail.com', '1999-11-13', NULL),
(42, 'abcd42', 'abcd42@testmail.com', '1999-11-14', NULL),
(43, 'abcd43', 'abcd43@testmail.com', '1999-11-15', NULL),
(44, 'abcd44', 'abcd44@testmail.com', '1999-11-16', NULL),
(45, 'abcd45', 'abcd45@testmail.com', '1999-11-17', NULL),
(46, 'abcd46', 'abcd46@testmail.com', '1999-11-18', NULL),
(47, 'abcd47', 'abcd47@testmail.com', '1999-11-19', NULL),
(48, 'abcd48', 'abcd48@testmail.com', '1999-11-20', NULL),
(49, 'abcd49', 'abcd49@testmail.com', '1999-11-21', NULL),
(50, 'abcd50', 'abcd50@testmail.com', '1999-11-22', NULL),
(51, 'abcd51', 'abcd51@testmail.com', '1999-11-23', NULL),
(52, 'abcd52', 'abcd52@testmail.com', '1999-11-24', NULL),
(53, 'abcd53', 'abcd53@testmail.com', '1999-11-25', NULL),
(54, 'abcd54', 'abcd54@testmail.com', '1999-11-26', NULL),
(55, 'abcd55', 'abcd55@testmail.com', '1999-11-27', NULL),
(56, 'abcd56', 'abcd56@testmail.com', '1999-11-28', NULL),
(57, 'abcd57', 'abcd57@testmail.com', '1999-11-29', NULL),
(58, 'abcd58', 'abcd58@testmail.com', '1999-11-30', NULL),
(59, 'abcd59', 'abcd59@testmail.com', '1999-12-01', NULL),
(60, 'abcd60', 'abcd60@testmail.com', '1999-12-02', NULL),
(61, 'abcd61', 'abcd61@testmail.com', '1999-12-03', NULL),
(62, 'abcd62', 'abcd62@testmail.com', '1999-12-04', NULL),
(63, 'abcd63', 'abcd63@testmail.com', '1999-12-05', NULL),
(64, 'abcd64', 'abcd64@testmail.com', '1999-12-06', NULL),
(65, 'abcd65', 'abcd65@testmail.com', '1999-12-07', NULL),
(66, 'abcd66', 'abcd66@testmail.com', '1999-12-08', NULL),
(67, 'abcd67', 'abcd67@testmail.com', '1999-12-09', NULL),
(68, 'abcd68', 'abcd68@testmail.com', '1999-12-10', NULL),
(69, 'abcd69', 'abcd69@testmail.com', '1999-12-11', NULL),
(70, 'abcd70', 'abcd70@testmail.com', '1999-12-12', NULL),
(71, 'abcd71', 'abcd71@testmail.com', '1999-12-13', NULL),
(72, 'abcd72', 'abcd72@testmail.com', '1999-12-14', NULL),
(73, 'abcd73', 'abcd73@testmail.com', '1999-12-15', NULL),
(74, 'abcd74', 'abcd74@testmail.com', '1999-12-16', NULL),
(75, 'abcd75', 'abcd75@testmail.com', '1999-12-17', NULL),
(76, 'abcd76', 'abcd76@testmail.com', '1999-12-18', NULL),
(77, 'abcd77', 'abcd77@testmail.com', '1999-12-19', NULL),
(78, 'abcd78', 'abcd78@testmail.com', '1999-12-20', NULL),
(79, 'abcd79', 'abcd79@testmail.com', '1999-12-21', NULL),
(80, 'abcd80', 'abcd80@testmail.com', '1999-12-22', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `changes`
--
ALTER TABLE `changes`
  ADD KEY `ssn` (`ssn`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`note_id`),
  ADD KEY `ssn` (`ssn`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`task_id`,`team_id`,`ssn`) USING BTREE;

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`t_id`),
  ADD KEY `mgr_ssn` (`mgr_ssn`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ssn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `changes`
--
ALTER TABLE `changes`
  ADD CONSTRAINT `changes_ibfk_1` FOREIGN KEY (`ssn`) REFERENCES `user` (`ssn`);

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`ssn`) REFERENCES `user` (`ssn`);

--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_ibfk_1` FOREIGN KEY (`mgr_ssn`) REFERENCES `user` (`ssn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;