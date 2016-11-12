/*
Navicat MySQL Data Transfer

Source Server         : smallsun
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : mbook

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2016-11-10 15:33:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `bookId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bookName` varchar(25) DEFAULT NULL,
  `ISBN` varchar(25) DEFAULT NULL,
  `author` varchar(25) DEFAULT NULL,
  `publisher` varchar(50) DEFAULT NULL,
  `page` int(11) DEFAULT NULL,
  `pubDate` date DEFAULT NULL,
  `price` double(11,2) DEFAULT NULL,
  `cnum` int(11) DEFAULT NULL,
  `snum` int(11) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `photo_cover` varchar(255) DEFAULT NULL,
  `photo_spine` varchar(255) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  PRIMARY KEY (`bookId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '9Lives', '1-1-1-1', 'ANDREW HUDSON', 'Springer Press', '123', '2016-11-23', '128.00', '123', '100', 'All for one, one for all. ', 'D:\\javaWeb\\workplace\\mBook\\WebContent\\img\\preview\\', null, '1');
INSERT INTO `book` VALUES ('2', 'Life of a worm', '2-2-2-2', 'Will FLORES', 'Elsevier Press', '548', '2016-11-17', '585.56', '85', '45', 'Other men live to eat, while I eat to live. ', null, null, '5');
INSERT INTO `book` VALUES ('3', 'Lemon Rainbow', '3-3-3-3', 'CAROL WINTER', 'Springer Press', '595', '2016-12-22', '86.56', '58', '52', 'Love rules his kingdom without a sword. ', null, null, '5');
INSERT INTO `book` VALUES ('4', 'Structure and Space', '4-4-4-4', 'WALTER C. HAMILTON', 'Wiley Press', '578', '2016-11-22', '86.23', '85', '63', 'We soon believe what we desire. ', null, null, '4');
INSERT INTO `book` VALUES ('5', 'The Rock Enigma', '5-5-5-5', 'SIMON ABRAMOVICH', 'Elsevier Press', '876', '2016-11-16', '58.50', '58', '12', 'The darkest hour is that before the dawn. ', null, null, '4');
INSERT INTO `book` VALUES ('6', 'Life in Transit', '6-6-6-6', 'MARINA DOKOVA', 'Springer Press', '766', '2016-11-29', '54.25', '58', '45', 'Living without an aim is like sailing without a compass. ', null, null, '3');
INSERT INTO `book` VALUES ('7', ' Neural Science', '7-7-7-7', 'Life COOPER', 'Wiley Press', '687', '2016-11-23', '56.25', '588', '558', 'A bird in the hand is worth two in the bush. ', null, null, '3');
INSERT INTO `book` VALUES ('8', 'Digital Nomads', '8-8-8-8', 'CHRISTA HAUSMANN', 'Springer Press', '1866', '2016-11-29', '58.00', '88', '66', 'One swallow does not make a summer. ', null, null, '2');
INSERT INTO `book` VALUES ('9', 'Architecture', '9-9-9-9', 'KENNY GARCIA', 'Elsevier Press', '686', '2016-11-22', '28.22', '55', '33', 'A man may lead a horse to the water, but he cannot make it drink. ', null, null, '1');

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `categoryId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'literature');
INSERT INTO `category` VALUES ('2', 'IT');
INSERT INTO `category` VALUES ('3', 'novel');
INSERT INTO `category` VALUES ('4', 'history');
INSERT INTO `category` VALUES ('5', 'Digital');

-- ----------------------------
-- Table structure for `lend`
-- ----------------------------
DROP TABLE IF EXISTS `lend`;
CREATE TABLE `lend` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bookId` int(11) DEFAULT NULL,
  `readerId` int(11) DEFAULT NULL,
  `LTime` date DEFAULT NULL,
  `STime` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lend
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `email` varchar(25) NOT NULL,
  `userName` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `isAdmin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('12331@qq.com', 'dwr', 'eqwrqwrr', '0');
INSERT INTO `user` VALUES ('123@qq.com', '323', '123456', '0');
INSERT INTO `user` VALUES ('21213@qq.com', '121123', '333333', '0');
INSERT INTO `user` VALUES ('admin', 'smallsun', '123456', '1');
INSERT INTO `user` VALUES ('asq123@qq.com', '1333', '2323333', '0');
INSERT INTO `user` VALUES ('zxx@qq.com', 'qeewq', 'wqeqwewqe', '0');

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `readerId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(25) DEFAULT NULL,
  `phoneNo` varchar(25) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `sex` varchar(8) NOT NULL,
  `birthday` date DEFAULT NULL,
  PRIMARY KEY (`readerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
