-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 09, 2024 at 07:05 AM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parishaycrochetcollectiondb`
--
CREATE DATABASE IF NOT EXISTS `parishaycrochetcollectiondb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `parishaycrochetcollectiondb`;

-- --------------------------------------------------------

--
-- Table structure for table `form_enteries`
--

DROP TABLE IF EXISTS `form_enteries`;
CREATE TABLE IF NOT EXISTS `form_enteries` (
  `username` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `form_enteries`
--

INSERT INTO `form_enteries` (`username`, `email`, `password`) VALUES
('LAIBA', 'areebanazch512@', '688'),
('hareem', 'hareem@gmail.co', '7980'),
('', '', ''),
('areeba', 'areeba@gmail.co', '57668');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int NOT NULL,
  `product_name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `product_description` varchar(40) NOT NULL,
  `product_price` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_description`, `product_price`) VALUES
(100, 'Jewelry Pattern Complicat', 'THIS IS JEWELERY.', 500),
(101, 'Crochet Flower Earring', 'THIS IS EARING', 500),
(103, 'Crochet Flower Pattern Ea', 'THIS IS Crochet Flower Pattern Earring.', 400),
(104, 'Jewelry Pattern Complicat', 'THIS IS Jewelry Pattern Complication', 400);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
