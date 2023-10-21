-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: djangodh92s
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `djangodh92s`
--

/*!40000 DROP DATABASE IF EXISTS `djangodh92s`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `djangodh92s` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `djangodh92s`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dianyuan`
--

DROP TABLE IF EXISTS `dianyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dianyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) NOT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='店员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dianyuan`
--

LOCK TABLES `dianyuan` WRITE;
/*!40000 ALTER TABLE `dianyuan` DISABLE KEYS */;
INSERT INTO `dianyuan` VALUES (21,'2022-02-28 11:35:22','工号1','123456','员工姓名1','男','773890001@qq.com','13823888881','upload/dianyuan_xiangpian1.jpg'),(22,'2022-02-28 11:35:22','工号2','123456','员工姓名2','男','773890002@qq.com','13823888882','upload/dianyuan_xiangpian2.jpg'),(23,'2022-02-28 11:35:22','工号3','123456','员工姓名3','男','773890003@qq.com','13823888883','upload/dianyuan_xiangpian3.jpg'),(24,'2022-02-28 11:35:22','工号4','123456','员工姓名4','男','773890004@qq.com','13823888884','upload/dianyuan_xiangpian4.jpg'),(25,'2022-02-28 11:35:22','工号5','123456','员工姓名5','男','773890005@qq.com','13823888885','upload/dianyuan_xiangpian5.jpg'),(26,'2022-02-28 11:35:22','工号6','123456','员工姓名6','男','773890006@qq.com','13823888886','upload/dianyuan_xiangpian6.jpg');
/*!40000 ALTER TABLE `dianyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanxinxi`
--

DROP TABLE IF EXISTS `dingdanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) NOT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `danjia` int(11) DEFAULT NULL COMMENT '单价',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `jine` int(11) DEFAULT NULL COMMENT '金额',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `goumaibeizhu` varchar(200) DEFAULT NULL COMMENT '购买备注',
  `xiadanshijian` date DEFAULT NULL COMMENT '下单时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='订单信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanxinxi`
--

LOCK TABLES `dingdanxinxi` WRITE;
/*!40000 ALTER TABLE `dingdanxinxi` DISABLE KEYS */;
INSERT INTO `dingdanxinxi` VALUES (51,'2022-02-28 11:35:22','1111111111','商品名称1','商品类型1',1,1,1,'账号1','姓名1','手机号码1','购买备注1','2022-02-28','未支付'),(52,'2022-02-28 11:35:22','2222222222','商品名称2','商品类型2',2,2,2,'账号2','姓名2','手机号码2','购买备注2','2022-02-28','未支付'),(53,'2022-02-28 11:35:22','3333333333','商品名称3','商品类型3',3,3,3,'账号3','姓名3','手机号码3','购买备注3','2022-02-28','未支付'),(54,'2022-02-28 11:35:22','4444444444','商品名称4','商品类型4',4,4,4,'账号4','姓名4','手机号码4','购买备注4','2022-02-28','未支付'),(55,'2022-02-28 11:35:22','5555555555','商品名称5','商品类型5',5,5,5,'账号5','姓名5','手机号码5','购买备注5','2022-02-28','未支付'),(56,'2022-02-28 11:35:22','6666666666','商品名称6','商品类型6',6,6,6,'账号6','姓名6','手机号码6','购买备注6','2022-02-28','未支付');
/*!40000 ALTER TABLE `dingdanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangpinxinxi`
--

DROP TABLE IF EXISTS `discussshangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangpinxinxi`
--

LOCK TABLES `discussshangpinxinxi` WRITE;
/*!40000 ALTER TABLE `discussshangpinxinxi` DISABLE KEYS */;
INSERT INTO `discussshangpinxinxi` VALUES (81,'2022-02-28 11:35:22',1,1,'用户名1','评论内容1','回复内容1'),(82,'2022-02-28 11:35:22',2,2,'用户名2','评论内容2','回复内容2'),(83,'2022-02-28 11:35:22',3,3,'用户名3','评论内容3','回复内容3'),(84,'2022-02-28 11:35:22',4,4,'用户名4','评论内容4','回复内容4'),(85,'2022-02-28 11:35:22',5,5,'用户名5','评论内容5','回复内容5'),(86,'2022-02-28 11:35:22',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussshangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinleixing`
--

DROP TABLE IF EXISTS `shangpinleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinleixing` varchar(200) NOT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='商品类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinleixing`
--

LOCK TABLES `shangpinleixing` WRITE;
/*!40000 ALTER TABLE `shangpinleixing` DISABLE KEYS */;
INSERT INTO `shangpinleixing` VALUES (41,'2022-02-28 11:35:22','商品类型1'),(42,'2022-02-28 11:35:22','商品类型2'),(43,'2022-02-28 11:35:22','商品类型3'),(44,'2022-02-28 11:35:22','商品类型4'),(45,'2022-02-28 11:35:22','商品类型5'),(46,'2022-02-28 11:35:22','商品类型6');
/*!40000 ALTER TABLE `shangpinleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `shangpintupian` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `shangpinguige` varchar(200) DEFAULT NULL COMMENT '商品规格',
  `shangpinjianjie` longtext COMMENT '商品简介',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `shengchandi` varchar(200) DEFAULT NULL COMMENT '生产地',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `danjia` int(11) DEFAULT NULL COMMENT '单价',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `shangjiariqi` date DEFAULT NULL COMMENT '上架日期',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (31,'2022-02-28 11:35:22','商品名称1','商品类型1','upload/shangpinxinxi_shangpintupian1.jpg','商品规格1','商品简介1','商品详情1','生产地1','位置1',1,1,'2022-02-28','2022-02-28 19:35:22',1),(32,'2022-02-28 11:35:22','商品名称2','商品类型2','upload/shangpinxinxi_shangpintupian2.jpg','商品规格2','商品简介2','商品详情2','生产地2','位置2',2,2,'2022-02-28','2022-02-28 19:35:22',2),(33,'2022-02-28 11:35:22','商品名称3','商品类型3','upload/shangpinxinxi_shangpintupian3.jpg','商品规格3','商品简介3','商品详情3','生产地3','位置3',3,3,'2022-02-28','2022-02-28 19:35:22',3),(34,'2022-02-28 11:35:22','商品名称4','商品类型4','upload/shangpinxinxi_shangpintupian4.jpg','商品规格4','商品简介4','商品详情4','生产地4','位置4',4,4,'2022-02-28','2022-02-28 19:35:22',4),(35,'2022-02-28 11:35:22','商品名称5','商品类型5','upload/shangpinxinxi_shangpintupian5.jpg','商品规格5','商品简介5','商品详情5','生产地5','位置5',5,5,'2022-02-28','2022-02-28 19:35:22',5),(36,'2022-02-28 11:35:22','商品名称6','商品类型6','upload/shangpinxinxi_shangpintupian6.jpg','商品规格6','商品简介6','商品详情6','生产地6','位置6',6,6,'2022-02-28','2022-02-28 19:35:22',6);
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tongjixinxi`
--

DROP TABLE IF EXISTS `tongjixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tongjixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tongjimingcheng` varchar(200) NOT NULL COMMENT '统计名称',
  `xiaoshoue` int(11) DEFAULT NULL COMMENT '销售额',
  `tongjishijian` date DEFAULT NULL COMMENT '统计时间',
  `tongjibeizhu` longtext COMMENT '统计备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='统计信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tongjixinxi`
--

LOCK TABLES `tongjixinxi` WRITE;
/*!40000 ALTER TABLE `tongjixinxi` DISABLE KEYS */;
INSERT INTO `tongjixinxi` VALUES (61,'2022-02-28 11:35:22','统计名称1',1,'2022-02-28','统计备注1'),(62,'2022-02-28 11:35:22','统计名称2',2,'2022-02-28','统计备注2'),(63,'2022-02-28 11:35:22','统计名称3',3,'2022-02-28','统计备注3'),(64,'2022-02-28 11:35:22','统计名称4',4,'2022-02-28','统计备注4'),(65,'2022-02-28 11:35:22','统计名称5',5,'2022-02-28','统计备注5'),(66,'2022-02-28 11:35:22','统计名称6',6,'2022-02-28','统计备注6');
/*!40000 ALTER TABLE `tongjixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-02-28 11:35:22');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-02-28 11:35:22','账号1','123456','姓名1','男','773890001@qq.com','13823888881','upload/yonghu_xiangpian1.jpg'),(12,'2022-02-28 11:35:22','账号2','123456','姓名2','男','773890002@qq.com','13823888882','upload/yonghu_xiangpian2.jpg'),(13,'2022-02-28 11:35:22','账号3','123456','姓名3','男','773890003@qq.com','13823888883','upload/yonghu_xiangpian3.jpg'),(14,'2022-02-28 11:35:22','账号4','123456','姓名4','男','773890004@qq.com','13823888884','upload/yonghu_xiangpian4.jpg'),(15,'2022-02-28 11:35:22','账号5','123456','姓名5','男','773890005@qq.com','13823888885','upload/yonghu_xiangpian5.jpg'),(16,'2022-02-28 11:35:22','账号6','123456','姓名6','男','773890006@qq.com','13823888886','upload/yonghu_xiangpian6.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-28 19:39:35
