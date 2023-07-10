-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2023 at 05:48 AM
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
-- Database: `dbquanlikhaibao`
--

-- --------------------------------------------------------

--
-- Table structure for table `databasechangelog`
--

CREATE TABLE `databasechangelog` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `databasechangelog`
--

INSERT INTO `databasechangelog` (`ID`, `AUTHOR`, `FILENAME`, `DATEEXECUTED`, `ORDEREXECUTED`, `EXECTYPE`, `MD5SUM`, `DESCRIPTION`, `COMMENTS`, `TAG`, `LIQUIBASE`, `CONTEXTS`, `LABELS`, `DEPLOYMENT_ID`) VALUES
('1', 'data', 'io/jmix/data/liquibase/changelog/001-data.xml', '2023-06-27 09:56:02', 1, 'EXECUTED', '8:54d483c7877cd3008e00d3ace3520c01', 'createTable tableName=SYS_SEQUENCE', '', NULL, '4.11.0', '!cuba', NULL, '7834562204'),
('1', 'ui-data', 'io/jmix/uidata/liquibase/changelog/001-ui-data.xml', '2023-06-27 09:56:02', 2, 'EXECUTED', '8:eb9a995e63e9721e5c0d41ef59d75f53', 'createTable tableName=UI_SETTING', '', NULL, '4.11.0', NULL, NULL, '7834562204'),
('2', 'ui-data', 'io/jmix/uidata/liquibase/changelog/001-ui-data.xml', '2023-06-27 09:56:02', 3, 'EXECUTED', '8:9b2741cf42ed98a04110bdc8eda09792', 'createTable tableName=UI_FILTER_CONFIGURATION', '', NULL, '4.11.0', NULL, NULL, '7834562204'),
('3', 'ui-data', 'io/jmix/uidata/liquibase/changelog/001-ui-data.xml', '2023-06-27 09:56:02', 4, 'EXECUTED', '8:5bde97a30f2ad570342f7733ebd74776', 'addColumn tableName=UI_FILTER_CONFIGURATION', '', NULL, '4.11.0', NULL, NULL, '7834562204'),
('4', 'ui-data', 'io/jmix/uidata/liquibase/changelog/001-ui-data.xml', '2023-06-27 09:56:02', 5, 'EXECUTED', '8:8d5d3ffa3d4b15a3dfd956e818bbd5b5', 'addColumn tableName=UI_FILTER_CONFIGURATION; renameColumn newColumnName=CONFIGURATION_ID, oldColumnName=CODE, tableName=UI_FILTER_CONFIGURATION', '', NULL, '4.11.0', NULL, NULL, '7834562204'),
('5', 'ui-data', 'io/jmix/uidata/liquibase/changelog/001-ui-data.xml', '2023-06-27 09:56:02', 6, 'EXECUTED', '8:e61cc50fd8b4a76acd0ce1c6fcd6c77a', 'createTable tableName=UI_TABLE_PRESENTATION', '', NULL, '4.11.0', '!cuba', NULL, '7834562204'),
('1', 'security-data', 'io/jmix/securitydata/liquibase/changelog/001-security-data.xml', '2023-06-27 09:56:02', 7, 'EXECUTED', '8:503f3f1463afb1a6ee2f72a85913268d', 'createTable tableName=SEC_RESOURCE_ROLE; createTable tableName=SEC_ROW_LEVEL_ROLE; createTable tableName=SEC_RESOURCE_POLICY; createTable tableName=SEC_ROW_LEVEL_POLICY; createTable tableName=SEC_ROLE_ASSIGNMENT', '', NULL, '4.11.0', NULL, NULL, '7834562204'),
('2-mysql', 'security-data', 'io/jmix/securitydata/liquibase/changelog/001-security-data.xml', '2023-06-27 09:56:02', 8, 'EXECUTED', '8:dfbf24026eacae849114cbabdfa382c8', 'addColumn tableName=SEC_RESOURCE_ROLE; createIndex indexName=IDX_RESOURCE_ROLE_UN_C, tableName=SEC_RESOURCE_ROLE; sql', '', NULL, '4.11.0', NULL, NULL, '7834562204'),
('3-mysql', 'security-data', 'io/jmix/securitydata/liquibase/changelog/001-security-data.xml', '2023-06-27 09:56:02', 9, 'EXECUTED', '8:de06a61b0f5ff58822d84a73e7a77a9d', 'addColumn tableName=SEC_ROW_LEVEL_ROLE; createIndex indexName=IDX_ROW_LEVEL_ROLE_UN_C, tableName=SEC_ROW_LEVEL_ROLE; sql', '', NULL, '4.11.0', NULL, NULL, '7834562204'),
('4', 'security-data', 'io/jmix/securitydata/liquibase/changelog/001-security-data.xml', '2023-06-27 09:56:02', 10, 'EXECUTED', '8:604553db900aa6050bcdd0bd49ff2085', 'createTable tableName=persistent_logins', '', NULL, '4.11.0', NULL, NULL, '7834562204'),
('1', 'security-data', 'io/jmix/securitydata/liquibase/changelog/002-security-data.xml', '2023-06-27 09:56:02', 11, 'EXECUTED', '8:37a554d561f02064fd71dfd0f02278f7', 'addColumn tableName=SEC_RESOURCE_ROLE; addColumn tableName=SEC_ROW_LEVEL_ROLE', '', NULL, '4.11.0', NULL, NULL, '7834562204'),
('2', 'security-data', 'io/jmix/securitydata/liquibase/changelog/002-security-data.xml', '2023-06-27 09:56:02', 12, 'EXECUTED', '8:5c34b3970ba6bbc4416659e74155e59b', 'addColumn tableName=SEC_RESOURCE_ROLE', '', NULL, '4.11.0', NULL, NULL, '7834562204'),
('1', 'security-data', 'io/jmix/securitydata/liquibase/changelog/003-security-data.xml', '2023-06-27 09:56:02', 13, 'EXECUTED', '8:d98c112d8f942229e70a9b60fdeeca4f', 'createTable tableName=SEC_USER_SUBSTITUTION', '', NULL, '4.11.0', '!cuba', NULL, '7834562204'),
('1', 'quan-li-khai-bao-main', 'com/quanlikhaibaoo/liquibase/changelog/010-init-user.xml', '2023-06-27 09:56:02', 14, 'EXECUTED', '8:1d9ed0cf021da9c0832f9557ecfba176', 'createTable tableName=USER_', '', NULL, '4.11.0', '!cuba', NULL, '7834562204'),
('2', 'quan-li-khai-bao-main', 'com/quanlikhaibaoo/liquibase/changelog/010-init-user.xml', '2023-06-27 09:56:02', 15, 'EXECUTED', '8:63c5b17e175271a24edc8e664beca638', 'createIndex indexName=IDX_USER__ON_USERNAME, tableName=USER_', '', NULL, '4.11.0', '!cuba', NULL, '7834562204'),
('3', 'quan-li-khai-bao-main', 'com/quanlikhaibaoo/liquibase/changelog/010-init-user.xml', '2023-06-27 09:56:02', 16, 'EXECUTED', '8:ac158511d8a5a5c827cd6f3ff858ac4a', 'insert tableName=USER_; insert tableName=USER_', '', NULL, '4.11.0', '!cuba', NULL, '7834562204'),
('4', 'quan-li-khai-bao-main', 'com/quanlikhaibaoo/liquibase/changelog/010-init-user.xml', '2023-06-27 09:56:02', 17, 'EXECUTED', '8:eb22dd77008053ea3412055fa334d8af', 'insert tableName=SEC_ROLE_ASSIGNMENT; insert tableName=SEC_ROLE_ASSIGNMENT', '', NULL, '4.11.0', '!cuba', NULL, '7834562204'),
('1', 'quan-li-khai-bao-main', 'com/quanlikhaibaoo/liquibase/changelog/2023/06/27-095810-2f68386d.xml', '2023-06-27 09:58:19', 18, 'EXECUTED', '8:f0002d1339346c41cf5031a96fe3a7f4', 'dropUniqueConstraint constraintName=users_email_unique, tableName=users', '', NULL, '4.11.0', NULL, NULL, '7834699671'),
('2', 'quan-li-khai-bao-main', 'com/quanlikhaibaoo/liquibase/changelog/2023/06/27-095810-2f68386d.xml', '2023-06-27 09:58:19', 19, 'EXECUTED', '8:c446641dc7e69f8d24c1627c1ca53d6b', 'dropTable tableName=failed_jobs', '', NULL, '4.11.0', NULL, NULL, '7834699671'),
('3', 'quan-li-khai-bao-main', 'com/quanlikhaibaoo/liquibase/changelog/2023/06/27-095810-2f68386d.xml', '2023-06-27 09:58:19', 20, 'EXECUTED', '8:b9fa7f2fbc327827760c7a69dcb97198', 'dropTable tableName=migrations', '', NULL, '4.11.0', NULL, NULL, '7834699671'),
('4', 'quan-li-khai-bao-main', 'com/quanlikhaibaoo/liquibase/changelog/2023/06/27-095810-2f68386d.xml', '2023-06-27 09:58:19', 21, 'EXECUTED', '8:e03059343328b60a0483c0c95c7efc75', 'dropTable tableName=password_resets', '', NULL, '4.11.0', NULL, NULL, '7834699671'),
('5', 'quan-li-khai-bao-main', 'com/quanlikhaibaoo/liquibase/changelog/2023/06/27-095810-2f68386d.xml', '2023-06-27 09:58:19', 22, 'EXECUTED', '8:acc00ce780ac8f3165baff499d8661cc', 'dropTable tableName=users', '', NULL, '4.11.0', NULL, NULL, '7834699671');

