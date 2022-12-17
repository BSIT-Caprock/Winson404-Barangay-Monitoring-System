-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2022 at 05:18 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `brgy_mgmt`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE IF NOT EXISTS `activity` (
`actId` int(11) NOT NULL,
  `actName` text NOT NULL,
  `actDate` varchar(20) NOT NULL,
  `date_added` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`actId`, `actName`, `actDate`, `date_added`) VALUES
(2, 'Activity 5', '2022-12-23', ''),
(3, 'Activity 3', '2022-12-10', '2022-12-11'),
(4, 'Activity 2', '2022-12-11', '2022-12-11'),
(5, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Rem, ipsum delectus voluptatum? Molestias aut inventore eaque, maxime numquam dignissimos asperiores, voluptatibus consectetur distinctio excepturi odit architecto, saepe enim sunt, molestiae.', '2022-12-11', '2022-12-11');

-- --------------------------------------------------------

--
-- Table structure for table `customization`
--

CREATE TABLE IF NOT EXISTS `customization` (
`customID` int(11) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `status` varchar(150) NOT NULL DEFAULT 'Inactive',
  `date_added` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `customization`
--

INSERT INTO `customization` (`customID`, `picture`, `status`, `date_added`) VALUES
(7, '6207ad7e34af5.jpg', 'Active', '2022-11-27'),
(8, 'wallpaperflare.com_wallpaper (1).jpg', 'Inactive', '2022-11-27'),
(10, 'wallpaperflare.com_wallpaper.jpg', 'Inactive', '2022-11-27'),
(11, 'minimalism-1644666519306-6515.jpg', 'Inactive', '2022-11-27'),
(18, 'logo.png', 'Inactive', '2022-11-27');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE IF NOT EXISTS `documents` (
`doc_Id` int(11) NOT NULL,
  `doc_type` varchar(100) NOT NULL,
  `doc_residenceId` int(11) NOT NULL,
  `NonResident` varchar(255) NOT NULL,
  `NonResident__Address` text NOT NULL,
  `doc_purpose` text NOT NULL,
  `doc_paidAmount` varchar(50) NOT NULL,
  `date_acquired` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`doc_Id`, `doc_type`, `doc_residenceId`, `NonResident`, `NonResident__Address`, `doc_purpose`, `doc_paidAmount`, `date_acquired`) VALUES
(14, 'Barangay Indigency', 66, '', '', 'Purpose 1', '100', '2022-12-12'),
(15, 'Barangay Residency', 67, '', '', 'Purpose 2', '150', '2022-12-12'),
(19, 'First Time Job Seeker', 71, '', '', 'Get First Time Job Seeker Certificate', '200', '2022-12-12'),
(20, 'Brgy. Non-Residency', 0, 'Erwin C. SOn', 'Purok San Isidro Daanlungsod, Medellin, Cebu', 'Get Brgy. Non-Residency', '300', '2022-11-12'),
(21, 'Barangay Clearance', 70, '', '', 'Get Barangay Clearance', '350', '2022-12-11');

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE IF NOT EXISTS `income` (
`incomeId` int(11) NOT NULL,
  `paid_by` varchar(255) NOT NULL,
  `paymentFor` varchar(255) NOT NULL,
  `paymentDesc` text NOT NULL,
  `paymentAmount` varchar(255) NOT NULL,
  `date_paid` varchar(255) NOT NULL,
  `added_by` varchar(255) NOT NULL,
  `date_added` varchar(255) NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `date_updated` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`incomeId`, `paid_by`, `paymentFor`, `paymentDesc`, `paymentAmount`, `date_paid`, `added_by`, `date_added`, `updated_by`, `date_updated`) VALUES
(1, '66', 'Barangay Indigency', 'Purpose 1', '100', '2022-12-12', '40', '2022-12-12', '', ''),
(2, '67', 'Barangay Residency', 'Purpose 2', '150', '2022-12-12', '40', '2022-12-12', '', ''),
(6, '71', 'First Time Job Seeker', 'Get First Time Job Seeker Certificate', '200', '2022-12-12', '40', '2022-12-12', '', ''),
(7, 'Erwin C. SOn', 'Brgy. Non-Residency', 'Get Brgy. Non-Residency', '300', '2022-11-12', '40', '2022-12-12', '', ''),
(8, '70', 'Barangay Clearance', 'Get Barangay Clearance', '350', '2022-12-11', '40', '2022-12-12', '', ''),
(9, '', 'Retal fee', 'Retal fee description', '350', '2022-12-12', '40', '2022-12-12', '40', '2022-12-12'),
(10, '', 'Sample Payment', 'HEHE', '500', '2022-12-13', '40', '2022-12-13', '', ''),
(11, '', 'SS', 'ss', '2200', '2022-12-13', '40', '2022-12-13', '', ''),
(12, '', 'SS', 'ss', '2200', '2022-12-13', '40', '2022-12-13', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `officials`
--

CREATE TABLE IF NOT EXISTS `officials` (
`officialID` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `suffix` varchar(50) NOT NULL,
  `position` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `digital_signature` varchar(255) NOT NULL,
  `date_registered` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `officials`
--

INSERT INTO `officials` (`officialID`, `firstname`, `middlename`, `lastname`, `suffix`, `position`, `description`, `digital_signature`, `date_registered`) VALUES
(1, 'Erwin', 'Cabag', 'Son', '', 'Barangay Captain', 'Barangay Captain Sample Description', 'minimalism-1644666519306-6515.jpg', '2022-11-26'),
(2, 'fdsfs', 'dsf', 'fsdfsf', '', 'fds', 'fdsf', 'a.jpg', '2022-11-26'),
(3, 'fqw', 'wq', 'w', 'w', 'fdfs', 'w', '1.jpg', '2022-11-27');

-- --------------------------------------------------------

--
-- Table structure for table `residence`
--

CREATE TABLE IF NOT EXISTS `residence` (
`residenceId` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `suffix` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `age` varchar(100) NOT NULL,
  `ageClassification` varchar(25) NOT NULL,
  `birthplace` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `civilstatus` varchar(50) NOT NULL,
  `citizenship` varchar(50) NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `house_no` varchar(255) NOT NULL,
  `street_name` varchar(255) NOT NULL,
  `purok` varchar(255) NOT NULL,
  `zone` varchar(255) NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `municipality` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `sector` varchar(100) NOT NULL,
  `resident_status` varchar(100) NOT NULL,
  `voter_status` varchar(100) NOT NULL,
  `ID_status` varchar(100) NOT NULL,
  `QR_status` varchar(100) NOT NULL,
  `years_of_stay` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `digital_signature` varchar(255) NOT NULL,
  `date_registered` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=72 ;

--
-- Dumping data for table `residence`
--

INSERT INTO `residence` (`residenceId`, `firstname`, `middlename`, `lastname`, `suffix`, `dob`, `age`, `ageClassification`, `birthplace`, `gender`, `civilstatus`, `citizenship`, `occupation`, `house_no`, `street_name`, `purok`, `zone`, `barangay`, `municipality`, `province`, `region`, `sector`, `resident_status`, `voter_status`, `ID_status`, `QR_status`, `years_of_stay`, `image`, `digital_signature`, `date_registered`) VALUES
(66, 'dddsdds', 'd', 'd', '', '1993-06-16', '29 years old', 'Adult', 'df', 'Female', 'Single', 'By Birth', 'fsd', 'fds', 'fds', 'fds', 'fds', 'fds', 'fds', 'fdsfsd', 'fdsf', 'PWD', 'Perma/Owned', 'Active', 'Active', 'None', '43', '2.jpg', '3.jpg', '2022-11-25'),
(67, 'dsd', 'd', 'd', '', '2016-03-09', '6 years old', 'Child', 'dsa', 'Male', 'Married', 'By Family', 'fdsf', 'fdsf', 'dsf', 'fdsf', 'fdsf', 'dsfsd', 'fdsf', 'fsdfsd', 'fds', 'Senior Citizen', 'Perma/Owned', 'Active', 'Active', 'Active', '43', 'Screenshot (185).png', 'Screenshot (186).png', '2022-11-25'),
(69, 'cbvc', 'bvcbvc', 'bvcb', '', '1997-10-15', '25 years old', 'Adult', 'bvcbcb', 'Female', 'Separated', 'Naturalization', 'bvcbc', 'bvc', 'bcvbcb', 'vcbcb', 'vcbcv', 'bcvbc', 'bcvbcvbcv', 'bvc', 'bvcbc', 'Solo Parents', 'Tempo/Rented', 'Active', 'None', 'Active', '343', 'Screenshot (193).png', 'Screenshot (188).png', '2022-11-25'),
(70, 'fsfsd', 'fsdfsf', 'sdfs', '', '1952-07-09', '70 years old', 'Senior', 'fsfs', 'Non-Binary', 'Widow/ER', 'By Marriage', 'gfdgd', 'gfd', 'gdf', 'gfd', 'gfdg', 'fdgdf', 'gfdg', 'fdg', 'gfd', 'PWD', 'Tempo/Rented', 'None', 'None', 'None', '2', 'Screenshot (184).png', 'Screenshot (186).png', '2022-11-25'),
(71, 'fdgfdgdg', 'gwq', 'wq', 'w', '2022-11-10', '2 weeks old', 'Toddler', 'wq', 'Female', 'Widow/ER', 'By Family', 'wq', 'wq', 'w', 'qwq', 'w', 'w', 'w', 'qwq', 'w', 'Solo Parents', 'Tempo/Rented', 'Active', 'Active', 'None', '3', '1fLSnJV.jpg', '1fLSnJV.jpg', '2022-11-27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_Id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `suffix` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'Resident',
  `verification_code` varchar(255) NOT NULL,
  `date_registered` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_Id`, `username`, `firstname`, `middlename`, `lastname`, `suffix`, `email`, `contact`, `password`, `image`, `user_type`, `verification_code`, `date_registered`) VALUES
(40, 'Admin', 'Erwin', 'Cabag', 'Son', '', 'admin@gmail.com', '9359428961', '0192023a7bbd73250516f069df18b500', 'user1-128x128.jpg', 'Admin', '374025', '2022-09-10'),
(42, 'Winson404', 'Erwin', 'Cabag', 'Son', '', 'sonerwin12@gmail.com', '9359428963', '0192023a7bbd73250516f069df18b500', '636e2ff4b5ad2.png', 'Staff', '841930', '2022-10-22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
 ADD PRIMARY KEY (`actId`);

--
-- Indexes for table `customization`
--
ALTER TABLE `customization`
 ADD PRIMARY KEY (`customID`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
 ADD PRIMARY KEY (`doc_Id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
 ADD PRIMARY KEY (`incomeId`);

--
-- Indexes for table `officials`
--
ALTER TABLE `officials`
 ADD PRIMARY KEY (`officialID`);

--
-- Indexes for table `residence`
--
ALTER TABLE `residence`
 ADD PRIMARY KEY (`residenceId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
MODIFY `actId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `customization`
--
ALTER TABLE `customization`
MODIFY `customID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
MODIFY `doc_Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
MODIFY `incomeId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `officials`
--
ALTER TABLE `officials`
MODIFY `officialID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `residence`
--
ALTER TABLE `residence`
MODIFY `residenceId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
