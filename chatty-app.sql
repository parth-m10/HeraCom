-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: localhost    Database: chatty-app-demo
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_menu`
--

DROP TABLE IF EXISTS `admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_menu` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '0',
  `title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_menu`
--

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` VALUES (1,0,1,'Control panel','fa-bar-chart','/',NULL,NULL,'2022-11-26 09:05:21'),(2,0,10,'User Management','fa-tasks',NULL,NULL,NULL,'2022-11-26 16:00:15'),(3,2,11,'Users','fa-users','auth/users',NULL,NULL,'2022-11-26 16:00:16'),(4,2,12,'Roles','fa-user','auth/roles',NULL,NULL,'2022-11-26 16:00:16'),(5,2,13,'Permissions','fa-ban','auth/permissions',NULL,NULL,'2022-11-26 16:00:16'),(6,2,14,'Menu','fa-bars','auth/menu',NULL,NULL,'2022-11-26 16:00:16'),(7,2,15,'Logs','fa-history','auth/logs',NULL,NULL,'2022-11-26 16:00:17'),(18,0,5,'Members','fa-user','/members','*','2022-06-06 22:49:32','2022-11-26 16:00:14');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_operation_log`
--

DROP TABLE IF EXISTS `admin_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_operation_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_operation_log`
--

LOCK TABLES `admin_operation_log` WRITE;
/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;
INSERT INTO `admin_operation_log` VALUES (1,1,'admin','GET','159.138.33.118','[]','2023-01-01 14:11:10','2023-01-01 14:11:10'),(2,1,'admin/auth/menu','GET','159.138.33.118','[]','2023-01-01 14:23:32','2023-01-01 14:23:32'),(3,1,'admin/auth/menu/22','DELETE','159.138.33.118','{\"_method\":\"delete\",\"_token\":\"jqxVRifyGpwf6XpSpznQJoUc4WjgxbKZN0IYjtmm\"}','2023-01-01 14:23:38','2023-01-01 14:23:38'),(4,1,'admin/auth/menu','GET','159.138.33.118','{\"_pjax\":\"#pjax-container\"}','2023-01-01 14:23:39','2023-01-01 14:23:39'),(5,1,'admin/auth/menu/19','DELETE','159.138.33.118','{\"_method\":\"delete\",\"_token\":\"jqxVRifyGpwf6XpSpznQJoUc4WjgxbKZN0IYjtmm\"}','2023-01-01 14:23:42','2023-01-01 14:23:42'),(6,1,'admin/auth/menu','GET','159.138.33.118','{\"_pjax\":\"#pjax-container\"}','2023-01-01 14:23:42','2023-01-01 14:23:42'),(7,1,'admin/auth/menu/20','DELETE','159.138.33.118','{\"_method\":\"delete\",\"_token\":\"jqxVRifyGpwf6XpSpznQJoUc4WjgxbKZN0IYjtmm\"}','2023-01-01 14:23:47','2023-01-01 14:23:47'),(8,1,'admin/auth/menu','GET','159.138.33.118','{\"_pjax\":\"#pjax-container\"}','2023-01-01 14:23:47','2023-01-01 14:23:47'),(9,1,'admin/auth/menu/21','DELETE','159.138.33.118','{\"_method\":\"delete\",\"_token\":\"jqxVRifyGpwf6XpSpznQJoUc4WjgxbKZN0IYjtmm\"}','2023-01-01 14:23:51','2023-01-01 14:23:51'),(10,1,'admin/auth/menu','GET','159.138.33.118','{\"_pjax\":\"#pjax-container\"}','2023-01-01 14:23:51','2023-01-01 14:23:51'),(11,1,'admin/auth/menu/17','DELETE','159.138.33.118','{\"_method\":\"delete\",\"_token\":\"jqxVRifyGpwf6XpSpznQJoUc4WjgxbKZN0IYjtmm\"}','2023-01-01 14:23:58','2023-01-01 14:23:58'),(12,1,'admin/auth/menu','GET','159.138.33.118','{\"_pjax\":\"#pjax-container\"}','2023-01-01 14:23:59','2023-01-01 14:23:59'),(13,1,'admin/auth/menu/16','DELETE','159.138.33.118','{\"_method\":\"delete\",\"_token\":\"jqxVRifyGpwf6XpSpznQJoUc4WjgxbKZN0IYjtmm\"}','2023-01-01 14:24:03','2023-01-01 14:24:03'),(14,1,'admin/auth/menu','GET','159.138.33.118','{\"_pjax\":\"#pjax-container\"}','2023-01-01 14:24:03','2023-01-01 14:24:03'),(15,1,'admin/auth/menu/15','DELETE','159.138.33.118','{\"_method\":\"delete\",\"_token\":\"jqxVRifyGpwf6XpSpznQJoUc4WjgxbKZN0IYjtmm\"}','2023-01-01 14:24:07','2023-01-01 14:24:07'),(16,1,'admin/auth/menu','GET','159.138.33.118','{\"_pjax\":\"#pjax-container\"}','2023-01-01 14:24:07','2023-01-01 14:24:07'),(17,1,'admin/auth/menu','GET','159.138.33.118','[]','2023-01-01 14:24:14','2023-01-01 14:24:14'),(18,1,'admin/members','GET','159.138.33.118','[]','2023-01-01 14:24:16','2023-01-01 14:24:16'),(19,1,'admin/members','GET','159.138.33.118','[]','2023-01-01 14:25:43','2023-01-01 14:25:43'),(20,1,'admin/auth/users','GET','159.138.33.118','[]','2023-01-01 14:28:21','2023-01-01 14:28:21'),(21,1,'admin/auth/roles','GET','159.138.33.118','[]','2023-01-01 14:28:22','2023-01-01 14:28:22'),(22,1,'admin/auth/permissions','GET','159.138.33.118','[]','2023-01-01 14:28:24','2023-01-01 14:28:24'),(23,1,'admin/auth/menu','GET','159.138.33.118','[]','2023-01-01 14:28:25','2023-01-01 14:28:25'),(24,1,'admin/auth/users','GET','159.138.33.118','[]','2023-01-01 14:28:27','2023-01-01 14:28:27'),(25,1,'admin/members','GET','159.138.33.118','[]','2023-01-01 14:28:28','2023-01-01 14:28:28'),(26,1,'admin','GET','103.65.43.96','[]','2023-01-07 12:59:47','2023-01-07 12:59:47'),(27,1,'admin/members','GET','103.65.43.96','[]','2023-01-07 12:59:53','2023-01-07 12:59:53'),(28,1,'admin','GET','127.0.0.1','[]','2023-02-09 15:46:56','2023-02-09 15:46:56'),(29,1,'admin/members','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-02-09 15:47:05','2023-02-09 15:47:05');
/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'All permissions','*','','*',NULL,'2022-11-26 09:09:32'),(2,'Dashboard','dashboard','GET','/',NULL,'2019-10-15 02:43:41'),(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,'2019-10-15 02:43:53'),(4,'Setting','auth.setting','GET,PUT','/auth/setting',NULL,'2019-10-15 02:44:09'),(5,'Auth','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,'2019-10-15 02:44:27'),(8,'Orders','admin.orders','','/orders','2020-11-02 16:01:14','2022-11-26 15:50:59'),(9,'Post','admin.posts','','/posts','2022-06-06 14:35:34','2022-11-26 15:51:28'),(10,'Members','admin.members','','/members','2022-06-06 23:09:29','2022-11-26 09:50:07');
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_menu`
--

