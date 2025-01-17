-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: 127.0.0.1    Database: shopwise
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'1VQO3n83fE6KI7tqrcMFjDgNuhiukGha',1,'2024-07-27 06:17:16','2024-07-27 06:17:16','2024-07-27 06:17:16');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Homepage middle 1','2029-07-27 00:00:00','not_set','IZ6WU8KUALYD','promotion/1.jpg','/product-categories/headphone',0,1,'published','2024-07-27 06:17:17','2024-07-27 06:17:17',1,NULL,NULL,NULL,NULL),(2,'Homepage middle 2','2029-07-27 00:00:00','not_set','ILSFJVYFGCPZ','promotion/2.jpg','/product-categories/camera',0,2,'published','2024-07-27 06:17:17','2024-07-27 06:17:17',1,NULL,NULL,NULL,NULL),(3,'Homepage middle 3','2029-07-27 00:00:00','not_set','ZDOZUZZIU7FT','promotion/3.jpg','/product-categories/watches',0,3,'published','2024-07-27 06:17:17','2024-07-27 06:17:17',1,NULL,NULL,NULL,NULL),(4,'Slide right 1','2029-07-27 00:00:00','not_set','WF2VEBKBGUFA','promotion/4.jpg','/products',0,4,'published','2024-07-27 06:17:17','2024-07-27 06:17:17',1,NULL,NULL,NULL,NULL),(5,'Slide right 2','2029-07-27 00:00:00','not_set','YKE9S2TUEEJB','promotion/5.jpg','/products',0,5,'published','2024-07-27 06:17:17','2024-07-27 06:17:17',1,NULL,NULL,NULL,NULL),(6,'Homepage medium 1','2029-07-27 00:00:00','not_set','DHAEBCMWGYJG','promotion/6.jpg','/products',0,6,'published','2024-07-27 06:17:17','2024-07-27 06:17:17',1,NULL,NULL,NULL,NULL),(7,'Homepage medium 1','2029-07-27 00:00:00','not_set','MDEUVQI9QPKM','promotion/7.jpg','/products',0,7,'published','2024-07-27 06:17:17','2024-07-27 06:17:17',1,NULL,NULL,NULL,NULL),(8,'Homepage medium 3','2029-07-27 00:00:00','not_set','EYMG7NGZTHJL','promotion/8.jpg','/products',0,8,'published','2024-07-27 06:17:17','2024-07-27 06:17:17',1,NULL,NULL,NULL,NULL),(9,'Homepage medium 4','2029-07-27 00:00:00','not_set','NKWBGV6NAC3M','promotion/9.jpg','/products',0,9,'published','2024-07-27 06:17:17','2024-07-27 06:17:17',1,NULL,NULL,NULL,NULL),(10,'Homepage medium 5','2029-07-27 00:00:00','not_set','7W3YFO7XE422','promotion/10.jpg','/products',0,10,'published','2024-07-27 06:17:17','2024-07-27 06:17:17',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Et delectus quo eligendi veritatis voluptatem libero cupiditate. Ullam est eaque et eligendi explicabo. Ea non amet incidunt sapiente quis incidunt et.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2024-07-27 06:17:15','2024-07-27 06:17:15'),(2,'Fashion',0,'Soluta vero nemo earum quod eos enim. Consequatur laboriosam maxime provident qui sit et. Voluptatem hic veritatis qui dolorem. Perferendis dolorum nihil quia atque.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-07-27 06:17:15','2024-07-27 06:17:15'),(3,'Electronic',0,'Temporibus delectus vitae optio aut. Expedita iste accusamus et nobis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-07-27 06:17:15','2024-07-27 06:17:15'),(4,'Commercial',0,'Facilis maiores molestiae minima ducimus blanditiis. Assumenda ab est reprehenderit fuga deleniti unde. Quaerat ipsum at soluta temporibus mollitia voluptates.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-07-27 06:17:15','2024-07-27 06:17:15');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Fashion live',NULL,NULL,'brands/1.png','published',0,1,'2024-07-27 06:17:05','2024-07-27 06:17:05'),(2,'Hand crafted',NULL,NULL,'brands/2.png','published',1,1,'2024-07-27 06:17:05','2024-07-27 06:17:05'),(3,'Mestonix',NULL,NULL,'brands/3.png','published',2,1,'2024-07-27 06:17:05','2024-07-27 06:17:05'),(4,'Sunshine',NULL,NULL,'brands/4.png','published',3,1,'2024-07-27 06:17:05','2024-07-27 06:17:05'),(5,'Pure',NULL,NULL,'brands/5.png','published',4,1,'2024-07-27 06:17:05','2024-07-27 06:17:05'),(6,'Anfold',NULL,NULL,'brands/6.png','published',5,1,'2024-07-27 06:17:05','2024-07-27 06:17:05'),(7,'Automotive',NULL,NULL,'brands/7.png','published',6,1,'2024-07-27 06:17:05','2024-07-27 06:17:05');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2024-07-27 06:17:05','2024-07-27 06:17:05'),(2,'EUR','€',0,2,1,0,0.84,'2024-07-27 06:17:05','2024-07-27 06:17:05'),(3,'VND','₫',0,0,2,0,23203,'2024-07-27 06:17:05','2024-07-27 06:17:05'),(4,'NGN','₦',1,2,2,0,895.52,'2024-07-27 06:17:05','2024-07-27 06:17:05');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Mr. Dexter Mraz','customer@botble.com','+13363944039','MN','Missouri','East Nat','95251 Deckow Mission Apt. 834',1,1,'2024-07-27 06:17:07','2024-07-27 06:17:07','93024'),(2,'Mr. Dexter Mraz','customer@botble.com','+13612887186','GP','Missouri','West Daisy','74701 Jayne Path Suite 220',1,0,'2024-07-27 06:17:07','2024-07-27 06:17:07','19372-4635'),(3,'Roberta Boyer I','john.smith@botble.com','+18456359313','JE','Louisiana','Estaport','28146 Bins Road',2,1,'2024-07-27 06:17:07','2024-07-27 06:17:07','94344-6142'),(4,'Roberta Boyer I','john.smith@botble.com','+14136603463','BD','Wisconsin','South Maci','4219 Tony Row Apt. 300',2,0,'2024-07-27 06:17:07','2024-07-27 06:17:07','59611'),(5,'Elmira Pfannerstill IV','jessika50@example.org','+16306617540','US','South Carolina','North Marciahaven','12483 O\'Connell Islands Apt. 010',3,1,'2024-07-27 06:17:07','2024-07-27 06:17:07','33336-7327'),(6,'Kristy O\'Conner','nerdman@example.com','+19125294634','IN','Illinois','Samantahaven','6555 Flatley Village',4,1,'2024-07-27 06:17:07','2024-07-27 06:17:07','90305'),(7,'Prof. Gonzalo Roob DVM','amber53@example.net','+16607396042','CM','Wyoming','North Ethyl','50178 Ewell Manors',5,1,'2024-07-27 06:17:08','2024-07-27 06:17:08','49632'),(8,'Teresa Beier IV','meda37@example.com','+19472161549','TG','Massachusetts','East Mosesland','470 Fiona Dale Apt. 245',6,1,'2024-07-27 06:17:08','2024-07-27 06:17:08','33866'),(9,'Mikel Kihn DDS','zakary.hermiston@example.org','+17607469379','CI','Nebraska','South Chelseyville','9463 Alfonso Junction',7,1,'2024-07-27 06:17:08','2024-07-27 06:17:08','02181'),(10,'Prof. Verlie Conn','cdaugherty@example.net','+16785936990','NR','Utah','Anissashire','48347 Janie Drives',8,1,'2024-07-27 06:17:08','2024-07-27 06:17:08','21999-7111'),(11,'Arnold Flatley','ahmed11@example.org','+13808659660','FK','Mississippi','Maxwellfort','82862 Jazmyn Road',9,1,'2024-07-27 06:17:09','2024-07-27 06:17:09','01390-4791'),(12,'Athena Kuvalis','elsie.towne@example.org','+12837907323','BO','Iowa','Mannmouth','9919 Reilly Skyway',10,1,'2024-07-27 06:17:09','2024-07-27 06:17:09','30854-2371');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_deletion_requests`
--

DROP TABLE IF EXISTS `ec_customer_deletion_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_deletion_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting_for_confirmation',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customer_deletion_requests_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_deletion_requests`
--

LOCK TABLES `ec_customer_deletion_requests` WRITE;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Mr. Dexter Mraz','customer@botble.com','$2y$12$PmB.94/3Mo8bX61bRmXcNeek5rqMtm5iUYIEznDafm1kftPhXXFQq','customers/1.jpg','1986-07-14','+14585137032',NULL,'2024-07-27 06:17:07','2024-07-27 06:17:07','2024-07-27 13:17:07',NULL,'activated',NULL),(2,'Roberta Boyer I','john.smith@botble.com','$2y$12$txoCPYC2qju7S/8qvazCiORcaEn4D1DCywD21so999oeVpy6ICLq2','customers/7.jpg','1993-07-19','+14792001059',NULL,'2024-07-27 06:17:07','2024-07-27 06:17:07','2024-07-27 13:17:07',NULL,'activated',NULL),(3,'Elmira Pfannerstill IV','jessika50@example.org','$2y$12$2bdYALifb8vcqIqKB2LMWOspXcDZTagIxMbsaEolEO0S5E9kU4SaC','customers/1.jpg','1999-07-16','+17402269594',NULL,'2024-07-27 06:17:07','2024-07-27 06:17:07','2024-07-27 13:17:07',NULL,'activated',NULL),(4,'Kristy O\'Conner','nerdman@example.com','$2y$12$LRQHzIFs03VQAUZwc.DOfeXzwbIdoCzrrTofCQ43BhhTm.NWL/aqe','customers/2.jpg','1975-07-08','+19258518064',NULL,'2024-07-27 06:17:07','2024-07-27 06:17:07','2024-07-27 13:17:07',NULL,'activated',NULL),(5,'Prof. Gonzalo Roob DVM','amber53@example.net','$2y$12$vVagFJtj.AjzcmEWd0JJPOWS7EsGGYkWdFZRAkgHJ98slLrlReRWW','customers/3.jpg','2003-07-17','+19164266333',NULL,'2024-07-27 06:17:08','2024-07-27 06:17:08','2024-07-27 13:17:08',NULL,'activated',NULL),(6,'Teresa Beier IV','meda37@example.com','$2y$12$lCt1m6RBwuwgEJE.aXL8A./iL1iM2BZ5/eyuOryIFl9lknuAFta8m','customers/4.jpg','1986-07-15','+15417987085',NULL,'2024-07-27 06:17:08','2024-07-27 06:17:08','2024-07-27 13:17:08',NULL,'activated',NULL),(7,'Mikel Kihn DDS','zakary.hermiston@example.org','$2y$12$R91IVHtPCnc3JCVzBLLuK.6gSEsTlSLx1QWds//6WzOGVKR4g4WO2','customers/5.jpg','1995-07-15','+14635678138',NULL,'2024-07-27 06:17:08','2024-07-27 06:17:08','2024-07-27 13:17:08',NULL,'activated',NULL),(8,'Prof. Verlie Conn','cdaugherty@example.net','$2y$12$1iXq0.aELTtJf7Z6xPzB7uVb2DDj6C6RC1rKZIq/jEUKKkr0vaPfy','customers/6.jpg','1993-06-28','+14146606162',NULL,'2024-07-27 06:17:08','2024-07-27 06:17:08','2024-07-27 13:17:08',NULL,'activated',NULL),(9,'Arnold Flatley','ahmed11@example.org','$2y$12$9u.bjR2F3nBdI/sHblYBxeCZ62TFHeqwRUKBlU8Dv/1RXGFTJka.e','customers/7.jpg','1988-07-15','+19522863304',NULL,'2024-07-27 06:17:09','2024-07-27 06:17:09','2024-07-27 13:17:09',NULL,'activated',NULL),(10,'Athena Kuvalis','elsie.towne@example.org','$2y$12$QvHfCGP0GIROhPrrQUAxguJKWisaYXEASRD75xXTwH2pX9nfUVmv.','customers/8.jpg','1981-07-11','+14755407946',NULL,'2024-07-27 06:17:09','2024-07-27 06:17:09','2024-07-27 13:17:09',NULL,'activated',NULL);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,24,994.0232,19,5),(2,27,367.74,6,4);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Deal of the Day.','2024-08-29 00:00:00','published','2024-07-27 06:17:14','2024-07-27 06:17:14'),(2,'Gadgets &amp; Accessories','2024-08-30 00:00:00','published','2024-07-27 06:17:14','2024-07-27 06:17:14');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(1,2,'2 Year',10,9999,0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(1,3,'3 Year',20,9999,0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(2,4,'4GB',0,9999,0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(2,5,'8GB',10,9999,0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(2,6,'16GB',20,9999,0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(3,7,'Core i5',0,9999,0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(3,8,'Core i7',10,9999,0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(3,9,'Core i9',20,9999,0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(4,10,'128GB',0,9999,0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(4,11,'256GB',10,9999,0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(4,12,'512GB',20,9999,0,'2024-07-27 06:17:16','2024-07-27 06:17:16');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2024-07-27 06:17:16','2024-07-27 06:17:16');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `downloaded_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_histories`
--

