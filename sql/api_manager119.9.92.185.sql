/*
Navicat MySQL Data Transfer

Source Server         : 119.9.92.185
Source Server Version : 50626
Source Host           : 119.9.92.185:3306
Source Database       : api_manager

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2017-03-11 19:36:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for api_info
-- ----------------------------
DROP TABLE IF EXISTS `api_info`;
CREATE TABLE `api_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `platform_prefix` varchar(50) DEFAULT NULL,
  `platform_id` int(11) DEFAULT NULL,
  `platform_agent` varchar(50) DEFAULT NULL,
  `platform_url` varchar(200) DEFAULT NULL,
  `platform_type` varchar(50) NOT NULL,
  `platform_key` varchar(500) DEFAULT NULL,
  `platform_login` varchar(200) DEFAULT NULL,
  `user_key` varchar(500) DEFAULT NULL,
  `address_id` int(11) NOT NULL COMMENT 'user_address',
  `memo` varchar(500) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `platform_prefix` (`platform_prefix`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of api_info
-- ----------------------------
INSERT INTO `api_info` VALUES ('40', 'ppkp', '11', 'dtest', 'http://linkapi.kgit6.com/app/WebService/JSON/display.php/', 'bbin', null, 'http://888.kkw910.com/app/WebService/JSON/display.php/', 'ppkp-dttest-xlcie-niteo-vbnr', '0', '柬埔寨', '50', '2016-11-08 05:02:46', '2016-11-08 16:56:05');

-- ----------------------------
-- Table structure for platform_info
-- ----------------------------
DROP TABLE IF EXISTS `platform_info`;
CREATE TABLE `platform_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `platform_url` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `platform_type` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='记录每个平台的url的list表，以便于后期切换维护';

-- ----------------------------
-- Records of platform_info
-- ----------------------------

-- ----------------------------
-- Table structure for user_address
-- ----------------------------
DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_ip` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `memo` varchar(500) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_ip` (`user_ip`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_address
-- ----------------------------
INSERT INTO `user_address` VALUES ('1', '112.206.86.43', '50', '测试', '2016-09-17 02:09:08', '2016-09-13 22:20:21');
INSERT INTO `user_address` VALUES ('46', '103.21.171.214', '50', 'ceshi', '2016-11-05 09:31:06', '2016-11-05 09:31:10');
INSERT INTO `user_address` VALUES ('47', '103.244.251.130', '50', '柬埔寨', '2016-11-08 05:00:36', '2016-11-08 17:00:25');
