-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2022 at 05:20 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`doc_Id`, `doc_type`, `doc_residenceId`, `NonResident`, `NonResident__Address`, `doc_purpose`, `tradeName`, `businessNature`, `controlNumber`, `brgyIDnumber`, `ORNumber`, `doc_paidAmount`, `date_acquired`) VALUES
(14, 'Barangay Indigency', 66, '', '', 'Purpose 1', '', '', '', '', '', '100', '2022-12-12'),
(15, 'Barangay Residency', 67, '', '', 'Purpose 2', '', '', '', '', '', '150', '2022-12-12'),
(19, 'First Time Job Seeker', 71, '', '', 'Get First Time Job Seeker Certificate', '', '', '', '', '', '200', '2022-12-12'),
(20, 'Brgy. Non-Residency', 0, 'Erwin C. SOn', 'Purok San Isidro Daanlungsod, Medellin, Cebu', 'Get Brgy. Non-Residency', '', '', '', '', '', '300', '2022-11-12'),
(21, 'Barangay Clearance', 70, '', '', 'Get Barangay Clearance', '', '', '', '', '', '350', '2022-12-11'),
(22, 'Barangay Residency', 69, '', '', 'fdg', '', '', '', '', '', '100', '2022-12-18'),
(23, 'Barangay Clearance', 70, '', '', 'Get Barangay Clearance', '', '', '', '', '', '333', '2022-12-18'),
(24, 'Barangay Clearance', 69, '', '', 'gag', '', '', '', '', '', '333', '2022-12-18'),
(25, 'Barangay Indigency', 71, '', '', 'Test 123', '', '', '', '', '', '100', '2022-12-18'),
(26, 'Barangay Indigency', 67, '', '', 'test', '', '', '', '', '', '111', '2022-12-18'),
(27, 'Barangay Indigency', 67, '', '', 'test123', '', '', '', '', '', '11111', '2022-12-18'),
(28, 'First Time Job Seeker', 66, '', '', 'Get First Time Job Seeker Certificate', '', '', '', '', '', '3232', '2022-12-19'),
(29, 'Barangay Indigency', 66, '', '', 'sda', '', '', '', '', '', '22', '2022-12-19'),
(30, 'Barangay Residency', 66, '', '', 'd', '', '', '', '', '', '33', '2022-12-19'),
(31, 'Brgy. Non-Residency', 0, 'ds', 'fds', 'Get Brgy. Non-Residency', '', '', '', '', '', '3', '2022-12-19'),
(32, 'Barangay Clearance', 67, '', '', 'd', '', '', '', '', '', '222', '2022-12-19'),
(33, 'Barangay Ownership', 66, '', '', '', '', '', '', '', '', '500', '2022-12-19'),
(34, 'Barangay Ownership', 67, '', '', '', '', '', '', '', '', '500', '2022-12-19'),
(35, 'Barangay Plate', 67, '', '', 'Get Brgy. Plate Certificate', '', '', '', '', '', '222', '2022-12-20'),
(36, 'Barangay Plate', 67, '', '', 'Get Brgy. Plate Certificate', '', '', '', '', '', '2', '2022-12-20'),
(37, 'Barangay Ownership', 67, '', '', 'Get Brgy. Ownership Certificate', '', '', '', '', '', '2', '2022-12-20'),
(38, 'Barangay Ownership', 67, '', '', 'Get Brgy. Ownership Certificate', '', '', '', '', '', '2', '2022-12-20'),
(39, 'Barangay ID Card', 66, '', '', 'Get Brgy. ID Card', '', '', '', '', '', '221', '2022-12-20'),
(40, 'Barangay ID Card', 72, '', '', 'Get Brgy. ID Card', '', '', '', '', '', '200', '2022-12-20'),
(41, 'Barangay ID Card', 66, '', '', 'Get Brgy. ID Card', '', '', '', '', '', '2121', '2022-12-20'),
(42, 'Barangay Permit', 69, '', '', 'Get Brgy. Business Clearance Permit', 'Sample Trade Name', 'Sample Nature/Scope of Business', '012345', '', '123321', '300', '2022-12-21'),
(43, 'Barangay Permit', 69, '', '', 'Get Brgy. Business Clearance Permit', 'Trade Name', 'Trade Name', '1332123', '', '232145', '300', '2022-12-21'),
(44, 'Barangay Permit', 69, '', '', 'Get Brgy. Business Clearance Permit', 'Sample Trading Name', 'Sample Nature/Scope of Business', '1233212', '', '221354', '350', '2022-12-21'),
(45, 'Barangay Construction', 69, '', '', 'Get Barangay Construction Certificate', '', '', '', '', '', '213', '2022-12-21'),
(46, 'Barangay ID Card', 67, '', '', 'Get Brgy. ID Card', '', '', '', '', '', '100', '2022-12-21'),
(47, 'Barangay ID Card', 69, '', '', 'Get Brgy. ID Card', '', '', '', '', '', '200', '2022-12-22'),
(48, 'Barangay ID Card', 69, '', '', 'Get Brgy. ID Card', '', '', '', '332211', '', '200', '2022-12-22'),
(49, 'Barangay Permit', 69, '', '', 'Get Brgy. Business Clearance Permit', 'fdsfds', 'fsdfs', 'fsd', '', 'dgdfgdf', '333', '2022-12-28'),
(50, 'Barangay Permit', 69, '', '', 'Get Brgy. Business Clearance Permit', 'fdsf', 'dsfs', 'fds', '', 'fdsfs', '43', '2022-12-28'),
(51, 'Barangay Permit', 69, '', '', 'Get Brgy. Business Clearance Permit', 'dd', 'dd', 'dd', '', 'dd', '2', '2022-12-28'),
(52, 'Barangay Indigency', 69, '', '', 'dfd', '', '', '', '', '', '33', '2022-12-28'),
(53, 'Barangay ID Card', 69, '', '', 'Get Brgy. ID Card', '', '', '', '33', '', '33', '2022-12-28'),
(54, 'Barangay ID Card', 69, '', '', 'Get Brgy. ID Card', '', '', '', '3', '', '3', '2022-12-28'),
(55, 'Barangay ID Card', 67, '', '', 'Get Brgy. ID Card', '', '', '', '3', '', '3', '2022-12-28'),
(56, 'Barangay Permit', 66, '', '', 'Get Brgy. Business Clearance Permit', 'dfd', 'fdsf', 'dsfs', '', 'fdg', '22', '2022-12-28'),
(57, 'Barangay Plate', 67, '', '', 'Get Brgy. Plate Certificate', '', '', '', '', '', '3', '2022-12-28'),
(58, 'Barangay Construction', 67, '', '', 'Get Barangay Construction Certificate', '', '', '', '', '', '333', '2022-12-28'),
(59, 'Barangay Ownership', 69, '', '', 'Get Brgy. Ownership Certificate', '', '', '', '', '', '3', '2022-12-28'),
(60, 'First Time Job Seeker', 69, '', '', 'Get First Time Job Seeker Certificate', '', '', '', '', '', '22', '2022-12-28'),
(61, 'Barangay ID Card', 69, '', '', 'Get Brgy. ID Card', '', '', '', '22', '', '22', '2022-12-30');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

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
(12, '', 'SS', 'ss', '2200', '2022-12-13', '40', '2022-12-13', '', ''),
(13, '69', 'Barangay Residency', 'fdg', '100', '2022-12-18', '40', '2022-12-18', '', ''),
(14, '70', 'Barangay Clearance', 'Get Barangay Clearance', '333', '2022-12-18', '40', '2022-12-18', '', ''),
(15, '69', 'Barangay Clearance', 'GAGA', '333', '2022-12-18', '40', '2022-12-18', '', ''),
(16, '71', 'Barangay Indigency', 'Test 123', '100', '2022-12-18', '40', '2022-12-18', '', ''),
(17, '67', 'Barangay Indigency', 'test', '111', '2022-12-18', '40', '2022-12-18', '', ''),
(18, '67', 'Barangay Indigency', 'test123', '11111', '2022-12-18', '40', '2022-12-18', '', ''),
(19, '66', 'First Time Job Seeker', 'Get First Time Job Seeker Certificate', '3232', '2022-12-19', '40', '2022-12-19', '', ''),
(20, '66', 'Barangay Indigency', 'sda', '22', '2022-12-19', '40', '2022-12-19', '', ''),
(21, '66', 'Barangay Residency', 'd', '33', '2022-12-19', '40', '2022-12-19', '', ''),
(22, 'ds', 'Brgy. Non-Residency', 'Get Brgy. Non-Residency', '3', '2022-12-19', '40', '2022-12-19', '', ''),
(23, '67', 'Barangay Clearance', 'd', '222', '2022-12-19', '40', '2022-12-19', '', ''),
(24, '66', 'Barangay Ownership', '', '500', '2022-12-19', '40', '2022-12-19', '', ''),
(25, '67', 'Barangay Ownership', '', '500', '2022-12-19', '40', '2022-12-19', '', ''),
(26, '67', 'Barangay Plate', 'Get Brgy. Plate Certificate', '222', '2022-12-20', '40', '2022-12-20', '', ''),
(27, '67', 'Barangay Plate', 'Get Brgy. Plate Certificate', '2', '2022-12-20', '40', '2022-12-20', '', ''),
(28, '67', 'Barangay Ownership', 'Get Brgy. Ownership Certificate', '2', '2022-12-20', '40', '2022-12-20', '', ''),
(29, '67', 'Barangay Ownership', 'Get Brgy. Ownership Certificate', '2', '2022-12-20', '40', '2022-12-20', '', ''),
(30, '66', 'Barangay ID Card', 'Get Brgy. ID Card', '221', '2022-12-20', '40', '2022-12-20', '', ''),
(31, '72', 'Barangay ID Card', 'Get Brgy. ID Card', '200', '2022-12-20', '40', '2022-12-20', '', ''),
(32, '66', 'Barangay ID Card', 'Get Brgy. ID Card', '2121', '2022-12-20', '40', '2022-12-20', '', ''),
(33, '69', 'Barangay Permit', 'Get Brgy. Business Clearance Permit', '300', '2022-12-21', '40', '2022-12-21', '', ''),
(34, '69', 'Barangay Permit', 'Get Brgy. Business Clearance Permit', '300', '2022-12-21', '40', '2022-12-21', '', ''),
(35, '69', 'Barangay Permit', 'Get Brgy. Business Clearance Permit', '3500', '2022-12-21', '40', '2022-12-21', '', ''),
(36, '69', 'Barangay Construction', 'Get Barangay Construction Certificate', '213', '2022-12-21', '40', '2022-12-21', '', ''),
(37, '67', 'Barangay ID Card', 'Get Brgy. ID Card', '100', '2022-12-21', '40', '2022-12-21', '', ''),
(38, '69', 'Barangay ID Card', 'Get Brgy. ID Card', '200', '2022-12-22', '40', '2022-12-22', '', ''),
(39, '69', 'Barangay ID Card', 'Get Brgy. ID Card', '200', '2022-12-22', '40', '2022-12-22', '', ''),
(40, '69', 'Barangay Permit', 'Get Brgy. Business Clearance Permit', '333', '2022-12-28', '40', '2022-12-28', '', ''),
(41, '69', 'Barangay Permit', 'Get Brgy. Business Clearance Permit', '43', '2022-12-28', '40', '2022-12-28', '', ''),
(42, '69', 'Barangay Permit', 'Get Brgy. Business Clearance Permit', '2', '2022-12-28', '40', '2022-12-28', '', ''),
(43, '69', 'Barangay Indigency', 'dfd', '33', '2022-12-28', '40', '2022-12-28', '', ''),
(44, '69', 'Barangay ID Card', 'Get Brgy. ID Card', '33', '2022-12-28', '40', '2022-12-28', '', ''),
(45, '69', 'Barangay ID Card', 'Get Brgy. ID Card', '3', '2022-12-28', '40', '2022-12-28', '', ''),
(46, '67', 'Barangay ID Card', 'Get Brgy. ID Card', '3', '2022-12-28', '40', '2022-12-28', '', ''),
(47, '66', 'Barangay Permit', 'Get Brgy. Business Clearance Permit', '22', '2022-12-28', '40', '2022-12-28', '', ''),
(48, '67', 'Barangay Plate', 'Get Brgy. Plate Certificate', '3', '2022-12-28', '40', '2022-12-28', '', ''),
(49, '67', 'Barangay Construction', 'Get Barangay Construction Certificate', '333', '2022-12-28', '40', '2022-12-28', '', ''),
(50, '69', 'Barangay Ownership', 'Get Brgy. Ownership Certificate', '3', '2022-12-28', '40', '2022-12-28', '', ''),
(51, '69', 'First Time Job Seeker', 'Get First Time Job Seeker Certificate', '22', '2022-12-28', '40', '2022-12-28', '', ''),
(52, '69', 'Barangay ID Card', 'Get Brgy. ID Card', '22', '2022-12-30', '40', '2022-12-30', '', '');

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
  `sector` varchar(100) NOT NULL,
  `resident_status` varchar(100) NOT NULL,
  `voter_status` varchar(100) NOT NULL,
  `ID_status` varchar(100) NOT NULL,
  `QR_status` varchar(100) NOT NULL,
  `years_of_stay` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `digital_signature` varchar(255) NOT NULL,
  `qrCode` varchar(255) NOT NULL,
  `residentCode` varchar(100) NOT NULL,
  `residentPIN` varchar(10) NOT NULL,
  `date_registered` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=77 ;

