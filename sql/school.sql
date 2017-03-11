/*
Navicat MySQL Data Transfer

Source Server         : localhost5.7
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : school

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-03-11 19:41:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for depts
-- ----------------------------
DROP TABLE IF EXISTS `depts`;
CREATE TABLE `depts` (
  `deptId` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '学院ID',
  `deptName` varchar(50) NOT NULL COMMENT '学院名称',
  PRIMARY KEY (`deptId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of depts
-- ----------------------------
INSERT INTO `depts` VALUES ('1', '哲学院');
INSERT INTO `depts` VALUES ('2', '经济学院');
INSERT INTO `depts` VALUES ('3', '法学院');
INSERT INTO `depts` VALUES ('4', '教育学院');
INSERT INTO `depts` VALUES ('5', '文学院');
INSERT INTO `depts` VALUES ('6', '历史学院');
INSERT INTO `depts` VALUES ('7', '理学院');
INSERT INTO `depts` VALUES ('8', '工学院');
INSERT INTO `depts` VALUES ('9', '农学院');
INSERT INTO `depts` VALUES ('10', '医学院');
INSERT INTO `depts` VALUES ('11', '军事学院');
INSERT INTO `depts` VALUES ('12', '管理学院');
INSERT INTO `depts` VALUES ('13', '艺术学院');

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `stuNo` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '学号 从1000开始',
  `deptId` int(10) unsigned NOT NULL COMMENT '学院ID',
  `stuName` varchar(50) NOT NULL COMMENT '学生姓名',
  PRIMARY KEY (`stuNo`),
  KEY `FK_DEPTID` (`deptId`),
  CONSTRAINT `FK_DEPTID` FOREIGN KEY (`deptId`) REFERENCES `depts` (`deptId`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('1000', '13', '鸟叔');
INSERT INTO `students` VALUES ('1001', '7', '乔布斯');
INSERT INTO `students` VALUES ('1002', '3', '阿汤哥');
INSERT INTO `students` VALUES ('1003', '3', '施瓦辛格');
INSERT INTO `students` VALUES ('1004', '2', '贝克汉姆');
INSERT INTO `students` VALUES ('1005', '3', '让雷诺');
