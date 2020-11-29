-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2020 at 04:59 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trip`
--

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `sid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `other` varchar(200) NOT NULL,
  `dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`sid`, `name`, `age`, `gender`, `email`, `phone`, `other`, `dt`) VALUES
(1, 'Sakshi Chaurasiya', 20, 'female', 'sakshichaurasiya02@gmail.com', '9755876907', 'i am from tikamgarh', '2020-11-01 00:00:00'),
(2, 'ettoirt', 23, 'female', 'etrt@gmail.com', '4354776', 'thhh', '2020-11-29 09:19:24'),
(3, 'ettoirt', 23, 'female', 'etrt@gmail.com', '4354776', 'thhh', '2020-11-29 09:24:47'),
(4, 'ryrttruyu', 45, 'ghjhj', 'ttt', 'tttyt', 'ettttrbvb', '2020-11-29 09:25:10'),
(5, 'ryrttruyu', 45, 'ghjhj', 'ttt', 'tttyt', 'ettttrbvb', '2020-11-29 09:25:17'),
(6, '', 56, 'hjhjhh', 'tuytu', 'uui', 'tuyy', '2020-11-29 09:25:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
