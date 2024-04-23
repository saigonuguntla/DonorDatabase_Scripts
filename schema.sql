-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2022 at 05:25 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kgrantdatabasev3`
--

-- --------------------------------------------------------

--
-- Table structure for table `orggrants`
--

CREATE TABLE `orggrants` (
  `id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `amount` double NOT NULL,
  `designation` varchar(45) NOT NULL,
  `application_due_date` varchar(15) NOT NULL,
  `date_applied` varchar(15) DEFAULT NULL,
  `grant_decision_date` varchar(15) DEFAULT NULL,
  `funds_received_date` varchar(15) DEFAULT NULL,
  `report_due_date` varchar(15) DEFAULT NULL,
  `report_submitted_date` varchar(15) DEFAULT NULL,
  `grant_cycle` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Need to Apply'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orggrants`
--

INSERT INTO `orggrants` (`id`, `org_id`, `title`, `amount`, `designation`, `application_due_date`, `date_applied`, `grant_decision_date`, `funds_received_date`, `report_due_date`, `report_submitted_date`, `grant_cycle`, `comments`, `status`) VALUES
(1, 1, '2021 Grant', 0, 'ENJU Fund', ' ', ' ', '', '', ' ', ' ', ' ', ' ', 'funded'),
(2, 2, '2021 Grant', 40000, 'BCH ICU; previously BDP and ENJU Fund', '', '', '2021-09-21', '', '', '', '', '', 'funded'),
(3, 3, '2021 Grant', 5000, 'ENJU Fund; former BCH; doubled for ICU', '', '', '', '2021-09-21', '', '', '', '', 'funded'),
(4, 4, '2021 Grant', 35000, 'BDP for Kishegyere School construction', '', '', '', '2021-05-31', '', '', '', '', 'funded'),
(5, 5, '2021 Grant', 10000, 'BDP general + spiritual outreach (Jesus Film)', '', '', '', '', '', '', '', '', 'funded'),
(6, 6, '2021 Grant', 5000, 'ENJU FUND', '', '', '2021-08-26', '2021-08-30', '', '', '', '', 'funded'),
(7, 7, '2021 Grant', 25000, 'ENJU FUND; formerly BCH (2014-2017)', '', '', '2021-11-22', '2021-11-22', '', '', '', '', 'funded'),
(8, 8, '2021 Grant', 2500, 'ENJU', '', '', '', '2021-09-20', '', '', '', '', 'funded'),
(9, 9, '2021 Grant', 5000, 'ENJU', '', '', '', '2021-10-26', '', '', '', '', 'funded'),
(10, 10, '2021 Grant', 0, 'Various (BCH ICU/Dental-Vision, ENJU)', '', '', '', '', '', '', '', '', 'funded'),
(11, 11, '2021 Grant', 20000, 'ENJU Fund | formerly split with BDP', '', '', '', '2021-05-31', '', '', '', '', 'funded'),
(12, 12, '2021 Grant', 4500, 'UNSB Scholarships', '', '', '', '2021-12-13', '', '', '', '', 'funded'),
(13, 13, '2021 Grant', 10000, 'ENJU Fund', '', '', '', '2021-12-13', '', '', '', '', 'funded'),
(14, 14, '2021 Grant', 10000, 'BDP', '', '', '2021-08-30', '2021-09-02', '', '2021-08-30', '', '', 'funded'),
(15, 15, '2021 Grant', 52606, 'UNSB | Jane\'s Villanova', '', '', '', '', '', '', '', '', 'funded'),
(16, 16, '2021 Grant', 0, '', '', '', '', '', '', '', '', '', 'funded'),
(17, 17, '2021 Grant', 2500, 'ENJU', '', '', '', '', '', '', '', '', 'funded'),
(18, 18, '2021 Grant', 11000, 'ENJU Fund', '', '', '', '2021-10-11', '', '', '', '', 'funded'),
(19, 19, '2021 Grant', 80000, 'BCH', '', '', '2021-11-10', '2021-12-21', '', '2021-10-29', '', '', 'funded'),
(20, 20, '2021 Grant', 30000, 'BCH Surgical Ward', '', '', '2021-08-26', '2021-09-08', '5.27.21', '2021-05-27', '', '', 'funded'),
(21, 21, '2021 Grant', 30000, 'BCH | UNSB', '', '', '', '', '', '', '', '', 'funded'),
(22, 22, '2021 Grant', 10000, 'BDP for girls\' education', '', '', '', '2021-07-29', '', '', '', '', 'funded'),
(23, 23, '2021 Grant', 2600, 'ENJU Fund', '', '', '', '', '', '', '', '', 'funded'),
(24, 24, '2021 Grant', 1000, '', '', '', '', '2021-10-20', '', '', '', '', 'funded'),
(25, 25, '2021 Grant', 1000, '', '', '', '', '2021-10-25', '', '', '', '', 'funded'),
(26, 26, '2021 Grant', 0, 'BCH Salary support', '', '', '', '', '', '', '', '', 'funded'),
(27, 27, '2021 Grant', 5000, 'ENJU', '', '', '', '2021-12-13', '', '', '', '', 'funded'),
(28, 28, '2021 Grant', 35100, ' x three years for BDP', '', '', '', '2021-04-06', '', '', '', '', 'funded'),
(29, 29, '2021 Grant', 0, 'BCH Maternity Ward | Maternal Healthcare', '', '', '', '', '', '2021-11-01', '', '', 'funded'),
(30, 30, '2021 Grant', 5000, 'ENJU Fund', '', '', '', '', '', '', '', '', 'funded'),
(31, 31, '2021 Grant', 25000, 'BCH', '', '', '', '2021-10-19', '', '', '', '', 'funded'),
(32, 32, '2021 Grant', 15000, 'Maama Diane Legacy Matching Grant', '', '', '', '', '', '', '', '', 'funded'),
(33, 33, '2021 Grant', 0, 'ENJU Fund', '', '', '', '', '', '', '', '', 'funded'),
(34, 34, '2021 Grant', 1500, 'BDP Education (girls)', '', '', '', '', '', '', '', '', 'funded'),
(35, 35, '2021 Grant', 50000, 'BCH Direct Patient Care', '', '', '2021-01-12', '2021-04-26', '', '2021-04-15', '', '', 'funded'),
(36, 36, '2021 Grant', 90000, 'BDP Kishanda', '', '', '2021-01-12', '2021-03-31', '', '', '', '', 'funded'),
(37, 37, '2021 Grant', 4000, 'ENJU Fund', '', '', '', '2021-02-23', '', '', '', '', 'funded'),
(38, 38, '2021 Grant', 26000, 'Various', '', '', '', '2021-12-31', '', '', '', '', 'funded'),
(39, 39, '2021 Grant', 3000, 'ENJU Fund', '', '', '', '2021-09-13', '', '', '', '', 'funded'),
(40, 40, '2021 Grant', 0, 'Gave $10,000 directly to BCH in 2021', '', '', '', '', '', '', '', '', 'funded'),
(41, 41, '2021 Grant', 2500, 'ENJU FUND', '', '', '', '2021-03-15', '', '', '', '', 'funded'),
(42, 42, '2021 Grant', 0, 'ENJU FUND', '', '', '', '', '', '', '', '', 'funded'),
(43, 43, '2021 Grant', 500, 'ENJU FUND', '', '', '', '', '', '', '', '', 'funded'),
(44, 44, '2021 Grant', 3115, 'UNSB Scholarships', '', '', '', '', '', '', '', '', 'funded'),
(45, 45, '2021 Grant', 275000, 'ENJU Fund | Maama Diane Legacy', '', '', '', '2021-04-27', '', '', '', '', 'funded'),
(46, 46, '2021 Grant', 9000, 'BDP for Mukonogoro (Nina Waits, homes)', '', '', '2021-09-02', '', '', '2021-09-02', '', '', 'funded'),
(47, 47, '2021 Grant', 29500, 'BCH for Katete Land | Latrine where needed', '', '', '2021-05-15', '2021-05-31', '', '', '', '', 'funded'),
(48, 48, '2021 Grant', 1000, 'ENJU in memory of Diane', '', '', '', '', '', '', '', '', 'funded'),
(49, 49, '2021 Grant', 23025, 'UNSB | Jane\'s Villanova', '', '', '', '2021-06-21', '', '', '', '', 'funded');

