/*
Navicat MySQL Data Transfer

Source Server         : 120.76.73.173
Source Server Version : 50624
Source Host           : 120.76.73.173:3306
Source Database       : fenfen_monitor

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-03-11 19:38:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for adm_menu
-- ----------------------------
DROP TABLE IF EXISTS `adm_menu`;
CREATE TABLE `adm_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `system_code` varchar(100) DEFAULT NULL COMMENT '子系统代码',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '链接',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父栏目id',
  `state` smallint(6) DEFAULT NULL COMMENT '状态(50正常，-50删除)',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `type` smallint(6) DEFAULT NULL COMMENT '类型 1:子系统, 2:菜单项 3:菜单',
  `icon_rsurl` varchar(200) DEFAULT NULL COMMENT '菜单图标',
  `tree_code` varchar(50) DEFAULT NULL COMMENT '树形代码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='系统菜单';

-- ----------------------------
-- Table structure for dictionary_table
-- ----------------------------
DROP TABLE IF EXISTS `dictionary_table`;
CREATE TABLE `dictionary_table` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `status_code` varchar(50) DEFAULT NULL COMMENT '×´Ì¬Âë',
  `status_type` varchar(50) DEFAULT NULL COMMENT '×´Ì¬ÀàÐÍ',
  `status_remark` varchar(50) DEFAULT NULL,
  `status_desc` varchar(50) DEFAULT NULL COMMENT '×´Ì¬ÃèÊö',
  `old_lotto_id` int(10) DEFAULT NULL,
  `parent_id` int(10) DEFAULT NULL COMMENT '¸¸½Úµãid',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=945 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_fenfen_lotto
-- ----------------------------
DROP TABLE IF EXISTS `ds_fenfen_lotto`;
CREATE TABLE `ds_fenfen_lotto` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `from_lotto` int(11) DEFAULT NULL COMMENT '1:kg彩票  2：分分彩',
  `trans_id` varchar(200) DEFAULT NULL,
  `billno` varchar(50) DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `lotto_name` varchar(20) DEFAULT NULL,
  `lotto_type` varchar(20) DEFAULT NULL,
  `qishu` varchar(50) DEFAULT NULL,
  `bet_amount` decimal(18,2) DEFAULT NULL,
  `valid_amount` decimal(18,2) DEFAULT NULL,
  `pay_off` decimal(18,2) DEFAULT NULL,
  `item` mediumtext,
  `bet_time` datetime DEFAULT NULL,
  `play` mediumtext,
  `play_sum` varchar(255) DEFAULT NULL,
  `play_multiple` varchar(255) DEFAULT NULL,
  `play_amount` varchar(255) DEFAULT NULL,
  `play_win` varchar(255) DEFAULT NULL,
  `play_mode` varchar(255) DEFAULT NULL,
  `play_info` varchar(200) DEFAULT NULL,
  `odds` varchar(20) DEFAULT NULL,
  `state` int(11) DEFAULT NULL COMMENT '1、投注扣款  2、派彩赢加款   2、派彩输扣款   4、撤销加款"',
  `win_loss_type` tinyint(4) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `billno` (`billno`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48972 DEFAULT CHARSET=utf8 COMMENT='DS彩票';

-- ----------------------------
-- Table structure for lottery_log
-- ----------------------------
DROP TABLE IF EXISTS `lottery_log`;
CREATE TABLE `lottery_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lottery_log_check_id` bigint(20) DEFAULT NULL,
  `fenfen_lottery_id` bigint(20) DEFAULT NULL COMMENT '下注ID',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `play_result` varchar(50) DEFAULT NULL COMMENT '所投结果',
  `type_code` varchar(50) DEFAULT NULL COMMENT '彩票种类代码',
  `item_code` varchar(50) DEFAULT NULL COMMENT '彩票项目代码',
  `msg` varchar(50) DEFAULT NULL COMMENT '信息',
  `result` varchar(50) DEFAULT NULL COMMENT '开奖结果',
  `state` smallint(6) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='彩票警告日志';

-- ----------------------------
-- Table structure for lottery_log_check
-- ----------------------------
DROP TABLE IF EXISTS `lottery_log_check`;
CREATE TABLE `lottery_log_check` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fenfen_lottery_id` bigint(20) DEFAULT NULL COMMENT '下注ID',
  `bill_no` varchar(50) DEFAULT NULL COMMENT '注单号',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `play_result` varchar(50) DEFAULT NULL COMMENT '所投结果',
  `type_code` varchar(50) DEFAULT NULL COMMENT '彩票种类代码',
  `item_code` varchar(50) DEFAULT NULL COMMENT '彩票项目代码',
  `msg` varchar(50) DEFAULT NULL COMMENT '信息',
  `result` varchar(50) DEFAULT NULL COMMENT '开奖结果',
  `number` int(10) DEFAULT NULL COMMENT '注数',
  `multiple` int(10) DEFAULT NULL COMMENT '倍数',
  `per_amount` decimal(12,2) DEFAULT NULL COMMENT '注单金额',
  `win` decimal(12,2) DEFAULT NULL COMMENT '赢',
  `lose` decimal(12,2) DEFAULT NULL COMMENT '输',
  `check_result` varchar(50) DEFAULT NULL COMMENT '分析结果',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='彩票日志';

-- ----------------------------
-- Table structure for lottery_periods
-- ----------------------------
DROP TABLE IF EXISTS `lottery_periods`;
CREATE TABLE `lottery_periods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lottery_code` varchar(50) DEFAULT NULL COMMENT '彩票代码',
  `web_code` varchar(50) DEFAULT NULL COMMENT '网站代码',
  `periods` varchar(50) DEFAULT NULL COMMENT '彩票期数',
  `result` varchar(50) DEFAULT NULL COMMENT '开奖结果',
  `state` smallint(6) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='彩票期数';

-- ----------------------------
-- Table structure for lottery_regular
-- ----------------------------
DROP TABLE IF EXISTS `lottery_regular`;
CREATE TABLE `lottery_regular` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lottery_type_id` bigint(20) DEFAULT NULL COMMENT '彩票种类ID',
  `item_code` varchar(20) DEFAULT NULL COMMENT '彩票种类项目代码',
  `item_desc` varchar(50) DEFAULT NULL COMMENT '彩票种类项目说明',
  `bonus` decimal(12,0) DEFAULT NULL COMMENT '单注奖金',
  `lottery_regular` varchar(500) DEFAULT NULL COMMENT '中奖规则',
  `state` smallint(6) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='中奖规则';

-- ----------------------------
-- Table structure for lottery_result
-- ----------------------------
DROP TABLE IF EXISTS `lottery_result`;
CREATE TABLE `lottery_result` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `caipiao_code` varchar(52) DEFAULT NULL COMMENT '彩票代码',
  `periods` varchar(50) DEFAULT NULL COMMENT '彩票期数',
  `result` varchar(50) DEFAULT NULL COMMENT '开奖结果',
  `web_code` varchar(50) DEFAULT NULL COMMENT '网站代码',
  `state` smallint(6) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=416 DEFAULT CHARSET=utf8 COMMENT='彩票结果';

-- ----------------------------
-- Table structure for lottery_sub_regular
-- ----------------------------
DROP TABLE IF EXISTS `lottery_sub_regular`;
CREATE TABLE `lottery_sub_regular` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lottery_regular_id` bigint(20) DEFAULT NULL COMMENT '中奖规则ID',
  `grade` smallint(6) DEFAULT NULL COMMENT '中奖等级',
  `bonus` decimal(12,2) DEFAULT NULL COMMENT '单注奖金',
  `lottery_regular` varchar(500) DEFAULT NULL COMMENT '中奖规则',
  `state` smallint(6) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='中奖子规则';

-- ----------------------------
-- Table structure for lottery_type
-- ----------------------------
DROP TABLE IF EXISTS `lottery_type`;
CREATE TABLE `lottery_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type_code` varchar(50) DEFAULT NULL COMMENT '彩票种类代码',
  `type_name` varchar(50) DEFAULT NULL COMMENT '彩票种类名称',
  `state` smallint(6) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='彩票种类';

-- ----------------------------
-- Table structure for lottery_type_web
-- ----------------------------
DROP TABLE IF EXISTS `lottery_type_web`;
CREATE TABLE `lottery_type_web` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lottery_type_id` bigint(20) DEFAULT NULL COMMENT '彩票种类ID',
  `lottery_web_id` bigint(20) DEFAULT NULL COMMENT '网站ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='彩票种类与网站';

-- ----------------------------
-- Table structure for lottery_web
-- ----------------------------
DROP TABLE IF EXISTS `lottery_web`;
CREATE TABLE `lottery_web` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `web_code` varchar(50) DEFAULT NULL COMMENT '网站代码',
  `web_url` varchar(200) DEFAULT NULL COMMENT '网站URL',
  `web_desc` varchar(500) DEFAULT NULL COMMENT '网站描述',
  `state` smallint(6) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='彩票网站';
