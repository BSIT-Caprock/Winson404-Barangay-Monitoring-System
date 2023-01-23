-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2023 at 09:50 AM
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
  `tradeName` varchar(255) NOT NULL,
  `businessNature` varchar(255) NOT NULL,
  `controlNumber` varchar(255) NOT NULL,
  `brgyIDnumber` varchar(50) NOT NULL,
  `ORNumber` varchar(255) NOT NULL,
  `doc_paidAmount` varchar(50) NOT NULL,
  `date_acquired` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=105 ;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`doc_Id`, `doc_type`, `doc_residenceId`, `NonResident`, `NonResident__Address`, `doc_purpose`, `tradeName`, `businessNature`, `controlNumber`, `brgyIDnumber`, `ORNumber`, `doc_paidAmount`, `date_acquired`) VALUES
(79, 'Barangay Permit', 67, '', '', 'Get Brgy. Business Clearance Permit', 'fd', 'fd', 'fd', '', '43', '3', '2022-12-30'),
(80, 'Barangay Permit', 69, '', '', 'Get Brgy. Business Clearance Permit', 'fds', 'fdsf', 'dsfsf', '', 'ds34', '3', '2022-12-30'),
(81, 'Barangay Permit', 69, '', '', 'Get Brgy. Business Clearance Permit', 'fdgdf', 'gd', '45', '', '3', '45', '2022-12-30'),
(82, 'Barangay Permit', 67, '', '', 'Get Brgy. Business Clearance Permit', 'd', 'fdf', 'fd', '', 'fd', '3', '2022-12-30'),
(83, 'Barangay Permit', 66, '', '', 'Get Brgy. Business Clearance Permit', 'dsa', 'dsa', 'dsad', '', 'sa', '3', '2022-12-30'),
(84, 'Barangay Permit', 69, '', '', 'Get Brgy. Business Clearance Permit', 'fdsf', 'dsfd', 'sfdsf', '', 'ds', '43', '2022-12-30'),
(85, 'Barangay Permit', 69, '', '', 'Get Brgy. Business Clearance Permit', 'fds', 'fds', 'fds', '', 'fds', '343', '2022-12-30'),
(86, 'Barangay Permit', 69, '', '', 'Get Brgy. Business Clearance Permit', 'gfd', 'gfd', 'gfd', '', 'gfd', '22', '2023-01-03'),
(87, 'Barangay Permit', 69, '', '', 'Get Brgy. Business Clearance Permit', 'fdsf', 'fdsfdsf', 'dsfds', '', 'fds', '3', '2023-01-03'),
(88, 'Barangay Permit', 69, '', '', 'Get Brgy. Business Clearance Permit', 'fdsf', 'dsfds', 'fdsfsd', '', 'fds', '2', '2023-01-03'),
(89, 'Barangay Permit', 69, '', '', 'Get Brgy. Business Clearance Permit', 'dsfsfds', 'fdsf', 'fdsf', '', 'ds', '2', '2023-01-03'),
(90, 'Barangay Indigency', 69, '', '', 'gfd', '', '', '', '', '', '33', '2023-01-03'),
(91, 'Barangay Permit', 69, '', '', 'Get Brgy. Business Clearance Permit', 'fdgdgd', 'gfdg', 'fgfd', '', '3', '33', '2023-01-03'),
(92, 'Barangay ID Card', 67, '', '', 'Get Brgy. ID Card', '', '', '', '34', '', '54', '2023-01-03'),
(93, 'Barangay Plate', 69, '', '', 'Get Brgy. Plate Certificate', '', '', '', '', '', '34', '2023-01-03'),
(94, 'Barangay Permit', 69, '', '', 'Get Brgy. Business Clearance Permit', 'dddddd', 'dddddd', 'dddddd', '', 'dddddd', '23', '2023-01-03'),
(95, 'Barangay Permit', 67, '', '', 'Get Brgy. Business Clearance Permit', 'fds', 'fdsf', 'dsfdsf', '', 'sdf', '33', '2023-01-03'),
(96, 'Barangay ID Card', 69, '', '', 'Get Brgy. ID Card', '', '', '', '232', '', '3', '2023-01-03'),
(97, 'Barangay Plate', 69, '', '', 'Get Brgy. Plate Certificate', '', '', '', '', '', '2', '2023-01-03'),
(98, 'Barangay Permit', 67, '', '', 'Get Brgy. Business Clearance Permit', 'fdsfsdf', 'sfsdfs', 'fdsfsdf', '', 'sfsdfs', '432', '2023-01-16'),
(99, 'Barangay Clearance', 69, '', '', 'Test', '', '', '', '', '', '1000', '2023-01-16'),
(100, 'Barangay ID Card', 67, '', '', 'Get Brgy. ID Card', '', '', '', '213213', '', '1312', '2023-01-19'),
(101, 'Barangay ID Card', 69, '', '', 'Get Brgy. ID Card', '', '', '', '1313', '', '1312', '2023-01-19'),
(102, 'Barangay ID Card', 69, '', '', 'Get Brgy. ID Card', '', '', '', '432423', '', '32', '2023-01-21'),
(103, 'Brgy. Non-Residency', 0, 'gdfgfgdgf', 'fff', 'Get Brgy. Non-Residency', '', '', '', '', '', '3', '2023-01-21'),
(104, 'Barangay Clearance', 67, '', '', 'ddfd', '', '', '', '', '', '22', '2023-01-22');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=96 ;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`incomeId`, `paid_by`, `paymentFor`, `paymentDesc`, `paymentAmount`, `date_paid`, `added_by`, `date_added`, `updated_by`, `date_updated`) VALUES
(70, '67', 'Barangay Permit', 'Get Brgy. Business Clearance Permit', '3', '2022-12-30', '40', '2022-12-30', '', ''),
(71, '69', 'Barangay Permit', 'Get Brgy. Business Clearance Permit', '3', '2022-12-30', '40', '2022-12-30', '', ''),
(72, '69', 'Barangay Permit', 'Get Brgy. Business Clearance Permit', '45', '2022-12-30', '40', '2022-12-30', '', ''),
(73, '67', 'Barangay Permit', 'Get Brgy. Business Clearance Permit', '3', '2022-12-30', '40', '2022-12-30', '', ''),
(74, '66', 'Barangay Permit', 'Get Brgy. Business Clearance Permit', '3', '2022-12-30', '40', '2022-12-30', '', ''),
(75, '69', 'Barangay Permit', 'Get Brgy. Business Clearance Permit', '43', '2022-12-30', '40', '2022-12-30', '', ''),
(76, '69', 'Barangay Permit', 'Get Brgy. Business Clearance Permit', '343', '2022-12-30', '40', '2022-12-30', '', ''),
(77, '69', 'Barangay Permit', 'Get Brgy. Business Clearance Permit', '22', '2023-01-03', '40', '2023-01-03', '', ''),
(78, '69', 'Barangay Permit', 'Get Brgy. Business Clearance Permit', '3', '2023-01-03', '42', '2023-01-03', '', ''),
(79, '69', 'Barangay Permit', 'Get Brgy. Business Clearance Permit', '2', '2023-01-03', '42', '2023-01-03', '', ''),
(80, '69', 'Barangay Permit', 'Get Brgy. Business Clearance Permit', '2', '2023-01-03', '40', '2023-01-03', '', ''),
(81, '69', 'Barangay Indigency', 'gfd', '33', '2023-01-03', '40', '2023-01-03', '', ''),
(82, '69', 'Barangay Permit', 'Get Brgy. Business Clearance Permit', '33', '2023-01-03', '40', '2023-01-03', '', ''),
(83, '67', 'Barangay ID Card', 'Get Brgy. ID Card', '54', '2023-01-03', '40', '2023-01-03', '', ''),
(84, '69', 'Barangay Plate', 'Get Brgy. Plate Certificate', '34', '2023-01-03', '40', '2023-01-03', '', ''),
(85, '69', 'Barangay Permit', 'Get Brgy. Business Clearance Permit', '23', '2023-01-03', '42', '2023-01-03', '', ''),
(86, '67', 'Barangay Permit', 'Get Brgy. Business Clearance Permit', '33', '2023-01-03', '40', '2023-01-03', '', ''),
(87, '69', 'Barangay ID Card', 'Get Brgy. ID Card', '3', '2023-01-03', '40', '2023-01-03', '', ''),
(88, '69', 'Barangay Plate', 'Get Brgy. Plate Certificate', '2', '2023-01-03', '40', '2023-01-03', '', ''),
(89, '67', 'Barangay Permit', 'Get Brgy. Business Clearance Permit', '432', '2023-01-16', '40', '2023-01-16', '', ''),
(90, '69', 'Barangay Clearance', 'Test', '1000', '2023-01-16', '40', '2023-01-16', '', ''),
(91, '67', 'Barangay ID Card', 'Get Brgy. ID Card', '1312', '2023-01-19', '40', '2023-01-19', '', ''),
(92, '69', 'Barangay ID Card', 'Get Brgy. ID Card', '1312', '2023-01-19', '40', '2023-01-19', '', ''),
(93, '69', 'Barangay ID Card', 'Get Brgy. ID Card', '32', '2023-01-21', '40', '2023-01-21', '', ''),
(94, 'gdfgfgdgf', 'Brgy. Non-Residency', 'Get Brgy. Non-Residency', '3', '2023-01-21', '40', '2023-01-21', '', ''),
(95, 'dsd d d ', 'Barangay Clearance', 'ddfd', '22', '2023-01-22', '40', '2023-01-22', '', '');

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
(2, 'Danilo', 'Cabag', 'Nicolas Jr.', '', 'Barangay Secretary', 'Barangay Secretary Description Sample', 'a.jpg', '2022-11-26'),
(3, 'Jose', '', 'Rizal', '', 'Barangay Councilor', 'Barangay Councilor Sample Description', '1.jpg', '2022-11-27');

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
  `religion` varchar(100) NOT NULL,
  `house_no` varchar(255) NOT NULL,
  `street_name` varchar(255) NOT NULL,
  `purok` varchar(255) NOT NULL,
  `zone` varchar(255) NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `municipality` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `familyIndicator` varchar(20) NOT NULL,
  `headName` varchar(50) NOT NULL,
  `familyRole` varchar(50) NOT NULL,
  `sector` varchar(100) NOT NULL,
  `resident_status` varchar(100) NOT NULL,
  `voter_status` varchar(100) NOT NULL,
  `ID_status` varchar(100) NOT NULL,
  `QR_status` varchar(100) NOT NULL,
  `years_of_stay` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `digital_signature` varchar(255) NOT NULL,
  `personalDocuments` varchar(255) NOT NULL,
  `qrCode` varchar(255) NOT NULL,
  `residentCode` varchar(100) NOT NULL,
  `residentPIN` varchar(10) NOT NULL,
  `added_By` varchar(150) NOT NULL,
  `date_registered` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=81 ;

