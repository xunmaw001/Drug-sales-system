-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm2770x
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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-03-10 03:56:45',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-10 03:56:45',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-10 03:56:45',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-10 03:56:45',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-10 03:56:45',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-10 03:56:45',6,'宇宙银河系月球1号','月某','13823888886','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'yaopinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615350775178 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (61,'2021-03-10 03:56:45',1,1,'提问1','回复1',1),(62,'2021-03-10 03:56:45',2,2,'提问2','回复2',2),(63,'2021-03-10 03:56:45',3,3,'提问3','回复3',3),(64,'2021-03-10 03:56:45',4,4,'提问4','回复4',4),(65,'2021-03-10 03:56:45',5,5,'提问5','回复5',5),(66,'2021-03-10 03:56:45',6,6,'提问6','回复6',6),(1615348743560,'2021-03-10 03:59:03',1615348706846,NULL,'‍第三方付水电费\r\n','发送到发送到阿瑟热发送到\r\n',0),(1615348744083,'2021-03-10 03:59:03',1615348706846,NULL,'第三方付水电费',NULL,0),(1615348745156,'2021-03-10 03:59:04',1615348706846,NULL,'第三方付水电费',NULL,0),(1615348747690,'2021-03-10 03:59:06',1615348706846,NULL,'‍玩儿\r\n','水电费水电费士大夫\r\n',0),(1615350771676,'2021-03-10 04:32:51',1615348706846,NULL,'和规范化发过后防护服',NULL,0),(1615350775177,'2021-03-10 04:32:54',1615348706846,NULL,'‍他人认同\r\n','发鬼地方个的电饭锅\r\n',0);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspm2770x/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspm2770x/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspm2770x/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanpeisong`
--

DROP TABLE IF EXISTS `dingdanpeisong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanpeisong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `yaopinbianhao` varchar(200) DEFAULT NULL COMMENT '药品编号',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '药品名称',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `yugushouhuoshijian` datetime DEFAULT NULL COMMENT '预估收货时间',
  `shouhuodizhi` varchar(200) DEFAULT NULL COMMENT '收货地址',
  `dingdanzhuangtai` varchar(200) DEFAULT NULL COMMENT '订单状态',
  `longitude` float DEFAULT NULL COMMENT '经度',
  `latitude` float DEFAULT NULL COMMENT '纬度',
  `fulladdress` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='订单配送';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanpeisong`
--

LOCK TABLES `dingdanpeisong` WRITE;
/*!40000 ALTER TABLE `dingdanpeisong` DISABLE KEYS */;
INSERT INTO `dingdanpeisong` VALUES (51,'2021-03-10 03:56:45','订单编号1','药品编号1','药品名称1','账号1','姓名1','手机1','2021-03-10 11:56:45','2021-03-10 11:56:45','收货地址1','配送中',1,1,'宇宙银河系地球1号'),(52,'2021-03-10 03:56:45','订单编号2','药品编号2','药品名称2','账号2','姓名2','手机2','2021-03-10 11:56:45','2021-03-10 11:56:45','收货地址2','配送中',2,2,'宇宙银河系地球2号'),(53,'2021-03-10 03:56:45','订单编号3','药品编号3','药品名称3','账号3','姓名3','手机3','2021-03-10 11:56:45','2021-03-10 11:56:45','收货地址3','配送中',3,3,'宇宙银河系地球3号'),(54,'2021-03-10 03:56:45','订单编号4','药品编号4','药品名称4','账号4','姓名4','手机4','2021-03-10 11:56:45','2021-03-10 11:56:45','收货地址4','配送中',4,4,'宇宙银河系地球4号'),(55,'2021-03-10 03:56:45','订单编号5','药品编号5','药品名称5','账号5','姓名5','手机5','2021-03-10 11:56:45','2021-03-10 11:56:45','收货地址5','配送中',5,5,'宇宙银河系地球5号'),(56,'2021-03-10 03:56:45','订单编号6','药品编号6','药品名称6','账号6','姓名6','手机6','2021-03-10 11:56:45','2021-03-10 11:56:45','收货地址6','配送中',6,6,'宇宙银河系地球6号');
/*!40000 ALTER TABLE `dingdanpeisong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'yaopinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','nobrtg1vm9gi4867w6v7vukx3yn93ygx','2021-03-10 03:57:08','2021-03-10 05:33:02'),(2,1615348706846,'11','yonghu','用户','qqdotvfw97egbssqo0hdvbyo6u1ywjsm','2021-03-10 03:58:54','2021-03-10 05:32:41');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-10 03:56:45');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaopinfenlei`
--

DROP TABLE IF EXISTS `yaopinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaopinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='药品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaopinfenlei`
--