-- --------------------------------------------------------

--
-- Table structure for table `databasechangeloglock`
--

CREATE TABLE `databasechangeloglock` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `databasechangeloglock`
--

INSERT INTO `databasechangeloglock` (`ID`, `LOCKED`, `LOCKGRANTED`, `LOCKEDBY`) VALUES
(1, b'0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `persistent_logins`
--

CREATE TABLE `persistent_logins` (
  `series` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sec_resource_policy`
--

CREATE TABLE `sec_resource_policy` (
  `ID` char(36) NOT NULL,
  `VERSION` int(11) NOT NULL DEFAULT 1,
  `CREATE_TS` datetime DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `UPDATE_TS` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(50) DEFAULT NULL,
  `DELETE_TS` datetime DEFAULT NULL,
  `DELETED_BY` varchar(50) DEFAULT NULL,
  `TYPE_` varchar(255) NOT NULL,
  `POLICY_GROUP` varchar(255) DEFAULT NULL,
  `RESOURCE_` varchar(1000) NOT NULL,
  `ACTION_` varchar(255) NOT NULL,
  `EFFECT` varchar(255) NOT NULL,
  `ROLE_ID` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sec_resource_role`
--

CREATE TABLE `sec_resource_role` (
  `ID` char(36) NOT NULL,
  `VERSION` int(11) NOT NULL DEFAULT 1,
  `CREATE_TS` datetime DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `UPDATE_TS` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(50) DEFAULT NULL,
  `DELETE_TS` datetime DEFAULT NULL,
  `DELETED_BY` varchar(50) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `CODE` varchar(255) NOT NULL,
  `CHILD_ROLES` longtext DEFAULT NULL,
  `SYS_TENANT_ID` varchar(255) DEFAULT NULL,
  `DELETE_TS_NN` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `DESCRIPTION` text DEFAULT NULL,
  `SCOPES` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Triggers `sec_resource_role`
--
DELIMITER $$
CREATE TRIGGER `SEC_RESOURCE_ROLE_DELETE_TS_NN_UPDATE_TRIGGER` BEFORE UPDATE ON `sec_resource_role` FOR EACH ROW begin
	            if not(NEW.DELETE_TS <=> OLD.DELETE_TS) then
		            set NEW.DELETE_TS_NN = if (NEW.DELETE_TS is null, '1000-01-01 00:00:00.000', NEW.DELETE_TS);
	            end if;
            end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `sec_role_assignment`
--

CREATE TABLE `sec_role_assignment` (
  `ID` char(36) NOT NULL,
  `VERSION` int(11) NOT NULL DEFAULT 1,
  `CREATE_TS` datetime DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `UPDATE_TS` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(50) DEFAULT NULL,
  `DELETE_TS` datetime DEFAULT NULL,
  `DELETED_BY` varchar(50) DEFAULT NULL,
  `USERNAME` varchar(255) NOT NULL,
  `ROLE_CODE` varchar(255) NOT NULL,
  `ROLE_TYPE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sec_role_assignment`
--

INSERT INTO `sec_role_assignment` (`ID`, `VERSION`, `CREATE_TS`, `CREATED_BY`, `UPDATE_TS`, `UPDATED_BY`, `DELETE_TS`, `DELETED_BY`, `USERNAME`, `ROLE_CODE`, `ROLE_TYPE`) VALUES
('5027b2a4912a42c099dfe2e5585c2c4f', 1, '2023-07-06 09:26:21', 'admin', '2023-07-06 09:26:21', NULL, NULL, NULL, 'test', 'user-role', 'resource'),
('5e79756c3f18355119afac13feaf980b', 2, '2023-07-06 03:55:51', 'admin', '2023-07-06 03:55:51', NULL, '2023-07-06 09:08:28', 'admin', 'minhhoang', 'ui-minimal', 'resource'),
('6c9e420a2b7a4c428654a9027ee14083', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 'system-full-access', 'resource'),
('82576d8275beaaec669861901d92dbb0', 1, '2023-07-06 09:09:20', 'admin', '2023-07-06 09:09:20', NULL, NULL, NULL, 'guest', 'guest-role', 'resource'),
('9d582514977913cdc4da7773e72bf161', 1, '2023-07-06 09:08:28', 'admin', '2023-07-06 09:08:28', NULL, NULL, NULL, 'minhhoang', 'user-role', 'resource'),
('c125a203461e5df008a943604aaea46e', 1, '2023-07-06 09:09:05', 'admin', '2023-07-06 09:09:05', NULL, NULL, NULL, 'user', 'user-role', 'resource'),
('dc6422111c8c6551127af5ba840be0a3', 1, '2023-07-06 09:08:28', 'admin', '2023-07-06 09:08:28', NULL, NULL, NULL, 'minhhoang', 'guest-role', 'resource'),
('e06164f349afbfbab8ddfb53244f5370', 1, '2023-07-06 09:08:28', 'admin', '2023-07-06 09:08:28', NULL, NULL, NULL, 'minhhoang', 'system-full-access', 'resource');

-- --------------------------------------------------------

--
-- Table structure for table `sec_row_level_policy`
--

CREATE TABLE `sec_row_level_policy` (
  `ID` char(36) NOT NULL,
  `VERSION` int(11) NOT NULL DEFAULT 1,
  `CREATE_TS` datetime DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `UPDATE_TS` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(50) DEFAULT NULL,
  `DELETE_TS` datetime DEFAULT NULL,
  `DELETED_BY` varchar(50) DEFAULT NULL,
  `TYPE_` varchar(255) NOT NULL,
  `ACTION_` varchar(255) NOT NULL,
  `ENTITY_NAME` varchar(255) NOT NULL,
  `WHERE_CLAUSE` longtext DEFAULT NULL,
  `JOIN_CLAUSE` longtext DEFAULT NULL,
  `SCRIPT_` longtext DEFAULT NULL,
  `ROLE_ID` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sec_row_level_role`
--

CREATE TABLE `sec_row_level_role` (
  `ID` char(36) NOT NULL,
  `VERSION` int(11) NOT NULL DEFAULT 1,
  `CREATE_TS` datetime DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `UPDATE_TS` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(50) DEFAULT NULL,
  `DELETE_TS` datetime DEFAULT NULL,
  `DELETED_BY` varchar(50) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `CODE` varchar(255) NOT NULL,
  `CHILD_ROLES` longtext DEFAULT NULL,
  `SYS_TENANT_ID` varchar(255) DEFAULT NULL,
  `DELETE_TS_NN` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `DESCRIPTION` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Triggers `sec_row_level_role`
--
DELIMITER $$
CREATE TRIGGER `SEC_ROW_LEVEL_ROLE_DELETE_TS_NN_UPDATE_TRIGGER` BEFORE UPDATE ON `sec_row_level_role` FOR EACH ROW begin
	            if not(NEW.DELETE_TS <=> OLD.DELETE_TS) then
		            set NEW.DELETE_TS_NN = if (NEW.DELETE_TS is null, '1000-01-01 00:00:00.000', NEW.DELETE_TS);
	            end if;
            end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `sec_user_substitution`
--

CREATE TABLE `sec_user_substitution` (
  `ID` char(36) NOT NULL,
  `VERSION` int(11) NOT NULL DEFAULT 1,
  `CREATE_TS` datetime DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `UPDATE_TS` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(50) DEFAULT NULL,
  `DELETE_TS` datetime DEFAULT NULL,
  `DELETED_BY` varchar(50) DEFAULT NULL,
  `USERNAME` varchar(255) NOT NULL,
  `SUBSTITUTED_USERNAME` varchar(255) NOT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `END_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_sequence`
--

CREATE TABLE `sys_sequence` (
  `NAME` varchar(100) NOT NULL,
  `INCREMENT` int(11) DEFAULT 1,
  `CURR_VALUE` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbcong_viec`
--

CREATE TABLE `tbcong_viec` (
  `soCMND` int(11) NOT NULL,
  `ngayVaoCongTy` date NOT NULL,
  `maNganh` int(11) NOT NULL,
  `tenCongViec` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tenCongTy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diaChiCongTy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thoiGianLamViec` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbnganh`
--

CREATE TABLE `tbnganh` (
  `maNganh` int(11) NOT NULL,
  `tenNganh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `loaiNganh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbnganh`
--

INSERT INTO `tbnganh` (`maNganh`, `tenNganh`, `loaiNganh`) VALUES
(1, 'Nganh 1', 'Loai 1'),
(2, 'Nganh 2', 'Loai 2');

-- --------------------------------------------------------

--
-- Table structure for table `tbsinhvien`
--

CREATE TABLE `tbsinhvien` (
  `soCMND` int(11) NOT NULL,
  `hoTen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL CHECK (`Email` like '%@%.%'),
  `soDt` varchar(10) NOT NULL CHECK (`soDt` regexp '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
  `diaChi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbsinhvien`
--

INSERT INTO `tbsinhvien` (`soCMND`, `hoTen`, `Email`, `soDt`, `diaChi`) VALUES
(1, 'Hồ Lê Minh Hoàngg', '12@gmail.com', '0123467895', '12345'),
(2, 'Hồ Lê Minh Hoàng', '12@gmail.com', '0123467895', '12345'),
(3, 'Hồ Lê Minh Hoàng', '12@gmail.com', '0123467895', '12345'),
(4, 'Minh Hoàng', 'hoang@com.email', '1234567896', '123 bon nam sau'),
(5, 'Minh Hoàng', 'hoang@com.email', '1234567896', '123 bon nam sau'),
(6, 'test', 'test@test.test', '1234445689', 'test'),
(7, 'test1', 'test1@test1.test1', '1234567899', 'test1'),
(8, 'test2', 'test2@test2.test2', '1245454578', 'test2'),
(20, 'Hồ Lê Minh Hoàngg', '0123467895@mail.com', '0123467895', 'Chưa có'),
(23, 'gggggggg', '0123467895@mail.com', '0123467895', 'Chưa có'),
(24, 'gggggggg', '0123467895@mail.com', '0123467895', 'Chưa có');

-- --------------------------------------------------------

--
-- Table structure for table `tbtot_nghiep`
--

CREATE TABLE `tbtot_nghiep` (
  `soCMND` int(11) NOT NULL,
  `maTruong` int(11) NOT NULL,
  `maNganh` int(11) NOT NULL,
  `heTN` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngayTN` date DEFAULT NULL,
  `loaiTN` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbtot_nghiep`
--

INSERT INTO `tbtot_nghiep` (`soCMND`, `maTruong`, `maNganh`, `heTN`, `ngayTN`, `loaiTN`) VALUES
(1, 1, 2, '1', '2023-06-13', '2'),
(4, 1, 2, 'Khong biet', '2023-07-20', 'Khong biet'),
(6, 1, 2, 'test', '2023-07-12', 'test'),
(7, 1, 1, 'test1', '2023-07-07', 'test1'),
(8, 1, 2, NULL, NULL, NULL),
(20, 1, 2, '1', '2023-06-13', '2'),
(23, 1, 2, '1', '2023-06-13', '2'),
(24, 1, 2, '1', '2023-06-13', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tbtruong`
--

CREATE TABLE `tbtruong` (
  `maTruong` int(11) NOT NULL,
  `tenTruong` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diaChi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `soDt` varchar(10) NOT NULL CHECK (`soDt` regexp '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbtruong`
--

INSERT INTO `tbtruong` (`maTruong`, `tenTruong`, `diaChi`, `soDt`) VALUES
(1, 'Truong A', 'Dia chi A', '0123456789'),
(2, 'Truong B', 'Dia chi B', '0987654321');

-- --------------------------------------------------------

--
-- Table structure for table `ui_filter_configuration`
--

CREATE TABLE `ui_filter_configuration` (
  `ID` char(36) NOT NULL,
  `COMPONENT_ID` varchar(255) NOT NULL,
  `CONFIGURATION_ID` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `ROOT_CONDITION` longtext DEFAULT NULL,
  `SYS_TENANT_ID` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DEFAULT_FOR_ALL` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ui_setting`
--

CREATE TABLE `ui_setting` (
  `ID` char(36) NOT NULL,
  `CREATE_TS` datetime DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `VALUE_` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ui_setting`
--

INSERT INTO `ui_setting` (`ID`, `CREATE_TS`, `CREATED_BY`, `USERNAME`, `NAME`, `VALUE_`) VALUES
('05d32f03bbbce79835a99ec13d4d2718', '2023-07-05 08:24:41', 'admin', 'admin', 'sec_ResourceRoleModel.browse', '[{\"groupProperties\":[],\"id\":\"roleModelsTable\",\"textSelection\":false,\"columns\":[{\"id\":\"name\",\"visible\":true},{\"id\":\"code\",\"visible\":true},{\"id\":\"source\",\"visible\":true},{\"id\":\"description\",\"visible\":true},{\"id\":\"scopes\",\"visible\":true}]},{\"id\":\"filterBox\",\"expanded\":false}]'),
('0bd0a8fe419fc5bda8c166e5d52e3674', '2023-06-28 02:07:51', 'admin', 'admin', 'Tbnganh.browse', '[{\"id\":\"tbnganhsTable\",\"columns\":[{\"id\":\"loaiNganh\",\"visible\":true},{\"id\":\"tenNganh\",\"visible\":true}]}]'),
('0ecdfbb6d4ccfa420de3e796307fab66', '2023-07-05 08:24:36', 'admin', 'admin', 'sec_RowLevelRoleModel.browse', '[{\"groupProperties\":[],\"id\":\"roleModelsTable\",\"textSelection\":false,\"sortProperty\":\"name\",\"sortAscending\":true,\"columns\":[{\"id\":\"name\",\"visible\":true},{\"id\":\"code\",\"visible\":true},{\"id\":\"source\",\"visible\":true},{\"id\":\"description\",\"visible\":true}]},{\"id\":\"filterBox\",\"expanded\":false}]'),
('100ac2b9837ceabc6a458c457a084ea1', '2023-07-06 09:11:38', 'user', 'user', 'QuanLyKhaiBao.browse', '[{\"groupProperties\":[],\"id\":\"tbtotNghiepsTable\",\"columns\":[{\"id\":\"soCMND.id\",\"visible\":true},{\"id\":\"soCMND.hoTen\",\"visible\":true},{\"id\":\"soCMND.soDt\",\"visible\":true},{\"id\":\"maNganh.id\",\"visible\":true},{\"id\":\"maNganh.tenNganh\",\"visible\":true},{\"id\":\"maTruong.id\",\"visible\":true},{\"id\":\"maTruong.tenTruong\",\"visible\":true},{\"id\":\"heTN\",\"visible\":true},{\"id\":\"loaiTN\",\"visible\":true},{\"id\":\"ngayTN\",\"visible\":true}]}]'),
('1134211c56f2bff45197df661bf123d1', '2023-07-06 03:55:49', 'admin', 'admin', 'sec_ResourceRoleModel.lookup', '[{\"id\":\"roleModelsTable\",\"textSelection\":false,\"columns\":[{\"id\":\"name\",\"visible\":true},{\"id\":\"code\",\"visible\":true},{\"id\":\"scopes\",\"visible\":true}]},{\"id\":\"filterBox\",\"expanded\":false}]'),
('17025526c37f2dc30ab438d26d4cbc6a', '2023-06-28 02:34:00', 'admin', 'admin', 'TbtotNghiep.browse', '[{\"id\":\"tbtotNghiepsTable\",\"columns\":[{\"id\":\"heTN\",\"visible\":true},{\"id\":\"loaiTN\",\"visible\":true},{\"id\":\"maNganh\",\"visible\":true},{\"id\":\"maTruong\",\"visible\":true},{\"id\":\"ngayTN\",\"visible\":true},{\"id\":\"soCMND\",\"visible\":true}]}]'),
('1a636acca304b420adf4821e0fa9efc2', '2023-06-28 02:33:58', 'admin', 'admin', 'User.browse', '[{\"groupProperties\":[],\"id\":\"usersTable\",\"textSelection\":false,\"columns\":[{\"id\":\"username\",\"visible\":true},{\"id\":\"firstName\",\"visible\":true},{\"id\":\"lastName\",\"visible\":true},{\"id\":\"email\",\"visible\":true},{\"id\":\"timeZoneId\",\"visible\":true},{\"id\":\"active\",\"visible\":true}]}]'),
('313aff2649adf900715b728301f06582', '2023-06-28 03:21:36', 'admin', 'admin', 'Tbsinhvien.browse', '[{\"id\":\"tbsinhviensTable\",\"columns\":[{\"id\":\"diaChi\",\"visible\":true},{\"id\":\"email\",\"visible\":true},{\"id\":\"hoTen\",\"visible\":true},{\"id\":\"soDt\",\"visible\":true}]}]'),
('54428f8dfe0661929aa434aad0ea7b9e', '2023-07-03 08:28:57', 'admin', 'admin', 'QuanLyKhaiBao.browse', '[{\"groupProperties\":[],\"id\":\"tbtotNghiepsTable\",\"sortProperty\":\"soCMND.hoTen\",\"sortAscending\":true,\"columns\":[{\"id\":\"soCMND.id\",\"visible\":true},{\"id\":\"soCMND.hoTen\",\"visible\":true},{\"id\":\"soCMND.soDt\",\"visible\":true},{\"id\":\"maNganh.id\",\"visible\":true},{\"id\":\"maNganh.tenNganh\",\"visible\":true},{\"id\":\"maTruong.id\",\"visible\":true},{\"id\":\"maTruong.tenTruong\",\"visible\":true},{\"id\":\"heTN\",\"visible\":true},{\"id\":\"loaiTN\",\"visible\":true},{\"id\":\"ngayTN\",\"visible\":true}]}]'),
('5ca49d508f7273f900a58d6c33aefd76', '2023-07-06 09:11:15', 'user', 'user', 'TbtotNghiep.browse', '[{\"id\":\"tbtotNghiepsTable\",\"columns\":[{\"id\":\"heTN\",\"visible\":true},{\"id\":\"loaiTN\",\"visible\":true},{\"id\":\"maNganh\",\"visible\":true},{\"id\":\"maTruong\",\"visible\":true},{\"id\":\"ngayTN\",\"visible\":true},{\"id\":\"soCMND\",\"visible\":true}]}]'),
('6bd7d9ddbf53fbcb183dab49827c3ad3', '2023-06-29 09:10:22', 'admin', 'admin', 'TbtotNghiepp.browse', '[{\"groupProperties\":[],\"id\":\"tbtotNghiepsTable\",\"columns\":[{\"id\":\"heTN\",\"visible\":true},{\"id\":\"loaiTN\",\"visible\":true},{\"id\":\"maNganh\",\"visible\":true},{\"id\":\"maTruong\",\"visible\":true},{\"id\":\"ngayTN\",\"visible\":true},{\"id\":\"soCMND.hoTen\",\"visible\":true}]},{\"groupProperties\":[],\"id\":\"tbtotNghieppsTable\",\"columns\":[{\"id\":\"heTN\",\"visible\":true},{\"id\":\"loaiTN\",\"visible\":true},{\"id\":\"maNganh\",\"visible\":true},{\"id\":\"maTruong\",\"visible\":true},{\"id\":\"ngayTN\",\"visible\":true},{\"id\":\"soCMND.hoTen\",\"visible\":true}]}]'),
('9879ed025028b2b10aeafbc0081e3900', '2023-07-06 09:14:38', 'minhhoang', 'minhhoang', 'User.browse', '[{\"groupProperties\":[],\"id\":\"usersTable\",\"textSelection\":false,\"columns\":[{\"id\":\"username\",\"visible\":true},{\"id\":\"firstName\",\"visible\":true},{\"id\":\"lastName\",\"visible\":true},{\"id\":\"email\",\"visible\":true},{\"id\":\"timeZoneId\",\"visible\":true},{\"id\":\"active\",\"visible\":true}]}]'),
('b3c26949e8465765473bad91426e074e', '2023-06-28 02:34:00', 'admin', 'admin', 'Tbtruong.browse', '[{\"id\":\"tbtruongsTable\",\"columns\":[{\"id\":\"diaChi\",\"visible\":true},{\"id\":\"soDt\",\"visible\":true},{\"id\":\"tenTruong\",\"visible\":true}]}]'),
('ee78d0c0e64256d13325f48134cf35bc', '2023-07-06 09:11:13', 'user', 'user', 'TbcongViec.browse', '[{\"id\":\"tbcongViecsTable\",\"columns\":[{\"id\":\"diaChiCongTy\",\"visible\":true},{\"id\":\"maNganh\",\"visible\":true},{\"id\":\"soCMND\",\"visible\":true},{\"id\":\"tenCongTy\",\"visible\":true},{\"id\":\"tenCongViec\",\"visible\":true},{\"id\":\"thoiGianLamViec\",\"visible\":true}]}]'),
('fcd550d59e4ca98f6d67f4fef7b98639', '2023-07-06 09:11:38', 'user', 'user', 'User.browse', '[{\"groupProperties\":[],\"id\":\"usersTable\",\"textSelection\":false,\"columns\":[{\"id\":\"username\",\"visible\":true},{\"id\":\"firstName\",\"visible\":true},{\"id\":\"lastName\",\"visible\":true},{\"id\":\"email\",\"visible\":true},{\"id\":\"timeZoneId\",\"visible\":true}]}]');

-- --------------------------------------------------------

--
-- Table structure for table `ui_table_presentation`
--

CREATE TABLE `ui_table_presentation` (
  `ID` char(36) NOT NULL,
  `CREATE_TS` datetime DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `COMPONENT` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `SETTINGS` varchar(4000) DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `IS_AUTO_SAVE` bit(1) DEFAULT NULL,
  `UPDATE_TS` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(50) DEFAULT NULL,
  `SYS_TENANT_ID` varchar(255) DEFAULT NULL,
  `IS_DEFAULT` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_`
--

CREATE TABLE `user_` (
  `ID` char(36) NOT NULL,
  `VERSION` int(11) NOT NULL,
  `USERNAME` varchar(255) NOT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `ACTIVE` bit(1) DEFAULT NULL,
  `TIME_ZONE_ID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_`
--

INSERT INTO `user_` (`ID`, `VERSION`, `USERNAME`, `FIRST_NAME`, `LAST_NAME`, `PASSWORD`, `EMAIL`, `ACTIVE`, `TIME_ZONE_ID`) VALUES
('19e6b2a12fa73b830c9390d25740cc03', 1, 'test', NULL, NULL, '{bcrypt}$2a$10$Ct8J.7paYSCL4.bG3b4ZXeodBiJK0VHOtqfhyup.RhFFznQ0knmAa', NULL, b'1', NULL),
('3cf30397602eb7dcebf6589a4a2f2284', 1, 'user', NULL, NULL, '{bcrypt}$2a$10$NFuGgf6NCK1P6kKcQqQMme1TB93AQaOVCZwqOWYzGp6Y34wCbzW/6', NULL, b'1', NULL),
('5d03387666e630738d9e76caa9acc779', 1, 'guest', NULL, NULL, '{bcrypt}$2a$10$ZRFTOT78WHq48LE4BS4paeJxtrJmMIq9I5Ob1VcY4B6BTiqe1SXw2', NULL, b'1', NULL),
('608859871b61424794c7dff348347f93', 1, 'admin', NULL, NULL, '{noop}admin', NULL, b'1', NULL),
('9c0d650dd800932eedf2b2dbfbeae8cd', 1, 'minhhoang', 'Minh', 'Hoàng', '{bcrypt}$2a$10$xZvVvJUVBGTGuI8maFtvge0GGTpAxNrpUMbBu1/f5hAtIq5ICp8xa', 'minhhoang@minhhoang.minhhoang', b'1', 'Asia/Bangkok');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `databasechangeloglock`
--
ALTER TABLE `databasechangeloglock`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `persistent_logins`
--
ALTER TABLE `persistent_logins`
  ADD PRIMARY KEY (`series`);

--
-- Indexes for table `sec_resource_policy`
--
ALTER TABLE `sec_resource_policy`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_RES_POLICY_ROLE` (`ROLE_ID`);

--
-- Indexes for table `sec_resource_role`
--
ALTER TABLE `sec_resource_role`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_RESOURCE_ROLE_UN_C` (`CODE`,`DELETE_TS_NN`);

--
-- Indexes for table `sec_role_assignment`
--
ALTER TABLE `sec_role_assignment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sec_row_level_policy`
--
ALTER TABLE `sec_row_level_policy`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_ROW_LEVEL_POLICY_ROLE` (`ROLE_ID`);

--
-- Indexes for table `sec_row_level_role`
--
ALTER TABLE `sec_row_level_role`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_ROW_LEVEL_ROLE_UN_C` (`CODE`,`DELETE_TS_NN`);

--
-- Indexes for table `sec_user_substitution`
--
ALTER TABLE `sec_user_substitution`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sys_sequence`
--
ALTER TABLE `sys_sequence`
  ADD PRIMARY KEY (`NAME`);

--
-- Indexes for table `tbcong_viec`
--
ALTER TABLE `tbcong_viec`
  ADD PRIMARY KEY (`soCMND`,`ngayVaoCongTy`),
  ADD KEY `maNganh` (`maNganh`);

--
-- Indexes for table `tbnganh`
--
ALTER TABLE `tbnganh`
  ADD PRIMARY KEY (`maNganh`);

--
-- Indexes for table `tbsinhvien`
--
ALTER TABLE `tbsinhvien`
  ADD PRIMARY KEY (`soCMND`);

--
-- Indexes for table `tbtot_nghiep`
--
ALTER TABLE `tbtot_nghiep`
  ADD PRIMARY KEY (`soCMND`,`maTruong`,`maNganh`),
  ADD KEY `maNganh` (`maNganh`),
  ADD KEY `maTruong` (`maTruong`);

--
-- Indexes for table `tbtruong`
--
ALTER TABLE `tbtruong`
  ADD PRIMARY KEY (`maTruong`);

--
-- Indexes for table `ui_filter_configuration`
--
ALTER TABLE `ui_filter_configuration`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ui_setting`
--
ALTER TABLE `ui_setting`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ui_table_presentation`
--
ALTER TABLE `ui_table_presentation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_`
--
ALTER TABLE `user_`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IDX_USER__ON_USERNAME` (`USERNAME`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbnganh`
--
ALTER TABLE `tbnganh`
  MODIFY `maNganh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbsinhvien`
--
ALTER TABLE `tbsinhvien`
  MODIFY `soCMND` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbtruong`
--
ALTER TABLE `tbtruong`
  MODIFY `maTruong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sec_resource_policy`
--
ALTER TABLE `sec_resource_policy`
  ADD CONSTRAINT `FK_RES_POLICY_ROLE` FOREIGN KEY (`ROLE_ID`) REFERENCES `sec_resource_role` (`ID`);

--
-- Constraints for table `sec_row_level_policy`
--
ALTER TABLE `sec_row_level_policy`
  ADD CONSTRAINT `FK_ROW_LEVEL_POLICY_ROLE` FOREIGN KEY (`ROLE_ID`) REFERENCES `sec_row_level_role` (`ID`);

--
-- Constraints for table `tbcong_viec`
--
ALTER TABLE `tbcong_viec`
  ADD CONSTRAINT `tbCong_Viec_ibfk_1` FOREIGN KEY (`soCMND`) REFERENCES `tbsinhvien` (`soCMND`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbCong_Viec_ibfk_2` FOREIGN KEY (`maNganh`) REFERENCES `tbnganh` (`maNganh`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbtot_nghiep`
--
ALTER TABLE `tbtot_nghiep`
  ADD CONSTRAINT `tbTot_Nghiep_ibfk_1` FOREIGN KEY (`soCMND`) REFERENCES `tbsinhvien` (`soCMND`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbTot_Nghiep_ibfk_2` FOREIGN KEY (`maNganh`) REFERENCES `tbnganh` (`maNganh`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbTot_Nghiep_ibfk_3` FOREIGN KEY (`maTruong`) REFERENCES `tbtruong` (`maTruong`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