--
-- Dumping data for table `residence`
--

INSERT INTO `residence` (`residenceId`, `firstname`, `middlename`, `lastname`, `suffix`, `dob`, `age`, `ageClassification`, `birthplace`, `gender`, `civilstatus`, `citizenship`, `occupation`, `religion`, `house_no`, `street_name`, `purok`, `zone`, `barangay`, `municipality`, `province`, `region`, `familyIndicator`, `headName`, `familyRole`, `sector`, `resident_status`, `voter_status`, `ID_status`, `QR_status`, `years_of_stay`, `image`, `digital_signature`, `personalDocuments`, `qrCode`, `residentCode`, `residentPIN`, `added_By`, `date_registered`) VALUES
(66, 'dddsdds', 'd', 'd', '', '1993-06-16', '29 years old', 'Adult', 'df', 'Female', 'Single', 'By Birth', 'fsd', 'Roman Catholic', 'fds', 'fds', 'fds', 'fds', 'fds', 'fds', 'fdsfsd', 'fdsf', 'Head', 'test123', 'test421', 'PWD', 'Perma/Owned', 'Active', 'Active', 'None', '43', '2.jpg', '3.jpg', '', '', '', '', 'Juan Dela Cruz', '2022-11-25'),
(67, 'dsd', 'd', 'd', '', '2016-03-09', '6 years old', 'Child', 'dsa', 'Male', 'Married', 'By Family', 'fdsf', 'Iglesia Ni Cristo', 'fdsf', 'dsf', 'fdsf', 'fdsf', 'dsfsd', 'fdsf', 'fsdfsd', 'fds', '', '', '', 'Senior Citizen', 'Perma/Owned', 'Active', 'Active', 'Active', '43', 'Screenshot (185).png', 'Screenshot (186).png', '', '', '', '', 'Erwin Cabag Son', '2022-11-25'),
(69, 'Juan', 'Panday', 'Dela Cruz', '', '1997-10-15', '25 years old', 'Adult', 'bvcbcb', 'Female', 'Separated', 'Naturalization', 'bvcbc', 'Ang Dating Daan', 'bvc', 'bcvbcb', 'vcbcb', 'vcbcv', 'bcvbc', 'bcvbcvbcv', 'bvc', 'bvcbc', '', '', '', 'Solo Parents', 'Tempo/Rented', 'Active', 'None', 'Active', '343', 'Screenshot (193).png', 'Screenshot (188).png', '', '../images-qr-codes/63a70b9feddb2.png', '', '', 'Erwin Cabag Son', '2022-11-25'),
(70, 'fsfsd', 'fsdfsf', 'sdfs', '', '1952-07-09', '70 years old', 'Senior', 'fsfs', 'Non-Binary', 'Widow/ER', 'By Marriage', 'gfdgd', 'Islam', 'gfd', 'gdf', 'gfd', 'gfdg', 'fdgdf', 'gfdg', 'fdg', 'gfd', '', '', '', 'PWD', 'Tempo/Rented', 'None', 'None', 'None', '2', 'Screenshot (184).png', 'Screenshot (186).png', '', '', '', '', 'Jose Rizal', '2022-11-25'),
(71, 'fdgfdgdg', 'gwq', 'wq', 'w', '2022-11-10', '2 weeks old', 'Toddler', 'wq', 'Female', 'Widow/ER', 'By Family', 'wq', 'Protestants', 'wq', 'w', 'qwq', 'w', 'w', 'w', 'qwq', 'w', '', '', '', 'Solo Parents', 'Tempo/Rented', 'Active', 'Active', 'None', '3', '1fLSnJV.jpg', '1fLSnJV.jpg', '', '', '', '', 'Juan Dela Cruz', '2022-11-27'),
(72, 'DADADAD', 'DADADAD', 'DADADAD', '', '2022-12-13', '6 days old', 'Toddler', 'DADADAD', 'Female', 'Married', 'By Marriage', 'DADADAD', 'Seventh-day Adventism', 'DADADAD', 'DADADAD', 'DADADAD', 'DADADAD', 'DADADAD', 'DADADAD', 'DADADAD', 'DADADAD', '', '', '', 'Senior Citizen', 'Tempo/Rented', 'Active', 'None', 'Active', '2', '315423302_2170759329772205_8153808227283622299_n.jpg', '315423302_2170759329772205_8153808227283622299_n.jpg', '', '../images-qr-codes/63a071bf9f8fa.png', '', '', 'Jose Rizal', '2022-12-19'),
(73, 'bvc', 'bvcb', 'bvc', '', '2022-12-15', '1 week old', 'Toddler', 'bvcb', 'Female', 'Separated', 'By Birth', 'bvc', 'Aglipayan', 'bvb', 'vcb', 'bvbv', 'bv', 'bvb', 'vbv', 'bvb', 'bv', '', '', '', 'Senior Citizen', 'Tempo/Rented', 'Inactive', 'Active', 'None', '343', '2.jpg', '3.jpg', '', '../images-qr-codes/63a3e7ab3bbcf.png', '', '', 'Erwin Cabag Son', '2022-12-22'),
(74, 'dadaadadd', 'dadaadadd', 'dadaadadd', '', '2022-12-09', '1 week old', 'Toddler', 'dadaadadd', 'Male', 'Widow/ER', 'By Birth', 'dadaadadd', 'Bible Baptist Church', 'dadaadadd', 'dadaadadd', 'dadaadadd', 'dadaadadd', 'dadaadadd', 'dadaadadd', 'dadaadadd', 'dadaadadd', '', '', '', 'PWD', 'Tempo/Rented', 'None', 'Active', 'None', '23', '2.jpg', '4.jpg', '', '../images-qr-codes/63a3e807201e2.png', '', '', 'Jose Rizal', '2022-12-22'),
(75, 'Cong TV', 'Cong TV', 'Cong TV', '', '2022-12-15', '1 week old', 'Toddler', 'Cong TV', 'Male', 'Single', 'By Birth', 'Cong TV', 'United Church of Christ in the Philippines', 'Cong TV', 'Cong TV', 'Cong TV', 'Cong TV', 'Cong TV', 'Cong TV', 'Cong TV', 'Cong TV', '', '', '', 'Senior Citizen', 'Perma/Owned', 'Active', 'Active', 'Active', '2', '2.jpg', '3.jpg', '', '../images-qr-codes/63a3e9146f38c.png', 'BMS-63a3e9146f385', '123321', 'Juan Dela Cruz', '2022-12-22'),
(76, 'Bonifacio', 'Bonifacio', 'Bonifacio', '', '2022-12-17', '1 week old', 'Toddler', 'BonifacioBonifacioBonifacioBonifacio', 'Male', 'Single', 'By Family', 'BonifacioBonifacio', 'Methodist', 'BonifacioBonifacio', 'BonifacioBonifacio', 'BonifacioBonifacio', 'BonifacioBonifacio', 'BonifacioBonifacio', 'BonifacioBonifacio', 'BonifacioBonifacio', 'BonifacioBonifacio', 'gfd', 'gfd', 'gfd', 'Senior Citizen', 'Tempo/Rented', 'Active', 'None', 'Active', '22', 'academia.png', 'aclc.png', '', '../images-qr-codes/63a70b9feddb2.png', 'BMS-63a70b9feddad', '123456', 'Erwin Cabag Son', '2022-12-24'),
(77, 'fdsfs', 'fdsfsd', 'fsdf', 'sfsd', '2023-01-11', '1 week old', 'Toddler', 'gfdgf', 'Male', 'Single', 'By Birth', 'gfdgdgdf', 'Jehovah''s Witnesses', 'gfd', 'gdfg', 'dfgdfgfd', 'gfdgfd', 'gdfg', 'fdgdfg', 'dfgfd', 'gfd', 'Member', 'gfdg', 'dgg', 'PWD', 'Tempo/Rented', 'Active', 'Active', 'Active', '432', '6207ad7e34af5.jpg', '4297150.jpg', '', '../images-qr-codes/63c915cf3a34f.png', 'BMS-63c915cf3a346', '', 'Jose Rizal', '2023-01-19'),
(78, 'addedby', 'addedby', 'addedby', '', '2023-01-11', '1 week old', 'Toddler', 'addedby', 'Male', 'Single', 'By Family', 'addedby', 'Methodist', 'addedbyaddedby', 'addedby', 'addedby', 'addedby', 'addedby', 'addedby', 'addedby', 'addedby', 'Member', 'addedby', 'addedby', 'PWD', 'Tempo/Rented', 'Inactive', 'Active', 'Active', '2', '2.jpg', '1.jpg', '', '../images-qr-codes/63c91f6f46c54.png', 'BMS-63c91f6f46c49', '', 'Juan Dela Cruz', '2023-01-19'),
(79, 'Certsa', 'Certsa', 'Certsa', '', '2023-01-13', '1 week old', 'Toddler', 'Certsa', 'Male', 'Single', 'By Family', 'Certsa', 'Iglesia Ni Cristo', 'Certsa', 'Certsa', 'Certsa', 'Certsa', 'Certsa', 'Certsa', 'Certsa', 'Certsa', 'Member', 'Certsa', 'Certsa', 'Senior Citizen', 'Tempo/Rented', 'Inactive', 'Active', 'Active', '13', '6207ad7e34af5.jpg', 'rUPmy8.jpg', 'wp4813161-simple-minimalist-wallpapers.jpg', '../images-qr-codes/63cbb4ea53611.png', 'BMS-63cbb4ea5360b', '', 'Juan  Dela Cruz ', '2023-01-21'),
(80, 'certificate', 'certificate', 'certificate', '', '2023-01-11', '1 week old', 'Toddler', 'certificate', 'Male', 'Single', 'By Birth', 'certificate', 'Iglesia Ni Cristo', 'certificate', 'certificate', 'certificate', 'certificate', 'certificate', 'certificate', 'certificate', 'certificate', 'Head', 'certificate', 'certificate', 'Senior Citizen', 'Tempo/Rented', 'Active', 'Active', 'None', '2', 'ba.jpg', 'harvest.png', 'rUPmy8.jpg', '../images-qr-codes/63cbb58ade5fc.png', 'BMS-63cbb58ade5f7', '', 'Juan  Dela Cruz ', '2023-01-21');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_Id`, `username`, `firstname`, `middlename`, `lastname`, `suffix`, `email`, `contact`, `password`, `image`, `user_type`, `verification_code`, `date_registered`) VALUES
(40, 'Admin', 'Juan', '', 'Dela Cruz', '', 'admin@gmail.com', '9359428961', '0192023a7bbd73250516f069df18b500', 'user.png', 'Admin', '374025', '2022-09-10'),
(42, 'Winson404', 'Erwin', 'Cabag', 'Son', '', 'sonerwin12@gmail.com', '9359428963', '0192023a7bbd73250516f069df18b500', '20.jpg', 'Staff', '509828', '2022-10-22'),
(43, 'group2ilafi@gmail.com', 'Jose', '', 'Rizal', '', 'Norlyngelig16@gmail.com', '9359428963', '0192023a7bbd73250516f069df18b500', '', 'Staff', '', '2022-12-28');

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
MODIFY `doc_Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
MODIFY `incomeId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `officials`
--
ALTER TABLE `officials`
MODIFY `officialID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `residence`
--
ALTER TABLE `residence`
MODIFY `residenceId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
