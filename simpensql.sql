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
INSERT INTO `messages` VALUES (1,'Oi, Andi, Apa kabar??',2,1,'2017-06-09 01:47:13','2017-06-09 01:47:13'),(2,'Cepe, besok bukber yuk',2,3,'2017-06-09 01:47:27','2017-06-09 01:47:27'),(3,'Eh, jangan lupa lusa ada kumpul!!!',2,1,'2017-06-09 01:47:48','2017-06-09 01:47:48'),(4,'Budi ngajak gw bukber coy',3,1,'2017-06-09 01:48:38','2017-06-09 01:48:38');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (12,'2014_10_12_000000_create_users_table',1),(13,'2014_10_12_100000_create_password_resets_table',1),(14,'2017_06_08_085103_create_notifications_table',1),(15,'2017_06_09_060303_create_messages_table',1);
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
INSERT INTO `notifications` VALUES ('53e2f9c8-6a56-442a-bcbc-86749eb89034','App\\Notifications\\UserNotif',1,'App\\User','{\"message\":{\"message\":\"Budi ngajak gw bukber coy\",\"from_id\":3,\"to_id\":\"1\",\"updated_at\":\"2017-06-09 08:48:38\",\"created_at\":\"2017-06-09 08:48:38\",\"id\":4},\"user\":{\"id\":3,\"name\":\"Cepe\",\"email\":\"cepe@blog.com\",\"created_at\":\"2017-06-08 12:30:15\",\"updated_at\":\"2017-06-08 12:30:15\"}}','2017-06-09 01:49:04','2017-06-09 01:48:38','2017-06-09 01:49:04'),('6c1f4e58-de7d-496c-bb94-150455a70700','App\\Notifications\\UserNotif',1,'App\\User','{\"message\":{\"message\":\"Eh, jangan lupa lusa ada kumpul!!!\",\"from_id\":2,\"to_id\":\"1\",\"updated_at\":\"2017-06-09 08:47:48\",\"created_at\":\"2017-06-09 08:47:48\",\"id\":3},\"user\":{\"id\":2,\"name\":\"Budi\",\"email\":\"budi@blog.com\",\"created_at\":\"2017-06-08 12:29:54\",\"updated_at\":\"2017-06-08 12:29:54\"}}','2017-06-09 01:49:04','2017-06-09 01:47:48','2017-06-09 01:49:04'),('74dec272-bd7f-44fb-bf46-9b3939c6df7d','App\\Notifications\\UserNotif',3,'App\\User','{\"message\":{\"message\":\"Cepe, besok bukber yuk\",\"from_id\":2,\"to_id\":\"3\",\"updated_at\":\"2017-06-09 08:47:27\",\"created_at\":\"2017-06-09 08:47:27\",\"id\":2},\"user\":{\"id\":2,\"name\":\"Budi\",\"email\":\"budi@blog.com\",\"created_at\":\"2017-06-08 12:29:54\",\"updated_at\":\"2017-06-08 12:29:54\"}}','2017-06-09 01:48:15','2017-06-09 01:47:27','2017-06-09 01:48:15'),('9b37c117-ae18-45f4-9801-75384235c1d0','App\\Notifications\\UserNotif',1,'App\\User','{\"message\":{\"message\":\"Oi, Andi, Apa kabar??\",\"from_id\":2,\"to_id\":\"1\",\"updated_at\":\"2017-06-09 08:47:13\",\"created_at\":\"2017-06-09 08:47:13\",\"id\":1},\"user\":{\"id\":2,\"name\":\"Budi\",\"email\":\"budi@blog.com\",\"created_at\":\"2017-06-08 12:29:54\",\"updated_at\":\"2017-06-08 12:29:54\"}}','2017-06-09 01:49:04','2017-06-09 01:47:13','2017-06-09 01:49:04');
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
INSERT INTO `users` VALUES (1,'Andi','andi@blog.com','$2y$10$FtDdT3TNq3XWJON3a8jUiOFIL1vXR1XGrmJTByxOygLIUjz2hYQru','X12ni96LUA8FkN4hMWdFjT7u04S0xMmlJPo9MtAPg1KZ5tnalNsc7WVOhDnH','2017-06-08 05:29:30','2017-06-08 05:29:30'),(2,'Budi','budi@blog.com','$2y$10$TVZvoAfnvcJ86JyBtiJ.OeDSl2AGJ5kghktbLvI6atDQ/FAPfOjAS','bNHgsQZFNl31lA3L4cMwdDjRzxlXoqLGEbijZVLnK7vz3kaDqsD37PBYKcHz','2017-06-08 05:29:54','2017-06-08 05:29:54'),(3,'Cepe','cepe@blog.com','$2y$10$fbD2W8ENnJzG0JLcJFSYjOMN0VRN5wNkKfOcs.3GTTbthhD110vTC','CYsnshclElV6DRaxeSymnkCiNobcdukjMTdRlTXOPbW3CBNeqHYZhRVlBX9c','2017-06-08 05:30:15','2017-06-08 05:30:15');
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

-- Dump completed on 2017-06-09 15:54:58
