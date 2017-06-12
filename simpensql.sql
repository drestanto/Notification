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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'Oi, Andi, Apa kabar??',2,1,'2017-06-09 01:47:13','2017-06-09 01:47:13'),(2,'Cepe, besok bukber yuk',2,3,'2017-06-09 01:47:27','2017-06-09 01:47:27'),(3,'Eh, jangan lupa lusa ada kumpul!!!',2,1,'2017-06-09 01:47:48','2017-06-09 01:47:48'),(4,'Budi ngajak gw bukber coy',3,1,'2017-06-09 01:48:38','2017-06-09 01:48:38'),(5,'oi',1,4,'2017-06-11 21:04:18','2017-06-11 21:04:18'),(6,'oi',1,4,'2017-06-11 21:05:23','2017-06-11 21:05:23'),(7,'oi',1,4,'2017-06-11 21:06:46','2017-06-11 21:06:46'),(8,'oi',1,4,'2017-06-11 21:06:54','2017-06-11 21:06:54'),(9,'oi',1,4,'2017-06-11 21:07:52','2017-06-11 21:07:52'),(10,'coba',4,2,'2017-06-11 22:54:32','2017-06-11 22:54:32'),(11,'coba',4,2,'2017-06-11 22:56:37','2017-06-11 22:56:37'),(12,'coba',4,2,'2017-06-11 22:57:12','2017-06-11 22:57:12'),(13,'coba',4,2,'2017-06-11 22:57:57','2017-06-11 22:57:57'),(14,'coba',4,2,'2017-06-11 23:02:09','2017-06-11 23:02:09'),(15,'coba',4,2,'2017-06-11 23:02:55','2017-06-11 23:02:55'),(16,'oi',4,3,'2017-06-11 23:10:03','2017-06-11 23:10:03'),(17,'oi oi',4,1,'2017-06-11 23:12:48','2017-06-11 23:12:48'),(18,'cobbaaa',1,4,'2017-06-11 23:46:37','2017-06-11 23:46:37'),(19,'aye',2,5,'2017-06-11 23:49:18','2017-06-11 23:49:18'),(20,'aye a',2,5,'2017-06-11 23:52:02','2017-06-11 23:52:02'),(21,'sdfs',2,3,'2017-06-11 23:52:21','2017-06-11 23:52:21'),(22,'asfagf',2,4,'2017-06-11 23:52:32','2017-06-11 23:52:32'),(23,'Hi Dyas!!!!',3,4,'2017-06-11 23:58:49','2017-06-11 23:58:49'),(24,'Hi Dyas!!!',3,4,'2017-06-12 00:00:06','2017-06-12 00:00:06'),(25,'Hi Dyas!!! Apa kabar?',3,4,'2017-06-12 00:00:27','2017-06-12 00:00:27'),(26,'Hi Dyas!!! Apa kabar? Mudah2an baiiik',3,4,'2017-06-12 00:00:44','2017-06-12 00:00:44'),(27,'Hi Dyas!!! Apa kabar? Mudah2an baik yaa',3,4,'2017-06-12 00:01:14','2017-06-12 00:01:14'),(28,'coba',4,1,'2017-06-12 00:04:46','2017-06-12 00:04:46');
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
INSERT INTO `notifications` VALUES ('1ea8dff6-14fb-4251-9e51-aa4dbb9e7529','App\\Notifications\\UserNotif',2,'App\\User','{\"message\":{\"message\":\"coba\",\"from_id\":4,\"to_id\":\"2\",\"updated_at\":\"2017-06-12 05:56:37\",\"created_at\":\"2017-06-12 05:56:37\",\"id\":11},\"user\":{\"id\":4,\"name\":\"Dyas\",\"email\":\"dyas@live.com\",\"created_at\":\"2017-06-12 04:01:47\",\"updated_at\":\"2017-06-12 04:01:47\"}}','2017-06-11 23:48:49','2017-06-11 22:56:37','2017-06-11 23:48:49'),('291f8694-8c7a-49f2-9e99-06f1761a6e92','App\\Notifications\\UserNotif',4,'App\\User','{\"message\":{\"message\":\"oi\",\"from_id\":1,\"to_id\":\"4\",\"updated_at\":\"2017-06-12 04:07:52\",\"created_at\":\"2017-06-12 04:07:52\",\"id\":9},\"user\":{\"id\":1,\"name\":\"Andi\",\"email\":\"andi@blog.com\",\"created_at\":\"2017-06-08 12:29:30\",\"updated_at\":\"2017-06-08 12:29:30\"}}','2017-06-11 22:54:01','2017-06-11 21:07:52','2017-06-11 22:54:01'),('34cbba88-5577-4257-b472-64bd3cc2b213','App\\Notifications\\UserNotif',1,'App\\User','{\"message\":{\"message\":\"coba\",\"from_id\":4,\"to_id\":\"1\",\"updated_at\":\"2017-06-12 07:04:46\",\"created_at\":\"2017-06-12 07:04:46\",\"id\":28},\"user\":{\"id\":4,\"name\":\"Dyas\",\"email\":\"dyas@live.com\",\"created_at\":\"2017-06-12 04:01:47\",\"updated_at\":\"2017-06-12 04:01:47\"}}',NULL,'2017-06-12 00:04:46','2017-06-12 00:04:46'),('41e56215-fccf-435f-9680-78285ff17aa8','App\\Notifications\\UserNotif',4,'App\\User','{\"message\":{\"message\":\"oi\",\"from_id\":1,\"to_id\":\"4\",\"updated_at\":\"2017-06-12 04:06:54\",\"created_at\":\"2017-06-12 04:06:54\",\"id\":8},\"user\":{\"id\":1,\"name\":\"Andi\",\"email\":\"andi@blog.com\",\"created_at\":\"2017-06-08 12:29:30\",\"updated_at\":\"2017-06-08 12:29:30\"}}','2017-06-11 22:54:01','2017-06-11 21:06:54','2017-06-11 22:54:01'),('43601fb7-2525-4784-85f5-ec44e85da4af','App\\Notifications\\UserNotif',5,'App\\User','{\"message\":{\"message\":\"aye a\",\"from_id\":2,\"to_id\":\"5\",\"updated_at\":\"2017-06-12 06:52:02\",\"created_at\":\"2017-06-12 06:52:02\",\"id\":20},\"user\":{\"id\":2,\"name\":\"Budi\",\"email\":\"budi@blog.com\",\"created_at\":\"2017-06-08 12:29:54\",\"updated_at\":\"2017-06-08 12:29:54\"}}',NULL,'2017-06-11 23:52:02','2017-06-11 23:52:02'),('53e2f9c8-6a56-442a-bcbc-86749eb89034','App\\Notifications\\UserNotif',1,'App\\User','{\"message\":{\"message\":\"Budi ngajak gw bukber coy\",\"from_id\":3,\"to_id\":\"1\",\"updated_at\":\"2017-06-09 08:48:38\",\"created_at\":\"2017-06-09 08:48:38\",\"id\":4},\"user\":{\"id\":3,\"name\":\"Cepe\",\"email\":\"cepe@blog.com\",\"created_at\":\"2017-06-08 12:30:15\",\"updated_at\":\"2017-06-08 12:30:15\"}}','2017-06-09 01:49:04','2017-06-09 01:48:38','2017-06-09 01:49:04'),('5dc3e3c0-b389-4fcf-8453-5322dc54997c','App\\Notifications\\UserNotif',4,'App\\User','{\"message\":{\"message\":\"Hi Dyas!!! Apa kabar? Mudah2an baik yaa\",\"from_id\":3,\"to_id\":\"4\",\"updated_at\":\"2017-06-12 07:01:14\",\"created_at\":\"2017-06-12 07:01:14\",\"id\":27},\"user\":{\"id\":3,\"name\":\"Cepe\",\"email\":\"cepe@blog.com\",\"created_at\":\"2017-06-08 12:30:15\",\"updated_at\":\"2017-06-08 12:30:15\"}}','2017-06-12 00:04:21','2017-06-12 00:01:14','2017-06-12 00:04:21'),('619bfe12-58de-4012-a6eb-461587b058ea','App\\Notifications\\UserNotif',4,'App\\User','{\"message\":{\"message\":\"cobbaaa\",\"from_id\":1,\"to_id\":\"4\",\"updated_at\":\"2017-06-12 06:46:37\",\"created_at\":\"2017-06-12 06:46:37\",\"id\":18},\"user\":{\"id\":1,\"name\":\"Andi\",\"email\":\"andi@blog.com\",\"created_at\":\"2017-06-08 12:29:30\",\"updated_at\":\"2017-06-08 12:29:30\"}}','2017-06-12 00:04:21','2017-06-11 23:46:37','2017-06-12 00:04:21'),('6c1f4e58-de7d-496c-bb94-150455a70700','App\\Notifications\\UserNotif',1,'App\\User','{\"message\":{\"message\":\"Eh, jangan lupa lusa ada kumpul!!!\",\"from_id\":2,\"to_id\":\"1\",\"updated_at\":\"2017-06-09 08:47:48\",\"created_at\":\"2017-06-09 08:47:48\",\"id\":3},\"user\":{\"id\":2,\"name\":\"Budi\",\"email\":\"budi@blog.com\",\"created_at\":\"2017-06-08 12:29:54\",\"updated_at\":\"2017-06-08 12:29:54\"}}','2017-06-09 01:49:04','2017-06-09 01:47:48','2017-06-09 01:49:04'),('74dec272-bd7f-44fb-bf46-9b3939c6df7d','App\\Notifications\\UserNotif',3,'App\\User','{\"message\":{\"message\":\"Cepe, besok bukber yuk\",\"from_id\":2,\"to_id\":\"3\",\"updated_at\":\"2017-06-09 08:47:27\",\"created_at\":\"2017-06-09 08:47:27\",\"id\":2},\"user\":{\"id\":2,\"name\":\"Budi\",\"email\":\"budi@blog.com\",\"created_at\":\"2017-06-08 12:29:54\",\"updated_at\":\"2017-06-08 12:29:54\"}}','2017-06-09 01:48:15','2017-06-09 01:47:27','2017-06-09 01:48:15'),('91bfc626-fc47-492a-b8b9-fad60558415f','App\\Notifications\\UserNotif',4,'App\\User','{\"message\":{\"message\":\"asfagf\",\"from_id\":2,\"to_id\":\"4\",\"updated_at\":\"2017-06-12 06:52:32\",\"created_at\":\"2017-06-12 06:52:32\",\"id\":22},\"user\":{\"id\":2,\"name\":\"Budi\",\"email\":\"budi@blog.com\",\"created_at\":\"2017-06-08 12:29:54\",\"updated_at\":\"2017-06-08 12:29:54\"}}','2017-06-12 00:04:21','2017-06-11 23:52:33','2017-06-12 00:04:21'),('9b37c117-ae18-45f4-9801-75384235c1d0','App\\Notifications\\UserNotif',1,'App\\User','{\"message\":{\"message\":\"Oi, Andi, Apa kabar??\",\"from_id\":2,\"to_id\":\"1\",\"updated_at\":\"2017-06-09 08:47:13\",\"created_at\":\"2017-06-09 08:47:13\",\"id\":1},\"user\":{\"id\":2,\"name\":\"Budi\",\"email\":\"budi@blog.com\",\"created_at\":\"2017-06-08 12:29:54\",\"updated_at\":\"2017-06-08 12:29:54\"}}','2017-06-09 01:49:04','2017-06-09 01:47:13','2017-06-09 01:49:04'),('9fbf1752-ff23-477b-b5d0-88af0074b37e','App\\Notifications\\UserNotif',2,'App\\User','{\"message\":{\"message\":\"coba\",\"from_id\":4,\"to_id\":\"2\",\"updated_at\":\"2017-06-12 05:57:57\",\"created_at\":\"2017-06-12 05:57:57\",\"id\":13},\"user\":{\"id\":4,\"name\":\"Dyas\",\"email\":\"dyas@live.com\",\"created_at\":\"2017-06-12 04:01:47\",\"updated_at\":\"2017-06-12 04:01:47\"}}','2017-06-11 23:48:49','2017-06-11 22:57:57','2017-06-11 23:48:49'),('b6bd8833-8eda-498b-b204-6c350acbf6d6','App\\Notifications\\UserNotif',1,'App\\User','{\"message\":{\"message\":\"oi oi\",\"from_id\":4,\"to_id\":\"1\",\"updated_at\":\"2017-06-12 06:12:48\",\"created_at\":\"2017-06-12 06:12:48\",\"id\":17},\"user\":{\"id\":4,\"name\":\"Dyas\",\"email\":\"dyas@live.com\",\"created_at\":\"2017-06-12 04:01:47\",\"updated_at\":\"2017-06-12 04:01:47\"}}','2017-06-11 23:47:57','2017-06-11 23:12:48','2017-06-11 23:47:57'),('c2fb7006-97de-4640-bb1a-cc65e8b12e87','App\\Notifications\\UserNotif',2,'App\\User','{\"message\":{\"message\":\"coba\",\"from_id\":4,\"to_id\":\"2\",\"updated_at\":\"2017-06-12 05:54:32\",\"created_at\":\"2017-06-12 05:54:32\",\"id\":10},\"user\":{\"id\":4,\"name\":\"Dyas\",\"email\":\"dyas@live.com\",\"created_at\":\"2017-06-12 04:01:47\",\"updated_at\":\"2017-06-12 04:01:47\"}}','2017-06-11 23:48:49','2017-06-11 22:54:32','2017-06-11 23:48:49'),('c40c8e5c-177c-439e-9cd2-9d0cb86e13de','App\\Notifications\\UserNotif',2,'App\\User','{\"message\":{\"message\":\"coba\",\"from_id\":4,\"to_id\":\"2\",\"updated_at\":\"2017-06-12 05:57:12\",\"created_at\":\"2017-06-12 05:57:12\",\"id\":12},\"user\":{\"id\":4,\"name\":\"Dyas\",\"email\":\"dyas@live.com\",\"created_at\":\"2017-06-12 04:01:47\",\"updated_at\":\"2017-06-12 04:01:47\"}}','2017-06-11 23:48:49','2017-06-11 22:57:12','2017-06-11 23:48:49'),('ca980c69-3feb-457a-b21d-d733ebf8d8da','App\\Notifications\\UserNotif',3,'App\\User','{\"message\":{\"message\":\"sdfs\",\"from_id\":2,\"to_id\":\"3\",\"updated_at\":\"2017-06-12 06:52:21\",\"created_at\":\"2017-06-12 06:52:21\",\"id\":21},\"user\":{\"id\":2,\"name\":\"Budi\",\"email\":\"budi@blog.com\",\"created_at\":\"2017-06-08 12:29:54\",\"updated_at\":\"2017-06-08 12:29:54\"}}','2017-06-11 23:56:41','2017-06-11 23:52:21','2017-06-11 23:56:41'),('d5ca19e0-642a-4b23-91e0-86f80c98cbf3','App\\Notifications\\UserNotif',5,'App\\User','{\"message\":{\"message\":\"aye\",\"from_id\":2,\"to_id\":\"5\",\"updated_at\":\"2017-06-12 06:49:18\",\"created_at\":\"2017-06-12 06:49:18\",\"id\":19},\"user\":{\"id\":2,\"name\":\"Budi\",\"email\":\"budi@blog.com\",\"created_at\":\"2017-06-08 12:29:54\",\"updated_at\":\"2017-06-08 12:29:54\"}}',NULL,'2017-06-11 23:49:18','2017-06-11 23:49:18'),('de5c2ca5-5fcb-401b-904b-01943b4c2205','App\\Notifications\\UserNotif',2,'App\\User','{\"message\":{\"message\":\"coba\",\"from_id\":4,\"to_id\":\"2\",\"updated_at\":\"2017-06-12 06:02:09\",\"created_at\":\"2017-06-12 06:02:09\",\"id\":14},\"user\":{\"id\":4,\"name\":\"Dyas\",\"email\":\"dyas@live.com\",\"created_at\":\"2017-06-12 04:01:47\",\"updated_at\":\"2017-06-12 04:01:47\"}}','2017-06-11 23:48:49','2017-06-11 23:02:09','2017-06-11 23:48:49'),('e2958e59-f56f-47c4-866d-85f3658a25a2','App\\Notifications\\UserNotif',3,'App\\User','{\"message\":{\"message\":\"oi\",\"from_id\":4,\"to_id\":\"3\",\"updated_at\":\"2017-06-12 06:10:03\",\"created_at\":\"2017-06-12 06:10:03\",\"id\":16},\"user\":{\"id\":4,\"name\":\"Dyas\",\"email\":\"dyas@live.com\",\"created_at\":\"2017-06-12 04:01:47\",\"updated_at\":\"2017-06-12 04:01:47\"}}','2017-06-11 23:56:41','2017-06-11 23:10:03','2017-06-11 23:56:41'),('e9eb5150-97e2-42e9-98d6-3b851688ecaf','App\\Notifications\\UserNotif',2,'App\\User','{\"message\":{\"message\":\"coba\",\"from_id\":4,\"to_id\":\"2\",\"updated_at\":\"2017-06-12 06:02:55\",\"created_at\":\"2017-06-12 06:02:55\",\"id\":15},\"user\":{\"id\":4,\"name\":\"Dyas\",\"email\":\"dyas@live.com\",\"created_at\":\"2017-06-12 04:01:47\",\"updated_at\":\"2017-06-12 04:01:47\"}}','2017-06-11 23:48:49','2017-06-11 23:02:56','2017-06-11 23:48:49'),('fcf62e34-4673-4fea-bfbb-9f04c939f029','App\\Notifications\\UserNotif',4,'App\\User','{\"message\":{\"message\":\"oi\",\"from_id\":1,\"to_id\":\"4\",\"updated_at\":\"2017-06-12 04:04:18\",\"created_at\":\"2017-06-12 04:04:18\",\"id\":5},\"user\":{\"id\":1,\"name\":\"Andi\",\"email\":\"andi@blog.com\",\"created_at\":\"2017-06-08 12:29:30\",\"updated_at\":\"2017-06-08 12:29:30\"}}','2017-06-11 22:54:01','2017-06-11 21:04:18','2017-06-11 22:54:01');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Andi','andi@blog.com','$2y$10$FtDdT3TNq3XWJON3a8jUiOFIL1vXR1XGrmJTByxOygLIUjz2hYQru','F6pAXf5seVsJpnX6CY82EaYYELKp803BwYqZqdSBppXIO3ZE5RCICGtBmPp1','2017-06-08 05:29:30','2017-06-08 05:29:30'),(2,'Budi','budi@blog.com','$2y$10$TVZvoAfnvcJ86JyBtiJ.OeDSl2AGJ5kghktbLvI6atDQ/FAPfOjAS','OVq9wr7CZqKTFYiLli666hetmNjvul9B8p8hHIKno0V4RIxBLbGlEK5Oa7jy','2017-06-08 05:29:54','2017-06-08 05:29:54'),(3,'Cepe','cepe@blog.com','$2y$10$fbD2W8ENnJzG0JLcJFSYjOMN0VRN5wNkKfOcs.3GTTbthhD110vTC','DeEmKirbnHUXRZb2Hckg4Qgdht0zgU2MoqoRW5hzMbRdrhvZuOaQXUMf8LSw','2017-06-08 05:30:15','2017-06-08 05:30:15'),(4,'Dyas','dyas@live.com','$2y$10$Ozs6qVdG4WhQSpmc1dH2Eu/lrrO8H5R1BJSw0Q.4k2pd2IsqA0A8m','0mA7JRJVtIP5TfBeCIfw36UaA66Z3LZIRXcEboQCu5JnIoBI5kp2B9Fl92MP','2017-06-11 21:01:47','2017-06-11 21:01:47'),(5,'Mamet Sparta','spartahmif2015@gmail.com','$2y$10$/cejHT17r.PjKopxhGr3O.b7VCDVnKNzWnlgxE9TFtozP9mgpnHRG','DnMmX8IECzkOrtNr5R2rIzujUpo7Hh5AZZVjMrijV3SkVKgBGhu62JqP05pY','2017-06-11 23:48:29','2017-06-11 23:48:29');
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

-- Dump completed on 2017-06-12 14:16:33
