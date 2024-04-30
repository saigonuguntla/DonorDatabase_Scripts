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

ALTER TABLE `orggrants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `org_id` (`org_id`);

ALTER TABLE `orgs`
  ADD PRIMARY KEY (`org_id`);


ALTER TABLE `orggrants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;


ALTER TABLE `orgs`
  MODIFY `org_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;


ALTER TABLE `orggrants`
  ADD CONSTRAINT `orggrants_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `orgs` (`org_id`);
COMMIT;

