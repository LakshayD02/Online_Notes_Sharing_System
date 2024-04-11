-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2023 at 07:07 PM
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
-- Database: `onssdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblnotes`
--

CREATE TABLE `tblnotes` (
  `ID` int(5) NOT NULL,
  `UserID` int(5) DEFAULT NULL,
  `Subject` varchar(250) DEFAULT NULL,
  `NotesTitle` varchar(250) DEFAULT NULL,
  `NotesDecription` longtext DEFAULT NULL,
  `File1` varchar(250) DEFAULT NULL,
  `File2` varchar(250) DEFAULT NULL,
  `File3` varchar(255) DEFAULT NULL,
  `File4` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblnotes`
--

INSERT INTO `tblnotes` (`ID`, `UserID`, `Subject`, `NotesTitle`, `NotesDecription`, `File1`, `File2`, `File3`, `File4`, `CreationDate`, `UpdationDate`) VALUES
(1, 3, 'Math', 'Maths Shortcuts', 'It contain math shortcuts.', 'd41d8cd98f00b204e9800998ecf8427e1702536045.pdf', 'd41d8cd98f00b204e9800998ecf8427e1702536260', 'd41d8cd98f00b204e9800998ecf8427e1702536700', 'd41d8cd98f00b204e9800998ecf8427e1702534796.pdf', '2023-12-14 06:19:56', '2023-12-14 06:51:40'),
(2, 3, 'English', 'English Vocabulary', 'shgfgrhfgrw\r\nfdfhreiufyhw\r\nfewyhiufywe', 'd41d8cd98f00b204e9800998ecf8427e1702539232.pdf', 'd41d8cd98f00b204e9800998ecf8427e1702539232.pdf', 'd41d8cd98f00b204e9800998ecf8427e1702539232.pdf', '', '2023-12-14 07:33:52', NULL),
(3, 3, 'English', 'English Literature', 'shgfgrhfgrw\r\nfdfhreiufyhw\r\nfewyhiufywe', 'd41d8cd98f00b204e9800998ecf8427e1702539232.pdf', 'd41d8cd98f00b204e9800998ecf8427e1702539232.pdf', 'd41d8cd98f00b204e9800998ecf8427e1702539232.pdf', '', '2023-12-14 07:33:52', '2023-12-14 13:30:34'),
(4, 2, 'Math', 'Maths Shortcuts', 'It contain math shortcuts.', 'd41d8cd98f00b204e9800998ecf8427e1702536045.pdf', 'd41d8cd98f00b204e9800998ecf8427e1702536260', 'd41d8cd98f00b204e9800998ecf8427e1702536700', 'd41d8cd98f00b204e9800998ecf8427e1702534796.pdf', '2023-12-14 06:19:56', '2023-12-14 13:18:41'),
(5, 1, 'Math', 'Maths Shortcuts', 'It contain math shortcuts.', 'd41d8cd98f00b204e9800998ecf8427e1702536045.pdf', 'd41d8cd98f00b204e9800998ecf8427e1702536260', 'd41d8cd98f00b204e9800998ecf8427e1702536700', 'd41d8cd98f00b204e9800998ecf8427e1702534796.pdf', '2023-12-14 06:19:56', '2023-12-14 13:18:46'),
(6, 2, 'English', 'English Vocabulary', 'shgfgrhfgrw\r\nfdfhreiufyhw\r\nfewyhiufywe', 'd41d8cd98f00b204e9800998ecf8427e1702539232.pdf', 'd41d8cd98f00b204e9800998ecf8427e1702539232.pdf', 'd41d8cd98f00b204e9800998ecf8427e1702539232.pdf', '', '2023-12-14 07:33:52', '2023-12-14 13:18:51'),
(8, 4, 'PHP', 'PHP PDO, Array and Strings', 'PHP Data Object-PDO, Array and Strings', 'd41d8cd98f00b204e9800998ecf8427e1702662450.pdf', 'd41d8cd98f00b204e9800998ecf8427e1702662450.pdf', '', '', '2023-12-15 17:47:30', '2023-12-15 17:47:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(5) NOT NULL,
  `FullName` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Password` varchar(250) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(1, 'Abir Singh', 9798789789, 'abir@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-06-06 13:36:36'),
(2, 'Anuj Kumar', 1425362514, 'ak@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-06-11 11:48:57'),
(3, 'Raghav', 7897979878, 'rahgav@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-12-14 05:26:12'),
(4, 'John Doe', 1122112211, 'john12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-12-15 17:46:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblnotes`
--
ALTER TABLE `tblnotes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblnotes`
--
ALTER TABLE `tblnotes`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
