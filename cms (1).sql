-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jun 21, 2021 at 03:50 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `id` int(10) NOT NULL,
  `name` text NOT NULL,
  `qualification` text NOT NULL,
  `college_name` text NOT NULL,
  `department` text NOT NULL,
  `file` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `size` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`id`, `name`, `qualification`, `college_name`, `department`, `file`, `type`, `size`) VALUES
(9, 'Ishita Dey', '+2', 'BIT', 'IT', '20829-30d3eed77abddeb6d2508da766ab2e09.jpg', 'image/jpeg', 14),
(10, 'Hanzala', '+2', 'BIT', 'IT', '60294-download.png', 'image/png', 21);

-- --------------------------------------------------------

--
-- Table structure for table `it101`
--

CREATE TABLE `it101` (
  `reg_id` int(100) NOT NULL,
  `ut1` int(100) NOT NULL,
  `ut2` int(100) NOT NULL,
  `ut3` int(100) NOT NULL,
  `im` varchar(100) NOT NULL,
  `notes` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `it102`
--

CREATE TABLE `it102` (
  `reg_id` int(100) NOT NULL,
  `ut1` int(100) NOT NULL,
  `ut2` int(100) NOT NULL,
  `ut3` int(100) NOT NULL,
  `im` varchar(100) NOT NULL,
  `notes` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `studentinfo`
--

CREATE TABLE `studentinfo` (
  `sid` int(100) NOT NULL,
  `pass` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dept` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(10) NOT NULL,
  `xper` int(100) NOT NULL,
  `xiiper` int(100) NOT NULL,
  `batch` year(4) NOT NULL,
  `address` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentinfo`
--

INSERT INTO `studentinfo` (`sid`, `pass`, `name`, `dept`, `email`, `phone`, `xper`, `xiiper`, `batch`, `address`) VALUES
(121, 1234, 'ISHITA', 'IT', 'id8@gmail.com', 123456789, 90, 90, 2021, '44A,CIT ROAD ,KOLKATA');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `tid` int(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `tsub` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`tid`, `pass`, `tsub`) VALUES
(101, '1234', 'IT101');

-- --------------------------------------------------------

--
-- Table structure for table `tsub`
--

CREATE TABLE `tsub` (
  `reg_id` int(100) NOT NULL,
  `ut1` int(100) NOT NULL,
  `ut2` int(100) NOT NULL,
  `ut3` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tsub`
--

INSERT INTO `tsub` (`reg_id`, `ut1`, `ut2`, `ut3`) VALUES
(121, 21, 31, 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