LOCK TABLES `yaopinfenlei` WRITE;
/*!40000 ALTER TABLE `yaopinfenlei` DISABLE KEYS */;
INSERT INTO `yaopinfenlei` VALUES (41,'2021-03-10 03:56:45','分类1'),(42,'2021-03-10 03:56:45','分类2'),(43,'2021-03-10 03:56:45','分类3'),(44,'2021-03-10 03:56:45','分类4'),(45,'2021-03-10 03:56:45','分类5'),(46,'2021-03-10 03:56:45','分类6');
/*!40000 ALTER TABLE `yaopinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaopinxinxi`
--

DROP TABLE IF EXISTS `yaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinbianhao` varchar(200) NOT NULL COMMENT '药品编号',
  `yaopinmingcheng` varchar(200) NOT NULL COMMENT '药品名称',
  `yaopinfenlei` varchar(200) DEFAULT NULL COMMENT '药品分类',
  `picihao` varchar(200) DEFAULT NULL COMMENT '批次号',
  `shengchanriqi` date DEFAULT NULL COMMENT '生产日期',
  `yaopinjiage` int(11) NOT NULL COMMENT '药品价格',
  `yaopinshuoming` longtext COMMENT '药品说明',
  `shengchandanwei` varchar(200) DEFAULT NULL COMMENT '生产单位',
  `shengchandizhi` varchar(200) DEFAULT NULL COMMENT '生产地址',
  `yaopintupian` varchar(200) DEFAULT NULL COMMENT '药品图片',
  `youxiaoqizhi` date DEFAULT NULL COMMENT '有效期至',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yaopinbianhao` (`yaopinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='药品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaopinxinxi`
--

LOCK TABLES `yaopinxinxi` WRITE;
/*!40000 ALTER TABLE `yaopinxinxi` DISABLE KEYS */;
INSERT INTO `yaopinxinxi` VALUES (31,'2021-03-10 03:56:45','药品编号1','药品名称1','药品分类1','批次号1','2021-03-10',1,'药品说明1','生产单位1','生产地址1','http://localhost:8080/jspm2770x/upload/yaopinxinxi_yaopintupian1.jpg','2021-03-10',99.9),(32,'2021-03-10 03:56:45','药品编号2','药品名称2','药品分类2','批次号2','2021-03-10',2,'药品说明2','生产单位2','生产地址2','http://localhost:8080/jspm2770x/upload/yaopinxinxi_yaopintupian2.jpg','2021-03-10',99.9),(33,'2021-03-10 03:56:45','药品编号3','药品名称3','药品分类3','批次号3','2021-03-10',3,'药品说明3','生产单位3','生产地址3','http://localhost:8080/jspm2770x/upload/yaopinxinxi_yaopintupian3.jpg','2021-03-10',99.9),(34,'2021-03-10 03:56:45','药品编号4','药品名称4','药品分类4','批次号4','2021-03-10',4,'药品说明4','生产单位4','生产地址4','http://localhost:8080/jspm2770x/upload/yaopinxinxi_yaopintupian4.jpg','2021-03-10',99.9),(35,'2021-03-10 03:56:45','药品编号5','药品名称5','药品分类5','批次号5','2021-03-10',5,'药品说明5','生产单位5','生产地址5','http://localhost:8080/jspm2770x/upload/yaopinxinxi_yaopintupian5.jpg','2021-03-10',99.9),(36,'2021-03-10 03:56:45','药品编号6','药品名称6','药品分类6','批次号6','2021-03-10',6,'药品说明6','生产单位6','生产地址6','http://localhost:8080/jspm2770x/upload/yaopinxinxi_yaopintupian6.jpg','2021-03-10',99.9);
/*!40000 ALTER TABLE `yaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yisheng`
--

DROP TABLE IF EXISTS `yisheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishengzhanghao` varchar(200) DEFAULT NULL COMMENT '医生账号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `yiling` int(11) DEFAULT NULL COMMENT '医龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `jianjie` longtext COMMENT '简介',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yishengzhanghao` (`yishengzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='医生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yisheng`
--

LOCK TABLES `yisheng` WRITE;
/*!40000 ALTER TABLE `yisheng` DISABLE KEYS */;
INSERT INTO `yisheng` VALUES (21,'2021-03-10 03:56:45','医生1','123456','医生姓名1','初级','男',1,'13823888881','440300199101010001','http://localhost:8080/jspm2770x/upload/yisheng_touxiang1.jpg','简介1',100),(22,'2021-03-10 03:56:45','医生2','123456','医生姓名2','初级','男',2,'13823888882','440300199202020002','http://localhost:8080/jspm2770x/upload/yisheng_touxiang2.jpg','简介2',100),(23,'2021-03-10 03:56:45','医生3','123456','医生姓名3','初级','男',3,'13823888883','440300199303030003','http://localhost:8080/jspm2770x/upload/yisheng_touxiang3.jpg','简介3',100),(24,'2021-03-10 03:56:45','医生4','123456','医生姓名4','初级','男',4,'13823888884','440300199404040004','http://localhost:8080/jspm2770x/upload/yisheng_touxiang4.jpg','简介4',100),(25,'2021-03-10 03:56:45','医生5','123456','医生姓名5','初级','男',5,'13823888885','440300199505050005','http://localhost:8080/jspm2770x/upload/yisheng_touxiang5.jpg','简介5',100),(26,'2021-03-10 03:56:45','医生6','123456','医生姓名6','初级','男',6,'13823888886','440300199606060006','http://localhost:8080/jspm2770x/upload/yisheng_touxiang6.jpg','简介6',100);
/*!40000 ALTER TABLE `yisheng` ENABLE KEYS */;
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
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615348706847 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-10 03:56:45','用户1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/jspm2770x/upload/yonghu_zhaopian1.jpg','地址1',100),(12,'2021-03-10 03:56:45','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/jspm2770x/upload/yonghu_zhaopian2.jpg','地址2',100),(13,'2021-03-10 03:56:45','用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/jspm2770x/upload/yonghu_zhaopian3.jpg','地址3',100),(14,'2021-03-10 03:56:45','用户4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/jspm2770x/upload/yonghu_zhaopian4.jpg','地址4',100),(15,'2021-03-10 03:56:45','用户5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/jspm2770x/upload/yonghu_zhaopian5.jpg','地址5',100),(16,'2021-03-10 03:56:45','用户6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/jspm2770x/upload/yonghu_zhaopian6.jpg','地址6',100),(1615348706846,'2021-03-10 03:58:26','11','11','东方闪电',NULL,'','','',NULL,'',0);
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

-- Dump completed on 2021-03-11 20:33:34
