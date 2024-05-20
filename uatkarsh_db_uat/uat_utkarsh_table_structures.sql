-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: utkarsh_db
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `EMP`
--

DROP TABLE IF EXISTS `EMP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EMP` (
  `DEMO_id` int NOT NULL,
  `DEMO_C_no` varchar(30) NOT NULL,
  `DEMO_C_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DEMO_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Persons`
--

DROP TABLE IF EXISTS `Persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Persons` (
  `PersonID` int DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aadhaar_auth_service_log`
--

DROP TABLE IF EXISTS `aadhaar_auth_service_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aadhaar_auth_service_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `txn` varchar(50) DEFAULT NULL,
  `reference_no` varchar(50) DEFAULT NULL,
  `aadhar_no` varchar(25) DEFAULT NULL,
  `log_type` varchar(50) NOT NULL,
  `request` longtext,
  `response` longtext,
  `resp_status` varchar(10) DEFAULT NULL,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `idx_aadhaar_auth_service_log_cdate` (`cdate`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aadhaar_masking_log`
--

DROP TABLE IF EXISTS `aadhaar_masking_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aadhaar_masking_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `url` varchar(150) NOT NULL,
  `request` longtext NOT NULL,
  `response` longtext NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aadhaar_service_log`
--

DROP TABLE IF EXISTS `aadhaar_service_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aadhaar_service_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `aadhar_no` varchar(25) NOT NULL,
  `txn` varchar(50) NOT NULL,
  `response` longtext NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `reference_no` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4600 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aadhaar_vault_store_log`
--

DROP TABLE IF EXISTS `aadhaar_vault_store_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aadhaar_vault_store_log` (
  `aadhaar_vault_store_log_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `request` text NOT NULL,
  `response` text NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`aadhaar_vault_store_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2298 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aadhar_data`
--

DROP TABLE IF EXISTS `aadhar_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aadhar_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_cif` varchar(50) NOT NULL,
  `aadhar_card1` varchar(20) DEFAULT NULL,
  `aadhar_card2` varchar(20) DEFAULT NULL,
  `token_to_aadhar1` varchar(50) NOT NULL,
  `token_to_aadhar2` varchar(50) NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=235153 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aadhar_logs`
--

DROP TABLE IF EXISTS `aadhar_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aadhar_logs` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  `aadhar_no` varchar(25) NOT NULL,
  `customer_id` int DEFAULT '0',
  `request` longtext NOT NULL,
  `response` longtext NOT NULL,
  `resp_status` varchar(10) NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime DEFAULT NULL,
  `aadhar_pdf_url` text,
  PRIMARY KEY (`log_id`),
  KEY `status` (`udate`),
  KEY `udate` (`udate`)
) ENGINE=InnoDB AUTO_INCREMENT=33201 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aadhar_otp_failed_details`
--

DROP TABLE IF EXISTS `aadhar_otp_failed_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aadhar_otp_failed_details` (
  `aofd_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `Otp_count` int DEFAULT NULL,
  `Timing` datetime DEFAULT NULL,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  PRIMARY KEY (`aofd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aadhar_seed_details_log`
--

DROP TABLE IF EXISTS `aadhar_seed_details_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aadhar_seed_details_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `accnt_dtl_log_id` int DEFAULT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `dob` varchar(15) DEFAULT NULL,
  `aadhar_no` varchar(20) DEFAULT NULL,
  `aadhar_json` longtext,
  `kyc_type` tinyint(1) DEFAULT '0',
  `status` varchar(20) DEFAULT NULL,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `access_right`
--

DROP TABLE IF EXISTS `access_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `access_right` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_id` varchar(30) NOT NULL,
  `access_right_role` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `account_activity_log`
--

DROP TABLE IF EXISTS `account_activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_activity_log` (
  `account_activity_log_id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int NOT NULL DEFAULT '0',
  `ad_user_id` varchar(30) NOT NULL,
  `customer_id` int NOT NULL DEFAULT '0',
  `ug_id` int NOT NULL DEFAULT '0',
  `status` tinyint DEFAULT '0' COMMENT '0-source,1-approved,2-rejected,3-assigned_agent,4-deleted,5-rectified,6-revert,7-cpc_list,8-parked,9-branch_head_approve,10-brach_head_rejected',
  `rejection_reason` text NOT NULL,
  `rejection_reason_category` enum('KYC','NON-KYC','BOTH') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_resourced` tinyint NOT NULL DEFAULT '0' COMMENT '0-No,1-Yes',
  `cdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  PRIMARY KEY (`account_activity_log_id`),
  KEY `customer_id` (`customer_id`),
  KEY `ug_id` (`ug_id`),
  KEY `status` (`status`),
  KEY `cdate` (`cdate`),
  KEY `ad_user_id` (`ad_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=625 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `account_agent_mapping`
--

DROP TABLE IF EXISTS `account_agent_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_agent_mapping` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `joint_customer_id` int NOT NULL,
  `agent_id` int NOT NULL,
  `geo_location` text NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `field_geo_location` text NOT NULL,
  `field_latitude` varchar(20) NOT NULL,
  `field_longitude` varchar(20) NOT NULL,
  `is_current_agent` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `is_current_agent` (`is_current_agent`),
  KEY `agent_id` (`agent_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20909 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `account_details_log`
--

DROP TABLE IF EXISTS `account_details_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_details_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `customer_cif` int DEFAULT NULL,
  `account_no` varchar(16) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `branch_name` varchar(25) DEFAULT NULL,
  `branch_code` int DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` date NOT NULL,
  `aadhar_token` varchar(15) DEFAULT NULL,
  `aadhar_no` varchar(15) DEFAULT NULL,
  `masked_aadhar_no` varchar(15) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `account_dtl_1`
--

DROP TABLE IF EXISTS `account_dtl_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_dtl_1` (
  `account_dtl_1_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `delivery_channel` int NOT NULL,
  `marketing_channel_code` varchar(3) NOT NULL,
  `lead_converter_id` varchar(30) NOT NULL,
  `mode_of_operation` int NOT NULL,
  `repayable_to` int NOT NULL,
  `credit_interest_reqd` tinyint NOT NULL COMMENT '0-no,1-yes',
  `special_account` tinyint NOT NULL COMMENT '0-no,1-yes',
  `power_of_atorny` tinyint NOT NULL COMMENT '0-no,1-yes',
  `nomination_required` tinyint NOT NULL COMMENT '0-no,1-yes',
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL COMMENT '0-no,1-yes',
  PRIMARY KEY (`account_dtl_1_id`),
  KEY `customer_id` (`customer_id`),
  KEY `mode_of_operation` (`mode_of_operation`)
) ENGINE=InnoDB AUTO_INCREMENT=7562 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `account_holder_info`
--

DROP TABLE IF EXISTS `account_holder_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_holder_info` (
  `account_holder_info_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `account_address` varchar(200) NOT NULL,
  `location_code` int NOT NULL,
  `account_currency` varchar(3) NOT NULL DEFAULT 'INR',
  `salary_account` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,yes-1',
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL COMMENT '0-no,1-yes',
  PRIMARY KEY (`account_holder_info_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18773 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `account_prev`
--

DROP TABLE IF EXISTS `account_prev`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_prev` (
  `account_prev_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `teller_oprn_reqd` tinyint NOT NULL DEFAULT '1' COMMENT '0-no,1-yes',
  `atm_oprn_allowed` tinyint NOT NULL DEFAULT '1' COMMENT '0-no,1-yes',
  `is_applied_for_debit_card` tinyint NOT NULL DEFAULT '0' COMMENT '0-yes,1-No, I/We Do Not wish to Apply for Debit Card',
  `internet_banking_permitted` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `kiosk_banking_permitted` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,yes-1',
  `sms_oprn_permitted` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `over_draft_allowed` tinyint NOT NULL DEFAULT '0',
  `chq_book_req` tinyint NOT NULL DEFAULT '1' COMMENT '0-no,1-yes',
  `bus_div` int NOT NULL DEFAULT '1',
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL COMMENT '0-no,1-yes',
  PRIMARY KEY (`account_prev_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3074 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `account_stmt_details`
--

DROP TABLE IF EXISTS `account_stmt_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_stmt_details` (
  `account_stmt_details_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `passbook_required` tinyint NOT NULL COMMENT '0-no,1-yes',
  `account_statement_required` tinyint NOT NULL COMMENT '0-no,1-yes',
  `account_statement_freq` varchar(1) NOT NULL DEFAULT 'M' COMMENT 'D – Daily ,W – Weekly, F - Fortnightly ,M – Monthly, Q – Quarterly ,H – Half Yearly',
  `account_statement_print_otp` varchar(1) NOT NULL DEFAULT 'P' COMMENT 'P – Print and Mail Centrally, H – Print separately and send to Branches, B – Print in Branches ,N – No Printing Required',
  `week_day_for_weekly_stmt` varchar(1) NOT NULL COMMENT '1 – Sunday, 2 – Monday, 3 – Tuesday, 4 – Wednesday ,5 – Thursday ,6 – Friday ,7 – Saturday',
  `elect_from_acc_stm_req` varchar(1) NOT NULL COMMENT 'D – Daily ,W – Weekly, F - Fortnightly, M – Monthly, Q – Quarterly ,H – Half Yearly',
  `elect_from_week_day_for_weekly_stmt` varchar(1) NOT NULL COMMENT '1 – Sunday ,2 – Monday ,3 – Tuesday ,4 – Wednesday ,5 – Thusday ,6 – Friday ,7 – Saturday',
  `elect_from_stmt_mode` varchar(1) NOT NULL COMMENT '1 - Email ,2 - Fax',
  `elect_from_email` varchar(50) NOT NULL,
  `elect_from_fax` varchar(50) NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL COMMENT '0-no,1-yes',
  PRIMARY KEY (`account_stmt_details_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3252 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `address_dtl`
--

DROP TABLE IF EXISTS `address_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address_dtl` (
  `address_dtl_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `address_type` varchar(2) NOT NULL,
  `flat_number` varchar(35) NOT NULL,
  `street_name` varchar(35) NOT NULL,
  `address_line_1` varchar(255) NOT NULL,
  `address_line_2` varchar(35) NOT NULL,
  `address_line_3` varchar(35) NOT NULL,
  `zip_code` int NOT NULL,
  `full_address` varchar(255) NOT NULL,
  `location_code` int NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `mobile_number` varchar(15) NOT NULL,
  `staying_since_month` varchar(50) NOT NULL DEFAULT '',
  `staying_since_year` varchar(50) NOT NULL DEFAULT '',
  `current_address` tinyint NOT NULL COMMENT '0-no,1-yes',
  `permanent_address` tinyint NOT NULL COMMENT '0-no,1-yes',
  `communication_address` tinyint NOT NULL COMMENT '0-no,1-yes',
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL COMMENT '0-no,1-yes',
  PRIMARY KEY (`address_dtl_id`),
  KEY `customer_id` (`customer_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `communication_address` (`communication_address`),
  KEY `permanent_address` (`permanent_address`),
  KEY `current_address` (`current_address`),
  KEY `mobile_number` (`mobile_number`)
) ENGINE=InnoDB AUTO_INCREMENT=6134 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `ug_id` int NOT NULL,
  `ad_user_id` varchar(30) NOT NULL,
  `branch_head_uuid` varchar(36) DEFAULT NULL,
  `branch_head_secret_key` varchar(10) DEFAULT NULL,
  `ad_user_name` varchar(50) NOT NULL,
  `ad_user_email` varchar(100) NOT NULL,
  `ad_contact_no` varchar(12) NOT NULL,
  `address` varchar(255) NOT NULL,
  `user_type` tinyint NOT NULL DEFAULT '0' COMMENT '0-branch_manager,1-admin',
  `ad_branch_code` int NOT NULL,
  `password` varchar(70) NOT NULL,
  `old_password` varchar(255) NOT NULL,
  `is_reset_password` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `is_logged_in` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `last_active` datetime NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `disabling_reason` varchar(20) DEFAULT NULL,
  `disabling_remark` varchar(100) DEFAULT NULL,
  `otp_count` int DEFAULT NULL,
  `last_active_time` datetime DEFAULT NULL,
  `login_attempts` tinyint NOT NULL,
  `login_attempt_date` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `is_enabled` tinyint DEFAULT '1' COMMENT '0-no,1-yes',
  PRIMARY KEY (`admin_id`),
  KEY `user_type` (`user_type`),
  KEY `ug_id` (`ug_id`),
  KEY `is_logged_in` (`is_logged_in`),
  KEY `ad_user_id` (`ad_user_id`),
  KEY `ad_user_name` (`ad_user_name`),
  KEY `ad_user_email` (`ad_user_email`),
  KEY `ad_branch_code` (`ad_branch_code`),
  KEY `last_active` (`last_active`),
  KEY `login_attempts` (`login_attempts`),
  KEY `is_enabled` (`is_enabled`),
  KEY `is_deleted` (`is_deleted`),
  KEY `password` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=5939 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin_activity_log`
--

DROP TABLE IF EXISTS `admin_activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_activity_log` (
  `admin_log_id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int NOT NULL,
  `admin_log_in` datetime NOT NULL,
  `admin_log_out` datetime NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`admin_log_id`),
  KEY `admin_id` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=883 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin_duplicate`
--

DROP TABLE IF EXISTS `admin_duplicate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_duplicate` (
  `admin_test_id` int NOT NULL AUTO_INCREMENT,
  `ug_id` int NOT NULL,
  `ad_user_id` varchar(50) NOT NULL,
  `ad_user_name` varchar(100) NOT NULL,
  `ad_user_email` varchar(100) NOT NULL,
  `ad_contact_no` varchar(12) NOT NULL,
  `address` varchar(255) NOT NULL,
  `user_type` tinyint NOT NULL DEFAULT '0' COMMENT '0-branch_manager,1-admin_test',
  `ad_branch_code` int NOT NULL,
  `password` varchar(70) NOT NULL,
  `old_password` text NOT NULL,
  `is_reset_password` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `is_logged_in` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `last_active` datetime NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `login_attempts` int NOT NULL,
  `login_attempt_date` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `is_enabled` tinyint DEFAULT '1' COMMENT '0-no,1-yes',
  PRIMARY KEY (`admin_test_id`),
  KEY `user_type` (`user_type`),
  KEY `ug_id` (`ug_id`),
  KEY `is_logged_in` (`is_logged_in`),
  KEY `ad_user_id` (`ad_user_id`),
  KEY `ad_user_name` (`ad_user_name`),
  KEY `ad_user_email` (`ad_user_email`),
  KEY `ad_branch_code` (`ad_branch_code`),
  KEY `last_active` (`last_active`),
  KEY `login_attempts` (`login_attempts`),
  KEY `is_enabled` (`is_enabled`),
  KEY `is_deleted` (`is_deleted`),
  KEY `password` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=23010 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin_duplicate_check`
--

DROP TABLE IF EXISTS `admin_duplicate_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_duplicate_check` (
  `admin_test_id` int NOT NULL AUTO_INCREMENT,
  `ug_id` int NOT NULL,
  `ad_user_id` varchar(50) NOT NULL,
  `ad_user_name` varchar(100) NOT NULL,
  `ad_user_email` varchar(100) NOT NULL,
  `ad_contact_no` varchar(12) NOT NULL,
  `address` varchar(255) NOT NULL,
  `user_type` tinyint NOT NULL DEFAULT '0' COMMENT '0-branch_manager,1-admin_test',
  `ad_branch_code` int NOT NULL,
  `password` varchar(70) NOT NULL,
  `old_password` text NOT NULL,
  `is_reset_password` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `is_logged_in` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `last_active` datetime NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `login_attempts` int NOT NULL,
  `login_attempt_date` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `is_enabled` tinyint DEFAULT '1' COMMENT '0-no,1-yes',
  PRIMARY KEY (`admin_test_id`),
  KEY `user_type` (`user_type`),
  KEY `ug_id` (`ug_id`),
  KEY `is_logged_in` (`is_logged_in`),
  KEY `ad_user_id` (`ad_user_id`),
  KEY `ad_user_name` (`ad_user_name`),
  KEY `ad_user_email` (`ad_user_email`),
  KEY `ad_branch_code` (`ad_branch_code`),
  KEY `last_active` (`last_active`),
  KEY `login_attempts` (`login_attempts`),
  KEY `is_enabled` (`is_enabled`),
  KEY `is_deleted` (`is_deleted`),
  KEY `password` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=23010 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin_modules`
--

DROP TABLE IF EXISTS `admin_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_modules` (
  `module_id` int NOT NULL AUTO_INCREMENT,
  `module_name` varchar(150) NOT NULL,
  `module_actions` text NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_enabled` tinyint NOT NULL,
  `is_deleted` tinyint NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin_test`
--

DROP TABLE IF EXISTS `admin_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_test` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `ug_id` int NOT NULL,
  `ad_user_id` varchar(30) NOT NULL,
  `branch_head_uuid` varchar(36) DEFAULT NULL,
  `branch_head_secret_key` varchar(10) DEFAULT NULL,
  `ad_user_name` varchar(50) NOT NULL,
  `ad_user_email` varchar(100) NOT NULL,
  `ad_contact_no` varchar(12) NOT NULL,
  `address` varchar(255) NOT NULL,
  `user_type` tinyint NOT NULL DEFAULT '0' COMMENT '0-branch_manager,1-admin',
  `ad_branch_code` int NOT NULL,
  `password` varchar(70) NOT NULL,
  `old_password` varchar(255) NOT NULL,
  `is_reset_password` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `is_logged_in` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `last_active` datetime NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `disabling_reason` varchar(20) DEFAULT NULL,
  `disabling_remark` varchar(100) DEFAULT NULL,
  `otp_count` int DEFAULT NULL,
  `last_active_time` datetime DEFAULT NULL,
  `login_attempts` tinyint NOT NULL,
  `login_attempt_date` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `is_enabled` tinyint DEFAULT '1' COMMENT '0-no,1-yes',
  PRIMARY KEY (`admin_id`),
  KEY `user_type` (`user_type`),
  KEY `ug_id` (`ug_id`),
  KEY `is_logged_in` (`is_logged_in`),
  KEY `ad_user_id` (`ad_user_id`),
  KEY `ad_user_name` (`ad_user_name`),
  KEY `ad_user_email` (`ad_user_email`),
  KEY `ad_branch_code` (`ad_branch_code`),
  KEY `last_active` (`last_active`),
  KEY `login_attempts` (`login_attempts`),
  KEY `is_enabled` (`is_enabled`),
  KEY `is_deleted` (`is_deleted`),
  KEY `password` (`password`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin_user_activity`
--

DROP TABLE IF EXISTS `admin_user_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_user_activity` (
  `admin_user_activity_id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int NOT NULL DEFAULT '0',
  `ug_id` int NOT NULL DEFAULT '0',
  `ad_user_id` varchar(50) NOT NULL,
  `ad_user_name` varchar(100) NOT NULL,
  `ad_user_email` varchar(50) NOT NULL,
  `ad_contact_no` varchar(12) NOT NULL,
  `address` varchar(255) NOT NULL,
  `user_type` tinyint NOT NULL DEFAULT '0' COMMENT '0-branch_manager,1-admin',
  `ad_branch_code` int NOT NULL DEFAULT '0',
  `action_status` tinyint NOT NULL DEFAULT '0' COMMENT '0-Created,1-Modified,2-Enabled,3-Disabled,4-Deleted',
  `action_by` varchar(100) NOT NULL DEFAULT '0',
  `action_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_enabled` tinyint NOT NULL DEFAULT '0' COMMENT '0-No,1-Yes',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0-NO,1-Yes',
  PRIMARY KEY (`admin_user_activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2008 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin_users_group`
--

DROP TABLE IF EXISTS `admin_users_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users_group` (
  `ug_id` int NOT NULL AUTO_INCREMENT,
  `ug_name` varchar(100) NOT NULL,
  `ug_roles` text NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_enabled` tinyint NOT NULL COMMENT '0-no,1-yes',
  `is_deleted` tinyint NOT NULL COMMENT '0-no,1-yes',
  PRIMARY KEY (`ug_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin_users_group_activity`
--

DROP TABLE IF EXISTS `admin_users_group_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users_group_activity` (
  `admin_ug_activity_id` int NOT NULL AUTO_INCREMENT,
  `ug_id` int NOT NULL DEFAULT '0',
  `ug_name` varchar(100) NOT NULL DEFAULT '',
  `ug_roles` text NOT NULL,
  `action_by` varchar(100) NOT NULL DEFAULT '',
  `action_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `action_status` tinyint NOT NULL DEFAULT '0' COMMENT '0-created,1-modified,2-enabled,3-disabled,4-deleted',
  `cdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`admin_ug_activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=573 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `agent_activity_log`
--

DROP TABLE IF EXISTS `agent_activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agent_activity_log` (
  `agent_log_id` int NOT NULL AUTO_INCREMENT,
  `agent_id` int NOT NULL,
  `agent_log_in` datetime DEFAULT NULL,
  `agent_log_out` datetime DEFAULT NULL,
  `agent_geo_location` text NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`agent_log_id`),
  KEY `agent_id` (`agent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1246 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `agent_consent`
--

DROP TABLE IF EXISTS `agent_consent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agent_consent` (
  `consent_id` int NOT NULL AUTO_INCREMENT,
  `agent_id` int NOT NULL,
  `ad_id` varchar(30) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `customer_id` int NOT NULL DEFAULT '0',
  `verification_code` varchar(36) NOT NULL,
  `otp` varchar(10) NOT NULL,
  `agent_img` varchar(150) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `udate` datetime NOT NULL,
  `cdate` datetime NOT NULL,
  PRIMARY KEY (`consent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=871 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `agent_details`
--

DROP TABLE IF EXISTS `agent_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agent_details` (
  `agent_id` int NOT NULL AUTO_INCREMENT,
  `ug_id` int DEFAULT '3',
  `admin_id` int NOT NULL,
  `ad_user_id` varchar(50) NOT NULL,
  `agent_uuid` varchar(36) NOT NULL,
  `agent_secret_key` varchar(10) DEFAULT NULL,
  `agent_code` varchar(20) DEFAULT NULL,
  `user_name` varchar(50) NOT NULL,
  `agent_address` varchar(255) NOT NULL,
  `agent_mobile_no` varchar(15) NOT NULL,
  `agent_email_id` varchar(100) NOT NULL,
  `password` varchar(70) NOT NULL,
  `old_password` varchar(255) NOT NULL,
  `is_reset_password` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `branch_code` int NOT NULL,
  `agent_login_status` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `remark` varchar(255) DEFAULT NULL,
  `disabling_reason` varchar(20) DEFAULT NULL,
  `disabling_remark` varchar(100) DEFAULT NULL,
  `otp_count` int NOT NULL,
  `last_active_time` datetime NOT NULL,
  `login_attempts` int NOT NULL,
  `login_attempt_date` datetime NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `is_enabled` tinyint DEFAULT '1' COMMENT '0-no,1-yes',
  PRIMARY KEY (`agent_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `ug_id` (`ug_id`),
  KEY `admin_id` (`admin_id`),
  KEY `ad_user_id` (`ad_user_id`),
  KEY `agent_uuid` (`agent_uuid`),
  KEY `user_name` (`user_name`),
  KEY `branch_code` (`branch_code`),
  KEY `is_enabled` (`is_enabled`),
  KEY `password` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=4328 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `agent_pgkno`
--

DROP TABLE IF EXISTS `agent_pgkno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agent_pgkno` (
  `id` int NOT NULL AUTO_INCREMENT,
  `agent_id` int NOT NULL DEFAULT '0',
  `pgk_assign_emp_id` varchar(50) NOT NULL,
  `pgk_no` varchar(50) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0-un used,1-Used',
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `agent_id` (`agent_id`,`is_deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aml_list`
--

DROP TABLE IF EXISTS `aml_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aml_list` (
  `aml_list_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `custom_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `black_list_code` varchar(15) NOT NULL,
  `description` varchar(50) NOT NULL,
  `serial_number` varchar(20) NOT NULL,
  `type` varchar(50) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `passportNum` varchar(30) NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT 'z',
  PRIMARY KEY (`aml_list_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `name` (`name`),
  KEY `dob` (`dob`),
  KEY `passportNum` (`passportNum`)
) ENGINE=InnoDB AUTO_INCREMENT=67876 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aml_log`
--

DROP TABLE IF EXISTS `aml_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aml_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `url` text,
  `request` longtext,
  `response` longtext,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `api_version`
--

DROP TABLE IF EXISTS `api_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_version` (
  `id` int NOT NULL AUTO_INCREMENT,
  `version` int NOT NULL DEFAULT '0',
  `version_url` varchar(100) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `auth_page_log`
--

DROP TABLE IF EXISTS `auth_page_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_page_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `req_id` longtext,
  `ip` longtext,
  `domain` longtext,
  `url` longtext,
  `cdate` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1561 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `billdesk_order_details`
--

DROP TABLE IF EXISTS `billdesk_order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billdesk_order_details` (
  `bid` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `order_id` varchar(50) DEFAULT NULL,
  `payload` longtext,
  `url` text,
  `request` longtext,
  `response` longtext,
  `payment_status` varchar(10) DEFAULT NULL,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=318 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `black_list_logs`
--

DROP TABLE IF EXISTS `black_list_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `black_list_logs` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(36) NOT NULL,
  `log_type` varchar(50) DEFAULT NULL,
  `url` text NOT NULL,
  `request` longtext NOT NULL,
  `response` longtext,
  `cdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `udate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `blob_dtl`
--

DROP TABLE IF EXISTS `blob_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blob_dtl` (
  `blob_dtl_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `pid_type` varchar(5) NOT NULL,
  `document_id_no` varbinary(150) NOT NULL DEFAULT '',
  `profile_img` varchar(255) NOT NULL,
  `is_used_as_additional_document` tinyint NOT NULL COMMENT '0-no,1-yes',
  `is_form_60` tinyint NOT NULL DEFAULT '0' COMMENT '0-PAN,1-Form60',
  `doc_img_1` varchar(255) NOT NULL,
  `doc_details_1` varchar(50) NOT NULL,
  `doc_img_2` varchar(255) NOT NULL,
  `doc_details_2` varchar(50) NOT NULL,
  `doc_img_3` varchar(255) NOT NULL,
  `doc_details_3` varchar(50) NOT NULL,
  `doc_img_4` varchar(255) NOT NULL,
  `doc_details_4` varchar(50) NOT NULL,
  `doc_img_5` varchar(255) NOT NULL,
  `doc_details_5` varchar(50) NOT NULL,
  `doc_img_6` varchar(255) NOT NULL,
  `doc_details_6` varchar(50) NOT NULL,
  `doc_img_7` varchar(255) NOT NULL,
  `doc_details_7` varchar(50) NOT NULL,
  `doc_img_8` varchar(255) NOT NULL,
  `doc_details_8` varchar(50) NOT NULL,
  `doc_img_9` varchar(255) NOT NULL,
  `doc_details_9` varchar(50) NOT NULL,
  `doc_img_10` varchar(255) NOT NULL,
  `doc_details_10` varchar(50) NOT NULL,
  `seed_status` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`blob_dtl_id`),
  KEY `customer_id` (`customer_id`),
  KEY `document_id_no` (`document_id_no`),
  KEY `pid_type` (`pid_type`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `branch_checker_log`
--

DROP TABLE IF EXISTS `branch_checker_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch_checker_log` (
  `branch_checker_id` int NOT NULL AUTO_INCREMENT,
  `branch_code` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `is_approved` tinyint(1) DEFAULT '0',
  `is_rejected` tinyint(1) DEFAULT '0',
  `checker_log_in` datetime DEFAULT NULL,
  `checker_log_out` datetime DEFAULT NULL,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  PRIMARY KEY (`branch_checker_id`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `branch_maker_log`
--

DROP TABLE IF EXISTS `branch_maker_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch_maker_log` (
  `branch_maker_id` int NOT NULL AUTO_INCREMENT,
  `branch_code` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `maker_log_in` datetime DEFAULT NULL,
  `mker_log_out` datetime DEFAULT NULL,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  PRIMARY KEY (`branch_maker_id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cbs_retry_log`
--

DROP TABLE IF EXISTS `cbs_retry_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cbs_retry_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `admin_id` varchar(30) NOT NULL,
  `ad_user_id` varchar(30) NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `check_account_logs`
--

DROP TABLE IF EXISTS `check_account_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `check_account_logs` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `account_no` int DEFAULT NULL,
  `cif_no` int DEFAULT NULL,
  `account_url` varchar(50) NOT NULL,
  `cif_url` varchar(50) NOT NULL,
  `account_request` varchar(255) DEFAULT NULL,
  `cifDetails_request` varchar(255) DEFAULT NULL,
  `account_response` longtext,
  `cifDetails_response` longtext,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint DEFAULT '0',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cif_acc_creation_log`
--

DROP TABLE IF EXISTS `cif_acc_creation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cif_acc_creation_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `url` varchar(150) NOT NULL,
  `log_type` varchar(20) NOT NULL,
  `request` longtext NOT NULL,
  `response` longtext NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contact_dtl_1`
--

DROP TABLE IF EXISTS `contact_dtl_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_dtl_1` (
  `contact_dtl_1_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `residence_code` varchar(15) NOT NULL,
  `self_employed` varchar(15) NOT NULL DEFAULT '',
  `office_contact_1` varchar(15) NOT NULL,
  `office_contact_2` varchar(15) NOT NULL,
  `extension` int NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `fax` varchar(15) NOT NULL,
  `email_1` varchar(65) NOT NULL,
  `email_2` varchar(65) NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL COMMENT '0-no,1-yes',
  PRIMARY KEY (`contact_dtl_1_id`),
  KEY `customer_id` (`customer_id`),
  KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=5909 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cron_details`
--

DROP TABLE IF EXISTS `cron_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cron_details` (
  `cron_id` int NOT NULL AUTO_INCREMENT,
  `cron_desc` varchar(50) NOT NULL,
  `cron_status` varchar(3) NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`cron_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cron_log`
--

DROP TABLE IF EXISTS `cron_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cron_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `cron_id` int NOT NULL DEFAULT '0',
  `cron_status` varchar(3) NOT NULL DEFAULT '0',
  `admin_id` int NOT NULL DEFAULT '0',
  `cdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `joint_customer_id` int NOT NULL,
  `application_no` varchar(10) DEFAULT NULL,
  `customer_cif` varchar(36) NOT NULL DEFAULT '0' COMMENT 'From Web Service',
  `customer_relation` int NOT NULL,
  `profile_img` varchar(255) NOT NULL,
  `account_no` varchar(36) NOT NULL,
  `account_type_code` int NOT NULL,
  `account_sub_type_code` int NOT NULL DEFAULT '0',
  `date_of_opening` date NOT NULL,
  `account_name` varchar(50) NOT NULL,
  `account_short_name` varchar(50) NOT NULL,
  `scheme_code` varchar(5) NOT NULL,
  `product_code` int NOT NULL,
  `product_segment_code` int NOT NULL,
  `branch_code` int NOT NULL,
  `home_branch_code` int NOT NULL,
  `staff_salary_branch_code` int NOT NULL,
  `debit_card_type_code` int NOT NULL,
  `pgk_no` varchar(50) NOT NULL,
  `is_pgk_assign` tinyint NOT NULL DEFAULT '0' COMMENT '0-No,1-yes',
  `guardian_cif` varchar(36) NOT NULL,
  `minor_guardian_name` varchar(50) NOT NULL,
  `minor_guardian_dob` date NOT NULL,
  `minor_guardian_relation` varchar(3) NOT NULL,
  `minor_guardian_img` varchar(255) NOT NULL,
  `minor_guardian_signature` varchar(255) NOT NULL,
  `type_of_cif` tinyint NOT NULL COMMENT '0-individual,1-minor_operated_by_self,2-mionor_operated_by_guardian_cif_present,3-mionor_operated_by_guardian_cif_not_present,4-joint',
  `is_guardian_cif_present` tinyint NOT NULL COMMENT '0-No,1-yes',
  `is_guardian` tinyint NOT NULL COMMENT '0-No,1-yes',
  `signature_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `esign_url` varchar(255) NOT NULL DEFAULT '',
  `annexure_pdf` varchar(100) NOT NULL DEFAULT '',
  `esign_html` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cibil_report` varchar(255) NOT NULL,
  `minor_signature` varchar(255) NOT NULL,
  `application_form` varchar(255) NOT NULL,
  `is_pan_verification_fail` tinyint NOT NULL DEFAULT '0' COMMENT '0-pass,1-fail',
  `royalty_type` tinyint NOT NULL DEFAULT '0' COMMENT '0-classic,1-premium',
  `is_primary_customer` tinyint NOT NULL DEFAULT '1' COMMENT '0-no,1-yes',
  `is_minor_senior_adult_flag` tinyint NOT NULL COMMENT '0-adult,1-minor,2-senior',
  `is_current_address_same_adhar_address` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `kyc_verification_mode` tinyint NOT NULL DEFAULT '1' COMMENT '0-manual,1-ekyc',
  `demographic_auth` tinyint NOT NULL DEFAULT '0',
  `video_id_kyc_type` varchar(100) NOT NULL DEFAULT '',
  `upi_transaction_reference_id` varchar(100) NOT NULL DEFAULT '',
  `kyc_address_mode` tinyint NOT NULL DEFAULT '0' COMMENT '0-current address, 1-permanent address, 2-communication address',
  `aadhar_consent_provided` tinyint NOT NULL DEFAULT '1' COMMENT '0-no,1-yes',
  `video_kyc` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `completed_screen` varchar(50) NOT NULL,
  `next_screen` varchar(50) NOT NULL,
  `aml_flag` tinyint NOT NULL DEFAULT '0' COMMENT '0-aml-pending,1-in_black_list,2-mannual_aml,3-aml_pass',
  `rpa_option` tinyint NOT NULL DEFAULT '0' COMMENT '0-add,1-modify',
  `exist_cif_pan_flag` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `exist_cif_pan_no` varchar(50) NOT NULL,
  `cif_modify_consent_check` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `branch_head_check` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `branch_head_id` int NOT NULL DEFAULT '0',
  `branch_head_checked_date` datetime NOT NULL,
  `cpc_check` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `cpc_id` int NOT NULL DEFAULT '0',
  `cpc_checked_date` datetime NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0-pending,1-approved,2-rejected, 3-Parked',
  `branch_head_approve` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `rpa_cif` varchar(36) NOT NULL,
  `rpa_account_no` varchar(50) NOT NULL,
  `existing_rpa_account_no` varchar(50) DEFAULT NULL,
  `rpa_cif_status` tinyint NOT NULL COMMENT '0-pendending,1-approved,2-rejected',
  `rpa_acc_status` tinyint NOT NULL COMMENT '0-pending,1-complete',
  `contract_no` varchar(100) DEFAULT NULL,
  `nominee_reg_No` varchar(30) DEFAULT NULL,
  `maturity_instruction` varchar(20) DEFAULT NULL,
  `remark` text NOT NULL,
  `delete_reason` text NOT NULL,
  `agent_assign_reason` text NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  PRIMARY KEY (`customer_id`),
  KEY `status` (`status`),
  KEY `branch_code` (`branch_code`),
  KEY `joint_customer_id` (`joint_customer_id`),
  KEY `customer_cif` (`customer_cif`),
  KEY `type_of_cif` (`type_of_cif`),
  KEY `is_minor_senior_adult_flag` (`is_minor_senior_adult_flag`),
  KEY `completed_screen` (`completed_screen`),
  KEY `next_screen` (`next_screen`),
  KEY `rpa_cif` (`rpa_cif`),
  KEY `is_primary_customer` (`is_primary_customer`),
  KEY `kyc_verification_mode` (`kyc_verification_mode`),
  KEY `product_code` (`product_code`),
  KEY `is_pan_verification_fail` (`is_pan_verification_fail`),
  KEY `rpa_cif_status` (`rpa_cif_status`),
  KEY `rpa_account_no` (`rpa_account_no`),
  KEY `aml_flag` (`aml_flag`),
  KEY `pgk_no` (`pgk_no`),
  KEY `cdate` (`cdate`)
) ENGINE=InnoDB AUTO_INCREMENT=17468 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_cibil_docs`
--

DROP TABLE IF EXISTS `customer_cibil_docs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_cibil_docs` (
  `doc_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL DEFAULT '0',
  `cibil_url` varchar(2500) DEFAULT '',
  `cdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`doc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_consent`
--

DROP TABLE IF EXISTS `customer_consent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_consent` (
  `consent_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `verification_code` varchar(36) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `customer_alt_name` varchar(100) NOT NULL,
  `customer_alt_mobile_no` varchar(10) NOT NULL,
  `customer_relation` tinyint NOT NULL COMMENT '0 - Family,1 - Friends,2 - Known Person',
  `is_alt_mobile` tinyint NOT NULL COMMENT '0-no,1-yes',
  `otp` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `mode_of_consent` tinyint NOT NULL COMMENT '0-link,1-otp',
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL COMMENT '0-no,1-yes',
  PRIMARY KEY (`consent_id`),
  KEY `customer_id` (`customer_id`),
  KEY `mobile_no` (`mobile_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2305 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_de_dupe_log`
--

DROP TABLE IF EXISTS `customer_de_dupe_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_de_dupe_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `agent_id` int DEFAULT NULL,
  `url` text,
  `request` longtext,
  `response` longtext,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '1-approve,0-not approve',
  `approved_by` varchar(50) NOT NULL,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  `log_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1936 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_live`
--

DROP TABLE IF EXISTS `customer_live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_live` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `joint_customer_id` int NOT NULL,
  `application_no` varchar(10) DEFAULT NULL,
  `customer_cif` varchar(36) NOT NULL COMMENT 'From Web Service',
  `customer_relation` int NOT NULL,
  `profile_img` text NOT NULL,
  `account_no` varchar(36) NOT NULL,
  `account_type_code` int NOT NULL,
  `account_sub_type_code` int NOT NULL DEFAULT '0',
  `date_of_opening` date NOT NULL,
  `account_name` varchar(50) NOT NULL,
  `account_short_name` varchar(25) NOT NULL,
  `scheme_code` varchar(5) NOT NULL,
  `product_code` int NOT NULL,
  `branch_code` int NOT NULL,
  `home_branch_code` int NOT NULL,
  `pgk_no` varchar(50) NOT NULL,
  `guardian_cif` varchar(36) NOT NULL,
  `minor_guardian_name` varchar(50) NOT NULL,
  `minor_guardian_dob` date NOT NULL,
  `minor_guardian_relation` varchar(3) NOT NULL,
  `minor_guardian_img` varchar(255) NOT NULL,
  `minor_guardian_signature` varchar(255) NOT NULL,
  `type_of_cif` tinyint NOT NULL COMMENT '0-individual,1-minor_operated_by_self,2-mionor_operated_by_guardian_cif_present,3-mionor_operated_by_guardian_cif_not_present,4-joint',
  `is_guardian_cif_present` tinyint NOT NULL COMMENT '0-No,1-yes',
  `is_guardian` tinyint NOT NULL COMMENT '0-No,1-yes',
  `signature_img` longtext NOT NULL,
  `minor_signature` longtext NOT NULL,
  `application_form` longtext NOT NULL,
  `is_pan_verification_fail` tinyint NOT NULL DEFAULT '0' COMMENT '0-pass,1-fail',
  `royalty_type` tinyint NOT NULL DEFAULT '0' COMMENT '0-classic,1-premium',
  `is_primary_customer` tinyint NOT NULL DEFAULT '1' COMMENT '0-no,1-yes',
  `is_minor_senior_adult_flag` tinyint NOT NULL COMMENT '0-adult,1-minor,2-senior',
  `is_current_address_same_adhar_address` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `kyc_verification_mode` tinyint NOT NULL DEFAULT '1' COMMENT '0-manual,1-ekyc',
  `aadhar_consent_provided` tinyint NOT NULL DEFAULT '1' COMMENT '0-no,1-yes',
  `video_kyc` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `completed_screen` varchar(50) NOT NULL,
  `next_screen` varchar(50) NOT NULL,
  `aml_flag` tinyint NOT NULL DEFAULT '0' COMMENT '0-aml-pending,1-in_black_list,2-mannual_aml,3-aml_pass',
  `rpa_option` tinyint NOT NULL DEFAULT '0' COMMENT '0-add,1-modify',
  `exist_cif_pan_flag` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `exist_cif_pan_no` varchar(50) NOT NULL,
  `cif_modify_consent_check` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `cpc_check` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0-pending,1-approved,2-rejected',
  `branch_head_approve` tinyint NOT NULL DEFAULT '1' COMMENT '0-no,1-yes',
  `rpa_cif` varchar(36) NOT NULL,
  `rpa_account_no` varchar(50) NOT NULL,
  `rpa_cif_status` tinyint NOT NULL COMMENT '0-pendending,1-approved,2-rejected',
  `rpa_acc_status` tinyint NOT NULL COMMENT '0-pending,1-complete',
  `remark` text NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  PRIMARY KEY (`customer_id`),
  KEY `status` (`status`),
  KEY `is_deleted` (`is_deleted`),
  KEY `branch_code` (`branch_code`),
  KEY `joint_customer_id` (`joint_customer_id`),
  KEY `customer_cif` (`customer_cif`),
  KEY `type_of_cif` (`type_of_cif`),
  KEY `is_minor_senior_adult_flag` (`is_minor_senior_adult_flag`),
  KEY `completed_screen` (`completed_screen`),
  KEY `next_screen` (`next_screen`),
  KEY `rpa_cif` (`rpa_cif`)
) ENGINE=InnoDB AUTO_INCREMENT=6087 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_product_check_log`
--

DROP TABLE IF EXISTS `customer_product_check_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_product_check_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `cif_no` int DEFAULT NULL,
  `request` longtext,
  `response` longtext,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1168 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_product_code_log`
--

DROP TABLE IF EXISTS `customer_product_code_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_product_code_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `admin_id` int NOT NULL,
  `log_type` varchar(20) NOT NULL,
  `request` longtext NOT NULL,
  `response` longtext NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_temp`
--

DROP TABLE IF EXISTS `customer_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_temp` (
  `customer_temp_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL DEFAULT '0',
  `aadhaar` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `address` text,
  `kyc_verification_mode` tinyint NOT NULL DEFAULT '1' COMMENT '0-manual,1-ekyc',
  `profile_img` longtext NOT NULL,
  `doc_front` longtext NOT NULL,
  `doc_back` longtext NOT NULL,
  `cdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`customer_temp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=517 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_temp1`
--

DROP TABLE IF EXISTS `customer_temp1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_temp1` (
  `customer_temp_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL DEFAULT '0',
  `aadhaar` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `address` text,
  `kyc_verification_mode` tinyint NOT NULL DEFAULT '1' COMMENT '0-manual,1-ekyc',
  `profile_img` longtext NOT NULL,
  `doc_front` longtext NOT NULL,
  `doc_back` longtext NOT NULL,
  `cdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`customer_temp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deleted_customer_log`
--

DROP TABLE IF EXISTS `deleted_customer_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deleted_customer_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `user_log_in` datetime DEFAULT NULL,
  `user_log_out` datetime DEFAULT NULL,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `demo_aadhaar_vault_store_log`
--

DROP TABLE IF EXISTS `demo_aadhaar_vault_store_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demo_aadhaar_vault_store_log` (
  `aadhaar_vault_store_log_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `request` text NOT NULL,
  `response` text NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`aadhaar_vault_store_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `demo_cif_creation_log`
--

DROP TABLE IF EXISTS `demo_cif_creation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demo_cif_creation_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `url` varchar(150) NOT NULL,
  `log_type` varchar(20) NOT NULL,
  `request` longtext NOT NULL,
  `response` longtext NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `demo_cif_entry`
--

DROP TABLE IF EXISTS `demo_cif_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demo_cif_entry` (
  `rpa_entry_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `agent_id` varchar(100) NOT NULL,
  `pgk_no` varchar(50) DEFAULT NULL,
  `customer_cif` varchar(36) NOT NULL COMMENT 'From Web Service',
  `account_type_code` int NOT NULL,
  `account_short_name` varchar(25) NOT NULL,
  `product_code` int NOT NULL,
  `branch_code` int NOT NULL,
  `type_of_cif` tinyint DEFAULT NULL COMMENT '0-individual,1-minor_operated_by_self,2-mionor_operated_by_guardian_cif_present,3-mionor_operated_by_guardian_cif_not_present,4-joint',
  `status` tinyint DEFAULT '0' COMMENT '0-pending,1-approved,2-rejected',
  `title_code` int DEFAULT NULL,
  `first_name` varchar(24) NOT NULL,
  `middle_name` varchar(24) DEFAULT NULL,
  `last_name` varchar(24) NOT NULL,
  `constitution_code` int NOT NULL,
  `caste_code` varchar(11) NOT NULL DEFAULT '',
  `mother_maiden_name` varchar(24) NOT NULL,
  `father_or_spouse_name` varchar(24) NOT NULL,
  `residential_status` varchar(1) NOT NULL,
  `address_dtl_id` int DEFAULT NULL,
  `address_type` varchar(2) DEFAULT NULL,
  `current_zipcode` int NOT NULL,
  `current_full_address` varchar(255) NOT NULL,
  `permanent_zipcode` int NOT NULL,
  `permanent_full_address` varchar(255) DEFAULT NULL,
  `communication_zipcode` int NOT NULL,
  `communication_full_address` varchar(255) DEFAULT NULL,
  `country_code` varchar(2) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `mobile_number` varchar(15) NOT NULL,
  `staying_since_month` int DEFAULT '0',
  `staying_since_year` int DEFAULT '0',
  `current_address` tinyint NOT NULL COMMENT '0-no,1-yes',
  `permanent_address` tinyint NOT NULL COMMENT '0-no,1-yes',
  `communication_address` tinyint NOT NULL COMMENT '0-no,1-yes',
  `customer_category_code` int NOT NULL,
  `customer_segment_code` int NOT NULL DEFAULT '99999',
  `business_division_code` int NOT NULL,
  `date_of_birth` varchar(50) DEFAULT NULL,
  `place_of_birth` int NOT NULL,
  `place_of_birth_name` varchar(50) NOT NULL,
  `sex` varchar(1) NOT NULL,
  `marital_status_code` varchar(1) NOT NULL,
  `religion_code` int NOT NULL,
  `nationality` varchar(2) NOT NULL DEFAULT 'IN',
  `language_code` varchar(2) NOT NULL,
  `illiterate_customer` tinyint NOT NULL COMMENT '0-no,1-yes',
  `physically_challenged` tinyint NOT NULL COMMENT '0-no,1-yes',
  `document_dtl_id` int DEFAULT NULL,
  `pid_type` varchar(5) NOT NULL,
  `document_id_no` varbinary(150) DEFAULT NULL,
  `adhar_vault_token` varchar(100) DEFAULT NULL,
  `date_of_issue` varchar(50) DEFAULT NULL,
  `place_of_issue` varchar(25) DEFAULT NULL,
  `issuing_authority` varchar(15) DEFAULT NULL,
  `issuing_country` varchar(2) DEFAULT NULL,
  `expiry_date` varchar(50) DEFAULT NULL,
  `sponsers_name` varchar(50) DEFAULT NULL,
  `sponsers_address` varchar(50) DEFAULT NULL,
  `is_used_for_address_proof` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `is_used_for_identity_check` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `type_of_employment_code` varchar(2) NOT NULL,
  `retired_pensioner_code` varchar(2) DEFAULT NULL,
  `relation_with_bank_code` varchar(2) DEFAULT NULL,
  `staff_number` varchar(10) DEFAULT NULL,
  `personal_dtl_id` int DEFAULT NULL,
  `source_of_income` int NOT NULL,
  `annual_income` int DEFAULT NULL,
  `annual_income_slab` int NOT NULL,
  `type_of_accommodation` int NOT NULL,
  `pan_or_gir` varchar(150) DEFAULT NULL,
  `form_60_in_lieu_of_pan` varchar(10) NOT NULL,
  `risk_categorization_code` varchar(1) DEFAULT NULL,
  `pep` tinyint NOT NULL COMMENT '0-no,1-yes',
  `fatca_required` tinyint NOT NULL COMMENT '0-no,1-yes',
  `tax_residence_of_india` tinyint NOT NULL COMMENT '0-no,1-yes',
  `address_type_of_tax_residential` tinyint NOT NULL DEFAULT '1' COMMENT '0-no,1-yes',
  `address_type_of_tax_business` tinyint NOT NULL DEFAULT '1' COMMENT '0-no,1-yes',
  `address_type_of_tax_registered_office` tinyint NOT NULL DEFAULT '1' COMMENT '0-no,1-yes',
  `client_number` int NOT NULL,
  `email` varchar(65) DEFAULT NULL,
  `rpa_cif` varchar(36) DEFAULT NULL,
  `rpa_cif_status` tinyint DEFAULT NULL COMMENT '0-pending,1-approved,2-rejected,3-cbs error',
  `rpa_completed_screen` varchar(50) DEFAULT NULL,
  `rpa_next_screen` varchar(50) DEFAULT NULL,
  `rpa_error_report` text,
  `rpa_option` tinyint(1) unsigned zerofill DEFAULT '0' COMMENT '0-add,1-modify',
  `aadhaar_vault_flag` tinyint DEFAULT '0' COMMENT '0-no,1-yes',
  `trial_count` int NOT NULL,
  `is_pgk_mapped` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL COMMENT '0-no,1-yes',
  PRIMARY KEY (`rpa_entry_id`),
  KEY `branch_code` (`branch_code`),
  KEY `customer_id` (`customer_id`),
  KEY `udate` (`udate`),
  KEY `cdate` (`cdate`),
  KEY `rpa_cif` (`rpa_cif`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `demographic_aadhar_logs`
--

DROP TABLE IF EXISTS `demographic_aadhar_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demographic_aadhar_logs` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  `user_id` varchar(15) DEFAULT NULL,
  `admin_id` varchar(15) DEFAULT NULL,
  `aadhar_no` varchar(25) NOT NULL,
  `request_data` longtext NOT NULL,
  `response` longtext NOT NULL,
  `cdate` datetime NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `aadhar_no` (`aadhar_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `demographic_auth_logs`
--

DROP TABLE IF EXISTS `demographic_auth_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demographic_auth_logs` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `aadhar_no` varchar(25) NOT NULL,
  `request` longtext NOT NULL,
  `response` longtext NOT NULL,
  `resp_status` varchar(10) NOT NULL,
  `cdate` datetime NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deposite_calc_log`
--

DROP TABLE IF EXISTS `deposite_calc_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposite_calc_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `request` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `response` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=731 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `digi_locker_log`
--

DROP TABLE IF EXISTS `digi_locker_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `digi_locker_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(100) DEFAULT NULL,
  `customer_id` int NOT NULL DEFAULT '0',
  `url_request` text NOT NULL,
  `url_response` text NOT NULL,
  `requestId` varchar(50) NOT NULL DEFAULT '',
  `details_request` text NOT NULL,
  `details_response` text NOT NULL,
  `file_request` text NOT NULL,
  `file_response` text NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=513 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `digi_locker_login`
--

DROP TABLE IF EXISTS `digi_locker_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `digi_locker_login` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(50) NOT NULL,
  `request` text NOT NULL,
  `response` text NOT NULL,
  `id` varchar(80) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `digilocker_documents`
--

DROP TABLE IF EXISTS `digilocker_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `digilocker_documents` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `doc_name` varchar(100) DEFAULT NULL,
  `doctype` varchar(100) DEFAULT NULL,
  `uri` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `cdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `document_dtl`
--

DROP TABLE IF EXISTS `document_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_dtl` (
  `document_dtl_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `pid_type` varchar(5) NOT NULL,
  `document_id_no` varbinary(150) NOT NULL DEFAULT '',
  `adhar_vault_token` varchar(100) NOT NULL DEFAULT '',
  `card_no` varchar(25) NOT NULL,
  `name_on_doc` varchar(100) NOT NULL,
  `date_of_issue` date NOT NULL,
  `place_of_issue` varchar(25) NOT NULL,
  `issuing_authority` varchar(100) NOT NULL,
  `issuing_country` varchar(2) NOT NULL,
  `expiry_date` date NOT NULL,
  `sponsers_name` varchar(50) NOT NULL,
  `sponsers_address` varchar(50) NOT NULL,
  `profile_img` varchar(255) NOT NULL,
  `is_used_for_address_proof` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `is_used_for_identity_check` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `kyc_type` tinyint NOT NULL DEFAULT '0' COMMENT '0-videoId,1-biomatric,2-OTP',
  `is_minor` tinyint NOT NULL COMMENT '0-no,1-yes',
  `is_used_as_additional_document` tinyint NOT NULL COMMENT '0-no,1-yes',
  `is_form_60` tinyint NOT NULL DEFAULT '0' COMMENT '0-PAN,1-Form60',
  `agricultural_income` int NOT NULL DEFAULT '0',
  `other_income` int NOT NULL DEFAULT '0',
  `estimated_income` int NOT NULL DEFAULT '0',
  `doc_img_1` varchar(255) NOT NULL,
  `doc_details_1` varchar(50) NOT NULL,
  `doc_img_2` varchar(255) NOT NULL,
  `doc_details_2` varchar(50) NOT NULL,
  `doc_img_3` varchar(255) NOT NULL,
  `doc_details_3` varchar(50) NOT NULL,
  `doc_img_4` varchar(255) NOT NULL,
  `doc_details_4` varchar(50) NOT NULL,
  `doc_img_5` varchar(255) NOT NULL,
  `doc_details_5` varchar(50) NOT NULL,
  `doc_img_6` varchar(255) NOT NULL,
  `doc_details_6` varchar(50) NOT NULL,
  `doc_img_7` varchar(255) NOT NULL,
  `doc_details_7` varchar(50) NOT NULL,
  `doc_img_8` varchar(255) NOT NULL,
  `doc_details_8` varchar(50) NOT NULL,
  `doc_img_9` varchar(255) NOT NULL,
  `doc_details_9` varchar(50) NOT NULL,
  `doc_img_10` varchar(255) NOT NULL,
  `doc_details_10` varchar(50) NOT NULL,
  `seed_status` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `aadhaar_vault_flag` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `aadhar_masked` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `kyc_inventory_status` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `is_digilocker_status` tinyint NOT NULL DEFAULT '0' COMMENT '0-enable,1-disable',
  `demographic_auth` tinyint NOT NULL DEFAULT '0',
  `khosla_user_request_id` varchar(100) DEFAULT '',
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `aadhar_masked_pdf_url` varchar(255) DEFAULT NULL,
  `uid_token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`document_dtl_id`),
  KEY `customer_id` (`customer_id`),
  KEY `document_id_no` (`document_id_no`),
  KEY `pid_type` (`pid_type`)
) ENGINE=InnoDB AUTO_INCREMENT=37006 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `document_dtl_live`
--

DROP TABLE IF EXISTS `document_dtl_live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_dtl_live` (
  `document_dtl_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `pid_type` varchar(5) NOT NULL,
  `document_id_no` varbinary(150) NOT NULL DEFAULT '',
  `card_no` varchar(25) NOT NULL,
  `name_on_doc` varchar(100) NOT NULL,
  `date_of_issue` date NOT NULL,
  `place_of_issue` varchar(25) NOT NULL,
  `issuing_authority` varchar(100) NOT NULL,
  `issuing_country` varchar(2) NOT NULL,
  `expiry_date` date NOT NULL,
  `sponsers_name` varchar(50) NOT NULL,
  `sponsers_address` varchar(50) NOT NULL,
  `profile_img` longtext NOT NULL,
  `is_used_for_address_proof` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `is_used_for_identity_check` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `kyc_type` tinyint NOT NULL DEFAULT '0' COMMENT '0-videoId,1-biomatric,2-OTP',
  `is_minor` tinyint NOT NULL COMMENT '0-no,1-yes',
  `is_used_as_additional_document` tinyint NOT NULL COMMENT '0-no,1-yes',
  `is_form_60` tinyint NOT NULL DEFAULT '0' COMMENT '0-PAN,1-Form60',
  `agricultural_income` int NOT NULL DEFAULT '0',
  `other_income` int NOT NULL DEFAULT '0',
  `estimated_income` int NOT NULL DEFAULT '0',
  `doc_img_1` longtext NOT NULL,
  `doc_details_1` varchar(255) NOT NULL,
  `doc_img_2` longtext NOT NULL,
  `doc_details_2` varchar(255) NOT NULL,
  `doc_img_3` longtext NOT NULL,
  `doc_details_3` varchar(255) NOT NULL,
  `doc_img_4` longtext NOT NULL,
  `doc_details_4` varchar(255) NOT NULL,
  `doc_img_5` longtext NOT NULL,
  `doc_details_5` varchar(255) NOT NULL,
  `doc_img_6` varchar(255) NOT NULL,
  `doc_details_6` varchar(255) NOT NULL,
  `doc_img_7` varchar(255) NOT NULL,
  `doc_details_7` varchar(255) NOT NULL,
  `doc_img_8` varchar(255) NOT NULL,
  `doc_details_8` varchar(255) NOT NULL,
  `doc_img_9` varchar(255) NOT NULL,
  `doc_details_9` varchar(255) NOT NULL,
  `doc_img_10` varchar(255) NOT NULL,
  `doc_details_10` varchar(255) NOT NULL,
  `seed_status` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  PRIMARY KEY (`document_dtl_id`),
  KEY `customer_id` (`customer_id`),
  KEY `document_id_no` (`document_id_no`),
  KEY `pid_type` (`pid_type`),
  KEY `is_minor` (`is_minor`),
  KEY `is_form_60` (`is_form_60`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=12714 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `document_dtl_replica`
--

DROP TABLE IF EXISTS `document_dtl_replica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_dtl_replica` (
  `id` int NOT NULL AUTO_INCREMENT,
  `document_dtl_id` int NOT NULL DEFAULT '0',
  `customer_id` int NOT NULL,
  `pid_type` varchar(5) NOT NULL,
  `document_id_no` varbinary(150) NOT NULL,
  `card_no` varchar(25) NOT NULL,
  `name_on_doc` varchar(100) NOT NULL,
  `date_of_issue` date NOT NULL,
  `place_of_issue` varchar(25) NOT NULL,
  `issuing_authority` varchar(100) NOT NULL,
  `issuing_country` varchar(2) NOT NULL,
  `expiry_date` date NOT NULL,
  `sponsers_name` varchar(50) NOT NULL,
  `sponsers_address` varchar(50) NOT NULL,
  `profile_img` varchar(255) NOT NULL,
  `is_used_for_address_proof` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `is_used_for_identity_check` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `kyc_type` tinyint NOT NULL DEFAULT '0' COMMENT '0-videoId,1-biomatric,2-OTP',
  `is_minor` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `is_used_as_additional_document` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `is_form_60` tinyint NOT NULL DEFAULT '0' COMMENT ' 0-PAN, 1-Form60',
  `agricultural_income` int NOT NULL DEFAULT '0',
  `other_income` int NOT NULL DEFAULT '0',
  `estimated_income` int NOT NULL DEFAULT '0',
  `doc_img_1` varchar(255) NOT NULL,
  `doc_details_1` varchar(50) NOT NULL,
  `doc_img_2` varchar(255) NOT NULL,
  `doc_details_2` varchar(50) NOT NULL,
  `doc_img_3` varchar(255) NOT NULL,
  `doc_details_3` varchar(50) NOT NULL,
  `doc_img_4` varchar(255) NOT NULL,
  `doc_details_4` varchar(50) NOT NULL,
  `doc_img_5` varchar(255) NOT NULL,
  `doc_details_5` varchar(50) NOT NULL,
  `doc_img_6` varchar(255) NOT NULL,
  `doc_details_6` varchar(50) NOT NULL,
  `doc_img_7` varchar(255) NOT NULL,
  `doc_details_7` varchar(50) NOT NULL,
  `doc_img_8` varchar(255) NOT NULL,
  `doc_details_8` varchar(50) NOT NULL,
  `doc_img_9` varchar(255) NOT NULL,
  `doc_details_9` varchar(50) NOT NULL,
  `doc_img_10` varchar(255) NOT NULL,
  `doc_details_10` varchar(50) NOT NULL,
  `seed_status` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `aadhaar_vault_flag` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `is_signature` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `is_guardian_minor` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `is_cheque_image` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `is_cpc_added_document` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  PRIMARY KEY (`id`),
  KEY `document_dtl_id` (`document_dtl_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtl_1`
--

DROP TABLE IF EXISTS `dtl_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtl_1` (
  `dtl_1_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `application_no` varchar(36) NOT NULL,
  `branch_code` int NOT NULL DEFAULT '0',
  `title_code` int NOT NULL DEFAULT '0',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(50) NOT NULL DEFAULT '',
  `constitution_code` int NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `caste_code` varchar(11) NOT NULL DEFAULT '',
  `weaker_section_code` int NOT NULL,
  `under_poverty` tinyint NOT NULL COMMENT '0-no,1-yes',
  `mother_maiden_name` varchar(50) NOT NULL,
  `father_or_spouse_name` varchar(50) NOT NULL,
  `residential_status` varchar(1) NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL COMMENT '0-no,1-yes',
  PRIMARY KEY (`dtl_1_id`),
  KEY `customer_id` (`customer_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `first_name` (`first_name`),
  KEY `middle_name` (`middle_name`),
  KEY `last_name` (`last_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7188 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtl_2`
--

DROP TABLE IF EXISTS `dtl_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtl_2` (
  `dtl_2_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `customer_category_code` int NOT NULL,
  `customer_segment_code` int NOT NULL DEFAULT '99999',
  `business_division_code` int NOT NULL,
  `date_of_birth` date NOT NULL,
  `place_of_birth` int NOT NULL DEFAULT '0',
  `place_of_birth_name` varchar(50) NOT NULL DEFAULT '',
  `sex` varchar(1) NOT NULL DEFAULT '',
  `minor_sex` varchar(1) NOT NULL DEFAULT '',
  `marital_status_code` varchar(1) NOT NULL DEFAULT '',
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL COMMENT '0-no,1-yes',
  PRIMARY KEY (`dtl_2_id`),
  KEY `customer_id` (`customer_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_of_birth` (`date_of_birth`)
) ENGINE=InnoDB AUTO_INCREMENT=6839 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtl_3`
--

DROP TABLE IF EXISTS `dtl_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dtl_3` (
  `dtl_3_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `religion_code` int NOT NULL,
  `nationality` varchar(2) NOT NULL DEFAULT 'IN',
  `risk_country_code` varchar(2) NOT NULL DEFAULT 'IN',
  `language_code` varchar(2) NOT NULL,
  `illiterate_customer` tinyint NOT NULL COMMENT '0-no,1-yes',
  `physically_challenged` tinyint NOT NULL COMMENT '0-no,1-yes',
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL COMMENT '0-no,1-yes',
  PRIMARY KEY (`dtl_3_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5867 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ekyc_authentication_detils_log`
--

DROP TABLE IF EXISTS `ekyc_authentication_detils_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ekyc_authentication_detils_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `bar_code_no` varchar(250) DEFAULT NULL,
  `product_code` varchar(250) DEFAULT NULL,
  `ekyc_mobile_no` varchar(50) DEFAULT NULL,
  `ekyc_aadhar_no` varchar(255) DEFAULT NULL,
  `aadhar_no` varchar(255) DEFAULT NULL,
  `aadhar_json` longtext,
  `ekyc_type` tinyint DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `dob` date NOT NULL,
  `photo` longtext,
  `status` varchar(250) DEFAULT NULL,
  `address` longtext,
  `pincode` int DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `email_auth_logs`
--

DROP TABLE IF EXISTS `email_auth_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_auth_logs` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `email_id` varchar(250) NOT NULL,
  `url` varchar(250) NOT NULL,
  `request` longtext NOT NULL,
  `response` longtext NOT NULL,
  `cdate` datetime NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `email_verification`
--

DROP TABLE IF EXISTS `email_verification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_verification` (
  `verify_id` int NOT NULL AUTO_INCREMENT,
  `email_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`verify_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `employment_dtl`
--

DROP TABLE IF EXISTS `employment_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employment_dtl` (
  `employment_dtl_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `type_of_employment_code` varchar(2) NOT NULL,
  `retired_pensioner_code` varchar(2) NOT NULL,
  `relation_with_bank_code` varchar(2) NOT NULL,
  `staff_number` varchar(10) NOT NULL,
  `staff_designation` varchar(10) NOT NULL,
  `working_since_date` date NOT NULL,
  `cdate` datetime NOT NULL,
  `asdadasd` int NOT NULL DEFAULT '0',
  `udate` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `employer_id` varchar(20) DEFAULT NULL,
  `company_code` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`employment_dtl_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3284 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `esign_dtl_name_mapping`
--

DROP TABLE IF EXISTS `esign_dtl_name_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `esign_dtl_name_mapping` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `esign_name` varchar(55) DEFAULT NULL,
  `aadhaar_name` varchar(55) DEFAULT NULL,
  `remark` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `esign_logs`
--

DROP TABLE IF EXISTS `esign_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `esign_logs` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pdf_url` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `auth_mode` varchar(50) NOT NULL DEFAULT '',
  `final_pdf_url` text NOT NULL,
  `transaction_no` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `request_xml` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `response_xml` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `resp_status` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=266 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fatca`
--

DROP TABLE IF EXISTS `fatca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fatca` (
  `fatca_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `pep` tinyint NOT NULL COMMENT '0-no,1-yes',
  `fatca_required` tinyint NOT NULL COMMENT '0-no,1-yes',
  `tax_residence_of_india` tinyint NOT NULL COMMENT '0-no,1-yes',
  `country_of_birth` varchar(2) NOT NULL,
  `address_type_of_tax_residential` tinyint NOT NULL DEFAULT '1' COMMENT '0-no,1-yes',
  `address_type_of_tax_business` tinyint NOT NULL DEFAULT '1' COMMENT '0-no,1-yes',
  `address_type_of_tax_registered_office` tinyint NOT NULL DEFAULT '1' COMMENT '0-no,1-yes',
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL COMMENT '0-no,1-yes',
  PRIMARY KEY (`fatca_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3300 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fixed_deposit_account_dtl`
--

DROP TABLE IF EXISTS `fixed_deposit_account_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fixed_deposit_account_dtl` (
  `fd_acc_dtl_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `fd_deposit_amt` int DEFAULT NULL COMMENT 'min : 10,000 max:90,000',
  `fd_tenure` varchar(500) DEFAULT NULL,
  `interest_payout_instruction` varchar(50) DEFAULT NULL,
  `maturity_instruction` varchar(50) DEFAULT NULL,
  `funding_account_number` varchar(50) DEFAULT NULL,
  `ifsc_code` varchar(20) DEFAULT NULL,
  `ifsc_info` text,
  `fd_customer_id` int NOT NULL,
  `fd_account_number` varchar(20) DEFAULT NULL,
  `recipient_account_number` varchar(20) DEFAULT NULL,
  `recipient_bank_name` varchar(20) DEFAULT NULL,
  `transaction_id` varchar(20) DEFAULT NULL,
  `is_deleted` int DEFAULT NULL,
  `maturity_info` text,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  `auto_renewal_option` tinyint DEFAULT '0',
  KEY `auto increment` (`fd_acc_dtl_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flexi_dep_details`
--

DROP TABLE IF EXISTS `flexi_dep_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flexi_dep_details` (
  `flexi_dep_details_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `min_bal_check_skip` tinyint NOT NULL COMMENT '0-no,1-yes',
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL COMMENT '0-no,yes-1',
  PRIMARY KEY (`flexi_dep_details_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7955 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form60_data_log`
--

DROP TABLE IF EXISTS `form60_data_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `form60_data_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `url` varchar(150) NOT NULL,
  `log_type` varchar(20) NOT NULL,
  `request` longtext NOT NULL,
  `response` longtext NOT NULL,
  `cdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `holidays`
--

DROP TABLE IF EXISTS `holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `holidays` (
  `id` int NOT NULL AUTO_INCREMENT,
  `year` varchar(4) NOT NULL DEFAULT '',
  `dates_with_reason` longtext NOT NULL,
  `cdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `udate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_enabled` tinyint DEFAULT '0' COMMENT '(0-No, 1-Yes)',
  `is_deleted` tinyint DEFAULT '0' COMMENT '(0-No, 1-Yes)',
  PRIMARY KEY (`id`),
  KEY `year` (`year`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ifsc_checker_log`
--

DROP TABLE IF EXISTS `ifsc_checker_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ifsc_checker_log` (
  `ifsc_checker_id` int NOT NULL AUTO_INCREMENT,
  `ifsc_code` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `is_approved` tinyint(1) DEFAULT '0',
  `is_rejected` tinyint(1) DEFAULT '0',
  `checker_log_in` datetime DEFAULT NULL,
  `checker_log_out` datetime DEFAULT NULL,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  PRIMARY KEY (`ifsc_checker_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ifsc_maker_log`
--

DROP TABLE IF EXISTS `ifsc_maker_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ifsc_maker_log` (
  `ifsc_maker_id` int NOT NULL AUTO_INCREMENT,
  `ifsc_code` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `maker_log_in` datetime DEFAULT NULL,
  `mker_log_out` datetime DEFAULT NULL,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  PRIMARY KEY (`ifsc_maker_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `img_dtl`
--

DROP TABLE IF EXISTS `img_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `img_dtl` (
  `img_dtl_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `pid_type` varchar(5) DEFAULT NULL,
  `document_dtl_id` int DEFAULT NULL,
  `image_details` text,
  `img_decription` varchar(250) DEFAULT NULL,
  `img_path` varchar(250) DEFAULT NULL,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  PRIMARY KEY (`img_dtl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `inventory_tagging_log`
--

DROP TABLE IF EXISTS `inventory_tagging_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_tagging_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `url` varchar(150) NOT NULL,
  `log_type` varchar(20) NOT NULL,
  `request` longtext,
  `response` longtext,
  `status` varchar(5) DEFAULT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=341 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joint_customer`
--

DROP TABLE IF EXISTS `joint_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `joint_customer` (
  `joint_customer_id` int NOT NULL AUTO_INCREMENT,
  `no_of_customer` int NOT NULL,
  `joint_cif` varchar(20) NOT NULL,
  `application_status` tinyint NOT NULL DEFAULT '0' COMMENT '0-pending,1-approved,2-rejected, 3-Parked',
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` int NOT NULL COMMENT '0-no, 1-yes',
  PRIMARY KEY (`joint_customer_id`),
  KEY `application_status` (`application_status`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=7309 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mailing_address`
--

DROP TABLE IF EXISTS `mailing_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mailing_address` (
  `mailing_address_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `mailing_address_choice` varchar(1) NOT NULL DEFAULT 'A' COMMENT 'a-account address,c -customer address,t -third party address,o - other address',
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint DEFAULT '0' COMMENT '0-no,yes-1',
  PRIMARY KEY (`mailing_address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4943 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_branch_details`
--

DROP TABLE IF EXISTS `modified_branch_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modified_branch_details` (
  `m_branch_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `branch_id` int DEFAULT NULL,
  `maker_id` int DEFAULT NULL,
  `checker_id` int DEFAULT NULL,
  `m_branch_code` int DEFAULT NULL,
  `m_branch_name` varchar(50) DEFAULT NULL,
  `m_branch_address` varchar(255) DEFAULT NULL,
  `m_branch_email` varchar(100) DEFAULT NULL,
  `m_branch_locaion_code` varchar(50) DEFAULT NULL,
  `m_branch_ifsc_code` varchar(50) DEFAULT NULL,
  `m_branch_category` varchar(10) DEFAULT NULL,
  `m_branch_type` varchar(10) DEFAULT NULL,
  `m_branch_tel_no` varchar(20) DEFAULT NULL,
  `m_branch_bsr_code` varchar(10) DEFAULT NULL,
  `m_branch_zone_code` int DEFAULT NULL,
  `m_status` varchar(10) DEFAULT NULL,
  `is_checked` tinyint DEFAULT '0',
  `statusChange` int DEFAULT NULL,
  `disabling_remark` varchar(100) DEFAULT NULL,
  `disabling_reason` varchar(100) DEFAULT NULL,
  `m_is_enabled` int DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT '0',
  `m_isDeleted` int DEFAULT NULL,
  `rejected_remark` varchar(255) DEFAULT NULL,
  `approved_remark` varchar(255) DEFAULT NULL,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  PRIMARY KEY (`m_branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_ifsc_details`
--

DROP TABLE IF EXISTS `modified_ifsc_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modified_ifsc_details` (
  `m_ifsc_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `ifsc_id` int DEFAULT NULL,
  `maker_id` int DEFAULT NULL,
  `checker_id` int DEFAULT NULL,
  `m_ifsc_bank` varchar(100) DEFAULT NULL,
  `m_ifsc_code` varchar(50) DEFAULT NULL,
  `m_ifsc_branch_name` text,
  `m_ifsc_branch_address` text,
  `m_ifsc_city1` varchar(100) DEFAULT NULL,
  `m_ifsc_city2` varchar(100) DEFAULT NULL,
  `m_ifsc_state` varchar(100) DEFAULT NULL,
  `m_ifsc_stdcode` int DEFAULT NULL,
  `m_ifsc_phone_number` int DEFAULT NULL,
  `is_checked` tinyint DEFAULT '0',
  `statusChange` int DEFAULT '0',
  `m_is_enabled` int DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT '0',
  `m_isDeleted` int DEFAULT NULL,
  `disabling_remark` varchar(100) DEFAULT NULL,
  `disabling_reason` varchar(100) DEFAULT NULL,
  `rejected_remark` varchar(255) DEFAULT NULL,
  `approved_remark` varchar(255) DEFAULT NULL,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  PRIMARY KEY (`m_ifsc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_user_details`
--

DROP TABLE IF EXISTS `modified_user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modified_user_details` (
  `m_user_id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int NOT NULL,
  `agent_id` int DEFAULT NULL,
  `ug_id` int DEFAULT NULL,
  `is_enabled` int DEFAULT NULL,
  `ad_user_id` varchar(30) DEFAULT NULL,
  `m_user_name` varchar(50) DEFAULT NULL,
  `m_contact_no` varchar(12) DEFAULT NULL,
  `m_address` varchar(255) DEFAULT NULL,
  `m_email` varchar(100) DEFAULT NULL,
  `m_branch_code` varchar(100) DEFAULT NULL,
  `password` varchar(70) DEFAULT NULL,
  `old_password` varchar(255) DEFAULT NULL,
  `m_is_enabled` tinyint DEFAULT '0',
  `m_isDeleted` int DEFAULT NULL,
  `is_checked` tinyint DEFAULT '0',
  `statusChange` int DEFAULT '0',
  `enabling_remark` varchar(100) DEFAULT NULL,
  `rejected_remark` varchar(255) DEFAULT NULL,
  `approved_remark` varchar(255) DEFAULT NULL,
  `disabling_remark` varchar(50) DEFAULT NULL,
  `disabling_reason` varchar(50) DEFAULT NULL,
  `maker_id` int DEFAULT NULL,
  `checker_id` int DEFAULT NULL,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  PRIMARY KEY (`m_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_zipcode_details`
--

DROP TABLE IF EXISTS `modified_zipcode_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modified_zipcode_details` (
  `m_zipcode_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `zipcode_id` int DEFAULT NULL,
  `checker_id` int DEFAULT NULL,
  `maker_id` int DEFAULT NULL,
  `m_zipcode_code` int DEFAULT NULL,
  `m_zipcode_desc` varchar(100) DEFAULT NULL,
  `m_zipcode_concise_desc` varchar(100) DEFAULT NULL,
  `m_ifsc_state` varchar(100) DEFAULT NULL,
  `m_location_code` int DEFAULT NULL,
  `is_checked` tinyint DEFAULT '0',
  `statusChange` int DEFAULT '0',
  `m_is_enabled` int DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT '0',
  `m_isDeleted` int DEFAULT NULL,
  `disabling_remark` varchar(100) DEFAULT NULL,
  `disabling_reason` varchar(100) DEFAULT NULL,
  `rejected_remark` varchar(255) DEFAULT NULL,
  `approved_remark` varchar(255) DEFAULT NULL,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  PRIMARY KEY (`m_zipcode_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modify_cif_activity_log`
--

DROP TABLE IF EXISTS `modify_cif_activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modify_cif_activity_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL DEFAULT '0',
  `admin_id` int NOT NULL DEFAULT '0',
  `ad_user_id` varchar(30) NOT NULL DEFAULT '',
  `checker_ad_user_id` varchar(30) NOT NULL DEFAULT '',
  `cif_no` varchar(10) NOT NULL DEFAULT '',
  `type` tinyint NOT NULL DEFAULT '0',
  `remark` varchar(100) NOT NULL DEFAULT '',
  `is_checked` tinyint NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `cdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `checker_remark` varchar(256) DEFAULT NULL,
  `ucid` int DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `customer_id` (`customer_id`),
  KEY `admin_id` (`admin_id`),
  KEY `ad_user_id` (`ad_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `new_master`
--

DROP TABLE IF EXISTS `new_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_master` (
  `master_id` int NOT NULL AUTO_INCREMENT,
  `master_name` varchar(100) DEFAULT NULL,
  `master_code` varchar(15) NOT NULL,
  `master_address` text,
  `master_city1` text NOT NULL,
  `master_city2` text NOT NULL,
  `master_phn_number` varchar(10) NOT NULL,
  PRIMARY KEY (`master_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pan_logs`
--

DROP TABLE IF EXISTS `pan_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pan_logs` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `url` text,
  `header` longtext,
  `request` longtext,
  `response` longtext,
  `cdate` datetime DEFAULT NULL,
  `resp_status` varchar(15) DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1866 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pan_verify`
--

DROP TABLE IF EXISTS `pan_verify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pan_verify` (
  `pan_id` int NOT NULL AUTO_INCREMENT,
  `cif_no` varchar(11) NOT NULL DEFAULT '0',
  `pan_no` varchar(15) NOT NULL DEFAULT '0',
  `remark` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '1-valid,0-invalid',
  `response` text NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`pan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=620 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pan_verify_log`
--

DROP TABLE IF EXISTS `pan_verify_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pan_verify_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `pan_no` varchar(15) NOT NULL DEFAULT '0',
  `admin_id` varchar(20) DEFAULT NULL,
  `customer_id` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `fathername` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '1-valid,0-invalid',
  `request` text,
  `response` text,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `payment_details`
--

DROP TABLE IF EXISTS `payment_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_details` (
  `payment_details_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `payment_type` tinyint NOT NULL DEFAULT '1' COMMENT '1-cash, 2-cheque',
  `order_id` varchar(50) DEFAULT NULL,
  `account_no` varchar(50) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `amount` int NOT NULL,
  `cheque_no` varchar(20) NOT NULL,
  `ifsc` varchar(50) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `cheque_date` date NOT NULL,
  `cheque_img` varchar(255) NOT NULL,
  `status` int NOT NULL COMMENT '0-success, 1-failed',
  `upi_id` varchar(50) NOT NULL DEFAULT '',
  `upi_amount` int NOT NULL DEFAULT '0',
  `upi_psp_ref_number` varchar(100) DEFAULT NULL,
  `upi_payment_status` varchar(10) NOT NULL DEFAULT '',
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL,
  `batch_number` varchar(30) DEFAULT NULL,
  `cust_ref_number` varchar(15) DEFAULT NULL,
  `transaction_id` varchar(20) DEFAULT NULL,
  `refund_date` datetime DEFAULT NULL,
  `refund_remark` varchar(100) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_info` text,
  PRIMARY KEY (`payment_details_id`),
  KEY `customer_id` (`customer_id`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=524445 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `payment_log`
--

DROP TABLE IF EXISTS `payment_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `url` varchar(150) NOT NULL,
  `log_type` varchar(20) NOT NULL,
  `request` longtext NOT NULL,
  `response` longtext NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2207 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `personal_dtl`
--

DROP TABLE IF EXISTS `personal_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_dtl` (
  `personal_dtl_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `source_of_income` int NOT NULL,
  `annual_income` int NOT NULL,
  `annual_income_slab` int NOT NULL,
  `type_of_accommodation` int NOT NULL,
  `nature_of_business` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL,
  PRIMARY KEY (`personal_dtl_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3284 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `relation_details`
--

DROP TABLE IF EXISTS `relation_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relation_details` (
  `relation_details_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `connected_role_code` varchar(50) NOT NULL,
  `nominee_relationship` varchar(100) NOT NULL,
  `account_number` int NOT NULL,
  `client_number` int NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `is_minor` tinyint NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(175) NOT NULL,
  `is_same_as_cust_comm_address` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `country` varchar(2) NOT NULL DEFAULT 'IN',
  `home_tel` varchar(15) NOT NULL,
  `office_tel` varchar(15) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(10) NOT NULL,
  `guardian_name` varchar(50) NOT NULL,
  `guardian_dob` date NOT NULL,
  `nature_of_guardian` varchar(2) NOT NULL,
  `guardian_for` varchar(2) NOT NULL,
  `guardian_address` text NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL COMMENT '0-no,1-yes',
  PRIMARY KEY (`relation_details_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2880 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rpa_bolt_login`
--

DROP TABLE IF EXISTS `rpa_bolt_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rpa_bolt_login` (
  `bolt_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(150) NOT NULL,
  `password` varbinary(150) NOT NULL,
  `last_seq_no` varchar(50) NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `expiry_date` date NOT NULL,
  PRIMARY KEY (`bolt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rpa_entry`
--

DROP TABLE IF EXISTS `rpa_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rpa_entry` (
  `rpa_entry_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `joint_customer_id` int NOT NULL,
  `joint_customer_cif` varchar(36) NOT NULL,
  `agent_id` varchar(100) NOT NULL,
  `application_no` varchar(50) NOT NULL,
  `pgk_no` varchar(50) NOT NULL,
  `customer_cif` varchar(36) NOT NULL COMMENT 'From Web Service',
  `customer_relation` int NOT NULL,
  `account_no` varchar(36) NOT NULL,
  `account_type_code` int NOT NULL,
  `account_sub_type_code` int NOT NULL DEFAULT '0',
  `date_of_opening` date NOT NULL,
  `account_name` varchar(50) NOT NULL,
  `account_short_name` varchar(25) NOT NULL,
  `scheme_code` varchar(5) NOT NULL,
  `product_code` int NOT NULL,
  `branch_code` int NOT NULL,
  `home_branch_code` int NOT NULL,
  `staff_salary_branch_code` int NOT NULL,
  `guardian_cif` varchar(36) NOT NULL,
  `minor_guardian_name` varchar(50) NOT NULL,
  `minor_guardian_dob` date NOT NULL,
  `minor_guardian_relation` varchar(3) NOT NULL,
  `minor_guardian_img` varchar(255) NOT NULL,
  `type_of_cif` tinyint NOT NULL COMMENT '0-individual,1-minor_operated_by_self,2-mionor_operated_by_guardian_cif_present,3-mionor_operated_by_guardian_cif_not_present,4-joint',
  `is_guardian_cif_present` tinyint NOT NULL COMMENT '0-No,1-yes',
  `is_guardian` tinyint NOT NULL COMMENT '0-No,1-yes',
  `signature_img` longtext NOT NULL,
  `royalty_type` tinyint NOT NULL DEFAULT '0' COMMENT '0-classic,1-premium',
  `is_primary_customer` tinyint NOT NULL DEFAULT '1' COMMENT '0-no,1-yes',
  `is_minor_senior_adult_flag` tinyint NOT NULL COMMENT '0-adult,1-minor,2-senior',
  `is_current_address_same_adhar_address` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `kyc_verification_mode` tinyint NOT NULL DEFAULT '1' COMMENT '0-manual,1-ekyc',
  `is_pan_verification_fail` tinyint NOT NULL DEFAULT '0' COMMENT '0-pass,1-fail',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0-pending,1-approved,2-rejected',
  `application_status` tinyint NOT NULL DEFAULT '0' COMMENT '0-Pending applications, 1- Approved applications,2-Rejected applications',
  `dtl_1_id` int NOT NULL,
  `title_code` int NOT NULL,
  `first_name` varchar(24) NOT NULL,
  `middle_name` varchar(24) NOT NULL,
  `last_name` varchar(24) NOT NULL,
  `constitution_code` int NOT NULL,
  `caste_code` varchar(11) NOT NULL DEFAULT '',
  `weaker_section_code` int NOT NULL,
  `under_poverty` tinyint NOT NULL COMMENT '0-no,1-yes',
  `mother_maiden_name` varchar(24) NOT NULL,
  `father_or_spouse_name` varchar(30) DEFAULT NULL,
  `residential_status` varchar(1) NOT NULL,
  `address_dtl_id` int NOT NULL,
  `address_type` varchar(2) NOT NULL,
  `current_zipcode` int NOT NULL,
  `current_full_address` varchar(255) NOT NULL,
  `permanent_zipcode` int NOT NULL,
  `permanent_full_address` varchar(255) NOT NULL,
  `communication_zipcode` int NOT NULL,
  `communication_full_address` varchar(255) NOT NULL,
  `flat_number` varchar(35) NOT NULL,
  `full_address` varchar(255) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `mobile_number` varchar(15) NOT NULL,
  `staying_since_month` int NOT NULL DEFAULT '0',
  `staying_since_year` int NOT NULL DEFAULT '0',
  `current_address` tinyint NOT NULL COMMENT '0-no,1-yes',
  `permanent_address` tinyint NOT NULL COMMENT '0-no,1-yes',
  `communication_address` tinyint NOT NULL COMMENT '0-no,1-yes',
  `dtl_2_id` int NOT NULL,
  `customer_category_code` int NOT NULL,
  `customer_segment_code` int NOT NULL DEFAULT '99999',
  `business_division_code` int NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `place_of_birth` int NOT NULL,
  `place_of_birth_name` varchar(50) NOT NULL,
  `sex` varchar(1) NOT NULL,
  `marital_status_code` varchar(1) NOT NULL,
  `dtl_3_id` int NOT NULL,
  `religion_code` int NOT NULL,
  `nationality` varchar(2) NOT NULL DEFAULT 'IN',
  `risk_country_code` varchar(2) NOT NULL DEFAULT 'IN',
  `language_code` varchar(2) NOT NULL,
  `illiterate_customer` tinyint NOT NULL COMMENT '0-no,1-yes',
  `physically_challenged` tinyint NOT NULL COMMENT '0-no,1-yes',
  `document_dtl_id` int NOT NULL,
  `pid_type` varchar(5) NOT NULL,
  `document_id_no` varbinary(150) NOT NULL,
  `adhar_vault_token` varchar(100) NOT NULL,
  `card_no` varchar(25) DEFAULT NULL,
  `date_of_issue` date NOT NULL,
  `place_of_issue` varchar(25) NOT NULL,
  `issuing_authority` varchar(15) NOT NULL,
  `issuing_country` varchar(2) NOT NULL,
  `expiry_date` date NOT NULL,
  `sponsers_name` varchar(50) NOT NULL,
  `sponsers_address` varchar(50) NOT NULL,
  `profile_img` longtext NOT NULL,
  `is_used_for_address_proof` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `is_used_for_identity_check` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `doc_img_1` longtext NOT NULL,
  `doc_img_2` longtext NOT NULL,
  `seed_status` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `agricultural_income` int NOT NULL DEFAULT '0',
  `other_income` int NOT NULL DEFAULT '0',
  `estimated_income` int NOT NULL DEFAULT '0',
  `contact_dtl_1_id` int NOT NULL,
  `residence_code` varchar(15) NOT NULL,
  `office_contact_1` varchar(15) NOT NULL,
  `office_contact_2` varchar(15) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `fax` varchar(15) NOT NULL,
  `email_1` varchar(65) NOT NULL,
  `email_2` varchar(65) NOT NULL,
  `employment_dtl_id` int NOT NULL,
  `type_of_employment_code` varchar(2) NOT NULL,
  `retired_pensioner_code` varchar(2) NOT NULL,
  `relation_with_bank_code` varchar(2) NOT NULL,
  `staff_number` varchar(10) NOT NULL,
  `staff_designation` varchar(10) NOT NULL,
  `working_since_date` date DEFAULT NULL,
  `contact_dtl_2_id` int NOT NULL,
  `contact_person_available` tinyint NOT NULL,
  `contact_person_name` varchar(50) NOT NULL,
  `designation` int NOT NULL,
  `residence_phone` varchar(15) NOT NULL,
  `office_phone` varchar(15) NOT NULL,
  `extension` int NOT NULL,
  `personal_dtl_id` int NOT NULL,
  `source_of_income` int NOT NULL,
  `annual_income` int NOT NULL,
  `annual_income_slab` int NOT NULL,
  `type_of_accommodation` int NOT NULL,
  `tdsarm_id` int NOT NULL,
  `pan_or_gir` varchar(150) NOT NULL,
  `form_60_in_lieu_of_pan` varchar(10) NOT NULL,
  `it_status_code` varchar(2) NOT NULL,
  `tds_exception` tinyint NOT NULL COMMENT '0-no,1-yes',
  `tds_exception_percent` int NOT NULL,
  `remarks` varchar(150) NOT NULL,
  `customer_arm_code` varchar(8) NOT NULL,
  `occupation_code` varchar(2) NOT NULL,
  `type_of_customer_code` varchar(2) NOT NULL,
  `risk_categorization_code` varchar(1) NOT NULL,
  `completed_screen` varchar(50) NOT NULL,
  `next_screen` varchar(50) NOT NULL,
  `fatca_id` int NOT NULL,
  `pep` tinyint NOT NULL COMMENT '0-no,1-yes',
  `fatca_required` tinyint NOT NULL COMMENT '0-no,1-yes',
  `tax_residence_of_india` tinyint NOT NULL COMMENT '0-no,1-yes',
  `country_of_birth` varchar(2) NOT NULL,
  `address_type_of_tax_residential` tinyint NOT NULL DEFAULT '1' COMMENT '0-no,1-yes',
  `address_type_of_tax_business` tinyint NOT NULL DEFAULT '1' COMMENT '0-no,1-yes',
  `address_type_of_tax_registered_office` tinyint NOT NULL DEFAULT '1' COMMENT '0-no,1-yes',
  `flexi_dep_details_id` int NOT NULL,
  `min_bal_check_skip` tinyint NOT NULL COMMENT '0-no,1-yes',
  `account_holder_info_id` int NOT NULL,
  `account_address` varchar(200) NOT NULL,
  `location_code` int NOT NULL,
  `account_currency` varchar(3) NOT NULL DEFAULT 'INR',
  `salary_account` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,yes-1',
  `mailing_address_id` int NOT NULL,
  `mailing_address_choice` varchar(1) NOT NULL DEFAULT 'A' COMMENT 'a-account address,c -customer address,t -third party address,o - other address',
  `account_stmt_details_id` int NOT NULL,
  `passbook_required` tinyint NOT NULL COMMENT '0-no,1-yes',
  `account_statement_required` tinyint NOT NULL COMMENT '0-no,1-yes',
  `account_statement_freq` varchar(1) NOT NULL DEFAULT 'Q' COMMENT 'D – Daily ,W – Weekly, F - Fortnightly ,M – Monthly, Q – Quarterly ,H – Half Yearly',
  `account_statement_print_otp` varchar(1) NOT NULL DEFAULT 'P' COMMENT 'P – Print and Mail Centrally, H – Print separately and send to Branches, B – Print in Branches ,N – No Printing Required',
  `week_day_for_weekly_stmt` varchar(1) NOT NULL COMMENT '1 – Sunday, 2 – Monday, 3 – Tuesday, 4 – Wednesday ,5 – Thursday ,6 – Friday ,7 – Saturday',
  `elect_from_acc_stm_req` varchar(1) NOT NULL COMMENT 'D – Daily ,W – Weekly, F - Fortnightly, M – Monthly, Q – Quarterly ,H – Half Yearly',
  `elect_from_week_day_for_weekly_stmt` varchar(1) NOT NULL COMMENT '1 – Sunday ,2 – Monday ,3 – Tuesday ,4 – Wednesday ,5 – Thusday ,6 – Friday ,7 – Saturday',
  `elect_from_stmt_mode` varchar(1) NOT NULL COMMENT '1 - Email ,2 - Fax',
  `elect_from_email` varchar(50) NOT NULL,
  `elect_from_fax` varchar(50) NOT NULL,
  `account_dtl_1_id` int NOT NULL,
  `delivery_channel` int NOT NULL,
  `marketing_channel_code` varchar(3) NOT NULL,
  `lead_converter_id` varchar(30) NOT NULL,
  `mode_of_operation` int NOT NULL,
  `repayable_to` int NOT NULL,
  `credit_interest_reqd` tinyint NOT NULL COMMENT '0-no,1-yes',
  `special_account` tinyint NOT NULL COMMENT '0-no,1-yes',
  `power_of_atorny` tinyint NOT NULL COMMENT '0-no,1-yes',
  `nomination_required` tinyint NOT NULL COMMENT '0-no,1-yes',
  `relation_details_id` int NOT NULL,
  `connected_role_code` varchar(50) NOT NULL,
  `nominee_relationship` varchar(100) NOT NULL,
  `account_number` int NOT NULL,
  `client_number` int NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `is_minor` tinyint NOT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(175) NOT NULL,
  `country` varchar(2) NOT NULL DEFAULT 'IN',
  `home_tel` varchar(15) NOT NULL,
  `office_tel` varchar(15) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `guardian_name` varchar(50) NOT NULL,
  `guardian_dob` date NOT NULL,
  `guardian_for` varchar(2) NOT NULL,
  `nature_of_guardian` varchar(2) NOT NULL,
  `guardian_address` text NOT NULL,
  `account_prev_id` int NOT NULL,
  `teller_oprn_reqd` tinyint NOT NULL DEFAULT '1' COMMENT '0-no,1-yes',
  `atm_oprn_allowed` tinyint NOT NULL DEFAULT '1' COMMENT '0-no,1-yes',
  `over_draft_allowed` tinyint NOT NULL DEFAULT '0',
  `internet_banking_permitted` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `kiosk_banking_permitted` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,yes-1',
  `sms_oprn_permitted` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `chq_book_req` tinyint NOT NULL DEFAULT '1' COMMENT '0-no,1-yes',
  `bus_div` int NOT NULL DEFAULT '1',
  `rpa_bot_id` int NOT NULL,
  `rpa_cif` varchar(36) NOT NULL,
  `rpa_account_no` varchar(50) NOT NULL,
  `existing_rpa_account_no` varchar(50) DEFAULT NULL,
  `rpa_cif_status` tinyint NOT NULL COMMENT '0-pending,1-approved,2-rejected,3-cbs error',
  `rpa_acc_status` tinyint NOT NULL COMMENT '0-pending,1-approved,2-rejected',
  `rpa_ucid` int DEFAULT NULL,
  `rpa_completed_screen` varchar(50) NOT NULL,
  `rpa_next_screen` varchar(50) NOT NULL,
  `rpa_error_report` text NOT NULL,
  `rpa_option` tinyint(1) unsigned zerofill NOT NULL DEFAULT '0' COMMENT '0-add,1-modify',
  `rpa_modify_cif` tinyint NOT NULL DEFAULT '0',
  `eemail_reg_done` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `esms_reg_no` varchar(50) NOT NULL,
  `eform60_uin` varchar(100) NOT NULL,
  `aml_flag` tinyint NOT NULL DEFAULT '0' COMMENT '0-aml-pending,1-in_black_list,2-mannual_aml,3-aml_pass',
  `aadhaar_vault_flag` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `trial_count` int NOT NULL,
  `fund_trial_count` int DEFAULT '0',
  `is_pgk_mapped` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `photo_inventory_no` int NOT NULL,
  `is_photo_tagged` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `photo_inventory_trial_count` int DEFAULT '0',
  `signature_inventory_no` int NOT NULL,
  `is_signature_tagged` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `signature` int DEFAULT '0',
  `aadharkyc_inventory_no` int NOT NULL DEFAULT '0',
  `aadharkyc_inventory_trial_count` int DEFAULT '0',
  `is_aadharkyc_tagged` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `signature_inventory_trial_count` int DEFAULT '0',
  `pankyc_inventory_no` int NOT NULL DEFAULT '0',
  `is_pankyc_tagged` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `pankyc_inventory_trial_count` int DEFAULT '0',
  `smsudate` datetime NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL COMMENT '0-no,1-yes',
  PRIMARY KEY (`rpa_entry_id`),
  KEY `branch_code` (`branch_code`),
  KEY `customer_id` (`customer_id`),
  KEY `udate` (`udate`),
  KEY `cdate` (`cdate`),
  KEY `rpa_account_no` (`rpa_account_no`),
  KEY `rpa_cif` (`rpa_cif`),
  KEY `product_code` (`product_code`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=28593 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rpa_entry_live`
--

DROP TABLE IF EXISTS `rpa_entry_live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rpa_entry_live` (
  `rpa_entry_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `joint_customer_id` int NOT NULL,
  `joint_customer_cif` varchar(36) NOT NULL,
  `agent_id` varchar(100) NOT NULL COMMENT 'ad_user_id',
  `application_no` varchar(10) NOT NULL,
  `pgk_no` varchar(50) NOT NULL,
  `customer_cif` varchar(36) NOT NULL COMMENT 'From Web Service',
  `customer_relation` int NOT NULL,
  `account_no` varchar(36) NOT NULL,
  `account_type_code` int NOT NULL,
  `account_sub_type_code` int NOT NULL DEFAULT '0',
  `date_of_opening` date NOT NULL,
  `account_name` varchar(50) NOT NULL,
  `account_short_name` varchar(25) NOT NULL,
  `scheme_code` varchar(5) NOT NULL,
  `product_code` int NOT NULL,
  `branch_code` int NOT NULL,
  `home_branch_code` int NOT NULL,
  `guardian_cif` varchar(36) NOT NULL,
  `minor_guardian_name` varchar(50) NOT NULL,
  `minor_guardian_dob` date NOT NULL,
  `minor_guardian_relation` varchar(3) NOT NULL,
  `minor_guardian_img` varchar(255) NOT NULL,
  `type_of_cif` tinyint NOT NULL COMMENT '0-individual,1-minor_operated_by_self,2-mionor_operated_by_guardian_cif_present,3-mionor_operated_by_guardian_cif_not_present,4-joint',
  `is_guardian_cif_present` tinyint NOT NULL COMMENT '0-No,1-yes',
  `is_guardian` tinyint NOT NULL COMMENT '0-No,1-yes',
  `signature_img` longtext NOT NULL,
  `royalty_type` tinyint NOT NULL DEFAULT '0' COMMENT '0-classic,1-premium',
  `is_primary_customer` tinyint NOT NULL DEFAULT '1' COMMENT '0-no,1-yes',
  `is_minor_senior_adult_flag` tinyint NOT NULL COMMENT '0-adult,1-minor,2-senior',
  `is_current_address_same_adhar_address` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `kyc_verification_mode` tinyint NOT NULL DEFAULT '1' COMMENT '0-manual,1-ekyc',
  `is_pan_verification_fail` tinyint NOT NULL DEFAULT '0' COMMENT '0-pass,1-fail',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0-pending,1-approved,2-rejected',
  `application_status` tinyint NOT NULL DEFAULT '0' COMMENT '0-Pending applications, 1- Approved applications,2-Rejected applications',
  `dtl_1_id` int NOT NULL,
  `title_code` int NOT NULL,
  `first_name` varchar(24) NOT NULL,
  `middle_name` varchar(24) NOT NULL,
  `last_name` varchar(24) NOT NULL,
  `constitution_code` int NOT NULL,
  `caste_code` int NOT NULL,
  `weaker_section_code` int NOT NULL,
  `under_poverty` tinyint NOT NULL COMMENT '0-no,1-yes',
  `mother_maiden_name` varchar(24) NOT NULL,
  `father_or_spouse_name` varchar(24) NOT NULL,
  `residential_status` varchar(1) NOT NULL,
  `address_dtl_id` int NOT NULL,
  `address_type` varchar(2) NOT NULL,
  `current_zipcode` int NOT NULL,
  `current_full_address` varchar(255) NOT NULL,
  `permanent_zipcode` int NOT NULL,
  `permanent_full_address` varchar(255) NOT NULL,
  `communication_zipcode` int NOT NULL,
  `communication_full_address` varchar(255) NOT NULL,
  `flat_number` varchar(35) NOT NULL,
  `full_address` varchar(255) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `mobile_number` varchar(15) NOT NULL,
  `staying_since_month` int NOT NULL DEFAULT '0',
  `staying_since_year` int NOT NULL DEFAULT '0',
  `current_address` tinyint NOT NULL COMMENT '0-no,1-yes',
  `permanent_address` tinyint NOT NULL COMMENT '0-no,1-yes',
  `communication_address` tinyint NOT NULL COMMENT '0-no,1-yes',
  `dtl_2_id` int NOT NULL,
  `customer_category_code` int NOT NULL,
  `customer_segment_code` int NOT NULL DEFAULT '99999',
  `business_division_code` int NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `place_of_birth` int NOT NULL,
  `place_of_birth_name` varchar(50) NOT NULL,
  `sex` varchar(1) NOT NULL,
  `marital_status_code` varchar(1) NOT NULL,
  `dtl_3_id` int NOT NULL,
  `religion_code` int NOT NULL,
  `nationality` varchar(2) NOT NULL DEFAULT 'IN',
  `risk_country_code` varchar(2) NOT NULL DEFAULT 'IN',
  `language_code` varchar(2) NOT NULL,
  `illiterate_customer` tinyint NOT NULL COMMENT '0-no,1-yes',
  `physically_challenged` tinyint NOT NULL COMMENT '0-no,1-yes',
  `document_dtl_id` int NOT NULL,
  `pid_type` varchar(5) NOT NULL,
  `document_id_no` varbinary(150) NOT NULL DEFAULT '',
  `card_no` varchar(25) DEFAULT NULL,
  `date_of_issue` date NOT NULL,
  `place_of_issue` varchar(25) NOT NULL,
  `issuing_authority` varchar(15) NOT NULL,
  `issuing_country` varchar(2) NOT NULL,
  `expiry_date` date NOT NULL,
  `sponsers_name` varchar(50) NOT NULL,
  `sponsers_address` varchar(50) NOT NULL,
  `profile_img` longtext NOT NULL,
  `is_used_for_address_proof` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `is_used_for_identity_check` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `doc_img_1` longtext NOT NULL,
  `doc_img_2` longtext NOT NULL,
  `seed_status` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `agricultural_income` int NOT NULL DEFAULT '0',
  `other_income` int NOT NULL DEFAULT '0',
  `estimated_income` int NOT NULL DEFAULT '0',
  `contact_dtl_1_id` int NOT NULL,
  `residence_code` varchar(15) NOT NULL,
  `office_contact_1` varchar(15) NOT NULL,
  `office_contact_2` varchar(15) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `fax` varchar(15) NOT NULL,
  `email_1` varchar(65) NOT NULL,
  `email_2` varchar(65) NOT NULL,
  `employment_dtl_id` int NOT NULL,
  `type_of_employment_code` varchar(2) NOT NULL,
  `retired_pensioner_code` varchar(2) NOT NULL,
  `relation_with_bank_code` varchar(2) NOT NULL,
  `staff_number` varchar(10) NOT NULL,
  `contact_dtl_2_id` int NOT NULL,
  `contact_person_available` tinyint NOT NULL,
  `contact_person_name` varchar(50) NOT NULL,
  `designation` int NOT NULL,
  `residence_phone` varchar(15) NOT NULL,
  `office_phone` varchar(15) NOT NULL,
  `extension` int NOT NULL,
  `personal_dtl_id` int NOT NULL,
  `source_of_income` int NOT NULL,
  `annual_income` int NOT NULL,
  `annual_income_slab` int NOT NULL,
  `type_of_accommodation` int NOT NULL,
  `tdsarm_id` int NOT NULL,
  `pan_or_gir` varchar(150) NOT NULL,
  `form_60_in_lieu_of_pan` varchar(10) NOT NULL,
  `it_status_code` varchar(2) NOT NULL,
  `tds_exception` tinyint NOT NULL COMMENT '0-no,1-yes',
  `tds_exception_percent` int NOT NULL,
  `remarks` varchar(150) NOT NULL,
  `customer_arm_code` varchar(8) NOT NULL,
  `occupation_code` varchar(2) NOT NULL,
  `type_of_customer_code` varchar(2) NOT NULL,
  `risk_categorization_code` varchar(1) NOT NULL,
  `completed_screen` varchar(50) NOT NULL,
  `next_screen` varchar(50) NOT NULL,
  `fatca_id` int NOT NULL,
  `pep` tinyint NOT NULL COMMENT '0-no,1-yes',
  `fatca_required` tinyint NOT NULL COMMENT '0-no,1-yes',
  `tax_residence_of_india` tinyint NOT NULL COMMENT '0-no,1-yes',
  `country_of_birth` varchar(2) NOT NULL,
  `address_type_of_tax_residential` tinyint NOT NULL DEFAULT '1' COMMENT '0-no,1-yes',
  `address_type_of_tax_business` tinyint NOT NULL DEFAULT '1' COMMENT '0-no,1-yes',
  `address_type_of_tax_registered_office` tinyint NOT NULL DEFAULT '1' COMMENT '0-no,1-yes',
  `flexi_dep_details_id` int NOT NULL,
  `min_bal_check_skip` tinyint NOT NULL COMMENT '0-no,1-yes',
  `account_holder_info_id` int NOT NULL,
  `account_address` varchar(200) NOT NULL,
  `location_code` int NOT NULL,
  `account_currency` varchar(3) NOT NULL DEFAULT 'INR',
  `salary_account` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,yes-1',
  `mailing_address_id` int NOT NULL,
  `mailing_address_choice` varchar(1) NOT NULL DEFAULT 'A' COMMENT 'a-account address,c -customer address,t -third party address,o - other address',
  `account_stmt_details_id` int NOT NULL,
  `passbook_required` tinyint NOT NULL COMMENT '0-no,1-yes',
  `account_statement_required` tinyint NOT NULL COMMENT '0-no,1-yes',
  `account_statement_freq` varchar(1) NOT NULL DEFAULT 'Q' COMMENT 'D â€“ Daily ,W â€“ Weekly, F - Fortnightly ,M â€“ Monthly, Q â€“ Quarterly ,H â€“ Half Yearly',
  `account_statement_print_otp` varchar(1) NOT NULL DEFAULT 'P' COMMENT 'P â€“ Print and Mail Centrally, H â€“ Print separately and send to Branches, B â€“ Print in Branches ,N â€“ No Printing Required',
  `week_day_for_weekly_stmt` varchar(1) NOT NULL COMMENT '1 â€“ Sunday, 2 â€“ Monday, 3 â€“ Tuesday, 4 â€“ Wednesday ,5 â€“ Thursday ,6 â€“ Friday ,7 â€“ Saturday',
  `elect_from_acc_stm_req` varchar(1) NOT NULL COMMENT 'D â€“ Daily ,W â€“ Weekly, F - Fortnightly, M â€“ Monthly, Q â€“ Quarterly ,H â€“ Half Yearly',
  `elect_from_week_day_for_weekly_stmt` varchar(1) NOT NULL COMMENT '1 â€“ Sunday ,2 â€“ Monday ,3 â€“ Tuesday ,4 â€“ Wednesday ,5 â€“ Thusday ,6 â€“ Friday ,7 â€“ Saturday',
  `elect_from_stmt_mode` varchar(1) NOT NULL COMMENT '1 - Email ,2 - Fax',
  `elect_from_email` varchar(50) NOT NULL,
  `elect_from_fax` varchar(50) NOT NULL,
  `account_dtl_1_id` int NOT NULL,
  `delivery_channel` int NOT NULL,
  `marketing_channel_code` varchar(3) NOT NULL,
  `lead_converter_id` varchar(30) NOT NULL,
  `mode_of_operation` int NOT NULL,
  `repayable_to` int NOT NULL,
  `credit_interest_reqd` tinyint NOT NULL COMMENT '0-no,1-yes',
  `special_account` tinyint NOT NULL COMMENT '0-no,1-yes',
  `power_of_atorny` tinyint NOT NULL COMMENT '0-no,1-yes',
  `nomination_required` tinyint NOT NULL COMMENT '0-no,1-yes',
  `relation_details_id` int NOT NULL,
  `connected_role_code` varchar(50) NOT NULL,
  `nominee_relationship` varchar(100) NOT NULL,
  `account_number` int NOT NULL,
  `client_number` int NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `is_minor` tinyint NOT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(175) NOT NULL,
  `country` varchar(2) NOT NULL DEFAULT 'IN',
  `home_tel` varchar(15) NOT NULL,
  `office_tel` varchar(15) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `guardian_name` varchar(50) NOT NULL,
  `guardian_dob` date NOT NULL,
  `guardian_for` varchar(2) NOT NULL,
  `nature_of_guardian` varchar(2) NOT NULL,
  `guardian_address` text NOT NULL,
  `account_prev_id` int NOT NULL,
  `teller_oprn_reqd` tinyint NOT NULL DEFAULT '1' COMMENT '0-no,1-yes',
  `atm_oprn_allowed` tinyint NOT NULL DEFAULT '1' COMMENT '0-no,1-yes',
  `internet_banking_permitted` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `kiosk_banking_permitted` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,yes-1',
  `sms_oprn_permitted` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `chq_book_req` tinyint NOT NULL DEFAULT '1' COMMENT '0-no,1-yes',
  `bus_div` int NOT NULL DEFAULT '1',
  `rpa_bot_id` int NOT NULL,
  `rpa_cif` varchar(36) NOT NULL,
  `rpa_account_no` varchar(50) NOT NULL,
  `rpa_cif_status` tinyint NOT NULL COMMENT '0-pending,1-approved,2-rejected,3-cbs error',
  `rpa_acc_status` tinyint NOT NULL COMMENT '0-pending,1-approved,2-rejected',
  `rpa_completed_screen` varchar(50) NOT NULL,
  `rpa_next_screen` varchar(50) NOT NULL DEFAULT 'MINDCLIENTS',
  `rpa_error_report` text NOT NULL,
  `rpa_option` tinyint(2) unsigned zerofill NOT NULL DEFAULT '00' COMMENT '0-add,1-modify',
  `eemail_reg_done` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `esms_reg_no` varchar(100) NOT NULL,
  `eform60_uin` varchar(100) NOT NULL,
  `aml_flag` tinyint NOT NULL DEFAULT '0' COMMENT '0-aml-pending,1-in_black_list,2-mannual_aml,3-aml_pass',
  `trial_count` int NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL COMMENT '0-no,1-yes',
  PRIMARY KEY (`rpa_entry_id`),
  UNIQUE KEY `customer_id` (`customer_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `trial_count` (`trial_count`),
  KEY `aml_flag` (`aml_flag`),
  KEY `rpa_option` (`rpa_option`),
  KEY `rpa_next_screen` (`rpa_next_screen`),
  KEY `rpa_completed_screen` (`rpa_completed_screen`),
  KEY `rpa_acc_status` (`rpa_acc_status`),
  KEY `rpa_cif_status` (`rpa_cif_status`),
  KEY `rpa_account_no` (`rpa_account_no`),
  KEY `rpa_cif` (`rpa_cif`),
  KEY `joint_customer_id` (`joint_customer_id`),
  KEY `pgk_no` (`pgk_no`),
  KEY `is_guardian_cif_present` (`is_guardian_cif_present`),
  KEY `is_guardian` (`is_guardian`),
  KEY `is_primary_customer` (`is_primary_customer`),
  KEY `is_minor_senior_adult_flag` (`is_minor_senior_adult_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=3274 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rpa_old_credentials`
--

DROP TABLE IF EXISTS `rpa_old_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rpa_old_credentials` (
  `old_id` int NOT NULL AUTO_INCREMENT,
  `bolt_id` int NOT NULL,
  `password` varbinary(150) NOT NULL,
  `old_password` varbinary(150) NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`old_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `seed_acc_cif_logs`
--

DROP TABLE IF EXISTS `seed_acc_cif_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seed_acc_cif_logs` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `account_no` int DEFAULT NULL,
  `cif_no` int DEFAULT NULL,
  `url` varchar(50) NOT NULL,
  `log_type` varchar(10) NOT NULL,
  `request` varchar(255) DEFAULT NULL,
  `response` longtext,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint DEFAULT '0',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `seed_session`
--

DROP TABLE IF EXISTS `seed_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seed_session` (
  `seed_session_id` int NOT NULL AUTO_INCREMENT,
  `cdate` date DEFAULT NULL,
  `seed_seesion_value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`seed_session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sms_email_registration_log`
--

DROP TABLE IF EXISTS `sms_email_registration_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_email_registration_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `url` varchar(150) NOT NULL,
  `log_type` varchar(20) NOT NULL,
  `request` longtext NOT NULL,
  `response` longtext NOT NULL,
  `cdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `resp_status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `resp_status` (`resp_status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staff_master_log`
--

DROP TABLE IF EXISTS `staff_master_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_master_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `url` varchar(150) NOT NULL,
  `log_type` varchar(20) NOT NULL,
  `request` longtext,
  `response` longtext,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=476 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tax_payer_account_log`
--

DROP TABLE IF EXISTS `tax_payer_account_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tax_payer_account_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(500) DEFAULT NULL,
  `account_no` varchar(500) DEFAULT NULL,
  `request` text,
  `response` text,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=496 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tax_payer_cif_log`
--

DROP TABLE IF EXISTS `tax_payer_cif_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tax_payer_cif_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(500) DEFAULT NULL,
  `cif_no` varchar(500) DEFAULT NULL,
  `request` text,
  `response` text,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tax_payer_log`
--

DROP TABLE IF EXISTS `tax_payer_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tax_payer_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(500) DEFAULT NULL,
  `DecryptedJsonResult` text,
  `uniqueRequestId` varchar(255) DEFAULT NULL,
  `request` text,
  `response` text,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6433 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tdsarm`
--

DROP TABLE IF EXISTS `tdsarm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tdsarm` (
  `tdsarm_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `pan_or_gir` varchar(150) NOT NULL,
  `form_60_in_lieu_of_pan` varchar(10) NOT NULL,
  `it_status_code` varchar(2) NOT NULL,
  `tds_exception` tinyint NOT NULL COMMENT '0-no,1-yes',
  `tds_exception_percent` int NOT NULL,
  `remarks` varchar(150) NOT NULL,
  `customer_arm_code` varchar(8) NOT NULL,
  `occupation_code` varchar(2) NOT NULL,
  `business_occupation_code` varchar(2) NOT NULL,
  `type_of_customer_code` varchar(2) NOT NULL,
  `risk_categorization_code` varchar(1) NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL COMMENT '0-no,1-yes',
  PRIMARY KEY (`tdsarm_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4868 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test_admin_duplicate`
--

DROP TABLE IF EXISTS `test_admin_duplicate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_admin_duplicate` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `ug_id` int NOT NULL,
  `ad_user_id` varchar(50) NOT NULL,
  `ad_user_name` varchar(100) NOT NULL,
  `ad_user_email` varchar(100) NOT NULL,
  `ad_contact_no` varchar(12) NOT NULL,
  `address` varchar(255) NOT NULL,
  `user_type` tinyint NOT NULL DEFAULT '0' COMMENT '0-branch_manager,1-admin',
  `ad_branch_code` int NOT NULL,
  `password` varchar(70) NOT NULL,
  `old_password` text NOT NULL,
  `is_reset_password` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `is_logged_in` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `last_active` datetime NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `login_attempts` int NOT NULL,
  `login_attempt_date` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0-no,1-yes',
  `is_enabled` tinyint DEFAULT '1' COMMENT '0-no,1-yes',
  PRIMARY KEY (`admin_id`),
  KEY `user_type` (`user_type`),
  KEY `ug_id` (`ug_id`),
  KEY `is_logged_in` (`is_logged_in`),
  KEY `ad_user_id` (`ad_user_id`),
  KEY `ad_user_name` (`ad_user_name`),
  KEY `ad_user_email` (`ad_user_email`),
  KEY `ad_branch_code` (`ad_branch_code`),
  KEY `last_active` (`last_active`),
  KEY `login_attempts` (`login_attempts`),
  KEY `is_enabled` (`is_enabled`),
  KEY `is_deleted` (`is_deleted`),
  KEY `password` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=23199 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmp_photo_sign`
--

DROP TABLE IF EXISTS `tmp_photo_sign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tmp_photo_sign` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL DEFAULT '0',
  `is_photo_done` tinyint NOT NULL DEFAULT '0',
  `is_signature_done` tinyint NOT NULL DEFAULT '0',
  `cdate` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35574 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ucid_data`
--

DROP TABLE IF EXISTS `ucid_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ucid_data` (
  `rpa_entry_id` int NOT NULL AUTO_INCREMENT,
  `application_no` varchar(50) DEFAULT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `customer_cif` varchar(36) DEFAULT NULL,
  `date_of_opening` date DEFAULT NULL,
  `account_short_name` varchar(25) DEFAULT NULL,
  `product_code` int DEFAULT NULL,
  `branch_code` int DEFAULT NULL,
  `staff_salary_branch_code` int DEFAULT NULL,
  `title_code` int DEFAULT NULL,
  `first_name` varchar(24) DEFAULT NULL,
  `middle_name` varchar(24) DEFAULT NULL,
  `last_name` varchar(24) DEFAULT NULL,
  `constitution_code` int DEFAULT NULL,
  `client_name` varchar(24) DEFAULT NULL,
  `client_type` varchar(24) DEFAULT NULL,
  `caste_code` varchar(11) DEFAULT NULL,
  `weaker_section_code` int DEFAULT NULL,
  `under_poverty` tinyint DEFAULT NULL,
  `mother_maiden_name` varchar(50) DEFAULT NULL,
  `mother_name` varchar(50) DEFAULT NULL,
  `father_or_spouse_name` varchar(30) DEFAULT NULL,
  `residential_status` varchar(1) DEFAULT NULL,
  `address_dtl_id` int DEFAULT NULL,
  `address_type` varchar(2) DEFAULT NULL,
  `current_zipcode` int DEFAULT NULL,
  `current_full_address` varchar(255) DEFAULT NULL,
  `permanent_zipcode` int DEFAULT NULL,
  `permanent_full_address` varchar(255) DEFAULT NULL,
  `communication_zipcode` int DEFAULT NULL,
  `communication_full_address` varchar(255) DEFAULT NULL,
  `full_address` varchar(255) DEFAULT NULL,
  `country_code` varchar(2) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `mobile_number` varchar(15) DEFAULT NULL,
  `staying_since_month` int DEFAULT NULL,
  `staying_since_year` int DEFAULT NULL,
  `current_address` tinyint DEFAULT NULL,
  `permanent_address` tinyint DEFAULT NULL,
  `communication_address` tinyint DEFAULT NULL,
  `customer_category_code` int DEFAULT NULL,
  `customer_segment_code` int DEFAULT '99999',
  `business_division_code` int DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `place_of_birth` int DEFAULT NULL,
  `place_of_birth_name` varchar(50) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `marital_status_code` varchar(1) DEFAULT NULL,
  `dtl_3_id` int DEFAULT NULL,
  `religion_code` int DEFAULT NULL,
  `nationality` varchar(2) DEFAULT NULL,
  `risk_country_code` varchar(2) DEFAULT NULL,
  `language_code` varchar(2) DEFAULT NULL,
  `illiterate_customer` tinyint DEFAULT NULL,
  `physically_challenged` tinyint DEFAULT NULL,
  `document_dtl_id` int DEFAULT NULL,
  `pid_type` varchar(5) DEFAULT NULL,
  `document_id_no` varbinary(150) DEFAULT NULL,
  `adhar_vault_token` varchar(100) DEFAULT NULL,
  `card_no` varchar(25) DEFAULT NULL,
  `date_of_issue` date DEFAULT NULL,
  `place_of_issue` varchar(25) DEFAULT NULL,
  `issuing_authority` varchar(15) DEFAULT NULL,
  `issuing_country` varchar(2) DEFAULT NULL,
  `sponsers_name` varchar(50) DEFAULT NULL,
  `sponsers_address` varchar(50) DEFAULT NULL,
  `company_name` varchar(50) DEFAULT NULL,
  `company_address` varchar(50) DEFAULT NULL,
  `profile_img` longtext,
  `is_used_for_address_proof` tinyint DEFAULT NULL,
  `is_used_for_identity_check` tinyint DEFAULT NULL,
  `doc_img_1` longtext,
  `doc_img_2` longtext,
  `agricultural_income` int DEFAULT NULL,
  `other_income` int DEFAULT NULL,
  `contact_dtl_1_id` int DEFAULT NULL,
  `residence_code` varchar(15) DEFAULT NULL,
  `office_contact_1` varchar(15) DEFAULT NULL,
  `office_contact_2` varchar(15) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `fax` varchar(15) DEFAULT NULL,
  `email_1` varchar(65) DEFAULT NULL,
  `email_2` varchar(65) DEFAULT NULL,
  `employment_dtl_id` int DEFAULT NULL,
  `type_of_employment_code` varchar(2) DEFAULT NULL,
  `retired_pensioner_code` varchar(2) DEFAULT NULL,
  `relation_with_bank_code` varchar(2) DEFAULT NULL,
  `staff_number` varchar(10) DEFAULT NULL,
  `staff_designation` varchar(10) DEFAULT NULL,
  `working_since_date` date DEFAULT NULL,
  `contact_dtl_2_id` int DEFAULT NULL,
  `contact_person_available` tinyint DEFAULT NULL,
  `contact_person_name` varchar(50) DEFAULT NULL,
  `designation` int DEFAULT NULL,
  `residence_phone` varchar(15) DEFAULT NULL,
  `extension` int DEFAULT NULL,
  `personal_dtl_id` int DEFAULT NULL,
  `source_of_income` int DEFAULT NULL,
  `annual_income` int DEFAULT NULL,
  `annual_income_slab` int DEFAULT NULL,
  `type_of_accommodation` int DEFAULT NULL,
  `pan_or_gir` varchar(150) DEFAULT NULL,
  `form_60_in_lieu_of_pan` varchar(10) DEFAULT NULL,
  `it_status_code` varchar(2) DEFAULT NULL,
  `tds_exception` tinyint DEFAULT NULL,
  `tds_exception_percent` int DEFAULT NULL,
  `remarks` varchar(150) DEFAULT NULL,
  `occupation_code` varchar(2) DEFAULT NULL,
  `type_of_customer_code` varchar(2) DEFAULT NULL,
  `risk_categorization_code` varchar(1) DEFAULT NULL,
  `completed_screen` varchar(50) DEFAULT NULL,
  `next_screen` varchar(50) DEFAULT NULL,
  `fatca_id` int DEFAULT NULL,
  `pep` tinyint DEFAULT NULL,
  `fatca_required` tinyint DEFAULT NULL,
  `tax_residence_of_india` tinyint DEFAULT NULL,
  `corporateTurnover` varchar(255) DEFAULT NULL,
  `dl` varchar(255) DEFAULT NULL,
  `lic` varchar(255) DEFAULT NULL,
  `govtBankPublicSector` varchar(255) DEFAULT NULL,
  `mnrega` varchar(255) DEFAULT NULL,
  `others` varchar(255) DEFAULT NULL,
  `ration` varchar(255) DEFAULT NULL,
  `extractionDateTime` varchar(255) DEFAULT NULL,
  `utilityBillTelephone` varchar(255) DEFAULT NULL,
  `utilityBillElectricity` varchar(255) DEFAULT NULL,
  `lineOfActivity` varchar(255) DEFAULT NULL,
  `country_of_birth` varchar(2) DEFAULT NULL,
  `address_type_of_tax_residential` tinyint DEFAULT NULL,
  `address_type_of_tax_business` tinyint DEFAULT NULL,
  `address_type_of_tax_registered_office` tinyint DEFAULT NULL,
  `flexi_dep_details_id` int DEFAULT NULL,
  `min_bal_check_skip` tinyint DEFAULT NULL,
  `account_holder_info_id` int DEFAULT NULL,
  `account_address` varchar(200) DEFAULT NULL,
  `location_code` int DEFAULT NULL,
  `account_currency` varchar(3) DEFAULT NULL,
  `salary_account` tinyint DEFAULT NULL,
  `mailing_address_id` int DEFAULT NULL,
  `mailing_address_choice` varchar(1) DEFAULT NULL,
  `account_stmt_details_id` int DEFAULT NULL,
  `passbook_required` tinyint DEFAULT NULL,
  `account_statement_required` tinyint DEFAULT NULL,
  `account_statement_freq` varchar(1) DEFAULT NULL,
  `account_statement_print_otp` varchar(1) DEFAULT NULL,
  `week_day_for_weekly_stmt` varchar(1) DEFAULT NULL,
  `elect_from_acc_stm_req` varchar(1) DEFAULT NULL,
  `elect_from_week_day_for_weekly_stmt` varchar(1) DEFAULT NULL,
  `elect_from_stmt_mode` varchar(1) DEFAULT NULL,
  `elect_from_email` varchar(50) DEFAULT NULL,
  `elect_from_fax` varchar(50) DEFAULT NULL,
  `account_dtl_1_id` int DEFAULT NULL,
  `delivery_channel` int DEFAULT NULL,
  `marketing_channel_code` varchar(3) DEFAULT NULL,
  `lead_converter_id` varchar(30) DEFAULT NULL,
  `mode_of_operation` int DEFAULT NULL,
  `repayable_to` int DEFAULT NULL,
  `credit_interest_reqd` tinyint DEFAULT NULL,
  `special_account` tinyint DEFAULT NULL,
  `power_of_atorny` tinyint DEFAULT NULL,
  `nomination_required` tinyint DEFAULT NULL,
  `relation_details_id` int DEFAULT NULL,
  `connected_role_code` varchar(50) DEFAULT NULL,
  `nominee_relationship` varchar(100) DEFAULT NULL,
  `account_number` int DEFAULT NULL,
  `client_number` int DEFAULT NULL,
  `person_name` varchar(50) DEFAULT NULL,
  `is_minor` tinyint DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(175) DEFAULT NULL,
  `country` varchar(2) DEFAULT NULL,
  `home_tel` varchar(15) DEFAULT NULL,
  `office_tel` varchar(15) DEFAULT NULL,
  `mobile_no` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `guardian_name` varchar(50) DEFAULT NULL,
  `guardian_dob` date DEFAULT NULL,
  `guardian_for` varchar(2) DEFAULT NULL,
  `nature_of_guardian` varchar(2) DEFAULT NULL,
  `guardian_address` text,
  `account_prev_id` int DEFAULT NULL,
  `teller_oprn_reqd` tinyint DEFAULT NULL,
  `atm_oprn_allowed` tinyint DEFAULT NULL,
  `over_draft_allowed` tinyint DEFAULT NULL,
  `internet_banking_permitted` tinyint DEFAULT NULL,
  `kiosk_banking_permitted` tinyint DEFAULT NULL,
  `sms_oprn_permitted` tinyint DEFAULT NULL,
  `chq_book_req` tinyint DEFAULT NULL,
  `bus_div` int DEFAULT NULL,
  `rpa_bot_id` int DEFAULT NULL,
  `rpa_cif` varchar(36) DEFAULT NULL,
  `rpa_account_no` varchar(50) DEFAULT NULL,
  `rpa_cif_status` tinyint DEFAULT NULL,
  `rpa_acc_status` tinyint DEFAULT NULL,
  `rpa_completed_screen` varchar(50) DEFAULT NULL,
  `rpa_next_screen` varchar(50) DEFAULT NULL,
  `rpa_error_report` text,
  `rpa_option` tinyint(1) unsigned zerofill DEFAULT NULL,
  `rpa_modify_cif` tinyint DEFAULT NULL,
  `eemail_reg_done` tinyint unsigned DEFAULT NULL,
  `esms_reg_no` varchar(50) DEFAULT NULL,
  `eform60_uin` varchar(100) DEFAULT NULL,
  `aml_flag` tinyint DEFAULT NULL,
  `aadhaar_vault_flag` tinyint DEFAULT NULL,
  `trial_count` int DEFAULT NULL,
  `is_pgk_mapped` tinyint DEFAULT NULL,
  `photo_inventory_no` int DEFAULT NULL,
  `is_photo_tagged` tinyint DEFAULT NULL,
  `signature_inventory_no` int DEFAULT NULL,
  `is_signature_tagged` tinyint DEFAULT NULL,
  `aadharkyc_inventory_no` int DEFAULT NULL,
  `is_aadharkyc_tagged` tinyint DEFAULT NULL,
  `pankyc_inventory_no` int DEFAULT NULL,
  `is_pankyc_tagged` tinyint DEFAULT NULL,
  `smsudate` datetime DEFAULT NULL,
  `pincode1` int DEFAULT NULL,
  `pincode2` int DEFAULT NULL,
  `pincode3` int DEFAULT NULL,
  `pincode4` int DEFAULT NULL,
  `locationCode1` int DEFAULT NULL,
  `locationCode2` int DEFAULT NULL,
  `locationCode3` int DEFAULT NULL,
  `locationCode4` int DEFAULT NULL,
  `countryCode1` int DEFAULT NULL,
  `countryCode2` int DEFAULT NULL,
  `countryCode3` int DEFAULT NULL,
  `countryCode4` int DEFAULT NULL,
  `passport` varchar(100) DEFAULT NULL,
  `votercard` varchar(100) DEFAULT NULL,
  `dateOfBirthCertificateMinor` varchar(100) DEFAULT NULL,
  `bankPostOfficePassbookStatement` varchar(100) DEFAULT NULL,
  `salesTax` varchar(100) DEFAULT NULL,
  `incomeTaxReturn` varchar(100) DEFAULT NULL,
  `marriageCertificate` varchar(100) DEFAULT NULL,
  `villagePanchayatLetter` varchar(100) DEFAULT NULL,
  `partnershipDeed` varchar(100) DEFAULT NULL,
  `certificateOfIncorporation` varchar(100) DEFAULT NULL,
  `registeredAgreementbetweenPartners` varchar(100) DEFAULT NULL,
  `schoolCertificate` varchar(100) DEFAULT NULL,
  `memorandumOfAssociationArticleOfAssociation` varchar(100) DEFAULT NULL,
  `listOfDirectors` varchar(100) DEFAULT NULL,
  `copyOfForm32` varchar(100) DEFAULT NULL,
  `boardResolution` varchar(100) DEFAULT NULL,
  `certificateOfIncorporationAsLLP` varchar(100) DEFAULT NULL,
  `copyOfCommencementOfBusinessCertificate` varchar(100) DEFAULT NULL,
  `trustDeed` varchar(100) DEFAULT NULL,
  `listOfNameOfOfficeBearersTrustees` varchar(100) DEFAULT NULL,
  `resolutionSGNByCHMNPresDirManagingTrustee` varchar(100) DEFAULT NULL,
  `certifiedCpRegistrationAndByelawsCertificate` varchar(100) DEFAULT NULL,
  `tradeLicense` varchar(100) DEFAULT NULL,
  `itexemptionCertificate` varchar(100) DEFAULT NULL,
  `licenseForSection8Company` varchar(100) DEFAULT NULL,
  `serviceTaxCertificate` varchar(100) DEFAULT NULL,
  `registeredLeaveAndLicenseAgreement` varchar(100) DEFAULT NULL,
  `saleDeed` varchar(100) DEFAULT NULL,
  `letterFromReputedEmployer` varchar(100) DEFAULT NULL,
  `propertyTax` varchar(100) DEFAULT NULL,
  `pensionPaymentOrderRetiredPersonal` varchar(100) DEFAULT NULL,
  `utilityBillMobileGasWater` varchar(100) DEFAULT NULL,
  `accomodationAllotmentLetter` varchar(100) DEFAULT NULL,
  `leaveAndLicenceAgreement` varchar(100) DEFAULT NULL,
  `docIssuedByGovtDeptOfForeignJurisdiction` varchar(100) DEFAULT NULL,
  `udyamRegistrationCertificate` varchar(100) DEFAULT NULL,
  `phone1` varchar(100) DEFAULT NULL,
  `phone2` varchar(100) DEFAULT NULL,
  `phone3` varchar(100) DEFAULT NULL,
  `phone4` varchar(100) DEFAULT NULL,
  `phone5` varchar(100) DEFAULT NULL,
  `phone6` varchar(100) DEFAULT NULL,
  `phone7` varchar(100) DEFAULT NULL,
  `phone8` varchar(100) DEFAULT NULL,
  `phone9` varchar(100) DEFAULT NULL,
  `phone10` varchar(100) DEFAULT NULL,
  `phone11` varchar(100) DEFAULT NULL,
  `phone12` varchar(100) DEFAULT NULL,
  `rowNum` int DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `channel` varchar(50) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `createdBy` datetime DEFAULT NULL,
  `modifiedOn` datetime DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `COMMENT` varchar(255) DEFAULT NULL,
  `MAKER_CHECKER_FLAG` tinyint DEFAULT NULL,
  `UPDATED_BY_CHECKER` varchar(255) DEFAULT NULL,
  `UPDATED_BY_MAKER` varchar(255) DEFAULT NULL,
  `UPDATED_TIME` datetime DEFAULT NULL,
  `MERGE_UNMERGE_FLAG` tinyint DEFAULT NULL,
  `MERGE_UNMERGE_REQUEST` varchar(255) DEFAULT NULL,
  `PARENT_UCID` varchar(255) DEFAULT NULL,
  `UCID_GENERATED_TIME` varchar(255) DEFAULT NULL,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  `is_deleted` tinyint DEFAULT NULL,
  PRIMARY KEY (`rpa_entry_id`),
  UNIQUE KEY `rpa_entry_id` (`rpa_entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ucid_entry`
--

DROP TABLE IF EXISTS `ucid_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ucid_entry` (
  `entry_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `customer_cif` varchar(36) NOT NULL COMMENT 'From Web Service',
  `date_of_opening` date NOT NULL,
  `risk_categorization_code` varchar(1) NOT NULL,
  `branch_code` int NOT NULL,
  `title_code` int NOT NULL,
  `constitution_code` int NOT NULL,
  `customer_segment_code` int NOT NULL DEFAULT '99999',
  `business_division_code` int NOT NULL,
  `risk_country_code` varchar(2) NOT NULL DEFAULT 'IN',
  `it_status_code` varchar(2) NOT NULL,
  `it_SubStatus_code` varchar(2) NOT NULL,
  `customer_category_code` int NOT NULL,
  `customer_sub_category_code` int NOT NULL,
  `occupation_code` varchar(2) NOT NULL,
  `sex` varchar(1) NOT NULL,
  `dob` date DEFAULT NULL,
  `nationality` varchar(2) NOT NULL DEFAULT 'IN',
  `father_or_spouse_name` varchar(30) DEFAULT NULL,
  `mother_maiden_name` varchar(24) NOT NULL,
  `email_1` varchar(65) NOT NULL,
  `email_2` varchar(65) NOT NULL,
  `first_name` varchar(24) NOT NULL,
  `middle_name` varchar(24) NOT NULL,
  `last_name` varchar(24) NOT NULL,
  `sur_name` varchar(24) NOT NULL,
  `place_of_birth` int NOT NULL,
  `residential_status` varchar(1) NOT NULL,
  `language_code` varchar(2) NOT NULL,
  `marital_status_code` varchar(1) NOT NULL,
  `religion_code` int NOT NULL,
  `type_of_employment_code` varchar(2) NOT NULL,
  `source_of_income` int NOT NULL,
  `type_of_accommodation` int NOT NULL,
  `annual_income` int NOT NULL,
  `annual_income_slab` int NOT NULL,
  `relation_with_bank_code` varchar(2) NOT NULL,
  `staff_number` varchar(10) NOT NULL,
  `client_number` varchar(10) NOT NULL,
  `client_type` varchar(10) NOT NULL,
  `fatca_required` tinyint NOT NULL COMMENT '0-no,1-yes',
  `tax_residence_of_india` tinyint NOT NULL COMMENT '0-no,1-yes',
  `corporate_turnover` varchar(10) NOT NULL,
  `line_of_activity` varchar(10) NOT NULL,
  `aadhar_doc_id` varchar(20) NOT NULL,
  `dl` varchar(20) NOT NULL,
  `lic` varchar(20) NOT NULL,
  `govt_bank_public_sector` varchar(20) NOT NULL,
  `mnrega` varchar(20) NOT NULL,
  `extraction_DateTime` varchar(20) NOT NULL,
  `others_id` varchar(20) NOT NULL,
  `pan` varchar(20) NOT NULL,
  `passport` varchar(20) NOT NULL,
  `ration` varchar(20) NOT NULL,
  `utilityBillTelephone` varchar(20) NOT NULL,
  `utilityBillElectricity` varchar(20) NOT NULL,
  `voter` varchar(20) NOT NULL,
  `landPaper` varchar(20) NOT NULL,
  `dateOfBirthCertificateMinor` varchar(20) NOT NULL,
  `bankPostOfficePassbookStatement` varchar(20) NOT NULL,
  `salesTax` varchar(20) NOT NULL,
  `incomeTaxReturn` varchar(20) NOT NULL,
  `marriageCertificate` varchar(20) NOT NULL,
  `villagePanchayatLetter` varchar(20) NOT NULL,
  `partnershipDeed` varchar(20) NOT NULL,
  `certificateOfIncorporation` varchar(20) NOT NULL,
  `registeredAgreementbetweenPartners` varchar(20) NOT NULL,
  `schoolCertificate` varchar(20) NOT NULL,
  `memorandumOfAssociationArticleOfAssociation` varchar(20) NOT NULL,
  `listOfDirectors` varchar(20) NOT NULL,
  `copyOfForm32` varchar(20) NOT NULL,
  `boardResolution` varchar(20) NOT NULL,
  `certificateOfIncorporationAsLLP` varchar(20) NOT NULL,
  `copyOfCommencementOfBusinessCertificate` varchar(20) NOT NULL,
  `trustDeed` varchar(20) NOT NULL,
  `listOfNameOfOfficeBearersTrustees` varchar(20) NOT NULL,
  `resolutionSGNByCHMNPresDirManagingTrustee` varchar(20) NOT NULL,
  `certifiedCpRegistrationAndByelawsCertificate` varchar(20) NOT NULL,
  `tradeLicense` varchar(20) NOT NULL,
  `itexemptionCertificate` varchar(20) NOT NULL,
  `licenseForSection8Company` varchar(20) NOT NULL,
  `serviceTaxCertificate` varchar(20) NOT NULL,
  `registeredLeaveAndLicenseAgreement` varchar(20) NOT NULL,
  `saleDeed` varchar(20) NOT NULL,
  `letterFromReputedEmployer` varchar(20) NOT NULL,
  `propertyTax` varchar(20) NOT NULL,
  `pensionPaymentOrderRetiredPersonal` varchar(20) NOT NULL,
  `utilityBillMobileGasWater` varchar(20) NOT NULL,
  `accomodationAllotmentLetter` varchar(20) NOT NULL,
  `leaveAndLicenceAgreement` varchar(20) NOT NULL,
  `docIssuedByGovtDeptOfForeignJurisdiction` varchar(20) NOT NULL,
  `udyamRegistrationCertificate` varchar(20) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `address3` varchar(255) NOT NULL,
  `address4` varchar(255) NOT NULL,
  `pincode1` varchar(15) NOT NULL,
  `pincode2` varchar(15) NOT NULL,
  `pincode3` varchar(15) NOT NULL,
  `pincode4` varchar(15) NOT NULL,
  `locationCode1` varchar(15) NOT NULL,
  `locationCode2` varchar(15) NOT NULL,
  `locationCode3` varchar(15) NOT NULL,
  `locationCode4` varchar(15) NOT NULL,
  `countryCode1` varchar(15) NOT NULL,
  `countryCode2` varchar(15) NOT NULL,
  `countryCode3` varchar(15) NOT NULL,
  `countryCode4` varchar(15) NOT NULL,
  `phone1` varchar(15) NOT NULL,
  `phone2` varchar(15) NOT NULL,
  `phone3` varchar(15) NOT NULL,
  `phone4` varchar(15) NOT NULL,
  `phone5` varchar(15) NOT NULL,
  `phone6` varchar(15) NOT NULL,
  `phone7` varchar(15) NOT NULL,
  `phone8` varchar(15) NOT NULL,
  `phone9` varchar(15) NOT NULL,
  `phone10` varchar(15) NOT NULL,
  `phone11` varchar(15) NOT NULL,
  `phone12` varchar(15) NOT NULL,
  `rowNum` varchar(20) NOT NULL,
  `source` varchar(20) NOT NULL,
  `ucid` varchar(15) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `createdOn` varchar(20) NOT NULL,
  `createdBy` varchar(20) NOT NULL,
  `modifiedOn` varchar(20) NOT NULL,
  `modifiedBy` varchar(20) NOT NULL,
  `STATUS` varchar(20) NOT NULL,
  `COMMENT` text NOT NULL,
  `MAKER_CHECKER_FLAG` varchar(20) NOT NULL,
  `UPDATED_BY_CHECKER` varchar(20) NOT NULL,
  `UPDATED_BY_MAKER` varchar(20) NOT NULL,
  `UPDATED_TIME` datetime NOT NULL,
  `MERGE_UNMERGE_FLAG` varchar(20) NOT NULL,
  `MERGE_UNMERGE_REQUEST` varchar(20) NOT NULL,
  `PARENT_UCID` varchar(20) NOT NULL,
  `UCID_GENERATED_TIME` datetime NOT NULL,
  `PREVIOUS_UCID` varchar(20) NOT NULL,
  `spouseName` varchar(50) NOT NULL,
  `guardianName` varchar(50) NOT NULL,
  `responseId` varchar(30) NOT NULL,
  `countryCode` varchar(15) NOT NULL,
  `locationCode` varchar(15) NOT NULL,
  `mothersMaidenName` varchar(50) NOT NULL,
  `error_code` varchar(15) NOT NULL,
  `error_report` text NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`entry_id`),
  KEY `branch_code` (`branch_code`),
  KEY `customer_id` (`customer_id`),
  KEY `udate` (`udate`),
  KEY `cdate` (`cdate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ucid_log`
--

DROP TABLE IF EXISTS `ucid_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ucid_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `url` varchar(150) NOT NULL,
  `log_type` varchar(20) NOT NULL,
  `request` longtext NOT NULL,
  `response` longtext NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_checker_log`
--

DROP TABLE IF EXISTS `user_checker_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_checker_log` (
  `user_checker_id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int DEFAULT NULL,
  `checker_id` int DEFAULT NULL,
  `is_approved` tinyint(1) DEFAULT '0',
  `is_rejected` tinyint(1) DEFAULT '0',
  `is_disabled` tinyint(1) DEFAULT '0',
  `ug_id` int DEFAULT NULL,
  `checker_log_in` datetime DEFAULT NULL,
  `checker_log_out` datetime DEFAULT NULL,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  PRIMARY KEY (`user_checker_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_maker_log`
--

DROP TABLE IF EXISTS `user_maker_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_maker_log` (
  `user_maker_id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `ug_id` int DEFAULT NULL,
  `is_enabled` int DEFAULT NULL,
  `maker_log_in` datetime DEFAULT NULL,
  `mker_log_out` datetime DEFAULT NULL,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  PRIMARY KEY (`user_maker_id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_otp_verification`
--

DROP TABLE IF EXISTS `user_otp_verification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_otp_verification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mobile_no` varchar(15) NOT NULL,
  `user_type` tinyint NOT NULL DEFAULT '0' COMMENT '0-agent,1-applicant',
  `otp` int NOT NULL DEFAULT '0',
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1016 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vault_demographic_check`
--

DROP TABLE IF EXISTS `vault_demographic_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vault_demographic_check` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vault_id` varchar(100) DEFAULT NULL,
  `name` varchar(15) NOT NULL,
  `gender` text,
  `mobile_no` text NOT NULL,
  `aadhar_no` text NOT NULL,
  `result` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `vault_response` varchar(10) NOT NULL,
  `demo_response` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zipcode_checker_log`
--

DROP TABLE IF EXISTS `zipcode_checker_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zipcode_checker_log` (
  `zipcode_checker_id` int NOT NULL AUTO_INCREMENT,
  `zipcode_code` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `is_approved` tinyint(1) DEFAULT '0',
  `is_rejected` tinyint(1) DEFAULT '0',
  `checker_log_in` datetime DEFAULT NULL,
  `checker_log_out` datetime DEFAULT NULL,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  PRIMARY KEY (`zipcode_checker_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zipcode_maker_log`
--

DROP TABLE IF EXISTS `zipcode_maker_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zipcode_maker_log` (
  `zipcode_maker_id` int NOT NULL AUTO_INCREMENT,
  `zipcode_id` int DEFAULT NULL,
  `zipcode_code` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `maker_log_in` datetime DEFAULT NULL,
  `mker_log_out` datetime DEFAULT NULL,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  PRIMARY KEY (`zipcode_maker_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-20 16:12:30