DROP TABLE IF EXISTS `admin_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_role_menu` (
  `role_id` int NOT NULL,
  `menu_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_menu`
--

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` VALUES (1,2,NULL,NULL),(1,9,NULL,NULL),(2,9,NULL,NULL),(1,11,NULL,NULL),(2,11,NULL,NULL),(1,18,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_permissions`
--

DROP TABLE IF EXISTS `admin_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_role_permissions` (
  `role_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_permissions`
--

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_users`
--

DROP TABLE IF EXISTS `admin_role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_role_users` (
  `role_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_users`
--

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'administrator','administrator','2019-09-29 01:41:09','2022-11-26 15:56:52');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user_permissions`
--

DROP TABLE IF EXISTS `admin_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_user_permissions` (
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_user_permissions`
--

LOCK TABLES `admin_user_permissions` WRITE;
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
INSERT INTO `admin_user_permissions` VALUES (3,6,NULL,NULL);
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin','$2y$10$jjEwOYQkqW14ai4De2hE7uSoim1a44yMMkyEGTncSlq1EuSwp0E3e','Super Admin','https://www.codemain.top/uploads/default.png','RfgfSRjRKEm8ldjBiwtQs72toKgGA7V1NCxDb5CzcrCRK0B7ol023zOuK456','2019-09-29 01:41:09','2020-11-02 13:21:26');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_types`
--

DROP TABLE IF EXISTS `article_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_types` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `parent_id` int NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '描述',
  `order` int NOT NULL DEFAULT '1' COMMENT '排序',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='文章分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_types`
--

LOCK TABLES `article_types` WRITE;
/*!40000 ALTER TABLE `article_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关键词',
  `description` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `type_id` int NOT NULL COMMENT '分类ID',
  `article_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除时间',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '缩略图',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='文章表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int NOT NULL,
  `access_token` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `open_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime NOT NULL,
  `fcmtoken` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `online` int NOT NULL DEFAULT '1',
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (112,'38b380198a997ccc08f023c23f0e6dc7','Mankiw King','huacheng29@qq.com','https://graph.facebook.com/134041716162004/picture',3,'888ffcf07463d783779953bd8f4260ad','ML1jhTiMIIbb8ga1PaWxweRapV62','2023-02-09 14:37:27','dY_8bQngQbWOIUx1W3VVsd:APA91bHS5OKGGxUBpYqJoNewrznCj4VJbCrx5O1s7T26Bomaxw_hIyhYz4Z1-LQ4fWKinYCN565lekAmT57iyjFJfLGOCjHqvjMioAssqNdiaIRFINS6suL5h4Bg_a_lBN81cKK6slcf',NULL,'2022-12-21 14:32:35',NULL,NULL,1,NULL),(111,'89da7983b47a8c6506d56b6d98f26e6b','codemain','huacheng26@gmail.com','https://chatty.codemain.top/uploads/20221222/63a35b8b16b43.jpg',2,'12bc9492abe7a0c86cf80fd3b53951f4','105851994346712822957','2023-01-31 22:31:25','cXHl2fmnSIy7PnNTsDVt2y:APA91bE--S1EfxMV30t2d1HIBTt8KsKKxtMhEuamO22Ul8Sg_ZTHK4-xKrZZWejn39g3dfml8kW8-IiRWVhGQWd_4r8bhytuYwj3W8Lp4P2wmIYHHQ3qeLsabXVOa_GJuYOK_g0Qy9FI','you\'re kn','2022-12-21 01:49:32','2022-12-23 01:17:00',NULL,1,NULL),(113,'754c9e982e1ae4b1b583224c7340213a','apple_user','apple@email.com','https://chatty.codemain.top/uploads/default.png',4,'bbfcd84403823e43722fd387742a4613','bx1w7A7GBeaFPqBMLSCsvSFINUf1','2023-02-18 23:02:16','eoGVqyZ4ukpqtRCt4X0mfO:APA91bGtRuP_aThTZNfRgBRzdZCV7V3ELniFT5ZvugN_rwPB-ZqkE_x_ftqRnsNS_lZJ0-MPSNjXmjfLFZEB74MJ3QZz_Su8cEgvWswu4OKWnAT0n4mUrTHblrk_JqHujOYUWXH_m1EB',NULL,'2022-12-30 04:16:14',NULL,NULL,1,NULL),(114,'d9c8929d6118d420e74d907f481cd6ed','dastagir ahmed','job3emj@gmail.com','https://lh3.googleusercontent.com/a/AEdFTp5fqrJ2WuoZ_zWPGsINu0rfaB70nzuAnUf-CBUb=s1337',2,'de4bff19705c3c6dae2cec6a57a035e2','101470262934547438839','2023-03-12 00:07:31','dRWNNu6MWEt_iYbquT-6Mp:APA91bGF-MJHXE5JSEoPzXYquVnsB5fkTcvYbXeHUgofyCM1PYktHhJCNF6VYdb0EmhVHdiJQRYD4IMffeu69LmOZWjG4jSefHhPMHHd1q86ukSQd5Uj3_bVLa6tdH3GfqgoYbJz8On_','developer','2022-12-31 20:12:40','2022-12-31 20:14:54',NULL,1,NULL),(115,'fdfc96ec33721b4da8c36dbfa286c70e','zaminder ahmed','learnprogrammingwithzaminder@gmail.com','https://lh3.googleusercontent.com/a/AEdFTp5HXIZcXwm2iv4uznSZA9nlohSJsvPrsR9bzpI=s96-c',2,'c5512d27758b4c6ff6a52a503691f949','111452599670464023473','2023-02-13 23:24:41','dRWNNu6MWEt_iYbquT-6Mp:APA91bGF-MJHXE5JSEoPzXYquVnsB5fkTcvYbXeHUgofyCM1PYktHhJCNF6VYdb0EmhVHdiJQRYD4IMffeu69LmOZWjG4jSefHhPMHHd1q86ukSQd5Uj3_bVLa6tdH3GfqgoYbJz8On_',NULL,'2023-01-05 23:43:33',NULL,NULL,1,NULL),(116,'6f522796127eac80febfe418633e6b22','Richmond Dougan','douganrichmond200@gmail.com','https://lh3.googleusercontent.com/a/AEdFTp5ZIlu7Q9JIZyXdrDyUlxWJ4Y3GgLtnhfr4CJxt=s96-c',2,'4500d7def5487b2fdbcdb549a37d8783','105810373868826902439','2023-02-05 19:26:42','devPYR9TS4GO7B7LsTV3ex:APA91bF9TqDEhj8jF0kqtuQwBLxgCD06FTOLFFsmrfjDLe3VXfL1n54tlIGPMX8_emhn-OWt-YFpTEaGyyGa-GN7LvNpk35qz3Il6SWthahzcBz0S-VWYYY8aOB1Xp69IL86rBSzQyjW',NULL,'2023-01-06 19:26:42',NULL,NULL,1,NULL),(118,'156fcf4d31fea8d0fbb39335290663b4','SoLo VpX','solovpxoffical@gmail.com','https://lh3.googleusercontent.com/a/AEdFTp7gFlkLXtSHan2L2ne-RWvkHuIyjCOmsubuIddMdg=s96-c',2,'c81a292209db2a0ba77efd4002e9df57','113059248630545177203','2023-02-06 01:46:58','eM7s-B64TAyxuKSxQROGTT:APA91bEOkH0QA9epYNke1V_4XAnadTPDmdqTSKqASrZr16lv_2bvYTjscV3LyJIXB6J_zQth-bH1pzVUM0ob40Z4_GHpgx_nr0oZI293DwMikaQbqL56ZkihAPLrkmk_upVpcnhSTeiy',NULL,'2023-01-07 01:46:58',NULL,NULL,1,NULL),(119,'47e57a12ac9379934e4a4691f4257311','Ishak Kh','khishak356@gmail.com','https://lh3.googleusercontent.com/a/AEdFTp5ytX8HyXlfSa4XdgZ90vJl4C8JzFe6zk6Y552f=s96-c',2,'044fa6d1f1e4bce8288632ba19823fd2','113860141856543349965','2023-02-06 05:26:15','cPbxhkSqQP2DGxIv8aewXP:APA91bHIyqFr66IAiWLLqBjLBs3y0gLGsFvK5TJlGawVFwnVAMWNfkfnJ1R2GsvY88k4DA6HSW8Xk4DMjZXIusgtQFKrC29Ttx57HWuKfxat01Qjuv96E3MTuKgCAbD-meOaGZXCpfAE',NULL,'2023-01-07 05:26:15',NULL,NULL,1,NULL),(120,'cd4a722725b97d804401e41ad274ec67','777 programmers','777programmers@gmail.com','https://lh3.googleusercontent.com/a/AEdFTp7IvSqsUx-NdeY69vQW81bSIbTMlo22s-gznke9=s96-c',2,'8cddd7e15635d922377b435de213db2c','103010213925971337511','2023-02-07 17:15:59','ezNCo8q5QjeV9V1jlA4Tlv:APA91bHbPNUjKe1bBTbG3sd6hVIcjLk7S2IR-8x0g1m1K54lTXT4jLCvWcm4IKBrDlWIfWpiKJOY_do4WuumdrGYs52cUTli_0Yw_cYHwDIiFbiMW5eXSo1iGd4xJP9ji0RmL4mGkppU',NULL,'2023-01-08 17:15:59',NULL,NULL,1,NULL),(121,'25431a895d8f7900a242a657a95fdbd4','phone_user','+8615138107332','https://chatty.codemain.top/uploads/default.png',5,'4986f8f168d84f18eb9b4b21debb5f13','tda2BkTsEQgaK1BHGUka338sKuJ3','2023-02-09 02:00:08','d1hfdD9DZkgdudNDsp3hTt:APA91bF3TxHvTI-MGc_KZuHbxtNmMRtxxvDys8HJXzXCwr_hmF99tw9pQU3X1CugguUvvA_h434VF58stWWJqtzb3DF4CTjlgM88GqEgVGztXQ0DnWkUZZVdJ7dkgqu7BRnK50qNfq3w',NULL,'2023-01-10 01:50:00',NULL,NULL,1,NULL),(122,'966b053de4231c56c7098dfcbf2304ce','Robert Fenner','robert@thearchouse.com','https://chatty.codemain.top/uploads/20230112/63bf22855509e.png',2,'f42421f224fd7ac7ae8af22544775a94','114628565915004876114','2023-02-18 21:48:35','egKP3iM0QziMJO1SdCVTz3:APA91bGp6vtb2D_61ET4Vfm6DeYB_Z_vi4Zw0_XKryu8VwBCeymflkk6deJl9FsxsGMhc2l8W2ZUZREkqo3aiI1D1iYnI5jOVBnO4B93v3lfnuH3yS3Uy__cJ1gcZZ5BPTt3ZpE5YL-P','hi','2023-01-11 16:16:23','2023-01-16 05:27:21',NULL,1,NULL),(123,'ce4980fccb1b60455223c00f630f24dd','mutale jether','mutalejether@gmail.com','https://lh3.googleusercontent.com/a/AEdFTp79a2cuWY053XA8pH6AUd4HRd7HL69S6GiYUuTR=s96-c',2,'bba825aa31a437dd636b55b4e7b7e034','100134625071700560700','2023-02-10 22:29:41','dCjKFWVBSR2TtRVJStQtGo:APA91bEeCt3P8q70ep4ALsAGA2nkJBW1001qVE5BeuPRR5DFeNIuuslC1rIN3V49HPJakNtzvLFCKhIpeM3Ag8R6hfgjqs887wjRvpIHoZJCsEzWYG9fXRzo9q1tisAGR570_jQXInMU',NULL,'2023-01-11 22:29:41',NULL,NULL,1,NULL),(124,'fe53cd324240894848631bfe4d5250ca','abdu llah','labdu9680@gmail.com','https://lh3.googleusercontent.com/a/AEdFTp4nrqT1k7lfRa7ydspPEryjS-yl04qp33-1Ycwj=s96-c',2,'0463285feea55789fe085905e90df386','104530108477870386112','2023-02-11 05:02:21','educdncPQPugB7Hzp2q7aB:APA91bEv-_qn5oC8gTEdPbGqCb8UIa02HwrqKEgF2s8mW8BsiN9yWibxFraXdGsu1rkxMbDDrtj2NBbEhgGp0wbqvR7ybuCwMudNyx2_0CI5KJx8QFU3gWRbtHw5oF-4NeHNx9m5TdjV',NULL,'2023-01-12 05:02:21',NULL,NULL,1,NULL),(125,'4e222d1749fefa4f47a956bc0aa7eed8','Reginaldo Dias','reginaldo.acdias@gmail.com','https://lh3.googleusercontent.com/a/AEdFTp5EOCbizFWTheWY4iQP7R6Dhcn8LdKKVdzYtsu8=s96-c',2,'77b8284ef26239078f3bed12a0663775','114330603823693674497','2023-02-12 00:25:56','dzt88rSDTaOxJc-G_-LyX6:APA91bE9cViuoTrRRIMHN5p0HkFseM64FGAn5hw8TkcsUjYV8ItSk2GQrBJguFjYmx62ak9LNmaM4shJaDV39qgdwUSHpB45Xd77OfwZAK4L8oZHn2a9YoCjt2ivL5J5wUNQ8fg1W1Qk',NULL,'2023-01-13 00:25:56',NULL,NULL,1,NULL),(126,'039b160505f90f9734e79afb44395b05','周忠','zhouzhongyu3325@gmail.com','https://lh3.googleusercontent.com/a/AEdFTp41O2-9Sl7iOijf70iEMEVHSS-A2KIydwH5Yzf7=s96-c',2,'218f2f9f752cc5e8b98bba2e2dc732bb','107462739880979836335','2023-02-14 12:08:42','dqIJqmmRRs-1qaeqU_tMr6:APA91bHd5LBG_CvQjiJd3Ua1_B2KujRYAntUE8u_X16csSLGvdvonQXHYQY59ML5JDjQgluQLn_AVQUshlD1sSuQ-Ne2uPoNqc6ZMy0CmhqQz0_7b1ZldV3i0friRZxGygtkDYxaHxuh',NULL,'2023-01-15 12:08:42',NULL,NULL,1,NULL),(127,'21211e442f99cc42a90abe562b0cfa85','phone_user','+233545247860','https://chatty.codemain.top/uploads/default.png',5,'a17c77982eb74f493c67ad99e03380b3','Jd1aOkPGfEV1GgqoW7E3Gp9UP4L2','2023-02-15 10:44:31','f4q3QWF9R6KEMmfI9m8hnn:APA91bFZ5AO9FJAfc12b31xJem5fVihvs6jqAZRI7lTXNCi0_7FvzDrgI0DChaZVnatJ6K8js88gjOlCEXPaFmMVZq8AlD5gpYhw0YNEa2ugoPspvrL0uCcvvXdITAEqCeSkuiRqB6ES','vb','2023-01-16 10:44:31','2023-01-16 10:44:52',NULL,1,NULL),(128,'bfe0c40f17523be97fdff1d02bef6f8d','Hunk Whx','whx2903571786@gmail.com','https://lh3.googleusercontent.com/a/AEdFTp5ddDc501AhvzbTNTydmXrlbtvgy570eFI_OLYx=s96-c',2,'73a12890fbd65ba93f874189e4279e7c','107586209548405108537','2023-02-16 02:55:05','ef137gcZSNOjDGOmn-v_kv:APA91bHPjgGeBt1yT70nh5oOfIH32ujVl2-DeWR1y3SUcYhrT6Tn83uWwumtL3TG2lZPWco6DM_pND3lReat8GYz_oJdjLyoltxC-cOSa1RDuNXPR3ZAT0cxFKbhcFPAJpjP8MHQWeOv',NULL,'2023-01-17 02:55:05',NULL,NULL,1,NULL),(129,'9cb74c0f1436f7ac9041635dfe9c40a8','krim baghdad','krimbaghdad3@gmail.com','https://chatty.codemain.top/uploads/20230117/63c5b6ac9888d.png',2,'ab4ef1a1ca5ca0a3731d14cb3b524965','115305466855144709213','2023-02-16 04:41:22','edULcS3BSW-XNV1js0ykRo:APA91bF7NZh8FEgUumaL76K5vCdOVnI6Uj79Lq2O0CsyONnkSQ76M1tjB62HUCOv2mkX8cNqY5jyT6H1mE4IB6pyKIVbFHfpLjO7V1G2mXMO4jGBZoPxdKbm45WGAh834jiGK9BCzHBR','Dev','2023-01-17 04:41:22','2023-01-17 04:42:28',NULL,1,NULL),(130,'da5f2bd837e51f71a977e42b2c14b46d','mark','895644281@qq.com','https://chatty.codemain.top/uploads/default.png',1,'9f40f9cfa1a11603db428246bc603575','RcjRAP2puEgvzy1twTtAB5SWU9C3','2023-02-19 00:24:18','eoGVqyZ4ukpqtRCt4X0mfO:APA91bGtRuP_aThTZNfRgBRzdZCV7V3ELniFT5ZvugN_rwPB-ZqkE_x_ftqRnsNS_lZJ0-MPSNjXmjfLFZEB74MJ3QZz_Su8cEgvWswu4OKWnAT0n4mUrTHblrk_JqHujOYUWXH_m1EB',NULL,'2023-01-20 00:24:18',NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-10 13:31:45
