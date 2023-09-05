-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2023 at 08:00 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

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
  `med_hist_q37_rem` tinytext NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donors_personal_data`
--

CREATE TABLE `donors_personal_data` (
  `blood_donor_number` varchar(30) NOT NULL,
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
  `donor_contact_email` varchar(50) DEFAULT NULL,
  `donor_id_school` varchar(100) DEFAULT NULL,
  `donor_id_company` varchar(100) DEFAULT NULL,
  `donor_id_PRC` varchar(50) DEFAULT NULL,
  `donor_id_drivers` varchar(50) DEFAULT NULL,
  `donor_id_SSS_GSIS_BIR` varchar(50) DEFAULT NULL,
  `donor_id_others` varchar(50) DEFAULT NULL,
  `donor_username` varchar(10) DEFAULT NULL,
  `donor_wordpass` varchar(80) DEFAULT NULL,
  `time_stamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donors_personal_data`
--

INSERT INTO `donors_personal_data` (`blood_donor_number`, `donor_surname`, `donor_firstname`, `donor_midname`, `donor_birthdate`, `donor_age`, `donor_civilstatus`, `donor_sex`, `donor_add_no`, `donor_add_st`, `donor_add_brgy`, `donor_add_town`, `donor_add_prov_cit`, `donor_add_zip`, `donor_offadd`, `donor_nationality`, `donor_religion`, `donor_education`, `donor_occupation`, `donor_contact_tel`, `donor_contact_mobile`, `donor_contact_email`, `donor_id_school`, `donor_id_company`, `donor_id_PRC`, `donor_id_drivers`, `donor_id_SSS_GSIS_BIR`, `donor_id_others`, `donor_username`, `donor_wordpass`, `time_stamp`) VALUES
('2313123131', NULL, NULL, NULL, '1995-02-01', 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-23 13:20:56'),
('342047041', 'Dela Cruz', 'Juan', 'Santos', '2005-03-28', 18, 'Single', 'F', 123, 'Purok 4', 'Masoc', 'Bayombong,', 'Nueva Vizcaya', 3700, 'DMP', 'Filipino', 'Christianity', 'College', 'Student', '078-392-6287', '09059406152', 'worthyshatara504@sample.com', 'NVSU', 'LandCorp', 'NV', '123-478219', '32041-3189', '318201980', NULL, NULL, '2023-08-23 12:47:11'),
('342047041dd', 'Dela Cruz', 'Juan', 'Santos', '2005-04-07', NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-23 13:23:32'),
('eqrewr', NULL, NULL, NULL, '1995-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fadsfasof', '$2y$10$Gm5w.D9oY95ti//55EjddOkJ5LBHKNElB5aIdI6SGllYU60vK0S.S', '2023-08-22 11:55:03'),
('f;sdfpk', NULL, NULL, NULL, '1995-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test', '$2y$10$0YCqcDw7VM5Z07yRSN9tieril1jqCAfbnCNCmke0.wWmOE28MfQtK', '2023-08-22 11:43:11'),
('Naruto-456', 'Enriquez', 'Mike', NULL, '1995-01-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-23 12:42:03'),
('try bday', NULL, NULL, NULL, '2001-06-30', 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-23 13:24:18');

-- --------------------------------------------------------

--
-- Table structure for table `donor_blood_collection_tbl`
--

CREATE TABLE `donor_blood_collection_tbl` (
  `blood_collection_id` int(11) NOT NULL,
  `donor_id` int(11) DEFAULT NULL,
  `interview_sheet_id` int(11) DEFAULT NULL,
  `medtech_phlebotomist_id` int(11) DEFAULT NULL,
  `blood_bag_karmi` varchar(4) DEFAULT NULL,
  `blood_bag_terumo` varchar(4) DEFAULT NULL,
  `blood_bag_special_bag` varchar(4) DEFAULT NULL,
  `blood_bag_apheresis` varchar(4) DEFAULT NULL,
  `amount` decimal(20,6) DEFAULT NULL,
  `successful` varchar(4) DEFAULT NULL,
  `donor_reaction` text DEFAULT NULL,
  `management_done` text DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Blood Collection Table consists of data regarding blood collection, it is based on PRC-NBS DONOR FORM 321-E Revised Sep2019. This table will be linked to a specific interview sheet, donor, and interviewer/medtech through foreign keys.';

-- --------------------------------------------------------

--
-- Table structure for table `donor_initial_screening_tbl`
--

CREATE TABLE `donor_initial_screening_tbl` (
  `initial_screening_id` int(11) NOT NULL,
  `donor_id` varchar(50) NOT NULL DEFAULT '0',
  `interview_sheet_id` int(11) NOT NULL DEFAULT 0,
  `body_wt` decimal(20,6) NOT NULL DEFAULT 0.000000,
  `sp_gr` varchar(50) DEFAULT NULL,
  `apheresis_hgb` varchar(50) DEFAULT NULL,
  `apheresis_hct` varchar(50) DEFAULT NULL,
  `apheresis_rbc` varchar(50) DEFAULT NULL,
  `apheresis_wbc` varchar(50) DEFAULT NULL,
  `apheresis_plt` varchar(50) DEFAULT NULL,
  `blood_type` varchar(50) DEFAULT NULL,
  `type_of_donation` varchar(50) DEFAULT NULL,
  `place` mediumtext DEFAULT NULL,
  `organizer` tinytext DEFAULT NULL,
  `patient_name` tinytext DEFAULT NULL,
  `patient_hospital` tinytext DEFAULT NULL,
  `patient_blood_type` tinytext DEFAULT NULL,
  `patient_wb_component` tinytext DEFAULT NULL,
  `patient_no_of_units` tinytext DEFAULT NULL,
  `history of preview donation` varchar(4) DEFAULT NULL,
  `redcross_no_times` int(11) DEFAULT NULL,
  `redcross_date` int(11) DEFAULT NULL,
  `redcross_place` int(11) DEFAULT NULL,
  `hospital_no_times` int(11) DEFAULT NULL,
  `hospital_date` int(11) DEFAULT NULL,
  `hospital_place` int(11) DEFAULT NULL,
  `medtech_interviewer_id` varchar(30) DEFAULT NULL,
  `prc_office` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='This table contains the data for initial screening. Each record will be linked to a specific donor and specific interview sheet.';

-- --------------------------------------------------------

--
-- Table structure for table `donor_interview_sheet_tbl`
--

CREATE TABLE `donor_interview_sheet_tbl` (
  `interview_sheet_id` int(11) NOT NULL,
  `donor_id` varchar(30) NOT NULL DEFAULT '0',
  `medical_hist_id` int(11) NOT NULL DEFAULT 0,
  `initial_screening_id` int(11) NOT NULL DEFAULT 0,
  `physical_examination_id` int(11) NOT NULL DEFAULT 0,
  `blood_collection_id` int(11) NOT NULL DEFAULT 0,
  `meal` time NOT NULL DEFAULT '00:00:00',
  `sleep` time NOT NULL DEFAULT '00:00:00',
  `cough` varchar(4) NOT NULL DEFAULT '0',
  `colds` varchar(4) NOT NULL DEFAULT '0',
  `fever` varchar(4) NOT NULL DEFAULT '0',
  `allergies` varchar(4) NOT NULL DEFAULT '0',
  `allergy_type` text NOT NULL,
  `open_wound` varchar(4) NOT NULL DEFAULT '0',
  `mouth_sore` varchar(4) NOT NULL DEFAULT '0',
  `donors_declaration_dir` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Contents of Interview sheet everytime sa donor donates. A single donor can have multiple interview sheets.';

-- --------------------------------------------------------

--
-- Table structure for table `donor_physical_examination_tbl`
--

CREATE TABLE `donor_physical_examination_tbl` (
  `physical_examination_id` int(11) NOT NULL,
  `interview_sheet_id` int(11) NOT NULL DEFAULT 0,
  `donor_id` varchar(50) NOT NULL DEFAULT '0',
  `medtech_physician_id` varchar(50) NOT NULL DEFAULT '0',
  `blood_pressure` varchar(20) NOT NULL DEFAULT '0',
  `pulse_rate` varchar(20) NOT NULL DEFAULT '0',
  `body_temp` varchar(20) NOT NULL DEFAULT '0',
  `gen_appearance` varchar(20) NOT NULL DEFAULT '0',
  `skin` varchar(20) NOT NULL DEFAULT '0',
  `heent` varchar(20) NOT NULL DEFAULT '0',
  `heart_and_lungs` varchar(20) NOT NULL DEFAULT '0',
  `remarks` varchar(20) NOT NULL DEFAULT '0',
  `remarks_reason` varchar(20) NOT NULL DEFAULT '0',
  `blood_bag` varchar(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Physical Examination table will be linked to a specific donor, interview sheet, and initial screening sheet';

-- --------------------------------------------------------

--
-- Table structure for table `prc_medtech_tb`
--

CREATE TABLE `prc_medtech_tb` (
  `medtech_id_number` varchar(50) NOT NULL DEFAULT '',
  `medtech_secret` varchar(100) NOT NULL,
  `medtech_firstname` varchar(30) DEFAULT NULL,
  `medtech_midname` varchar(30) NOT NULL,
  `medtech_surname` varchar(30) DEFAULT NULL,
  `medtech_username` varchar(30) NOT NULL,
  `time_stamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prc_medtech_tb`
--

INSERT INTO `prc_medtech_tb` (`medtech_id_number`, `medtech_secret`, `medtech_firstname`, `medtech_midname`, `medtech_surname`, `medtech_username`, `time_stamp`) VALUES
('RC204', '$2y$10$XGfBmqY/PXyFrS5Cfeu0KuEqBRmYWVQ97GKTBLlmeczyaKxc0oW36', 'Worthy Shatara', 'Patron', 'Ruiz', 'radtech@worthy', NULL);

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
  ADD PRIMARY KEY (`blood_donor_number`) USING BTREE,
  ADD UNIQUE KEY `donor_username` (`donor_username`);

--
-- Indexes for table `donor_blood_collection_tbl`
--
ALTER TABLE `donor_blood_collection_tbl`
  ADD PRIMARY KEY (`blood_collection_id`),
  ADD KEY `donor_id` (`donor_id`),
  ADD KEY `interview_sheet_id` (`interview_sheet_id`),
  ADD KEY `medtech_phlebotomist_id` (`medtech_phlebotomist_id`);

--
-- Indexes for table `donor_initial_screening_tbl`
--
ALTER TABLE `donor_initial_screening_tbl`
  ADD PRIMARY KEY (`initial_screening_id`),
  ADD KEY `donor_id` (`donor_id`),
  ADD KEY `interview_sheet_id` (`interview_sheet_id`),
  ADD KEY `medtech_interviewer_id` (`medtech_interviewer_id`);

--
-- Indexes for table `donor_interview_sheet_tbl`
--
ALTER TABLE `donor_interview_sheet_tbl`
  ADD PRIMARY KEY (`interview_sheet_id`),
  ADD KEY `donor_id` (`donor_id`),
  ADD KEY `medical_hist_id` (`medical_hist_id`),
  ADD KEY `initial_screening_id` (`initial_screening_id`),
  ADD KEY `physical_examination_id` (`physical_examination_id`),
  ADD KEY `blood_collection_id` (`blood_collection_id`);

--
-- Indexes for table `donor_physical_examination_tbl`
--
ALTER TABLE `donor_physical_examination_tbl`
  ADD PRIMARY KEY (`physical_examination_id`),
  ADD KEY `interview_sheet_id` (`interview_sheet_id`),
  ADD KEY `donor_id` (`donor_id`),
  ADD KEY `physician_medtech_id` (`medtech_physician_id`) USING BTREE;

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

--
-- AUTO_INCREMENT for table `donor_blood_collection_tbl`
--
ALTER TABLE `donor_blood_collection_tbl`
  MODIFY `blood_collection_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donor_initial_screening_tbl`
--
ALTER TABLE `donor_initial_screening_tbl`
  MODIFY `initial_screening_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donor_interview_sheet_tbl`
--
ALTER TABLE `donor_interview_sheet_tbl`
  MODIFY `interview_sheet_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donor_physical_examination_tbl`
--
ALTER TABLE `donor_physical_examination_tbl`
  MODIFY `physical_examination_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
