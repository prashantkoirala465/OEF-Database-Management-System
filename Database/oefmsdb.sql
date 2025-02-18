-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 17, 2024 at 04:06 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



--
-- Database: `oefmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Aarati', 'aarati65', 8979555558, 'aarati@gmail.com', '728a7e0d5488e5cbea14dbb88984a9f1', '2024-11-11 04:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblclass`
--

CREATE TABLE `tblclass` (
  `ID` int(5) NOT NULL,
  `ClassName` varchar(50) DEFAULT NULL,
  `Section` varchar(20) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclass`
--

INSERT INTO `tblclass` (`ID`, `ClassName`, `Section`, `CreationDate`) VALUES
(1, 'IELTS', 'A', '2024-11-13 10:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

CREATE TABLE `tblnotice` (
  `ID` int(5) NOT NULL,
  `NoticeTitle` mediumtext DEFAULT NULL,
  `ClassId` int(10) DEFAULT NULL,
  `NoticeMsg` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblnotice`
--

INSERT INTO `tblnotice` (`ID`, `NoticeTitle`, `ClassId`, `NoticeMsg`, `CreationDate`) VALUES
(6, 'Your Document has been verified, please collect from consellor office!', 1, 'Hello Student Your Document has been verified, please collect from consellor office!', '2024-12-12 15:22:55'),
(7, 'Your Document has been verified, please collect from consellor office!', 8, 'Hello Dear Student, Your Document has been verified, please collect from consellor office!', '2024-12-12 15:29:12'),
(8, 'Your Document has been verified, please collect from consellor office!', 9, 'Hello, Anupam Your Document has arrived!', '2024-12-13 04:25:48'),
(9, 'Your Document has been verified, please collect from consellor office!', 1, 'Dear Anupam, Your Document has been verified! You can collect it from my office! Thankyou', '2024-12-16 01:39:41');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<p style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);\"><font face=\"georgia\"><font size=\"5\" style=\"\">At Ocean Education Foundation, we guide you through every step of your study abroad journey.&nbsp;</font><font size=\"5\" style=\"\">Whether you\'re planning to pursue undergraduate, postgraduate, or professional studies,&nbsp;</font><font size=\"5\" style=\"\">we provide expert advice and support to make your international education dreams a reality.</font></font></p><p></p>', NULL, NULL, NULL),
(2, 'contactus', 'Contact Us', 'Bhakti Thapa Marg - 10, New Baneshwor, Kathmandu', 'infoocean.edu.np@gmail.com', 14578872, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpublicnotice`
--

CREATE TABLE `tblpublicnotice` (
  `ID` int(5) NOT NULL,
  `NoticeTitle` varchar(200) DEFAULT NULL,
  `NoticeMessage` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpublicnotice`
--

INSERT INTO `tblpublicnotice` (`ID`, `NoticeTitle`, `NoticeMessage`, `CreationDate`) VALUES
(3, 'Study Abroad in Japan: Application Deadline Approaching!', 'Attention all prospective students! The Ocean Education Foundation is now accepting applications for the Japan Study Abroad Program for the Fall 2024 semester. Students can choose from multiple universities in Japan, offering diverse courses in technology, business, and cultural studies. The application deadline is April 30, 2024. Don\'t miss the chance to explore Japan’s world-renowned educational system. Apply today!', '2024-12-12 16:12:37'),
(4, 'USA Student Visa Assistance Program: Free Consultations Available', 'The Ocean Education Foundation is offering free visa consultation sessions for students planning to study in the USA. Our experts will guide you through the process of applying for an F-1 or J-1 visa, and provide important information regarding documentation, interviews, and travel. Sessions are available on a first-come, first-served basis. Contact us to book your free consultation!', '2024-12-12 16:12:54'),
(5, 'Canada Study Programs: Now Open for 2025 Enrollment', 'The Ocean Education Foundation announces that applications are now open for Canadian universities and colleges for the 2025 academic year. Whether you\'re interested in engineering, arts, or social sciences, Canada offers top-tier educational institutions that welcome international students. The application deadline for undergraduate and graduate programs is June 1, 2025. Apply now and start your journey in Canada!', '2024-12-12 16:13:48'),
(6, 'Germany Engineering Program Scholarships for International Students', 'The Ocean Education Foundation is offering full scholarships for international students interested in pursuing engineering programs in Germany. This scholarship covers tuition, living expenses, and travel costs. To be eligible, applicants must have a strong academic background in engineering or related fields. The deadline for applications is May 31, 2024. Don\'t miss this unique opportunity to study in one of the world’s leading countries in engineering education.', '2024-12-12 16:14:04'),
(7, 'Study Abroad in Australia: 2024 Intake Now Open', 'Applications for the 2024 intake for universities in Australia are now open! The Ocean Education Foundation invites students to apply for programs in fields such as medicine, business, and the arts. Study in world-renowned universities like the University of Melbourne and the Australian National University. Apply by the deadline, which is July 15, 2024, to secure your spot.', '2024-12-12 16:14:17'),
(8, 'New Zealand Postgraduate Programs: Funding and Scholarships Available', 'The Ocean Education Foundation is excited to offer funding and scholarship opportunities for students wishing to pursue postgraduate programs in New Zealand. Whether you\'re interested in sciences, humanities, or business, New Zealand offers top-tier universities with global recognition. Applications are now being accepted for the 2025 academic year. Scholarships will cover tuition fees and living expenses. Apply before June 30, 2025.', '2024-12-12 16:14:41'),
(9, 'Explore the UK: Scholarships for International Students', 'The Ocean Education Foundation is pleased to offer scholarship opportunities for students wishing to study in the United Kingdom for the 2025 academic year. Scholarships are available for a range of programs, including undergraduate and postgraduate degrees in business, engineering, and the humanities. The application deadline is May 15, 2025. Don’t miss this chance to study at some of the most prestigious universities in the world. Apply now!', '2024-12-12 16:16:20'),
(10, 'South Korea: Summer Language Program Registration Open', 'Join us for an exciting opportunity to learn Korean through the Ocean Education Foundation’s Summer Language Program in South Korea. The program runs for six weeks from June 2025 and is designed for beginners to advanced learners. This is a great way to immerse yourself in Korean culture while improving your language skills. The registration deadline is April 30, 2025. Secure your spot today and enhance your study abroad experience!', '2024-12-12 16:16:47'),
(11, 'Experience France: Study Abroad in Paris for Spring 2024', 'The Ocean Education Foundation invites students to apply for the Paris Study Abroad Program for the Spring 2025 semester. This program offers courses in art history, international business, and French language, along with cultural immersion activities in one of the world’s most beautiful cities. Applications are due by December 15, 2025. Don’t miss your chance to study in Paris and gain an unforgettable experience!', '2024-12-12 16:17:18'),
(12, 'Sweden: Scholarships for Masters in Sustainability and Environment', 'Are you passionate about sustainability? The Ocean Education Foundation is offering scholarships for international students applying for Master\'s programs in Sustainability and Environmental Sciences at top universities in Sweden. The deadline for applications is April 15, 2024. Don’t miss out on this opportunity to contribute to global environmental change. Apply now!\r\n\r\n', '2024-12-12 16:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `ID` int(10) NOT NULL,
  `StudentName` varchar(200) DEFAULT NULL,
  `StudentEmail` varchar(200) DEFAULT NULL,
  `StudentClass` varchar(100) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `StuID` varchar(200) DEFAULT NULL,
  `FatherName` mediumtext DEFAULT NULL,
  `MotherName` mediumtext DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `AltenateNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `DateofAdmission` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`ID`, `StudentName`, `StudentEmail`, `StudentClass`, `Gender`, `DOB`, `StuID`, `FatherName`, `MotherName`, `ContactNumber`, `AltenateNumber`, `Address`, `UserName`, `Password`, `Image`, `DateofAdmission`) VALUES
(1, 'Anupam Pokhrel', 'anupampokhrel@gmail.com', '1', 'Male', '2004-02-24', 'Anupam65', 'Bijay Pokhrel', 'Yagya Kumari Bakhrel', 9847504383, 9841150343, 'Aloknagar - 31, Kathmandu', 'anupam65', 'd0936a48f70bfe7afc6be6683f53dfe6', '387111713accecfedc9c46dc3d61073a1734023017.png', '2024-12-12 17:03:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblclass`
--
ALTER TABLE `tblclass`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblnotice`
--
ALTER TABLE `tblnotice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpublicnotice`
--
ALTER TABLE `tblpublicnotice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclass`
--
ALTER TABLE `tblclass`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblnotice`
--
ALTER TABLE `tblnotice`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpublicnotice`
--
ALTER TABLE `tblpublicnotice`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