DROP TABLE IF EXISTS `ec_order_return_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_return_id` bigint unsigned NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_histories`
--

LOCK TABLES `ec_order_return_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_return_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `cancellation_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancellation_reason_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proof_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2024-07-27 06:17:06','2024-07-27 06:17:06',1),(2,'Size','size','text',1,1,1,'published',1,'2024-07-27 06:17:06','2024-07-27 06:17:06',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2024-07-27 06:17:06','2024-07-27 06:17:06'),(2,1,'Blue','blue','#333333',NULL,0,2,'2024-07-27 06:17:06','2024-07-27 06:17:06'),(3,1,'Red','red','#DA323F',NULL,0,3,'2024-07-27 06:17:06','2024-07-27 06:17:06'),(4,1,'Black','black','#2F366C',NULL,0,4,'2024-07-27 06:17:06','2024-07-27 06:17:06'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2024-07-27 06:17:06','2024-07-27 06:17:06'),(6,2,'S','s',NULL,NULL,1,1,'2024-07-27 06:17:06','2024-07-27 06:17:06'),(7,2,'M','m',NULL,NULL,0,2,'2024-07-27 06:17:06','2024-07-27 06:17:06'),(8,2,'L','l',NULL,NULL,0,3,'2024-07-27 06:17:06','2024-07-27 06:17:06'),(9,2,'XL','xl',NULL,NULL,0,4,'2024-07-27 06:17:06','2024-07-27 06:17:06'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2024-07-27 06:17:06','2024-07-27 06:17:06');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Television',0,NULL,'published',0,'product-categories/p-1.png',1,'2024-07-27 06:17:05','2024-07-27 06:17:05','flaticon-tv',NULL),(2,'Home Audio & Theaters',1,NULL,'published',0,NULL,0,'2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,NULL),(3,'TV & Videos',1,NULL,'published',1,NULL,0,'2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,NULL),(4,'Camera, Photos & Videos',1,NULL,'published',2,NULL,0,'2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,NULL),(5,'Cellphones & Accessories',1,NULL,'published',3,NULL,0,'2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,NULL),(6,'Headphones',1,NULL,'published',4,NULL,0,'2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,NULL),(7,'Videos games',1,NULL,'published',5,NULL,0,'2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,NULL),(8,'Wireless Speakers',1,NULL,'published',6,NULL,0,'2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,NULL),(9,'Office Electronic',1,NULL,'published',7,NULL,0,'2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,NULL),(10,'Mobile',0,NULL,'published',1,'product-categories/p-2.png',1,'2024-07-27 06:17:05','2024-07-27 06:17:05','flaticon-responsive',NULL),(11,'Digital Cables',10,NULL,'published',0,NULL,0,'2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,NULL),(12,'Audio & Video Cables',10,NULL,'published',1,NULL,0,'2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,NULL),(13,'Batteries',10,NULL,'published',2,NULL,0,'2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,NULL),(14,'Headphone',0,NULL,'published',2,'product-categories/p-3.png',1,'2024-07-27 06:17:05','2024-07-27 06:17:05','flaticon-headphones',NULL),(15,'Computer & Tablets',14,NULL,'published',0,NULL,0,'2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,NULL),(16,'Laptop',14,NULL,'published',1,NULL,0,'2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,NULL),(17,'Monitors',14,NULL,'published',2,NULL,0,'2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,NULL),(18,'Computer Components',14,NULL,'published',3,NULL,0,'2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,NULL),(19,'Watches',0,NULL,'published',3,'product-categories/p-4.png',1,'2024-07-27 06:17:05','2024-07-27 06:17:05','flaticon-watch',NULL),(20,'Drive & Storages',19,NULL,'published',0,NULL,0,'2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,NULL),(21,'Gaming Laptop',19,NULL,'published',1,NULL,0,'2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,NULL),(22,'Security & Protection',19,NULL,'published',2,NULL,0,'2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,NULL),(23,'Accessories',19,NULL,'published',3,NULL,0,'2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,NULL),(24,'Game',0,NULL,'published',4,'product-categories/p-5.png',1,'2024-07-27 06:17:05','2024-07-27 06:17:05','flaticon-console',NULL),(25,'Camera',0,NULL,'published',5,'product-categories/p-6.png',1,'2024-07-27 06:17:05','2024-07-27 06:17:05','flaticon-camera',NULL),(26,'Audio',0,NULL,'published',6,'product-categories/p-7.png',1,'2024-07-27 06:17:05','2024-07-27 06:17:05','flaticon-music-system',NULL),(27,'Mobile & Tablet',0,NULL,'published',7,NULL,0,'2024-07-27 06:17:05','2024-07-27 06:17:05','flaticon-responsive',NULL),(28,'Accessories',0,NULL,'published',8,NULL,0,'2024-07-27 06:17:05','2024-07-27 06:17:05','flaticon-plugins',NULL),(29,'Home Audio & Theater',0,NULL,'published',9,NULL,0,'2024-07-27 06:17:06','2024-07-27 06:17:06','flaticon-music-system',NULL),(30,'Tv & Smart Box',0,NULL,'published',10,NULL,0,'2024-07-27 06:17:06','2024-07-27 06:17:06','flaticon-monitor',NULL),(31,'Printer',0,NULL,'published',11,NULL,0,'2024-07-27 06:17:06','2024-07-27 06:17:06','flaticon-printer',NULL),(32,'Computer',0,NULL,'published',12,NULL,0,'2024-07-27 06:17:06','2024-07-27 06:17:06','flaticon-tv',NULL),(33,'Fax Machine',0,NULL,'published',13,NULL,0,'2024-07-27 06:17:06','2024-07-27 06:17:06','flaticon-fax',NULL),(34,'Mouse',0,NULL,'published',14,NULL,0,'2024-07-27 06:17:06','2024-07-27 06:17:06','flaticon-mouse',NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,5),(1,6),(1,17),(1,28),(2,1),(2,6),(2,10),(2,25),(2,30),(3,9),(3,11),(3,16),(3,21),(3,27),(3,31),(4,14),(4,16),(4,21),(5,10),(5,12),(5,15),(5,21),(5,24),(5,29),(6,19),(7,14),(7,24),(7,31),(8,16),(8,29),(9,6),(9,13),(9,29),(9,30),(10,10),(11,1),(11,7),(11,11),(11,15),(11,18),(12,9),(12,13),(12,22),(13,4),(13,28),(14,8),(15,4),(16,3),(16,21),(16,24),(16,26),(17,1),(17,2),(17,7),(17,8),(17,18),(17,20),(17,22),(17,23),(18,5),(18,7),(18,13),(18,17),(19,2),(19,9),(19,13),(19,18),(20,17),(20,23),(20,25),(20,27),(21,19),(21,20),(21,22),(21,29),(21,30),(21,31),(22,1),(22,3),(22,8),(22,30),(23,14),(23,26),(24,11),(24,16),(24,27),(24,28),(25,5),(25,6),(25,8),(26,12),(26,15),(26,20),(26,31),(27,26),(28,4),(29,9),(29,10),(29,11),(29,12),(29,18),(29,20),(29,23),(29,25),(29,26),(31,4),(31,5),(31,12),(31,19),(31,23),(31,25),(32,2),(32,14),(32,17),(33,3),(34,2),(34,3),(34,7),(34,15),(34,19),(34,22),(34,24),(34,27),(34,28);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,7),(1,8),(1,9),(1,11),(1,13),(1,16),(1,17),(1,19),(1,20),(1,22),(1,24),(1,27),(1,30),(1,31),(2,2),(2,3),(2,10),(2,18),(2,21),(2,23),(2,25),(2,26),(3,1),(3,4),(3,5),(3,6),(3,12),(3,14),(3,15),(3,28),(3,29);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2024-07-27 06:17:06','2024-07-27 06:17:06',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2024-07-27 06:17:06','2024-07-27 06:17:06',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2024-07-27 06:17:06','2024-07-27 06:17:06',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,4,0,0.00,'fixed',1),(1,5,0,0.00,'fixed',1),(1,8,0,0.00,'fixed',1),(1,14,0,0.00,'fixed',1),(1,17,0,0.00,'fixed',1),(1,19,0,0.00,'fixed',1),(1,20,0,0.00,'fixed',1),(2,1,0,0.00,'fixed',1),(2,4,0,0.00,'fixed',1),(2,5,0,0.00,'fixed',1),(2,10,0,0.00,'fixed',1),(2,26,0,0.00,'fixed',1),(3,13,0,0.00,'fixed',1),(3,19,0,0.00,'fixed',1),(3,21,0,0.00,'fixed',1),(3,22,0,0.00,'fixed',1),(3,25,0,0.00,'fixed',1),(3,26,0,0.00,'fixed',1),(3,27,0,0.00,'fixed',1),(4,2,0,0.00,'fixed',1),(4,5,0,0.00,'fixed',1),(4,7,0,0.00,'fixed',1),(4,11,0,0.00,'fixed',1),(4,20,0,0.00,'fixed',1),(4,25,0,0.00,'fixed',1),(4,27,0,0.00,'fixed',1),(5,9,0,0.00,'fixed',1),(5,13,0,0.00,'fixed',1),(5,16,0,0.00,'fixed',1),(5,17,0,0.00,'fixed',1),(5,18,0,0.00,'fixed',1),(5,21,0,0.00,'fixed',1),(6,1,0,0.00,'fixed',1),(6,3,0,0.00,'fixed',1),(6,15,0,0.00,'fixed',1),(6,17,0,0.00,'fixed',1),(6,27,0,0.00,'fixed',1),(6,29,0,0.00,'fixed',1),(7,9,0,0.00,'fixed',1),(7,12,0,0.00,'fixed',1),(7,17,0,0.00,'fixed',1),(7,26,0,0.00,'fixed',1),(7,29,0,0.00,'fixed',1),(7,30,0,0.00,'fixed',1),(8,4,0,0.00,'fixed',1),(8,10,0,0.00,'fixed',1),(8,24,0,0.00,'fixed',1),(8,25,0,0.00,'fixed',1),(8,27,0,0.00,'fixed',1),(8,29,0,0.00,'fixed',1),(8,30,0,0.00,'fixed',1),(9,5,0,0.00,'fixed',1),(9,6,0,0.00,'fixed',1),(9,11,0,0.00,'fixed',1),(9,14,0,0.00,'fixed',1),(9,20,0,0.00,'fixed',1),(9,24,0,0.00,'fixed',1),(9,31,0,0.00,'fixed',1),(10,2,0,0.00,'fixed',1),(10,12,0,0.00,'fixed',1),(10,22,0,0.00,'fixed',1),(10,26,0,0.00,'fixed',1),(10,27,0,0.00,'fixed',1),(11,1,0,0.00,'fixed',1),(11,4,0,0.00,'fixed',1),(11,7,0,0.00,'fixed',1),(11,14,0,0.00,'fixed',1),(11,21,0,0.00,'fixed',1),(11,22,0,0.00,'fixed',1),(11,23,0,0.00,'fixed',1),(12,6,0,0.00,'fixed',1),(12,15,0,0.00,'fixed',1),(12,17,0,0.00,'fixed',1),(12,18,0,0.00,'fixed',1),(12,27,0,0.00,'fixed',1),(12,28,0,0.00,'fixed',1),(12,29,0,0.00,'fixed',1),(13,11,0,0.00,'fixed',1),(13,15,0,0.00,'fixed',1),(13,18,0,0.00,'fixed',1),(13,22,0,0.00,'fixed',1),(13,25,0,0.00,'fixed',1),(13,27,0,0.00,'fixed',1),(14,13,0,0.00,'fixed',1),(14,19,0,0.00,'fixed',1),(14,22,0,0.00,'fixed',1),(14,28,0,0.00,'fixed',1),(14,30,0,0.00,'fixed',1),(15,1,0,0.00,'fixed',1),(15,2,0,0.00,'fixed',1),(15,6,0,0.00,'fixed',1),(15,8,0,0.00,'fixed',1),(15,12,0,0.00,'fixed',1),(15,16,0,0.00,'fixed',1),(16,4,0,0.00,'fixed',1),(16,9,0,0.00,'fixed',1),(16,14,0,0.00,'fixed',1),(16,23,0,0.00,'fixed',1),(16,24,0,0.00,'fixed',1),(16,25,0,0.00,'fixed',1),(17,5,0,0.00,'fixed',1),(17,6,0,0.00,'fixed',1),(17,9,0,0.00,'fixed',1),(17,16,0,0.00,'fixed',1),(17,21,0,0.00,'fixed',1),(17,27,0,0.00,'fixed',1),(17,28,0,0.00,'fixed',1),(18,1,0,0.00,'fixed',1),(18,8,0,0.00,'fixed',1),(18,9,0,0.00,'fixed',1),(18,11,0,0.00,'fixed',1),(18,21,0,0.00,'fixed',1),(18,26,0,0.00,'fixed',1),(18,27,0,0.00,'fixed',1),(19,1,0,0.00,'fixed',1),(19,5,0,0.00,'fixed',1),(19,8,0,0.00,'fixed',1),(19,11,0,0.00,'fixed',1),(19,13,0,0.00,'fixed',1),(19,17,0,0.00,'fixed',1),(19,23,0,0.00,'fixed',1),(20,1,0,0.00,'fixed',1),(20,7,0,0.00,'fixed',1),(20,8,0,0.00,'fixed',1),(20,29,0,0.00,'fixed',1),(20,30,0,0.00,'fixed',1),(20,31,0,0.00,'fixed',1),(21,2,0,0.00,'fixed',1),(21,5,0,0.00,'fixed',1),(21,11,0,0.00,'fixed',1),(21,14,0,0.00,'fixed',1),(21,16,0,0.00,'fixed',1),(21,18,0,0.00,'fixed',1),(22,2,0,0.00,'fixed',1),(22,4,0,0.00,'fixed',1),(22,16,0,0.00,'fixed',1),(22,18,0,0.00,'fixed',1),(22,24,0,0.00,'fixed',1),(22,28,0,0.00,'fixed',1),(23,5,0,0.00,'fixed',1),(23,12,0,0.00,'fixed',1),(23,19,0,0.00,'fixed',1),(23,20,0,0.00,'fixed',1),(23,22,0,0.00,'fixed',1),(23,25,0,0.00,'fixed',1),(23,27,0,0.00,'fixed',1),(24,6,0,0.00,'fixed',1),(24,10,0,0.00,'fixed',1),(24,14,0,0.00,'fixed',1),(24,20,0,0.00,'fixed',1),(24,22,0,0.00,'fixed',1),(24,29,0,0.00,'fixed',1),(25,1,0,0.00,'fixed',1),(25,2,0,0.00,'fixed',1),(25,3,0,0.00,'fixed',1),(25,6,0,0.00,'fixed',1),(25,10,0,0.00,'fixed',1),(25,21,0,0.00,'fixed',1),(25,31,0,0.00,'fixed',1),(26,13,0,0.00,'fixed',1),(26,18,0,0.00,'fixed',1),(26,21,0,0.00,'fixed',1),(26,27,0,0.00,'fixed',1),(26,28,0,0.00,'fixed',1),(27,4,0,0.00,'fixed',1),(27,5,0,0.00,'fixed',1),(27,7,0,0.00,'fixed',1),(27,16,0,0.00,'fixed',1),(27,20,0,0.00,'fixed',1),(27,26,0,0.00,'fixed',1),(27,30,0,0.00,'fixed',1),(28,12,0,0.00,'fixed',1),(28,15,0,0.00,'fixed',1),(28,18,0,0.00,'fixed',1),(28,23,0,0.00,'fixed',1),(28,24,0,0.00,'fixed',1),(28,25,0,0.00,'fixed',1),(28,31,0,0.00,'fixed',1),(29,9,0,0.00,'fixed',1),(29,10,0,0.00,'fixed',1),(29,15,0,0.00,'fixed',1),(29,22,0,0.00,'fixed',1),(29,25,0,0.00,'fixed',1),(29,28,0,0.00,'fixed',1),(29,30,0,0.00,'fixed',1),(30,4,0,0.00,'fixed',1),(30,5,0,0.00,'fixed',1),(30,8,0,0.00,'fixed',1),(30,17,0,0.00,'fixed',1),(30,19,0,0.00,'fixed',1),(31,4,0,0.00,'fixed',1),(31,8,0,0.00,'fixed',1),(31,12,0,0.00,'fixed',1),(31,21,0,0.00,'fixed',1),(31,24,0,0.00,'fixed',1),(31,27,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,4,'ecommerce/digital-product-files/4-1.jpg','{\"filename\":\"4-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-07-27 13:17:14\",\"name\":\"4-1\",\"extension\":\"jpg\"}','2024-07-27 06:17:14','2024-07-27 06:17:14'),(2,4,'ecommerce/digital-product-files/4-2.jpg','{\"filename\":\"4-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-07-27 13:17:14\",\"name\":\"4-2\",\"extension\":\"jpg\"}','2024-07-27 06:17:14','2024-07-27 06:17:14'),(3,8,'ecommerce/digital-product-files/8-1.jpg','{\"filename\":\"8-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-07-27 13:17:14\",\"name\":\"8-1\",\"extension\":\"jpg\"}','2024-07-27 06:17:14','2024-07-27 06:17:14'),(4,12,'ecommerce/digital-product-files/12-1.jpg','{\"filename\":\"12-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-07-27 13:17:14\",\"name\":\"12-1\",\"extension\":\"jpg\"}','2024-07-27 06:17:14','2024-07-27 06:17:14'),(5,20,'ecommerce/digital-product-files/20-1.jpg','{\"filename\":\"20-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-07-27 13:17:14\",\"name\":\"20-1\",\"extension\":\"jpg\"}','2024-07-27 06:17:14','2024-07-27 06:17:14'),(6,24,'ecommerce/digital-product-files/24-1.jpg','{\"filename\":\"24-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-07-27 13:17:14\",\"name\":\"24-1\",\"extension\":\"jpg\"}','2024-07-27 06:17:14','2024-07-27 06:17:14'),(7,28,'ecommerce/digital-product-files/28-1.jpg','{\"filename\":\"28-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/28-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-07-27 13:17:14\",\"name\":\"28-1\",\"extension\":\"jpg\"}','2024-07-27 06:17:14','2024-07-27 06:17:14'),(8,47,'ecommerce/digital-product-files/8-1.jpg','{\"filename\":\"8-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-07-27 13:17:14\",\"name\":\"8-1\",\"extension\":\"jpg\"}','2024-07-27 06:17:14','2024-07-27 06:17:14'),(9,48,'ecommerce/digital-product-files/8-1.jpg','{\"filename\":\"8-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-07-27 13:17:14\",\"name\":\"8-1\",\"extension\":\"jpg\"}','2024-07-27 06:17:14','2024-07-27 06:17:14'),(10,55,'ecommerce/digital-product-files/12-1.jpg','{\"filename\":\"12-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-07-27 13:17:14\",\"name\":\"12-1\",\"extension\":\"jpg\"}','2024-07-27 06:17:14','2024-07-27 06:17:14'),(11,56,'ecommerce/digital-product-files/12-1.jpg','{\"filename\":\"12-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-07-27 13:17:14\",\"name\":\"12-1\",\"extension\":\"jpg\"}','2024-07-27 06:17:14','2024-07-27 06:17:14'),(12,72,'ecommerce/digital-product-files/24-1.jpg','{\"filename\":\"24-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-07-27 13:17:14\",\"name\":\"24-1\",\"extension\":\"jpg\"}','2024-07-27 06:17:14','2024-07-27 06:17:14'),(13,73,'ecommerce/digital-product-files/24-1.jpg','{\"filename\":\"24-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-07-27 13:17:14\",\"name\":\"24-1\",\"extension\":\"jpg\"}','2024-07-27 06:17:14','2024-07-27 06:17:14'),(14,74,'ecommerce/digital-product-files/28-1.jpg','{\"filename\":\"28-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/28-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-07-27 13:17:14\",\"name\":\"28-1\",\"extension\":\"jpg\"}','2024-07-27 06:17:14','2024-07-27 06:17:14'),(15,75,'ecommerce/digital-product-files/28-1.jpg','{\"filename\":\"28-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/28-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-07-27 13:17:14\",\"name\":\"28-1\",\"extension\":\"jpg\"}','2024-07-27 06:17:14','2024-07-27 06:17:14');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,6),(1,12),(1,15),(1,18),(1,21),(1,30),(2,9),(3,3),(3,24),(3,27);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#d71e2d','published','2024-07-27 06:17:06','2024-07-27 06:17:06'),(2,'New','#02856e','published','2024-07-27 06:17:06','2024-07-27 06:17:06'),(3,'Sale','#fe9931','published','2024-07-27 06:17:06','2024-07-27 06:17:06');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2024-07-27 06:17:14','2024-07-27 06:17:14'),(2,'Mobile',NULL,'published','2024-07-27 06:17:14','2024-07-27 06:17:14'),(3,'Iphone',NULL,'published','2024-07-27 06:17:14','2024-07-27 06:17:14'),(4,'Printer',NULL,'published','2024-07-27 06:17:14','2024-07-27 06:17:14'),(5,'Office',NULL,'published','2024-07-27 06:17:14','2024-07-27 06:17:14'),(6,'IT',NULL,'published','2024-07-27 06:17:14','2024-07-27 06:17:14');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (13,1,7),(17,1,9),(1,2,1),(15,2,8),(33,2,17),(35,2,18),(39,2,20),(41,2,21),(45,2,23),(47,2,24),(59,2,30),(3,3,2),(5,3,3),(7,3,4),(19,3,10),(37,3,19),(43,3,22),(49,3,25),(53,3,27),(57,3,29),(11,4,6),(27,4,14),(31,4,16),(51,4,26),(9,5,5),(21,5,11),(23,5,12),(25,5,13),(29,5,15),(55,5,28),(10,6,5),(16,6,8),(20,6,10),(24,6,12),(40,6,20),(50,6,25),(52,6,26),(54,6,27),(6,7,3),(8,7,4),(32,7,16),(42,7,21),(60,7,30),(4,8,2),(12,8,6),(14,8,7),(18,8,9),(26,8,13),(28,8,14),(46,8,23),(30,9,15),(34,9,17),(38,9,19),(48,9,24),(56,9,28),(2,10,1),(22,10,11),(36,10,18),(44,10,22),(58,10,29);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,32,1,1),(2,33,1,0),(3,34,3,1),(4,35,3,0),(5,36,5,1),(6,37,5,0),(7,38,5,0),(8,39,5,0),(9,40,6,1),(10,41,6,0),(11,42,6,0),(12,43,6,0),(13,44,7,1),(14,45,7,0),(15,46,7,0),(16,47,8,1),(17,48,8,0),(18,49,9,1),(19,50,9,0),(20,51,10,1),(21,52,10,0),(22,53,11,1),(23,54,11,0),(24,55,12,1),(25,56,12,0),(26,57,13,1),(27,58,13,0),(28,59,14,1),(29,60,14,0),(30,61,14,0),(31,62,15,1),(32,63,15,0),(33,64,15,0),(34,65,22,1),(35,66,22,0),(36,67,22,0),(37,68,22,0),(38,69,22,0),(39,70,23,1),(40,71,23,0),(41,72,24,1),(42,73,24,0),(43,74,28,1),(44,75,28,0),(45,76,30,1),(46,77,30,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2024-07-27',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,3,0),(2,3,0),(1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,7,0),(2,7,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,10,0),(2,10,0),(1,11,0),(2,11,0),(1,12,0),(2,12,0),(1,13,0),(2,13,0),(1,14,0),(2,14,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `video_media` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_order_quantity` int unsigned DEFAULT '0',
  `maximum_order_quantity` int unsigned DEFAULT '0',
  `notify_attachment_updated` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Smart Home Speaker','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1-1.jpg\",\"products\\/1-2.jpg\",\"products\\/1-3.jpg\"]',NULL,'MK-102-A1',0,10,0,1,1,5,0,0,1585,NULL,NULL,NULL,12.00,20.00,15.00,857.00,1,130211,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(2,'Headphone Ultra Bass','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]',NULL,'AD-185',0,17,0,1,1,7,0,0,1729,1668,NULL,NULL,12.00,20.00,16.00,749.00,1,115298,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(3,'Boxed - Bluetooth Headphone','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3-1.jpg\",\"products\\/3-2.jpg\",\"products\\/3-3.jpg\"]',NULL,'ZY-103-A1',0,12,0,1,1,7,0,0,440,NULL,NULL,NULL,14.00,16.00,13.00,571.00,1,59513,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(4,'Chikie - Bluetooth Speaker (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]',NULL,'8K-155',0,14,0,1,1,4,0,0,288,125,NULL,NULL,18.00,16.00,16.00,594.00,1,56167,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0),(5,'Camera Hikvision HK-35VS8','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]',NULL,'ZA-150-A1',0,13,0,1,1,5,0,0,1102,NULL,NULL,NULL,16.00,17.00,16.00,632.00,1,94403,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(6,'Camera Samsung SS-24','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6-1.jpg\"]',NULL,'3Q-170-A1',0,18,0,1,1,2,0,0,1164,NULL,NULL,NULL,20.00,16.00,13.00,650.00,1,76574,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(7,'Leather Watch Band','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7-1.jpg\"]',NULL,'US-107-A1',0,17,0,1,1,5,0,0,1026,NULL,NULL,NULL,17.00,13.00,18.00,814.00,1,53686,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(8,'Apple iPhone 13 Plus (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8-1.jpg\"]',NULL,'ZB-190-A1',0,17,0,1,1,2,0,0,1144,1018.16,NULL,NULL,18.00,14.00,19.00,628.00,1,108586,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0),(9,'Macbook Pro 2015','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9-1.jpg\"]',NULL,'XG-200-A1',0,13,0,1,1,6,0,0,1590,NULL,NULL,NULL,10.00,19.00,18.00,527.00,1,89377,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(10,'Macbook Air 12 inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10-1.jpg\"]',NULL,'BZ-143-A1',0,15,0,1,1,2,0,0,2329,NULL,NULL,NULL,20.00,13.00,13.00,594.00,1,10909,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(11,'Apple Watch Serial 7','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11-1.jpg\"]',NULL,'KX-136-A1',0,10,0,1,1,4,0,0,726,NULL,NULL,NULL,13.00,12.00,10.00,569.00,1,132171,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(12,'Macbook Pro 13 inch (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12-1.jpg\"]',NULL,'6V-174-A1',0,12,0,1,1,3,0,0,719,524.87,NULL,NULL,18.00,17.00,20.00,533.00,1,61013,'2024-07-27 06:17:13','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0),(13,'Apple Keyboard','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13-1.jpg\"]',NULL,'VG-160-A1',0,15,0,1,1,7,0,0,1743,NULL,NULL,NULL,11.00,12.00,19.00,593.00,1,57031,'2024-07-27 06:17:13','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(14,'MacSafe 80W','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14-1.jpg\"]',NULL,'L5-103-A1',0,20,0,1,1,5,0,0,1125,NULL,NULL,NULL,14.00,13.00,16.00,791.00,1,2094,'2024-07-27 06:17:13','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(15,'Hand playstation','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15-1.jpg\"]',NULL,'CM-161-A1',0,11,0,1,1,2,0,0,893,NULL,NULL,NULL,16.00,16.00,17.00,651.00,1,102800,'2024-07-27 06:17:13','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(16,'Apple Airpods Serial 3 (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[]',NULL,'DQ-110',0,20,0,1,1,7,0,0,368,48,NULL,NULL,10.00,19.00,16.00,595.00,1,54642,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0),(17,'Cool Smart Watches','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[]',NULL,'P8-116',0,20,0,1,1,4,0,0,745,164,NULL,NULL,13.00,15.00,14.00,722.00,1,153570,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(18,'Black Smart Watches','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18-1.jpg\",\"products\\/18-2.jpg\"]',NULL,'QB-109',0,20,0,1,1,1,0,0,1136,990,NULL,NULL,18.00,10.00,18.00,871.00,1,123516,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(19,'Leather Watch Band Serial 3','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19-1.jpg\"]',NULL,'AG-107',0,16,0,1,1,5,0,0,2340,849,NULL,NULL,11.00,17.00,14.00,519.00,1,66954,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(20,'Macbook Pro 2015 13 inch (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20-1.jpg\"]',NULL,'0T-180',0,14,0,1,1,3,0,0,1341,582,NULL,NULL,13.00,20.00,10.00,625.00,1,82610,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0),(21,'Historic Alarm Clock','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21-1.jpg\"]',NULL,'UF-102',0,11,0,1,1,7,0,0,600,308,NULL,NULL,10.00,15.00,11.00,505.00,1,81646,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(22,'Black Glasses','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22-1.jpg\"]',NULL,'OF-133-A1',0,11,0,1,1,1,0,0,1300,NULL,NULL,NULL,14.00,19.00,16.00,799.00,1,116389,'2024-07-27 06:17:13','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(23,'Phillips Mouse','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23-1.jpg\"]',NULL,'IU-157-A1',0,14,0,1,1,1,0,0,2379,NULL,NULL,NULL,17.00,19.00,13.00,593.00,1,44024,'2024-07-27 06:17:13','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(24,'Gaming Keyboard (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/24-1.jpg\"]',NULL,'QI-118-A1',0,16,0,1,1,4,0,0,2428,2160.92,NULL,NULL,17.00,15.00,14.00,588.00,1,79088,'2024-07-27 06:17:13','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0),(25,'Dual Camera 20MP','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/25-1.jpg\"]',NULL,'BF-126',0,20,0,1,1,4,0,0,1695,1255,NULL,NULL,11.00,14.00,10.00,570.00,1,167511,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(26,'Smart Watches','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/26-1.jpg\",\"products\\/26-2.jpg\"]',NULL,'49-105',0,20,0,1,1,1,0,0,1624,921,NULL,NULL,12.00,20.00,11.00,748.00,1,125421,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(27,'Beat Headphone','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/27-1.jpg\"]',NULL,'SH-126',0,19,0,1,0,5,0,0,1593,454,NULL,NULL,12.00,12.00,19.00,692.00,1,80146,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(28,'Red &amp; Black Headphone (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/28-1.jpg\"]',NULL,'NV-126-A1',0,19,0,1,1,7,0,0,944,679.68,NULL,NULL,16.00,11.00,18.00,509.00,1,98835,'2024-07-27 06:17:13','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0),(29,'Audio Equipment','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/29-1.jpg\"]',NULL,'JE-120',0,13,0,1,1,6,0,0,1814,600,NULL,NULL,15.00,18.00,17.00,729.00,1,51048,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(30,'Smart Televisions','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/30-1.jpg\"]',NULL,'5U-152-A1',0,17,0,1,1,6,0,0,1048,NULL,NULL,NULL,20.00,20.00,14.00,840.00,1,181596,'2024-07-27 06:17:13','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(31,'Samsung Smart TV','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/31-1.jpg\"]',NULL,'H9-186',0,17,0,1,0,6,0,0,2161,215,NULL,NULL,10.00,12.00,15.00,644.00,1,198463,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(32,'Smart Home Speaker',NULL,NULL,'published','[\"products\\/1-2.jpg\"]',NULL,'MK-102-A1',0,10,0,1,0,5,1,0,1585,NULL,NULL,NULL,12.00,20.00,15.00,857.00,NULL,0,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,NULL,0),(33,'Smart Home Speaker',NULL,NULL,'published','[\"products\\/1-3.jpg\"]',NULL,'MK-102-A1-A2',0,10,0,1,0,5,1,0,1585,NULL,NULL,NULL,12.00,20.00,15.00,857.00,NULL,0,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(34,'Boxed - Bluetooth Headphone',NULL,NULL,'published','[\"products\\/3-2.jpg\"]',NULL,'ZY-103-A1',0,12,0,1,0,7,1,0,440,NULL,NULL,NULL,14.00,16.00,13.00,571.00,NULL,0,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,NULL,0),(35,'Boxed - Bluetooth Headphone',NULL,NULL,'published','[\"products\\/3-3.jpg\"]',NULL,'ZY-103-A1-A2',0,12,0,1,0,7,1,0,440,NULL,NULL,NULL,14.00,16.00,13.00,571.00,NULL,0,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(36,'Camera Hikvision HK-35VS8',NULL,NULL,'published','[\"products\\/5-2.jpg\"]',NULL,'ZA-150-A1',0,13,0,1,0,5,1,0,1102,NULL,NULL,NULL,16.00,17.00,16.00,632.00,NULL,0,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,NULL,0),(37,'Camera Hikvision HK-35VS8',NULL,NULL,'published','[\"products\\/5-3.jpg\"]',NULL,'ZA-150-A1-A2',0,13,0,1,0,5,1,0,1102,NULL,NULL,NULL,16.00,17.00,16.00,632.00,NULL,0,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(38,'Camera Hikvision HK-35VS8',NULL,NULL,'published','[\"products\\/5-1.jpg\"]',NULL,'ZA-150-A1-A3',0,13,0,1,0,5,1,0,1102,NULL,NULL,NULL,16.00,17.00,16.00,632.00,NULL,0,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(39,'Camera Hikvision HK-35VS8',NULL,NULL,'published','[\"products\\/5-1.jpg\"]',NULL,'ZA-150-A1-A4',0,13,0,1,0,5,1,0,1102,NULL,NULL,NULL,16.00,17.00,16.00,632.00,NULL,0,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(40,'Camera Samsung SS-24',NULL,NULL,'published','[\"products\\/6-1.jpg\"]',NULL,'3Q-170-A1',0,18,0,1,0,2,1,0,1164,NULL,NULL,NULL,20.00,16.00,13.00,650.00,NULL,0,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,NULL,0),(41,'Camera Samsung SS-24',NULL,NULL,'published','[\"products\\/6-1.jpg\"]',NULL,'3Q-170-A1-A2',0,18,0,1,0,2,1,0,1164,NULL,NULL,NULL,20.00,16.00,13.00,650.00,NULL,0,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(42,'Camera Samsung SS-24',NULL,NULL,'published','[\"products\\/6-1.jpg\"]',NULL,'3Q-170-A1-A3',0,18,0,1,0,2,1,0,1164,NULL,NULL,NULL,20.00,16.00,13.00,650.00,NULL,0,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(43,'Camera Samsung SS-24',NULL,NULL,'published','[\"products\\/6-1.jpg\"]',NULL,'3Q-170-A1-A4',0,18,0,1,0,2,1,0,1164,NULL,NULL,NULL,20.00,16.00,13.00,650.00,NULL,0,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(44,'Leather Watch Band',NULL,NULL,'published','[\"products\\/7-1.jpg\"]',NULL,'US-107-A1',0,17,0,1,0,5,1,0,1026,NULL,NULL,NULL,17.00,13.00,18.00,814.00,NULL,0,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,NULL,0),(45,'Leather Watch Band',NULL,NULL,'published','[\"products\\/7-1.jpg\"]',NULL,'US-107-A1-A2',0,17,0,1,0,5,1,0,1026,NULL,NULL,NULL,17.00,13.00,18.00,814.00,NULL,0,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(46,'Leather Watch Band',NULL,NULL,'published','[\"products\\/7-1.jpg\"]',NULL,'US-107-A1-A3',0,17,0,1,0,5,1,0,1026,NULL,NULL,NULL,17.00,13.00,18.00,814.00,NULL,0,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(47,'Apple iPhone 13 Plus (Digital)',NULL,NULL,'published','[\"products\\/8-1.jpg\"]',NULL,'ZB-190-A1',0,17,0,1,0,2,1,0,1144,1018.16,NULL,NULL,18.00,14.00,19.00,628.00,NULL,0,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,NULL,0),(48,'Apple iPhone 13 Plus (Digital)',NULL,NULL,'published','[\"products\\/8-1.jpg\"]',NULL,'ZB-190-A1-A2',0,17,0,1,0,2,1,0,1144,926.64,NULL,NULL,18.00,14.00,19.00,628.00,NULL,0,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0),(49,'Macbook Pro 2015',NULL,NULL,'published','[\"products\\/9-1.jpg\"]',NULL,'XG-200-A1',0,13,0,1,0,6,1,0,1590,NULL,NULL,NULL,10.00,19.00,18.00,527.00,NULL,0,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,NULL,0),(50,'Macbook Pro 2015',NULL,NULL,'published','[\"products\\/9-1.jpg\"]',NULL,'XG-200-A1-A2',0,13,0,1,0,6,1,0,1590,NULL,NULL,NULL,10.00,19.00,18.00,527.00,NULL,0,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(51,'Macbook Air 12 inch',NULL,NULL,'published','[\"products\\/10-1.jpg\"]',NULL,'BZ-143-A1',0,15,0,1,0,2,1,0,2329,NULL,NULL,NULL,20.00,13.00,13.00,594.00,NULL,0,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,NULL,0),(52,'Macbook Air 12 inch',NULL,NULL,'published','[\"products\\/10-1.jpg\"]',NULL,'BZ-143-A1-A2',0,15,0,1,0,2,1,0,2329,NULL,NULL,NULL,20.00,13.00,13.00,594.00,NULL,0,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(53,'Apple Watch Serial 7',NULL,NULL,'published','[\"products\\/11-1.jpg\"]',NULL,'KX-136-A1',0,10,0,1,0,4,1,0,726,NULL,NULL,NULL,13.00,12.00,10.00,569.00,NULL,0,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,NULL,0),(54,'Apple Watch Serial 7',NULL,NULL,'published','[\"products\\/11-1.jpg\"]',NULL,'KX-136-A1-A2',0,10,0,1,0,4,1,0,726,NULL,NULL,NULL,13.00,12.00,10.00,569.00,NULL,0,'2024-07-27 06:17:13','2024-07-27 06:17:13','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(55,'Macbook Pro 13 inch (Digital)',NULL,NULL,'published','[\"products\\/12-1.jpg\"]',NULL,'6V-174-A1',0,12,0,1,0,3,1,0,719,524.87,NULL,NULL,18.00,17.00,20.00,533.00,NULL,0,'2024-07-27 06:17:13','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,NULL,0),(56,'Macbook Pro 13 inch (Digital)',NULL,NULL,'published','[\"products\\/12-1.jpg\"]',NULL,'6V-174-A1-A2',0,12,0,1,0,3,1,0,719,532.06,NULL,NULL,18.00,17.00,20.00,533.00,NULL,0,'2024-07-27 06:17:14','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0),(57,'Apple Keyboard',NULL,NULL,'published','[\"products\\/13-1.jpg\"]',NULL,'VG-160-A1',0,15,0,1,0,7,1,0,1743,NULL,NULL,NULL,11.00,12.00,19.00,593.00,NULL,0,'2024-07-27 06:17:14','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,NULL,0),(58,'Apple Keyboard',NULL,NULL,'published','[\"products\\/13-1.jpg\"]',NULL,'VG-160-A1-A2',0,15,0,1,0,7,1,0,1743,NULL,NULL,NULL,11.00,12.00,19.00,593.00,NULL,0,'2024-07-27 06:17:14','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(59,'MacSafe 80W',NULL,NULL,'published','[\"products\\/14-1.jpg\"]',NULL,'L5-103-A1',0,20,0,1,0,5,1,0,1125,NULL,NULL,NULL,14.00,13.00,16.00,791.00,NULL,0,'2024-07-27 06:17:14','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,NULL,0),(60,'MacSafe 80W',NULL,NULL,'published','[\"products\\/14-1.jpg\"]',NULL,'L5-103-A1-A2',0,20,0,1,0,5,1,0,1125,NULL,NULL,NULL,14.00,13.00,16.00,791.00,NULL,0,'2024-07-27 06:17:14','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(61,'MacSafe 80W',NULL,NULL,'published','[\"products\\/14-1.jpg\"]',NULL,'L5-103-A1-A3',0,20,0,1,0,5,1,0,1125,NULL,NULL,NULL,14.00,13.00,16.00,791.00,NULL,0,'2024-07-27 06:17:14','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(62,'Hand playstation',NULL,NULL,'published','[\"products\\/15-1.jpg\"]',NULL,'CM-161-A1',0,11,0,1,0,2,1,0,893,NULL,NULL,NULL,16.00,16.00,17.00,651.00,NULL,0,'2024-07-27 06:17:14','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,NULL,0),(63,'Hand playstation',NULL,NULL,'published','[\"products\\/15-1.jpg\"]',NULL,'CM-161-A1-A2',0,11,0,1,0,2,1,0,893,NULL,NULL,NULL,16.00,16.00,17.00,651.00,NULL,0,'2024-07-27 06:17:14','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(64,'Hand playstation',NULL,NULL,'published','[\"products\\/15-1.jpg\"]',NULL,'CM-161-A1-A3',0,11,0,1,0,2,1,0,893,NULL,NULL,NULL,16.00,16.00,17.00,651.00,NULL,0,'2024-07-27 06:17:14','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(65,'Black Glasses',NULL,NULL,'published','[\"products\\/22-1.jpg\"]',NULL,'OF-133-A1',0,11,0,1,0,1,1,0,1300,NULL,NULL,NULL,14.00,19.00,16.00,799.00,NULL,0,'2024-07-27 06:17:14','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,NULL,0),(66,'Black Glasses',NULL,NULL,'published','[\"products\\/22-1.jpg\"]',NULL,'OF-133-A1-A2',0,11,0,1,0,1,1,0,1300,NULL,NULL,NULL,14.00,19.00,16.00,799.00,NULL,0,'2024-07-27 06:17:14','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(67,'Black Glasses',NULL,NULL,'published','[\"products\\/22-1.jpg\"]',NULL,'OF-133-A1-A3',0,11,0,1,0,1,1,0,1300,NULL,NULL,NULL,14.00,19.00,16.00,799.00,NULL,0,'2024-07-27 06:17:14','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(68,'Black Glasses',NULL,NULL,'published','[\"products\\/22-1.jpg\"]',NULL,'OF-133-A1-A4',0,11,0,1,0,1,1,0,1300,NULL,NULL,NULL,14.00,19.00,16.00,799.00,NULL,0,'2024-07-27 06:17:14','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(69,'Black Glasses',NULL,NULL,'published','[\"products\\/22-1.jpg\"]',NULL,'OF-133-A1-A5',0,11,0,1,0,1,1,0,1300,NULL,NULL,NULL,14.00,19.00,16.00,799.00,NULL,0,'2024-07-27 06:17:14','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(70,'Phillips Mouse',NULL,NULL,'published','[\"products\\/23-1.jpg\"]',NULL,'IU-157-A1',0,14,0,1,0,1,1,0,2379,NULL,NULL,NULL,17.00,19.00,13.00,593.00,NULL,0,'2024-07-27 06:17:14','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,NULL,0),(71,'Phillips Mouse',NULL,NULL,'published','[\"products\\/23-1.jpg\"]',NULL,'IU-157-A1-A2',0,14,0,1,0,1,1,0,2379,NULL,NULL,NULL,17.00,19.00,13.00,593.00,NULL,0,'2024-07-27 06:17:14','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0),(72,'Gaming Keyboard (Digital)',NULL,NULL,'published','[\"products\\/24-1.jpg\"]',NULL,'QI-118-A1',0,16,0,1,0,4,1,0,2428,2160.92,NULL,NULL,17.00,15.00,14.00,588.00,NULL,0,'2024-07-27 06:17:14','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,NULL,0),(73,'Gaming Keyboard (Digital)',NULL,NULL,'published','[\"products\\/24-1.jpg\"]',NULL,'QI-118-A1-A2',0,16,0,1,0,4,1,0,2428,2088.08,NULL,NULL,17.00,15.00,14.00,588.00,NULL,0,'2024-07-27 06:17:14','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0),(74,'Red & Black Headphone (Digital)',NULL,NULL,'published','[\"products\\/28-1.jpg\"]',NULL,'NV-126-A1',0,19,0,1,0,7,1,0,944,679.68,NULL,NULL,16.00,11.00,18.00,509.00,NULL,0,'2024-07-27 06:17:14','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,NULL,0),(75,'Red &amp; Black Headphone (Digital)',NULL,NULL,'published','[\"products\\/28-1.jpg\"]',NULL,'NV-126-A1-A2',0,19,0,1,0,7,1,0,944,821.28,NULL,NULL,16.00,11.00,18.00,509.00,NULL,0,'2024-07-27 06:17:14','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0),(76,'Smart Televisions',NULL,NULL,'published','[\"products\\/30-1.jpg\"]',NULL,'5U-152-A1',0,17,0,1,0,6,1,0,1048,NULL,NULL,NULL,20.00,20.00,14.00,840.00,NULL,0,'2024-07-27 06:17:14','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,NULL,0),(77,'Smart Televisions',NULL,NULL,'published','[\"products\\/30-1.jpg\"]',NULL,'5U-152-A1-A2',0,17,0,1,0,6,1,0,1048,NULL,NULL,NULL,20.00,20.00,14.00,840.00,NULL,0,'2024-07-27 06:17:14','2024-07-27 06:17:14','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,4,NULL,NULL,2,4.00,'Best ecommerce CMS online store!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-2.jpg\",\"products\\/4.jpg\",\"products\\/16.jpg\",\"products\\/18-1.jpg\"]'),(2,1,NULL,NULL,6,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/9.jpg\",\"products\\/27.jpg\"]'),(3,10,NULL,NULL,12,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/25.jpg\"]'),(4,1,NULL,NULL,24,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-1.jpg\",\"products\\/30.jpg\"]'),(5,3,NULL,NULL,23,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-1.jpg\"]'),(6,6,NULL,NULL,10,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/23.jpg\"]'),(7,1,NULL,NULL,5,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/30.jpg\"]'),(8,5,NULL,NULL,4,2.00,'Good app, good backup service and support. Good documentation.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/18.jpg\"]'),(10,8,NULL,NULL,25,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/17.jpg\"]'),(12,7,NULL,NULL,22,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/4-1.jpg\",\"products\\/11-1.jpg\"]'),(13,8,NULL,NULL,2,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/5-3.jpg\"]'),(14,3,NULL,NULL,30,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/24.jpg\",\"products\\/26-1.jpg\"]'),(15,2,NULL,NULL,14,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/8.jpg\",\"products\\/31.jpg\"]'),(16,9,NULL,NULL,25,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/4-1.jpg\",\"products\\/4-3.jpg\",\"products\\/10-1.jpg\"]'),(17,3,NULL,NULL,5,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/4-3.jpg\",\"products\\/28-1.jpg\"]'),(18,6,NULL,NULL,1,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-1.jpg\",\"products\\/8.jpg\"]'),(19,7,NULL,NULL,28,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/13-1.jpg\",\"products\\/19-1.jpg\",\"products\\/28.jpg\"]'),(20,1,NULL,NULL,12,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/10.jpg\"]'),(21,9,NULL,NULL,23,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1-3.jpg\",\"products\\/9.jpg\"]'),(23,7,NULL,NULL,26,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/16.jpg\",\"products\\/29-1.jpg\"]'),(24,9,NULL,NULL,3,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/5-3.jpg\",\"products\\/6.jpg\",\"products\\/23-1.jpg\"]'),(25,1,NULL,NULL,30,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/9-1.jpg\",\"products\\/11.jpg\",\"products\\/25-1.jpg\",\"products\\/29-1.jpg\"]'),(26,3,NULL,NULL,16,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1-1.jpg\",\"products\\/13-1.jpg\"]'),(27,4,NULL,NULL,18,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1-3.jpg\",\"products\\/1.jpg\",\"products\\/8-1.jpg\",\"products\\/31.jpg\"]'),(28,5,NULL,NULL,29,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1-1.jpg\",\"products\\/13.jpg\"]'),(30,3,NULL,NULL,6,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/4.jpg\"]'),(31,4,NULL,NULL,12,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1-3.jpg\",\"products\\/5-2.jpg\",\"products\\/8.jpg\"]'),(32,8,NULL,NULL,12,5.00,'Clean & perfect source code','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/14-1.jpg\"]'),(33,7,NULL,NULL,16,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3.jpg\",\"products\\/4-3.jpg\",\"products\\/11.jpg\",\"products\\/23.jpg\"]'),(34,4,NULL,NULL,1,3.00,'Good app, good backup service and support. Good documentation.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/28-1.jpg\",\"products\\/30.jpg\"]'),(35,1,NULL,NULL,17,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/4-3.jpg\",\"products\\/25.jpg\"]'),(36,3,NULL,NULL,26,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/23.jpg\",\"products\\/26.jpg\"]'),(37,8,NULL,NULL,27,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1-2.jpg\",\"products\\/2-2.jpg\",\"products\\/5-1.jpg\"]'),(38,2,NULL,NULL,3,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/26-2.jpg\"]'),(39,2,NULL,NULL,31,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/10.jpg\",\"products\\/19-1.jpg\"]'),(41,3,NULL,NULL,22,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-3.jpg\",\"products\\/5-3.jpg\",\"products\\/24.jpg\",\"products\\/25.jpg\"]'),(43,4,NULL,NULL,13,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-3.jpg\",\"products\\/4.jpg\",\"products\\/27-1.jpg\"]'),(44,4,NULL,NULL,11,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/6.jpg\"]'),(45,8,NULL,NULL,7,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/5.jpg\",\"products\\/10.jpg\",\"products\\/15-1.jpg\",\"products\\/20.jpg\"]'),(46,7,NULL,NULL,24,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-1.jpg\",\"products\\/10-1.jpg\",\"products\\/13.jpg\"]'),(47,6,NULL,NULL,23,5.00,'Good app, good backup service and support. Good documentation.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-2.jpg\",\"products\\/13-1.jpg\",\"products\\/23-1.jpg\",\"products\\/31-1.jpg\"]'),(48,1,NULL,NULL,3,5.00,'Clean & perfect source code','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-2.jpg\",\"products\\/6-1.jpg\",\"products\\/9.jpg\"]'),(50,9,NULL,NULL,16,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/15.jpg\",\"products\\/25.jpg\"]'),(51,2,NULL,NULL,24,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1-2.jpg\",\"products\\/5-3.jpg\",\"products\\/19.jpg\"]'),(52,3,NULL,NULL,4,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/30-1.jpg\"]'),(53,5,NULL,NULL,3,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-2.jpg\",\"products\\/3-1.jpg\",\"products\\/7.jpg\"]'),(54,5,NULL,NULL,15,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/21-1.jpg\"]'),(55,7,NULL,NULL,11,3.00,'Best ecommerce CMS online store!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-1.jpg\",\"products\\/13.jpg\",\"products\\/14-1.jpg\"]'),(56,6,NULL,NULL,22,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1.jpg\",\"products\\/31.jpg\"]'),(57,4,NULL,NULL,21,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/6.jpg\",\"products\\/13-1.jpg\",\"products\\/31.jpg\"]'),(58,7,NULL,NULL,27,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/13-1.jpg\",\"products\\/29.jpg\",\"products\\/30-1.jpg\",\"products\\/30.jpg\"]'),(59,4,NULL,NULL,30,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1-2.jpg\",\"products\\/12-1.jpg\",\"products\\/18-2.jpg\"]'),(61,8,NULL,NULL,6,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2.jpg\"]'),(62,9,NULL,NULL,18,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/7-1.jpg\"]'),(63,1,NULL,NULL,7,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/14.jpg\",\"products\\/24-1.jpg\"]'),(65,7,NULL,NULL,18,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/5-1.jpg\"]'),(67,5,NULL,NULL,2,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/29-1.jpg\",\"products\\/31-1.jpg\"]'),(68,10,NULL,NULL,19,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/27.jpg\",\"products\\/31-1.jpg\"]'),(69,7,NULL,NULL,15,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/5-3.jpg\",\"products\\/19.jpg\",\"products\\/25-1.jpg\",\"products\\/26.jpg\"]'),(70,3,NULL,NULL,17,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-1.jpg\",\"products\\/4-2.jpg\",\"products\\/7-1.jpg\",\"products\\/13.jpg\"]'),(71,4,NULL,NULL,14,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/4-1.jpg\",\"products\\/22.jpg\"]'),(72,1,NULL,NULL,28,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/4-1.jpg\",\"products\\/8-1.jpg\",\"products\\/12.jpg\",\"products\\/31-1.jpg\"]'),(74,2,NULL,NULL,25,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/4-1.jpg\",\"products\\/9.jpg\",\"products\\/10.jpg\",\"products\\/11-1.jpg\"]'),(76,1,NULL,NULL,2,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-1.jpg\",\"products\\/4-1.jpg\",\"products\\/26-1.jpg\",\"products\\/27.jpg\"]'),(77,7,NULL,NULL,10,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/12.jpg\",\"products\\/18.jpg\",\"products\\/19-1.jpg\",\"products\\/31.jpg\"]'),(78,3,NULL,NULL,7,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/9.jpg\"]'),(79,4,NULL,NULL,5,5.00,'Clean & perfect source code','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/4-3.jpg\",\"products\\/19-1.jpg\",\"products\\/25.jpg\",\"products\\/29-1.jpg\"]'),(80,1,NULL,NULL,25,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/28.jpg\"]'),(81,9,NULL,NULL,21,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/13-1.jpg\",\"products\\/26.jpg\"]'),(82,9,NULL,NULL,19,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/18-2.jpg\",\"products\\/26-1.jpg\",\"products\\/28-1.jpg\"]'),(83,9,NULL,NULL,30,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/19-1.jpg\",\"products\\/26-2.jpg\",\"products\\/27-1.jpg\",\"products\\/30.jpg\"]'),(84,9,NULL,NULL,10,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/17.jpg\",\"products\\/23.jpg\",\"products\\/29-1.jpg\",\"products\\/30-1.jpg\"]'),(85,2,NULL,NULL,6,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/16.jpg\",\"products\\/29-1.jpg\"]'),(86,4,NULL,NULL,6,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-2.jpg\",\"products\\/20-1.jpg\",\"products\\/27-1.jpg\",\"products\\/27.jpg\"]'),(87,7,NULL,NULL,30,5.00,'Clean & perfect source code','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2.jpg\",\"products\\/4-1.jpg\"]'),(88,9,NULL,NULL,4,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/20-1.jpg\"]'),(89,6,NULL,NULL,17,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-1.jpg\",\"products\\/14.jpg\",\"products\\/25.jpg\"]'),(90,4,NULL,NULL,15,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1-3.jpg\",\"products\\/3-2.jpg\",\"products\\/9.jpg\",\"products\\/24.jpg\"]'),(91,8,NULL,NULL,10,2.00,'Clean & perfect source code','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/4-3.jpg\",\"products\\/20-1.jpg\"]'),(92,10,NULL,NULL,15,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1-2.jpg\",\"products\\/4.jpg\",\"products\\/5-1.jpg\"]'),(93,10,NULL,NULL,28,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3.jpg\",\"products\\/13.jpg\",\"products\\/15-1.jpg\",\"products\\/24.jpg\"]'),(94,1,NULL,NULL,15,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/5.jpg\",\"products\\/12.jpg\",\"products\\/25-1.jpg\",\"products\\/28.jpg\"]'),(95,10,NULL,NULL,16,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-2.jpg\",\"products\\/4.jpg\",\"products\\/17.jpg\",\"products\\/26-2.jpg\"]'),(96,1,NULL,NULL,18,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1-3.jpg\",\"products\\/28-1.jpg\"]'),(97,8,NULL,NULL,13,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-1.jpg\",\"products\\/14-1.jpg\",\"products\\/26-1.jpg\",\"products\\/28.jpg\"]'),(98,7,NULL,NULL,25,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-1.jpg\",\"products\\/7-1.jpg\",\"products\\/12-1.jpg\"]'),(99,5,NULL,NULL,23,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/10.jpg\",\"products\\/11-1.jpg\",\"products\\/24-1.jpg\"]'),(104,7,NULL,NULL,2,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/8-1.jpg\"]'),(106,3,NULL,NULL,10,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1-1.jpg\"]'),(107,7,NULL,NULL,31,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/18.jpg\"]'),(108,9,NULL,NULL,5,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/4-2.jpg\"]'),(109,10,NULL,NULL,9,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/13-1.jpg\",\"products\\/23.jpg\"]'),(110,4,NULL,NULL,29,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/27.jpg\"]'),(111,10,NULL,NULL,18,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1.jpg\",\"products\\/2.jpg\",\"products\\/16.jpg\",\"products\\/24-1.jpg\"]'),(112,5,NULL,NULL,14,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1.jpg\",\"products\\/3-1.jpg\",\"products\\/4-1.jpg\"]'),(113,8,NULL,NULL,28,5.00,'Good app, good backup service and support. Good documentation.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/5-1.jpg\",\"products\\/10.jpg\",\"products\\/13.jpg\",\"products\\/22-1.jpg\"]'),(114,4,NULL,NULL,28,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/4-3.jpg\"]'),(115,1,NULL,NULL,13,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/10.jpg\",\"products\\/17.jpg\"]'),(116,3,NULL,NULL,29,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/13.jpg\",\"products\\/25-1.jpg\"]'),(118,2,NULL,NULL,22,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-2.jpg\",\"products\\/8-1.jpg\",\"products\\/17.jpg\",\"products\\/18-1.jpg\"]'),(119,4,NULL,NULL,19,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/4-2.jpg\"]'),(120,10,NULL,NULL,3,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1-1.jpg\",\"products\\/2.jpg\",\"products\\/24-1.jpg\"]'),(121,3,NULL,NULL,20,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/9-1.jpg\"]'),(123,7,NULL,NULL,23,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/10.jpg\",\"products\\/17.jpg\",\"products\\/26.jpg\",\"products\\/28-1.jpg\"]'),(124,9,NULL,NULL,17,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/21-1.jpg\",\"products\\/25-1.jpg\"]'),(126,6,NULL,NULL,9,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/11.jpg\",\"products\\/18-1.jpg\",\"products\\/20.jpg\",\"products\\/31.jpg\"]'),(130,6,NULL,NULL,20,5.00,'Best ecommerce CMS online store!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/7-1.jpg\",\"products\\/16.jpg\",\"products\\/18.jpg\"]'),(132,6,NULL,NULL,19,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-3.jpg\",\"products\\/2.jpg\",\"products\\/17.jpg\",\"products\\/18-1.jpg\"]'),(133,10,NULL,NULL,11,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/4-3.jpg\",\"products\\/10.jpg\",\"products\\/18-2.jpg\",\"products\\/31-1.jpg\"]'),(134,7,NULL,NULL,20,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1.jpg\",\"products\\/13-1.jpg\",\"products\\/25-1.jpg\"]'),(135,7,NULL,NULL,12,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/22-1.jpg\"]'),(136,4,NULL,NULL,31,2.00,'Best ecommerce CMS online store!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-2.jpg\",\"products\\/30-1.jpg\",\"products\\/30.jpg\"]'),(137,1,NULL,NULL,27,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1-3.jpg\",\"products\\/2-1.jpg\",\"products\\/4-3.jpg\",\"products\\/23-1.jpg\"]'),(138,1,NULL,NULL,26,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1-1.jpg\",\"products\\/3-3.jpg\",\"products\\/6.jpg\",\"products\\/22-1.jpg\"]'),(139,4,NULL,NULL,3,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/14.jpg\",\"products\\/23.jpg\",\"products\\/24.jpg\",\"products\\/25-1.jpg\"]'),(140,3,NULL,NULL,31,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/10-1.jpg\",\"products\\/12.jpg\",\"products\\/14.jpg\",\"products\\/18-2.jpg\"]'),(142,6,NULL,NULL,29,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/25-1.jpg\"]'),(143,5,NULL,NULL,6,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/23-1.jpg\"]'),(144,3,NULL,NULL,9,2.00,'Clean & perfect source code','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/4.jpg\"]'),(147,1,NULL,NULL,20,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/4-1.jpg\",\"products\\/10-1.jpg\",\"products\\/19-1.jpg\",\"products\\/21.jpg\"]'),(148,8,NULL,NULL,1,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-3.jpg\",\"products\\/5-3.jpg\"]'),(149,4,NULL,NULL,23,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/15-1.jpg\",\"products\\/16.jpg\"]'),(152,9,NULL,NULL,8,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-3.jpg\",\"products\\/5.jpg\",\"products\\/6.jpg\",\"products\\/12-1.jpg\"]'),(154,10,NULL,NULL,13,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-2.jpg\",\"products\\/4-3.jpg\",\"products\\/21-1.jpg\",\"products\\/28.jpg\"]'),(155,10,NULL,NULL,24,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/27.jpg\"]'),(157,10,NULL,NULL,27,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-1.jpg\",\"products\\/29.jpg\",\"products\\/30-1.jpg\",\"products\\/31.jpg\"]'),(160,7,NULL,NULL,17,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-2.jpg\"]'),(161,1,NULL,NULL,23,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-2.jpg\",\"products\\/29-1.jpg\"]'),(163,2,NULL,NULL,2,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/18-2.jpg\"]'),(165,2,NULL,NULL,5,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/9.jpg\",\"products\\/10.jpg\",\"products\\/25.jpg\",\"products\\/26.jpg\"]'),(167,6,NULL,NULL,31,5.00,'Clean & perfect source code','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3.jpg\",\"products\\/28.jpg\"]'),(168,9,NULL,NULL,13,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1.jpg\",\"products\\/11-1.jpg\",\"products\\/13-1.jpg\",\"products\\/30-1.jpg\"]'),(170,9,NULL,NULL,6,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-2.jpg\",\"products\\/7.jpg\",\"products\\/14.jpg\"]'),(171,3,NULL,NULL,28,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/21-1.jpg\"]'),(172,1,NULL,NULL,16,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1.jpg\",\"products\\/22-1.jpg\",\"products\\/24.jpg\"]'),(174,8,NULL,NULL,31,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\",\"products\\/22.jpg\"]'),(175,8,NULL,NULL,4,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-2.jpg\",\"products\\/21-1.jpg\",\"products\\/26.jpg\"]'),(176,9,NULL,NULL,24,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/12-1.jpg\",\"products\\/22.jpg\",\"products\\/31.jpg\"]'),(177,2,NULL,NULL,26,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-1.jpg\"]'),(178,6,NULL,NULL,13,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/5.jpg\",\"products\\/21.jpg\",\"products\\/31-1.jpg\",\"products\\/31.jpg\"]'),(179,10,NULL,NULL,10,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/20-1.jpg\"]'),(180,7,NULL,NULL,4,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-2.jpg\",\"products\\/3.jpg\",\"products\\/28.jpg\"]'),(182,9,NULL,NULL,1,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/17.jpg\",\"products\\/26.jpg\"]'),(184,5,NULL,NULL,16,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-1.jpg\",\"products\\/3-1.jpg\",\"products\\/4-1.jpg\",\"products\\/10-1.jpg\"]'),(188,1,NULL,NULL,19,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/7.jpg\",\"products\\/19-1.jpg\",\"products\\/19.jpg\",\"products\\/24-1.jpg\"]'),(190,2,NULL,NULL,11,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1-2.jpg\",\"products\\/25-1.jpg\",\"products\\/27-1.jpg\"]'),(192,6,NULL,NULL,27,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-2.jpg\",\"products\\/4-2.jpg\",\"products\\/17.jpg\",\"products\\/18-2.jpg\"]'),(193,4,NULL,NULL,7,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/26-2.jpg\"]'),(194,1,NULL,NULL,9,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/24.jpg\",\"products\\/26-2.jpg\"]'),(197,4,NULL,NULL,20,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/21-1.jpg\"]'),(200,1,NULL,NULL,4,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-1.jpg\",\"products\\/5.jpg\",\"products\\/23-1.jpg\",\"products\\/27-1.jpg\"]'),(202,2,NULL,NULL,20,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-3.jpg\",\"products\\/12-1.jpg\"]'),(203,4,NULL,NULL,25,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/5.jpg\",\"products\\/6-1.jpg\",\"products\\/9.jpg\"]'),(204,9,NULL,NULL,11,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/10-1.jpg\",\"products\\/12-1.jpg\",\"products\\/14-1.jpg\",\"products\\/27.jpg\"]'),(205,5,NULL,NULL,11,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-2.jpg\",\"products\\/3-3.jpg\",\"products\\/5-3.jpg\",\"products\\/20.jpg\"]'),(206,1,NULL,NULL,31,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/10.jpg\"]'),(207,7,NULL,NULL,21,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-1.jpg\",\"products\\/21.jpg\"]'),(211,5,NULL,NULL,17,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1.jpg\",\"products\\/10.jpg\"]'),(217,5,NULL,NULL,1,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/9-1.jpg\",\"products\\/10-1.jpg\"]'),(219,6,NULL,NULL,6,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-1.jpg\",\"products\\/13.jpg\"]'),(220,10,NULL,NULL,7,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/15.jpg\"]'),(221,7,NULL,NULL,29,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1-2.jpg\",\"products\\/4.jpg\",\"products\\/12.jpg\",\"products\\/13.jpg\"]'),(222,7,NULL,NULL,6,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/15.jpg\",\"products\\/30.jpg\",\"products\\/31.jpg\"]'),(223,4,NULL,NULL,4,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/9.jpg\",\"products\\/12.jpg\",\"products\\/28-1.jpg\"]'),(224,10,NULL,NULL,30,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-3.jpg\",\"products\\/5.jpg\",\"products\\/6.jpg\"]'),(226,10,NULL,NULL,5,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/11.jpg\",\"products\\/14-1.jpg\"]'),(228,5,NULL,NULL,26,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/25-1.jpg\",\"products\\/25.jpg\"]'),(230,3,NULL,NULL,18,2.00,'Good app, good backup service and support. Good documentation.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1-2.jpg\",\"products\\/3-2.jpg\",\"products\\/6-1.jpg\",\"products\\/19-1.jpg\"]'),(231,5,NULL,NULL,22,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/15.jpg\"]'),(232,1,NULL,NULL,11,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/7.jpg\",\"products\\/16.jpg\",\"products\\/26.jpg\"]'),(234,5,NULL,NULL,18,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-1.jpg\",\"products\\/29.jpg\"]'),(240,5,NULL,NULL,24,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/21-1.jpg\",\"products\\/22.jpg\"]'),(246,6,NULL,NULL,24,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-1.jpg\",\"products\\/5-1.jpg\",\"products\\/7-1.jpg\",\"products\\/24.jpg\"]'),(248,3,NULL,NULL,13,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/10-1.jpg\",\"products\\/20-1.jpg\",\"products\\/24-1.jpg\",\"products\\/24.jpg\"]'),(249,10,NULL,NULL,20,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-1.jpg\",\"products\\/5-2.jpg\",\"products\\/18-2.jpg\",\"products\\/30.jpg\"]'),(251,8,NULL,NULL,22,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/5-1.jpg\",\"products\\/12.jpg\",\"products\\/23-1.jpg\",\"products\\/25-1.jpg\"]'),(252,3,NULL,NULL,3,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1-3.jpg\",\"products\\/7-1.jpg\",\"products\\/31-1.jpg\"]'),(253,2,NULL,NULL,13,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/23-1.jpg\",\"products\\/30.jpg\"]'),(254,3,NULL,NULL,21,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/4-3.jpg\",\"products\\/6-1.jpg\",\"products\\/12.jpg\",\"products\\/30-1.jpg\"]'),(260,1,NULL,NULL,14,2.00,'Clean & perfect source code','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1-1.jpg\",\"products\\/18.jpg\"]'),(264,2,NULL,NULL,27,4.00,'Good app, good backup service and support. Good documentation.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/5-3.jpg\",\"products\\/26-1.jpg\"]'),(266,9,NULL,NULL,28,1.00,'Clean & perfect source code','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/5-3.jpg\",\"products\\/8-1.jpg\",\"products\\/12-1.jpg\",\"products\\/19-1.jpg\"]'),(267,8,NULL,NULL,29,1.00,'Best ecommerce CMS online store!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-2.jpg\",\"products\\/3-3.jpg\",\"products\\/17.jpg\"]'),(270,3,NULL,NULL,1,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/5-3.jpg\",\"products\\/15.jpg\"]'),(274,6,NULL,NULL,30,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-3.jpg\",\"products\\/9.jpg\",\"products\\/30-1.jpg\"]'),(276,9,NULL,NULL,26,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2.jpg\",\"products\\/20.jpg\",\"products\\/21.jpg\"]'),(277,6,NULL,NULL,21,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/14-1.jpg\",\"products\\/19.jpg\",\"products\\/30.jpg\"]'),(280,6,NULL,NULL,28,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/9.jpg\",\"products\\/10.jpg\",\"products\\/28-1.jpg\",\"products\\/30.jpg\"]'),(281,8,NULL,NULL,8,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/7-1.jpg\",\"products\\/9-1.jpg\",\"products\\/19-1.jpg\",\"products\\/24-1.jpg\"]'),(282,10,NULL,NULL,1,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/26-2.jpg\"]'),(283,6,NULL,NULL,14,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-2.jpg\",\"products\\/2.jpg\",\"products\\/3-3.jpg\",\"products\\/3.jpg\"]'),(289,4,NULL,NULL,9,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/14-1.jpg\",\"products\\/18-2.jpg\",\"products\\/22-1.jpg\"]'),(295,5,NULL,NULL,7,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3.jpg\",\"products\\/8.jpg\",\"products\\/22-1.jpg\"]'),(297,10,NULL,NULL,25,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-3.jpg\",\"products\\/4-1.jpg\",\"products\\/8.jpg\",\"products\\/18.jpg\"]'),(303,6,NULL,NULL,2,3.00,'Best ecommerce CMS online store!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-1.jpg\",\"products\\/12-1.jpg\",\"products\\/20.jpg\",\"products\\/30.jpg\"]'),(304,1,NULL,NULL,22,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/5-3.jpg\",\"products\\/7-1.jpg\"]'),(305,2,NULL,NULL,19,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/10.jpg\"]'),(306,8,NULL,NULL,17,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/7-1.jpg\",\"products\\/20.jpg\",\"products\\/26-1.jpg\"]'),(307,10,NULL,NULL,17,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/7.jpg\",\"products\\/20.jpg\",\"products\\/26-2.jpg\"]'),(308,2,NULL,NULL,1,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/6.jpg\",\"products\\/14.jpg\"]'),(312,2,NULL,NULL,8,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-2.jpg\",\"products\\/3-1.jpg\",\"products\\/30.jpg\"]'),(316,7,NULL,NULL,13,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/12.jpg\",\"products\\/15-1.jpg\",\"products\\/21-1.jpg\",\"products\\/30.jpg\"]'),(320,8,NULL,NULL,19,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-1.jpg\",\"products\\/27.jpg\"]'),(322,6,NULL,NULL,5,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/26.jpg\"]'),(323,8,NULL,NULL,15,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-1.jpg\",\"products\\/5-3.jpg\",\"products\\/22-1.jpg\",\"products\\/28.jpg\"]'),(328,1,NULL,NULL,29,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/18.jpg\"]'),(334,7,NULL,NULL,8,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1.jpg\",\"products\\/2.jpg\",\"products\\/11-1.jpg\",\"products\\/14-1.jpg\"]'),(343,5,NULL,NULL,13,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-2.jpg\",\"products\\/22.jpg\"]'),(345,3,NULL,NULL,8,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3.jpg\",\"products\\/5-3.jpg\"]'),(347,8,NULL,NULL,18,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-2.jpg\",\"products\\/4-2.jpg\",\"products\\/5-1.jpg\",\"products\\/7.jpg\"]'),(350,6,NULL,NULL,15,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/4-1.jpg\"]'),(351,4,NULL,NULL,17,5.00,'Clean & perfect source code','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-1.jpg\",\"products\\/18.jpg\",\"products\\/22-1.jpg\"]'),(361,1,NULL,NULL,1,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/22.jpg\"]'),(362,4,NULL,NULL,27,3.00,'Good app, good backup service and support. Good documentation.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/4-1.jpg\"]'),(368,10,NULL,NULL,22,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/19.jpg\",\"products\\/29.jpg\"]'),(371,2,NULL,NULL,23,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/22-1.jpg\"]'),(377,6,NULL,NULL,11,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-3.jpg\",\"products\\/4.jpg\"]'),(380,5,NULL,NULL,5,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/9.jpg\",\"products\\/12.jpg\",\"products\\/18.jpg\",\"products\\/28.jpg\"]'),(384,10,NULL,NULL,14,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-3.jpg\",\"products\\/3.jpg\"]'),(385,5,NULL,NULL,25,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/5.jpg\"]'),(391,3,NULL,NULL,11,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/8.jpg\",\"products\\/12.jpg\",\"products\\/24-1.jpg\"]'),(395,3,NULL,NULL,19,4.00,'Good app, good backup service and support. Good documentation.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/4-3.jpg\",\"products\\/13-1.jpg\",\"products\\/20-1.jpg\",\"products\\/23.jpg\"]'),(396,7,NULL,NULL,9,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/19.jpg\",\"products\\/28.jpg\"]'),(398,8,NULL,NULL,23,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/29.jpg\",\"products\\/31.jpg\"]'),(400,8,NULL,NULL,5,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/21-1.jpg\"]'),(402,2,NULL,NULL,29,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-1.jpg\",\"products\\/3-1.jpg\",\"products\\/8-1.jpg\",\"products\\/26-1.jpg\"]'),(405,10,NULL,NULL,4,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/31-1.jpg\"]'),(406,4,NULL,NULL,16,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/4-3.jpg\"]'),(409,10,NULL,NULL,29,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/10-1.jpg\",\"products\\/12.jpg\",\"products\\/15.jpg\",\"products\\/22-1.jpg\"]'),(410,10,NULL,NULL,31,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/5-2.jpg\"]'),(421,1,NULL,NULL,21,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/6.jpg\",\"products\\/13.jpg\",\"products\\/23-1.jpg\",\"products\\/23.jpg\"]'),(423,7,NULL,NULL,1,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/10-1.jpg\",\"products\\/16.jpg\"]'),(424,10,NULL,NULL,23,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-2.jpg\",\"products\\/14.jpg\",\"products\\/19-1.jpg\",\"products\\/19.jpg\"]'),(437,3,NULL,NULL,12,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2.jpg\",\"products\\/14.jpg\",\"products\\/25-1.jpg\",\"products\\/28-1.jpg\"]'),(440,2,NULL,NULL,16,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/4-1.jpg\",\"products\\/5-3.jpg\",\"products\\/21.jpg\",\"products\\/26.jpg\"]'),(445,6,NULL,NULL,18,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-1.jpg\",\"products\\/12.jpg\",\"products\\/29.jpg\"]'),(450,7,NULL,NULL,3,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/19-1.jpg\"]'),(458,8,NULL,NULL,26,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3.jpg\",\"products\\/20.jpg\",\"products\\/25-1.jpg\"]'),(459,2,NULL,NULL,15,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/8.jpg\",\"products\\/13.jpg\"]'),(460,8,NULL,NULL,21,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/18.jpg\"]'),(463,7,NULL,NULL,14,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1.jpg\",\"products\\/4-1.jpg\",\"products\\/8.jpg\"]'),(465,4,NULL,NULL,10,4.00,'Clean & perfect source code','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/20.jpg\",\"products\\/24-1.jpg\"]'),(466,7,NULL,NULL,5,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-3.jpg\",\"products\\/10.jpg\",\"products\\/14-1.jpg\",\"products\\/15-1.jpg\"]'),(468,9,NULL,NULL,22,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-1.jpg\",\"products\\/14-1.jpg\",\"products\\/15-1.jpg\",\"products\\/18-1.jpg\"]'),(473,3,NULL,NULL,25,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1-3.jpg\",\"products\\/4-1.jpg\"]'),(475,3,NULL,NULL,2,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/4-1.jpg\",\"products\\/10-1.jpg\",\"products\\/16.jpg\"]'),(476,5,NULL,NULL,28,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/9-1.jpg\",\"products\\/9.jpg\"]'),(488,5,NULL,NULL,12,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3.jpg\",\"products\\/8.jpg\",\"products\\/10-1.jpg\",\"products\\/26-2.jpg\"]'),(504,8,NULL,NULL,20,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/10-1.jpg\",\"products\\/31-1.jpg\"]'),(519,8,NULL,NULL,14,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/6.jpg\",\"products\\/15-1.jpg\",\"products\\/28-1.jpg\"]'),(522,6,NULL,NULL,12,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-3.jpg\",\"products\\/9-1.jpg\",\"products\\/11-1.jpg\",\"products\\/15-1.jpg\"]'),(523,6,NULL,NULL,16,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-3.jpg\",\"products\\/4-2.jpg\",\"products\\/5-2.jpg\",\"products\\/14.jpg\"]'),(525,10,NULL,NULL,21,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-2.jpg\",\"products\\/19-1.jpg\"]'),(526,5,NULL,NULL,19,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1-2.jpg\",\"products\\/18-1.jpg\",\"products\\/31.jpg\"]'),(534,2,NULL,NULL,21,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/4-3.jpg\",\"products\\/8-1.jpg\",\"products\\/20-1.jpg\",\"products\\/26.jpg\"]'),(544,10,NULL,NULL,6,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/5-3.jpg\"]'),(555,2,NULL,NULL,12,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/4-1.jpg\",\"products\\/6.jpg\",\"products\\/14.jpg\",\"products\\/26-1.jpg\"]'),(560,8,NULL,NULL,16,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-1.jpg\",\"products\\/25-1.jpg\"]'),(563,9,NULL,NULL,31,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-1.jpg\",\"products\\/26.jpg\",\"products\\/29-1.jpg\",\"products\\/29.jpg\"]'),(575,2,NULL,NULL,7,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/19.jpg\"]'),(590,2,NULL,NULL,9,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/5-1.jpg\",\"products\\/10.jpg\",\"products\\/25-1.jpg\"]'),(595,1,NULL,NULL,10,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/4-1.jpg\",\"products\\/15-1.jpg\"]'),(597,4,NULL,NULL,8,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/22.jpg\"]'),(604,4,NULL,NULL,26,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-3.jpg\",\"products\\/3-3.jpg\",\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(620,10,NULL,NULL,26,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-3.jpg\"]'),(628,9,NULL,NULL,7,1.00,'Good app, good backup service and support. Good documentation.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/14.jpg\",\"products\\/30-1.jpg\"]'),(631,2,NULL,NULL,17,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/29.jpg\"]'),(637,6,NULL,NULL,26,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/4-1.jpg\",\"products\\/5-2.jpg\"]'),(641,7,NULL,NULL,7,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-3.jpg\",\"products\\/26.jpg\"]'),(646,2,NULL,NULL,10,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/4.jpg\"]'),(653,9,NULL,NULL,14,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/5-3.jpg\",\"products\\/11.jpg\",\"products\\/20.jpg\",\"products\\/29-1.jpg\"]'),(658,9,NULL,NULL,15,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2.jpg\",\"products\\/20.jpg\",\"products\\/30-1.jpg\",\"products\\/31-1.jpg\"]'),(659,5,NULL,NULL,8,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/6-1.jpg\",\"products\\/9-1.jpg\",\"products\\/22-1.jpg\"]'),(662,2,NULL,NULL,28,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/15-1.jpg\"]'),(679,5,NULL,NULL,9,2.00,'Clean & perfect source code','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1.jpg\"]'),(687,2,NULL,NULL,18,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/28.jpg\",\"products\\/30-1.jpg\"]'),(689,4,NULL,NULL,22,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1-1.jpg\",\"products\\/9.jpg\"]'),(690,8,NULL,NULL,3,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/24-1.jpg\"]'),(695,9,NULL,NULL,2,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1-2.jpg\",\"products\\/3-3.jpg\"]'),(704,8,NULL,NULL,11,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/5-1.jpg\",\"products\\/11.jpg\"]'),(714,10,NULL,NULL,8,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/18-1.jpg\",\"products\\/20-1.jpg\",\"products\\/25-1.jpg\"]'),(717,4,NULL,NULL,24,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/15-1.jpg\",\"products\\/17.jpg\"]'),(735,9,NULL,NULL,20,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/4-1.jpg\",\"products\\/15.jpg\",\"products\\/22-1.jpg\"]'),(755,6,NULL,NULL,8,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/3-3.jpg\",\"products\\/5-3.jpg\",\"products\\/18-1.jpg\"]'),(785,5,NULL,NULL,27,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1-2.jpg\",\"products\\/8.jpg\",\"products\\/26.jpg\"]'),(799,8,NULL,NULL,30,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\",\"products\\/22-1.jpg\"]'),(801,5,NULL,NULL,21,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1.jpg\",\"products\\/4-3.jpg\",\"products\\/30-1.jpg\"]'),(807,5,NULL,NULL,30,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/31-1.jpg\"]'),(813,6,NULL,NULL,7,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/23.jpg\"]'),(822,9,NULL,NULL,12,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-3.jpg\",\"products\\/18-1.jpg\"]'),(847,9,NULL,NULL,27,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/2-3.jpg\",\"products\\/26-2.jpg\"]'),(849,9,NULL,NULL,29,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1-1.jpg\",\"products\\/4-2.jpg\",\"products\\/5-1.jpg\",\"products\\/18.jpg\"]'),(852,3,NULL,NULL,24,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/1.jpg\",\"products\\/20.jpg\",\"products\\/26-2.jpg\"]'),(879,8,NULL,NULL,24,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/10.jpg\"]'),(916,6,NULL,NULL,3,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/4.jpg\",\"products\\/24-1.jpg\",\"products\\/28-1.jpg\",\"products\\/29-1.jpg\"]'),(944,6,NULL,NULL,4,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-07-27 06:17:14','2024-07-27 06:17:14','[\"products\\/12-1.jpg\",\"products\\/12.jpg\",\"products\\/25.jpg\",\"products\\/26-2.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shared_wishlists`
