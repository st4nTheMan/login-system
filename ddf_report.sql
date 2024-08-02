-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2024 at 03:52 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ddf_report`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reason`
--

CREATE TABLE `tbl_reason` (
  `reason_code` int(11) NOT NULL,
  `reason_desc` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_reason`
--

INSERT INTO `tbl_reason` (`reason_code`, `reason_desc`) VALUES
(1001, 'Discrepancy'),
(1002, 'Damage'),
(1003, 'Faulty');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_report_list`
--

CREATE TABLE `tbl_report_list` (
  `report_id` int(11) NOT NULL,
  `forwarder` varchar(250) DEFAULT NULL,
  `supllier_name` varchar(255) DEFAULT NULL,
  `waybill_no` int(11) DEFAULT NULL,
  `invoice_no` int(11) DEFAULT NULL,
  `reason` varchar(250) DEFAULT NULL,
  `invoice_qty` int(11) DEFAULT NULL,
  `actual_qty` int(11) DEFAULT NULL,
  `damage_qty` int(11) DEFAULT NULL,
  `good_qty` int(11) DEFAULT NULL,
  `item_desc` varchar(250) DEFAULT NULL,
  `report_details` varchar(250) DEFAULT NULL,
  `file` varchar(250) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `report_date` varchar(250) DEFAULT NULL,
  `receive_date` varchar(250) DEFAULT NULL,
  `receive_by` varchar(250) DEFAULT NULL,
  `receive` varchar(255) DEFAULT NULL,
  `merchandising_remarks` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_report_list`
--

INSERT INTO `tbl_report_list` (`report_id`, `forwarder`, `supllier_name`, `waybill_no`, `invoice_no`, `reason`, `invoice_qty`, `actual_qty`, `damage_qty`, `good_qty`, `item_desc`, `report_details`, `file`, `status`, `report_date`, `receive_date`, `receive_by`, `receive`, `merchandising_remarks`) VALUES
(25, 'phene', 'makita', 745, 14231, '1002', 1, 1, 1, NULL, 'Makita drill', 'No drill bit', '', '2002', '2023-10-27 11:38:16', '2023-10-27 17:04:01', NULL, 'Yes', 'test 2'),
(26, 'sd', 'ds', 745, 14115, '1002', 4, 4, 3, NULL, 'asd', 'd', '', '2003', '2023-10-27 11:46:21', '2023-11-25 15:50:37', NULL, 'No', 'Update by merch'),
(27, 'andrew', 'metabo', 784, 4121, '1001', 12, 12, 12, NULL, 'metabo', 'dsa', '', '2002', '2023-10-27 11:46:54', '2023-11-06 16:55:20', NULL, 'Yes', NULL),
(28, 'andrew', 'metabo', 784, 4121, '1001', 12, 12, 12, NULL, 'metabo', 'Metabo 600563420 13.5 Amp Variable Speed 6 in. Corded Angle Grinder', '', '2003', '2023-10-27 11:47:27', '2023-11-17 15:03:50', NULL, 'Yes', 'test'),
(29, 'andrew', 'metabo', 784, 4121, '1001', 12, 12, 12, NULL, 'Metabo 600563420 13.5 Amp Variable Speed 6 in. Corded Angle Grinder', ' wheels are mounted in unsuitable or improvised ways or on tools not designed for that type of disc', '', '2001', '2023-10-27 11:47:48', '2023-11-17 13:16:21', NULL, 'Yes', 'return supplier'),
(30, 'Dina', 'Lotus', 748, 14157, '1002', 10, 10, 1, NULL, 'Lotus Rotary Tool 211 Pcs Accessories LRT170C ', 'a great replacement for a cutter, drill, sander, polisher, and many other power tools', '', '2002', '2023-10-27 13:14:06', '2023-11-17 13:15:58', NULL, 'Yes', NULL),
(31, 'Stephene', 'Lotus', 48412, 41257, '1002', 10, 10, 1, 9, 'Lotus Angle Grinder 4 650w LAG115Z1', 'Did not power on', 'lotus.png', '2001', '2023-11-30 09:29:49', '2023-11-30 09:30:38', NULL, 'Yes', 'Return to supplier'),
(32, 'ds', 'sd', 213, 23, '1002', 4, 1, 2, 3, 'ewe', 'wew', '', '2001', '2024-02-09 11:03:07', '2024-02-09 11:03:39', NULL, 'Yes', 'return to supplier');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status`
--

CREATE TABLE `tbl_status` (
  `status_id` int(11) NOT NULL,
  `status_desc` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_status`
--

INSERT INTO `tbl_status` (`status_id`, `status_desc`) VALUES
(2001, 'Pending'),
(2002, 'Open'),
(2003, 'Close'),
(2004, 'Resolve');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(250) DEFAULT NULL,
  `password` VARCHAR(250) DEFAULT NULL,
  `name` VARCHAR(250) DEFAULT NULL,
  `date_created` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_reason`
--
ALTER TABLE `tbl_reason`
  ADD PRIMARY KEY (`reason_code`);

--
-- Indexes for table `tbl_report_list`
--
ALTER TABLE `tbl_report_list`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_report_list`
--
ALTER TABLE `tbl_report_list`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
