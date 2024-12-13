-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydatabase
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Dumping data for table `app1_groupe`
--

LOCK TABLES `app1_groupe` WRITE;
/*!40000 ALTER TABLE `app1_groupe` DISABLE KEYS */;
INSERT INTO `app1_groupe` VALUES (1,'Equipe A'),(2,'Equipe B'),(3,'Equipe C');
/*!40000 ALTER TABLE `app1_groupe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `app1_role`
--

LOCK TABLES `app1_role` WRITE;
/*!40000 ALTER TABLE `app1_role` DISABLE KEYS */;
INSERT INTO `app1_role` VALUES (1,'Admin'),(2,'Utilisateur');
/*!40000 ALTER TABLE `app1_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `app1_utilisateur`
--

LOCK TABLES `app1_utilisateur` WRITE;
/*!40000 ALTER TABLE `app1_utilisateur` DISABLE KEYS */;
INSERT INTO `app1_utilisateur` VALUES (2,'Thibault','thuny.ta@gmail.com','pbkdf2_sha256$870000$ePsIf7gEb4UnaLcjAOsD6Y$Uwe6Y6NDDU0e79Ym9J4cOJbYfwKjZ/zBYwxxXY0ZKTA=',1),(3,'Alice','alice@gmail.com','pbkdf2_sha256$870000$9e7gihFFa13nLyvzsPVtat$gPJFkhoCJJJGOmzvX/177Rghvghxjf7XzGTOlPdyEMk=',2),(4,'Bob','bob@gmail.com','pbkdf2_sha256$870000$W8FYPWBSMyj4xC5vHf1W91$ERS/WdzEPNq1FP6Z/itD3KWG4DHPKwWqyQzgtm9qM+E=',1),(5,'Charlie','charlie@gmail.com','pbkdf2_sha256$870000$CiG22mBthWSq8iJ8JDcMKn$hNHkOwEHstgfeRXvxxerAq9AW+aELeTgJf2RfJjtWj8=',1);
/*!40000 ALTER TABLE `app1_utilisateur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `app1_utilisateur_groupes`
--

LOCK TABLES `app1_utilisateur_groupes` WRITE;
/*!40000 ALTER TABLE `app1_utilisateur_groupes` DISABLE KEYS */;
INSERT INTO `app1_utilisateur_groupes` VALUES (1,2,1),(2,2,3),(3,4,1),(4,4,2),(5,5,1),(6,5,3);
/*!40000 ALTER TABLE `app1_utilisateur_groupes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add role',7,'add_role'),(26,'Can change role',7,'change_role'),(27,'Can delete role',7,'delete_role'),(28,'Can view role',7,'view_role'),(29,'Can add groupe',8,'add_groupe'),(30,'Can change groupe',8,'change_groupe'),(31,'Can delete groupe',8,'delete_groupe'),(32,'Can view groupe',8,'view_groupe'),(33,'Can add utilisateur',9,'add_utilisateur'),(34,'Can change utilisateur',9,'change_utilisateur'),(35,'Can delete utilisateur',9,'delete_utilisateur'),(36,'Can view utilisateur',9,'view_utilisateur');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$RXXoTy9eILWOnyyyDcZJ23$1fBPrFNz1Fy9fu9yeVbxK0KDhPzFSUlK23fBYBvi36g=','2024-11-20 23:01:30.742088',1,'thibaultanani','','','thuny.ta@gmail.com',1,1,'2024-11-20 22:59:52.623871'),(2,'pbkdf2_sha256$870000$vc9QNwKscbgFoxRE0Hfy68$RfhSNssZGqElHfRvxF3PqzQDugmuPLgrKaPxBHi1b/Q=','2024-11-21 11:12:21.023249',1,'thibaultanani2','','','tanani@parisnanterre.fr',1,1,'2024-11-21 11:11:44.960142');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(8,'App1','groupe'),(7,'App1','role'),(9,'App1','utilisateur'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-11-20 22:57:54.283214'),(2,'auth','0001_initial','2024-11-20 22:57:54.780374'),(3,'admin','0001_initial','2024-11-20 22:57:54.901147'),(4,'admin','0002_logentry_remove_auto_add','2024-11-20 22:57:54.907140'),(5,'admin','0003_logentry_add_action_flag_choices','2024-11-20 22:57:54.913113'),(6,'contenttypes','0002_remove_content_type_name','2024-11-20 22:57:54.981243'),(7,'auth','0002_alter_permission_name_max_length','2024-11-20 22:57:55.042980'),(8,'auth','0003_alter_user_email_max_length','2024-11-20 22:57:55.061917'),(9,'auth','0004_alter_user_username_opts','2024-11-20 22:57:55.066900'),(10,'auth','0005_alter_user_last_login_null','2024-11-20 22:57:55.113962'),(11,'auth','0006_require_contenttypes_0002','2024-11-20 22:57:55.117329'),(12,'auth','0007_alter_validators_add_error_messages','2024-11-20 22:57:55.124473'),(13,'auth','0008_alter_user_username_max_length','2024-11-20 22:57:55.174059'),(14,'auth','0009_alter_user_last_name_max_length','2024-11-20 22:57:55.232011'),(15,'auth','0010_alter_group_name_max_length','2024-11-20 22:57:55.247961'),(16,'auth','0011_update_proxy_permissions','2024-11-20 22:57:55.254936'),(17,'auth','0012_alter_user_first_name_max_length','2024-11-20 22:57:55.312415'),(18,'sessions','0001_initial','2024-11-20 22:57:55.348016'),(19,'App1','0001_initial','2024-11-21 00:03:20.835613'),(20,'App1','0002_alter_groupe_table_alter_role_table','2024-11-21 00:12:22.979028'),(21,'App1','0003_alter_groupe_table_alter_role_table_and_more','2024-11-21 00:19:59.489467');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('8vod8ob2ibk7ivm6ppssa26kx4m66ak6','.eJyrViotyczJLE4sSS0tis9MUbIy0kERysvPVbJSCsnITEoszSlRqgUAykUSHw:1tEOo5:yXyxVCB6_qWEJ8w7--BQwesAM39i70p_E2Lu5XSbEq8','2024-12-06 08:14:25.857159'),('qrro2mkw9aq8ndf552b64zi7lwo958ot','.eJyrViotyczJLE4sSS0tis9MUbIy1UERysvPVbJScs5ILMrJTFWqBQC3uBGd:1tLf9g:pXwdmTAf_DFmCkPih_es0kUD4sm4mlESFK2BHr__cQE','2024-12-26 09:06:44.134794');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `groupe`
--

LOCK TABLES `groupe` WRITE;
/*!40000 ALTER TABLE `groupe` DISABLE KEYS */;
INSERT INTO `groupe` VALUES (1,'Equipe A'),(2,'Equipe B'),(3,'Equipe C');
/*!40000 ALTER TABLE `groupe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Admin'),(2,'Utilisateur');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `utilisateur`
--

LOCK TABLES `utilisateur` WRITE;
/*!40000 ALTER TABLE `utilisateur` DISABLE KEYS */;
/*!40000 ALTER TABLE `utilisateur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `utilisateur_groupe`
--

LOCK TABLES `utilisateur_groupe` WRITE;
/*!40000 ALTER TABLE `utilisateur_groupe` DISABLE KEYS */;
/*!40000 ALTER TABLE `utilisateur_groupe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-13  9:38:28
