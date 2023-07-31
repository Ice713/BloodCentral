-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2023 at 03:28 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodcentral_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `donors_med_hist`
--

CREATE TABLE `donors_med_hist` (
  `med_hist_id` int(5) NOT NULL,
  `blood_donor_number` varchar(50) NOT NULL DEFAULT '',
  `med_hist_q1` tinytext NOT NULL,
  `med_hist_q1_rem` tinytext NOT NULL,
  `med_hist_q2` tinytext NOT NULL,
  `med_hist_q2_rem` tinytext NOT NULL,
  `med_hist_q3` tinytext NOT NULL,
  `med_hist_q3_rem` tinytext NOT NULL,
  `med_hist_q4` tinytext NOT NULL,
  `med_hist_q4_rem` tinytext NOT NULL,
  `med_hist_q5` tinytext NOT NULL,
  `med_hist_q5_rem` tinytext NOT NULL,
  `med_hist_q6` tinytext NOT NULL,
  `med_hist_q6_rem` tinytext NOT NULL,
  `med_hist_q7` tinytext NOT NULL,
  `med_hist_q7_rem` tinytext NOT NULL,
  `med_hist_q8` tinytext NOT NULL,
  `med_hist_q8_rem` tinytext NOT NULL,
  `med_hist_q9` tinytext NOT NULL,
  `med_hist_q9_rem` tinytext NOT NULL,
  `med_hist_q10` tinytext NOT NULL,
  `med_hist_q10_rem` tinytext NOT NULL,
  `med_hist_q11` tinytext NOT NULL,
  `med_hist_q11_rem` tinytext NOT NULL,
  `med_hist_q12` tinytext NOT NULL,
  `med_hist_q12_rem` tinytext NOT NULL,
  `med_hist_q13` tinytext NOT NULL,
  `med_hist_q13_rem` tinytext NOT NULL,
  `med_hist_q14` tinytext NOT NULL,
  `med_hist_q14_rem` tinytext NOT NULL,
  `med_hist_q15` tinytext NOT NULL,
  `med_hist_q15_rem` tinytext NOT NULL,
  `med_hist_q16` tinytext NOT NULL,
  `med_hist_q16_rem` tinytext NOT NULL,
  `med_hist_q17` tinytext NOT NULL,
  `med_hist_q17_rem` tinytext NOT NULL,
  `med_hist_q18` tinytext NOT NULL,
  `med_hist_q18_rem` tinytext NOT NULL,
  `med_hist_q19` tinytext NOT NULL,
  `med_hist_q19_rem` tinytext NOT NULL,
  `med_hist_q20` tinytext NOT NULL,
  `med_hist_q20_rem` tinytext NOT NULL,
  `med_hist_q21` tinytext NOT NULL,
  `med_hist_q21_rem` tinytext NOT NULL,
  `med_hist_q22` tinytext NOT NULL,
  `med_hist_q22_rem` tinytext NOT NULL,
  `med_hist_q23` tinytext NOT NULL,
  `med_hist_q23_rem` tinytext NOT NULL,
  `med_hist_q24` tinytext NOT NULL,
  `med_hist_q24_rem` tinytext NOT NULL,
  `med_hist_q25` tinytext NOT NULL,
  `med_hist_q25_rem` tinytext NOT NULL,
  `med_hist_q26` tinytext NOT NULL,
  `med_hist_q26_rem` tinytext NOT NULL,
  `med_hist_q27` tinytext NOT NULL,
  `med_hist_q27_rem` tinytext NOT NULL,
  `med_hist_q28` tinytext NOT NULL,
  `med_hist_q28_rem` tinytext NOT NULL,
  `med_hist_q29` tinytext NOT NULL,
  `med_hist_q29_rem` tinytext NOT NULL,
  `med_hist_q30` tinytext NOT NULL,
  `med_hist_q30_rem` tinytext NOT NULL,
  `med_hist_q31` tinytext NOT NULL,
  `med_hist_q31_rem` tinytext NOT NULL,
  `med_hist_q32` tinytext NOT NULL,
  `med_hist_q32_rem` tinytext NOT NULL,
  `med_hist_q33` tinytext NOT NULL,
  `med_hist_q33_rem` tinytext NOT NULL,
  `med_hist_q34` tinytext NOT NULL,
  `med_hist_q34_rem` tinytext NOT NULL,
  `med_hist_q35` tinytext NOT NULL,
  `med_hist_q35_rem` tinytext NOT NULL,
  `med_hist_q36` tinytext NOT NULL,
  `med_hist_q36_rem` tinytext NOT NULL,
  `med_hist_q37` tinytext NOT NULL,
  `med_hist_q37_date` tinytext NOT NULL,
  `med_hist_q37_rem` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donors_personal_data`
--

CREATE TABLE `donors_personal_data` (
  `blood_donor_number` varchar(15) NOT NULL DEFAULT 'AUTO_INCREMENT',
  `donor_surname` varchar(15) DEFAULT NULL,
  `donor_firstname` varchar(15) DEFAULT NULL,
  `donor_midname` varchar(15) DEFAULT NULL,
  `donor_birthdate` date DEFAULT NULL,
  `donor_age` int(3) DEFAULT NULL,
  `donor_civilstatus` varchar(10) DEFAULT NULL,
  `donor_sex` char(1) DEFAULT NULL,
  `donor_add_no` int(4) DEFAULT NULL,
  `donor_add_st` varchar(30) DEFAULT NULL,
  `donor_add_brgy` varchar(30) DEFAULT NULL,
  `donor_add_town` varchar(30) DEFAULT NULL,
  `donor_add_prov_cit` varchar(30) DEFAULT NULL,
  `donor_add_zip` int(5) DEFAULT NULL,
  `donor_offadd` text DEFAULT NULL,
  `donor_nationality` varchar(10) DEFAULT NULL,
  `donor_religion` varchar(30) DEFAULT NULL,
  `donor_education` varchar(30) DEFAULT NULL,
  `donor_occupation` varchar(30) DEFAULT NULL,
  `donor_contact_tel` varchar(20) DEFAULT NULL,
  `donor_contact_mobile` varchar(20) DEFAULT NULL,
  `donor_contact_email` varchar(20) DEFAULT NULL,
  `donor_id_school` varchar(100) DEFAULT NULL,
  `donor_id_company` varchar(100) DEFAULT NULL,
  `donor_id_PRC` varchar(50) DEFAULT NULL,
  `donor_id_drivers` varchar(50) DEFAULT NULL,
  `donor_id_SSS_GSIS_BIR` varchar(50) DEFAULT NULL,
  `donor_id_others` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donors_personal_data`
--

INSERT INTO `donors_personal_data` (`blood_donor_number`, `donor_surname`, `donor_firstname`, `donor_midname`, `donor_birthdate`, `donor_age`, `donor_civilstatus`, `donor_sex`, `donor_add_no`, `donor_add_st`, `donor_add_brgy`, `donor_add_town`, `donor_add_prov_cit`, `donor_add_zip`, `donor_offadd`, `donor_nationality`, `donor_religion`, `donor_education`, `donor_occupation`, `donor_contact_tel`, `donor_contact_mobile`, `donor_contact_email`, `donor_id_school`, `donor_id_company`, `donor_id_PRC`, `donor_id_drivers`, `donor_id_SSS_GSIS_BIR`, `donor_id_others`) VALUES
('erqwrrqr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('errqrq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `prc_medtech_tb`
--

CREATE TABLE `prc_medtech_tb` (
  `medtech_id_number` int(11) NOT NULL,
  `medtech_secret` varchar(100) NOT NULL,
  `medtehch_firstname` varchar(20) DEFAULT NULL,
  `medtech_midname` varchar(20) NOT NULL,
  `medtech_surname` varchar(20) DEFAULT NULL,
  `medtech_username` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donors_med_hist`
--
ALTER TABLE `donors_med_hist`
  ADD PRIMARY KEY (`med_hist_id`),
  ADD KEY `Column 3` (`blood_donor_number`) USING BTREE;

--
-- Indexes for table `donors_personal_data`
--
ALTER TABLE `donors_personal_data`
  ADD PRIMARY KEY (`blood_donor_number`) USING BTREE;

--
-- Indexes for table `prc_medtech_tb`
--
ALTER TABLE `prc_medtech_tb`
  ADD PRIMARY KEY (`medtech_id_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donors_med_hist`
--
ALTER TABLE `donors_med_hist`
  MODIFY `med_hist_id` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
