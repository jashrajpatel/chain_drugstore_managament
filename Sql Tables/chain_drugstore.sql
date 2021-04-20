-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2021 at 06:48 AM
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chain_drugstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `chain_pharmacy`
--

CREATE TABLE IF NOT EXISTS `chain_pharmacy` (
  `store_id` int(11) NOT NULL,
  `pharmacy_name` varchar(100) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `M_id` int(11) DEFAULT NULL,
  `Areas` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chain_pharmacy`
--

INSERT INTO `chain_pharmacy` (`store_id`, `pharmacy_name`, `phone`, `address`, `M_id`, `Areas`) VALUES
(101, 'CVS pharmacy', 2224092234, '741 W 31ST', 1001, '741 W 31ST'),
(102, 'WALGREENS #09038', 2224092534, '4001 W IRVING PARK RD', 2002, '4001 W IRVING PARK RD'),
(103, 'GSK PHARMACY INC', 2224092584, '5140 W CHICAGO AVE', 3002, '5140 W CHICAGO AVE'),
(104, 'SAVE RITE PHARMACY DISCOUNT CENTER', 2224095584, '3479 N BROADWAY ST', 4002, '53479 N BROADWAY ST'),
(105, 'PROFESSIONAL OFFICE BUILDING PHARMACY', 2224095584, '1725 W HARRISON STE 418', 5002, '1725 W HARRISON STE 418'),
(106, '111th Pharma Family', 2224095544, '11101 S STATE ST', 5002, '11101 S STATE ST'),
(107, 'MARIAM PHARMACY', 2224095524, '3514 W Lawrence Ave', 7002, '3514 W Lawrence Ave'),
(108, 'OSCO DRUG', 2224096524, '1763 W Howard St', 8002, '1763 W Howard St'),
(109, 'Dr. Z''s Pharmacy', 2224086524, '4326 N Lincoln Ave', 9002, '4326 N Lincoln Ave'),
(110, 'DAMBER PHARMACY', 2224046524, '213 W INSTITUTE PLACE STE 703', 1002, '213 W INSTITUTE PLACE STE 703');

-- --------------------------------------------------------

--
-- Table structure for table `drugs`
--

CREATE TABLE IF NOT EXISTS `drugs` (
  `drug_id` int(11) NOT NULL,
  `d_name` varchar(100) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `sale_price` int(11) DEFAULT NULL,
  `icon` varchar(20) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `package` char(2) DEFAULT NULL,
  `weight` varchar(8) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `safety_stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drugs`
--

INSERT INTO `drugs` (`drug_id`, `d_name`, `price`, `sale_price`, `icon`, `company`, `package`, `weight`, `remark`, `safety_stock`) VALUES
(201, 'ACEBROTE Tablet', '80', 120, 'Cipla Ltd (Generics)', 'CIPLA INDIA', 'NM', '200gm', 'Chills and Fever', 100),
(202, 'Clopicard Tablet', '60', 89, 'Cipla Ltd (Generics)', 'CIPLA INDIA', 'NM', '75mg', 'Rashes', 50),
(203, 'METFOR Tablet', '20', 24, 'Cipla Ltd (Generics)', 'CIPLA INDIA', 'NM', '500mg', 'Loss of Appetite', 130),
(204, 'Dericip Tablet', '2', 3, 'Cipla Ltd (Generics)', 'CIPLA INDIA', 'NM', '77mg', 'Headache', 10),
(205, 'Nicip Tablet', '50', 77, 'Cipla Ltd (Generics)', 'CIPLA INDIA', 'NM', '375mg', 'Vomiting', 100),
(206, 'Cephadex 500mg Capsule', '100', 142, 'Cipla Ltd (Generics)', 'CIPLA INDIA', 'NM', '500mg', 'Stomach Pain', 80),
(207, 'Roxee Tablet', '80', 120, 'Cipla Ltd (Generics)', 'CIPLA INDIA', 'NM', '150mg', 'Nausea', 120),
(208, 'Tercan M Gel ', '90', 116, 'Cipla Ltd (Generics)', 'CIPLA INDIA', 'NM', '10gm', 'Skin Peeling', 50),
(209, 'Lipvas Tablet', '100', 133, 'Cipla Ltd (Generics)', 'CIPLA INDIA', 'NM', '20mg', 'Joint Pain', 10),
(210, 'VOMISTOP Tablet', '10', 24, 'Cipla Ltd (Generics)', 'CIPLA INDIA', 'NM', '10mg', 'Dry Mouth', 15);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `E_id` int(11) NOT NULL,
  `E_Name` varchar(50) DEFAULT NULL,
  `E_number` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`E_id`, `E_Name`, `E_number`) VALUES
(601, 'Jashraj', 12345),
(602, 'Aniket', 123456),
(603, 'Harsh', 1234567),
(604, 'Soham', 12345678),
(605, 'Jashraj', 123456789);

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE IF NOT EXISTS `plan` (
  `plan_id` int(11) NOT NULL,
  `plan_time` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `T_price` decimal(10,0) DEFAULT NULL,
  `drugs_id2` int(11) DEFAULT NULL,
  `store_id2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`plan_id`, `plan_time`, `quantity`, `price`, `T_price`, `drugs_id2`, `store_id2`) VALUES
