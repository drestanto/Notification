-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: notif
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'Hai Andi!!! Apa kabar!!!',3,1,'2017-06-09 00:41:46','2017-06-09 00:41:46'),(2,'Budi, ngomong jg deh, ke Andi udh ngomong tadi. Wakakakak',3,2,'2017-06-09 00:42:19','2017-06-09 00:42:19'),(3,'Andi, jawab dong',3,1,'2017-06-09 00:42:33','2017-06-09 00:42:33'),(4,'oi',2,1,'2017-06-09 00:48:13','2017-06-09 00:48:13');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (8,'2014_10_12_000000_create_users_table',1),(9,'2014_10_12_100000_create_password_resets_table',1),(10,'2017_06_08_085103_create_notifications_table',1),(11,'2017_06_09_060303_create_messages_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) unsigned NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES ('7c30338e-6ea7-484c-9df1-c593de242264','App\\Notifications\\UserNotif',1,'App\\User','{\"message\":{\"message\":\"Andi, jawab dong\",\"from_id\":3,\"to_id\":\"1\",\"updated_at\":\"2017-06-09 07:42:33\",\"created_at\":\"2017-06-09 07:42:33\",\"id\":3},\"user\":{\"id\":1,\"name\":\"Andi\",\"email\":\"andi@blog.com\",\"created_at\":\"2017-06-08 19:29:30\",\"updated_at\":\"2017-06-08 19:29:30\"}}','2017-06-09 00:43:17','2017-06-09 00:42:33','2017-06-09 00:43:17'),('b2d77c79-dbde-474d-bca0-d6dd2628a255','App\\Notifications\\UserNotif',2,'App\\User','{\"message\":{\"message\":\"Budi, ngomong jg deh, ke Andi udh ngomong tadi. Wakakakak\",\"from_id\":3,\"to_id\":\"2\",\"updated_at\":\"2017-06-09 07:42:19\",\"created_at\":\"2017-06-09 07:42:19\",\"id\":2},\"user\":{\"id\":2,\"name\":\"Budi\",\"email\":\"budi@blog.com\",\"created_at\":\"2017-06-08 19:29:54\",\"updated_at\":\"2017-06-08 19:29:54\"}}','2017-06-09 00:43:42','2017-06-09 00:42:19','2017-06-09 00:43:42'),('d49a1254-b10a-4523-8bef-b2c006a7434e','App\\Notifications\\UserNotif',1,'App\\User','{\"message\":{\"message\":\"oi\",\"from_id\":2,\"to_id\":\"1\",\"updated_at\":\"2017-06-09 07:48:13\",\"created_at\":\"2017-06-09 07:48:13\",\"id\":4},\"user\":{\"id\":1,\"name\":\"Andi\",\"email\":\"andi@blog.com\",\"created_at\":\"2017-06-08 19:29:30\",\"updated_at\":\"2017-06-08 19:29:30\"}}','2017-06-09 00:49:43','2017-06-09 00:48:13','2017-06-09 00:49:43'),('ddbb259a-6abd-427f-9de2-058dc03e75e6','App\\Notifications\\UserNotif',1,'App\\User','{\"message\":{\"message\":\"Hai Andi!!! Apa kabar!!!\",\"from_id\":3,\"to_id\":\"1\",\"updated_at\":\"2017-06-09 07:41:46\",\"created_at\":\"2017-06-09 07:41:46\",\"id\":1},\"user\":{\"id\":1,\"name\":\"Andi\",\"email\":\"andi@blog.com\",\"created_at\":\"2017-06-08 19:29:30\",\"updated_at\":\"2017-06-08 19:29:30\"}}','2017-06-09 00:43:17','2017-06-09 00:41:47','2017-06-09 00:43:17');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Andi','andi@blog.com','$2y$10$FtDdT3TNq3XWJON3a8jUiOFIL1vXR1XGrmJTByxOygLIUjz2hYQru','gBEFukr5xqC6GfLqijvz0gb7XG1Cm4MgvArn5X8fyK2mldGODrPIhOa5mEm6','2017-06-08 12:29:30','2017-06-08 12:29:30'),(2,'Budi','budi@blog.com','$2y$10$TVZvoAfnvcJ86JyBtiJ.OeDSl2AGJ5kghktbLvI6atDQ/FAPfOjAS','7rh3TX9IbmjqG1QmcROyNYTo36Vfl0gBEqBmPG5fiMuRpxjdDLbkLpDyIeHJ','2017-06-08 12:29:54','2017-06-08 12:29:54'),(3,'Cepe','cepe@blog.com','$2y$10$fbD2W8ENnJzG0JLcJFSYjOMN0VRN5wNkKfOcs.3GTTbthhD110vTC','HGn3meaJYbkzAyDqwDb1WcQu42UedF2c8tcyuHrmU4XUN7hwFNJcFWO3pbPa','2017-06-08 12:30:15','2017-06-08 12:30:15');
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

-- Dump completed on 2017-06-09 15:16:12
