-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2021 at 08:13 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `page`
--

-- --------------------------------------------------------

--
-- Table structure for table `page1`
--

CREATE TABLE `page1` (
  `id` int(245) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `confirm_password` varchar(30) NOT NULL,
  `fathers_name` varchar(30) NOT NULL,
  `mothers_name` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `course` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `facilities` varchar(240) NOT NULL,
  `filename` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `page1`
--

INSERT INTO `page1` (`id`, `first_name`, `last_name`, `email`, `password`, `confirm_password`, `fathers_name`, `mothers_name`, `address`, `mobile`, `gender`, `course`, `birthday`, `facilities`, `filename`) VALUES
(1, 'piali', 'ghosh', 'piali.ghosh30@gmail.com', '1234', '1234', 'manoranjan ghosh', 'sonali ghosh', 'Madan Mohan pada', '08249879883', 'F', 'MCA', '2021-09-27', 'Canteen', 0x736e617073686f74322e312e706e67),
(2, 'sonali', 'sahu', 'abc@gmail.com', '1234', '1234', 'ncrrd', 'mjguyfr', 'm,bjyru6egci', '08249879883', 'F', 'BTECH', '2000-07-14', 'Hostel', 0x736e617073686f74312e312e706e67);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `page1`
--
ALTER TABLE `page1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `page1`
--
ALTER TABLE `page1`
  MODIFY `id` int(245) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