--
-- Dumping data for table `residence`
--

INSERT INTO `residence` (`residenceId`, `firstname`, `middlename`, `lastname`, `suffix`, `dob`, `age`, `ageClassification`, `birthplace`, `gender`, `civilstatus`, `citizenship`, `occupation`, `religion`, `house_no`, `street_name`, `purok`, `zone`, `barangay`, `municipality`, `province`, `region`, `sector`, `resident_status`, `voter_status`, `ID_status`, `QR_status`, `years_of_stay`, `image`, `digital_signature`, `qrCode`, `residentCode`, `residentPIN`, `date_registered`) VALUES
(66, 'dddsdds', 'd', 'd', '', '1993-06-16', '29 years old', 'Adult', 'df', 'Female', 'Single', 'By Birth', 'fsd', 'Roman Catholic', 'fds', 'fds', 'fds', 'fds', 'fds', 'fds', 'fdsfsd', 'fdsf', 'PWD', 'Perma/Owned', 'Active', 'Active', 'None', '43', '2.jpg', '3.jpg', '', '', '', '2022-11-25'),
(67, 'dsd', 'd', 'd', '', '2016-03-09', '6 years old', 'Child', 'dsa', 'Male', 'Married', 'By Family', 'fdsf', 'Iglesia Ni Cristo', 'fdsf', 'dsf', 'fdsf', 'fdsf', 'dsfsd', 'fdsf', 'fsdfsd', 'fds', 'Senior Citizen', 'Perma/Owned', 'Active', 'Active', 'Active', '43', 'Screenshot (185).png', 'Screenshot (186).png', '', '', '', '2022-11-25'),
(69, 'Erwin', 'Cabag', 'Son', '', '1997-10-15', '25 years old', 'Adult', 'bvcbcb', 'Female', 'Separated', 'Naturalization', 'bvcbc', 'Ang Dating Daan', 'bvc', 'bcvbcb', 'vcbcb', 'vcbcv', 'bcvbc', 'bcvbcvbcv', 'bvc', 'bvcbc', 'Solo Parents', 'Tempo/Rented', 'Active', 'None', 'Active', '343', 'Screenshot (193).png', 'Screenshot (188).png', '../images-qr-codes/63a70b9feddb2.png', '', '', '2022-11-25'),
(70, 'fsfsd', 'fsdfsf', 'sdfs', '', '1952-07-09', '70 years old', 'Senior', 'fsfs', 'Non-Binary', 'Widow/ER', 'By Marriage', 'gfdgd', 'Islam', 'gfd', 'gdf', 'gfd', 'gfdg', 'fdgdf', 'gfdg', 'fdg', 'gfd', 'PWD', 'Tempo/Rented', 'None', 'None', 'None', '2', 'Screenshot (184).png', 'Screenshot (186).png', '', '', '', '2022-11-25'),
(71, 'fdgfdgdg', 'gwq', 'wq', 'w', '2022-11-10', '2 weeks old', 'Toddler', 'wq', 'Female', 'Widow/ER', 'By Family', 'wq', 'Protestants', 'wq', 'w', 'qwq', 'w', 'w', 'w', 'qwq', 'w', 'Solo Parents', 'Tempo/Rented', 'Active', 'Active', 'None', '3', '1fLSnJV.jpg', '1fLSnJV.jpg', '', '', '', '2022-11-27'),
(72, 'DADADAD', 'DADADAD', 'DADADAD', '', '2022-12-13', '6 days old', 'Toddler', 'DADADAD', 'Female', 'Married', 'By Marriage', 'DADADAD', 'Seventh-day Adventism', 'DADADAD', 'DADADAD', 'DADADAD', 'DADADAD', 'DADADAD', 'DADADAD', 'DADADAD', 'DADADAD', 'Senior Citizen', 'Tempo/Rented', 'Active', 'None', 'Active', '2', '315423302_2170759329772205_8153808227283622299_n.jpg', '315423302_2170759329772205_8153808227283622299_n.jpg', '../images-qr-codes/63a071bf9f8fa.png', '', '', '2022-12-19'),
(73, 'bvc', 'bvcb', 'bvc', '', '2022-12-15', '1 week old', 'Toddler', 'bvcb', 'Female', 'Separated', 'By Birth', 'bvc', 'Aglipayan', 'bvb', 'vcb', 'bvbv', 'bv', 'bvb', 'vbv', 'bvb', 'bv', 'Senior Citizen', 'Tempo/Rented', 'Inactive', 'Active', 'None', '343', '2.jpg', '3.jpg', '../images-qr-codes/63a3e7ab3bbcf.png', '', '', '2022-12-22'),
(74, 'dadaadadd', 'dadaadadd', 'dadaadadd', '', '2022-12-09', '1 week old', 'Toddler', 'dadaadadd', 'Male', 'Widow/ER', 'By Birth', 'dadaadadd', 'Bible Baptist Church', 'dadaadadd', 'dadaadadd', 'dadaadadd', 'dadaadadd', 'dadaadadd', 'dadaadadd', 'dadaadadd', 'dadaadadd', 'PWD', 'Tempo/Rented', 'None', 'Active', 'None', '23', '2.jpg', '4.jpg', '../images-qr-codes/63a3e807201e2.png', '', '', '2022-12-22'),
(75, 'Cong TV', 'Cong TV', 'Cong TV', '', '2022-12-15', '1 week old', 'Toddler', 'Cong TV', 'Male', 'Single', 'By Birth', 'Cong TV', 'United Church of Christ in the Philippines', 'Cong TV', 'Cong TV', 'Cong TV', 'Cong TV', 'Cong TV', 'Cong TV', 'Cong TV', 'Cong TV', 'Senior Citizen', 'Perma/Owned', 'Active', 'Active', 'Active', '2', '2.jpg', '3.jpg', '../images-qr-codes/63a3e9146f38c.png', 'BMS-63a3e9146f385', '123456', '2022-12-22'),
(76, 'Bonifacio', 'Bonifacio', 'Bonifacio', '', '2022-12-17', '1 week old', 'Toddler', 'BonifacioBonifacioBonifacioBonifacio', 'Male', 'Single', 'By Family', 'BonifacioBonifacio', 'Methodist', 'BonifacioBonifacio', 'BonifacioBonifacio', 'BonifacioBonifacio', 'BonifacioBonifacio', 'BonifacioBonifacio', 'BonifacioBonifacio', 'BonifacioBonifacio', 'BonifacioBonifacio', 'Senior Citizen', 'Tempo/Rented', 'Active', 'None', 'Active', '22', 'academia.png', 'aclc.png', '../images-qr-codes/63a70b9feddb2.png', 'BMS-63a70b9feddad', '', '2022-12-24');

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
(42, 'Winson404', 'Erwin', 'Cabag', 'Son', '', 'sonerwin12@gmail.com', '9359428963', '0192023a7bbd73250516f069df18b500', '636e2ff4b5ad2.png', 'Staff', '509828', '2022-10-22'),
(43, 'group2ilafi@gmail.com', 'Norlyn', 'Son', 'Gelig', '', 'Norlyngelig16@gmail.com', '9359428963', '0192023a7bbd73250516f069df18b500', '', 'Staff', '', '2022-12-28');

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
MODIFY `doc_Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
MODIFY `incomeId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `officials`
--
ALTER TABLE `officials`
MODIFY `officialID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `residence`
--
ALTER TABLE `residence`
MODIFY `residenceId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
