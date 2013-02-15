-- MySQL dump 10.13  Distrib 5.1.44, for apple-darwin8.11.1 (i386)
--
-- Host: localhost    Database: partialcontent
-- ------------------------------------------------------
-- Server version	5.1.44

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
-- Table structure for table `ezapprove_items`
--

DROP TABLE IF EXISTS `ezapprove_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezapprove_items` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workflow_process_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezapprove_items`
--

LOCK TABLES `ezapprove_items` WRITE;
/*!40000 ALTER TABLE `ezapprove_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezapprove_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezbasket`
--

DROP TABLE IF EXISTS `ezbasket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezbasket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `session_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezbasket_session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezbasket`
--

LOCK TABLES `ezbasket` WRITE;
/*!40000 ALTER TABLE `ezbasket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezbasket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezbinaryfile`
--

DROP TABLE IF EXISTS `ezbinaryfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezbinaryfile` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `download_count` int(11) NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `mime_type` varchar(255) NOT NULL DEFAULT '',
  `original_filename` varchar(255) NOT NULL DEFAULT '',
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contentobject_attribute_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezbinaryfile`
--

LOCK TABLES `ezbinaryfile` WRITE;
/*!40000 ALTER TABLE `ezbinaryfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezbinaryfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state`
--

DROP TABLE IF EXISTS `ezcobj_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state` (
  `default_language_id` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(45) NOT NULL DEFAULT '',
  `language_mask` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezcobj_state_identifier` (`group_id`,`identifier`),
  KEY `ezcobj_state_lmask` (`language_mask`),
  KEY `ezcobj_state_priority` (`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state`
--

LOCK TABLES `ezcobj_state` WRITE;
/*!40000 ALTER TABLE `ezcobj_state` DISABLE KEYS */;
INSERT INTO `ezcobj_state` VALUES (2,2,1,'not_locked',3,0),(2,2,2,'locked',3,1);
/*!40000 ALTER TABLE `ezcobj_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_group`
--

DROP TABLE IF EXISTS `ezcobj_state_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_group` (
  `default_language_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(45) NOT NULL DEFAULT '',
  `language_mask` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezcobj_state_group_identifier` (`identifier`),
  KEY `ezcobj_state_group_lmask` (`language_mask`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_group`
--

LOCK TABLES `ezcobj_state_group` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_group` DISABLE KEYS */;
INSERT INTO `ezcobj_state_group` VALUES (2,2,'ez_lock',3);
/*!40000 ALTER TABLE `ezcobj_state_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_group_language`
--

DROP TABLE IF EXISTS `ezcobj_state_group_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_group_language` (
  `contentobject_state_group_id` int(11) NOT NULL DEFAULT '0',
  `description` longtext NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(45) NOT NULL DEFAULT '',
  `real_language_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contentobject_state_group_id`,`real_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_group_language`
--

LOCK TABLES `ezcobj_state_group_language` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_group_language` DISABLE KEYS */;
INSERT INTO `ezcobj_state_group_language` VALUES (2,'',3,'Lock',0);
/*!40000 ALTER TABLE `ezcobj_state_group_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_language`
--

DROP TABLE IF EXISTS `ezcobj_state_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_language` (
  `contentobject_state_id` int(11) NOT NULL DEFAULT '0',
  `description` longtext NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`contentobject_state_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_language`
--

LOCK TABLES `ezcobj_state_language` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_language` DISABLE KEYS */;
INSERT INTO `ezcobj_state_language` VALUES (1,'',3,'Not locked'),(2,'',3,'Locked');
/*!40000 ALTER TABLE `ezcobj_state_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_link`
--

DROP TABLE IF EXISTS `ezcobj_state_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_link` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_state_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contentobject_id`,`contentobject_state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_link`
--

LOCK TABLES `ezcobj_state_link` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_link` DISABLE KEYS */;
INSERT INTO `ezcobj_state_link` VALUES (4,1),(10,1),(11,1),(12,1),(13,1),(14,1),(41,1),(42,1),(45,1),(49,1),(50,1),(51,1),(52,1),(54,1),(56,1),(99,1),(100,1),(101,1),(102,1),(103,1),(104,1),(105,1),(106,1);
/*!40000 ALTER TABLE `ezcobj_state_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_group`
--

DROP TABLE IF EXISTS `ezcollab_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_group` (
  `created` int(11) NOT NULL DEFAULT '0',
  `depth` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_open` int(11) NOT NULL DEFAULT '1',
  `modified` int(11) NOT NULL DEFAULT '0',
  `parent_group_id` int(11) NOT NULL DEFAULT '0',
  `path_string` varchar(255) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezcollab_group_depth` (`depth`),
  KEY `ezcollab_group_path` (`path_string`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_group`
--

LOCK TABLES `ezcollab_group` WRITE;
/*!40000 ALTER TABLE `ezcollab_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item`
--

DROP TABLE IF EXISTS `ezcollab_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `data_float1` float NOT NULL DEFAULT '0',
  `data_float2` float NOT NULL DEFAULT '0',
  `data_float3` float NOT NULL DEFAULT '0',
  `data_int1` int(11) NOT NULL DEFAULT '0',
  `data_int2` int(11) NOT NULL DEFAULT '0',
  `data_int3` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `data_text2` longtext NOT NULL,
  `data_text3` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `type_identifier` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item`
--

LOCK TABLES `ezcollab_item` WRITE;
/*!40000 ALTER TABLE `ezcollab_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_group_link`
--

DROP TABLE IF EXISTS `ezcollab_item_group_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_group_link` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_read` int(11) NOT NULL DEFAULT '0',
  `last_read` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`collaboration_id`,`group_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_group_link`
--

LOCK TABLES `ezcollab_item_group_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_group_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_group_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_message_link`
--

DROP TABLE IF EXISTS `ezcollab_item_message_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_message_link` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NOT NULL DEFAULT '0',
  `message_type` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `participant_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_message_link`
--

LOCK TABLES `ezcollab_item_message_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_message_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_message_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_participant_link`
--

DROP TABLE IF EXISTS `ezcollab_item_participant_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_participant_link` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_read` int(11) NOT NULL DEFAULT '0',
  `last_read` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `participant_id` int(11) NOT NULL DEFAULT '0',
  `participant_role` int(11) NOT NULL DEFAULT '1',
  `participant_type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`collaboration_id`,`participant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_participant_link`
--

LOCK TABLES `ezcollab_item_participant_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_participant_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_participant_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_status`
--

DROP TABLE IF EXISTS `ezcollab_item_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_status` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_read` int(11) NOT NULL DEFAULT '0',
  `last_read` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`collaboration_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_status`
--

LOCK TABLES `ezcollab_item_status` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_notification_rule`
--

DROP TABLE IF EXISTS `ezcollab_notification_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_notification_rule` (
  `collab_identifier` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_notification_rule`
--

LOCK TABLES `ezcollab_notification_rule` WRITE;
/*!40000 ALTER TABLE `ezcollab_notification_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_notification_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_profile`
--

DROP TABLE IF EXISTS `ezcollab_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_profile` (
  `created` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main_group` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_profile`
--

LOCK TABLES `ezcollab_profile` WRITE;
/*!40000 ALTER TABLE `ezcollab_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_simple_message`
--

DROP TABLE IF EXISTS `ezcollab_simple_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_simple_message` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `data_float1` float NOT NULL DEFAULT '0',
  `data_float2` float NOT NULL DEFAULT '0',
  `data_float3` float NOT NULL DEFAULT '0',
  `data_int1` int(11) NOT NULL DEFAULT '0',
  `data_int2` int(11) NOT NULL DEFAULT '0',
  `data_int3` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `data_text2` longtext NOT NULL,
  `data_text3` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_type` varchar(40) NOT NULL DEFAULT '',
  `modified` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_simple_message`
--

LOCK TABLES `ezcollab_simple_message` WRITE;
/*!40000 ALTER TABLE `ezcollab_simple_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_simple_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcomment`
--

DROP TABLE IF EXISTS `ezcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_key` varchar(32) DEFAULT NULL,
  `ip` varchar(100) NOT NULL,
  `contentobject_id` int(11) NOT NULL,
  `parent_comment_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `text` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_session_key_ip` (`user_id`,`session_key`,`ip`),
  KEY `content_parentcomment` (`contentobject_id`,`language_id`,`parent_comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcomment`
--

LOCK TABLES `ezcomment` WRITE;
/*!40000 ALTER TABLE `ezcomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcomment_notification`
--

DROP TABLE IF EXISTS `ezcomment_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcomment_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentobject_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `send_time` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `comment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcomment_notification`
--

LOCK TABLES `ezcomment_notification` WRITE;
/*!40000 ALTER TABLE `ezcomment_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcomment_subscriber`
--

DROP TABLE IF EXISTS `ezcomment_subscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcomment_subscriber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `enabled` int(11) NOT NULL DEFAULT '1',
  `hash_string` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcomment_subscriber`
--

LOCK TABLES `ezcomment_subscriber` WRITE;
/*!40000 ALTER TABLE `ezcomment_subscriber` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment_subscriber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcomment_subscription`
--

DROP TABLE IF EXISTS `ezcomment_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcomment_subscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `subscriber_id` int(11) NOT NULL,
  `subscription_type` varchar(30) NOT NULL,
  `content_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `subscription_time` int(11) NOT NULL,
  `enabled` int(11) NOT NULL DEFAULT '1',
  `hash_string` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcomment_subscription`
--

LOCK TABLES `ezcomment_subscription` WRITE;
/*!40000 ALTER TABLE `ezcomment_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontent_language`
--

DROP TABLE IF EXISTS `ezcontent_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontent_language` (
  `disabled` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezcontent_language_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontent_language`
--

LOCK TABLES `ezcontent_language` WRITE;
/*!40000 ALTER TABLE `ezcontent_language` DISABLE KEYS */;
INSERT INTO `ezcontent_language` VALUES (0,2,'eng-US','English (American)');
/*!40000 ALTER TABLE `ezcontent_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentbrowsebookmark`
--

DROP TABLE IF EXISTS `ezcontentbrowsebookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentbrowsebookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezcontentbrowsebookmark_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentbrowsebookmark`
--

LOCK TABLES `ezcontentbrowsebookmark` WRITE;
/*!40000 ALTER TABLE `ezcontentbrowsebookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentbrowsebookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentbrowserecent`
--

DROP TABLE IF EXISTS `ezcontentbrowserecent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentbrowserecent` (
  `created` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezcontentbrowserecent_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentbrowserecent`
--

LOCK TABLES `ezcontentbrowserecent` WRITE;
/*!40000 ALTER TABLE `ezcontentbrowserecent` DISABLE KEYS */;
INSERT INTO `ezcontentbrowserecent` VALUES (1360948164,1,'eZ Publish',2,14),(1360944319,13,'Users',5,14),(1360955738,14,'Code',103,14),(1360955829,15,'Series',104,14);
/*!40000 ALTER TABLE `ezcontentbrowserecent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass`
--

DROP TABLE IF EXISTS `ezcontentclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass` (
  `always_available` int(11) NOT NULL DEFAULT '0',
  `contentobject_name` varchar(255) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL DEFAULT '',
  `initial_language_id` int(11) NOT NULL DEFAULT '0',
  `is_container` int(11) NOT NULL DEFAULT '0',
  `language_mask` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) NOT NULL DEFAULT '',
  `serialized_description_list` longtext,
  `serialized_name_list` longtext,
  `sort_field` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '1',
  `url_alias_name` varchar(255) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`),
  KEY `ezcontentclass_version` (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass`
--

LOCK TABLES `ezcontentclass` WRITE;
/*!40000 ALTER TABLE `ezcontentclass` DISABLE KEYS */;
INSERT INTO `ezcontentclass` VALUES (1,'<short_name|name>',1024392098,14,1,'folder',2,1,3,1082454875,14,'a3d405b81be900468eb153d774f4f0d2','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:6:\"Folder\";}',1,1,'',0),(1,'<name>',1024392098,14,3,'user_group',2,1,3,1048494743,14,'25b4268cdcd01921b808a0d854b877ef','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:10:\"User group\";}',1,1,'',0),(1,'<first_name> <last_name>',1024392098,14,4,'user',2,0,3,1082018364,14,'40faa822edc579b02c25f6bb7beec3ad','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"User\";}',1,1,'',0),(0,'<subject>',1052385685,14,13,'comment',2,0,3,1082455144,14,'000c14f4f475e9f2955dedab72799941','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:7:\"Comment\";}',1,1,'',0),(1,'<name>',1081858024,14,14,'common_ini_settings',2,0,3,1081858024,14,'ffedf2e73b1ea0c3e630e42e2db9c900','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:19:\"Common ini settings\";}',1,1,'',0),(1,'<title>',1081858045,14,15,'template_look',2,0,3,1360948962,14,'59b43cd9feaaf0e45ac974fb4bbd3f92','a:3:{i:0;s:0:\"\";s:16:\"always-available\";b:0;s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:13:\"Site Surround\";}',1,1,'',0),(0,'<name>',1360944309,14,17,'blog',2,1,3,1360945234,14,'3a6f9c1f075b3bf49d7345576b196fe8','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Blog\";}',2,0,'<url_slug|name>',0),(0,'<title>',1360944309,14,18,'blog_post',2,1,3,1360946113,14,'7ecb961056b7cbb30f22a91357e0a007','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:9:\"Blog post\";}',1,1,'',0),(0,'<name>',1360944310,14,26,'file',2,0,3,1360947312,14,'637d58bfddf164627bdfd265733280a0','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"File\";}',1,1,'',0),(0,'<name>',1360944310,14,27,'image',2,0,3,1360947137,14,'f6df12aa74e36230eb675f364fccd25a','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:5:\"Image\";}',1,1,'',0),(0,'<name>',1360944310,14,28,'link',2,0,3,1360946422,14,'74ec6507063150bc813549b22534ad48','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Link\";}',1,1,'',0),(0,'<title>',1360946154,14,38,'series',2,0,3,1360946364,14,'9a314db229db539a1d789d29714d989f','a:2:{s:6:\"eng-US\";s:51:\"Combines Blog Posts together in to a special series\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:6:\"Series\";s:16:\"always-available\";s:6:\"eng-US\";}',1,1,'<url_slug|title>',0),(0,'<title>',1360949566,14,39,'article',2,0,3,1360949616,14,'8f0c61164cdc6c20c690e7733c1543ba','a:2:{s:6:\"eng-US\";s:51:\"Stub article class just to keep ezdemo bundle happy\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:7:\"Article\";s:16:\"always-available\";s:6:\"eng-US\";}',1,1,'',0);
/*!40000 ALTER TABLE `ezcontentclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_attribute`
--

DROP TABLE IF EXISTS `ezcontentclass_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_attribute` (
  `can_translate` int(11) DEFAULT '1',
  `category` varchar(25) NOT NULL DEFAULT '',
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `data_float1` double DEFAULT NULL,
  `data_float2` double DEFAULT NULL,
  `data_float3` double DEFAULT NULL,
  `data_float4` double DEFAULT NULL,
  `data_int1` int(11) DEFAULT NULL,
  `data_int2` int(11) DEFAULT NULL,
  `data_int3` int(11) DEFAULT NULL,
  `data_int4` int(11) DEFAULT NULL,
  `data_text1` varchar(50) DEFAULT NULL,
  `data_text2` varchar(50) DEFAULT NULL,
  `data_text3` varchar(50) DEFAULT NULL,
  `data_text4` varchar(255) DEFAULT NULL,
  `data_text5` longtext,
  `data_type_string` varchar(50) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL DEFAULT '',
  `is_information_collector` int(11) NOT NULL DEFAULT '0',
  `is_required` int(11) NOT NULL DEFAULT '0',
  `is_searchable` int(11) NOT NULL DEFAULT '0',
  `placement` int(11) NOT NULL DEFAULT '0',
  `serialized_data_text` longtext,
  `serialized_description_list` longtext,
  `serialized_name_list` longtext NOT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`),
  KEY `ezcontentclass_attr_ccid` (`contentclass_id`)
) ENGINE=InnoDB AUTO_INCREMENT=315 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_attribute`
--

LOCK TABLES `ezcontentclass_attribute` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_attribute` DISABLE KEYS */;
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',1,0,0,0,0,255,0,0,0,'Folder','','','','','ezstring',4,'name',0,1,1,1,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Name\";}',0),(1,'',3,0,0,0,0,255,0,0,0,'','','','','','ezstring',6,'name',0,1,1,1,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Name\";}',0),(1,'',3,0,0,0,0,255,0,0,0,'','','','','','ezstring',7,'description',0,0,1,2,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:11:\"Description\";}',0),(1,'',4,0,0,0,0,255,0,0,0,'','','','','','ezstring',8,'first_name',0,1,1,1,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:10:\"First name\";}',0),(1,'',4,0,0,0,0,255,0,0,0,'','','','','','ezstring',9,'last_name',0,1,1,2,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:9:\"Last name\";}',0),(0,'',4,0,0,0,0,0,0,0,0,'','','','','','ezuser',12,'user_account',0,1,1,3,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:12:\"User account\";}',0),(1,'',1,0,0,0,0,5,0,0,0,'','','','','','ezxmltext',119,'short_description',0,0,1,3,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:7:\"Summary\";}',0),(1,'',13,0,0,0,0,100,0,0,0,'','','','','','ezstring',149,'subject',0,1,1,1,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:7:\"Subject\";}',0),(1,'',13,0,0,0,0,0,0,0,0,'','','','','','ezstring',150,'author',0,1,1,2,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:6:\"Author\";}',0),(1,'',13,0,0,0,0,20,0,0,0,'','','','','','eztext',151,'message',0,1,1,3,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:7:\"Message\";}',0),(1,'',1,0,0,0,0,100,0,0,0,'','','','','','ezstring',155,'short_name',0,0,1,2,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:10:\"Short name\";}',0),(1,'',1,0,0,0,0,20,0,0,0,'','','','','','ezxmltext',156,'description',0,0,1,4,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:11:\"Description\";}',0),(0,'',1,0,0,0,0,0,0,1,0,'','','','','','ezboolean',158,'show_children',0,0,0,5,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:17:\"Display sub items\";}',0),(1,'',14,0,0,0,0,0,0,0,0,'','','','','','ezstring',159,'name',0,0,1,1,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Name\";}',0),(0,'',14,0,0,0,0,1,0,0,0,'site.ini','SiteSettings','IndexPage','','override;user;admin;demo','ezinisetting',160,'indexpage',0,0,0,2,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:10:\"Index Page\";}',0),(0,'',14,0,0,0,0,1,0,0,0,'site.ini','SiteSettings','DefaultPage','','override;user;admin;demo','ezinisetting',161,'defaultpage',0,0,0,3,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:12:\"Default Page\";}',0),(0,'',14,0,0,0,0,2,0,0,0,'site.ini','DebugSettings','DebugOutput','','override;user;admin;demo','ezinisetting',162,'debugoutput',0,0,0,4,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:12:\"Debug Output\";}',0),(0,'',14,0,0,0,0,2,0,0,0,'site.ini','DebugSettings','DebugByIP','','override;user;admin;demo','ezinisetting',163,'debugbyip',0,0,0,5,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:11:\"Debug By IP\";}',0),(0,'',14,0,0,0,0,6,0,0,0,'site.ini','DebugSettings','DebugIPList','','override;user;admin;demo','ezinisetting',164,'debugiplist',0,0,0,6,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:13:\"Debug IP List\";}',0),(0,'',14,0,0,0,0,2,0,0,0,'site.ini','DebugSettings','DebugRedirection','','override;user;admin;demo','ezinisetting',165,'debugredirection',0,0,0,7,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:17:\"Debug Redirection\";}',0),(0,'',14,0,0,0,0,2,0,0,0,'site.ini','ContentSettings','ViewCaching','','override;user;admin;demo','ezinisetting',166,'viewcaching',0,0,0,8,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:12:\"View Caching\";}',0),(0,'',14,0,0,0,0,2,0,0,0,'site.ini','TemplateSettings','TemplateCache','','override;user;admin;demo','ezinisetting',167,'templatecache',0,0,0,9,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:14:\"Template Cache\";}',0),(0,'',14,0,0,0,0,2,0,0,0,'site.ini','TemplateSettings','TemplateCompile','','override;user;admin;demo','ezinisetting',168,'templatecompile',0,0,0,10,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:16:\"Template Compile\";}',0),(0,'',14,0,0,0,0,6,0,0,0,'image.ini','small','Filters','','override;user;admin;demo','ezinisetting',169,'imagesmall',0,0,0,11,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:16:\"Image Small Size\";}',0),(0,'',14,0,0,0,0,6,0,0,0,'image.ini','medium','Filters','','override;user;admin;demo','ezinisetting',170,'imagemedium',0,0,0,12,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:17:\"Image Medium Size\";}',0),(0,'',14,0,0,0,0,6,0,0,0,'image.ini','large','Filters','','override;user;admin;demo','ezinisetting',171,'imagelarge',0,0,0,13,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:16:\"Image Large Size\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezimage',174,'header_image',0,0,0,1,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:3:{i:0;s:0:\"\";s:16:\"always-available\";b:0;s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:12:\"Header Image\";}',0),(1,'',4,0,0,0,0,10,0,0,0,'','','','','','eztext',179,'signature',0,0,1,4,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:9:\"Signature\";}',0),(1,'',4,0,0,0,0,1,0,0,0,'','','','','','ezimage',180,'image',0,0,0,5,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:5:\"Image\";}',0),(1,'',17,0,0,0,0,0,0,0,0,'','','','','','ezstring',193,'name',0,0,1,1,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Name\";}',0),(1,'',17,0,0,0,0,5,0,0,0,'','','','','','ezxmltext',194,'description',0,0,1,3,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:11:\"Description\";}',0),(1,'',18,0,0,0,0,0,0,0,0,'','','','','','ezstring',196,'title',0,0,1,1,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:5:\"Title\";}',0),(1,'',18,0,0,0,0,25,0,0,0,'','','','','','ezxmltext',197,'body',0,0,1,3,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Body\";}',0),(1,'',18,0,0,0,0,1,0,0,0,'','','','','','ezdatetime',198,'publication_date',0,0,1,4,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:16:\"Publication date\";}',0),(1,'',18,0,0,0,0,0,0,0,0,'','','','','','ezcomcomments',200,'comments',0,0,1,5,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:8:\"Comments\";}',0),(1,'',26,0,0,0,0,0,0,0,0,'New file','','','','','ezstring',238,'name',0,1,1,1,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Name\";}',0),(1,'',26,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',239,'description',0,0,1,2,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:11:\"Description\";}',0),(1,'',26,0,0,0,0,0,0,0,0,'','','','','','ezbinaryfile',240,'file',0,1,0,3,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"File\";}',0),(1,'',26,0,0,0,0,0,0,0,0,'','','','','','ezsrrating',241,'star_rating',0,0,1,4,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:11:\"Star Rating\";}',0),(1,'',26,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',242,'tags',0,0,1,5,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Tags\";}',0),(1,'',26,0,0,0,0,0,0,0,0,'','','','','','ezcomcomments',243,'comments',0,0,1,6,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:8:\"Comments\";}',0),(1,'',27,0,0,0,0,150,0,0,0,'','','','','','ezstring',244,'name',0,1,1,1,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Name\";}',0),(1,'',27,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',245,'caption',0,0,1,2,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:7:\"Caption\";}',0),(1,'',27,0,0,0,0,2,0,0,0,'','','','','','ezimage',246,'image',0,0,0,3,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:5:\"Image\";}',0),(1,'',27,0,0,0,0,0,0,0,0,'','','','','','ezsrrating',247,'star_rating',0,0,1,4,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:11:\"Star Rating\";}',0),(1,'',27,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',248,'tags',0,0,1,5,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Tags\";}',0),(1,'',28,0,0,0,0,255,0,0,0,'','','','','','ezstring',249,'name',0,1,1,1,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Name\";}',0),(1,'',28,0,0,0,0,20,0,0,0,'','','','','','ezxmltext',250,'description',0,0,1,2,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:11:\"Description\";}',0),(1,'',28,0,0,0,0,0,0,0,0,'','','','','','ezurl',251,'location',0,0,0,3,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:8:\"Location\";}',0),(1,'',28,0,0,0,0,0,0,1,0,'','','','','','ezboolean',252,'open_in_new_window',0,0,1,4,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:18:\"Open in new window\";}',0),(1,'',1,0,0,0,0,0,0,0,0,'','','','','','ezpage',299,'call_for_action',0,0,0,6,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:15:\"Call For Action\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',1,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',300,'tags',0,0,0,7,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'meta',17,0,0,0,0,0,0,0,0,'','','','','','ezstring',301,'url_slug',0,0,0,4,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:49:\"Place a value here to represent this blog in URLs\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:8:\"URL Slug\";}',0),(1,'',17,0,0,0,0,0,0,0,0,'','','','','','ezstring',302,'tagline',0,0,1,2,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:7:\"Tagline\";}',0),(1,'',18,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',303,'summary',0,0,1,2,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:7:\"Summary\";}',0),(1,'',38,0,0,0,0,0,0,0,0,'','','','','','ezstring',304,'title',0,0,1,1,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:12:\"Series title\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',38,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',305,'description',0,0,1,2,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',38,0,0,0,0,0,0,0,0,'','','','','<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-objects><constraints><allowed-class contentclass-identifier=\"blog_post\"/></constraints><type value=\"2\"/><selection_type value=\"0\"/><object_class value=\"\"/><contentobject-placement/></related-objects>\n','ezobjectrelationlist',306,'posts',0,0,1,3,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:45:\"Select the posts that are part of this series\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:5:\"Posts\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'meta',38,0,0,0,0,0,0,0,0,'','','','','','ezstring',307,'url_slug',0,0,0,4,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:48:\"Portion of the URL to represent this series page\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:8:\"URL Slug\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',308,'title',0,0,0,2,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:22:\"Title/name of the site\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',15,0,0,0,0,10,0,0,0,'','','','','','eztext',309,'meta_description',0,0,0,3,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:16:\"Meta Description\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',15,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',311,'sidebar',0,0,0,4,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:65:\"Sidebar items entered here will appear on every page of the site.\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:14:\"Global Sidebar\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',15,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',312,'footer',0,0,0,5,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:6:\"Footer\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',313,'ga_code',0,0,0,6,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:24:\"Google Analytics UA code\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',39,0,0,0,0,0,0,0,0,'','','','','','ezstring',314,'title',0,1,0,1,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-US\";}',0);
/*!40000 ALTER TABLE `ezcontentclass_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_classgroup`
--

DROP TABLE IF EXISTS `ezcontentclass_classgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_classgroup` (
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_version` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `group_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`contentclass_id`,`contentclass_version`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_classgroup`
--

LOCK TABLES `ezcontentclass_classgroup` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_classgroup` DISABLE KEYS */;
INSERT INTO `ezcontentclass_classgroup` VALUES (1,0,1,'Content'),(3,0,2,'Users'),(4,0,2,'Users'),(13,0,1,'Content'),(14,0,4,'Setup'),(15,0,4,'Setup'),(17,0,1,'Content'),(18,0,1,'Content'),(26,0,3,'Media'),(27,0,3,'Media'),(28,0,1,'Content'),(38,0,1,'Content'),(39,0,1,'Content');
/*!40000 ALTER TABLE `ezcontentclass_classgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_name`
--

DROP TABLE IF EXISTS `ezcontentclass_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_name` (
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_version` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `language_locale` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`contentclass_id`,`contentclass_version`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_name`
--

LOCK TABLES `ezcontentclass_name` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_name` DISABLE KEYS */;
INSERT INTO `ezcontentclass_name` VALUES (1,0,3,'eng-US','Folder'),(3,0,3,'eng-US','User group'),(4,0,3,'eng-US','User'),(13,0,3,'eng-US','Comment'),(14,0,3,'eng-US','Common ini settings'),(15,0,3,'eng-US','Site Surround'),(17,0,3,'eng-US','Blog'),(18,0,3,'eng-US','Blog post'),(26,0,3,'eng-US','File'),(27,0,3,'eng-US','Image'),(28,0,3,'eng-US','Link'),(38,0,3,'eng-US','Series'),(39,0,3,'eng-US','Article');
/*!40000 ALTER TABLE `ezcontentclass_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclassgroup`
--

DROP TABLE IF EXISTS `ezcontentclassgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclassgroup` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclassgroup`
--

LOCK TABLES `ezcontentclassgroup` WRITE;
/*!40000 ALTER TABLE `ezcontentclassgroup` DISABLE KEYS */;
INSERT INTO `ezcontentclassgroup` VALUES (1031216928,14,1,1033922106,14,'Content'),(1031216941,14,2,1033922113,14,'Users'),(1032009743,14,3,1033922120,14,'Media'),(1081858024,14,4,1081858024,14,'Setup');
/*!40000 ALTER TABLE `ezcontentclassgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject`
--

DROP TABLE IF EXISTS `ezcontentobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject` (
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `current_version` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `initial_language_id` int(11) NOT NULL DEFAULT '0',
  `language_mask` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `published` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) DEFAULT NULL,
  `section_id` int(11) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezcontentobject_remote_id` (`remote_id`),
  KEY `ezcontentobject_classid` (`contentclass_id`),
  KEY `ezcontentobject_currentversion` (`current_version`),
  KEY `ezcontentobject_lmask` (`language_mask`),
  KEY `ezcontentobject_owner` (`owner_id`),
  KEY `ezcontentobject_pub` (`published`),
  KEY `ezcontentobject_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject`
--

LOCK TABLES `ezcontentobject` WRITE;
/*!40000 ALTER TABLE `ezcontentobject` DISABLE KEYS */;
INSERT INTO `ezcontentobject` VALUES (3,1,4,2,3,1033917596,'Users',14,1033917596,'f5c88a2209584891056f987fd965b0ba',2,1),(4,2,10,2,3,1072180405,'Anonymous User',14,1033920665,'faaeb9be3bd98ed09f606fc16d144eca',2,1),(3,2,11,2,3,1360944319,'Members',14,1033920746,'5f7f0bdb3381d6a461d8c29ff53d908f',2,1),(3,1,12,2,3,1033920775,'Administrator users',14,1033920775,'9b47a45624b023b1a76c73b74d704acf',2,1),(3,1,13,2,3,1033920794,'Editors',14,1033920794,'3c160cca19fb135f83bd02d911f04db2',2,1),(4,4,14,2,3,1360944318,'Administrator User',14,1033920830,'1bb4fe25487f05527efa8bfd394cecc7',2,1),(1,1,41,2,3,1060695457,'Media',14,1060695457,'a6e35cbcb7cd6ae4b691f3eee30cd262',3,1),(3,1,42,2,3,1072180330,'Anonymous Users',14,1072180330,'15b256dbea2ae72418ff5facc999e8f9',2,1),(1,1,45,2,3,1079684190,'Setup',14,1079684190,'241d538ce310074e602f29f49e44e938',4,1),(1,1,49,2,3,1080220197,'Images',14,1080220197,'e7ff633c6b8e0fd3531e74c6e712bead',3,1),(1,1,50,2,3,1080220220,'Files',14,1080220220,'732a5acd01b51a6fe6eab448ad4138a9',3,1),(1,1,51,2,3,1080220233,'Multimedia',14,1080220233,'09082deb98662a104f325aaa8c4933d3',3,1),(14,1,52,2,2,1082016591,'Common INI settings',14,1082016591,'27437f3547db19cf81a33c92578b2c89',4,1),(15,3,54,2,2,1360949045,'Partial Content',14,1082016652,'8b8b22fe3c6061ed500fbd2b377b885f',5,1),(1,1,56,2,3,1103023132,'Design',14,1103023132,'08799e609893f7aba22f10cb466d9cc8',5,1),(3,1,99,2,3,1360944319,'Partners',14,1360944319,'97ce7f8d4a2eecfff09544872f195a62',2,1),(17,1,100,2,2,1360946849,'Home',14,1360946849,'2253bf0cb3db7235975f988fff5d7836',1,1),(17,1,101,2,2,1360946942,'Code',14,1360946942,'f8e4908901776f8eb36e9c7a7e9f0c05',1,1),(17,1,102,2,2,1360946971,'Series',14,1360946971,'c8945c20ee6635de9eb5c5a9bb80f971',1,1),(18,1,103,2,2,1360947072,'Working with eZ Publish 5 - Introduction',14,1360947072,'6272723ff5e63f5bc28226ac99d66d3b',1,1),(17,1,104,2,2,1360948164,'About',14,1360948164,'88077edd7594031628d4fcb4e3b17bb8',1,1),(18,1,105,2,2,1360955738,'Working With eZ Publish 5 - Symfony',14,1360955738,'ea0d067b07a18755b8a05bae6190e162',1,1),(38,1,106,2,2,1360955829,'Working With eZ Publish 5',14,1360955829,'a1198672bfa240366eaaded4a7571ba7',1,1);
/*!40000 ALTER TABLE `ezcontentobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_attribute`
--

DROP TABLE IF EXISTS `ezcontentobject_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_attribute` (
  `attribute_original_id` int(11) DEFAULT '0',
  `contentclassattribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `data_float` double DEFAULT NULL,
  `data_int` int(11) DEFAULT NULL,
  `data_text` longtext,
  `data_type_string` varchar(50) DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_code` varchar(20) NOT NULL DEFAULT '',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `sort_key_int` int(11) NOT NULL DEFAULT '0',
  `sort_key_string` varchar(255) NOT NULL DEFAULT '',
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`),
  KEY `ezcontentobject_attr_id` (`id`),
  KEY `ezcontentobject_attribute_co_id_ver_lang_code` (`contentobject_id`,`version`,`language_code`),
  KEY `ezcontentobject_attribute_contentobject_id` (`contentobject_id`),
  KEY `ezcontentobject_attribute_language_code` (`language_code`),
  KEY `sort_key_int` (`sort_key_int`),
  KEY `sort_key_string` (`sort_key_string`)
) ENGINE=InnoDB AUTO_INCREMENT=569 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_attribute`
--

LOCK TABLES `ezcontentobject_attribute` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_attribute` DISABLE KEYS */;
INSERT INTO `ezcontentobject_attribute` VALUES (0,7,4,NULL,NULL,'Main group','ezstring',7,'eng-US',3,0,'',1),(0,6,4,NULL,NULL,'Users','ezstring',8,'eng-US',3,0,'',1),(0,8,10,0,0,'Anonymous','ezstring',19,'eng-US',3,0,'anonymous',2),(0,9,10,0,0,'User','ezstring',20,'eng-US',3,0,'user',2),(0,12,10,0,0,'','ezuser',21,'eng-US',3,0,'',2),(0,6,11,0,0,'Guest accounts','ezstring',22,'eng-US',3,0,'',1),(0,6,11,0,0,'Members','ezstring',22,'eng-US',3,0,'members',2),(0,7,11,0,0,'','ezstring',23,'eng-US',3,0,'',1),(0,7,11,0,0,'','ezstring',23,'eng-US',3,0,'',2),(0,6,12,0,0,'Administrator users','ezstring',24,'eng-US',3,0,'',1),(0,7,12,0,0,'','ezstring',25,'eng-US',3,0,'',1),(0,6,13,0,0,'Editors','ezstring',26,'eng-US',3,0,'',1),(0,7,13,0,0,'','ezstring',27,'eng-US',3,0,'',1),(0,8,14,0,0,'Administrator','ezstring',28,'eng-US',3,0,'administrator',3),(0,8,14,0,0,'Administrator','ezstring',28,'eng-US',3,0,'administrator',4),(0,9,14,0,0,'User','ezstring',29,'eng-US',3,0,'user',3),(0,9,14,0,0,'User','ezstring',29,'eng-US',3,0,'user',4),(30,12,14,0,0,'','ezuser',30,'eng-US',3,0,'',3),(30,12,14,0,0,'','ezuser',30,'eng-US',3,0,'',4),(0,4,41,0,0,'Media','ezstring',98,'eng-US',3,0,'',1),(0,119,41,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',99,'eng-US',3,0,'',1),(0,6,42,0,0,'Anonymous Users','ezstring',100,'eng-US',3,0,'anonymous users',1),(0,7,42,0,0,'User group for the anonymous user','ezstring',101,'eng-US',3,0,'user group for the anonymous user',1),(0,155,41,0,0,'','ezstring',103,'eng-US',3,0,'',1),(0,156,41,0,1045487555,'','ezxmltext',105,'eng-US',3,0,'',1),(0,158,41,0,0,'','ezboolean',109,'eng-US',3,0,'',1),(0,4,45,0,0,'Setup','ezstring',123,'eng-US',3,0,'setup',1),(0,155,45,0,0,'','ezstring',124,'eng-US',3,0,'',1),(0,119,45,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',125,'eng-US',3,0,'',1),(0,156,45,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',126,'eng-US',3,0,'',1),(0,158,45,0,0,'','ezboolean',128,'eng-US',3,0,'',1),(0,4,49,0,0,'Images','ezstring',142,'eng-US',3,0,'images',1),(0,155,49,0,0,'','ezstring',143,'eng-US',3,0,'',1),(0,119,49,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',144,'eng-US',3,0,'',1),(0,156,49,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',145,'eng-US',3,0,'',1),(0,158,49,0,1,'','ezboolean',146,'eng-US',3,1,'',1),(0,4,50,0,0,'Files','ezstring',147,'eng-US',3,0,'files',1),(0,155,50,0,0,'','ezstring',148,'eng-US',3,0,'',1),(0,119,50,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',149,'eng-US',3,0,'',1),(0,156,50,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',150,'eng-US',3,0,'',1),(0,158,50,0,1,'','ezboolean',151,'eng-US',3,1,'',1),(0,4,51,0,0,'Multimedia','ezstring',152,'eng-US',3,0,'multimedia',1),(0,155,51,0,0,'','ezstring',153,'eng-US',3,0,'',1),(0,119,51,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',154,'eng-US',3,0,'',1),(0,156,51,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',155,'eng-US',3,0,'',1),(0,158,51,0,1,'','ezboolean',156,'eng-US',3,1,'',1),(0,159,52,0,0,'Common INI settings','ezstring',157,'eng-US',2,0,'common ini settings',1),(0,160,52,0,0,'/content/view/full/2/','ezinisetting',158,'eng-US',2,0,'',1),(0,161,52,0,0,'/content/view/full/2','ezinisetting',159,'eng-US',2,0,'',1),(0,162,52,0,0,'disabled','ezinisetting',160,'eng-US',2,0,'',1),(0,163,52,0,0,'disabled','ezinisetting',161,'eng-US',2,0,'',1),(0,164,52,0,0,'','ezinisetting',162,'eng-US',2,0,'',1),(0,165,52,0,0,'enabled','ezinisetting',163,'eng-US',2,0,'',1),(0,166,52,0,0,'disabled','ezinisetting',164,'eng-US',2,0,'',1),(0,167,52,0,0,'enabled','ezinisetting',165,'eng-US',2,0,'',1),(0,168,52,0,0,'enabled','ezinisetting',166,'eng-US',2,0,'',1),(0,169,52,0,0,'=geometry/scale=100;100','ezinisetting',167,'eng-US',2,0,'',1),(0,170,52,0,0,'=geometry/scale=200;200','ezinisetting',168,'eng-US',2,0,'',1),(0,171,52,0,0,'=geometry/scale=300;300','ezinisetting',169,'eng-US',2,0,'',1),(0,174,54,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Partial-Content1.png\" suffix=\"png\" basename=\"Partial-Content1\" dirpath=\"var/storage/images/design/plain-site/172-2-eng-US\" url=\"var/storage/images/design/plain-site/172-2-eng-US/Partial-Content1.png\" original_filename=\"logo.png\" mime_type=\"image/png\" width=\"138\" height=\"46\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1360944319\"><original attribute_id=\"172\" attribute_version=\"2\" attribute_language=\"eng-US\"/><alias name=\"reference\" filename=\"Partial-Content1_reference.png\" suffix=\"png\" dirpath=\"var/storage/images/design/plain-site/172-2-eng-US\" url=\"var/storage/images/design/plain-site/172-2-eng-US/Partial-Content1_reference.png\" mime_type=\"image/png\" width=\"138\" height=\"46\" alias_key=\"2605465115\" timestamp=\"1360948970\" is_valid=\"1\"/><alias name=\"small\" filename=\"Partial-Content1_small.png\" suffix=\"png\" dirpath=\"var/storage/images/design/plain-site/172-2-eng-US\" url=\"var/storage/images/design/plain-site/172-2-eng-US/Partial-Content1_small.png\" mime_type=\"image/png\" width=\"100\" height=\"33\" alias_key=\"2343348577\" timestamp=\"1360948970\" is_valid=\"1\"/></ezimage>\n','ezimage',172,'eng-US',2,0,'',2),(0,174,54,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Partial-Content.png\" suffix=\"png\" basename=\"Partial-Content\" dirpath=\"var/ezdemo_site/storage/images/design/partial-content/172-2-eng-US\" url=\"var/ezdemo_site/storage/images/design/partial-content/172-2-eng-US/Partial-Content.png\" original_filename=\"logo.png\" mime_type=\"image/png\" width=\"138\" height=\"46\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1360944319\"><original attribute_id=\"172\" attribute_version=\"2\" attribute_language=\"eng-US\"/><alias name=\"reference\" filename=\"Partial-Content_reference.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/design/partial-content/172-2-eng-US\" url=\"var/ezdemo_site/storage/images/design/partial-content/172-2-eng-US/Partial-Content_reference.png\" mime_type=\"image/png\" width=\"138\" height=\"46\" alias_key=\"2605465115\" timestamp=\"1360948970\" is_valid=\"1\"/><alias name=\"small\" filename=\"Partial-Content_small.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/design/partial-content/172-2-eng-US\" url=\"var/ezdemo_site/storage/images/design/partial-content/172-2-eng-US/Partial-Content_small.png\" mime_type=\"image/png\" width=\"100\" height=\"33\" alias_key=\"2343348577\" timestamp=\"1360948970\" is_valid=\"1\"/><alias name=\"medium\" filename=\"Partial-Content_medium.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/design/partial-content/172-2-eng-US\" url=\"var/ezdemo_site/storage/images/design/partial-content/172-2-eng-US/Partial-Content_medium.png\" mime_type=\"image/png\" width=\"138\" height=\"46\" alias_key=\"405413724\" timestamp=\"1360948975\" is_valid=\"1\"/><alias name=\"large\" filename=\"Partial-Content_large.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/design/partial-content/172-2-eng-US\" url=\"var/ezdemo_site/storage/images/design/partial-content/172-2-eng-US/Partial-Content_large.png\" mime_type=\"image/png\" width=\"138\" height=\"46\" alias_key=\"1592566908\" timestamp=\"1360948991\" is_valid=\"1\"/></ezimage>\n','ezimage',172,'eng-US',2,0,'',3),(0,179,10,0,0,'','eztext',177,'eng-US',3,0,'',2),(0,179,14,0,0,'','eztext',178,'eng-US',3,0,'',3),(0,179,14,0,0,'','eztext',178,'eng-US',3,0,'',4),(0,180,10,0,0,'','ezimage',179,'eng-US',3,0,'',2),(0,180,14,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1301057722\"><original attribute_id=\"180\" attribute_version=\"3\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',180,'eng-US',3,0,'',3),(0,180,14,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1301057722\"><original attribute_id=\"180\" attribute_version=\"3\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',180,'eng-US',3,0,'',4),(0,4,56,0,NULL,'Design','ezstring',181,'eng-US',3,0,'design',1),(0,155,56,0,NULL,'','ezstring',182,'eng-US',3,0,'',1),(0,119,56,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',183,'eng-US',3,0,'',1),(0,156,56,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',184,'eng-US',3,0,'',1),(0,158,56,0,1,'','ezboolean',185,'eng-US',3,1,'',1),(0,6,99,0,NULL,'Partners','ezstring',506,'eng-US',3,0,'partners',1),(0,7,99,0,NULL,'','ezstring',507,'eng-US',3,0,'',1),(0,299,41,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',508,'eng-US',2,0,'',1),(0,299,45,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',509,'eng-US',2,0,'',1),(0,299,49,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',510,'eng-US',2,0,'',1),(0,299,50,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',511,'eng-US',2,0,'',1),(0,299,51,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',512,'eng-US',2,0,'',1),(0,299,56,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',513,'eng-US',2,0,'',1),(0,300,41,0,NULL,'','ezkeyword',521,'eng-US',2,0,'',1),(0,300,45,0,NULL,'','ezkeyword',522,'eng-US',2,0,'',1),(0,300,49,0,NULL,'','ezkeyword',523,'eng-US',2,0,'',1),(0,300,50,0,NULL,'','ezkeyword',524,'eng-US',2,0,'',1),(0,300,51,0,NULL,'','ezkeyword',525,'eng-US',2,0,'',1),(0,300,56,0,NULL,'','ezkeyword',526,'eng-US',2,0,'',1),(0,193,100,0,NULL,'Home','ezstring',534,'eng-US',2,0,'home',1),(0,302,100,0,NULL,'','ezstring',535,'eng-US',2,0,'',1),(0,194,100,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',536,'eng-US',2,0,'',1),(0,301,100,0,NULL,'','ezstring',537,'eng-US',2,0,'',1),(0,193,101,0,NULL,'Code','ezstring',538,'eng-US',2,0,'code',1),(0,302,101,0,NULL,'','ezstring',539,'eng-US',2,0,'',1),(0,194,101,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',540,'eng-US',2,0,'',1),(0,301,101,0,NULL,'','ezstring',541,'eng-US',2,0,'',1),(0,193,102,0,NULL,'Series','ezstring',542,'eng-US',2,0,'series',1),(0,302,102,0,NULL,'','ezstring',543,'eng-US',2,0,'',1),(0,194,102,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',544,'eng-US',2,0,'',1),(0,301,102,0,NULL,'','ezstring',545,'eng-US',2,0,'',1),(0,196,103,0,NULL,'Working with eZ Publish 5 - Introduction','ezstring',546,'eng-US',2,0,'working with ez publish 5 - introduction',1),(0,303,103,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',547,'eng-US',2,0,'',1),(0,197,103,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>In early February, I had the opportunity to spend some learning some of the ins and outs of working with eZ Publish version 5 at a training event from eZ Systems. Having developed for years in eZ Publish, I knew 5 was going to be a big change, but didn\'t really consider <emphasize>how much</emphasize> change would be involved. After digging in, I found that there\'s a lot to like about the new system. The goal of this series of blog posts will be to help current eZ Publish developers get up to speed.</paragraph><section><header>Some Things To Clear Up</header><paragraph>First things first: Before we get in to code, let\'s address some facts and set aside any preconceived notions about what we\'re getting into: </paragraph><section><section><header>eZ Publish 5 is a Totally New CMS</header><paragraph>If you\'ve read anything about eZ Publish 5, you probably know that most of eZ\'s core components are being replaced by the Symfony framework.</paragraph><paragraph>The version number hints that this new release, like the past major releases, is a continuation of the same system many of us have used for years. And while that system is still around, the \'5\' parts of eZ 5 (the Symfony parts) are all new. In essence, <emphasize>eZ Publish 5 is a ground-up rewrite of the entire</emphasize> CMS. The overall design direction is that where a component of the Symfony stack can be used instead of the counterpart from eZ Publish 4, the eZ Publish 4 component has been replaced. Some examples:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">All interaction is handled via Symfony Controllers</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZ templates are replaced by Twig templates</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ini files replaced by yml files</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZjscore replaced by Assetic</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZ Publish caching is replaced by Symfony\'s caching</paragraph></li></ul></paragraph><paragraph>The core of the product, the eZ kernel itself, is now accessed via a Public API, which will remain stable in future versions. For developers, this is great news, since it means you\'re no longer hooking into core classes at random and hoping they don\'t change from version to version. </paragraph><paragraph>In general, all of the architectural decisions that version 5 represents are great news. The Symfony community has a great ecosystem and a lot of mature, elegant code. By becoming a part of it, eZ developers spend less time working on the underlying platform components, and more time delivering the best CMS possible. From a business perspective, you\'re more likely to find developers with transferrable skills on Symfony, so it\'s a long-term win on that side as well.</paragraph></section></section><section><section><header>eZ Publish 5 isn\'t a New CMS</header><paragraph>Wait, what? Well, not yet anyway. While all of the pieces are here to build a site in eZ Publish 5, the administrative interface and a lot of the other system components (commenting, front-end editing, etc) have not yet been rewritten on the new stack. So for now, you\'ll be using a lot of the eZ Publish 4 code in your normal workflow. In fact, <strong>all</strong> of the previous eZ Publish code (now rechristened as eZ Publish Legacy) ships as part of eZ Publish 5, right alongside the shiny new Symfony-based kernel. This means that the CMS doesn\'t lose any features as it moves over to the new architecture, but it also means that there are some areas where you need to understand both systems or in some cases, duplicate effort.</paragraph></section></section><section><section><header>You don\'t have to switch right now</header><paragraph>The important thing to remember is that you dont <emphasize>have </emphasize>to start using the new architecture right now, or even this year. The development roadmap calls for the legacy architecture to be available for a long time, and there are a lot of clever methods built in to the Symfony architecture to allow it to fall back to using legacy components somewhat transparently. So you can choose to use as much or as little of the new architecture as you like. </paragraph></section></section></section><section><header>The Project</header><paragraph>The point of this series, though, is to work with the shiny new stuff, so we\'re going to try to use as much of eZ Publish 5\'s Symfony components as we can. And to do that, I\'ve selected a fairly basic project - this blog! Over the next few pages, we\'ll work on building out the templates for the blog, learning the components of eZ 5 as we go. Here\'s a quick overview of what we\'re trying to build:</paragraph><section><header>Data Model</header><paragraph>The model for the blog will be fairly basic. We\'ll have content types of \'blog\' and \'blog_post\'. A Blog will be a simple container for blog posts, and have a name and description. A Blog Post will have fields for title, tagline, summary, body, and tags.</paragraph></section><section><header>Features</header><paragraph>As far as features go, we\'ll keep things pretty basic - a simple display of blog post summaries in reverse chronological order, paginated. I\'d also like to have a way to edit a sidebar (for featured posts) and a footer. </paragraph></section></section><section><header>What you need to follow along</header><paragraph>I\'ve placed all the code for this site out on github. Note that I\'m linking to the \'tutorial\' branch, which I\'ll always make sure matches this tutorial. The \'master\' branch will be the code that this blog is actually running, which may be enhanced with extra features as time goes on. If you see a problem in either, please feel free to send a pull request, and I\'ll update the tutorial accordingly. There are still some things I\'m learning myself, so I\'ve called out some questions along the way. If you have the answer, drop me a note or a comment!</paragraph><paragraph>You\'ll also need a good working environment. Make sure you have all of the requirements for Symfony and eZ Publish installed.</paragraph><paragraph>Let\'s start by covering some of the basics of Symfony.</paragraph></section></section>\n','ezxmltext',548,'eng-US',2,0,'',1),(0,198,103,0,1360947000,'','ezdatetime',549,'eng-US',2,1360947000,'',1),(0,200,103,1,1,'','ezcomcomments',550,'eng-US',2,0,'',1),(0,193,104,0,NULL,'About','ezstring',551,'eng-US',2,0,'about',1),(0,302,104,0,NULL,'','ezstring',552,'eng-US',2,0,'',1),(0,194,104,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><section><header>What\'s the deal with this blog?</header><paragraph>I\'m Joe Kepley, and Partial Content is my blog. I use this as a space to write about topics related to stuff I do at work, mostly programming for the web. </paragraph><paragraph>This blog also started as a tutorial on eZ Publish 5. You can read the tutorial on this blog, and <link target=\"_blank\" url_id=\"91\">find the code on Github</link>. </paragraph></section><section><header>What\'s the deal with you?</header><paragraph>I\'m a partner at <link url_id=\"92\">Blend Interactive</link>, where I head up the development group. My job is to make sure Blend is using the best available practices wherever possible in our development process, and to make sure that Blend is the best possible place for a developer to work.</paragraph></section><section><header>What\'s up with the name?</header><paragraph>HTTP has a status code: \"<link target=\"_blank\" url_id=\"93\" anchor_name=\"sec10.2.7\">206 Partial Content</link>\". Also, this is a blog so it\'s never \"complete\" content. Also, \"Partial\" means opinionated, and some of it will be that. So it\'s in the running for the world\'s nerdiest play on words, and I\'ll be surprised if anyone ever gets it.</paragraph></section></section>\n','ezxmltext',553,'eng-US',2,0,'',1),(0,301,104,0,NULL,'','ezstring',554,'eng-US',2,0,'',1),(0,308,54,NULL,NULL,NULL,'ezstring',555,'eng-US',2,0,'',2),(0,308,54,0,NULL,'Partial Content','ezstring',555,'eng-US',2,0,'partial content',3),(0,309,54,NULL,NULL,NULL,'eztext',556,'eng-US',2,0,'',2),(0,309,54,0,NULL,'','eztext',556,'eng-US',2,0,'',3),(0,311,54,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',557,'eng-US',2,0,'',2),(0,311,54,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Sidebar items should go here</paragraph></section>\n','ezxmltext',557,'eng-US',2,0,'',3),(0,312,54,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',558,'eng-US',2,0,'',2),(0,312,54,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>©2013 <link target=\"_blank\" url_id=\"92\">Blend Interactive</link>, Inc.</paragraph></section>\n','ezxmltext',558,'eng-US',2,0,'',3),(0,313,54,NULL,NULL,NULL,'ezstring',559,'eng-US',2,0,'',2),(0,313,54,0,NULL,'','ezstring',559,'eng-US',2,0,'',3),(0,196,105,0,NULL,'Working With eZ Publish 5 - Symfony','ezstring',560,'eng-US',2,0,'working with ez publish 5 - symfony',1),(0,303,105,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',561,'eng-US',2,0,'',1),(0,197,105,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Before we dig in and start building a new site, let\'s look over some of the core concepts in Symfony. If you\'ve already got a good handle on Symfony, and aren\'t interested in some of the conceptual changes from eZ Publish 4, you can skip ahead to the next post and start getting your hands dirty.</paragraph><section><header>Model-View-Controller</header><paragraph>If you\'ve worked with Rails, ASP.Net MVC (or to a lesser degree, CakePHP) then you\'re probably familiar with the Model-View-Controller pattern. It provides a standard framework for building PHP applications in a common, organized way. When a request is received, it\'s directed to Symfony, which routes the request to an <strong>action</strong>on a <strong>controller</strong>, which is really just a function defined by the app developer. This function gathers up whatever variables are needed to handle the request from a set of <strong>model</strong> objects. The model objects represent whatever systems the app stores data in (database calls, web APIs, punch cards, whatever). The controller hands back the data it\'s gathered, which is handled by the <strong>view</strong>, which is a template language that\'s used to format the response. </paragraph><paragraph>This all sounds pretty complicated, but in practice it\'s fairly straightforward. If you want your app to render some database output to a page, for example, you simply write a function on a controller class that returns an array containing the data you want to use, then write a template (in Symfony, the Twig templating language is used) that contains the HTML for your page. Using eZ Publish, it\'s even easier since for most pages, you\'ll be using a controller provided by eZ Publish. </paragraph><paragraph>The main principles that drive MVC architecture are <emphasize>separation of concerns</emphasize> and <emphasize>don\'t repeat yourself (DRY)</emphasize>. Since the job of fetching the data for the response (controller) is separate from the format of the response (view), it\'s very easy to change the appearance of the response, or even use JSON, XML, or something else instead of javascript. </paragraph><paragraph>Symfony adds another layer on top of MVC by packaging most of the app components into <emphasize>Bundles</emphasize>, which are directories that organize code around specific aspects of the application. This is sometimes referred to as HMVC (Hierarchical Model-View-Controller). This makes it easier for you to re-use code that other people have written by installing their bundles in to your project.</paragraph></section><section><header>Big Changes from eZ Publish 4</header><paragraph>If you\'re coming to eZ Publish 5 from version 4, there are some major changes that may trip you up unless you\'re looking for them.</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><custom name=\"factbox\" custom:title=\"Note\" custom:align=\"right\"><paragraph>Wherever we\'re talking about \'eZ Publish 5\' here, keep in mind that we\'re only talking about the new, Symfony parts of eZ Publish 5. eZ Publish 4 is still there and uses all of the old concepts just as they\'ve always been.</paragraph></custom></paragraph><section><header>Twig</header><paragraph>The half-Smarty half-PHP template language PHP has used for years is being deprecated in favor of Twig, the template language closely associated with the Symfony framework. Twig templates will look pretty familiar, but function quite a bit differently under the hood. Twig provides some neat new features too, like template inheritance. Both the language itself and the means to extend it are well documented. </paragraph></section><section><header>No more fetch() function</header><paragraph>In eZ Publish 4, if you wanted to pull some extra content from the repository in to your template, you simply called fetch, like so: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal> {def $posts = fetch(content, list, hash(parent_node_id, 2, class_filter_type, \'include\', class_filter_array, array(\'blog_post\')))}</literal></paragraph><paragraph>This is handy, but the problem that arises is that you\'ve no longer separated your concerns. Your view template is now talking directly to the model and handling application logic. Over the years, eZ Publish 4 templates became more and more loaded with logic code, which lead to big, hairy, hard to read templates.</paragraph><paragraph>In the eZ Publish 5 approach, extra data is handled as a nested request to the CMS (a <emphasize>sub-request</emphasize>). This means that you\'ll write the query to retrieve the data as PHP in a controller action, and provide a template to render the results. This sounds like a bit more work, but it leads to better template re-use, and it also gives you a chance to keep any of the complex logic (like turning a list of events into a calendar) out of the template.</paragraph></section><section><header>Single-pass rendering</header><paragraph>Most eZ Publish 4 developers know that a page in eZ 4 is rendered in two steps: the system first renders the \'module result\' (the \'full view\' template of a content object) and then passes the result of that as HTML to a \'pagelayout\', which renders the page surround. If you want the pagelayout template to have access to variables used by the interior template, you need to either pass those variables in a specific structure, or fetch them again. </paragraph><paragraph>In Twig, only one render step occurs for each request (ignoring sub-requests for the moment). The template language provides an inheritance model similar to classes and methods in PHP that still allows you to re-use your template code.</paragraph></section><section><header>Simplified cache</header><paragraph>In eZ Publish 4, there were a lot of pieces involved in caching a page - template cache, block cache, view cache, etc. eZ Publish 5 uses Symfony\'s native caching layer, and for the most part only caches entire requests. Symfony also adheres very closely to the HTTP specification to determine how this cache is managed, so if you\'re not up to speed on HTTP Headers like <link target=\"_blank\" url_id=\"94\" anchor_name=\"sec14.9\">Cache-Control</link> and <link target=\"_blank\" url_id=\"95\">ETag</link>, you\'ll want to brush up before you begin any serious development - but we can skip that stuff for now.</paragraph><paragraph>Let\'s move on and set up an eZ Publish 5 installation.</paragraph></section></section></section>\n','ezxmltext',562,'eng-US',2,0,'',1),(0,198,105,0,1360955640,'','ezdatetime',563,'eng-US',2,1360955640,'',1),(0,200,105,1,1,'','ezcomcomments',564,'eng-US',2,0,'',1),(0,304,106,0,NULL,'Working With eZ Publish 5','ezstring',565,'eng-US',2,0,'working with ez publish 5',1),(0,305,106,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>This series gives you a basic tutorial for building a site (this site, actually) in eZ Publish 5.</paragraph></section>\n','ezxmltext',566,'eng-US',2,0,'',1),(0,306,106,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-objects><relation-list><relation-item priority=\"1\" contentobject-id=\"103\" contentobject-version=\"1\" node-id=\"105\" parent-node-id=\"103\" contentclass-id=\"18\" contentclass-identifier=\"blog_post\" contentobject-remote-id=\"6272723ff5e63f5bc28226ac99d66d3b\"/><relation-item priority=\"2\" contentobject-id=\"105\" contentobject-version=\"1\" node-id=\"107\" parent-node-id=\"103\" contentclass-id=\"18\" contentclass-identifier=\"blog_post\" contentobject-remote-id=\"ea0d067b07a18755b8a05bae6190e162\"/></relation-list></related-objects>\n','ezobjectrelationlist',567,'eng-US',2,0,'',1),(0,307,106,0,NULL,'ez5-tutorial','ezstring',568,'eng-US',2,0,'ez5-tutorial',1);
/*!40000 ALTER TABLE `ezcontentobject_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_link`
--

DROP TABLE IF EXISTS `ezcontentobject_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_link` (
  `contentclassattribute_id` int(11) NOT NULL DEFAULT '0',
  `from_contentobject_id` int(11) NOT NULL DEFAULT '0',
  `from_contentobject_version` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `op_code` int(11) NOT NULL DEFAULT '0',
  `relation_type` int(11) NOT NULL DEFAULT '1',
  `to_contentobject_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezco_link_from` (`from_contentobject_id`,`from_contentobject_version`,`contentclassattribute_id`),
  KEY `ezco_link_to_co_id` (`to_contentobject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_link`
--

LOCK TABLES `ezcontentobject_link` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_link` DISABLE KEYS */;
INSERT INTO `ezcontentobject_link` VALUES (306,106,1,11,0,8,103),(306,106,1,12,0,8,105);
/*!40000 ALTER TABLE `ezcontentobject_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_name`
--

DROP TABLE IF EXISTS `ezcontentobject_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_name` (
  `content_translation` varchar(20) NOT NULL DEFAULT '',
  `content_version` int(11) NOT NULL DEFAULT '0',
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `real_translation` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`contentobject_id`,`content_version`,`content_translation`),
  KEY `ezcontentobject_name_co_id` (`contentobject_id`),
  KEY `ezcontentobject_name_cov_id` (`content_version`),
  KEY `ezcontentobject_name_lang_id` (`language_id`),
  KEY `ezcontentobject_name_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_name`
--

LOCK TABLES `ezcontentobject_name` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_name` DISABLE KEYS */;
INSERT INTO `ezcontentobject_name` VALUES ('eng-US',1,4,3,'Users','eng-US'),('eng-US',2,10,3,'Anonymous User','eng-US'),('eng-US',1,11,3,'Guest accounts','eng-US'),('eng-US',2,11,3,'Members','eng-US'),('eng-US',1,12,3,'Administrator users','eng-US'),('eng-US',1,13,3,'Editors','eng-US'),('eng-US',3,14,3,'Administrator User','eng-US'),('eng-US',4,14,3,'Administrator User','eng-US'),('eng-US',1,41,3,'Media','eng-US'),('eng-US',1,42,3,'Anonymous Users','eng-US'),('eng-US',1,45,3,'Setup','eng-US'),('eng-US',1,49,3,'Images','eng-US'),('eng-US',1,50,3,'Files','eng-US'),('eng-US',1,51,3,'Multimedia','eng-US'),('eng-US',1,52,2,'Common INI settings','eng-US'),('eng-US',2,54,2,'Partial Content','eng-US'),('eng-US',3,54,2,'Partial Content','eng-US'),('eng-US',1,56,3,'Design','eng-US'),('eng-US',1,99,3,'Partners','eng-US'),('eng-US',1,100,2,'Home','eng-US'),('eng-US',1,101,2,'Code','eng-US'),('eng-US',1,102,2,'Series','eng-US'),('eng-US',1,103,2,'Working with eZ Publish 5 - Introduction','eng-US'),('eng-US',1,104,2,'About','eng-US'),('eng-US',1,105,2,'Working With eZ Publish 5 - Symfony','eng-US'),('eng-US',1,106,2,'Working With eZ Publish 5','eng-US');
/*!40000 ALTER TABLE `ezcontentobject_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_trash`
--

DROP TABLE IF EXISTS `ezcontentobject_trash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_trash` (
  `contentobject_id` int(11) DEFAULT NULL,
  `contentobject_version` int(11) DEFAULT NULL,
  `depth` int(11) NOT NULL DEFAULT '0',
  `is_hidden` int(11) NOT NULL DEFAULT '0',
  `is_invisible` int(11) NOT NULL DEFAULT '0',
  `main_node_id` int(11) DEFAULT NULL,
  `modified_subnode` int(11) DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `parent_node_id` int(11) NOT NULL DEFAULT '0',
  `path_identification_string` longtext,
  `path_string` varchar(255) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) NOT NULL DEFAULT '',
  `sort_field` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT '1',
  PRIMARY KEY (`node_id`),
  KEY `ezcobj_trash_co_id` (`contentobject_id`),
  KEY `ezcobj_trash_depth` (`depth`),
  KEY `ezcobj_trash_modified_subnode` (`modified_subnode`),
  KEY `ezcobj_trash_p_node_id` (`parent_node_id`),
  KEY `ezcobj_trash_path` (`path_string`),
  KEY `ezcobj_trash_path_ident` (`path_identification_string`(50))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_trash`
--

LOCK TABLES `ezcontentobject_trash` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_trash` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentobject_trash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_tree`
--

DROP TABLE IF EXISTS `ezcontentobject_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_tree` (
  `contentobject_id` int(11) DEFAULT NULL,
  `contentobject_is_published` int(11) DEFAULT NULL,
  `contentobject_version` int(11) DEFAULT NULL,
  `depth` int(11) NOT NULL DEFAULT '0',
  `is_hidden` int(11) NOT NULL DEFAULT '0',
  `is_invisible` int(11) NOT NULL DEFAULT '0',
  `main_node_id` int(11) DEFAULT NULL,
  `modified_subnode` int(11) DEFAULT '0',
  `node_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_node_id` int(11) NOT NULL DEFAULT '0',
  `path_identification_string` longtext,
  `path_string` varchar(255) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) NOT NULL DEFAULT '',
  `sort_field` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT '1',
  PRIMARY KEY (`node_id`),
  KEY `ezcontentobject_tree_co_id` (`contentobject_id`),
  KEY `ezcontentobject_tree_depth` (`depth`),
  KEY `ezcontentobject_tree_p_node_id` (`parent_node_id`),
  KEY `ezcontentobject_tree_path` (`path_string`),
  KEY `ezcontentobject_tree_path_ident` (`path_identification_string`(50)),
  KEY `modified_subnode` (`modified_subnode`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_tree`
--

LOCK TABLES `ezcontentobject_tree` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_tree` DISABLE KEYS */;
INSERT INTO `ezcontentobject_tree` VALUES (0,1,1,0,0,0,1,1360955829,1,1,'','/1/',0,'629709ba256fe317c3ddcee35453a96a',1,1),(100,1,1,1,0,0,2,1360955829,2,1,'','/1/2/',0,'f3e90596361e31d496d4026eb624c983',8,1),(4,1,1,1,0,0,5,1360944319,5,1,'users','/1/5/',0,'3f6d92f8044aed134f32153517850f5a',1,1),(11,1,2,2,0,0,12,1360944319,12,5,'users/members','/1/5/12/',0,'602dcf84765e56b7f999eaafd3821dd3',1,1),(12,1,1,2,0,0,13,1360944318,13,5,'users/administrator_users','/1/5/13/',0,'769380b7aa94541679167eab817ca893',1,1),(13,1,1,2,0,0,14,1081860719,14,5,'users/editors','/1/5/14/',0,'f7dda2854fc68f7c8455d9cb14bd04a9',1,1),(14,1,4,3,0,0,15,1360944318,15,13,'users/administrator_users/administrator_user','/1/5/13/15/',0,'e5161a99f733200b9ed4e80f9c16187b',1,1),(41,1,1,1,0,0,43,1081860720,43,1,'media','/1/43/',0,'75c715a51699d2d309a924eca6a95145',9,1),(42,1,1,2,0,0,44,1081860719,44,5,'users/anonymous_users','/1/5/44/',0,'4fdf0072da953bb276c0c7e0141c5c9b',9,1),(10,1,2,3,0,0,45,1081860719,45,44,'users/anonymous_users/anonymous_user','/1/5/44/45/',0,'2cf8343bee7b482bab82b269d8fecd76',9,1),(45,1,1,1,0,0,48,1184592117,48,1,'setup2','/1/48/',0,'182ce1b5af0c09fa378557c462ba2617',9,1),(49,1,1,2,0,0,51,1081860720,51,43,'media/images','/1/43/51/',0,'1b26c0454b09bb49dfb1b9190ffd67cb',9,1),(50,1,1,2,0,0,52,1081860720,52,43,'media/files','/1/43/52/',0,'0b113a208f7890f9ad3c24444ff5988c',9,1),(51,1,1,2,0,0,53,1081860720,53,43,'media/multimedia','/1/43/53/',0,'4f18b82c75f10aad476cae5adf98c11f',9,1),(52,1,1,2,0,0,54,1184592117,54,48,'setup2/common_ini_settings','/1/48/54/',0,'fa9f3cff9cf90ecfae335718dcbddfe2',1,1),(54,1,3,2,0,0,56,1360949045,56,58,'design/partial_content','/1/58/56/',0,'772da20ecf88b3035d73cbdfcea0f119',1,1),(56,1,1,1,0,0,58,1360949045,58,1,'design','/1/58/',0,'79f2d67372ab56f59b5d65bb9e0ca3b9',2,0),(99,1,1,2,0,0,101,1360944319,101,5,'users/partners','/1/5/101/',0,'37eb2367ef94a41e100cf2a4f69e4825',1,1),(101,1,1,2,0,0,103,1360955738,103,2,'code','/1/2/103/',0,'24c440382b56bee148ef1964271d4118',2,0),(102,1,1,2,0,0,104,1360955829,104,2,'series','/1/2/104/',0,'4f72d530b2b9d7f0eddd83e31349a308',2,0),(103,1,1,3,0,0,105,1360947072,105,103,'code/working_with_ez_publish_5_introduction','/1/2/103/105/',0,'2936874169c076068b118769dcbf82e9',1,1),(104,1,1,2,0,0,106,1360948164,106,2,'about','/1/2/106/',0,'cd2134427da74646fe8d33dec3d2b0ae',2,0),(105,1,1,3,0,0,107,1360955738,107,103,'code/working_with_ez_publish_5_symfony','/1/2/103/107/',0,'572b53619cd42e669f5f1ee786896276',1,1),(106,1,1,3,0,0,108,1360955829,108,104,'series/ez5_tutorial','/1/2/104/108/',0,'22398ed8c53974367caa69c354098ab3',1,1);
/*!40000 ALTER TABLE `ezcontentobject_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_version`
--

DROP TABLE IF EXISTS `ezcontentobject_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_version` (
  `contentobject_id` int(11) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `initial_language_id` int(11) NOT NULL DEFAULT '0',
  `language_mask` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `version` int(11) NOT NULL DEFAULT '0',
  `workflow_event_pos` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezcobj_version_creator_id` (`creator_id`),
  KEY `ezcobj_version_status` (`status`),
  KEY `idx_object_version_objver` (`contentobject_id`,`version`)
) ENGINE=InnoDB AUTO_INCREMENT=557 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_version`
--

LOCK TABLES `ezcontentobject_version` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_version` DISABLE KEYS */;
INSERT INTO `ezcontentobject_version` VALUES (4,0,14,4,2,3,0,1,0,1,1),(11,1033920737,14,439,2,3,1033920746,3,0,1,0),(12,1033920760,14,440,2,3,1033920775,1,0,1,0),(13,1033920786,14,441,2,3,1033920794,1,0,1,0),(41,1060695450,14,472,2,3,1060695457,1,0,1,0),(42,1072180278,14,473,2,3,1072180330,1,0,1,0),(10,1072180337,14,474,2,3,1072180405,1,0,2,0),(45,1079684084,14,477,2,3,1079684190,1,0,1,0),(49,1080220181,14,488,2,3,1080220197,1,0,1,0),(50,1080220211,14,489,2,3,1080220220,1,0,1,0),(51,1080220225,14,490,2,3,1080220233,1,0,1,0),(52,1082016497,14,491,2,2,1082016591,1,0,1,0),(56,1103023120,14,495,2,3,1103023120,1,0,1,0),(14,1301061783,14,499,2,3,1301062024,3,0,3,0),(54,1301062300,14,500,2,2,1301062375,3,0,2,0),(14,1360944318,14,546,2,3,1360944318,1,0,4,0),(99,1360944319,14,547,2,3,1360944319,1,0,1,0),(11,1360944319,14,548,2,3,1360944319,1,0,2,0),(100,1360946838,14,549,2,3,1360946849,1,0,1,0),(101,1360946936,14,550,2,3,1360946942,1,0,1,0),(102,1360946962,14,551,2,3,1360946971,1,0,1,0),(103,1360947016,14,552,2,3,1360947071,1,0,1,0),(104,1360947359,14,553,2,3,1360948164,1,0,1,0),(54,1360948975,14,554,2,3,1360949045,1,0,3,0),(105,1360955693,14,555,2,3,1360955738,1,0,1,0),(106,1360955749,14,556,2,3,1360955829,1,0,1,0);
/*!40000 ALTER TABLE `ezcontentobject_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcurrencydata`
--

DROP TABLE IF EXISTS `ezcurrencydata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcurrencydata` (
  `auto_rate_value` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `code` varchar(4) NOT NULL DEFAULT '',
  `custom_rate_value` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` varchar(255) NOT NULL DEFAULT '',
  `rate_factor` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `status` int(11) NOT NULL DEFAULT '1',
  `symbol` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezcurrencydata_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcurrencydata`
--

LOCK TABLES `ezcurrencydata` WRITE;
/*!40000 ALTER TABLE `ezcurrencydata` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcurrencydata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdiscountrule`
--

DROP TABLE IF EXISTS `ezdiscountrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdiscountrule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdiscountrule`
--

LOCK TABLES `ezdiscountrule` WRITE;
/*!40000 ALTER TABLE `ezdiscountrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdiscountsubrule`
--

DROP TABLE IF EXISTS `ezdiscountsubrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdiscountsubrule` (
  `discount_percent` float DEFAULT NULL,
  `discountrule_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limitation` char(1) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdiscountsubrule`
--

LOCK TABLES `ezdiscountsubrule` WRITE;
/*!40000 ALTER TABLE `ezdiscountsubrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountsubrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdiscountsubrule_value`
--

DROP TABLE IF EXISTS `ezdiscountsubrule_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdiscountsubrule_value` (
  `discountsubrule_id` int(11) NOT NULL DEFAULT '0',
  `issection` int(11) NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`discountsubrule_id`,`value`,`issection`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdiscountsubrule_value`
--

LOCK TABLES `ezdiscountsubrule_value` WRITE;
/*!40000 ALTER TABLE `ezdiscountsubrule_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountsubrule_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezenumobjectvalue`
--

DROP TABLE IF EXISTS `ezenumobjectvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezenumobjectvalue` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attribute_version` int(11) NOT NULL DEFAULT '0',
  `enumelement` varchar(255) NOT NULL DEFAULT '',
  `enumid` int(11) NOT NULL DEFAULT '0',
  `enumvalue` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`contentobject_attribute_id`,`contentobject_attribute_version`,`enumid`),
  KEY `ezenumobjectvalue_co_attr_id_co_attr_ver` (`contentobject_attribute_id`,`contentobject_attribute_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezenumobjectvalue`
--

LOCK TABLES `ezenumobjectvalue` WRITE;
/*!40000 ALTER TABLE `ezenumobjectvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezenumobjectvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezenumvalue`
--

DROP TABLE IF EXISTS `ezenumvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezenumvalue` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_attribute_version` int(11) NOT NULL DEFAULT '0',
  `enumelement` varchar(255) NOT NULL DEFAULT '',
  `enumvalue` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placement` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`contentclass_attribute_id`,`contentclass_attribute_version`),
  KEY `ezenumvalue_co_cl_attr_id_co_class_att_ver` (`contentclass_attribute_id`,`contentclass_attribute_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezenumvalue`
--

LOCK TABLES `ezenumvalue` WRITE;
/*!40000 ALTER TABLE `ezenumvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezenumvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezforgot_password`
--

DROP TABLE IF EXISTS `ezforgot_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezforgot_password` (
  `hash_key` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezforgot_password_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezforgot_password`
--

LOCK TABLES `ezforgot_password` WRITE;
/*!40000 ALTER TABLE `ezforgot_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezforgot_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezgeneral_digest_user_settings`
--

DROP TABLE IF EXISTS `ezgeneral_digest_user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezgeneral_digest_user_settings` (
  `day` varchar(255) NOT NULL DEFAULT '',
  `digest_type` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receive_digest` int(11) NOT NULL DEFAULT '0',
  `time` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezgeneral_digest_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezgeneral_digest_user_settings`
--

LOCK TABLES `ezgeneral_digest_user_settings` WRITE;
/*!40000 ALTER TABLE `ezgeneral_digest_user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezgeneral_digest_user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezgmaplocation`
--

DROP TABLE IF EXISTS `ezgmaplocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezgmaplocation` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_version` int(11) NOT NULL DEFAULT '0',
  `latitude` double NOT NULL DEFAULT '0',
  `longitude` double NOT NULL DEFAULT '0',
  `address` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`contentobject_attribute_id`,`contentobject_version`),
  KEY `latitude_longitude_key` (`latitude`,`longitude`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezgmaplocation`
--

LOCK TABLES `ezgmaplocation` WRITE;
/*!40000 ALTER TABLE `ezgmaplocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezgmaplocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezimagefile`
--

DROP TABLE IF EXISTS `ezimagefile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezimagefile` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `filepath` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `ezimagefile_coid` (`contentobject_attribute_id`),
  KEY `ezimagefile_file` (`filepath`(200))
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezimagefile`
--

LOCK TABLES `ezimagefile` WRITE;
/*!40000 ALTER TABLE `ezimagefile` DISABLE KEYS */;
INSERT INTO `ezimagefile` VALUES (172,'var/storage/images/design/plain-site/172-2-eng-US/Partial-Content1.png',39),(172,'var/storage/images/design/plain-site/172-2-eng-US/Partial-Content1_reference.png',64),(172,'var/storage/images/design/plain-site/172-2-eng-US/Partial-Content1_small.png',65),(172,'var/storage/images/design/plain-site/172-2-eng-US/Partial-Content1_medium.png',66),(172,'var/storage/images/design/plain-site/172-2-eng-US/Partial-Content1_large.png',67),(172,'var/ezdemo_site/storage/images/design/partial-content/172-2-eng-US/Partial-Content.png',68),(172,'var/ezdemo_site/storage/images/design/partial-content/172-2-eng-US/Partial-Content_reference.png',69),(172,'var/ezdemo_site/storage/images/design/partial-content/172-2-eng-US/Partial-Content_small.png',70),(172,'var/ezdemo_site/storage/images/design/partial-content/172-2-eng-US/Partial-Content_medium.png',71),(172,'var/ezdemo_site/storage/images/design/partial-content/172-2-eng-US/Partial-Content_large.png',72);
/*!40000 ALTER TABLE `ezimagefile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezinfocollection`
--

DROP TABLE IF EXISTS `ezinfocollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezinfocollection` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) DEFAULT '0',
  `user_identifier` varchar(34) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezinfocollection_co_id_created` (`contentobject_id`,`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezinfocollection`
--

LOCK TABLES `ezinfocollection` WRITE;
/*!40000 ALTER TABLE `ezinfocollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezinfocollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezinfocollection_attribute`
--

DROP TABLE IF EXISTS `ezinfocollection_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezinfocollection_attribute` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attribute_id` int(11) DEFAULT NULL,
  `contentobject_id` int(11) DEFAULT NULL,
  `data_float` float DEFAULT NULL,
  `data_int` int(11) DEFAULT NULL,
  `data_text` longtext,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `informationcollection_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezinfocollection_attr_cca_id` (`contentclass_attribute_id`),
  KEY `ezinfocollection_attr_co_id` (`contentobject_id`),
  KEY `ezinfocollection_attr_coa_id` (`contentobject_attribute_id`),
  KEY `ezinfocollection_attr_ic_id` (`informationcollection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezinfocollection_attribute`
--

LOCK TABLES `ezinfocollection_attribute` WRITE;
/*!40000 ALTER TABLE `ezinfocollection_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezinfocollection_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezisbn_group`
--

DROP TABLE IF EXISTS `ezisbn_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezisbn_group` (
  `description` varchar(255) NOT NULL DEFAULT '',
  `group_number` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezisbn_group`
--

LOCK TABLES `ezisbn_group` WRITE;
/*!40000 ALTER TABLE `ezisbn_group` DISABLE KEYS */;
INSERT INTO `ezisbn_group` VALUES ('English language',0,1),('English language',1,2),('French language',2,3),('German language',3,4),('Japan',4,5),('Russian Federation and former USSR',5,6),('Iran',600,7),('Kazakhstan',601,8),('Indonesia',602,9),('Saudi Arabia',603,10),('Vietnam',604,11),('Turkey',605,12),('Romania',606,13),('Mexico',607,14),('Macedonia',608,15),('Lithuania',609,16),('Thailand',611,17),('Peru',612,18),('Mauritius',613,19),('Lebanon',614,20),('Hungary',615,21),('Thailand',616,22),('Ukraine',617,23),('China, People\'s Republic',7,24),('Czech Republic and Slovakia',80,25),('India',81,26),('Norway',82,27),('Poland',83,28),('Spain',84,29),('Brazil',85,30),('Serbia and Montenegro',86,31),('Denmark',87,32),('Italy',88,33),('Korea, Republic',89,34),('Netherlands',90,35),('Sweden',91,36),('International NGO Publishers and EC Organizations',92,37),('India',93,38),('Netherlands',94,39),('Argentina',950,40),('Finland',951,41),('Finland',952,42),('Croatia',953,43),('Bulgaria',954,44),('Sri Lanka',955,45),('Chile',956,46),('Taiwan',957,47),('Colombia',958,48),('Cuba',959,49),('Greece',960,50),('Slovenia',961,51),('Hong Kong, China',962,52),('Hungary',963,53),('Iran',964,54),('Israel',965,55),('Ukraine',966,56),('Malaysia',967,57),('Mexico',968,58),('Pakistan',969,59),('Mexico',970,60),('Philippines',971,61),('Portugal',972,62),('Romania',973,63),('Thailand',974,64),('Turkey',975,65),('Caribbean Community',976,66),('Egypt',977,67),('Nigeria',978,68),('Indonesia',979,69),('Venezuela',980,70),('Singapore',981,71),('South Pacific',982,72),('Malaysia',983,73),('Bangladesh',984,74),('Belarus',985,75),('Taiwan',986,76),('Argentina',987,77),('Hong Kong, China',988,78),('Portugal',989,79),('Qatar',9927,80),('Albania',9928,81),('Guatemala',9929,82),('Costa Rica',9930,83),('Algeria',9931,84),('Lao People\'s Democratic Republic',9932,85),('Syria',9933,86),('Latvia',9934,87),('Iceland',9935,88),('Afghanistan',9936,89),('Nepal',9937,90),('Tunisia',9938,91),('Armenia',9939,92),('Montenegro',9940,93),('Georgia',9941,94),('Ecuador',9942,95),('Uzbekistan',9943,96),('Turkey',9944,97),('Dominican Republic',9945,98),('Korea, P.D.R.',9946,99),('Algeria',9947,100),('United Arab Emirates',9948,101),('Estonia',9949,102),('Palestine',9950,103),('Kosova',9951,104),('Azerbaijan',9952,105),('Lebanon',9953,106),('Morocco',9954,107),('Lithuania',9955,108),('Cameroon',9956,109),('Jordan',9957,110),('Bosnia and Herzegovina',9958,111),('Libya',9959,112),('Saudi Arabia',9960,113),('Algeria',9961,114),('Panama',9962,115),('Cyprus',9963,116),('Ghana',9964,117),('Kazakhstan',9965,118),('Kenya',9966,119),('Kyrgyz Republic',9967,120),('Costa Rica',9968,121),('Uganda',9970,122),('Singapore',9971,123),('Peru',9972,124),('Tunisia',9973,125),('Uruguay',9974,126),('Moldova',9975,127),('Tanzania',9976,128),('Costa Rica',9977,129),('Ecuador',9978,130),('Iceland',9979,131),('Papua New Guinea',9980,132),('Morocco',9981,133),('Zambia',9982,134),('Gambia',9983,135),('Latvia',9984,136),('Estonia',9985,137),('Lithuania',9986,138),('Tanzania',9987,139),('Ghana',9988,140),('Macedonia',9989,141),('Bahrain',99901,142),('Gabon',99902,143),('Mauritius',99903,144),('Netherlands Antilles and Aruba',99904,145),('Bolivia',99905,146),('Kuwait',99906,147),('Malawi',99908,148),('Malta',99909,149),('Sierra Leone',99910,150),('Lesotho',99911,151),('Botswana',99912,152),('Andorra',99913,153),('Suriname',99914,154),('Maldives',99915,155),('Namibia',99916,156),('Brunei Darussalam',99917,157),('Faroe Islands',99918,158),('Benin',99919,159),('Andorra',99920,160),('Qatar',99921,161),('Guatemala',99922,162),('El Salvador',99923,163),('Nicaragua',99924,164),('Paraguay',99925,165),('Honduras',99926,166),('Albania',99927,167),('Georgia',99928,168),('Mongolia',99929,169),('Armenia',99930,170),('Seychelles',99931,171),('Malta',99932,172),('Nepal',99933,173),('Dominican Republic',99934,174),('Haiti',99935,175),('Bhutan',99936,176),('Macau',99937,177),('Srpska, Republic of',99938,178),('Guatemala',99939,179),('Georgia',99940,180),('Armenia',99941,181),('Sudan',99942,182),('Albania',99943,183),('Ethiopia',99944,184),('Namibia',99945,185),('Nepal',99946,186),('Tajikistan',99947,187),('Eritrea',99948,188),('Mauritius',99949,189),('Cambodia',99950,190),('Congo',99951,191),('Mali',99952,192),('Paraguay',99953,193),('Bolivia',99954,194),('Srpska, Republic of',99955,195),('Albania',99956,196),('Malta',99957,197),('Bahrain',99958,198),('Luxembourg',99959,199),('Malawi',99960,200),('El Salvador',99961,201),('Mongolia',99962,202),('Cambodia',99963,203),('Nicaragua',99964,204),('Macau',99965,205),('Kuwait',99966,206),('Paraguay',99967,207),('Botswana',99968,208),('France',10,209);
/*!40000 ALTER TABLE `ezisbn_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezisbn_group_range`
--

DROP TABLE IF EXISTS `ezisbn_group_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezisbn_group_range` (
  `from_number` int(11) NOT NULL DEFAULT '0',
  `group_from` varchar(32) NOT NULL DEFAULT '',
  `group_length` int(11) NOT NULL DEFAULT '0',
  `group_to` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to_number` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezisbn_group_range`
--

LOCK TABLES `ezisbn_group_range` WRITE;
/*!40000 ALTER TABLE `ezisbn_group_range` DISABLE KEYS */;
INSERT INTO `ezisbn_group_range` VALUES (0,'0',1,'5',1,59999),(60000,'600',3,'649',2,64999),(70000,'7',1,'7',3,79999),(80000,'80',2,'94',4,94999),(95000,'950',3,'989',5,98999),(99000,'9900',4,'9989',6,99899),(99900,'99900',5,'99999',7,99999),(10000,'10',2,'10',8,10999);
/*!40000 ALTER TABLE `ezisbn_group_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezisbn_registrant_range`
--

DROP TABLE IF EXISTS `ezisbn_registrant_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezisbn_registrant_range` (
  `from_number` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn_group_id` int(11) NOT NULL DEFAULT '0',
  `registrant_from` varchar(32) NOT NULL DEFAULT '',
  `registrant_length` int(11) NOT NULL DEFAULT '0',
  `registrant_to` varchar(32) NOT NULL DEFAULT '',
  `to_number` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=927 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezisbn_registrant_range`
--

LOCK TABLES `ezisbn_registrant_range` WRITE;
/*!40000 ALTER TABLE `ezisbn_registrant_range` DISABLE KEYS */;
INSERT INTO `ezisbn_registrant_range` VALUES (0,1,1,'00',2,'19',19999),(20000,2,1,'200',3,'699',69999),(70000,3,1,'7000',4,'8499',84999),(85000,4,1,'85000',5,'89999',89999),(90000,5,1,'900000',6,'949999',94999),(95000,6,1,'9500000',7,'9999999',99999),(0,7,2,'00',2,'09',9999),(10000,8,2,'100',3,'399',39999),(40000,9,2,'4000',4,'5499',54999),(55000,10,2,'55000',5,'86979',86979),(86980,11,2,'869800',6,'998999',99899),(99900,12,2,'9990000',7,'9999999',99999),(0,13,3,'00',2,'19',19999),(20000,14,3,'200',3,'349',34999),(35000,15,3,'35000',5,'39999',39999),(40000,16,3,'400',3,'699',69999),(70000,17,3,'7000',4,'8399',83999),(84000,18,3,'84000',5,'89999',89999),(90000,19,3,'900000',6,'949999',94999),(95000,20,3,'9500000',7,'9999999',99999),(0,21,4,'00',2,'02',2999),(3000,22,4,'030',3,'033',3399),(3400,23,4,'0340',4,'0369',3699),(3700,24,4,'03700',5,'03999',3999),(4000,25,4,'04',2,'19',19999),(20000,26,4,'200',3,'699',69999),(70000,27,4,'7000',4,'8499',84999),(85000,28,4,'85000',5,'89999',89999),(90000,29,4,'900000',6,'949999',94999),(95000,30,4,'9500000',7,'9539999',95399),(95400,31,4,'95400',5,'96999',96999),(97000,32,4,'9700000',7,'9899999',98999),(99000,33,4,'99000',5,'99499',99499),(99500,34,4,'99500',5,'99999',99999),(0,35,5,'00',2,'19',19999),(20000,36,5,'200',3,'699',69999),(70000,37,5,'7000',4,'8499',84999),(85000,38,5,'85000',5,'89999',89999),(90000,39,5,'900000',6,'949999',94999),(95000,40,5,'9500000',7,'9999999',99999),(0,41,6,'00',2,'19',19999),(20000,42,6,'200',3,'420',42099),(42100,43,6,'4210',4,'4299',42999),(43000,44,6,'430',3,'430',43099),(43100,45,6,'4310',4,'4399',43999),(44000,46,6,'440',3,'440',44099),(44100,47,6,'4410',4,'4499',44999),(45000,48,6,'450',3,'699',69999),(70000,49,6,'7000',4,'8499',84999),(85000,50,6,'85000',5,'89999',89999),(90000,51,6,'900000',6,'909999',90999),(91000,52,6,'91000',5,'91999',91999),(92000,53,6,'9200',4,'9299',92999),(93000,54,6,'93000',5,'94999',94999),(95000,55,6,'9500000',7,'9500999',95009),(95010,56,6,'9501',4,'9799',97999),(98000,57,6,'98000',5,'98999',98999),(99000,58,6,'9900000',7,'9909999',99099),(99100,59,6,'9910',4,'9999',99999),(0,60,7,'00',2,'09',9999),(10000,61,7,'100',3,'499',49999),(50000,62,7,'5000',4,'8999',89999),(90000,63,7,'90000',5,'99999',99999),(0,64,8,'00',2,'19',19999),(20000,65,8,'200',3,'699',69999),(70000,66,8,'7000',4,'7999',79999),(80000,67,8,'80000',5,'84999',84999),(85000,68,8,'85',2,'99',99999),(0,69,9,'00',2,'19',19999),(20000,70,9,'200',3,'799',79999),(80000,71,9,'8000',4,'9499',94999),(95000,72,9,'95000',5,'99999',99999),(0,73,10,'00',2,'04',4999),(5000,74,10,'05',2,'49',49999),(50000,75,10,'500',3,'799',79999),(80000,76,10,'8000',4,'8999',89999),(90000,77,10,'90000',5,'99999',99999),(0,78,11,'0',1,'4',49999),(50000,79,11,'50',2,'89',89999),(90000,80,11,'900',3,'979',97999),(98000,81,11,'9800',4,'9999',99999),(1000,82,12,'01',2,'09',9999),(10000,83,12,'100',3,'399',39999),(40000,84,12,'4000',4,'5999',59999),(60000,85,12,'60000',5,'89999',89999),(90000,86,12,'90',2,'99',99999),(0,87,13,'0',1,'0',9999),(10000,88,13,'10',2,'49',49999),(50000,89,13,'500',3,'799',79999),(80000,90,13,'8000',4,'9199',91999),(92000,91,13,'92000',5,'99999',99999),(0,92,14,'00',2,'39',39999),(40000,93,14,'400',3,'749',74999),(75000,94,14,'7500',4,'9499',94999),(95000,95,14,'95000',5,'99999',99999),(0,96,15,'0',1,'0',9999),(10000,97,15,'10',2,'19',19999),(20000,98,15,'200',3,'449',44999),(45000,99,15,'4500',4,'6499',64999),(65000,100,15,'65000',5,'69999',69999),(70000,101,15,'7',1,'9',99999),(0,102,16,'00',2,'39',39999),(40000,103,16,'400',3,'799',79999),(80000,104,16,'8000',4,'9499',94999),(95000,105,16,'95000',5,'99999',99999),(0,106,18,'00',2,'29',29999),(30000,107,18,'300',3,'399',39999),(40000,108,18,'4000',4,'4499',44999),(45000,109,18,'45000',5,'49999',49999),(50000,110,18,'50',2,'99',99999),(0,111,19,'0',1,'9',99999),(0,112,20,'00',2,'39',39999),(40000,113,20,'400',3,'799',79999),(80000,114,20,'8000',4,'9499',94999),(95000,115,20,'95000',5,'99999',99999),(0,116,21,'00',2,'09',9999),(10000,117,21,'100',3,'499',49999),(50000,118,21,'5000',4,'7999',79999),(80000,119,21,'80000',5,'89999',89999),(0,120,22,'00',2,'19',19999),(20000,121,22,'200',3,'699',69999),(70000,122,22,'7000',4,'8999',89999),(90000,123,22,'90000',5,'99999',99999),(0,124,23,'00',2,'49',49999),(50000,125,23,'500',3,'699',69999),(70000,126,23,'7000',4,'8999',89999),(90000,127,23,'90000',5,'99999',99999),(0,128,24,'00',2,'09',9999),(10000,129,24,'100',3,'499',49999),(50000,130,24,'5000',4,'7999',79999),(80000,131,24,'80000',5,'89999',89999),(90000,132,24,'900000',6,'999999',99999),(0,133,25,'00',2,'19',19999),(20000,134,25,'200',3,'699',69999),(70000,135,25,'7000',4,'8499',84999),(85000,136,25,'85000',5,'89999',89999),(90000,137,25,'900000',6,'999999',99999),(0,138,26,'00',2,'19',19999),(20000,139,26,'200',3,'699',69999),(70000,140,26,'7000',4,'8499',84999),(85000,141,26,'85000',5,'89999',89999),(90000,142,26,'900000',6,'999999',99999),(0,143,27,'00',2,'19',19999),(20000,144,27,'200',3,'699',69999),(70000,145,27,'7000',4,'8999',89999),(90000,146,27,'90000',5,'98999',98999),(99000,147,27,'990000',6,'999999',99999),(0,148,28,'00',2,'19',19999),(20000,149,28,'200',3,'599',59999),(60000,150,28,'60000',5,'69999',69999),(70000,151,28,'7000',4,'8499',84999),(85000,152,28,'85000',5,'89999',89999),(90000,153,28,'900000',6,'999999',99999),(0,154,29,'00',2,'14',14999),(15000,155,29,'15000',5,'19999',19999),(20000,156,29,'200',3,'699',69999),(70000,157,29,'7000',4,'8499',84999),(85000,158,29,'85000',5,'89999',89999),(90000,159,29,'9000',4,'9199',91999),(92000,160,29,'920000',6,'923999',92399),(92400,161,29,'92400',5,'92999',92999),(93000,162,29,'930000',6,'949999',94999),(95000,163,29,'95000',5,'96999',96999),(97000,164,29,'9700',4,'9999',99999),(0,165,30,'00',2,'19',19999),(20000,166,30,'200',3,'599',59999),(60000,167,30,'60000',5,'69999',69999),(70000,168,30,'7000',4,'8499',84999),(85000,169,30,'85000',5,'89999',89999),(90000,170,30,'900000',6,'979999',97999),(98000,171,30,'98000',5,'99999',99999),(0,172,31,'00',2,'29',29999),(30000,173,31,'300',3,'599',59999),(60000,174,31,'6000',4,'7999',79999),(80000,175,31,'80000',5,'89999',89999),(90000,176,31,'900000',6,'999999',99999),(0,177,32,'00',2,'29',29999),(40000,178,32,'400',3,'649',64999),(70000,179,32,'7000',4,'7999',79999),(85000,180,32,'85000',5,'94999',94999),(97000,181,32,'970000',6,'999999',99999),(0,182,33,'00',2,'19',19999),(20000,183,33,'200',3,'599',59999),(60000,184,33,'6000',4,'8499',84999),(85000,185,33,'85000',5,'89999',89999),(90000,186,33,'900000',6,'949999',94999),(95000,187,33,'95000',5,'99999',99999),(0,188,34,'00',2,'24',24999),(25000,189,34,'250',3,'549',54999),(55000,190,34,'5500',4,'8499',84999),(85000,191,34,'85000',5,'94999',94999),(95000,192,34,'950000',6,'969999',96999),(97000,193,34,'97000',5,'98999',98999),(99000,194,34,'990',3,'999',99999),(0,195,35,'00',2,'19',19999),(20000,196,35,'200',3,'499',49999),(50000,197,35,'5000',4,'6999',69999),(70000,198,35,'70000',5,'79999',79999),(80000,199,35,'800000',6,'849999',84999),(85000,200,35,'8500',4,'8999',89999),(90000,201,35,'90',2,'90',90999),(91000,202,35,'910000',6,'939999',93999),(94000,203,35,'94',2,'94',94999),(95000,204,35,'950000',6,'999999',99999),(0,205,36,'0',1,'1',19999),(20000,206,36,'20',2,'49',49999),(50000,207,36,'500',3,'649',64999),(70000,208,36,'7000',4,'7999',79999),(85000,209,36,'85000',5,'94999',94999),(97000,210,36,'970000',6,'999999',99999),(0,211,37,'0',1,'5',59999),(60000,212,37,'60',2,'79',79999),(80000,213,37,'800',3,'899',89999),(90000,214,37,'9000',4,'9499',94999),(95000,215,37,'95000',5,'98999',98999),(99000,216,37,'990000',6,'999999',99999),(0,217,38,'00',2,'09',9999),(10000,218,38,'100',3,'499',49999),(50000,219,38,'5000',4,'7999',79999),(80000,220,38,'80000',5,'94999',94999),(95000,221,38,'950000',6,'999999',99999),(0,222,39,'000',3,'599',59999),(60000,223,39,'6000',4,'8999',89999),(90000,224,39,'90000',5,'99999',99999),(0,225,40,'00',2,'49',49999),(50000,226,40,'500',3,'899',89999),(90000,227,40,'9000',4,'9899',98999),(99000,228,40,'99000',5,'99999',99999),(0,229,41,'0',1,'1',19999),(20000,230,41,'20',2,'54',54999),(55000,231,41,'550',3,'889',88999),(89000,232,41,'8900',4,'9499',94999),(95000,233,41,'95000',5,'99999',99999),(0,234,42,'00',2,'19',19999),(20000,235,42,'200',3,'499',49999),(50000,236,42,'5000',4,'5999',59999),(60000,237,42,'60',2,'65',65999),(66000,238,42,'6600',4,'6699',66999),(67000,239,42,'67000',5,'69999',69999),(70000,240,42,'7000',4,'7999',79999),(80000,241,42,'80',2,'94',94999),(95000,242,42,'9500',4,'9899',98999),(99000,243,42,'99000',5,'99999',99999),(0,244,43,'0',1,'0',9999),(10000,245,43,'10',2,'14',14999),(15000,246,43,'150',3,'549',54999),(55000,247,43,'55000',5,'59999',59999),(60000,248,43,'6000',4,'9499',94999),(95000,249,43,'95000',5,'99999',99999),(0,250,44,'00',2,'28',28999),(29000,251,44,'2900',4,'2999',29999),(30000,252,44,'300',3,'799',79999),(80000,253,44,'8000',4,'8999',89999),(90000,254,44,'90000',5,'92999',92999),(93000,255,44,'9300',4,'9999',99999),(0,256,45,'0000',4,'1999',19999),(20000,257,45,'20',2,'49',49999),(50000,258,45,'50000',5,'54999',54999),(55000,259,45,'550',3,'799',79999),(80000,260,45,'8000',4,'9499',94999),(95000,261,45,'95000',5,'99999',99999),(0,262,46,'00',2,'19',19999),(20000,263,46,'200',3,'699',69999),(70000,264,46,'7000',4,'9999',99999),(0,265,47,'00',2,'02',2999),(3000,266,47,'0300',4,'0499',4999),(5000,267,47,'05',2,'19',19999),(20000,268,47,'2000',4,'2099',20999),(21000,269,47,'21',2,'27',27999),(28000,270,47,'28000',5,'30999',30999),(31000,271,47,'31',2,'43',43999),(44000,272,47,'440',3,'819',81999),(82000,273,47,'8200',4,'9699',96999),(97000,274,47,'97000',5,'99999',99999),(0,275,48,'00',2,'56',56999),(57000,276,48,'57000',5,'59999',59999),(60000,277,48,'600',3,'799',79999),(80000,278,48,'8000',4,'9499',94999),(95000,279,48,'95000',5,'99999',99999),(0,280,49,'00',2,'19',19999),(20000,281,49,'200',3,'699',69999),(70000,282,49,'7000',4,'8499',84999),(85000,283,49,'85000',5,'99999',99999),(0,284,50,'00',2,'19',19999),(20000,285,50,'200',3,'659',65999),(66000,286,50,'6600',4,'6899',68999),(69000,287,50,'690',3,'699',69999),(70000,288,50,'7000',4,'8499',84999),(85000,289,50,'85000',5,'92999',92999),(93000,290,50,'93',2,'93',93999),(94000,291,50,'9400',4,'9799',97999),(98000,292,50,'98000',5,'99999',99999),(0,293,51,'00',2,'19',19999),(20000,294,51,'200',3,'599',59999),(60000,295,51,'6000',4,'8999',89999),(90000,296,51,'90000',5,'94999',94999),(0,297,52,'00',2,'19',19999),(20000,298,52,'200',3,'699',69999),(70000,299,52,'7000',4,'8499',84999),(85000,300,52,'85000',5,'86999',86999),(87000,301,52,'8700',4,'8999',89999),(90000,302,52,'900',3,'999',99999),(0,303,53,'00',2,'19',19999),(20000,304,53,'200',3,'699',69999),(70000,305,53,'7000',4,'8499',84999),(85000,306,53,'85000',5,'89999',89999),(90000,307,53,'9000',4,'9999',99999),(0,308,54,'00',2,'14',14999),(15000,309,54,'150',3,'249',24999),(25000,310,54,'2500',4,'2999',29999),(30000,311,54,'300',3,'549',54999),(55000,312,54,'5500',4,'8999',89999),(90000,313,54,'90000',5,'96999',96999),(97000,314,54,'970',3,'989',98999),(99000,315,54,'9900',4,'9999',99999),(0,316,55,'00',2,'19',19999),(20000,317,55,'200',3,'599',59999),(70000,318,55,'7000',4,'7999',79999),(90000,319,55,'90000',5,'99999',99999),(0,320,56,'00',2,'14',14999),(15000,321,56,'1500',4,'1699',16999),(17000,322,56,'170',3,'199',19999),(20000,323,56,'2000',4,'2999',29999),(30000,324,56,'300',3,'699',69999),(70000,325,56,'7000',4,'8999',89999),(90000,326,56,'90000',5,'99999',99999),(0,327,57,'00',2,'00',999),(1000,328,57,'0100',4,'0999',9999),(10000,329,57,'10000',5,'19999',19999),(30000,330,57,'300',3,'499',49999),(50000,331,57,'5000',4,'5999',59999),(60000,332,57,'60',2,'89',89999),(90000,333,57,'900',3,'989',98999),(99000,334,57,'9900',4,'9989',99899),(99900,335,57,'99900',5,'99999',99999),(1000,336,58,'01',2,'39',39999),(40000,337,58,'400',3,'499',49999),(50000,338,58,'5000',4,'7999',79999),(80000,339,58,'800',3,'899',89999),(90000,340,58,'9000',4,'9999',99999),(0,341,59,'0',1,'1',19999),(20000,342,59,'20',2,'39',39999),(40000,343,59,'400',3,'799',79999),(80000,344,59,'8000',4,'9999',99999),(1000,345,60,'01',2,'59',59999),(60000,346,60,'600',3,'899',89999),(90000,347,60,'9000',4,'9099',90999),(91000,348,60,'91000',5,'96999',96999),(97000,349,60,'9700',4,'9999',99999),(0,350,61,'000',3,'015',1599),(1600,351,61,'0160',4,'0199',1999),(2000,352,61,'02',2,'02',2999),(3000,353,61,'0300',4,'0599',5999),(6000,354,61,'06',2,'09',9999),(10000,355,61,'10',2,'49',49999),(50000,356,61,'500',3,'849',84999),(85000,357,61,'8500',4,'9099',90999),(91000,358,61,'91000',5,'98999',98999),(99000,359,61,'9900',4,'9999',99999),(0,360,62,'0',1,'1',19999),(20000,361,62,'20',2,'54',54999),(55000,362,62,'550',3,'799',79999),(80000,363,62,'8000',4,'9499',94999),(95000,364,62,'95000',5,'99999',99999),(0,365,63,'0',1,'0',9999),(10000,366,63,'100',3,'169',16999),(17000,367,63,'1700',4,'1999',19999),(20000,368,63,'20',2,'54',54999),(55000,369,63,'550',3,'759',75999),(76000,370,63,'7600',4,'8499',84999),(85000,371,63,'85000',5,'88999',88999),(89000,372,63,'8900',4,'9499',94999),(95000,373,63,'95000',5,'99999',99999),(0,374,64,'00',2,'19',19999),(20000,375,64,'200',3,'699',69999),(70000,376,64,'7000',4,'8499',84999),(85000,377,64,'85000',5,'89999',89999),(90000,378,64,'90000',5,'94999',94999),(95000,379,64,'9500',4,'9999',99999),(0,380,65,'00000',5,'01999',1999),(2000,381,65,'02',2,'24',24999),(25000,382,65,'250',3,'599',59999),(60000,383,65,'6000',4,'9199',91999),(92000,384,65,'92000',5,'98999',98999),(99000,385,65,'990',3,'999',99999),(0,386,66,'0',1,'3',39999),(40000,387,66,'40',2,'59',59999),(60000,388,66,'600',3,'799',79999),(80000,389,66,'8000',4,'9499',94999),(95000,390,66,'95000',5,'99999',99999),(0,391,67,'00',2,'19',19999),(20000,392,67,'200',3,'499',49999),(50000,393,67,'5000',4,'6999',69999),(70000,394,67,'700',3,'999',99999),(0,395,68,'000',3,'199',19999),(20000,396,68,'2000',4,'2999',29999),(30000,397,68,'30000',5,'79999',79999),(80000,398,68,'8000',4,'8999',89999),(90000,399,68,'900',3,'999',99999),(0,400,69,'000',3,'099',9999),(10000,401,69,'1000',4,'1499',14999),(15000,402,69,'15000',5,'19999',19999),(20000,403,69,'20',2,'29',29999),(30000,404,69,'3000',4,'3999',39999),(40000,405,69,'400',3,'799',79999),(80000,406,69,'8000',4,'9499',94999),(95000,407,69,'95000',5,'99999',99999),(0,408,70,'00',2,'19',19999),(20000,409,70,'200',3,'599',59999),(60000,410,70,'6000',4,'9999',99999),(0,411,71,'00',2,'11',11999),(12000,412,71,'1200',4,'1999',19999),(20000,413,71,'200',3,'289',28999),(29000,414,71,'2900',4,'9999',99999),(0,415,72,'00',2,'09',9999),(10000,416,72,'100',3,'699',69999),(70000,417,72,'70',2,'89',89999),(90000,418,72,'9000',4,'9799',97999),(98000,419,72,'98000',5,'99999',99999),(0,420,73,'00',2,'01',1999),(2000,421,73,'020',3,'199',19999),(20000,422,73,'2000',4,'3999',39999),(40000,423,73,'40000',5,'44999',44999),(45000,424,73,'45',2,'49',49999),(50000,425,73,'50',2,'79',79999),(80000,426,73,'800',3,'899',89999),(90000,427,73,'9000',4,'9899',98999),(99000,428,73,'99000',5,'99999',99999),(0,429,74,'00',2,'39',39999),(40000,430,74,'400',3,'799',79999),(80000,431,74,'8000',4,'8999',89999),(90000,432,74,'90000',5,'99999',99999),(0,433,75,'00',2,'39',39999),(40000,434,75,'400',3,'599',59999),(60000,435,75,'6000',4,'8999',89999),(90000,436,75,'90000',5,'99999',99999),(0,437,76,'00',2,'11',11999),(12000,438,76,'120',3,'559',55999),(56000,439,76,'5600',4,'7999',79999),(80000,440,76,'80000',5,'99999',99999),(0,441,77,'00',2,'09',9999),(10000,442,77,'1000',4,'1999',19999),(20000,443,77,'20000',5,'29999',29999),(30000,444,77,'30',2,'49',49999),(50000,445,77,'500',3,'899',89999),(90000,446,77,'9000',4,'9499',94999),(95000,447,77,'95000',5,'99999',99999),(0,448,78,'00',2,'14',14999),(15000,449,78,'15000',5,'16999',16999),(17000,450,78,'17000',5,'19999',19999),(20000,451,78,'200',3,'799',79999),(80000,452,78,'8000',4,'9699',96999),(97000,453,78,'97000',5,'99999',99999),(0,454,79,'0',1,'1',19999),(20000,455,79,'20',2,'54',54999),(55000,456,79,'550',3,'799',79999),(80000,457,79,'8000',4,'9499',94999),(95000,458,79,'95000',5,'99999',99999),(0,459,80,'00',2,'09',9999),(10000,460,80,'100',3,'399',39999),(40000,461,80,'4000',4,'4999',49999),(0,462,81,'00',2,'09',9999),(10000,463,81,'100',3,'399',39999),(40000,464,81,'4000',4,'4999',49999),(0,465,82,'0',1,'3',39999),(40000,466,82,'40',2,'54',54999),(55000,467,82,'550',3,'799',79999),(80000,468,82,'8000',4,'9999',99999),(0,469,83,'00',2,'49',49999),(50000,470,83,'500',3,'939',93999),(94000,471,83,'9400',4,'9999',99999),(0,472,84,'00',2,'29',29999),(30000,473,84,'300',3,'899',89999),(90000,474,84,'9000',4,'9999',99999),(0,475,85,'00',2,'39',39999),(40000,476,85,'400',3,'849',84999),(85000,477,85,'8500',4,'9999',99999),(0,478,86,'0',1,'0',9999),(10000,479,86,'10',2,'39',39999),(40000,480,86,'400',3,'899',89999),(90000,481,86,'9000',4,'9999',99999),(0,482,87,'0',1,'0',9999),(10000,483,87,'10',2,'49',49999),(50000,484,87,'500',3,'799',79999),(80000,485,87,'8000',4,'9999',99999),(0,486,88,'0',1,'0',9999),(10000,487,88,'10',2,'39',39999),(40000,488,88,'400',3,'899',89999),(90000,489,88,'9000',4,'9999',99999),(0,490,89,'0',1,'1',19999),(20000,491,89,'20',2,'39',39999),(40000,492,89,'400',3,'799',79999),(80000,493,89,'8000',4,'9999',99999),(0,494,90,'0',1,'2',29999),(30000,495,90,'30',2,'49',49999),(50000,496,90,'500',3,'799',79999),(80000,497,90,'8000',4,'9999',99999),(0,498,91,'00',2,'79',79999),(80000,499,91,'800',3,'949',94999),(95000,500,91,'9500',4,'9999',99999),(0,501,92,'0',1,'4',49999),(50000,502,92,'50',2,'79',79999),(80000,503,92,'800',3,'899',89999),(90000,504,92,'9000',4,'9999',99999),(0,505,93,'0',1,'1',19999),(20000,506,93,'20',2,'49',49999),(50000,507,93,'500',3,'899',89999),(90000,508,93,'9000',4,'9999',99999),(0,509,94,'0',1,'0',9999),(10000,510,94,'10',2,'39',39999),(40000,511,94,'400',3,'899',89999),(90000,512,94,'9000',4,'9999',99999),(0,513,95,'00',2,'89',89999),(90000,514,95,'900',3,'984',98499),(98500,515,95,'9850',4,'9999',99999),(0,516,96,'00',2,'29',29999),(30000,517,96,'300',3,'399',39999),(40000,518,96,'4000',4,'9999',99999),(0,519,97,'0000',4,'0999',9999),(10000,520,97,'100',3,'499',49999),(50000,521,97,'5000',4,'5999',59999),(60000,522,97,'60',2,'69',69999),(70000,523,97,'700',3,'799',79999),(80000,524,97,'80',2,'89',89999),(90000,525,97,'900',3,'999',99999),(0,526,98,'00',2,'00',999),(1000,527,98,'010',3,'079',7999),(8000,528,98,'08',2,'39',39999),(40000,529,98,'400',3,'569',56999),(57000,530,98,'57',2,'57',57999),(58000,531,98,'580',3,'849',84999),(85000,532,98,'8500',4,'9999',99999),(0,533,99,'0',1,'1',19999),(20000,534,99,'20',2,'39',39999),(40000,535,99,'400',3,'899',89999),(90000,536,99,'9000',4,'9999',99999),(0,537,100,'0',1,'1',19999),(20000,538,100,'20',2,'79',79999),(80000,539,100,'800',3,'999',99999),(0,540,101,'00',2,'39',39999),(40000,541,101,'400',3,'849',84999),(85000,542,101,'8500',4,'9999',99999),(0,543,102,'0',1,'0',9999),(10000,544,102,'10',2,'39',39999),(40000,545,102,'400',3,'899',89999),(90000,546,102,'9000',4,'9999',99999),(0,547,103,'00',2,'29',29999),(30000,548,103,'300',3,'849',84999),(85000,549,103,'8500',4,'9999',99999),(0,550,104,'00',2,'39',39999),(40000,551,104,'400',3,'849',84999),(85000,552,104,'8500',4,'9999',99999),(0,553,105,'0',1,'1',19999),(20000,554,105,'20',2,'39',39999),(40000,555,105,'400',3,'799',79999),(80000,556,105,'8000',4,'9999',99999),(0,557,106,'0',1,'0',9999),(10000,558,106,'10',2,'39',39999),(40000,559,106,'400',3,'599',59999),(60000,560,106,'60',2,'89',89999),(90000,561,106,'9000',4,'9999',99999),(0,562,107,'0',1,'1',19999),(20000,563,107,'20',2,'39',39999),(40000,564,107,'400',3,'799',79999),(80000,565,107,'8000',4,'9999',99999),(0,566,108,'00',2,'39',39999),(40000,567,108,'400',3,'929',92999),(93000,568,108,'9300',4,'9999',99999),(0,569,109,'0',1,'0',9999),(10000,570,109,'10',2,'39',39999),(40000,571,109,'400',3,'899',89999),(90000,572,109,'9000',4,'9999',99999),(0,573,110,'00',2,'39',39999),(40000,574,110,'400',3,'699',69999),(70000,575,110,'70',2,'84',84999),(85000,576,110,'8500',4,'8799',87999),(88000,577,110,'88',2,'99',99999),(0,578,111,'0',1,'0',9999),(10000,579,111,'10',2,'18',18999),(19000,580,111,'1900',4,'1999',19999),(20000,581,111,'20',2,'49',49999),(50000,582,111,'500',3,'899',89999),(90000,583,111,'9000',4,'9999',99999),(0,584,112,'0',1,'1',19999),(20000,585,112,'20',2,'79',79999),(80000,586,112,'800',3,'949',94999),(95000,587,112,'9500',4,'9999',99999),(0,588,113,'00',2,'59',59999),(60000,589,113,'600',3,'899',89999),(90000,590,113,'9000',4,'9999',99999),(0,591,114,'0',1,'2',29999),(30000,592,114,'30',2,'69',69999),(70000,593,114,'700',3,'949',94999),(95000,594,114,'9500',4,'9999',99999),(0,595,115,'00',2,'54',54999),(55000,596,115,'5500',4,'5599',55999),(56000,597,115,'56',2,'59',59999),(60000,598,115,'600',3,'849',84999),(85000,599,115,'8500',4,'9999',99999),(0,600,116,'0',1,'2',29999),(30000,601,116,'30',2,'54',54999),(55000,602,116,'550',3,'734',73499),(73500,603,116,'7350',4,'7499',74999),(75000,604,116,'7500',4,'9999',99999),(0,605,117,'0',1,'6',69999),(70000,606,117,'70',2,'94',94999),(95000,607,117,'950',3,'999',99999),(0,608,118,'00',2,'39',39999),(40000,609,118,'400',3,'899',89999),(90000,610,118,'9000',4,'9999',99999),(0,611,119,'000',3,'149',14999),(15000,612,119,'1500',4,'1999',19999),(20000,613,119,'20',2,'69',69999),(70000,614,119,'7000',4,'7499',74999),(75000,615,119,'750',3,'959',95999),(96000,616,119,'9600',4,'9999',99999),(0,617,120,'00',2,'39',39999),(40000,618,120,'400',3,'899',89999),(90000,619,120,'9000',4,'9999',99999),(0,620,121,'00',2,'49',49999),(50000,621,121,'500',3,'939',93999),(94000,622,121,'9400',4,'9999',99999),(0,623,122,'00',2,'39',39999),(40000,624,122,'400',3,'899',89999),(90000,625,122,'9000',4,'9999',99999),(0,626,123,'0',1,'5',59999),(60000,627,123,'60',2,'89',89999),(90000,628,123,'900',3,'989',98999),(99000,629,123,'9900',4,'9999',99999),(0,630,124,'00',2,'09',9999),(10000,631,124,'1',1,'1',19999),(20000,632,124,'200',3,'249',24999),(25000,633,124,'2500',4,'2999',29999),(30000,634,124,'30',2,'59',59999),(60000,635,124,'600',3,'899',89999),(90000,636,124,'9000',4,'9999',99999),(0,637,125,'00',2,'05',5999),(6000,638,125,'060',3,'089',8999),(9000,639,125,'0900',4,'0999',9999),(10000,640,125,'10',2,'69',69999),(70000,641,125,'700',3,'969',96999),(97000,642,125,'9700',4,'9999',99999),(0,643,126,'0',1,'2',29999),(30000,644,126,'30',2,'54',54999),(55000,645,126,'550',3,'749',74999),(75000,646,126,'7500',4,'9499',94999),(95000,647,126,'95',2,'99',99999),(0,648,127,'0',1,'0',9999),(10000,649,127,'100',3,'399',39999),(40000,650,127,'4000',4,'4499',44999),(45000,651,127,'45',2,'89',89999),(90000,652,127,'900',3,'949',94999),(95000,653,127,'9500',4,'9999',99999),(0,654,128,'0',1,'5',59999),(60000,655,128,'60',2,'89',89999),(90000,656,128,'900',3,'989',98999),(99000,657,128,'9900',4,'9999',99999),(0,658,129,'00',2,'89',89999),(90000,659,129,'900',3,'989',98999),(99000,660,129,'9900',4,'9999',99999),(0,661,130,'00',2,'29',29999),(30000,662,130,'300',3,'399',39999),(40000,663,130,'40',2,'94',94999),(95000,664,130,'950',3,'989',98999),(99000,665,130,'9900',4,'9999',99999),(0,666,131,'0',1,'4',49999),(50000,667,131,'50',2,'64',64999),(65000,668,131,'650',3,'659',65999),(66000,669,131,'66',2,'75',75999),(76000,670,131,'760',3,'899',89999),(90000,671,131,'9000',4,'9999',99999),(0,672,132,'0',1,'3',39999),(40000,673,132,'40',2,'89',89999),(90000,674,132,'900',3,'989',98999),(99000,675,132,'9900',4,'9999',99999),(0,676,133,'00',2,'09',9999),(10000,677,133,'100',3,'159',15999),(16000,678,133,'1600',4,'1999',19999),(20000,679,133,'20',2,'79',79999),(80000,680,133,'800',3,'949',94999),(95000,681,133,'9500',4,'9999',99999),(0,682,134,'00',2,'79',79999),(80000,683,134,'800',3,'989',98999),(99000,684,134,'9900',4,'9999',99999),(80000,685,135,'80',2,'94',94999),(95000,686,135,'950',3,'989',98999),(99000,687,135,'9900',4,'9999',99999),(0,688,136,'00',2,'49',49999),(50000,689,136,'500',3,'899',89999),(90000,690,136,'9000',4,'9999',99999),(0,691,137,'0',1,'4',49999),(50000,692,137,'50',2,'79',79999),(80000,693,137,'800',3,'899',89999),(90000,694,137,'9000',4,'9999',99999),(0,695,138,'00',2,'39',39999),(40000,696,138,'400',3,'899',89999),(90000,697,138,'9000',4,'9399',93999),(94000,698,138,'940',3,'969',96999),(97000,699,138,'97',2,'99',99999),(0,700,139,'00',2,'39',39999),(40000,701,139,'400',3,'879',87999),(88000,702,139,'8800',4,'9999',99999),(0,703,140,'0',1,'2',29999),(30000,704,140,'30',2,'54',54999),(55000,705,140,'550',3,'749',74999),(75000,706,140,'7500',4,'9999',99999),(0,707,141,'0',1,'0',9999),(10000,708,141,'100',3,'199',19999),(20000,709,141,'2000',4,'2999',29999),(30000,710,141,'30',2,'59',59999),(60000,711,141,'600',3,'949',94999),(95000,712,141,'9500',4,'9999',99999),(0,713,142,'00',2,'49',49999),(50000,714,142,'500',3,'799',79999),(80000,715,142,'80',2,'99',99999),(0,716,144,'0',1,'1',19999),(20000,717,144,'20',2,'89',89999),(90000,718,144,'900',3,'999',99999),(0,719,145,'0',1,'5',59999),(60000,720,145,'60',2,'89',89999),(90000,721,145,'900',3,'999',99999),(0,722,146,'0',1,'3',39999),(40000,723,146,'40',2,'79',79999),(80000,724,146,'800',3,'999',99999),(0,725,147,'0',1,'2',29999),(30000,726,147,'30',2,'59',59999),(60000,727,147,'600',3,'699',69999),(70000,728,147,'70',2,'89',89999),(90000,729,147,'90',2,'94',94999),(95000,730,147,'950',3,'999',99999),(0,731,148,'0',1,'0',9999),(10000,732,148,'10',2,'89',89999),(90000,733,148,'900',3,'999',99999),(0,734,149,'0',1,'3',39999),(40000,735,149,'40',2,'94',94999),(95000,736,149,'950',3,'999',99999),(0,737,150,'0',1,'2',29999),(30000,738,150,'30',2,'89',89999),(90000,739,150,'900',3,'999',99999),(0,740,151,'00',2,'59',59999),(60000,741,151,'600',3,'999',99999),(0,742,152,'0',1,'3',39999),(40000,743,152,'400',3,'599',59999),(60000,744,152,'60',2,'89',89999),(90000,745,152,'900',3,'999',99999),(0,746,153,'0',1,'2',29999),(30000,747,153,'30',2,'35',35999),(60000,748,153,'600',3,'604',60499),(0,749,154,'0',1,'4',49999),(50000,750,154,'50',2,'89',89999),(90000,751,154,'900',3,'999',99999),(0,752,155,'0',1,'4',49999),(50000,753,155,'50',2,'79',79999),(80000,754,155,'800',3,'999',99999),(0,755,156,'0',1,'2',29999),(30000,756,156,'30',2,'69',69999),(70000,757,156,'700',3,'999',99999),(0,758,157,'0',1,'2',29999),(30000,759,157,'30',2,'89',89999),(90000,760,157,'900',3,'999',99999),(0,761,158,'0',1,'3',39999),(40000,762,158,'40',2,'79',79999),(80000,763,158,'800',3,'999',99999),(0,764,159,'0',1,'2',29999),(30000,765,159,'300',3,'399',39999),(40000,766,159,'40',2,'69',69999),(90000,767,159,'900',3,'999',99999),(0,768,160,'0',1,'4',49999),(50000,769,160,'50',2,'89',89999),(90000,770,160,'900',3,'999',99999),(0,771,161,'0',1,'1',19999),(20000,772,161,'20',2,'69',69999),(70000,773,161,'700',3,'799',79999),(80000,774,161,'8',1,'8',89999),(90000,775,161,'90',2,'99',99999),(0,776,162,'0',1,'3',39999),(40000,777,162,'40',2,'69',69999),(70000,778,162,'700',3,'999',99999),(0,779,163,'0',1,'1',19999),(20000,780,163,'20',2,'79',79999),(80000,781,163,'800',3,'999',99999),(0,782,164,'0',1,'1',19999),(20000,783,164,'20',2,'79',79999),(80000,784,164,'800',3,'999',99999),(0,785,165,'0',1,'3',39999),(40000,786,165,'40',2,'79',79999),(80000,787,165,'800',3,'999',99999),(0,788,166,'0',1,'0',9999),(10000,789,166,'10',2,'59',59999),(60000,790,166,'600',3,'999',99999),(0,791,167,'0',1,'2',29999),(30000,792,167,'30',2,'59',59999),(60000,793,167,'600',3,'999',99999),(0,794,168,'0',1,'0',9999),(10000,795,168,'10',2,'79',79999),(80000,796,168,'800',3,'999',99999),(0,797,169,'0',1,'4',49999),(50000,798,169,'50',2,'79',79999),(80000,799,169,'800',3,'999',99999),(0,800,170,'0',1,'4',49999),(50000,801,170,'50',2,'79',79999),(80000,802,170,'800',3,'999',99999),(0,803,171,'0',1,'4',49999),(50000,804,171,'50',2,'79',79999),(80000,805,171,'800',3,'999',99999),(0,806,172,'0',1,'0',9999),(10000,807,172,'10',2,'59',59999),(60000,808,172,'600',3,'699',69999),(70000,809,172,'7',1,'7',79999),(80000,810,172,'80',2,'99',99999),(0,811,173,'0',1,'2',29999),(30000,812,173,'30',2,'59',59999),(60000,813,173,'600',3,'999',99999),(0,814,174,'0',1,'1',19999),(20000,815,174,'20',2,'79',79999),(80000,816,174,'800',3,'999',99999),(0,817,175,'0',1,'2',29999),(30000,818,175,'30',2,'59',59999),(60000,819,175,'600',3,'699',69999),(70000,820,175,'7',1,'8',89999),(90000,821,175,'90',2,'99',99999),(0,822,176,'0',1,'0',9999),(10000,823,176,'10',2,'59',59999),(60000,824,176,'600',3,'999',99999),(0,825,177,'0',1,'1',19999),(20000,826,177,'20',2,'59',59999),(60000,827,177,'600',3,'999',99999),(0,828,178,'0',1,'1',19999),(20000,829,178,'20',2,'59',59999),(60000,830,178,'600',3,'899',89999),(90000,831,178,'90',2,'99',99999),(0,832,179,'0',1,'5',59999),(60000,833,179,'60',2,'89',89999),(90000,834,179,'900',3,'999',99999),(0,835,180,'0',1,'0',9999),(10000,836,180,'10',2,'69',69999),(70000,837,180,'700',3,'999',99999),(0,838,181,'0',1,'2',29999),(30000,839,181,'30',2,'79',79999),(80000,840,181,'800',3,'999',99999),(0,841,182,'0',1,'4',49999),(50000,842,182,'50',2,'79',79999),(80000,843,182,'800',3,'999',99999),(0,844,183,'0',1,'2',29999),(30000,845,183,'30',2,'59',59999),(60000,846,183,'600',3,'999',99999),(0,847,184,'0',1,'4',49999),(50000,848,184,'50',2,'79',79999),(80000,849,184,'800',3,'999',99999),(0,850,185,'0',1,'5',59999),(60000,851,185,'60',2,'89',89999),(90000,852,185,'900',3,'999',99999),(0,853,186,'0',1,'2',29999),(30000,854,186,'30',2,'59',59999),(60000,855,186,'600',3,'999',99999),(0,856,187,'0',1,'2',29999),(30000,857,187,'30',2,'69',69999),(70000,858,187,'700',3,'999',99999),(0,859,188,'0',1,'4',49999),(50000,860,188,'50',2,'79',79999),(80000,861,188,'800',3,'999',99999),(0,862,189,'0',1,'1',19999),(20000,863,189,'20',2,'89',89999),(90000,864,189,'900',3,'999',99999),(0,865,190,'0',1,'4',49999),(50000,866,190,'50',2,'79',79999),(80000,867,190,'800',3,'999',99999),(0,868,192,'0',1,'4',49999),(50000,869,192,'50',2,'79',79999),(80000,870,192,'800',3,'999',99999),(0,871,193,'0',1,'2',29999),(30000,872,193,'30',2,'79',79999),(80000,873,193,'800',3,'939',93999),(94000,874,193,'94',2,'99',99999),(0,875,194,'0',1,'2',29999),(30000,876,194,'30',2,'69',69999),(70000,877,194,'700',3,'999',99999),(0,878,195,'0',1,'1',19999),(20000,879,195,'20',2,'59',59999),(60000,880,195,'600',3,'799',79999),(80000,881,195,'80',2,'89',89999),(90000,882,195,'90',2,'99',99999),(0,883,196,'00',2,'59',59999),(60000,884,196,'600',3,'859',85999),(86000,885,196,'86',2,'99',99999),(0,886,197,'0',1,'1',19999),(20000,887,197,'20',2,'79',79999),(80000,888,197,'800',3,'999',99999),(0,889,198,'0',1,'4',49999),(50000,890,198,'50',2,'94',94999),(95000,891,198,'950',3,'999',99999),(0,892,199,'0',1,'2',29999),(30000,893,199,'30',2,'59',59999),(60000,894,199,'600',3,'999',99999),(0,895,200,'0',1,'0',9999),(10000,896,200,'10',2,'94',94999),(95000,897,200,'950',3,'999',99999),(0,898,201,'0',1,'3',39999),(40000,899,201,'40',2,'89',89999),(90000,900,201,'900',3,'999',99999),(0,901,202,'0',1,'4',49999),(50000,902,202,'50',2,'79',79999),(80000,903,202,'800',3,'999',99999),(0,904,203,'00',2,'49',49999),(50000,905,203,'500',3,'999',99999),(0,906,204,'0',1,'1',19999),(20000,907,204,'20',2,'79',79999),(80000,908,204,'800',3,'999',99999),(0,909,205,'0',1,'3',39999),(40000,910,205,'40',2,'79',79999),(80000,911,205,'800',3,'999',99999),(0,912,206,'0',1,'2',29999),(30000,913,206,'30',2,'69',69999),(70000,914,206,'700',3,'799',79999),(0,915,207,'0',1,'1',19999),(20000,916,207,'20',2,'59',59999),(60000,917,207,'600',3,'899',89999),(0,918,208,'0',1,'3',39999),(40000,919,208,'400',3,'599',59999),(60000,920,208,'60',2,'89',89999),(90000,921,208,'900',3,'999',99999),(0,922,209,'00',2,'19',19999),(20000,923,209,'200',3,'699',69999),(70000,924,209,'7000',4,'8999',89999),(90000,925,209,'90000',5,'97599',97599),(97600,926,209,'976000',6,'999999',99999);
/*!40000 ALTER TABLE `ezisbn_registrant_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezkeyword`
--

DROP TABLE IF EXISTS `ezkeyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezkeyword` (
  `class_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezkeyword_keyword` (`keyword`),
  KEY `ezkeyword_keyword_id` (`keyword`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezkeyword`
--

LOCK TABLES `ezkeyword` WRITE;
/*!40000 ALTER TABLE `ezkeyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezkeyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezkeyword_attribute_link`
--

DROP TABLE IF EXISTS `ezkeyword_attribute_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezkeyword_attribute_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword_id` int(11) NOT NULL DEFAULT '0',
  `objectattribute_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezkeyword_attr_link_keyword_id` (`keyword_id`),
  KEY `ezkeyword_attr_link_kid_oaid` (`keyword_id`,`objectattribute_id`),
  KEY `ezkeyword_attr_link_oaid` (`objectattribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezkeyword_attribute_link`
--

LOCK TABLES `ezkeyword_attribute_link` WRITE;
/*!40000 ALTER TABLE `ezkeyword_attribute_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezkeyword_attribute_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezm_block`
--

DROP TABLE IF EXISTS `ezm_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezm_block` (
  `id` char(32) NOT NULL,
  `zone_id` char(32) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `node_id` int(10) unsigned NOT NULL,
  `overflow_id` char(32) DEFAULT NULL,
  `last_update` int(10) unsigned DEFAULT '0',
  `block_type` varchar(255) DEFAULT NULL,
  `fetch_params` longtext,
  `rotation_type` int(10) unsigned DEFAULT NULL,
  `rotation_interval` int(10) unsigned DEFAULT NULL,
  `is_removed` int(2) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezm_block__is_removed` (`is_removed`),
  KEY `ezm_block__node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezm_block`
--

LOCK TABLES `ezm_block` WRITE;
/*!40000 ALTER TABLE `ezm_block` DISABLE KEYS */;
INSERT INTO `ezm_block` VALUES ('1e1e355c8da3c92e80354f243c6dd37b','6c7f907b831a819ed8562e3ddce5b264','Campaign',72,'',0,'Campaign','',0,0,0),('250bcab3ea2929edbf72ece096dcdb7a','6c7f907b831a819ed8562e3ddce5b264','Amazon Gallery',72,'',0,'Gallery','',0,0,0),('27d176fb3baf2ab9dea2b1f98270e701','f742abffba08fc849b6e80dec769a74c','Tags',2,'',0,'TagCloud','',0,0,0),('4d2f5e57d2a2528b276cd9e776a62e42','656b2182b4be70f18ca7b44b3fbb6dbe','Featured Video',72,'',0,'Video','',0,0,0),('4efd68496edd8184aade729b4d2ee17b','865346aabbcc48a9839274cc554868be','Main Story',2,'',0,'Campaign','',0,0,0),('4f1c2e8abfb4f163fbf256a29af0a24e','6669bce3079221f326d4eb4121447fd9','Products',87,'',0,'ContentGrid','',0,0,0),('530f34a56860389349bd37e74bc095a7','f742abffba08fc849b6e80dec769a74c','Selected Video',2,'',0,'Video','',0,0,0),('594491ab539125dc271807a83724e608','fe8088a104581ea7faa6c00fe743f072','',60,'',0,'ContentGrid','',0,0,0),('70150fb6cf7608e841868b3fe925b58c','1b6149311bf4ece4717e6fff905e148c','',87,'',0,'Campaign','',0,0,0),('74f7a63a2c079e279c8669f660ded478','c5ce576877ab71afb7c143ea3276db4f','Highlighted Feature',60,'',0,'HighlightedItem','',0,0,0),('9481d2b1810c928ded55e94b0ae13647','f742abffba08fc849b6e80dec769a74c','Main Items',2,'',0,'ContentGrid','',0,0,0),('a577b33f9a9ec054e0c2171288056be9','c5ce576877ab71afb7c143ea3276db4f','Main Features',60,'',0,'ContentGrid','',0,0,0),('b0d7b1fae15381576e13e5bd1480f555','f742abffba08fc849b6e80dec769a74c','News',2,'',0,'FeedReader','',0,0,0),('bffec84af43985679e30e6ff6d79c19b','865346aabbcc48a9839274cc554868be','Mixed Content',2,'',0,'ContentGrid','',0,0,0),('c0ef745972ce2d55057c70d157eb7b96','fe8088a104581ea7faa6c00fe743f072','',60,'',0,'Campaign','',0,0,0),('cd58c813f7463484f22a2168a44cdcc4','f742abffba08fc849b6e80dec769a74c','Highlighted Feature',2,'',0,'HighlightedItem','',0,0,0),('d769ae69f693b76429a731a8ce475e23','865346aabbcc48a9839274cc554868be','Gallery',2,'',0,'Gallery','',0,0,0),('f36743396b8c36f10b467aa52f133e58','656b2182b4be70f18ca7b44b3fbb6dbe','Travel Information',72,'',0,'ContentGrid','',0,0,0);
/*!40000 ALTER TABLE `ezm_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezm_pool`
--

DROP TABLE IF EXISTS `ezm_pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezm_pool` (
  `block_id` char(32) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  `priority` int(10) unsigned DEFAULT '0',
  `ts_publication` int(11) DEFAULT '0',
  `ts_visible` int(10) unsigned DEFAULT '0',
  `ts_hidden` int(10) unsigned DEFAULT '0',
  `rotation_until` int(10) unsigned DEFAULT '0',
  `moved_to` char(32) DEFAULT NULL,
  PRIMARY KEY (`block_id`,`object_id`),
  KEY `ezm_pool__block_id__ts_publication__priority` (`block_id`,`ts_publication`,`priority`),
  KEY `ezm_pool__block_id__ts_visible` (`block_id`,`ts_visible`),
  KEY `ezm_pool__block_id__ts_hidden` (`block_id`,`ts_hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezm_pool`
--

LOCK TABLES `ezm_pool` WRITE;
/*!40000 ALTER TABLE `ezm_pool` DISABLE KEYS */;
INSERT INTO `ezm_pool` VALUES ('1e1e355c8da3c92e80354f243c6dd37b',82,84,1,1352981640,1352981985,0,0,NULL),('1e1e355c8da3c92e80354f243c6dd37b',83,85,2,1352981700,1352981985,0,0,NULL),('1e1e355c8da3c92e80354f243c6dd37b',84,86,0,1353413112,1353413126,0,0,NULL),('250bcab3ea2929edbf72ece096dcdb7a',72,74,7,1332972538,1332972652,0,0,NULL),('250bcab3ea2929edbf72ece096dcdb7a',73,75,6,1332972538,1332972652,0,0,NULL),('250bcab3ea2929edbf72ece096dcdb7a',74,76,5,1332972538,1332972652,0,0,NULL),('250bcab3ea2929edbf72ece096dcdb7a',75,77,4,1332972538,1332972652,0,0,NULL),('250bcab3ea2929edbf72ece096dcdb7a',76,78,3,1332972538,1332972652,0,0,NULL),('250bcab3ea2929edbf72ece096dcdb7a',77,79,2,1332972538,1332972652,0,0,NULL),('250bcab3ea2929edbf72ece096dcdb7a',78,80,1,1332972538,1332972652,0,0,NULL),('250bcab3ea2929edbf72ece096dcdb7a',79,81,0,1332972538,1332972652,0,0,NULL),('4d2f5e57d2a2528b276cd9e776a62e42',80,82,1,1353412523,1353413055,0,0,NULL),('4efd68496edd8184aade729b4d2ee17b',69,71,1,1353411853,1353411957,0,0,NULL),('4f1c2e8abfb4f163fbf256a29af0a24e',88,90,1,1353413236,1353413245,0,0,NULL),('4f1c2e8abfb4f163fbf256a29af0a24e',89,91,2,1353413236,1353413245,0,0,NULL),('530f34a56860389349bd37e74bc095a7',80,82,1,1353412117,1353412156,0,0,NULL),('594491ab539125dc271807a83724e608',61,63,1,1332971673,1332971695,0,0,NULL),('594491ab539125dc271807a83724e608',62,64,2,1332971652,1332971695,0,0,NULL),('594491ab539125dc271807a83724e608',63,65,3,1332971627,1332971695,0,0,NULL),('594491ab539125dc271807a83724e608',64,66,4,1353412434,1353412440,0,0,NULL),('70150fb6cf7608e841868b3fe925b58c',91,93,1,1353413207,1353413235,0,0,NULL),('74f7a63a2c079e279c8669f660ded478',67,69,1,1353412302,1353412348,0,0,NULL),('9481d2b1810c928ded55e94b0ae13647',88,90,0,1353412146,1353412156,0,0,NULL),('9481d2b1810c928ded55e94b0ae13647',89,91,1,1353412146,1353412156,0,0,NULL),('a577b33f9a9ec054e0c2171288056be9',66,68,1,1353412337,1353412348,0,0,NULL),('a577b33f9a9ec054e0c2171288056be9',68,70,2,1353412337,1353412348,0,0,NULL),('bffec84af43985679e30e6ff6d79c19b',66,68,2,1353411920,1353411957,0,0,NULL),('bffec84af43985679e30e6ff6d79c19b',67,69,3,1353411920,1353411957,0,0,NULL),('bffec84af43985679e30e6ff6d79c19b',83,85,0,1353411955,1353411957,0,0,NULL),('bffec84af43985679e30e6ff6d79c19b',91,93,1,1353411943,1353411957,0,0,NULL),('c0ef745972ce2d55057c70d157eb7b96',69,71,1,1353412261,1353412348,0,0,NULL),('cd58c813f7463484f22a2168a44cdcc4',68,70,1,1353412091,1353412156,0,0,NULL),('d769ae69f693b76429a731a8ce475e23',72,74,6,1332970925,1332971128,0,0,NULL),('d769ae69f693b76429a731a8ce475e23',73,75,7,1332970925,1332971128,0,0,NULL),('d769ae69f693b76429a731a8ce475e23',74,76,0,1332970925,1332971128,0,0,NULL),('d769ae69f693b76429a731a8ce475e23',75,77,1,1332970925,1332971128,0,0,NULL),('d769ae69f693b76429a731a8ce475e23',76,78,2,1332970925,1332971128,0,0,NULL),('d769ae69f693b76429a731a8ce475e23',77,79,3,1332970925,1332971128,0,0,NULL),('d769ae69f693b76429a731a8ce475e23',78,80,4,1332970925,1332971128,0,0,NULL),('d769ae69f693b76429a731a8ce475e23',79,81,5,1332970925,1332971128,0,0,NULL),('f36743396b8c36f10b467aa52f133e58',82,84,2,1353413054,1353413055,0,0,NULL),('f36743396b8c36f10b467aa52f133e58',84,86,1,1353413054,1353413055,0,0,NULL);
/*!40000 ALTER TABLE `ezm_pool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmedia`
--

DROP TABLE IF EXISTS `ezmedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmedia` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `controls` varchar(50) DEFAULT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `has_controller` int(11) DEFAULT '0',
  `height` int(11) DEFAULT NULL,
  `is_autoplay` int(11) DEFAULT '0',
  `is_loop` int(11) DEFAULT '0',
  `mime_type` varchar(50) NOT NULL DEFAULT '',
  `original_filename` varchar(255) NOT NULL DEFAULT '',
  `pluginspage` varchar(255) DEFAULT NULL,
  `quality` varchar(50) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  `width` int(11) DEFAULT NULL,
  PRIMARY KEY (`contentobject_attribute_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmedia`
--

LOCK TABLES `ezmedia` WRITE;
/*!40000 ALTER TABLE `ezmedia` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmessage`
--

DROP TABLE IF EXISTS `ezmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmessage` (
  `body` longtext,
  `destination_address` varchar(50) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_sent` int(11) NOT NULL DEFAULT '0',
  `send_method` varchar(50) NOT NULL DEFAULT '',
  `send_time` varchar(50) NOT NULL DEFAULT '',
  `send_weekday` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmessage`
--

LOCK TABLES `ezmessage` WRITE;
/*!40000 ALTER TABLE `ezmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmodule_run`
--

DROP TABLE IF EXISTS `ezmodule_run`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmodule_run` (
  `function_name` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_data` longtext,
  `module_name` varchar(255) DEFAULT NULL,
  `workflow_process_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezmodule_run_workflow_process_id_s` (`workflow_process_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmodule_run`
--

LOCK TABLES `ezmodule_run` WRITE;
/*!40000 ALTER TABLE `ezmodule_run` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmodule_run` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmultipricedata`
--

DROP TABLE IF EXISTS `ezmultipricedata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmultipricedata` (
  `contentobject_attr_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attr_version` int(11) NOT NULL DEFAULT '0',
  `currency_code` varchar(4) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `value` decimal(15,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `ezmultipricedata_coa_id` (`contentobject_attr_id`),
  KEY `ezmultipricedata_coa_version` (`contentobject_attr_version`),
  KEY `ezmultipricedata_currency_code` (`currency_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmultipricedata`
--

LOCK TABLES `ezmultipricedata` WRITE;
/*!40000 ALTER TABLE `ezmultipricedata` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmultipricedata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznode_assignment`
--

DROP TABLE IF EXISTS `eznode_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznode_assignment` (
  `contentobject_id` int(11) DEFAULT NULL,
  `contentobject_version` int(11) DEFAULT NULL,
  `from_node_id` int(11) DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_main` int(11) NOT NULL DEFAULT '0',
  `op_code` int(11) NOT NULL DEFAULT '0',
  `parent_node` int(11) DEFAULT NULL,
  `parent_remote_id` varchar(100) NOT NULL DEFAULT '',
  `remote_id` varchar(100) NOT NULL DEFAULT '0',
  `sort_field` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `eznode_assignment_co_id` (`contentobject_id`),
  KEY `eznode_assignment_co_version` (`contentobject_version`),
  KEY `eznode_assignment_coid_cov` (`contentobject_id`,`contentobject_version`),
  KEY `eznode_assignment_is_main` (`is_main`),
  KEY `eznode_assignment_parent_node` (`parent_node`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznode_assignment`
--

LOCK TABLES `eznode_assignment` WRITE;
/*!40000 ALTER TABLE `eznode_assignment` DISABLE KEYS */;
INSERT INTO `eznode_assignment` VALUES (8,2,0,4,1,2,5,'','0',1,1),(42,1,0,5,1,2,5,'','0',9,1),(10,2,-1,6,1,2,44,'','0',9,1),(4,1,0,7,1,2,1,'','0',1,1),(12,1,0,8,1,2,5,'','0',1,1),(13,1,0,9,1,2,5,'','0',1,1),(41,1,0,11,1,2,1,'','0',1,1),(11,1,0,12,1,2,5,'','0',1,1),(45,1,-1,16,1,2,1,'','0',9,1),(49,1,0,27,1,2,43,'','0',9,1),(50,1,0,28,1,2,43,'','0',9,1),(51,1,0,29,1,2,43,'','0',9,1),(52,1,0,30,1,2,48,'','0',1,1),(56,1,0,34,1,2,1,'','0',2,0),(14,3,-1,38,1,2,13,'','0',1,1),(54,2,-1,39,1,2,58,'','0',1,1),(14,4,-1,85,1,2,13,'','0',1,1),(99,1,0,86,1,2,5,'','0',1,1),(11,2,-1,87,1,2,5,'','0',1,1),(100,1,0,88,1,2,2,'','0',2,0),(101,1,0,89,1,2,2,'','0',2,0),(102,1,0,90,1,2,2,'','0',2,0),(103,1,0,91,1,2,103,'','0',1,1),(104,1,0,92,1,2,2,'','0',2,0),(54,3,-1,93,1,2,58,'','0',1,1),(105,1,0,94,1,2,103,'','0',1,1),(106,1,0,95,1,2,104,'','0',1,1);
/*!40000 ALTER TABLE `eznode_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznotificationcollection`
--

DROP TABLE IF EXISTS `eznotificationcollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznotificationcollection` (
  `data_subject` longtext NOT NULL,
  `data_text` longtext NOT NULL,
  `event_id` int(11) NOT NULL DEFAULT '0',
  `handler` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transport` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznotificationcollection`
--

LOCK TABLES `eznotificationcollection` WRITE;
/*!40000 ALTER TABLE `eznotificationcollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `eznotificationcollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznotificationcollection_item`
--

DROP TABLE IF EXISTS `eznotificationcollection_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznotificationcollection_item` (
  `address` varchar(255) NOT NULL DEFAULT '',
  `collection_id` int(11) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `send_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznotificationcollection_item`
--

LOCK TABLES `eznotificationcollection_item` WRITE;
/*!40000 ALTER TABLE `eznotificationcollection_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `eznotificationcollection_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznotificationevent`
--

DROP TABLE IF EXISTS `eznotificationevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznotificationevent` (
  `data_int1` int(11) NOT NULL DEFAULT '0',
  `data_int2` int(11) NOT NULL DEFAULT '0',
  `data_int3` int(11) NOT NULL DEFAULT '0',
  `data_int4` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `data_text2` longtext NOT NULL,
  `data_text3` longtext NOT NULL,
  `data_text4` longtext NOT NULL,
  `event_type_string` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznotificationevent`
--

LOCK TABLES `eznotificationevent` WRITE;
/*!40000 ALTER TABLE `eznotificationevent` DISABLE KEYS */;
INSERT INTO `eznotificationevent` VALUES (57,1,0,0,'','','','','ezpublish',1,0),(58,1,0,0,'','','','','ezpublish',2,0),(59,1,0,0,'','','','','ezpublish',3,0),(60,1,0,0,'','','','','ezpublish',4,0),(61,1,0,0,'','','','','ezpublish',5,0),(62,1,0,0,'','','','','ezpublish',6,0),(63,1,0,0,'','','','','ezpublish',7,0),(64,1,0,0,'','','','','ezpublish',8,0),(65,1,0,0,'','','','','ezpublish',9,0),(66,1,0,0,'','','','','ezpublish',10,0),(67,1,0,0,'','','','','ezpublish',11,0),(68,1,0,0,'','','','','ezpublish',12,0),(69,1,0,0,'','','','','ezpublish',13,0),(70,1,0,0,'','','','','ezpublish',14,0),(71,1,0,0,'','','','','ezpublish',15,0),(72,1,0,0,'','','','','ezpublish',16,0),(73,1,0,0,'','','','','ezpublish',17,0),(74,1,0,0,'','','','','ezpublish',18,0),(75,1,0,0,'','','','','ezpublish',19,0),(76,1,0,0,'','','','','ezpublish',20,0),(77,1,0,0,'','','','','ezpublish',21,0),(78,1,0,0,'','','','','ezpublish',22,0),(79,1,0,0,'','','','','ezpublish',23,0),(80,1,0,0,'','','','','ezpublish',24,0),(81,1,0,0,'','','','','ezpublish',25,0),(82,1,0,0,'','','','','ezpublish',26,0),(83,1,0,0,'','','','','ezpublish',27,0),(84,1,0,0,'','','','','ezpublish',28,0),(85,1,0,0,'','','','','ezpublish',29,0),(86,1,0,0,'','','','','ezpublish',30,0),(87,1,0,0,'','','','','ezpublish',31,0),(88,1,0,0,'','','','','ezpublish',32,0),(89,1,0,0,'','','','','ezpublish',33,0),(90,1,0,0,'','','','','ezpublish',34,0),(91,1,0,0,'','','','','ezpublish',35,0),(92,1,0,0,'','','','','ezpublish',36,0),(93,1,0,0,'','','','','ezpublish',37,0),(94,1,0,0,'','','','','ezpublish',38,0),(95,1,0,0,'','','','','ezpublish',39,0),(96,1,0,0,'','','','','ezpublish',40,0),(97,1,0,0,'','','','','ezpublish',41,0),(98,1,0,0,'','','','','ezpublish',42,0),(14,4,0,0,'','','','','ezpublish',43,0),(99,1,0,0,'','','','','ezpublish',44,0),(11,2,0,0,'','','','','ezpublish',45,0),(100,1,0,0,'','','','','ezpublish',46,0),(101,1,0,0,'','','','','ezpublish',47,0),(102,1,0,0,'','','','','ezpublish',48,0),(103,1,0,0,'','','','','ezpublish',49,0),(104,1,0,0,'','','','','ezpublish',50,0),(54,3,0,0,'','','','','ezpublish',51,0),(105,1,0,0,'','','','','ezpublish',52,0),(106,1,0,0,'','','','','ezpublish',53,0);
/*!40000 ALTER TABLE `eznotificationevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezoperation_memento`
--

DROP TABLE IF EXISTS `ezoperation_memento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezoperation_memento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main` int(11) NOT NULL DEFAULT '0',
  `main_key` varchar(32) NOT NULL DEFAULT '',
  `memento_data` longtext NOT NULL,
  `memento_key` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`memento_key`),
  KEY `ezoperation_memento_memento_key_main` (`memento_key`,`main`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezoperation_memento`
--

LOCK TABLES `ezoperation_memento` WRITE;
/*!40000 ALTER TABLE `ezoperation_memento` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezoperation_memento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder`
--

DROP TABLE IF EXISTS `ezorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder` (
  `account_identifier` varchar(100) NOT NULL DEFAULT 'default',
  `created` int(11) NOT NULL DEFAULT '0',
  `data_text_1` longtext,
  `data_text_2` longtext,
  `email` varchar(150) DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ignore_vat` int(11) NOT NULL DEFAULT '0',
  `is_archived` int(11) NOT NULL DEFAULT '0',
  `is_temporary` int(11) NOT NULL DEFAULT '1',
  `order_nr` int(11) NOT NULL DEFAULT '0',
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `status_id` int(11) DEFAULT '0',
  `status_modified` int(11) DEFAULT '0',
  `status_modifier_id` int(11) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezorder_is_archived` (`is_archived`),
  KEY `ezorder_is_tmp` (`is_temporary`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder`
--

LOCK TABLES `ezorder` WRITE;
/*!40000 ALTER TABLE `ezorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_item`
--

DROP TABLE IF EXISTS `ezorder_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_item` (
  `description` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_vat_inc` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `price` float DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `vat_value` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezorder_item_order_id` (`order_id`),
  KEY `ezorder_item_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_item`
--

LOCK TABLES `ezorder_item` WRITE;
/*!40000 ALTER TABLE `ezorder_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_nr_incr`
--

DROP TABLE IF EXISTS `ezorder_nr_incr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_nr_incr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_nr_incr`
--

LOCK TABLES `ezorder_nr_incr` WRITE;
/*!40000 ALTER TABLE `ezorder_nr_incr` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_nr_incr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_status`
--

DROP TABLE IF EXISTS `ezorder_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL DEFAULT '',
  `status_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezorder_status_active` (`is_active`),
  KEY `ezorder_status_name` (`name`),
  KEY `ezorder_status_sid` (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_status`
--

LOCK TABLES `ezorder_status` WRITE;
/*!40000 ALTER TABLE `ezorder_status` DISABLE KEYS */;
INSERT INTO `ezorder_status` VALUES (1,1,'Pending',1),(2,1,'Processing',2),(3,1,'Delivered',3);
/*!40000 ALTER TABLE `ezorder_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_status_history`
--

DROP TABLE IF EXISTS `ezorder_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_status_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `status_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezorder_status_history_mod` (`modified`),
  KEY `ezorder_status_history_oid` (`order_id`),
  KEY `ezorder_status_history_sid` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_status_history`
--

LOCK TABLES `ezorder_status_history` WRITE;
/*!40000 ALTER TABLE `ezorder_status_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpackage`
--

DROP TABLE IF EXISTS `ezpackage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpackage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `install_date` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `version` varchar(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpackage`
--

LOCK TABLES `ezpackage` WRITE;
/*!40000 ALTER TABLE `ezpackage` DISABLE KEYS */;
INSERT INTO `ezpackage` VALUES (1,1301057838,'plain_site_data','1.0-1'),(2,1360944305,'ezwt_extension','5.0-0'),(3,1360944305,'ezstarrating_extension','5.0-0'),(4,1360944306,'ezgmaplocation_extension','5.0-0'),(5,1360944307,'ezdemo_extension','5.0-0'),(6,1360944308,'ezflow_extension','5.0-0'),(7,1360944309,'ezcomments_extension','5.0-0'),(8,1360944310,'ezdemo_classes','5.0-0'),(9,1360944318,'ezdemo_democontent','5.0-0');
/*!40000 ALTER TABLE `ezpackage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpaymentobject`
--

DROP TABLE IF EXISTS `ezpaymentobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpaymentobject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `payment_string` varchar(255) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '0',
  `workflowprocess_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpaymentobject`
--

LOCK TABLES `ezpaymentobject` WRITE;
/*!40000 ALTER TABLE `ezpaymentobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpaymentobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpdf_export`
--

DROP TABLE IF EXISTS `ezpdf_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpdf_export` (
  `created` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `export_classes` varchar(255) DEFAULT NULL,
  `export_structure` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intro_text` longtext,
  `modified` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `pdf_filename` varchar(255) DEFAULT NULL,
  `show_frontpage` int(11) DEFAULT NULL,
  `site_access` varchar(255) DEFAULT NULL,
  `source_node_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sub_text` longtext,
  `title` varchar(255) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpdf_export`
--

LOCK TABLES `ezpdf_export` WRITE;
/*!40000 ALTER TABLE `ezpdf_export` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpdf_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpending_actions`
--

DROP TABLE IF EXISTS `ezpending_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpending_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(64) NOT NULL DEFAULT '',
  `created` int(11) DEFAULT NULL,
  `param` longtext,
  PRIMARY KEY (`id`),
  KEY `ezpending_actions_action` (`action`),
  KEY `ezpending_actions_created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpending_actions`
--

LOCK TABLES `ezpending_actions` WRITE;
/*!40000 ALTER TABLE `ezpending_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpending_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpolicy`
--

DROP TABLE IF EXISTS `ezpolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpolicy` (
  `function_name` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) DEFAULT NULL,
  `original_id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezpolicy_original_id` (`original_id`)
) ENGINE=InnoDB AUTO_INCREMENT=376 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy`
--

LOCK TABLES `ezpolicy` WRITE;
/*!40000 ALTER TABLE `ezpolicy` DISABLE KEYS */;
INSERT INTO `ezpolicy` VALUES ('*',308,'*',0,2),('login',319,'user',0,3),('read',328,'content',0,1),('pdf',329,'content',0,1),('*',330,'ezoe',0,3),('*',332,'ezoe',0,3),('feed',333,'rss',0,1),('login',334,'user',0,1),('login',335,'user',0,1),('read',336,'content',0,1),('create',337,'content',0,3),('create',338,'content',0,3),('create',339,'content',0,3),('create',340,'content',0,3),('create',341,'content',0,3),('create',342,'content',0,3),('use',343,'websitetoolbar',0,3),('edit',344,'content',0,3),('read',345,'content',0,3),('use',346,'notification',0,3),('manage_locations',347,'content',0,3),('*',348,'ezodf',0,3),('*',349,'ezflow',0,3),('*',350,'ezajax',0,3),('diff',351,'content',0,3),('versionread',352,'content',0,3),('versionremove',353,'content',0,3),('remove',354,'content',0,3),('translate',355,'content',0,3),('feed',356,'rss',0,3),('bookmark',357,'content',0,3),('pendinglist',358,'content',0,3),('dashboard',359,'content',0,3),('view_embed',360,'content',0,3),('read',361,'content',0,4),('create',362,'content',0,4),('create',363,'content',0,4),('create',364,'content',0,4),('edit',365,'content',0,4),('selfedit',366,'user',0,4),('use',367,'notification',0,4),('create',368,'content',0,5),('create',369,'content',0,5),('create',370,'content',0,5),('edit',371,'content',0,5),('selfedit',372,'user',0,5),('use',373,'notification',0,5),('password',374,'user',0,5),('call',375,'ezjscore',0,5);
/*!40000 ALTER TABLE `ezpolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpolicy_limitation`
--

DROP TABLE IF EXISTS `ezpolicy_limitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpolicy_limitation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `policy_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `policy_id` (`policy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy_limitation`
--

LOCK TABLES `ezpolicy_limitation` WRITE;
/*!40000 ALTER TABLE `ezpolicy_limitation` DISABLE KEYS */;
INSERT INTO `ezpolicy_limitation` VALUES (251,'Section',328),(252,'Section',329),(254,'SiteAccess',334),(255,'SiteAccess',335),(256,'Class',336),(257,'Section',336),(258,'Class',337),(259,'ParentClass',337),(260,'Class',338),(261,'ParentClass',338),(262,'Class',339),(263,'ParentClass',339),(264,'Class',340),(265,'ParentClass',340),(266,'Class',341),(267,'ParentClass',341),(268,'Class',342),(269,'ParentClass',342),(270,'Class',343),(271,'Section',345),(272,'Section',361),(273,'Class',362),(274,'Section',362),(275,'ParentClass',362),(276,'Class',363),(277,'Section',363),(278,'ParentClass',363),(279,'Class',364),(280,'Section',364),(281,'ParentClass',364),(282,'Class',365),(283,'Section',365),(284,'Owner',365),(285,'Class',368),(286,'Section',368),(287,'ParentClass',368),(288,'Class',369),(289,'Section',369),(290,'ParentClass',369),(291,'Class',370),(292,'Section',370),(293,'ParentClass',370),(294,'Class',371),(295,'Section',371),(296,'Owner',371);
/*!40000 ALTER TABLE `ezpolicy_limitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpolicy_limitation_value`
--

DROP TABLE IF EXISTS `ezpolicy_limitation_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpolicy_limitation_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limitation_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezpolicy_limitation_value_val` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=568 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy_limitation_value`
--

LOCK TABLES `ezpolicy_limitation_value` WRITE;
/*!40000 ALTER TABLE `ezpolicy_limitation_value` DISABLE KEYS */;
INSERT INTO `ezpolicy_limitation_value` VALUES (477,251,'1'),(478,252,'1'),(480,254,'630421698'),(481,255,'2582995467'),(482,256,'27'),(483,256,'35'),(484,257,'3'),(485,258,'1'),(486,258,'28'),(487,258,'26'),(488,258,'21'),(489,258,'22'),(490,258,'23'),(491,258,'16'),(492,258,'17'),(493,258,'25'),(494,258,'24'),(495,258,'29'),(496,258,'30'),(497,258,'36'),(498,258,'34'),(499,258,'35'),(500,258,'27'),(501,259,'1'),(502,260,'18'),(503,261,'17'),(504,262,'31'),(505,263,'30'),(506,264,'33'),(507,265,'34'),(508,266,'27'),(509,267,'29'),(510,268,'1'),(511,268,'28'),(512,268,'22'),(513,268,'23'),(514,268,'24'),(515,268,'29'),(516,268,'34'),(517,268,'36'),(518,269,'23'),(519,270,'1'),(520,270,'28'),(521,270,'16'),(522,270,'17'),(523,270,'18'),(524,270,'21'),(525,270,'22'),(526,270,'23'),(527,270,'24'),(528,270,'25'),(529,270,'27'),(530,270,'29'),(531,270,'30'),(532,270,'33'),(533,270,'34'),(534,270,'36'),(535,271,'1'),(536,271,'6'),(537,271,'3'),(538,272,'6'),(539,273,'31'),(540,274,'6'),(541,275,'30'),(542,276,'32'),(543,277,'6'),(544,278,'31'),(545,279,'13'),(546,280,'6'),(547,281,'16'),(548,282,'13'),(549,282,'31'),(550,282,'32'),(551,283,'6'),(552,284,'1'),(553,285,'31'),(554,286,'1'),(555,287,'30'),(556,288,'32'),(557,289,'1'),(558,290,'31'),(559,291,'13'),(560,292,'1'),(561,293,'16'),(562,293,'18'),(563,294,'13'),(564,294,'31'),(565,294,'32'),(566,295,'1'),(567,296,'1');
/*!40000 ALTER TABLE `ezpolicy_limitation_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpreferences`
--

DROP TABLE IF EXISTS `ezpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpreferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `value` longtext,
  PRIMARY KEY (`id`),
  KEY `ezpreferences_name` (`name`),
  KEY `ezpreferences_user_id_idx` (`user_id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpreferences`
--

LOCK TABLES `ezpreferences` WRITE;
/*!40000 ALTER TABLE `ezpreferences` DISABLE KEYS */;
INSERT INTO `ezpreferences` VALUES (1,'admin_navigation_content',14,'1'),(2,'admin_navigation_roles',14,'1'),(3,'admin_navigation_policies',14,'1'),(4,'admin_list_limit',14,'2'),(5,'admin_treemenu',14,'1'),(6,'admin_bookmark_menu',14,'1'),(7,'admin_navigation_class_translations',14,'1'),(8,'admin_left_menu_size',14,'14.76923077em'),(9,'admin_right_menu_show',14,'1'),(10,'admin_clearcache_type',14,'All');
/*!40000 ALTER TABLE `ezpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_authcode`
--

DROP TABLE IF EXISTS `ezprest_authcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_authcode` (
  `client_id` varchar(200) NOT NULL DEFAULT '',
  `expirytime` bigint(20) NOT NULL DEFAULT '0',
  `id` varchar(200) NOT NULL DEFAULT '',
  `scope` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `authcode_client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_authcode`
--

LOCK TABLES `ezprest_authcode` WRITE;
/*!40000 ALTER TABLE `ezprest_authcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_authcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_authorized_clients`
--

DROP TABLE IF EXISTS `ezprest_authorized_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_authorized_clients` (
  `created` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rest_client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_user` (`rest_client_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_authorized_clients`
--

LOCK TABLES `ezprest_authorized_clients` WRITE;
/*!40000 ALTER TABLE `ezprest_authorized_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_authorized_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_clients`
--

DROP TABLE IF EXISTS `ezprest_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_clients` (
  `client_id` varchar(200) DEFAULT NULL,
  `client_secret` varchar(200) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `description` longtext,
  `endpoint_uri` varchar(200) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `updated` int(11) NOT NULL DEFAULT '0',
  `version` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id_unique` (`client_id`,`version`),
  KEY `client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_clients`
--

LOCK TABLES `ezprest_clients` WRITE;
/*!40000 ALTER TABLE `ezprest_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_token`
--

DROP TABLE IF EXISTS `ezprest_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_token` (
  `client_id` varchar(200) NOT NULL DEFAULT '',
  `expirytime` bigint(20) NOT NULL DEFAULT '0',
  `id` varchar(200) NOT NULL DEFAULT '',
  `refresh_token` varchar(200) NOT NULL DEFAULT '',
  `scope` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token_client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_token`
--

LOCK TABLES `ezprest_token` WRITE;
/*!40000 ALTER TABLE `ezprest_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcategory`
--

DROP TABLE IF EXISTS `ezproductcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcategory`
--

LOCK TABLES `ezproductcategory` WRITE;
/*!40000 ALTER TABLE `ezproductcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcollection`
--

DROP TABLE IF EXISTS `ezproductcollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcollection` (
  `created` int(11) DEFAULT NULL,
  `currency_code` varchar(4) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcollection`
--

LOCK TABLES `ezproductcollection` WRITE;
/*!40000 ALTER TABLE `ezproductcollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcollection_item`
--

DROP TABLE IF EXISTS `ezproductcollection_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcollection_item` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `discount` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_vat_inc` int(11) DEFAULT NULL,
  `item_count` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `price` float DEFAULT '0',
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `vat_value` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezproductcollection_item_contentobject_id` (`contentobject_id`),
  KEY `ezproductcollection_item_productcollection_id` (`productcollection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcollection_item`
--

LOCK TABLES `ezproductcollection_item` WRITE;
/*!40000 ALTER TABLE `ezproductcollection_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcollection_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcollection_item_opt`
--

DROP TABLE IF EXISTS `ezproductcollection_item_opt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcollection_item_opt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `object_attribute_id` int(11) DEFAULT NULL,
  `option_item_id` int(11) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezproductcollection_item_opt_item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcollection_item_opt`
--

LOCK TABLES `ezproductcollection_item_opt` WRITE;
/*!40000 ALTER TABLE `ezproductcollection_item_opt` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcollection_item_opt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpublishingqueueprocesses`
--

DROP TABLE IF EXISTS `ezpublishingqueueprocesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpublishingqueueprocesses` (
  `created` int(11) DEFAULT NULL,
  `ezcontentobject_version_id` int(11) NOT NULL DEFAULT '0',
  `finished` int(11) DEFAULT NULL,
  `pid` int(8) DEFAULT NULL,
  `started` int(11) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  PRIMARY KEY (`ezcontentobject_version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpublishingqueueprocesses`
--

LOCK TABLES `ezpublishingqueueprocesses` WRITE;
/*!40000 ALTER TABLE `ezpublishingqueueprocesses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpublishingqueueprocesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrole`
--

DROP TABLE IF EXISTS `ezrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_new` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` char(1) DEFAULT NULL,
  `version` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrole`
--

LOCK TABLES `ezrole` WRITE;
/*!40000 ALTER TABLE `ezrole` DISABLE KEYS */;
INSERT INTO `ezrole` VALUES (1,0,'Anonymous','',0),(2,0,'Administrator','*',0),(3,0,'Editor','',0),(4,0,'Partner',NULL,0),(5,0,'Member',NULL,0);
/*!40000 ALTER TABLE `ezrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrss_export`
--

DROP TABLE IF EXISTS `ezrss_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrss_export` (
  `access_url` varchar(255) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `description` longtext,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) DEFAULT NULL,
  `main_node_only` int(11) NOT NULL DEFAULT '1',
  `modified` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `node_id` int(11) DEFAULT NULL,
  `number_of_objects` int(11) NOT NULL DEFAULT '0',
  `rss_version` varchar(255) DEFAULT NULL,
  `site_access` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrss_export`
--

LOCK TABLES `ezrss_export` WRITE;
/*!40000 ALTER TABLE `ezrss_export` DISABLE KEYS */;
INSERT INTO `ezrss_export` VALUES ('my_feed',1,1360944319,14,'',1,0,1,1360944319,14,0,10,'2.0','',1,'My RSS Feed','http://example.com');
/*!40000 ALTER TABLE `ezrss_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrss_export_item`
--

DROP TABLE IF EXISTS `ezrss_export_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrss_export_item` (
  `category` varchar(255) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `enclosure` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rssexport_id` int(11) DEFAULT NULL,
  `source_node_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `subnodes` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`status`),
  KEY `ezrss_export_rsseid` (`rssexport_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrss_export_item`
--

LOCK TABLES `ezrss_export_item` WRITE;
/*!40000 ALTER TABLE `ezrss_export_item` DISABLE KEYS */;
INSERT INTO `ezrss_export_item` VALUES ('',16,'intro','',1,1,139,1,0,'title');
/*!40000 ALTER TABLE `ezrss_export_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrss_import`
--

DROP TABLE IF EXISTS `ezrss_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrss_import` (
  `active` int(11) DEFAULT NULL,
  `class_description` varchar(255) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `class_title` varchar(255) DEFAULT NULL,
  `class_url` varchar(255) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `destination_node_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `import_description` longtext NOT NULL,
  `modified` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `object_owner_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `url` longtext,
  PRIMARY KEY (`id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrss_import`
--

LOCK TABLES `ezrss_import` WRITE;
/*!40000 ALTER TABLE `ezrss_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezrss_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezscheduled_script`
--

DROP TABLE IF EXISTS `ezscheduled_script`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezscheduled_script` (
  `command` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_report_timestamp` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `process_id` int(11) NOT NULL DEFAULT '0',
  `progress` int(3) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezscheduled_script_timestamp` (`last_report_timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezscheduled_script`
--

LOCK TABLES `ezscheduled_script` WRITE;
/*!40000 ALTER TABLE `ezscheduled_script` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezscheduled_script` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_object_word_link`
--

DROP TABLE IF EXISTS `ezsearch_object_word_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_object_word_link` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `frequency` float NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `integer_value` int(11) NOT NULL DEFAULT '0',
  `next_word_id` int(11) NOT NULL DEFAULT '0',
  `placement` int(11) NOT NULL DEFAULT '0',
  `prev_word_id` int(11) NOT NULL DEFAULT '0',
  `published` int(11) NOT NULL DEFAULT '0',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `word_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezsearch_object_word_link_frequency` (`frequency`),
  KEY `ezsearch_object_word_link_identifier` (`identifier`),
  KEY `ezsearch_object_word_link_integer_value` (`integer_value`),
  KEY `ezsearch_object_word_link_object` (`contentobject_id`),
  KEY `ezsearch_object_word_link_word` (`word_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10754 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_object_word_link`
--

LOCK TABLES `ezsearch_object_word_link` WRITE;
/*!40000 ALTER TABLE `ezsearch_object_word_link` DISABLE KEYS */;
INSERT INTO `ezsearch_object_word_link` VALUES (6,3,4,0,4663,'name',0,951,0,0,1033917596,2,930),(7,3,4,0,4664,'description',0,952,1,930,1033917596,2,951),(7,3,4,0,4665,'description',0,0,2,951,1033917596,2,952),(8,4,10,0,4666,'first_name',0,954,0,0,1033920665,2,953),(9,4,10,0,4667,'last_name',0,953,1,953,1033920665,2,954),(12,4,10,0,4668,'user_account',0,955,2,954,1033920665,2,953),(12,4,10,0,4669,'user_account',0,927,3,953,1033920665,2,955),(12,4,10,0,4670,'user_account',0,0,4,955,1033920665,2,927),(6,3,12,0,4673,'name',0,930,0,0,1033920775,2,958),(6,3,12,0,4674,'name',0,0,1,958,1033920775,2,930),(6,3,13,0,4675,'name',0,0,0,0,1033920794,2,959),(4,1,41,0,4681,'name',0,0,0,0,1060695457,3,961),(6,3,42,0,4682,'name',0,930,0,0,1072180330,2,953),(6,3,42,0,4683,'name',0,954,1,953,1072180330,2,930),(7,3,42,0,4684,'description',0,952,2,930,1072180330,2,954),(7,3,42,0,4685,'description',0,816,3,954,1072180330,2,952),(7,3,42,0,4686,'description',0,814,4,952,1072180330,2,816),(7,3,42,0,4687,'description',0,953,5,816,1072180330,2,814),(7,3,42,0,4688,'description',0,954,6,814,1072180330,2,953),(7,3,42,0,4689,'description',0,0,7,953,1072180330,2,954),(4,1,45,0,4690,'name',0,0,0,0,1079684190,4,812),(4,1,49,0,4691,'name',0,0,0,0,1080220197,3,962),(4,1,50,0,4692,'name',0,0,0,0,1080220220,3,963),(4,1,51,0,4693,'name',0,0,0,0,1080220233,3,964),(159,14,52,0,4694,'name',0,965,0,0,1082016591,4,877),(159,14,52,0,4695,'name',0,966,1,877,1082016591,4,965),(159,14,52,0,4696,'name',0,0,2,965,1082016591,4,966),(4,1,56,0,4698,'name',0,0,0,0,1103023132,5,968),(8,4,14,0,6637,'first_name',0,954,0,0,1033920830,2,958),(9,4,14,0,6638,'last_name',0,1623,1,958,1033920830,2,954),(12,4,14,0,6639,'user_account',0,1615,2,954,1033920830,2,1623),(12,4,14,0,6640,'user_account',0,1624,3,1623,1033920830,2,1615),(12,4,14,0,6641,'user_account',0,0,4,1615,1033920830,2,1624),(6,3,99,0,6642,'name',0,0,0,0,1360944319,2,1625),(6,3,11,0,6643,'name',0,0,0,0,1033920746,2,1626),(193,17,100,0,6644,'name',0,0,0,0,1360946849,1,969),(193,17,101,0,6645,'name',0,0,0,0,1360946942,1,1627),(193,17,102,0,6646,'name',0,0,0,0,1360946971,1,1628),(196,18,103,0,6647,'title',0,1630,0,0,1360947072,1,1629),(196,18,103,0,6648,'title',0,1631,1,1629,1360947072,1,1630),(196,18,103,0,6649,'title',0,1632,2,1630,1360947072,1,1631),(196,18,103,0,6650,'title',0,1633,3,1631,1360947072,1,1632),(196,18,103,0,6651,'title',0,1634,4,1632,1360947072,1,1633),(196,18,103,0,6652,'title',0,1635,5,1633,1360947072,1,1634),(197,18,103,0,6653,'body',0,1636,6,1634,1360947072,1,1635),(197,18,103,0,6654,'body',0,1637,7,1635,1360947072,1,1636),(197,18,103,0,6655,'body',0,1638,8,1636,1360947072,1,1637),(197,18,103,0,6656,'body',0,1639,9,1637,1360947072,1,1638),(197,18,103,0,6657,'body',0,814,10,1638,1360947072,1,1639),(197,18,103,0,6658,'body',0,1640,11,1639,1360947072,1,814),(197,18,103,0,6659,'body',0,1641,12,814,1360947072,1,1640),(197,18,103,0,6660,'body',0,1642,13,1640,1360947072,1,1641),(197,18,103,0,6661,'body',0,1643,14,1641,1360947072,1,1642),(197,18,103,0,6662,'body',0,1644,15,1642,1360947072,1,1643),(197,18,103,0,6663,'body',0,1643,16,1643,1360947072,1,1644),(197,18,103,0,6664,'body',0,1645,17,1644,1360947072,1,1643),(197,18,103,0,6665,'body',0,814,18,1643,1360947072,1,1645),(197,18,103,0,6666,'body',0,1646,19,1645,1360947072,1,814),(197,18,103,0,6667,'body',0,1647,20,814,1360947072,1,1646),(197,18,103,0,6668,'body',0,1648,21,1646,1360947072,1,1647),(197,18,103,0,6669,'body',0,1645,22,1647,1360947072,1,1648),(197,18,103,0,6670,'body',0,1629,23,1648,1360947072,1,1645),(197,18,103,0,6671,'body',0,1630,24,1645,1360947072,1,1629),(197,18,103,0,6672,'body',0,1631,25,1629,1360947072,1,1630),(197,18,103,0,6673,'body',0,1632,26,1630,1360947072,1,1631),(197,18,103,0,6674,'body',0,1649,27,1631,1360947072,1,1632),(197,18,103,0,6675,'body',0,1633,28,1632,1360947072,1,1649),(197,18,103,0,6676,'body',0,1650,29,1649,1360947072,1,1633),(197,18,103,0,6677,'body',0,1651,30,1633,1360947072,1,1650),(197,18,103,0,6678,'body',0,1652,31,1650,1360947072,1,1651),(197,18,103,0,6679,'body',0,1653,32,1651,1360947072,1,1652),(197,18,103,0,6680,'body',0,1654,33,1652,1360947072,1,1653),(197,18,103,0,6681,'body',0,1631,34,1653,1360947072,1,1654),(197,18,103,0,6682,'body',0,1655,35,1654,1360947072,1,1631),(197,18,103,0,6683,'body',0,1656,36,1631,1360947072,1,1655),(197,18,103,0,6684,'body',0,1657,37,1655,1360947072,1,1656),(197,18,103,0,6685,'body',0,816,38,1656,1360947072,1,1657),(197,18,103,0,6686,'body',0,1658,39,1657,1360947072,1,816),(197,18,103,0,6687,'body',0,1635,40,816,1360947072,1,1658),(197,18,103,0,6688,'body',0,1631,41,1658,1360947072,1,1635),(197,18,103,0,6689,'body',0,1632,42,1635,1360947072,1,1631),(197,18,103,0,6690,'body',0,1638,43,1631,1360947072,1,1632),(197,18,103,0,6691,'body',0,1659,44,1632,1360947072,1,1638),(197,18,103,0,6692,'body',0,1633,45,1638,1360947072,1,1659),(197,18,103,0,6693,'body',0,1660,46,1659,1360947072,1,1633),(197,18,103,0,6694,'body',0,1661,47,1633,1360947072,1,1660),(197,18,103,0,6695,'body',0,1641,48,1660,1360947072,1,1661),(197,18,103,0,6696,'body',0,1662,49,1661,1360947072,1,1641),(197,18,103,0,6697,'body',0,1651,50,1641,1360947072,1,1662),(197,18,103,0,6698,'body',0,1663,51,1662,1360947072,1,1651),(197,18,103,0,6699,'body',0,1664,52,1651,1360947072,1,1663),(197,18,103,0,6700,'body',0,1665,53,1663,1360947072,1,1664),(197,18,103,0,6701,'body',0,1666,54,1664,1360947072,1,1665),(197,18,103,0,6702,'body',0,1667,55,1665,1360947072,1,1666),(197,18,103,0,6703,'body',0,1668,56,1666,1360947072,1,1667),(197,18,103,0,6704,'body',0,1669,57,1667,1360947072,1,1668),(197,18,103,0,6705,'body',0,1670,58,1668,1360947072,1,1669),(197,18,103,0,6706,'body',0,1671,59,1669,1360947072,1,1670),(197,18,103,0,6707,'body',0,1664,60,1670,1360947072,1,1671),(197,18,103,0,6708,'body',0,1672,61,1671,1360947072,1,1664),(197,18,103,0,6709,'body',0,1662,62,1664,1360947072,1,1672),(197,18,103,0,6710,'body',0,1673,63,1672,1360947072,1,1662),(197,18,103,0,6711,'body',0,1674,64,1662,1360947072,1,1673),(197,18,103,0,6712,'body',0,1675,65,1673,1360947072,1,1674),(197,18,103,0,6713,'body',0,1635,66,1674,1360947072,1,1675),(197,18,103,0,6714,'body',0,1638,67,1675,1360947072,1,1635),(197,18,103,0,6715,'body',0,1676,68,1635,1360947072,1,1638),(197,18,103,0,6716,'body',0,1677,69,1638,1360947072,1,1676),(197,18,103,0,6717,'body',0,1678,70,1676,1360947072,1,1677),(197,18,103,0,6718,'body',0,1679,71,1677,1360947072,1,1678),(197,18,103,0,6719,'body',0,1651,72,1678,1360947072,1,1679),(197,18,103,0,6720,'body',0,1680,73,1679,1360947072,1,1651),(197,18,103,0,6721,'body',0,1641,74,1651,1360947072,1,1680),(197,18,103,0,6722,'body',0,1681,75,1680,1360947072,1,1641),(197,18,103,0,6723,'body',0,1682,76,1641,1360947072,1,1681),(197,18,103,0,6724,'body',0,814,77,1681,1360947072,1,1682),(197,18,103,0,6725,'body',0,1683,78,1682,1360947072,1,814),(197,18,103,0,6726,'body',0,1684,79,814,1360947072,1,1683),(197,18,103,0,6727,'body',0,814,80,1683,1360947072,1,1684),(197,18,103,0,6728,'body',0,1685,81,1684,1360947072,1,814),(197,18,103,0,6729,'body',0,1645,82,814,1360947072,1,1685),(197,18,103,0,6730,'body',0,1686,83,1685,1360947072,1,1645),(197,18,103,0,6731,'body',0,1628,84,1645,1360947072,1,1686),(197,18,103,0,6732,'body',0,1645,85,1686,1360947072,1,1628),(197,18,103,0,6733,'body',0,1687,86,1628,1360947072,1,1645),(197,18,103,0,6734,'body',0,1688,87,1645,1360947072,1,1687),(197,18,103,0,6735,'body',0,1689,88,1687,1360947072,1,1688),(197,18,103,0,6736,'body',0,1662,89,1688,1360947072,1,1689),(197,18,103,0,6737,'body',0,1641,90,1689,1360947072,1,1662),(197,18,103,0,6738,'body',0,1690,91,1662,1360947072,1,1641),(197,18,103,0,6739,'body',0,1691,92,1641,1360947072,1,1690),(197,18,103,0,6740,'body',0,1631,93,1690,1360947072,1,1691),(197,18,103,0,6741,'body',0,1632,94,1691,1360947072,1,1631),(197,18,103,0,6742,'body',0,1692,95,1631,1360947072,1,1632),(197,18,103,0,6743,'body',0,1693,96,1632,1360947072,1,1692),(197,18,103,0,6744,'body',0,1694,97,1692,1360947072,1,1693),(197,18,103,0,6745,'body',0,1641,98,1693,1360947072,1,1694),(197,18,103,0,6746,'body',0,1695,99,1694,1360947072,1,1641),(197,18,103,0,6747,'body',0,1643,100,1641,1360947072,1,1695),(197,18,103,0,6748,'body',0,1696,101,1695,1360947072,1,1643),(197,18,103,0,6749,'body',0,1641,102,1643,1360947072,1,1696),(197,18,103,0,6750,'body',0,1697,103,1696,1360947072,1,1641),(197,18,103,0,6751,'body',0,1694,104,1641,1360947072,1,1697),(197,18,103,0,6752,'body',0,1698,105,1697,1360947072,1,1694),(197,18,103,0,6753,'body',0,1696,106,1694,1360947072,1,1698),(197,18,103,0,6754,'body',0,1698,107,1698,1360947072,1,1696),(197,18,103,0,6755,'body',0,1699,108,1696,1360947072,1,1698),(197,18,103,0,6756,'body',0,1700,109,1698,1360947072,1,1699),(197,18,103,0,6757,'body',0,1693,110,1699,1360947072,1,1700),(197,18,103,0,6758,'body',0,1635,111,1700,1360947072,1,1693),(197,18,103,0,6759,'body',0,1641,112,1693,1360947072,1,1635),(197,18,103,0,6760,'body',0,1627,113,1635,1360947072,1,1641),(197,18,103,0,6761,'body',0,1701,114,1641,1360947072,1,1627),(197,18,103,0,6762,'body',0,1679,115,1627,1360947072,1,1701),(197,18,103,0,6763,'body',0,1702,116,1701,1360947072,1,1679),(197,18,103,0,6764,'body',0,1643,117,1679,1360947072,1,1702),(197,18,103,0,6765,'body',0,1703,118,1702,1360947072,1,1643),(197,18,103,0,6766,'body',0,1647,119,1643,1360947072,1,1703),(197,18,103,0,6767,'body',0,1704,120,1703,1360947072,1,1647),(197,18,103,0,6768,'body',0,1705,121,1647,1360947072,1,1704),(197,18,103,0,6769,'body',0,1706,122,1704,1360947072,1,1705),(197,18,103,0,6770,'body',0,1707,123,1705,1360947072,1,1706),(197,18,103,0,6771,'body',0,1708,124,1706,1360947072,1,1707),(197,18,103,0,6772,'body',0,1682,125,1707,1360947072,1,1708),(197,18,103,0,6773,'body',0,1709,126,1708,1360947072,1,1682),(197,18,103,0,6774,'body',0,1700,127,1682,1360947072,1,1709),(197,18,103,0,6775,'body',0,1710,128,1709,1360947072,1,1700),(197,18,103,0,6776,'body',0,1711,129,1700,1360947072,1,1710),(197,18,103,0,6777,'body',0,1712,130,1710,1360947072,1,1711),(197,18,103,0,6778,'body',0,1631,131,1711,1360947072,1,1712),(197,18,103,0,6779,'body',0,1632,132,1712,1360947072,1,1631),(197,18,103,0,6780,'body',0,1633,133,1631,1360947072,1,1632),(197,18,103,0,6781,'body',0,1713,134,1632,1360947072,1,1633),(197,18,103,0,6782,'body',0,1651,135,1633,1360947072,1,1713),(197,18,103,0,6783,'body',0,1714,136,1713,1360947072,1,1651),(197,18,103,0,6784,'body',0,1683,137,1651,1360947072,1,1714),(197,18,103,0,6785,'body',0,1715,138,1714,1360947072,1,1683),(197,18,103,0,6786,'body',0,1716,139,1683,1360947072,1,1715),(197,18,103,0,6787,'body',0,1717,140,1715,1360947072,1,1716),(197,18,103,0,6788,'body',0,1718,141,1716,1360947072,1,1717),(197,18,103,0,6789,'body',0,1719,142,1717,1360947072,1,1718),(197,18,103,0,6790,'body',0,1720,143,1718,1360947072,1,1719),(197,18,103,0,6791,'body',0,1682,144,1719,1360947072,1,1720),(197,18,103,0,6792,'body',0,1631,145,1720,1360947072,1,1682),(197,18,103,0,6793,'body',0,1632,146,1682,1360947072,1,1631),(197,18,103,0,6794,'body',0,1633,147,1631,1360947072,1,1632),(197,18,103,0,6795,'body',0,1717,148,1632,1360947072,1,1633),(197,18,103,0,6796,'body',0,1721,149,1633,1360947072,1,1717),(197,18,103,0,6797,'body',0,1722,150,1717,1360947072,1,1721),(197,18,103,0,6798,'body',0,1677,151,1721,1360947072,1,1722),(197,18,103,0,6799,'body',0,1723,152,1722,1360947072,1,1677),(197,18,103,0,6800,'body',0,1645,153,1677,1360947072,1,1723),(197,18,103,0,6801,'body',0,1631,154,1723,1360947072,1,1645),(197,18,103,0,6802,'body',0,1679,155,1645,1360947072,1,1631),(197,18,103,0,6803,'body',0,1724,156,1631,1360947072,1,1679),(197,18,103,0,6804,'body',0,1725,157,1679,1360947072,1,1724),(197,18,103,0,6805,'body',0,1726,158,1724,1360947072,1,1725),(197,18,103,0,6806,'body',0,1727,159,1725,1360947072,1,1726),(197,18,103,0,6807,'body',0,1728,160,1726,1360947072,1,1727),(197,18,103,0,6808,'body',0,1729,161,1727,1360947072,1,1728),(197,18,103,0,6809,'body',0,814,162,1728,1360947072,1,1729),(197,18,103,0,6810,'body',0,1730,163,1729,1360947072,1,814),(197,18,103,0,6811,'body',0,1731,164,814,1360947072,1,1730),(197,18,103,0,6812,'body',0,814,165,1730,1360947072,1,1731),(197,18,103,0,6813,'body',0,1649,166,1731,1360947072,1,814),(197,18,103,0,6814,'body',0,1732,167,814,1360947072,1,1649),(197,18,103,0,6815,'body',0,1733,168,1649,1360947072,1,1732),(197,18,103,0,6816,'body',0,1677,169,1732,1360947072,1,1733),(197,18,103,0,6817,'body',0,1686,170,1733,1360947072,1,1677),(197,18,103,0,6818,'body',0,1683,171,1677,1360947072,1,1686),(197,18,103,0,6819,'body',0,1734,172,1686,1360947072,1,1683),(197,18,103,0,6820,'body',0,1681,173,1683,1360947072,1,1734),(197,18,103,0,6821,'body',0,814,174,1734,1360947072,1,1681),(197,18,103,0,6822,'body',0,1735,175,1681,1360947072,1,814),(197,18,103,0,6823,'body',0,1736,176,814,1360947072,1,1735),(197,18,103,0,6824,'body',0,1737,177,1735,1360947072,1,1736),(197,18,103,0,6825,'body',0,1713,178,1736,1360947072,1,1737),(197,18,103,0,6826,'body',0,1651,179,1737,1360947072,1,1713),(197,18,103,0,6827,'body',0,1738,180,1713,1360947072,1,1651),(197,18,103,0,6828,'body',0,1645,181,1651,1360947072,1,1738),(197,18,103,0,6829,'body',0,814,182,1738,1360947072,1,1645),(197,18,103,0,6830,'body',0,1739,183,1645,1360947072,1,814),(197,18,103,0,6831,'body',0,1684,184,814,1360947072,1,1739),(197,18,103,0,6832,'body',0,1740,185,1739,1360947072,1,1684),(197,18,103,0,6833,'body',0,1645,186,1684,1360947072,1,1740),(197,18,103,0,6834,'body',0,1741,187,1740,1360947072,1,1645),(197,18,103,0,6835,'body',0,1742,188,1645,1360947072,1,1741),(197,18,103,0,6836,'body',0,1743,189,1741,1360947072,1,1742),(197,18,103,0,6837,'body',0,816,190,1742,1360947072,1,1743),(197,18,103,0,6838,'body',0,1658,191,1743,1360947072,1,816),(197,18,103,0,6839,'body',0,1647,192,816,1360947072,1,1658),(197,18,103,0,6840,'body',0,1744,193,1658,1360947072,1,1647),(197,18,103,0,6841,'body',0,1677,194,1647,1360947072,1,1744),(197,18,103,0,6842,'body',0,1684,195,1744,1360947072,1,1677),(197,18,103,0,6843,'body',0,1713,196,1677,1360947072,1,1684),(197,18,103,0,6844,'body',0,1745,197,1684,1360947072,1,1713),(197,18,103,0,6845,'body',0,1746,198,1713,1360947072,1,1745),(197,18,103,0,6846,'body',0,814,199,1745,1360947072,1,1746),(197,18,103,0,6847,'body',0,1633,200,1746,1360947072,1,814),(197,18,103,0,6848,'body',0,1747,201,814,1360947072,1,1633),(197,18,103,0,6849,'body',0,1645,202,1633,1360947072,1,1747),(197,18,103,0,6850,'body',0,1631,203,1747,1360947072,1,1645),(197,18,103,0,6851,'body',0,1633,204,1645,1360947072,1,1631),(197,18,103,0,6852,'body',0,814,205,1631,1360947072,1,1633),(197,18,103,0,6853,'body',0,1730,206,1633,1360947072,1,814),(197,18,103,0,6854,'body',0,1747,207,814,1360947072,1,1730),(197,18,103,0,6855,'body',0,1726,208,1730,1360947072,1,1747),(197,18,103,0,6856,'body',0,1748,209,1747,1360947072,1,1726),(197,18,103,0,6857,'body',0,1683,210,1726,1360947072,1,1748),(197,18,103,0,6858,'body',0,1635,211,1748,1360947072,1,1683),(197,18,103,0,6859,'body',0,1749,212,1683,1360947072,1,1635),(197,18,103,0,6860,'body',0,1631,213,1635,1360947072,1,1749),(197,18,103,0,6861,'body',0,1632,214,1749,1360947072,1,1631),(197,18,103,0,6862,'body',0,1633,215,1631,1360947072,1,1632),(197,18,103,0,6863,'body',0,1713,216,1632,1360947072,1,1633),(197,18,103,0,6864,'body',0,1651,217,1633,1360947072,1,1713),(197,18,103,0,6865,'body',0,1750,218,1713,1360947072,1,1651),(197,18,103,0,6866,'body',0,1694,219,1651,1360947072,1,1750),(197,18,103,0,6867,'body',0,1751,220,1750,1360947072,1,1694),(197,18,103,0,6868,'body',0,1645,221,1694,1360947072,1,1751),(197,18,103,0,6869,'body',0,814,222,1751,1360947072,1,1645),(197,18,103,0,6870,'body',0,1752,223,1645,1360947072,1,814),(197,18,103,0,6871,'body',0,1715,224,814,1360947072,1,1752),(197,18,103,0,6872,'body',0,814,225,1752,1360947072,1,1715),(197,18,103,0,6873,'body',0,1753,226,1715,1360947072,1,814),(197,18,103,0,6874,'body',0,968,227,814,1360947072,1,1753),(197,18,103,0,6875,'body',0,1754,228,1753,1360947072,1,968),(197,18,103,0,6876,'body',0,1713,229,968,1360947072,1,1754),(197,18,103,0,6877,'body',0,1677,230,1754,1360947072,1,1713),(197,18,103,0,6878,'body',0,1755,231,1713,1360947072,1,1677),(197,18,103,0,6879,'body',0,1651,232,1677,1360947072,1,1755),(197,18,103,0,6880,'body',0,1756,233,1755,1360947072,1,1651),(197,18,103,0,6881,'body',0,1645,234,1651,1360947072,1,1756),(197,18,103,0,6882,'body',0,814,235,1756,1360947072,1,1645),(197,18,103,0,6883,'body',0,1730,236,1645,1360947072,1,814),(197,18,103,0,6884,'body',0,1757,237,814,1360947072,1,1730),(197,18,103,0,6885,'body',0,1758,238,1730,1360947072,1,1757),(197,18,103,0,6886,'body',0,1662,239,1757,1360947072,1,1758),(197,18,103,0,6887,'body',0,1743,240,1758,1360947072,1,1662),(197,18,103,0,6888,'body',0,1759,241,1662,1360947072,1,1743),(197,18,103,0,6889,'body',0,1645,242,1743,1360947072,1,1759),(197,18,103,0,6890,'body',0,814,243,1759,1360947072,1,1645),(197,18,103,0,6891,'body',0,1760,244,1645,1360947072,1,814),(197,18,103,0,6892,'body',0,1654,245,814,1360947072,1,1760),(197,18,103,0,6893,'body',0,1631,246,1760,1360947072,1,1654),(197,18,103,0,6894,'body',0,1632,247,1654,1360947072,1,1631),(197,18,103,0,6895,'body',0,1761,248,1631,1360947072,1,1632),(197,18,103,0,6896,'body',0,814,249,1632,1360947072,1,1761),(197,18,103,0,6897,'body',0,1631,250,1761,1360947072,1,814),(197,18,103,0,6898,'body',0,1632,251,814,1360947072,1,1631),(197,18,103,0,6899,'body',0,1761,252,1631,1360947072,1,1632),(197,18,103,0,6900,'body',0,1756,253,1632,1360947072,1,1761),(197,18,103,0,6901,'body',0,1762,254,1761,1360947072,1,1756),(197,18,103,0,6902,'body',0,1763,255,1756,1360947072,1,1762),(197,18,103,0,6903,'body',0,1728,256,1762,1360947072,1,1763),(197,18,103,0,6904,'body',0,1643,257,1763,1360947072,1,1728),(197,18,103,0,6905,'body',0,1764,258,1728,1360947072,1,1643),(197,18,103,0,6906,'body',0,1748,259,1643,1360947072,1,1764),(197,18,103,0,6907,'body',0,1765,260,1764,1360947072,1,1748),(197,18,103,0,6908,'body',0,1713,261,1748,1360947072,1,1765),(197,18,103,0,6909,'body',0,1766,262,1765,1360947072,1,1713),(197,18,103,0,6910,'body',0,1767,263,1713,1360947072,1,1766),(197,18,103,0,6911,'body',0,1730,264,1766,1360947072,1,1767),(197,18,103,0,6912,'body',0,1768,265,1767,1360947072,1,1730),(197,18,103,0,6913,'body',0,1631,266,1730,1360947072,1,1768),(197,18,103,0,6914,'body',0,1769,267,1768,1360947072,1,1631),(197,18,103,0,6915,'body',0,1726,268,1631,1360947072,1,1769),(197,18,103,0,6916,'body',0,1728,269,1769,1360947072,1,1726),(197,18,103,0,6917,'body',0,1729,270,1726,1360947072,1,1728),(197,18,103,0,6918,'body',0,1770,271,1728,1360947072,1,1729),(197,18,103,0,6919,'body',0,1769,272,1729,1360947072,1,1770),(197,18,103,0,6920,'body',0,965,273,1770,1360947072,1,1769),(197,18,103,0,6921,'body',0,963,274,1769,1360947072,1,965),(197,18,103,0,6922,'body',0,1728,275,965,1360947072,1,963),(197,18,103,0,6923,'body',0,1729,276,963,1360947072,1,1728),(197,18,103,0,6924,'body',0,1771,277,1728,1360947072,1,1729),(197,18,103,0,6925,'body',0,963,278,1729,1360947072,1,1771),(197,18,103,0,6926,'body',0,1772,279,1771,1360947072,1,963),(197,18,103,0,6927,'body',0,1728,280,963,1360947072,1,1772),(197,18,103,0,6928,'body',0,1729,281,1772,1360947072,1,1728),(197,18,103,0,6929,'body',0,1773,282,1728,1360947072,1,1729),(197,18,103,0,6930,'body',0,1631,283,1729,1360947072,1,1773),(197,18,103,0,6931,'body',0,1632,284,1773,1360947072,1,1631),(197,18,103,0,6932,'body',0,1774,285,1631,1360947072,1,1632),(197,18,103,0,6933,'body',0,1713,286,1632,1360947072,1,1774),(197,18,103,0,6934,'body',0,1728,287,1774,1360947072,1,1713),(197,18,103,0,6935,'body',0,1729,288,1713,1360947072,1,1728),(197,18,103,0,6936,'body',0,1730,289,1728,1360947072,1,1729),(197,18,103,0,6937,'body',0,1679,290,1729,1360947072,1,1730),(197,18,103,0,6938,'body',0,1774,291,1730,1360947072,1,1679),(197,18,103,0,6939,'body',0,814,292,1679,1360947072,1,1774),(197,18,103,0,6940,'body',0,1724,293,1774,1360947072,1,814),(197,18,103,0,6941,'body',0,1645,294,814,1360947072,1,1724),(197,18,103,0,6942,'body',0,814,295,1724,1360947072,1,1645),(197,18,103,0,6943,'body',0,1775,296,1645,1360947072,1,814),(197,18,103,0,6944,'body',0,814,297,814,1360947072,1,1775),(197,18,103,0,6945,'body',0,1631,298,1775,1360947072,1,814),(197,18,103,0,6946,'body',0,1776,299,814,1360947072,1,1631),(197,18,103,0,6947,'body',0,1777,300,1631,1360947072,1,1776),(197,18,103,0,6948,'body',0,1713,301,1776,1360947072,1,1777),(197,18,103,0,6949,'body',0,1778,302,1777,1360947072,1,1713),(197,18,103,0,6950,'body',0,1779,303,1713,1360947072,1,1778),(197,18,103,0,6951,'body',0,1767,304,1778,1360947072,1,1779),(197,18,103,0,6952,'body',0,1651,305,1779,1360947072,1,1767),(197,18,103,0,6953,'body',0,1780,306,1767,1360947072,1,1651),(197,18,103,0,6954,'body',0,1781,307,1651,1360947072,1,1780),(197,18,103,0,6955,'body',0,1782,308,1780,1360947072,1,1781),(197,18,103,0,6956,'body',0,1689,309,1781,1360947072,1,1782),(197,18,103,0,6957,'body',0,1783,310,1782,1360947072,1,1689),(197,18,103,0,6958,'body',0,1784,311,1689,1360947072,1,1783),(197,18,103,0,6959,'body',0,1635,312,1783,1360947072,1,1784),(197,18,103,0,6960,'body',0,1785,313,1784,1360947072,1,1635),(197,18,103,0,6961,'body',0,1786,314,1635,1360947072,1,1785),(197,18,103,0,6962,'body',0,816,315,1785,1360947072,1,1786),(197,18,103,0,6963,'body',0,1692,316,1786,1360947072,1,816),(197,18,103,0,6964,'body',0,1686,317,816,1360947072,1,1692),(197,18,103,0,6965,'body',0,1713,318,1692,1360947072,1,1686),(197,18,103,0,6966,'body',0,1787,319,1686,1360947072,1,1713),(197,18,103,0,6967,'body',0,1788,320,1713,1360947072,1,1787),(197,18,103,0,6968,'body',0,1789,321,1787,1360947072,1,1788),(197,18,103,0,6969,'body',0,1790,322,1788,1360947072,1,1789),(197,18,103,0,6970,'body',0,1791,323,1789,1360947072,1,1790),(197,18,103,0,6971,'body',0,1717,324,1790,1360947072,1,1791),(197,18,103,0,6972,'body',0,1710,325,1791,1360947072,1,1717),(197,18,103,0,6973,'body',0,1792,326,1717,1360947072,1,1710),(197,18,103,0,6974,'body',0,1793,327,1710,1360947072,1,1792),(197,18,103,0,6975,'body',0,1794,328,1792,1360947072,1,1793),(197,18,103,0,6976,'body',0,1712,329,1793,1360947072,1,1794),(197,18,103,0,6977,'body',0,1724,330,1794,1360947072,1,1712),(197,18,103,0,6978,'body',0,1795,331,1712,1360947072,1,1724),(197,18,103,0,6979,'body',0,1650,332,1724,1360947072,1,1795),(197,18,103,0,6980,'body',0,1796,333,1795,1360947072,1,1650),(197,18,103,0,6981,'body',0,1647,334,1650,1360947072,1,1796),(197,18,103,0,6982,'body',0,1797,335,1796,1360947072,1,1647),(197,18,103,0,6983,'body',0,1798,336,1647,1360947072,1,1797),(197,18,103,0,6984,'body',0,1799,337,1797,1360947072,1,1798),(197,18,103,0,6985,'body',0,1667,338,1798,1360947072,1,1799),(197,18,103,0,6986,'body',0,1664,339,1799,1360947072,1,1667),(197,18,103,0,6987,'body',0,1654,340,1667,1360947072,1,1664),(197,18,103,0,6988,'body',0,1649,341,1664,1360947072,1,1654),(197,18,103,0,6989,'body',0,1641,342,1654,1360947072,1,1649),(197,18,103,0,6990,'body',0,1649,343,1649,1360947072,1,1641),(197,18,103,0,6991,'body',0,1635,344,1641,1360947072,1,1649),(197,18,103,0,6992,'body',0,1800,345,1649,1360947072,1,1635),(197,18,103,0,6993,'body',0,1748,346,1635,1360947072,1,1800),(197,18,103,0,6994,'body',0,1645,347,1800,1360947072,1,1748),(197,18,103,0,6995,'body',0,814,348,1748,1360947072,1,1645),(197,18,103,0,6996,'body',0,1801,349,1645,1360947072,1,814),(197,18,103,0,6997,'body',0,1802,350,814,1360947072,1,1801),(197,18,103,0,6998,'body',0,1677,351,1801,1360947072,1,1802),(197,18,103,0,6999,'body',0,1649,352,1802,1360947072,1,1677),(197,18,103,0,7000,'body',0,1633,353,1677,1360947072,1,1649),(197,18,103,0,7001,'body',0,1803,354,1649,1360947072,1,1633),(197,18,103,0,7002,'body',0,1726,355,1633,1360947072,1,1803),(197,18,103,0,7003,'body',0,1787,356,1803,1360947072,1,1726),(197,18,103,0,7004,'body',0,1788,357,1726,1360947072,1,1787),(197,18,103,0,7005,'body',0,814,358,1787,1360947072,1,1788),(197,18,103,0,7006,'body',0,1730,359,1788,1360947072,1,814),(197,18,103,0,7007,'body',0,1804,360,814,1360947072,1,1730),(197,18,103,0,7008,'body',0,1762,361,1730,1360947072,1,1804),(197,18,103,0,7009,'body',0,1651,362,1804,1360947072,1,1762),(197,18,103,0,7010,'body',0,1787,363,1762,1360947072,1,1651),(197,18,103,0,7011,'body',0,1805,364,1651,1360947072,1,1787),(197,18,103,0,7012,'body',0,1647,365,1787,1360947072,1,1805),(197,18,103,0,7013,'body',0,1651,366,1805,1360947072,1,1647),(197,18,103,0,7014,'body',0,1680,367,1647,1360947072,1,1651),(197,18,103,0,7015,'body',0,1645,368,1651,1360947072,1,1680),(197,18,103,0,7016,'body',0,1806,369,1680,1360947072,1,1645),(197,18,103,0,7017,'body',0,1807,370,1645,1360947072,1,1806),(197,18,103,0,7018,'body',0,1627,371,1806,1360947072,1,1807),(197,18,103,0,7019,'body',0,1729,372,1807,1360947072,1,1627),(197,18,103,0,7020,'body',0,1808,373,1627,1360947072,1,1729),(197,18,103,0,7021,'body',0,1651,374,1729,1360947072,1,1808),(197,18,103,0,7022,'body',0,1809,375,1808,1360947072,1,1651),(197,18,103,0,7023,'body',0,1645,376,1651,1360947072,1,1809),(197,18,103,0,7024,'body',0,1790,377,1809,1360947072,1,1645),(197,18,103,0,7025,'body',0,1631,378,1645,1360947072,1,1790),(197,18,103,0,7026,'body',0,1692,379,1790,1360947072,1,1631),(197,18,103,0,7027,'body',0,1642,380,1631,1360947072,1,1692),(197,18,103,0,7028,'body',0,1810,381,1692,1360947072,1,1642),(197,18,103,0,7029,'body',0,1811,382,1642,1360947072,1,1810),(197,18,103,0,7030,'body',0,1629,383,1810,1360947072,1,1811),(197,18,103,0,7031,'body',0,1812,384,1811,1360947072,1,1629),(197,18,103,0,7032,'body',0,814,385,1629,1360947072,1,1812),(197,18,103,0,7033,'body',0,1813,386,1812,1360947072,1,814),(197,18,103,0,7034,'body',0,1814,387,814,1360947072,1,1813),(197,18,103,0,7035,'body',0,1725,388,1813,1360947072,1,1814),(197,18,103,0,7036,'body',0,1647,389,1814,1360947072,1,1725),(197,18,103,0,7037,'body',0,1815,390,1725,1360947072,1,1647),(197,18,103,0,7038,'body',0,1811,391,1647,1360947072,1,1815),(197,18,103,0,7039,'body',0,1816,392,1815,1360947072,1,1811),(197,18,103,0,7040,'body',0,814,393,1811,1360947072,1,1816),(197,18,103,0,7041,'body',0,1817,394,1816,1360947072,1,814),(197,18,103,0,7042,'body',0,1715,395,814,1360947072,1,1817),(197,18,103,0,7043,'body',0,1818,396,1817,1360947072,1,1715),(197,18,103,0,7044,'body',0,1654,397,1715,1360947072,1,1818),(197,18,103,0,7045,'body',0,1651,398,1818,1360947072,1,1654),(197,18,103,0,7046,'body',0,1819,399,1654,1360947072,1,1651),(197,18,103,0,7047,'body',0,1820,400,1651,1360947072,1,1819),(197,18,103,0,7048,'body',0,1717,401,1819,1360947072,1,1820),(197,18,103,0,7049,'body',0,1710,402,1820,1360947072,1,1717),(197,18,103,0,7050,'body',0,1815,403,1717,1360947072,1,1710),(197,18,103,0,7051,'body',0,1821,404,1710,1360947072,1,1815),(197,18,103,0,7052,'body',0,1641,405,1815,1360947072,1,1821),(197,18,103,0,7053,'body',0,1822,406,1821,1360947072,1,1641),(197,18,103,0,7054,'body',0,1692,407,1641,1360947072,1,1822),(197,18,103,0,7055,'body',0,1630,408,1822,1360947072,1,1692),(197,18,103,0,7056,'body',0,1823,409,1692,1360947072,1,1630),(197,18,103,0,7057,'body',0,1824,410,1630,1360947072,1,1823),(197,18,103,0,7058,'body',0,1812,411,1823,1360947072,1,1824),(197,18,103,0,7059,'body',0,1730,412,1824,1360947072,1,1812),(197,18,103,0,7060,'body',0,1825,413,1812,1360947072,1,1730),(197,18,103,0,7061,'body',0,1790,414,1730,1360947072,1,1825),(197,18,103,0,7062,'body',0,1679,415,1825,1360947072,1,1790),(197,18,103,0,7063,'body',0,1651,416,1790,1360947072,1,1679),(197,18,103,0,7064,'body',0,1826,417,1679,1360947072,1,1651),(197,18,103,0,7065,'body',0,1827,418,1651,1360947072,1,1826),(197,18,103,0,7066,'body',0,1828,419,1826,1360947072,1,1827),(197,18,103,0,7067,'body',0,1812,420,1827,1360947072,1,1828),(197,18,103,0,7068,'body',0,1677,421,1828,1360947072,1,1812),(197,18,103,0,7069,'body',0,1829,422,1812,1360947072,1,1677),(197,18,103,0,7070,'body',0,1830,423,1677,1360947072,1,1829),(197,18,103,0,7071,'body',0,1831,424,1829,1360947072,1,1830),(197,18,103,0,7072,'body',0,1631,425,1830,1360947072,1,1831),(197,18,103,0,7073,'body',0,1632,426,1831,1360947072,1,1631),(197,18,103,0,7074,'body',0,1633,427,1631,1360947072,1,1632),(197,18,103,0,7075,'body',0,1832,428,1632,1360947072,1,1633),(197,18,103,0,7076,'body',0,1667,429,1633,1360947072,1,1832),(197,18,103,0,7077,'body',0,1651,430,1832,1360947072,1,1667),(197,18,103,0,7078,'body',0,1683,431,1667,1360947072,1,1651),(197,18,103,0,7079,'body',0,1715,432,1651,1360947072,1,1683),(197,18,103,0,7080,'body',0,1833,433,1683,1360947072,1,1715),(197,18,103,0,7081,'body',0,1709,434,1715,1360947072,1,1833),(197,18,103,0,7082,'body',0,1831,435,1833,1360947072,1,1709),(197,18,103,0,7083,'body',0,1834,436,1709,1360947072,1,1831),(197,18,103,0,7084,'body',0,1835,437,1831,1360947072,1,1834),(197,18,103,0,7085,'body',0,1836,438,1834,1360947072,1,1835),(197,18,103,0,7086,'body',0,1744,439,1835,1360947072,1,1836),(197,18,103,0,7087,'body',0,1748,440,1836,1360947072,1,1744),(197,18,103,0,7088,'body',0,1645,441,1744,1360947072,1,1748),(197,18,103,0,7089,'body',0,814,442,1748,1360947072,1,1645),(197,18,103,0,7090,'body',0,1837,443,1645,1360947072,1,814),(197,18,103,0,7091,'body',0,1726,444,814,1360947072,1,1837),(197,18,103,0,7092,'body',0,1838,445,1837,1360947072,1,1726),(197,18,103,0,7093,'body',0,1641,446,1726,1360947072,1,1838),(197,18,103,0,7094,'body',0,1839,447,1838,1360947072,1,1641),(197,18,103,0,7095,'body',0,1651,448,1641,1360947072,1,1839),(197,18,103,0,7096,'body',0,1840,449,1839,1360947072,1,1651),(197,18,103,0,7097,'body',0,1635,450,1651,1360947072,1,1840),(197,18,103,0,7098,'body',0,1631,451,1840,1360947072,1,1635),(197,18,103,0,7099,'body',0,1632,452,1635,1360947072,1,1631),(197,18,103,0,7100,'body',0,1633,453,1631,1360947072,1,1632),(197,18,103,0,7101,'body',0,814,454,1632,1360947072,1,1633),(197,18,103,0,7102,'body',0,1841,455,1633,1360947072,1,814),(197,18,103,0,7103,'body',0,1842,456,814,1360947072,1,1841),(197,18,103,0,7104,'body',0,1647,457,1841,1360947072,1,1842),(197,18,103,0,7105,'body',0,1651,458,1842,1360947072,1,1647),(197,18,103,0,7106,'body',0,1680,459,1647,1360947072,1,1651),(197,18,103,0,7107,'body',0,1645,460,1651,1360947072,1,1680),(197,18,103,0,7108,'body',0,814,461,1680,1360947072,1,1645),(197,18,103,0,7109,'body',0,1843,462,1645,1360947072,1,814),(197,18,103,0,7110,'body',0,1684,463,814,1360947072,1,1843),(197,18,103,0,7111,'body',0,1725,464,1843,1360947072,1,1684),(197,18,103,0,7112,'body',0,1844,465,1684,1360947072,1,1725),(197,18,103,0,7113,'body',0,1845,466,1725,1360947072,1,1844),(197,18,103,0,7114,'body',0,1846,467,1844,1360947072,1,1845),(197,18,103,0,7115,'body',0,1847,468,1845,1360947072,1,1846),(197,18,103,0,7116,'body',0,1848,469,1846,1360947072,1,1847),(197,18,103,0,7117,'body',0,1742,470,1847,1360947072,1,1848),(197,18,103,0,7118,'body',0,1834,471,1848,1360947072,1,1742),(197,18,103,0,7119,'body',0,1835,472,1742,1360947072,1,1834),(197,18,103,0,7120,'body',0,1763,473,1834,1360947072,1,1835),(197,18,103,0,7121,'body',0,1849,474,1835,1360947072,1,1763),(197,18,103,0,7122,'body',0,1812,475,1763,1360947072,1,1849),(197,18,103,0,7123,'body',0,814,476,1849,1360947072,1,1812),(197,18,103,0,7124,'body',0,1683,477,1812,1360947072,1,814),(197,18,103,0,7125,'body',0,1757,478,814,1360947072,1,1683),(197,18,103,0,7126,'body',0,1825,479,1683,1360947072,1,1757),(197,18,103,0,7127,'body',0,816,480,1757,1360947072,1,1825),(197,18,103,0,7128,'body',0,1778,481,1825,1360947072,1,816),(197,18,103,0,7129,'body',0,1717,482,816,1360947072,1,1778),(197,18,103,0,7130,'body',0,1850,483,1778,1360947072,1,1717),(197,18,103,0,7131,'body',0,1662,484,1717,1360947072,1,1850),(197,18,103,0,7132,'body',0,1851,485,1850,1360947072,1,1662),(197,18,103,0,7133,'body',0,1651,486,1662,1360947072,1,1851),(197,18,103,0,7134,'body',0,1680,487,1851,1360947072,1,1651),(197,18,103,0,7135,'body',0,1645,488,1651,1360947072,1,1680),(197,18,103,0,7136,'body',0,814,489,1680,1360947072,1,1645),(197,18,103,0,7137,'body',0,1631,490,1645,1360947072,1,814),(197,18,103,0,7138,'body',0,1632,491,814,1360947072,1,1631),(197,18,103,0,7139,'body',0,1761,492,1631,1360947072,1,1632),(197,18,103,0,7140,'body',0,1627,493,1632,1360947072,1,1761),(197,18,103,0,7141,'body',0,1635,494,1761,1360947072,1,1627),(197,18,103,0,7142,'body',0,1852,495,1627,1360947072,1,1635),(197,18,103,0,7143,'body',0,1853,496,1635,1360947072,1,1852),(197,18,103,0,7144,'body',0,1854,497,1852,1360947072,1,1853),(197,18,103,0,7145,'body',0,1635,498,1853,1360947072,1,1854),(197,18,103,0,7146,'body',0,1855,499,1854,1360947072,1,1635),(197,18,103,0,7147,'body',0,1748,500,1635,1360947072,1,1855),(197,18,103,0,7148,'body',0,1645,501,1855,1360947072,1,1748),(197,18,103,0,7149,'body',0,814,502,1748,1360947072,1,1645),(197,18,103,0,7150,'body',0,1856,503,1645,1360947072,1,814),(197,18,103,0,7151,'body',0,1631,504,814,1360947072,1,1856),(197,18,103,0,7152,'body',0,1632,505,1856,1360947072,1,1631),(197,18,103,0,7153,'body',0,1627,506,1631,1360947072,1,1632),(197,18,103,0,7154,'body',0,1778,507,1632,1360947072,1,1627),(197,18,103,0,7155,'body',0,1857,508,1627,1360947072,1,1778),(197,18,103,0,7156,'body',0,1830,509,1778,1360947072,1,1857),(197,18,103,0,7157,'body',0,1631,510,1857,1360947072,1,1830),(197,18,103,0,7158,'body',0,1632,511,1830,1360947072,1,1631),(197,18,103,0,7159,'body',0,1858,512,1631,1360947072,1,1632),(197,18,103,0,7160,'body',0,1859,513,1632,1360947072,1,1858),(197,18,103,0,7161,'body',0,1830,514,1858,1360947072,1,1859),(197,18,103,0,7162,'body',0,1809,515,1859,1360947072,1,1830),(197,18,103,0,7163,'body',0,1645,516,1830,1360947072,1,1809),(197,18,103,0,7164,'body',0,1631,517,1809,1360947072,1,1645),(197,18,103,0,7165,'body',0,1632,518,1645,1360947072,1,1631),(197,18,103,0,7166,'body',0,1633,519,1631,1360947072,1,1632),(197,18,103,0,7167,'body',0,1860,520,1632,1360947072,1,1633),(197,18,103,0,7168,'body',0,1861,521,1633,1360947072,1,1860),(197,18,103,0,7169,'body',0,814,522,1860,1360947072,1,1861),(197,18,103,0,7170,'body',0,1862,523,1861,1360947072,1,814),(197,18,103,0,7171,'body',0,1683,524,814,1360947072,1,1862),(197,18,103,0,7172,'body',0,1730,525,1862,1360947072,1,1683),(197,18,103,0,7173,'body',0,1863,526,1683,1360947072,1,1730),(197,18,103,0,7174,'body',0,1776,527,1730,1360947072,1,1863),(197,18,103,0,7175,'body',0,1686,528,1863,1360947072,1,1776),(197,18,103,0,7176,'body',0,1791,529,1776,1360947072,1,1686),(197,18,103,0,7177,'body',0,1677,530,1686,1360947072,1,1791),(197,18,103,0,7178,'body',0,814,531,1791,1360947072,1,1677),(197,18,103,0,7179,'body',0,1715,532,1677,1360947072,1,814),(197,18,103,0,7180,'body',0,1864,533,814,1360947072,1,1715),(197,18,103,0,7181,'body',0,1667,534,1715,1360947072,1,1864),(197,18,103,0,7182,'body',0,1865,535,1864,1360947072,1,1667),(197,18,103,0,7183,'body',0,1706,536,1667,1360947072,1,1865),(197,18,103,0,7184,'body',0,1866,537,1865,1360947072,1,1706),(197,18,103,0,7185,'body',0,1830,538,1706,1360947072,1,1866),(197,18,103,0,7186,'body',0,1790,539,1866,1360947072,1,1830),(197,18,103,0,7187,'body',0,1867,540,1830,1360947072,1,1790),(197,18,103,0,7188,'body',0,1868,541,1790,1360947072,1,1867),(197,18,103,0,7189,'body',0,1641,542,1867,1360947072,1,1868),(197,18,103,0,7190,'body',0,814,543,1868,1360947072,1,1641),(197,18,103,0,7191,'body',0,1683,544,1641,1360947072,1,814),(197,18,103,0,7192,'body',0,1869,545,814,1360947072,1,1683),(197,18,103,0,7193,'body',0,1665,546,1683,1360947072,1,1869),(197,18,103,0,7194,'body',0,1790,547,1869,1360947072,1,1665),(197,18,103,0,7195,'body',0,1870,548,1665,1360947072,1,1790),(197,18,103,0,7196,'body',0,1791,549,1790,1360947072,1,1870),(197,18,103,0,7197,'body',0,1677,550,1870,1360947072,1,1791),(197,18,103,0,7198,'body',0,1678,551,1791,1360947072,1,1677),(197,18,103,0,7199,'body',0,1726,552,1677,1360947072,1,1678),(197,18,103,0,7200,'body',0,1643,553,1678,1360947072,1,1726),(197,18,103,0,7201,'body',0,1871,554,1726,1360947072,1,1643),(197,18,103,0,7202,'body',0,1755,555,1643,1360947072,1,1871),(197,18,103,0,7203,'body',0,1717,556,1871,1360947072,1,1755),(197,18,103,0,7204,'body',0,1872,557,1755,1360947072,1,1717),(197,18,103,0,7205,'body',0,1641,558,1717,1360947072,1,1872),(197,18,103,0,7206,'body',0,1873,559,1872,1360947072,1,1641),(197,18,103,0,7207,'body',0,1874,560,1641,1360947072,1,1873),(197,18,103,0,7208,'body',0,1655,561,1873,1360947072,1,1874),(197,18,103,0,7209,'body',0,1875,562,1874,1360947072,1,1655),(197,18,103,0,7210,'body',0,1635,563,1655,1360947072,1,1875),(197,18,103,0,7211,'body',0,1643,564,1875,1360947072,1,1635),(197,18,103,0,7212,'body',0,1876,565,1635,1360947072,1,1643),(197,18,103,0,7213,'body',0,1877,566,1643,1360947072,1,1876),(197,18,103,0,7214,'body',0,1878,567,1876,1360947072,1,1877),(197,18,103,0,7215,'body',0,1717,568,1877,1360947072,1,1878),(197,18,103,0,7216,'body',0,1799,569,1878,1360947072,1,1717),(197,18,103,0,7217,'body',0,1667,570,1717,1360947072,1,1799),(197,18,103,0,7218,'body',0,1742,571,1799,1360947072,1,1667),(197,18,103,0,7219,'body',0,1641,572,1667,1360947072,1,1742),(197,18,103,0,7220,'body',0,1879,573,1742,1360947072,1,1641),(197,18,103,0,7221,'body',0,1860,574,1641,1360947072,1,1879),(197,18,103,0,7222,'body',0,1778,575,1879,1360947072,1,1860),(197,18,103,0,7223,'body',0,814,576,1860,1360947072,1,1778),(197,18,103,0,7224,'body',0,1880,577,1778,1360947072,1,814),(197,18,103,0,7225,'body',0,1881,578,814,1360947072,1,1880),(197,18,103,0,7226,'body',0,1641,579,1880,1360947072,1,1881),(197,18,103,0,7227,'body',0,1882,580,1881,1360947072,1,1641),(197,18,103,0,7228,'body',0,1713,581,1641,1360947072,1,1882),(197,18,103,0,7229,'body',0,1677,582,1882,1360947072,1,1713),(197,18,103,0,7230,'body',0,1717,583,1713,1360947072,1,1677),(197,18,103,0,7231,'body',0,1883,584,1677,1360947072,1,1717),(197,18,103,0,7232,'body',0,1742,585,1717,1360947072,1,1883),(197,18,103,0,7233,'body',0,1641,586,1883,1360947072,1,1742),(197,18,103,0,7234,'body',0,1884,587,1742,1360947072,1,1641),(197,18,103,0,7235,'body',0,1851,588,1641,1360947072,1,1884),(197,18,103,0,7236,'body',0,814,589,1884,1360947072,1,1851),(197,18,103,0,7237,'body',0,1683,590,1851,1360947072,1,814),(197,18,103,0,7238,'body',0,1869,591,814,1360947072,1,1683),(197,18,103,0,7239,'body',0,1860,592,1683,1360947072,1,1869),(197,18,103,0,7240,'body',0,1778,593,1869,1360947072,1,1860),(197,18,103,0,7241,'body',0,1875,594,1860,1360947072,1,1778),(197,18,103,0,7242,'body',0,1885,595,1778,1360947072,1,1875),(197,18,103,0,7243,'body',0,1686,596,1875,1360947072,1,1885),(197,18,103,0,7244,'body',0,1886,597,1885,1360947072,1,1686),(197,18,103,0,7245,'body',0,814,598,1686,1360947072,1,1886),(197,18,103,0,7246,'body',0,1887,599,1886,1360947072,1,814),(197,18,103,0,7247,'body',0,1888,600,814,1360947072,1,1887),(197,18,103,0,7248,'body',0,1889,601,1887,1360947072,1,1888),(197,18,103,0,7249,'body',0,816,602,1888,1360947072,1,1889),(197,18,103,0,7250,'body',0,814,603,1889,1360947072,1,816),(197,18,103,0,7251,'body',0,1858,604,816,1360947072,1,814),(197,18,103,0,7252,'body',0,1869,605,814,1360947072,1,1858),(197,18,103,0,7253,'body',0,1641,606,1858,1360947072,1,1869),(197,18,103,0,7254,'body',0,1662,607,1869,1360947072,1,1641),(197,18,103,0,7255,'body',0,1890,608,1641,1360947072,1,1662),(197,18,103,0,7256,'body',0,816,609,1662,1360947072,1,1890),(197,18,103,0,7257,'body',0,1651,610,1890,1360947072,1,816),(197,18,103,0,7258,'body',0,1826,611,816,1360947072,1,1651),(197,18,103,0,7259,'body',0,1811,612,1651,1360947072,1,1826),(197,18,103,0,7260,'body',0,1647,613,1826,1360947072,1,1811),(197,18,103,0,7261,'body',0,1678,614,1811,1360947072,1,1647),(197,18,103,0,7262,'body',0,1726,615,1647,1360947072,1,1678),(197,18,103,0,7263,'body',0,1651,616,1678,1360947072,1,1726),(197,18,103,0,7264,'body',0,1680,617,1726,1360947072,1,1651),(197,18,103,0,7265,'body',0,1645,618,1651,1360947072,1,1680),(197,18,103,0,7266,'body',0,1891,619,1680,1360947072,1,1645),(197,18,103,0,7267,'body',0,1892,620,1645,1360947072,1,1891),(197,18,103,0,7268,'body',0,1893,621,1891,1360947072,1,1892),(197,18,103,0,7269,'body',0,1635,622,1892,1360947072,1,1893),(197,18,103,0,7270,'body',0,1641,623,1893,1360947072,1,1635),(197,18,103,0,7271,'body',0,814,624,1635,1360947072,1,1641),(197,18,103,0,7272,'body',0,1730,625,1641,1360947072,1,814),(197,18,103,0,7273,'body',0,1869,626,814,1360947072,1,1730),(197,18,103,0,7274,'body',0,1641,627,1730,1360947072,1,1869),(197,18,103,0,7275,'body',0,1894,628,1869,1360947072,1,1641),(197,18,103,0,7276,'body',0,1790,629,1641,1360947072,1,1894),(197,18,103,0,7277,'body',0,1641,630,1894,1360947072,1,1790),(197,18,103,0,7278,'body',0,1895,631,1790,1360947072,1,1641),(197,18,103,0,7279,'body',0,1896,632,1641,1360947072,1,1895),(197,18,103,0,7280,'body',0,1641,633,1895,1360947072,1,1896),(197,18,103,0,7281,'body',0,1851,634,1896,1360947072,1,1641),(197,18,103,0,7282,'body',0,1858,635,1641,1360947072,1,1851),(197,18,103,0,7283,'body',0,1725,636,1851,1360947072,1,1858),(197,18,103,0,7284,'body',0,1897,637,1858,1360947072,1,1725),(197,18,103,0,7285,'body',0,1898,638,1725,1360947072,1,1897),(197,18,103,0,7286,'body',0,1825,639,1897,1360947072,1,1898),(197,18,103,0,7287,'body',0,1717,640,1898,1360947072,1,1825),(197,18,103,0,7288,'body',0,1758,641,1825,1360947072,1,1717),(197,18,103,0,7289,'body',0,1899,642,1717,1360947072,1,1758),(197,18,103,0,7290,'body',0,1641,643,1758,1360947072,1,1899),(197,18,103,0,7291,'body',0,1900,644,1899,1360947072,1,1641),(197,18,103,0,7292,'body',0,1830,645,1641,1360947072,1,1900),(197,18,103,0,7293,'body',0,1671,646,1900,1360947072,1,1830),(197,18,103,0,7294,'body',0,1875,647,1830,1360947072,1,1671),(197,18,103,0,7295,'body',0,1830,648,1671,1360947072,1,1875),(197,18,103,0,7296,'body',0,1901,649,1875,1360947072,1,1830),(197,18,103,0,7297,'body',0,1645,650,1830,1360947072,1,1901),(197,18,103,0,7298,'body',0,814,651,1901,1360947072,1,1645),(197,18,103,0,7299,'body',0,1683,652,1645,1360947072,1,814),(197,18,103,0,7300,'body',0,1869,653,814,1360947072,1,1683),(197,18,103,0,7301,'body',0,1830,654,1683,1360947072,1,1869),(197,18,103,0,7302,'body',0,1717,655,1869,1360947072,1,1830),(197,18,103,0,7303,'body',0,1681,656,1830,1360947072,1,1717),(197,18,103,0,7304,'body',0,814,657,1717,1360947072,1,1681),(197,18,103,0,7305,'body',0,1902,658,1681,1360947072,1,814),(197,18,103,0,7306,'body',0,814,659,814,1360947072,1,1902),(197,18,103,0,7307,'body',0,1903,660,1902,1360947072,1,814),(197,18,103,0,7308,'body',0,1645,661,814,1360947072,1,1903),(197,18,103,0,7309,'body',0,1686,662,1903,1360947072,1,1645),(197,18,103,0,7310,'body',0,1628,663,1645,1360947072,1,1686),(197,18,103,0,7311,'body',0,1904,664,1686,1360947072,1,1628),(197,18,103,0,7312,'body',0,1713,665,1628,1360947072,1,1904),(197,18,103,0,7313,'body',0,1641,666,1904,1360947072,1,1713),(197,18,103,0,7314,'body',0,1905,667,1713,1360947072,1,1641),(197,18,103,0,7315,'body',0,1630,668,1641,1360947072,1,1905),(197,18,103,0,7316,'body',0,814,669,1905,1360947072,1,1630),(197,18,103,0,7317,'body',0,1862,670,1630,1360947072,1,814),(197,18,103,0,7318,'body',0,1683,671,814,1360947072,1,1862),(197,18,103,0,7319,'body',0,1906,672,1862,1360947072,1,1683),(197,18,103,0,7320,'body',0,1825,673,1683,1360947072,1,1906),(197,18,103,0,7321,'body',0,1700,674,1906,1360947072,1,1825),(197,18,103,0,7322,'body',0,1710,675,1825,1360947072,1,1700),(197,18,103,0,7323,'body',0,1661,676,1700,1360947072,1,1710),(197,18,103,0,7324,'body',0,1641,677,1710,1360947072,1,1661),(197,18,103,0,7325,'body',0,1907,678,1661,1360947072,1,1641),(197,18,103,0,7326,'body',0,1641,679,1641,1360947072,1,1907),(197,18,103,0,7327,'body',0,1900,680,1907,1360947072,1,1641),(197,18,103,0,7328,'body',0,1830,681,1641,1360947072,1,1900),(197,18,103,0,7329,'body',0,1671,682,1900,1360947072,1,1830),(197,18,103,0,7330,'body',0,1645,683,1830,1360947072,1,1671),(197,18,103,0,7331,'body',0,1631,684,1671,1360947072,1,1645),(197,18,103,0,7332,'body',0,1632,685,1645,1360947072,1,1631),(197,18,103,0,7333,'body',0,1633,686,1631,1360947072,1,1632),(197,18,103,0,7334,'body',0,1679,687,1632,1360947072,1,1633),(197,18,103,0,7335,'body',0,1730,688,1633,1360947072,1,1679),(197,18,103,0,7336,'body',0,1725,689,1679,1360947072,1,1730),(197,18,103,0,7337,'body',0,1830,690,1730,1360947072,1,1725),(197,18,103,0,7338,'body',0,1700,691,1725,1360947072,1,1830),(197,18,103,0,7339,'body',0,1758,692,1830,1360947072,1,1700),(197,18,103,0,7340,'body',0,1647,693,1700,1360947072,1,1758),(197,18,103,0,7341,'body',0,1641,694,1758,1360947072,1,1647),(197,18,103,0,7342,'body',0,1908,695,1647,1360947072,1,1641),(197,18,103,0,7343,'body',0,1677,696,1641,1360947072,1,1908),(197,18,103,0,7344,'body',0,1638,697,1908,1360947072,1,1677),(197,18,103,0,7345,'body',0,1718,698,1677,1360947072,1,1638),(197,18,103,0,7346,'body',0,1909,699,1638,1360947072,1,1718),(197,18,103,0,7347,'body',0,1651,700,1718,1360947072,1,1909),(197,18,103,0,7348,'body',0,1910,701,1909,1360947072,1,1651),(197,18,103,0,7349,'body',0,1911,702,1651,1360947072,1,1910),(197,18,103,0,7350,'body',0,1902,703,1910,1360947072,1,1911),(197,18,103,0,7351,'body',0,1686,704,1911,1360947072,1,1902),(197,18,103,0,7352,'body',0,1687,705,1902,1360947072,1,1686),(197,18,103,0,7353,'body',0,1868,706,1686,1360947072,1,1687),(197,18,103,0,7354,'body',0,814,707,1687,1360947072,1,1868),(197,18,103,0,7355,'body',0,1912,708,1868,1360947072,1,814),(197,18,103,0,7356,'body',0,1913,709,814,1360947072,1,1912),(197,18,103,0,7357,'body',0,1914,710,1912,1360947072,1,1913),(197,18,103,0,7358,'body',0,1700,711,1913,1360947072,1,1914),(197,18,103,0,7359,'body',0,1850,712,1914,1360947072,1,1700),(197,18,103,0,7360,'body',0,1905,713,1700,1360947072,1,1850),(197,18,103,0,7361,'body',0,1812,714,1850,1360947072,1,1905),(197,18,103,0,7362,'body',0,1915,715,1905,1360947072,1,1812),(197,18,103,0,7363,'body',0,1916,716,1812,1360947072,1,1915),(197,18,103,0,7364,'body',0,814,717,1915,1360947072,1,1916),(197,18,103,0,7365,'body',0,1769,718,1916,1360947072,1,814),(197,18,103,0,7366,'body',0,816,719,814,1360947072,1,1769),(197,18,103,0,7367,'body',0,814,720,1769,1360947072,1,816),(197,18,103,0,7368,'body',0,1687,721,816,1360947072,1,814),(197,18,103,0,7369,'body',0,1644,722,814,1360947072,1,1687),(197,18,103,0,7370,'body',0,814,723,1687,1360947072,1,1644),(197,18,103,0,7371,'body',0,1725,724,1644,1360947072,1,814),(197,18,103,0,7372,'body',0,1645,725,814,1360947072,1,1725),(197,18,103,0,7373,'body',0,1631,726,1725,1360947072,1,1645),(197,18,103,0,7374,'body',0,1633,727,1645,1360947072,1,1631),(197,18,103,0,7375,'body',0,1830,728,1631,1360947072,1,1633),(197,18,103,0,7376,'body',0,1700,729,1633,1360947072,1,1830),(197,18,103,0,7377,'body',0,1917,730,1830,1360947072,1,1700),(197,18,103,0,7378,'body',0,1838,731,1700,1360947072,1,1917),(197,18,103,0,7379,'body',0,1679,732,1917,1360947072,1,1838),(197,18,103,0,7380,'body',0,1651,733,1838,1360947072,1,1679),(197,18,103,0,7381,'body',0,1918,734,1679,1360947072,1,1651),(197,18,103,0,7382,'body',0,1919,735,1651,1360947072,1,1918),(197,18,103,0,7383,'body',0,1645,736,1918,1360947072,1,1919),(197,18,103,0,7384,'body',0,1709,737,1919,1360947072,1,1645),(197,18,103,0,7385,'body',0,1700,738,1645,1360947072,1,1709),(197,18,103,0,7386,'body',0,1710,739,1709,1360947072,1,1700),(197,18,103,0,7387,'body',0,1920,740,1700,1360947072,1,1710),(197,18,103,0,7388,'body',0,1641,741,1710,1360947072,1,1920),(197,18,103,0,7389,'body',0,1839,742,1920,1360947072,1,1641),(197,18,103,0,7390,'body',0,1921,743,1641,1360947072,1,1839),(197,18,103,0,7391,'body',0,1922,744,1839,1360947072,1,1921),(197,18,103,0,7392,'body',0,814,745,1921,1360947072,1,1922),(197,18,103,0,7393,'body',0,1922,746,1922,1360947072,1,814),(197,18,103,0,7394,'body',0,816,747,814,1360947072,1,1922),(197,18,103,0,7395,'body',0,814,748,1922,1360947072,1,816),(197,18,103,0,7396,'body',0,1687,749,816,1360947072,1,814),(197,18,103,0,7397,'body',0,1689,750,814,1360947072,1,1687),(197,18,103,0,7398,'body',0,1662,751,1687,1360947072,1,1689),(197,18,103,0,7399,'body',0,1910,752,1689,1360947072,1,1662),(197,18,103,0,7400,'body',0,1911,753,1662,1360947072,1,1910),(197,18,103,0,7401,'body',0,1700,754,1910,1360947072,1,1911),(197,18,103,0,7402,'body',0,1850,755,1911,1360947072,1,1700),(197,18,103,0,7403,'body',0,1742,756,1700,1360947072,1,1850),(197,18,103,0,7404,'body',0,1923,757,1850,1360947072,1,1742),(197,18,103,0,7405,'body',0,1924,758,1742,1360947072,1,1923),(197,18,103,0,7406,'body',0,1645,759,1923,1360947072,1,1924),(197,18,103,0,7407,'body',0,1687,760,1924,1360947072,1,1645),(197,18,103,0,7408,'body',0,1647,761,1645,1360947072,1,1687),(197,18,103,0,7409,'body',0,1925,762,1687,1360947072,1,1647),(197,18,103,0,7410,'body',0,1651,763,1647,1360947072,1,1925),(197,18,103,0,7411,'body',0,1687,764,1925,1360947072,1,1651),(197,18,103,0,7412,'body',0,1689,765,1651,1360947072,1,1687),(197,18,103,0,7413,'body',0,1662,766,1687,1360947072,1,1689),(197,18,103,0,7414,'body',0,1651,767,1689,1360947072,1,1662),(197,18,103,0,7415,'body',0,1926,768,1662,1360947072,1,1651),(197,18,103,0,7416,'body',0,1927,769,1651,1360947072,1,1926),(197,18,103,0,7417,'body',0,816,770,1926,1360947072,1,1927),(197,18,103,0,7418,'body',0,1687,771,1927,1360947072,1,816),(197,18,103,0,7419,'body',0,1688,772,816,1360947072,1,1687),(197,18,103,0,7420,'body',0,1647,773,1687,1360947072,1,1688),(197,18,103,0,7421,'body',0,1742,774,1688,1360947072,1,1647),(197,18,103,0,7422,'body',0,1651,775,1647,1360947072,1,1742),(197,18,103,0,7423,'body',0,1928,776,1742,1360947072,1,1651),(197,18,103,0,7424,'body',0,1647,777,1651,1360947072,1,1928),(197,18,103,0,7425,'body',0,1929,778,1928,1360947072,1,1647),(197,18,103,0,7426,'body',0,1651,779,1647,1360947072,1,1929),(197,18,103,0,7427,'body',0,1687,780,1929,1360947072,1,1651),(197,18,103,0,7428,'body',0,1930,781,1651,1360947072,1,1687),(197,18,103,0,7429,'body',0,1689,782,1687,1360947072,1,1930),(197,18,103,0,7430,'body',0,1742,783,1930,1360947072,1,1689),(197,18,103,0,7431,'body',0,1931,784,1689,1360947072,1,1742),(197,18,103,0,7432,'body',0,816,785,1742,1360947072,1,1931),(197,18,103,0,7433,'body',0,1932,786,1931,1360947072,1,816),(197,18,103,0,7434,'body',0,1933,787,816,1360947072,1,1932),(197,18,103,0,7435,'body',0,1934,788,1932,1360947072,1,1933),(197,18,103,0,7436,'body',0,1935,789,1933,1360947072,1,1934),(197,18,103,0,7437,'body',0,1647,790,1934,1360947072,1,1935),(197,18,103,0,7438,'body',0,1936,791,1935,1360947072,1,1647),(197,18,103,0,7439,'body',0,1866,792,1647,1360947072,1,1936),(197,18,103,0,7440,'body',0,1830,793,1936,1360947072,1,1866),(197,18,103,0,7441,'body',0,1937,794,1866,1360947072,1,1830),(197,18,103,0,7442,'body',0,1830,795,1830,1360947072,1,1937),(197,18,103,0,7443,'body',0,1866,796,1937,1360947072,1,1830),(197,18,103,0,7444,'body',0,1917,797,1830,1360947072,1,1866),(197,18,103,0,7445,'body',0,1700,798,1866,1360947072,1,1917),(197,18,103,0,7446,'body',0,1850,799,1917,1360947072,1,1700),(197,18,103,0,7447,'body',0,1938,800,1700,1360947072,1,1850),(197,18,103,0,7448,'body',0,1696,801,1850,1360947072,1,1938),(197,18,103,0,7449,'body',0,1939,802,1938,1360947072,1,1696),(197,18,103,0,7450,'body',0,1911,803,1696,1360947072,1,1939),(197,18,103,0,7451,'body',0,1651,804,1939,1360947072,1,1911),(197,18,103,0,7452,'body',0,1926,805,1911,1360947072,1,1651),(197,18,103,0,7453,'body',0,1940,806,1651,1360947072,1,1926),(197,18,103,0,7454,'body',0,1645,807,1926,1360947072,1,1940),(197,18,103,0,7455,'body',0,1687,808,1940,1360947072,1,1645),(197,18,103,0,7456,'body',0,1930,809,1645,1360947072,1,1687),(197,18,103,0,7457,'body',0,1941,810,1687,1360947072,1,1930),(197,18,103,0,7458,'body',0,1635,811,1930,1360947072,1,1941),(197,18,103,0,7459,'body',0,1942,812,1941,1360947072,1,1635),(197,18,103,0,7460,'body',0,1943,813,1635,1360947072,1,1942),(197,18,103,0,7461,'body',0,1944,814,1942,1360947072,1,1943),(197,18,103,0,7462,'body',0,1945,815,1943,1360947072,1,1944),(197,18,103,0,7463,'body',0,1638,816,1944,1360947072,1,1945),(197,18,103,0,7464,'body',0,1946,817,1945,1360947072,1,1638),(197,18,103,0,7465,'body',0,1870,818,1638,1360947072,1,1946),(197,18,103,0,7466,'body',0,1681,819,1946,1360947072,1,1870),(197,18,103,0,7467,'body',0,1641,820,1870,1360947072,1,1681),(197,18,103,0,7468,'body',0,1742,821,1681,1360947072,1,1641),(197,18,103,0,7469,'body',0,1651,822,1641,1360947072,1,1742),(197,18,103,0,7470,'body',0,1947,823,1742,1360947072,1,1651),(197,18,103,0,7471,'body',0,1641,824,1651,1360947072,1,1947),(197,18,103,0,7472,'body',0,1948,825,1947,1360947072,1,1641),(197,18,103,0,7473,'body',0,1651,826,1641,1360947072,1,1948),(197,18,103,0,7474,'body',0,1949,827,1948,1360947072,1,1651),(197,18,103,0,7475,'body',0,816,828,1651,1360947072,1,1949),(197,18,103,0,7476,'body',0,1950,829,1949,1360947072,1,816),(197,18,103,0,7477,'body',0,1688,830,816,1360947072,1,1950),(197,18,103,0,7478,'body',0,1647,831,1950,1360947072,1,1688),(197,18,103,0,7479,'body',0,1651,832,1688,1360947072,1,1647),(197,18,103,0,7480,'body',0,1951,833,1647,1360947072,1,1651),(197,18,103,0,7481,'body',0,1709,834,1651,1360947072,1,1951),(197,18,103,0,7482,'body',0,1717,835,1951,1360947072,1,1709),(197,18,103,0,7483,'body',0,1872,836,1709,1360947072,1,1717),(197,18,103,0,7484,'body',0,1641,837,1717,1360947072,1,1872),(197,18,103,0,7485,'body',0,1952,838,1872,1360947072,1,1641),(197,18,103,0,7486,'body',0,1953,839,1641,1360947072,1,1952),(197,18,103,0,7487,'body',0,1638,840,1952,1360947072,1,1953),(197,18,103,0,7488,'body',0,1718,841,1953,1360947072,1,1638),(197,18,103,0,7489,'body',0,1954,842,1638,1360947072,1,1718),(197,18,103,0,7490,'body',0,1748,843,1718,1360947072,1,1954),(197,18,103,0,7491,'body',0,814,844,1954,1360947072,1,1748),(197,18,103,0,7492,'body',0,1627,845,1748,1360947072,1,814),(197,18,103,0,7493,'body',0,816,846,814,1360947072,1,1627),(197,18,103,0,7494,'body',0,1686,847,1627,1360947072,1,816),(197,18,103,0,7495,'body',0,1840,848,816,1360947072,1,1686),(197,18,103,0,7496,'body',0,1916,849,1686,1360947072,1,1840),(197,18,103,0,7497,'body',0,1812,850,1840,1360947072,1,1916),(197,18,103,0,7498,'body',0,1955,851,1916,1360947072,1,1812),(197,18,103,0,7499,'body',0,1956,852,1812,1360947072,1,1955),(197,18,103,0,7500,'body',0,1677,853,1955,1360947072,1,1956),(197,18,103,0,7501,'body',0,1638,854,1956,1360947072,1,1677),(197,18,103,0,7502,'body',0,1957,855,1677,1360947072,1,1638),(197,18,103,0,7503,'body',0,1958,856,1638,1360947072,1,1957),(197,18,103,0,7504,'body',0,1641,857,1957,1360947072,1,1958),(197,18,103,0,7505,'body',0,814,858,1958,1360947072,1,1641),(197,18,103,0,7506,'body',0,1959,859,1641,1360947072,1,814),(197,18,103,0,7507,'body',0,1960,860,814,1360947072,1,1959),(197,18,103,0,7508,'body',0,1782,861,1959,1360947072,1,1960),(197,18,103,0,7509,'body',0,1638,862,1960,1360947072,1,1782),(197,18,103,0,7510,'body',0,1850,863,1782,1360947072,1,1638),(197,18,103,0,7511,'body',0,1961,864,1638,1360947072,1,1850),(197,18,103,0,7512,'body',0,1962,865,1850,1360947072,1,1961),(197,18,103,0,7513,'body',0,1963,866,1961,1360947072,1,1962),(197,18,103,0,7514,'body',0,1964,867,1962,1360947072,1,1963),(197,18,103,0,7515,'body',0,1686,868,1963,1360947072,1,1964),(197,18,103,0,7516,'body',0,1959,869,1964,1360947072,1,1686),(197,18,103,0,7517,'body',0,814,870,1686,1360947072,1,1959),(197,18,103,0,7518,'body',0,1965,871,1959,1360947072,1,814),(197,18,103,0,7519,'body',0,1960,872,814,1360947072,1,1965),(197,18,103,0,7520,'body',0,1689,873,1965,1360947072,1,1960),(197,18,103,0,7521,'body',0,1662,874,1960,1360947072,1,1689),(197,18,103,0,7522,'body',0,814,875,1689,1360947072,1,1662),(197,18,103,0,7523,'body',0,1627,876,1662,1360947072,1,814),(197,18,103,0,7524,'body',0,1677,877,814,1360947072,1,1627),(197,18,103,0,7525,'body',0,1686,878,1627,1360947072,1,1677),(197,18,103,0,7526,'body',0,1687,879,1677,1360947072,1,1686),(197,18,103,0,7527,'body',0,1713,880,1686,1360947072,1,1687),(197,18,103,0,7528,'body',0,1966,881,1687,1360947072,1,1713),(197,18,103,0,7529,'body',0,1967,882,1713,1360947072,1,1966),(197,18,103,0,7530,'body',0,1782,883,1966,1360947072,1,1967),(197,18,103,0,7531,'body',0,1968,884,1967,1360947072,1,1782),(197,18,103,0,7532,'body',0,1662,885,1782,1360947072,1,1968),(197,18,103,0,7533,'body',0,1969,886,1968,1360947072,1,1662),(197,18,103,0,7534,'body',0,1630,887,1662,1360947072,1,1969),(197,18,103,0,7535,'body',0,1970,888,1969,1360947072,1,1630),(197,18,103,0,7536,'body',0,1866,889,1630,1360947072,1,1970),(197,18,103,0,7537,'body',0,1830,890,1970,1360947072,1,1866),(197,18,103,0,7538,'body',0,1811,891,1866,1360947072,1,1830),(197,18,103,0,7539,'body',0,1971,892,1830,1360947072,1,1811),(197,18,103,0,7540,'body',0,1812,893,1811,1360947072,1,1971),(197,18,103,0,7541,'body',0,1716,894,1971,1360947072,1,1812),(197,18,103,0,7542,'body',0,1717,895,1812,1360947072,1,1716),(197,18,103,0,7543,'body',0,1972,896,1716,1360947072,1,1717),(197,18,103,0,7544,'body',0,1651,897,1717,1360947072,1,1972),(197,18,103,0,7545,'body',0,1973,898,1972,1360947072,1,1651),(197,18,103,0,7546,'body',0,1635,899,1651,1360947072,1,1973),(197,18,103,0,7547,'body',0,1974,900,1973,1360947072,1,1635),(197,18,103,0,7548,'body',0,1975,901,1635,1360947072,1,1974),(197,18,103,0,7549,'body',0,1976,902,1974,1360947072,1,1975),(197,18,103,0,7550,'body',0,1977,903,1975,1360947072,1,1976),(197,18,103,0,7551,'body',0,1641,904,1976,1360947072,1,1977),(197,18,103,0,7552,'body',0,1978,905,1977,1360947072,1,1641),(197,18,103,0,7553,'body',0,1651,906,1641,1360947072,1,1978),(197,18,103,0,7554,'body',0,1979,907,1978,1360947072,1,1651),(197,18,103,0,7555,'body',0,1980,908,1651,1360947072,1,1979),(197,18,103,0,7556,'body',0,1647,909,1979,1360947072,1,1980),(197,18,103,0,7557,'body',0,1638,910,1980,1360947072,1,1647),(197,18,103,0,7558,'body',0,1850,911,1647,1360947072,1,1638),(197,18,103,0,7559,'body',0,1981,912,1638,1360947072,1,1850),(197,18,103,0,7560,'body',0,814,913,1850,1360947072,1,1981),(197,18,103,0,7561,'body',0,1959,914,1981,1360947072,1,814),(197,18,103,0,7562,'body',0,1982,915,814,1360947072,1,1959),(197,18,103,0,7563,'body',0,1678,916,1959,1360947072,1,1982),(197,18,103,0,7564,'body',0,1726,917,1982,1360947072,1,1678),(197,18,103,0,7565,'body',0,1745,918,1678,1360947072,1,1726),(197,18,103,0,7566,'body',0,1643,919,1726,1360947072,1,1745),(197,18,103,0,7567,'body',0,1696,920,1745,1360947072,1,1643),(197,18,103,0,7568,'body',0,1638,921,1643,1360947072,1,1696),(197,18,103,0,7569,'body',0,1957,922,1696,1360947072,1,1638),(197,18,103,0,7570,'body',0,1644,923,1638,1360947072,1,1957),(197,18,103,0,7571,'body',0,1983,924,1957,1360947072,1,1644),(197,18,103,0,7572,'body',0,1825,925,1644,1360947072,1,1983),(197,18,103,0,7573,'body',0,1638,926,1983,1360947072,1,1825),(197,18,103,0,7574,'body',0,1718,927,1825,1360947072,1,1638),(197,18,103,0,7575,'body',0,1984,928,1638,1360947072,1,1718),(197,18,103,0,7576,'body',0,1916,929,1718,1360947072,1,1984),(197,18,103,0,7577,'body',0,1643,930,1984,1360947072,1,1916),(197,18,103,0,7578,'body',0,1985,931,1916,1360947072,1,1643),(197,18,103,0,7579,'body',0,1953,932,1643,1360947072,1,1985),(197,18,103,0,7580,'body',0,814,933,1985,1360947072,1,1953),(197,18,103,0,7581,'body',0,1947,934,1953,1360947072,1,814),(197,18,103,0,7582,'body',0,1716,935,814,1360947072,1,1947),(197,18,103,0,7583,'body',0,1717,936,1947,1360947072,1,1716),(197,18,103,0,7584,'body',0,1742,937,1716,1360947072,1,1717),(197,18,103,0,7585,'body',0,814,938,1717,1360947072,1,1742),(197,18,103,0,7586,'body',0,1986,939,1742,1360947072,1,814),(197,18,103,0,7587,'body',0,1987,940,814,1360947072,1,1986),(197,18,103,0,7588,'body',0,1988,941,1986,1360947072,1,1987),(197,18,103,0,7589,'body',0,1651,942,1987,1360947072,1,1988),(197,18,103,0,7590,'body',0,1956,943,1988,1360947072,1,1651),(197,18,103,0,7591,'body',0,1875,944,1651,1360947072,1,1956),(197,18,103,0,7592,'body',0,1651,945,1956,1360947072,1,1875),(197,18,103,0,7593,'body',0,1989,946,1875,1360947072,1,1651),(197,18,103,0,7594,'body',0,1717,947,1651,1360947072,1,1989),(197,18,103,0,7595,'body',0,1850,948,1989,1360947072,1,1717),(197,18,103,0,7596,'body',0,1870,949,1717,1360947072,1,1850),(197,18,103,0,7597,'body',0,1872,950,1850,1360947072,1,1870),(197,18,103,0,7598,'body',0,1651,951,1870,1360947072,1,1872),(197,18,103,0,7599,'body',0,1990,952,1872,1360947072,1,1651),(197,18,103,0,7600,'body',0,1629,953,1651,1360947072,1,1990),(197,18,103,0,7601,'body',0,1991,954,1990,1360947072,1,1629),(197,18,103,0,7602,'body',0,1962,955,1629,1360947072,1,1991),(197,18,103,0,7603,'body',0,1963,956,1991,1360947072,1,1962),(197,18,103,0,7604,'body',0,1717,957,1962,1360947072,1,1963),(197,18,103,0,7605,'body',0,1742,958,1963,1360947072,1,1717),(197,18,103,0,7606,'body',0,1748,959,1717,1360947072,1,1742),(197,18,103,0,7607,'body',0,1645,960,1742,1360947072,1,1748),(197,18,103,0,7608,'body',0,814,961,1748,1360947072,1,1645),(197,18,103,0,7609,'body',0,1992,962,1645,1360947072,1,814),(197,18,103,0,7610,'body',0,816,963,814,1360947072,1,1992),(197,18,103,0,7611,'body',0,1730,964,1992,1360947072,1,816),(197,18,103,0,7612,'body',0,1647,965,816,1360947072,1,1730),(197,18,103,0,7613,'body',0,1631,966,1730,1360947072,1,1647),(197,18,103,0,7614,'body',0,1632,967,1647,1360947072,1,1631),(197,18,103,0,7615,'body',0,1993,968,1631,1360947072,1,1632),(197,18,103,0,7616,'body',0,1701,969,1632,1360947072,1,1993),(197,18,103,0,7617,'body',0,1679,970,1993,1360947072,1,1701),(197,18,103,0,7618,'body',0,1884,971,1701,1360947072,1,1679),(197,18,103,0,7619,'body',0,1729,972,1679,1360947072,1,1884),(197,18,103,0,7620,'body',0,1994,973,1884,1360947072,1,1729),(197,18,103,0,7621,'body',0,1643,974,1729,1360947072,1,1994),(197,18,103,0,7622,'body',0,1645,975,1994,1360947072,1,1643),(197,18,103,0,7623,'body',0,814,976,1643,1360947072,1,1645),(197,18,103,0,7624,'body',0,1995,977,1645,1360947072,1,814),(197,18,103,0,7625,'body',0,1645,978,814,1360947072,1,1995),(197,18,103,0,7626,'body',0,1730,979,1995,1360947072,1,1645),(197,18,103,0,7627,'body',0,1996,980,1645,1360947072,1,1730),(198,18,103,0,7628,'publication_date',1360947000,0,981,1730,1360947072,1,1996),(193,17,104,0,7629,'name',0,1709,0,0,1360948164,1,1682),(194,17,104,0,7630,'description',0,1679,1,1682,1360948164,1,1709),(194,17,104,0,7631,'description',0,814,2,1709,1360948164,1,1679),(194,17,104,0,7632,'description',0,1997,3,1679,1360948164,1,814),(194,17,104,0,7633,'description',0,1630,4,814,1360948164,1,1997),(194,17,104,0,7634,'description',0,1686,5,1997,1360948164,1,1630),(194,17,104,0,7635,'description',0,1687,6,1630,1360948164,1,1686),(194,17,104,0,7636,'description',0,1638,7,1686,1360948164,1,1687),(194,17,104,0,7637,'description',0,1957,8,1687,1360948164,1,1638),(194,17,104,0,7638,'description',0,1998,9,1638,1360948164,1,1957),(194,17,104,0,7639,'description',0,1999,10,1957,1360948164,1,1998),(194,17,104,0,7640,'description',0,1647,11,1998,1360948164,1,1999),(194,17,104,0,7641,'description',0,2000,12,1999,1360948164,1,1647),(194,17,104,0,7642,'description',0,1923,13,1647,1360948164,1,2000),(194,17,104,0,7643,'description',0,1713,14,2000,1360948164,1,1923),(194,17,104,0,7644,'description',0,2001,15,1923,1360948164,1,1713),(194,17,104,0,7645,'description',0,1687,16,1713,1360948164,1,2001),(194,17,104,0,7646,'description',0,1638,17,2001,1360948164,1,1687),(194,17,104,0,7647,'description',0,1900,18,1687,1360948164,1,1638),(194,17,104,0,7648,'description',0,1686,19,1638,1360948164,1,1900),(194,17,104,0,7649,'description',0,1830,20,1900,1360948164,1,1686),(194,17,104,0,7650,'description',0,1651,21,1686,1360948164,1,1830),(194,17,104,0,7651,'description',0,2002,22,1830,1360948164,1,1651),(194,17,104,0,7652,'description',0,1641,23,1651,1360948164,1,2002),(194,17,104,0,7653,'description',0,2003,24,2002,1360948164,1,1641),(194,17,104,0,7654,'description',0,1682,25,1641,1360948164,1,2003),(194,17,104,0,7655,'description',0,2004,26,2003,1360948164,1,1682),(194,17,104,0,7656,'description',0,2005,27,1682,1360948164,1,2004),(194,17,104,0,7657,'description',0,1641,28,2004,1360948164,1,2005),(194,17,104,0,7658,'description',0,1906,29,2005,1360948164,1,1641),(194,17,104,0,7659,'description',0,1638,30,1641,1360948164,1,1906),(194,17,104,0,7660,'description',0,1908,31,1906,1360948164,1,1638),(194,17,104,0,7661,'description',0,1650,32,1638,1360948164,1,1908),(194,17,104,0,7662,'description',0,1905,33,1908,1360948164,1,1650),(194,17,104,0,7663,'description',0,2006,34,1650,1360948164,1,1905),(194,17,104,0,7664,'description',0,2007,35,1905,1360948164,1,2006),(194,17,104,0,7665,'description',0,816,36,2006,1360948164,1,2007),(194,17,104,0,7666,'description',0,814,37,2007,1360948164,1,816),(194,17,104,0,7667,'description',0,2008,38,816,1360948164,1,814),(194,17,104,0,7668,'description',0,1686,39,814,1360948164,1,2008),(194,17,104,0,7669,'description',0,1687,40,2008,1360948164,1,1686),(194,17,104,0,7670,'description',0,1870,41,1686,1360948164,1,1687),(194,17,104,0,7671,'description',0,2009,42,1687,1360948164,1,1870),(194,17,104,0,7672,'description',0,1830,43,1870,1360948164,1,2009),(194,17,104,0,7673,'description',0,1651,44,2009,1360948164,1,1830),(194,17,104,0,7674,'description',0,1959,45,1830,1360948164,1,1651),(194,17,104,0,7675,'description',0,1812,46,1651,1360948164,1,1959),(194,17,104,0,7676,'description',0,1631,47,1959,1360948164,1,1812),(194,17,104,0,7677,'description',0,1632,48,1812,1360948164,1,1631),(194,17,104,0,7678,'description',0,1633,49,1631,1360948164,1,1632),(194,17,104,0,7679,'description',0,1717,50,1632,1360948164,1,1633),(194,17,104,0,7680,'description',0,1758,51,1633,1360948164,1,1717),(194,17,104,0,7681,'description',0,1719,52,1717,1360948164,1,1758),(194,17,104,0,7682,'description',0,814,53,1758,1360948164,1,1719),(194,17,104,0,7683,'description',0,1959,54,1719,1360948164,1,814),(194,17,104,0,7684,'description',0,1812,55,814,1360948164,1,1959),(194,17,104,0,7685,'description',0,1686,56,1959,1360948164,1,1812),(194,17,104,0,7686,'description',0,1687,57,1812,1360948164,1,1686),(194,17,104,0,7687,'description',0,1647,58,1686,1360948164,1,1687),(194,17,104,0,7688,'description',0,1822,59,1687,1360948164,1,1647),(194,17,104,0,7689,'description',0,814,60,1647,1360948164,1,1822),(194,17,104,0,7690,'description',0,1627,61,1822,1360948164,1,814),(194,17,104,0,7691,'description',0,1812,62,814,1360948164,1,1627),(194,17,104,0,7692,'description',0,1955,63,1627,1360948164,1,1812),(194,17,104,0,7693,'description',0,1709,64,1812,1360948164,1,1955),(194,17,104,0,7694,'description',0,1679,65,1955,1360948164,1,1709),(194,17,104,0,7695,'description',0,814,66,1709,1360948164,1,1679),(194,17,104,0,7696,'description',0,1997,67,1679,1360948164,1,814),(194,17,104,0,7697,'description',0,1630,68,814,1360948164,1,1997),(194,17,104,0,7698,'description',0,1717,69,1997,1360948164,1,1630),(194,17,104,0,7699,'description',0,1638,70,1630,1360948164,1,1717),(194,17,104,0,7700,'description',0,1957,71,1717,1360948164,1,1638),(194,17,104,0,7701,'description',0,1651,72,1638,1360948164,1,1957),(194,17,104,0,7702,'description',0,2010,73,1957,1360948164,1,1651),(194,17,104,0,7703,'description',0,1650,74,1651,1360948164,1,2010),(194,17,104,0,7704,'description',0,2011,75,2010,1360948164,1,1650),(194,17,104,0,7705,'description',0,2012,76,1650,1360948164,1,2011),(194,17,104,0,7706,'description',0,1755,77,2011,1360948164,1,2012),(194,17,104,0,7707,'description',0,1638,78,2012,1360948164,1,1755),(194,17,104,0,7708,'description',0,2013,79,1755,1360948164,1,1638),(194,17,104,0,7709,'description',0,1694,80,1638,1360948164,1,2013),(194,17,104,0,7710,'description',0,814,81,2013,1360948164,1,1694),(194,17,104,0,7711,'description',0,1887,82,1694,1360948164,1,814),(194,17,104,0,7712,'description',0,952,83,814,1360948164,1,1887),(194,17,104,0,7713,'description',0,2001,84,1887,1360948164,1,952),(194,17,104,0,7714,'description',0,2014,85,952,1360948164,1,2001),(194,17,104,0,7715,'description',0,1713,86,2001,1360948164,1,2014),(194,17,104,0,7716,'description',0,1641,87,2014,1360948164,1,1713),(194,17,104,0,7717,'description',0,1962,88,1713,1360948164,1,1641),(194,17,104,0,7718,'description',0,1963,89,1641,1360948164,1,1962),(194,17,104,0,7719,'description',0,2011,90,1962,1360948164,1,1963),(194,17,104,0,7720,'description',0,1713,91,1963,1360948164,1,2011),(194,17,104,0,7721,'description',0,1851,92,2011,1360948164,1,1713),(194,17,104,0,7722,'description',0,814,93,1713,1360948164,1,1851),(194,17,104,0,7723,'description',0,1817,94,1851,1360948164,1,814),(194,17,104,0,7724,'description',0,1890,95,814,1360948164,1,1817),(194,17,104,0,7725,'description',0,2015,96,1817,1360948164,1,1890),(194,17,104,0,7726,'description',0,2016,97,1890,1360948164,1,2015),(194,17,104,0,7727,'description',0,1818,98,2015,1360948164,1,2016),(194,17,104,0,7728,'description',0,1635,99,2016,1360948164,1,1818),(194,17,104,0,7729,'description',0,2017,100,1818,1360948164,1,1635),(194,17,104,0,7730,'description',0,1887,101,1635,1360948164,1,2017),(194,17,104,0,7731,'description',0,2018,102,2017,1360948164,1,1887),(194,17,104,0,7732,'description',0,1647,103,1887,1360948164,1,2018),(194,17,104,0,7733,'description',0,1641,104,2018,1360948164,1,1647),(194,17,104,0,7734,'description',0,1962,105,1647,1360948164,1,1641),(194,17,104,0,7735,'description',0,1963,106,1641,1360948164,1,1962),(194,17,104,0,7736,'description',0,1677,107,1962,1360948164,1,1963),(194,17,104,0,7737,'description',0,2011,108,1963,1360948164,1,1677),(194,17,104,0,7738,'description',0,1713,109,1677,1360948164,1,2011),(194,17,104,0,7739,'description',0,814,110,2011,1360948164,1,1713),(194,17,104,0,7740,'description',0,1817,111,1713,1360948164,1,814),(194,17,104,0,7741,'description',0,1818,112,814,1360948164,1,1817),(194,17,104,0,7742,'description',0,2019,113,1817,1360948164,1,1818),(194,17,104,0,7743,'description',0,816,114,1818,1360948164,1,2019),(194,17,104,0,7744,'description',0,1651,115,2019,1360948164,1,816),(194,17,104,0,7745,'description',0,2020,116,816,1360948164,1,1651),(194,17,104,0,7746,'description',0,1641,117,1651,1360948164,1,2020),(194,17,104,0,7747,'description',0,1905,118,2020,1360948164,1,1641),(194,17,104,0,7748,'description',0,1709,119,1641,1360948164,1,1905),(194,17,104,0,7749,'description',0,1679,120,1905,1360948164,1,1709),(194,17,104,0,7750,'description',0,1694,121,1709,1360948164,1,1679),(194,17,104,0,7751,'description',0,1630,122,1679,1360948164,1,1694),(194,17,104,0,7752,'description',0,814,123,1694,1360948164,1,1630),(194,17,104,0,7753,'description',0,1928,124,1630,1360948164,1,814),(194,17,104,0,7754,'description',0,2021,125,814,1360948164,1,1928),(194,17,104,0,7755,'description',0,1762,126,1928,1360948164,1,2021),(194,17,104,0,7756,'description',0,1651,127,2021,1360948164,1,1762),(194,17,104,0,7757,'description',0,2022,128,1762,1360948164,1,1651),(194,17,104,0,7758,'description',0,1627,129,1651,1360948164,1,2022),(194,17,104,0,7759,'description',0,2023,130,2022,1360948164,1,1627),(194,17,104,0,7760,'description',0,2000,131,1627,1360948164,1,2023),(194,17,104,0,7761,'description',0,1923,132,2023,1360948164,1,2000),(194,17,104,0,7762,'description',0,1870,133,2000,1360948164,1,1923),(194,17,104,0,7763,'description',0,1686,134,1923,1360948164,1,1870),(194,17,104,0,7764,'description',0,1713,135,1870,1360948164,1,1686),(194,17,104,0,7765,'description',0,1651,136,1686,1360948164,1,1713),(194,17,104,0,7766,'description',0,1687,137,1713,1360948164,1,1651),(194,17,104,0,7767,'description',0,1825,138,1651,1360948164,1,1687),(194,17,104,0,7768,'description',0,1790,139,1687,1360948164,1,1825),(194,17,104,0,7769,'description',0,1679,140,1825,1360948164,1,1790),(194,17,104,0,7770,'description',0,2024,141,1790,1360948164,1,1679),(194,17,104,0,7771,'description',0,2025,142,1679,1360948164,1,2024),(194,17,104,0,7772,'description',0,1923,143,2024,1360948164,1,2025),(194,17,104,0,7773,'description',0,1870,144,2025,1360948164,1,1923),(194,17,104,0,7774,'description',0,2000,145,1923,1360948164,1,1870),(194,17,104,0,7775,'description',0,1791,146,1870,1360948164,1,2000),(194,17,104,0,7776,'description',0,2026,147,2000,1360948164,1,1791),(194,17,104,0,7777,'description',0,1647,148,1791,1360948164,1,2026),(194,17,104,0,7778,'description',0,1643,149,2026,1360948164,1,1647),(194,17,104,0,7779,'description',0,1645,150,1647,1360948164,1,1643),(194,17,104,0,7780,'description',0,1790,151,1643,1360948164,1,1645),(194,17,104,0,7781,'description',0,1689,152,1645,1360948164,1,1790),(194,17,104,0,7782,'description',0,1662,153,1790,1360948164,1,1689),(194,17,104,0,7783,'description',0,1677,154,1689,1360948164,1,1662),(194,17,104,0,7784,'description',0,1825,155,1662,1360948164,1,1677),(194,17,104,0,7785,'description',0,1790,156,1677,1360948164,1,1825),(194,17,104,0,7786,'description',0,1679,157,1825,1360948164,1,1790),(194,17,104,0,7787,'description',0,1635,158,1790,1360948164,1,1679),(194,17,104,0,7788,'description',0,814,159,1679,1360948164,1,1635),(194,17,104,0,7789,'description',0,1967,160,1635,1360948164,1,814),(194,17,104,0,7790,'description',0,816,161,814,1360948164,1,1967),(194,17,104,0,7791,'description',0,814,162,1967,1360948164,1,816),(194,17,104,0,7792,'description',0,2027,163,816,1360948164,1,814),(194,17,104,0,7793,'description',0,1679,164,814,1360948164,1,2027),(194,17,104,0,7794,'description',0,2028,165,2027,1360948164,1,1679),(194,17,104,0,7795,'description',0,2029,166,1679,1360948164,1,2028),(194,17,104,0,7796,'description',0,1812,167,2028,1360948164,1,2029),(194,17,104,0,7797,'description',0,2030,168,2029,1360948164,1,1812),(194,17,104,0,7798,'description',0,1647,169,1812,1360948164,1,2030),(194,17,104,0,7799,'description',0,1638,170,2030,1360948164,1,1647),(194,17,104,0,7800,'description',0,1850,171,1647,1360948164,1,1638),(194,17,104,0,7801,'description',0,1662,172,1638,1360948164,1,1850),(194,17,104,0,7802,'description',0,2031,173,1850,1360948164,1,1662),(194,17,104,0,7803,'description',0,1716,174,1662,1360948164,1,2031),(194,17,104,0,7804,'description',0,2032,175,2031,1360948164,1,1716),(194,17,104,0,7805,'description',0,2033,176,1716,1360948164,1,2032),(194,17,104,0,7806,'description',0,2034,177,2032,1360948164,1,2033),(194,17,104,0,7807,'description',0,1790,178,2033,1360948164,1,2034),(194,17,104,0,7808,'description',0,0,179,2034,1360948164,1,1790),(196,18,105,0,7809,'title',0,1630,0,0,1360955738,1,1629),(196,18,105,0,7810,'title',0,1631,1,1629,1360955738,1,1630),(196,18,105,0,7811,'title',0,1632,2,1630,1360955738,1,1631),(196,18,105,0,7812,'title',0,1633,3,1631,1360955738,1,1632),(196,18,105,0,7813,'title',0,1730,4,1632,1360955738,1,1633),(196,18,105,0,7814,'title',0,1699,5,1633,1360955738,1,1730),(197,18,105,0,7815,'body',0,1700,6,1730,1360955738,1,1699),(197,18,105,0,7816,'body',0,2035,7,1699,1360955738,1,1700),(197,18,105,0,7817,'body',0,1635,8,1700,1360955738,1,2035),(197,18,105,0,7818,'body',0,1647,9,2035,1360955738,1,1635),(197,18,105,0,7819,'body',0,1884,10,1635,1360955738,1,1647),(197,18,105,0,7820,'body',0,1915,11,1647,1360955738,1,1884),(197,18,105,0,7821,'body',0,1651,12,1884,1360955738,1,1915),(197,18,105,0,7822,'body',0,1683,13,1915,1360955738,1,1651),(197,18,105,0,7823,'body',0,1840,14,1651,1360955738,1,1683),(197,18,105,0,7824,'body',0,1701,15,1683,1360955738,1,1840),(197,18,105,0,7825,'body',0,1679,16,1840,1360955738,1,1701),(197,18,105,0,7826,'body',0,2036,17,1701,1360955738,1,1679),(197,18,105,0,7827,'body',0,1868,18,1679,1360955738,1,2036),(197,18,105,0,7828,'body',0,1643,19,2036,1360955738,1,1868),(197,18,105,0,7829,'body',0,1645,20,1868,1360955738,1,1643),(197,18,105,0,7830,'body',0,814,21,1643,1360955738,1,1645),(197,18,105,0,7831,'body',0,1724,22,1645,1360955738,1,814),(197,18,105,0,7832,'body',0,2037,23,814,1360955738,1,1724),(197,18,105,0,7833,'body',0,1635,24,1724,1360955738,1,2037),(197,18,105,0,7834,'body',0,1730,25,2037,1360955738,1,1635),(197,18,105,0,7835,'body',0,1716,26,1635,1360955738,1,1730),(197,18,105,0,7836,'body',0,1717,27,1730,1360955738,1,1716),(197,18,105,0,7837,'body',0,1718,28,1716,1360955738,1,1717),(197,18,105,0,7838,'body',0,2038,29,1717,1360955738,1,1718),(197,18,105,0,7839,'body',0,2039,30,1718,1360955738,1,2038),(197,18,105,0,7840,'body',0,1651,31,2038,1360955738,1,2039),(197,18,105,0,7841,'body',0,1990,32,2039,1360955738,1,1651),(197,18,105,0,7842,'body',0,2040,33,1651,1360955738,1,1990),(197,18,105,0,7843,'body',0,1812,34,1990,1360955738,1,2040),(197,18,105,0,7844,'body',0,1730,35,2040,1360955738,1,1812),(197,18,105,0,7845,'body',0,1647,36,1812,1360955738,1,1730),(197,18,105,0,7846,'body',0,2041,37,1730,1360955738,1,1647),(197,18,105,0,7847,'body',0,1667,38,1647,1360955738,1,2041),(197,18,105,0,7848,'body',0,2042,39,2041,1360955738,1,1667),(197,18,105,0,7849,'body',0,1635,40,1667,1360955738,1,2042),(197,18,105,0,7850,'body',0,1643,41,2042,1360955738,1,1635),(197,18,105,0,7851,'body',0,1645,42,1635,1360955738,1,1643),(197,18,105,0,7852,'body',0,814,43,1643,1360955738,1,1645),(197,18,105,0,7853,'body',0,2043,44,1645,1360955738,1,814),(197,18,105,0,7854,'body',0,2044,45,814,1360955738,1,2043),(197,18,105,0,7855,'body',0,1654,46,2043,1360955738,1,2044),(197,18,105,0,7856,'body',0,1631,47,2044,1360955738,1,1654),(197,18,105,0,7857,'body',0,1632,48,1654,1360955738,1,1631),(197,18,105,0,7858,'body',0,1761,49,1631,1360955738,1,1632),(197,18,105,0,7859,'body',0,1717,50,1632,1360955738,1,1761),(197,18,105,0,7860,'body',0,1758,51,1761,1360955738,1,1717),(197,18,105,0,7861,'body',0,2045,52,1717,1360955738,1,1758),(197,18,105,0,7862,'body',0,2046,53,1758,1360955738,1,2045),(197,18,105,0,7863,'body',0,1641,54,2045,1360955738,1,2046),(197,18,105,0,7864,'body',0,814,55,2046,1360955738,1,1641),(197,18,105,0,7865,'body',0,1912,56,1641,1360955738,1,814),(197,18,105,0,7866,'body',0,1930,57,814,1360955738,1,1912),(197,18,105,0,7867,'body',0,1647,58,1912,1360955738,1,1930),(197,18,105,0,7868,'body',0,1884,59,1930,1360955738,1,1647),(197,18,105,0,7869,'body',0,1711,60,1647,1360955738,1,1884),(197,18,105,0,7870,'body',0,1852,61,1884,1360955738,1,1711),(197,18,105,0,7871,'body',0,2047,62,1711,1360955738,1,1852),(197,18,105,0,7872,'body',0,2048,63,1852,1360955738,1,2047),(197,18,105,0,7873,'body',0,1922,64,2047,1360955738,1,2048),(197,18,105,0,7874,'body',0,2049,65,2048,1360955738,1,1922),(197,18,105,0,7875,'body',0,2050,66,1922,1360955738,1,2049),(197,18,105,0,7876,'body',0,1716,67,2049,1360955738,1,2050),(197,18,105,0,7877,'body',0,1717,68,2050,1360955738,1,1716),(197,18,105,0,7878,'body',0,1718,69,1716,1360955738,1,1717),(197,18,105,0,7879,'body',0,2051,70,1717,1360955738,1,1718),(197,18,105,0,7880,'body',0,1630,71,1718,1360955738,1,2051),(197,18,105,0,7881,'body',0,2052,72,2051,1360955738,1,1630),(197,18,105,0,7882,'body',0,2053,73,1630,1360955738,1,2052),(197,18,105,0,7883,'body',0,2054,74,2052,1360955738,1,2053),(197,18,105,0,7884,'body',0,1875,75,2053,1360955738,1,2054),(197,18,105,0,7885,'body',0,1641,76,2054,1360955738,1,1875),(197,18,105,0,7886,'body',0,1651,77,1875,1360955738,1,1641),(197,18,105,0,7887,'body',0,2055,78,1641,1360955738,1,1651),(197,18,105,0,7888,'body',0,2056,79,1651,1360955738,1,2055),(197,18,105,0,7889,'body',0,2057,80,2055,1360955738,1,2056),(197,18,105,0,7890,'body',0,2058,81,2056,1360955738,1,2057),(197,18,105,0,7891,'body',0,1717,82,2057,1360955738,1,2058),(197,18,105,0,7892,'body',0,1710,83,2058,1360955738,1,1717),(197,18,105,0,7893,'body',0,1721,84,1717,1360955738,1,1710),(197,18,105,0,7894,'body',0,2059,85,1710,1360955738,1,1721),(197,18,105,0,7895,'body',0,1630,86,1721,1360955738,1,2059),(197,18,105,0,7896,'body',0,814,87,2059,1360955738,1,1630),(197,18,105,0,7897,'body',0,1922,88,1630,1360955738,1,814),(197,18,105,0,7898,'body',0,2049,89,814,1360955738,1,1922),(197,18,105,0,7899,'body',0,2050,90,1922,1360955738,1,2049),(197,18,105,0,7900,'body',0,2060,91,2049,1360955738,1,2050),(197,18,105,0,7901,'body',0,1790,92,2050,1360955738,1,2060),(197,18,105,0,7902,'body',0,2061,93,2060,1360955738,1,1790),(197,18,105,0,7903,'body',0,1651,94,1790,1360955738,1,2061),(197,18,105,0,7904,'body',0,2062,95,2061,1360955738,1,1651),(197,18,105,0,7905,'body',0,1731,96,1651,1360955738,1,2062),(197,18,105,0,7906,'body',0,816,97,2062,1360955738,1,1731),(197,18,105,0,7907,'body',0,1915,98,1731,1360955738,1,816),(197,18,105,0,7908,'body',0,2063,99,816,1360955738,1,1915),(197,18,105,0,7909,'body',0,2064,100,1915,1360955738,1,2063),(197,18,105,0,7910,'body',0,1635,101,2063,1360955738,1,2064),(197,18,105,0,7911,'body',0,1651,102,2064,1360955738,1,1635),(197,18,105,0,7912,'body',0,877,103,1635,1360955738,1,1651),(197,18,105,0,7913,'body',0,2065,104,1651,1360955738,1,877),(197,18,105,0,7914,'body',0,1947,105,877,1360955738,1,2065),(197,18,105,0,7915,'body',0,2066,106,2065,1360955738,1,1947),(197,18,105,0,7916,'body',0,1651,107,1947,1360955738,1,2066),(197,18,105,0,7917,'body',0,1980,108,2066,1360955738,1,1651),(197,18,105,0,7918,'body',0,1713,109,1651,1360955738,1,1980),(197,18,105,0,7919,'body',0,2067,110,1980,1360955738,1,1713),(197,18,105,0,7920,'body',0,1790,111,1713,1360955738,1,2067),(197,18,105,0,7921,'body',0,1679,112,2067,1360955738,1,1790),(197,18,105,0,7922,'body',0,2068,113,1790,1360955738,1,1679),(197,18,105,0,7923,'body',0,1641,114,1679,1360955738,1,2068),(197,18,105,0,7924,'body',0,1730,115,2068,1360955738,1,1641),(197,18,105,0,7925,'body',0,1782,116,1641,1360955738,1,1730),(197,18,105,0,7926,'body',0,2069,117,1730,1360955738,1,1782),(197,18,105,0,7927,'body',0,814,118,1782,1360955738,1,2069),(197,18,105,0,7928,'body',0,1980,119,2069,1360955738,1,814),(197,18,105,0,7929,'body',0,1641,120,814,1360955738,1,1980),(197,18,105,0,7930,'body',0,2070,121,1980,1360955738,1,1641),(197,18,105,0,7931,'body',0,2071,122,1641,1360955738,1,2070),(197,18,105,0,7932,'body',0,1812,123,2070,1360955738,1,2071),(197,18,105,0,7933,'body',0,1651,124,2071,1360955738,1,1812),(197,18,105,0,7934,'body',0,2050,125,1812,1360955738,1,1651),(197,18,105,0,7935,'body',0,1782,126,1651,1360955738,1,2050),(197,18,105,0,7936,'body',0,1713,127,2050,1360955738,1,1782),(197,18,105,0,7937,'body',0,1668,128,1782,1360955738,1,1713),(197,18,105,0,7938,'body',0,2072,129,1713,1360955738,1,1668),(197,18,105,0,7939,'body',0,1651,130,1668,1360955738,1,2072),(197,18,105,0,7940,'body',0,2073,131,2072,1360955738,1,1651),(197,18,105,0,7941,'body',0,2074,132,1651,1360955738,1,2073),(197,18,105,0,7942,'body',0,1729,133,2073,1360955738,1,2074),(197,18,105,0,7943,'body',0,814,134,2074,1360955738,1,1729),(197,18,105,0,7944,'body',0,2075,135,1729,1360955738,1,814),(197,18,105,0,7945,'body',0,2020,136,814,1360955738,1,2075),(197,18,105,0,7946,'body',0,1686,137,2075,1360955738,1,2020),(197,18,105,0,7947,'body',0,2073,138,2020,1360955738,1,1686),(197,18,105,0,7948,'body',0,2076,139,1686,1360955738,1,2073),(197,18,105,0,7949,'body',0,1694,140,2073,1360955738,1,2076),(197,18,105,0,7950,'body',0,2077,141,2076,1360955738,1,1694),(197,18,105,0,7951,'body',0,2078,142,1694,1360955738,1,2077),(197,18,105,0,7952,'body',0,1726,143,2077,1360955738,1,2078),(197,18,105,0,7953,'body',0,2079,144,2078,1360955738,1,1726),(197,18,105,0,7954,'body',0,1641,145,1726,1360955738,1,2079),(197,18,105,0,7955,'body',0,2040,146,2079,1360955738,1,1641),(197,18,105,0,7956,'body',0,814,147,1641,1360955738,1,2040),(197,18,105,0,7957,'body',0,1980,148,2040,1360955738,1,814),(197,18,105,0,7958,'body',0,1654,149,814,1360955738,1,1980),(197,18,105,0,7959,'body',0,1651,150,1980,1360955738,1,1654),(197,18,105,0,7960,'body',0,1704,151,1654,1360955738,1,1651),(197,18,105,0,7961,'body',0,1645,152,1651,1360955738,1,1704),(197,18,105,0,7962,'body',0,1922,153,1704,1360955738,1,1645),(197,18,105,0,7963,'body',0,2080,154,1645,1360955738,1,1922),(197,18,105,0,7964,'body',0,814,155,1922,1360955738,1,2080),(197,18,105,0,7965,'body',0,1922,156,2080,1360955738,1,814),(197,18,105,0,7966,'body',0,2080,157,814,1360955738,1,1922),(197,18,105,0,7967,'body',0,2081,158,1922,1360955738,1,2080),(197,18,105,0,7968,'body',0,2077,159,2080,1360955738,1,2081),(197,18,105,0,7969,'body',0,1655,160,2081,1360955738,1,2077),(197,18,105,0,7970,'body',0,814,161,2077,1360955738,1,1655),(197,18,105,0,7971,'body',0,2075,162,1655,1360955738,1,814),(197,18,105,0,7972,'body',0,2082,163,814,1360955738,1,2075),(197,18,105,0,7973,'body',0,1921,164,2075,1360955738,1,2082),(197,18,105,0,7974,'body',0,1635,165,2082,1360955738,1,1921),(197,18,105,0,7975,'body',0,2083,166,1921,1360955738,1,1635),(197,18,105,0,7976,'body',0,1889,167,1635,1360955738,1,2083),(197,18,105,0,7977,'body',0,2008,168,2083,1360955738,1,1889),(197,18,105,0,7978,'body',0,2084,169,1889,1360955738,1,2008),(197,18,105,0,7979,'body',0,2085,170,2008,1360955738,1,2084),(197,18,105,0,7980,'body',0,2086,171,2084,1360955738,1,2085),(197,18,105,0,7981,'body',0,2077,172,2085,1360955738,1,2086),(197,18,105,0,7982,'body',0,814,173,2086,1360955738,1,2077),(197,18,105,0,7983,'body',0,2050,174,2077,1360955738,1,814),(197,18,105,0,7984,'body',0,2047,175,814,1360955738,1,2050),(197,18,105,0,7985,'body',0,1896,176,2050,1360955738,1,2047),(197,18,105,0,7986,'body',0,814,177,2047,1360955738,1,1896),(197,18,105,0,7987,'body',0,1921,178,1896,1360955738,1,814),(197,18,105,0,7988,'body',0,1790,179,814,1360955738,1,1921),(197,18,105,0,7989,'body',0,1679,180,1921,1360955738,1,1790),(197,18,105,0,7990,'body',0,2087,181,1790,1360955738,1,1679),(197,18,105,0,7991,'body',0,1782,182,1679,1360955738,1,2087),(197,18,105,0,7992,'body',0,1713,183,2087,1360955738,1,1782),(197,18,105,0,7993,'body',0,1766,184,1782,1360955738,1,1713),(197,18,105,0,7994,'body',0,1729,185,1713,1360955738,1,1766),(197,18,105,0,7995,'body',0,814,186,1766,1360955738,1,1729),(197,18,105,0,7996,'body',0,2049,187,1729,1360955738,1,814),(197,18,105,0,7997,'body',0,1782,188,814,1360955738,1,2049),(197,18,105,0,7998,'body',0,1713,189,2049,1360955738,1,1782),(197,18,105,0,7999,'body',0,1651,190,1782,1360955738,1,1713),(197,18,105,0,8000,'body',0,2088,191,1713,1360955738,1,1651),(197,18,105,0,8001,'body',0,2089,192,1651,1360955738,1,2088),(197,18,105,0,8002,'body',0,1677,193,2088,1360955738,1,2089),(197,18,105,0,8003,'body',0,1679,194,2089,1360955738,1,1677),(197,18,105,0,8004,'body',0,1743,195,1677,1360955738,1,1679),(197,18,105,0,8005,'body',0,1641,196,1679,1360955738,1,1743),(197,18,105,0,8006,'body',0,2090,197,1743,1360955738,1,1641),(197,18,105,0,8007,'body',0,814,198,1641,1360955738,1,2090),(197,18,105,0,8008,'body',0,2091,199,2090,1360955738,1,814),(197,18,105,0,8009,'body',0,1686,200,814,1360955738,1,2091),(197,18,105,0,8010,'body',0,1748,201,2091,1360955738,1,1686),(197,18,105,0,8011,'body',0,2092,202,1686,1360955738,1,1748),(197,18,105,0,8012,'body',0,1939,203,1748,1360955738,1,2092),(197,18,105,0,8013,'body',0,2093,204,2092,1360955738,1,1939),(197,18,105,0,8014,'body',0,1665,205,1939,1360955738,1,2093),(197,18,105,0,8015,'body',0,1635,206,2093,1360955738,1,1665),(197,18,105,0,8016,'body',0,2094,207,1665,1360955738,1,1635),(197,18,105,0,8017,'body',0,1790,208,1635,1360955738,1,2094),(197,18,105,0,8018,'body',0,1679,209,2094,1360955738,1,1790),(197,18,105,0,8019,'body',0,1910,210,1790,1360955738,1,1679),(197,18,105,0,8020,'body',0,2095,211,1679,1360955738,1,1910),(197,18,105,0,8021,'body',0,1716,212,1910,1360955738,1,2095),(197,18,105,0,8022,'body',0,1717,213,2095,1360955738,1,1716),(197,18,105,0,8023,'body',0,2096,214,1716,1360955738,1,1717),(197,18,105,0,8024,'body',0,1852,215,1717,1360955738,1,2096),(197,18,105,0,8025,'body',0,2075,216,2096,1360955738,1,1852),(197,18,105,0,8026,'body',0,1641,217,1852,1360955738,1,2075),(197,18,105,0,8027,'body',0,2097,218,2075,1360955738,1,1641),(197,18,105,0,8028,'body',0,1643,219,1641,1360955738,1,2097),(197,18,105,0,8029,'body',0,2083,220,2097,1360955738,1,1643),(197,18,105,0,8030,'body',0,2098,221,1643,1360955738,1,2083),(197,18,105,0,8031,'body',0,1641,222,2083,1360955738,1,2098),(197,18,105,0,8032,'body',0,1651,223,2098,1360955738,1,1641),(197,18,105,0,8033,'body',0,2099,224,1641,1360955738,1,1651),(197,18,105,0,8034,'body',0,816,225,1651,1360955738,1,2099),(197,18,105,0,8035,'body',0,2100,226,2099,1360955738,1,816),(197,18,105,0,8036,'body',0,1717,227,816,1360955738,1,2100),(197,18,105,0,8037,'body',0,2101,228,2100,1360955738,1,1717),(197,18,105,0,8038,'body',0,2003,229,1717,1360955738,1,2101),(197,18,105,0,8039,'body',0,1651,230,2101,1360955738,1,2003),(197,18,105,0,8040,'body',0,2073,231,2003,1360955738,1,1651),(197,18,105,0,8041,'body',0,1812,232,1651,1360955738,1,2073),(197,18,105,0,8042,'body',0,1651,233,2073,1360955738,1,1812),(197,18,105,0,8043,'body',0,2050,234,1812,1360955738,1,1651),(197,18,105,0,8044,'body',0,2102,235,1651,1360955738,1,2050),(197,18,105,0,8045,'body',0,1677,236,2050,1360955738,1,2102),(197,18,105,0,8046,'body',0,2103,237,2102,1360955738,1,1677),(197,18,105,0,8047,'body',0,2070,238,1677,1360955738,1,2103),(197,18,105,0,8048,'body',0,2104,239,2103,1360955738,1,2070),(197,18,105,0,8049,'body',0,2105,240,2070,1360955738,1,2104),(197,18,105,0,8050,'body',0,814,241,2104,1360955738,1,2105),(197,18,105,0,8051,'body',0,1921,242,2105,1360955738,1,814),(197,18,105,0,8052,'body',0,1717,243,814,1360955738,1,1921),(197,18,105,0,8053,'body',0,2096,244,1921,1360955738,1,1717),(197,18,105,0,8054,'body',0,1641,245,1717,1360955738,1,2096),(197,18,105,0,8055,'body',0,1900,246,2096,1360955738,1,1641),(197,18,105,0,8056,'body',0,2058,247,1641,1360955738,1,1900),(197,18,105,0,8057,'body',0,2003,248,1900,1360955738,1,2058),(197,18,105,0,8058,'body',0,1651,249,2058,1360955738,1,2003),(197,18,105,0,8059,'body',0,2088,250,2003,1360955738,1,1651),(197,18,105,0,8060,'body',0,1635,251,1651,1360955738,1,2088),(197,18,105,0,8061,'body',0,1730,252,2088,1360955738,1,1635),(197,18,105,0,8062,'body',0,814,253,1635,1360955738,1,1730),(197,18,105,0,8063,'body',0,1770,254,1730,1360955738,1,814),(197,18,105,0,8064,'body',0,2106,255,814,1360955738,1,1770),(197,18,105,0,8065,'body',0,2089,256,1770,1360955738,1,2106),(197,18,105,0,8066,'body',0,1713,257,2106,1360955738,1,2089),(197,18,105,0,8067,'body',0,1743,258,2089,1360955738,1,1713),(197,18,105,0,8068,'body',0,1677,259,1713,1360955738,1,1743),(197,18,105,0,8069,'body',0,2107,260,1743,1360955738,1,1677),(197,18,105,0,8070,'body',0,814,261,1677,1360955738,1,2107),(197,18,105,0,8071,'body',0,2108,262,2107,1360955738,1,814),(197,18,105,0,8072,'body',0,816,263,814,1360955738,1,2108),(197,18,105,0,8073,'body',0,1852,264,2108,1360955738,1,816),(197,18,105,0,8074,'body',0,2099,265,816,1360955738,1,1852),(197,18,105,0,8075,'body',0,1851,266,1852,1360955738,1,2099),(197,18,105,0,8076,'body',0,1631,267,2099,1360955738,1,1851),(197,18,105,0,8077,'body',0,1632,268,1851,1360955738,1,1631),(197,18,105,0,8078,'body',0,1790,269,1631,1360955738,1,1632),(197,18,105,0,8079,'body',0,1679,270,1632,1360955738,1,1790),(197,18,105,0,8080,'body',0,1885,271,1790,1360955738,1,1679),(197,18,105,0,8081,'body',0,2109,272,1679,1360955738,1,1885),(197,18,105,0,8082,'body',0,1789,273,1885,1360955738,1,2109),(197,18,105,0,8083,'body',0,816,274,2109,1360955738,1,1789),(197,18,105,0,8084,'body',0,1723,275,1789,1360955738,1,816),(197,18,105,0,8085,'body',0,1914,276,816,1360955738,1,1723),(197,18,105,0,8086,'body',0,1717,277,1723,1360955738,1,1914),(197,18,105,0,8087,'body',0,1850,278,1914,1360955738,1,1717),(197,18,105,0,8088,'body',0,1662,279,1717,1360955738,1,1850),(197,18,105,0,8089,'body',0,1851,280,1850,1360955738,1,1662),(197,18,105,0,8090,'body',0,1651,281,1662,1360955738,1,1851),(197,18,105,0,8091,'body',0,2050,282,1851,1360955738,1,1651),(197,18,105,0,8092,'body',0,2110,283,1651,1360955738,1,2050),(197,18,105,0,8093,'body',0,1729,284,2050,1360955738,1,2110),(197,18,105,0,8094,'body',0,1631,285,2110,1360955738,1,1729),(197,18,105,0,8095,'body',0,1632,286,1729,1360955738,1,1631),(197,18,105,0,8096,'body',0,814,287,1631,1360955738,1,1632),(197,18,105,0,8097,'body',0,951,288,1632,1360955738,1,814),(197,18,105,0,8098,'body',0,2111,289,814,1360955738,1,951),(197,18,105,0,8099,'body',0,1677,290,951,1360955738,1,2111),(197,18,105,0,8100,'body',0,2112,291,2111,1360955738,1,1677),(197,18,105,0,8101,'body',0,2054,292,1677,1360955738,1,2112),(197,18,105,0,8102,'body',0,1869,293,2112,1360955738,1,2054),(197,18,105,0,8103,'body',0,1726,294,2054,1360955738,1,1869),(197,18,105,0,8104,'body',0,2113,295,1869,1360955738,1,1726),(197,18,105,0,8105,'body',0,1645,296,1726,1360955738,1,2113),(197,18,105,0,8106,'body',0,2114,297,2113,1360955738,1,1645),(197,18,105,0,8107,'body',0,1647,298,1645,1360955738,1,2114),(197,18,105,0,8108,'body',0,1799,299,2114,1360955738,1,1647),(197,18,105,0,8109,'body',0,1667,300,1647,1360955738,1,1799),(197,18,105,0,8110,'body',0,2115,301,1799,1360955738,1,1667),(197,18,105,0,8111,'body',0,2116,302,1667,1360955738,1,2115),(197,18,105,0,8112,'body',0,2117,303,2115,1360955738,1,2116),(197,18,105,0,8113,'body',0,1789,304,2116,1360955738,1,2117),(197,18,105,0,8114,'body',0,814,305,2117,1360955738,1,1789),(197,18,105,0,8115,'body',0,2014,306,1789,1360955738,1,814),(197,18,105,0,8116,'body',0,1645,307,814,1360955738,1,2014),(197,18,105,0,8117,'body',0,2118,308,2014,1360955738,1,1645),(197,18,105,0,8118,'body',0,814,309,1645,1360955738,1,2118),(197,18,105,0,8119,'body',0,1921,310,2118,1360955738,1,814),(197,18,105,0,8120,'body',0,816,311,814,1360955738,1,1921),(197,18,105,0,8121,'body',0,814,312,1921,1360955738,1,816),(197,18,105,0,8122,'body',0,2091,313,816,1360955738,1,814),(197,18,105,0,8123,'body',0,2050,314,814,1360955738,1,2091),(197,18,105,0,8124,'body',0,1713,315,2091,1360955738,1,2050),(197,18,105,0,8125,'body',0,2119,316,2050,1360955738,1,1713),(197,18,105,0,8126,'body',0,1654,317,1713,1360955738,1,2119),(197,18,105,0,8127,'body',0,814,318,2119,1360955738,1,1654),(197,18,105,0,8128,'body',0,2090,319,1654,1360955738,1,814),(197,18,105,0,8129,'body',0,1645,320,814,1360955738,1,2090),(197,18,105,0,8130,'body',0,814,321,2090,1360955738,1,1645),(197,18,105,0,8131,'body',0,2091,322,1645,1360955738,1,814),(197,18,105,0,8132,'body',0,2049,323,814,1360955738,1,2091),(197,18,105,0,8133,'body',0,1790,324,2091,1360955738,1,2049),(197,18,105,0,8134,'body',0,1679,325,2049,1360955738,1,1790),(197,18,105,0,8135,'body',0,2120,326,1790,1360955738,1,1679),(197,18,105,0,8136,'body',0,2121,327,1679,1360955738,1,2120),(197,18,105,0,8137,'body',0,1641,328,2120,1360955738,1,2121),(197,18,105,0,8138,'body',0,1664,329,2121,1360955738,1,1641),(197,18,105,0,8139,'body',0,814,330,1641,1360955738,1,1664),(197,18,105,0,8140,'body',0,2122,331,1664,1360955738,1,814),(197,18,105,0,8141,'body',0,1645,332,814,1360955738,1,2122),(197,18,105,0,8142,'body',0,814,333,2122,1360955738,1,1645),(197,18,105,0,8143,'body',0,2091,334,1645,1360955738,1,814),(197,18,105,0,8144,'body',0,1875,335,814,1360955738,1,2091),(197,18,105,0,8145,'body',0,1885,336,2091,1360955738,1,1875),(197,18,105,0,8146,'body',0,1900,337,1875,1360955738,1,1885),(197,18,105,0,8147,'body',0,2123,338,1885,1360955738,1,1900),(197,18,105,0,8148,'body',0,2124,339,1900,1360955738,1,2123),(197,18,105,0,8149,'body',0,1875,340,2123,1360955738,1,2124),(197,18,105,0,8150,'body',0,2125,341,2124,1360955738,1,1875),(197,18,105,0,8151,'body',0,2126,342,1875,1360955738,1,2125),(197,18,105,0,8152,'body',0,1759,343,2125,1360955738,1,2126),(197,18,105,0,8153,'body',0,1645,344,2126,1360955738,1,1759),(197,18,105,0,8154,'body',0,2127,345,1759,1360955738,1,1645),(197,18,105,0,8155,'body',0,1730,346,1645,1360955738,1,2127),(197,18,105,0,8156,'body',0,2128,347,2127,1360955738,1,1730),(197,18,105,0,8157,'body',0,2129,348,1730,1360955738,1,2128),(197,18,105,0,8158,'body',0,2130,349,2128,1360955738,1,2129),(197,18,105,0,8159,'body',0,1812,350,2129,1360955738,1,2130),(197,18,105,0,8160,'body',0,2131,351,2130,1360955738,1,1812),(197,18,105,0,8161,'body',0,1645,352,1812,1360955738,1,2131),(197,18,105,0,8162,'body',0,2054,353,2131,1360955738,1,1645),(197,18,105,0,8163,'body',0,1729,354,1645,1360955738,1,2054),(197,18,105,0,8164,'body',0,2132,355,2054,1360955738,1,1729),(197,18,105,0,8165,'body',0,1723,356,1729,1360955738,1,2132),(197,18,105,0,8166,'body',0,1645,357,2132,1360955738,1,1723),(197,18,105,0,8167,'body',0,814,358,1723,1360955738,1,1645),(197,18,105,0,8168,'body',0,2075,359,1645,1360955738,1,814),(197,18,105,0,8169,'body',0,1725,360,814,1360955738,1,2075),(197,18,105,0,8170,'body',0,1712,361,2075,1360955738,1,1725),(197,18,105,0,8171,'body',0,2133,362,1725,1360955738,1,1712),(197,18,105,0,8172,'body',0,1782,363,1712,1360955738,1,2133),(197,18,105,0,8173,'body',0,1726,364,2133,1360955738,1,1782),(197,18,105,0,8174,'body',0,2134,365,1782,1360955738,1,1726),(197,18,105,0,8175,'body',0,1677,366,1726,1360955738,1,2134),(197,18,105,0,8176,'body',0,2135,367,2134,1360955738,1,1677),(197,18,105,0,8177,'body',0,1627,368,1677,1360955738,1,2135),(197,18,105,0,8178,'body',0,1746,369,2135,1360955738,1,1627),(197,18,105,0,8179,'body',0,2136,370,1627,1360955738,1,1746),(197,18,105,0,8180,'body',0,2137,371,1746,1360955738,1,2136),(197,18,105,0,8181,'body',0,1645,372,2136,1360955738,1,2137),(197,18,105,0,8182,'body',0,814,373,2137,1360955738,1,1645),(197,18,105,0,8183,'body',0,2138,374,1645,1360955738,1,814),(197,18,105,0,8184,'body',0,1686,375,814,1360955738,1,2138),(197,18,105,0,8185,'body',0,1713,376,2138,1360955738,1,1686),(197,18,105,0,8186,'body',0,2139,377,1686,1360955738,1,1713),(197,18,105,0,8187,'body',0,2140,378,1713,1360955738,1,2139),(197,18,105,0,8188,'body',0,1641,379,2139,1360955738,1,2140),(197,18,105,0,8189,'body',0,1830,380,2140,1360955738,1,1641),(197,18,105,0,8190,'body',0,2141,381,1641,1360955738,1,1830),(197,18,105,0,8191,'body',0,2142,382,1830,1360955738,1,2141),(197,18,105,0,8192,'body',0,1922,383,2141,1360955738,1,2142),(197,18,105,0,8193,'body',0,2049,384,2142,1360955738,1,1922),(197,18,105,0,8194,'body',0,2050,385,1922,1360955738,1,2049),(197,18,105,0,8195,'body',0,1686,386,2049,1360955738,1,2050),(197,18,105,0,8196,'body',0,2143,387,2050,1360955738,1,1686),(197,18,105,0,8197,'body',0,1790,388,1686,1360955738,1,2143),(197,18,105,0,8198,'body',0,2109,389,2143,1360955738,1,1790),(197,18,105,0,8199,'body',0,816,390,1790,1360955738,1,2109),(197,18,105,0,8200,'body',0,1717,391,2109,1360955738,1,816),(197,18,105,0,8201,'body',0,1641,392,816,1360955738,1,1717),(197,18,105,0,8202,'body',0,1710,393,1717,1360955738,1,1641),(197,18,105,0,8203,'body',0,1900,394,1641,1360955738,1,1710),(197,18,105,0,8204,'body',0,1627,395,1710,1360955738,1,1900),(197,18,105,0,8205,'body',0,1677,396,1900,1360955738,1,1627),(197,18,105,0,8206,'body',0,1843,397,1627,1360955738,1,1677),(197,18,105,0,8207,'body',0,2144,398,1677,1360955738,1,1843),(197,18,105,0,8208,'body',0,1742,399,1843,1360955738,1,2144),(197,18,105,0,8209,'body',0,2145,400,2144,1360955738,1,1742),(197,18,105,0,8210,'body',0,1729,401,1742,1360955738,1,2145),(197,18,105,0,8211,'body',0,2146,402,2145,1360955738,1,1729),(197,18,105,0,8212,'body',0,2147,403,1729,1360955738,1,2146),(197,18,105,0,8213,'body',0,2133,404,2146,1360955738,1,2147),(197,18,105,0,8214,'body',0,1635,405,2147,1360955738,1,2133),(197,18,105,0,8215,'body',0,1641,406,2133,1360955738,1,1635),(197,18,105,0,8216,'body',0,1852,407,1635,1360955738,1,1641),(197,18,105,0,8217,'body',0,1902,408,1641,1360955738,1,1852),(197,18,105,0,8218,'body',0,1663,409,1852,1360955738,1,1902),(197,18,105,0,8219,'body',0,2044,410,1902,1360955738,1,1663),(197,18,105,0,8220,'body',0,1654,411,1663,1360955738,1,2044),(197,18,105,0,8221,'body',0,1631,412,2044,1360955738,1,1654),(197,18,105,0,8222,'body',0,1632,413,1654,1360955738,1,1631),(197,18,105,0,8223,'body',0,1761,414,1631,1360955738,1,1632),(197,18,105,0,8224,'body',0,1716,415,1632,1360955738,1,1761),(197,18,105,0,8225,'body',0,1717,416,1761,1360955738,1,1716),(197,18,105,0,8226,'body',0,1710,417,1716,1360955738,1,1717),(197,18,105,0,8227,'body',0,2148,418,1717,1360955738,1,1710),(197,18,105,0,8228,'body',0,1641,419,1710,1360955738,1,2148),(197,18,105,0,8229,'body',0,1631,420,2148,1360955738,1,1641),(197,18,105,0,8230,'body',0,1632,421,1641,1360955738,1,1631),(197,18,105,0,8231,'body',0,1633,422,1631,1360955738,1,1632),(197,18,105,0,8232,'body',0,1654,423,1632,1360955738,1,1633),(197,18,105,0,8233,'body',0,1649,424,1633,1360955738,1,1654),(197,18,105,0,8234,'body',0,1761,425,1654,1360955738,1,1649),(197,18,105,0,8235,'body',0,1678,426,1649,1360955738,1,1761),(197,18,105,0,8236,'body',0,1726,427,1761,1360955738,1,1678),(197,18,105,0,8237,'body',0,1643,428,1678,1360955738,1,1726),(197,18,105,0,8238,'body',0,1736,429,1726,1360955738,1,1643),(197,18,105,0,8239,'body',0,2044,430,1643,1360955738,1,1736),(197,18,105,0,8240,'body',0,1677,431,1736,1360955738,1,2044),(197,18,105,0,8241,'body',0,1968,432,2044,1360955738,1,1677),(197,18,105,0,8242,'body',0,2149,433,1677,1360955738,1,1968),(197,18,105,0,8243,'body',0,1717,434,1968,1360955738,1,2149),(197,18,105,0,8244,'body',0,1694,435,2149,1360955738,1,1717),(197,18,105,0,8245,'body',0,2150,436,1717,1360955738,1,1694),(197,18,105,0,8246,'body',0,1717,437,1694,1360955738,1,2150),(197,18,105,0,8247,'body',0,1710,438,2150,1360955738,1,1717),(197,18,105,0,8248,'body',0,2151,439,1717,1360955738,1,1710),(197,18,105,0,8249,'body',0,816,440,1710,1360955738,1,2151),(197,18,105,0,8250,'body',0,2152,441,2151,1360955738,1,816),(197,18,105,0,8251,'body',0,2016,442,816,1360955738,1,2152),(197,18,105,0,8252,'body',0,1700,443,2152,1360955738,1,2016),(197,18,105,0,8253,'body',0,1710,444,2016,1360955738,1,1700),(197,18,105,0,8254,'body',0,2153,445,1700,1360955738,1,1710),(197,18,105,0,8255,'body',0,1682,446,1710,1360955738,1,2153),(197,18,105,0,8256,'body',0,1631,447,2153,1360955738,1,1682),(197,18,105,0,8257,'body',0,1632,448,1682,1360955738,1,1631),(197,18,105,0,8258,'body',0,1633,449,1631,1360955738,1,1632),(197,18,105,0,8259,'body',0,1838,450,1632,1360955738,1,1633),(197,18,105,0,8260,'body',0,1938,451,1633,1360955738,1,1838),(197,18,105,0,8261,'body',0,1635,452,1838,1360955738,1,1938),(197,18,105,0,8262,'body',0,2154,453,1938,1360955738,1,1635),(197,18,105,0,8263,'body',0,1677,454,1635,1360955738,1,2154),(197,18,105,0,8264,'body',0,1700,455,2154,1360955738,1,1677),(197,18,105,0,8265,'body',0,1710,456,1677,1360955738,1,1700),(197,18,105,0,8266,'body',0,2155,457,1700,1360955738,1,1710),(197,18,105,0,8267,'body',0,2153,458,1710,1360955738,1,2155),(197,18,105,0,8268,'body',0,1682,459,2155,1360955738,1,2153),(197,18,105,0,8269,'body',0,814,460,2153,1360955738,1,1682),(197,18,105,0,8270,'body',0,1683,461,1682,1360955738,1,814),(197,18,105,0,8271,'body',0,1730,462,814,1360955738,1,1683),(197,18,105,0,8272,'body',0,1747,463,1683,1360955738,1,1730),(197,18,105,0,8273,'body',0,1645,464,1730,1360955738,1,1747),(197,18,105,0,8274,'body',0,1631,465,1747,1360955738,1,1645),(197,18,105,0,8275,'body',0,1632,466,1645,1360955738,1,1631),(197,18,105,0,8276,'body',0,1633,467,1631,1360955738,1,1632),(197,18,105,0,8277,'body',0,1631,468,1632,1360955738,1,1633),(197,18,105,0,8278,'body',0,1632,469,1633,1360955738,1,1631),(197,18,105,0,8279,'body',0,1761,470,1631,1360955738,1,1632),(197,18,105,0,8280,'body',0,1713,471,1632,1360955738,1,1761),(197,18,105,0,8281,'body',0,1745,472,1761,1360955738,1,1713),(197,18,105,0,8282,'body',0,1678,473,1713,1360955738,1,1745),(197,18,105,0,8283,'body',0,1647,474,1745,1360955738,1,1678),(197,18,105,0,8284,'body',0,2156,475,1678,1360955738,1,1647),(197,18,105,0,8285,'body',0,1748,476,1647,1360955738,1,2156),(197,18,105,0,8286,'body',0,1645,477,2156,1360955738,1,1748),(197,18,105,0,8287,'body',0,814,478,1748,1360955738,1,1645),(197,18,105,0,8288,'body',0,2157,479,1645,1360955738,1,814),(197,18,105,0,8289,'body',0,2037,480,814,1360955738,1,2157),(197,18,105,0,8290,'body',0,2072,481,2157,1360955738,1,2037),(197,18,105,0,8291,'body',0,1830,482,2037,1360955738,1,2072),(197,18,105,0,8292,'body',0,1798,483,2072,1360955738,1,1830),(197,18,105,0,8293,'body',0,1718,484,1830,1360955738,1,1798),(197,18,105,0,8294,'body',0,1961,485,1798,1360955738,1,1718),(197,18,105,0,8295,'body',0,1763,486,1718,1360955738,1,1961),(197,18,105,0,8296,'body',0,1770,487,1961,1360955738,1,1763),(197,18,105,0,8297,'body',0,814,488,1763,1360955738,1,1770),(197,18,105,0,8298,'body',0,2158,489,1770,1360955738,1,814),(197,18,105,0,8299,'body',0,2159,490,814,1360955738,1,2158),(197,18,105,0,8300,'body',0,2158,491,2158,1360955738,1,2159),(197,18,105,0,8301,'body',0,2063,492,2159,1360955738,1,2158),(197,18,105,0,8302,'body',0,2088,493,2158,1360955738,1,2063),(197,18,105,0,8303,'body',0,2089,494,2063,1360955738,1,2088),(197,18,105,0,8304,'body',0,2063,495,2088,1360955738,1,2089),(197,18,105,0,8305,'body',0,1762,496,2089,1360955738,1,2063),(197,18,105,0,8306,'body',0,1743,497,2063,1360955738,1,1762),(197,18,105,0,8307,'body',0,816,498,1762,1360955738,1,1743),(197,18,105,0,8308,'body',0,1658,499,1743,1360955738,1,816),(197,18,105,0,8309,'body',0,1713,500,816,1360955738,1,1658),(197,18,105,0,8310,'body',0,1727,501,1658,1360955738,1,1713),(197,18,105,0,8311,'body',0,2160,502,1713,1360955738,1,1727),(197,18,105,0,8312,'body',0,1635,503,1727,1360955738,1,2160),(197,18,105,0,8313,'body',0,2161,504,2160,1360955738,1,1635),(197,18,105,0,8314,'body',0,1645,505,1635,1360955738,1,2161),(197,18,105,0,8315,'body',0,1770,506,2161,1360955738,1,1645),(197,18,105,0,8316,'body',0,814,507,1645,1360955738,1,1770),(197,18,105,0,8317,'body',0,2088,508,1770,1360955738,1,814),(197,18,105,0,8318,'body',0,2089,509,814,1360955738,1,2088),(197,18,105,0,8319,'body',0,2162,510,2088,1360955738,1,2089),(197,18,105,0,8320,'body',0,2163,511,2089,1360955738,1,2162),(197,18,105,0,8321,'body',0,1630,512,2162,1360955738,1,2163),(197,18,105,0,8322,'body',0,814,513,2163,1360955738,1,1630),(197,18,105,0,8323,'body',0,1730,514,1630,1360955738,1,814),(197,18,105,0,8324,'body',0,1731,515,814,1360955738,1,1730),(197,18,105,0,8325,'body',0,1770,516,1730,1360955738,1,1731),(197,18,105,0,8326,'body',0,1769,517,1731,1360955738,1,1770),(197,18,105,0,8327,'body',0,1689,518,1770,1360955738,1,1769),(197,18,105,0,8328,'body',0,2036,519,1769,1360955738,1,1689),(197,18,105,0,8329,'body',0,1939,520,1689,1360955738,1,2036),(197,18,105,0,8330,'body',0,2059,521,2036,1360955738,1,1939),(197,18,105,0,8331,'body',0,1665,522,1939,1360955738,1,2059),(197,18,105,0,8332,'body',0,2073,523,2059,1360955738,1,1665),(197,18,105,0,8333,'body',0,2164,524,1665,1360955738,1,2073),(197,18,105,0,8334,'body',0,1651,525,2073,1360955738,1,2164),(197,18,105,0,8335,'body',0,2165,526,2164,1360955738,1,1651),(197,18,105,0,8336,'body',0,2166,527,1651,1360955738,1,2165),(197,18,105,0,8337,'body',0,2167,528,2165,1360955738,1,2166),(197,18,105,0,8338,'body',0,814,529,2166,1360955738,1,2167),(197,18,105,0,8339,'body',0,2168,530,2167,1360955738,1,814),(197,18,105,0,8340,'body',0,1770,531,814,1360955738,1,2168),(197,18,105,0,8341,'body',0,2061,532,2168,1360955738,1,1770),(197,18,105,0,8342,'body',0,1643,533,1770,1360955738,1,2061),(197,18,105,0,8343,'body',0,2169,534,2061,1360955738,1,1643),(197,18,105,0,8344,'body',0,1683,535,1643,1360955738,1,2169),(197,18,105,0,8345,'body',0,1866,536,2169,1360955738,1,1683),(197,18,105,0,8346,'body',0,2170,537,1683,1360955738,1,1866),(197,18,105,0,8347,'body',0,1681,538,1866,1360955738,1,2170),(197,18,105,0,8348,'body',0,2088,539,2170,1360955738,1,1681),(197,18,105,0,8349,'body',0,2171,540,1681,1360955738,1,2088),(197,18,105,0,8350,'body',0,1874,541,2088,1360955738,1,2171),(197,18,105,0,8351,'body',0,814,542,2171,1360955738,1,1874),(197,18,105,0,8352,'body',0,2089,543,1874,1360955738,1,814),(197,18,105,0,8353,'body',0,1777,544,814,1360955738,1,2089),(197,18,105,0,8354,'body',0,1647,545,2089,1360955738,1,1777),(197,18,105,0,8355,'body',0,814,546,1777,1360955738,1,1647),(197,18,105,0,8356,'body',0,1791,547,1647,1360955738,1,814),(197,18,105,0,8357,'body',0,1641,548,814,1360955738,1,1791),(197,18,105,0,8358,'body',0,2172,549,1791,1360955738,1,1641),(197,18,105,0,8359,'body',0,1790,550,1641,1360955738,1,2172),(197,18,105,0,8360,'body',0,1726,551,2172,1360955738,1,1790),(197,18,105,0,8361,'body',0,1831,552,1790,1360955738,1,1726),(197,18,105,0,8362,'body',0,2173,553,1726,1360955738,1,1831),(197,18,105,0,8363,'body',0,1792,554,1831,1360955738,1,2173),(197,18,105,0,8364,'body',0,1815,555,2173,1360955738,1,1792),(197,18,105,0,8365,'body',0,2174,556,1792,1360955738,1,1815),(197,18,105,0,8366,'body',0,2073,557,1815,1360955738,1,2174),(197,18,105,0,8367,'body',0,1635,558,2174,1360955738,1,2073),(197,18,105,0,8368,'body',0,1631,559,2073,1360955738,1,1635),(197,18,105,0,8369,'body',0,1632,560,1635,1360955738,1,1631),(197,18,105,0,8370,'body',0,1761,561,1631,1360955738,1,1632),(197,18,105,0,8371,'body',0,1716,562,1632,1360955738,1,1761),(197,18,105,0,8372,'body',0,1717,563,1761,1360955738,1,1716),(197,18,105,0,8373,'body',0,2175,564,1716,1360955738,1,1717),(197,18,105,0,8374,'body',0,1641,565,1717,1360955738,1,2175),(197,18,105,0,8375,'body',0,1979,566,2175,1360955738,1,1641),(197,18,105,0,8376,'body',0,1643,567,1641,1360955738,1,1979),(197,18,105,0,8377,'body',0,1970,568,1979,1360955738,1,1643),(197,18,105,0,8378,'body',0,1923,569,1643,1360955738,1,1970),(197,18,105,0,8379,'body',0,1654,570,1970,1360955738,1,1923),(197,18,105,0,8380,'body',0,814,571,1923,1360955738,1,1654),(197,18,105,0,8381,'body',0,2176,572,1654,1360955738,1,814),(197,18,105,0,8382,'body',0,1635,573,814,1360955738,1,2176),(197,18,105,0,8383,'body',0,1641,574,2176,1360955738,1,1635),(197,18,105,0,8384,'body',0,1852,575,1635,1360955738,1,1641),(197,18,105,0,8385,'body',0,2088,576,1641,1360955738,1,1852),(197,18,105,0,8386,'body',0,1717,577,1852,1360955738,1,2088),(197,18,105,0,8387,'body',0,2101,578,2088,1360955738,1,1717),(197,18,105,0,8388,'body',0,1984,579,1717,1360955738,1,2101),(197,18,105,0,8389,'body',0,2174,580,2101,1360955738,1,1984),(197,18,105,0,8390,'body',0,1681,581,1984,1360955738,1,2174),(197,18,105,0,8391,'body',0,1825,582,2174,1360955738,1,1681),(197,18,105,0,8392,'body',0,2177,583,1681,1360955738,1,1825),(197,18,105,0,8393,'body',0,1688,584,1825,1360955738,1,2177),(197,18,105,0,8394,'body',0,2174,585,2177,1360955738,1,1688),(197,18,105,0,8395,'body',0,1923,586,1688,1360955738,1,2174),(197,18,105,0,8396,'body',0,2178,587,2174,1360955738,1,1923),(197,18,105,0,8397,'body',0,2179,588,1923,1360955738,1,2178),(197,18,105,0,8398,'body',0,2180,589,2178,1360955738,1,2179),(197,18,105,0,8399,'body',0,2181,590,2179,1360955738,1,2180),(197,18,105,0,8400,'body',0,2182,591,2180,1360955738,1,2181),(197,18,105,0,8401,'body',0,2183,592,2181,1360955738,1,2182),(197,18,105,0,8402,'body',0,2184,593,2182,1360955738,1,2183),(197,18,105,0,8403,'body',0,2104,594,2183,1360955738,1,2184),(197,18,105,0,8404,'body',0,1925,595,2184,1360955738,1,2104),(197,18,105,0,8405,'body',0,1686,596,2104,1360955738,1,1925),(197,18,105,0,8406,'body',0,1713,597,1925,1360955738,1,1686),(197,18,105,0,8407,'body',0,2185,598,1686,1360955738,1,1713),(197,18,105,0,8408,'body',0,1665,599,1713,1360955738,1,2185),(197,18,105,0,8409,'body',0,814,600,2185,1360955738,1,1665),(197,18,105,0,8410,'body',0,1973,601,1665,1360955738,1,814),(197,18,105,0,8411,'body',0,1677,602,814,1360955738,1,1973),(197,18,105,0,8412,'body',0,2186,603,1973,1360955738,1,1677),(197,18,105,0,8413,'body',0,1713,604,1677,1360955738,1,2186),(197,18,105,0,8414,'body',0,1677,605,2186,1360955738,1,1713),(197,18,105,0,8415,'body',0,1717,606,1713,1360955738,1,1677),(197,18,105,0,8416,'body',0,1718,607,1677,1360955738,1,1717),(197,18,105,0,8417,'body',0,1792,608,1717,1360955738,1,1718),(197,18,105,0,8418,'body',0,1793,609,1718,1360955738,1,1792),(197,18,105,0,8419,'body',0,2187,610,1792,1360955738,1,1793),(197,18,105,0,8420,'body',0,1852,611,1793,1360955738,1,2187),(197,18,105,0,8421,'body',0,2114,612,2187,1360955738,1,1852),(197,18,105,0,8422,'body',0,1852,613,1852,1360955738,1,2114),(197,18,105,0,8423,'body',0,2049,614,2114,1360955738,1,1852),(197,18,105,0,8424,'body',0,2088,615,1852,1360955738,1,2049),(197,18,105,0,8425,'body',0,1713,616,2049,1360955738,1,2088),(197,18,105,0,8426,'body',0,1778,617,2088,1360955738,1,1713),(197,18,105,0,8427,'body',0,2153,618,1713,1360955738,1,1778),(197,18,105,0,8428,'body',0,2188,619,1778,1360955738,1,2153),(197,18,105,0,8429,'body',0,1641,620,2153,1360955738,1,2188),(197,18,105,0,8430,'body',0,814,621,2188,1360955738,1,1641),(197,18,105,0,8431,'body',0,1922,622,1641,1360955738,1,814),(197,18,105,0,8432,'body',0,1647,623,814,1360955738,1,1922),(197,18,105,0,8433,'body',0,2189,624,1922,1360955738,1,1647),(197,18,105,0,8434,'body',0,2138,625,1647,1360955738,1,2189),(197,18,105,0,8435,'body',0,2190,626,2189,1360955738,1,2138),(197,18,105,0,8436,'body',0,1868,627,2138,1360955738,1,2190),(197,18,105,0,8437,'body',0,814,628,2190,1360955738,1,1868),(197,18,105,0,8438,'body',0,1658,629,1868,1360955738,1,814),(197,18,105,0,8439,'body',0,1631,630,814,1360955738,1,1658),(197,18,105,0,8440,'body',0,1632,631,1658,1360955738,1,1631),(197,18,105,0,8441,'body',0,1761,632,1631,1360955738,1,1632),(197,18,105,0,8442,'body',0,1769,633,1632,1360955738,1,1761),(197,18,105,0,8443,'body',0,2191,634,1761,1360955738,1,1769),(197,18,105,0,8444,'body',0,1815,635,1769,1360955738,1,2191),(197,18,105,0,8445,'body',0,1647,636,2191,1360955738,1,1815),(197,18,105,0,8446,'body',0,1815,637,1815,1360955738,1,1647),(197,18,105,0,8447,'body',0,2192,638,1647,1360955738,1,1815),(197,18,105,0,8448,'body',0,1630,639,1815,1360955738,1,2192),(197,18,105,0,8449,'body',0,2190,640,2192,1360955738,1,1630),(197,18,105,0,8450,'body',0,1627,641,1630,1360955738,1,2190),(197,18,105,0,8451,'body',0,1782,642,2190,1360955738,1,1627),(197,18,105,0,8452,'body',0,2193,643,1627,1360955738,1,1782),(197,18,105,0,8453,'body',0,1641,644,1782,1360955738,1,2193),(197,18,105,0,8454,'body',0,1663,645,2193,1360955738,1,1641),(197,18,105,0,8455,'body',0,2194,646,1641,1360955738,1,1663),(197,18,105,0,8456,'body',0,2195,647,1663,1360955738,1,2194),(197,18,105,0,8457,'body',0,1641,648,2194,1360955738,1,2195),(197,18,105,0,8458,'body',0,1719,649,2195,1360955738,1,1641),(197,18,105,0,8459,'body',0,1769,650,1641,1360955738,1,1719),(197,18,105,0,8460,'body',0,1635,651,1719,1360955738,1,1769),(197,18,105,0,8461,'body',0,814,652,1769,1360955738,1,1635),(197,18,105,0,8462,'body',0,1631,653,1635,1360955738,1,814),(197,18,105,0,8463,'body',0,1632,654,814,1360955738,1,1631),(197,18,105,0,8464,'body',0,1633,655,1631,1360955738,1,1632),(197,18,105,0,8465,'body',0,2196,656,1632,1360955738,1,1633),(197,18,105,0,8466,'body',0,1970,657,1633,1360955738,1,2196),(197,18,105,0,8467,'body',0,1921,658,2196,1360955738,1,1970),(197,18,105,0,8468,'body',0,1713,659,1970,1360955738,1,1921),(197,18,105,0,8469,'body',0,1766,660,1921,1360955738,1,1713),(197,18,105,0,8470,'body',0,1830,661,1713,1360955738,1,1766),(197,18,105,0,8471,'body',0,1651,662,1766,1360955738,1,1830),(197,18,105,0,8472,'body',0,2197,663,1830,1360955738,1,1651),(197,18,105,0,8473,'body',0,1980,664,1651,1360955738,1,2197),(197,18,105,0,8474,'body',0,1641,665,2197,1360955738,1,1980),(197,18,105,0,8475,'body',0,814,666,1980,1360955738,1,1641),(197,18,105,0,8476,'body',0,1715,667,1641,1360955738,1,814),(197,18,105,0,8477,'body',0,1651,668,814,1360955738,1,1715),(197,18,105,0,8478,'body',0,2198,669,1715,1360955738,1,1651),(197,18,105,0,8479,'body',0,1980,670,1651,1360955738,1,2198),(197,18,105,0,8480,'body',0,1686,671,2198,1360955738,1,1980),(197,18,105,0,8481,'body',0,1791,672,1980,1360955738,1,1686),(197,18,105,0,8482,'body',0,1677,673,1686,1360955738,1,1791),(197,18,105,0,8483,'body',0,1717,674,1791,1360955738,1,1677),(197,18,105,0,8484,'body',0,1850,675,1677,1360955738,1,1717),(197,18,105,0,8485,'body',0,2003,676,1717,1360955738,1,1850),(197,18,105,0,8486,'body',0,814,677,1850,1360955738,1,2003),(197,18,105,0,8487,'body',0,2199,678,2003,1360955738,1,814),(197,18,105,0,8488,'body',0,1641,679,814,1360955738,1,2199),(197,18,105,0,8489,'body',0,2200,680,2199,1360955738,1,1641),(197,18,105,0,8490,'body',0,814,681,1641,1360955738,1,2200),(197,18,105,0,8491,'body',0,1921,682,2200,1360955738,1,814),(197,18,105,0,8492,'body',0,1830,683,814,1360955738,1,1921),(197,18,105,0,8493,'body',0,2063,684,1921,1360955738,1,1830),(197,18,105,0,8494,'body',0,1635,685,1830,1360955738,1,2063),(197,18,105,0,8495,'body',0,1651,686,2063,1360955738,1,1635),(197,18,105,0,8496,'body',0,2050,687,1635,1360955738,1,1651),(197,18,105,0,8497,'body',0,2071,688,1651,1360955738,1,2050),(197,18,105,0,8498,'body',0,1647,689,2050,1360955738,1,2071),(197,18,105,0,8499,'body',0,2201,690,2071,1360955738,1,1647),(197,18,105,0,8500,'body',0,1651,691,1647,1360955738,1,2201),(197,18,105,0,8501,'body',0,2088,692,2201,1360955738,1,1651),(197,18,105,0,8502,'body',0,1641,693,1651,1360955738,1,2088),(197,18,105,0,8503,'body',0,2097,694,2088,1360955738,1,1641),(197,18,105,0,8504,'body',0,814,695,1641,1360955738,1,2097),(197,18,105,0,8505,'body',0,2202,696,2097,1360955738,1,814),(197,18,105,0,8506,'body',0,1686,697,814,1360955738,1,2202),(197,18,105,0,8507,'body',0,2092,698,2202,1360955738,1,1686),(197,18,105,0,8508,'body',0,1681,699,1686,1360955738,1,2092),(197,18,105,0,8509,'body',0,1651,700,2092,1360955738,1,1681),(197,18,105,0,8510,'body',0,2165,701,1681,1360955738,1,1651),(197,18,105,0,8511,'body',0,1815,702,1651,1360955738,1,2165),(197,18,105,0,8512,'body',0,1905,703,2165,1360955738,1,1815),(197,18,105,0,8513,'body',0,1665,704,1815,1360955738,1,1905),(197,18,105,0,8514,'body',0,1790,705,1905,1360955738,1,1665),(197,18,105,0,8515,'body',0,2203,706,1665,1360955738,1,1790),(197,18,105,0,8516,'body',0,1641,707,1790,1360955738,1,2203),(197,18,105,0,8517,'body',0,2204,708,2203,1360955738,1,1641),(197,18,105,0,8518,'body',0,2088,709,1641,1360955738,1,2204),(197,18,105,0,8519,'body',0,1710,710,2204,1360955738,1,2088),(197,18,105,0,8520,'body',0,1900,711,2088,1360955738,1,1710),(197,18,105,0,8521,'body',0,1647,712,1710,1360955738,1,1900),(197,18,105,0,8522,'body',0,1790,713,1900,1360955738,1,1647),(197,18,105,0,8523,'body',0,1870,714,1647,1360955738,1,1790),(197,18,105,0,8524,'body',0,2205,715,1790,1360955738,1,1870),(197,18,105,0,8525,'body',0,1717,716,1870,1360955738,1,2205),(197,18,105,0,8526,'body',0,1651,717,2205,1360955738,1,1717),(197,18,105,0,8527,'body',0,2206,718,1717,1360955738,1,1651),(197,18,105,0,8528,'body',0,1641,719,1651,1360955738,1,2206),(197,18,105,0,8529,'body',0,1938,720,2206,1360955738,1,1641),(197,18,105,0,8530,'body',0,1706,721,1641,1360955738,1,1938),(197,18,105,0,8531,'body',0,1645,722,1938,1360955738,1,1706),(197,18,105,0,8532,'body',0,814,723,1706,1360955738,1,1645),(197,18,105,0,8533,'body',0,2207,724,1645,1360955738,1,814),(197,18,105,0,8534,'body',0,2190,725,814,1360955738,1,2207),(197,18,105,0,8535,'body',0,1681,726,2207,1360955738,1,2190),(197,18,105,0,8536,'body',0,2208,727,2190,1360955738,1,1681),(197,18,105,0,8537,'body',0,1651,728,1681,1360955738,1,2208),(197,18,105,0,8538,'body',0,2178,729,2208,1360955738,1,1651),(197,18,105,0,8539,'body',0,1645,730,1651,1360955738,1,2178),(197,18,105,0,8540,'body',0,2209,731,2178,1360955738,1,1645),(197,18,105,0,8541,'body',0,1712,732,1645,1360955738,1,2209),(197,18,105,0,8542,'body',0,1651,733,2209,1360955738,1,1712),(197,18,105,0,8543,'body',0,2210,734,1712,1360955738,1,1651),(197,18,105,0,8544,'body',0,1916,735,1651,1360955738,1,2210),(197,18,105,0,8545,'body',0,1645,736,2210,1360955738,1,1916),(197,18,105,0,8546,'body',0,814,737,1916,1360955738,1,1645),(197,18,105,0,8547,'body',0,2088,738,1645,1360955738,1,814),(197,18,105,0,8548,'body',0,2211,739,814,1360955738,1,2088),(197,18,105,0,8549,'body',0,2212,740,2088,1360955738,1,2211),(197,18,105,0,8550,'body',0,2213,741,2211,1360955738,1,2212),(197,18,105,0,8551,'body',0,1723,742,2212,1360955738,1,2213),(197,18,105,0,8552,'body',0,1631,743,2213,1360955738,1,1723),(197,18,105,0,8553,'body',0,1632,744,1723,1360955738,1,1631),(197,18,105,0,8554,'body',0,1761,745,1631,1360955738,1,1632),(197,18,105,0,8555,'body',0,1692,746,1632,1360955738,1,1761),(197,18,105,0,8556,'body',0,1722,747,1761,1360955738,1,1692),(197,18,105,0,8557,'body',0,1677,748,1692,1360955738,1,1722),(197,18,105,0,8558,'body',0,1651,749,1722,1360955738,1,1677),(197,18,105,0,8559,'body',0,2099,750,1677,1360955738,1,1651),(197,18,105,0,8560,'body',0,1635,751,1651,1360955738,1,2099),(197,18,105,0,8561,'body',0,1631,752,2099,1360955738,1,1635),(197,18,105,0,8562,'body',0,1761,753,1635,1360955738,1,1631),(197,18,105,0,8563,'body',0,1713,754,1631,1360955738,1,1761),(197,18,105,0,8564,'body',0,2214,755,1761,1360955738,1,1713),(197,18,105,0,8565,'body',0,1635,756,1713,1360955738,1,2214),(197,18,105,0,8566,'body',0,2215,757,2214,1360955738,1,1635),(197,18,105,0,8567,'body',0,2216,758,1635,1360955738,1,2215),(197,18,105,0,8568,'body',0,814,759,2215,1360955738,1,2216),(197,18,105,0,8569,'body',0,1684,760,2216,1360955738,1,814),(197,18,105,0,8570,'body',0,1698,761,814,1360955738,1,1684),(197,18,105,0,8571,'body',0,2217,762,1684,1360955738,1,1698),(197,18,105,0,8572,'body',0,814,763,1698,1360955738,1,2217),(197,18,105,0,8573,'body',0,2218,764,2217,1360955738,1,814),(197,18,105,0,8574,'body',0,2219,765,814,1360955738,1,2218),(197,18,105,0,8575,'body',0,814,766,2218,1360955738,1,2219),(197,18,105,0,8576,'body',0,2220,767,2219,1360955738,1,814),(197,18,105,0,8577,'body',0,2049,768,814,1360955738,1,2220),(197,18,105,0,8578,'body',0,2088,769,2220,1360955738,1,2049),(197,18,105,0,8579,'body',0,1645,770,2049,1360955738,1,2088),(197,18,105,0,8580,'body',0,1651,771,2088,1360955738,1,1645),(197,18,105,0,8581,'body',0,1923,772,1645,1360955738,1,1651),(197,18,105,0,8582,'body',0,2221,773,1651,1360955738,1,1923),(197,18,105,0,8583,'body',0,1647,774,1923,1360955738,1,2221),(197,18,105,0,8584,'body',0,2058,775,2221,1360955738,1,1647),(197,18,105,0,8585,'body',0,2222,776,1647,1360955738,1,2058),(197,18,105,0,8586,'body',0,814,777,2058,1360955738,1,2222),(197,18,105,0,8587,'body',0,2219,778,2222,1360955738,1,814),(197,18,105,0,8588,'body',0,1645,779,814,1360955738,1,2219),(197,18,105,0,8589,'body',0,1677,780,2219,1360955738,1,1645),(197,18,105,0,8590,'body',0,1830,781,1645,1360955738,1,1677),(197,18,105,0,8591,'body',0,2108,782,1677,1360955738,1,1830),(197,18,105,0,8592,'body',0,1641,783,1830,1360955738,1,2108),(197,18,105,0,8593,'body',0,1651,784,2108,1360955738,1,1641),(197,18,105,0,8594,'body',0,2223,785,1641,1360955738,1,1651),(197,18,105,0,8595,'body',0,1782,786,1651,1360955738,1,2223),(197,18,105,0,8596,'body',0,2217,787,2223,1360955738,1,1782),(197,18,105,0,8597,'body',0,814,788,1782,1360955738,1,2217),(197,18,105,0,8598,'body',0,2099,789,2217,1360955738,1,814),(197,18,105,0,8599,'body',0,2224,790,814,1360955738,1,2099),(197,18,105,0,8600,'body',0,1716,791,2099,1360955738,1,2224),(197,18,105,0,8601,'body',0,1717,792,2224,1360955738,1,1716),(197,18,105,0,8602,'body',0,2096,793,1716,1360955738,1,1717),(197,18,105,0,8603,'body',0,814,794,1717,1360955738,1,2096),(197,18,105,0,8604,'body',0,2223,795,2096,1360955738,1,814),(197,18,105,0,8605,'body',0,2088,796,814,1360955738,1,2223),(197,18,105,0,8606,'body',0,1641,797,2223,1360955738,1,2088),(197,18,105,0,8607,'body',0,1742,798,2088,1360955738,1,1641),(197,18,105,0,8608,'body',0,2225,799,1641,1360955738,1,1742),(197,18,105,0,8609,'body',0,1641,800,1742,1360955738,1,2225),(197,18,105,0,8610,'body',0,2078,801,2225,1360955738,1,1641),(197,18,105,0,8611,'body',0,1743,802,1641,1360955738,1,2078),(197,18,105,0,8612,'body',0,1729,803,2078,1360955738,1,1743),(197,18,105,0,8613,'body',0,814,804,1743,1360955738,1,1729),(197,18,105,0,8614,'body',0,2226,805,1729,1360955738,1,814),(197,18,105,0,8615,'body',0,2088,806,814,1360955738,1,2226),(197,18,105,0,8616,'body',0,1717,807,2226,1360955738,1,2088),(197,18,105,0,8617,'body',0,1872,808,2088,1360955738,1,1717),(197,18,105,0,8618,'body',0,1641,809,1717,1360955738,1,1872),(197,18,105,0,8619,'body',0,1974,810,1872,1360955738,1,1641),(197,18,105,0,8620,'body',0,2212,811,1641,1360955738,1,1974),(197,18,105,0,8621,'body',0,2227,812,1974,1360955738,1,2212),(197,18,105,0,8622,'body',0,2078,813,2212,1360955738,1,2227),(197,18,105,0,8623,'body',0,1635,814,2227,1360955738,1,2078),(197,18,105,0,8624,'body',0,1651,815,2078,1360955738,1,1635),(197,18,105,0,8625,'body',0,2136,816,1635,1360955738,1,1651),(197,18,105,0,8626,'body',0,2228,817,1651,1360955738,1,2136),(197,18,105,0,8627,'body',0,1875,818,2136,1360955738,1,2228),(197,18,105,0,8628,'body',0,2174,819,2228,1360955738,1,1875),(197,18,105,0,8629,'body',0,2152,820,1875,1360955738,1,2174),(197,18,105,0,8630,'body',0,2229,821,2174,1360955738,1,2152),(197,18,105,0,8631,'body',0,1635,822,2152,1360955738,1,2229),(197,18,105,0,8632,'body',0,1770,823,2229,1360955738,1,1635),(197,18,105,0,8633,'body',0,2155,824,1635,1360955738,1,1770),(197,18,105,0,8634,'body',0,2230,825,1770,1360955738,1,2155),(197,18,105,0,8635,'body',0,2097,826,2155,1360955738,1,2230),(197,18,105,0,8636,'body',0,2231,827,2230,1360955738,1,2097),(197,18,105,0,8637,'body',0,2232,828,2097,1360955738,1,2231),(197,18,105,0,8638,'body',0,816,829,2231,1360955738,1,2232),(197,18,105,0,8639,'body',0,2233,830,2232,1360955738,1,816),(197,18,105,0,8640,'body',0,1980,831,816,1360955738,1,2233),(197,18,105,0,8641,'body',0,2234,832,2233,1360955738,1,1980),(197,18,105,0,8642,'body',0,2198,833,1980,1360955738,1,2234),(197,18,105,0,8643,'body',0,2235,834,2234,1360955738,1,2198),(197,18,105,0,8644,'body',0,816,835,2198,1360955738,1,2235),(197,18,105,0,8645,'body',0,814,836,2235,1360955738,1,816),(197,18,105,0,8646,'body',0,2236,837,816,1360955738,1,814),(197,18,105,0,8647,'body',0,814,838,814,1360955738,1,2236),(197,18,105,0,8648,'body',0,2088,839,2236,1360955738,1,814),(197,18,105,0,8649,'body',0,2089,840,814,1360955738,1,2088),(197,18,105,0,8650,'body',0,2061,841,2088,1360955738,1,2089),(197,18,105,0,8651,'body',0,2070,842,2089,1360955738,1,2061),(197,18,105,0,8652,'body',0,2171,843,2061,1360955738,1,2070),(197,18,105,0,8653,'body',0,1922,844,2070,1360955738,1,2171),(197,18,105,0,8654,'body',0,2237,845,2171,1360955738,1,1922),(197,18,105,0,8655,'body',0,1641,846,1922,1360955738,1,2237),(197,18,105,0,8656,'body',0,1795,847,2237,1360955738,1,1641),(197,18,105,0,8657,'body',0,1647,848,1641,1360955738,1,1795),(197,18,105,0,8658,'body',0,1892,849,1795,1360955738,1,1647),(197,18,105,0,8659,'body',0,1635,850,1647,1360955738,1,1892),(197,18,105,0,8660,'body',0,2063,851,1892,1360955738,1,1635),(197,18,105,0,8661,'body',0,1677,852,1635,1360955738,1,2063),(197,18,105,0,8662,'body',0,1745,853,2063,1360955738,1,1677),(197,18,105,0,8663,'body',0,2238,854,1677,1360955738,1,1745),(197,18,105,0,8664,'body',0,1717,855,1745,1360955738,1,2238),(197,18,105,0,8665,'body',0,1641,856,2238,1360955738,1,1717),(197,18,105,0,8666,'body',0,1710,857,1717,1360955738,1,1641),(197,18,105,0,8667,'body',0,1900,858,1641,1360955738,1,1710),(197,18,105,0,8668,'body',0,1852,859,1710,1360955738,1,1900),(197,18,105,0,8669,'body',0,2088,860,1900,1360955738,1,1852),(197,18,105,0,8670,'body',0,1627,861,1852,1360955738,1,2088),(197,18,105,0,8671,'body',0,2239,862,2088,1360955738,1,1627),(197,18,105,0,8672,'body',0,2240,863,1627,1360955738,1,2239),(197,18,105,0,8673,'body',0,1635,864,2239,1360955738,1,2240),(197,18,105,0,8674,'body',0,1631,865,2240,1360955738,1,1635),(197,18,105,0,8675,'body',0,1632,866,1635,1360955738,1,1631),(197,18,105,0,8676,'body',0,1761,867,1631,1360955738,1,1632),(197,18,105,0,8677,'body',0,1678,868,1632,1360955738,1,1761),(197,18,105,0,8678,'body',0,2241,869,1761,1360955738,1,1678),(197,18,105,0,8679,'body',0,1651,870,1678,1360955738,1,2241),(197,18,105,0,8680,'body',0,1680,871,2241,1360955738,1,1651),(197,18,105,0,8681,'body',0,1645,872,1651,1360955738,1,1680),(197,18,105,0,8682,'body',0,1837,873,1680,1360955738,1,1645),(197,18,105,0,8683,'body',0,1673,874,1645,1360955738,1,1837),(197,18,105,0,8684,'body',0,1635,875,1837,1360955738,1,1673),(197,18,105,0,8685,'body',0,1774,876,1673,1360955738,1,1635),(197,18,105,0,8686,'body',0,1651,877,1635,1360955738,1,1774),(197,18,105,0,8687,'body',0,2099,878,1774,1360955738,1,1651),(197,18,105,0,8688,'body',0,2088,879,1651,1360955738,1,2099),(197,18,105,0,8689,'body',0,2240,880,2099,1360955738,1,2088),(197,18,105,0,8690,'body',0,2242,881,2088,1360955738,1,2240),(197,18,105,0,8691,'body',0,2240,882,2240,1360955738,1,2242),(197,18,105,0,8692,'body',0,2049,883,2242,1360955738,1,2240),(197,18,105,0,8693,'body',0,2240,884,2240,1360955738,1,2049),(197,18,105,0,8694,'body',0,1848,885,2049,1360955738,1,2240),(197,18,105,0,8695,'body',0,1631,886,2240,1360955738,1,1848),(197,18,105,0,8696,'body',0,1632,887,1848,1360955738,1,1631),(197,18,105,0,8697,'body',0,1633,888,1631,1360955738,1,1632),(197,18,105,0,8698,'body',0,2156,889,1632,1360955738,1,1633),(197,18,105,0,8699,'body',0,1730,890,1633,1360955738,1,2156),(197,18,105,0,8700,'body',0,1679,891,2156,1360955738,1,1730),(197,18,105,0,8701,'body',0,2243,892,1730,1360955738,1,1679),(197,18,105,0,8702,'body',0,1774,893,1679,1360955738,1,2243),(197,18,105,0,8703,'body',0,2130,894,2243,1360955738,1,1774),(197,18,105,0,8704,'body',0,1647,895,1774,1360955738,1,2130),(197,18,105,0,8705,'body',0,816,896,2130,1360955738,1,1647),(197,18,105,0,8706,'body',0,814,897,1647,1360955738,1,816),(197,18,105,0,8707,'body',0,1723,898,816,1360955738,1,814),(197,18,105,0,8708,'body',0,1809,899,814,1360955738,1,1723),(197,18,105,0,8709,'body',0,2155,900,1723,1360955738,1,1809),(197,18,105,0,8710,'body',0,2244,901,1809,1360955738,1,2155),(197,18,105,0,8711,'body',0,1752,902,2155,1360955738,1,2244),(197,18,105,0,8712,'body',0,2235,903,2244,1360955738,1,1752),(197,18,105,0,8713,'body',0,1730,904,1752,1360955738,1,2235),(197,18,105,0,8714,'body',0,1870,905,2235,1360955738,1,1730),(197,18,105,0,8715,'body',0,2245,906,1730,1360955738,1,1870),(197,18,105,0,8716,'body',0,2120,907,1870,1360955738,1,2245),(197,18,105,0,8717,'body',0,2162,908,2245,1360955738,1,2120),(197,18,105,0,8718,'body',0,1641,909,2120,1360955738,1,2162),(197,18,105,0,8719,'body',0,814,910,2162,1360955738,1,1641),(197,18,105,0,8720,'body',0,2021,911,1641,1360955738,1,814),(197,18,105,0,8721,'body',0,2246,912,814,1360955738,1,2021),(197,18,105,0,8722,'body',0,1641,913,2021,1360955738,1,2246),(197,18,105,0,8723,'body',0,2247,914,2246,1360955738,1,1641),(197,18,105,0,8724,'body',0,1670,915,1641,1360955738,1,2247),(197,18,105,0,8725,'body',0,1686,916,2247,1360955738,1,1670),(197,18,105,0,8726,'body',0,2240,917,1670,1360955738,1,1686),(197,18,105,0,8727,'body',0,1713,918,1686,1360955738,1,2240),(197,18,105,0,8728,'body',0,2248,919,2240,1360955738,1,1713),(197,18,105,0,8729,'body',0,1825,920,1713,1360955738,1,2248),(197,18,105,0,8730,'body',0,1716,921,2248,1360955738,1,1825),(197,18,105,0,8731,'body',0,1717,922,1825,1360955738,1,1716),(197,18,105,0,8732,'body',0,1710,923,1716,1360955738,1,1717),(197,18,105,0,8733,'body',0,1834,924,1717,1360955738,1,1710),(197,18,105,0,8734,'body',0,1694,925,1710,1360955738,1,1834),(197,18,105,0,8735,'body',0,1641,926,1834,1360955738,1,1694),(197,18,105,0,8736,'body',0,1695,927,1694,1360955738,1,1641),(197,18,105,0,8737,'body',0,1812,928,1641,1360955738,1,1695),(197,18,105,0,8738,'body',0,2021,929,1695,1360955738,1,1812),(197,18,105,0,8739,'body',0,2249,930,1812,1360955738,1,2021),(197,18,105,0,8740,'body',0,1681,931,2021,1360955738,1,2249),(197,18,105,0,8741,'body',0,2240,932,2249,1360955738,1,1681),(197,18,105,0,8742,'body',0,2250,933,1681,1360955738,1,2240),(197,18,105,0,8743,'body',0,1647,934,2240,1360955738,1,2250),(197,18,105,0,8744,'body',0,2251,935,2250,1360955738,1,1647),(197,18,105,0,8745,'body',0,1717,936,1647,1360955738,1,2251),(197,18,105,0,8746,'body',0,1850,937,2251,1360955738,1,1717),(197,18,105,0,8747,'body',0,2096,938,1717,1360955738,1,1850),(197,18,105,0,8748,'body',0,1641,939,1850,1360955738,1,2096),(197,18,105,0,8749,'body',0,2252,940,2096,1360955738,1,1641),(197,18,105,0,8750,'body',0,1694,941,1641,1360955738,1,2252),(197,18,105,0,8751,'body',0,1699,942,2252,1360955738,1,1694),(197,18,105,0,8752,'body',0,1717,943,1694,1360955738,1,1699),(197,18,105,0,8753,'body',0,2253,944,1699,1360955738,1,1717),(197,18,105,0,8754,'body',0,1706,945,1717,1360955738,1,2253),(197,18,105,0,8755,'body',0,2254,946,2253,1360955738,1,1706),(197,18,105,0,8756,'body',0,1887,947,1706,1360955738,1,2254),(197,18,105,0,8757,'body',0,1665,948,2254,1360955738,1,1887),(197,18,105,0,8758,'body',0,1700,949,1887,1360955738,1,1665),(197,18,105,0,8759,'body',0,1758,950,1665,1360955738,1,1700),(197,18,105,0,8760,'body',0,2045,951,1700,1360955738,1,1758),(197,18,105,0,8761,'body',0,1677,952,1758,1360955738,1,2045),(197,18,105,0,8762,'body',0,1906,953,2045,1360955738,1,1677),(197,18,105,0,8763,'body',0,816,954,1677,1360955738,1,1906),(197,18,105,0,8764,'body',0,1778,955,1906,1360955738,1,816),(197,18,105,0,8765,'body',0,1701,956,816,1360955738,1,1778),(197,18,105,0,8766,'body',0,1679,957,1778,1360955738,1,1701),(197,18,105,0,8767,'body',0,2255,958,1701,1360955738,1,1679),(197,18,105,0,8768,'body',0,1812,959,1679,1360955738,1,2255),(197,18,105,0,8769,'body',0,1647,960,2255,1360955738,1,1812),(197,18,105,0,8770,'body',0,1704,961,1812,1360955738,1,1647),(197,18,105,0,8771,'body',0,1694,962,1647,1360955738,1,1704),(197,18,105,0,8772,'body',0,2070,963,1704,1360955738,1,1694),(197,18,105,0,8773,'body',0,1631,964,1694,1360955738,1,2070),(197,18,105,0,8774,'body',0,1632,965,2070,1360955738,1,1631),(197,18,105,0,8775,'body',0,1633,966,1631,1360955738,1,1632),(197,18,105,0,8776,'body',0,2256,967,1632,1360955738,1,1633),(197,18,105,0,8777,'body',0,2257,968,1633,1360955738,1,2256),(198,18,105,0,8778,'publication_date',1360955640,0,969,2256,1360955738,1,2257),(304,38,106,0,8779,'title',0,1630,0,0,1360955829,1,1629),(304,38,106,0,8780,'title',0,1631,1,1629,1360955829,1,1630),(304,38,106,0,8781,'title',0,1632,2,1630,1360955829,1,1631),(304,38,106,0,8782,'title',0,1633,3,1631,1360955829,1,1632),(304,38,106,0,8783,'title',0,1686,4,1632,1360955829,1,1633),(305,38,106,0,8784,'description',0,1628,5,1633,1360955829,1,1686),(305,38,106,0,8785,'description',0,2205,6,1686,1360955829,1,1628),(305,38,106,0,8786,'description',0,1717,7,1628,1360955829,1,2205),(305,38,106,0,8787,'description',0,1651,8,2205,1360955829,1,1717),(305,38,106,0,8788,'description',0,1911,9,1717,1360955829,1,1651),(305,38,106,0,8789,'description',0,1959,10,1651,1360955829,1,1911),(305,38,106,0,8790,'description',0,816,11,1911,1360955829,1,1959),(305,38,106,0,8791,'description',0,1915,12,1959,1360955829,1,816),(305,38,106,0,8792,'description',0,1651,13,816,1360955829,1,1915),(305,38,106,0,8793,'description',0,1840,14,1915,1360955829,1,1651),(305,38,106,0,8794,'description',0,1686,15,1651,1360955829,1,1840),(305,38,106,0,8795,'description',0,1840,16,1840,1360955829,1,1686),(305,38,106,0,8796,'description',0,1966,17,1686,1360955829,1,1840),(305,38,106,0,8797,'description',0,1635,18,1840,1360955829,1,1966),(305,38,106,0,8798,'description',0,1631,19,1966,1360955829,1,1635),(305,38,106,0,8799,'description',0,1632,20,1635,1360955829,1,1631),(305,38,106,0,8800,'description',0,1633,21,1631,1360955829,1,1632),(305,38,106,0,8801,'description',0,1629,22,1632,1360955829,1,1633),(306,38,106,0,8802,'',0,1630,23,1633,1360955829,1,1629),(306,38,106,0,8803,'',0,1631,24,1629,1360955829,1,1630),(306,38,106,0,8804,'',0,1632,25,1630,1360955829,1,1631),(306,38,106,0,8805,'',0,1633,26,1631,1360955829,1,1632),(306,38,106,0,8806,'',0,1634,27,1632,1360955829,1,1633),(306,38,106,0,8807,'',0,1635,28,1633,1360955829,1,1634),(306,38,106,0,8808,'',0,1636,29,1634,1360955829,1,1635),(306,38,106,0,8809,'',0,1637,30,1635,1360955829,1,1636),(306,38,106,0,8810,'',0,1638,31,1636,1360955829,1,1637),(306,38,106,0,8811,'',0,1639,32,1637,1360955829,1,1638),(306,38,106,0,8812,'',0,814,33,1638,1360955829,1,1639),(306,38,106,0,8813,'',0,1640,34,1639,1360955829,1,814),(306,38,106,0,8814,'',0,1641,35,814,1360955829,1,1640),(306,38,106,0,8815,'',0,1642,36,1640,1360955829,1,1641),(306,38,106,0,8816,'',0,1643,37,1641,1360955829,1,1642),(306,38,106,0,8817,'',0,1644,38,1642,1360955829,1,1643),(306,38,106,0,8818,'',0,1643,39,1643,1360955829,1,1644),(306,38,106,0,8819,'',0,1645,40,1644,1360955829,1,1643),(306,38,106,0,8820,'',0,814,41,1643,1360955829,1,1645),(306,38,106,0,8821,'',0,1646,42,1645,1360955829,1,814),(306,38,106,0,8822,'',0,1647,43,814,1360955829,1,1646),(306,38,106,0,8823,'',0,1648,44,1646,1360955829,1,1647),(306,38,106,0,8824,'',0,1645,45,1647,1360955829,1,1648),(306,38,106,0,8825,'',0,1629,46,1648,1360955829,1,1645),(306,38,106,0,8826,'',0,1630,47,1645,1360955829,1,1629),(306,38,106,0,8827,'',0,1631,48,1629,1360955829,1,1630),(306,38,106,0,8828,'',0,1632,49,1630,1360955829,1,1631),(306,38,106,0,8829,'',0,1649,50,1631,1360955829,1,1632),(306,38,106,0,8830,'',0,1633,51,1632,1360955829,1,1649),(306,38,106,0,8831,'',0,1650,52,1649,1360955829,1,1633),(306,38,106,0,8832,'',0,1651,53,1633,1360955829,1,1650),(306,38,106,0,8833,'',0,1652,54,1650,1360955829,1,1651),(306,38,106,0,8834,'',0,1653,55,1651,1360955829,1,1652),(306,38,106,0,8835,'',0,1654,56,1652,1360955829,1,1653),(306,38,106,0,8836,'',0,1631,57,1653,1360955829,1,1654),(306,38,106,0,8837,'',0,1655,58,1654,1360955829,1,1631),(306,38,106,0,8838,'',0,1656,59,1631,1360955829,1,1655),(306,38,106,0,8839,'',0,1657,60,1655,1360955829,1,1656),(306,38,106,0,8840,'',0,816,61,1656,1360955829,1,1657),(306,38,106,0,8841,'',0,1658,62,1657,1360955829,1,816),(306,38,106,0,8842,'',0,1635,63,816,1360955829,1,1658),(306,38,106,0,8843,'',0,1631,64,1658,1360955829,1,1635),(306,38,106,0,8844,'',0,1632,65,1635,1360955829,1,1631),(306,38,106,0,8845,'',0,1638,66,1631,1360955829,1,1632),(306,38,106,0,8846,'',0,1659,67,1632,1360955829,1,1638),(306,38,106,0,8847,'',0,1633,68,1638,1360955829,1,1659),(306,38,106,0,8848,'',0,1660,69,1659,1360955829,1,1633),(306,38,106,0,8849,'',0,1661,70,1633,1360955829,1,1660),(306,38,106,0,8850,'',0,1641,71,1660,1360955829,1,1661),(306,38,106,0,8851,'',0,1662,72,1661,1360955829,1,1641),(306,38,106,0,8852,'',0,1651,73,1641,1360955829,1,1662),(306,38,106,0,8853,'',0,1663,74,1662,1360955829,1,1651),(306,38,106,0,8854,'',0,1664,75,1651,1360955829,1,1663),(306,38,106,0,8855,'',0,1665,76,1663,1360955829,1,1664),(306,38,106,0,8856,'',0,1666,77,1664,1360955829,1,1665),(306,38,106,0,8857,'',0,1667,78,1665,1360955829,1,1666),(306,38,106,0,8858,'',0,1668,79,1666,1360955829,1,1667),(306,38,106,0,8859,'',0,1669,80,1667,1360955829,1,1668),(306,38,106,0,8860,'',0,1670,81,1668,1360955829,1,1669),(306,38,106,0,8861,'',0,1671,82,1669,1360955829,1,1670),(306,38,106,0,8862,'',0,1664,83,1670,1360955829,1,1671),(306,38,106,0,8863,'',0,1672,84,1671,1360955829,1,1664),(306,38,106,0,8864,'',0,1662,85,1664,1360955829,1,1672),(306,38,106,0,8865,'',0,1673,86,1672,1360955829,1,1662),(306,38,106,0,8866,'',0,1674,87,1662,1360955829,1,1673),(306,38,106,0,8867,'',0,1675,88,1673,1360955829,1,1674),(306,38,106,0,8868,'',0,1635,89,1674,1360955829,1,1675),(306,38,106,0,8869,'',0,1638,90,1675,1360955829,1,1635),(306,38,106,0,8870,'',0,1676,91,1635,1360955829,1,1638),(306,38,106,0,8871,'',0,1677,92,1638,1360955829,1,1676),(306,38,106,0,8872,'',0,1678,93,1676,1360955829,1,1677),(306,38,106,0,8873,'',0,1679,94,1677,1360955829,1,1678),(306,38,106,0,8874,'',0,1651,95,1678,1360955829,1,1679),(306,38,106,0,8875,'',0,1680,96,1679,1360955829,1,1651),(306,38,106,0,8876,'',0,1641,97,1651,1360955829,1,1680),(306,38,106,0,8877,'',0,1681,98,1680,1360955829,1,1641),(306,38,106,0,8878,'',0,1682,99,1641,1360955829,1,1681),(306,38,106,0,8879,'',0,814,100,1681,1360955829,1,1682),(306,38,106,0,8880,'',0,1683,101,1682,1360955829,1,814),(306,38,106,0,8881,'',0,1684,102,814,1360955829,1,1683),(306,38,106,0,8882,'',0,814,103,1683,1360955829,1,1684),(306,38,106,0,8883,'',0,1685,104,1684,1360955829,1,814),(306,38,106,0,8884,'',0,1645,105,814,1360955829,1,1685),(306,38,106,0,8885,'',0,1686,106,1685,1360955829,1,1645),(306,38,106,0,8886,'',0,1628,107,1645,1360955829,1,1686),(306,38,106,0,8887,'',0,1645,108,1686,1360955829,1,1628),(306,38,106,0,8888,'',0,1687,109,1628,1360955829,1,1645),(306,38,106,0,8889,'',0,1688,110,1645,1360955829,1,1687),(306,38,106,0,8890,'',0,1689,111,1687,1360955829,1,1688),(306,38,106,0,8891,'',0,1662,112,1688,1360955829,1,1689),(306,38,106,0,8892,'',0,1641,113,1689,1360955829,1,1662),(306,38,106,0,8893,'',0,1690,114,1662,1360955829,1,1641),(306,38,106,0,8894,'',0,1691,115,1641,1360955829,1,1690),(306,38,106,0,8895,'',0,1631,116,1690,1360955829,1,1691),(306,38,106,0,8896,'',0,1632,117,1691,1360955829,1,1631),(306,38,106,0,8897,'',0,1692,118,1631,1360955829,1,1632),(306,38,106,0,8898,'',0,1693,119,1632,1360955829,1,1692),(306,38,106,0,8899,'',0,1694,120,1692,1360955829,1,1693),(306,38,106,0,8900,'',0,1641,121,1693,1360955829,1,1694),(306,38,106,0,8901,'',0,1695,122,1694,1360955829,1,1641),(306,38,106,0,8902,'',0,1643,123,1641,1360955829,1,1695),(306,38,106,0,8903,'',0,1696,124,1695,1360955829,1,1643),(306,38,106,0,8904,'',0,1641,125,1643,1360955829,1,1696),(306,38,106,0,8905,'',0,1697,126,1696,1360955829,1,1641),(306,38,106,0,8906,'',0,1694,127,1641,1360955829,1,1697),(306,38,106,0,8907,'',0,1698,128,1697,1360955829,1,1694),(306,38,106,0,8908,'',0,1696,129,1694,1360955829,1,1698),(306,38,106,0,8909,'',0,1698,130,1698,1360955829,1,1696),(306,38,106,0,8910,'',0,1699,131,1696,1360955829,1,1698),(306,38,106,0,8911,'',0,1700,132,1698,1360955829,1,1699),(306,38,106,0,8912,'',0,1693,133,1699,1360955829,1,1700),(306,38,106,0,8913,'',0,1635,134,1700,1360955829,1,1693),(306,38,106,0,8914,'',0,1641,135,1693,1360955829,1,1635),(306,38,106,0,8915,'',0,1627,136,1635,1360955829,1,1641),(306,38,106,0,8916,'',0,1701,137,1641,1360955829,1,1627),(306,38,106,0,8917,'',0,1679,138,1627,1360955829,1,1701),(306,38,106,0,8918,'',0,1702,139,1701,1360955829,1,1679),(306,38,106,0,8919,'',0,1643,140,1679,1360955829,1,1702),(306,38,106,0,8920,'',0,1703,141,1702,1360955829,1,1643),(306,38,106,0,8921,'',0,1647,142,1643,1360955829,1,1703),(306,38,106,0,8922,'',0,1704,143,1703,1360955829,1,1647),(306,38,106,0,8923,'',0,1705,144,1647,1360955829,1,1704),(306,38,106,0,8924,'',0,1706,145,1704,1360955829,1,1705),(306,38,106,0,8925,'',0,1707,146,1705,1360955829,1,1706),(306,38,106,0,8926,'',0,1708,147,1706,1360955829,1,1707),(306,38,106,0,8927,'',0,1682,148,1707,1360955829,1,1708),(306,38,106,0,8928,'',0,1709,149,1708,1360955829,1,1682),(306,38,106,0,8929,'',0,1700,150,1682,1360955829,1,1709),(306,38,106,0,8930,'',0,1710,151,1709,1360955829,1,1700),(306,38,106,0,8931,'',0,1711,152,1700,1360955829,1,1710),(306,38,106,0,8932,'',0,1712,153,1710,1360955829,1,1711),(306,38,106,0,8933,'',0,1631,154,1711,1360955829,1,1712),(306,38,106,0,8934,'',0,1632,155,1712,1360955829,1,1631),(306,38,106,0,8935,'',0,1633,156,1631,1360955829,1,1632),(306,38,106,0,8936,'',0,1713,157,1632,1360955829,1,1633),(306,38,106,0,8937,'',0,1651,158,1633,1360955829,1,1713),(306,38,106,0,8938,'',0,1714,159,1713,1360955829,1,1651),(306,38,106,0,8939,'',0,1683,160,1651,1360955829,1,1714),(306,38,106,0,8940,'',0,1715,161,1714,1360955829,1,1683),(306,38,106,0,8941,'',0,1716,162,1683,1360955829,1,1715),(306,38,106,0,8942,'',0,1717,163,1715,1360955829,1,1716),(306,38,106,0,8943,'',0,1718,164,1716,1360955829,1,1717),(306,38,106,0,8944,'',0,1719,165,1717,1360955829,1,1718),(306,38,106,0,8945,'',0,1720,166,1718,1360955829,1,1719),(306,38,106,0,8946,'',0,1682,167,1719,1360955829,1,1720),(306,38,106,0,8947,'',0,1631,168,1720,1360955829,1,1682),(306,38,106,0,8948,'',0,1632,169,1682,1360955829,1,1631),(306,38,106,0,8949,'',0,1633,170,1631,1360955829,1,1632),(306,38,106,0,8950,'',0,1717,171,1632,1360955829,1,1633),(306,38,106,0,8951,'',0,1721,172,1633,1360955829,1,1717),(306,38,106,0,8952,'',0,1722,173,1717,1360955829,1,1721),(306,38,106,0,8953,'',0,1677,174,1721,1360955829,1,1722),(306,38,106,0,8954,'',0,1723,175,1722,1360955829,1,1677),(306,38,106,0,8955,'',0,1645,176,1677,1360955829,1,1723),(306,38,106,0,8956,'',0,1631,177,1723,1360955829,1,1645),(306,38,106,0,8957,'',0,1679,178,1645,1360955829,1,1631),(306,38,106,0,8958,'',0,1724,179,1631,1360955829,1,1679),(306,38,106,0,8959,'',0,1725,180,1679,1360955829,1,1724),(306,38,106,0,8960,'',0,1726,181,1724,1360955829,1,1725),(306,38,106,0,8961,'',0,1727,182,1725,1360955829,1,1726),(306,38,106,0,8962,'',0,1728,183,1726,1360955829,1,1727),(306,38,106,0,8963,'',0,1729,184,1727,1360955829,1,1728),(306,38,106,0,8964,'',0,814,185,1728,1360955829,1,1729),(306,38,106,0,8965,'',0,1730,186,1729,1360955829,1,814),(306,38,106,0,8966,'',0,1731,187,814,1360955829,1,1730),(306,38,106,0,8967,'',0,814,188,1730,1360955829,1,1731),(306,38,106,0,8968,'',0,1649,189,1731,1360955829,1,814),(306,38,106,0,8969,'',0,1732,190,814,1360955829,1,1649),(306,38,106,0,8970,'',0,1733,191,1649,1360955829,1,1732),(306,38,106,0,8971,'',0,1677,192,1732,1360955829,1,1733),(306,38,106,0,8972,'',0,1686,193,1733,1360955829,1,1677),(306,38,106,0,8973,'',0,1683,194,1677,1360955829,1,1686),(306,38,106,0,8974,'',0,1734,195,1686,1360955829,1,1683),(306,38,106,0,8975,'',0,1681,196,1683,1360955829,1,1734),(306,38,106,0,8976,'',0,814,197,1734,1360955829,1,1681),(306,38,106,0,8977,'',0,1735,198,1681,1360955829,1,814),(306,38,106,0,8978,'',0,1736,199,814,1360955829,1,1735),(306,38,106,0,8979,'',0,1737,200,1735,1360955829,1,1736),(306,38,106,0,8980,'',0,1713,201,1736,1360955829,1,1737),(306,38,106,0,8981,'',0,1651,202,1737,1360955829,1,1713),(306,38,106,0,8982,'',0,1738,203,1713,1360955829,1,1651),(306,38,106,0,8983,'',0,1645,204,1651,1360955829,1,1738),(306,38,106,0,8984,'',0,814,205,1738,1360955829,1,1645),(306,38,106,0,8985,'',0,1739,206,1645,1360955829,1,814),(306,38,106,0,8986,'',0,1684,207,814,1360955829,1,1739),(306,38,106,0,8987,'',0,1740,208,1739,1360955829,1,1684),(306,38,106,0,8988,'',0,1645,209,1684,1360955829,1,1740),(306,38,106,0,8989,'',0,1741,210,1740,1360955829,1,1645),(306,38,106,0,8990,'',0,1742,211,1645,1360955829,1,1741),(306,38,106,0,8991,'',0,1743,212,1741,1360955829,1,1742),(306,38,106,0,8992,'',0,816,213,1742,1360955829,1,1743),(306,38,106,0,8993,'',0,1658,214,1743,1360955829,1,816),(306,38,106,0,8994,'',0,1647,215,816,1360955829,1,1658),(306,38,106,0,8995,'',0,1744,216,1658,1360955829,1,1647),(306,38,106,0,8996,'',0,1677,217,1647,1360955829,1,1744),(306,38,106,0,8997,'',0,1684,218,1744,1360955829,1,1677),(306,38,106,0,8998,'',0,1713,219,1677,1360955829,1,1684),(306,38,106,0,8999,'',0,1745,220,1684,1360955829,1,1713),(306,38,106,0,9000,'',0,1746,221,1713,1360955829,1,1745),(306,38,106,0,9001,'',0,814,222,1745,1360955829,1,1746),(306,38,106,0,9002,'',0,1633,223,1746,1360955829,1,814),(306,38,106,0,9003,'',0,1747,224,814,1360955829,1,1633),(306,38,106,0,9004,'',0,1645,225,1633,1360955829,1,1747),(306,38,106,0,9005,'',0,1631,226,1747,1360955829,1,1645),(306,38,106,0,9006,'',0,1633,227,1645,1360955829,1,1631),(306,38,106,0,9007,'',0,814,228,1631,1360955829,1,1633),(306,38,106,0,9008,'',0,1730,229,1633,1360955829,1,814),(306,38,106,0,9009,'',0,1747,230,814,1360955829,1,1730),(306,38,106,0,9010,'',0,1726,231,1730,1360955829,1,1747),(306,38,106,0,9011,'',0,1748,232,1747,1360955829,1,1726),(306,38,106,0,9012,'',0,1683,233,1726,1360955829,1,1748),(306,38,106,0,9013,'',0,1635,234,1748,1360955829,1,1683),(306,38,106,0,9014,'',0,1749,235,1683,1360955829,1,1635),(306,38,106,0,9015,'',0,1631,236,1635,1360955829,1,1749),(306,38,106,0,9016,'',0,1632,237,1749,1360955829,1,1631),(306,38,106,0,9017,'',0,1633,238,1631,1360955829,1,1632),(306,38,106,0,9018,'',0,1713,239,1632,1360955829,1,1633),(306,38,106,0,9019,'',0,1651,240,1633,1360955829,1,1713),(306,38,106,0,9020,'',0,1750,241,1713,1360955829,1,1651),(306,38,106,0,9021,'',0,1694,242,1651,1360955829,1,1750),(306,38,106,0,9022,'',0,1751,243,1750,1360955829,1,1694),(306,38,106,0,9023,'',0,1645,244,1694,1360955829,1,1751),(306,38,106,0,9024,'',0,814,245,1751,1360955829,1,1645),(306,38,106,0,9025,'',0,1752,246,1645,1360955829,1,814),(306,38,106,0,9026,'',0,1715,247,814,1360955829,1,1752),(306,38,106,0,9027,'',0,814,248,1752,1360955829,1,1715),(306,38,106,0,9028,'',0,1753,249,1715,1360955829,1,814),(306,38,106,0,9029,'',0,968,250,814,1360955829,1,1753),(306,38,106,0,9030,'',0,1754,251,1753,1360955829,1,968),(306,38,106,0,9031,'',0,1713,252,968,1360955829,1,1754),(306,38,106,0,9032,'',0,1677,253,1754,1360955829,1,1713),(306,38,106,0,9033,'',0,1755,254,1713,1360955829,1,1677),(306,38,106,0,9034,'',0,1651,255,1677,1360955829,1,1755),(306,38,106,0,9035,'',0,1756,256,1755,1360955829,1,1651),(306,38,106,0,9036,'',0,1645,257,1651,1360955829,1,1756),(306,38,106,0,9037,'',0,814,258,1756,1360955829,1,1645),(306,38,106,0,9038,'',0,1730,259,1645,1360955829,1,814),(306,38,106,0,9039,'',0,1757,260,814,1360955829,1,1730),(306,38,106,0,9040,'',0,1758,261,1730,1360955829,1,1757),(306,38,106,0,9041,'',0,1662,262,1757,1360955829,1,1758),(306,38,106,0,9042,'',0,1743,263,1758,1360955829,1,1662),(306,38,106,0,9043,'',0,1759,264,1662,1360955829,1,1743),(306,38,106,0,9044,'',0,1645,265,1743,1360955829,1,1759),(306,38,106,0,9045,'',0,814,266,1759,1360955829,1,1645),(306,38,106,0,9046,'',0,1760,267,1645,1360955829,1,814),(306,38,106,0,9047,'',0,1654,268,814,1360955829,1,1760),(306,38,106,0,9048,'',0,1631,269,1760,1360955829,1,1654),(306,38,106,0,9049,'',0,1632,270,1654,1360955829,1,1631),(306,38,106,0,9050,'',0,1761,271,1631,1360955829,1,1632),(306,38,106,0,9051,'',0,814,272,1632,1360955829,1,1761),(306,38,106,0,9052,'',0,1631,273,1761,1360955829,1,814),(306,38,106,0,9053,'',0,1632,274,814,1360955829,1,1631),(306,38,106,0,9054,'',0,1761,275,1631,1360955829,1,1632),(306,38,106,0,9055,'',0,1756,276,1632,1360955829,1,1761),(306,38,106,0,9056,'',0,1762,277,1761,1360955829,1,1756),(306,38,106,0,9057,'',0,1763,278,1756,1360955829,1,1762),(306,38,106,0,9058,'',0,1728,279,1762,1360955829,1,1763),(306,38,106,0,9059,'',0,1643,280,1763,1360955829,1,1728),(306,38,106,0,9060,'',0,1764,281,1728,1360955829,1,1643),(306,38,106,0,9061,'',0,1748,282,1643,1360955829,1,1764),(306,38,106,0,9062,'',0,1765,283,1764,1360955829,1,1748),(306,38,106,0,9063,'',0,1713,284,1748,1360955829,1,1765),(306,38,106,0,9064,'',0,1766,285,1765,1360955829,1,1713),(306,38,106,0,9065,'',0,1767,286,1713,1360955829,1,1766),(306,38,106,0,9066,'',0,1730,287,1766,1360955829,1,1767),(306,38,106,0,9067,'',0,1768,288,1767,1360955829,1,1730),(306,38,106,0,9068,'',0,1631,289,1730,1360955829,1,1768),(306,38,106,0,9069,'',0,1769,290,1768,1360955829,1,1631),(306,38,106,0,9070,'',0,1726,291,1631,1360955829,1,1769),(306,38,106,0,9071,'',0,1728,292,1769,1360955829,1,1726),(306,38,106,0,9072,'',0,1729,293,1726,1360955829,1,1728),(306,38,106,0,9073,'',0,1770,294,1728,1360955829,1,1729),(306,38,106,0,9074,'',0,1769,295,1729,1360955829,1,1770),(306,38,106,0,9075,'',0,965,296,1770,1360955829,1,1769),(306,38,106,0,9076,'',0,963,297,1769,1360955829,1,965),(306,38,106,0,9077,'',0,1728,298,965,1360955829,1,963),(306,38,106,0,9078,'',0,1729,299,963,1360955829,1,1728),(306,38,106,0,9079,'',0,1771,300,1728,1360955829,1,1729),(306,38,106,0,9080,'',0,963,301,1729,1360955829,1,1771),(306,38,106,0,9081,'',0,1772,302,1771,1360955829,1,963),(306,38,106,0,9082,'',0,1728,303,963,1360955829,1,1772),(306,38,106,0,9083,'',0,1729,304,1772,1360955829,1,1728),(306,38,106,0,9084,'',0,1773,305,1728,1360955829,1,1729),(306,38,106,0,9085,'',0,1631,306,1729,1360955829,1,1773),(306,38,106,0,9086,'',0,1632,307,1773,1360955829,1,1631),(306,38,106,0,9087,'',0,1774,308,1631,1360955829,1,1632),(306,38,106,0,9088,'',0,1713,309,1632,1360955829,1,1774),(306,38,106,0,9089,'',0,1728,310,1774,1360955829,1,1713),(306,38,106,0,9090,'',0,1729,311,1713,1360955829,1,1728),(306,38,106,0,9091,'',0,1730,312,1728,1360955829,1,1729),(306,38,106,0,9092,'',0,1679,313,1729,1360955829,1,1730),(306,38,106,0,9093,'',0,1774,314,1730,1360955829,1,1679),(306,38,106,0,9094,'',0,814,315,1679,1360955829,1,1774),(306,38,106,0,9095,'',0,1724,316,1774,1360955829,1,814),(306,38,106,0,9096,'',0,1645,317,814,1360955829,1,1724),(306,38,106,0,9097,'',0,814,318,1724,1360955829,1,1645),(306,38,106,0,9098,'',0,1775,319,1645,1360955829,1,814),(306,38,106,0,9099,'',0,814,320,814,1360955829,1,1775),(306,38,106,0,9100,'',0,1631,321,1775,1360955829,1,814),(306,38,106,0,9101,'',0,1776,322,814,1360955829,1,1631),(306,38,106,0,9102,'',0,1777,323,1631,1360955829,1,1776),(306,38,106,0,9103,'',0,1713,324,1776,1360955829,1,1777),(306,38,106,0,9104,'',0,1778,325,1777,1360955829,1,1713),(306,38,106,0,9105,'',0,1779,326,1713,1360955829,1,1778),(306,38,106,0,9106,'',0,1767,327,1778,1360955829,1,1779),(306,38,106,0,9107,'',0,1651,328,1779,1360955829,1,1767),(306,38,106,0,9108,'',0,1780,329,1767,1360955829,1,1651),(306,38,106,0,9109,'',0,1781,330,1651,1360955829,1,1780),(306,38,106,0,9110,'',0,1782,331,1780,1360955829,1,1781),(306,38,106,0,9111,'',0,1689,332,1781,1360955829,1,1782),(306,38,106,0,9112,'',0,1783,333,1782,1360955829,1,1689),(306,38,106,0,9113,'',0,1784,334,1689,1360955829,1,1783),(306,38,106,0,9114,'',0,1635,335,1783,1360955829,1,1784),(306,38,106,0,9115,'',0,1785,336,1784,1360955829,1,1635),(306,38,106,0,9116,'',0,1786,337,1635,1360955829,1,1785),(306,38,106,0,9117,'',0,816,338,1785,1360955829,1,1786),(306,38,106,0,9118,'',0,1692,339,1786,1360955829,1,816),(306,38,106,0,9119,'',0,1686,340,816,1360955829,1,1692),(306,38,106,0,9120,'',0,1713,341,1692,1360955829,1,1686),(306,38,106,0,9121,'',0,1787,342,1686,1360955829,1,1713),(306,38,106,0,9122,'',0,1788,343,1713,1360955829,1,1787),(306,38,106,0,9123,'',0,1789,344,1787,1360955829,1,1788),(306,38,106,0,9124,'',0,1790,345,1788,1360955829,1,1789),(306,38,106,0,9125,'',0,1791,346,1789,1360955829,1,1790),(306,38,106,0,9126,'',0,1717,347,1790,1360955829,1,1791),(306,38,106,0,9127,'',0,1710,348,1791,1360955829,1,1717),(306,38,106,0,9128,'',0,1792,349,1717,1360955829,1,1710),(306,38,106,0,9129,'',0,1793,350,1710,1360955829,1,1792),(306,38,106,0,9130,'',0,1794,351,1792,1360955829,1,1793),(306,38,106,0,9131,'',0,1712,352,1793,1360955829,1,1794),(306,38,106,0,9132,'',0,1724,353,1794,1360955829,1,1712),(306,38,106,0,9133,'',0,1795,354,1712,1360955829,1,1724),(306,38,106,0,9134,'',0,1650,355,1724,1360955829,1,1795),(306,38,106,0,9135,'',0,1796,356,1795,1360955829,1,1650),(306,38,106,0,9136,'',0,1647,357,1650,1360955829,1,1796),(306,38,106,0,9137,'',0,1797,358,1796,1360955829,1,1647),(306,38,106,0,9138,'',0,1798,359,1647,1360955829,1,1797),(306,38,106,0,9139,'',0,1799,360,1797,1360955829,1,1798),(306,38,106,0,9140,'',0,1667,361,1798,1360955829,1,1799),(306,38,106,0,9141,'',0,1664,362,1799,1360955829,1,1667),(306,38,106,0,9142,'',0,1654,363,1667,1360955829,1,1664),(306,38,106,0,9143,'',0,1649,364,1664,1360955829,1,1654),(306,38,106,0,9144,'',0,1641,365,1654,1360955829,1,1649),(306,38,106,0,9145,'',0,1649,366,1649,1360955829,1,1641),(306,38,106,0,9146,'',0,1635,367,1641,1360955829,1,1649),(306,38,106,0,9147,'',0,1800,368,1649,1360955829,1,1635),(306,38,106,0,9148,'',0,1748,369,1635,1360955829,1,1800),(306,38,106,0,9149,'',0,1645,370,1800,1360955829,1,1748),(306,38,106,0,9150,'',0,814,371,1748,1360955829,1,1645),(306,38,106,0,9151,'',0,1801,372,1645,1360955829,1,814),(306,38,106,0,9152,'',0,1802,373,814,1360955829,1,1801),(306,38,106,0,9153,'',0,1677,374,1801,1360955829,1,1802),(306,38,106,0,9154,'',0,1649,375,1802,1360955829,1,1677),(306,38,106,0,9155,'',0,1633,376,1677,1360955829,1,1649),(306,38,106,0,9156,'',0,1803,377,1649,1360955829,1,1633),(306,38,106,0,9157,'',0,1726,378,1633,1360955829,1,1803),(306,38,106,0,9158,'',0,1787,379,1803,1360955829,1,1726),(306,38,106,0,9159,'',0,1788,380,1726,1360955829,1,1787),(306,38,106,0,9160,'',0,814,381,1787,1360955829,1,1788),(306,38,106,0,9161,'',0,1730,382,1788,1360955829,1,814),(306,38,106,0,9162,'',0,1804,383,814,1360955829,1,1730),(306,38,106,0,9163,'',0,1762,384,1730,1360955829,1,1804),(306,38,106,0,9164,'',0,1651,385,1804,1360955829,1,1762),(306,38,106,0,9165,'',0,1787,386,1762,1360955829,1,1651),(306,38,106,0,9166,'',0,1805,387,1651,1360955829,1,1787),(306,38,106,0,9167,'',0,1647,388,1787,1360955829,1,1805),(306,38,106,0,9168,'',0,1651,389,1805,1360955829,1,1647),(306,38,106,0,9169,'',0,1680,390,1647,1360955829,1,1651),(306,38,106,0,9170,'',0,1645,391,1651,1360955829,1,1680),(306,38,106,0,9171,'',0,1806,392,1680,1360955829,1,1645),(306,38,106,0,9172,'',0,1807,393,1645,1360955829,1,1806),(306,38,106,0,9173,'',0,1627,394,1806,1360955829,1,1807),(306,38,106,0,9174,'',0,1729,395,1807,1360955829,1,1627),(306,38,106,0,9175,'',0,1808,396,1627,1360955829,1,1729),(306,38,106,0,9176,'',0,1651,397,1729,1360955829,1,1808),(306,38,106,0,9177,'',0,1809,398,1808,1360955829,1,1651),(306,38,106,0,9178,'',0,1645,399,1651,1360955829,1,1809),(306,38,106,0,9179,'',0,1790,400,1809,1360955829,1,1645),(306,38,106,0,9180,'',0,1631,401,1645,1360955829,1,1790),(306,38,106,0,9181,'',0,1692,402,1790,1360955829,1,1631),(306,38,106,0,9182,'',0,1642,403,1631,1360955829,1,1692),(306,38,106,0,9183,'',0,1810,404,1692,1360955829,1,1642),(306,38,106,0,9184,'',0,1811,405,1642,1360955829,1,1810),(306,38,106,0,9185,'',0,1629,406,1810,1360955829,1,1811),(306,38,106,0,9186,'',0,1812,407,1811,1360955829,1,1629),(306,38,106,0,9187,'',0,814,408,1629,1360955829,1,1812),(306,38,106,0,9188,'',0,1813,409,1812,1360955829,1,814),(306,38,106,0,9189,'',0,1814,410,814,1360955829,1,1813),(306,38,106,0,9190,'',0,1725,411,1813,1360955829,1,1814),(306,38,106,0,9191,'',0,1647,412,1814,1360955829,1,1725),(306,38,106,0,9192,'',0,1815,413,1725,1360955829,1,1647),(306,38,106,0,9193,'',0,1811,414,1647,1360955829,1,1815),(306,38,106,0,9194,'',0,1816,415,1815,1360955829,1,1811),(306,38,106,0,9195,'',0,814,416,1811,1360955829,1,1816),(306,38,106,0,9196,'',0,1817,417,1816,1360955829,1,814),(306,38,106,0,9197,'',0,1715,418,814,1360955829,1,1817),(306,38,106,0,9198,'',0,1818,419,1817,1360955829,1,1715),(306,38,106,0,9199,'',0,1654,420,1715,1360955829,1,1818),(306,38,106,0,9200,'',0,1651,421,1818,1360955829,1,1654),(306,38,106,0,9201,'',0,1819,422,1654,1360955829,1,1651),(306,38,106,0,9202,'',0,1820,423,1651,1360955829,1,1819),(306,38,106,0,9203,'',0,1717,424,1819,1360955829,1,1820),(306,38,106,0,9204,'',0,1710,425,1820,1360955829,1,1717),(306,38,106,0,9205,'',0,1815,426,1717,1360955829,1,1710),(306,38,106,0,9206,'',0,1821,427,1710,1360955829,1,1815),(306,38,106,0,9207,'',0,1641,428,1815,1360955829,1,1821),(306,38,106,0,9208,'',0,1822,429,1821,1360955829,1,1641),(306,38,106,0,9209,'',0,1692,430,1641,1360955829,1,1822),(306,38,106,0,9210,'',0,1630,431,1822,1360955829,1,1692),(306,38,106,0,9211,'',0,1823,432,1692,1360955829,1,1630),(306,38,106,0,9212,'',0,1824,433,1630,1360955829,1,1823),(306,38,106,0,9213,'',0,1812,434,1823,1360955829,1,1824),(306,38,106,0,9214,'',0,1730,435,1824,1360955829,1,1812),(306,38,106,0,9215,'',0,1825,436,1812,1360955829,1,1730),(306,38,106,0,9216,'',0,1790,437,1730,1360955829,1,1825),(306,38,106,0,9217,'',0,1679,438,1825,1360955829,1,1790),(306,38,106,0,9218,'',0,1651,439,1790,1360955829,1,1679),(306,38,106,0,9219,'',0,1826,440,1679,1360955829,1,1651),(306,38,106,0,9220,'',0,1827,441,1651,1360955829,1,1826),(306,38,106,0,9221,'',0,1828,442,1826,1360955829,1,1827),(306,38,106,0,9222,'',0,1812,443,1827,1360955829,1,1828),(306,38,106,0,9223,'',0,1677,444,1828,1360955829,1,1812),(306,38,106,0,9224,'',0,1829,445,1812,1360955829,1,1677),(306,38,106,0,9225,'',0,1830,446,1677,1360955829,1,1829),(306,38,106,0,9226,'',0,1831,447,1829,1360955829,1,1830),(306,38,106,0,9227,'',0,1631,448,1830,1360955829,1,1831),(306,38,106,0,9228,'',0,1632,449,1831,1360955829,1,1631),(306,38,106,0,9229,'',0,1633,450,1631,1360955829,1,1632),(306,38,106,0,9230,'',0,1832,451,1632,1360955829,1,1633),(306,38,106,0,9231,'',0,1667,452,1633,1360955829,1,1832),(306,38,106,0,9232,'',0,1651,453,1832,1360955829,1,1667),(306,38,106,0,9233,'',0,1683,454,1667,1360955829,1,1651),(306,38,106,0,9234,'',0,1715,455,1651,1360955829,1,1683),(306,38,106,0,9235,'',0,1833,456,1683,1360955829,1,1715),(306,38,106,0,9236,'',0,1709,457,1715,1360955829,1,1833),(306,38,106,0,9237,'',0,1831,458,1833,1360955829,1,1709),(306,38,106,0,9238,'',0,1834,459,1709,1360955829,1,1831),(306,38,106,0,9239,'',0,1835,460,1831,1360955829,1,1834),(306,38,106,0,9240,'',0,1836,461,1834,1360955829,1,1835),(306,38,106,0,9241,'',0,1744,462,1835,1360955829,1,1836),(306,38,106,0,9242,'',0,1748,463,1836,1360955829,1,1744),(306,38,106,0,9243,'',0,1645,464,1744,1360955829,1,1748),(306,38,106,0,9244,'',0,814,465,1748,1360955829,1,1645),(306,38,106,0,9245,'',0,1837,466,1645,1360955829,1,814),(306,38,106,0,9246,'',0,1726,467,814,1360955829,1,1837),(306,38,106,0,9247,'',0,1838,468,1837,1360955829,1,1726),(306,38,106,0,9248,'',0,1641,469,1726,1360955829,1,1838),(306,38,106,0,9249,'',0,1839,470,1838,1360955829,1,1641),(306,38,106,0,9250,'',0,1651,471,1641,1360955829,1,1839),(306,38,106,0,9251,'',0,1840,472,1839,1360955829,1,1651),(306,38,106,0,9252,'',0,1635,473,1651,1360955829,1,1840),(306,38,106,0,9253,'',0,1631,474,1840,1360955829,1,1635),(306,38,106,0,9254,'',0,1632,475,1635,1360955829,1,1631),(306,38,106,0,9255,'',0,1633,476,1631,1360955829,1,1632),(306,38,106,0,9256,'',0,814,477,1632,1360955829,1,1633),(306,38,106,0,9257,'',0,1841,478,1633,1360955829,1,814),(306,38,106,0,9258,'',0,1842,479,814,1360955829,1,1841),(306,38,106,0,9259,'',0,1647,480,1841,1360955829,1,1842),(306,38,106,0,9260,'',0,1651,481,1842,1360955829,1,1647),(306,38,106,0,9261,'',0,1680,482,1647,1360955829,1,1651),(306,38,106,0,9262,'',0,1645,483,1651,1360955829,1,1680),(306,38,106,0,9263,'',0,814,484,1680,1360955829,1,1645),(306,38,106,0,9264,'',0,1843,485,1645,1360955829,1,814),(306,38,106,0,9265,'',0,1684,486,814,1360955829,1,1843),(306,38,106,0,9266,'',0,1725,487,1843,1360955829,1,1684),(306,38,106,0,9267,'',0,1844,488,1684,1360955829,1,1725),(306,38,106,0,9268,'',0,1845,489,1725,1360955829,1,1844),(306,38,106,0,9269,'',0,1846,490,1844,1360955829,1,1845),(306,38,106,0,9270,'',0,1847,491,1845,1360955829,1,1846),(306,38,106,0,9271,'',0,1848,492,1846,1360955829,1,1847),(306,38,106,0,9272,'',0,1742,493,1847,1360955829,1,1848),(306,38,106,0,9273,'',0,1834,494,1848,1360955829,1,1742),(306,38,106,0,9274,'',0,1835,495,1742,1360955829,1,1834),(306,38,106,0,9275,'',0,1763,496,1834,1360955829,1,1835),(306,38,106,0,9276,'',0,1849,497,1835,1360955829,1,1763),(306,38,106,0,9277,'',0,1812,498,1763,1360955829,1,1849),(306,38,106,0,9278,'',0,814,499,1849,1360955829,1,1812),(306,38,106,0,9279,'',0,1683,500,1812,1360955829,1,814),(306,38,106,0,9280,'',0,1757,501,814,1360955829,1,1683),(306,38,106,0,9281,'',0,1825,502,1683,1360955829,1,1757),(306,38,106,0,9282,'',0,816,503,1757,1360955829,1,1825),(306,38,106,0,9283,'',0,1778,504,1825,1360955829,1,816),(306,38,106,0,9284,'',0,1717,505,816,1360955829,1,1778),(306,38,106,0,9285,'',0,1850,506,1778,1360955829,1,1717),(306,38,106,0,9286,'',0,1662,507,1717,1360955829,1,1850),(306,38,106,0,9287,'',0,1851,508,1850,1360955829,1,1662),(306,38,106,0,9288,'',0,1651,509,1662,1360955829,1,1851),(306,38,106,0,9289,'',0,1680,510,1851,1360955829,1,1651),(306,38,106,0,9290,'',0,1645,511,1651,1360955829,1,1680),(306,38,106,0,9291,'',0,814,512,1680,1360955829,1,1645),(306,38,106,0,9292,'',0,1631,513,1645,1360955829,1,814),(306,38,106,0,9293,'',0,1632,514,814,1360955829,1,1631),(306,38,106,0,9294,'',0,1761,515,1631,1360955829,1,1632),(306,38,106,0,9295,'',0,1627,516,1632,1360955829,1,1761),(306,38,106,0,9296,'',0,1635,517,1761,1360955829,1,1627),(306,38,106,0,9297,'',0,1852,518,1627,1360955829,1,1635),(306,38,106,0,9298,'',0,1853,519,1635,1360955829,1,1852),(306,38,106,0,9299,'',0,1854,520,1852,1360955829,1,1853),(306,38,106,0,9300,'',0,1635,521,1853,1360955829,1,1854),(306,38,106,0,9301,'',0,1855,522,1854,1360955829,1,1635),(306,38,106,0,9302,'',0,1748,523,1635,1360955829,1,1855),(306,38,106,0,9303,'',0,1645,524,1855,1360955829,1,1748),(306,38,106,0,9304,'',0,814,525,1748,1360955829,1,1645),(306,38,106,0,9305,'',0,1856,526,1645,1360955829,1,814),(306,38,106,0,9306,'',0,1631,527,814,1360955829,1,1856),(306,38,106,0,9307,'',0,1632,528,1856,1360955829,1,1631),(306,38,106,0,9308,'',0,1627,529,1631,1360955829,1,1632),(306,38,106,0,9309,'',0,1778,530,1632,1360955829,1,1627),(306,38,106,0,9310,'',0,1857,531,1627,1360955829,1,1778),(306,38,106,0,9311,'',0,1830,532,1778,1360955829,1,1857),(306,38,106,0,9312,'',0,1631,533,1857,1360955829,1,1830),(306,38,106,0,9313,'',0,1632,534,1830,1360955829,1,1631),(306,38,106,0,9314,'',0,1858,535,1631,1360955829,1,1632),(306,38,106,0,9315,'',0,1859,536,1632,1360955829,1,1858),(306,38,106,0,9316,'',0,1830,537,1858,1360955829,1,1859),(306,38,106,0,9317,'',0,1809,538,1859,1360955829,1,1830),(306,38,106,0,9318,'',0,1645,539,1830,1360955829,1,1809),(306,38,106,0,9319,'',0,1631,540,1809,1360955829,1,1645),(306,38,106,0,9320,'',0,1632,541,1645,1360955829,1,1631),(306,38,106,0,9321,'',0,1633,542,1631,1360955829,1,1632),(306,38,106,0,9322,'',0,1860,543,1632,1360955829,1,1633),(306,38,106,0,9323,'',0,1861,544,1633,1360955829,1,1860),(306,38,106,0,9324,'',0,814,545,1860,1360955829,1,1861),(306,38,106,0,9325,'',0,1862,546,1861,1360955829,1,814),(306,38,106,0,9326,'',0,1683,547,814,1360955829,1,1862),(306,38,106,0,9327,'',0,1730,548,1862,1360955829,1,1683),(306,38,106,0,9328,'',0,1863,549,1683,1360955829,1,1730),(306,38,106,0,9329,'',0,1776,550,1730,1360955829,1,1863),(306,38,106,0,9330,'',0,1686,551,1863,1360955829,1,1776),(306,38,106,0,9331,'',0,1791,552,1776,1360955829,1,1686),(306,38,106,0,9332,'',0,1677,553,1686,1360955829,1,1791),(306,38,106,0,9333,'',0,814,554,1791,1360955829,1,1677),(306,38,106,0,9334,'',0,1715,555,1677,1360955829,1,814),(306,38,106,0,9335,'',0,1864,556,814,1360955829,1,1715),(306,38,106,0,9336,'',0,1667,557,1715,1360955829,1,1864),(306,38,106,0,9337,'',0,1865,558,1864,1360955829,1,1667),(306,38,106,0,9338,'',0,1706,559,1667,1360955829,1,1865),(306,38,106,0,9339,'',0,1866,560,1865,1360955829,1,1706),(306,38,106,0,9340,'',0,1830,561,1706,1360955829,1,1866),(306,38,106,0,9341,'',0,1790,562,1866,1360955829,1,1830),(306,38,106,0,9342,'',0,1867,563,1830,1360955829,1,1790),(306,38,106,0,9343,'',0,1868,564,1790,1360955829,1,1867),(306,38,106,0,9344,'',0,1641,565,1867,1360955829,1,1868),(306,38,106,0,9345,'',0,814,566,1868,1360955829,1,1641),(306,38,106,0,9346,'',0,1683,567,1641,1360955829,1,814),(306,38,106,0,9347,'',0,1869,568,814,1360955829,1,1683),(306,38,106,0,9348,'',0,1665,569,1683,1360955829,1,1869),(306,38,106,0,9349,'',0,1790,570,1869,1360955829,1,1665),(306,38,106,0,9350,'',0,1870,571,1665,1360955829,1,1790),(306,38,106,0,9351,'',0,1791,572,1790,1360955829,1,1870),(306,38,106,0,9352,'',0,1677,573,1870,1360955829,1,1791),(306,38,106,0,9353,'',0,1678,574,1791,1360955829,1,1677),(306,38,106,0,9354,'',0,1726,575,1677,1360955829,1,1678),(306,38,106,0,9355,'',0,1643,576,1678,1360955829,1,1726),(306,38,106,0,9356,'',0,1871,577,1726,1360955829,1,1643),(306,38,106,0,9357,'',0,1755,578,1643,1360955829,1,1871),(306,38,106,0,9358,'',0,1717,579,1871,1360955829,1,1755),(306,38,106,0,9359,'',0,1872,580,1755,1360955829,1,1717),(306,38,106,0,9360,'',0,1641,581,1717,1360955829,1,1872),(306,38,106,0,9361,'',0,1873,582,1872,1360955829,1,1641),(306,38,106,0,9362,'',0,1874,583,1641,1360955829,1,1873),(306,38,106,0,9363,'',0,1655,584,1873,1360955829,1,1874),(306,38,106,0,9364,'',0,1875,585,1874,1360955829,1,1655),(306,38,106,0,9365,'',0,1635,586,1655,1360955829,1,1875),(306,38,106,0,9366,'',0,1643,587,1875,1360955829,1,1635),(306,38,106,0,9367,'',0,1876,588,1635,1360955829,1,1643),(306,38,106,0,9368,'',0,1877,589,1643,1360955829,1,1876),(306,38,106,0,9369,'',0,1878,590,1876,1360955829,1,1877),(306,38,106,0,9370,'',0,1717,591,1877,1360955829,1,1878),(306,38,106,0,9371,'',0,1799,592,1878,1360955829,1,1717),(306,38,106,0,9372,'',0,1667,593,1717,1360955829,1,1799),(306,38,106,0,9373,'',0,1742,594,1799,1360955829,1,1667),(306,38,106,0,9374,'',0,1641,595,1667,1360955829,1,1742),(306,38,106,0,9375,'',0,1879,596,1742,1360955829,1,1641),(306,38,106,0,9376,'',0,1860,597,1641,1360955829,1,1879),(306,38,106,0,9377,'',0,1778,598,1879,1360955829,1,1860),(306,38,106,0,9378,'',0,814,599,1860,1360955829,1,1778),(306,38,106,0,9379,'',0,1880,600,1778,1360955829,1,814),(306,38,106,0,9380,'',0,1881,601,814,1360955829,1,1880),(306,38,106,0,9381,'',0,1641,602,1880,1360955829,1,1881),(306,38,106,0,9382,'',0,1882,603,1881,1360955829,1,1641),(306,38,106,0,9383,'',0,1713,604,1641,1360955829,1,1882),(306,38,106,0,9384,'',0,1677,605,1882,1360955829,1,1713),(306,38,106,0,9385,'',0,1717,606,1713,1360955829,1,1677),(306,38,106,0,9386,'',0,1883,607,1677,1360955829,1,1717),(306,38,106,0,9387,'',0,1742,608,1717,1360955829,1,1883),(306,38,106,0,9388,'',0,1641,609,1883,1360955829,1,1742),(306,38,106,0,9389,'',0,1884,610,1742,1360955829,1,1641),(306,38,106,0,9390,'',0,1851,611,1641,1360955829,1,1884),(306,38,106,0,9391,'',0,814,612,1884,1360955829,1,1851),(306,38,106,0,9392,'',0,1683,613,1851,1360955829,1,814),(306,38,106,0,9393,'',0,1869,614,814,1360955829,1,1683),(306,38,106,0,9394,'',0,1860,615,1683,1360955829,1,1869),(306,38,106,0,9395,'',0,1778,616,1869,1360955829,1,1860),(306,38,106,0,9396,'',0,1875,617,1860,1360955829,1,1778),(306,38,106,0,9397,'',0,1885,618,1778,1360955829,1,1875),(306,38,106,0,9398,'',0,1686,619,1875,1360955829,1,1885),(306,38,106,0,9399,'',0,1886,620,1885,1360955829,1,1686),(306,38,106,0,9400,'',0,814,621,1686,1360955829,1,1886),(306,38,106,0,9401,'',0,1887,622,1886,1360955829,1,814),(306,38,106,0,9402,'',0,1888,623,814,1360955829,1,1887),(306,38,106,0,9403,'',0,1889,624,1887,1360955829,1,1888),(306,38,106,0,9404,'',0,816,625,1888,1360955829,1,1889),(306,38,106,0,9405,'',0,814,626,1889,1360955829,1,816),(306,38,106,0,9406,'',0,1858,627,816,1360955829,1,814),(306,38,106,0,9407,'',0,1869,628,814,1360955829,1,1858),(306,38,106,0,9408,'',0,1641,629,1858,1360955829,1,1869),(306,38,106,0,9409,'',0,1662,630,1869,1360955829,1,1641),(306,38,106,0,9410,'',0,1890,631,1641,1360955829,1,1662),(306,38,106,0,9411,'',0,816,632,1662,1360955829,1,1890),(306,38,106,0,9412,'',0,1651,633,1890,1360955829,1,816),(306,38,106,0,9413,'',0,1826,634,816,1360955829,1,1651),(306,38,106,0,9414,'',0,1811,635,1651,1360955829,1,1826),(306,38,106,0,9415,'',0,1647,636,1826,1360955829,1,1811),(306,38,106,0,9416,'',0,1678,637,1811,1360955829,1,1647),(306,38,106,0,9417,'',0,1726,638,1647,1360955829,1,1678),(306,38,106,0,9418,'',0,1651,639,1678,1360955829,1,1726),(306,38,106,0,9419,'',0,1680,640,1726,1360955829,1,1651),(306,38,106,0,9420,'',0,1645,641,1651,1360955829,1,1680),(306,38,106,0,9421,'',0,1891,642,1680,1360955829,1,1645),(306,38,106,0,9422,'',0,1892,643,1645,1360955829,1,1891),(306,38,106,0,9423,'',0,1893,644,1891,1360955829,1,1892),(306,38,106,0,9424,'',0,1635,645,1892,1360955829,1,1893),(306,38,106,0,9425,'',0,1641,646,1893,1360955829,1,1635),(306,38,106,0,9426,'',0,814,647,1635,1360955829,1,1641),(306,38,106,0,9427,'',0,1730,648,1641,1360955829,1,814),(306,38,106,0,9428,'',0,1869,649,814,1360955829,1,1730),(306,38,106,0,9429,'',0,1641,650,1730,1360955829,1,1869),(306,38,106,0,9430,'',0,1894,651,1869,1360955829,1,1641),(306,38,106,0,9431,'',0,1790,652,1641,1360955829,1,1894),(306,38,106,0,9432,'',0,1641,653,1894,1360955829,1,1790),(306,38,106,0,9433,'',0,1895,654,1790,1360955829,1,1641),(306,38,106,0,9434,'',0,1896,655,1641,1360955829,1,1895),(306,38,106,0,9435,'',0,1641,656,1895,1360955829,1,1896),(306,38,106,0,9436,'',0,1851,657,1896,1360955829,1,1641),(306,38,106,0,9437,'',0,1858,658,1641,1360955829,1,1851),(306,38,106,0,9438,'',0,1725,659,1851,1360955829,1,1858),(306,38,106,0,9439,'',0,1897,660,1858,1360955829,1,1725),(306,38,106,0,9440,'',0,1898,661,1725,1360955829,1,1897),(306,38,106,0,9441,'',0,1825,662,1897,1360955829,1,1898),(306,38,106,0,9442,'',0,1717,663,1898,1360955829,1,1825),(306,38,106,0,9443,'',0,1758,664,1825,1360955829,1,1717),(306,38,106,0,9444,'',0,1899,665,1717,1360955829,1,1758),(306,38,106,0,9445,'',0,1641,666,1758,1360955829,1,1899),(306,38,106,0,9446,'',0,1900,667,1899,1360955829,1,1641),(306,38,106,0,9447,'',0,1830,668,1641,1360955829,1,1900),(306,38,106,0,9448,'',0,1671,669,1900,1360955829,1,1830),(306,38,106,0,9449,'',0,1875,670,1830,1360955829,1,1671),(306,38,106,0,9450,'',0,1830,671,1671,1360955829,1,1875),(306,38,106,0,9451,'',0,1901,672,1875,1360955829,1,1830),(306,38,106,0,9452,'',0,1645,673,1830,1360955829,1,1901),(306,38,106,0,9453,'',0,814,674,1901,1360955829,1,1645),(306,38,106,0,9454,'',0,1683,675,1645,1360955829,1,814),(306,38,106,0,9455,'',0,1869,676,814,1360955829,1,1683),(306,38,106,0,9456,'',0,1830,677,1683,1360955829,1,1869),(306,38,106,0,9457,'',0,1717,678,1869,1360955829,1,1830),(306,38,106,0,9458,'',0,1681,679,1830,1360955829,1,1717),(306,38,106,0,9459,'',0,814,680,1717,1360955829,1,1681),(306,38,106,0,9460,'',0,1902,681,1681,1360955829,1,814),(306,38,106,0,9461,'',0,814,682,814,1360955829,1,1902),(306,38,106,0,9462,'',0,1903,683,1902,1360955829,1,814),(306,38,106,0,9463,'',0,1645,684,814,1360955829,1,1903),(306,38,106,0,9464,'',0,1686,685,1903,1360955829,1,1645),(306,38,106,0,9465,'',0,1628,686,1645,1360955829,1,1686),(306,38,106,0,9466,'',0,1904,687,1686,1360955829,1,1628),(306,38,106,0,9467,'',0,1713,688,1628,1360955829,1,1904),(306,38,106,0,9468,'',0,1641,689,1904,1360955829,1,1713),(306,38,106,0,9469,'',0,1905,690,1713,1360955829,1,1641),(306,38,106,0,9470,'',0,1630,691,1641,1360955829,1,1905),(306,38,106,0,9471,'',0,814,692,1905,1360955829,1,1630),(306,38,106,0,9472,'',0,1862,693,1630,1360955829,1,814),(306,38,106,0,9473,'',0,1683,694,814,1360955829,1,1862),(306,38,106,0,9474,'',0,1906,695,1862,1360955829,1,1683),(306,38,106,0,9475,'',0,1825,696,1683,1360955829,1,1906),(306,38,106,0,9476,'',0,1700,697,1906,1360955829,1,1825),(306,38,106,0,9477,'',0,1710,698,1825,1360955829,1,1700),(306,38,106,0,9478,'',0,1661,699,1700,1360955829,1,1710),(306,38,106,0,9479,'',0,1641,700,1710,1360955829,1,1661),(306,38,106,0,9480,'',0,1907,701,1661,1360955829,1,1641),(306,38,106,0,9481,'',0,1641,702,1641,1360955829,1,1907),(306,38,106,0,9482,'',0,1900,703,1907,1360955829,1,1641),(306,38,106,0,9483,'',0,1830,704,1641,1360955829,1,1900),(306,38,106,0,9484,'',0,1671,705,1900,1360955829,1,1830),(306,38,106,0,9485,'',0,1645,706,1830,1360955829,1,1671),(306,38,106,0,9486,'',0,1631,707,1671,1360955829,1,1645),(306,38,106,0,9487,'',0,1632,708,1645,1360955829,1,1631),(306,38,106,0,9488,'',0,1633,709,1631,1360955829,1,1632),(306,38,106,0,9489,'',0,1679,710,1632,1360955829,1,1633),(306,38,106,0,9490,'',0,1730,711,1633,1360955829,1,1679),(306,38,106,0,9491,'',0,1725,712,1679,1360955829,1,1730),(306,38,106,0,9492,'',0,1830,713,1730,1360955829,1,1725),(306,38,106,0,9493,'',0,1700,714,1725,1360955829,1,1830),(306,38,106,0,9494,'',0,1758,715,1830,1360955829,1,1700),(306,38,106,0,9495,'',0,1647,716,1700,1360955829,1,1758),(306,38,106,0,9496,'',0,1641,717,1758,1360955829,1,1647),(306,38,106,0,9497,'',0,1908,718,1647,1360955829,1,1641),(306,38,106,0,9498,'',0,1677,719,1641,1360955829,1,1908),(306,38,106,0,9499,'',0,1638,720,1908,1360955829,1,1677),(306,38,106,0,9500,'',0,1718,721,1677,1360955829,1,1638),(306,38,106,0,9501,'',0,1909,722,1638,1360955829,1,1718),(306,38,106,0,9502,'',0,1651,723,1718,1360955829,1,1909),(306,38,106,0,9503,'',0,1910,724,1909,1360955829,1,1651),(306,38,106,0,9504,'',0,1911,725,1651,1360955829,1,1910),(306,38,106,0,9505,'',0,1902,726,1910,1360955829,1,1911),(306,38,106,0,9506,'',0,1686,727,1911,1360955829,1,1902),(306,38,106,0,9507,'',0,1687,728,1902,1360955829,1,1686),(306,38,106,0,9508,'',0,1868,729,1686,1360955829,1,1687),(306,38,106,0,9509,'',0,814,730,1687,1360955829,1,1868),(306,38,106,0,9510,'',0,1912,731,1868,1360955829,1,814),(306,38,106,0,9511,'',0,1913,732,814,1360955829,1,1912),(306,38,106,0,9512,'',0,1914,733,1912,1360955829,1,1913),(306,38,106,0,9513,'',0,1700,734,1913,1360955829,1,1914),(306,38,106,0,9514,'',0,1850,735,1914,1360955829,1,1700),(306,38,106,0,9515,'',0,1905,736,1700,1360955829,1,1850),(306,38,106,0,9516,'',0,1812,737,1850,1360955829,1,1905),(306,38,106,0,9517,'',0,1915,738,1905,1360955829,1,1812),(306,38,106,0,9518,'',0,1916,739,1812,1360955829,1,1915),(306,38,106,0,9519,'',0,814,740,1915,1360955829,1,1916),(306,38,106,0,9520,'',0,1769,741,1916,1360955829,1,814),(306,38,106,0,9521,'',0,816,742,814,1360955829,1,1769),(306,38,106,0,9522,'',0,814,743,1769,1360955829,1,816),(306,38,106,0,9523,'',0,1687,744,816,1360955829,1,814),(306,38,106,0,9524,'',0,1644,745,814,1360955829,1,1687),(306,38,106,0,9525,'',0,814,746,1687,1360955829,1,1644),(306,38,106,0,9526,'',0,1725,747,1644,1360955829,1,814),(306,38,106,0,9527,'',0,1645,748,814,1360955829,1,1725),(306,38,106,0,9528,'',0,1631,749,1725,1360955829,1,1645),(306,38,106,0,9529,'',0,1633,750,1645,1360955829,1,1631),(306,38,106,0,9530,'',0,1830,751,1631,1360955829,1,1633),(306,38,106,0,9531,'',0,1700,752,1633,1360955829,1,1830),(306,38,106,0,9532,'',0,1917,753,1830,1360955829,1,1700),(306,38,106,0,9533,'',0,1838,754,1700,1360955829,1,1917),(306,38,106,0,9534,'',0,1679,755,1917,1360955829,1,1838),(306,38,106,0,9535,'',0,1651,756,1838,1360955829,1,1679),(306,38,106,0,9536,'',0,1918,757,1679,1360955829,1,1651),(306,38,106,0,9537,'',0,1919,758,1651,1360955829,1,1918),(306,38,106,0,9538,'',0,1645,759,1918,1360955829,1,1919),(306,38,106,0,9539,'',0,1709,760,1919,1360955829,1,1645),(306,38,106,0,9540,'',0,1700,761,1645,1360955829,1,1709),(306,38,106,0,9541,'',0,1710,762,1709,1360955829,1,1700),(306,38,106,0,9542,'',0,1920,763,1700,1360955829,1,1710),(306,38,106,0,9543,'',0,1641,764,1710,1360955829,1,1920),(306,38,106,0,9544,'',0,1839,765,1920,1360955829,1,1641),(306,38,106,0,9545,'',0,1921,766,1641,1360955829,1,1839),(306,38,106,0,9546,'',0,1922,767,1839,1360955829,1,1921),(306,38,106,0,9547,'',0,814,768,1921,1360955829,1,1922),(306,38,106,0,9548,'',0,1922,769,1922,1360955829,1,814),(306,38,106,0,9549,'',0,816,770,814,1360955829,1,1922),(306,38,106,0,9550,'',0,814,771,1922,1360955829,1,816),(306,38,106,0,9551,'',0,1687,772,816,1360955829,1,814),(306,38,106,0,9552,'',0,1689,773,814,1360955829,1,1687),(306,38,106,0,9553,'',0,1662,774,1687,1360955829,1,1689),(306,38,106,0,9554,'',0,1910,775,1689,1360955829,1,1662),(306,38,106,0,9555,'',0,1911,776,1662,1360955829,1,1910),(306,38,106,0,9556,'',0,1700,777,1910,1360955829,1,1911),(306,38,106,0,9557,'',0,1850,778,1911,1360955829,1,1700),(306,38,106,0,9558,'',0,1742,779,1700,1360955829,1,1850),(306,38,106,0,9559,'',0,1923,780,1850,1360955829,1,1742),(306,38,106,0,9560,'',0,1924,781,1742,1360955829,1,1923),(306,38,106,0,9561,'',0,1645,782,1923,1360955829,1,1924),(306,38,106,0,9562,'',0,1687,783,1924,1360955829,1,1645),(306,38,106,0,9563,'',0,1647,784,1645,1360955829,1,1687),(306,38,106,0,9564,'',0,1925,785,1687,1360955829,1,1647),(306,38,106,0,9565,'',0,1651,786,1647,1360955829,1,1925),(306,38,106,0,9566,'',0,1687,787,1925,1360955829,1,1651),(306,38,106,0,9567,'',0,1689,788,1651,1360955829,1,1687),(306,38,106,0,9568,'',0,1662,789,1687,1360955829,1,1689),(306,38,106,0,9569,'',0,1651,790,1689,1360955829,1,1662),(306,38,106,0,9570,'',0,1926,791,1662,1360955829,1,1651),(306,38,106,0,9571,'',0,1927,792,1651,1360955829,1,1926),(306,38,106,0,9572,'',0,816,793,1926,1360955829,1,1927),(306,38,106,0,9573,'',0,1687,794,1927,1360955829,1,816),(306,38,106,0,9574,'',0,1688,795,816,1360955829,1,1687),(306,38,106,0,9575,'',0,1647,796,1687,1360955829,1,1688),(306,38,106,0,9576,'',0,1742,797,1688,1360955829,1,1647),(306,38,106,0,9577,'',0,1651,798,1647,1360955829,1,1742),(306,38,106,0,9578,'',0,1928,799,1742,1360955829,1,1651),(306,38,106,0,9579,'',0,1647,800,1651,1360955829,1,1928),(306,38,106,0,9580,'',0,1929,801,1928,1360955829,1,1647),(306,38,106,0,9581,'',0,1651,802,1647,1360955829,1,1929),(306,38,106,0,9582,'',0,1687,803,1929,1360955829,1,1651),(306,38,106,0,9583,'',0,1930,804,1651,1360955829,1,1687),(306,38,106,0,9584,'',0,1689,805,1687,1360955829,1,1930),(306,38,106,0,9585,'',0,1742,806,1930,1360955829,1,1689),(306,38,106,0,9586,'',0,1931,807,1689,1360955829,1,1742),(306,38,106,0,9587,'',0,816,808,1742,1360955829,1,1931),(306,38,106,0,9588,'',0,1932,809,1931,1360955829,1,816),(306,38,106,0,9589,'',0,1933,810,816,1360955829,1,1932),(306,38,106,0,9590,'',0,1934,811,1932,1360955829,1,1933),(306,38,106,0,9591,'',0,1935,812,1933,1360955829,1,1934),(306,38,106,0,9592,'',0,1647,813,1934,1360955829,1,1935),(306,38,106,0,9593,'',0,1936,814,1935,1360955829,1,1647),(306,38,106,0,9594,'',0,1866,815,1647,1360955829,1,1936),(306,38,106,0,9595,'',0,1830,816,1936,1360955829,1,1866),(306,38,106,0,9596,'',0,1937,817,1866,1360955829,1,1830),(306,38,106,0,9597,'',0,1830,818,1830,1360955829,1,1937),(306,38,106,0,9598,'',0,1866,819,1937,1360955829,1,1830),(306,38,106,0,9599,'',0,1917,820,1830,1360955829,1,1866),(306,38,106,0,9600,'',0,1700,821,1866,1360955829,1,1917),(306,38,106,0,9601,'',0,1850,822,1917,1360955829,1,1700),(306,38,106,0,9602,'',0,1938,823,1700,1360955829,1,1850),(306,38,106,0,9603,'',0,1696,824,1850,1360955829,1,1938),(306,38,106,0,9604,'',0,1939,825,1938,1360955829,1,1696),(306,38,106,0,9605,'',0,1911,826,1696,1360955829,1,1939),(306,38,106,0,9606,'',0,1651,827,1939,1360955829,1,1911),(306,38,106,0,9607,'',0,1926,828,1911,1360955829,1,1651),(306,38,106,0,9608,'',0,1940,829,1651,1360955829,1,1926),(306,38,106,0,9609,'',0,1645,830,1926,1360955829,1,1940),(306,38,106,0,9610,'',0,1687,831,1940,1360955829,1,1645),(306,38,106,0,9611,'',0,1930,832,1645,1360955829,1,1687),(306,38,106,0,9612,'',0,1941,833,1687,1360955829,1,1930),(306,38,106,0,9613,'',0,1635,834,1930,1360955829,1,1941),(306,38,106,0,9614,'',0,1942,835,1941,1360955829,1,1635),(306,38,106,0,9615,'',0,1943,836,1635,1360955829,1,1942),(306,38,106,0,9616,'',0,1944,837,1942,1360955829,1,1943),(306,38,106,0,9617,'',0,1945,838,1943,1360955829,1,1944),(306,38,106,0,9618,'',0,1638,839,1944,1360955829,1,1945),(306,38,106,0,9619,'',0,1946,840,1945,1360955829,1,1638),(306,38,106,0,9620,'',0,1870,841,1638,1360955829,1,1946),(306,38,106,0,9621,'',0,1681,842,1946,1360955829,1,1870),(306,38,106,0,9622,'',0,1641,843,1870,1360955829,1,1681),(306,38,106,0,9623,'',0,1742,844,1681,1360955829,1,1641),(306,38,106,0,9624,'',0,1651,845,1641,1360955829,1,1742),(306,38,106,0,9625,'',0,1947,846,1742,1360955829,1,1651),(306,38,106,0,9626,'',0,1641,847,1651,1360955829,1,1947),(306,38,106,0,9627,'',0,1948,848,1947,1360955829,1,1641),(306,38,106,0,9628,'',0,1651,849,1641,1360955829,1,1948),(306,38,106,0,9629,'',0,1949,850,1948,1360955829,1,1651),(306,38,106,0,9630,'',0,816,851,1651,1360955829,1,1949),(306,38,106,0,9631,'',0,1950,852,1949,1360955829,1,816),(306,38,106,0,9632,'',0,1688,853,816,1360955829,1,1950),(306,38,106,0,9633,'',0,1647,854,1950,1360955829,1,1688),(306,38,106,0,9634,'',0,1651,855,1688,1360955829,1,1647),(306,38,106,0,9635,'',0,1951,856,1647,1360955829,1,1651),(306,38,106,0,9636,'',0,1709,857,1651,1360955829,1,1951),(306,38,106,0,9637,'',0,1717,858,1951,1360955829,1,1709),(306,38,106,0,9638,'',0,1872,859,1709,1360955829,1,1717),(306,38,106,0,9639,'',0,1641,860,1717,1360955829,1,1872),(306,38,106,0,9640,'',0,1952,861,1872,1360955829,1,1641),(306,38,106,0,9641,'',0,1953,862,1641,1360955829,1,1952),(306,38,106,0,9642,'',0,1638,863,1952,1360955829,1,1953),(306,38,106,0,9643,'',0,1718,864,1953,1360955829,1,1638),(306,38,106,0,9644,'',0,1954,865,1638,1360955829,1,1718),(306,38,106,0,9645,'',0,1748,866,1718,1360955829,1,1954),(306,38,106,0,9646,'',0,814,867,1954,1360955829,1,1748),(306,38,106,0,9647,'',0,1627,868,1748,1360955829,1,814),(306,38,106,0,9648,'',0,816,869,814,1360955829,1,1627),(306,38,106,0,9649,'',0,1686,870,1627,1360955829,1,816),(306,38,106,0,9650,'',0,1840,871,816,1360955829,1,1686),(306,38,106,0,9651,'',0,1916,872,1686,1360955829,1,1840),(306,38,106,0,9652,'',0,1812,873,1840,1360955829,1,1916),(306,38,106,0,9653,'',0,1955,874,1916,1360955829,1,1812),(306,38,106,0,9654,'',0,1956,875,1812,1360955829,1,1955),(306,38,106,0,9655,'',0,1677,876,1955,1360955829,1,1956),(306,38,106,0,9656,'',0,1638,877,1956,1360955829,1,1677),(306,38,106,0,9657,'',0,1957,878,1677,1360955829,1,1638),(306,38,106,0,9658,'',0,1958,879,1638,1360955829,1,1957),(306,38,106,0,9659,'',0,1641,880,1957,1360955829,1,1958),(306,38,106,0,9660,'',0,814,881,1958,1360955829,1,1641),(306,38,106,0,9661,'',0,1959,882,1641,1360955829,1,814),(306,38,106,0,9662,'',0,1960,883,814,1360955829,1,1959),(306,38,106,0,9663,'',0,1782,884,1959,1360955829,1,1960),(306,38,106,0,9664,'',0,1638,885,1960,1360955829,1,1782),(306,38,106,0,9665,'',0,1850,886,1782,1360955829,1,1638),(306,38,106,0,9666,'',0,1961,887,1638,1360955829,1,1850),(306,38,106,0,9667,'',0,1962,888,1850,1360955829,1,1961),(306,38,106,0,9668,'',0,1963,889,1961,1360955829,1,1962),(306,38,106,0,9669,'',0,1964,890,1962,1360955829,1,1963),(306,38,106,0,9670,'',0,1686,891,1963,1360955829,1,1964),(306,38,106,0,9671,'',0,1959,892,1964,1360955829,1,1686),(306,38,106,0,9672,'',0,814,893,1686,1360955829,1,1959),(306,38,106,0,9673,'',0,1965,894,1959,1360955829,1,814),(306,38,106,0,9674,'',0,1960,895,814,1360955829,1,1965),(306,38,106,0,9675,'',0,1689,896,1965,1360955829,1,1960),(306,38,106,0,9676,'',0,1662,897,1960,1360955829,1,1689),(306,38,106,0,9677,'',0,814,898,1689,1360955829,1,1662),(306,38,106,0,9678,'',0,1627,899,1662,1360955829,1,814),(306,38,106,0,9679,'',0,1677,900,814,1360955829,1,1627),(306,38,106,0,9680,'',0,1686,901,1627,1360955829,1,1677),(306,38,106,0,9681,'',0,1687,902,1677,1360955829,1,1686),(306,38,106,0,9682,'',0,1713,903,1686,1360955829,1,1687),(306,38,106,0,9683,'',0,1966,904,1687,1360955829,1,1713),(306,38,106,0,9684,'',0,1967,905,1713,1360955829,1,1966),(306,38,106,0,9685,'',0,1782,906,1966,1360955829,1,1967),(306,38,106,0,9686,'',0,1968,907,1967,1360955829,1,1782),(306,38,106,0,9687,'',0,1662,908,1782,1360955829,1,1968),(306,38,106,0,9688,'',0,1969,909,1968,1360955829,1,1662),(306,38,106,0,9689,'',0,1630,910,1662,1360955829,1,1969),(306,38,106,0,9690,'',0,1970,911,1969,1360955829,1,1630),(306,38,106,0,9691,'',0,1866,912,1630,1360955829,1,1970),(306,38,106,0,9692,'',0,1830,913,1970,1360955829,1,1866),(306,38,106,0,9693,'',0,1811,914,1866,1360955829,1,1830),(306,38,106,0,9694,'',0,1971,915,1830,1360955829,1,1811),(306,38,106,0,9695,'',0,1812,916,1811,1360955829,1,1971),(306,38,106,0,9696,'',0,1716,917,1971,1360955829,1,1812),(306,38,106,0,9697,'',0,1717,918,1812,1360955829,1,1716),(306,38,106,0,9698,'',0,1972,919,1716,1360955829,1,1717),(306,38,106,0,9699,'',0,1651,920,1717,1360955829,1,1972),(306,38,106,0,9700,'',0,1973,921,1972,1360955829,1,1651),(306,38,106,0,9701,'',0,1635,922,1651,1360955829,1,1973),(306,38,106,0,9702,'',0,1974,923,1973,1360955829,1,1635),(306,38,106,0,9703,'',0,1975,924,1635,1360955829,1,1974),(306,38,106,0,9704,'',0,1976,925,1974,1360955829,1,1975),(306,38,106,0,9705,'',0,1977,926,1975,1360955829,1,1976),(306,38,106,0,9706,'',0,1641,927,1976,1360955829,1,1977),(306,38,106,0,9707,'',0,1978,928,1977,1360955829,1,1641),(306,38,106,0,9708,'',0,1651,929,1641,1360955829,1,1978),(306,38,106,0,9709,'',0,1979,930,1978,1360955829,1,1651),(306,38,106,0,9710,'',0,1980,931,1651,1360955829,1,1979),(306,38,106,0,9711,'',0,1647,932,1979,1360955829,1,1980),(306,38,106,0,9712,'',0,1638,933,1980,1360955829,1,1647),(306,38,106,0,9713,'',0,1850,934,1647,1360955829,1,1638),(306,38,106,0,9714,'',0,1981,935,1638,1360955829,1,1850),(306,38,106,0,9715,'',0,814,936,1850,1360955829,1,1981),(306,38,106,0,9716,'',0,1959,937,1981,1360955829,1,814),(306,38,106,0,9717,'',0,1982,938,814,1360955829,1,1959),(306,38,106,0,9718,'',0,1678,939,1959,1360955829,1,1982),(306,38,106,0,9719,'',0,1726,940,1982,1360955829,1,1678),(306,38,106,0,9720,'',0,1745,941,1678,1360955829,1,1726),(306,38,106,0,9721,'',0,1643,942,1726,1360955829,1,1745),(306,38,106,0,9722,'',0,1696,943,1745,1360955829,1,1643),(306,38,106,0,9723,'',0,1638,944,1643,1360955829,1,1696),(306,38,106,0,9724,'',0,1957,945,1696,1360955829,1,1638),(306,38,106,0,9725,'',0,1644,946,1638,1360955829,1,1957),(306,38,106,0,9726,'',0,1983,947,1957,1360955829,1,1644),(306,38,106,0,9727,'',0,1825,948,1644,1360955829,1,1983),(306,38,106,0,9728,'',0,1638,949,1983,1360955829,1,1825),(306,38,106,0,9729,'',0,1718,950,1825,1360955829,1,1638),(306,38,106,0,9730,'',0,1984,951,1638,1360955829,1,1718),(306,38,106,0,9731,'',0,1916,952,1718,1360955829,1,1984),(306,38,106,0,9732,'',0,1643,953,1984,1360955829,1,1916),(306,38,106,0,9733,'',0,1985,954,1916,1360955829,1,1643),(306,38,106,0,9734,'',0,1953,955,1643,1360955829,1,1985),(306,38,106,0,9735,'',0,814,956,1985,1360955829,1,1953),(306,38,106,0,9736,'',0,1947,957,1953,1360955829,1,814),(306,38,106,0,9737,'',0,1716,958,814,1360955829,1,1947),(306,38,106,0,9738,'',0,1717,959,1947,1360955829,1,1716),(306,38,106,0,9739,'',0,1742,960,1716,1360955829,1,1717),(306,38,106,0,9740,'',0,814,961,1717,1360955829,1,1742),(306,38,106,0,9741,'',0,1986,962,1742,1360955829,1,814),(306,38,106,0,9742,'',0,1987,963,814,1360955829,1,1986),(306,38,106,0,9743,'',0,1988,964,1986,1360955829,1,1987),(306,38,106,0,9744,'',0,1651,965,1987,1360955829,1,1988),(306,38,106,0,9745,'',0,1956,966,1988,1360955829,1,1651),(306,38,106,0,9746,'',0,1875,967,1651,1360955829,1,1956),(306,38,106,0,9747,'',0,1651,968,1956,1360955829,1,1875),(306,38,106,0,9748,'',0,1989,969,1875,1360955829,1,1651),(306,38,106,0,9749,'',0,1717,970,1651,1360955829,1,1989),(306,38,106,0,9750,'',0,1850,971,1989,1360955829,1,1717),(306,38,106,0,9751,'',0,1870,972,1717,1360955829,1,1850),(306,38,106,0,9752,'',0,1872,973,1850,1360955829,1,1870),(306,38,106,0,9753,'',0,1651,974,1870,1360955829,1,1872),(306,38,106,0,9754,'',0,1990,975,1872,1360955829,1,1651),(306,38,106,0,9755,'',0,1629,976,1651,1360955829,1,1990),(306,38,106,0,9756,'',0,1991,977,1990,1360955829,1,1629),(306,38,106,0,9757,'',0,1962,978,1629,1360955829,1,1991),(306,38,106,0,9758,'',0,1963,979,1991,1360955829,1,1962),(306,38,106,0,9759,'',0,1717,980,1962,1360955829,1,1963),(306,38,106,0,9760,'',0,1742,981,1963,1360955829,1,1717),(306,38,106,0,9761,'',0,1748,982,1717,1360955829,1,1742),(306,38,106,0,9762,'',0,1645,983,1742,1360955829,1,1748),(306,38,106,0,9763,'',0,814,984,1748,1360955829,1,1645),(306,38,106,0,9764,'',0,1992,985,1645,1360955829,1,814),(306,38,106,0,9765,'',0,816,986,814,1360955829,1,1992),(306,38,106,0,9766,'',0,1730,987,1992,1360955829,1,816),(306,38,106,0,9767,'',0,1647,988,816,1360955829,1,1730),(306,38,106,0,9768,'',0,1631,989,1730,1360955829,1,1647),(306,38,106,0,9769,'',0,1632,990,1647,1360955829,1,1631),(306,38,106,0,9770,'',0,1993,991,1631,1360955829,1,1632),(306,38,106,0,9771,'',0,1701,992,1632,1360955829,1,1993),(306,38,106,0,9772,'',0,1679,993,1993,1360955829,1,1701),(306,38,106,0,9773,'',0,1884,994,1701,1360955829,1,1679),(306,38,106,0,9774,'',0,1729,995,1679,1360955829,1,1884),(306,38,106,0,9775,'',0,1994,996,1884,1360955829,1,1729),(306,38,106,0,9776,'',0,1643,997,1729,1360955829,1,1994),(306,38,106,0,9777,'',0,1645,998,1994,1360955829,1,1643),(306,38,106,0,9778,'',0,0,999,1643,1360955829,1,1645),(306,38,106,0,9779,'',0,1995,1000,0,1360955829,1,814),(306,38,106,0,9780,'',0,1645,1001,814,1360955829,1,1995),(306,38,106,0,9781,'',0,1730,1002,1995,1360955829,1,1645),(306,38,106,0,9782,'',0,1996,1003,1645,1360955829,1,1730),(306,38,106,0,9783,'',1360947000,1629,1004,1730,1360955829,1,1996),(306,38,106,0,9784,'',0,1630,1005,1996,1360955829,1,1629),(306,38,106,0,9785,'',0,1631,1006,1629,1360955829,1,1630),(306,38,106,0,9786,'',0,1632,1007,1630,1360955829,1,1631),(306,38,106,0,9787,'',0,1633,1008,1631,1360955829,1,1632),(306,38,106,0,9788,'',0,1730,1009,1632,1360955829,1,1633),(306,38,106,0,9789,'',0,1699,1010,1633,1360955829,1,1730),(306,38,106,0,9790,'',0,1700,1011,1730,1360955829,1,1699),(306,38,106,0,9791,'',0,2035,1012,1699,1360955829,1,1700),(306,38,106,0,9792,'',0,1635,1013,1700,1360955829,1,2035),(306,38,106,0,9793,'',0,1647,1014,2035,1360955829,1,1635),(306,38,106,0,9794,'',0,1884,1015,1635,1360955829,1,1647),(306,38,106,0,9795,'',0,1915,1016,1647,1360955829,1,1884),(306,38,106,0,9796,'',0,1651,1017,1884,1360955829,1,1915),(306,38,106,0,9797,'',0,1683,1018,1915,1360955829,1,1651),(306,38,106,0,9798,'',0,1840,1019,1651,1360955829,1,1683),(306,38,106,0,9799,'',0,1701,1020,1683,1360955829,1,1840),(306,38,106,0,9800,'',0,1679,1021,1840,1360955829,1,1701),(306,38,106,0,9801,'',0,2036,1022,1701,1360955829,1,1679),(306,38,106,0,9802,'',0,1868,1023,1679,1360955829,1,2036),(306,38,106,0,9803,'',0,1643,1024,2036,1360955829,1,1868),(306,38,106,0,9804,'',0,1645,1025,1868,1360955829,1,1643),(306,38,106,0,9805,'',0,814,1026,1643,1360955829,1,1645),(306,38,106,0,9806,'',0,1724,1027,1645,1360955829,1,814),(306,38,106,0,9807,'',0,2037,1028,814,1360955829,1,1724),(306,38,106,0,9808,'',0,1635,1029,1724,1360955829,1,2037),(306,38,106,0,9809,'',0,1730,1030,2037,1360955829,1,1635),(306,38,106,0,9810,'',0,1716,1031,1635,1360955829,1,1730),(306,38,106,0,9811,'',0,1717,1032,1730,1360955829,1,1716),(306,38,106,0,9812,'',0,1718,1033,1716,1360955829,1,1717),(306,38,106,0,9813,'',0,2038,1034,1717,1360955829,1,1718),(306,38,106,0,9814,'',0,2039,1035,1718,1360955829,1,2038),(306,38,106,0,9815,'',0,1651,1036,2038,1360955829,1,2039),(306,38,106,0,9816,'',0,1990,1037,2039,1360955829,1,1651),(306,38,106,0,9817,'',0,2040,1038,1651,1360955829,1,1990),(306,38,106,0,9818,'',0,1812,1039,1990,1360955829,1,2040),(306,38,106,0,9819,'',0,1730,1040,2040,1360955829,1,1812),(306,38,106,0,9820,'',0,1647,1041,1812,1360955829,1,1730),(306,38,106,0,9821,'',0,2041,1042,1730,1360955829,1,1647),(306,38,106,0,9822,'',0,1667,1043,1647,1360955829,1,2041),(306,38,106,0,9823,'',0,2042,1044,2041,1360955829,1,1667),(306,38,106,0,9824,'',0,1635,1045,1667,1360955829,1,2042),(306,38,106,0,9825,'',0,1643,1046,2042,1360955829,1,1635),(306,38,106,0,9826,'',0,1645,1047,1635,1360955829,1,1643),(306,38,106,0,9827,'',0,814,1048,1643,1360955829,1,1645),(306,38,106,0,9828,'',0,2043,1049,1645,1360955829,1,814),(306,38,106,0,9829,'',0,2044,1050,814,1360955829,1,2043),(306,38,106,0,9830,'',0,1654,1051,2043,1360955829,1,2044),(306,38,106,0,9831,'',0,1631,1052,2044,1360955829,1,1654),(306,38,106,0,9832,'',0,1632,1053,1654,1360955829,1,1631),(306,38,106,0,9833,'',0,1761,1054,1631,1360955829,1,1632),(306,38,106,0,9834,'',0,1717,1055,1632,1360955829,1,1761),(306,38,106,0,9835,'',0,1758,1056,1761,1360955829,1,1717),(306,38,106,0,9836,'',0,2045,1057,1717,1360955829,1,1758),(306,38,106,0,9837,'',0,2046,1058,1758,1360955829,1,2045),(306,38,106,0,9838,'',0,1641,1059,2045,1360955829,1,2046),(306,38,106,0,9839,'',0,814,1060,2046,1360955829,1,1641),(306,38,106,0,9840,'',0,1912,1061,1641,1360955829,1,814),(306,38,106,0,9841,'',0,1930,1062,814,1360955829,1,1912),(306,38,106,0,9842,'',0,1647,1063,1912,1360955829,1,1930),(306,38,106,0,9843,'',0,1884,1064,1930,1360955829,1,1647),(306,38,106,0,9844,'',0,1711,1065,1647,1360955829,1,1884),(306,38,106,0,9845,'',0,1852,1066,1884,1360955829,1,1711),(306,38,106,0,9846,'',0,2047,1067,1711,1360955829,1,1852),(306,38,106,0,9847,'',0,2048,1068,1852,1360955829,1,2047),(306,38,106,0,9848,'',0,1922,1069,2047,1360955829,1,2048),(306,38,106,0,9849,'',0,2049,1070,2048,1360955829,1,1922),(306,38,106,0,9850,'',0,2050,1071,1922,1360955829,1,2049),(306,38,106,0,9851,'',0,1716,1072,2049,1360955829,1,2050),(306,38,106,0,9852,'',0,1717,1073,2050,1360955829,1,1716),(306,38,106,0,9853,'',0,1718,1074,1716,1360955829,1,1717),(306,38,106,0,9854,'',0,2051,1075,1717,1360955829,1,1718),(306,38,106,0,9855,'',0,1630,1076,1718,1360955829,1,2051),(306,38,106,0,9856,'',0,2052,1077,2051,1360955829,1,1630),(306,38,106,0,9857,'',0,2053,1078,1630,1360955829,1,2052),(306,38,106,0,9858,'',0,2054,1079,2052,1360955829,1,2053),(306,38,106,0,9859,'',0,1875,1080,2053,1360955829,1,2054),(306,38,106,0,9860,'',0,1641,1081,2054,1360955829,1,1875),(306,38,106,0,9861,'',0,1651,1082,1875,1360955829,1,1641),(306,38,106,0,9862,'',0,2055,1083,1641,1360955829,1,1651),(306,38,106,0,9863,'',0,2056,1084,1651,1360955829,1,2055),(306,38,106,0,9864,'',0,2057,1085,2055,1360955829,1,2056),(306,38,106,0,9865,'',0,2058,1086,2056,1360955829,1,2057),(306,38,106,0,9866,'',0,1717,1087,2057,1360955829,1,2058),(306,38,106,0,9867,'',0,1710,1088,2058,1360955829,1,1717),(306,38,106,0,9868,'',0,1721,1089,1717,1360955829,1,1710),(306,38,106,0,9869,'',0,2059,1090,1710,1360955829,1,1721),(306,38,106,0,9870,'',0,1630,1091,1721,1360955829,1,2059),(306,38,106,0,9871,'',0,814,1092,2059,1360955829,1,1630),(306,38,106,0,9872,'',0,1922,1093,1630,1360955829,1,814),(306,38,106,0,9873,'',0,2049,1094,814,1360955829,1,1922),(306,38,106,0,9874,'',0,2050,1095,1922,1360955829,1,2049),(306,38,106,0,9875,'',0,2060,1096,2049,1360955829,1,2050),(306,38,106,0,9876,'',0,1790,1097,2050,1360955829,1,2060),(306,38,106,0,9877,'',0,2061,1098,2060,1360955829,1,1790),(306,38,106,0,9878,'',0,1651,1099,1790,1360955829,1,2061),(306,38,106,0,9879,'',0,2062,1100,2061,1360955829,1,1651),(306,38,106,0,9880,'',0,1731,1101,1651,1360955829,1,2062),(306,38,106,0,9881,'',0,816,1102,2062,1360955829,1,1731),(306,38,106,0,9882,'',0,1915,1103,1731,1360955829,1,816),(306,38,106,0,9883,'',0,2063,1104,816,1360955829,1,1915),(306,38,106,0,9884,'',0,2064,1105,1915,1360955829,1,2063),(306,38,106,0,9885,'',0,1635,1106,2063,1360955829,1,2064),(306,38,106,0,9886,'',0,1651,1107,2064,1360955829,1,1635),(306,38,106,0,9887,'',0,877,1108,1635,1360955829,1,1651),(306,38,106,0,9888,'',0,2065,1109,1651,1360955829,1,877),(306,38,106,0,9889,'',0,1947,1110,877,1360955829,1,2065),(306,38,106,0,9890,'',0,2066,1111,2065,1360955829,1,1947),(306,38,106,0,9891,'',0,1651,1112,1947,1360955829,1,2066),(306,38,106,0,9892,'',0,1980,1113,2066,1360955829,1,1651),(306,38,106,0,9893,'',0,1713,1114,1651,1360955829,1,1980),(306,38,106,0,9894,'',0,2067,1115,1980,1360955829,1,1713),(306,38,106,0,9895,'',0,1790,1116,1713,1360955829,1,2067),(306,38,106,0,9896,'',0,1679,1117,2067,1360955829,1,1790),(306,38,106,0,9897,'',0,2068,1118,1790,1360955829,1,1679),(306,38,106,0,9898,'',0,1641,1119,1679,1360955829,1,2068),(306,38,106,0,9899,'',0,1730,1120,2068,1360955829,1,1641),(306,38,106,0,9900,'',0,1782,1121,1641,1360955829,1,1730),(306,38,106,0,9901,'',0,2069,1122,1730,1360955829,1,1782),(306,38,106,0,9902,'',0,814,1123,1782,1360955829,1,2069),(306,38,106,0,9903,'',0,1980,1124,2069,1360955829,1,814),(306,38,106,0,9904,'',0,1641,1125,814,1360955829,1,1980),(306,38,106,0,9905,'',0,2070,1126,1980,1360955829,1,1641),(306,38,106,0,9906,'',0,2071,1127,1641,1360955829,1,2070),(306,38,106,0,9907,'',0,1812,1128,2070,1360955829,1,2071),(306,38,106,0,9908,'',0,1651,1129,2071,1360955829,1,1812),(306,38,106,0,9909,'',0,2050,1130,1812,1360955829,1,1651),(306,38,106,0,9910,'',0,1782,1131,1651,1360955829,1,2050),(306,38,106,0,9911,'',0,1713,1132,2050,1360955829,1,1782),(306,38,106,0,9912,'',0,1668,1133,1782,1360955829,1,1713),(306,38,106,0,9913,'',0,2072,1134,1713,1360955829,1,1668),(306,38,106,0,9914,'',0,1651,1135,1668,1360955829,1,2072),(306,38,106,0,9915,'',0,2073,1136,2072,1360955829,1,1651),(306,38,106,0,9916,'',0,2074,1137,1651,1360955829,1,2073),(306,38,106,0,9917,'',0,1729,1138,2073,1360955829,1,2074),(306,38,106,0,9918,'',0,814,1139,2074,1360955829,1,1729),(306,38,106,0,9919,'',0,2075,1140,1729,1360955829,1,814),(306,38,106,0,9920,'',0,2020,1141,814,1360955829,1,2075),(306,38,106,0,9921,'',0,1686,1142,2075,1360955829,1,2020),(306,38,106,0,9922,'',0,2073,1143,2020,1360955829,1,1686),(306,38,106,0,9923,'',0,2076,1144,1686,1360955829,1,2073),(306,38,106,0,9924,'',0,1694,1145,2073,1360955829,1,2076),(306,38,106,0,9925,'',0,2077,1146,2076,1360955829,1,1694),(306,38,106,0,9926,'',0,2078,1147,1694,1360955829,1,2077),(306,38,106,0,9927,'',0,1726,1148,2077,1360955829,1,2078),(306,38,106,0,9928,'',0,2079,1149,2078,1360955829,1,1726),(306,38,106,0,9929,'',0,1641,1150,1726,1360955829,1,2079),(306,38,106,0,9930,'',0,2040,1151,2079,1360955829,1,1641),(306,38,106,0,9931,'',0,814,1152,1641,1360955829,1,2040),(306,38,106,0,9932,'',0,1980,1153,2040,1360955829,1,814),(306,38,106,0,9933,'',0,1654,1154,814,1360955829,1,1980),(306,38,106,0,9934,'',0,1651,1155,1980,1360955829,1,1654),(306,38,106,0,9935,'',0,1704,1156,1654,1360955829,1,1651),(306,38,106,0,9936,'',0,1645,1157,1651,1360955829,1,1704),(306,38,106,0,9937,'',0,1922,1158,1704,1360955829,1,1645),(306,38,106,0,9938,'',0,2080,1159,1645,1360955829,1,1922),(306,38,106,0,9939,'',0,814,1160,1922,1360955829,1,2080),(306,38,106,0,9940,'',0,1922,1161,2080,1360955829,1,814),(306,38,106,0,9941,'',0,2080,1162,814,1360955829,1,1922),(306,38,106,0,9942,'',0,2081,1163,1922,1360955829,1,2080),(306,38,106,0,9943,'',0,2077,1164,2080,1360955829,1,2081),(306,38,106,0,9944,'',0,1655,1165,2081,1360955829,1,2077),(306,38,106,0,9945,'',0,814,1166,2077,1360955829,1,1655),(306,38,106,0,9946,'',0,2075,1167,1655,1360955829,1,814),(306,38,106,0,9947,'',0,2082,1168,814,1360955829,1,2075),(306,38,106,0,9948,'',0,1921,1169,2075,1360955829,1,2082),(306,38,106,0,9949,'',0,1635,1170,2082,1360955829,1,1921),(306,38,106,0,9950,'',0,2083,1171,1921,1360955829,1,1635),(306,38,106,0,9951,'',0,1889,1172,1635,1360955829,1,2083),(306,38,106,0,9952,'',0,2008,1173,2083,1360955829,1,1889),(306,38,106,0,9953,'',0,2084,1174,1889,1360955829,1,2008),(306,38,106,0,9954,'',0,2085,1175,2008,1360955829,1,2084),(306,38,106,0,9955,'',0,2086,1176,2084,1360955829,1,2085),(306,38,106,0,9956,'',0,2077,1177,2085,1360955829,1,2086),(306,38,106,0,9957,'',0,814,1178,2086,1360955829,1,2077),(306,38,106,0,9958,'',0,2050,1179,2077,1360955829,1,814),(306,38,106,0,9959,'',0,2047,1180,814,1360955829,1,2050),(306,38,106,0,9960,'',0,1896,1181,2050,1360955829,1,2047),(306,38,106,0,9961,'',0,814,1182,2047,1360955829,1,1896),(306,38,106,0,9962,'',0,1921,1183,1896,1360955829,1,814),(306,38,106,0,9963,'',0,1790,1184,814,1360955829,1,1921),(306,38,106,0,9964,'',0,1679,1185,1921,1360955829,1,1790),(306,38,106,0,9965,'',0,2087,1186,1790,1360955829,1,1679),(306,38,106,0,9966,'',0,1782,1187,1679,1360955829,1,2087),(306,38,106,0,9967,'',0,1713,1188,2087,1360955829,1,1782),(306,38,106,0,9968,'',0,1766,1189,1782,1360955829,1,1713),(306,38,106,0,9969,'',0,1729,1190,1713,1360955829,1,1766),(306,38,106,0,9970,'',0,814,1191,1766,1360955829,1,1729),(306,38,106,0,9971,'',0,2049,1192,1729,1360955829,1,814),(306,38,106,0,9972,'',0,1782,1193,814,1360955829,1,2049),(306,38,106,0,9973,'',0,1713,1194,2049,1360955829,1,1782),(306,38,106,0,9974,'',0,1651,1195,1782,1360955829,1,1713),(306,38,106,0,9975,'',0,2088,1196,1713,1360955829,1,1651),(306,38,106,0,9976,'',0,2089,1197,1651,1360955829,1,2088),(306,38,106,0,9977,'',0,1677,1198,2088,1360955829,1,2089),(306,38,106,0,9978,'',0,1679,1199,2089,1360955829,1,1677),(306,38,106,0,9979,'',0,1743,1200,1677,1360955829,1,1679),(306,38,106,0,9980,'',0,1641,1201,1679,1360955829,1,1743),(306,38,106,0,9981,'',0,2090,1202,1743,1360955829,1,1641),(306,38,106,0,9982,'',0,814,1203,1641,1360955829,1,2090),(306,38,106,0,9983,'',0,2091,1204,2090,1360955829,1,814),(306,38,106,0,9984,'',0,1686,1205,814,1360955829,1,2091),(306,38,106,0,9985,'',0,1748,1206,2091,1360955829,1,1686),(306,38,106,0,9986,'',0,2092,1207,1686,1360955829,1,1748),(306,38,106,0,9987,'',0,1939,1208,1748,1360955829,1,2092),(306,38,106,0,9988,'',0,2093,1209,2092,1360955829,1,1939),(306,38,106,0,9989,'',0,1665,1210,1939,1360955829,1,2093),(306,38,106,0,9990,'',0,1635,1211,2093,1360955829,1,1665),(306,38,106,0,9991,'',0,2094,1212,1665,1360955829,1,1635),(306,38,106,0,9992,'',0,1790,1213,1635,1360955829,1,2094),(306,38,106,0,9993,'',0,1679,1214,2094,1360955829,1,1790),(306,38,106,0,9994,'',0,1910,1215,1790,1360955829,1,1679),(306,38,106,0,9995,'',0,2095,1216,1679,1360955829,1,1910),(306,38,106,0,9996,'',0,1716,1217,1910,1360955829,1,2095),(306,38,106,0,9997,'',0,1717,1218,2095,1360955829,1,1716),(306,38,106,0,9998,'',0,2096,1219,1716,1360955829,1,1717),(306,38,106,0,9999,'',0,1852,1220,1717,1360955829,1,2096),(306,38,106,0,10000,'',0,2075,1221,2096,1360955829,1,1852),(306,38,106,0,10001,'',0,1641,1222,1852,1360955829,1,2075),(306,38,106,0,10002,'',0,2097,1223,2075,1360955829,1,1641),(306,38,106,0,10003,'',0,1643,1224,1641,1360955829,1,2097),(306,38,106,0,10004,'',0,2083,1225,2097,1360955829,1,1643),(306,38,106,0,10005,'',0,2098,1226,1643,1360955829,1,2083),(306,38,106,0,10006,'',0,1641,1227,2083,1360955829,1,2098),(306,38,106,0,10007,'',0,1651,1228,2098,1360955829,1,1641),(306,38,106,0,10008,'',0,2099,1229,1641,1360955829,1,1651),(306,38,106,0,10009,'',0,816,1230,1651,1360955829,1,2099),(306,38,106,0,10010,'',0,2100,1231,2099,1360955829,1,816),(306,38,106,0,10011,'',0,1717,1232,816,1360955829,1,2100),(306,38,106,0,10012,'',0,2101,1233,2100,1360955829,1,1717),(306,38,106,0,10013,'',0,2003,1234,1717,1360955829,1,2101),(306,38,106,0,10014,'',0,1651,1235,2101,1360955829,1,2003),(306,38,106,0,10015,'',0,2073,1236,2003,1360955829,1,1651),(306,38,106,0,10016,'',0,1812,1237,1651,1360955829,1,2073),(306,38,106,0,10017,'',0,1651,1238,2073,1360955829,1,1812),(306,38,106,0,10018,'',0,2050,1239,1812,1360955829,1,1651),(306,38,106,0,10019,'',0,2102,1240,1651,1360955829,1,2050),(306,38,106,0,10020,'',0,1677,1241,2050,1360955829,1,2102),(306,38,106,0,10021,'',0,2103,1242,2102,1360955829,1,1677),(306,38,106,0,10022,'',0,2070,1243,1677,1360955829,1,2103),(306,38,106,0,10023,'',0,2104,1244,2103,1360955829,1,2070),(306,38,106,0,10024,'',0,2105,1245,2070,1360955829,1,2104),(306,38,106,0,10025,'',0,814,1246,2104,1360955829,1,2105),(306,38,106,0,10026,'',0,1921,1247,2105,1360955829,1,814),(306,38,106,0,10027,'',0,1717,1248,814,1360955829,1,1921),(306,38,106,0,10028,'',0,2096,1249,1921,1360955829,1,1717),(306,38,106,0,10029,'',0,1641,1250,1717,1360955829,1,2096),(306,38,106,0,10030,'',0,1900,1251,2096,1360955829,1,1641),(306,38,106,0,10031,'',0,2058,1252,1641,1360955829,1,1900),(306,38,106,0,10032,'',0,2003,1253,1900,1360955829,1,2058),(306,38,106,0,10033,'',0,1651,1254,2058,1360955829,1,2003),(306,38,106,0,10034,'',0,2088,1255,2003,1360955829,1,1651),(306,38,106,0,10035,'',0,1635,1256,1651,1360955829,1,2088),(306,38,106,0,10036,'',0,1730,1257,2088,1360955829,1,1635),(306,38,106,0,10037,'',0,814,1258,1635,1360955829,1,1730),(306,38,106,0,10038,'',0,1770,1259,1730,1360955829,1,814),(306,38,106,0,10039,'',0,2106,1260,814,1360955829,1,1770),(306,38,106,0,10040,'',0,2089,1261,1770,1360955829,1,2106),(306,38,106,0,10041,'',0,1713,1262,2106,1360955829,1,2089),(306,38,106,0,10042,'',0,1743,1263,2089,1360955829,1,1713),(306,38,106,0,10043,'',0,1677,1264,1713,1360955829,1,1743),(306,38,106,0,10044,'',0,2107,1265,1743,1360955829,1,1677),(306,38,106,0,10045,'',0,814,1266,1677,1360955829,1,2107),(306,38,106,0,10046,'',0,2108,1267,2107,1360955829,1,814),(306,38,106,0,10047,'',0,816,1268,814,1360955829,1,2108),(306,38,106,0,10048,'',0,1852,1269,2108,1360955829,1,816),(306,38,106,0,10049,'',0,2099,1270,816,1360955829,1,1852),(306,38,106,0,10050,'',0,1851,1271,1852,1360955829,1,2099),(306,38,106,0,10051,'',0,1631,1272,2099,1360955829,1,1851),(306,38,106,0,10052,'',0,1632,1273,1851,1360955829,1,1631),(306,38,106,0,10053,'',0,1790,1274,1631,1360955829,1,1632),(306,38,106,0,10054,'',0,1679,1275,1632,1360955829,1,1790),(306,38,106,0,10055,'',0,1885,1276,1790,1360955829,1,1679),(306,38,106,0,10056,'',0,2109,1277,1679,1360955829,1,1885),(306,38,106,0,10057,'',0,1789,1278,1885,1360955829,1,2109),(306,38,106,0,10058,'',0,816,1279,2109,1360955829,1,1789),(306,38,106,0,10059,'',0,1723,1280,1789,1360955829,1,816),(306,38,106,0,10060,'',0,1914,1281,816,1360955829,1,1723),(306,38,106,0,10061,'',0,1717,1282,1723,1360955829,1,1914),(306,38,106,0,10062,'',0,1850,1283,1914,1360955829,1,1717),(306,38,106,0,10063,'',0,1662,1284,1717,1360955829,1,1850),(306,38,106,0,10064,'',0,1851,1285,1850,1360955829,1,1662),(306,38,106,0,10065,'',0,1651,1286,1662,1360955829,1,1851),(306,38,106,0,10066,'',0,2050,1287,1851,1360955829,1,1651),(306,38,106,0,10067,'',0,2110,1288,1651,1360955829,1,2050),(306,38,106,0,10068,'',0,1729,1289,2050,1360955829,1,2110),(306,38,106,0,10069,'',0,1631,1290,2110,1360955829,1,1729),(306,38,106,0,10070,'',0,1632,1291,1729,1360955829,1,1631),(306,38,106,0,10071,'',0,814,1292,1631,1360955829,1,1632),(306,38,106,0,10072,'',0,951,1293,1632,1360955829,1,814),(306,38,106,0,10073,'',0,2111,1294,814,1360955829,1,951),(306,38,106,0,10074,'',0,1677,1295,951,1360955829,1,2111),(306,38,106,0,10075,'',0,2112,1296,2111,1360955829,1,1677),(306,38,106,0,10076,'',0,2054,1297,1677,1360955829,1,2112),(306,38,106,0,10077,'',0,1869,1298,2112,1360955829,1,2054),(306,38,106,0,10078,'',0,1726,1299,2054,1360955829,1,1869),(306,38,106,0,10079,'',0,2113,1300,1869,1360955829,1,1726),(306,38,106,0,10080,'',0,1645,1301,1726,1360955829,1,2113),(306,38,106,0,10081,'',0,2114,1302,2113,1360955829,1,1645),(306,38,106,0,10082,'',0,1647,1303,1645,1360955829,1,2114),(306,38,106,0,10083,'',0,1799,1304,2114,1360955829,1,1647),(306,38,106,0,10084,'',0,1667,1305,1647,1360955829,1,1799),(306,38,106,0,10085,'',0,2115,1306,1799,1360955829,1,1667),(306,38,106,0,10086,'',0,2116,1307,1667,1360955829,1,2115),(306,38,106,0,10087,'',0,2117,1308,2115,1360955829,1,2116),(306,38,106,0,10088,'',0,1789,1309,2116,1360955829,1,2117),(306,38,106,0,10089,'',0,814,1310,2117,1360955829,1,1789),(306,38,106,0,10090,'',0,2014,1311,1789,1360955829,1,814),(306,38,106,0,10091,'',0,1645,1312,814,1360955829,1,2014),(306,38,106,0,10092,'',0,2118,1313,2014,1360955829,1,1645),(306,38,106,0,10093,'',0,814,1314,1645,1360955829,1,2118),(306,38,106,0,10094,'',0,1921,1315,2118,1360955829,1,814),(306,38,106,0,10095,'',0,816,1316,814,1360955829,1,1921),(306,38,106,0,10096,'',0,814,1317,1921,1360955829,1,816),(306,38,106,0,10097,'',0,2091,1318,816,1360955829,1,814),(306,38,106,0,10098,'',0,2050,1319,814,1360955829,1,2091),(306,38,106,0,10099,'',0,1713,1320,2091,1360955829,1,2050),(306,38,106,0,10100,'',0,2119,1321,2050,1360955829,1,1713),(306,38,106,0,10101,'',0,1654,1322,1713,1360955829,1,2119),(306,38,106,0,10102,'',0,814,1323,2119,1360955829,1,1654),(306,38,106,0,10103,'',0,2090,1324,1654,1360955829,1,814),(306,38,106,0,10104,'',0,1645,1325,814,1360955829,1,2090),(306,38,106,0,10105,'',0,814,1326,2090,1360955829,1,1645),(306,38,106,0,10106,'',0,2091,1327,1645,1360955829,1,814),(306,38,106,0,10107,'',0,2049,1328,814,1360955829,1,2091),(306,38,106,0,10108,'',0,1790,1329,2091,1360955829,1,2049),(306,38,106,0,10109,'',0,1679,1330,2049,1360955829,1,1790),(306,38,106,0,10110,'',0,2120,1331,1790,1360955829,1,1679),(306,38,106,0,10111,'',0,2121,1332,1679,1360955829,1,2120),(306,38,106,0,10112,'',0,1641,1333,2120,1360955829,1,2121),(306,38,106,0,10113,'',0,1664,1334,2121,1360955829,1,1641),(306,38,106,0,10114,'',0,814,1335,1641,1360955829,1,1664),(306,38,106,0,10115,'',0,2122,1336,1664,1360955829,1,814),(306,38,106,0,10116,'',0,1645,1337,814,1360955829,1,2122),(306,38,106,0,10117,'',0,814,1338,2122,1360955829,1,1645),(306,38,106,0,10118,'',0,2091,1339,1645,1360955829,1,814),(306,38,106,0,10119,'',0,1875,1340,814,1360955829,1,2091),(306,38,106,0,10120,'',0,1885,1341,2091,1360955829,1,1875),(306,38,106,0,10121,'',0,1900,1342,1875,1360955829,1,1885),(306,38,106,0,10122,'',0,2123,1343,1885,1360955829,1,1900),(306,38,106,0,10123,'',0,2124,1344,1900,1360955829,1,2123),(306,38,106,0,10124,'',0,1875,1345,2123,1360955829,1,2124),(306,38,106,0,10125,'',0,2125,1346,2124,1360955829,1,1875),(306,38,106,0,10126,'',0,2126,1347,1875,1360955829,1,2125),(306,38,106,0,10127,'',0,1759,1348,2125,1360955829,1,2126),(306,38,106,0,10128,'',0,1645,1349,2126,1360955829,1,1759),(306,38,106,0,10129,'',0,2127,1350,1759,1360955829,1,1645),(306,38,106,0,10130,'',0,1730,1351,1645,1360955829,1,2127),(306,38,106,0,10131,'',0,2128,1352,2127,1360955829,1,1730),(306,38,106,0,10132,'',0,2129,1353,1730,1360955829,1,2128),(306,38,106,0,10133,'',0,2130,1354,2128,1360955829,1,2129),(306,38,106,0,10134,'',0,1812,1355,2129,1360955829,1,2130),(306,38,106,0,10135,'',0,2131,1356,2130,1360955829,1,1812),(306,38,106,0,10136,'',0,1645,1357,1812,1360955829,1,2131),(306,38,106,0,10137,'',0,2054,1358,2131,1360955829,1,1645),(306,38,106,0,10138,'',0,1729,1359,1645,1360955829,1,2054),(306,38,106,0,10139,'',0,2132,1360,2054,1360955829,1,1729),(306,38,106,0,10140,'',0,1723,1361,1729,1360955829,1,2132),(306,38,106,0,10141,'',0,1645,1362,2132,1360955829,1,1723),(306,38,106,0,10142,'',0,814,1363,1723,1360955829,1,1645),(306,38,106,0,10143,'',0,2075,1364,1645,1360955829,1,814),(306,38,106,0,10144,'',0,1725,1365,814,1360955829,1,2075),(306,38,106,0,10145,'',0,1712,1366,2075,1360955829,1,1725),(306,38,106,0,10146,'',0,2133,1367,1725,1360955829,1,1712),(306,38,106,0,10147,'',0,1782,1368,1712,1360955829,1,2133),(306,38,106,0,10148,'',0,1726,1369,2133,1360955829,1,1782),(306,38,106,0,10149,'',0,2134,1370,1782,1360955829,1,1726),(306,38,106,0,10150,'',0,1677,1371,1726,1360955829,1,2134),(306,38,106,0,10151,'',0,2135,1372,2134,1360955829,1,1677),(306,38,106,0,10152,'',0,1627,1373,1677,1360955829,1,2135),(306,38,106,0,10153,'',0,1746,1374,2135,1360955829,1,1627),(306,38,106,0,10154,'',0,2136,1375,1627,1360955829,1,1746),(306,38,106,0,10155,'',0,2137,1376,1746,1360955829,1,2136),(306,38,106,0,10156,'',0,1645,1377,2136,1360955829,1,2137),(306,38,106,0,10157,'',0,814,1378,2137,1360955829,1,1645),(306,38,106,0,10158,'',0,2138,1379,1645,1360955829,1,814),(306,38,106,0,10159,'',0,1686,1380,814,1360955829,1,2138),(306,38,106,0,10160,'',0,1713,1381,2138,1360955829,1,1686),(306,38,106,0,10161,'',0,2139,1382,1686,1360955829,1,1713),(306,38,106,0,10162,'',0,2140,1383,1713,1360955829,1,2139),(306,38,106,0,10163,'',0,1641,1384,2139,1360955829,1,2140),(306,38,106,0,10164,'',0,1830,1385,2140,1360955829,1,1641),(306,38,106,0,10165,'',0,2141,1386,1641,1360955829,1,1830),(306,38,106,0,10166,'',0,2142,1387,1830,1360955829,1,2141),(306,38,106,0,10167,'',0,1922,1388,2141,1360955829,1,2142),(306,38,106,0,10168,'',0,2049,1389,2142,1360955829,1,1922),(306,38,106,0,10169,'',0,2050,1390,1922,1360955829,1,2049),(306,38,106,0,10170,'',0,1686,1391,2049,1360955829,1,2050),(306,38,106,0,10171,'',0,2143,1392,2050,1360955829,1,1686),(306,38,106,0,10172,'',0,1790,1393,1686,1360955829,1,2143),(306,38,106,0,10173,'',0,2109,1394,2143,1360955829,1,1790),(306,38,106,0,10174,'',0,816,1395,1790,1360955829,1,2109),(306,38,106,0,10175,'',0,1717,1396,2109,1360955829,1,816),(306,38,106,0,10176,'',0,1641,1397,816,1360955829,1,1717),(306,38,106,0,10177,'',0,1710,1398,1717,1360955829,1,1641),(306,38,106,0,10178,'',0,1900,1399,1641,1360955829,1,1710),(306,38,106,0,10179,'',0,1627,1400,1710,1360955829,1,1900),(306,38,106,0,10180,'',0,1677,1401,1900,1360955829,1,1627),(306,38,106,0,10181,'',0,1843,1402,1627,1360955829,1,1677),(306,38,106,0,10182,'',0,2144,1403,1677,1360955829,1,1843),(306,38,106,0,10183,'',0,1742,1404,1843,1360955829,1,2144),(306,38,106,0,10184,'',0,2145,1405,2144,1360955829,1,1742),(306,38,106,0,10185,'',0,1729,1406,1742,1360955829,1,2145),(306,38,106,0,10186,'',0,2146,1407,2145,1360955829,1,1729),(306,38,106,0,10187,'',0,2147,1408,1729,1360955829,1,2146),(306,38,106,0,10188,'',0,2133,1409,2146,1360955829,1,2147),(306,38,106,0,10189,'',0,1635,1410,2147,1360955829,1,2133),(306,38,106,0,10190,'',0,1641,1411,2133,1360955829,1,1635),(306,38,106,0,10191,'',0,1852,1412,1635,1360955829,1,1641),(306,38,106,0,10192,'',0,1902,1413,1641,1360955829,1,1852),(306,38,106,0,10193,'',0,1663,1414,1852,1360955829,1,1902),(306,38,106,0,10194,'',0,2044,1415,1902,1360955829,1,1663),(306,38,106,0,10195,'',0,1654,1416,1663,1360955829,1,2044),(306,38,106,0,10196,'',0,1631,1417,2044,1360955829,1,1654),(306,38,106,0,10197,'',0,1632,1418,1654,1360955829,1,1631),(306,38,106,0,10198,'',0,1761,1419,1631,1360955829,1,1632),(306,38,106,0,10199,'',0,1716,1420,1632,1360955829,1,1761),(306,38,106,0,10200,'',0,1717,1421,1761,1360955829,1,1716),(306,38,106,0,10201,'',0,1710,1422,1716,1360955829,1,1717),(306,38,106,0,10202,'',0,2148,1423,1717,1360955829,1,1710),(306,38,106,0,10203,'',0,1641,1424,1710,1360955829,1,2148),(306,38,106,0,10204,'',0,1631,1425,2148,1360955829,1,1641),(306,38,106,0,10205,'',0,1632,1426,1641,1360955829,1,1631),(306,38,106,0,10206,'',0,1633,1427,1631,1360955829,1,1632),(306,38,106,0,10207,'',0,1654,1428,1632,1360955829,1,1633),(306,38,106,0,10208,'',0,1649,1429,1633,1360955829,1,1654),(306,38,106,0,10209,'',0,1761,1430,1654,1360955829,1,1649),(306,38,106,0,10210,'',0,1678,1431,1649,1360955829,1,1761),(306,38,106,0,10211,'',0,1726,1432,1761,1360955829,1,1678),(306,38,106,0,10212,'',0,1643,1433,1678,1360955829,1,1726),(306,38,106,0,10213,'',0,1736,1434,1726,1360955829,1,1643),(306,38,106,0,10214,'',0,2044,1435,1643,1360955829,1,1736),(306,38,106,0,10215,'',0,1677,1436,1736,1360955829,1,2044),(306,38,106,0,10216,'',0,1968,1437,2044,1360955829,1,1677),(306,38,106,0,10217,'',0,2149,1438,1677,1360955829,1,1968),(306,38,106,0,10218,'',0,1717,1439,1968,1360955829,1,2149),(306,38,106,0,10219,'',0,1694,1440,2149,1360955829,1,1717),(306,38,106,0,10220,'',0,2150,1441,1717,1360955829,1,1694),(306,38,106,0,10221,'',0,1717,1442,1694,1360955829,1,2150),(306,38,106,0,10222,'',0,1710,1443,2150,1360955829,1,1717),(306,38,106,0,10223,'',0,2151,1444,1717,1360955829,1,1710),(306,38,106,0,10224,'',0,816,1445,1710,1360955829,1,2151),(306,38,106,0,10225,'',0,2152,1446,2151,1360955829,1,816),(306,38,106,0,10226,'',0,2016,1447,816,1360955829,1,2152),(306,38,106,0,10227,'',0,1700,1448,2152,1360955829,1,2016),(306,38,106,0,10228,'',0,1710,1449,2016,1360955829,1,1700),(306,38,106,0,10229,'',0,2153,1450,1700,1360955829,1,1710),(306,38,106,0,10230,'',0,1682,1451,1710,1360955829,1,2153),(306,38,106,0,10231,'',0,1631,1452,2153,1360955829,1,1682),(306,38,106,0,10232,'',0,1632,1453,1682,1360955829,1,1631),(306,38,106,0,10233,'',0,1633,1454,1631,1360955829,1,1632),(306,38,106,0,10234,'',0,1838,1455,1632,1360955829,1,1633),(306,38,106,0,10235,'',0,1938,1456,1633,1360955829,1,1838),(306,38,106,0,10236,'',0,1635,1457,1838,1360955829,1,1938),(306,38,106,0,10237,'',0,2154,1458,1938,1360955829,1,1635),(306,38,106,0,10238,'',0,1677,1459,1635,1360955829,1,2154),(306,38,106,0,10239,'',0,1700,1460,2154,1360955829,1,1677),(306,38,106,0,10240,'',0,1710,1461,1677,1360955829,1,1700),(306,38,106,0,10241,'',0,2155,1462,1700,1360955829,1,1710),(306,38,106,0,10242,'',0,2153,1463,1710,1360955829,1,2155),(306,38,106,0,10243,'',0,1682,1464,2155,1360955829,1,2153),(306,38,106,0,10244,'',0,814,1465,2153,1360955829,1,1682),(306,38,106,0,10245,'',0,1683,1466,1682,1360955829,1,814),(306,38,106,0,10246,'',0,1730,1467,814,1360955829,1,1683),(306,38,106,0,10247,'',0,1747,1468,1683,1360955829,1,1730),(306,38,106,0,10248,'',0,1645,1469,1730,1360955829,1,1747),(306,38,106,0,10249,'',0,1631,1470,1747,1360955829,1,1645),(306,38,106,0,10250,'',0,1632,1471,1645,1360955829,1,1631),(306,38,106,0,10251,'',0,1633,1472,1631,1360955829,1,1632),(306,38,106,0,10252,'',0,1631,1473,1632,1360955829,1,1633),(306,38,106,0,10253,'',0,1632,1474,1633,1360955829,1,1631),(306,38,106,0,10254,'',0,1761,1475,1631,1360955829,1,1632),(306,38,106,0,10255,'',0,1713,1476,1632,1360955829,1,1761),(306,38,106,0,10256,'',0,1745,1477,1761,1360955829,1,1713),(306,38,106,0,10257,'',0,1678,1478,1713,1360955829,1,1745),(306,38,106,0,10258,'',0,1647,1479,1745,1360955829,1,1678),(306,38,106,0,10259,'',0,2156,1480,1678,1360955829,1,1647),(306,38,106,0,10260,'',0,1748,1481,1647,1360955829,1,2156),(306,38,106,0,10261,'',0,1645,1482,2156,1360955829,1,1748),(306,38,106,0,10262,'',0,814,1483,1748,1360955829,1,1645),(306,38,106,0,10263,'',0,2157,1484,1645,1360955829,1,814),(306,38,106,0,10264,'',0,2037,1485,814,1360955829,1,2157),(306,38,106,0,10265,'',0,2072,1486,2157,1360955829,1,2037),(306,38,106,0,10266,'',0,1830,1487,2037,1360955829,1,2072),(306,38,106,0,10267,'',0,1798,1488,2072,1360955829,1,1830),(306,38,106,0,10268,'',0,1718,1489,1830,1360955829,1,1798),(306,38,106,0,10269,'',0,1961,1490,1798,1360955829,1,1718),(306,38,106,0,10270,'',0,1763,1491,1718,1360955829,1,1961),(306,38,106,0,10271,'',0,1770,1492,1961,1360955829,1,1763),(306,38,106,0,10272,'',0,814,1493,1763,1360955829,1,1770),(306,38,106,0,10273,'',0,2158,1494,1770,1360955829,1,814),(306,38,106,0,10274,'',0,2159,1495,814,1360955829,1,2158),(306,38,106,0,10275,'',0,2158,1496,2158,1360955829,1,2159),(306,38,106,0,10276,'',0,2063,1497,2159,1360955829,1,2158),(306,38,106,0,10277,'',0,2088,1498,2158,1360955829,1,2063),(306,38,106,0,10278,'',0,2089,1499,2063,1360955829,1,2088),(306,38,106,0,10279,'',0,2063,1500,2088,1360955829,1,2089),(306,38,106,0,10280,'',0,1762,1501,2089,1360955829,1,2063),(306,38,106,0,10281,'',0,1743,1502,2063,1360955829,1,1762),(306,38,106,0,10282,'',0,816,1503,1762,1360955829,1,1743),(306,38,106,0,10283,'',0,1658,1504,1743,1360955829,1,816),(306,38,106,0,10284,'',0,1713,1505,816,1360955829,1,1658),(306,38,106,0,10285,'',0,1727,1506,1658,1360955829,1,1713),(306,38,106,0,10286,'',0,2160,1507,1713,1360955829,1,1727),(306,38,106,0,10287,'',0,1635,1508,1727,1360955829,1,2160),(306,38,106,0,10288,'',0,2161,1509,2160,1360955829,1,1635),(306,38,106,0,10289,'',0,1645,1510,1635,1360955829,1,2161),(306,38,106,0,10290,'',0,1770,1511,2161,1360955829,1,1645),(306,38,106,0,10291,'',0,814,1512,1645,1360955829,1,1770),(306,38,106,0,10292,'',0,2088,1513,1770,1360955829,1,814),(306,38,106,0,10293,'',0,2089,1514,814,1360955829,1,2088),(306,38,106,0,10294,'',0,2162,1515,2088,1360955829,1,2089),(306,38,106,0,10295,'',0,2163,1516,2089,1360955829,1,2162),(306,38,106,0,10296,'',0,1630,1517,2162,1360955829,1,2163),(306,38,106,0,10297,'',0,814,1518,2163,1360955829,1,1630),(306,38,106,0,10298,'',0,1730,1519,1630,1360955829,1,814),(306,38,106,0,10299,'',0,1731,1520,814,1360955829,1,1730),(306,38,106,0,10300,'',0,1770,1521,1730,1360955829,1,1731),(306,38,106,0,10301,'',0,1769,1522,1731,1360955829,1,1770),(306,38,106,0,10302,'',0,1689,1523,1770,1360955829,1,1769),(306,38,106,0,10303,'',0,2036,1524,1769,1360955829,1,1689),(306,38,106,0,10304,'',0,1939,1525,1689,1360955829,1,2036),(306,38,106,0,10305,'',0,2059,1526,2036,1360955829,1,1939),(306,38,106,0,10306,'',0,1665,1527,1939,1360955829,1,2059),(306,38,106,0,10307,'',0,2073,1528,2059,1360955829,1,1665),(306,38,106,0,10308,'',0,2164,1529,1665,1360955829,1,2073),(306,38,106,0,10309,'',0,1651,1530,2073,1360955829,1,2164),(306,38,106,0,10310,'',0,2165,1531,2164,1360955829,1,1651),(306,38,106,0,10311,'',0,2166,1532,1651,1360955829,1,2165),(306,38,106,0,10312,'',0,2167,1533,2165,1360955829,1,2166),(306,38,106,0,10313,'',0,814,1534,2166,1360955829,1,2167),(306,38,106,0,10314,'',0,2168,1535,2167,1360955829,1,814),(306,38,106,0,10315,'',0,1770,1536,814,1360955829,1,2168),(306,38,106,0,10316,'',0,2061,1537,2168,1360955829,1,1770),(306,38,106,0,10317,'',0,1643,1538,1770,1360955829,1,2061),(306,38,106,0,10318,'',0,2169,1539,2061,1360955829,1,1643),(306,38,106,0,10319,'',0,1683,1540,1643,1360955829,1,2169),(306,38,106,0,10320,'',0,1866,1541,2169,1360955829,1,1683),(306,38,106,0,10321,'',0,2170,1542,1683,1360955829,1,1866),(306,38,106,0,10322,'',0,1681,1543,1866,1360955829,1,2170),(306,38,106,0,10323,'',0,2088,1544,2170,1360955829,1,1681),(306,38,106,0,10324,'',0,2171,1545,1681,1360955829,1,2088),(306,38,106,0,10325,'',0,1874,1546,2088,1360955829,1,2171),(306,38,106,0,10326,'',0,814,1547,2171,1360955829,1,1874),(306,38,106,0,10327,'',0,2089,1548,1874,1360955829,1,814),(306,38,106,0,10328,'',0,1777,1549,814,1360955829,1,2089),(306,38,106,0,10329,'',0,1647,1550,2089,1360955829,1,1777),(306,38,106,0,10330,'',0,814,1551,1777,1360955829,1,1647),(306,38,106,0,10331,'',0,1791,1552,1647,1360955829,1,814),(306,38,106,0,10332,'',0,1641,1553,814,1360955829,1,1791),(306,38,106,0,10333,'',0,2172,1554,1791,1360955829,1,1641),(306,38,106,0,10334,'',0,1790,1555,1641,1360955829,1,2172),(306,38,106,0,10335,'',0,1726,1556,2172,1360955829,1,1790),(306,38,106,0,10336,'',0,1831,1557,1790,1360955829,1,1726),(306,38,106,0,10337,'',0,2173,1558,1726,1360955829,1,1831),(306,38,106,0,10338,'',0,1792,1559,1831,1360955829,1,2173),(306,38,106,0,10339,'',0,1815,1560,2173,1360955829,1,1792),(306,38,106,0,10340,'',0,2174,1561,1792,1360955829,1,1815),(306,38,106,0,10341,'',0,2073,1562,1815,1360955829,1,2174),(306,38,106,0,10342,'',0,1635,1563,2174,1360955829,1,2073),(306,38,106,0,10343,'',0,1631,1564,2073,1360955829,1,1635),(306,38,106,0,10344,'',0,1632,1565,1635,1360955829,1,1631),(306,38,106,0,10345,'',0,1761,1566,1631,1360955829,1,1632),(306,38,106,0,10346,'',0,1716,1567,1632,1360955829,1,1761),(306,38,106,0,10347,'',0,1717,1568,1761,1360955829,1,1716),(306,38,106,0,10348,'',0,2175,1569,1716,1360955829,1,1717),(306,38,106,0,10349,'',0,1641,1570,1717,1360955829,1,2175),(306,38,106,0,10350,'',0,1979,1571,2175,1360955829,1,1641),(306,38,106,0,10351,'',0,1643,1572,1641,1360955829,1,1979),(306,38,106,0,10352,'',0,1970,1573,1979,1360955829,1,1643),(306,38,106,0,10353,'',0,1923,1574,1643,1360955829,1,1970),(306,38,106,0,10354,'',0,1654,1575,1970,1360955829,1,1923),(306,38,106,0,10355,'',0,814,1576,1923,1360955829,1,1654),(306,38,106,0,10356,'',0,2176,1577,1654,1360955829,1,814),(306,38,106,0,10357,'',0,1635,1578,814,1360955829,1,2176),(306,38,106,0,10358,'',0,1641,1579,2176,1360955829,1,1635),(306,38,106,0,10359,'',0,1852,1580,1635,1360955829,1,1641),(306,38,106,0,10360,'',0,2088,1581,1641,1360955829,1,1852),(306,38,106,0,10361,'',0,1717,1582,1852,1360955829,1,2088),(306,38,106,0,10362,'',0,2101,1583,2088,1360955829,1,1717),(306,38,106,0,10363,'',0,1984,1584,1717,1360955829,1,2101),(306,38,106,0,10364,'',0,2174,1585,2101,1360955829,1,1984),(306,38,106,0,10365,'',0,1681,1586,1984,1360955829,1,2174),(306,38,106,0,10366,'',0,1825,1587,2174,1360955829,1,1681),(306,38,106,0,10367,'',0,2177,1588,1681,1360955829,1,1825),(306,38,106,0,10368,'',0,1688,1589,1825,1360955829,1,2177),(306,38,106,0,10369,'',0,2174,1590,2177,1360955829,1,1688),(306,38,106,0,10370,'',0,1923,1591,1688,1360955829,1,2174),(306,38,106,0,10371,'',0,2178,1592,2174,1360955829,1,1923),(306,38,106,0,10372,'',0,2179,1593,1923,1360955829,1,2178),(306,38,106,0,10373,'',0,2180,1594,2178,1360955829,1,2179),(306,38,106,0,10374,'',0,2181,1595,2179,1360955829,1,2180),(306,38,106,0,10375,'',0,2182,1596,2180,1360955829,1,2181),(306,38,106,0,10376,'',0,2183,1597,2181,1360955829,1,2182),(306,38,106,0,10377,'',0,2184,1598,2182,1360955829,1,2183),(306,38,106,0,10378,'',0,2104,1599,2183,1360955829,1,2184),(306,38,106,0,10379,'',0,1925,1600,2184,1360955829,1,2104),(306,38,106,0,10380,'',0,1686,1601,2104,1360955829,1,1925),(306,38,106,0,10381,'',0,1713,1602,1925,1360955829,1,1686),(306,38,106,0,10382,'',0,2185,1603,1686,1360955829,1,1713),(306,38,106,0,10383,'',0,1665,1604,1713,1360955829,1,2185),(306,38,106,0,10384,'',0,814,1605,2185,1360955829,1,1665),(306,38,106,0,10385,'',0,1973,1606,1665,1360955829,1,814),(306,38,106,0,10386,'',0,1677,1607,814,1360955829,1,1973),(306,38,106,0,10387,'',0,2186,1608,1973,1360955829,1,1677),(306,38,106,0,10388,'',0,1713,1609,1677,1360955829,1,2186),(306,38,106,0,10389,'',0,1677,1610,2186,1360955829,1,1713),(306,38,106,0,10390,'',0,1717,1611,1713,1360955829,1,1677),(306,38,106,0,10391,'',0,1718,1612,1677,1360955829,1,1717),(306,38,106,0,10392,'',0,1792,1613,1717,1360955829,1,1718),(306,38,106,0,10393,'',0,1793,1614,1718,1360955829,1,1792),(306,38,106,0,10394,'',0,2187,1615,1792,1360955829,1,1793),(306,38,106,0,10395,'',0,1852,1616,1793,1360955829,1,2187),(306,38,106,0,10396,'',0,2114,1617,2187,1360955829,1,1852),(306,38,106,0,10397,'',0,1852,1618,1852,1360955829,1,2114),(306,38,106,0,10398,'',0,2049,1619,2114,1360955829,1,1852),(306,38,106,0,10399,'',0,2088,1620,1852,1360955829,1,2049),(306,38,106,0,10400,'',0,1713,1621,2049,1360955829,1,2088),(306,38,106,0,10401,'',0,1778,1622,2088,1360955829,1,1713),(306,38,106,0,10402,'',0,2153,1623,1713,1360955829,1,1778),(306,38,106,0,10403,'',0,2188,1624,1778,1360955829,1,2153),(306,38,106,0,10404,'',0,1641,1625,2153,1360955829,1,2188),(306,38,106,0,10405,'',0,814,1626,2188,1360955829,1,1641),(306,38,106,0,10406,'',0,1922,1627,1641,1360955829,1,814),(306,38,106,0,10407,'',0,1647,1628,814,1360955829,1,1922),(306,38,106,0,10408,'',0,2189,1629,1922,1360955829,1,1647),(306,38,106,0,10409,'',0,2138,1630,1647,1360955829,1,2189),(306,38,106,0,10410,'',0,2190,1631,2189,1360955829,1,2138),(306,38,106,0,10411,'',0,1868,1632,2138,1360955829,1,2190),(306,38,106,0,10412,'',0,814,1633,2190,1360955829,1,1868),(306,38,106,0,10413,'',0,1658,1634,1868,1360955829,1,814),(306,38,106,0,10414,'',0,1631,1635,814,1360955829,1,1658),(306,38,106,0,10415,'',0,1632,1636,1658,1360955829,1,1631),(306,38,106,0,10416,'',0,1761,1637,1631,1360955829,1,1632),(306,38,106,0,10417,'',0,1769,1638,1632,1360955829,1,1761),(306,38,106,0,10418,'',0,2191,1639,1761,1360955829,1,1769),(306,38,106,0,10419,'',0,1815,1640,1769,1360955829,1,2191),(306,38,106,0,10420,'',0,1647,1641,2191,1360955829,1,1815),(306,38,106,0,10421,'',0,1815,1642,1815,1360955829,1,1647),(306,38,106,0,10422,'',0,2192,1643,1647,1360955829,1,1815),(306,38,106,0,10423,'',0,1630,1644,1815,1360955829,1,2192),(306,38,106,0,10424,'',0,2190,1645,2192,1360955829,1,1630),(306,38,106,0,10425,'',0,1627,1646,1630,1360955829,1,2190),(306,38,106,0,10426,'',0,1782,1647,2190,1360955829,1,1627),(306,38,106,0,10427,'',0,2193,1648,1627,1360955829,1,1782),(306,38,106,0,10428,'',0,1641,1649,1782,1360955829,1,2193),(306,38,106,0,10429,'',0,1663,1650,2193,1360955829,1,1641),(306,38,106,0,10430,'',0,2194,1651,1641,1360955829,1,1663),(306,38,106,0,10431,'',0,2195,1652,1663,1360955829,1,2194),(306,38,106,0,10432,'',0,1641,1653,2194,1360955829,1,2195),(306,38,106,0,10433,'',0,1719,1654,2195,1360955829,1,1641),(306,38,106,0,10434,'',0,1769,1655,1641,1360955829,1,1719),(306,38,106,0,10435,'',0,1635,1656,1719,1360955829,1,1769),(306,38,106,0,10436,'',0,814,1657,1769,1360955829,1,1635),(306,38,106,0,10437,'',0,1631,1658,1635,1360955829,1,814),(306,38,106,0,10438,'',0,1632,1659,814,1360955829,1,1631),(306,38,106,0,10439,'',0,1633,1660,1631,1360955829,1,1632),(306,38,106,0,10440,'',0,2196,1661,1632,1360955829,1,1633),(306,38,106,0,10441,'',0,1970,1662,1633,1360955829,1,2196),(306,38,106,0,10442,'',0,1921,1663,2196,1360955829,1,1970),(306,38,106,0,10443,'',0,1713,1664,1970,1360955829,1,1921),(306,38,106,0,10444,'',0,1766,1665,1921,1360955829,1,1713),(306,38,106,0,10445,'',0,1830,1666,1713,1360955829,1,1766),(306,38,106,0,10446,'',0,1651,1667,1766,1360955829,1,1830),(306,38,106,0,10447,'',0,2197,1668,1830,1360955829,1,1651),(306,38,106,0,10448,'',0,1980,1669,1651,1360955829,1,2197),(306,38,106,0,10449,'',0,1641,1670,2197,1360955829,1,1980),(306,38,106,0,10450,'',0,814,1671,1980,1360955829,1,1641),(306,38,106,0,10451,'',0,1715,1672,1641,1360955829,1,814),(306,38,106,0,10452,'',0,1651,1673,814,1360955829,1,1715),(306,38,106,0,10453,'',0,2198,1674,1715,1360955829,1,1651),(306,38,106,0,10454,'',0,1980,1675,1651,1360955829,1,2198),(306,38,106,0,10455,'',0,1686,1676,2198,1360955829,1,1980),(306,38,106,0,10456,'',0,1791,1677,1980,1360955829,1,1686),(306,38,106,0,10457,'',0,1677,1678,1686,1360955829,1,1791),(306,38,106,0,10458,'',0,1717,1679,1791,1360955829,1,1677),(306,38,106,0,10459,'',0,1850,1680,1677,1360955829,1,1717),(306,38,106,0,10460,'',0,2003,1681,1717,1360955829,1,1850),(306,38,106,0,10461,'',0,814,1682,1850,1360955829,1,2003),(306,38,106,0,10462,'',0,2199,1683,2003,1360955829,1,814),(306,38,106,0,10463,'',0,1641,1684,814,1360955829,1,2199),(306,38,106,0,10464,'',0,2200,1685,2199,1360955829,1,1641),(306,38,106,0,10465,'',0,814,1686,1641,1360955829,1,2200),(306,38,106,0,10466,'',0,1921,1687,2200,1360955829,1,814),(306,38,106,0,10467,'',0,1830,1688,814,1360955829,1,1921),(306,38,106,0,10468,'',0,2063,1689,1921,1360955829,1,1830),(306,38,106,0,10469,'',0,1635,1690,1830,1360955829,1,2063),(306,38,106,0,10470,'',0,1651,1691,2063,1360955829,1,1635),(306,38,106,0,10471,'',0,2050,1692,1635,1360955829,1,1651),(306,38,106,0,10472,'',0,2071,1693,1651,1360955829,1,2050),(306,38,106,0,10473,'',0,1647,1694,2050,1360955829,1,2071),(306,38,106,0,10474,'',0,2201,1695,2071,1360955829,1,1647),(306,38,106,0,10475,'',0,1651,1696,1647,1360955829,1,2201),(306,38,106,0,10476,'',0,2088,1697,2201,1360955829,1,1651),(306,38,106,0,10477,'',0,1641,1698,1651,1360955829,1,2088),(306,38,106,0,10478,'',0,2097,1699,2088,1360955829,1,1641),(306,38,106,0,10479,'',0,814,1700,1641,1360955829,1,2097),(306,38,106,0,10480,'',0,2202,1701,2097,1360955829,1,814),(306,38,106,0,10481,'',0,1686,1702,814,1360955829,1,2202),(306,38,106,0,10482,'',0,2092,1703,2202,1360955829,1,1686),(306,38,106,0,10483,'',0,1681,1704,1686,1360955829,1,2092),(306,38,106,0,10484,'',0,1651,1705,2092,1360955829,1,1681),(306,38,106,0,10485,'',0,2165,1706,1681,1360955829,1,1651),(306,38,106,0,10486,'',0,1815,1707,1651,1360955829,1,2165),(306,38,106,0,10487,'',0,1905,1708,2165,1360955829,1,1815),(306,38,106,0,10488,'',0,1665,1709,1815,1360955829,1,1905),(306,38,106,0,10489,'',0,1790,1710,1905,1360955829,1,1665),(306,38,106,0,10490,'',0,2203,1711,1665,1360955829,1,1790),(306,38,106,0,10491,'',0,1641,1712,1790,1360955829,1,2203),(306,38,106,0,10492,'',0,2204,1713,2203,1360955829,1,1641),(306,38,106,0,10493,'',0,2088,1714,1641,1360955829,1,2204),(306,38,106,0,10494,'',0,1710,1715,2204,1360955829,1,2088),(306,38,106,0,10495,'',0,1900,1716,2088,1360955829,1,1710),(306,38,106,0,10496,'',0,1647,1717,1710,1360955829,1,1900),(306,38,106,0,10497,'',0,1790,1718,1900,1360955829,1,1647),(306,38,106,0,10498,'',0,1870,1719,1647,1360955829,1,1790),(306,38,106,0,10499,'',0,2205,1720,1790,1360955829,1,1870),(306,38,106,0,10500,'',0,1717,1721,1870,1360955829,1,2205),(306,38,106,0,10501,'',0,1651,1722,2205,1360955829,1,1717),(306,38,106,0,10502,'',0,2206,1723,1717,1360955829,1,1651),(306,38,106,0,10503,'',0,1641,1724,1651,1360955829,1,2206),(306,38,106,0,10504,'',0,1938,1725,2206,1360955829,1,1641),(306,38,106,0,10505,'',0,1706,1726,1641,1360955829,1,1938),(306,38,106,0,10506,'',0,1645,1727,1938,1360955829,1,1706),(306,38,106,0,10507,'',0,814,1728,1706,1360955829,1,1645),(306,38,106,0,10508,'',0,2207,1729,1645,1360955829,1,814),(306,38,106,0,10509,'',0,2190,1730,814,1360955829,1,2207),(306,38,106,0,10510,'',0,1681,1731,2207,1360955829,1,2190),(306,38,106,0,10511,'',0,2208,1732,2190,1360955829,1,1681),(306,38,106,0,10512,'',0,1651,1733,1681,1360955829,1,2208),(306,38,106,0,10513,'',0,2178,1734,2208,1360955829,1,1651),(306,38,106,0,10514,'',0,1645,1735,1651,1360955829,1,2178),(306,38,106,0,10515,'',0,2209,1736,2178,1360955829,1,1645),(306,38,106,0,10516,'',0,1712,1737,1645,1360955829,1,2209),(306,38,106,0,10517,'',0,1651,1738,2209,1360955829,1,1712),(306,38,106,0,10518,'',0,2210,1739,1712,1360955829,1,1651),(306,38,106,0,10519,'',0,1916,1740,1651,1360955829,1,2210),(306,38,106,0,10520,'',0,1645,1741,2210,1360955829,1,1916),(306,38,106,0,10521,'',0,814,1742,1916,1360955829,1,1645),(306,38,106,0,10522,'',0,2088,1743,1645,1360955829,1,814),(306,38,106,0,10523,'',0,2211,1744,814,1360955829,1,2088),(306,38,106,0,10524,'',0,2212,1745,2088,1360955829,1,2211),(306,38,106,0,10525,'',0,2213,1746,2211,1360955829,1,2212),(306,38,106,0,10526,'',0,1723,1747,2212,1360955829,1,2213),(306,38,106,0,10527,'',0,1631,1748,2213,1360955829,1,1723),(306,38,106,0,10528,'',0,1632,1749,1723,1360955829,1,1631),(306,38,106,0,10529,'',0,1761,1750,1631,1360955829,1,1632),(306,38,106,0,10530,'',0,1692,1751,1632,1360955829,1,1761),(306,38,106,0,10531,'',0,1722,1752,1761,1360955829,1,1692),(306,38,106,0,10532,'',0,1677,1753,1692,1360955829,1,1722),(306,38,106,0,10533,'',0,1651,1754,1722,1360955829,1,1677),(306,38,106,0,10534,'',0,2099,1755,1677,1360955829,1,1651),(306,38,106,0,10535,'',0,1635,1756,1651,1360955829,1,2099),(306,38,106,0,10536,'',0,1631,1757,2099,1360955829,1,1635),(306,38,106,0,10537,'',0,1761,1758,1635,1360955829,1,1631),(306,38,106,0,10538,'',0,1713,1759,1631,1360955829,1,1761),(306,38,106,0,10539,'',0,2214,1760,1761,1360955829,1,1713),(306,38,106,0,10540,'',0,1635,1761,1713,1360955829,1,2214),(306,38,106,0,10541,'',0,2215,1762,2214,1360955829,1,1635),(306,38,106,0,10542,'',0,2216,1763,1635,1360955829,1,2215),(306,38,106,0,10543,'',0,814,1764,2215,1360955829,1,2216),(306,38,106,0,10544,'',0,1684,1765,2216,1360955829,1,814),(306,38,106,0,10545,'',0,1698,1766,814,1360955829,1,1684),(306,38,106,0,10546,'',0,2217,1767,1684,1360955829,1,1698),(306,38,106,0,10547,'',0,814,1768,1698,1360955829,1,2217),(306,38,106,0,10548,'',0,2218,1769,2217,1360955829,1,814),(306,38,106,0,10549,'',0,2219,1770,814,1360955829,1,2218),(306,38,106,0,10550,'',0,814,1771,2218,1360955829,1,2219),(306,38,106,0,10551,'',0,2220,1772,2219,1360955829,1,814),(306,38,106,0,10552,'',0,2049,1773,814,1360955829,1,2220),(306,38,106,0,10553,'',0,2088,1774,2220,1360955829,1,2049),(306,38,106,0,10554,'',0,1645,1775,2049,1360955829,1,2088),(306,38,106,0,10555,'',0,1651,1776,2088,1360955829,1,1645),(306,38,106,0,10556,'',0,1923,1777,1645,1360955829,1,1651),(306,38,106,0,10557,'',0,2221,1778,1651,1360955829,1,1923),(306,38,106,0,10558,'',0,1647,1779,1923,1360955829,1,2221),(306,38,106,0,10559,'',0,2058,1780,2221,1360955829,1,1647),(306,38,106,0,10560,'',0,2222,1781,1647,1360955829,1,2058),(306,38,106,0,10561,'',0,814,1782,2058,1360955829,1,2222),(306,38,106,0,10562,'',0,2219,1783,2222,1360955829,1,814),(306,38,106,0,10563,'',0,1645,1784,814,1360955829,1,2219),(306,38,106,0,10564,'',0,1677,1785,2219,1360955829,1,1645),(306,38,106,0,10565,'',0,1830,1786,1645,1360955829,1,1677),(306,38,106,0,10566,'',0,2108,1787,1677,1360955829,1,1830),(306,38,106,0,10567,'',0,1641,1788,1830,1360955829,1,2108),(306,38,106,0,10568,'',0,1651,1789,2108,1360955829,1,1641),(306,38,106,0,10569,'',0,2223,1790,1641,1360955829,1,1651),(306,38,106,0,10570,'',0,1782,1791,1651,1360955829,1,2223),(306,38,106,0,10571,'',0,2217,1792,2223,1360955829,1,1782),(306,38,106,0,10572,'',0,814,1793,1782,1360955829,1,2217),(306,38,106,0,10573,'',0,2099,1794,2217,1360955829,1,814),(306,38,106,0,10574,'',0,2224,1795,814,1360955829,1,2099),(306,38,106,0,10575,'',0,1716,1796,2099,1360955829,1,2224),(306,38,106,0,10576,'',0,1717,1797,2224,1360955829,1,1716),(306,38,106,0,10577,'',0,2096,1798,1716,1360955829,1,1717),(306,38,106,0,10578,'',0,814,1799,1717,1360955829,1,2096),(306,38,106,0,10579,'',0,2223,1800,2096,1360955829,1,814),(306,38,106,0,10580,'',0,2088,1801,814,1360955829,1,2223),(306,38,106,0,10581,'',0,1641,1802,2223,1360955829,1,2088),(306,38,106,0,10582,'',0,1742,1803,2088,1360955829,1,1641),(306,38,106,0,10583,'',0,2225,1804,1641,1360955829,1,1742),(306,38,106,0,10584,'',0,1641,1805,1742,1360955829,1,2225),(306,38,106,0,10585,'',0,2078,1806,2225,1360955829,1,1641),(306,38,106,0,10586,'',0,1743,1807,1641,1360955829,1,2078),(306,38,106,0,10587,'',0,1729,1808,2078,1360955829,1,1743),(306,38,106,0,10588,'',0,814,1809,1743,1360955829,1,1729),(306,38,106,0,10589,'',0,2226,1810,1729,1360955829,1,814),(306,38,106,0,10590,'',0,2088,1811,814,1360955829,1,2226),(306,38,106,0,10591,'',0,1717,1812,2226,1360955829,1,2088),(306,38,106,0,10592,'',0,1872,1813,2088,1360955829,1,1717),(306,38,106,0,10593,'',0,1641,1814,1717,1360955829,1,1872),(306,38,106,0,10594,'',0,1974,1815,1872,1360955829,1,1641),(306,38,106,0,10595,'',0,2212,1816,1641,1360955829,1,1974),(306,38,106,0,10596,'',0,2227,1817,1974,1360955829,1,2212),(306,38,106,0,10597,'',0,2078,1818,2212,1360955829,1,2227),(306,38,106,0,10598,'',0,1635,1819,2227,1360955829,1,2078),(306,38,106,0,10599,'',0,1651,1820,2078,1360955829,1,1635),(306,38,106,0,10600,'',0,2136,1821,1635,1360955829,1,1651),(306,38,106,0,10601,'',0,2228,1822,1651,1360955829,1,2136),(306,38,106,0,10602,'',0,1875,1823,2136,1360955829,1,2228),(306,38,106,0,10603,'',0,2174,1824,2228,1360955829,1,1875),(306,38,106,0,10604,'',0,2152,1825,1875,1360955829,1,2174),(306,38,106,0,10605,'',0,2229,1826,2174,1360955829,1,2152),(306,38,106,0,10606,'',0,1635,1827,2152,1360955829,1,2229),(306,38,106,0,10607,'',0,1770,1828,2229,1360955829,1,1635),(306,38,106,0,10608,'',0,2155,1829,1635,1360955829,1,1770),(306,38,106,0,10609,'',0,2230,1830,1770,1360955829,1,2155),(306,38,106,0,10610,'',0,2097,1831,2155,1360955829,1,2230),(306,38,106,0,10611,'',0,2231,1832,2230,1360955829,1,2097),(306,38,106,0,10612,'',0,2232,1833,2097,1360955829,1,2231),(306,38,106,0,10613,'',0,816,1834,2231,1360955829,1,2232),(306,38,106,0,10614,'',0,2233,1835,2232,1360955829,1,816),(306,38,106,0,10615,'',0,1980,1836,816,1360955829,1,2233),(306,38,106,0,10616,'',0,2234,1837,2233,1360955829,1,1980),(306,38,106,0,10617,'',0,2198,1838,1980,1360955829,1,2234),(306,38,106,0,10618,'',0,2235,1839,2234,1360955829,1,2198),(306,38,106,0,10619,'',0,816,1840,2198,1360955829,1,2235),(306,38,106,0,10620,'',0,814,1841,2235,1360955829,1,816),(306,38,106,0,10621,'',0,2236,1842,816,1360955829,1,814),(306,38,106,0,10622,'',0,814,1843,814,1360955829,1,2236),(306,38,106,0,10623,'',0,2088,1844,2236,1360955829,1,814),(306,38,106,0,10624,'',0,2089,1845,814,1360955829,1,2088),(306,38,106,0,10625,'',0,2061,1846,2088,1360955829,1,2089),(306,38,106,0,10626,'',0,2070,1847,2089,1360955829,1,2061),(306,38,106,0,10627,'',0,2171,1848,2061,1360955829,1,2070),(306,38,106,0,10628,'',0,1922,1849,2070,1360955829,1,2171),(306,38,106,0,10629,'',0,2237,1850,2171,1360955829,1,1922),(306,38,106,0,10630,'',0,1641,1851,1922,1360955829,1,2237),(306,38,106,0,10631,'',0,1795,1852,2237,1360955829,1,1641),(306,38,106,0,10632,'',0,1647,1853,1641,1360955829,1,1795),(306,38,106,0,10633,'',0,1892,1854,1795,1360955829,1,1647),(306,38,106,0,10634,'',0,1635,1855,1647,1360955829,1,1892),(306,38,106,0,10635,'',0,2063,1856,1892,1360955829,1,1635),(306,38,106,0,10636,'',0,1677,1857,1635,1360955829,1,2063),(306,38,106,0,10637,'',0,1745,1858,2063,1360955829,1,1677),(306,38,106,0,10638,'',0,2238,1859,1677,1360955829,1,1745),(306,38,106,0,10639,'',0,1717,1860,1745,1360955829,1,2238),(306,38,106,0,10640,'',0,1641,1861,2238,1360955829,1,1717),(306,38,106,0,10641,'',0,1710,1862,1717,1360955829,1,1641),(306,38,106,0,10642,'',0,1900,1863,1641,1360955829,1,1710),(306,38,106,0,10643,'',0,1852,1864,1710,1360955829,1,1900),(306,38,106,0,10644,'',0,2088,1865,1900,1360955829,1,1852),(306,38,106,0,10645,'',0,1627,1866,1852,1360955829,1,2088),(306,38,106,0,10646,'',0,2239,1867,2088,1360955829,1,1627),(306,38,106,0,10647,'',0,2240,1868,1627,1360955829,1,2239),(306,38,106,0,10648,'',0,1635,1869,2239,1360955829,1,2240),(306,38,106,0,10649,'',0,1631,1870,2240,1360955829,1,1635),(306,38,106,0,10650,'',0,1632,1871,1635,1360955829,1,1631),(306,38,106,0,10651,'',0,1761,1872,1631,1360955829,1,1632),(306,38,106,0,10652,'',0,1678,1873,1632,1360955829,1,1761),(306,38,106,0,10653,'',0,2241,1874,1761,1360955829,1,1678),(306,38,106,0,10654,'',0,1651,1875,1678,1360955829,1,2241),(306,38,106,0,10655,'',0,1680,1876,2241,1360955829,1,1651),(306,38,106,0,10656,'',0,1645,1877,1651,1360955829,1,1680),(306,38,106,0,10657,'',0,1837,1878,1680,1360955829,1,1645),(306,38,106,0,10658,'',0,1673,1879,1645,1360955829,1,1837),(306,38,106,0,10659,'',0,1635,1880,1837,1360955829,1,1673),(306,38,106,0,10660,'',0,1774,1881,1673,1360955829,1,1635),(306,38,106,0,10661,'',0,1651,1882,1635,1360955829,1,1774),(306,38,106,0,10662,'',0,2099,1883,1774,1360955829,1,1651),(306,38,106,0,10663,'',0,2088,1884,1651,1360955829,1,2099),(306,38,106,0,10664,'',0,2240,1885,2099,1360955829,1,2088),(306,38,106,0,10665,'',0,2242,1886,2088,1360955829,1,2240),(306,38,106,0,10666,'',0,2240,1887,2240,1360955829,1,2242),(306,38,106,0,10667,'',0,2049,1888,2242,1360955829,1,2240),(306,38,106,0,10668,'',0,2240,1889,2240,1360955829,1,2049),(306,38,106,0,10669,'',0,1848,1890,2049,1360955829,1,2240),(306,38,106,0,10670,'',0,1631,1891,2240,1360955829,1,1848),(306,38,106,0,10671,'',0,1632,1892,1848,1360955829,1,1631),(306,38,106,0,10672,'',0,1633,1893,1631,1360955829,1,1632),(306,38,106,0,10673,'',0,2156,1894,1632,1360955829,1,1633),(306,38,106,0,10674,'',0,1730,1895,1633,1360955829,1,2156),(306,38,106,0,10675,'',0,1679,1896,2156,1360955829,1,1730),(306,38,106,0,10676,'',0,2243,1897,1730,1360955829,1,1679),(306,38,106,0,10677,'',0,1774,1898,1679,1360955829,1,2243),(306,38,106,0,10678,'',0,2130,1899,2243,1360955829,1,1774),(306,38,106,0,10679,'',0,1647,1900,1774,1360955829,1,2130),(306,38,106,0,10680,'',0,816,1901,2130,1360955829,1,1647),(306,38,106,0,10681,'',0,814,1902,1647,1360955829,1,816),(306,38,106,0,10682,'',0,1723,1903,816,1360955829,1,814),(306,38,106,0,10683,'',0,1809,1904,814,1360955829,1,1723),(306,38,106,0,10684,'',0,2155,1905,1723,1360955829,1,1809),(306,38,106,0,10685,'',0,2244,1906,1809,1360955829,1,2155),(306,38,106,0,10686,'',0,1752,1907,2155,1360955829,1,2244),(306,38,106,0,10687,'',0,2235,1908,2244,1360955829,1,1752),(306,38,106,0,10688,'',0,1730,1909,1752,1360955829,1,2235),(306,38,106,0,10689,'',0,1870,1910,2235,1360955829,1,1730),(306,38,106,0,10690,'',0,2245,1911,1730,1360955829,1,1870),(306,38,106,0,10691,'',0,2120,1912,1870,1360955829,1,2245),(306,38,106,0,10692,'',0,2162,1913,2245,1360955829,1,2120),(306,38,106,0,10693,'',0,1641,1914,2120,1360955829,1,2162),(306,38,106,0,10694,'',0,814,1915,2162,1360955829,1,1641),(306,38,106,0,10695,'',0,2021,1916,1641,1360955829,1,814),(306,38,106,0,10696,'',0,2246,1917,814,1360955829,1,2021),(306,38,106,0,10697,'',0,1641,1918,2021,1360955829,1,2246),(306,38,106,0,10698,'',0,2247,1919,2246,1360955829,1,1641),(306,38,106,0,10699,'',0,1670,1920,1641,1360955829,1,2247),(306,38,106,0,10700,'',0,1686,1921,2247,1360955829,1,1670),(306,38,106,0,10701,'',0,2240,1922,1670,1360955829,1,1686),(306,38,106,0,10702,'',0,1713,1923,1686,1360955829,1,2240),(306,38,106,0,10703,'',0,2248,1924,2240,1360955829,1,1713),(306,38,106,0,10704,'',0,1825,1925,1713,1360955829,1,2248),(306,38,106,0,10705,'',0,1716,1926,2248,1360955829,1,1825),(306,38,106,0,10706,'',0,1717,1927,1825,1360955829,1,1716),(306,38,106,0,10707,'',0,1710,1928,1716,1360955829,1,1717),(306,38,106,0,10708,'',0,1834,1929,1717,1360955829,1,1710),(306,38,106,0,10709,'',0,1694,1930,1710,1360955829,1,1834),(306,38,106,0,10710,'',0,1641,1931,1834,1360955829,1,1694),(306,38,106,0,10711,'',0,1695,1932,1694,1360955829,1,1641),(306,38,106,0,10712,'',0,1812,1933,1641,1360955829,1,1695),(306,38,106,0,10713,'',0,2021,1934,1695,1360955829,1,1812),(306,38,106,0,10714,'',0,2249,1935,1812,1360955829,1,2021),(306,38,106,0,10715,'',0,1681,1936,2021,1360955829,1,2249),(306,38,106,0,10716,'',0,2240,1937,2249,1360955829,1,1681),(306,38,106,0,10717,'',0,2250,1938,1681,1360955829,1,2240),(306,38,106,0,10718,'',0,1647,1939,2240,1360955829,1,2250),(306,38,106,0,10719,'',0,2251,1940,2250,1360955829,1,1647),(306,38,106,0,10720,'',0,1717,1941,1647,1360955829,1,2251),(306,38,106,0,10721,'',0,1850,1942,2251,1360955829,1,1717),(306,38,106,0,10722,'',0,2096,1943,1717,1360955829,1,1850),(306,38,106,0,10723,'',0,1641,1944,1850,1360955829,1,2096),(306,38,106,0,10724,'',0,2252,1945,2096,1360955829,1,1641),(306,38,106,0,10725,'',0,1694,1946,1641,1360955829,1,2252),(306,38,106,0,10726,'',0,1699,1947,2252,1360955829,1,1694),(306,38,106,0,10727,'',0,1717,1948,1694,1360955829,1,1699),(306,38,106,0,10728,'',0,2253,1949,1699,1360955829,1,1717),(306,38,106,0,10729,'',0,1706,1950,1717,1360955829,1,2253),(306,38,106,0,10730,'',0,2254,1951,2253,1360955829,1,1706),(306,38,106,0,10731,'',0,1887,1952,1706,1360955829,1,2254),(306,38,106,0,10732,'',0,1665,1953,2254,1360955829,1,1887),(306,38,106,0,10733,'',0,1700,1954,1887,1360955829,1,1665),(306,38,106,0,10734,'',0,1758,1955,1665,1360955829,1,1700),(306,38,106,0,10735,'',0,2045,1956,1700,1360955829,1,1758),(306,38,106,0,10736,'',0,1677,1957,1758,1360955829,1,2045),(306,38,106,0,10737,'',0,1906,1958,2045,1360955829,1,1677),(306,38,106,0,10738,'',0,816,1959,1677,1360955829,1,1906),(306,38,106,0,10739,'',0,1778,1960,1906,1360955829,1,816),(306,38,106,0,10740,'',0,1701,1961,816,1360955829,1,1778),(306,38,106,0,10741,'',0,1679,1962,1778,1360955829,1,1701),(306,38,106,0,10742,'',0,2255,1963,1701,1360955829,1,1679),(306,38,106,0,10743,'',0,1812,1964,1679,1360955829,1,2255),(306,38,106,0,10744,'',0,1647,1965,2255,1360955829,1,1812),(306,38,106,0,10745,'',0,1704,1966,1812,1360955829,1,1647),(306,38,106,0,10746,'',0,1694,1967,1647,1360955829,1,1704),(306,38,106,0,10747,'',0,2070,1968,1704,1360955829,1,1694),(306,38,106,0,10748,'',0,1631,1969,1694,1360955829,1,2070),(306,38,106,0,10749,'',0,1632,1970,2070,1360955829,1,1631),(306,38,106,0,10750,'',0,1633,1971,1631,1360955829,1,1632),(306,38,106,0,10751,'',0,2256,1972,1632,1360955829,1,1633),(306,38,106,0,10752,'',0,2257,1973,1633,1360955829,1,2256),(306,38,106,0,10753,'',1360955640,0,1974,2256,1360955829,1,2257);
/*!40000 ALTER TABLE `ezsearch_object_word_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_return_count`
--

DROP TABLE IF EXISTS `ezsearch_return_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_return_count` (
  `count` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase_id` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezsearch_return_cnt_ph_id_cnt` (`phrase_id`,`count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_return_count`
--

LOCK TABLES `ezsearch_return_count` WRITE;
/*!40000 ALTER TABLE `ezsearch_return_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsearch_return_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_search_phrase`
--

DROP TABLE IF EXISTS `ezsearch_search_phrase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_search_phrase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` varchar(250) DEFAULT NULL,
  `phrase_count` int(11) DEFAULT '0',
  `result_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezsearch_search_phrase_phrase` (`phrase`),
  KEY `ezsearch_search_phrase_count` (`phrase_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_search_phrase`
--

LOCK TABLES `ezsearch_search_phrase` WRITE;
/*!40000 ALTER TABLE `ezsearch_search_phrase` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsearch_search_phrase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_word`
--

DROP TABLE IF EXISTS `ezsearch_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_count` int(11) NOT NULL DEFAULT '0',
  `word` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezsearch_word_obj_count` (`object_count`),
  KEY `ezsearch_word_word_i` (`word`)
) ENGINE=InnoDB AUTO_INCREMENT=2258 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_word`
--

LOCK TABLES `ezsearch_word` WRITE;
/*!40000 ALTER TABLE `ezsearch_word` DISABLE KEYS */;
INSERT INTO `ezsearch_word` VALUES (812,1,'setup'),(814,6,'the'),(816,6,'for'),(877,4,'common'),(927,1,'ez.no'),(930,3,'users'),(951,4,'main'),(952,3,'group'),(953,2,'anonymous'),(954,3,'user'),(955,1,'nospam'),(958,2,'administrator'),(959,1,'editors'),(961,1,'media'),(962,1,'images'),(963,4,'files'),(964,1,'multimedia'),(965,4,'ini'),(966,1,'settings'),(968,4,'design'),(969,1,'home'),(1615,1,'info'),(1623,1,'admin'),(1624,1,'example.com'),(1625,1,'partners'),(1626,1,'members'),(1627,6,'code'),(1628,4,'series'),(1629,4,'working'),(1630,5,'with'),(1631,5,'ez'),(1632,5,'publish'),(1633,5,'5'),(1634,3,'introduction'),(1635,5,'in'),(1636,3,'early'),(1637,3,'february'),(1638,4,'i'),(1639,3,'had'),(1640,3,'opportunity'),(1641,5,'to'),(1642,3,'spend'),(1643,5,'some'),(1644,3,'learning'),(1645,5,'of'),(1646,3,'ins'),(1647,5,'and'),(1648,3,'outs'),(1649,4,'version'),(1650,4,'at'),(1651,5,'a'),(1652,3,'training'),(1653,3,'event'),(1654,4,'from'),(1655,4,'systems'),(1656,3,'having'),(1657,3,'developed'),(1658,4,'years'),(1659,3,'knew'),(1660,3,'was'),(1661,3,'going'),(1662,5,'be'),(1663,4,'big'),(1664,4,'change'),(1665,4,'but'),(1666,3,'didn'),(1667,4,'t'),(1668,4,'really'),(1669,3,'consider'),(1670,4,'how'),(1671,3,'much'),(1672,3,'would'),(1673,4,'involved'),(1674,3,'after'),(1675,3,'digging'),(1676,3,'found'),(1677,5,'that'),(1678,4,'there'),(1679,5,'s'),(1680,4,'lot'),(1681,4,'like'),(1682,5,'about'),(1683,4,'new'),(1684,4,'system'),(1685,3,'goal'),(1686,5,'this'),(1687,4,'blog'),(1688,4,'posts'),(1689,5,'will'),(1690,3,'help'),(1691,3,'current'),(1692,4,'developers'),(1693,3,'get'),(1694,5,'up'),(1695,4,'speed'),(1696,3,'things'),(1697,3,'clear'),(1698,4,'first'),(1699,4,'before'),(1700,4,'we'),(1701,4,'let'),(1702,3,'address'),(1703,3,'facts'),(1704,4,'set'),(1705,3,'aside'),(1706,4,'any'),(1707,3,'preconceived'),(1708,3,'notions'),(1709,4,'what'),(1710,4,'re'),(1711,4,'getting'),(1712,4,'into'),(1713,5,'is'),(1714,3,'totally'),(1715,4,'cms'),(1716,5,'if'),(1717,5,'you'),(1718,4,'ve'),(1719,5,'read'),(1720,3,'anything'),(1721,4,'probably'),(1722,4,'know'),(1723,4,'most'),(1724,4,'core'),(1725,4,'components'),(1726,4,'are'),(1727,4,'being'),(1728,3,'replaced'),(1729,4,'by'),(1730,4,'symfony'),(1731,4,'framework'),(1732,3,'number'),(1733,3,'hints'),(1734,3,'release'),(1735,3,'past'),(1736,4,'major'),(1737,3,'releases'),(1738,3,'continuation'),(1739,3,'same'),(1740,3,'many'),(1741,3,'us'),(1742,4,'have'),(1743,4,'used'),(1744,3,'while'),(1745,4,'still'),(1746,4,'around'),(1747,4,'parts'),(1748,4,'all'),(1749,3,'essence'),(1750,3,'ground'),(1751,3,'rewrite'),(1752,4,'entire'),(1753,3,'overall'),(1754,3,'direction'),(1755,4,'where'),(1756,3,'component'),(1757,3,'stack'),(1758,5,'can'),(1759,4,'instead'),(1760,3,'counterpart'),(1761,4,'4'),(1762,5,'has'),(1763,4,'been'),(1764,3,'examples'),(1765,3,'interaction'),(1766,4,'handled'),(1767,3,'via'),(1768,3,'controllers'),(1769,4,'templates'),(1770,4,'twig'),(1771,3,'yml'),(1772,3,'ezjscore'),(1773,3,'assetic'),(1774,4,'caching'),(1775,3,'product'),(1776,3,'kernel'),(1777,4,'itself'),(1778,4,'now'),(1779,3,'accessed'),(1780,3,'public'),(1781,3,'api'),(1782,4,'which'),(1783,3,'remain'),(1784,3,'stable'),(1785,3,'future'),(1786,3,'versions'),(1787,3,'great'),(1788,3,'news'),(1789,4,'since'),(1790,5,'it'),(1791,5,'means'),(1792,4,'no'),(1793,4,'longer'),(1794,3,'hooking'),(1795,4,'classes'),(1796,3,'random'),(1797,3,'hoping'),(1798,4,'they'),(1799,4,'don'),(1800,3,'general'),(1801,3,'architectural'),(1802,3,'decisions'),(1803,3,'represents'),(1804,3,'community'),(1805,3,'ecosystem'),(1806,3,'mature'),(1807,3,'elegant'),(1808,3,'becoming'),(1809,4,'part'),(1810,3,'less'),(1811,3,'time'),(1812,5,'on'),(1813,3,'underlying'),(1814,3,'platform'),(1815,4,'more'),(1816,3,'delivering'),(1817,4,'best'),(1818,4,'possible'),(1819,3,'business'),(1820,3,'perspective'),(1821,3,'likely'),(1822,4,'find'),(1823,3,'transferrable'),(1824,3,'skills'),(1825,5,'so'),(1826,3,'long'),(1827,3,'term'),(1828,3,'win'),(1829,3,'side'),(1830,5,'as'),(1831,4,'well'),(1832,3,'isn'),(1833,3,'wait'),(1834,4,'not'),(1835,3,'yet'),(1836,3,'anyway'),(1837,4,'pieces'),(1838,4,'here'),(1839,3,'build'),(1840,4,'site'),(1841,3,'administrative'),(1842,3,'interface'),(1843,4,'other'),(1844,3,'commenting'),(1845,3,'front'),(1846,3,'end'),(1847,3,'editing'),(1848,4,'etc'),(1849,3,'rewritten'),(1850,5,'ll'),(1851,5,'using'),(1852,4,'your'),(1853,3,'normal'),(1854,3,'workflow'),(1855,3,'fact'),(1856,3,'previous'),(1857,3,'rechristened'),(1858,3,'legacy'),(1859,3,'ships'),(1860,3,'right'),(1861,3,'alongside'),(1862,3,'shiny'),(1863,3,'based'),(1864,3,'doesn'),(1865,3,'lose'),(1866,4,'features'),(1867,3,'moves'),(1868,4,'over'),(1869,4,'architecture'),(1870,5,'also'),(1871,3,'areas'),(1872,4,'need'),(1873,3,'understand'),(1874,4,'both'),(1875,4,'or'),(1876,3,'cases'),(1877,3,'duplicate'),(1878,3,'effort'),(1879,3,'switch'),(1880,3,'important'),(1881,3,'thing'),(1882,3,'remember'),(1883,3,'dont'),(1884,4,'start'),(1885,4,'even'),(1886,3,'year'),(1887,5,'development'),(1888,3,'roadmap'),(1889,4,'calls'),(1890,4,'available'),(1891,3,'clever'),(1892,4,'methods'),(1893,3,'built'),(1894,3,'allow'),(1895,3,'fall'),(1896,4,'back'),(1897,3,'somewhat'),(1898,3,'transparently'),(1899,3,'choose'),(1900,5,'use'),(1901,3,'little'),(1902,4,'project'),(1903,3,'point'),(1904,3,'though'),(1905,5,'work'),(1906,5,'stuff'),(1907,3,'try'),(1908,4,'do'),(1909,3,'selected'),(1910,4,'fairly'),(1911,3,'basic'),(1912,4,'next'),(1913,3,'few'),(1914,4,'pages'),(1915,4,'building'),(1916,4,'out'),(1917,3,'go'),(1918,3,'quick'),(1919,3,'overview'),(1920,3,'trying'),(1921,4,'data'),(1922,4,'model'),(1923,5,'content'),(1924,3,'types'),(1925,4,'blog_post'),(1926,3,'simple'),(1927,3,'container'),(1928,4,'name'),(1929,3,'description'),(1930,4,'post'),(1931,3,'fields'),(1932,3,'title'),(1933,3,'tagline'),(1934,3,'summary'),(1935,3,'body'),(1936,3,'tags'),(1937,3,'far'),(1938,4,'keep'),(1939,4,'pretty'),(1940,3,'display'),(1941,3,'summaries'),(1942,3,'reverse'),(1943,3,'chronological'),(1944,3,'order'),(1945,3,'paginated'),(1946,3,'d'),(1947,4,'way'),(1948,3,'edit'),(1949,3,'sidebar'),(1950,3,'featured'),(1951,3,'footer'),(1952,3,'follow'),(1953,3,'along'),(1954,3,'placed'),(1955,4,'github'),(1956,3,'note'),(1957,4,'m'),(1958,3,'linking'),(1959,4,'tutorial'),(1960,3,'branch'),(1961,4,'always'),(1962,4,'make'),(1963,4,'sure'),(1964,3,'matches'),(1965,3,'master'),(1966,3,'actually'),(1967,4,'running'),(1968,4,'may'),(1969,3,'enhanced'),(1970,4,'extra'),(1971,3,'goes'),(1972,3,'see'),(1973,4,'problem'),(1974,4,'either'),(1975,3,'please'),(1976,3,'feel'),(1977,3,'free'),(1978,3,'send'),(1979,4,'pull'),(1980,4,'request'),(1981,3,'update'),(1982,3,'accordingly'),(1983,3,'myself'),(1984,4,'called'),(1985,3,'questions'),(1986,3,'answer'),(1987,3,'drop'),(1988,3,'me'),(1989,3,'comment'),(1990,4,'good'),(1991,3,'environment'),(1992,3,'requirements'),(1993,3,'installed'),(1994,3,'covering'),(1995,3,'basics'),(1996,3,'1360947000'),(1997,1,'deal'),(1998,1,'joe'),(1999,1,'kepley'),(2000,1,'partial'),(2001,1,'my'),(2002,1,'space'),(2003,4,'write'),(2004,1,'topics'),(2005,1,'related'),(2006,1,'mostly'),(2007,1,'programming'),(2008,4,'web'),(2009,1,'started'),(2010,1,'partner'),(2011,1,'blend'),(2012,1,'interactive'),(2013,1,'head'),(2014,4,'job'),(2015,1,'practices'),(2016,3,'wherever'),(2017,1,'our'),(2018,1,'process'),(2019,1,'place'),(2020,4,'developer'),(2021,3,'http'),(2022,1,'status'),(2023,1,'206'),(2024,1,'never'),(2025,1,'complete'),(2026,1,'opinionated'),(2027,1,'world'),(2028,1,'nerdiest'),(2029,1,'play'),(2030,1,'words'),(2031,1,'surprised'),(2032,1,'anyone'),(2033,1,'ever'),(2034,1,'gets'),(2035,3,'dig'),(2036,3,'look'),(2037,3,'concepts'),(2038,3,'already'),(2039,3,'got'),(2040,3,'handle'),(2041,3,'aren'),(2042,3,'interested'),(2043,3,'conceptual'),(2044,3,'changes'),(2045,3,'skip'),(2046,3,'ahead'),(2047,3,'hands'),(2048,3,'dirty'),(2049,3,'view'),(2050,3,'controller'),(2051,3,'worked'),(2052,3,'rails'),(2053,3,'asp.net'),(2054,3,'mvc'),(2055,3,'lesser'),(2056,3,'degree'),(2057,3,'cakephp'),(2058,3,'then'),(2059,3,'familiar'),(2060,3,'pattern'),(2061,3,'provides'),(2062,3,'standard'),(2063,3,'php'),(2064,3,'applications'),(2065,3,'organized'),(2066,3,'when'),(2067,3,'received'),(2068,3,'directed'),(2069,3,'routes'),(2070,3,'an'),(2071,3,'action'),(2072,3,'just'),(2073,3,'function'),(2074,3,'defined'),(2075,3,'app'),(2076,3,'gathers'),(2077,3,'whatever'),(2078,3,'variables'),(2079,3,'needed'),(2080,3,'objects'),(2081,3,'represent'),(2082,3,'stores'),(2083,3,'database'),(2084,3,'apis'),(2085,3,'punch'),(2086,3,'cards'),(2087,3,'gathered'),(2088,3,'template'),(2089,3,'language'),(2090,3,'format'),(2091,3,'response'),(2092,3,'sounds'),(2093,3,'complicated'),(2094,3,'practice'),(2095,3,'straightforward'),(2096,3,'want'),(2097,3,'render'),(2098,3,'output'),(2099,3,'page'),(2100,3,'example'),(2101,3,'simply'),(2102,3,'class'),(2103,3,'returns'),(2104,3,'array'),(2105,3,'containing'),(2106,3,'templating'),(2107,3,'contains'),(2108,3,'html'),(2109,3,'easier'),(2110,3,'provided'),(2111,3,'principles'),(2112,3,'drive'),(2113,3,'separation'),(2114,3,'concerns'),(2115,3,'repeat'),(2116,3,'yourself'),(2117,3,'dry'),(2118,3,'fetching'),(2119,3,'separate'),(2120,3,'very'),(2121,3,'easy'),(2122,3,'appearance'),(2123,3,'json'),(2124,3,'xml'),(2125,3,'something'),(2126,3,'else'),(2127,3,'javascript'),(2128,3,'adds'),(2129,3,'another'),(2130,3,'layer'),(2131,3,'top'),(2132,3,'packaging'),(2133,3,'bundles'),(2134,3,'directories'),(2135,3,'organize'),(2136,3,'specific'),(2137,3,'aspects'),(2138,3,'application'),(2139,3,'sometimes'),(2140,3,'referred'),(2141,3,'hmvc'),(2142,3,'hierarchical'),(2143,3,'makes'),(2144,3,'people'),(2145,3,'written'),(2146,3,'installing'),(2147,3,'their'),(2148,3,'coming'),(2149,3,'trip'),(2150,3,'unless'),(2151,3,'looking'),(2152,3,'them'),(2153,2,'talking'),(2154,2,'mind'),(2155,2,'only'),(2156,2,'uses'),(2157,2,'old'),(2158,2,'half'),(2159,2,'smarty'),(2160,2,'deprecated'),(2161,2,'favor'),(2162,2,'closely'),(2163,2,'associated'),(2164,2,'quite'),(2165,2,'bit'),(2166,2,'differently'),(2167,2,'under'),(2168,2,'hood'),(2169,2,'neat'),(2170,2,'too'),(2171,2,'inheritance'),(2172,2,'extend'),(2173,2,'documented'),(2174,2,'fetch'),(2175,2,'wanted'),(2176,2,'repository'),(2177,2,'def'),(2178,2,'list'),(2179,2,'hash'),(2180,2,'parent_node_id'),(2181,2,'2'),(2182,2,'class_filter_type'),(2183,2,'include'),(2184,2,'class_filter_array'),(2185,2,'handy'),(2186,2,'arises'),(2187,2,'separated'),(2188,2,'directly'),(2189,2,'handling'),(2190,2,'logic'),(2191,2,'became'),(2192,2,'loaded'),(2193,2,'lead'),(2194,2,'hairy'),(2195,2,'hard'),(2196,2,'approach'),(2197,2,'nested'),(2198,2,'sub'),(2199,2,'query'),(2200,2,'retrieve'),(2201,2,'provide'),(2202,2,'results'),(2203,2,'leads'),(2204,2,'better'),(2205,3,'gives'),(2206,2,'chance'),(2207,2,'complex'),(2208,2,'turning'),(2209,2,'events'),(2210,2,'calendar'),(2211,2,'single'),(2212,2,'pass'),(2213,2,'rendering'),(2214,2,'rendered'),(2215,2,'two'),(2216,2,'steps'),(2217,2,'renders'),(2218,2,'module'),(2219,2,'result'),(2220,2,'full'),(2221,2,'object'),(2222,2,'passes'),(2223,2,'pagelayout'),(2224,2,'surround'),(2225,2,'access'),(2226,2,'interior'),(2227,2,'those'),(2228,2,'structure'),(2229,2,'again'),(2230,2,'one'),(2231,2,'step'),(2232,2,'occurs'),(2233,2,'each'),(2234,2,'ignoring'),(2235,2,'requests'),(2236,2,'moment'),(2237,2,'similar'),(2238,2,'allows'),(2239,2,'simplified'),(2240,2,'cache'),(2241,2,'were'),(2242,2,'block'),(2243,2,'native'),(2244,2,'caches'),(2245,2,'adheres'),(2246,2,'specification'),(2247,2,'determine'),(2248,2,'managed'),(2249,2,'headers'),(2250,2,'control'),(2251,2,'etag'),(2252,2,'brush'),(2253,2,'begin'),(2254,2,'serious'),(2255,2,'move'),(2256,2,'installation'),(2257,2,'1360955640');
/*!40000 ALTER TABLE `ezsearch_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsection`
--

DROP TABLE IF EXISTS `ezsection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `navigation_part_identifier` varchar(100) DEFAULT 'ezcontentnavigationpart',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsection`
--

LOCK TABLES `ezsection` WRITE;
/*!40000 ALTER TABLE `ezsection` DISABLE KEYS */;
INSERT INTO `ezsection` VALUES (1,'standard','','Standard','ezcontentnavigationpart'),(2,'users','','Users','ezusernavigationpart'),(3,'media','','Media','ezmedianavigationpart'),(4,'setup','','Setup','ezsetupnavigationpart'),(5,'design','','Design','ezvisualnavigationpart'),(6,'','','Restricted','ezcontentnavigationpart');
/*!40000 ALTER TABLE `ezsection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsession`
--

DROP TABLE IF EXISTS `ezsession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsession` (
  `data` longtext NOT NULL,
  `expiration_time` int(11) NOT NULL DEFAULT '0',
  `session_key` varchar(32) NOT NULL DEFAULT '',
  `user_hash` varchar(32) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_key`),
  KEY `expiration_time` (`expiration_time`),
  KEY `ezsession_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsession`
--

LOCK TABLES `ezsession` WRITE;
/*!40000 ALTER TABLE `ezsession` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsite_data`
--

DROP TABLE IF EXISTS `ezsite_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsite_data` (
  `name` varchar(60) NOT NULL DEFAULT '',
  `value` longtext NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsite_data`
--

LOCK TABLES `ezsite_data` WRITE;
/*!40000 ALTER TABLE `ezsite_data` DISABLE KEYS */;
INSERT INTO `ezsite_data` VALUES ('ezdemo','2.0'),('ezpublish-release','1'),('ezpublish-version','5.1.0alpha1');
/*!40000 ALTER TABLE `ezsite_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezstarrating`
--

DROP TABLE IF EXISTS `ezstarrating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezstarrating` (
  `contentobject_id` int(11) NOT NULL,
  `contentobject_attribute_id` int(11) NOT NULL,
  `rating_average` float NOT NULL,
  `rating_count` int(11) NOT NULL,
  PRIMARY KEY (`contentobject_id`,`contentobject_attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezstarrating`
--

LOCK TABLES `ezstarrating` WRITE;
/*!40000 ALTER TABLE `ezstarrating` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezstarrating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezstarrating_data`
--

DROP TABLE IF EXISTS `ezstarrating_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezstarrating_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_key` varchar(32) NOT NULL,
  `rating` float NOT NULL,
  `contentobject_id` int(11) NOT NULL,
  `contentobject_attribute_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_session_key` (`user_id`,`session_key`),
  KEY `contentobject_id_contentobject_attribute_id` (`contentobject_id`,`contentobject_attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezstarrating_data`
--

LOCK TABLES `ezstarrating_data` WRITE;
/*!40000 ALTER TABLE `ezstarrating_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezstarrating_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsubtree_notification_rule`
--

DROP TABLE IF EXISTS `ezsubtree_notification_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsubtree_notification_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL DEFAULT '0',
  `use_digest` int(11) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezsubtree_notification_rule_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsubtree_notification_rule`
--

LOCK TABLES `ezsubtree_notification_rule` WRITE;
/*!40000 ALTER TABLE `ezsubtree_notification_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsubtree_notification_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eztipafriend_counter`
--

DROP TABLE IF EXISTS `eztipafriend_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eztipafriend_counter` (
  `count` int(11) NOT NULL DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `requested` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`node_id`,`requested`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eztipafriend_counter`
--

LOCK TABLES `eztipafriend_counter` WRITE;
/*!40000 ALTER TABLE `eztipafriend_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `eztipafriend_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eztipafriend_request`
--

DROP TABLE IF EXISTS `eztipafriend_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eztipafriend_request` (
  `created` int(11) NOT NULL DEFAULT '0',
  `email_receiver` varchar(100) NOT NULL DEFAULT '',
  KEY `eztipafriend_request_created` (`created`),
  KEY `eztipafriend_request_email_rec` (`email_receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eztipafriend_request`
--

LOCK TABLES `eztipafriend_request` WRITE;
/*!40000 ALTER TABLE `eztipafriend_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `eztipafriend_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eztrigger`
--

DROP TABLE IF EXISTS `eztrigger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eztrigger` (
  `connect_type` char(1) NOT NULL DEFAULT '',
  `function_name` varchar(200) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(200) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `workflow_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `eztrigger_def_id` (`module_name`(50),`function_name`(50),`connect_type`),
  KEY `eztrigger_fetch` (`name`(25),`module_name`(50),`function_name`(50))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eztrigger`
--

LOCK TABLES `eztrigger` WRITE;
/*!40000 ALTER TABLE `eztrigger` DISABLE KEYS */;
/*!40000 ALTER TABLE `eztrigger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurl`
--

DROP TABLE IF EXISTS `ezurl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurl` (
  `created` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_valid` int(11) NOT NULL DEFAULT '1',
  `last_checked` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `original_url_md5` varchar(32) NOT NULL DEFAULT '',
  `url` longtext,
  PRIMARY KEY (`id`),
  KEY `ezurl_url` (`url`(255))
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurl`
--

LOCK TABLES `ezurl` WRITE;
/*!40000 ALTER TABLE `ezurl` DISABLE KEYS */;
INSERT INTO `ezurl` VALUES (1360948164,91,1,0,1360948164,'057529bfc8ed90e92c11894908d64b79','https://github.com/blendinteractive/partialcontent'),(1360948164,92,1,0,1360948164,'e4a4d4a2f25b3e9cedf819192a5d59ba','http://blendinteractive.com'),(1360948164,93,1,0,1360948164,'154f39a3d6cdbb10f553c332253d0e0c','http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html'),(1360955712,94,1,0,1360955712,'8c7ed89829690111d836743b563b1ad1','http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html'),(1360955712,95,1,0,1360955712,'46d38db583fde27f10ce204142dc2881','http://en.wikipedia.org/wiki/HTTP_ETag');
/*!40000 ALTER TABLE `ezurl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurl_object_link`
--

DROP TABLE IF EXISTS `ezurl_object_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurl_object_link` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attribute_version` int(11) NOT NULL DEFAULT '0',
  `url_id` int(11) NOT NULL DEFAULT '0',
  KEY `ezurl_ol_coa_id` (`contentobject_attribute_id`),
  KEY `ezurl_ol_coa_version` (`contentobject_attribute_version`),
  KEY `ezurl_ol_url_id` (`url_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurl_object_link`
--

LOCK TABLES `ezurl_object_link` WRITE;
/*!40000 ALTER TABLE `ezurl_object_link` DISABLE KEYS */;
INSERT INTO `ezurl_object_link` VALUES (553,1,91),(553,1,92),(553,1,93),(558,3,92),(562,1,94),(562,1,95);
/*!40000 ALTER TABLE `ezurl_object_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlalias`
--

DROP TABLE IF EXISTS `ezurlalias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlalias` (
  `destination_url` longtext NOT NULL,
  `forward_to_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_imported` int(11) NOT NULL DEFAULT '0',
  `is_internal` int(11) NOT NULL DEFAULT '1',
  `is_wildcard` int(11) NOT NULL DEFAULT '0',
  `source_md5` varchar(32) DEFAULT NULL,
  `source_url` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ezurlalias_desturl` (`destination_url`(200)),
  KEY `ezurlalias_forward_to_id` (`forward_to_id`),
  KEY `ezurlalias_imp_wcard_fwd` (`is_imported`,`is_wildcard`,`forward_to_id`),
  KEY `ezurlalias_source_md5` (`source_md5`),
  KEY `ezurlalias_source_url` (`source_url`(255)),
  KEY `ezurlalias_wcard_fwd` (`is_wildcard`,`forward_to_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias`
--

LOCK TABLES `ezurlalias` WRITE;
/*!40000 ALTER TABLE `ezurlalias` DISABLE KEYS */;
INSERT INTO `ezurlalias` VALUES ('content/view/full/2',0,12,1,1,0,'d41d8cd98f00b204e9800998ecf8427e',''),('content/view/full/5',0,13,1,1,0,'9bc65c2abec141778ffaa729489f3e87','users'),('content/view/full/12',0,15,1,1,0,'02d4e844e3a660857a3f81585995ffe1','users/guest_accounts'),('content/view/full/13',0,16,1,1,0,'1b1d79c16700fd6003ea7be233e754ba','users/administrator_users'),('content/view/full/14',0,17,1,1,0,'0bb9dd665c96bbc1cf36b79180786dea','users/editors'),('content/view/full/15',0,18,1,1,0,'f1305ac5f327a19b451d82719e0c3f5d','users/administrator_users/administrator_user'),('content/view/full/43',0,20,1,1,0,'62933a2951ef01f4eafd9bdf4d3cd2f0','media'),('content/view/full/44',0,21,1,1,0,'3ae1aac958e1c82013689d917d34967a','users/anonymous_users'),('content/view/full/45',0,22,1,1,0,'aad93975f09371695ba08292fd9698db','users/anonymous_users/anonymous_user'),('content/view/full/48',0,25,1,1,0,'a0f848942ce863cf53c0fa6cc684007d','setup'),('content/view/full/50',0,27,1,1,0,'c60212835de76414f9bfd21eecb8f221','foo_bar_folder/images/vbanner'),('content/view/full/51',0,28,1,1,0,'38985339d4a5aadfc41ab292b4527046','media/images'),('content/view/full/52',0,29,1,1,0,'ad5a8c6f6aac3b1b9df267fe22e7aef6','media/files'),('content/view/full/53',0,30,1,1,0,'562a0ac498571c6c3529173184a2657c','media/multimedia'),('content/view/full/54',0,31,1,1,0,'e501fe6c81ed14a5af2b322d248102d8','setup/common_ini_settings'),('content/view/full/56',0,32,1,1,0,'2dd3db5dc7122ea5f3ee539bb18fe97d','design/ez_publish'),('content/view/full/58',0,33,1,1,0,'31c13f47ad87dd7baa2d558a91e0fbb9','design');
/*!40000 ALTER TABLE `ezurlalias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlalias_ml`
--

DROP TABLE IF EXISTS `ezurlalias_ml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlalias_ml` (
  `action` longtext NOT NULL,
  `action_type` varchar(32) NOT NULL DEFAULT '',
  `alias_redirects` int(11) NOT NULL DEFAULT '1',
  `id` int(11) NOT NULL DEFAULT '0',
  `is_alias` int(11) NOT NULL DEFAULT '0',
  `is_original` int(11) NOT NULL DEFAULT '0',
  `lang_mask` int(11) NOT NULL DEFAULT '0',
  `link` int(11) NOT NULL DEFAULT '0',
  `parent` int(11) NOT NULL DEFAULT '0',
  `text` longtext NOT NULL,
  `text_md5` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`parent`,`text_md5`),
  KEY `ezurlalias_ml_act_org` (`action`(32),`is_original`),
  KEY `ezurlalias_ml_action` (`action`(32),`id`,`link`),
  KEY `ezurlalias_ml_actt` (`action_type`),
  KEY `ezurlalias_ml_actt_org_al` (`action_type`,`is_original`,`is_alias`),
  KEY `ezurlalias_ml_id` (`id`),
  KEY `ezurlalias_ml_par_act_id_lnk` (`parent`,`action`(32),`id`,`link`),
  KEY `ezurlalias_ml_par_lnk_txt` (`parent`,`link`,`text`(32)),
  KEY `ezurlalias_ml_par_txt` (`parent`,`text`(32)),
  KEY `ezurlalias_ml_text` (`text`(32),`id`,`link`),
  KEY `ezurlalias_ml_text_lang` (`text`(32),`lang_mask`,`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias_ml`
--

LOCK TABLES `ezurlalias_ml` WRITE;
/*!40000 ALTER TABLE `ezurlalias_ml` DISABLE KEYS */;
INSERT INTO `ezurlalias_ml` VALUES ('nop:','nop',1,14,0,0,1,14,0,'foo_bar_folder','0288b6883046492fa92e4a84eb67acc9'),('eznode:59','eznode',1,38,0,1,3,38,0,'eZ-Publish','10e4c3cb527fb9963258469986c16240'),('eznode:58','eznode',1,25,0,1,3,25,0,'Design','31c13f47ad87dd7baa2d558a91e0fbb9'),('eznode:106','eznode',1,86,0,1,2,86,0,'About','46b3931b9959c927df4fc65fdee94b07'),('eznode:48','eznode',1,13,0,1,3,13,0,'Setup2','475e97c0146bfb1c490339546d9e72ee'),('nop:','nop',1,17,0,0,1,17,0,'media2','50e2736330de124f6edea9b008556fe6'),('eznode:43','eznode',1,9,0,1,3,9,0,'Media','62933a2951ef01f4eafd9bdf4d3cd2f0'),('nop:','nop',1,21,0,0,1,21,0,'setup3','732cefcf28bf4547540609fb1a786a30'),('nop:','nop',1,3,0,0,1,3,0,'users2','86425c35a33507d479f71ade53a669aa'),('eznode:5','eznode',1,2,0,1,3,2,0,'Users','9bc65c2abec141778ffaa729489f3e87'),('eznode:104','eznode',1,84,0,1,2,84,0,'Series','bef99584217af744e404ed44a33af589'),('eznode:103','eznode',1,83,0,1,2,83,0,'Code','c13367945d5d4c91047b3b50234aa7ab'),('eznode:2','eznode',1,1,0,1,2,1,0,'','d41d8cd98f00b204e9800998ecf8427e'),('eznode:101','eznode',1,81,0,1,3,81,2,'Partners','7896f8fa69398c56d86a65357615c41f'),('eznode:14','eznode',1,6,0,1,3,6,2,'Editors','a147e136bfa717592f2bd70bd4b53b17'),('eznode:44','eznode',1,10,0,1,3,10,2,'Anonymous-Users','c2803c3fa1b0b5423237b4e018cae755'),('eznode:12','eznode',1,4,0,1,3,4,2,'Members','d2e3083420929d8bfae81f58fa4594cb'),('eznode:12','eznode',1,82,0,0,3,4,2,'Guest-accounts','e57843d836e3af8ab611fde9e2139b3a'),('eznode:13','eznode',1,5,0,1,3,5,2,'Administrator-users','f89fad7f8a3abc8c09e1deb46a420007'),('nop:','nop',1,11,0,0,1,11,3,'anonymous_users2','505e93077a6dde9034ad97a14ab022b1'),('eznode:12','eznode',1,26,0,0,0,4,3,'guest_accounts','70bb992820e73638731aa8de79b3329e'),('eznode:14','eznode',1,29,0,0,1,6,3,'editors','a147e136bfa717592f2bd70bd4b53b17'),('nop:','nop',1,7,0,0,1,7,3,'administrator_users2','a7da338c20bf65f9f789c87296379c2a'),('eznode:13','eznode',1,27,0,0,1,5,3,'administrator_users','aeb8609aa933b0899aa012c71139c58c'),('eznode:44','eznode',1,30,0,0,1,10,3,'anonymous_users','e9e5ad0c05ee1a43715572e5cc545926'),('eznode:15','eznode',1,8,0,1,3,8,5,'Administrator-User','5a9d7b0ec93173ef4fedee023209cb61'),('eznode:15','eznode',1,28,0,0,0,8,7,'administrator_user','a3cca2de936df1e2f805710399989971'),('eznode:53','eznode',1,20,0,1,3,20,9,'Multimedia','2e5bc8831f7ae6a29530e7f1bbf2de9c'),('eznode:52','eznode',1,19,0,1,3,19,9,'Files','45b963397aa40d4a0063e0d85e4fe7a1'),('eznode:51','eznode',1,18,0,1,3,18,9,'Images','59b514174bffe4ae402b3d63aad79fe0'),('eznode:45','eznode',1,12,0,1,3,12,10,'Anonymous-User','ccb62ebca03a31272430bc414bd5cd5b'),('eznode:45','eznode',1,31,0,0,1,12,11,'anonymous_user','c593ec85293ecb0e02d50d4c5c6c20eb'),('eznode:54','eznode',1,22,0,1,2,22,13,'Common-INI-settings','4434993ac013ae4d54bb1f51034d6401'),('nop:','nop',1,15,0,0,1,15,14,'images','59b514174bffe4ae402b3d63aad79fe0'),('eznode:50','eznode',1,16,0,1,2,16,15,'vbanner','c54e2d1b93642e280bdc5d99eab2827d'),('eznode:53','eznode',1,34,0,0,1,20,17,'multimedia','2e5bc8831f7ae6a29530e7f1bbf2de9c'),('eznode:52','eznode',1,33,0,0,1,19,17,'files','45b963397aa40d4a0063e0d85e4fe7a1'),('eznode:51','eznode',1,32,0,0,1,18,17,'images','59b514174bffe4ae402b3d63aad79fe0'),('eznode:54','eznode',1,35,0,0,1,22,21,'common_ini_settings','e59d6834e86cee752ed841f9cd8d5baf'),('eznode:56','eznode',1,37,0,0,2,24,25,'eZ-publish','10e4c3cb527fb9963258469986c16240'),('eznode:56','eznode',1,87,0,0,2,24,25,'Plain-site','49a39d99a955d95aa5d636275656a07a'),('eznode:56','eznode',1,24,0,1,2,24,25,'Partial-Content','ec043d8337ad762da440e62d91f74283'),('eznode:107','eznode',1,88,0,1,2,88,83,'Working-With-eZ-Publish-5-Symfony','4dffbd24422a05d320d881f07fef634f'),('eznode:105','eznode',1,85,0,1,2,85,83,'Working-with-eZ-Publish-5-Introduction','86c71582f9a8b0b73a28b8561e1bedf2'),('eznode:108','eznode',1,89,0,1,2,89,84,'ez5-tutorial','adbd8cfb0e2ef0e5e69ce04bfa666499');
/*!40000 ALTER TABLE `ezurlalias_ml` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlalias_ml_incr`
--

DROP TABLE IF EXISTS `ezurlalias_ml_incr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlalias_ml_incr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias_ml_incr`
--

LOCK TABLES `ezurlalias_ml_incr` WRITE;
/*!40000 ALTER TABLE `ezurlalias_ml_incr` DISABLE KEYS */;
INSERT INTO `ezurlalias_ml_incr` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(56),(57),(58),(59),(60),(61),(62),(63),(64),(65),(66),(67),(68),(69),(70),(71),(72),(73),(74),(75),(76),(77),(78),(79),(80),(81),(82),(83),(84),(85),(86),(87),(88),(89);
/*!40000 ALTER TABLE `ezurlalias_ml_incr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlwildcard`
--

DROP TABLE IF EXISTS `ezurlwildcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlwildcard` (
  `destination_url` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_url` longtext NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlwildcard`
--

LOCK TABLES `ezurlwildcard` WRITE;
/*!40000 ALTER TABLE `ezurlwildcard` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezurlwildcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser`
--

DROP TABLE IF EXISTS `ezuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(150) NOT NULL DEFAULT '',
  `login` varchar(150) NOT NULL DEFAULT '',
  `password_hash` varchar(50) DEFAULT NULL,
  `password_hash_type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`contentobject_id`),
  KEY `ezuser_login` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser`
--

LOCK TABLES `ezuser` WRITE;
/*!40000 ALTER TABLE `ezuser` DISABLE KEYS */;
INSERT INTO `ezuser` VALUES (10,'nospam@ez.no','anonymous','4e6f6184135228ccd45f8233d72a0363',2),(14,'info@example.com','admin','5cd11af011537e62d63b926012d24f6e',2);
/*!40000 ALTER TABLE `ezuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_accountkey`
--

DROP TABLE IF EXISTS `ezuser_accountkey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_accountkey` (
  `hash_key` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `hash_key` (`hash_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_accountkey`
--

LOCK TABLES `ezuser_accountkey` WRITE;
/*!40000 ALTER TABLE `ezuser_accountkey` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezuser_accountkey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_discountrule`
--

DROP TABLE IF EXISTS `ezuser_discountrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_discountrule` (
  `contentobject_id` int(11) DEFAULT NULL,
  `discountrule_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_discountrule`
--

LOCK TABLES `ezuser_discountrule` WRITE;
/*!40000 ALTER TABLE `ezuser_discountrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezuser_discountrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_role`
--

DROP TABLE IF EXISTS `ezuser_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_role` (
  `contentobject_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limit_identifier` varchar(255) DEFAULT '',
  `limit_value` varchar(255) DEFAULT '',
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezuser_role_contentobject_id` (`contentobject_id`),
  KEY `ezuser_role_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_role`
--

LOCK TABLES `ezuser_role` WRITE;
/*!40000 ALTER TABLE `ezuser_role` DISABLE KEYS */;
INSERT INTO `ezuser_role` VALUES (12,25,'','',2),(11,28,'','',1),(42,31,'','',1),(13,32,'Subtree','/1/2/',3),(13,33,'Subtree','/1/43/',3),(11,34,'','',5),(99,35,'','',4),(99,36,'','',5),(99,37,'','',1),(13,38,'','',5);
/*!40000 ALTER TABLE `ezuser_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_setting`
--

DROP TABLE IF EXISTS `ezuser_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_setting` (
  `is_enabled` int(11) NOT NULL DEFAULT '0',
  `max_login` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_setting`
--

LOCK TABLES `ezuser_setting` WRITE;
/*!40000 ALTER TABLE `ezuser_setting` DISABLE KEYS */;
INSERT INTO `ezuser_setting` VALUES (1,1000,10),(1,10,14);
/*!40000 ALTER TABLE `ezuser_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuservisit`
--

DROP TABLE IF EXISTS `ezuservisit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuservisit` (
  `current_visit_timestamp` int(11) NOT NULL DEFAULT '0',
  `failed_login_attempts` int(11) NOT NULL DEFAULT '0',
  `last_visit_timestamp` int(11) NOT NULL DEFAULT '0',
  `login_count` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  KEY `ezuservisit_co_visit_count` (`current_visit_timestamp`,`login_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuservisit`
--

LOCK TABLES `ezuservisit` WRITE;
/*!40000 ALTER TABLE `ezuservisit` DISABLE KEYS */;
INSERT INTO `ezuservisit` VALUES (1360944853,0,1360944304,1,14);
/*!40000 ALTER TABLE `ezuservisit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezvatrule`
--

DROP TABLE IF EXISTS `ezvatrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezvatrule` (
  `country_code` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vat_type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezvatrule`
--

LOCK TABLES `ezvatrule` WRITE;
/*!40000 ALTER TABLE `ezvatrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezvatrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezvatrule_product_category`
--

DROP TABLE IF EXISTS `ezvatrule_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezvatrule_product_category` (
  `product_category_id` int(11) NOT NULL DEFAULT '0',
  `vatrule_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vatrule_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezvatrule_product_category`
--

LOCK TABLES `ezvatrule_product_category` WRITE;
/*!40000 ALTER TABLE `ezvatrule_product_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezvatrule_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezvattype`
--

DROP TABLE IF EXISTS `ezvattype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezvattype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `percentage` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezvattype`
--

LOCK TABLES `ezvattype` WRITE;
/*!40000 ALTER TABLE `ezvattype` DISABLE KEYS */;
INSERT INTO `ezvattype` VALUES (1,'Std',0);
/*!40000 ALTER TABLE `ezvattype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezview_counter`
--

DROP TABLE IF EXISTS `ezview_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezview_counter` (
  `count` int(11) NOT NULL DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezview_counter`
--

LOCK TABLES `ezview_counter` WRITE;
/*!40000 ALTER TABLE `ezview_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezview_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezwaituntildatevalue`
--

DROP TABLE IF EXISTS `ezwaituntildatevalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezwaituntildatevalue` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workflow_event_id` int(11) NOT NULL DEFAULT '0',
  `workflow_event_version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`workflow_event_id`,`workflow_event_version`),
  KEY `ezwaituntildateevalue_wf_ev_id_wf_ver` (`workflow_event_id`,`workflow_event_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezwaituntildatevalue`
--

LOCK TABLES `ezwaituntildatevalue` WRITE;
/*!40000 ALTER TABLE `ezwaituntildatevalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezwaituntildatevalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezwishlist`
--

DROP TABLE IF EXISTS `ezwishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezwishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezwishlist`
--

LOCK TABLES `ezwishlist` WRITE;
/*!40000 ALTER TABLE `ezwishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezwishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow`
--

DROP TABLE IF EXISTS `ezworkflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_enabled` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `version` int(11) NOT NULL DEFAULT '0',
  `workflow_type_string` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow`
--

LOCK TABLES `ezworkflow` WRITE;
/*!40000 ALTER TABLE `ezworkflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_assign`
--

DROP TABLE IF EXISTS `ezworkflow_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_assign` (
  `access_type` int(11) NOT NULL DEFAULT '0',
  `as_tree` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL DEFAULT '0',
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_assign`
--

LOCK TABLES `ezworkflow_assign` WRITE;
/*!40000 ALTER TABLE `ezworkflow_assign` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_event`
--

DROP TABLE IF EXISTS `ezworkflow_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_event` (
  `data_int1` int(11) DEFAULT NULL,
  `data_int2` int(11) DEFAULT NULL,
  `data_int3` int(11) DEFAULT NULL,
  `data_int4` int(11) DEFAULT NULL,
  `data_text1` varchar(255) DEFAULT NULL,
  `data_text2` varchar(255) DEFAULT NULL,
  `data_text3` varchar(255) DEFAULT NULL,
  `data_text4` varchar(255) DEFAULT NULL,
  `data_text5` longtext,
  `description` varchar(50) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placement` int(11) NOT NULL DEFAULT '0',
  `version` int(11) NOT NULL DEFAULT '0',
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  `workflow_type_string` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`version`),
  KEY `wid_version_placement` (`workflow_id`,`version`,`placement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_event`
--

LOCK TABLES `ezworkflow_event` WRITE;
/*!40000 ALTER TABLE `ezworkflow_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_group`
--

DROP TABLE IF EXISTS `ezworkflow_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_group` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_group`
--

LOCK TABLES `ezworkflow_group` WRITE;
/*!40000 ALTER TABLE `ezworkflow_group` DISABLE KEYS */;
INSERT INTO `ezworkflow_group` VALUES (1024392098,14,1,1024392098,14,'Standard');
/*!40000 ALTER TABLE `ezworkflow_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_group_link`
--

DROP TABLE IF EXISTS `ezworkflow_group_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_group_link` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `group_name` varchar(255) DEFAULT NULL,
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  `workflow_version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`workflow_id`,`group_id`,`workflow_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_group_link`
--

LOCK TABLES `ezworkflow_group_link` WRITE;
/*!40000 ALTER TABLE `ezworkflow_group_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_group_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_process`
--

DROP TABLE IF EXISTS `ezworkflow_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_process` (
  `activation_date` int(11) DEFAULT NULL,
  `content_id` int(11) NOT NULL DEFAULT '0',
  `content_version` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `event_position` int(11) NOT NULL DEFAULT '0',
  `event_state` int(11) DEFAULT NULL,
  `event_status` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_event_id` int(11) NOT NULL DEFAULT '0',
  `last_event_position` int(11) NOT NULL DEFAULT '0',
  `last_event_status` int(11) NOT NULL DEFAULT '0',
  `memento_key` varchar(32) DEFAULT NULL,
  `modified` int(11) NOT NULL DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `parameters` longtext,
  `process_key` varchar(32) NOT NULL DEFAULT '',
  `session_key` varchar(32) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezworkflow_process_process_key` (`process_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_process`
--

LOCK TABLES `ezworkflow_process` WRITE;
/*!40000 ALTER TABLE `ezworkflow_process` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_process` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-02-15 13:59:55