-- --------------------------------------------------------

--
-- Table structure for table `orgs`
--

CREATE TABLE `orgs` (
  `org_id` int(11) NOT NULL,
  `org_name` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'organization',
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `contact_name` varchar(100) NOT NULL,
  `address_line1` varchar(60) NOT NULL,
  `address_line2` varchar(60) DEFAULT NULL,
  `city` varchar(40) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `state` varchar(2) NOT NULL,
  `phone_number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `webaddress` varchar(50) DEFAULT NULL,
  `comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orgs`
--

INSERT INTO `orgs` (`org_id`, `org_name`, `type`, `status`, `contact_name`, `address_line1`, `address_line2`, `city`, `zipcode`, `state`, `phone_number`, `email`, `webaddress`, `comments`) VALUES
(1, 'Aaker, Kay and David', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->15000'),
(2, 'Amaral, Julia and Mark Strate', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->473251'),
(3, 'Anes: Dr. and Mrs. Allen Anes', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->30000'),
(4, 'Case, Eda and Scott', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->35400'),
(5, 'Cherry, Kelly and Ron', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->53279'),
(6, 'Clowes Foundation (matching for Sandy and Ben Blanton\'s annual donation)', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->40000'),
(7, 'Crown Family Philanthropies (Patricia A. Crown)', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->707143'),
(8, 'Demos, Cathy and John', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->5250'),
(9, 'Doherty, Joan and Edward', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->15000'),
(10, 'Eleven Group', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->56571'),
(11, 'Four P Foundation: Gayle and Dave Porter', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->206670'),
(12, 'Godbey, Steve', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->38550'),
(13, 'Grebowiec, Eileen', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->6000'),
(14, 'Gumins, Steve', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->10000'),
(15, 'Jameson, James', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->471110'),
(16, 'Kear, Marcia', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->10675'),
(17, 'Liff, Judy and Noah Liff Foundation', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->11000'),
(18, 'Lippert, Stacy and John', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->26098'),
(19, 'Ludwig Family Foundation, Inc.', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->277000'),
(20, 'Macaulay Family Foundation', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->341420'),
(21, 'Marting: John Charles Marting, III Trust', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->135000'),
(22, 'McAuliffe, Kevin', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->10000'),
(23, 'McLendon, Susan and Bob', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->35350'),
(24, 'Milleville, Susan and Gregory', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->1000'),
(25, 'Neder, Diana', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->2895'),
(26, 'Moses, Debra and Ethan', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->83337'),
(27, 'Ostrom, Marsha and Carl', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->23500'),
(28, 'Pohl Foundation', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->323222'),
(29, 'Reedy: Emily and Bill', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->190925'),
(30, 'Renfro: H. Larue', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->46000'),
(31, 'Rolston, Holmes', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->320000'),
(32, 'Shane, Amy and Michael', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->135051'),
(33, 'Singer: The Herbert and Nell Singer Foundation, Inc.', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->20000'),
(34, 'Soroptimist of Tahoe Sierra', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->15458'),
(35, 'Spitzer Charitable Trust (BCH Direct Patient Care)', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->200000'),
(36, 'Spitzer Charitable Trust (Kishanda)', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->206000'),
(37, 'Steinbarth, James', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->16000'),
(38, 'Storcel, Susan', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->26021'),
(39, 'St. John\'s Episcopal Church', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->71710'),
(40, 'Sturm, Roland', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->5000'),
(41, 'Texas Instruments (matching for Susan and Bob McLendon\'s annual donation)', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->19050'),
(42, 'Trimble: Barbara and John Trimble Family Foundation', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->29700'),
(43, 'Trimble, Carl', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->7000'),
(44, 'Turner, Michael', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->3115'),
(45, 'Valenta, Lana', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->903400'),
(46, 'Waits, Cindy and Jim', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->87474'),
(47, 'Wedge, Kimberly and Michael', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->'),
(48, 'White, Ruth and Sherman', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->1850'),
(49, 'Wolf, Stephen', 'organization', 'active', '', '', '', '', '', '', '', '', '', 'Org Lifetime 2021 ->434691');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orggrants`
--
ALTER TABLE `orggrants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `org_id` (`org_id`);

--
-- Indexes for table `orgs`
--
ALTER TABLE `orgs`
  ADD PRIMARY KEY (`org_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orggrants`
--
ALTER TABLE `orggrants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `orgs`
--
ALTER TABLE `orgs`
  MODIFY `org_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orggrants`
--
ALTER TABLE `orggrants`
  ADD CONSTRAINT `orggrants_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `orgs` (`org_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
