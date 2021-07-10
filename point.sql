-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: uet
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `consultant_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdj68n3pw14t1m3wqggtvtuo7c` (`consultant_id`),
  CONSTRAINT `FKdj68n3pw14t1m3wqggtvtuo7c` FOREIGN KEY (`consultant_id`) REFERENCES `consultant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (2,'QH-2016-C-A-CLC1',1);
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consultant`
--

DROP TABLE IF EXISTS `consultant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consultant` (
  `id` bigint NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `faculty` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `user_username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnpkqiyslmunnq9sxdasn1lm54` (`user_username`),
  CONSTRAINT `FKnpkqiyslmunnq9sxdasn1lm54` FOREIGN KEY (`user_username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultant`
--

LOCK TABLES `consultant` WRITE;
/*!40000 ALTER TABLE `consultant` DISABLE KEYS */;
INSERT INTO `consultant` VALUES (1,'van.ntt@vnu.edu.vn','Điện tử viễn thông','TS. Nguyễn Thị Thanh Vân','van.ntt');
/*!40000 ALTER TABLE `consultant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbfile`
--

DROP TABLE IF EXISTS `dbfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbfile` (
  `id` varchar(255) NOT NULL,
  `data` longblob,
  `file_name` varchar(255) DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `evaluation_form_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3ad2eqk6j3cg0a06ftva2ym61` (`evaluation_form_id`),
  CONSTRAINT `FK3ad2eqk6j3cg0a06ftva2ym61` FOREIGN KEY (`evaluation_form_id`) REFERENCES `evaluation_form` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbfile`
--

LOCK TABLES `dbfile` WRITE;
/*!40000 ALTER TABLE `dbfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluation_form`
--

DROP TABLE IF EXISTS `evaluation_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluation_form` (
  `id` bigint NOT NULL,
  `cam_thi_bo_thi` int DEFAULT NULL,
  `canh_cao_hoc_vu` bit(1) DEFAULT NULL,
  `chung_chi_tieng_anh` bit(1) DEFAULT NULL,
  `dang_ki_hoc_qua_han` bit(1) DEFAULT NULL,
  `dang_ki_khong_du_tin` bit(1) DEFAULT NULL,
  `dat_giai_nckh` bit(1) DEFAULT NULL,
  `dat_giai_cuoc_thi` bit(1) DEFAULT NULL,
  `giu_chuc_vu` bit(1) DEFAULT NULL,
  `hoc_luc_gioi_xuat_sac` bit(1) DEFAULT NULL,
  `hoc_luc_yeu` bit(1) DEFAULT NULL,
  `ket_nap_dang` bit(1) DEFAULT NULL,
  `khong_chap_hanh_luat` int DEFAULT NULL,
  `khong_co_tinh_than_doan_ket` int DEFAULT NULL,
  `khong_tham_gia_bao_hiem` bit(1) DEFAULT NULL,
  `khong_tham_gia_sinh_hoat` int DEFAULT NULL,
  `khong_thuc_hien_yeu_cau` int DEFAULT NULL,
  `ky_luat_thi` varchar(255) DEFAULT NULL,
  `nop_nhan_kinh_phi` int DEFAULT NULL,
  `quyet_dinh_ky_luat` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tham_gia_nckh` bit(1) DEFAULT NULL,
  `tham_gia_chi_doan_chinh_tri` bit(1) DEFAULT NULL,
  `tham_gia_cuoc_thi` int DEFAULT NULL,
  `tham_gia_hoat_dong` int DEFAULT NULL,
  `total_point` int DEFAULT NULL,
  `tra_qua_han_giay_to` int DEFAULT NULL,
  `vi_pham_quy_dinh_cu_tru` int DEFAULT NULL,
  `evaluation_form_of_class_president_id` bigint DEFAULT NULL,
  `semester_id` bigint DEFAULT NULL,
  `student_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK71gorahypuuivlpmde869f3c5` (`evaluation_form_of_class_president_id`),
  KEY `FKsx85rfx2k3s2rnehpxrseckmc` (`semester_id`),
  KEY `FK965pxd8ykffrupwgddj7wh9kc` (`student_id`),
  CONSTRAINT `FK71gorahypuuivlpmde869f3c5` FOREIGN KEY (`evaluation_form_of_class_president_id`) REFERENCES `evaluation_form_of_class_president` (`id`),
  CONSTRAINT `FK965pxd8ykffrupwgddj7wh9kc` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  CONSTRAINT `FKsx85rfx2k3s2rnehpxrseckmc` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation_form`
--

LOCK TABLES `evaluation_form` WRITE;
/*!40000 ALTER TABLE `evaluation_form` DISABLE KEYS */;
INSERT INTO `evaluation_form` VALUES (10,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,81,0,0,NULL,9,3),(11,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,83,0,0,NULL,9,4),(12,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,72,0,0,NULL,9,5),(13,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,68,0,0,NULL,9,6),(14,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,81,0,0,NULL,9,7),(15,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,67,0,0,NULL,9,8),(17,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,75,0,0,NULL,16,3),(18,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,84,0,0,NULL,16,4),(19,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,84,0,0,NULL,16,5),(20,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,53,0,0,NULL,16,6),(21,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,85,0,0,NULL,16,7),(22,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,71,0,0,NULL,16,8),(24,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,55,0,0,NULL,23,3),(25,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,54,0,0,NULL,23,4),(26,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,48,0,0,NULL,23,5),(27,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,63,0,0,NULL,23,6),(28,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,84,0,0,NULL,23,7),(29,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,92,0,0,NULL,23,8),(31,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,71,0,0,NULL,30,3),(32,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,73,0,0,NULL,30,4),(33,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,96,0,0,NULL,30,5),(34,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,59,0,0,NULL,30,6),(35,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,63,0,0,NULL,30,7),(36,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,85,0,0,NULL,30,8),(38,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,78,0,0,NULL,37,3),(39,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,62,0,0,NULL,37,4),(40,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,81,0,0,NULL,37,5),(41,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,63,0,0,NULL,37,6),(42,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,49,0,0,NULL,37,7),(43,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,73,0,0,NULL,37,8),(45,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,67,0,0,NULL,44,3),(46,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,53,0,0,NULL,44,4),(47,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,76,0,0,NULL,44,5),(48,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,51,0,0,NULL,44,6),(49,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,64,0,0,NULL,44,7),(50,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,0,_binary '\0',0,0,'NO',0,'NO','SUCCESS',_binary '\0',_binary '',0,0,64,0,0,NULL,44,8);
/*!40000 ALTER TABLE `evaluation_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluation_form_of_class_president`
--

DROP TABLE IF EXISTS `evaluation_form_of_class_president`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluation_form_of_class_president` (
  `id` bigint NOT NULL,
  `cam_thi_bo_thi` int DEFAULT NULL,
  `canh_cao_hoc_vu` bit(1) DEFAULT NULL,
  `chung_chi_tieng_anh` bit(1) DEFAULT NULL,
  `dang_ki_hoc_qua_han` bit(1) DEFAULT NULL,
  `dang_ki_khong_du_tin` bit(1) DEFAULT NULL,
  `dat_giai_nckh` bit(1) DEFAULT NULL,
  `dat_giai_cuoc_thi` bit(1) DEFAULT NULL,
  `giu_chuc_vu` bit(1) DEFAULT NULL,
  `hoc_luc_gioi_xuat_sac` bit(1) DEFAULT NULL,
  `hoc_luc_yeu` bit(1) DEFAULT NULL,
  `ket_nap_dang` bit(1) DEFAULT NULL,
  `khong_chap_hanh_luat` int DEFAULT NULL,
  `khong_co_tinh_than_doan_ket` int DEFAULT NULL,
  `khong_tham_gia_bao_hiem` bit(1) DEFAULT NULL,
  `khong_tham_gia_sinh_hoat` int DEFAULT NULL,
  `khong_thuc_hien_yeu_cau` int DEFAULT NULL,
  `ky_luat_thi` varchar(255) DEFAULT NULL,
  `nop_nhan_kinh_phi` int DEFAULT NULL,
  `quyet_dinh_ky_luat` varchar(255) DEFAULT NULL,
  `tham_gia_nckh` bit(1) DEFAULT NULL,
  `tham_gia_chi_doan_chinh_tri` bit(1) DEFAULT NULL,
  `tham_gia_cuoc_thi` int DEFAULT NULL,
  `tham_gia_hoat_dong` int DEFAULT NULL,
  `total_point` int DEFAULT NULL,
  `tra_qua_han_giay_to` int DEFAULT NULL,
  `vi_pham_quy_dinh_cu_tru` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation_form_of_class_president`
--

LOCK TABLES `evaluation_form_of_class_president` WRITE;
/*!40000 ALTER TABLE `evaluation_form_of_class_president` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluation_form_of_class_president` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (52);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semester`
--

DROP TABLE IF EXISTS `semester`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semester` (
  `id` bigint NOT NULL,
  `deadline` date DEFAULT NULL,
  `semester_no` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semester`
--

LOCK TABLES `semester` WRITE;
/*!40000 ALTER TABLE `semester` DISABLE KEYS */;
INSERT INTO `semester` VALUES (9,NULL,184),(16,NULL,185),(23,NULL,187),(30,NULL,188),(37,NULL,190),(44,NULL,191),(51,NULL,193);
/*!40000 ALTER TABLE `semester` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` bigint NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `classes_id` bigint DEFAULT NULL,
  `user_username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4l5dnicegnvpmu0pv6vdvrmb6` (`classes_id`),
  KEY `FKthuvonveqnda6fruqhgvdnno7` (`user_username`),
  CONSTRAINT `FK4l5dnicegnvpmu0pv6vdvrmb6` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`),
  CONSTRAINT `FKthuvonveqnda6fruqhgvdnno7` FOREIGN KEY (`user_username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (3,'Bắc Giang','1998-07-04','VN','16020046@vnu.edu.vn','Nguyễn Văn An',2,'16020046'),(4,'Thái Bình','1998-02-22','VN','16020280@vnu.edu.vn','Phan Tuấn Thành',2,'16020280'),(5,'Yên Bái','1998-12-27','VN','16020246@vnu.edu.vn','Đào Tuấn Linh',2,'16020246'),(6,'Hưng Yên','1998-06-13','VN','16020047@vnu.edu.vn','Vũ Duy Mạnh',2,'16020047'),(7,'Thanh Hóa','1998-02-22','VN','16020062@vnu.edu.vn','Vũ Thị Thanh Lâm',2,'16020062'),(8,'Bắc Giang','1999-04-09','VN','17020965@vnu.edu.vn','Dương Tuấn Phương',2,'17020965');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `active` bit(1) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `roles` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('16020046',_binary '','$2a$10$5UImjCWExzDhdpL/4mx3CeZy53wAb2UxlS2adCGJtb/aimyHjD4ri','ROLE_STUDENT'),('16020047',_binary '','$2a$10$PDlGEhB0vcT68HBeS3b5B.fZ2ReRbDA7jcv9IaTBy5mSp9aL1xZ4e','ROLE_STUDENT'),('16020062',_binary '','$2a$10$8HvJsbilVYkogacUcl6YBuBRorUCXHav3tsaGJa.qvy7BOjFl7k8.','ROLE_STUDENT'),('16020246',_binary '','$2a$10$mCwMOPV.XfqDQ8PvM0t3IevlHplN02Sc5KqKY1Q4pTO9pI6FaSIRa','ROLE_STUDENT'),('16020280',_binary '','$2a$10$EE/EdtEebh1g3.phU.82SeHTvq2n2/jMN2INcl8slhiQf.WqfLJwO','ROLE_STUDENT'),('17020965',_binary '','$2a$10$IALEDF24vXaeh.uY9LZtOuotmQjOWvtjpcSjRTqPCYmauyyVZaYX2','ROLE_PRESIDENT'),('admin',_binary '','$2a$10$KB.1pORhnLqZiDwuBL2VxOfvEDRXh2VIr23SBwQZhTjOrAOsqBXGy','ROLE_ADMIN'),('van.ntt',_binary '','$2a$10$AlOTvQ8TqtDp9lmHgxe8lOMXGh1obsdDNBueuU9nSz5BrUofA9e6G','ROLE_CONSULTANT');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-10 11:18:25
