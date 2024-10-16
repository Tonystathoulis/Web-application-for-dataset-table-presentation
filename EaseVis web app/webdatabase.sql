-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: May 12, 2024 at 11:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `bioriverquality`
--

CREATE TABLE `bioriverquality` (
  `EARegion` varchar(10) DEFAULT NULL,
  `Year` int(4) DEFAULT NULL,
  `Qualitygood` int(2) DEFAULT NULL,
  `Qualityfair` int(2) DEFAULT NULL,
  `Qualitypoor` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bioriverquality`
--

INSERT INTO `bioriverquality` (`EARegion`, `Year`, `Qualitygood`, `Qualityfair`, `Qualitypoor`) VALUES
('North West', 1990, 41, 25, 34),
('', 1995, 52, 26, 22),
('', 2000, 45, 39, 16),
('', 2002, 51, 35, 14),
('', 2003, 54, 31, 14),
('', 2004, 58, 30, 12),
('', 2005, 58, 30, 12),
('', 2006, 60, 29, 11),
('', 2007, 64, 25, 11),
('', 2008, 64, 25, 11),
('North East', 1990, 65, 20, 16),
('', 1995, 68, 20, 13),
('', 2000, 68, 25, 7),
('', 2002, 69, 24, 7),
('', 2003, 71, 23, 6),
('', 2004, 74, 20, 6),
('', 2005, 73, 20, 7),
('', 2006, 73, 20, 7),
('', 2007, 73, 19, 7),
('', 2008, 73, 20, 7),
('Midlands', 1990, 36, 47, 17),
('', 1995, 49, 43, 8),
('', 2000, 52, 42, 6),
('', 2002, 51, 42, 7),
('', 2003, 53, 39, 8),
('', 2004, 53, 38, 9),
('', 2005, 57, 34, 9),
('', 2006, 59, 33, 8),
('', 2007, 60, 33, 8),
('', 2008, 60, 33, 7),
('Anglian', 1990, 50, 46, 4),
('', 1995, 75, 23, 2),
('', 2000, 88, 11, 0),
('', 2002, 86, 11, 2),
('', 2003, 86, 11, 2),
('', 2004, 85, 13, 2),
('', 2005, 86, 14, 0),
('', 2006, 85, 15, 0),
('', 2007, 83, 17, 0),
('', 2008, 83, 17, 0),
('Thames', 1990, 56, 34, 10),
('', 1995, 67, 28, 5),
('', 2000, 74, 23, 3),
('', 2002, 76, 20, 4),
('', 2003, 72, 23, 4),
('', 2004, 68, 27, 5),
('', 2005, 66, 29, 5),
('', 2006, 66, 30, 4),
('', 2007, 65, 30, 5),
('', 2008, 62, 33, 6),
('Southern', 1990, 67, 31, 2),
('', 1995, 83, 16, 1),
('', 2000, 77, 22, 1),
('', 2002, 83, 17, 1),
('', 2003, 86, 14, 0),
('', 2004, 88, 11, 1),
('', 2005, 86, 13, 1),
('', 2006, 85, 14, 1),
('', 2007, 82, 17, 1),
('', 2008, 83, 17, 1),
('South West', 1990, 78, 19, 3),
('', 1995, 90, 9, 1),
('', 2000, 92, 7, 1),
('', 2002, 93, 6, 1),
('', 2003, 93, 6, 1),
('', 2004, 93, 7, 0),
('', 2005, 92, 7, 0),
('', 2006, 93, 7, 0),
('', 2007, 93, 7, 0),
('', 2008, 92, 8, 0),
('England', 1990, 55, 31, 14),
('', 1995, 66, 25, 8),
('', 2000, 69, 25, 5),
('', 2002, 70, 24, 6),
('', 2003, 71, 23, 6),
('', 2004, 71, 23, 6),
('', 2005, 71, 23, 6),
('', 2006, 72, 22, 5),
('', 2007, 72, 22, 5),
('', 2008, 72, 23, 5);

-- --------------------------------------------------------

--
-- Table structure for table `carbonandairfilt`
--

CREATE TABLE `carbonandairfilt` (
  `Pollutant` varchar(15) DEFAULT NULL,
  `Habitat` varchar(27) DEFAULT NULL,
  `Y2015` decimal(4,2) DEFAULT NULL,
  `Y2016` decimal(4,2) DEFAULT NULL,
  `Y2017` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `carbonandairfilt`
--

INSERT INTO `carbonandairfilt` (`Pollutant`, `Habitat`, `Y2015`, `Y2016`, `Y2017`) VALUES
('PM10', 'Urban woodland', 1.23, 1.21, 1.20),
('', 'Urban grassland', 0.45, 0.44, 0.44),
('', 'Urban fresh/saltwater', 0.00, 0.00, 0.00),
('', 'Total urban natural capital', 1.68, 1.65, 1.63),
('PM2.5', 'Urban woodland', 0.70, 0.68, 0.68),
('', 'Urban grassland', 0.31, 0.30, 0.30),
('', 'Urban fresh/saltwater', 0.00, 0.00, 0.00),
('', 'Total urban natural capital', 1.01, 0.98, 0.97),
('SO2', 'Urban woodland', 0.59, 0.45, 0.33),
('', 'Urban grassland', 1.00, 0.77, 0.56),
('', 'Urban fresh/saltwater', 0.05, 0.04, 0.03),
('', 'Total urban natural capital', 1.65, 1.26, 0.91),
('NH3', 'Urban woodland', 0.44, 0.44, 0.44),
('', 'Urban grassland', 0.95, 0.95, 0.94),
('', 'Urban fresh/saltwater', 0.05, 0.05, 0.05),
('', 'Total urban natural capital', 1.43, 1.43, 1.42),
('NO2', 'Urban woodland', 0.41, 0.38, 0.38),
('', 'Urban grassland', 1.61, 1.50, 1.49),
('', 'Urban fresh/saltwater', 0.00, 0.00, 0.00),
('', 'Total urban natural capital', 2.02, 1.88, 1.87),
('O3', 'Urban woodland', 4.97, 4.99, 5.01),
('', 'Urban grassland', 16.94, 17.02, 17.06),
('', 'Urban fresh/saltwater', 0.00, 0.00, 0.00),
('', 'Total urban natural capital', 21.91, 22.00, 22.05),
('All pollutants*', 'Urban woodland', 7.65, 7.48, 7.35),
('', 'Urban grassland', 20.95, 20.67, 20.48),
('', 'Urban fresh/saltwater', 0.09, 0.08, 0.07),
('', 'Total urban natural capital', 28.68, 28.21, 27.89);

-- --------------------------------------------------------

--
-- Table structure for table `envbehaviours`
--

CREATE TABLE `envbehaviours` (
  `Actions` varchar(65) DEFAULT NULL,
  `employees0_9` int(4) DEFAULT NULL,
  `employees0_9pct` varchar(3) DEFAULT NULL,
  `employees10_49` int(4) DEFAULT NULL,
  `employees10_49pct` varchar(3) DEFAULT NULL,
  `employees50_240` int(3) DEFAULT NULL,
  `employees50_240pct` varchar(3) DEFAULT NULL,
  `Total` int(4) DEFAULT NULL,
  `Totalpct` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `envbehaviours`
--

INSERT INTO `envbehaviours` (`Actions`, `employees0_9`, `employees0_9pct`, `employees10_49`, `employees10_49pct`, `employees50_240`, `employees50_240pct`, `Total`, `Totalpct`) VALUES
('Assessed the impact your business has on the environment', 331, '18%', 291, '18%', 124, '22%', 746, '19%'),
('Carried out a programme of environmental improvements', 194, '11%', 215, '13%', 117, '20%', 526, '13%'),
('Made someone in the company responsible for environmental matters', 97, '5%', 114, '7%', 79, '14%', 290, '7%'),
('Made any energy efficiency or water reduction Improvements', 484, '27%', 437, '27%', 186, '32%', 1107, '28%'),
('Cut down your business waste', 730, '40%', 671, '42%', 245, '43%', 1646, '41%'),
('Recycled your business waste', 1445, '79%', 1348, '83%', 458, '80%', 3251, '81%'),
('Other', 6, '17%', 2, '15%', 3, '16%', 11, '16%');

-- --------------------------------------------------------

--
-- Table structure for table `natura2k`
--

CREATE TABLE `natura2k` (
  `Country` varchar(14) DEFAULT NULL,
  `Land_area_in_km²` int(7) DEFAULT NULL,
  `SCI` int(5) DEFAULT NULL,
  `SPA` int(4) DEFAULT NULL,
  `Natura2000` int(5) DEFAULT NULL,
  `SCIpct` varchar(6) DEFAULT NULL,
  `SPApct` varchar(6) DEFAULT NULL,
  `Natura2000pct` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `natura2k`
--

INSERT INTO `natura2k` (`Country`, `Land_area_in_km²`, `SCI`, `SPA`, `Natura2000`, `SCIpct`, `SPApct`, `Natura2000pct`) VALUES
('Austria', 83944, 305, 100, 352, '11.20%', '12.30%', '15.40%'),
('Belgium', 30667, 281, 255, 310, '10.70%', '10.40%', '12.70%'),
('Bulgaria', 110995, 234, 120, 341, '30.30%', '23.10%', '34.90%'),
('Croatia', 56430, 741, 42, 783, '28.40%', '30.20%', '36.70%'),
('Cyprus', 5736, 39, 29, 62, '16.70%', '26.00%', '29.10%'),
('Czech Republic', 78874, 1112, 41, 1153, '10.10%', '8.90%', '14.10%'),
('Denmark', 43167, 261, 113, 350, '7.40%', '6.00%', '8.30%'),
('Estonia', 45325, 541, 66, 567, '17.20%', '13.70%', '17.90%'),
('Finland', 337547, 1721, 470, 1866, '12.50%', '7.30%', '12.60%'),
('France', 548936, 1373, 403, 1776, '8.90%', '8.00%', '12.90%'),
('Germany', 358265, 4544, 742, 5200, '9.40%', '11.20%', '15.40%'),
('Greece', 132026, 265, 207, 446, '16.60%', '21.00%', '27.30%'),
('Hungary', 93013, 479, 56, 525, '15.50%', '14.80%', '21.40%'),
('Ireland', 69946, 439, 165, 604, '10.20%', '6.20%', '13.20%'),
('Italy', 300578, 2342, 627, 2621, '14.30%', '13.40%', '19.00%'),
('Latvia', 64586, 329, 98, 333, '11.50%', '10.20%', '11.50%'),
('Lithuania', 64899, 481, 84, 556, '9.80%', '8.50%', '12.50%'),
('Luxembourg', 2595, 48, 18, 66, '16.00%', '16.10%', '27.10%'),
('Malta', 315, 40, 22, 55, '13.00%', '5.10%', '13.30%'),
('Netherlands', 37382, 140, 77, 197, '8.40%', '12.80%', '14.80%'),
('Poland', 311928, 850, 145, 985, '11.00%', '15.50%', '19.60%'),
('Portugal', 91888, 108, 62, 167, '17.00%', '10.00%', '20.60%'),
('Romania', 238369, 435, 171, 606, '16.90%', '15.60%', '22.70%'),
('Slovakia', 49026, 642, 41, 683, '12.50%', '26.70%', '29.80%'),
('Slovenia', 20267, 324, 31, 355, '32.70%', '25.00%', '37.90%'),
('Spain', 505983, 1467, 657, 1872, '23.20%', '20.10%', '27.30%'),
('Sweden', 449718, 3991, 548, 4087, '12.30%', '5.90%', '12.40%'),
('United Kingdom', 244573, 660, 276, 934, '5.40%', '6.60%', '8.60%'),
('Total EU', 4376978, 24192, 5666, 27852, '13.70%', '12.40%', '17.90%');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
