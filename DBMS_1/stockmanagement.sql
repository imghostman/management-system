-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2020 at 06:01 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stockmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE `credentials` (
  `sid` bigint(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `credentials`
--

INSERT INTO `credentials` (`sid`, `pass`) VALUES
(2345, 'root'),
(12345, 'admin'),
(98233, 'root');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `shopid` bigint(255) NOT NULL,
  `cust_id` bigint(255) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `cust_add` varchar(255) NOT NULL,
  `cust_phone_1` bigint(20) NOT NULL,
  `cust_phne_2` int(20) NOT NULL,
  `cust_email` varchar(255) NOT NULL,
  `total` bigint(255) NOT NULL,
  `bill_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`shopid`, `cust_id`, `cust_name`, `cust_add`, `cust_phone_1`, `cust_phne_2`, `cust_email`, `total`, `bill_date`) VALUES
(1, 1, 'Prashant Karna', 'Janakpur-4', 23324791, 0, 'karnaprash@gmail.com', 18500000, '2020-05-01'),
(2, 2, 'Karma Jimpa', 'Baserhat,Dinajpur-5200', 1907213081, 0, 'karmadurant35@gmail.com', 19500000, '2020-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `hwlist`
--

CREATE TABLE `hwlist` (
  `hid` bigint(255) NOT NULL,
  `sp` bigint(255) NOT NULL,
  `hwlist` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hwlist`
--

INSERT INTO `hwlist` (`hid`, `sp`, `hwlist`) VALUES
(311, 195000, 'Laptop'),
(312, 5000, 'Computer Accessories'),
(313, 1000, 'Computer Components'),
(314, 10000, 'Drives and Storages'),
(315, 20000, 'Printers'),
(316, 40000, 'Networking'),
(317, 50000, 'Tablets'),
(318, 80000, 'Desktops');

-- --------------------------------------------------------

--
-- Table structure for table `hwstock`
--

CREATE TABLE `hwstock` (
  `shopid` bigint(255) NOT NULL,
  `hid` bigint(255) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hwstock`
--

INSERT INTO `hwstock` (`shopid`, `hid`, `quantity`) VALUES
(1, 311, 10),
(2, 312, 20),
(3, 313, 18),
(4, 314, 30),
(5, 315, 64),
(6, 316, 54),
(7, 317, 24),
(8, 318, 98);

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `shopid` bigint(255) NOT NULL,
  `shop_name` varchar(225) NOT NULL,
  `shop_add` varchar(225) NOT NULL,
  `shopphone1` bigint(15) NOT NULL,
  `shopphone2` bigint(15) NOT NULL,
  `shopemail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`shopid`, `shop_name`, `shop_add`, `shopphone1`, `shopphone2`, `shopemail`) VALUES
(1, 'sonu Enterprises', 'Rautahat', 2345678, 6564753, 'sonukumarent@gail.com');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `suppid` int(20) DEFAULT NULL,
  `supp_name` varchar(20) DEFAULT NULL,
  `supp_add` varchar(15) DEFAULT NULL,
  `suppphone1` bigint(15) DEFAULT NULL,
  `suppphone2` bigint(15) DEFAULT NULL,
  `suppemail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`suppid`, `supp_name`, `supp_add`, `suppphone1`, `suppphone2`, `suppemail`) VALUES
(123, 'chandan', 'machabazar', 9815643221, 9845321456, 'chandanstore@ya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `credentials`
--
ALTER TABLE `credentials`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `hwlist`
--
ALTER TABLE `hwlist`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`shopid`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD UNIQUE KEY `suppid` (`suppid`),
  ADD UNIQUE KEY `suppphone1` (`suppphone1`),
  ADD UNIQUE KEY `suppphone2` (`suppphone2`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `credentials`
--
ALTER TABLE `credentials`
  MODIFY `sid` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9823324792;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `shopid` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
