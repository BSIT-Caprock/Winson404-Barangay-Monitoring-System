-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2022 at 10:50 AM
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
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_Id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
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
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `digital_signature` varchar(255) NOT NULL,
  `user_status` varchar(20) NOT NULL DEFAULT 'Pending',
  `user_type` varchar(20) NOT NULL DEFAULT 'Resident',
  `verification_code` varchar(255) NOT NULL,
  `date_registered` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_Id`, `username`, `firstname`, `middlename`, `lastname`, `suffix`, `dob`, `age`, `ageClassification`, `birthplace`, `gender`, `civilstatus`, `citizenship`, `occupation`, `house_no`, `street_name`, `purok`, `zone`, `barangay`, `municipality`, `province`, `region`, `sector`, `resident_status`, `voter_status`, `ID_status`, `QR_status`, `years_of_stay`, `email`, `contact`, `password`, `image`, `digital_signature`, `user_status`, `user_type`, `verification_code`, `date_registered`) VALUES
(40, 'Admin', 'Erwin', 'Cabag', 'Son', '', '2022-10-31', '12 years old', 'Child', '', 'Male', '', '', '', 'Purok San Isidro, Sitio Upper Landing, Daanlungsod, Medellin, Cebu', '0', '', '', '', '', '', '', '', 'Permanent', '', '', '', '', 'admin@gmail.com', '9359428961', '0192023a7bbd73250516f069df18b500', 'wallpaperflare.com_wallpaper.jpg', '', 'Confirmed', 'Admin', '374025', '2022-09-10'),
(42, '', 'Erwin', 'Cabag', 'Son', 'Sr', '2021-02-10', '1 year old', 'Teen', 'gfdgd', 'Female', 'Single', 'dgfdgf', 'd', 'Purok San Isidro, Sitio Upper Landing, Daanlungsod, Medellin, Cebu', '0jhgj', 'gf', 'gf', 'gf', 'gfd', 'gf', 'gf', 'Senior Citizen', 'Non-Resident', 'Inactive', 'Active', 'None', '45', 'sonerwin12@gmail.com', '9359428963', '0192023a7bbd73250516f069df18b500', '636e2ff4b5ad2.png', 'Screenshot (194).png', 'Confirmed', 'Temporary', '841930', '2022-10-22'),
(45, '', 'Erwinfd', 'Cabag', 'Son', '', '1952-07-16', '70 years old', 'Senior', 'ds', 'Male', 'Married', 'By Family', 'gfdgd', 'Purok San Isidro, Sitio Upper Landing, Daanlungsod, Medellin, Cebu', 'gfd', 'gfdgd', 'f', 'ff', 'gfdg', 'dfgd', 'fdgdgdg', 'Solo Parents', 'Temporary', 'Inactive', 'Active', 'Active', '543', 'sonerwin12dd@gmail.com', '9359428963', '4d6d955ca289f82e3a6e1f52f40108f3', 'minimalism-1644666519306-6515.jpg', '', 'Pending', 'Resident', '', '2022-10-22'),
(56, '', 'dsaddsaxxxxx', 's', 'sq', 'sq', '2022-11-11', '1 month old', 'Young', 'qs', 'Female', 'Single', 'fdsfdsf', 'dsfsdf', 'fdsf', '0', 'sdfsdfsf', 'dsfdsfdsf', 'sdfsdfs', 'fsdfsdf', 'dsq', 's', 'Senior Citizen', 'Permanent', 'None', 'None', 'None', '43', '', '', '', '636e2ee04ac45.png', '1fLSnJV.jpg', 'Pending', 'Resident', '', '2022-11-23'),
(59, 'fvb', 'fvb', 'fvb', 'fvb', 'fvb', '', '2 months old', 'Senior', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'vbfdfdsfsdsfd23fs@gmail.com', '9359428963', '4d6d955ca289f82e3a6e1f52f40108f3', '', '', 'Pending', 'Staff', '', '2022-11-23'),
(61, 'fg', 'fgfd', 'fg', 'fg', '', '', '0', 'Toddler', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'sonerwin12fgfg@gmail.com', '9359428963', 'f8b1644ac14529df029ac52b7b762493', '', '', 'Pending', '', '', '2022-11-23'),
(62, '', 'x', 'x', 'x', '', '2022-11-11', '1', 'Teen', 'fd', 'Non-Binary', 'Widow/ER', 'By Marriage', 'gfd', 'f', 'f', 'f', 's', 's', 's', 's', 's', 'Senior Citizen', 'Temporary', 'Active', 'Active', 'Active', '2', '', '', '', 'minimalism-1644666519306-6515.jpg', 'wallpaperflare.com_wallpaper.jpg', 'Pending', 'Resident', '', '2022-11-23'),
(63, '', 'gdfgdfgg', 'fdgdfg', 'fdgdf', '', '2022-11-03', '3 weeks old', 'Child', 'gfdg', 'Male', 'Separated', 'By Investment', 'fdgfdh', 'hgfh', 'gfhfg', 'hgfhfhg', 'fhgfhfg', 'hgfhf645;;', 'hgfh', 'gfhfgh', 'hgf', 'PWD', 'Permanent', 'Inactive', 'None', 'Active', '453', '', '', '', 'minimalism-1644666519306-6515.jpg', 'minimalism-1644666519306-6515.jpg', 'Pending', 'Resident', '', '2022-11-24'),
(64, 'aa', 'aaa', 'aaa', 'aaa', 'aa', '', '0', 'Adult', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'nhsmedellin@gmail.com', '9359428963', '0192023a7bbd73250516f069df18b500', 'wallpaperflare.com_wallpaper.jpg', '', 'Pending', 'Staff', '', '2022-11-24'),
(65, '', 'nm', 'nm', 'nm', '', '1991-03-13', '31 years old', 'Adult', 'nm', 'Male', 'Married', 'By Birth', 'nm', 'nm', 'nm', 'nm', 'nm', 'nm', 'nm', 'nm', 'nm', 'Senior Citizen', 'Temporary', 'Active', 'None', 'None', '213', '', '', '', '4297150.jpg', '316713483_1944528502555346_5629067299589015979_n.jpg', 'Pending', 'Resident', '', '2022-11-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=66;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
