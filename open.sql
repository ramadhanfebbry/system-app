-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2014 at 02:39 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `open`
--

-- --------------------------------------------------------

--
-- Table structure for table `odm_access_log`
--

CREATE TABLE IF NOT EXISTS `odm_access_log` (
  `file_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `action` enum('A','B','C','V','D','M','X','I','O','Y','R') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odm_access_log`
--

INSERT INTO `odm_access_log` (`file_id`, `user_id`, `timestamp`, `action`) VALUES
(1, 1, '2014-06-12 21:15:57', 'A'),
(2, 2, '2014-06-12 21:20:29', 'A'),
(2, 2, '2014-06-12 21:20:49', 'M'),
(3, 1, '2014-06-13 09:50:15', 'A'),
(3, 1, '2014-06-13 09:50:54', 'V'),
(3, 1, '2014-06-14 19:42:08', 'V'),
(4, 5, '2014-06-14 20:02:53', 'A'),
(4, 5, '2014-06-14 20:03:07', 'M'),
(4, 5, '2014-06-14 20:03:54', 'D'),
(4, 5, '2014-06-14 20:03:58', 'V'),
(4, 5, '2014-06-14 20:05:09', 'O'),
(4, 5, '2014-06-14 20:05:09', 'D'),
(1, 6, '2014-06-14 20:10:33', 'R'),
(2, 6, '2014-06-14 20:10:33', 'R'),
(3, 6, '2014-06-14 20:10:33', 'R'),
(4, 6, '2014-06-14 20:11:27', 'Y'),
(4, 5, '2014-06-14 20:12:54', 'V'),
(4, 5, '2014-06-14 20:17:13', 'I'),
(4, 6, '2014-06-14 20:18:19', 'Y'),
(4, 5, '2014-06-14 20:18:56', 'O'),
(4, 5, '2014-06-14 20:18:56', 'D'),
(4, 5, '2014-06-14 20:19:19', 'V'),
(4, 2, '2014-06-14 20:21:03', 'V'),
(4, 1, '2014-06-16 01:01:00', 'V'),
(5, 1, '2014-06-16 01:07:34', 'A'),
(5, 1, '2014-06-16 01:08:19', 'Y'),
(5, 1, '2014-06-16 01:08:34', 'V'),
(5, 1, '2014-06-16 01:10:44', 'O'),
(5, 1, '2014-06-16 01:10:44', 'D'),
(5, 1, '2014-06-16 01:13:37', 'I'),
(5, 1, '2014-06-16 01:14:11', 'Y'),
(6, 2, '2014-06-16 01:16:04', 'A'),
(6, 6, '2014-06-16 01:17:08', 'Y'),
(6, 6, '2014-06-16 01:17:26', 'O'),
(6, 6, '2014-06-16 01:17:26', 'D'),
(4, 6, '2014-06-16 01:27:49', 'V'),
(4, 1, '2014-06-16 01:32:42', 'V'),
(5, 1, '2014-06-16 01:33:54', 'X'),
(2, 1, '2014-06-16 01:34:13', 'Y'),
(2, 1, '2014-06-16 01:34:23', 'X'),
(1, 1, '2014-06-16 01:34:46', 'V'),
(1, 1, '2014-06-16 01:34:53', 'X'),
(3, 1, '2014-06-16 01:35:17', 'X'),
(4, 5, '2014-06-16 01:36:34', 'I'),
(6, 6, '2014-06-16 01:39:31', 'I'),
(4, 6, '2014-06-16 01:39:45', 'X'),
(6, 6, '2014-06-16 01:39:58', 'X'),
(7, 2, '2014-06-16 01:43:30', 'A'),
(7, 6, '2014-06-16 01:44:31', 'Y'),
(7, 5, '2014-06-16 01:45:48', 'V'),
(7, 5, '2014-06-16 01:48:19', 'D'),
(7, 2, '2014-06-16 01:53:15', 'M'),
(7, 5, '2014-06-16 01:54:14', 'O'),
(7, 5, '2014-06-16 01:54:14', 'D'),
(7, 5, '2014-06-16 01:55:06', 'I'),
(7, 6, '2014-06-16 01:55:55', 'Y'),
(7, 5, '2014-06-16 01:58:02', 'O'),
(7, 5, '2014-06-16 01:58:02', 'D'),
(7, 5, '2014-06-16 01:58:21', 'I'),
(8, 7, '2014-06-16 04:31:45', 'A'),
(8, 1, '2014-06-16 04:32:29', 'V'),
(8, 1, '2014-06-16 04:32:49', 'Y'),
(9, 1, '2014-08-29 19:31:56', 'A'),
(9, 1, '2014-08-29 19:32:29', 'M'),
(9, 1, '2014-08-29 19:32:52', 'O'),
(9, 1, '2014-08-29 19:32:52', 'D'),
(9, 1, '2014-08-29 19:35:17', 'I'),
(9, 1, '2014-08-29 19:36:17', 'V'),
(9, 8, '2014-08-29 19:38:17', 'V'),
(9, 8, '2014-08-29 19:38:43', 'D'),
(9, 8, '2014-08-29 19:39:11', 'O'),
(9, 8, '2014-08-29 19:39:11', 'D'),
(9, 8, '2014-08-29 19:41:49', 'Y'),
(9, 8, '2014-08-29 19:42:00', 'V'),
(7, 1, '2014-08-29 19:43:37', 'Y'),
(10, 9, '2014-08-29 19:46:20', 'A'),
(10, 8, '2014-08-29 19:49:47', 'Y'),
(9, 8, '2014-08-29 19:50:34', 'I'),
(9, 8, '2014-08-29 19:50:57', 'Y'),
(9, 8, '2014-08-29 19:56:06', 'O'),
(9, 8, '2014-08-29 19:56:06', 'D'),
(9, 8, '2014-08-29 19:57:15', 'I'),
(9, 8, '2014-08-29 19:57:30', 'Y'),
(7, 9, '2014-08-29 20:40:39', 'V'),
(7, 9, '2014-08-29 20:41:52', 'V'),
(10, 9, '2014-08-31 17:27:43', 'O'),
(10, 9, '2014-08-31 17:27:43', 'D'),
(11, 1, '2014-08-31 17:43:17', 'A'),
(12, 1, '2014-08-31 19:36:32', 'A'),
(13, 1, '2014-08-31 19:37:17', 'A'),
(14, 1, '2014-08-31 19:37:58', 'A'),
(13, 1, '2014-08-31 19:38:28', 'Y'),
(11, 1, '2014-08-31 19:38:28', 'Y'),
(12, 1, '2014-08-31 19:38:28', 'Y'),
(14, 1, '2014-08-31 19:38:28', 'Y'),
(14, 1, '2014-08-31 19:42:40', 'X'),
(11, 1, '2014-08-31 19:43:27', 'X'),
(15, 1, '2014-08-31 19:44:06', 'A'),
(15, 1, '2014-08-31 19:44:58', 'R'),
(15, 1, '2014-08-31 19:45:58', 'R'),
(15, 1, '2014-08-31 19:58:07', 'Y'),
(7, 1, '2014-08-31 20:03:11', 'V'),
(16, 1, '2014-09-01 01:18:01', 'A'),
(16, 1, '2014-09-04 01:44:26', 'Y'),
(17, 10, '2014-09-04 02:33:15', 'A'),
(7, 10, '2014-09-04 02:33:43', 'V'),
(7, 10, '2014-09-04 02:34:23', 'V'),
(17, 12, '2014-09-04 02:37:26', 'V'),
(17, 12, '2014-09-04 02:39:24', 'Y'),
(17, 10, '2014-09-04 02:40:12', 'O'),
(17, 10, '2014-09-04 02:40:12', 'D'),
(17, 10, '2014-09-04 02:42:11', 'I'),
(7, 10, '2014-10-23 08:02:23', 'V'),
(13, 1, '2014-10-23 08:03:13', 'O'),
(13, 1, '2014-10-23 08:03:13', 'D'),
(18, 15, '2014-11-26 03:42:09', 'A'),
(18, 1, '2014-11-26 03:43:23', 'Y'),
(9, 1, '2014-11-26 19:35:08', 'V'),
(9, 1, '2014-11-26 19:35:18', 'X'),
(12, 1, '2014-11-26 19:35:59', 'X'),
(15, 1, '2014-11-26 19:36:19', 'X'),
(16, 1, '2014-11-26 19:36:26', 'X'),
(18, 1, '2014-11-26 19:36:34', 'X'),
(13, 1, '2014-11-26 19:37:07', 'I'),
(13, 1, '2014-11-26 19:37:35', 'R'),
(17, 1, '2014-11-26 19:37:35', 'R'),
(10, 1, '2014-11-26 19:37:43', 'V'),
(13, 1, '2014-11-26 19:37:58', 'X'),
(19, 1, '2014-11-26 20:18:22', 'A'),
(19, 1, '2014-11-26 20:18:39', 'V'),
(19, 1, '2014-11-26 20:19:24', 'M'),
(19, 1, '2014-11-26 20:20:35', 'Y'),
(19, 1, '2014-11-26 20:20:49', 'V'),
(19, 1, '2014-11-26 20:21:41', 'V'),
(19, 1, '2014-11-26 20:22:05', 'V'),
(19, 1, '2014-11-26 20:22:12', 'D'),
(19, 1, '2014-11-26 20:23:59', 'O'),
(19, 1, '2014-11-26 20:23:59', 'D'),
(19, 1, '2014-11-26 20:25:23', 'I'),
(19, 1, '2014-11-26 20:25:33', 'V'),
(19, 1, '2014-11-27 04:21:38', 'Y'),
(19, 1, '2014-11-27 04:23:08', 'V'),
(19, 1, '2014-11-27 04:24:06', 'X'),
(20, 14, '2014-11-27 04:32:31', 'A'),
(20, 1, '2014-11-27 04:33:27', 'V'),
(20, 1, '2014-11-27 04:34:25', 'Y'),
(20, 14, '2014-11-27 04:35:20', 'O'),
(20, 14, '2014-11-27 04:35:20', 'D'),
(20, 14, '2014-11-27 04:40:22', 'I'),
(20, 1, '2014-11-27 04:40:57', 'Y'),
(20, 1, '2014-11-27 04:42:19', 'X'),
(21, 14, '2014-11-27 04:45:20', 'A'),
(10, 13, '2014-12-11 16:22:38', 'V'),
(22, 1, '2014-12-11 16:25:25', 'A'),
(22, 1, '2014-12-11 16:27:21', 'Y'),
(22, 1, '2014-12-11 16:28:41', 'O'),
(22, 1, '2014-12-11 16:28:41', 'D'),
(23, 1, '2014-12-17 13:26:17', 'A'),
(23, 1, '2014-12-17 13:28:38', 'Y'),
(23, 1, '2014-12-17 13:30:12', 'O'),
(23, 1, '2014-12-17 13:30:12', 'D'),
(10, 1, '2014-12-17 13:31:53', 'V');

-- --------------------------------------------------------

--
-- Table structure for table `odm_admin`
--

CREATE TABLE IF NOT EXISTS `odm_admin` (
  `id` int(11) unsigned DEFAULT NULL,
  `admin` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odm_admin`
--

INSERT INTO `odm_admin` (`id`, `admin`) VALUES
(1, 1),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0);

-- --------------------------------------------------------

--
-- Table structure for table `odm_category`
--

CREATE TABLE IF NOT EXISTS `odm_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `odm_category`
--

INSERT INTO `odm_category` (`id`, `name`) VALUES
(1, 'SOP'),
(2, 'Training Manual'),
(3, 'Letter'),
(4, 'Presentation');

-- --------------------------------------------------------

--
-- Table structure for table `odm_data`
--

CREATE TABLE IF NOT EXISTS `odm_data` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category` int(11) unsigned NOT NULL DEFAULT '0',
  `owner` int(11) unsigned DEFAULT NULL,
  `realname` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT '',
  `status` smallint(6) DEFAULT NULL,
  `department` smallint(6) unsigned DEFAULT NULL,
  `default_rights` tinyint(4) DEFAULT NULL,
  `publishable` tinyint(4) DEFAULT NULL,
  `reviewer` int(11) unsigned DEFAULT NULL,
  `reviewer_comments` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `data_idx` (`id`,`owner`),
  KEY `id` (`id`),
  KEY `id_2` (`id`),
  KEY `publishable` (`publishable`),
  KEY `description` (`description`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `odm_data`
--

INSERT INTO `odm_data` (`id`, `category`, `owner`, `realname`, `created`, `description`, `comment`, `status`, `department`, `default_rights`, `publishable`, `reviewer`, `reviewer_comments`) VALUES
(10, 3, 9, 'INDONESIA.docx', '2014-08-30 02:46:20', 'tes', 'yes', 9, 3, 0, 1, 8, 'To=Author(s);Subject=;Comments=not bad;'),
(8, 1, 7, 'C. SILABUS.doc', '2014-06-16 11:31:45', 'ts', 'testes', 0, 3, 0, -1, 1, 'To=Penerbit;Subject=File kadaluarsa;Comments=Your file was rejected because you did not revise it for more than 90 hari'),
(7, 3, 2, 'A. SYARAT BELAJAR INI.docx', '2014-06-16 08:43:30', '', '', 0, 1, 0, -1, 1, 'To=Penerbit;Subject=File kadaluarsa;Comments=Your file was rejected because you did not revise it for more than 90 hari'),
(23, 3, 1, 'INDONESIA.docx', '2014-12-17 20:26:17', 'tyty', 'thtgh', 1, 1, 0, 1, 1, 'To=Author(s);Subject=rtrt;Comments=gtgt;'),
(17, 4, 10, 'Flowchart.docx', '2014-09-04 09:33:15', 'flowchart', 'flowchart', 0, 1, 0, -1, 1, 'To=Author(s);Subject=;Comments=;'),
(21, 3, 14, 'Flowchart.docx', '2014-11-27 11:45:20', '', '', 0, 3, 0, 0, NULL, NULL),
(22, 3, 1, 'Flowchart.docx', '2014-12-11 23:25:25', 'hapus', 'hapus', 1, 1, 0, 1, 1, 'To=Author(s);Subject=okjjij;Comments=jhgfihgfihgf;');

-- --------------------------------------------------------

--
-- Table structure for table `odm_department`
--

CREATE TABLE IF NOT EXISTS `odm_department` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `odm_department`
--

INSERT INTO `odm_department` (`id`, `name`) VALUES
(1, 'Information Systems'),
(2, 'keuangan'),
(3, 'IT'),
(4, 'SDM');

-- --------------------------------------------------------

--
-- Table structure for table `odm_dept_perms`
--

CREATE TABLE IF NOT EXISTS `odm_dept_perms` (
  `fid` int(11) unsigned DEFAULT NULL,
  `dept_id` int(11) unsigned DEFAULT NULL,
  `rights` tinyint(4) NOT NULL DEFAULT '0',
  KEY `rights` (`rights`),
  KEY `dept_id` (`dept_id`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odm_dept_perms`
--

INSERT INTO `odm_dept_perms` (`fid`, `dept_id`, `rights`) VALUES
(10, 4, 0),
(10, 2, 0),
(10, 3, 1),
(10, 1, 0),
(8, 4, 0),
(8, 2, 0),
(8, 3, 1),
(8, 1, 0),
(7, 4, 2),
(7, 2, 2),
(7, 3, 2),
(7, 1, 2),
(23, 4, 0),
(23, 2, 0),
(23, 3, 0),
(23, 1, 1),
(22, 4, 0),
(22, 2, 0),
(22, 3, 0),
(22, 1, 1),
(17, 1, 1),
(17, 3, 0),
(17, 2, 0),
(17, 4, 0),
(21, 4, 0),
(21, 2, 0),
(21, 3, 1),
(21, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `odm_dept_reviewer`
--

CREATE TABLE IF NOT EXISTS `odm_dept_reviewer` (
  `dept_id` int(11) unsigned DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odm_dept_reviewer`
--

INSERT INTO `odm_dept_reviewer` (`dept_id`, `user_id`) VALUES
(1, 1),
(3, 3),
(1, 4),
(3, 4),
(2, 4),
(4, 4),
(1, 6),
(3, 6),
(2, 6),
(4, 6),
(1, 7),
(1, 8),
(3, 8),
(2, 8),
(4, 8),
(3, 11),
(1, 12),
(4, 13),
(2, 13),
(3, 13),
(1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `odm_filetypes`
--

CREATE TABLE IF NOT EXISTS `odm_filetypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `odm_filetypes`
--

INSERT INTO `odm_filetypes` (`id`, `type`, `active`) VALUES
(1, 'image/gif', 1),
(2, 'text/html', 1),
(3, 'text/plain', 1),
(4, 'application/pdf', 1),
(5, 'image/pdf', 1),
(6, 'application/x-pdf', 1),
(7, 'application/msword', 1),
(8, 'image/jpeg', 1),
(9, 'image/pjpeg', 1),
(10, 'image/png', 1),
(11, 'application/msexcel', 1),
(12, 'application/msaccess', 1),
(13, 'text/richtxt', 1),
(14, 'application/mspowerpoint', 1),
(15, 'application/octet-stream', 1),
(16, 'application/x-zip-compressed', 1),
(17, 'application/zip', 1),
(18, 'image/tiff', 1),
(19, 'image/tif', 1),
(20, 'application/vnd.ms-powerpoint', 1),
(21, 'application/vnd.ms-excel', 1),
(22, 'application/vnd.openxmlformats-officedocument.presentationml.presentation', 1),
(23, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 1),
(24, 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 1),
(25, 'application/vnd.oasis.opendocument.chart', 1),
(26, 'application/vnd.oasis.opendocument.chart-template', 1),
(27, 'application/vnd.oasis.opendocument.formula', 1),
(28, 'application/vnd.oasis.opendocument.formula-template', 1),
(29, 'application/vnd.oasis.opendocument.graphics', 1),
(30, 'application/vnd.oasis.opendocument.graphics-template', 1),
(31, 'application/vnd.oasis.opendocument.image', 1),
(32, 'application/vnd.oasis.opendocument.image-template', 1),
(33, 'application/vnd.oasis.opendocument.presentation', 1),
(34, 'application/vnd.oasis.opendocument.presentation-template', 1),
(35, 'application/vnd.oasis.opendocument.spreadsheet', 1),
(36, 'application/vnd.oasis.opendocument.spreadsheet-template', 1),
(37, 'application/vnd.oasis.opendocument.text', 1),
(38, 'application/vnd.oasis.opendocument.text-master', 1),
(39, 'application/vnd.oasis.opendocument.text-template', 1),
(40, 'application/vnd.oasis.opendocument.text-web', 1),
(41, 'text/csv', 1),
(42, 'audio/mpeg', 0),
(43, 'image/x-dwg', 1),
(44, 'image/x-dfx', 1),
(45, 'drawing/x-dwf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `odm_log`
--

CREATE TABLE IF NOT EXISTS `odm_log` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(25) DEFAULT NULL,
  `note` text,
  `revision` varchar(255) DEFAULT NULL,
  KEY `id` (`id`),
  KEY `modified_on` (`modified_on`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odm_log`
--

INSERT INTO `odm_log` (`id`, `modified_on`, `modified_by`, `note`, `revision`) VALUES
(10, '2014-08-30 02:46:20', 'dave', 'Initial import', 'current'),
(8, '2014-06-16 11:31:45', 'john', 'Initial import', 'current'),
(7, '2014-06-16 08:55:06', 'jonas', '', '1'),
(7, '2014-06-16 08:58:21', 'jonas', '', 'current'),
(7, '2014-06-16 08:43:30', 'galih', 'Initial import', '0'),
(23, '2014-12-17 20:26:17', 'admin', 'Initial import', 'current'),
(22, '2014-12-11 23:25:25', 'admin', 'Initial import', 'current'),
(17, '2014-09-04 09:33:15', 'karyawan', 'Initial import', '0'),
(17, '2014-09-04 09:42:11', 'karyawan', 'sudah', 'current'),
(21, '2014-11-27 11:45:20', 'user', 'Initial import', 'current');

-- --------------------------------------------------------

--
-- Table structure for table `odm_odmsys`
--

CREATE TABLE IF NOT EXISTS `odm_odmsys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sys_name` varchar(16) DEFAULT NULL,
  `sys_value` varchar(255) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `odm_rights`
--

CREATE TABLE IF NOT EXISTS `odm_rights` (
  `RightId` tinyint(4) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odm_rights`
--

INSERT INTO `odm_rights` (`RightId`, `Description`) VALUES
(0, 'none'),
(1, 'view'),
(-1, 'forbidden'),
(2, 'read'),
(3, 'write'),
(4, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `odm_settings`
--

CREATE TABLE IF NOT EXISTS `odm_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `validation` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `odm_settings`
--

INSERT INTO `odm_settings` (`id`, `name`, `value`, `description`, `validation`) VALUES
(3, 'authen', 'mysql', '(Default = mysql) Currently only MySQL authentication is supported', ''),
(4, 'title', 'Knowledge Sharing Document', 'This is the browser window title', 'maxsize=255'),
(5, 'site_mail', 'muktimuhari@gmail.com', 'The email address of the administrator of this site', 'email|maxsize=255|req'),
(6, 'root_id', '1', 'This variable sets the root user id.  The root user will be able to access all files and have authority for everything.', 'num|req'),
(7, 'dataDir', 'c:/xampp/htdocs/system/data/', 'location of file repository. This should ideally be outside the Web server root. Make sure the server has permissions to read/write files to this folder!. (Examples: Linux - /var/www/document_repository/ : Windows - c:/document_repository/', 'maxsize=255'),
(8, 'max_filesize', '5000000', 'Set the maximum file upload size', 'num|maxsize=255'),
(9, 'revision_expiration', '90', 'This var sets the amount of days until each file needs to be revised,  assuming that there are 30 days in a month for all months.', 'num|maxsize=255'),
(10, 'file_expired_action', '1', 'Choose an action option when a file is found to be expired The first two options also result in sending email to reviewer  (1) Remove from file list until renewed (2) Show in file list but non-checkoutable (3) Send email to reviewer only (4) Do Nothing', 'num'),
(11, 'authorization', 'True', 'True or False. If set True, every document must be reviewed by an admin before it can go public. To disable set to False. If False, all newly added/checked-in documents will immediately be listed', 'bool'),
(12, 'secureurl', 'True', 'Secure URL control: On or Off (case sensitive). When set to "On", all urls will be secured. When set to "Off", all urls are normal and readable', 'bool'),
(13, 'allow_signup', 'False', 'Should we display the sign-up link?', 'bool'),
(14, 'allow_password_reset', 'False', 'Should we allow users to reset their forgotten password?', 'bool'),
(19, 'max_query', '500', 'Set this to the maximum number of rows you want to be returned in a file listing. If your file list is slow decrease this value.', 'num'),
(16, 'theme', 'tweeter', 'Which theme to use?', ''),
(17, 'language', 'english', 'Set the default language (english, spanish, turkish, etc.). Local users may override this setting. Check include/language folder for languages available', 'alpha|req'),
(18, 'base_url', 'http://localhost/system', 'Set this to the url of the site. No need for trailing "/" here', 'url');

-- --------------------------------------------------------

--
-- Table structure for table `odm_udf`
--

CREATE TABLE IF NOT EXISTS `odm_udf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(50) DEFAULT NULL,
  `display_name` varchar(16) DEFAULT NULL,
  `field_type` int(11) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `odm_user`
--

CREATE TABLE IF NOT EXISTS `odm_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `department` int(11) unsigned DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `pw_reset_code` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `odm_user`
--

INSERT INTO `odm_user` (`id`, `username`, `password`, `department`, `phone`, `Email`, `last_name`, `first_name`, `pw_reset_code`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, '29292202016', 'dave_kidneyz@myself.com', 'muhari', 'mukti', ''),
(15, 'mukti', '9870707091e577de88930ce558347125', 4, '08675478757', 'dave_kidneyz@myself.com', 'muhari', 'mukti', NULL),
(16, 'user5', '8d6c391e7cb39133c91b73281a24f21f', 3, '070797979639', 'mukti_muhari@yahoo.co.id', 'user5', 'user5', NULL),
(13, 'validator', '8d6c391e7cb39133c91b73281a24f21f', 1, '02820222', 'validator@y.com', 'validator', 'validator', NULL),
(14, 'user', '9bc65c2abec141778ffaa729489f3e87', 3, '068426899829', 'user@y.com', 'user', 'user', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `odm_user_perms`
--

CREATE TABLE IF NOT EXISTS `odm_user_perms` (
  `fid` int(11) unsigned DEFAULT NULL,
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `rights` tinyint(4) NOT NULL DEFAULT '0',
  KEY `user_perms_idx` (`fid`,`uid`,`rights`),
  KEY `fid` (`fid`),
  KEY `uid` (`uid`),
  KEY `rights` (`rights`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odm_user_perms`
--

INSERT INTO `odm_user_perms` (`fid`, `uid`, `rights`) VALUES
(7, 2, 4),
(7, 5, 3),
(8, 2, 3),
(8, 7, 4),
(10, 9, 4),
(17, 10, 4),
(21, 14, 4),
(22, 1, 4),
(23, 1, 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