(301, '2021-04-18 11:30:09', 200, '120', '24000', 201, 101),
(302, '2021-04-18 11:48:03', 100, '89', '8900', 202, 101),
(303, '2021-04-18 11:48:03', 300, '24', '7200', 203, 102),
(304, '2021-04-18 11:48:03', 1000, '3', '3000', 204, 103),
(305, '2021-04-18 11:48:03', 400, '77', '30800', 205, 105),
(306, '2021-04-18 11:49:27', 200, '142', '28400', 206, 104),
(307, '2021-04-18 11:49:27', 150, '120', '18000', 207, 106),
(308, '2021-04-18 11:54:39', 200, '116', '23200', 208, 107),
(309, '2021-04-18 11:54:39', 100, '133', '13300', 209, 108),
(310, '2021-04-18 11:54:39', 1000, '24', '24000', 210, 110);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE IF NOT EXISTS `sale` (
  `sale_id` int(11) NOT NULL,
  `sale_date` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `sale_money` decimal(10,0) DEFAULT NULL,
  `drugs_id3` int(11) DEFAULT NULL,
  `store_id3` int(11) DEFAULT NULL,
  `employee_id2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`sale_id`, `sale_date`, `quantity`, `price`, `sale_money`, `drugs_id3`, `store_id3`, `employee_id2`) VALUES
(401, '2021-04-18 00:00:00', 200, '120', '24000', 201, 101, 601),
(402, '2021-04-18 00:00:00', 100, '89', '8900', 202, 101, 601),
(403, '2021-04-18 00:00:00', 300, '24', '7200', 203, 102, 603),
(404, '2021-04-18 00:00:00', 1000, '3', '3000', 204, 103, 602),
(405, '2021-04-18 00:00:00', 400, '77', '30800', 205, 105, 604),
(406, '2021-04-18 00:00:00', 200, '142', '28400', 206, 104, 605),
(407, '2021-04-18 00:00:00', 150, '120', '18000', 207, 106, 604),
(408, '2021-04-18 00:00:00', 200, '116', '23200', 208, 107, 602),
(409, '2021-04-18 00:00:00', 100, '133', '13300', 209, 108, 603),
(410, '2021-04-18 00:00:00', 1000, '24', '24000', 210, 110, 604);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `stock_id` int(11) NOT NULL,
  `stock_date` datetime DEFAULT NULL,
  `last_remain` int(11) DEFAULT NULL,
  `were` int(11) DEFAULT NULL,
  `sale_num` int(11) DEFAULT NULL,
  `remaains` int(11) DEFAULT NULL,
  `isable` char(10) DEFAULT NULL,
  `drugs_id4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `stock_date`, `last_remain`, `were`, `sale_num`, `remaains`, `isable`, `drugs_id4`) VALUES
(701, '2021-04-18 00:00:00', 10000, 100000, 4000, 200, '20000', 201),
(702, '2021-04-18 00:00:00', 20000, 10000, 3000, 300, '40000', 202),
(704, '2021-04-18 00:00:00', 10000, 100000, 4000, 200, '20000', 203),
(705, '2021-04-18 00:00:00', 10000, 100000, 4000, 200, '20000', 204),
(706, '2021-04-18 00:00:00', 10000, 100000, 4000, 200, '20000', 205),
(707, '2021-04-18 00:00:00', 10000, 100000, 4000, 200, '20000', 206),
(708, '2021-04-18 00:00:00', 10000, 100000, 4000, 200, '20000', 207),
(709, '2021-04-18 00:00:00', 10000, 100000, 4000, 200, '20000', 208),
(710, '2021-04-18 00:00:00', 10000, 100000, 4000, 200, '20000', 209);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chain_pharmacy`
--
ALTER TABLE `chain_pharmacy`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `drugs`
--
ALTER TABLE `drugs`
  ADD PRIMARY KEY (`drug_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`E_id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`plan_id`),
  ADD KEY `drugs_id2` (`drugs_id2`),
  ADD KEY `store_id2` (`store_id2`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`),
  ADD KEY `drugs_id3` (`drugs_id3`),
  ADD KEY `store_id3` (`store_id3`),
  ADD KEY `employee_id2` (`employee_id2`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`),
  ADD KEY `drugs_id4` (`drugs_id4`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `plan`
--
ALTER TABLE `plan`
  ADD CONSTRAINT `plan_ibfk_1` FOREIGN KEY (`drugs_id2`) REFERENCES `drugs` (`drug_id`),
  ADD CONSTRAINT `plan_ibfk_2` FOREIGN KEY (`store_id2`) REFERENCES `chain_pharmacy` (`store_id`);

--
-- Constraints for table `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`drugs_id3`) REFERENCES `drugs` (`drug_id`),
  ADD CONSTRAINT `sale_ibfk_2` FOREIGN KEY (`store_id3`) REFERENCES `chain_pharmacy` (`store_id`),
  ADD CONSTRAINT `sale_ibfk_3` FOREIGN KEY (`employee_id2`) REFERENCES `employee` (`E_id`);

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`drugs_id4`) REFERENCES `drugs` (`drug_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
