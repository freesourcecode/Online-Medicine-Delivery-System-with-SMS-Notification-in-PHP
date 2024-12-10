-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2021 at 04:14 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medicinedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `messagein`
--

CREATE TABLE `messagein` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `SMSC` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `messagelog`
--

CREATE TABLE `messagelog` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `StatusCode` int(11) DEFAULT NULL,
  `StatusText` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageId` varchar(80) DEFAULT NULL,
  `ErrorCode` varchar(80) DEFAULT NULL,
  `ErrorText` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text DEFAULT NULL,
  `Connector` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messagelog`
--

INSERT INTO `messagelog` (`Id`, `SendTime`, `ReceiveTime`, `StatusCode`, `StatusText`, `MessageTo`, `MessageFrom`, `MessageText`, `MessageType`, `MessageId`, `ErrorCode`, `ErrorText`, `Gateway`, `MessageParts`, `MessagePDU`, `Connector`, `UserId`, `UserInfo`) VALUES
(1, '2021-01-13 02:12:52', NULL, 201, NULL, '+639637551266', NULL, 'wala lang!', NULL, '1:+639637551266:230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2021-01-13 02:14:10', NULL, 201, NULL, '+639637551266', NULL, 'wala lang!', NULL, '1:+639637551266:231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2021-01-13 02:24:46', NULL, 201, NULL, '+639637551266', NULL, 'We will deliver your order today! Pls prepare exact amount. For queries, pls contact. +639164762692. Thank you!', NULL, '1:+639637551266:232', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2021-01-13 03:02:48', NULL, 300, NULL, '', NULL, 'We will deliver your order today! Pls prepare exact amount. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2021-01-13 09:39:21', NULL, 300, NULL, '+639637551266', NULL, 'We will deliver your order today! Pls prepare exact amount. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2021-01-13 11:52:28', NULL, 300, NULL, '+639164762692', NULL, 'We will deliver your order today! Pls prepare exact amount. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2021-01-13 11:54:16', NULL, 300, NULL, '+639164762692', NULL, 'We will deliver your order today! Pls prepare exact amount. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2021-01-13 12:01:04', NULL, 300, NULL, '+639164762692', NULL, 'We will deliver your order today! Pls prepare exact amount. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2021-01-13 12:08:35', NULL, 300, NULL, '+639164762692', NULL, 'We will deliver your order today! Pls prepare exact amount. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2021-01-13 12:57:00', NULL, 300, NULL, '+639164762692', NULL, 'We will deliver your order today! Pls prepare exact amount. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2021-01-13 15:48:23', NULL, 300, NULL, '09777106503', NULL, 'We will deliver your order today! Pls prepare exact amount. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2021-01-13 16:28:30', NULL, 300, NULL, '09777106503', NULL, 'We will deliver your order today! Pls prepare exact amount. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2021-01-19 23:49:15', NULL, 201, NULL, '+639129053495', NULL, 'We will deliver your order today! Pls prepare exact amount. For queries, pls contact. +639164762692. Thank you!', NULL, '1:+639129053495:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2021-01-19 23:54:49', NULL, 201, NULL, '+639129053495', NULL, 'The Rider shella will deliver your order today! Pls prepare exact amount of 68.40.. For queries, pls contact. +639164762692. Thank you!', NULL, '1:+639129053495:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2021-01-19 23:57:57', NULL, 200, NULL, '+639129053495', NULL, 'The Rider Benny will deliver your order today! Pls prepare exact amount of 156.80.. For queries, pls contact. +639164762692. Thank you!', NULL, '1:+639129053495:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '2021-01-20 00:18:47', NULL, 200, NULL, '+639129053495', NULL, 'The Rider JOMHEL will deliver your order today! Pls prepare exact amount of 68.40.. For queries, pls contact. +639164762692. Thank you!', NULL, '1:+639129053495:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '2021-01-20 00:22:44', NULL, 200, NULL, '+639129053495', NULL, 'The Rider Benny will deliver your order today! Pls prepare exact amount of 47.50.. For queries, pls contact. +639164762692. Thank you!', NULL, '1:+639129053495:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '2021-01-20 00:29:45', NULL, 201, NULL, '+639129053495', NULL, 'The Rider JOMHEL will deliver your order today! Pls prepare exact amount of 37.50.. For queries, pls contact. +639164762692. Thank you!', NULL, '1:+639129053495:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '2021-01-20 02:35:52', NULL, 201, NULL, '+639129053495', NULL, 'We will deliver your order today! Pls prepare exact amount. For queries, pls contact. +639164762692. Thank you!', NULL, '1:+639129053495:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '2021-01-20 02:41:03', NULL, 200, NULL, '+639129053495', NULL, 'The Rider JOMHEL will deliver your order today! Pls prepare exact amount of 98.40.. For queries, pls contact. +639164762692. Thank you!', NULL, '1:+639129053495:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '2021-01-20 02:49:10', NULL, 201, NULL, '+639129053495', NULL, 'The Rider eriman will deliver your order today! Pls prepare exact amount of 17.50.. For queries, pls contact. +639164762692. Thank you!', NULL, '1:+639129053495:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '2021-01-20 02:59:12', NULL, 201, NULL, '+639129053495', NULL, 'The Rider eriman will deliver your order today! Pls prepare exact amount of 22.50.. For queries, pls contact. +639164762692. Thank you!', NULL, '1:+639129053495:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '2021-01-20 02:59:13', NULL, 200, NULL, '+639129053495', NULL, 'The Rider eriman will deliver your order today! Pls prepare exact amount of 22.50.. For queries, pls contact. +639164762692. Thank you!', NULL, '1:+639129053495:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '2021-01-20 03:01:12', NULL, 201, NULL, '+639129053495', NULL, 'The Rider eriman will deliver your order today! Pls prepare exact amount of 68.40.. For queries, pls contact. +639164762692. Thank you!', NULL, '1:+639129053495:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '2021-01-20 03:01:13', NULL, 200, NULL, '+639129053495', NULL, 'The Rider eriman will deliver your order today! Pls prepare exact amount of 68.40.. For queries, pls contact. +639164762692. Thank you!', NULL, '1:+639129053495:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '2021-01-20 03:05:15', NULL, 201, NULL, '+639129053495', NULL, 'The Rider eriman will deliver your order today! Pls prepare exact amount of 7.50.. For queries, pls contact. +639164762692. Thank you!', NULL, '1:+639129053495:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '2021-01-20 03:05:17', NULL, 200, NULL, '+639637551266', NULL, 'The Rider eriman will deliver your order today! Pls prepare exact amount of 7.50.. For queries, pls contact. +639164762692. Thank you!', NULL, '1:+639637551266:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '2021-01-20 03:21:32', NULL, 201, NULL, '+639129053495', NULL, 'The Rider eriman will deliver your order today! Pls prepare exact amount of 73.40.. For queries, pls contact. +639164762692. Thank you!', NULL, '1:+639129053495:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '2021-01-20 03:21:35', NULL, 200, NULL, '+639637551266', NULL, 'eriman You have a medicine to deliver! Please kindly visit your account on the rider website for more info about the customer order. Pls prepare exact amount of 73.40.. From admin. +639164762692. Thank you!', NULL, '1:+639637551266:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '2021-01-20 12:33:25', NULL, 300, NULL, '+639637551266', NULL, 'The Rider Benny will deliver your order today! Pls prepare exact amount of 198.60.. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, '2021-01-20 12:33:25', NULL, 300, NULL, '+639515847838', NULL, 'Benny You have a medicine to deliver! Please kindly visit your account on the rider website for more info about the customer order. Pls prepare exact amount of 198.60.. From admin. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, '2021-01-20 12:35:56', NULL, 300, NULL, '+639129053495', NULL, 'The Rider Paul Angelo will deliver your order today! Pls prepare exact amount of 21.50.. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '2021-01-20 12:35:56', NULL, 300, NULL, '+639637551266', NULL, 'Paul Angelo You have a medicine to deliver! Please kindly visit your account on the rider website for more info about the customer order. Pls prepare exact amount of 21.50.. From admin. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, '2021-01-20 14:46:38', NULL, 300, NULL, '+639129053495', NULL, 'The Rider Paul Angelo will deliver your order today! Pls prepare exact amount of 73.40.. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, '2021-01-20 14:46:38', NULL, 300, NULL, '+639637551266', NULL, 'Paul Angelo You have a medicine to deliver! Please kindly visit your account on the rider website for more info about the customer order. Pls prepare exact amount of 73.40.. From admin. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, '2021-01-21 13:24:16', NULL, 300, NULL, '+639129053495', NULL, 'The Rider Benny will deliver your order today! Pls prepare exact amount of 248.60.. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, '2021-01-21 13:24:16', NULL, 300, NULL, '+639515847838', NULL, 'Benny You have a medicine to deliver! Please kindly visit your account on the rider website for more info about the customer order. Pls prepare exact amount of 248.60.. From admin. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, '2021-01-21 13:27:12', NULL, 300, NULL, '+639129053495', NULL, 'The Rider Benny will deliver your order today! Pls prepare exact amount of 17.50.. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, '2021-01-21 13:27:12', NULL, 300, NULL, '+639515847838', NULL, 'Benny You have a medicine to deliver! Please kindly visit your account on the rider website for more info about the customer order. Pls prepare exact amount of 17.50.. From admin. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, '2021-01-21 13:29:01', NULL, 300, NULL, '+639129053495', NULL, 'The Rider Paul Angelo will deliver your order today! Pls prepare exact amount of 78.40.. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, '2021-01-21 13:29:01', NULL, 300, NULL, '+639637551266', NULL, 'Paul Angelo You have a medicine to deliver! Please kindly visit your account on the rider website for more info about the customer order. Pls prepare exact amount of 78.40.. From admin. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, '2021-01-21 14:08:12', NULL, 300, NULL, '+639129053495', NULL, 'The Rider Benny will deliver your order today! Pls prepare exact amount of 68.40.. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, '2021-01-21 14:08:12', NULL, 300, NULL, '+639515847838', NULL, 'Benny You have a medicine to deliver! Please kindly visit your account on the rider website for more info about the customer order. Pls prepare exact amount of 68.40.. From admin. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, '2021-01-21 14:11:56', NULL, 300, NULL, '+639129053495', NULL, 'The Rider Benny will deliver your order today! Pls prepare exact amount of 68.40.. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, '2021-01-21 14:11:56', NULL, 300, NULL, '+639515847838', NULL, 'Benny You have a medicine to deliver! Please kindly visit your account on the rider website for more info about the customer order. Pls prepare exact amount of 68.40.. From admin. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, '2021-01-21 14:13:29', NULL, 300, NULL, '+639129053495', NULL, 'The Rider Benny will deliver your order today! Pls prepare exact amount of 68.40.. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, '2021-01-21 14:13:29', NULL, 300, NULL, '+639515847838', NULL, 'Benny You have a medicine to deliver! Please kindly visit your account on the rider website for more info about the customer order. Pls prepare exact amount of 68.40.. From admin. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, '2021-01-21 14:16:08', NULL, 300, NULL, '+639129053495', NULL, 'The Rider Benny will deliver your order today! Pls prepare exact amount of 17.50.. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, '2021-01-21 14:16:08', NULL, 300, NULL, '+639515847838', NULL, 'Benny You have a medicine to deliver! Please kindly visit your account on the rider website for more info about the customer order. Pls prepare exact amount of 17.50.. From admin. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, '2021-01-21 14:17:41', NULL, 300, NULL, '+639129053495', NULL, 'The Rider Benny will deliver your order today! Pls prepare exact amount of 16.50.. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, '2021-01-21 14:17:41', NULL, 300, NULL, '+639515847838', NULL, 'Benny You have a medicine to deliver! Please kindly visit your account on the rider website for more info about the customer order. Pls prepare exact amount of 16.50.. From admin. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, '2021-01-21 14:20:25', NULL, 300, NULL, '+639129053495', NULL, 'The Rider Benny will deliver your order today! Pls prepare exact amount of 21.85.. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, '2021-01-21 14:20:25', NULL, 300, NULL, '+639515847838', NULL, 'Benny You have a medicine to deliver! Please kindly visit your account on the rider website for more info about the customer order. Pls prepare exact amount of 21.85.. From admin. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, '2021-01-21 14:23:24', NULL, 300, NULL, '+639129053495', NULL, 'The Rider Benny will deliver your order today! Pls prepare exact amount of 19.75.. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, '2021-01-21 14:23:24', NULL, 300, NULL, '+639515847838', NULL, 'Benny You have a medicine to deliver! Please kindly visit your account on the rider website for more info about the customer order. Pls prepare exact amount of 19.75.. From admin. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, '2021-01-21 14:26:31', NULL, 300, NULL, '+639129053495', NULL, 'The Rider Benny will deliver your order today! Pls prepare exact amount of 68.40.. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, '2021-01-21 14:26:31', NULL, 300, NULL, '+639515847838', NULL, 'Benny You have a medicine to deliver! Please kindly visit your account on the rider website for more info about the customer order. Pls prepare exact amount of 68.40.. From admin. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, '2021-01-21 14:27:54', NULL, 300, NULL, '+639129053495', NULL, 'The Rider Daniel will deliver your order today! Pls prepare exact amount of 22.50.. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, '2021-01-21 14:27:54', NULL, 300, NULL, '+639388091549', NULL, 'Daniel You have a medicine to deliver! Please kindly visit your account on the rider website for more info about the customer order. Pls prepare exact amount of 22.50.. From admin. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, '2021-01-21 14:29:31', NULL, 300, NULL, '+639129053495', NULL, 'The Rider Benny will deliver your order today! Pls prepare exact amount of 51.85.. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, '2021-01-21 14:29:31', NULL, 300, NULL, '+639515847838', NULL, 'Benny You have a medicine to deliver! Please kindly visit your account on the rider website for more info about the customer order. Pls prepare exact amount of 51.85.. From admin. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, '2021-01-21 18:11:56', NULL, 300, NULL, '+639129053495', NULL, 'The Rider Daniel will deliver your order today! Pls prepare exact amount of 55.55.. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, '2021-01-21 18:11:56', NULL, 300, NULL, '+639388091549', NULL, 'Daniel You have a medicine to deliver! Please kindly visit your account on the rider website for more info about the customer order. Pls prepare exact amount of 55.55.. From admin. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, '2021-01-21 18:43:35', NULL, 300, NULL, '+639129053495', NULL, 'The Rider Paul Angelo will deliver your order today! Pls prepare exact amount of 22.50.. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, '2021-01-21 18:43:35', NULL, 300, NULL, '+639637551266', NULL, 'Paul Angelo You have a medicine to deliver! Please kindly visit your account on the rider website for more info about the customer order. Pls prepare exact amount of 22.50.. From admin. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, '2021-01-21 18:46:39', NULL, 300, NULL, '+639129053495', NULL, 'The Rider Paul Angelo will deliver your order today! Pls prepare exact amount of 17.50.. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, '2021-01-21 18:46:39', NULL, 300, NULL, '+639637551266', NULL, 'Paul Angelo You have a medicine to deliver! Please kindly visit your account on the rider website for more info about the customer order. Pls prepare exact amount of 17.50.. From admin. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, '2021-01-22 01:46:55', NULL, 300, NULL, '+639637551266', NULL, 'The Rider Paul Angelo will deliver your order today! Pls prepare exact amount of 36.50.. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, '2021-01-22 01:46:55', NULL, 300, NULL, '+639637551266', NULL, 'Paul Angelo You have a medicine to deliver! Please kindly visit your account on the rider website for more info about the customer order. Pls prepare exact amount of 36.50.. From admin. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, '2021-01-23 20:48:48', NULL, 300, NULL, '+639129053495', NULL, 'The Rider Benny will deliver your order today! Pls prepare exact amount of 88.40.. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, '2021-01-23 20:48:48', NULL, 300, NULL, '+639515847838', NULL, 'Benny You have a medicine to deliver! Please kindly visit your account on the rider website for more info about the customer order. Pls prepare exact amount of 88.40.. From admin. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, '2021-01-23 20:50:17', NULL, 300, NULL, '+639129053495', NULL, 'The Rider Benny will deliver your order today! Pls prepare exact amount of 25.00.. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, '2021-01-23 20:50:17', NULL, 300, NULL, '+639515847838', NULL, 'Benny You have a medicine to deliver! Please kindly visit your account on the rider website for more info about the customer order. Pls prepare exact amount of 25.00.. From admin. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, '2021-01-24 10:45:59', NULL, 300, NULL, '+6391647626', NULL, 'The Rider Paul Angelo will deliver your order today! Pls prepare exact amount of 82.50.. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, '2021-01-24 10:45:59', NULL, 300, NULL, '+639637551266', NULL, 'Paul Angelo You have a medicine to deliver! Please kindly visit your account on the rider website for more info about the customer order. Pls prepare exact amount of 82.50.. From admin. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, '2021-01-24 10:57:47', NULL, 300, NULL, '+639637551266', NULL, 'The Rider Benny will deliver your order today! Pls prepare exact amount of 107.80.. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, '2021-01-24 10:57:47', NULL, 300, NULL, '+639515847838', NULL, 'Benny You have a medicine to deliver! Please kindly visit your account on the rider website for more info about the customer order. Pls prepare exact amount of 107.80.. From admin. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, '2021-01-24 11:03:02', NULL, 300, NULL, '+639637551266', NULL, 'The Rider Benny will deliver your order today! Pls prepare exact amount of 112.80.. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, '2021-01-24 11:03:02', NULL, 300, NULL, '+639515847838', NULL, 'Benny You have a medicine to deliver! Please kindly visit your account on the rider website for more info about the customer order. Pls prepare exact amount of 112.80.. From admin. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, '2021-01-24 11:07:44', NULL, 300, NULL, '+6391647626', NULL, 'The Rider Benny will deliver your order today! Pls prepare exact amount of 248.60.. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, '2021-01-24 11:07:44', NULL, 300, NULL, '+639515847838', NULL, 'Benny You have a medicine to deliver! Please kindly visit your account on the rider website for more info about the customer order. Pls prepare exact amount of 248.60.. From admin. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, '2021-01-25 13:15:31', NULL, 300, NULL, '+639129053495', NULL, 'The Rider Daniel will deliver your order today! Pls prepare exact amount of 33.00.. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, '2021-01-25 13:15:31', NULL, 300, NULL, '+639388091549', NULL, 'Daniel You have a medicine to deliver! Please kindly visit your account on the rider website for more info about the customer order. Pls prepare exact amount of 33.00.. From admin. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, '2021-01-25 13:28:35', NULL, 300, NULL, '+639129053495', NULL, 'The Rider Daniel will deliver your order today! Pls prepare exact amount of 54.40.. For queries, pls contact. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, '2021-01-25 13:28:35', NULL, 300, NULL, '+639388091549', NULL, 'Daniel You have a medicine to deliver! Please kindly visit your account on the rider website for more info about the customer order. Pls prepare exact amount of 54.40.. From admin. +639164762692. Thank you!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messageout`
--

CREATE TABLE `messageout` (
  `Id` int(11) NOT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text DEFAULT NULL,
  `Priority` int(11) DEFAULT NULL,
  `Scheduled` datetime DEFAULT NULL,
  `ValidityPeriod` int(11) DEFAULT NULL,
  `IsSent` tinyint(1) NOT NULL DEFAULT 0,
  `IsRead` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumber`
--

CREATE TABLE `tblautonumber` (
  `ID` int(11) NOT NULL,
  `AUTOSTART` varchar(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOKEY` varchar(12) NOT NULL,
  `AUTONUM` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblautonumber`
--

INSERT INTO `tblautonumber` (`ID`, `AUTOSTART`, `AUTOINC`, `AUTOEND`, `AUTOKEY`, `AUTONUM`) VALUES
(1, '2017', 1, 371, 'PROID', 10),
(2, '0', 1, 253, 'ordernumber', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblbinalbagan`
--

CREATE TABLE `tblbinalbagan` (
  `BINID` int(11) NOT NULL,
  `PLACE` varchar(90) NOT NULL,
  `BRGY` varchar(80) NOT NULL,
  `DELPRICE` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbinalbagan`
--

INSERT INTO `tblbinalbagan` (`BINID`, `PLACE`, `BRGY`, `DELPRICE`) VALUES
(1, 'BInalbagan', 'Brgy. Marina,', 10),
(2, 'Binalbagan', 'Brgy. San Vicente,', 10),
(3, 'Binalbagan', 'Brgy. Paglaum,', 10),
(4, 'BInalbagan', 'Brgy. Sto. Rosario', 10),
(5, ' Binalbagan', 'Brgy.Enclaro,', 15),
(6, 'Binalbagan', 'Brgy. San Teodoro,', 10),
(7, 'Binalbagan', 'Brgy, san jose,', 15),
(8, 'Binalbagan', 'Brgy. payao,', 20),
(9, 'Binalbagan', 'Brgy. biao,', 30),
(10, 'Binalbagan', 'Brgy. bagroy,', 20),
(11, 'Binalbagan', 'Brgy. santol,', 40),
(12, 'Binalbagan', 'Brgy. san pedro,', 10),
(13, 'Binalbagan', 'Brgy. canmoros,', 15),
(14, 'Binalbagan', 'Brgy. progreso,', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `CATEGID` int(11) NOT NULL,
  `CATEGORIES` varchar(255) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`CATEGID`, `CATEGORIES`, `USERID`) VALUES
(1, 'GENERICS', 0),
(2, 'DIGESTIVE HEALTH', 0),
(3, 'SUPPLEMENT', 0),
(4, 'VITAMINS', 0),
(5, 'PAIN RELIEVER', 0),
(6, 'COUGH AND COLDS', 0),
(7, 'ALLERGIES', 0),
(8, 'ANTI-INFECTIVES(SYSTEMIC)', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `CUSTOMERID` int(11) NOT NULL,
  `FNAME` varchar(30) NOT NULL,
  `MNAME` varchar(30) NOT NULL,
  `LNAME` varchar(30) NOT NULL,
  `HOMEADDRESS` text NOT NULL,
  `DELADDRESS` text NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `PHONE` varchar(20) NOT NULL,
  `CUSUNAME` varchar(20) NOT NULL,
  `CUSPASS` varchar(90) NOT NULL,
  `RECEIPTPHOTO` varchar(255) NOT NULL,
  `TERMS` tinyint(4) NOT NULL,
  `DATEJOIN` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`CUSTOMERID`, `FNAME`, `MNAME`, `LNAME`, `HOMEADDRESS`, `DELADDRESS`, `GENDER`, `PHONE`, `CUSUNAME`, `CUSPASS`, `RECEIPTPHOTO`, `TERMS`, `DATEJOIN`) VALUES
(1, 'shella', 'd', 'dongcoy', 'brgy.9', '', 'Male', '+639129053495', 'dongs', '7c222fb2927d828af22f592134e8932480637c0d', 'uploaded_images/searchlogo.png', 1, '2021-01-19'),
(2, 'Jerimy Kirk', 'G', 'Eriman', 'Brgy. Enclaro, Binalbagan', '', 'Male', '+639637551266', 'kirk', '7c222fb2927d828af22f592134e8932480637c0d', 'uploaded_images/download (2).png', 1, '2021-01-20'),
(3, 'Gracelyn', 'B', 'Bayate', 'Brgy. Santol, Binalbagan', 'Brgy. Marina, Binalbagan', 'Female', '+639129053495', 'grace', '7c222fb2927d828af22f592134e8932480637c0d', 'uploaded_images/music-streaming.png', 1, '2021-01-20'),
(4, 'Saxon', 'M.', 'Ong', 'Brgy. Sta. Maria, Binalbagan', '', 'Male', '+6391647626', 'saxon', '7c222fb2927d828af22f592134e8932480637c0d', 'uploaded_images/received_827050804816954.jpeg', 1, '2021-01-24');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployee`
--

CREATE TABLE `tblemployee` (
  `EMPID` int(11) NOT NULL,
  `LNAME` varchar(30) NOT NULL,
  `MNAME` varchar(30) NOT NULL,
  `FNAME` varchar(30) NOT NULL,
  `DOB` date NOT NULL,
  `AGE` int(11) NOT NULL,
  `SEX` varchar(10) NOT NULL,
  `ADDRESS` text NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PASSWORD` varchar(80) NOT NULL,
  `CONTACT` varchar(15) NOT NULL,
  `IMAGES` text NOT NULL,
  `total_delivered` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblemployee`
--

INSERT INTO `tblemployee` (`EMPID`, `LNAME`, `MNAME`, `FNAME`, `DOB`, `AGE`, `SEX`, `ADDRESS`, `EMAIL`, `PASSWORD`, `CONTACT`, `IMAGES`, `total_delivered`) VALUES
(1, 'Salde', 'S', 'Benny', '2021-01-01', 22, 'Male', 'Sitio Fisheries, Brgy. Caradio-an, Himamaylan City', 'benny@gmail.com', '356a192b7913b04c54574d18c28d46e6395428ab', '+639515847838', 'uploaded_images/company-logo.png', 8),
(2, 'Bandiola', 'M', 'Daniel', '2020-12-29', 21, 'Male', 'Brgy. Marina, Binalbagan', 'daniel@gmail.com', '356a192b7913b04c54574d18c28d46e6395428ab', '+639388091549', 'uploaded_images/company-logo.png', 4),
(3, 'Niar', 'P', 'Paul Angelo', '2020-12-30', 32, 'Male', 'Brgy. Cambugsa, Hinigaran', 'paul@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', '+639637551266', 'uploaded_images/company-logo.png', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tblhimamaylan`
--

CREATE TABLE `tblhimamaylan` (
  `HIMID` int(11) NOT NULL,
  `PLACE` text NOT NULL,
  `BRGY` text NOT NULL,
  `DELPRICE` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblhimamaylan`
--

INSERT INTO `tblhimamaylan` (`HIMID`, `PLACE`, `BRGY`, `DELPRICE`) VALUES
(1, 'Himamaylan', 'Brgy. Aguisan,', '15'),
(2, 'Himamaylan', 'Brgy. Buenavista,', '20'),
(3, 'Himamaylan', 'Brgy. Cabadiangan', '20'),
(4, 'Himamaylan', 'Brgy. Cabanbanan', '25'),
(5, 'Himamaylan', 'Brgy. Carabalan', '30'),
(6, 'Himamaylan', 'Brgy. Caradio-an,', '15'),
(7, 'Himamaylan', 'Brgy. Libacao,', '25'),
(8, 'Himamaylan', 'Brgy. Mambagaton', '35'),
(9, 'Himamaylan', 'Brgy. Nabalian,', '25'),
(10, 'Himamaylan', 'Brgy. Mahalang,', '100'),
(11, 'Himamaylan', 'Brgy. San Antonio,', '35'),
(12, 'Himamaylan', 'Brgy. Sara-et,', '30'),
(13, 'Himamaylan', 'Brgy. Su-ay,', '25'),
(14, 'Himamaylan ', 'Brgy. Talaban,', '15'),
(15, 'Himamaylan', 'Brgy. To-oy', '20'),
(16, 'Himamaylan', 'Brgy. 1 (Poblacion),', '10'),
(17, 'Himamaylan', 'Brgy. 2(Poblacion),', '10'),
(18, 'Himamaylan', 'Brgy. 3(Poblacion),', '10'),
(19, 'Himamaylan', 'Brgy. 4(Poblacion),', '10');

-- --------------------------------------------------------

--
-- Table structure for table `tblhinigaran`
--

CREATE TABLE `tblhinigaran` (
  `HINID` int(11) NOT NULL,
  `PLACE` text NOT NULL,
  `BRGY` text NOT NULL,
  `DELPRICE` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblhinigaran`
--

INSERT INTO `tblhinigaran` (`HINID`, `PLACE`, `BRGY`, `DELPRICE`) VALUES
(1, 'Hinigaran', 'Brgy. Anahaw,', '15'),
(2, 'Hinigaran', 'Brgy. Aranda,', '25'),
(3, 'Hinigaran', 'Brgy. Baga-as,', '20'),
(4, 'Hinigaran', 'Brgy. 1, ', '10'),
(5, 'Hinigaran', 'Brgy. 2,', '10'),
(6, 'Hinigaran', 'Brgy. 3,', '10'),
(7, 'Hinigaran', 'Brgy. 4,', '10'),
(8, 'Hinigaran', 'Brgy. Calapi,', '10'),
(9, 'Hinigaran', 'Brgy. Bato,', '15'),
(10, 'Hinigaran', 'Brgy. Calamalo-Balo,', '20'),
(11, 'Hinigaran', 'Brgy. Camba-og,', '20'),
(12, 'Hinigaran', 'Brgy. Cambugsa, ', '20'),
(13, 'Hinigaran', 'Brgy. candumarao,', '25'),
(14, 'Hinigaran', 'Brgy. gargato,', '20'),
(15, 'Hinigaran', 'Brgy. himaya,', '20'),
(16, 'Hinigaran', 'Brgy. Miranda,', '20'),
(17, 'Hinigaran', 'Brgy. nanunga,', '20'),
(18, 'Hinigaran', 'Brgy. narauis,', '20'),
(19, 'Hinigaran', 'Brgy. palayog,', '25'),
(20, 'Himigaran', 'Brgy. paticui,', '20'),
(21, 'Hinigaran', 'Brgy. pilar,', '10'),
(22, 'Hinigaran', 'Brgy. quiwi,', '20'),
(23, 'Hinigaran', 'Brgy. tagda,', '10'),
(24, 'Hinigaran', 'Brgy. tuguis,', '20');

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

CREATE TABLE `tblorder` (
  `ORDERID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `ORDEREDQTY` int(11) NOT NULL,
  `ORDEREDPRICE` double NOT NULL,
  `ORDEREDNUM` int(11) NOT NULL,
  `CUSTOMERID` int(11) NOT NULL,
  `EMPID` int(11) NOT NULL,
  `PRESCRIBEDQTY` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorder`
--

INSERT INTO `tblorder` (`ORDERID`, `PROID`, `ORDEREDQTY`, `ORDEREDPRICE`, `ORDEREDNUM`, `CUSTOMERID`, `EMPID`, `PRESCRIBEDQTY`) VALUES
(6, 2017226, 2, 35, 248, 3, 0, 5),
(7, 2017226, 2, 35, 249, 3, 0, 5),
(8, 2017353, 2, 97.8, 250, 3, 0, 5),
(9, 2017353, 2, 97.8, 251, 3, 0, 5),
(10, 2017353, 1, 48.9, 252, 3, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `PROID` int(11) NOT NULL,
  `PRONAME` varchar(255) DEFAULT NULL,
  `PRODESC` text NOT NULL,
  `PROQTY` int(11) DEFAULT NULL,
  `ORIGINALPRICE` double NOT NULL,
  `PROPRICE` double DEFAULT NULL,
  `CATEGID` int(11) DEFAULT NULL,
  `IMAGES` varchar(255) DEFAULT NULL,
  `PROSTATS` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`PROID`, `PRONAME`, `PRODESC`, `PROQTY`, `ORIGINALPRICE`, `PROPRICE`, `CATEGID`, `IMAGES`, `PROSTATS`) VALUES
(2017218, 'AMLODIPINE ', '10MG ', 76, 57, 58.4, 1, 'uploaded_photos/AMLODIPINE 10MG TABLET.jpg', 'Available'),
(2017219, 'AMOXICILLIN CAPSULES', '500MG ', 97, 5.5, 6.5, 1, 'uploaded_photos/amoxicillin 500mg.jpg', 'Available'),
(2017220, 'AMPALAYA ', '500MG ', 100, 6, 7, 1, 'uploaded_photos/ampalaya 500mg.jpg', 'Available'),
(2017221, 'BIOGESIC ', '325MG', 100, 5.6, 5.5, 1, 'uploaded_photos/biogesic 325mg.jpg', 'Available'),
(2017222, 'CARBOCISTEINE ', '500MG', 99, 4.75, 5.5, 1, 'uploaded_photos/CARBOCISTEINE 500MG.jpg', 'Available'),
(2017223, 'CEFUROXIME TABLET', '500MG ', 100, 37, 39, 1, 'uploaded_photos/CEFUROXIME 500MG.jpg', 'Available'),
(2017224, 'CLARITHROMYCIN ', '500MG', 100, 37, 39, 1, 'uploaded_photos/CLARITHROMYCIN 500MG.jpg', 'Available'),
(2017225, 'CETIRIZINE TABLET', '10MG ', 100, 5.5, 6.8, 1, 'uploaded_photos/CETIRIZINE 10MG TABLET.jpg', 'Available'),
(2017226, 'CIPROFLOXACIN TABLET ', '500MG ', 75, 16, 17.5, 8, 'uploaded_photos/CIPROFLOXACIN 500MG.jpg', 'Available'),
(2017227, 'CLINDAMYCIN CAPSULE', '300MG ', 100, 18, 20, 1, 'uploaded_photos/CLINDAMYCIN 300MG CAPSULE.jpg', 'Available'),
(2017228, 'GINGER ', '500MG', 100, 6, 7, 1, 'uploaded_photos/GINGER 500MG.jpg', 'Available'),
(2017229, 'LORATADINE ', '10MG', 100, 10.5, 12.5, 1, 'uploaded_photos/LORATADINE 10MG.jpg', 'Available'),
(2017230, 'LOSARTAN TABLET', '100MG ', 100, 118.5, 120.54, 1, 'uploaded_photos/LOSARTAN 100MG TABLET.jpg', 'Available'),
(2017231, 'MALUNGGAY ', '500MG', 100, 6, 7, 1, 'uploaded_photos/MALUNGGAY 500MG.jpg', 'Available'),
(2017232, 'MEFENAMIC ', '500MG', 100, 2.75, 3.75, 1, 'uploaded_photos/MEFENAMIC 500MG.webp', 'Available'),
(2017233, 'PARACETAMOL ', '500MG ', 100, 1, 2, 1, 'uploaded_photos/PARACETAMOL 500MG.jpg', 'Available'),
(2017234, 'TURMERIC ', '500MG', 100, 11, 12, 1, 'uploaded_photos/TURMERIC 500MG.jpg', 'Available'),
(2017248, 'KREMIL-S TABLET', '30MG', 86, 7, 7.5, 2, 'uploaded_photos/KREMIL-S TABLET.jpg', 'Available'),
(2017249, 'MAALOX # 1 TABLET', '200MG ', 89, 11, 11.85, 2, 'uploaded_photos/MAALOX  200MG TABLET.jpg', 'Available'),
(2017250, 'MAALOX PLUS SUSPENSION ', '180ML', 100, 384, 385.25, 2, 'uploaded_photos/MAALOX PLUS SUSPENSION 180ML.jpg', 'Available'),
(2017251, 'SUPRACID TABLET – UNITED HOME', '650MG ', 100, 0.5, 1, 2, 'uploaded_photos/SUPRACID 650MG TABLET – UNITED HOME.jpg', 'Available'),
(2017252, 'CASTORIA WATSONAL SYRUP ', '30ML', 100, 105, 110, 2, 'uploaded_photos/CASTORIA WATSONAL SYRUP 30ML.png', 'Available'),
(2017253, 'DULCOLAX TABLET', '5MG ', 100, 20, 21.75, 2, 'uploaded_photos/DULCOLAX 5MG TABLET.png', 'Available'),
(2017254, 'SENOKOT TABLET', '187MG ', 100, 12, 14.75, 2, 'uploaded_photos/SENOKOT 187MG TABLET.jpg', 'Available'),
(2017255, 'SENOKOT FORTE TABLET', '374MG ', 100, 20, 21, 2, 'uploaded_photos/SENOKOT 187MG TABLET.jpg', 'Available'),
(2017256, 'FLOTERA PROBIOTIC CHEWABLE TABLET', '', 100, 2, 2.5, 2, 'uploaded_photos/FLOTERA PROBIOTIC CHEWABLE TABLET.jpg', 'Available'),
(2017257, 'ALAXAN FR', '200MG', 100, 8, 10, 5, 'uploaded_photos/alaxan_fr.jpg', 'Available'),
(2017258, 'BIOFLU', '15MG', 100, 5, 6.5, 5, 'uploaded_photos/bioflu.jpg', 'Available'),
(2017259, 'BUSCOPAN', '10MG', 100, 29, 30.65, 5, 'uploaded_photos/Buscopan.jpg', 'Available'),
(2017261, 'DOLFENAL TABLET ', '250MG ', 100, 14, 15.5, 5, 'uploaded_photos/dolfenal-250.jpg', 'Available'),
(2017262, ' MEDICOL ADVANCED', '400MG', 100, 10, 11, 5, 'uploaded_photos/medicol.jpg', 'Available'),
(2017263, 'REXIDOL FORTE TABLET', '65MG ', 100, 4, 4.75, 5, 'uploaded_photos/rexidol.jpg', 'Available'),
(2017264, ' TYLENOL ER TABLET', '650MG ', 100, 8, 8.25, 0, 'uploaded_photos/Tylenol.jpg', 'Available'),
(2017265, 'DIATABS', '2MG', 100, 3, 5, 5, 'uploaded_photos/diatabs.jpg', 'Available'),
(2017266, 'SARIDON TRIPLE ACTION TABLET', '450MG', 100, 4, 5.25, 0, 'uploaded_photos/SARIDON TRIPLE ACTION 450.png', 'Available'),
(2017267, 'EFFICASCENT RELAXING OIL', '6ML', 100, 75, 80, 5, 'uploaded_photos/EFFICASCENT RELAXING OIL.jpg', 'Available'),
(2017268, 'CLARITIN ALLERGY TABLET', '10MG', 100, 32, 35.5, 5, 'uploaded_photos/CLARITIN ALLERGY RELIEF.jpg', 'Available'),
(2017278, 'EYEBERRY CAPSULE', '', 98, 15, 16.9, 3, 'uploaded_photos/EYEBERRY CAPSULE.png', 'Available'),
(2017279, 'GLUTAPHOS TABLET', '', 99, 8, 9.75, 3, 'uploaded_photos/GLUTAPHOS TABLET.jpg', 'Available'),
(2017280, 'LEGALON CAPSULE', '140MG ', 100, 36, 38.75, 3, 'uploaded_photos/LEGALON 140MG CAPSULE.jpg', 'Available'),
(2017281, 'LIVERGUARD SUPPLEMENT CAPSULE', '500mg', 100, 14, 15.3, 3, 'uploaded_photos/LIVERGUARD FOOD SUPPLEMENT CAPSULE.jpg', 'Available'),
(2017283, 'MEMORX IQ PLUS SYRUP', ' 240ML', 100, 391, 394.2, 3, 'uploaded_photos/MEMORX IQ PLUS SYRUP 240 ML.png', 'Available'),
(2017284, 'OPTEIN CAPSULE 10+1 PACK', '', 100, 307, 308.5, 0, 'uploaded_photos/OPTEIN CAPSULE 10+1 PACK.png', 'Available'),
(2017287, 'TAUREX 50MG/5ML SYRUP ', '240ML', 100, 230, 231.25, 3, 'uploaded_photos/TAUREX 5ML SYRUP 240 ML.jpg', 'Available'),
(2017288, 'OPTEIN FOOD SUPPLEMENT CAPSULE', '50MG', 100, 30, 31.1, 3, 'uploaded_photos/OPTEIN FOOD SUPPLEMENT CAPSULE.png', 'Available'),
(2017291, 'CONZACE CAPSULE', 'VITAMIN A', 100, 12, 12.5, 4, 'uploaded_photos/CONZACE CAPSULE VITAMIN A.jpg', 'Available'),
(2017292, 'ENER A PLUS INFANT DROPS 15ML', 'VITAMIN A', 100, 85, 86, 4, 'uploaded_photos/ENER A PLUS INFANT DROPS 15ML.jpg', 'Available'),
(2017293, 'ENER A PLUS SYRUP 60 ML', 'VITAMIN A', 100, 113, 114.75, 4, 'uploaded_photos/CEELIN SYRUP 120ML C.png', 'Available'),
(2017294, 'ENER A PLUS SYRUP 120 ML', 'VITAMIN A', 100, 170, 172.75, 4, 'uploaded_photos/ENER A PLUS INFANT DROPS 15ML.jpg', 'Available'),
(2017295, 'ENER A PLUS SYRUP 240 ML', 'VITAMIN A', 100, 283, 284.25, 4, 'uploaded_photos/ENER A PLUS INFANT DROPS 15ML.jpg', 'Available'),
(2017296, 'NUTRICAPSULE TABLET', 'VITAMIN A', 100, 12, 13.5, 4, 'uploaded_photos/NUTRICAPSULE TABLET.png', 'Available'),
(2017297, 'NUTRILIN DROPS 15ML', 'VITAMIN A', 100, 87, 89, 4, 'uploaded_photos/NUTRILIN DROPS 15ML VITAMIN A.jpg', 'Available'),
(2017298, 'NUTRILIN DROPS 30ML', 'VITAMIN A', 100, 123, 124.75, 4, 'uploaded_photos/NUTRILIN DROPS 30ML.jpg', 'Available'),
(2017299, 'NUTRILIN SYRUP 120ML', 'VITAMIN A', 100, 189, 190, 4, 'uploaded_photos/NUTRILIN SYRUP 120ML.jpg', 'Available'),
(2017300, 'NUTROPLEX W/ LYSINE SYRUP 120ML', 'VITAMIN A', 100, 155, 157.5, 4, 'uploaded_photos/NUTROPLEX WITH LYSINE SYRUP 120ML.png', 'Available'),
(2017301, 'REVICON FLEX TABLET', 'VITAMIN A', 100, 4, 5, 4, 'uploaded_photos/REVICON FLEX TABLET A.jpg', 'Available'),
(2017302, 'TIKI TIKI STAR SYRUP 60ML', 'VITAMIN A', 100, 114, 115, 4, 'uploaded_photos/TIKI TIKI STAR SYRUP 60ML.jpg', 'Available'),
(2017303, 'TIKI TIKI STAR SYRUP 120ML', 'VITAMIN A', 100, 134, 135.57, 4, 'uploaded_photos/TIKI TIKI STAR SYRUP 120ML.jpg', 'Available'),
(2017304, 'BEROCCA 10 TABLETS ORANGE FLAVOR', 'VITAMIN B', 100, 201, 203, 4, 'uploaded_photos/BEROCCA 10 TABLETS ORANGE FLAVOR B.png', 'Available'),
(2017305, 'BEROCCA 15 TABLETS CITRUS FLAVOR', 'VITAMIN B', 100, 271, 278, 4, 'uploaded_photos/BEROCCA 15 TABLETS CITRUS FLAVOR B.jpg', 'Available'),
(2017306, 'BEROCCA  MIXED BERRIES FLAVOR', 'VITAMIN B', 100, 276, 278, 4, 'uploaded_photos/BEROCCA 15 TABLETS MIXED BERRIES FLAVOR C.jpg', 'Available'),
(2017307, 'BIONERV 300MG CAPSULE', 'VITAMIN B', 100, 13, 14.5, 4, 'uploaded_photos/BIONERV 300MG CAPSULE B.png', 'Available'),
(2017308, 'ENERVON C BOTTLE 30 TABLETS', 'VITAMIN B', 100, 190, 195, 4, 'uploaded_photos/ENERVON C BOTTLE 30 TABLETS B.png', 'Available'),
(2017312, 'FERLIN (R) DROPS 15ML', 'VITAMIN B', 100, 121, 122.25, 4, 'uploaded_photos/FERLIN (R) DROPS 15ML B.png', 'Available'),
(2017314, 'CEELIN DROPS 30ML', 'VITAMIN C', 100, 129, 131, 4, 'uploaded_photos/CEELIN PLUS DROPS 30ML C.png', 'Available'),
(2017315, 'CEELIN PLUS 120ML', 'VITAMIN C', 100, 145, 147, 4, 'uploaded_photos/CEELIN PLUS 120ML C.png', 'Available'),
(2017316, 'CEELIN PLUS 60ML', 'VITAMIN C', 100, 76, 78.6, 4, 'uploaded_photos/CEELIN PLUS 60ML.png', 'Available'),
(2017317, 'CEELIN PLUS DROPS 15ML', 'VITAMIN C', 100, 86, 88.25, 4, 'uploaded_photos/CEELIN PLUS DROPS 15ML.png', 'Available'),
(2017318, 'CEELIN SYRUP 120ML', 'VITAMIN C', 100, 121, 122.1, 4, 'uploaded_photos/CEELIN SYRUP 120ML C.png', 'Available'),
(2017319, 'CEELIN SYRUP 250ML', 'VITAMIN C ', 100, 228, 229, 4, 'uploaded_photos/CEELIN SYRUP 250ML C.png', 'Available'),
(2017320, 'PEDZINC PLUS C SYRUP 240ML', 'VITAMIN C', 100, 241, 245, 4, 'uploaded_photos/PEDZINC PLUS C SYRUP 240ML C.png', 'Available'),
(2017321, 'PEDZINC PLUS DROPS 30 ML', 'VITAMIN C', 100, 139, 140.25, 4, 'uploaded_photos/PEDZINC PLUS DROPS 30 ML C.png', 'Available'),
(2017322, 'PEDZINC PLUS SYRUP 120 ML', 'VITAMIN C', 100, 129, 130.75, 4, 'uploaded_photos/PEDZINC PLUS SYRUP 120 ML C.png', 'Available'),
(2017323, 'POTEN CEE +C CAPSULE 10PCS', 'VITAMIN C', 100, 193, 195, 4, 'uploaded_photos/POTEN CEE +C CAPSULE 10PCS C.png', 'Available'),
(2017325, 'PEDZINC PLUS DROPS 30 ML', 'VITAMIN C', 100, 139, 140.25, 3, 'uploaded_photos/PEDZINC PLUS DROPS 30 ML C.png', 'Available'),
(2017326, 'POTEN CEE NA 562.5MG CAPSULE', 'VITAMIN C', 100, 6, 6.25, 4, 'uploaded_photos/POTEN CEE NA 562.5MG CAPSULE C.png', 'Available'),
(2017327, 'POTEN-CEE 500 MG TABLET FC(SF)', 'VITAMIN C', 100, 5, 6.25, 4, 'uploaded_photos/POTEN-CEE 500MG CHEWABLE TABLET C.png', 'Available'),
(2017328, 'SODIUM ASCORBATE CAPSULE', 'VITAMIN C', 100, 4, 4.5, 4, 'uploaded_photos/SODIUM ASCORBATE 568.18MG CAPSULE-RITEMED C.png', 'Available'),
(2017329, 'FORTI-D 800IU CAPSULE', 'VITAMIN D', 100, 6, 6.8, 4, 'uploaded_photos/FORTI-D 800IU CAPSULE D.png', 'Available'),
(2017330, 'ATC VITAMIN E CAPSULE', 'VITAMIN E', 100, 5, 6, 4, 'uploaded_photos/ATC VITAMIN E CAPSULE D.png', 'Available'),
(2017331, 'ENAT SOFTGEL 400I.U.CAPSULE', 'VITAMIN E', 100, 19, 20.75, 4, 'uploaded_photos/ENAT SOFTGEL 400I.U.CAPSULE D.png', 'Available'),
(2017332, 'LECIT-E 200IU/500MG CAPSULE 10X1', 'VITAMIN E', 100, 95, 96, 4, 'uploaded_photos/LECIT-E 200IU-500MG CAPSULE 10X1 D.png', 'Available'),
(2017333, 'MYRA 300 E CAPSULE', 'VITAMIN E', 100, 7, 7.75, 4, 'uploaded_photos/MYRA 300 E CAPSULE D.png', 'Available'),
(2017334, 'MYRA 400 E CAPSULE', 'VITAMIN E', 100, 10, 11.75, 4, 'uploaded_photos/MYRA 400E CAPSULE D.png', 'Available'),
(2017335, 'VITAMIN E 400IU SOFT GEL CAPSULE – PHAREX', 'VITAMIN E', 100, 8, 8.8, 4, 'uploaded_photos/VITAMIN E 400IU SOFT GEL CAPSULE – PHAREX D.png', 'Available'),
(2017336, 'AMBROXOL TABLET ', '30MG ', 100, 6, 7, 6, 'uploaded_photos/AMBROXOL 30MG TABLET – RITEMED.jpg', 'Available'),
(2017337, 'ASCOF TABLET', '300MG ', 100, 5, 5.25, 6, 'uploaded_photos/ASCOF 300MG TABLET.jpg', 'Available'),
(2017338, 'ASCOF FORTE CAPSULE 10 + 5 COUGH RELIEF PACK ', '600MG', 100, 75, 77.5, 6, 'uploaded_photos/ASCOF FORTE CAPSULE 10 + 5 COUGH RELIEF PACK 600MG.jpg', 'Available'),
(2017339, 'ASCOF FORTE MENTHOL SYRUP 60ML', '600MG ', 100, 135, 136.25, 6, 'uploaded_photos/ASCOF FORTE MENTHOL 600MG SYRUP 60ML.jpg', 'Available'),
(2017340, 'BIOFLU TABLET', '150MG', 100, 6, 7.5, 6, 'uploaded_photos/BIOFLU TABLET.jpg', 'Available'),
(2017341, 'NASATAPP  TABLET', '15MG/12MG', 100, 8, 8.25, 6, 'uploaded_photos/NASATAPP 15MG TO 12MG TABLET.jpg', 'Available'),
(2017342, 'NEOZEP FORTE TABLET', '10MG/2MG/500MG', 100, 4, 5, 6, 'uploaded_photos/NEOZEP FORTE TABLET.jpg', 'Available'),
(2017343, 'PLEMEX FORTE CAPSULE', '600MG ', 100, 6, 6.75, 6, 'uploaded_photos/PLEMEX FORTE 600MG CAPSULE.jpg', 'Available'),
(2017344, 'ROBITUSSIN EXPECTORANT CAPSULE', '200MG ', 100, 11, 11.75, 6, 'uploaded_photos/ROBITUSSIN EXPECTORANT 200MG CAPSULE.jpg', 'Available'),
(2017345, 'SINECOD FORTE (7+1)TIPID PK20S', '7.5/MG', 100, 150, 153.25, 6, 'uploaded_photos/SINECOD FORTE TIPID PK20S.jpg', 'Available'),
(2017346, 'SOLMUX CAPSULE', '500MG ', 100, 10, 10.5, 6, 'uploaded_photos/SOLMUX 500MG CAPSULE.jpg', 'Available'),
(2017347, 'VICKS INHALER ', '0.5ML', 100, 77, 78.25, 6, 'uploaded_photos/VICKS INHALER 0.5ML.jpg', 'Available'),
(2017348, 'ALLERTA TABLET', '10MG ', 100, 21, 22.25, 7, 'uploaded_photos/ALLERTA 10MG TABLET.jpg', 'Available'),
(2017349, 'ALNIX PLUS  TABLET', '5MG/10MG', 100, 21, 22.05, 7, 'uploaded_photos/ALNIX PLUS 5MG 10MG TABLET.jpg', 'Available'),
(2017350, 'CLARITIN REDITABS TABLET', '10MG ', 100, 36, 37, 7, 'uploaded_photos/CLARITIN REDITABS 10MG TABLET.jpg', 'Available'),
(2017351, 'RICAM TABLET', '10MG ', 100, 14, 16, 7, 'uploaded_photos/RICAM 10 MG TABLET.jpg', 'Available'),
(2017352, 'VIRLIX TABLET', '10MG ', 100, 26, 27.6, 7, 'uploaded_photos/VIRLIX 10MG TABLET.jpg', 'Available'),
(2017353, 'AMOCLAV TABLET', '625MG ', 85, 47, 48.9, 8, 'uploaded_photos/AMOCLAV 625MG TABLET.jpg', 'Available'),
(2017354, 'AMOXICILLIN CAPSULE – RITEMED', '250MG ', 97, 4, 5, 8, 'uploaded_photos/AMOXICILLIN CAPSULE – RITEMED.jpg', 'Available'),
(2017355, 'AMOXICILLIN CAPSULE – RITEMED', '500MG ', 100, 5, 7.5, 8, 'uploaded_photos/AMOXICILLIN 500MG CAPSULE – RITEMED.jpg', 'Available'),
(2017356, 'AMOXIL CAPSULE', '500MG ', 100, 14, 15, 8, 'uploaded_photos/AMOXIL 500MG CAPSULE.jpg', 'Available'),
(2017357, 'ANEMICON PLUS', ' 200MG/250MG', 100, 12, 13.6, 8, 'uploaded_photos/ANEMICON PLUS 200MG 250MG.jpg', 'Available'),
(2017358, 'AUGMENTIN TABLET', '375MG', 100, 38, 39.75, 8, 'uploaded_photos/AUGMENTIN 375MG TABLET.jpg', 'Available'),
(2017359, 'AUGMENTIN TABLET', '625MG ', 100, 47, 48.9, 8, 'uploaded_photos/AUGMENTIN 625MG TABLET.jpg', 'Available'),
(2017360, 'AVASTOPH CAPSULE', '500MG ', 100, 10, 11.4, 8, 'uploaded_photos/AVASTOPH 500MG CAPSULE.jpg', 'Available'),
(2017361, 'AZEMAX FC TABLET', '500MG ', 100, 112, 113, 8, 'uploaded_photos/AZEMAX 500MG FC TABLET.jpg', 'Available'),
(2017362, 'AZITHROMYCIN TABLET – RITEMED', '500MG ', 100, 104, 105, 8, 'uploaded_photos/AZITHROMYCIN 500MG TABLET – RITEMED.jpg', 'Available'),
(2017363, 'AZITHRO-NATRA TABLET', '500MG ', 100, 130, 132.75, 8, 'uploaded_photos/AZITHRO-NATRA 500MG TABLET.jpg', 'Available'),
(2017364, 'BACTIV ', '1G 875/125MG', 100, 63, 64.5, 8, 'uploaded_photos/BACTIV 1G 875 125MG.jpg', 'Available'),
(2017365, 'BACTOCLAV TABLET', '625MG ', 100, 42, 43.75, 8, 'uploaded_photos/BACTOCLAV 625MG TABLET.jpg', 'Available'),
(2017367, 'CLARIGET TABLET', '500MG ', 100, 70, 71.5, 8, 'uploaded_photos/CLARIGET 500MG TABLET.jpg', 'Available'),
(2017368, 'DAZOMET TABLET', '500MG ', 100, 22, 23, 8, 'uploaded_photos/DAZOMET 500MG.jpg', 'Available'),
(2017369, 'DOXIN CAPSULE', '100MG ', 100, 92, 93.5, 8, 'uploaded_photos/DOXIN 100MG CAPSULE.jpg', 'Available'),
(2017370, 'FLAGYSTATIN SUPPOSITORY', '500MG ', 100, 143, 145.15, 8, 'uploaded_photos/FLAGYSTATIN 500MG SUPPOSITORY.jpg', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `tblpromopro`
--

CREATE TABLE `tblpromopro` (
  `PROMOID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `PRODISCOUNT` double NOT NULL,
  `PRODISPRICE` double NOT NULL,
  `PROBANNER` tinyint(4) NOT NULL,
  `PRONEW` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpromopro`
--

INSERT INTO `tblpromopro` (`PROMOID`, `PROID`, `PRODISCOUNT`, `PRODISPRICE`, `PROBANNER`, `PRONEW`) VALUES
(1, 2017203, 0, 15, 0, 0),
(2, 2017204, 0, 12, 0, 0),
(3, 2017205, 0, 14, 0, 0),
(4, 2017206, 0, 145, 0, 0),
(5, 2017207, 0, 15, 0, 0),
(6, 2017208, 0, 165, 0, 0),
(7, 2017209, 0, 124, 0, 0),
(8, 2017210, 0, 16, 0, 0),
(9, 2017211, 0, 15, 0, 0),
(10, 2017212, 0, 21, 0, 0),
(11, 2017213, 0, 18, 0, 0),
(12, 2017214, 0, 123, 0, 0),
(13, 2017215, 0, 135, 0, 0),
(14, 2017216, 0, 15, 0, 0),
(15, 2017217, 0, 102, 0, 0),
(16, 2017218, 0, 58.4, 0, 0),
(17, 2017219, 0, 6.5, 0, 0),
(18, 2017220, 0, 7, 0, 0),
(19, 2017221, 0, 5.5, 0, 0),
(20, 2017222, 0, 5.5, 0, 0),
(21, 2017223, 0, 39, 0, 0),
(22, 2017224, 0, 39, 0, 0),
(23, 2017225, 0, 6.8, 0, 0),
(24, 2017226, 0, 17.5, 0, 0),
(25, 2017227, 0, 20, 0, 0),
(26, 2017228, 0, 7, 0, 0),
(27, 2017229, 0, 12.5, 0, 0),
(28, 2017230, 0, 120.54, 0, 0),
(29, 2017231, 0, 7, 0, 0),
(30, 2017232, 0, 3.75, 0, 0),
(31, 2017233, 0, 2, 0, 0),
(32, 2017234, 0, 12, 0, 0),
(46, 2017248, 0, 7.5, 0, 0),
(47, 2017249, 0, 11.85, 0, 0),
(48, 2017250, 0, 385.25, 0, 0),
(49, 2017251, 0, 1, 0, 0),
(50, 2017252, 0, 110, 0, 0),
(51, 2017253, 0, 21.75, 0, 0),
(52, 2017254, 0, 14.75, 0, 0),
(53, 2017255, 0, 21, 0, 0),
(54, 2017256, 0, 2.5, 0, 0),
(55, 2017257, 0, 10, 0, 0),
(56, 2017258, 0, 6.5, 0, 0),
(57, 2017259, 0, 30.65, 0, 0),
(59, 2017261, 0, 15.5, 0, 0),
(60, 2017262, 0, 11, 0, 0),
(61, 2017263, 0, 4.75, 0, 0),
(62, 2017264, 0, 8.25, 0, 0),
(63, 2017265, 0, 5, 0, 0),
(64, 2017266, 0, 5.25, 0, 0),
(65, 2017267, 0, 80, 0, 0),
(66, 2017268, 0, 35.5, 0, 0),
(76, 2017278, 0, 16.9, 0, 0),
(77, 2017279, 0, 9.75, 0, 0),
(78, 2017280, 0, 38.75, 0, 0),
(79, 2017281, 0, 15.3, 0, 0),
(81, 2017283, 0, 394.2, 0, 0),
(82, 2017284, 0, 308.5, 0, 0),
(85, 2017287, 0, 231.25, 0, 0),
(86, 2017288, 0, 31.1, 0, 0),
(89, 2017291, 0, 12.5, 0, 0),
(90, 2017292, 0, 86, 0, 0),
(91, 2017293, 0, 114.75, 0, 0),
(92, 2017294, 0, 172.75, 0, 0),
(93, 2017295, 0, 284.25, 0, 0),
(94, 2017296, 0, 13.5, 0, 0),
(95, 2017297, 0, 89, 0, 0),
(96, 2017298, 0, 124.75, 0, 0),
(97, 2017299, 0, 190, 0, 0),
(98, 2017300, 0, 157.5, 0, 0),
(99, 2017301, 0, 5, 0, 0),
(100, 2017302, 0, 115, 0, 0),
(101, 2017303, 0, 135.57, 0, 0),
(102, 2017304, 0, 203, 0, 0),
(103, 2017305, 0, 278, 0, 0),
(104, 2017306, 0, 278, 0, 0),
(105, 2017307, 0, 14.5, 0, 0),
(106, 2017308, 0, 195, 0, 0),
(110, 2017312, 0, 122.25, 0, 0),
(112, 2017314, 0, 131, 0, 0),
(113, 2017315, 0, 147, 0, 0),
(114, 2017316, 0, 78.6, 0, 0),
(115, 2017317, 0, 88.25, 0, 0),
(116, 2017318, 0, 122.1, 0, 0),
(117, 2017319, 0, 229, 0, 0),
(118, 2017320, 0, 245, 0, 0),
(119, 2017321, 0, 140.25, 0, 0),
(120, 2017322, 0, 130.75, 0, 0),
(121, 2017323, 0, 195, 0, 0),
(123, 2017325, 0, 140.25, 0, 0),
(124, 2017326, 0, 6.25, 0, 0),
(125, 2017327, 0, 6.25, 0, 0),
(126, 2017328, 0, 4.5, 0, 0),
(127, 2017329, 0, 6.8, 0, 0),
(128, 2017330, 0, 6, 0, 0),
(129, 2017331, 0, 20.75, 0, 0),
(130, 2017332, 0, 96, 0, 0),
(131, 2017333, 0, 7.75, 0, 0),
(132, 2017334, 0, 11.75, 0, 0),
(133, 2017335, 0, 8.8, 0, 0),
(134, 2017336, 0, 7, 0, 0),
(135, 2017337, 0, 5.25, 0, 0),
(136, 2017338, 0, 77.5, 0, 0),
(137, 2017339, 0, 136.25, 0, 0),
(138, 2017340, 0, 7.5, 0, 0),
(139, 2017341, 0, 8.25, 0, 0),
(140, 2017342, 0, 5, 0, 0),
(141, 2017343, 0, 6.75, 0, 0),
(142, 2017344, 0, 11.75, 0, 0),
(143, 2017345, 0, 153.25, 0, 0),
(144, 2017346, 0, 10.5, 0, 0),
(145, 2017347, 0, 78.25, 0, 0),
(146, 2017348, 0, 22.25, 0, 0),
(147, 2017349, 0, 22.05, 0, 0),
(148, 2017350, 0, 37, 0, 0),
(149, 2017351, 0, 16, 0, 0),
(150, 2017352, 0, 27.6, 0, 0),
(151, 2017353, 0, 48.9, 0, 0),
(152, 2017354, 0, 5, 0, 0),
(153, 2017355, 0, 7.5, 0, 0),
(154, 2017356, 0, 15, 0, 0),
(155, 2017357, 0, 13.6, 0, 0),
(156, 2017358, 0, 39.75, 0, 0),
(157, 2017359, 0, 48.9, 0, 0),
(158, 2017360, 0, 11.4, 0, 0),
(159, 2017361, 0, 113, 0, 0),
(160, 2017362, 0, 105, 0, 0),
(161, 2017363, 0, 132.75, 0, 0),
(162, 2017364, 0, 64.5, 0, 0),
(163, 2017365, 0, 43.75, 0, 0),
(165, 2017367, 0, 71.5, 0, 0),
(166, 2017368, 0, 23, 0, 0),
(167, 2017369, 0, 93.5, 0, 0),
(168, 2017370, 0, 145.15, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblstockin`
--

CREATE TABLE `tblstockin` (
  `STOCKINID` int(11) NOT NULL,
  `STOCKDATE` datetime DEFAULT NULL,
  `PROID` int(11) DEFAULT NULL,
  `STOCKQTY` int(11) DEFAULT NULL,
  `STOCKPRICE` double DEFAULT NULL,
  `USERID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblsummary`
--

CREATE TABLE `tblsummary` (
  `SUMMARYID` int(11) NOT NULL,
  `ORDEREDDATE` datetime NOT NULL,
  `CUSTOMERID` int(11) NOT NULL,
  `ORDEREDNUM` int(11) NOT NULL,
  `DELFEE` double NOT NULL,
  `PAYMENT` double NOT NULL,
  `PAYMENTMETHOD` varchar(30) NOT NULL,
  `ORDEREDSTATS` varchar(30) NOT NULL,
  `ORDEREDREMARKS` varchar(125) NOT NULL,
  `CLAIMEDADTE` datetime NOT NULL,
  `EMPID` int(11) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsummary`
--

INSERT INTO `tblsummary` (`SUMMARYID`, `ORDEREDDATE`, `CUSTOMERID`, `ORDEREDNUM`, `DELFEE`, `PAYMENT`, `PAYMENTMETHOD`, `ORDEREDSTATS`, `ORDEREDREMARKS`, `CLAIMEDADTE`, `EMPID`, `USERID`) VALUES
(6, '2021-01-25 01:58:55', 3, 248, 0, 35, 'Cash on Delivery', 'Pending', 'Your order is on process.', '0000-00-00 00:00:00', 0, 0),
(7, '2021-01-25 02:31:11', 3, 249, 10, 45, 'Cash on Delivery', 'Pending', 'Your order is on process.', '0000-00-00 00:00:00', 0, 0),
(8, '2021-01-25 05:11:46', 3, 250, 20, 117.8, 'Cash on Delivery', 'Pending', 'Your order is on process.', '0000-00-00 00:00:00', 0, 0),
(9, '2021-01-25 06:21:41', 3, 251, 10, 107.8, 'Cash on Delivery', 'Pending', 'Your order is on process.', '0000-00-00 00:00:00', 0, 0),
(10, '2021-01-25 06:22:28', 3, 252, 20, 68.9, 'Cash on Delivery', 'Pending', 'Your order is on process.', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbluseraccount`
--

CREATE TABLE `tbluseraccount` (
  `USERID` int(11) NOT NULL,
  `U_NAME` varchar(122) NOT NULL,
  `U_USERNAME` varchar(122) NOT NULL,
  `U_PASS` varchar(122) NOT NULL,
  `U_ROLE` varchar(30) NOT NULL,
  `USERIMAGE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluseraccount`
--

INSERT INTO `tbluseraccount` (`USERID`, `U_NAME`, `U_USERNAME`, `U_PASS`, `U_ROLE`, `USERIMAGE`) VALUES
(1, 'Adones Evangelista', 'adones', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', 'Administrator', 'photos/tagalog-christian-song.jpg'),
(2, 'Kimmy Matillano', 'kimmy', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', 'Rider', ''),
(3, 'shella dongcoy', 'dongcoy', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', 'Rider', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblwishlist`
--

CREATE TABLE `tblwishlist` (
  `id` int(11) NOT NULL,
  `CUSID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `WISHDATE` date NOT NULL,
  `WISHSTATS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messagein`
--
ALTER TABLE `messagein`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `messagelog`
--
ALTER TABLE `messagelog`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_MessageId` (`MessageId`,`SendTime`);

--
-- Indexes for table `messageout`
--
ALTER TABLE `messageout`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_IsRead` (`IsRead`);

--
-- Indexes for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbinalbagan`
--
ALTER TABLE `tblbinalbagan`
  ADD PRIMARY KEY (`BINID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`CATEGID`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`CUSTOMERID`);

--
-- Indexes for table `tblemployee`
--
ALTER TABLE `tblemployee`
  ADD PRIMARY KEY (`EMPID`);

--
-- Indexes for table `tblhimamaylan`
--
ALTER TABLE `tblhimamaylan`
  ADD PRIMARY KEY (`HIMID`);

--
-- Indexes for table `tblhinigaran`
--
ALTER TABLE `tblhinigaran`
  ADD PRIMARY KEY (`HINID`);

--
-- Indexes for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`ORDERID`),
  ADD KEY `USERID` (`CUSTOMERID`),
  ADD KEY `PROID` (`PROID`),
  ADD KEY `ORDEREDNUM` (`ORDEREDNUM`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`PROID`),
  ADD KEY `CATEGID` (`CATEGID`);

--
-- Indexes for table `tblpromopro`
--
ALTER TABLE `tblpromopro`
  ADD PRIMARY KEY (`PROMOID`),
  ADD UNIQUE KEY `PROID` (`PROID`);

--
-- Indexes for table `tblstockin`
--
ALTER TABLE `tblstockin`
  ADD PRIMARY KEY (`STOCKINID`),
  ADD KEY `PROID` (`PROID`,`USERID`),
  ADD KEY `USERID` (`USERID`);

--
-- Indexes for table `tblsummary`
--
ALTER TABLE `tblsummary`
  ADD PRIMARY KEY (`SUMMARYID`),
  ADD UNIQUE KEY `ORDEREDNUM` (`ORDEREDNUM`),
  ADD KEY `CUSTOMERID` (`CUSTOMERID`),
  ADD KEY `USERID` (`USERID`);

--
-- Indexes for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  ADD PRIMARY KEY (`USERID`);

--
-- Indexes for table `tblwishlist`
--
ALTER TABLE `tblwishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messagein`
--
ALTER TABLE `messagein`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messagelog`
--
ALTER TABLE `messagelog`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `messageout`
--
ALTER TABLE `messageout`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblbinalbagan`
--
ALTER TABLE `tblbinalbagan`
  MODIFY `BINID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `CATEGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `CUSTOMERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblemployee`
--
ALTER TABLE `tblemployee`
  MODIFY `EMPID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblhimamaylan`
--
ALTER TABLE `tblhimamaylan`
  MODIFY `HIMID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblhinigaran`
--
ALTER TABLE `tblhinigaran`
  MODIFY `HINID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `ORDERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblpromopro`
--
ALTER TABLE `tblpromopro`
  MODIFY `PROMOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `tblstockin`
--
ALTER TABLE `tblstockin`
  MODIFY `STOCKINID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblsummary`
--
ALTER TABLE `tblsummary`
  MODIFY `SUMMARYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblwishlist`
--
ALTER TABLE `tblwishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
