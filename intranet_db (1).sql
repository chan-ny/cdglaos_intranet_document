-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: May 05, 2022 at 09:58 AM
-- Server version: 8.0.28
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `intranet_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `Abilities`
--

CREATE TABLE `Abilities` (
  `at_Id` int NOT NULL,
  `employee_Id` varchar(12) NOT NULL,
  `at_language` varchar(150) DEFAULT NULL,
  `at_speciafic` text,
  `at_detail` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `ac_Id` int NOT NULL,
  `typeaccount_Id` int NOT NULL,
  `employee_id` varchar(12) NOT NULL,
  `ac_title` varchar(200) DEFAULT NULL,
  `ac_content` text,
  `ac_image` varchar(255) DEFAULT NULL,
  `ac_status` varchar(15) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Approved_Trainings`
--

CREATE TABLE `Approved_Trainings` (
  `appt_Id` int NOT NULL,
  `hr_Id` int NOT NULL,
  `training_Id` int NOT NULL,
  `approved_on` varchar(60) DEFAULT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Approved_vacations`
--

CREATE TABLE `Approved_vacations` (
  `appd_Id` int NOT NULL,
  `hr_Id` int NOT NULL,
  `vacation_Id` int NOT NULL,
  `approved_on` varchar(60) DEFAULT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Assets`
--

CREATE TABLE `Assets` (
  `aId` int NOT NULL,
  `typeassets_Id` int NOT NULL,
  `hr_Id` int NOT NULL,
  `aTitle` varchar(200) DEFAULT NULL,
  `aserialnumber` varchar(100) DEFAULT NULL,
  `aContent` text,
  `aImage` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `BookFimalies`
--

CREATE TABLE `BookFimalies` (
  `bf_Id` int NOT NULL,
  `employee_Id` varchar(12) NOT NULL,
  `bf_nohome` varchar(8) DEFAULT NULL,
  `bf_unit` varchar(8) DEFAULT NULL,
  `bf_approvedDate` datetime DEFAULT NULL,
  `bf_expiredDate` datetime DEFAULT NULL,
  `bf_location` varchar(120) DEFAULT NULL,
  `bf_image` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `bornlocations`
--

CREATE TABLE `bornlocations` (
  `bl_Id` int NOT NULL,
  `employee_Id` varchar(12) NOT NULL,
  `province_Id` int NOT NULL,
  `district_Id` int NOT NULL,
  `bl_village` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Brands`
--

CREATE TABLE `Brands` (
  `bId` int NOT NULL,
  `hr_Id` int NOT NULL,
  `b_name` varchar(120) DEFAULT NULL,
  `b_status` varchar(15) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `CEOs`
--

CREATE TABLE `CEOs` (
  `ceo_Id` int NOT NULL,
  `company_Id` int NOT NULL,
  `user_Id` int NOT NULL,
  `ceo_name` varchar(60) DEFAULT NULL,
  `ceo_phone` varchar(12) DEFAULT NULL,
  `ceo_tell` varchar(12) DEFAULT NULL,
  `ceo_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `CEOs`
--

INSERT INTO `CEOs` (`ceo_Id`, `company_Id`, `user_Id`, `ceo_name`, `ceo_phone`, `ceo_tell`, `ceo_image`) VALUES
(1, 1, 22, 'channy', '0220', '030', 'image-1651654474244-33.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Compnays`
--

CREATE TABLE `Compnays` (
  `cpn_Id` int NOT NULL,
  `cpn_name` varchar(150) DEFAULT NULL,
  `cpn_serialNumber` varchar(30) DEFAULT NULL,
  `cpn_phone` varchar(12) DEFAULT NULL,
  `cpn_tell` varchar(12) DEFAULT NULL,
  `cpn_content` text,
  `cpn_fromDate` datetime DEFAULT NULL,
  `cpn_endDate` datetime DEFAULT NULL,
  `cpn_logo` varchar(255) DEFAULT NULL,
  `cpn_state` varchar(15) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Compnays`
--

INSERT INTO `Compnays` (`cpn_Id`, `cpn_name`, `cpn_serialNumber`, `cpn_phone`, `cpn_tell`, `cpn_content`, `cpn_fromDate`, `cpn_endDate`, `cpn_logo`, `cpn_state`, `createdAt`, `updatedAt`) VALUES
(1, 'CDGLAOS', 'CP-89', '020', '030', 'detail', '2020-02-01 00:00:00', '2022-02-02 00:00:00', 'image-1651640054654-41.jpg', 'active', '2022-05-04 04:13:43', '2022-05-04 06:23:27'),
(2, 'CDGLAOS', 'CP-89', '020', '030', 'content', '2020-02-01 00:00:00', '2020-02-05 00:00:00', 'image-1651638986452-79.jpg', 'active', '2022-05-04 04:36:26', '2022-05-04 04:36:26');

-- --------------------------------------------------------

--
-- Table structure for table `Customers`
--

CREATE TABLE `Customers` (
  `cus_Id` int NOT NULL,
  `employee_Id` varchar(12) NOT NULL,
  `cus_name` varchar(60) DEFAULT NULL,
  `cus_phone` varchar(12) DEFAULT NULL,
  `cus_tell` varchar(12) DEFAULT NULL,
  `cus_status` varchar(15) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Districts`
--

CREATE TABLE `Districts` (
  `dt_Id` int NOT NULL,
  `province_Id` int NOT NULL,
  `dt_laoName` varchar(100) DEFAULT NULL,
  `dt_engName` varchar(100) DEFAULT NULL,
  `dt_status` varchar(15) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Districts`
--

INSERT INTO `Districts` (`dt_Id`, `province_Id`, `dt_laoName`, `dt_engName`, `dt_status`, `createdAt`, `updatedAt`) VALUES
(1, 2, 'ສີໂຄດຕະບອງ', 'Secodthabong', 'active', '2022-05-04 03:05:02', '2022-05-04 03:05:02'),
(2, 1, 'ສີໂຄດຕະບອງ', 'Seecodthabong', 'active', '2022-05-04 03:05:31', '2022-05-04 03:06:18');

-- --------------------------------------------------------

--
-- Table structure for table `Employees`
--

CREATE TABLE `Employees` (
  `emp_Id` varchar(12) NOT NULL,
  `user_Id` int NOT NULL,
  `position_Id` int NOT NULL,
  `gender_Id` int NOT NULL,
  `province_Id` int NOT NULL,
  `district_Id` int NOT NULL,
  `emp_name` varchar(60) DEFAULT NULL,
  `emp_lastname` varchar(60) DEFAULT NULL,
  `emp_engname` varchar(100) DEFAULT NULL,
  `emp_birstday` datetime DEFAULT NULL,
  `emp_age` int DEFAULT NULL,
  `emp_race` varchar(60) DEFAULT NULL,
  `emp_nationality` varchar(120) DEFAULT NULL,
  `emp_religoin` varchar(120) DEFAULT NULL,
  `emp_phone` varchar(12) DEFAULT NULL,
  `emp_tell` varchar(12) DEFAULT NULL,
  `emp_image` varchar(255) DEFAULT NULL,
  `emp_fimalyMember` int DEFAULT NULL,
  `emp_character` text,
  `emp_heigh` varchar(6) DEFAULT NULL,
  `emp_weight` varchar(6) DEFAULT NULL,
  `emp_manMember` int DEFAULT NULL,
  `emp_womenMember` int DEFAULT NULL,
  `emp_childrenLevel` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `emp_status` varchar(15) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Employees`
--

INSERT INTO `Employees` (`emp_Id`, `user_Id`, `position_Id`, `gender_Id`, `province_Id`, `district_Id`, `emp_name`, `emp_lastname`, `emp_engname`, `emp_birstday`, `emp_age`, `emp_race`, `emp_nationality`, `emp_religoin`, `emp_phone`, `emp_tell`, `emp_image`, `emp_fimalyMember`, `emp_character`, `emp_heigh`, `emp_weight`, `emp_manMember`, `emp_womenMember`, `emp_childrenLevel`, `emp_status`, `createdAt`, `updatedAt`) VALUES
('ST00001', 47, 10, 1, 1, 2, 'chongvong', 'a', 'a', '2022-02-02 00:00:00', 20, 'f', 'f', 'f', 'f', 'f', 'image-1651741460097-15.jpg', 4, 'f', 'f', 'f', 2, 2, '3', 'inactive', '2022-05-05 07:39:42', '2022-05-05 09:27:28'),
('ST00002', 51, 10, 1, 1, 2, 'chansamone', 'a', 'a', '2022-02-02 00:00:00', 20, 'f', 'f', 'f', 'f', 'f', 'default_iamge.jpg', 4, 'f', 'f', 'f', 2, 2, '3', 'acive', '2022-05-05 08:02:44', '2022-05-05 08:02:44'),
('ST00003', 52, 10, 1, 1, 2, 'chansamone', 'a', 'a', '2022-02-02 00:00:00', 20, 'f', 'f', 'f', 'f', 'f', 'image-1651740717135-55.jpg', 4, 'f', 'f', 'f', 2, 2, '3', 'acive', '2022-05-05 08:03:19', '2022-05-05 08:51:57'),
('ST00004', 54, 10, 1, 1, 2, 'chansamone', 'a', 'a', '2022-02-02 00:00:00', 20, 'f', 'f', 'f', 'f', 'f', 'default_iamge.jpg', 4, 'f', 'f', 'f', 2, 2, '3', 'acive', '2022-05-05 08:03:47', '2022-05-05 08:03:47');

-- --------------------------------------------------------

--
-- Table structure for table `Evaluations`
--

CREATE TABLE `Evaluations` (
  `ev_Id` int NOT NULL,
  `employee_Id` varchar(12) NOT NULL,
  `hr_Id` int NOT NULL,
  `typevalaution_Id` int NOT NULL,
  `ev_status` varchar(120) DEFAULT NULL,
  `ev_content` text,
  `ev_fromDate` datetime DEFAULT NULL,
  `ev_endDate` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Experiences`
--

CREATE TABLE `Experiences` (
  `epr_Id` int NOT NULL,
  `employee_Id` varchar(12) NOT NULL,
  `epr_companyName` varchar(150) DEFAULT NULL,
  `epr_fromdate` datetime DEFAULT NULL,
  `epr_toDate` datetime DEFAULT NULL,
  `epr_position` varchar(120) DEFAULT NULL,
  `epr_salary` varchar(12) DEFAULT NULL,
  `epr_detail` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Genders`
--

CREATE TABLE `Genders` (
  `gd_Id` int NOT NULL,
  `gd_laoname` varchar(30) DEFAULT NULL,
  `gd_engname` varchar(30) DEFAULT NULL,
  `gd_status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Genders`
--

INSERT INTO `Genders` (`gd_Id`, `gd_laoname`, `gd_engname`, `gd_status`) VALUES
(1, 'Man', 'ຜູ້ຊາຍ', 'inactive'),
(2, 'Woman', 'ຜູ້ຍີງ', 'active'),
(6, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Highschools`
--

CREATE TABLE `Highschools` (
  `hs_Id` int NOT NULL,
  `employee_Id` varchar(12) NOT NULL,
  `hs_name` varchar(150) DEFAULT NULL,
  `hs_fromDate` datetime DEFAULT NULL,
  `hs_toDate` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Human_Resources`
--

CREATE TABLE `Human_Resources` (
  `hr_Id` int NOT NULL,
  `employee_Id` varchar(12) NOT NULL,
  `hr_status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `HusbandWives`
--

CREATE TABLE `HusbandWives` (
  `hw_Id` int NOT NULL,
  `employee_Id` varchar(12) NOT NULL,
  `hw_name` varchar(120) DEFAULT NULL,
  `hw_worklocation` text,
  `hw_position` varchar(120) DEFAULT NULL,
  `hw_career` varchar(120) DEFAULT NULL,
  `hw_numberChild` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `IdentityCards`
--

CREATE TABLE `IdentityCards` (
  `ind_Id` int NOT NULL,
  `employee_Id` varchar(12) NOT NULL,
  `ind_cardNO` varchar(8) DEFAULT NULL,
  `ind_approvedDate` datetime DEFAULT NULL,
  `ind_expiredDate` datetime DEFAULT NULL,
  `ind_location` varchar(120) DEFAULT NULL,
  `ind_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Menus`
--

CREATE TABLE `Menus` (
  `mnId` int NOT NULL,
  `menu_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Parents`
--

CREATE TABLE `Parents` (
  `pr_Id` int NOT NULL,
  `employee_Id` varchar(12) NOT NULL,
  `pr_name` varchar(60) DEFAULT NULL,
  `pr_age` varchar(6) DEFAULT NULL,
  `pr_career` varchar(120) DEFAULT NULL,
  `pr_detail` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Policies`
--

CREATE TABLE `Policies` (
  `pc_Id` int NOT NULL,
  `hr_Id` int NOT NULL,
  `pc_title` varchar(200) DEFAULT NULL,
  `pc_content` text,
  `pc_status` varchar(15) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Positions`
--

CREATE TABLE `Positions` (
  `p_Id` int NOT NULL,
  `p_Name` varchar(120) DEFAULT NULL,
  `p_detail` text,
  `p_status` varchar(15) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Positions`
--

INSERT INTO `Positions` (`p_Id`, `p_Name`, `p_detail`, `p_status`, `createdAt`, `updatedAt`) VALUES
(10, 'Programmer', 'detaildd', 'active', '2022-05-05 03:16:20', '2022-05-05 03:16:20'),
(11, 'Programmer', 'detaildd', 'active', '2022-05-05 03:27:21', '2022-05-05 03:27:21'),
(12, 'Programmer', 'detaildd', 'active', '2022-05-05 03:28:01', '2022-05-05 03:28:01'),
(13, 'Programmer', 'detaildd', 'active', '2022-05-05 03:29:44', '2022-05-05 03:29:44');

-- --------------------------------------------------------

--
-- Table structure for table `Provinces`
--

CREATE TABLE `Provinces` (
  `pv_Id` int NOT NULL,
  `pv_laoName` varchar(100) DEFAULT NULL,
  `pv_engName` varchar(100) DEFAULT NULL,
  `pv_status` varchar(15) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Provinces`
--

INSERT INTO `Provinces` (`pv_Id`, `pv_laoName`, `pv_engName`, `pv_status`, `createdAt`, `updatedAt`) VALUES
(1, 'ວຽງຈັນ', 'vientian', 'active', '2022-05-04 02:39:19', '2022-05-04 02:39:19'),
(2, 'ຈຳປາສັກ', 'champrasak', 'active', '2022-05-04 02:42:23', '2022-05-04 02:42:23');

-- --------------------------------------------------------

--
-- Table structure for table `Roles`
--

CREATE TABLE `Roles` (
  `role_Id` int NOT NULL,
  `role_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Roles`
--

INSERT INTO `Roles` (`role_Id`, `role_name`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `Storage_products`
--

CREATE TABLE `Storage_products` (
  `sp_Id` int NOT NULL,
  `employee_Id` varchar(12) NOT NULL,
  `brands_Id` int NOT NULL,
  `typestoeage_Id` int NOT NULL,
  `typeproduct_Id` int NOT NULL,
  `sp_tiel` varchar(120) DEFAULT NULL,
  `sp_content` text,
  `sp_number` int DEFAULT NULL,
  `sp_price` float DEFAULT NULL,
  `sp_status` varchar(15) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Studies`
--

CREATE TABLE `Studies` (
  `std_Id` int NOT NULL,
  `employee_Id` varchar(12) NOT NULL,
  `std_name` varchar(120) DEFAULT NULL,
  `std_instilutional` varchar(150) DEFAULT NULL,
  `std_faculty` varchar(150) DEFAULT NULL,
  `std_major` varchar(150) DEFAULT NULL,
  `std_grade` varchar(12) DEFAULT NULL,
  `std_Image` varchar(255) DEFAULT NULL,
  `std_fromDate` datetime DEFAULT NULL,
  `std_toDate` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `SubMenus`
--

CREATE TABLE `SubMenus` (
  `smId` int NOT NULL,
  `menu_Id` int NOT NULL,
  `sm_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `SubMenuUsers`
--

CREATE TABLE `SubMenuUsers` (
  `smu_Id` int NOT NULL,
  `submenu_Id` int NOT NULL,
  `user_Id` int NOT NULL,
  `all` tinyint(1) DEFAULT NULL,
  `view` tinyint(1) DEFAULT NULL,
  `insert` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Trainings`
--

CREATE TABLE `Trainings` (
  `tn_Id` int NOT NULL,
  `employee_Id` varchar(12) NOT NULL,
  `typetraining_Id` int NOT NULL,
  `tn_title` varchar(200) DEFAULT NULL,
  `tn_content` text,
  `tn_image` varchar(255) DEFAULT NULL,
  `tn_status` varchar(15) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `typeaccounts`
--

CREATE TABLE `typeaccounts` (
  `tac_Id` int NOT NULL,
  `employee_id` varchar(12) NOT NULL,
  `tac_name` varchar(150) DEFAULT NULL,
  `tac_detail` text,
  `tac_status` varchar(15) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Type_Assets`
--

CREATE TABLE `Type_Assets` (
  `ta_Id` int NOT NULL,
  `hr_Id` int NOT NULL,
  `ta_name` varchar(120) DEFAULT NULL,
  `ta_detail` text,
  `ta_status` varchar(15) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Type_Evalautions`
--

CREATE TABLE `Type_Evalautions` (
  `te_Id` int NOT NULL,
  `hr_Id` int NOT NULL,
  `te_title` text,
  `te_status` varchar(15) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Type_Prodocts`
--

CREATE TABLE `Type_Prodocts` (
  `tpd_Id` int NOT NULL,
  `hr_Id` int NOT NULL,
  `tpd_name` varchar(150) DEFAULT NULL,
  `tpd_status` varchar(15) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Type_Storages`
--

CREATE TABLE `Type_Storages` (
  `tsr_Id` int NOT NULL,
  `hr_Id` int NOT NULL,
  `tsr_name` varchar(120) DEFAULT NULL,
  `tsr_detail` text,
  `tsr_status` varchar(15) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Type_Trainings`
--

CREATE TABLE `Type_Trainings` (
  `ttn_Id` int NOT NULL,
  `ttn_name` varchar(150) DEFAULT NULL,
  `ttn_detail` text,
  `ttn_status` varchar(15) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Type_Vacations`
--

CREATE TABLE `Type_Vacations` (
  `tod_Id` int NOT NULL,
  `hr_Id` int NOT NULL,
  `tod_name` varchar(150) DEFAULT NULL,
  `tod_detail` text,
  `tod_status` varchar(15) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `uer_Id` int NOT NULL,
  `role_Id` int NOT NULL,
  `uemail` varchar(60) DEFAULT NULL,
  `upassowrd` varchar(255) DEFAULT NULL,
  `ustatus` varchar(15) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`uer_Id`, `role_Id`, `uemail`, `upassowrd`, `ustatus`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'admin@gmail.com', '$2a$08$bnbt8zpPKe7eg/7apyqlqO1VxtSHmZQ0go9kdTi4rvqLmiqbAc.Nu', 'active', '2022-05-04 02:15:28', '2022-05-04 02:15:28'),
(2, 1, 'user@gmail.com', '$2a$08$kHj2J43thMQGMBM6xBNObuKY2SqEMtrIwHPAhW0SjtubRurGHLCf6', 'active', '2022-05-04 02:15:53', '2022-05-04 02:22:12'),
(22, 1, 'chan@gmail.com', '$2a$08$qRYwp9jFDo3o3FtuLqAcq.Vei7uXSbmiomY9gmI.lTKa3ec73mtQS', 'active', '2022-05-04 07:24:14', '2022-05-04 07:24:14'),
(47, 2, 'owner@gmail.com', '$2a$08$lBvkgjKSKOWyNZMBZc.y.uIWsuSi7hiyu2kebq1s3oRIYExWRLY0u', 'active', '2022-05-05 07:39:42', '2022-05-05 07:39:42'),
(51, 2, 'owners@gmail.com', '$2a$08$rNJM.Gwl5BTwCn3PG/cQ..vn6mbhe4siAZ9WDsSIFqhPEnVxXKupS', 'active', '2022-05-05 08:02:44', '2022-05-05 08:02:44'),
(52, 2, 'ownerss@gmail.com', '$2a$08$Mgc73YcGd8q7PwjaSiqtHeXFlwwDE9d9n6ne3GGGnmN4y7MyE8QsW', 'active', '2022-05-05 08:03:19', '2022-05-05 08:03:19'),
(54, 2, 'chong@gmail.com', '$2a$08$hUxoNlJTJexz8fQwUbG5VuGXuPH1/0k72cNsuQKB3bEjGj9OwNFDK', 'active', '2022-05-05 08:03:47', '2022-05-05 08:03:47');

-- --------------------------------------------------------

--
-- Table structure for table `Use_Products`
--

CREATE TABLE `Use_Products` (
  `up_Id` int NOT NULL,
  `employee_Id` varchar(12) NOT NULL,
  `storageproduct_Id` int NOT NULL,
  `hr_Id` int NOT NULL,
  `up_qty` int DEFAULT NULL,
  `up_statue` varchar(15) DEFAULT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Vacations`
--

CREATE TABLE `Vacations` (
  `od_Id` int NOT NULL,
  `type_vacation_Id` int NOT NULL,
  `employee_Id` varchar(12) NOT NULL,
  `od_title` varchar(200) DEFAULT NULL,
  `od_content` text,
  `od_image` varchar(255) DEFAULT NULL,
  `od_status` varchar(15) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Welfare`
--

CREATE TABLE `Welfare` (
  `wf_Id` int NOT NULL,
  `hr_Id` int NOT NULL,
  `wf_title` varchar(200) DEFAULT NULL,
  `wf_content` text,
  `wf_status` varchar(15) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Abilities`
--
ALTER TABLE `Abilities`
  ADD PRIMARY KEY (`at_Id`),
  ADD KEY `employee_Id` (`employee_Id`);

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`ac_Id`),
  ADD KEY `typeaccount_Id` (`typeaccount_Id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `Approved_Trainings`
--
ALTER TABLE `Approved_Trainings`
  ADD PRIMARY KEY (`appt_Id`),
  ADD KEY `hr_Id` (`hr_Id`),
  ADD KEY `training_Id` (`training_Id`);

--
-- Indexes for table `Approved_vacations`
--
ALTER TABLE `Approved_vacations`
  ADD PRIMARY KEY (`appd_Id`),
  ADD KEY `hr_Id` (`hr_Id`),
  ADD KEY `vacation_Id` (`vacation_Id`);

--
-- Indexes for table `Assets`
--
ALTER TABLE `Assets`
  ADD PRIMARY KEY (`aId`),
  ADD KEY `typeassets_Id` (`typeassets_Id`),
  ADD KEY `hr_Id` (`hr_Id`);

--
-- Indexes for table `BookFimalies`
--
ALTER TABLE `BookFimalies`
  ADD PRIMARY KEY (`bf_Id`),
  ADD KEY `employee_Id` (`employee_Id`);

--
-- Indexes for table `bornlocations`
--
ALTER TABLE `bornlocations`
  ADD PRIMARY KEY (`bl_Id`),
  ADD KEY `employee_Id` (`employee_Id`),
  ADD KEY `province_Id` (`province_Id`),
  ADD KEY `district_Id` (`district_Id`);

--
-- Indexes for table `Brands`
--
ALTER TABLE `Brands`
  ADD PRIMARY KEY (`bId`),
  ADD KEY `hr_Id` (`hr_Id`);

--
-- Indexes for table `CEOs`
--
ALTER TABLE `CEOs`
  ADD PRIMARY KEY (`ceo_Id`),
  ADD KEY `company_Id` (`company_Id`),
  ADD KEY `user_Id` (`user_Id`);

--
-- Indexes for table `Compnays`
--
ALTER TABLE `Compnays`
  ADD PRIMARY KEY (`cpn_Id`);

--
-- Indexes for table `Customers`
--
ALTER TABLE `Customers`
  ADD PRIMARY KEY (`cus_Id`),
  ADD KEY `employee_Id` (`employee_Id`);

--
-- Indexes for table `Districts`
--
ALTER TABLE `Districts`
  ADD PRIMARY KEY (`dt_Id`),
  ADD KEY `province_Id` (`province_Id`);

--
-- Indexes for table `Employees`
--
ALTER TABLE `Employees`
  ADD PRIMARY KEY (`emp_Id`),
  ADD KEY `user_Id` (`user_Id`),
  ADD KEY `position_Id` (`position_Id`),
  ADD KEY `gender_Id` (`gender_Id`),
  ADD KEY `province_Id` (`province_Id`),
  ADD KEY `district_Id` (`district_Id`);

--
-- Indexes for table `Evaluations`
--
ALTER TABLE `Evaluations`
  ADD PRIMARY KEY (`ev_Id`),
  ADD KEY `employee_Id` (`employee_Id`),
  ADD KEY `hr_Id` (`hr_Id`),
  ADD KEY `typevalaution_Id` (`typevalaution_Id`);

--
-- Indexes for table `Experiences`
--
ALTER TABLE `Experiences`
  ADD PRIMARY KEY (`epr_Id`),
  ADD KEY `employee_Id` (`employee_Id`);

--
-- Indexes for table `Genders`
--
ALTER TABLE `Genders`
  ADD PRIMARY KEY (`gd_Id`);

--
-- Indexes for table `Highschools`
--
ALTER TABLE `Highschools`
  ADD PRIMARY KEY (`hs_Id`),
  ADD KEY `employee_Id` (`employee_Id`);

--
-- Indexes for table `Human_Resources`
--
ALTER TABLE `Human_Resources`
  ADD PRIMARY KEY (`hr_Id`);

--
-- Indexes for table `HusbandWives`
--
ALTER TABLE `HusbandWives`
  ADD PRIMARY KEY (`hw_Id`),
  ADD KEY `employee_Id` (`employee_Id`);

--
-- Indexes for table `IdentityCards`
--
ALTER TABLE `IdentityCards`
  ADD PRIMARY KEY (`ind_Id`),
  ADD KEY `employee_Id` (`employee_Id`);

--
-- Indexes for table `Menus`
--
ALTER TABLE `Menus`
  ADD PRIMARY KEY (`mnId`);

--
-- Indexes for table `Parents`
--
ALTER TABLE `Parents`
  ADD PRIMARY KEY (`pr_Id`),
  ADD KEY `employee_Id` (`employee_Id`);

--
-- Indexes for table `Policies`
--
ALTER TABLE `Policies`
  ADD PRIMARY KEY (`pc_Id`),
  ADD KEY `hr_Id` (`hr_Id`);

--
-- Indexes for table `Positions`
--
ALTER TABLE `Positions`
  ADD PRIMARY KEY (`p_Id`);

--
-- Indexes for table `Provinces`
--
ALTER TABLE `Provinces`
  ADD PRIMARY KEY (`pv_Id`);

--
-- Indexes for table `Roles`
--
ALTER TABLE `Roles`
  ADD PRIMARY KEY (`role_Id`);

--
-- Indexes for table `Storage_products`
--
ALTER TABLE `Storage_products`
  ADD PRIMARY KEY (`sp_Id`),
  ADD KEY `employee_Id` (`employee_Id`),
  ADD KEY `brands_Id` (`brands_Id`),
  ADD KEY `typestoeage_Id` (`typestoeage_Id`),
  ADD KEY `typeproduct_Id` (`typeproduct_Id`);

--
-- Indexes for table `Studies`
--
ALTER TABLE `Studies`
  ADD PRIMARY KEY (`std_Id`),
  ADD KEY `employee_Id` (`employee_Id`);

--
-- Indexes for table `SubMenus`
--
ALTER TABLE `SubMenus`
  ADD PRIMARY KEY (`smId`),
  ADD KEY `menu_Id` (`menu_Id`);

--
-- Indexes for table `SubMenuUsers`
--
ALTER TABLE `SubMenuUsers`
  ADD PRIMARY KEY (`smu_Id`),
  ADD KEY `submenu_Id` (`submenu_Id`),
  ADD KEY `user_Id` (`user_Id`);

--
-- Indexes for table `Trainings`
--
ALTER TABLE `Trainings`
  ADD PRIMARY KEY (`tn_Id`),
  ADD KEY `employee_Id` (`employee_Id`),
  ADD KEY `typetraining_Id` (`typetraining_Id`);

--
-- Indexes for table `typeaccounts`
--
ALTER TABLE `typeaccounts`
  ADD PRIMARY KEY (`tac_Id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `Type_Assets`
--
ALTER TABLE `Type_Assets`
  ADD PRIMARY KEY (`ta_Id`),
  ADD KEY `hr_Id` (`hr_Id`);

--
-- Indexes for table `Type_Evalautions`
--
ALTER TABLE `Type_Evalautions`
  ADD PRIMARY KEY (`te_Id`),
  ADD KEY `hr_Id` (`hr_Id`);

--
-- Indexes for table `Type_Prodocts`
--
ALTER TABLE `Type_Prodocts`
  ADD PRIMARY KEY (`tpd_Id`),
  ADD KEY `hr_Id` (`hr_Id`);

--
-- Indexes for table `Type_Storages`
--
ALTER TABLE `Type_Storages`
  ADD PRIMARY KEY (`tsr_Id`),
  ADD KEY `hr_Id` (`hr_Id`);

--
-- Indexes for table `Type_Trainings`
--
ALTER TABLE `Type_Trainings`
  ADD PRIMARY KEY (`ttn_Id`);

--
-- Indexes for table `Type_Vacations`
--
ALTER TABLE `Type_Vacations`
  ADD PRIMARY KEY (`tod_Id`),
  ADD KEY `hr_Id` (`hr_Id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`uer_Id`),
  ADD UNIQUE KEY `uemail` (`uemail`),
  ADD KEY `role_Id` (`role_Id`);

--
-- Indexes for table `Use_Products`
--
ALTER TABLE `Use_Products`
  ADD PRIMARY KEY (`up_Id`),
  ADD KEY `employee_Id` (`employee_Id`),
  ADD KEY `storageproduct_Id` (`storageproduct_Id`),
  ADD KEY `hr_Id` (`hr_Id`);

--
-- Indexes for table `Vacations`
--
ALTER TABLE `Vacations`
  ADD PRIMARY KEY (`od_Id`),
  ADD KEY `type_vacation_Id` (`type_vacation_Id`),
  ADD KEY `employee_Id` (`employee_Id`);

--
-- Indexes for table `Welfare`
--
ALTER TABLE `Welfare`
  ADD PRIMARY KEY (`wf_Id`),
  ADD KEY `hr_Id` (`hr_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Abilities`
--
ALTER TABLE `Abilities`
  MODIFY `at_Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `ac_Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Approved_Trainings`
--
ALTER TABLE `Approved_Trainings`
  MODIFY `appt_Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Approved_vacations`
--
ALTER TABLE `Approved_vacations`
  MODIFY `appd_Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Assets`
--
ALTER TABLE `Assets`
  MODIFY `aId` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BookFimalies`
--
ALTER TABLE `BookFimalies`
  MODIFY `bf_Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bornlocations`
--
ALTER TABLE `bornlocations`
  MODIFY `bl_Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Brands`
--
ALTER TABLE `Brands`
  MODIFY `bId` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CEOs`
--
ALTER TABLE `CEOs`
  MODIFY `ceo_Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Compnays`
--
ALTER TABLE `Compnays`
  MODIFY `cpn_Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Customers`
--
ALTER TABLE `Customers`
  MODIFY `cus_Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Districts`
--
ALTER TABLE `Districts`
  MODIFY `dt_Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Evaluations`
--
ALTER TABLE `Evaluations`
  MODIFY `ev_Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Experiences`
--
ALTER TABLE `Experiences`
  MODIFY `epr_Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Genders`
--
ALTER TABLE `Genders`
  MODIFY `gd_Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Highschools`
--
ALTER TABLE `Highschools`
  MODIFY `hs_Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Human_Resources`
--
ALTER TABLE `Human_Resources`
  MODIFY `hr_Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `HusbandWives`
--
ALTER TABLE `HusbandWives`
  MODIFY `hw_Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `IdentityCards`
--
ALTER TABLE `IdentityCards`
  MODIFY `ind_Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Menus`
--
ALTER TABLE `Menus`
  MODIFY `mnId` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Parents`
--
ALTER TABLE `Parents`
  MODIFY `pr_Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Policies`
--
ALTER TABLE `Policies`
  MODIFY `pc_Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Positions`
--
ALTER TABLE `Positions`
  MODIFY `p_Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `Provinces`
--
ALTER TABLE `Provinces`
  MODIFY `pv_Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Roles`
--
ALTER TABLE `Roles`
  MODIFY `role_Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Storage_products`
--
ALTER TABLE `Storage_products`
  MODIFY `sp_Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Studies`
--
ALTER TABLE `Studies`
  MODIFY `std_Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SubMenuUsers`
--
ALTER TABLE `SubMenuUsers`
  MODIFY `smu_Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Trainings`
--
ALTER TABLE `Trainings`
  MODIFY `tn_Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `typeaccounts`
--
ALTER TABLE `typeaccounts`
  MODIFY `tac_Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Type_Assets`
--
ALTER TABLE `Type_Assets`
  MODIFY `ta_Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Type_Evalautions`
--
ALTER TABLE `Type_Evalautions`
  MODIFY `te_Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Type_Storages`
--
ALTER TABLE `Type_Storages`
  MODIFY `tsr_Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Type_Trainings`
--
ALTER TABLE `Type_Trainings`
  MODIFY `ttn_Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Type_Vacations`
--
ALTER TABLE `Type_Vacations`
  MODIFY `tod_Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `uer_Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `Use_Products`
--
ALTER TABLE `Use_Products`
  MODIFY `up_Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Vacations`
--
ALTER TABLE `Vacations`
  MODIFY `od_Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Welfare`
--
ALTER TABLE `Welfare`
  MODIFY `wf_Id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Abilities`
--
ALTER TABLE `Abilities`
  ADD CONSTRAINT `Abilities_ibfk_1` FOREIGN KEY (`employee_Id`) REFERENCES `Employees` (`emp_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`typeaccount_Id`) REFERENCES `typeaccounts` (`tac_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `accounts_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `Employees` (`emp_Id`) ON UPDATE CASCADE;

--
-- Constraints for table `Approved_Trainings`
--
ALTER TABLE `Approved_Trainings`
  ADD CONSTRAINT `Approved_Trainings_ibfk_1` FOREIGN KEY (`hr_Id`) REFERENCES `Human_Resources` (`hr_Id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Approved_Trainings_ibfk_2` FOREIGN KEY (`training_Id`) REFERENCES `Trainings` (`tn_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Approved_vacations`
--
ALTER TABLE `Approved_vacations`
  ADD CONSTRAINT `Approved_vacations_ibfk_1` FOREIGN KEY (`hr_Id`) REFERENCES `Human_Resources` (`hr_Id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Approved_vacations_ibfk_2` FOREIGN KEY (`vacation_Id`) REFERENCES `Vacations` (`od_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Assets`
--
ALTER TABLE `Assets`
  ADD CONSTRAINT `Assets_ibfk_1` FOREIGN KEY (`typeassets_Id`) REFERENCES `Type_Assets` (`ta_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Assets_ibfk_2` FOREIGN KEY (`hr_Id`) REFERENCES `Human_Resources` (`hr_Id`) ON UPDATE CASCADE;

--
-- Constraints for table `BookFimalies`
--
ALTER TABLE `BookFimalies`
  ADD CONSTRAINT `BookFimalies_ibfk_1` FOREIGN KEY (`employee_Id`) REFERENCES `Employees` (`emp_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bornlocations`
--
ALTER TABLE `bornlocations`
  ADD CONSTRAINT `bornlocations_ibfk_1` FOREIGN KEY (`employee_Id`) REFERENCES `Employees` (`emp_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bornlocations_ibfk_2` FOREIGN KEY (`province_Id`) REFERENCES `Provinces` (`pv_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bornlocations_ibfk_3` FOREIGN KEY (`district_Id`) REFERENCES `Districts` (`dt_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Brands`
--
ALTER TABLE `Brands`
  ADD CONSTRAINT `Brands_ibfk_1` FOREIGN KEY (`hr_Id`) REFERENCES `Human_Resources` (`hr_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `CEOs`
--
ALTER TABLE `CEOs`
  ADD CONSTRAINT `CEOs_ibfk_1` FOREIGN KEY (`company_Id`) REFERENCES `Compnays` (`cpn_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `CEOs_ibfk_2` FOREIGN KEY (`user_Id`) REFERENCES `Users` (`uer_Id`) ON UPDATE CASCADE;

--
-- Constraints for table `Customers`
--
ALTER TABLE `Customers`
  ADD CONSTRAINT `Customers_ibfk_1` FOREIGN KEY (`employee_Id`) REFERENCES `Employees` (`emp_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Districts`
--
ALTER TABLE `Districts`
  ADD CONSTRAINT `Districts_ibfk_1` FOREIGN KEY (`province_Id`) REFERENCES `Provinces` (`pv_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Employees`
--
ALTER TABLE `Employees`
  ADD CONSTRAINT `Employees_ibfk_1` FOREIGN KEY (`user_Id`) REFERENCES `Users` (`uer_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Employees_ibfk_2` FOREIGN KEY (`position_Id`) REFERENCES `Positions` (`p_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Employees_ibfk_3` FOREIGN KEY (`gender_Id`) REFERENCES `Genders` (`gd_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Employees_ibfk_4` FOREIGN KEY (`province_Id`) REFERENCES `Provinces` (`pv_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Employees_ibfk_5` FOREIGN KEY (`district_Id`) REFERENCES `Districts` (`dt_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Evaluations`
--
ALTER TABLE `Evaluations`
  ADD CONSTRAINT `Evaluations_ibfk_1` FOREIGN KEY (`employee_Id`) REFERENCES `Employees` (`emp_Id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Evaluations_ibfk_2` FOREIGN KEY (`hr_Id`) REFERENCES `Human_Resources` (`hr_Id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Evaluations_ibfk_3` FOREIGN KEY (`typevalaution_Id`) REFERENCES `Type_Evalautions` (`te_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Experiences`
--
ALTER TABLE `Experiences`
  ADD CONSTRAINT `Experiences_ibfk_1` FOREIGN KEY (`employee_Id`) REFERENCES `Employees` (`emp_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Highschools`
--
ALTER TABLE `Highschools`
  ADD CONSTRAINT `Highschools_ibfk_1` FOREIGN KEY (`employee_Id`) REFERENCES `Employees` (`emp_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `HusbandWives`
--
ALTER TABLE `HusbandWives`
  ADD CONSTRAINT `HusbandWives_ibfk_1` FOREIGN KEY (`employee_Id`) REFERENCES `Employees` (`emp_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `IdentityCards`
--
ALTER TABLE `IdentityCards`
  ADD CONSTRAINT `IdentityCards_ibfk_1` FOREIGN KEY (`employee_Id`) REFERENCES `Employees` (`emp_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Parents`
--
ALTER TABLE `Parents`
  ADD CONSTRAINT `Parents_ibfk_1` FOREIGN KEY (`employee_Id`) REFERENCES `Employees` (`emp_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Policies`
--
ALTER TABLE `Policies`
  ADD CONSTRAINT `Policies_ibfk_1` FOREIGN KEY (`hr_Id`) REFERENCES `Human_Resources` (`hr_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Storage_products`
--
ALTER TABLE `Storage_products`
  ADD CONSTRAINT `Storage_products_ibfk_1` FOREIGN KEY (`employee_Id`) REFERENCES `Employees` (`emp_Id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Storage_products_ibfk_2` FOREIGN KEY (`brands_Id`) REFERENCES `Brands` (`bId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Storage_products_ibfk_3` FOREIGN KEY (`typestoeage_Id`) REFERENCES `Type_Storages` (`tsr_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Storage_products_ibfk_4` FOREIGN KEY (`typeproduct_Id`) REFERENCES `Type_Prodocts` (`tpd_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Studies`
--
ALTER TABLE `Studies`
  ADD CONSTRAINT `Studies_ibfk_1` FOREIGN KEY (`employee_Id`) REFERENCES `Employees` (`emp_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `SubMenus`
--
ALTER TABLE `SubMenus`
  ADD CONSTRAINT `SubMenus_ibfk_1` FOREIGN KEY (`menu_Id`) REFERENCES `Menus` (`mnId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `SubMenuUsers`
--
ALTER TABLE `SubMenuUsers`
  ADD CONSTRAINT `SubMenuUsers_ibfk_1` FOREIGN KEY (`submenu_Id`) REFERENCES `SubMenus` (`smId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `SubMenuUsers_ibfk_2` FOREIGN KEY (`user_Id`) REFERENCES `Users` (`uer_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Trainings`
--
ALTER TABLE `Trainings`
  ADD CONSTRAINT `Trainings_ibfk_1` FOREIGN KEY (`employee_Id`) REFERENCES `Employees` (`emp_Id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Trainings_ibfk_2` FOREIGN KEY (`typetraining_Id`) REFERENCES `Type_Trainings` (`ttn_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `typeaccounts`
--
ALTER TABLE `typeaccounts`
  ADD CONSTRAINT `typeaccounts_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `Employees` (`emp_Id`) ON UPDATE CASCADE;

--
-- Constraints for table `Type_Assets`
--
ALTER TABLE `Type_Assets`
  ADD CONSTRAINT `Type_Assets_ibfk_1` FOREIGN KEY (`hr_Id`) REFERENCES `Human_Resources` (`hr_Id`) ON UPDATE CASCADE;

--
-- Constraints for table `Type_Evalautions`
--
ALTER TABLE `Type_Evalautions`
  ADD CONSTRAINT `Type_Evalautions_ibfk_1` FOREIGN KEY (`hr_Id`) REFERENCES `Human_Resources` (`hr_Id`) ON UPDATE CASCADE;

--
-- Constraints for table `Type_Prodocts`
--
ALTER TABLE `Type_Prodocts`
  ADD CONSTRAINT `Type_Prodocts_ibfk_1` FOREIGN KEY (`hr_Id`) REFERENCES `Human_Resources` (`hr_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Type_Storages`
--
ALTER TABLE `Type_Storages`
  ADD CONSTRAINT `Type_Storages_ibfk_1` FOREIGN KEY (`hr_Id`) REFERENCES `Human_Resources` (`hr_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Type_Vacations`
--
ALTER TABLE `Type_Vacations`
  ADD CONSTRAINT `Type_Vacations_ibfk_1` FOREIGN KEY (`hr_Id`) REFERENCES `Human_Resources` (`hr_Id`) ON UPDATE CASCADE;

--
-- Constraints for table `Users`
--
ALTER TABLE `Users`
  ADD CONSTRAINT `Users_ibfk_1` FOREIGN KEY (`role_Id`) REFERENCES `Roles` (`role_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Use_Products`
--
ALTER TABLE `Use_Products`
  ADD CONSTRAINT `Use_Products_ibfk_1` FOREIGN KEY (`employee_Id`) REFERENCES `Employees` (`emp_Id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Use_Products_ibfk_2` FOREIGN KEY (`storageproduct_Id`) REFERENCES `Storage_products` (`sp_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Use_Products_ibfk_3` FOREIGN KEY (`hr_Id`) REFERENCES `Human_Resources` (`hr_Id`) ON UPDATE CASCADE;

--
-- Constraints for table `Vacations`
--
ALTER TABLE `Vacations`
  ADD CONSTRAINT `Vacations_ibfk_1` FOREIGN KEY (`type_vacation_Id`) REFERENCES `Type_Vacations` (`tod_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Vacations_ibfk_2` FOREIGN KEY (`employee_Id`) REFERENCES `Employees` (`emp_Id`) ON UPDATE CASCADE;

--
-- Constraints for table `Welfare`
--
ALTER TABLE `Welfare`
  ADD CONSTRAINT `Welfare_ibfk_1` FOREIGN KEY (`hr_Id`) REFERENCES `Human_Resources` (`hr_Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
