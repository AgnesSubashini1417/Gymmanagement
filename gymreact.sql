-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2025 at 09:28 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gymreact`
--

-- --------------------------------------------------------

--
-- Table structure for table `offline`
--

CREATE TABLE `offline` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(50) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `joiningdate` date NOT NULL,
  `Membership` varchar(255) NOT NULL,
  `Payment` varchar(255) NOT NULL,
  `Amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offline`
--

INSERT INTO `offline` (`id`, `name`, `age`, `gender`, `city`, `phone`, `joiningdate`, `Membership`, `Payment`, `Amount`) VALUES
(3, 'shiva', 30, 'Male', 'kumbakonam', '999574321', '2025-02-13', '3 Months', 'Cash', '3000');

-- --------------------------------------------------------

--
-- Table structure for table `paymentdetails`
--

CREATE TABLE `paymentdetails` (
  `id` int(11) NOT NULL,
  `Membership` varchar(255) NOT NULL,
  `Trainingplan` varchar(255) NOT NULL,
  `Amount` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `joindate` date NOT NULL,
  `enddate` date NOT NULL,
  `status` varchar(20) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paymentdetails`
--

INSERT INTO `paymentdetails` (`id`, `Membership`, `Trainingplan`, `Amount`, `Name`, `joindate`, `enddate`, `status`) VALUES
(6, '3-Month Gym Membership', 'Full Body Training', '3000', 'Heaman', '2025-02-13', '2025-03-13', 'Pending'),
(7, '1-Year Gym Membership', 'Pro Athlete Plan', '15000', 'suba', '2025-02-13', '2025-03-13', 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `renewals`
--

CREATE TABLE `renewals` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `Membership` varchar(255) NOT NULL,
  `Trainingplan` varchar(255) NOT NULL,
  `Amount` int(11) NOT NULL,
  `renewal_date` date NOT NULL,
  `new_end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(50) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`id`, `name`, `age`, `gender`, `email`, `password`, `phone`, `Address`, `city`) VALUES
(3, 'suba', 32, 'Female', 'suba@gmail.com', '1234', '9944397600', '10,Big street', 'kumbakonam'),
(4, 'Heaman', 25, 'Male', 'Heaman@gmail.com', '1000', '997654321', '10,south street', 'thanjavur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `offline`
--
ALTER TABLE `offline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymentdetails`
--
ALTER TABLE `paymentdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `renewals`
--
ALTER TABLE `renewals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user` (`user_id`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `offline`
--
ALTER TABLE `offline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `paymentdetails`
--
ALTER TABLE `paymentdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `renewals`
--
ALTER TABLE `renewals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `userlogin`
--
ALTER TABLE `userlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `renewals`
--
ALTER TABLE `renewals`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `userlogin` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
