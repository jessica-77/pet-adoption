-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 02, 2025 at 04:05 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rehome_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `rehome_information`
--

CREATE TABLE `rehome_information` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pet_name` varchar(100) NOT NULL,
  `breed` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `health_conditions` text NOT NULL,
  `reason_for_rehome` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rehome_information`
--

INSERT INTO `rehome_information` (`id`, `first_name`, `last_name`, `phone_number`, `email`, `pet_name`, `breed`, `age`, `health_conditions`, `reason_for_rehome`) VALUES
(1, 'Jessica', 'Trejo', '', 'jessicatrejo140@yahoo.com', 'Socks', 'Domestic Short Hair', 2, 'N/A', 'Moving to an apartment '),
(2, 'jane', 'doe', '9092049559', NULL, 'monkey', 'pitbull', 2, 'N/A', 'moving');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rehome_information`
--
ALTER TABLE `rehome_information`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rehome_information`
--
ALTER TABLE `rehome_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
