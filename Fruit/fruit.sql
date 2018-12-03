/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50561
Source Host           : localhost:3306
Source Database       : fruit

Target Server Type    : MYSQL
Target Server Version : 50561
File Encoding         : 65001

Date: 2018-12-02 15:08:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for check
-- ----------------------------
DROP TABLE IF EXISTS `check`;
CREATE TABLE `check` (
  `cid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `cdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of check
-- ----------------------------

-- ----------------------------
-- Table structure for evaluate
-- ----------------------------
DROP TABLE IF EXISTS `evaluate`;
CREATE TABLE `evaluate` (
  `fid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `estar` varchar(255) DEFAULT NULL,
  `econtent` text,
  `edate` datetime DEFAULT NULL,
  PRIMARY KEY (`fid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of evaluate
-- ----------------------------

-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food` (
  `cid` int(11) NOT NULL,
  `fid` int(11) DEFAULT NULL,
  `buynum` int(11) DEFAULT NULL,
  `perprice` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE,
  CONSTRAINT `check_food` FOREIGN KEY (`cid`) REFERENCES `check` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='InnoDB free: 3072 kB; (`cid`) REFER `fruit/check`(`cid`)';

-- ----------------------------
-- Records of food
-- ----------------------------

-- ----------------------------
-- Table structure for introduce
-- ----------------------------
DROP TABLE IF EXISTS `introduce`;
CREATE TABLE `introduce` (
  `fin` int(11) NOT NULL,
  `ipic` varchar(255) DEFAULT NULL,
  `fplace` varchar(255) DEFAULT NULL,
  `details` text,
  PRIMARY KEY (`fin`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of introduce
-- ----------------------------

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `mid` int(11) NOT NULL,
  `mtime` datetime DEFAULT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`mid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for pic
-- ----------------------------
DROP TABLE IF EXISTS `pic`;
CREATE TABLE `pic` (
  `fid` int(11) NOT NULL,
  `showpic` varchar(255) DEFAULT NULL,
  `detailpic` varchar(255) DEFAULT NULL,
  `introducepic` varchar(255) DEFAULT NULL,
  `advpic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fid`) USING BTREE,
  CONSTRAINT `intpic` FOREIGN KEY (`fid`) REFERENCES `introduce` (`fin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='InnoDB free: 3072 kB; (`fid`) REFER `fruit/introduce`(`fin`)';

-- ----------------------------
-- Records of pic
-- ----------------------------

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) DEFAULT NULL,
  `fvariety` varchar(255) NOT NULL,
  `fprice` decimal(10,2) DEFAULT NULL,
  `finventory` varchar(255) DEFAULT NULL,
  `findate` datetime DEFAULT NULL,
  `foffdate` datetime DEFAULT NULL,
  `fsave` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of product
-- ----------------------------

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `wid` int(11) NOT NULL,
  `fid` int(11) DEFAULT NULL,
  `findate` datetime DEFAULT NULL,
  `snum` int(11) DEFAULT NULL,
  `sprice` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`wid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of store
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `truename` varchar(255) DEFAULT NULL,
  `utel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `uaddress` varchar(255) DEFAULT NULL,
  `jointime` datetime DEFAULT NULL,
  `upwd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'adin', '18655972031', '789125463@qq.com', '衡阳', null, '123456');
INSERT INTO `user` VALUES ('2', '小周', 'zhou', '18627661346', '225034912@qq.com', '衡阳', null, '123456');

-- ----------------------------
-- Table structure for worker
-- ----------------------------
DROP TABLE IF EXISTS `worker`;
CREATE TABLE `worker` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `wname` varchar(255) DEFAULT NULL,
  `wtel` varchar(255) DEFAULT NULL,
  `wemail` varchar(255) DEFAULT NULL,
  `jointime` datetime DEFAULT NULL,
  `wpwd` varchar(255) DEFAULT NULL,
  `wsex` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`wid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of worker
-- ----------------------------
INSERT INTO `worker` VALUES ('1', '小周', '15673581373', '2250034912@qq.com', '2018-12-01 00:00:00', '123456', '男');
INSERT INTO `worker` VALUES ('3', '小杨', '1896487235', '98561238@qq.com', '2018-12-02 14:57:49', '456789', 'on');