--

DROP TABLE IF EXISTS `ec_shared_wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shared_wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_ids` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_shared_wishlists_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shared_wishlists`
--

LOCK TABLES `ec_shared_wishlists` WRITE;
/*!40000 ALTER TABLE `ec_shared_wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shared_wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2024-07-27 06:17:14','2024-07-27 06:17:14');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',1000.00,NULL,0.00,'2024-07-27 06:17:14','2024-07-27 06:17:14'),(2,'Flat Rate',1,'based_on_price',0.00,NULL,20.00,'2024-07-27 06:17:14','2024-07-27 06:17:14'),(3,'Local Pickup',1,'based_on_price',0.00,NULL,0.00,'2024-07-27 06:17:14','2024-07-27 06:17:14');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Shopwise','sales@botble.com','123-456-7890','123 Street, Old Trafford','US','New York','New York',1,1,'2024-07-27 06:17:16','2024-07-27 06:17:16',NULL);
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2024-07-27 06:17:14','2024-07-27 06:17:14'),(2,'None',0.000000,2,'published','2024-07-27 06:17:14','2024-07-27 06:17:14'),(3,'Import Tax',15.000000,3,'published','2024-07-27 06:17:14','2024-07-27 06:17:14');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`,`product_id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2024-07-27 06:17:05','2024-07-27 06:17:05',NULL),(2,'Payment',1,'published','2024-07-27 06:17:05','2024-07-27 06:17:05',NULL),(3,'Order &amp; Returns',2,'published','2024-07-27 06:17:05','2024-07-27 06:17:05',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2024-07-27 06:17:05','2024-07-27 06:17:05'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2024-07-27 06:17:05','2024-07-27 06:17:05'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2024-07-27 06:17:05','2024-07-27 06:17:05'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2024-07-27 06:17:05','2024-07-27 06:17:05'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2024-07-27 06:17:05','2024-07-27 06:17:05'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2024-07-27 06:17:05','2024-07-27 06:17:05'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2024-07-27 06:17:05','2024-07-27 06:17:05'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2024-07-27 06:17:05','2024-07-27 06:17:05'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2024-07-27 06:17:05','2024-07-27 06:17:05'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2024-07-27 06:17:05','2024-07-27 06:17:05');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','d1bffe7602dff0be8dace0f0ba879ffd',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','ac3b4821afa88748ba58d3c27c0a57f4',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','8978bd9b22b3ea343dc4da0746ea628d',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','31f664702996779302dbd3f15447a41a',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','54cb14d3f29f410c68c2d5af843150ab',3,'Botble\\Menu\\Models\\Menu'),(6,'en_US','e62db75053eaa76a8145bc08b544bf51',4,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/png',9803,'brands/1.png','[]','2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,'public'),(2,0,'2','2',1,'image/png',9803,'brands/2.png','[]','2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,'public'),(3,0,'3','3',1,'image/png',9803,'brands/3.png','[]','2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,'public'),(4,0,'4','4',1,'image/png',9803,'brands/4.png','[]','2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,'public'),(5,0,'5','5',1,'image/png',9803,'brands/5.png','[]','2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,'public'),(6,0,'6','6',1,'image/png',9803,'brands/6.png','[]','2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,'public'),(7,0,'7','7',1,'image/png',9803,'brands/7.png','[]','2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,'public'),(8,0,'p-1','p-1',2,'image/png',9803,'product-categories/p-1.png','[]','2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,'public'),(9,0,'p-2','p-2',2,'image/png',9803,'product-categories/p-2.png','[]','2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,'public'),(10,0,'p-3','p-3',2,'image/png',9803,'product-categories/p-3.png','[]','2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,'public'),(11,0,'p-4','p-4',2,'image/png',9803,'product-categories/p-4.png','[]','2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,'public'),(12,0,'p-5','p-5',2,'image/png',9803,'product-categories/p-5.png','[]','2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,'public'),(13,0,'p-6','p-6',2,'image/png',9803,'product-categories/p-6.png','[]','2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,'public'),(14,0,'p-7','p-7',2,'image/png',9803,'product-categories/p-7.png','[]','2024-07-27 06:17:05','2024-07-27 06:17:05',NULL,'public'),(15,0,'1','1',3,'image/jpeg',9803,'customers/1.jpg','[]','2024-07-27 06:17:06','2024-07-27 06:17:06',NULL,'public'),(16,0,'10','10',3,'image/jpeg',9803,'customers/10.jpg','[]','2024-07-27 06:17:06','2024-07-27 06:17:06',NULL,'public'),(17,0,'2','2',3,'image/jpeg',9803,'customers/2.jpg','[]','2024-07-27 06:17:06','2024-07-27 06:17:06',NULL,'public'),(18,0,'3','3',3,'image/jpeg',9803,'customers/3.jpg','[]','2024-07-27 06:17:06','2024-07-27 06:17:06',NULL,'public'),(19,0,'4','4',3,'image/jpeg',9803,'customers/4.jpg','[]','2024-07-27 06:17:06','2024-07-27 06:17:06',NULL,'public'),(20,0,'5','5',3,'image/jpeg',9803,'customers/5.jpg','[]','2024-07-27 06:17:06','2024-07-27 06:17:06',NULL,'public'),(21,0,'6','6',3,'image/jpeg',9803,'customers/6.jpg','[]','2024-07-27 06:17:06','2024-07-27 06:17:06',NULL,'public'),(22,0,'7','7',3,'image/jpeg',9803,'customers/7.jpg','[]','2024-07-27 06:17:06','2024-07-27 06:17:06',NULL,'public'),(23,0,'8','8',3,'image/jpeg',9803,'customers/8.jpg','[]','2024-07-27 06:17:06','2024-07-27 06:17:06',NULL,'public'),(24,0,'9','9',3,'image/jpeg',9803,'customers/9.jpg','[]','2024-07-27 06:17:06','2024-07-27 06:17:06',NULL,'public'),(25,0,'1-1','1-1',4,'image/jpeg',9803,'products/1-1.jpg','[]','2024-07-27 06:17:09','2024-07-27 06:17:09',NULL,'public'),(26,0,'1-2','1-2',4,'image/jpeg',9803,'products/1-2.jpg','[]','2024-07-27 06:17:09','2024-07-27 06:17:09',NULL,'public'),(27,0,'1-3','1-3',4,'image/jpeg',9803,'products/1-3.jpg','[]','2024-07-27 06:17:09','2024-07-27 06:17:09',NULL,'public'),(28,0,'1','1',4,'image/jpeg',9803,'products/1.jpg','[]','2024-07-27 06:17:09','2024-07-27 06:17:09',NULL,'public'),(29,0,'10-1','10-1',4,'image/jpeg',9803,'products/10-1.jpg','[]','2024-07-27 06:17:09','2024-07-27 06:17:09',NULL,'public'),(30,0,'10','10',4,'image/jpeg',9803,'products/10.jpg','[]','2024-07-27 06:17:09','2024-07-27 06:17:09',NULL,'public'),(31,0,'11-1','11-1',4,'image/jpeg',9803,'products/11-1.jpg','[]','2024-07-27 06:17:09','2024-07-27 06:17:09',NULL,'public'),(32,0,'11','11',4,'image/jpeg',9803,'products/11.jpg','[]','2024-07-27 06:17:09','2024-07-27 06:17:09',NULL,'public'),(33,0,'12-1','12-1',4,'image/jpeg',9803,'products/12-1.jpg','[]','2024-07-27 06:17:09','2024-07-27 06:17:09',NULL,'public'),(34,0,'12','12',4,'image/jpeg',9803,'products/12.jpg','[]','2024-07-27 06:17:09','2024-07-27 06:17:09',NULL,'public'),(35,0,'13-1','13-1',4,'image/jpeg',9803,'products/13-1.jpg','[]','2024-07-27 06:17:09','2024-07-27 06:17:09',NULL,'public'),(36,0,'13','13',4,'image/jpeg',9803,'products/13.jpg','[]','2024-07-27 06:17:10','2024-07-27 06:17:10',NULL,'public'),(37,0,'14-1','14-1',4,'image/jpeg',9803,'products/14-1.jpg','[]','2024-07-27 06:17:10','2024-07-27 06:17:10',NULL,'public'),(38,0,'14','14',4,'image/jpeg',9803,'products/14.jpg','[]','2024-07-27 06:17:10','2024-07-27 06:17:10',NULL,'public'),(39,0,'15-1','15-1',4,'image/jpeg',9803,'products/15-1.jpg','[]','2024-07-27 06:17:10','2024-07-27 06:17:10',NULL,'public'),(40,0,'15','15',4,'image/jpeg',9803,'products/15.jpg','[]','2024-07-27 06:17:10','2024-07-27 06:17:10',NULL,'public'),(41,0,'16','16',4,'image/jpeg',9803,'products/16.jpg','[]','2024-07-27 06:17:10','2024-07-27 06:17:10',NULL,'public'),(42,0,'17','17',4,'image/jpeg',9803,'products/17.jpg','[]','2024-07-27 06:17:10','2024-07-27 06:17:10',NULL,'public'),(43,0,'18-1','18-1',4,'image/jpeg',9803,'products/18-1.jpg','[]','2024-07-27 06:17:10','2024-07-27 06:17:10',NULL,'public'),(44,0,'18-2','18-2',4,'image/jpeg',9803,'products/18-2.jpg','[]','2024-07-27 06:17:10','2024-07-27 06:17:10',NULL,'public'),(45,0,'18','18',4,'image/jpeg',9803,'products/18.jpg','[]','2024-07-27 06:17:10','2024-07-27 06:17:10',NULL,'public'),(46,0,'19-1','19-1',4,'image/jpeg',9803,'products/19-1.jpg','[]','2024-07-27 06:17:10','2024-07-27 06:17:10',NULL,'public'),(47,0,'19','19',4,'image/jpeg',9803,'products/19.jpg','[]','2024-07-27 06:17:10','2024-07-27 06:17:10',NULL,'public'),(48,0,'2-1','2-1',4,'image/jpeg',9803,'products/2-1.jpg','[]','2024-07-27 06:17:10','2024-07-27 06:17:10',NULL,'public'),(49,0,'2-2','2-2',4,'image/jpeg',9803,'products/2-2.jpg','[]','2024-07-27 06:17:10','2024-07-27 06:17:10',NULL,'public'),(50,0,'2-3','2-3',4,'image/jpeg',9803,'products/2-3.jpg','[]','2024-07-27 06:17:10','2024-07-27 06:17:10',NULL,'public'),(51,0,'2','2',4,'image/jpeg',9803,'products/2.jpg','[]','2024-07-27 06:17:10','2024-07-27 06:17:10',NULL,'public'),(52,0,'20-1','20-1',4,'image/jpeg',9803,'products/20-1.jpg','[]','2024-07-27 06:17:10','2024-07-27 06:17:10',NULL,'public'),(53,0,'20','20',4,'image/jpeg',9803,'products/20.jpg','[]','2024-07-27 06:17:10','2024-07-27 06:17:10',NULL,'public'),(54,0,'21-1','21-1',4,'image/jpeg',9803,'products/21-1.jpg','[]','2024-07-27 06:17:10','2024-07-27 06:17:10',NULL,'public'),(55,0,'21','21',4,'image/jpeg',9803,'products/21.jpg','[]','2024-07-27 06:17:11','2024-07-27 06:17:11',NULL,'public'),(56,0,'22-1','22-1',4,'image/jpeg',9803,'products/22-1.jpg','[]','2024-07-27 06:17:11','2024-07-27 06:17:11',NULL,'public'),(57,0,'22','22',4,'image/jpeg',9803,'products/22.jpg','[]','2024-07-27 06:17:11','2024-07-27 06:17:11',NULL,'public'),(58,0,'23-1','23-1',4,'image/jpeg',9803,'products/23-1.jpg','[]','2024-07-27 06:17:11','2024-07-27 06:17:11',NULL,'public'),(59,0,'23','23',4,'image/jpeg',9803,'products/23.jpg','[]','2024-07-27 06:17:11','2024-07-27 06:17:11',NULL,'public'),(60,0,'24-1','24-1',4,'image/jpeg',9803,'products/24-1.jpg','[]','2024-07-27 06:17:11','2024-07-27 06:17:11',NULL,'public'),(61,0,'24','24',4,'image/jpeg',9803,'products/24.jpg','[]','2024-07-27 06:17:11','2024-07-27 06:17:11',NULL,'public'),(62,0,'25-1','25-1',4,'image/jpeg',9803,'products/25-1.jpg','[]','2024-07-27 06:17:11','2024-07-27 06:17:11',NULL,'public'),(63,0,'25','25',4,'image/jpeg',9803,'products/25.jpg','[]','2024-07-27 06:17:11','2024-07-27 06:17:11',NULL,'public'),(64,0,'26-1','26-1',4,'image/jpeg',9803,'products/26-1.jpg','[]','2024-07-27 06:17:11','2024-07-27 06:17:11',NULL,'public'),(65,0,'26-2','26-2',4,'image/jpeg',9803,'products/26-2.jpg','[]','2024-07-27 06:17:11','2024-07-27 06:17:11',NULL,'public'),(66,0,'26','26',4,'image/jpeg',9803,'products/26.jpg','[]','2024-07-27 06:17:11','2024-07-27 06:17:11',NULL,'public'),(67,0,'27-1','27-1',4,'image/jpeg',9803,'products/27-1.jpg','[]','2024-07-27 06:17:11','2024-07-27 06:17:11',NULL,'public'),(68,0,'27','27',4,'image/jpeg',9803,'products/27.jpg','[]','2024-07-27 06:17:11','2024-07-27 06:17:11',NULL,'public'),(69,0,'28-1','28-1',4,'image/jpeg',9803,'products/28-1.jpg','[]','2024-07-27 06:17:11','2024-07-27 06:17:11',NULL,'public'),(70,0,'28','28',4,'image/jpeg',9803,'products/28.jpg','[]','2024-07-27 06:17:11','2024-07-27 06:17:11',NULL,'public'),(71,0,'29-1','29-1',4,'image/jpeg',9803,'products/29-1.jpg','[]','2024-07-27 06:17:11','2024-07-27 06:17:11',NULL,'public'),(72,0,'29','29',4,'image/jpeg',9803,'products/29.jpg','[]','2024-07-27 06:17:11','2024-07-27 06:17:11',NULL,'public'),(73,0,'3-1','3-1',4,'image/jpeg',9803,'products/3-1.jpg','[]','2024-07-27 06:17:11','2024-07-27 06:17:11',NULL,'public'),(74,0,'3-2','3-2',4,'image/jpeg',9803,'products/3-2.jpg','[]','2024-07-27 06:17:11','2024-07-27 06:17:11',NULL,'public'),(75,0,'3-3','3-3',4,'image/jpeg',9803,'products/3-3.jpg','[]','2024-07-27 06:17:12','2024-07-27 06:17:12',NULL,'public'),(76,0,'3','3',4,'image/jpeg',9803,'products/3.jpg','[]','2024-07-27 06:17:12','2024-07-27 06:17:12',NULL,'public'),(77,0,'30-1','30-1',4,'image/jpeg',9803,'products/30-1.jpg','[]','2024-07-27 06:17:12','2024-07-27 06:17:12',NULL,'public'),(78,0,'30','30',4,'image/jpeg',9803,'products/30.jpg','[]','2024-07-27 06:17:12','2024-07-27 06:17:12',NULL,'public'),(79,0,'31-1','31-1',4,'image/jpeg',9803,'products/31-1.jpg','[]','2024-07-27 06:17:12','2024-07-27 06:17:12',NULL,'public'),(80,0,'31','31',4,'image/jpeg',9803,'products/31.jpg','[]','2024-07-27 06:17:12','2024-07-27 06:17:12',NULL,'public'),(81,0,'4-1','4-1',4,'image/jpeg',9803,'products/4-1.jpg','[]','2024-07-27 06:17:12','2024-07-27 06:17:12',NULL,'public'),(82,0,'4-2','4-2',4,'image/jpeg',9803,'products/4-2.jpg','[]','2024-07-27 06:17:12','2024-07-27 06:17:12',NULL,'public'),(83,0,'4-3','4-3',4,'image/jpeg',9803,'products/4-3.jpg','[]','2024-07-27 06:17:12','2024-07-27 06:17:12',NULL,'public'),(84,0,'4','4',4,'image/jpeg',9803,'products/4.jpg','[]','2024-07-27 06:17:12','2024-07-27 06:17:12',NULL,'public'),(85,0,'5-1','5-1',4,'image/jpeg',9803,'products/5-1.jpg','[]','2024-07-27 06:17:12','2024-07-27 06:17:12',NULL,'public'),(86,0,'5-2','5-2',4,'image/jpeg',9803,'products/5-2.jpg','[]','2024-07-27 06:17:12','2024-07-27 06:17:12',NULL,'public'),(87,0,'5-3','5-3',4,'image/jpeg',9803,'products/5-3.jpg','[]','2024-07-27 06:17:12','2024-07-27 06:17:12',NULL,'public'),(88,0,'5','5',4,'image/jpeg',9803,'products/5.jpg','[]','2024-07-27 06:17:12','2024-07-27 06:17:12',NULL,'public'),(89,0,'6-1','6-1',4,'image/jpeg',9803,'products/6-1.jpg','[]','2024-07-27 06:17:12','2024-07-27 06:17:12',NULL,'public'),(90,0,'6','6',4,'image/jpeg',9803,'products/6.jpg','[]','2024-07-27 06:17:12','2024-07-27 06:17:12',NULL,'public'),(91,0,'7-1','7-1',4,'image/jpeg',9803,'products/7-1.jpg','[]','2024-07-27 06:17:12','2024-07-27 06:17:12',NULL,'public'),(92,0,'7','7',4,'image/jpeg',9803,'products/7.jpg','[]','2024-07-27 06:17:12','2024-07-27 06:17:12',NULL,'public'),(93,0,'8-1','8-1',4,'image/jpeg',9803,'products/8-1.jpg','[]','2024-07-27 06:17:12','2024-07-27 06:17:12',NULL,'public'),(94,0,'8','8',4,'image/jpeg',9803,'products/8.jpg','[]','2024-07-27 06:17:13','2024-07-27 06:17:13',NULL,'public'),(95,0,'9-1','9-1',4,'image/jpeg',9803,'products/9-1.jpg','[]','2024-07-27 06:17:13','2024-07-27 06:17:13',NULL,'public'),(96,0,'9','9',4,'image/jpeg',9803,'products/9.jpg','[]','2024-07-27 06:17:13','2024-07-27 06:17:13',NULL,'public'),(97,0,'1','1',5,'image/jpeg',9803,'news/1.jpg','[]','2024-07-27 06:17:14','2024-07-27 06:17:14',NULL,'public'),(98,0,'10','10',5,'image/jpeg',9803,'news/10.jpg','[]','2024-07-27 06:17:14','2024-07-27 06:17:14',NULL,'public'),(99,0,'11','11',5,'image/jpeg',9803,'news/11.jpg','[]','2024-07-27 06:17:14','2024-07-27 06:17:14',NULL,'public'),(100,0,'2','2',5,'image/jpeg',9803,'news/2.jpg','[]','2024-07-27 06:17:14','2024-07-27 06:17:14',NULL,'public'),(101,0,'3','3',5,'image/jpeg',9803,'news/3.jpg','[]','2024-07-27 06:17:15','2024-07-27 06:17:15',NULL,'public'),(102,0,'4','4',5,'image/jpeg',9803,'news/4.jpg','[]','2024-07-27 06:17:15','2024-07-27 06:17:15',NULL,'public'),(103,0,'5','5',5,'image/jpeg',9803,'news/5.jpg','[]','2024-07-27 06:17:15','2024-07-27 06:17:15',NULL,'public'),(104,0,'6','6',5,'image/jpeg',9803,'news/6.jpg','[]','2024-07-27 06:17:15','2024-07-27 06:17:15',NULL,'public'),(105,0,'7','7',5,'image/jpeg',9803,'news/7.jpg','[]','2024-07-27 06:17:15','2024-07-27 06:17:15',NULL,'public'),(106,0,'8','8',5,'image/jpeg',9803,'news/8.jpg','[]','2024-07-27 06:17:15','2024-07-27 06:17:15',NULL,'public'),(107,0,'9','9',5,'image/jpeg',9803,'news/9.jpg','[]','2024-07-27 06:17:15','2024-07-27 06:17:15',NULL,'public'),(108,0,'1','1',6,'image/jpeg',9803,'testimonials/1.jpg','[]','2024-07-27 06:17:15','2024-07-27 06:17:15',NULL,'public'),(109,0,'2','2',6,'image/jpeg',9803,'testimonials/2.jpg','[]','2024-07-27 06:17:15','2024-07-27 06:17:15',NULL,'public'),(110,0,'3','3',6,'image/jpeg',9803,'testimonials/3.jpg','[]','2024-07-27 06:17:15','2024-07-27 06:17:15',NULL,'public'),(111,0,'4','4',6,'image/jpeg',9803,'testimonials/4.jpg','[]','2024-07-27 06:17:15','2024-07-27 06:17:15',NULL,'public'),(112,0,'1','1',7,'image/jpeg',11475,'sliders/1.jpg','[]','2024-07-27 06:17:15','2024-07-27 06:17:15',NULL,'public'),(113,0,'2','2',7,'image/jpeg',11475,'sliders/2.jpg','[]','2024-07-27 06:17:15','2024-07-27 06:17:15',NULL,'public'),(114,0,'3','3',7,'image/jpeg',11475,'sliders/3.jpg','[]','2024-07-27 06:17:15','2024-07-27 06:17:15',NULL,'public'),(115,0,'american-express','american-express',8,'image/png',2381,'general/american-express.png','[]','2024-07-27 06:17:16','2024-07-27 06:17:16',NULL,'public'),(116,0,'b-1','b-1',8,'image/jpeg',6042,'general/b-1.jpg','[]','2024-07-27 06:17:16','2024-07-27 06:17:16',NULL,'public'),(117,0,'b-2','b-2',8,'image/jpeg',6042,'general/b-2.jpg','[]','2024-07-27 06:17:16','2024-07-27 06:17:16',NULL,'public'),(118,0,'b-3','b-3',8,'image/jpeg',6042,'general/b-3.jpg','[]','2024-07-27 06:17:16','2024-07-27 06:17:16',NULL,'public'),(119,0,'discover','discover',8,'image/png',1711,'general/discover.png','[]','2024-07-27 06:17:16','2024-07-27 06:17:16',NULL,'public'),(120,0,'favicon','favicon',8,'image/png',960,'general/favicon.png','[]','2024-07-27 06:17:16','2024-07-27 06:17:16',NULL,'public'),(121,0,'furniture-banner3','furniture-banner3',8,'image/jpeg',26362,'general/furniture-banner3.jpg','[]','2024-07-27 06:17:16','2024-07-27 06:17:16',NULL,'public'),(122,0,'insta-1','insta-1',8,'image/jpeg',1556,'general/insta-1.jpg','[]','2024-07-27 06:17:17','2024-07-27 06:17:17',NULL,'public'),(123,0,'logo-light','logo-light',8,'image/png',3145,'general/logo-light.png','[]','2024-07-27 06:17:17','2024-07-27 06:17:17',NULL,'public'),(124,0,'logo','logo',8,'image/png',3306,'general/logo.png','[]','2024-07-27 06:17:17','2024-07-27 06:17:17',NULL,'public'),(125,0,'master-card','master-card',8,'image/png',2540,'general/master-card.png','[]','2024-07-27 06:17:17','2024-07-27 06:17:17',NULL,'public'),(126,0,'newsletter','newsletter',8,'image/jpeg',5748,'general/newsletter.jpg','[]','2024-07-27 06:17:17','2024-07-27 06:17:17',NULL,'public'),(127,0,'paypal','paypal',8,'image/png',1937,'general/paypal.png','[]','2024-07-27 06:17:17','2024-07-27 06:17:17',NULL,'public'),(128,0,'visa','visa',8,'image/png',2041,'general/visa.png','[]','2024-07-27 06:17:17','2024-07-27 06:17:17',NULL,'public'),(129,0,'1','1',9,'image/jpeg',13645,'promotion/1.jpg','[]','2024-07-27 06:17:17','2024-07-27 06:17:17',NULL,'public'),(130,0,'10','10',9,'image/jpeg',19195,'promotion/10.jpg','[]','2024-07-27 06:17:17','2024-07-27 06:17:17',NULL,'public'),(131,0,'2','2',9,'image/jpeg',13930,'promotion/2.jpg','[]','2024-07-27 06:17:17','2024-07-27 06:17:17',NULL,'public'),(132,0,'3','3',9,'image/jpeg',16561,'promotion/3.jpg','[]','2024-07-27 06:17:17','2024-07-27 06:17:17',NULL,'public'),(133,0,'4','4',9,'image/jpeg',17689,'promotion/4.jpg','[]','2024-07-27 06:17:17','2024-07-27 06:17:17',NULL,'public'),(134,0,'5','5',9,'image/jpeg',17665,'promotion/5.jpg','[]','2024-07-27 06:17:17','2024-07-27 06:17:17',NULL,'public'),(135,0,'6','6',9,'image/jpeg',8445,'promotion/6.jpg','[]','2024-07-27 06:17:17','2024-07-27 06:17:17',NULL,'public'),(136,0,'7','7',9,'image/jpeg',8675,'promotion/7.jpg','[]','2024-07-27 06:17:17','2024-07-27 06:17:17',NULL,'public'),(137,0,'8','8',9,'image/jpeg',9228,'promotion/8.jpg','[]','2024-07-27 06:17:17','2024-07-27 06:17:17',NULL,'public'),(138,0,'9','9',9,'image/jpeg',11178,'promotion/9.jpg','[]','2024-07-27 06:17:17','2024-07-27 06:17:17',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands',NULL,'brands',0,'2024-07-27 06:17:05','2024-07-27 06:17:05',NULL),(2,0,'product-categories',NULL,'product-categories',0,'2024-07-27 06:17:05','2024-07-27 06:17:05',NULL),(3,0,'customers',NULL,'customers',0,'2024-07-27 06:17:06','2024-07-27 06:17:06',NULL),(4,0,'products',NULL,'products',0,'2024-07-27 06:17:09','2024-07-27 06:17:09',NULL),(5,0,'news',NULL,'news',0,'2024-07-27 06:17:14','2024-07-27 06:17:14',NULL),(6,0,'testimonials',NULL,'testimonials',0,'2024-07-27 06:17:15','2024-07-27 06:17:15',NULL),(7,0,'sliders',NULL,'sliders',0,'2024-07-27 06:17:15','2024-07-27 06:17:15',NULL),(8,0,'general',NULL,'general',0,'2024-07-27 06:17:16','2024-07-27 06:17:16',NULL),(9,0,'promotion',NULL,'promotion',0,'2024-07-27 06:17:17','2024-07-27 06:17:17',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-07-27 06:17:16','2024-07-27 06:17:16');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',1,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(2,1,1,NULL,NULL,'/',NULL,0,'Homepage',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(3,1,1,10,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Homepage 2',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(4,1,1,11,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Homepage 3',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(5,1,1,12,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Homepage 4',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(6,1,1,13,'Botble\\Page\\Models\\Page','/homepage-5',NULL,0,'Homepage 5',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(7,1,1,14,'Botble\\Page\\Models\\Page','/homepage-6',NULL,0,'Homepage 6',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(8,1,0,NULL,NULL,'/products',NULL,0,'Products',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(9,1,0,NULL,NULL,'#',NULL,0,'Shop',NULL,'_self',1,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(10,1,9,1,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Product Category',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(11,1,9,1,'Botble\\Ecommerce\\Models\\Brand',NULL,NULL,0,'Brand',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(12,1,9,1,'Botble\\Ecommerce\\Models\\ProductTag',NULL,NULL,0,'Product Tag',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(13,1,9,NULL,NULL,'products/beat-headphone',NULL,0,'Product Single',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(14,1,0,3,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Blog',NULL,'_self',1,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(15,1,14,3,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Blog Left Sidebar',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(16,1,14,1,'Botble\\Blog\\Models\\Category',NULL,NULL,0,'Blog Category',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(17,1,14,1,'Botble\\Blog\\Models\\Tag',NULL,NULL,0,'Blog Tag',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(18,1,14,NULL,NULL,'blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,0,'Blog Single',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(19,1,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,0,'FAQ',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(20,1,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Contact',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(21,2,0,4,'Botble\\Page\\Models\\Page',NULL,NULL,0,'About Us',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(22,2,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,0,'FAQ',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(23,2,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Location',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(24,2,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Affiliates',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(25,2,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Contact',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(26,3,0,1,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Television',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(27,3,0,2,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Mobile',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(28,3,0,3,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Headphone',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(29,3,0,4,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Watches',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(30,3,0,5,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Game',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(31,4,0,NULL,NULL,'/customer/overview',NULL,0,'My profile',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(32,4,0,NULL,NULL,'/wishlist',NULL,0,'Wishlist',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(33,4,0,NULL,NULL,'customer/orders',NULL,0,'Orders',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16'),(34,4,0,NULL,NULL,'/orders/tracking',NULL,0,'Order tracking',NULL,'_self',0,'2024-07-27 06:17:16','2024-07-27 06:17:16');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-07-27 06:17:16','2024-07-27 06:17:16'),(2,'Useful Links','useful-links','published','2024-07-27 06:17:16','2024-07-27 06:17:16'),(3,'Categories','categories','published','2024-07-27 06:17:16','2024-07-27 06:17:16'),(4,'My Account','my-account','published','2024-07-27 06:17:16','2024-07-27 06:17:16');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'faq_ids','[[2,3,5,7,9]]',1,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(2,'faq_ids','[[1,3,5,6,9]]',2,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(3,'faq_ids','[[4,5,7,8,10]]',3,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(4,'faq_ids','[[4,5,6,8,10]]',4,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(5,'faq_ids','[[1,2,6,7,10]]',5,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(6,'faq_ids','[[1,3,5,9,10]]',6,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(7,'faq_ids','[[1,2,4,6,8]]',7,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(8,'faq_ids','[[1,2,3,7,8]]',8,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(9,'faq_ids','[[2,5,7,8,10]]',9,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(10,'faq_ids','[[1,3,4,5,8]]',10,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(11,'faq_ids','[[1,3,8,9,10]]',11,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(12,'faq_ids','[[1,2,3,8,10]]',12,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(13,'faq_ids','[[5,7,8,9,10]]',13,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(14,'faq_ids','[[2,5,6,8,9]]',14,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(15,'faq_ids','[[1,2,3,8,10]]',15,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(16,'faq_ids','[[1,4,5,6,8]]',16,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(17,'faq_ids','[[1,2,4,6,10]]',17,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(18,'faq_ids','[[2,3,7,8,10]]',18,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(19,'faq_ids','[[2,4,5,6,9]]',19,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(20,'faq_ids','[[4,7,8,9,10]]',20,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(21,'faq_ids','[[1,3,4,5,6]]',21,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(22,'faq_ids','[[5,7,8,9,10]]',22,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(23,'faq_ids','[[2,3,7,8,9]]',23,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(24,'faq_ids','[[1,2,4,8,9]]',24,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(25,'faq_ids','[[1,2,3,4,10]]',25,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(26,'faq_ids','[[3,4,5,7,10]]',26,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(27,'faq_ids','[[2,3,5,8,10]]',27,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(28,'faq_ids','[[2,4,6,7,8]]',28,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(29,'faq_ids','[[1,2,6,7,8]]',29,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(30,'faq_ids','[[3,4,5,6,7]]',30,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(31,'faq_ids','[[3,4,6,7,9]]',31,'Botble\\Ecommerce\\Models\\Product','2024-07-27 06:17:13','2024-07-27 06:17:13'),(32,'button_text','[\"Shop now\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-07-27 06:17:15','2024-07-27 06:17:15'),(33,'sub_title','[\"New Tranding\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-07-27 06:17:15','2024-07-27 06:17:15'),(34,'button_text','[\"Discover now\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-07-27 06:17:15','2024-07-27 06:17:15'),(35,'button_text','[\"Shop now\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-07-27 06:17:15','2024-07-27 06:17:15');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2022_04_20_100851_add_index_to_media_table',1),(17,'2022_04_20_101046_add_index_to_menu_table',1),(18,'2022_07_10_034813_move_lang_folder_to_root',1),(19,'2022_08_04_051940_add_missing_column_expires_at',1),(20,'2022_09_01_000001_create_admin_notifications_tables',1),(21,'2022_10_14_024629_drop_column_is_featured',1),(22,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(23,'2022_12_02_093615_update_slug_index_columns',1),(24,'2023_01_30_024431_add_alt_to_media_table',1),(25,'2023_02_16_042611_drop_table_password_resets',1),(26,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(27,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(28,'2023_08_21_090810_make_page_content_nullable',1),(29,'2023_09_14_021936_update_index_for_slugs_table',1),(30,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(31,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(32,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(33,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(34,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(35,'2024_07_12_100000_change_random_hash_for_media',1),(36,'2020_11_18_150916_ads_create_ads_table',2),(37,'2021_12_02_035301_add_ads_translations_table',2),(38,'2023_04_17_062645_add_open_in_new_tab',2),(39,'2023_11_07_023805_add_tablet_mobile_image',2),(40,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',2),(41,'2024_04_27_100730_improve_analytics_setting',3),(42,'2015_06_29_025744_create_audit_history',4),(43,'2023_11_14_033417_change_request_column_in_table_audit_histories',4),(44,'2015_06_18_033822_create_blog_table',5),(45,'2021_02_16_092633_remove_default_value_for_author_type',5),(46,'2021_12_03_030600_create_blog_translations',5),(47,'2022_04_19_113923_add_index_to_table_posts',5),(48,'2023_08_29_074620_make_column_author_id_nullable',5),(49,'2016_06_17_091537_create_contacts_table',6),(50,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',6),(51,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',6),(52,'2024_03_25_000001_update_captcha_settings_for_contact',6),(53,'2024_04_19_063914_create_custom_fields_table',6),(54,'2020_03_05_041139_create_ecommerce_tables',7),(55,'2021_01_01_044147_ecommerce_create_flash_sale_table',7),(56,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',7),(57,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',7),(58,'2021_02_18_073505_update_table_ec_reviews',7),(59,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',7),(60,'2021_03_10_025153_change_column_tax_amount',7),(61,'2021_03_20_033103_add_column_availability_to_table_ec_products',7),(62,'2021_04_28_074008_ecommerce_create_product_label_table',7),(63,'2021_05_31_173037_ecommerce_create_ec_products_translations',7),(64,'2021_08_17_105016_remove_column_currency_id_in_some_tables',7),(65,'2021_08_30_142128_add_images_column_to_ec_reviews_table',7),(66,'2021_10_04_030050_add_column_created_by_to_table_ec_products',7),(67,'2021_10_05_122616_add_status_column_to_ec_customers_table',7),(68,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',7),(69,'2021_11_23_071403_correct_languages_for_product_variations',7),(70,'2021_11_28_031808_add_product_tags_translations',7),(71,'2021_12_01_031123_add_featured_image_to_ec_products',7),(72,'2022_01_01_033107_update_table_ec_shipments',7),(73,'2022_02_16_042457_improve_product_attribute_sets',7),(74,'2022_03_22_075758_correct_product_name',7),(75,'2022_04_19_113334_add_index_to_ec_products',7),(76,'2022_04_28_144405_remove_unused_table',7),(77,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',7),(78,'2022_05_18_143720_add_index_to_table_ec_product_categories',7),(79,'2022_06_16_095633_add_index_to_some_tables',7),(80,'2022_06_30_035148_create_order_referrals_table',7),(81,'2022_07_24_153815_add_completed_at_to_ec_orders_table',7),(82,'2022_08_14_032836_create_ec_order_returns_table',7),(83,'2022_08_14_033554_create_ec_order_return_items_table',7),(84,'2022_08_15_040324_add_billing_address',7),(85,'2022_08_30_091114_support_digital_products_table',7),(86,'2022_09_13_095744_create_options_table',7),(87,'2022_09_13_104347_create_option_value_table',7),(88,'2022_10_05_163518_alter_table_ec_order_product',7),(89,'2022_10_12_041517_create_invoices_table',7),(90,'2022_10_12_142226_update_orders_table',7),(91,'2022_10_13_024916_update_table_order_returns',7),(92,'2022_10_21_030830_update_columns_in_ec_shipments_table',7),(93,'2022_10_28_021046_update_columns_in_ec_shipments_table',7),(94,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',7),(95,'2022_11_19_041643_add_ec_tax_product_table',7),(96,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',7),(97,'2022_12_17_041532_fix_address_in_order_invoice',7),(98,'2022_12_26_070329_create_ec_product_views_table',7),(99,'2023_01_04_033051_fix_product_categories',7),(100,'2023_01_09_050400_add_ec_global_options_translations_table',7),(101,'2023_01_10_093754_add_missing_option_value_id',7),(102,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',7),(103,'2023_01_26_021854_add_ec_customer_used_coupons_table',7),(104,'2023_02_08_015900_update_options_column_in_ec_order_product_table',7),(105,'2023_02_27_095752_remove_duplicate_reviews',7),(106,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',7),(107,'2023_04_21_082427_create_ec_product_categorizables_table',7),(108,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',7),(109,'2023_05_17_025812_fix_invoice_issue',7),(110,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',7),(111,'2023_05_27_144611_fix_exchange_rate_setting',7),(112,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',7),(113,'2023_06_30_042512_create_ec_order_tax_information_table',7),(114,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',7),(115,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',7),(116,'2023_08_15_064505_create_ec_tax_rules_table',7),(117,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',7),(118,'2023_08_22_094114_drop_unique_for_barcode',7),(119,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',7),(120,'2023_09_07_094312_add_index_to_product_sku_and_translations',7),(121,'2023_09_19_024955_create_discount_product_categories_table',7),(122,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',7),(123,'2023_11_22_154643_add_unique_in_table_ec_products_variations',7),(124,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',7),(125,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',7),(126,'2023_12_25_040604_ec_create_review_replies_table',7),(127,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',7),(128,'2024_01_16_070706_fix_translation_tables',7),(129,'2024_01_23_075227_add_proof_file_to_ec_orders_table',7),(130,'2024_03_26_041531_add_cancel_reason_to_ec_orders_table',7),(131,'2024_03_27_062402_create_ec_customer_deletion_requests_table',7),(132,'2024_03_29_042242_migrate_old_captcha_settings',7),(133,'2024_03_29_093946_create_ec_order_return_histories_table',7),(134,'2024_04_01_063523_add_customer_columns_to_ec_reviews_table',7),(135,'2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting',7),(136,'2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table',7),(137,'2024_05_07_073153_improve_table_wishlist',7),(138,'2024_05_07_093703_add_missing_zip_code_into_table_store_locators',7),(139,'2024_05_15_021503_fix_invoice_path',7),(140,'2024_06_20_160724_create_ec_shared_wishlists_table',7),(141,'2024_06_28_025104_add_notify_attachment_updated_column_to_ec_products_table',7),(142,'2024_07_03_030900_add_downloaded_at_column_to_ec_order_product_table',7),(143,'2024_07_14_071826_make_customer_email_nullable',7),(144,'2024_07_15_104916_add_video_media_column_to_ec_products_table',7),(145,'2024_07_26_052530_add_percentage_to_tax_rules_table',7),(146,'2018_07_09_221238_create_faq_table',8),(147,'2021_12_03_082134_create_faq_translations',8),(148,'2023_11_17_063408_add_description_column_to_faq_categories_table',8),(149,'2016_10_03_032336_create_languages_table',9),(150,'2023_09_14_022423_add_index_for_language_table',9),(151,'2021_10_25_021023_fix-priority-load-for-language-advanced',10),(152,'2021_12_03_075608_create_page_translations',10),(153,'2023_07_06_011444_create_slug_translations_table',10),(154,'2019_11_18_061011_create_country_table',11),(155,'2021_12_03_084118_create_location_translations',11),(156,'2021_12_03_094518_migrate_old_location_data',11),(157,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',11),(158,'2022_01_16_085908_improve_plugin_location',11),(159,'2022_08_04_052122_delete_location_backup_tables',11),(160,'2023_04_23_061847_increase_state_translations_abbreviation_column',11),(161,'2023_07_26_041451_add_more_columns_to_location_table',11),(162,'2023_07_27_041451_add_more_columns_to_location_translation_table',11),(163,'2023_08_15_073307_drop_unique_in_states_cities_translations',11),(164,'2023_10_21_065016_make_state_id_in_table_cities_nullable',11),(165,'2017_10_24_154832_create_newsletter_table',12),(166,'2024_03_25_000001_update_captcha_settings_for_newsletter',12),(167,'2017_05_18_080441_create_payment_tables',13),(168,'2021_03_27_144913_add_customer_type_into_table_payments',13),(169,'2021_05_24_034720_make_column_currency_nullable',13),(170,'2021_08_09_161302_add_metadata_column_to_payments_table',13),(171,'2021_10_19_020859_update_metadata_field',13),(172,'2022_06_28_151901_activate_paypal_stripe_plugin',13),(173,'2022_07_07_153354_update_charge_id_in_table_payments',13),(174,'2024_07_04_083133_create_payment_logs_table',13),(175,'2017_07_11_140018_create_simple_slider_table',14),(176,'2018_07_09_214610_create_testimonial_table',15),(177,'2021_12_03_083642_create_testimonials_translations',15),(178,'2016_10_07_193005_create_translations_table',16),(179,'2023_12_12_105220_drop_translations_table',16);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[simple-slider with_product_categories=\"\" key=\"home-slider\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[flash-sale title=\"Best deals for you\"][/flash-sale]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[trending-products title=\"Trending Products\"][/trending-products]</div><div>[product-blocks featured_product_title=\"Featured Products\" top_rated_product_title=\"Top Rated Products\" on_sale_product_title=\"On Sale Products\"][/product-blocks]</div><div>[featured-brands title=\"Our Brands\"][/featured-brands]</div><div>[featured-news title=\"Visit Our Blog\" subtitle=\"Our Blog updated the newest trend of the world regularly\"][/featured-news]</div><div>[testimonials title=\"Our Client Say!\"][/testimonials]</div><div>[our-features icon1=\"flaticon-shipped\" title1=\"Free Delivery\" subtitle1=\"Free shipping on all US order or order above $200\" icon2=\"flaticon-money-back\" title2=\"30 Day Returns Guarantee\" subtitle2=\"Simply return it within 30 days for an exchange\" icon3=\"flaticon-support\" title3=\"27/4 Online Support\" subtitle3=\"Contact us 24 hours a day, 7 days a week\"][/our-features]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Register now to get updates on promotions.\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2024-07-27 06:17:15','2024-07-27 06:17:15'),(2,'Contact us','<div>[contact-form][/contact-form]</div><div>[google-map]959 Homestead Street Eastlake, NYC[/google-map]</div>',1,NULL,'default',NULL,'published','2024-07-27 06:17:15','2024-07-27 06:17:15'),(3,'Blog','<p>---</p>',1,NULL,'blog-sidebar',NULL,'published','2024-07-27 06:17:15','2024-07-27 06:17:15'),(4,'About us','<p>Pigeon. \'I can see you\'re trying to put it right; \'not that it signifies much,\' she said to herself; \'his eyes are so VERY much out of a well--\' \'What did they draw?\' said Alice, \'but I must have imitated somebody else\'s hand,\' said the Mock Turtle, \'Drive on, old fellow! Don\'t be all day to such stuff? Be off, or I\'ll kick you down stairs!\' \'That is not said right,\' said the Queen. \'You make me larger, it must make me smaller, I can go back by railway,\' she said to herself, \'after such a.</p>',1,NULL,'default',NULL,'published','2024-07-27 06:17:15','2024-07-27 06:17:15'),(5,'FAQ','<div>[faqs][/faqs]</div>',1,NULL,'default',NULL,'published','2024-07-27 06:17:16','2024-07-27 06:17:16'),(6,'Location','<p>VERY deeply with a shiver. \'I beg your acceptance of this sort of life! I do so like that curious song about the same side of the window, and some were birds,) \'I suppose so,\' said Alice. \'I don\'t know of any use, now,\' thought Alice, \'as all the right size again; and the three gardeners instantly threw themselves flat upon their faces, so that by the officers of the words all coming different, and then said, \'It WAS a curious plan!\' exclaimed Alice. \'That\'s very curious!\' she thought. \'I must.</p>',1,NULL,'default',NULL,'published','2024-07-27 06:17:16','2024-07-27 06:17:16'),(7,'Affiliates','<p>Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon said to Alice, that she knew that it felt quite strange at first; but she did not get hold of this rope--Will the roof bear?--Mind that loose slate--Oh, it\'s coming down! Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, the Lizard) could not taste theirs, and the other players, and shouting \'Off with her arms folded, frowning like a frog; and both footmen, Alice noticed, had powdered hair that curled.</p>',1,NULL,'default',NULL,'published','2024-07-27 06:17:16','2024-07-27 06:17:16'),(8,'Brands','<p>[all-brands][/all-brands]</p>',1,NULL,'default',NULL,'published','2024-07-27 06:17:16','2024-07-27 06:17:16'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-07-27 06:17:16','2024-07-27 06:17:16'),(10,'Homepage 2','<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-2\" key=\"home-slider\"][/simple-slider]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads key_1=\"DHAEBCMWGYJG\" key_2=\"MDEUVQI9QPKM\" style=\"style-2\"][/theme-ads]</div><div>[flash-sale style=\"style-2\" title=\"Deal Of The Days\" flash_sale_id=\"1\"][/flash-sale]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[product-blocks featured_product_title=\"Featured Products\" style=\"style-2\"][/product-blocks]</div><div>[featured-brands title=\"Our Brands\"][/featured-brands]</div><div>[newsletter-form style=\"style-2\" title=\"Subscribe Our Newsletter\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2024-07-27 06:17:16','2024-07-27 06:17:16'),(11,'Homepage 3','<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-3\" key=\"home-slider\"][/simple-slider]</div><div>[our-features style=\"style-3\" icon1=\"flaticon-shipped\" title1=\"Free Delivery\" subtitle1=\"Worldwide\" icon2=\"flaticon-money-back\" title2=\"Money Returns\" subtitle2=\"30 Days money return\" icon3=\"flaticon-support\" title3=\"27/4 Online Support\" subtitle3=\"Customer Support\" icon4=\"flaticon-lock\" title4=\"Payment Security\" subtitle4=\"Safe Payment\"][/our-features]</div><div>[product-blocks featured_product_title=\"Exclusive Products\" style=\"style-3\" number_of_displays=\"8\"][/product-blocks]</div><div>[theme-ads style=\"style-3\" key_1=\"EYMG7NGZTHJL\" key_2=\"NKWBGV6NAC3M\"][/theme-ads]</div><div>[trending-products style=\"style-3\" title=\"Trending Items\"][/trending-products]</div><div>[instagram title=\"instagram\" username=\"@shoppingzone\" images=\"general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg\"][/instagram]</div><div>[featured-brands style=\"style-3\" title=\"Our Brands\"][/featured-brands]</div>',1,NULL,'homepage',NULL,'published','2024-07-27 06:17:16','2024-07-27 06:17:16'),(12,'Homepage 4','<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-4\" key=\"home-slider\"][/simple-slider]</div><div>[featured-product-categories style=\"style-4\" link=\"products\" title=\"Top Categories\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[trending-products style=\"style-4\" number_of_displays=\"8\" title=\"Our Top Products\" description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/trending-products]</div><div>[flash-sale style=\"style-4\" flash_sale_id=\"1\" background_image=\"general/furniture-banner3.jpg\" show_newsletter=\"yes\" title=\"Big Sale Deal\" description=\"Sale 40% Off\" button_url=\"/products\"][/flash-sale]</div><div>[product-blocks style=\"style-4\" on_sale_product_title=\"Special Offers\" on_sale_product_description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/product-blocks]</div><div>[featured-news title=\"Latest News\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.\"][/featured-news]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Register now to get updates on promotions.\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2024-07-27 06:17:16','2024-07-27 06:17:16'),(13,'Homepage 5','<div>[simple-slider collapsing_product_categories=\"no\" style=\"style-5\" key=\"home-slider\" ads_1=\"WF2VEBKBGUFA\" ads_2=\"YKE9S2TUEEJB\"][/simple-slider]</div><div>[product-collections style=\"style-5\" ads_key=\"WF2VEBKBGUFA\" title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[flash-sale title=\"Best deals for you\"][/flash-sale]</div><div>[trending-products ads_key=\"YKE9S2TUEEJB\" title=\"Trending Products\"][/trending-products]</div><div>[featured-brands title=\"Our Brands\"][/featured-brands]</div><div>[product-blocks featured_product_title=\"Featured Products\" top_rated_product_title=\"Top Rated Products\" on_sale_product_title=\"On Sale Products\"][/product-blocks]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Register now to get updates on promotions.\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2024-07-27 06:17:16','2024-07-27 06:17:16'),(14,'Homepage 6','<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-6\" key=\"home-slider\"][/simple-slider]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-product-categories title=\"Top Categories\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[product-collections style=\"style-6\" title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads key_1=\"7W3YFO7XE422\"][/theme-ads]</div><div>[trending-products title=\"Trending Products\"][/trending-products]</div><div>[testimonials title=\"Our Client Say!\"][/testimonials]</div><div>[featured-news title=\"Visit Our Blog\" subtitle=\"Our Blog updated the newest trend of the world regularly\"][/featured-news]</div><div>[featured-brands title=\"Our Brands\" style=\"style-3\"][/featured-brands]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Register now to get updates on promotions.\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2024-07-27 06:17:16','2024-07-27 06:17:16');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `response` longtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1),(3,1),(1,2),(4,2),(1,3),(3,3),(1,4),(3,4),(2,5),(4,5),(1,6),(3,6),(1,7),(4,7),(1,8),(3,8),(1,9),(3,9),(2,10),(3,10),(2,11),(3,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',2482,NULL,'2024-07-27 06:17:15','2024-07-27 06:17:15'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',1903,NULL,'2024-07-27 06:17:15','2024-07-27 06:17:15'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',325,NULL,'2024-07-27 06:17:15','2024-07-27 06:17:15'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',2364,NULL,'2024-07-27 06:17:15','2024-07-27 06:17:15'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',530,NULL,'2024-07-27 06:17:15','2024-07-27 06:17:15'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',853,NULL,'2024-07-27 06:17:15','2024-07-27 06:17:15'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',2267,NULL,'2024-07-27 06:17:15','2024-07-27 06:17:15'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',2182,NULL,'2024-07-27 06:17:15','2024-07-27 06:17:15'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',1857,NULL,'2024-07-27 06:17:15','2024-07-27 06:17:15'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',1589,NULL,'2024-07-27 06:17:15','2024-07-27 06:17:15'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',1330,NULL,'2024-07-27 06:17:15','2024-07-27 06:17:15');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"product-categories.export\":true,\"product-categories.import\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}','Admin users role',1,1,1,'2024-07-27 06:17:16','2024-07-27 06:17:16');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (2,'api_enabled','0',NULL,'2024-07-27 06:17:16'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"testimonial\",\"translation\"]',NULL,'2024-07-27 06:17:16'),(4,'analytics_dashboard_widgets','0','2024-07-27 06:17:03','2024-07-27 06:17:03'),(5,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2024-07-27 06:17:03','2024-07-27 06:17:03'),(6,'api_layer_api_key','',NULL,'2024-07-27 06:17:16'),(9,'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form','1','2024-07-27 06:17:04','2024-07-27 06:17:04'),(12,'language_hide_default','1',NULL,'2024-07-27 06:17:16'),(14,'language_display','all',NULL,'2024-07-27 06:17:16'),(15,'language_hide_languages','[]',NULL,'2024-07-27 06:17:16'),(16,'media_random_hash','61b6ffe8eab7fdd6cae8becde8141cc4',NULL,NULL),(17,'payment_cod_status','1',NULL,NULL),(18,'payment_bank_transfer_status','1',NULL,NULL),(19,'theme','shopwise',NULL,NULL),(20,'show_admin_bar','1',NULL,NULL),(21,'language_switcher_display','dropdown',NULL,NULL),(22,'admin_favicon','general/favicon.png',NULL,NULL),(23,'admin_logo','general/logo-light.png',NULL,NULL),(24,'permalink-botble-blog-models-post','blog',NULL,NULL),(25,'permalink-botble-blog-models-category','blog',NULL,NULL),(26,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(27,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,NULL),(28,'payment_stripe_payment_type','stripe_checkout',NULL,NULL),(29,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(30,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(31,'ecommerce_is_enabled_support_digital_products','1',NULL,NULL),(32,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,NULL),(33,'payment_bank_transfer_display_bank_info_at_the_checkout_success_page','1',NULL,NULL),(34,'ecommerce_product_sku_format','SW-2443-[%S]',NULL,NULL),(35,'simple_slider_using_assets','0',NULL,NULL),(36,'ecommerce_store_name','Shopwise',NULL,NULL),(37,'ecommerce_store_phone','123-456-7890',NULL,NULL),(38,'ecommerce_store_address','123 Street, Old Trafford',NULL,NULL),(39,'ecommerce_store_state','New York',NULL,NULL),(40,'ecommerce_store_city','New York',NULL,NULL),(41,'ecommerce_store_country','US',NULL,NULL),(42,'theme-shopwise-site_title','Shopwise - Laravel Ecommerce system',NULL,NULL),(43,'theme-shopwise-seo_description','Shopwise is designed for the eCommerce site. His design is suitable for small and big projects. It was built for your Shopping store, fashion store, clothing store, digital store, watch store, men store, women store, kids store, accessories store, Shoe store and etc.',NULL,NULL),(44,'theme-shopwise-copyright','© 2024 Botble Technologies. All Rights Reserved.',NULL,NULL),(45,'theme-shopwise-favicon','general/favicon.png',NULL,NULL),(46,'theme-shopwise-logo','general/logo.png',NULL,NULL),(47,'theme-shopwise-logo_footer','general/logo-light.png',NULL,NULL),(48,'theme-shopwise-address','959 Homestead Street Eastlake, NYC',NULL,NULL),(49,'theme-shopwise-hotline','123-456-7890',NULL,NULL),(50,'theme-shopwise-email','info@sitename.com',NULL,NULL),(51,'theme-shopwise-payment_methods','[\"general\\/visa.png\",\"general\\/paypal.png\",\"general\\/master-card.png\",\"general\\/discover.png\",\"general\\/american-express.png\"]',NULL,NULL),(52,'theme-shopwise-newsletter_image','general/newsletter.jpg',NULL,NULL),(53,'theme-shopwise-homepage_id','1',NULL,NULL),(54,'theme-shopwise-blog_page_id','3',NULL,NULL),(55,'theme-shopwise-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(56,'theme-shopwise-cookie_consent_learn_more_url','https://shopwise.test/cookie-policy',NULL,NULL),(57,'theme-shopwise-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(58,'theme-shopwise-about-us','If you are going to use of Lorem Ipsum need to be sure there isn\'t hidden of text',NULL,NULL),(62,'theme-shopwise-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"ion-social-facebook\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-color\",\"value\":\"#3b5998\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"ion-social-twitter\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-color\",\"value\":\"#00acee\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"ion-social-youtube\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-color\",\"value\":\"#c4302b\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"ion-social-instagram\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-color\",\"value\":\"#3f729b\"}]]',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Woman Fashion','sliders/1.jpg','products','Get up to 50% off Today Only!',1,'2024-07-27 06:17:15','2024-07-27 06:17:15'),(2,1,'Man Fashion','sliders/2.jpg','products','50% off in all products',2,'2024-07-27 06:17:15','2024-07-27 06:17:15'),(3,1,'Summer Sale','sliders/3.jpg','products','Taking your Viewing Experience to Next Level',3,'2024-07-27 06:17:15','2024-07-27 06:17:15');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider',NULL,'published','2024-07-27 06:17:15','2024-07-27 06:17:15');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'fashion-live',1,'Botble\\Ecommerce\\Models\\Brand','brands','2024-07-27 06:17:05','2024-07-27 06:17:05'),(2,'hand-crafted',2,'Botble\\Ecommerce\\Models\\Brand','brands','2024-07-27 06:17:05','2024-07-27 06:17:05'),(3,'mestonix',3,'Botble\\Ecommerce\\Models\\Brand','brands','2024-07-27 06:17:05','2024-07-27 06:17:05'),(4,'sunshine',4,'Botble\\Ecommerce\\Models\\Brand','brands','2024-07-27 06:17:05','2024-07-27 06:17:05'),(5,'pure',5,'Botble\\Ecommerce\\Models\\Brand','brands','2024-07-27 06:17:05','2024-07-27 06:17:05'),(6,'anfold',6,'Botble\\Ecommerce\\Models\\Brand','brands','2024-07-27 06:17:05','2024-07-27 06:17:05'),(7,'automotive',7,'Botble\\Ecommerce\\Models\\Brand','brands','2024-07-27 06:17:05','2024-07-27 06:17:05'),(8,'television',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:05','2024-07-27 06:17:05'),(9,'home-audio-theaters',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:05','2024-07-27 06:17:05'),(10,'tv-videos',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:05','2024-07-27 06:17:05'),(11,'camera-photos-videos',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:05','2024-07-27 06:17:05'),(12,'cellphones-accessories',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:05','2024-07-27 06:17:05'),(13,'headphones',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:05','2024-07-27 06:17:05'),(14,'videos-games',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:05','2024-07-27 06:17:05'),(15,'wireless-speakers',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:05','2024-07-27 06:17:05'),(16,'office-electronic',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:05','2024-07-27 06:17:05'),(17,'mobile',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:05','2024-07-27 06:17:05'),(18,'digital-cables',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:05','2024-07-27 06:17:05'),(19,'audio-video-cables',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:05','2024-07-27 06:17:05'),(20,'batteries',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:05','2024-07-27 06:17:05'),(21,'headphone',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:05','2024-07-27 06:17:05'),(22,'computer-tablets',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:05','2024-07-27 06:17:05'),(23,'laptop',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:05','2024-07-27 06:17:05'),(24,'monitors',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:05','2024-07-27 06:17:05'),(25,'computer-components',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:05','2024-07-27 06:17:05'),(26,'watches',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:05','2024-07-27 06:17:05'),(27,'drive-storages',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:05','2024-07-27 06:17:05'),(28,'gaming-laptop',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:05','2024-07-27 06:17:05'),(29,'security-protection',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:05','2024-07-27 06:17:05'),(30,'accessories',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:05','2024-07-27 06:17:05'),(31,'game',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:05','2024-07-27 06:17:05'),(32,'camera',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:05','2024-07-27 06:17:05'),(33,'audio',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:05','2024-07-27 06:17:05'),(34,'mobile-tablet',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:05','2024-07-27 06:17:05'),(35,'accessories',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:06','2024-07-27 06:17:06'),(36,'home-audio-theater',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:06','2024-07-27 06:17:06'),(37,'tv-smart-box',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:06','2024-07-27 06:17:06'),(38,'printer',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:06','2024-07-27 06:17:06'),(39,'computer',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:06','2024-07-27 06:17:06'),(40,'fax-machine',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:06','2024-07-27 06:17:06'),(41,'mouse',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-27 06:17:06','2024-07-27 06:17:06'),(42,'smart-home-speaker',1,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:13'),(43,'headphone-ultra-bass',2,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:13'),(44,'boxed-bluetooth-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:13'),(45,'chikie-bluetooth-speaker-digital',4,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:17'),(46,'camera-hikvision-hk-35vs8',5,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:13'),(47,'camera-samsung-ss-24',6,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:13'),(48,'leather-watch-band',7,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:13'),(49,'apple-iphone-13-plus-digital',8,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:17'),(50,'macbook-pro-2015',9,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:13'),(51,'macbook-air-12-inch',10,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:13'),(52,'apple-watch-serial-7',11,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:13'),(53,'macbook-pro-13-inch-digital',12,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:17'),(54,'apple-keyboard',13,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:13'),(55,'macsafe-80w',14,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:13'),(56,'hand-playstation',15,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:13'),(57,'apple-airpods-serial-3-digital',16,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:17'),(58,'cool-smart-watches',17,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:13'),(59,'black-smart-watches',18,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:13'),(60,'leather-watch-band-serial-3',19,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:13'),(61,'macbook-pro-2015-13-inch-digital',20,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:17'),(62,'historic-alarm-clock',21,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:13'),(63,'black-glasses',22,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:13'),(64,'phillips-mouse',23,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:13'),(65,'gaming-keyboard-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:17'),(66,'dual-camera-20mp',25,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:13'),(67,'smart-watches',26,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:13'),(68,'beat-headphone',27,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:13'),(69,'red-black-headphone-digital',28,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:17'),(70,'audio-equipment',29,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:13'),(71,'smart-televisions',30,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:13'),(72,'samsung-smart-tv',31,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:13','2024-07-27 06:17:13'),(73,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-07-27 06:17:14','2024-07-27 06:17:14'),(74,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-07-27 06:17:14','2024-07-27 06:17:14'),(75,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-07-27 06:17:14','2024-07-27 06:17:14'),(76,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-07-27 06:17:14','2024-07-27 06:17:14'),(77,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-07-27 06:17:14','2024-07-27 06:17:14'),(78,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-07-27 06:17:14','2024-07-27 06:17:14'),(79,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2024-07-27 06:17:15','2024-07-27 06:17:16'),(80,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2024-07-27 06:17:15','2024-07-27 06:17:16'),(81,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2024-07-27 06:17:15','2024-07-27 06:17:16'),(82,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2024-07-27 06:17:15','2024-07-27 06:17:16'),(83,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-07-27 06:17:15','2024-07-27 06:17:15'),(84,'design',2,'Botble\\Blog\\Models\\Tag','tag','2024-07-27 06:17:15','2024-07-27 06:17:15'),(85,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-07-27 06:17:15','2024-07-27 06:17:15'),(86,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2024-07-27 06:17:15','2024-07-27 06:17:15'),(87,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2024-07-27 06:17:15','2024-07-27 06:17:15'),(88,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2024-07-27 06:17:15','2024-07-27 06:17:16'),(89,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2024-07-27 06:17:15','2024-07-27 06:17:16'),(90,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2024-07-27 06:17:15','2024-07-27 06:17:16'),(91,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2024-07-27 06:17:15','2024-07-27 06:17:16'),(92,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2024-07-27 06:17:15','2024-07-27 06:17:16'),(93,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2024-07-27 06:17:15','2024-07-27 06:17:16'),(94,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2024-07-27 06:17:15','2024-07-27 06:17:16'),(95,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2024-07-27 06:17:15','2024-07-27 06:17:16'),(96,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2024-07-27 06:17:15','2024-07-27 06:17:16'),(97,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2024-07-27 06:17:15','2024-07-27 06:17:16'),(98,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2024-07-27 06:17:15','2024-07-27 06:17:16'),(99,'homepage',1,'Botble\\Page\\Models\\Page','','2024-07-27 06:17:15','2024-07-27 06:17:15'),(100,'contact-us',2,'Botble\\Page\\Models\\Page','','2024-07-27 06:17:15','2024-07-27 06:17:15'),(101,'blog',3,'Botble\\Page\\Models\\Page','','2024-07-27 06:17:15','2024-07-27 06:17:15'),(102,'about-us',4,'Botble\\Page\\Models\\Page','','2024-07-27 06:17:15','2024-07-27 06:17:15'),(103,'faq',5,'Botble\\Page\\Models\\Page','','2024-07-27 06:17:16','2024-07-27 06:17:16'),(104,'location',6,'Botble\\Page\\Models\\Page','','2024-07-27 06:17:16','2024-07-27 06:17:16'),(105,'affiliates',7,'Botble\\Page\\Models\\Page','','2024-07-27 06:17:16','2024-07-27 06:17:16'),(106,'brands',8,'Botble\\Page\\Models\\Page','','2024-07-27 06:17:16','2024-07-27 06:17:16'),(107,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2024-07-27 06:17:16','2024-07-27 06:17:16'),(108,'homepage-2',10,'Botble\\Page\\Models\\Page','','2024-07-27 06:17:16','2024-07-27 06:17:16'),(109,'homepage-3',11,'Botble\\Page\\Models\\Page','','2024-07-27 06:17:16','2024-07-27 06:17:16'),(110,'homepage-4',12,'Botble\\Page\\Models\\Page','','2024-07-27 06:17:16','2024-07-27 06:17:16'),(111,'homepage-5',13,'Botble\\Page\\Models\\Page','','2024-07-27 06:17:16','2024-07-27 06:17:16'),(112,'homepage-6',14,'Botble\\Page\\Models\\Page','','2024-07-27 06:17:16','2024-07-27 06:17:16'),(113,'smart-home-speaker',32,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(114,'smart-home-speaker',33,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(115,'boxed-bluetooth-headphone',34,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(116,'boxed-bluetooth-headphone',35,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(117,'camera-hikvision-hk-35vs8',36,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(118,'camera-hikvision-hk-35vs8',37,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(119,'camera-hikvision-hk-35vs8',38,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(120,'camera-hikvision-hk-35vs8',39,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(121,'camera-samsung-ss-24',40,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(122,'camera-samsung-ss-24',41,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(123,'camera-samsung-ss-24',42,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(124,'camera-samsung-ss-24',43,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(125,'leather-watch-band',44,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(126,'leather-watch-band',45,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(127,'leather-watch-band',46,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(128,'apple-iphone-13-plus-digital',47,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(129,'apple-iphone-13-plus-digital',48,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(130,'macbook-pro-2015',49,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(131,'macbook-pro-2015',50,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(132,'macbook-air-12-inch',51,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(133,'macbook-air-12-inch',52,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(134,'apple-watch-serial-7',53,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(135,'apple-watch-serial-7',54,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(136,'macbook-pro-13-inch-digital',55,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(137,'macbook-pro-13-inch-digital',56,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(138,'apple-keyboard',57,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(139,'apple-keyboard',58,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(140,'macsafe-80w',59,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(141,'macsafe-80w',60,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(142,'macsafe-80w',61,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(143,'hand-playstation',62,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(144,'hand-playstation',63,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(145,'hand-playstation',64,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(146,'black-glasses',65,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(147,'black-glasses',66,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(148,'black-glasses',67,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(149,'black-glasses',68,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(150,'black-glasses',69,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(151,'phillips-mouse',70,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(152,'phillips-mouse',71,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(153,'gaming-keyboard-digital',72,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(154,'gaming-keyboard-digital',73,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(155,'red-black-headphone-digital',74,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(156,'red-black-headphone-digital',75,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(157,'smart-televisions',76,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17'),(158,'smart-televisions',77,'Botble\\Ecommerce\\Models\\Product','products','2024-07-27 06:17:17','2024-07-27 06:17:17');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-07-27 06:17:15','2024-07-27 06:17:15'),(2,'Design',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-07-27 06:17:15','2024-07-27 06:17:15'),(3,'Fashion',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-07-27 06:17:15','2024-07-27 06:17:15'),(4,'Branding',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-07-27 06:17:15','2024-07-27 06:17:15'),(5,'Modern',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-07-27 06:17:15','2024-07-27 06:17:15');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'Adam Williams','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua','testimonials/1.jpg','CEO Of Microsoft','published','2024-07-27 06:17:15','2024-07-27 06:17:15'),(2,'Retha Deowalim','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua','testimonials/2.jpg','CEO Of Apple','published','2024-07-27 06:17:15','2024-07-27 06:17:15'),(3,'Sam J. Wasim','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua','testimonials/3.jpg','Pio Founder','published','2024-07-27 06:17:15','2024-07-27 06:17:15'),(4,'Usan Gulwarm','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua','testimonials/4.jpg','CEO Of Facewarm','published','2024-07-27 06:17:15','2024-07-27 06:17:15');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_translations`
--

DROP TABLE IF EXISTS `testimonials_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`testimonials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_translations`
--

LOCK TABLES `testimonials_translations` WRITE;
/*!40000 ALTER TABLE `testimonials_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'obreitenberg@leuschke.com',NULL,'$2y$12$280Q.6pLtoWU8sjflCTchONee/.d6SCgLGHqytjmuiZWqAC3tCq66',NULL,'2024-07-27 06:17:16','2024-07-27 06:17:16','Asia','Pfeffer','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','shopwise',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Useful Links\",\"menu_id\":\"useful-links\"}','2024-07-27 06:17:16','2024-07-27 06:17:16'),(2,'CustomMenuWidget','footer_sidebar','shopwise',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"categories\"}','2024-07-27 06:17:16','2024-07-27 06:17:16'),(3,'CustomMenuWidget','footer_sidebar','shopwise',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"My Account\",\"menu_id\":\"my-account\"}','2024-07-27 06:17:16','2024-07-27 06:17:16'),(4,'BlogSearchWidget','primary_sidebar','shopwise',0,'{\"id\":\"BlogSearchWidget\"}','2024-07-27 06:17:16','2024-07-27 06:17:16'),(5,'BlogCategoriesWidget','primary_sidebar','shopwise',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\",\"number_display\":10}','2024-07-27 06:17:16','2024-07-27 06:17:16'),(6,'RecentPostsWidget','primary_sidebar','shopwise',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}','2024-07-27 06:17:16','2024-07-27 06:17:16'),(7,'TagsWidget','primary_sidebar','shopwise',4,'{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":5}','2024-07-27 06:17:16','2024-07-27 06:17:16');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-27 20:17:18
