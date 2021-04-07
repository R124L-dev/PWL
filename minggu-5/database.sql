-- MariaDB dump 10.19  Distrib 10.4.18-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: latihan
-- ------------------------------------------------------
-- Server version	10.4.18-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `latihan`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `latihan` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `latihan`;

--
-- Table structure for table `kendaraan`
--

DROP TABLE IF EXISTS `kendaraan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kendaraan` (
  `no_plat` int(11) NOT NULL,
  `tahun` int(4) DEFAULT NULL,
  `tarif` int(10) DEFAULT NULL,
  `status` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`no_plat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kendaraan`
--

LOCK TABLES `kendaraan` WRITE;
/*!40000 ALTER TABLE `kendaraan` DISABLE KEYS */;
/*!40000 ALTER TABLE `kendaraan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelanggan`
--

DROP TABLE IF EXISTS `pelanggan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pelanggan` (
  `no_ktp` varchar(16) NOT NULL,
  `nama` varchar(14) DEFAULT NULL,
  `alamat` varchar(35) DEFAULT NULL,
  `telepon` varchar(17) DEFAULT NULL,
  PRIMARY KEY (`no_ktp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelanggan`
--

LOCK TABLES `pelanggan` WRITE;
/*!40000 ALTER TABLE `pelanggan` DISABLE KEYS */;
/*!40000 ALTER TABLE `pelanggan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sopir`
--

DROP TABLE IF EXISTS `sopir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sopir` (
  `id_sopir` int(11) NOT NULL,
  `nama` varchar(14) DEFAULT NULL,
  `alamat` varchar(35) DEFAULT NULL,
  `telepon` varchar(17) DEFAULT NULL,
  `sim` varchar(14) DEFAULT NULL,
  `tarif` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_sopir`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sopir`
--

LOCK TABLES `sopir` WRITE;
/*!40000 ALTER TABLE `sopir` DISABLE KEYS */;
/*!40000 ALTER TABLE `sopir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipe_kendaraan`
--

DROP TABLE IF EXISTS `tipe_kendaraan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipe_kendaraan` (
  `id_tipe` int(11) NOT NULL,
  `type` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`id_tipe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipe_kendaraan`
--

LOCK TABLES `tipe_kendaraan` WRITE;
/*!40000 ALTER TABLE `tipe_kendaraan` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipe_kendaraan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksi`
--

DROP TABLE IF EXISTS `transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaksi` (
  `no_transaksi` int(11) NOT NULL,
  `no_plat` int(11) DEFAULT NULL,
  `id_type` int(11) DEFAULT NULL,
  `id_sopir` int(11) DEFAULT NULL,
  `no_ktp` int(11) DEFAULT NULL,
  `tanggal_pesan` varchar(8) DEFAULT NULL,
  `tanggal_pinjam` varchar(8) DEFAULT NULL,
  `tanggal_kembali_rencana` varchar(8) DEFAULT NULL,
  `jam_kembali_rencana` int(10) DEFAULT NULL,
  `tanggal_kembali_realisasi` varchar(8) DEFAULT NULL,
  `jam_kembali_realisasi` int(10) DEFAULT NULL,
  `denda` int(10) DEFAULT NULL,
  `kilometer_pinjam` int(10) DEFAULT NULL,
  `kilometer_kembali` int(10) DEFAULT NULL,
  `bbm_pinjam` int(10) DEFAULT NULL,
  `bbm_kembali` int(10) DEFAULT NULL,
  `kondisi_mobil_pinjam` varchar(10) DEFAULT NULL,
  `kondisi_mobil_kembali` varchar(10) DEFAULT NULL,
  `kerusakan` varchar(35) DEFAULT NULL,
  `biaya_kerusakan` int(10) DEFAULT NULL,
  `biaya_bbm` int(10) DEFAULT NULL,
  PRIMARY KEY (`no_transaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi`
--

LOCK TABLES `transaksi` WRITE;
/*!40000 ALTER TABLE `transaksi` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaksi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `pendaftaran`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `pendaftaran` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `pendaftaran`;

--
-- Table structure for table `data_diri`
--

DROP TABLE IF EXISTS `data_diri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_diri` (
  `no` int(3) DEFAULT NULL,
  `nama` varchar(35) DEFAULT NULL,
  `alamat` varchar(60) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `no_telepon` varchar(15) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_diri`
--

LOCK TABLES `data_diri` WRITE;
/*!40000 ALTER TABLE `data_diri` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_diri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_pribadi`
--

DROP TABLE IF EXISTS `data_pribadi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_pribadi` (
  `kd_pribadi` char(3) NOT NULL,
  `panggilan` char(4) DEFAULT NULL,
  `nama` varchar(35) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  PRIMARY KEY (`kd_pribadi`),
  UNIQUE KEY `kd_pribadi` (`kd_pribadi`,`panggilan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_pribadi`
--

LOCK TABLES `data_pribadi` WRITE;
/*!40000 ALTER TABLE `data_pribadi` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_pribadi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tamu`
--

DROP TABLE IF EXISTS `tb_tamu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tamu` (
  `no` int(3) NOT NULL,
  `nama` varchar(35) DEFAULT NULL,
  `alamat` varchar(60) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `no_telp` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tamu`
--

LOCK TABLES `tb_tamu` WRITE;
/*!40000 ALTER TABLE `tb_tamu` DISABLE KEYS */;
INSERT INTO `tb_tamu` VALUES (1,'irfan nurhudin','ujung berung','bo_ii77@yahoo.com','085613548789'),(2,'Wasmui','Jatimulyo','boy@gmail.com','084567897890'),(3,'Sumarno','Surodadi','man@ymail.com','082469823578');
/*!40000 ALTER TABLE `tb_tamu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `universitas`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `universitas` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `universitas`;

--
-- Table structure for table `mahasiswa_ekonomi`
--

DROP TABLE IF EXISTS `mahasiswa_ekonomi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahasiswa_ekonomi` (
  `nim` char(9) DEFAULT NULL,
  `nama` char(50) DEFAULT NULL,
  `umur` int(11) DEFAULT NULL,
  `tempat_lahir` char(50) DEFAULT NULL,
  `IPK` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa_ekonomi`
--

LOCK TABLES `mahasiswa_ekonomi` WRITE;
/*!40000 ALTER TABLE `mahasiswa_ekonomi` DISABLE KEYS */;
INSERT INTO `mahasiswa_ekonomi` VALUES ('089023013','Alex\nSupriyanto',23,'Surabaya',2.90);
/*!40000 ALTER TABLE `mahasiswa_ekonomi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahasiswa_rmik`
--

DROP TABLE IF EXISTS `mahasiswa_rmik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahasiswa_rmik` (
  `nim` char(9) DEFAULT NULL,
  `nama` char(50) DEFAULT NULL,
  `umur` int(11) DEFAULT NULL,
  `tempat_lahir` char(50) DEFAULT NULL,
  `IPK` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa_rmik`
--

LOCK TABLES `mahasiswa_rmik` WRITE;
/*!40000 ALTER TABLE `mahasiswa_rmik` DISABLE KEYS */;
INSERT INTO `mahasiswa_rmik` VALUES ('089045001','Andi Suryo',23,'Jakarta',2.70);
/*!40000 ALTER TABLE `mahasiswa_rmik` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-07 23:12:07
