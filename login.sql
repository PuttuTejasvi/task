-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2023 at 12:36 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE `credentials` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirmpassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `credentials`
--

INSERT INTO `credentials` (`id`, `name`, `email_id`, `password`, `confirmpassword`) VALUES
(1, 'Tejasvi', 'teju.7100@gmail.com', '68d13cf26c4b4f4f932e3eff990093ba', '68d13cf26c4b4f4f932e3eff990093ba'),
(2, 'Charitha', 'cherry@gmail.com', 'cb9bff6ba1e4e9c51dd288a8e206ae1a', 'cb9bff6ba1e4e9c51dd288a8e206ae1a'),
(3, 'Sireesha', 'siri@gmail.com', '5968996e0aca329cf3218086223f8308', '5968996e0aca329cf3218086223f8308'),
(4, 'Tulasi', 'tulasi@gmail.com', '149815eb972b3c370dee3b89d645ae14', '149815eb972b3c370dee3b89d645ae14'),
(5, 'Anitha', 'ani@gmail.com', '934b535800b1cba8f96a5d72f72f1611', '934b535800b1cba8f96a5d72f72f1611'),
(18, 'Tejasvi', 'teju.7100@gmail.com', '68d13cf26c4b4f4f932e3eff990093ba', '68d13cf26c4b4f4f932e3eff990093ba');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `credentials`
--
ALTER TABLE `credentials`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `credentials`
--
ALTER TABLE `credentials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
