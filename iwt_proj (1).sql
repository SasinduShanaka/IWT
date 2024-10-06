-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2024 at 05:33 PM
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
-- Database: `iwt_proj`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `created at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`, `created at`) VALUES
(12, 'shanaka', 'shana', '1234', '2024-10-06'),
(33, 'mama', 'mama12', '12345', '2024-10-06'),
(55, ' thh', 'dhthdf', ' hdhthth', '2024-09-27'),
(66, ' hrthgdg', 'hdgzhdghdg', ' jgjhhkjk', '2024-09-28');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `cid` int(4) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` int(10) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`cid`, `name`, `email`, `phone`, `message`) VALUES
(2, 'ssgdsg', 'fasfsafs@gmail', 0, 'wegdsg\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `message` varchar(500) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `occupation`, `message`, `rating`) VALUES
(10, 'afsasf', 'asfas', 'asgasg', 0),
(11, 'sfsdf', 'asfdag', 'asfasdgdasg', 0),
(12, 'afsasf', 'asfas', 'asgasg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `insurance_packages`
--

CREATE TABLE `insurance_packages` (
  `package_id` int(11) NOT NULL,
  `package_name` varchar(255) NOT NULL,
  `package_type` varchar(100) NOT NULL,
  `package_description` text DEFAULT NULL,
  `max_coverage_limit` decimal(15,2) DEFAULT NULL,
  `payment_interval` varchar(50) DEFAULT NULL,
  `premium_amount` decimal(10,2) DEFAULT NULL,
  `regulation` text DEFAULT NULL,
  `basic_amount` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `insurance_packages`
--

INSERT INTO `insurance_packages` (`package_id`, `package_name`, `package_type`, `package_description`, `max_coverage_limit`, `payment_interval`, `premium_amount`, `regulation`, `basic_amount`) VALUES
(28, 'Endowment', 'Life Insurance Plan', 'An insurance plan offers financial protection by covering unforeseen risks such as accidents, illness, or property damage. It provides peace of mind by reducing the financial burden of unexpected events. By paying regular premiums, policyholders secure coverage, ensuring stability and support during times of uncertainty or crisis.', 30000.00, '12', 60000.00, 'An insurance plan offers financial protection by covering unforeseen risks such as accidents, illness, or property damage. It provides peace of mind by reducing the financial burden of unexpected events. By paying regular premiums, policyholders secure coverage, ensuring stability and support during times of uncertainty or crisis.', 45000.00),
(31, 'Smart life', 'Retirement Plan', 'smart', 12500.00, '4', 76000.00, 'smart', 23000.00),
(32, 'Smart life', 'Retirement Plan', 'smart', 12500.00, '4', 76000.00, 'smart', 23000.00),
(33, 'qwwerf', 'Retirement Plan', 'qwrwewewe', 1232432.00, '124234', 99999999.99, 'ghdfgsadghghdfgds', 123456.00);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(3) NOT NULL,
  `title` varchar(150) NOT NULL,
  `content` varchar(500) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `image`) VALUES
(124, 'adeesha', 'hgcnnhjn ', ''),
(125, 'vidun', 'ujfk', 'Screenshot 2024-08-26 140735.png'),
(436, 'dhcbv', 'thduh', 'map.jpg'),
(1532, 'shanaka', 'jgcfgj', ''),
(3456, 'praneesha', 'ghjmhvh', '');

-- --------------------------------------------------------

--
-- Table structure for table `policy`
--

CREATE TABLE `policy` (
  `policy_id` int(11) NOT NULL,
  `policy_name` varchar(100) NOT NULL,
  `policy_description` varchar(1000) NOT NULL,
  `effective_date` date NOT NULL,
  `expiration_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `policy`
--

INSERT INTO `policy` (`policy_id`, `policy_name`, `policy_description`, `effective_date`, `expiration_date`) VALUES
(7, 'Introduction', 'This privacy policy outlines how Life Insurancecollects, uses, and protects your personal information when you see our website or sevices.', '2003-03-04', '2024-03-04'),
(8, 'Information We Collect', 'We may collect personal information such as your name, email address, and payment details, as well as non-personal information like your IP address and browser type.', '2000-02-02', '2010-02-02'),
(9, 'How We Use Your Information', 'Your information is used to improve our services, process transactions, and send periodic emails. We do not sell your data to third parties.', '2000-02-02', '2020-02-02'),
(10, 'Information Sharing and Disclosure', 'We do not sell, trade, or otherwise your personal information to third parties without your consent, expect as described in this privacy policy. We may share your information in the following situations                             1.With trusted third-party service providers to perform functions on our behalf                                       2.To comply with legal obligations or project against potential fraud                           3.In the event of a merger, acquisition, or sale of all  or a portion of our assets.', '0000-00-00', '2222-02-02'),
(11, 'Security', 'We take appropriate security measures to protect your personal information from unauthorized access, alteration, disclosure, or destruction, However, please note that no method of transmission over the internet or electronic storage 100% secure.', '2222-02-02', '3333-02-02'),
(12, 'Contact Us', 'If you have any questions about our privacy policy,please contact us                                                    Lifegaurd Insurance,                         123 park street,                                City state 1234,                               Phone:0123456789                            Email:lifegaurdassurance@gmail.com.', '3000-02-02', '2000-02-02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(6) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobileNo` varchar(15) NOT NULL,
  `nic` varchar(12) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `username`, `firstName`, `lastName`, `email`, `mobileNo`, `nic`, `address`, `password`, `file`) VALUES
(15, 'dinuja03', 'dinuja', 'werake', 'dinuja@gmail.com', '0772511708', '200361537', '44,Nidahas Mawatha, Galagedara-Padukka', '1234', 'dinuja.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insurance_packages`
--
ALTER TABLE `insurance_packages`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `policy`
--
ALTER TABLE `policy`
  ADD PRIMARY KEY (`policy_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `cid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `insurance_packages`
--
ALTER TABLE `insurance_packages`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3457;

--
-- AUTO_INCREMENT for table `policy`
--
ALTER TABLE `policy`
  MODIFY `policy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
