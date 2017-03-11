/*
Navicat MySQL Data Transfer

Source Server         : 47.89.35.60（转账试玩数据库）
Source Server Version : 50521
Source Host           : 47.89.35.60:3306
Source Database       : kakawan_center

Target Server Type    : MYSQL
Target Server Version : 50521
File Encoding         : 65001

Date: 2017-03-11 19:40:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for api_info
-- ----------------------------
DROP TABLE IF EXISTS `api_info`;
CREATE TABLE `api_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '唯一 id ',
  `hashcode` varchar(20) DEFAULT NULL COMMENT '唯一的 hashCode 标示',
  `site_id` int(11) DEFAULT NULL COMMENT '网站名称',
  `site_name` varchar(20) DEFAULT NULL,
  `prefix` char(15) DEFAULT NULL COMMENT '项目前缀',
  `agent` varchar(50) DEFAULT NULL COMMENT '对接的代理',
  `web_url` varchar(50) DEFAULT NULL,
  `reporturl` varchar(200) DEFAULT NULL COMMENT '请求视讯的路径 ',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `ip` varchar(200) DEFAULT NULL COMMENT '允许访问的 IP',
  `keyB` varchar(50) DEFAULT NULL COMMENT 'keyB 值',
  `state` smallint(6) DEFAULT NULL COMMENT '0：未启用\r\n            50：正常\r\n            -50：已删除',
  `live_id` int(11) DEFAULT NULL COMMENT '2:AG视讯厅\r\n            3:OG视讯厅\r\n            11:BBIN视讯厅\r\n            12:DS视讯厅\r\n            ',
  `live_name` varchar(20) DEFAULT NULL,
  `live_key` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for c_live_id_config
-- ----------------------------
DROP TABLE IF EXISTS `c_live_id_config`;
CREATE TABLE `c_live_id_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(50) DEFAULT NULL,
  `live_id` int(11) DEFAULT NULL,
  `game_kind` int(11) DEFAULT NULL,
  `game_kind_name` varchar(50) DEFAULT NULL,
  `time_type` int(11) DEFAULT '0' COMMENT '0:美东    1:北京',
  `table_game_kind` varchar(50) DEFAULT NULL,
  `table_bet_time` varchar(50) DEFAULT NULL COMMENT '下注时间字段数据的对应名称',
  `table_bet_amount` varchar(50) DEFAULT NULL COMMENT '下注金额字段',
  `table_validate_amount` varchar(50) DEFAULT NULL COMMENT '有效投注的字段',
  `table_win_lose_amount` varchar(50) DEFAULT NULL COMMENT '数据库输赢字段',
  `memo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for c_total_audit_config
-- ----------------------------
DROP TABLE IF EXISTS `c_total_audit_config`;
CREATE TABLE `c_total_audit_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `source_table_name` varchar(50) DEFAULT NULL,
  `select_bet_table_sql` mediumtext,
  `temp_table_name` varchar(50) DEFAULT NULL,
  `insert_temp_sql` varchar(500) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `memo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for c_total_report_config
-- ----------------------------
DROP TABLE IF EXISTS `c_total_report_config`;
CREATE TABLE `c_total_report_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `source_table_name` varchar(50) DEFAULT NULL,
  `select_bet_table_sql` mediumtext,
  `temp_table_name` varchar(50) DEFAULT NULL,
  `insert_temp_sql` varchar(500) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `memo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for dictionary_table
-- ----------------------------
DROP TABLE IF EXISTS `dictionary_table`;
CREATE TABLE `dictionary_table` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `status_code` varchar(50) DEFAULT NULL COMMENT '状态码',
  `status_type` varchar(50) DEFAULT NULL COMMENT '状态类型',
  `status_desc` varchar(50) DEFAULT NULL COMMENT '状态描述',
  `parent_id` int(10) DEFAULT NULL COMMENT '父节点id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1399 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_ag_ftp
-- ----------------------------
DROP TABLE IF EXISTS `ds_ag_ftp`;
CREATE TABLE `ds_ag_ftp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent` varchar(10) NOT NULL COMMENT '代理:F30, D59',
  `url` varchar(255) NOT NULL COMMENT 'ftp url',
  `port` int(10) NOT NULL,
  `username` varchar(50) NOT NULL COMMENT 'ftp用户名',
  `password` varchar(50) NOT NULL COMMENT 'ftp 密码',
  `file_path` varchar(50) DEFAULT NULL COMMENT 'ftp文件存放的路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_ag_ftp_record
-- ----------------------------
DROP TABLE IF EXISTS `ds_ag_ftp_record`;
CREATE TABLE `ds_ag_ftp_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dir_name` varchar(50) DEFAULT NULL COMMENT '目录路径',
  `file_name` varchar(50) DEFAULT NULL COMMENT '文件名称',
  `file_size` bigint(20) DEFAULT NULL COMMENT '文件的大小',
  `lastest_read_row` int(10) DEFAULT '0' COMMENT '最后读取的行号',
  `read_count` int(10) DEFAULT '0' COMMENT '读到次数',
  `read_time` datetime DEFAULT NULL COMMENT '第一次读到时间',
  `lastest_read_time` datetime DEFAULT NULL COMMENT '最后读的时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69124 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_ag_live
-- ----------------------------
DROP TABLE IF EXISTS `ds_ag_live`;
CREATE TABLE `ds_ag_live` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) DEFAULT NULL,
  `user_pre` varchar(5) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `player_name` varchar(20) DEFAULT NULL,
  `bill_no` varchar(20) DEFAULT NULL,
  `agent_code` varchar(20) DEFAULT NULL,
  `game_code` varchar(20) DEFAULT NULL,
  `net_amount` decimal(18,2) DEFAULT NULL,
  `win_loss_type` tinyint(4) DEFAULT NULL,
  `game_kind` tinyint(4) DEFAULT NULL,
  `game_kind_name` varchar(10) DEFAULT NULL,
  `game_type` varchar(10) DEFAULT NULL,
  `game_type_name` varchar(10) DEFAULT NULL,
  `bet_amount` decimal(18,2) DEFAULT NULL,
  `bet_time` datetime DEFAULT NULL,
  `valid_bet_amount` decimal(18,2) DEFAULT NULL,
  `flag` varchar(5) DEFAULT NULL,
  `play_type` varchar(5) DEFAULT NULL,
  `currency` varchar(5) DEFAULT NULL,
  `table_code` varchar(10) DEFAULT NULL,
  `login_ip` varchar(15) DEFAULT NULL,
  `recalcu_time` datetime DEFAULT NULL,
  `platform_id` varchar(10) DEFAULT NULL,
  `platform_type` varchar(5) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `round` varchar(5) DEFAULT NULL,
  `result` varchar(150) DEFAULT NULL,
  `before_credit` decimal(18,2) DEFAULT NULL,
  `device_type` varchar(2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `ag_flag` tinyint(4) DEFAULT NULL,
  `last_json` varchar(20) DEFAULT NULL,
  `slottype` int(11) DEFAULT NULL,
  `mainbillno` varchar(20) DEFAULT NULL,
  `bet_amount_base` decimal(18,2) DEFAULT NULL,
  `bet_amount_bonus` decimal(18,2) DEFAULT NULL,
  `net_amount_base` decimal(18,2) DEFAULT NULL,
  `net_amount_bonus` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bill_no_index` (`bill_no`) USING BTREE,
  KEY `user_pre_index` (`user_pre`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7642092 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_bbin_3d
-- ----------------------------
DROP TABLE IF EXISTS `ds_bbin_3d`;
CREATE TABLE `ds_bbin_3d` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `uppername` varchar(20) DEFAULT NULL,
  `bbin_website` varchar(20) DEFAULT NULL,
  `bbin_game_kind` tinyint(4) DEFAULT NULL,
  `wagers_id` varchar(20) DEFAULT NULL,
  `wagers_date` datetime DEFAULT NULL,
  `serial_id` varchar(20) DEFAULT NULL,
  `round_no` varchar(20) DEFAULT NULL,
  `game_type` varchar(10) DEFAULT NULL,
  `game_code` varchar(20) DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  `result_type` varchar(50) DEFAULT NULL,
  `card` varchar(50) DEFAULT NULL,
  `bet_amount` decimal(18,2) DEFAULT NULL,
  `pay_off` decimal(18,2) DEFAULT NULL,
  `commission` decimal(18,2) DEFAULT NULL,
  `currency` varchar(5) DEFAULT NULL,
  `exchange_rate` varchar(10) DEFAULT NULL,
  `commissionable` decimal(18,2) DEFAULT NULL,
  `win_loss_type` tinyint(4) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `flag` tinyint(4) DEFAULT NULL,
  `last_json` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bbin_game_kind_index` (`bbin_game_kind`) USING BTREE,
  KEY `wagers_id_index` (`wagers_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=80100 DEFAULT CHARSET=utf8 COMMENT='BBIN体育，3D，机率注单都放在此表';

-- ----------------------------
-- Table structure for ds_bbin_jilv
-- ----------------------------
DROP TABLE IF EXISTS `ds_bbin_jilv`;
CREATE TABLE `ds_bbin_jilv` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `uppername` varchar(20) DEFAULT NULL,
  `bbin_website` varchar(20) DEFAULT NULL,
  `bbin_game_kind` tinyint(4) DEFAULT NULL,
  `wagers_id` varchar(20) DEFAULT NULL,
  `wagers_date` datetime DEFAULT NULL,
  `serial_id` varchar(20) DEFAULT NULL,
  `round_no` varchar(20) DEFAULT NULL,
  `game_type` varchar(10) DEFAULT NULL,
  `game_code` varchar(20) DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  `result_type` varchar(50) DEFAULT NULL,
  `card` varchar(50) DEFAULT NULL,
  `bet_amount` decimal(18,2) DEFAULT NULL,
  `pay_off` decimal(18,2) DEFAULT NULL,
  `commission` decimal(18,2) DEFAULT NULL,
  `currency` varchar(5) DEFAULT NULL,
  `exchange_rate` varchar(10) DEFAULT NULL,
  `commissionable` decimal(18,2) DEFAULT NULL,
  `win_loss_type` tinyint(4) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `flag` tinyint(4) DEFAULT NULL,
  `last_json` varchar(200) DEFAULT NULL,
  `bet_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bbin_game_kind_index` (`bbin_game_kind`) USING BTREE,
  KEY `wagers_id_index` (`wagers_id`) USING BTREE,
  KEY `bet_date` (`bet_date`) USING BTREE,
  KEY `win_loss_type` (`win_loss_type`) USING BTREE,
  KEY `site_id` (`site_id`) USING BTREE,
  KEY `user_name` (`user_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9681677 DEFAULT CHARSET=utf8 COMMENT='BBIN体育，3D，机率注单都放在此表';

-- ----------------------------
-- Table structure for ds_bbin_jilv_history
-- ----------------------------
DROP TABLE IF EXISTS `ds_bbin_jilv_history`;
CREATE TABLE `ds_bbin_jilv_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `uppername` varchar(20) DEFAULT NULL,
  `bbin_website` varchar(20) DEFAULT NULL,
  `bbin_game_kind` tinyint(4) DEFAULT NULL,
  `wagers_id` varchar(20) DEFAULT NULL,
  `wagers_date` datetime DEFAULT NULL,
  `serial_id` varchar(20) DEFAULT NULL,
  `round_no` varchar(20) DEFAULT NULL,
  `game_type` varchar(10) DEFAULT NULL,
  `game_code` varchar(20) DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  `result_type` varchar(50) DEFAULT NULL,
  `card` varchar(50) DEFAULT NULL,
  `bet_amount` decimal(18,2) DEFAULT NULL,
  `pay_off` decimal(18,2) DEFAULT NULL,
  `commission` decimal(18,2) DEFAULT NULL,
  `currency` varchar(5) DEFAULT NULL,
  `exchange_rate` varchar(10) DEFAULT NULL,
  `commissionable` decimal(18,2) DEFAULT NULL,
  `win_loss_type` tinyint(4) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `flag` tinyint(4) DEFAULT NULL,
  `last_json` varchar(200) DEFAULT NULL,
  `bet_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8767683 DEFAULT CHARSET=utf8 COMMENT='BBIN体育，3D，机率注单都放在此表';

-- ----------------------------
-- Table structure for ds_bbin_live
-- ----------------------------
DROP TABLE IF EXISTS `ds_bbin_live`;
CREATE TABLE `ds_bbin_live` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) DEFAULT NULL,
  `uppername` varchar(20) DEFAULT NULL COMMENT '代理',
  `bbin_website` varchar(20) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `wagers_id` varchar(20) DEFAULT NULL,
  `wagers_date` datetime DEFAULT NULL,
  `serial_id` varchar(20) DEFAULT NULL,
  `round_no` varchar(20) DEFAULT NULL,
  `game_type` int(11) DEFAULT NULL,
  `game_code` varchar(20) DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  `result_type` varchar(50) DEFAULT NULL,
  `card` varchar(150) DEFAULT NULL,
  `bet_amount` decimal(18,2) DEFAULT NULL,
  `pay_off` decimal(18,2) DEFAULT NULL,
  `currency` varchar(5) DEFAULT NULL,
  `exchange_rate` varchar(10) DEFAULT NULL,
  `commissionable` decimal(18,2) DEFAULT NULL,
  `commission` decimal(18,2) DEFAULT NULL,
  `win_loss_type` tinyint(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `flag` tinyint(4) DEFAULT NULL,
  `last_json` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wagers_id_index` (`wagers_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=445896 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_bbin_page_record
-- ----------------------------
DROP TABLE IF EXISTS `ds_bbin_page_record`;
CREATE TABLE `ds_bbin_page_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) DEFAULT NULL,
  `game_kind` int(11) DEFAULT NULL,
  `page` int(11) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=574 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_bbin_sport
-- ----------------------------
DROP TABLE IF EXISTS `ds_bbin_sport`;
CREATE TABLE `ds_bbin_sport` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `uppername` varchar(20) DEFAULT NULL,
  `bbin_website` varchar(20) DEFAULT NULL,
  `bbin_game_kind` tinyint(4) DEFAULT NULL,
  `wagers_id` varchar(20) DEFAULT NULL,
  `wagers_date` datetime DEFAULT NULL,
  `serial_id` varchar(20) DEFAULT NULL,
  `round_no` varchar(20) DEFAULT NULL,
  `game_type` varchar(10) DEFAULT NULL,
  `game_code` varchar(20) DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  `result_type` varchar(50) DEFAULT NULL,
  `card` varchar(50) DEFAULT NULL,
  `bet_amount` decimal(18,2) DEFAULT NULL,
  `pay_off` decimal(18,2) DEFAULT NULL,
  `commission` decimal(18,2) DEFAULT NULL,
  `currency` varchar(5) DEFAULT NULL,
  `exchange_rate` varchar(10) DEFAULT NULL,
  `commissionable` decimal(18,2) DEFAULT NULL,
  `win_loss_type` tinyint(4) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `flag` tinyint(4) DEFAULT NULL,
  `last_json` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wagers_id_index` (`wagers_id`) USING BTREE,
  KEY `bbin_game_kind_index` (`bbin_game_kind`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=57722 DEFAULT CHARSET=utf8 COMMENT='BBIN体育，3D，机率注单都放在此表';

-- ----------------------------
-- Table structure for ds_fenfen_check_id
-- ----------------------------
DROP TABLE IF EXISTS `ds_fenfen_check_id`;
CREATE TABLE `ds_fenfen_check_id` (
  `id` varchar(50) NOT NULL,
  `trans_id` varchar(100) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trans_id` (`trans_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_fenfen_lotto
-- ----------------------------
DROP TABLE IF EXISTS `ds_fenfen_lotto`;
CREATE TABLE `ds_fenfen_lotto` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `from_lotto` int(11) DEFAULT NULL COMMENT '1:kg彩票  2：分分彩',
  `trans_id` varchar(200) DEFAULT NULL,
  `billno` varchar(50) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `lotto_name` varchar(20) DEFAULT NULL,
  `lotto_type` varchar(20) DEFAULT NULL,
  `qishu` varchar(50) DEFAULT NULL,
  `bet_amount` decimal(18,5) DEFAULT NULL,
  `valid_amount` decimal(18,5) DEFAULT NULL,
  `pay_off` decimal(18,5) DEFAULT NULL,
  `item` mediumtext,
  `bet_time` datetime DEFAULT NULL,
  `play` mediumtext,
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
) ENGINE=InnoDB AUTO_INCREMENT=730 DEFAULT CHARSET=utf8 COMMENT='DS彩票';

-- ----------------------------
-- Table structure for ds_fenfen_lotto_trans
-- ----------------------------
DROP TABLE IF EXISTS `ds_fenfen_lotto_trans`;
CREATE TABLE `ds_fenfen_lotto_trans` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `trans_id` varchar(100) DEFAULT NULL,
  `memo` varchar(500) DEFAULT NULL,
  `money` varchar(30) DEFAULT NULL,
  `trans_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `status` int(5) DEFAULT NULL COMMENT '1=注单下注    2=派彩 赢   3=派彩 输  4=注单撤销 返回本金',
  PRIMARY KEY (`id`),
  KEY `trans_id` (`trans_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2335 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_game_kind_order
-- ----------------------------
DROP TABLE IF EXISTS `ds_game_kind_order`;
CREATE TABLE `ds_game_kind_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_kind` int(11) DEFAULT NULL,
  `game_kind_name` varchar(20) DEFAULT NULL,
  `order_asc` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order` (`order_asc`),
  KEY `game_kind` (`game_kind`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_game_type
-- ----------------------------
DROP TABLE IF EXISTS `ds_game_type`;
CREATE TABLE `ds_game_type` (
  `id` int(11) NOT NULL COMMENT '主键',
  `game_name` varchar(30) DEFAULT NULL COMMENT '游戏名称',
  `out_game_code` varchar(20) DEFAULT NULL COMMENT '外部平台的游戏代码',
  `parent_id` int(11) DEFAULT NULL,
  `fk_live_id` tinyint(4) DEFAULT NULL COMMENT '对应视讯来源',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏类型';

-- ----------------------------
-- Table structure for ds_jpgame
-- ----------------------------
DROP TABLE IF EXISTS `ds_jpgame`;
CREATE TABLE `ds_jpgame` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) DEFAULT NULL,
  `wagersid` varchar(20) DEFAULT NULL COMMENT '注单号码',
  `jptypeid` varchar(20) DEFAULT NULL COMMENT '奖项',
  `playname` varchar(50) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL COMMENT '帐号',
  `wagersdate` datetime DEFAULT NULL COMMENT '下注时间',
  `jpamount` decimal(18,2) DEFAULT NULL COMMENT '中奖金额',
  `agents` varchar(25) DEFAULT NULL,
  `world` varchar(25) DEFAULT NULL,
  `corprator` varchar(25) DEFAULT NULL,
  `superior` varchar(25) DEFAULT NULL,
  `admin` varchar(25) DEFAULT NULL,
  `live_id` int(4) DEFAULT NULL,
  `live_name` varchar(30) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagersid` (`wagersid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1267 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_live
-- ----------------------------
DROP TABLE IF EXISTS `ds_live`;
CREATE TABLE `ds_live` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `billno` bigint(20) DEFAULT NULL,
  `billno_modify_id` bigint(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `game_type` varchar(20) DEFAULT NULL,
  `table_info_id` int(11) DEFAULT NULL,
  `show_info_id` int(11) DEFAULT NULL,
  `table_name` varchar(10) DEFAULT NULL,
  `game_info_id` int(11) DEFAULT NULL,
  `banker_result` varchar(50) DEFAULT NULL,
  `result_list` varchar(50) DEFAULT NULL,
  `poker_list` varchar(50) DEFAULT NULL,
  `stake_amount` decimal(18,2) DEFAULT NULL,
  `valid_stake` decimal(18,2) DEFAULT NULL,
  `win_loss` decimal(18,2) DEFAULT NULL,
  `win_loss_type` tinyint(4) DEFAULT NULL,
  `comm` decimal(18,2) DEFAULT NULL,
  `balance_after` decimal(18,2) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `adjustment_time` datetime DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `live_member_report_details` varchar(5000) DEFAULT NULL,
  `result_img_name` varchar(50) DEFAULT NULL,
  `flag` tinyint(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `billno` (`billno`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4825292 DEFAULT CHARSET=utf8 COMMENT='DS视讯表';

-- ----------------------------
-- Table structure for ds_live_tips
-- ----------------------------
DROP TABLE IF EXISTS `ds_live_tips`;
CREATE TABLE `ds_live_tips` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) DEFAULT NULL,
  `site_name` varchar(50) DEFAULT NULL,
  `user_pre` varchar(3) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `player_name` varchar(20) DEFAULT NULL,
  `outer_id` varchar(50) DEFAULT NULL,
  `agent_code` varchar(20) DEFAULT NULL,
  `game_code` varchar(20) DEFAULT NULL,
  `transfer_id` varchar(50) DEFAULT NULL,
  `trade_no` varchar(50) DEFAULT NULL,
  `platform_id` varchar(20) DEFAULT NULL,
  `platform_type` varchar(20) DEFAULT NULL,
  `transfer_type` varchar(50) DEFAULT NULL,
  `transfer_amount` decimal(18,2) DEFAULT NULL,
  `previous_amount` decimal(18,2) DEFAULT NULL,
  `current_amount` decimal(18,2) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `exchange_rate` decimal(18,2) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `flag` varchar(5) DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `memo` varchar(50) DEFAULT NULL,
  `ds_live_type` int(11) DEFAULT NULL,
  `ds_live_type_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trade_no` (`trade_no`) USING BTREE,
  KEY `ds_live_type` (`ds_live_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=151851 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_live_type
-- ----------------------------
DROP TABLE IF EXISTS `ds_live_type`;
CREATE TABLE `ds_live_type` (
  `id` tinyint(4) NOT NULL COMMENT '主键',
  `live_name` varchar(30) DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='2:AG视讯厅  3:OG视讯厅 11:BBIN视讯厅 12:DS视讯厅';

-- ----------------------------
-- Table structure for ds_lottery_bet
-- ----------------------------
DROP TABLE IF EXISTS `ds_lottery_bet`;
CREATE TABLE `ds_lottery_bet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `billno` bigint(20) DEFAULT NULL COMMENT '游戏平台记录 begin_id',
  `site_id` int(25) DEFAULT NULL COMMENT '网站编号',
  `username` varchar(20) DEFAULT NULL COMMENT '用户名',
  `tray` varchar(5) DEFAULT NULL COMMENT '游戏盘口类型: A,B,C',
  `bet_time` datetime DEFAULT NULL COMMENT '下注时间',
  `bet_id` varchar(40) DEFAULT NULL COMMENT '下注code唯一值',
  `game_info_id` int(11) DEFAULT NULL COMMENT '游戏类型 1:广东快乐十分 2:重庆时时彩3:北京赛车 4:江苏骰宝 5:幸运农场',
  `game_no` varchar(30) DEFAULT NULL COMMENT '期号',
  `bet_on` varchar(200) DEFAULT NULL COMMENT '下注类型',
  `bet_type` varchar(200) DEFAULT NULL COMMENT '下注类型详细',
  `odds` double(8,3) DEFAULT NULL COMMENT '赔率',
  `bet_detail` varchar(300) DEFAULT NULL COMMENT '下注明细',
  `stake_amount` double(18,2) DEFAULT NULL COMMENT '下注额',
  `valid_stake` double(18,2) DEFAULT NULL COMMENT '有效下注额',
  `win_loss` double(18,2) DEFAULT NULL COMMENT '输赢',
  `win_loss_type` tinyint(3) DEFAULT NULL COMMENT '输赢类型',
  `ip` varchar(20) DEFAULT NULL COMMENT '用户下注时的ip',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `flag` tinyint(5) DEFAULT NULL COMMENT 'NULL:未拉取注单;0:正在拉取中;50:拉取完成',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1014 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_lottery_bet_on
-- ----------------------------
DROP TABLE IF EXISTS `ds_lottery_bet_on`;
CREATE TABLE `ds_lottery_bet_on` (
  `id` int(11) NOT NULL DEFAULT '0',
  `game_info_id` int(11) DEFAULT NULL,
  `bet_on` varchar(50) DEFAULT NULL,
  `bet_on_explain` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_lottery_bet_type
-- ----------------------------
DROP TABLE IF EXISTS `ds_lottery_bet_type`;
CREATE TABLE `ds_lottery_bet_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_info_id` int(11) DEFAULT NULL,
  `bet_type` varchar(50) DEFAULT NULL,
  `bet_type_explain` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `game_info_id` (`game_info_id`,`bet_type`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_lottery_config
-- ----------------------------
DROP TABLE IF EXISTS `ds_lottery_config`;
CREATE TABLE `ds_lottery_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lottery_type` varchar(50) DEFAULT NULL,
  `lottery_name` varchar(50) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_lotto_bet
-- ----------------------------
DROP TABLE IF EXISTS `ds_lotto_bet`;
CREATE TABLE `ds_lotto_bet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `billno` bigint(20) DEFAULT NULL COMMENT '游戏平台记录 begin_id',
  `site_id` int(8) DEFAULT NULL COMMENT '网站 id',
  `username` varchar(20) DEFAULT NULL COMMENT '用户名',
  `tray` varchar(5) DEFAULT NULL COMMENT '游戏盘口类型  A,B,C,D',
  `bet_time` datetime DEFAULT NULL COMMENT '下注时间',
  `bet_id` varchar(40) DEFAULT NULL COMMENT '下注时唯一 code',
  `game_no` varchar(15) DEFAULT NULL COMMENT '期数',
  `bet_on_id` varchar(200) DEFAULT NULL COMMENT '下注类型 id',
  `bet_type_id` varchar(200) DEFAULT NULL COMMENT '下注类型详细 id',
  `bet_details_id` varchar(500) DEFAULT NULL COMMENT '下注类型详细',
  `odds` double(8,3) DEFAULT NULL COMMENT '赔率',
  `stake_amount` double(18,2) DEFAULT NULL COMMENT '下注额',
  `valid_stake` double(18,2) DEFAULT NULL COMMENT '有效下注额',
  `win_loss` double(18,2) DEFAULT NULL COMMENT '输赢',
  `odds2` double(8,3) DEFAULT NULL COMMENT '赔率2 针对三中二中三，二中特中特',
  `win_loss_type` tinyint(5) DEFAULT NULL COMMENT '输赢类型',
  `ip` varchar(20) DEFAULT NULL COMMENT 'IP 限制',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `flag` tinyint(5) DEFAULT NULL COMMENT 'NULL:未拉取注单;0:正在拉取中;50:拉取完成',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=982 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_lotto_bet_detail
-- ----------------------------
DROP TABLE IF EXISTS `ds_lotto_bet_detail`;
CREATE TABLE `ds_lotto_bet_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bet_detail_id` varchar(11) DEFAULT NULL,
  `bet_detail_id_expain` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_lotto_bet_on
-- ----------------------------
DROP TABLE IF EXISTS `ds_lotto_bet_on`;
CREATE TABLE `ds_lotto_bet_on` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bet_on_id` int(11) DEFAULT NULL,
  `bet_on_id_expain` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_lotto_bet_type
-- ----------------------------
DROP TABLE IF EXISTS `ds_lotto_bet_type`;
CREATE TABLE `ds_lotto_bet_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bet_type_id` int(11) DEFAULT NULL,
  `bet_type_id_expain` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_m8_sport
-- ----------------------------
DROP TABLE IF EXISTS `ds_m8_sport`;
CREATE TABLE `ds_m8_sport` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fetch_id` bigint(20) DEFAULT NULL,
  `bet_id` varchar(20) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `bet_amount` decimal(18,2) DEFAULT NULL,
  `win_amount` decimal(18,2) DEFAULT NULL,
  `commission_amount` decimal(18,2) DEFAULT NULL,
  `commission` decimal(18,2) DEFAULT NULL COMMENT 'Commission % (value = 0.4 means 0.4%)',
  `win_lose_type` int(11) DEFAULT NULL,
  `result` varchar(2) DEFAULT NULL COMMENT 'P:NotMatchOver WA:WinAll LA:LostAll WH:WinHalf LH:LostHalf D:Draw（和局）',
  `last_modify_time` datetime DEFAULT NULL,
  `league` varchar(15) DEFAULT NULL,
  `home` varchar(15) DEFAULT NULL,
  `away` varchar(15) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `game` varchar(10) DEFAULT NULL,
  `odds` decimal(18,3) DEFAULT NULL,
  `side` varchar(5) DEFAULT NULL,
  `info` varchar(10) DEFAULT NULL,
  `half` tinyint(4) DEFAULT NULL COMMENT '// 0:Full Time, 1:First Half',
  `transaction_date` datetime DEFAULT NULL,
  `workdate` datetime DEFAULT NULL,
  `matchdate` varchar(20) DEFAULT NULL,
  `runscore` varchar(10) DEFAULT NULL,
  `score` varchar(10) DEFAULT NULL,
  `htscore` varchar(10) DEFAULT NULL,
  `first_last_goal` varchar(10) DEFAULT NULL,
  `sportstype` int(11) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `league_name` varchar(150) DEFAULT NULL,
  `home_name` varchar(150) DEFAULT NULL,
  `away_name` varchar(150) DEFAULT NULL,
  `flag` tinyint(5) DEFAULT '0' COMMENT '标示有没有统计到 ds_report 记录中',
  PRIMARY KEY (`id`),
  KEY `bet_id` (`bet_id`) USING BTREE,
  KEY `site_id` (`site_id`) USING BTREE,
  KEY `flag` (`flag`)
) ENGINE=InnoDB AUTO_INCREMENT=413 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_member
-- ----------------------------
DROP TABLE IF EXISTS `ds_member`;
CREATE TABLE `ds_member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `site_id` int(11) DEFAULT NULL COMMENT '网站名称',
  `site_name` varchar(12) DEFAULT NULL COMMENT '外接代理名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `agents` varchar(50) DEFAULT NULL,
  `world` varchar(50) DEFAULT NULL,
  `corprator` varchar(50) DEFAULT NULL,
  `superior` varchar(50) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `comm_agent` decimal(18,2) DEFAULT NULL,
  `comm_world` decimal(18,2) DEFAULT NULL,
  `comm_corprator` decimal(18,2) DEFAULT NULL,
  `comm_superior` decimal(18,2) DEFAULT NULL,
  `comm_branch` decimal(18,2) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`site_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38513 DEFAULT CHARSET=utf8 COMMENT='会员代理信息';

-- ----------------------------
-- Table structure for ds_og_record
-- ----------------------------
DROP TABLE IF EXISTS `ds_og_record`;
CREATE TABLE `ds_og_record` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `agent` varchar(255) DEFAULT NULL COMMENT '代理',
  `site_id` int(10) DEFAULT NULL COMMENT '网站id',
  `live_id` int(10) DEFAULT NULL COMMENT '视讯:2=AG,3=OG,11=BBIN,12=DS,13=H8',
  `product_id` bigint(20) DEFAULT NULL COMMENT '自增ＩＤ，唯一性',
  `user_name` varchar(50) DEFAULT NULL COMMENT '会员名',
  `game_record_id` varchar(20) DEFAULT NULL COMMENT '游戏结果ＩＤ',
  `order_number` varchar(20) DEFAULT NULL COMMENT '单号',
  `table_id` varchar(20) DEFAULT NULL COMMENT '桌号',
  `stage` int(10) DEFAULT NULL COMMENT '局号',
  `inning` int(10) DEFAULT NULL COMMENT '靴数',
  `game_name_id` varchar(20) DEFAULT NULL COMMENT '11表示百家乐，12表示龙虎，13表示轮盘，14表示骰宝，15德州扑克，16番摊',
  `game_betting_kind` varchar(20) DEFAULT NULL COMMENT '投注类型',
  `game_betting_content` varchar(50) DEFAULT NULL COMMENT '番摊,轮盘,骰宝的投注区',
  `result_type` int(10) DEFAULT NULL COMMENT '游戏结果类型：1表示输，2表示赢3表示和，4表示无效',
  `win_lose_type` int(10) DEFAULT NULL,
  `betting_amount` decimal(10,2) DEFAULT NULL COMMENT '投注金额',
  `compensate_rate` decimal(10,2) DEFAULT NULL COMMENT '赔率',
  `valid_amount` decimal(10,2) DEFAULT NULL COMMENT '有效投注额',
  `win_lose_amount` decimal(10,2) DEFAULT NULL COMMENT '输赢金额',
  `balance` decimal(10,2) DEFAULT NULL COMMENT '余额',
  `add_time` datetime DEFAULT NULL COMMENT '交易时间',
  `platform_id` varchar(10) DEFAULT NULL COMMENT '0东方 1IBC 2AG 5明升',
  `vendor_id` decimal(20,0) DEFAULT NULL COMMENT '顺序号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1638780 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_report
-- ----------------------------
DROP TABLE IF EXISTS `ds_report`;
CREATE TABLE `ds_report` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `bet_count` int(11) DEFAULT NULL,
  `betamount` decimal(18,2) DEFAULT NULL COMMENT '下注金额',
  `winlose` decimal(18,2) DEFAULT NULL COMMENT '派彩金额',
  `validamount` decimal(18,2) DEFAULT NULL COMMENT '有效下注金额',
  `site_id` int(11) DEFAULT NULL COMMENT '网站名',
  `live_id` tinyint(4) DEFAULT NULL COMMENT '视讯id',
  `live_name` varchar(30) DEFAULT NULL COMMENT '视讯名称',
  `game_kind` int(11) DEFAULT NULL,
  `game_kind_name` varchar(20) DEFAULT NULL,
  `game_type` int(11) DEFAULT NULL,
  `game_name` varchar(30) DEFAULT NULL,
  `bet_time` date DEFAULT NULL COMMENT '下注时间  以天为单位统计',
  `jiesuan_time` date DEFAULT NULL,
  `agents` varchar(50) DEFAULT NULL COMMENT '代理',
  `world` varchar(50) DEFAULT NULL COMMENT '总代',
  `corprator` varchar(50) DEFAULT NULL COMMENT '股东',
  `superior` varchar(50) DEFAULT NULL COMMENT '大股东',
  `company` varchar(50) DEFAULT NULL,
  `comm_agent` decimal(18,2) DEFAULT NULL,
  `comm_world` decimal(18,2) DEFAULT NULL,
  `comm_corprator` decimal(18,2) DEFAULT NULL,
  `comm_superior` decimal(18,2) DEFAULT NULL,
  `comm_branch` decimal(18,2) DEFAULT NULL,
  `last_comm` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=212924 DEFAULT CHARSET=utf8 COMMENT='注单统计报表';

-- ----------------------------
-- Table structure for ds_xiaoyu_check_id
-- ----------------------------
DROP TABLE IF EXISTS `ds_xiaoyu_check_id`;
CREATE TABLE `ds_xiaoyu_check_id` (
  `id` varchar(50) NOT NULL,
  `trans_id` varchar(100) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trans_id` (`trans_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_xiaoyu_lotto
-- ----------------------------
DROP TABLE IF EXISTS `ds_xiaoyu_lotto`;
CREATE TABLE `ds_xiaoyu_lotto` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `from_lotto` int(11) DEFAULT NULL,
  `trans_id` varchar(50) DEFAULT NULL,
  `billno` varchar(50) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `lotto_name` varchar(20) DEFAULT NULL,
  `lotto_type` varchar(20) DEFAULT NULL,
  `qishu` int(11) DEFAULT NULL,
  `bet_amount` decimal(18,2) DEFAULT NULL,
  `valid_amount` decimal(18,2) DEFAULT NULL,
  `pay_off` decimal(18,2) DEFAULT NULL,
  `item` varchar(100) DEFAULT NULL,
  `bet_time` datetime DEFAULT NULL,
  `play` varchar(100) DEFAULT NULL,
  `play_info` varchar(50) DEFAULT NULL,
  `odds` varchar(20) DEFAULT NULL,
  `state` int(11) DEFAULT NULL COMMENT '1、投注扣款  2、派彩赢加款   2、派彩输扣款   4、撤销加款"  5=反结算',
  `win_loss_type` tinyint(4) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `billno` (`billno`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='DS彩票';

-- ----------------------------
-- Table structure for ds_xiaoyu_lotto_ip
-- ----------------------------
DROP TABLE IF EXISTS `ds_xiaoyu_lotto_ip`;
CREATE TABLE `ds_xiaoyu_lotto_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `name` varchar(50) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `memo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip` (`ip`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_xiaoyu_lotto_trans
-- ----------------------------
DROP TABLE IF EXISTS `ds_xiaoyu_lotto_trans`;
CREATE TABLE `ds_xiaoyu_lotto_trans` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `trans_id` varchar(50) DEFAULT NULL,
  `state` int(11) DEFAULT NULL COMMENT '1=下注  2=派彩 赢  3=派彩 输   4=注单撤销 返回本金',
  `memo` varchar(50) DEFAULT NULL COMMENT '备注',
  `money` varchar(20) DEFAULT NULL,
  `trans_time` datetime DEFAULT NULL COMMENT '交易时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for site_id_info
-- ----------------------------
DROP TABLE IF EXISTS `site_id_info`;
CREATE TABLE `site_id_info` (
  `site_id` int(11) NOT NULL DEFAULT '0',
  `site_name` varchar(20) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `memo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for temp_audit_fenfen_lotto
-- ----------------------------
DROP TABLE IF EXISTS `temp_audit_fenfen_lotto`;
CREATE TABLE `temp_audit_fenfen_lotto` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for temp_audit_total
-- ----------------------------
DROP TABLE IF EXISTS `temp_audit_total`;
CREATE TABLE `temp_audit_total` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) DEFAULT NULL,
  `live_id` int(5) DEFAULT NULL,
  `order_no` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `bet_time` datetime DEFAULT NULL,
  `pay_amount` decimal(18,2) DEFAULT NULL,
  `bet_amount` decimal(18,2) DEFAULT NULL,
  `valid_amount` decimal(18,2) DEFAULT '0.00',
  `type` int(11) NOT NULL COMMENT '1:视讯 2:体育 3:彩票 4:机率 5:3d',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`),
  KEY `live_id` (`live_id`),
  KEY `order_no` (`order_no`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4156528 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for temp_audit_video_game_wager
-- ----------------------------
DROP TABLE IF EXISTS `temp_audit_video_game_wager`;
CREATE TABLE `temp_audit_video_game_wager` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for temp_bbin_sport
-- ----------------------------
DROP TABLE IF EXISTS `temp_bbin_sport`;
CREATE TABLE `temp_bbin_sport` (
  `id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for temp_ds_live
-- ----------------------------
DROP TABLE IF EXISTS `temp_ds_live`;
CREATE TABLE `temp_ds_live` (
  `id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for temp_fenfen
-- ----------------------------
DROP TABLE IF EXISTS `temp_fenfen`;
CREATE TABLE `temp_fenfen` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for temp_og_live
-- ----------------------------
DROP TABLE IF EXISTS `temp_og_live`;
CREATE TABLE `temp_og_live` (
  `id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for temp_video_game_wager
-- ----------------------------
DROP TABLE IF EXISTS `temp_video_game_wager`;
CREATE TABLE `temp_video_game_wager` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for temp_water_order
-- ----------------------------
DROP TABLE IF EXISTS `temp_water_order`;
CREATE TABLE `temp_water_order` (
  `order_name` varchar(20) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for temp_water_percent
-- ----------------------------
DROP TABLE IF EXISTS `temp_water_percent`;
CREATE TABLE `temp_water_percent` (
  `vgold` int(11) DEFAULT NULL,
  `max_return` int(11) DEFAULT NULL,
  `live_ds` decimal(8,2) DEFAULT NULL,
  `live_bb` decimal(8,2) DEFAULT NULL,
  `live_other` decimal(8,2) DEFAULT NULL,
  `hongkong` decimal(8,2) DEFAULT NULL,
  `lotto` decimal(8,2) DEFAULT NULL,
  `ball` decimal(8,2) DEFAULT NULL,
  `bb_sport` decimal(8,2) DEFAULT NULL,
  `game` decimal(8,2) DEFAULT NULL,
  `bb_3d` decimal(8,2) DEFAULT NULL,
  `next_vgold` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for temp_water_total
-- ----------------------------
DROP TABLE IF EXISTS `temp_water_total`;
CREATE TABLE `temp_water_total` (
  `agents` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `total_validamount` decimal(18,2) DEFAULT NULL,
  `ball_validamount` decimal(18,2) DEFAULT NULL,
  `ball_water` decimal(18,2) DEFAULT '0.00',
  `ball_calc_validamount` decimal(18,2) DEFAULT '0.00',
  `ball_uncalc_validamount` decimal(18,2) DEFAULT '0.00',
  `live_validamount` decimal(18,2) DEFAULT NULL,
  `live_water` decimal(18,2) DEFAULT '0.00',
  `live_calc_validamount` decimal(18,2) DEFAULT '0.00',
  `live_uncalc_validamount` decimal(18,2) DEFAULT '0.00',
  `live_bb_validamount` decimal(18,2) DEFAULT NULL,
  `live_bb_water` decimal(18,2) DEFAULT '0.00',
  `live_bb_calc_validamount` decimal(18,2) DEFAULT '0.00',
  `live_bb_uncalc_validamount` decimal(18,2) DEFAULT '0.00',
  `live_ds_validamount` decimal(18,2) DEFAULT NULL,
  `live_ds_water` decimal(18,2) DEFAULT '0.00',
  `live_ds_calc_validamount` decimal(18,2) DEFAULT '0.00',
  `live_ds_uncalc_validamount` decimal(18,2) DEFAULT '0.00',
  `live_other_validamount` decimal(18,2) DEFAULT NULL,
  `live_other_water` decimal(18,2) DEFAULT '0.00',
  `live_other_calc_validamount` decimal(18,2) DEFAULT '0.00',
  `live_other_uncalc_validamount` decimal(18,2) DEFAULT '0.00',
  `game_validamount` decimal(18,2) DEFAULT NULL,
  `game_water` decimal(18,2) DEFAULT '0.00',
  `game_calc_validamount` decimal(18,2) DEFAULT '0.00',
  `game_uncalc_validamount` decimal(18,2) DEFAULT '0.00',
  `lotto_validamount` decimal(18,2) DEFAULT NULL,
  `lotto_water` decimal(18,2) DEFAULT '0.00',
  `lotto_calc_validamount` decimal(18,2) DEFAULT '0.00',
  `lotto_uncalc_validamount` decimal(18,2) DEFAULT '0.00',
  `hongkong_validamount` decimal(18,2) DEFAULT NULL,
  `hongkong_water` decimal(18,2) DEFAULT '0.00',
  `hongkong_calc_validamount` decimal(18,2) DEFAULT '0.00',
  `hongkong_uncalc_validamount` decimal(18,2) DEFAULT '0.00',
  `bb_sport_validamount` decimal(18,2) DEFAULT NULL,
  `bb_sport_water` decimal(18,2) DEFAULT '0.00',
  `bb_sport_calc_validamount` decimal(18,2) DEFAULT '0.00',
  `bb_sport_uncalc_validamount` decimal(18,2) DEFAULT '0.00',
  `bb_3d_validamount` decimal(18,2) DEFAULT NULL,
  `bb_3d_water` decimal(18,2) DEFAULT '0.00',
  `bb_3d_calc_validamount` decimal(18,2) DEFAULT '0.00',
  `bb_3d_uncalc_validamount` decimal(18,2) DEFAULT '0.00',
  `total_water` decimal(18,2) DEFAULT '0.00',
  `total_calc_validamount` decimal(18,2) DEFAULT '0.00',
  `total_uncalc_validamount` decimal(18,2) DEFAULT '0.00',
  `tmp_calc_validamount` decimal(18,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tmp1
-- ----------------------------
DROP TABLE IF EXISTS `tmp1`;
CREATE TABLE `tmp1` (
  `billno` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tmp2
-- ----------------------------
DROP TABLE IF EXISTS `tmp2`;
CREATE TABLE `tmp2` (
  `billno` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for video_game_result
-- ----------------------------
DROP TABLE IF EXISTS `video_game_result`;
CREATE TABLE `video_game_result` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(20) DEFAULT NULL,
  `accountId` varchar(20) DEFAULT NULL,
  `transactionId` varchar(50) DEFAULT NULL COMMENT '玩家游戏局中单次Spin的唯一标识',
  `money` decimal(10,2) DEFAULT NULL COMMENT '原来账户钱数',
  `winLose` decimal(10,2) DEFAULT NULL COMMENT '玩家赔付金额',
  `currency` varchar(3) DEFAULT NULL COMMENT '玩家币种',
  `gameKey` varchar(50) DEFAULT NULL COMMENT '玩家下注的游戏ID',
  `gameSetId` varchar(50) DEFAULT NULL COMMENT '玩家游戏局的唯一标识',
  `isFinal` smallint(2) DEFAULT NULL COMMENT '该局游戏是否结束',
  `createTime` datetime DEFAULT NULL,
  `memo` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `transactionId` (`transactionId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for video_game_trans_record
-- ----------------------------
DROP TABLE IF EXISTS `video_game_trans_record`;
CREATE TABLE `video_game_trans_record` (
  `transId` varchar(200) NOT NULL COMMENT '主键',
  `transMoney` decimal(18,5) DEFAULT NULL COMMENT '转账金额',
  `gameSetId` varchar(200) DEFAULT NULL COMMENT '玩家游戏局的唯一标识',
  `type` int(2) DEFAULT NULL COMMENT '该局游戏是否结束',
  `createTime` datetime DEFAULT NULL COMMENT '0:下注   1：赔付',
  PRIMARY KEY (`transId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for video_game_wager
-- ----------------------------
DROP TABLE IF EXISTS `video_game_wager`;
CREATE TABLE `video_game_wager` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `siteId` int(11) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `accountId` varchar(20) DEFAULT NULL,
  `betAmount` decimal(18,2) DEFAULT NULL COMMENT '下单金额',
  `winLose` decimal(18,2) DEFAULT NULL,
  `commissonAmount` decimal(18,2) DEFAULT NULL,
  `winLoseType` int(11) DEFAULT NULL,
  `gameKey` varchar(50) DEFAULT NULL COMMENT '玩家下注的游戏ID',
  `gameSetId` varchar(50) DEFAULT NULL COMMENT '玩家游戏局的唯一标识',
  `money` decimal(18,2) DEFAULT NULL COMMENT '原来账户钱数',
  `currency` varchar(3) DEFAULT NULL COMMENT '玩家币种',
  `isFinal` smallint(6) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `lastUpdateTime` datetime DEFAULT NULL,
  `memo` varchar(50) DEFAULT NULL COMMENT '备注',
  `flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`) USING BTREE,
  KEY `gameKey` (`gameKey`) USING BTREE,
  KEY `gameSetId` (`gameSetId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4661 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for web_member_data
-- ----------------------------
DROP TABLE IF EXISTS `web_member_data`;
CREATE TABLE `web_member_data` (
  `ID` bigint(50) NOT NULL AUTO_INCREMENT,
  `lastUpdateTime` int(10) unsigned DEFAULT NULL,
  `session_id` varchar(250) DEFAULT NULL,
  `Oid` varchar(50) DEFAULT 'logout',
  `VID` tinyint(1) DEFAULT '2',
  `IDCODE` varchar(20) DEFAULT NULL,
  `IDOPTION` varchar(18) DEFAULT NULL,
  `CID` smallint(1) DEFAULT '156',
  `Level` int(2) DEFAULT '0',
  `Online` int(1) DEFAULT '0',
  `Money_password` varchar(50) DEFAULT NULL,
  `PasswordLive` varchar(50) DEFAULT NULL,
  `activetime` datetime DEFAULT NULL,
  `lastlogintime` datetime DEFAULT NULL,
  `lastloginip` varchar(50) DEFAULT NULL,
  `lastpassword` varchar(50) DEFAULT NULL,
  `Language` varchar(10) DEFAULT 'zh-tw',
  `playtype` varchar(20) DEFAULT NULL COMMENT '1为体育，2彩票，3小游戏，4真人视讯',
  `Email` varchar(50) DEFAULT NULL,
  `complex` int(11) DEFAULT '0',
  `qq` varchar(20) DEFAULT NULL,
  `TrueName` varchar(50) DEFAULT NULL,
  `UserName` varchar(30) DEFAULT NULL,
  `LoginName` varchar(30) DEFAULT NULL,
  `PassWord` varchar(40) DEFAULT NULL,
  `Money_Main` bigint(20) DEFAULT '0',
  `Money` decimal(10,2) DEFAULT '0.00',
  `Credit` bigint(20) DEFAULT '0',
  `Alias` varchar(20) DEFAULT NULL,
  `Sports` bigint(5) DEFAULT NULL,
  `Lottery` bigint(5) DEFAULT NULL,
  `SSC` bigint(5) DEFAULT NULL,
  `Points` bigint(10) DEFAULT NULL,
  `OpenType` char(1) DEFAULT NULL,
  `CurType` char(5) DEFAULT 'RMB',
  `Pay_Type` int(1) DEFAULT NULL,
  `LineType` int(1) DEFAULT NULL,
  `AA_Point` int(2) DEFAULT '0',
  `D_Point` int(2) DEFAULT '0',
  `C_Point` int(2) DEFAULT '0',
  `B_Point` int(2) DEFAULT '0',
  `A_Point` int(2) DEFAULT '0',
  `Status` int(1) DEFAULT '0',
  `Send` int(11) DEFAULT NULL,
  `BetType` int(1) DEFAULT NULL,
  `LoginDate` date DEFAULT NULL,
  `LoginTime` datetime DEFAULT NULL,
  `OnlineTime` datetime DEFAULT NULL,
  `LogoutTime` datetime DEFAULT NULL,
  `AddDate` datetime DEFAULT NULL,
  `EditDate` date DEFAULT NULL,
  `Sex` int(2) DEFAULT '0',
  `Contry` varchar(20) DEFAULT NULL,
  `BirthDay` datetime DEFAULT NULL,
  `LoginIP` varchar(50) DEFAULT NULL,
  `Url` varchar(50) DEFAULT NULL,
  `Agents` varchar(10) DEFAULT '0',
  `World` varchar(10) DEFAULT NULL,
  `Corprator` varchar(10) DEFAULT NULL,
  `Super` varchar(10) DEFAULT NULL,
  `Admin` varchar(10) DEFAULT NULL,
  `Bank_Address` varchar(50) DEFAULT NULL,
  `Bank_Account` varchar(25) DEFAULT NULL,
  `Bank_Name` varchar(30) DEFAULT NULL,
  `Province` varchar(30) DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `Mobile` varchar(32) DEFAULT NULL,
  `E_Mail` varchar(25) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Notes` varchar(500) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Reg` char(1) DEFAULT NULL,
  `DepositBankCount` int(11) DEFAULT NULL,
  `DepositBankTotalAmount` int(11) DEFAULT NULL,
  `DepositBankMaxAmount` int(11) DEFAULT NULL,
  `WithdrawalCount` int(11) DEFAULT NULL,
  `WithdrawalTotalAmount` int(11) DEFAULT NULL,
  `LevelLock` int(11) DEFAULT NULL,
  `ratio` varchar(10) DEFAULT '1',
  `group_id` int(11) DEFAULT '1' COMMENT '会员累计打码量',
  `lotto_limit` bit(1) DEFAULT b'0',
  `version` int(11) DEFAULT '1',
  `member_points` int(10) DEFAULT '0' COMMENT '//会员积分(会员等级)',
  `member_vgold` int(11) DEFAULT NULL COMMENT '会员累计打码量',
  `siteId` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Oid` (`Oid`),
  KEY `UserName` (`UserName`),
  KEY `Agents` (`Agents`),
  KEY `World` (`World`),
  KEY `Corprator` (`Corprator`),
  KEY `Super` (`Super`),
  KEY `Admin` (`Admin`)
) ENGINE=InnoDB AUTO_INCREMENT=3366 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for web_sys800_data
-- ----------------------------
DROP TABLE IF EXISTS `web_sys800_data`;
CREATE TABLE `web_sys800_data` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `ACT_RESULT` int(11) DEFAULT '0',
  `MIN_SUM` decimal(10,2) DEFAULT NULL,
  `ModelID` int(11) DEFAULT '0',
  `Checked` int(1) DEFAULT '0',
  `Gold` decimal(10,2) DEFAULT NULL,
  `UserName` varchar(30) DEFAULT NULL,
  `Agents` varchar(30) DEFAULT NULL,
  `World` varchar(30) DEFAULT NULL,
  `Corprator` varchar(30) DEFAULT NULL,
  `Super` varchar(30) DEFAULT NULL,
  `Admin` varchar(30) DEFAULT NULL,
  `CurType` varchar(10) DEFAULT 'RMB',
  `Date` datetime DEFAULT NULL,
  `Notes` varchar(100) DEFAULT NULL COMMENT '备注',
  `PS` varchar(100) DEFAULT NULL,
  `LevelName` varchar(20) DEFAULT NULL,
  `bankid` int(11) DEFAULT NULL,
  `fingerprint` varchar(50) DEFAULT NULL COMMENT '记录指纹',
  `siteId` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `userid` (`userid`),
  KEY `ACT_RESULT` (`ACT_RESULT`),
  KEY `UserName` (`UserName`),
  KEY `Agents` (`Agents`),
  KEY `ModelID` (`ModelID`),
  KEY `PS` (`PS`)
) ENGINE=InnoDB AUTO_INCREMENT=8114 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Procedure structure for ag_jilv
-- ----------------------------
DROP PROCEDURE IF EXISTS `ag_jilv`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ag_jilv`(OUT `msg_code` tinyint)
BEGIN
	#统计ag视讯
  DECLARE t_error INTEGER DEFAULT 0;
 
	
	DECLARE i_ag_live_id INT DEFAULT 2;#ag平台标识
	DECLARE i_ag_live_name VARCHAR(20) DEFAULT 'AG';
  DECLARE i_ag_game_kind INT DEFAULT 22;#游戏大类 ag视讯
  DECLARE i_ag_game_kind_name VARCHAR(20) DEFAULT 'AG机率';
	DECLARE i_ag_game_type INT DEFAULT 22000;#游戏小类
  DECLARE i_ag_game_name VARCHAR(20) DEFAULT 'AG机率';
	DECLARE i_ag_out_game_code VARCHAR(20);#ag游戏编码
	

	DECLARE i_user_name VARCHAR(20);#用户名
  DECLARE i_site_id INT;#网站id
	DECLARE i_sum_bet_amount DECIMAL(18,2);#用户下单总额
  DECLARE i_sum_valid_bet_amount DECIMAL(18,2);#用户总有效投注额
  DECLARE i_sum_net_amount DECIMAL(18,2);#用户总输赢额
  DECLARE i_bet_time VARCHAR(20);#投注日期
  DECLARE i_sum_count INT;#用户总投注次数

  DECLARE i_ds_report_id BIGINT DEFAULT 0; # 报表id

 -- 遍历数据结束标志
   declare done int;  
	
	#DECLARE 

	#定义游标，以不同用户分组，不同网站，不同天，并且注单必须是已结算的(体育要细分小类)
	DECLARE cur CURSOR FOR 
							SELECT live.username,live.site_id,SUM(live.bet_amount),SUM(live.valid_bet_amount),SUM(live.net_amount),DATE_FORMAT(live.bet_time,'%Y-%m-%d'),COUNT(*),live.game_type
							FROM ds_ag_live live 
									WHERE ag_flag = 0 AND game_kind = i_ag_game_kind AND win_loss_type IS NOT NULL AND win_loss_type<>-1
									GROUP BY live.username,live.user_pre,live.site_id,DATE_FORMAT(live.bet_time,'%Y-%m-%d'),live.game_type;
  -- 将结束标志绑定到游标
	 declare continue handler FOR SQLSTATE '02000' SET done = 1;
   DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;
   START TRANSACTION;  
	
	#设置统计状态为正在统计中
	UPDATE  ds_ag_live SET ag_flag = 0 WHERE ag_flag IS NULL AND game_kind = i_ag_game_kind AND win_loss_type IS NOT NULL AND win_loss_type<>-1;

	-- 打开游标
  OPEN cur;

-- 提取游标里的数据
	FETCH cur INTO i_user_name,i_site_id,i_sum_bet_amount,i_sum_valid_bet_amount,i_sum_net_amount,i_bet_time,i_sum_count,i_ag_out_game_code;
  -- 开始循环
  read_loop: LOOP
  
  -- 声明结束的时候
    IF done = 1 THEN
      LEAVE read_loop;
    END IF;
		
    -- 开始业务
		
		-- 游戏类型细分，先把外部_out_game_code，与内部game_type切换
	-- SELECT id, game_name INTO i_ag_game_type,i_ag_game_name FROM ds_game_type WHERE out_game_code = i_ag_out_game_code AND fk_live_id = i_ag_live_id;
		
		
		IF exists(SELECT d.id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_bet_time AND d.game_type = i_ag_game_type) THEN
					 SELECT d.id INTO i_ds_report_id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_bet_time AND d.game_type = i_ag_game_type;

    -- 存在原来的记录，更新
      UPDATE ds_report d SET bet_count = bet_count + i_sum_count,betamount = betamount + i_sum_bet_amount,winlose = winlose + i_sum_net_amount,
						validamount = validamount + i_sum_valid_bet_amount WHERE d.id = i_ds_report_id;
		ELSE
			-- 不存在原来的记录，插入
			INSERT INTO ds_report(username,bet_count,betamount,winlose,validamount,site_id,live_id,live_name,game_kind,game_kind_name,game_type,game_name,bet_time,jiesuan_time)
							VALUES(i_user_name,i_sum_count,i_sum_bet_amount,i_sum_net_amount,i_sum_valid_bet_amount,i_site_id,i_ag_live_id,i_ag_live_name,i_ag_game_kind,
											i_ag_game_kind_name,i_ag_game_type,i_ag_game_name,i_bet_time,i_bet_time);

		END IF;

		SET i_ds_report_id = 0;
		-- 结束业务
   FETCH cur INTO i_user_name,i_site_id,i_sum_bet_amount,i_sum_valid_bet_amount,i_sum_net_amount,i_bet_time,i_sum_count,i_ag_out_game_code;
	
END LOOP;
  -- 关闭游标
  CLOSE cur;


	-- 结束更新已统计标识
	UPDATE  ds_ag_live SET ag_flag = 50 WHERE ag_flag = 0 AND game_kind = i_ag_game_kind AND win_loss_type IS NOT NULL AND win_loss_type<>-1;

	IF t_error = 1 THEN
		ROLLBACK;
	ELSE
		COMMIT;
	END IF;
	SET msg_code = t_error;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ag_jilv_cancel
-- ----------------------------
DROP PROCEDURE IF EXISTS `ag_jilv_cancel`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ag_jilv_cancel`(OUT `msg_code` tinyint)
BEGIN
	#统计ag视讯取消的注单
	 DECLARE t_error INTEGER DEFAULT 0;

	DECLARE i_ag_live_id INT DEFAULT 2;#ag平台标识
	DECLARE i_ag_live_name VARCHAR(20) DEFAULT 'AG';
  DECLARE i_ag_game_kind INT DEFAULT 22;#游戏大类 ag视讯
  DECLARE i_ag_game_kind_name VARCHAR(20) DEFAULT 'AG机率';
	DECLARE i_ag_game_type INT DEFAULT 22000;#游戏小类
  DECLARE i_ag_game_name VARCHAR(20) DEFAULT 'AG机率';
	DECLARE i_ag_out_game_code VARCHAR(20);#ag游戏编码
	

	DECLARE i_user_name VARCHAR(20);#用户名
  DECLARE i_site_id INT;#网站id
	DECLARE i_sum_bet_amount DECIMAL(18,2);#用户下单总额
  DECLARE i_sum_valid_bet_amount DECIMAL(18,2);#用户总有效投注额
  DECLARE i_sum_net_amount DECIMAL(18,2);#用户总输赢额
  DECLARE i_bet_time VARCHAR(20);#投注日期
  DECLARE i_sum_count INT;#用户总投注次数

  DECLARE i_ds_report_id BIGINT DEFAULT 0; # 报表id

 -- 遍历数据结束标志
   declare done int;  
	
	#DECLARE 

	#定义游标，以不同用户分组，不同网站，不同天，并且注单必须是已结算的(体育要细分小类)
	DECLARE cur CURSOR FOR 
							SELECT live.username,live.site_id,SUM(live.bet_amount),SUM(live.valid_bet_amount),SUM(live.net_amount),DATE_FORMAT(live.bet_time,'%Y-%m-%d'),COUNT(*),live.game_type
							FROM ds_ag_live live 
									WHERE ag_flag = 0 AND game_kind = i_ag_game_kind AND win_loss_type = -1
									GROUP BY live.username,live.user_pre,live.site_id,DATE_FORMAT(live.bet_time,'%Y-%m-%d'),live.game_type;
  -- 将结束标志绑定到游标
		declare continue handler FOR SQLSTATE '02000' SET done = 1;  
		DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;
   START TRANSACTION;  
	
	#设置统计状态为正在统计中
	UPDATE  ds_ag_live SET ag_flag = 0 WHERE ag_flag =50 AND game_kind = i_ag_game_kind AND win_loss_type = -1;

	-- 打开游标
  OPEN cur;

-- 提取游标里的数据
	FETCH cur INTO i_user_name,i_site_id,i_sum_bet_amount,i_sum_valid_bet_amount,i_sum_net_amount,i_bet_time,i_sum_count,i_ag_out_game_code;
  -- 开始循环
  read_loop: LOOP
  
  -- 声明结束的时候
    IF done = 1 THEN
      LEAVE read_loop;
    END IF;
		
    -- 开始业务
		
		-- 游戏类型细分，先把外部_out_game_code，与内部game_type切换
	-- SELECT id, game_name INTO i_ag_game_type,i_ag_game_name FROM ds_game_type WHERE out_game_code = i_ag_out_game_code AND fk_live_id = i_ag_live_id;
		
		
		IF exists(SELECT d.id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_bet_time AND d.game_type = i_ag_game_type) THEN
					 SELECT d.id INTO i_ds_report_id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_bet_time AND d.game_type = i_ag_game_type;

    -- 存在原来的记录，更新
      UPDATE ds_report d SET bet_count = bet_count - i_sum_count,betamount = betamount - i_sum_bet_amount,winlose = winlose - i_sum_net_amount,
						validamount = validamount - i_sum_valid_bet_amount WHERE d.id = i_ds_report_id;
		
		END IF;

		SET i_ds_report_id = 0;
		-- 结束业务
   FETCH cur INTO i_user_name,i_site_id,i_sum_bet_amount,i_sum_valid_bet_amount,i_sum_net_amount,i_bet_time,i_sum_count,i_ag_out_game_code;
	
END LOOP;
  -- 关闭游标
  CLOSE cur;


	-- 结束更新已统计标识
	UPDATE  ds_ag_live SET ag_flag = null WHERE ag_flag = 0 AND game_kind = i_ag_game_kind AND win_loss_type = -1;

	IF t_error = 1 THEN
		ROLLBACK;
	ELSE
		COMMIT;
	END IF;
	SET msg_code = t_error;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ag_live
-- ----------------------------
DROP PROCEDURE IF EXISTS `ag_live`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ag_live`(OUT `msg_code` tinyint)
BEGIN
	#统计ag视讯
	DECLARE t_error INTEGER DEFAULT 0;


	DECLARE i_ag_live_id INT DEFAULT 2;#ag平台标识
	DECLARE i_ag_live_name VARCHAR(20) DEFAULT 'AG';
  DECLARE i_ag_game_kind INT DEFAULT 21;#游戏大类 ag视讯
  DECLARE i_ag_game_kind_name VARCHAR(20) DEFAULT 'AG视讯';
	DECLARE i_ag_game_type INT;#游戏小类
  DECLARE i_ag_game_name VARCHAR(20);
	DECLARE i_ag_out_game_code VARCHAR(20);#ag游戏编码
	

	DECLARE i_user_name VARCHAR(20);#用户名
  DECLARE i_site_id INT;#网站id
	DECLARE i_sum_bet_amount DECIMAL(18,2);#用户下单总额
  DECLARE i_sum_valid_bet_amount DECIMAL(18,2);#用户总有效投注额
  DECLARE i_sum_net_amount DECIMAL(18,2);#用户总输赢额
  DECLARE i_bet_time VARCHAR(20);#投注日期
  DECLARE i_sum_count INT;#用户总投注次数

  DECLARE i_ds_report_id BIGINT DEFAULT 0; # 报表id

 -- 遍历数据结束标志
   declare done int;  
	
	#DECLARE 

	#定义游标，以不同用户分组，不同网站，不同天，并且注单必须是已结算的(体育要细分小类)
	DECLARE cur CURSOR FOR 
							SELECT live.username,live.site_id,SUM(live.bet_amount),SUM(live.valid_bet_amount),SUM(live.net_amount),DATE_FORMAT(live.bet_time,'%Y-%m-%d'),COUNT(*),live.game_type
							FROM ds_ag_live live 
									WHERE ag_flag = 0 AND game_kind = i_ag_game_kind AND win_loss_type IS NOT NULL AND win_loss_type<>-1
									GROUP BY live.username,live.user_pre,live.site_id,DATE_FORMAT(live.bet_time,'%Y-%m-%d'),live.game_type;
  -- 将结束标志绑定到游标
		declare continue handler FOR SQLSTATE '02000' SET done = 1; 
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;
   START TRANSACTION;   
	
	#设置统计状态为正在统计中
	UPDATE  ds_ag_live SET ag_flag = 0 WHERE ag_flag IS NULL AND game_kind = i_ag_game_kind AND win_loss_type IS NOT NULL AND win_loss_type<>-1;

	-- 打开游标
  OPEN cur;

-- 提取游标里的数据
	FETCH cur INTO i_user_name,i_site_id,i_sum_bet_amount,i_sum_valid_bet_amount,i_sum_net_amount,i_bet_time,i_sum_count,i_ag_out_game_code;
  -- 开始循环
  read_loop: LOOP
  
  -- 声明结束的时候
    IF done = 1 THEN
      LEAVE read_loop;
    END IF;
		
    -- 开始业务
		
		-- 游戏类型细分，先把外部_out_game_code，与内部game_type切换
		SELECT id, game_name INTO i_ag_game_type,i_ag_game_name FROM ds_game_type WHERE out_game_code = i_ag_out_game_code AND fk_live_id = i_ag_live_id;
		
		
		IF exists(SELECT d.id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_bet_time AND d.game_type = i_ag_game_type) THEN
					 SELECT d.id INTO i_ds_report_id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_bet_time AND d.game_type = i_ag_game_type;

    -- 存在原来的记录，更新
      UPDATE ds_report d SET bet_count = bet_count + i_sum_count,betamount = betamount + i_sum_bet_amount,winlose = winlose + i_sum_net_amount,
						validamount = validamount + i_sum_valid_bet_amount WHERE d.id = i_ds_report_id;
		ELSE
			-- 不存在原来的记录，插入
			INSERT INTO ds_report(username,bet_count,betamount,winlose,validamount,site_id,live_id,live_name,game_kind,game_kind_name,game_type,game_name,bet_time,jiesuan_time)
							VALUES(i_user_name,i_sum_count,i_sum_bet_amount,i_sum_net_amount,i_sum_valid_bet_amount,i_site_id,i_ag_live_id,i_ag_live_name,i_ag_game_kind,
											i_ag_game_kind_name,i_ag_game_type,i_ag_game_name,i_bet_time,i_bet_time);

		END IF;

		SET i_ds_report_id = 0;
		-- 结束业务
   FETCH cur INTO i_user_name,i_site_id,i_sum_bet_amount,i_sum_valid_bet_amount,i_sum_net_amount,i_bet_time,i_sum_count,i_ag_out_game_code;
	
END LOOP;
  -- 关闭游标
  CLOSE cur;


	-- 结束更新已统计标识
	UPDATE  ds_ag_live SET ag_flag = 50 WHERE ag_flag = 0 AND game_kind = i_ag_game_kind AND win_loss_type IS NOT NULL AND win_loss_type<>-1;

	IF t_error = 1 THEN
		ROLLBACK;
	ELSE
		COMMIT;
	END IF;
	SET msg_code = t_error;



END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ag_live_cancel
-- ----------------------------
DROP PROCEDURE IF EXISTS `ag_live_cancel`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ag_live_cancel`(OUT `msg_code` tinyint)
BEGIN
	#统计ag视讯
	DECLARE t_error INTEGER DEFAULT 0;

	DECLARE i_ag_live_id INT DEFAULT 2;#ag平台标识
	DECLARE i_ag_live_name VARCHAR(20) DEFAULT 'AG';
  DECLARE i_ag_game_kind INT DEFAULT 21;#游戏大类 ag视讯
  DECLARE i_ag_game_kind_name VARCHAR(20) DEFAULT 'AG视讯';
	DECLARE i_ag_game_type INT;#游戏小类
  DECLARE i_ag_game_name VARCHAR(20);
	DECLARE i_ag_out_game_code VARCHAR(20);#ag游戏编码
	

	DECLARE i_user_name VARCHAR(20);#用户名
  DECLARE i_site_id INT;#网站id
	DECLARE i_sum_bet_amount DECIMAL(18,2);#用户下单总额
  DECLARE i_sum_valid_bet_amount DECIMAL(18,2);#用户总有效投注额
  DECLARE i_sum_net_amount DECIMAL(18,2);#用户总输赢额
  DECLARE i_bet_time VARCHAR(20);#投注日期
  DECLARE i_sum_count INT;#用户总投注次数

  DECLARE i_ds_report_id BIGINT DEFAULT 0; # 报表id

 -- 遍历数据结束标志
   declare done int;  
	
	#DECLARE 

	#定义游标，以不同用户分组，不同网站，不同天，并且注单必须是已结算的(体育要细分小类)
	DECLARE cur CURSOR FOR 
							SELECT live.username,live.site_id,SUM(live.bet_amount),SUM(live.valid_bet_amount),SUM(live.net_amount),DATE_FORMAT(live.bet_time,'%Y-%m-%d'),COUNT(*),live.game_type
							FROM ds_ag_live live 
									WHERE ag_flag = 0 AND game_kind = i_ag_game_kind AND win_loss_type = -1
									GROUP BY live.username,live.user_pre,live.site_id,DATE_FORMAT(live.bet_time,'%Y-%m-%d'),live.game_type;
  -- 将结束标志绑定到游标
		declare continue handler FOR SQLSTATE '02000' SET done = 1;
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;
   START TRANSACTION;    
	
	#设置统计状态为正在统计中
	UPDATE  ds_ag_live SET ag_flag = 0 WHERE ag_flag = 50 AND game_kind = i_ag_game_kind AND win_loss_type = -1;

	-- 打开游标
  OPEN cur;

-- 提取游标里的数据
	FETCH cur INTO i_user_name,i_site_id,i_sum_bet_amount,i_sum_valid_bet_amount,i_sum_net_amount,i_bet_time,i_sum_count,i_ag_out_game_code;
  -- 开始循环
  read_loop: LOOP
  
  -- 声明结束的时候
    IF done = 1 THEN
      LEAVE read_loop;
    END IF;
		
    -- 开始业务
		
		-- 游戏类型细分，先把外部_out_game_code，与内部game_type切换
		SELECT id, game_name INTO i_ag_game_type,i_ag_game_name FROM ds_game_type WHERE out_game_code = i_ag_out_game_code AND fk_live_id = i_ag_live_id;
		
		
		IF exists(SELECT d.id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_bet_time AND d.game_type = i_ag_game_type) THEN
					 SELECT d.id INTO i_ds_report_id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_bet_time AND d.game_type = i_ag_game_type;

    -- 存在原来的记录，更新
      UPDATE ds_report d SET bet_count = bet_count - i_sum_count,betamount = betamount - i_sum_bet_amount,winlose = winlose - i_sum_net_amount,
						validamount = validamount - i_sum_valid_bet_amount WHERE d.id = i_ds_report_id;

		END IF;

		SET i_ds_report_id = 0;
		-- 结束业务
   FETCH cur INTO i_user_name,i_site_id,i_sum_bet_amount,i_sum_valid_bet_amount,i_sum_net_amount,i_bet_time,i_sum_count,i_ag_out_game_code;
	
END LOOP;
  -- 关闭游标
  CLOSE cur;


	-- 结束更新已统计标识
	UPDATE  ds_ag_live SET ag_flag = null WHERE ag_flag = 0 AND game_kind = i_ag_game_kind AND win_loss_type = -1;

	IF t_error = 1 THEN
		ROLLBACK;
	ELSE
		COMMIT;
	END IF;
	SET msg_code = t_error;


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for bbin_3d
-- ----------------------------
DROP PROCEDURE IF EXISTS `bbin_3d`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `bbin_3d`(OUT `msg_code` tinyint)
BEGIN
	#统计3D游戏，bbin_game_kind = 15 
	 DECLARE t_error INTEGER DEFAULT 0;
	DECLARE i_bbin_live_id INT DEFAULT 11;#bbin平台标识
	DECLARE i_bbin_live_name VARCHAR(20) DEFAULT 'BBIN';
  DECLARE i_bbin_game_kind INT DEFAULT 15;#游戏大类3D
  DECLARE i_bbin_game_kind_name VARCHAR(20) DEFAULT 'BBIN3D';
	DECLARE i_bbin_game_type INT DEFAULT 15000;#游戏小类
  DECLARE i_bbin_game_name VARCHAR(20) DEFAULT 'BBIN3D';
	

	DECLARE i_user_name VARCHAR(20);#用户名
  DECLARE i_site_id INT;#网站id
	DECLARE i_sum_bet_amount DECIMAL(18,2);#用户下单总额
  DECLARE i_sum_commissionable DECIMAL(18,2);#用户总有效投注额
  DECLARE i_sum_pay_off DECIMAL(18,2);#用户总输赢额
  DECLARE i_wagers_date VARCHAR(20);#投注日期
  DECLARE i_sum_count INT;#用户总投注次数

  DECLARE i_ds_report_id BIGINT DEFAULT 0; # 报表id

  #DECLARE i_flag BIGINT DEFAULT NOW();


 -- 遍历数据结束标志
   declare done int;  
	
	#DECLARE 

	#定义游标，以不同用户分组，不同网站，不同天，并且注单必须是已结算的
	DECLARE cur CURSOR FOR 
							SELECT live.user_name,live.site_id,SUM(live.bet_amount),SUM(live.commissionable),SUM(live.pay_off),DATE_FORMAT(live.wagers_date,'%Y-%m-%d'),COUNT(*)
							FROM ds_bbin_3d live 
									WHERE bbin_game_kind = i_bbin_game_kind AND flag = 0 AND win_loss_type IS NOT NULL AND win_loss_type<> -1
									GROUP BY live.user_name,live.site_id,DATE_FORMAT(live.wagers_date,'%Y-%m-%d');
  -- 将结束标志绑定到游标
		declare continue handler FOR SQLSTATE '02000' SET done = 1;  
				DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;
   START TRANSACTION;  
	#设置统计状态为正在统计中
	UPDATE  ds_bbin_3d SET flag = 0 WHERE bbin_game_kind = i_bbin_game_kind AND flag IS NULL AND win_loss_type IS NOT NULL AND win_loss_type<> -1;

	-- 打开游标
  OPEN cur;

-- 提取游标里的数据
	FETCH cur INTO i_user_name,i_site_id,i_sum_bet_amount,i_sum_commissionable,i_sum_pay_off,i_wagers_date,i_sum_count;
  -- 开始循环
  read_loop: LOOP
  
  -- 声明结束的时候
    IF done = 1 THEN
      LEAVE read_loop;
    END IF;
		
    -- 开始业务
		
		IF exists(SELECT d.id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_wagers_date AND d.game_type = i_bbin_game_type) THEN
					 SELECT d.id INTO i_ds_report_id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_wagers_date AND d.game_type = i_bbin_game_type;

    -- 存在原来的记录，更新
      UPDATE ds_report d SET bet_count = bet_count + i_sum_count,betamount = betamount + i_sum_bet_amount,winlose = winlose + i_sum_pay_off,
						validamount = validamount + i_sum_commissionable WHERE d.id = i_ds_report_id;
		ELSE
			-- 不存在原来的记录，插入
			INSERT INTO ds_report(username,bet_count,betamount,winlose,validamount,site_id,live_id,live_name,game_kind,game_kind_name,game_type,game_name,bet_time,jiesuan_time)
							VALUES(i_user_name,i_sum_count,i_sum_bet_amount,i_sum_pay_off,i_sum_commissionable,i_site_id,i_bbin_live_id,i_bbin_live_name,i_bbin_game_kind,
											i_bbin_game_kind_name,i_bbin_game_type,i_bbin_game_name,i_wagers_date,i_wagers_date);

		END IF;

		SET i_ds_report_id = 0;
		-- 结束业务
   FETCH cur INTO i_user_name,i_site_id,i_sum_bet_amount,i_sum_commissionable,i_sum_pay_off,i_wagers_date,i_sum_count;
	
END LOOP;
  -- 关闭游标
  CLOSE cur;


	-- 结束更新已统计标识
	UPDATE  ds_bbin_3d SET flag = 50 WHERE bbin_game_kind = i_bbin_game_kind AND flag = 0 AND win_loss_type IS NOT NULL AND win_loss_type<> -1;
	IF t_error = 1 THEN
		ROLLBACK;
	ELSE
		COMMIT;
	END IF;
	SET msg_code = t_error;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for bbin_3d_cancel
-- ----------------------------
DROP PROCEDURE IF EXISTS `bbin_3d_cancel`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `bbin_3d_cancel`(OUT `msg_code` tinyint)
BEGIN
	#统计3D游戏，bbin_game_kind = 15 
	 DECLARE t_error INTEGER DEFAULT 0;
	DECLARE i_bbin_live_id INT DEFAULT 11;#bbin平台标识
	DECLARE i_bbin_live_name VARCHAR(20) DEFAULT 'BBIN';
  DECLARE i_bbin_game_kind INT DEFAULT 15;#游戏大类3D
  DECLARE i_bbin_game_kind_name VARCHAR(20) DEFAULT 'BBIN3D';
	DECLARE i_bbin_game_type INT DEFAULT 15000;#游戏小类
  DECLARE i_bbin_game_name VARCHAR(20) DEFAULT 'BBIN3D';
	

	DECLARE i_user_name VARCHAR(20);#用户名
  DECLARE i_site_id INT;#网站id
	DECLARE i_sum_bet_amount DECIMAL(18,2);#用户下单总额
  DECLARE i_sum_commissionable DECIMAL(18,2);#用户总有效投注额
  DECLARE i_sum_pay_off DECIMAL(18,2);#用户总输赢额
  DECLARE i_wagers_date VARCHAR(20);#投注日期
  DECLARE i_sum_count INT;#用户总投注次数

  DECLARE i_ds_report_id BIGINT DEFAULT 0; # 报表id

  #DECLARE i_flag BIGINT DEFAULT NOW();


 -- 遍历数据结束标志
   declare done int;  
	
	#DECLARE 

	#定义游标，以不同用户分组，不同网站，不同天，并且注单必须是已结算的
	DECLARE cur CURSOR FOR 
							SELECT live.user_name,live.site_id,SUM(live.bet_amount),SUM(live.commissionable),SUM(live.pay_off),DATE_FORMAT(live.wagers_date,'%Y-%m-%d'),COUNT(*)
							FROM ds_bbin_3d live 
									WHERE bbin_game_kind = i_bbin_game_kind AND flag = 0 AND win_loss_type = -1
									GROUP BY live.user_name,live.site_id,DATE_FORMAT(live.wagers_date,'%Y-%m-%d');
  -- 将结束标志绑定到游标
		declare continue handler FOR SQLSTATE '02000' SET done = 1;  
		DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;
   START TRANSACTION;
	#设置统计状态为正在统计中
	UPDATE  ds_bbin_3d SET flag = 0 WHERE bbin_game_kind = i_bbin_game_kind AND flag = 50 AND win_loss_type = -1;

	-- 打开游标
  OPEN cur;

-- 提取游标里的数据
	FETCH cur INTO i_user_name,i_site_id,i_sum_bet_amount,i_sum_commissionable,i_sum_pay_off,i_wagers_date,i_sum_count;
  -- 开始循环
  read_loop: LOOP
  
  -- 声明结束的时候
    IF done = 1 THEN
      LEAVE read_loop;
    END IF;
		
    -- 开始业务
		
		IF exists(SELECT d.id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_wagers_date AND d.game_type = i_bbin_game_type) THEN
					 SELECT d.id INTO i_ds_report_id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_wagers_date AND d.game_type = i_bbin_game_type;

    -- 存在原来的记录，更新
      UPDATE ds_report d SET bet_count = bet_count - i_sum_count,betamount = betamount - i_sum_bet_amount,winlose = winlose - i_sum_pay_off,
						validamount = validamount - i_sum_commissionable WHERE d.id = i_ds_report_id;

		END IF;

		SET i_ds_report_id = 0;
		-- 结束业务
   FETCH cur INTO i_user_name,i_site_id,i_sum_bet_amount,i_sum_commissionable,i_sum_pay_off,i_wagers_date,i_sum_count;
	
END LOOP;
  -- 关闭游标
  CLOSE cur;


	-- 结束更新已统计标识
	UPDATE  ds_bbin_3d SET flag = null WHERE bbin_game_kind = i_bbin_game_kind AND flag = 0 AND win_loss_type = -1;
	IF t_error = 1 THEN
		ROLLBACK;
	ELSE
		COMMIT;
	END IF;
	SET msg_code = t_error;


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for bbin_jilv
-- ----------------------------
DROP PROCEDURE IF EXISTS `bbin_jilv`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `bbin_jilv`(OUT `msg_code` tinyint)
BEGIN
	#统计机率游戏，bbin_game_kind = 5 
	DECLARE t_error INTEGER DEFAULT 0;
	DECLARE i_bbin_live_id INT DEFAULT 11;#bbin平台标识
	DECLARE i_bbin_live_name VARCHAR(20) DEFAULT 'BBIN';
  DECLARE i_bbin_game_kind INT DEFAULT 5;#游戏大类机率
  DECLARE i_bbin_game_kind_name VARCHAR(20) DEFAULT 'BBIN机率';
	DECLARE i_bbin_game_type INT DEFAULT 5000;#游戏小类
  DECLARE i_bbin_game_name VARCHAR(20) DEFAULT 'BBIN机率';
	

	DECLARE i_user_name VARCHAR(20);#用户名
  DECLARE i_site_id INT;#网站id
	DECLARE i_sum_bet_amount DECIMAL(18,2);#用户下单总额
  DECLARE i_sum_commissionable DECIMAL(18,2);#用户总有效投注额
  DECLARE i_sum_pay_off DECIMAL(18,2);#用户总输赢额
  DECLARE i_wagers_date VARCHAR(20);#投注日期
  DECLARE i_sum_count INT;#用户总投注次数

  DECLARE i_ds_report_id BIGINT DEFAULT 0; # 报表id

  #DECLARE i_flag BIGINT DEFAULT NOW();


 -- 遍历数据结束标志
   declare done int;  
	
	#DECLARE 

	#定义游标，以不同用户分组，不同网站，不同天，并且注单必须是已结算的
	DECLARE cur CURSOR FOR 
							SELECT live.user_name,live.site_id,SUM(live.bet_amount),SUM(live.commissionable),SUM(live.pay_off),DATE_FORMAT(live.wagers_date,'%Y-%m-%d'),COUNT(*)
							FROM ds_bbin_jilv live 
									WHERE bbin_game_kind = i_bbin_game_kind AND flag = 0 AND win_loss_type IS NOT NULL AND win_loss_type<> -1
									GROUP BY live.user_name,live.site_id,live.bet_date;
  -- 将结束标志绑定到游标
		declare continue handler FOR SQLSTATE '02000' SET done = 1;  
		DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;
   START TRANSACTION;  
	#设置统计状态为正在统计中
	UPDATE  ds_bbin_jilv SET flag = 0 WHERE bbin_game_kind = i_bbin_game_kind AND flag IS NULL AND win_loss_type IS NOT NULL AND win_loss_type<> -1;

	-- 打开游标
  OPEN cur;

-- 提取游标里的数据
	FETCH cur INTO i_user_name,i_site_id,i_sum_bet_amount,i_sum_commissionable,i_sum_pay_off,i_wagers_date,i_sum_count;
  -- 开始循环
  read_loop: LOOP
  
  -- 声明结束的时候
    IF done = 1 THEN
      LEAVE read_loop;
    END IF;
		
    -- 开始业务
		
		IF exists(SELECT d.id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_wagers_date AND d.game_type = i_bbin_game_type) THEN
					 SELECT d.id INTO i_ds_report_id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_wagers_date AND d.game_type = i_bbin_game_type;

    -- 存在原来的记录，更新
      UPDATE ds_report d SET bet_count = bet_count + i_sum_count,betamount = betamount + i_sum_bet_amount,winlose = winlose + i_sum_pay_off,
						validamount = validamount + i_sum_commissionable WHERE d.id = i_ds_report_id;
		ELSE
			-- 不存在原来的记录，插入
			INSERT INTO ds_report(username,bet_count,betamount,winlose,validamount,site_id,live_id,live_name,game_kind,game_kind_name,game_type,game_name,bet_time,jiesuan_time)
							VALUES(i_user_name,i_sum_count,i_sum_bet_amount,i_sum_pay_off,i_sum_commissionable,i_site_id,i_bbin_live_id,i_bbin_live_name,i_bbin_game_kind,
											i_bbin_game_kind_name,i_bbin_game_type,i_bbin_game_name,i_wagers_date,i_wagers_date);

		END IF;

		SET i_ds_report_id = 0;
		-- 结束业务
   FETCH cur INTO i_user_name,i_site_id,i_sum_bet_amount,i_sum_commissionable,i_sum_pay_off,i_wagers_date,i_sum_count;
	
END LOOP;
  -- 关闭游标
  CLOSE cur;


	-- 结束更新已统计标识
	UPDATE  ds_bbin_jilv SET flag = 50 WHERE bbin_game_kind = i_bbin_game_kind AND flag = 0 AND win_loss_type IS NOT NULL AND win_loss_type<> -1;

	IF t_error = 1 THEN
		ROLLBACK;
	ELSE
		COMMIT;
	END IF;
	SET msg_code = t_error;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for bbin_jilv_cancel
-- ----------------------------
DROP PROCEDURE IF EXISTS `bbin_jilv_cancel`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `bbin_jilv_cancel`(OUT `msg_code` tinyint)
BEGIN
	#统计机率游戏，bbin_game_kind = 5 
	DECLARE t_error INTEGER DEFAULT 0;
	DECLARE i_bbin_live_id INT DEFAULT 11;#bbin平台标识
	DECLARE i_bbin_live_name VARCHAR(20) DEFAULT 'BBIN';
  DECLARE i_bbin_game_kind INT DEFAULT 5;#游戏大类机率
  DECLARE i_bbin_game_kind_name VARCHAR(20) DEFAULT 'BBIN机率';
	DECLARE i_bbin_game_type INT DEFAULT 5000;#游戏小类
  DECLARE i_bbin_game_name VARCHAR(20) DEFAULT 'BBIN机率';
	

	DECLARE i_user_name VARCHAR(20);#用户名
  DECLARE i_site_id INT;#网站id
	DECLARE i_sum_bet_amount DECIMAL(18,2);#用户下单总额
  DECLARE i_sum_commissionable DECIMAL(18,2);#用户总有效投注额
  DECLARE i_sum_pay_off DECIMAL(18,2);#用户总输赢额
  DECLARE i_wagers_date VARCHAR(20);#投注日期
  DECLARE i_sum_count INT;#用户总投注次数

  DECLARE i_ds_report_id BIGINT DEFAULT 0; # 报表id

  #DECLARE i_flag BIGINT DEFAULT NOW();


 -- 遍历数据结束标志
   declare done int;  
	
	#DECLARE 

	#定义游标，以不同用户分组，不同网站，不同天，并且注单必须是已结算的
	DECLARE cur CURSOR FOR 
							SELECT live.user_name,live.site_id,SUM(live.bet_amount),SUM(live.commissionable),SUM(live.pay_off),DATE_FORMAT(live.wagers_date,'%Y-%m-%d'),COUNT(*)
							FROM ds_bbin_jilv live 
									WHERE bbin_game_kind = i_bbin_game_kind AND flag = 0 AND win_loss_type = -1
									GROUP BY live.user_name,live.site_id,DATE_FORMAT(live.wagers_date,'%Y-%m-%d');
  -- 将结束标志绑定到游标
		declare continue handler FOR SQLSTATE '02000' SET done = 1;  
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;
   START TRANSACTION;  
	#设置统计状态为正在统计中
	UPDATE  ds_bbin_jilv SET flag = 0 WHERE bbin_game_kind = i_bbin_game_kind AND flag = 50 AND win_loss_type = -1;

	-- 打开游标
  OPEN cur;

-- 提取游标里的数据
	FETCH cur INTO i_user_name,i_site_id,i_sum_bet_amount,i_sum_commissionable,i_sum_pay_off,i_wagers_date,i_sum_count;
  -- 开始循环
  read_loop: LOOP
  
  -- 声明结束的时候
    IF done = 1 THEN
      LEAVE read_loop;
    END IF;
		
    -- 开始业务
		
		IF exists(SELECT d.id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_wagers_date AND d.game_type = i_bbin_game_type) THEN
					 SELECT d.id INTO i_ds_report_id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_wagers_date AND d.game_type = i_bbin_game_type;

    -- 存在原来的记录，更新
      UPDATE ds_report d SET bet_count = bet_count - i_sum_count,betamount = betamount - i_sum_bet_amount,winlose = winlose - i_sum_pay_off,
						validamount = validamount - i_sum_commissionable WHERE d.id = i_ds_report_id;

		END IF;

		SET i_ds_report_id = 0;
		-- 结束业务
   FETCH cur INTO i_user_name,i_site_id,i_sum_bet_amount,i_sum_commissionable,i_sum_pay_off,i_wagers_date,i_sum_count;
	
END LOOP;
  -- 关闭游标
  CLOSE cur;


	-- 结束更新已统计标识 
	UPDATE  ds_bbin_jilv SET flag = null WHERE bbin_game_kind = i_bbin_game_kind AND flag = 0 AND win_loss_type = -1;
	IF t_error = 1 THEN
		ROLLBACK;
	ELSE
		COMMIT;
	END IF;
	SET msg_code = t_error;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for bbin_live
-- ----------------------------
DROP PROCEDURE IF EXISTS `bbin_live`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `bbin_live`(OUT `msg_code` tinyint)
BEGIN
	#统计bbin视讯，bbin_game_kind = 3 
	 DECLARE t_error INTEGER DEFAULT 0;
	DECLARE i_bbin_live_id INT DEFAULT 11;#bbin平台标识
	DECLARE i_bbin_live_name VARCHAR(20) DEFAULT 'BBIN';
  DECLARE i_bbin_game_kind INT DEFAULT 3;#游戏大类 视讯
  DECLARE i_bbin_game_kind_name VARCHAR(20) DEFAULT 'BBIN视讯';
	DECLARE i_bbin_game_type INT;#游戏小类
  DECLARE i_bbin_game_name VARCHAR(20);
	DECLARE i_bbin_out_game_code VARCHAR(20);#bbin游戏编码
	

	DECLARE i_user_name VARCHAR(20);#用户名
  DECLARE i_site_id INT;#网站id
	DECLARE i_sum_bet_amount DECIMAL(18,2);#用户下单总额
  DECLARE i_sum_commissionable DECIMAL(18,2);#用户总有效投注额
  DECLARE i_sum_pay_off DECIMAL(18,2);#用户总输赢额
  DECLARE i_wagers_date VARCHAR(20);#投注日期
  DECLARE i_sum_count INT;#用户总投注次数

  DECLARE i_ds_report_id BIGINT DEFAULT 0; # 报表id

  #DECLARE i_flag BIGINT DEFAULT NOW();


 -- 遍历数据结束标志
   declare done int;  
	
	#DECLARE 

	#定义游标，以不同用户分组，不同网站，不同天，并且注单必须是已结算的(体育要细分小类)
	DECLARE cur CURSOR FOR 
							SELECT live.user_name,live.site_id,SUM(live.bet_amount),SUM(live.commissionable),SUM(live.pay_off),DATE_FORMAT(live.wagers_date,'%Y-%m-%d'),COUNT(*),live.game_type
							FROM ds_bbin_live live 
									WHERE flag = 0 AND win_loss_type IS NOT NULL AND win_loss_type<> -1
									GROUP BY live.user_name,live.site_id,DATE_FORMAT(live.wagers_date,'%Y-%m-%d'),live.game_type;
  -- 将结束标志绑定到游标
		declare continue handler FOR SQLSTATE '02000' SET done = 1;  
			DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;
   START TRANSACTION;  
	#设置统计状态为正在统计中
	UPDATE  ds_bbin_live SET flag = 0 WHERE flag IS NULL AND win_loss_type IS NOT NULL AND win_loss_type<> -1;

	-- 打开游标
  OPEN cur;

-- 提取游标里的数据
	FETCH cur INTO i_user_name,i_site_id,i_sum_bet_amount,i_sum_commissionable,i_sum_pay_off,i_wagers_date,i_sum_count,i_bbin_out_game_code;
  -- 开始循环
  read_loop: LOOP
  
  -- 声明结束的时候
    IF done = 1 THEN
      LEAVE read_loop;
    END IF;
		
    -- 开始业务
		
		-- 游戏类型细分，先把外部i_bbin_out_game_code，与内部game_type切换
		SELECT id, game_name INTO i_bbin_game_type,i_bbin_game_name FROM ds_game_type WHERE out_game_code = i_bbin_out_game_code AND fk_live_id = i_bbin_live_id;
		
		
		IF exists(SELECT d.id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_wagers_date AND d.game_type = i_bbin_game_type) THEN
					 SELECT d.id INTO i_ds_report_id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_wagers_date AND d.game_type = i_bbin_game_type;

    -- 存在原来的记录，更新
      UPDATE ds_report d SET bet_count = bet_count + i_sum_count,betamount = betamount + i_sum_bet_amount,winlose = winlose + i_sum_pay_off,
						validamount = validamount + i_sum_commissionable WHERE d.id = i_ds_report_id;
		ELSE
			-- 不存在原来的记录，插入
			INSERT INTO ds_report(username,bet_count,betamount,winlose,validamount,site_id,live_id,live_name,game_kind,game_kind_name,game_type,game_name,bet_time,jiesuan_time)
							VALUES(i_user_name,i_sum_count,i_sum_bet_amount,i_sum_pay_off,i_sum_commissionable,i_site_id,i_bbin_live_id,i_bbin_live_name,i_bbin_game_kind,
											i_bbin_game_kind_name,i_bbin_game_type,i_bbin_game_name,i_wagers_date,i_wagers_date);

		END IF;

		SET i_ds_report_id = 0;
		-- 结束业务
   FETCH cur INTO i_user_name,i_site_id,i_sum_bet_amount,i_sum_commissionable,i_sum_pay_off,i_wagers_date,i_sum_count,i_bbin_out_game_code;
	
END LOOP;
  -- 关闭游标
  CLOSE cur;


	-- 结束更新已统计标识
	UPDATE  ds_bbin_live SET flag = 50 WHERE flag = 0 AND win_loss_type IS NOT NULL AND win_loss_type<> -1;
	IF t_error = 1 THEN
		ROLLBACK;
	ELSE
		COMMIT;
	END IF;
	SET msg_code = t_error;


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for bbin_live_cancel
-- ----------------------------
DROP PROCEDURE IF EXISTS `bbin_live_cancel`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `bbin_live_cancel`(OUT `msg_code` tinyint)
BEGIN
	#统计bbin视讯，bbin_game_kind = 3 
	DECLARE t_error INTEGER DEFAULT 0;
	DECLARE i_bbin_live_id INT DEFAULT 11;#bbin平台标识
	DECLARE i_bbin_live_name VARCHAR(20) DEFAULT 'BBIN';
  DECLARE i_bbin_game_kind INT DEFAULT 3;#游戏大类 视讯
  DECLARE i_bbin_game_kind_name VARCHAR(20) DEFAULT 'BBIN视讯';
	DECLARE i_bbin_game_type INT;#游戏小类
  DECLARE i_bbin_game_name VARCHAR(20);
	DECLARE i_bbin_out_game_code VARCHAR(20);#bbin游戏编码
	

	DECLARE i_user_name VARCHAR(20);#用户名
  DECLARE i_site_id INT;#网站id
	DECLARE i_sum_bet_amount DECIMAL(18,2);#用户下单总额
  DECLARE i_sum_commissionable DECIMAL(18,2);#用户总有效投注额
  DECLARE i_sum_pay_off DECIMAL(18,2);#用户总输赢额
  DECLARE i_wagers_date VARCHAR(20);#投注日期
  DECLARE i_sum_count INT;#用户总投注次数

  DECLARE i_ds_report_id BIGINT DEFAULT 0; # 报表id

  #DECLARE i_flag BIGINT DEFAULT NOW();


 -- 遍历数据结束标志
   declare done int;  
	
	#DECLARE 

	#定义游标，以不同用户分组，不同网站，不同天，并且注单必须是已结算的(体育要细分小类)
	DECLARE cur CURSOR FOR 
							SELECT live.user_name,live.site_id,SUM(live.bet_amount),SUM(live.commissionable),SUM(live.pay_off),DATE_FORMAT(live.wagers_date,'%Y-%m-%d'),COUNT(*),live.game_type
							FROM ds_bbin_live live 
									WHERE flag = 0 AND win_loss_type = -1
									GROUP BY live.user_name,live.site_id,DATE_FORMAT(live.wagers_date,'%Y-%m-%d'),live.game_type;
  -- 将结束标志绑定到游标
		declare continue handler FOR SQLSTATE '02000' SET done = 1;
		DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;
   START TRANSACTION;    
	
	#设置统计状态为正在统计中
	UPDATE  ds_bbin_live SET flag = 0 WHERE flag =50 AND win_loss_type = -1;

	-- 打开游标
  OPEN cur;

-- 提取游标里的数据
	FETCH cur INTO i_user_name,i_site_id,i_sum_bet_amount,i_sum_commissionable,i_sum_pay_off,i_wagers_date,i_sum_count,i_bbin_out_game_code;
  -- 开始循环
  read_loop: LOOP
  
  -- 声明结束的时候
    IF done = 1 THEN
      LEAVE read_loop;
    END IF;
		
    -- 开始业务
		
		-- 游戏类型细分，先把外部i_bbin_out_game_code，与内部game_type切换
		SELECT id, game_name INTO i_bbin_game_type,i_bbin_game_name FROM ds_game_type WHERE out_game_code = i_bbin_out_game_code AND fk_live_id = i_bbin_live_id;
		
		
		IF exists(SELECT d.id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_wagers_date AND d.game_type = i_bbin_game_type) THEN
					 SELECT d.id INTO i_ds_report_id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_wagers_date AND d.game_type = i_bbin_game_type;

    -- 存在原来的记录，更新
      UPDATE ds_report d SET bet_count = bet_count - i_sum_count,betamount = betamount - i_sum_bet_amount,winlose = winlose - i_sum_pay_off,
						validamount = validamount - i_sum_commissionable WHERE d.id = i_ds_report_id;
		

		END IF;

		SET i_ds_report_id = 0;
		-- 结束业务
   FETCH cur INTO i_user_name,i_site_id,i_sum_bet_amount,i_sum_commissionable,i_sum_pay_off,i_wagers_date,i_sum_count,i_bbin_out_game_code;
	
END LOOP;
  -- 关闭游标
  CLOSE cur;


	-- 结束更新已统计标识
	UPDATE  ds_bbin_live SET flag = null WHERE flag = 0 AND win_loss_type = -1;
	IF t_error = 1 THEN
		ROLLBACK;
	ELSE
		COMMIT;
	END IF;
	SET msg_code = t_error;


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for bbin_sport
-- ----------------------------
DROP PROCEDURE IF EXISTS `bbin_sport`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `bbin_sport`(OUT `msg_code` tinyint)
BEGIN
	#统计bbin体育，bbin_game_kind = 1 
	DECLARE t_error INTEGER DEFAULT 0;
	DECLARE i_bbin_live_id INT DEFAULT 11;#bbin平台标识
	DECLARE i_bbin_live_name VARCHAR(20) DEFAULT 'BBIN';
  DECLARE i_bbin_game_kind INT DEFAULT 1;#游戏大类BBIN体育
  DECLARE i_bbin_game_kind_name VARCHAR(20) DEFAULT 'BBIN体育';
	DECLARE i_bbin_game_type INT;#游戏小类
  DECLARE i_bbin_game_name VARCHAR(20);
	DECLARE i_bbin_out_game_code VARCHAR(20);#bbin游戏编码
	

	DECLARE i_user_name VARCHAR(20);#用户名
  DECLARE i_site_id INT;#网站id
	DECLARE i_sum_bet_amount DECIMAL(18,2);#用户下单总额
  DECLARE i_sum_commissionable DECIMAL(18,2);#用户总有效投注额
  DECLARE i_sum_pay_off DECIMAL(18,2);#用户总输赢额
  DECLARE i_wagers_date VARCHAR(20);#投注日期
  DECLARE i_sum_count INT;#用户总投注次数

  DECLARE i_ds_report_id BIGINT DEFAULT 0; # 报表id

  #DECLARE i_flag BIGINT DEFAULT NOW();


 -- 遍历数据结束标志
   declare done int;  
	
	#DECLARE 

	#定义游标，以不同用户分组，不同网站，不同天，并且注单必须是已结算的(体育要细分小类)
	DECLARE cur CURSOR FOR 
							SELECT live.user_name,live.site_id,SUM(live.bet_amount),SUM(live.commissionable),SUM(live.pay_off),DATE_FORMAT(live.wagers_date,'%Y-%m-%d'),COUNT(*),live.game_type
							FROM ds_bbin_sport live 
									WHERE bbin_game_kind = i_bbin_game_kind AND flag = 0 AND win_loss_type IS NOT NULL AND win_loss_type<> -1
									GROUP BY live.user_name,live.site_id,DATE_FORMAT(live.wagers_date,'%Y-%m-%d'),live.game_type;
  -- 将结束标志绑定到游标
		declare continue handler FOR SQLSTATE '02000' SET done = 1;  
		DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;
   START TRANSACTION; 
	#设置统计状态为正在统计中
	UPDATE  ds_bbin_sport SET flag = 0 WHERE bbin_game_kind = i_bbin_game_kind AND flag IS NULL AND win_loss_type IS NOT NULL AND win_loss_type<> -1;

	-- 打开游标
  OPEN cur;

-- 提取游标里的数据
	FETCH cur INTO i_user_name,i_site_id,i_sum_bet_amount,i_sum_commissionable,i_sum_pay_off,i_wagers_date,i_sum_count,i_bbin_out_game_code;
  -- 开始循环
  read_loop: LOOP
  
  -- 声明结束的时候
    IF done = 1 THEN
      LEAVE read_loop;
    END IF;
		
    -- 开始业务
		
		-- 游戏类型细分，先把外部i_bbin_out_game_code，与内部game_type切换
		SELECT id, game_name INTO i_bbin_game_type,i_bbin_game_name FROM ds_game_type WHERE out_game_code = i_bbin_out_game_code AND fk_live_id = i_bbin_live_id;
		
		
		IF exists(SELECT d.id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_wagers_date AND d.game_type = i_bbin_game_type) THEN
					 SELECT d.id INTO i_ds_report_id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_wagers_date AND d.game_type = i_bbin_game_type;

    -- 存在原来的记录，更新
      UPDATE ds_report d SET bet_count = bet_count + i_sum_count,betamount = betamount + i_sum_bet_amount,winlose = winlose + i_sum_pay_off,
						validamount = validamount + i_sum_commissionable WHERE d.id = i_ds_report_id;
		ELSE
			-- 不存在原来的记录，插入
			INSERT INTO ds_report(username,bet_count,betamount,winlose,validamount,site_id,live_id,live_name,game_kind,game_kind_name,game_type,game_name,bet_time)
							VALUES(i_user_name,i_sum_count,i_sum_bet_amount,i_sum_pay_off,i_sum_commissionable,i_site_id,i_bbin_live_id,i_bbin_live_name,i_bbin_game_kind,
											i_bbin_game_kind_name,i_bbin_game_type,i_bbin_game_name,i_wagers_date);

		END IF;

		SET i_ds_report_id = 0;
		-- 结束业务
   FETCH cur INTO i_user_name,i_site_id,i_sum_bet_amount,i_sum_commissionable,i_sum_pay_off,i_wagers_date,i_sum_count,i_bbin_out_game_code;
	
END LOOP;
  -- 关闭游标
  CLOSE cur;


	-- 结束更新已统计标识
	UPDATE  ds_bbin_sport SET flag = 50 WHERE bbin_game_kind = i_bbin_game_kind AND flag = 0 AND win_loss_type IS NOT NULL AND win_loss_type<> -1;
IF t_error = 1 THEN
		ROLLBACK;
	ELSE
		COMMIT;
	END IF;
	SET msg_code = t_error;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for bbin_sport_cancel
-- ----------------------------
DROP PROCEDURE IF EXISTS `bbin_sport_cancel`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `bbin_sport_cancel`(OUT `msg_code` tinyint)
BEGIN
	#统计bbin体育，bbin_game_kind = 1 
	 DECLARE t_error INTEGER DEFAULT 0;
	DECLARE i_bbin_live_id INT DEFAULT 11;#bbin平台标识
	DECLARE i_bbin_live_name VARCHAR(20) DEFAULT 'BBIN';
  DECLARE i_bbin_game_kind INT DEFAULT 1;#游戏大类BBIN体育
  DECLARE i_bbin_game_kind_name VARCHAR(20) DEFAULT 'BBIN体育';
	DECLARE i_bbin_game_type INT;#游戏小类
  DECLARE i_bbin_game_name VARCHAR(20);
	DECLARE i_bbin_out_game_code VARCHAR(20);#bbin游戏编码
	

	DECLARE i_user_name VARCHAR(20);#用户名
  DECLARE i_site_id INT;#网站id
	DECLARE i_sum_bet_amount DECIMAL(18,2);#用户下单总额
  DECLARE i_sum_commissionable DECIMAL(18,2);#用户总有效投注额
  DECLARE i_sum_pay_off DECIMAL(18,2);#用户总输赢额
  DECLARE i_wagers_date VARCHAR(20);#投注日期
  DECLARE i_sum_count INT;#用户总投注次数

  DECLARE i_ds_report_id BIGINT DEFAULT 0; # 报表id

  #DECLARE i_flag BIGINT DEFAULT NOW();


 -- 遍历数据结束标志
   declare done int;  
	
	#DECLARE 

	#定义游标，以不同用户分组，不同网站，不同天，并且注单必须是已结算的(体育要细分小类)
	DECLARE cur CURSOR FOR 
							SELECT live.user_name,live.site_id,SUM(live.bet_amount),SUM(live.commissionable),SUM(live.pay_off),DATE_FORMAT(live.wagers_date,'%Y-%m-%d'),COUNT(*),live.game_type
							FROM ds_bbin_sport live 
									WHERE bbin_game_kind = i_bbin_game_kind AND flag = 0 AND win_loss_type = -1
									GROUP BY live.user_name,live.site_id,DATE_FORMAT(live.wagers_date,'%Y-%m-%d'),live.game_type;
  -- 将结束标志绑定到游标
		declare continue handler FOR SQLSTATE '02000' SET done = 1;  
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;
   START TRANSACTION;  
	#设置统计状态为正在统计中
	UPDATE  ds_bbin_sport SET flag = 0 WHERE bbin_game_kind = i_bbin_game_kind AND flag = 50 AND win_loss_type = -1;

	-- 打开游标
  OPEN cur;

-- 提取游标里的数据
	FETCH cur INTO i_user_name,i_site_id,i_sum_bet_amount,i_sum_commissionable,i_sum_pay_off,i_wagers_date,i_sum_count,i_bbin_out_game_code;
  -- 开始循环
  read_loop: LOOP
  
  -- 声明结束的时候
    IF done = 1 THEN
      LEAVE read_loop;
    END IF;
		
    -- 开始业务
		
		-- 游戏类型细分，先把外部i_bbin_out_game_code，与内部game_type切换
		SELECT id, game_name INTO i_bbin_game_type,i_bbin_game_name FROM ds_game_type WHERE out_game_code = i_bbin_out_game_code AND fk_live_id = i_bbin_live_id;
		
		
		IF exists(SELECT d.id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_wagers_date AND d.game_type = i_bbin_game_type) THEN
					 SELECT d.id INTO i_ds_report_id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_wagers_date AND d.game_type = i_bbin_game_type;

    -- 存在原来的记录，更新
      UPDATE ds_report d SET bet_count = bet_count - i_sum_count,betamount = betamount - i_sum_bet_amount,winlose = winlose - i_sum_pay_off,
						validamount = validamount - i_sum_commissionable WHERE d.id = i_ds_report_id;
			

		END IF;

		SET i_ds_report_id = 0;
		-- 结束业务
   FETCH cur INTO i_user_name,i_site_id,i_sum_bet_amount,i_sum_commissionable,i_sum_pay_off,i_wagers_date,i_sum_count,i_bbin_out_game_code;
	
END LOOP;
  -- 关闭游标
  CLOSE cur;


	-- 结束更新已统计标识
	UPDATE  ds_bbin_sport SET flag = 50 WHERE bbin_game_kind = i_bbin_game_kind AND flag = 0 AND win_loss_type = -1;
IF t_error = 1 THEN
		ROLLBACK;
	ELSE
		COMMIT;
	END IF;
	SET msg_code = t_error;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ds_fenfen_report
-- ----------------------------
DROP PROCEDURE IF EXISTS `ds_fenfen_report`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `ds_fenfen_report`(OUT `msg_code` TINYINT)
BEGIN
	#按天拉取(ds_fenfen_lotto)的数据到报表(ds_report)表中
	DECLARE t_error INTEGER;#出错标识
	DECLARE done INTEGER;#结束标识

	DECLARE r_id BIGINT(20) DEFAULT 0;#id
	DECLARE r_count int(11) DEFAULT NULL;#数量
	DECLARE r_username varchar(50) DEFAULT 'ds';#用户名
	DECLARE r_site_id INT;#网站id
	DECLARE r_bet_amount decimal(18,2) DEFAULT NULL;#金额
	DECLARE r_valid_amount decimal(18,2) DEFAULT NULL;#有效金额
	DECLARE r_pay_off decimal(18,2) DEFAULT NULL;#盈利金额
	DECLARE r_bet_time_day date DEFAULT NULL;#日期 以天为单位

	DECLARE r_game_kind INTEGER DEFAULT 52;#游戏种类代码
	DECLARE r_game_kind_name VARCHAR(20) DEFAULT 'DS分分彩';#游戏种类名称
	DECLARE r_game_type INTEGER DEFAULT 52000;#游戏类型代码
	DECLARE r_game_name VARCHAR(20) DEFAULT 'DS分分彩';#游戏类型名称
	

	#DECLARE fetchSeqOk BOOLEAN;
	DECLARE cur CURSOR FOR 
		SELECT count(1) count,ff.username, ff.site_id, count(ff.bet_amount), count(ff.valid_amount), count(ff.pay_off),DATE_FORMAT(ff.bet_time,'%Y-%m-%d')
		FROM ds_fenfen_lotto ff
		WHERE flag = 0
		GROUP BY ff.username,ff.site_id,DATE_FORMAT(ff.bet_time,'%Y-%m-%d');

	#将一些标识绑定到游标
	#DECLARE CONTINUE HANDLER FOR NOT FOUND SET fetchSeqOk=true;#结束标识
	DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;  
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;#出错标识

	#SET fetchSeqOk=FALSE;
	START TRANSACTION;
	UPDATE ds_fenfen_lotto SET flag = 0 WHERE flag IS NULL;

	#循环游标读取
	OPEN cur;
	#提取游标的数据
	read_loop:LOOP
		FETCH cur INTO r_count, r_username, r_site_id, r_bet_amount, r_valid_amount, r_pay_off, r_bet_time_day;
		IF done=1 THEN
			LEAVE read_loop;
		ELSE
			#遍历游标,#处理业务
			IF EXISTS(SELECT id FROM ds_report WHERE username = r_username AND site_id = r_site_id AND bet_time = r_bet_time_day) THEN
				#存在更新
				SELECT id INTO r_id FROM ds_report WHERE username = r_username AND site_id = r_site_id AND bet_time = r_bet_time_day;
				UPDATE ds_report 
				SET bet_count = bet_count + r_count,  betamount = betamount + r_bet_amount, winlose = winlose + r_pay_off, validamount = validamount + r_valid_amount
				WHERE id = r_id;
		  ELSE
				#不存在插入
				INSERT INTO ds_report(username,bet_count,betamount,winlose,validamount,site_id,game_kind,game_kind_name,game_type,game_name,bet_time) 
				VALUES(r_username,r_count,r_bet_amount,r_pay_off,r_valid_amount,r_site_id,r_game_kind,r_game_kind_name,r_game_type, r_game_name, r_bet_time_day);
			END IF;
		END IF;
	END LOOP;
	CLOSE cur;
	
	UPDATE ds_fenfen_lotto SET flag = 50 WHERE flag = 0;

	IF t_error = 1 THEN
		ROLLBACK;
	ELSE
		COMMIT;
	END IF;
	SET msg_code = t_error;
	#OUT `msg_code` TINYINT
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ds_game
-- ----------------------------
DROP PROCEDURE IF EXISTS `ds_game`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ds_game`(OUT `msg_code` tinyint)
BEGIN
 DECLARE t_error INT DEFAULT 0;
 DECLARE i_ds_game_live_id INT DEFAULT 16;#平台
 DECLARE i_ds_game_live_name VARCHAR(20) DEFAULT 'ds_game';
 DECLARE i_ds_game_game_kind INT DEFAULT 53;   #游戏大类 ds_game
 DECLARE i_ds_game_game_kind_name VARCHAR(200) DEFAULT 'ds_game';
 DECLARE i_ds_game_game_type INT DEFAULT 5300;    #游戏小类
 DECLARE i_ds_game_game_name VARCHAR(20) DEFAULT 'ds_game'; #游戏小类名称
 #DECLARE i_ds_game_out_game_code VARCHAR(20) ;#ds_game游戏编码
 
 DECLARE i_user_name VARCHAR(20);#用户名
 DECLARE i_site_id INT;#网站id
 DECLARE i_sum_bet_amount DECIMAL(18,2);#用户下单总额
 DECLARE i_sum_commissionable DECIMAL(18,2);#用户总有效投注额
 DECLARE i_sum_pay_off DECIMAL(18,2);#用户总输赢额
 DECLARE i_wagers_date VARCHAR(20);#投注日期
 DECLARE i_sum_count INT;#用户总投注次数
 DECLARE i_ds_report_id BIGINT DEFAULT 0; #报表id
  #DECLARE i_flag BIGINT DEFAULT NOW();
 -- 遍历数据结束标志
   DECLARE done INT;  
 
 #DECLARE 
 #定义游标，以不同用户分组，不同网站，不同天，并且注单必须是已结算的(体育要细分小类)
 DECLARE cur CURSOR FOR 
  SELECT ds_game.username,ds_game.siteId,SUM(ds_game.betAmount),SUM(ds_game.commissonAmount),SUM(ds_game.winLose),DATE_FORMAT(ds_game.createTime,'%Y-%m-%d'),COUNT(*)
  FROM video_game_wager  ds_game  WHERE   flag = 0 AND  ds_game.resultTransactionId IS NOT NULL
  GROUP BY ds_game.username,ds_game.siteId,DATE_FORMAT(ds_game.createTime,'%Y-%m-%d');
  -- 将结束标志绑定到游标
  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;  
  DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;
   START TRANSACTION; 
 #设置统计状态为正在统计中
 UPDATE  video_game_wager SET flag = 0 WHERE flag IS NULL AND resultTransactionId IS NOT NULL;
 -- 打开游标
  OPEN cur;
-- 提取游标里的数据
 FETCH cur INTO i_user_name,i_site_id,i_sum_bet_amount,i_sum_commissionable,i_sum_pay_off,i_wagers_date,i_sum_count;
  -- 开始循环
  read_loop: LOOP
  
  -- 声明结束的时候
    IF done = 1 THEN
      LEAVE read_loop;
    END IF;
  
    -- 开始业务
  
  -- 游戏类型细分，先把外部i_bbin_out_game_code，与内部game_type切换
  #SELECT id, game_name INTO i_ds_game_game_name FROM ds_game_type WHERE fk_live_id = i_ds_game_live_id;
  
  
  IF EXISTS(SELECT d.id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_wagers_date ) THEN
      SELECT d.id INTO i_ds_report_id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_wagers_date;
    -- 存在原来的记录，更新
      UPDATE ds_report d SET bet_count = bet_count + i_sum_count,betamount = betamount + i_sum_bet_amount,winlose = winlose + i_sum_pay_off,
      validamount = validamount + i_sum_commissionable WHERE d.id = i_ds_report_id;
  ELSE
   -- 不存在原来的记录，插入
   INSERT INTO ds_report(username,bet_count,betamount,winlose,validamount,site_id,live_id,live_name,game_kind,game_kind_name,game_type,game_name,bet_time,jiesuan_time)
       VALUES(i_user_name,i_sum_count,i_sum_bet_amount,i_sum_pay_off,i_sum_commissionable,i_site_id,i_ds_game_live_id,i_ds_game_live_name,i_ds_game_game_kind,
           i_ds_game_game_kind_name,i_ds_game_game_type,i_ds_game_game_name,i_wagers_date,i_wagers_date);
  END IF;
  SET i_ds_report_id = 0;
  -- 结束业务
   FETCH cur INTO i_user_name,i_site_id,i_sum_bet_amount,i_sum_commissionable,i_sum_pay_off,i_wagers_date,i_sum_count;
 
END LOOP;
  -- 关闭游标
  CLOSE cur;
 -- 结束更新已统计标识
 UPDATE  video_game_wager SET flag = 50 WHERE  flag = 0 AND resultTransactionId IS NOT NULL;
 
 IF t_error = 1 THEN
  ROLLBACK;
 ELSE
  COMMIT;
 END IF;
 SET msg_code = t_error;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ds_live
-- ----------------------------
DROP PROCEDURE IF EXISTS `ds_live`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ds_live`(OUT `msg_code` tinyint)
BEGIN
	#统计ds视讯
	DECLARE t_error INTEGER DEFAULT 0;
	
	DECLARE i_ds_live_id INT DEFAULT 12;#ds平台标识
	DECLARE i_ds_live_name VARCHAR(20) DEFAULT 'DS';
  DECLARE i_ds_game_kind INT DEFAULT 41;#游戏大类 ds视讯
  DECLARE i_ds_game_kind_name VARCHAR(20) DEFAULT 'DS视讯';
	DECLARE i_ds_game_type INT;#游戏小类
  DECLARE i_ds_game_name VARCHAR(20);
	DECLARE i_ds_out_game_code VARCHAR(20);#ag游戏编码
	

	DECLARE i_user_name VARCHAR(20);#用户名
  DECLARE i_site_id INT;#网站id
	DECLARE i_sum_stake_amount DECIMAL(18,2);#用户下单总额
  DECLARE i_sum_valid_stake DECIMAL(18,2);#用户总有效投注额
  DECLARE i_sum_win_loss DECIMAL(18,2);#用户总输赢额
  DECLARE i_end_time VARCHAR(20);#投注日期
  DECLARE i_sum_count INT;#用户总投注次数

  DECLARE i_ds_report_id BIGINT DEFAULT 0; # 报表id

 -- 遍历数据结束标志
   declare done int;  
	
	#DECLARE 

	#定义游标，以不同用户分组，不同网站，不同天，并且注单必须是已结算的(体育要细分小类)
	DECLARE cur CURSOR FOR 
							SELECT live.username,live.site_id,SUM(live.stake_amount),SUM(live.valid_stake),SUM(live.win_loss),DATE_FORMAT(live.end_time,'%Y-%m-%d'),COUNT(*),live.game_type
							FROM ds_live live 
									WHERE flag = 0 AND win_loss_type IS NOT NULL AND win_loss_type <> -1
									GROUP BY live.username,live.site_id,DATE_FORMAT(live.end_time,'%Y-%m-%d'),live.game_type;
  -- 将结束标志绑定到游标
		declare continue handler FOR SQLSTATE '02000' SET done = 1; 
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;
   START TRANSACTION;    
	
	#设置统计状态为正在统计中（只统计已结算的）
	UPDATE  ds_live SET flag = 0 WHERE flag IS NULL AND win_loss_type IS NOT NULL AND win_loss_type <> -1;

	-- 打开游标
  OPEN cur;

-- 提取游标里的数据
	FETCH cur INTO i_user_name,i_site_id,i_sum_stake_amount,i_sum_valid_stake,i_sum_win_loss,i_end_time,i_sum_count,i_ds_out_game_code;
  -- 开始循环
  read_loop: LOOP
  
  -- 声明结束的时候
    IF done = 1 THEN
      LEAVE read_loop;
    END IF;
		
    -- 开始业务
		
		-- 游戏类型细分，先把外部_out_game_code，与内部game_type切换
		SELECT id, game_name INTO i_ds_game_type,i_ds_game_name FROM ds_game_type WHERE out_game_code = i_ds_out_game_code AND fk_live_id = i_ds_live_id;
		
		
		IF exists(SELECT d.id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_end_time AND d.game_type = i_ds_game_type) THEN
					 SELECT d.id INTO i_ds_report_id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_end_time AND d.game_type = i_ds_game_type;

    -- 存在原来的记录，更新
      UPDATE ds_report d SET bet_count = bet_count + i_sum_count,betamount = betamount + i_sum_stake_amount,winlose = winlose + i_sum_win_loss,
						validamount = validamount + i_sum_valid_stake WHERE d.id = i_ds_report_id;
		ELSE
			-- 不存在原来的记录，插入
			INSERT INTO ds_report(username,bet_count,betamount,winlose,validamount,site_id,live_id,live_name,game_kind,game_kind_name,game_type,game_name,bet_time,jiesuan_time)
							VALUES(i_user_name,i_sum_count,i_sum_stake_amount,i_sum_win_loss,i_sum_valid_stake,i_site_id,i_ds_live_id,i_ds_live_name,i_ds_game_kind,
											i_ds_game_kind_name,i_ds_game_type,i_ds_game_name,i_end_time,i_end_time);

		END IF;

		SET i_ds_report_id = 0;
		-- 结束业务
   FETCH cur INTO i_user_name,i_site_id,i_sum_stake_amount,i_sum_valid_stake,i_sum_win_loss,i_end_time,i_sum_count,i_ds_out_game_code;
	
END LOOP;
  -- 关闭游标
  CLOSE cur;


	-- 结束更新已统计标识
	UPDATE  ds_live SET flag = 50 WHERE flag = 0 AND win_loss_type IS NOT NULL AND win_loss_type <> -1;

	IF t_error = 1 THEN
		ROLLBACK;
	ELSE
		COMMIT;
	END IF;
	SET msg_code = t_error;


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ds_live_cancel
-- ----------------------------
DROP PROCEDURE IF EXISTS `ds_live_cancel`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ds_live_cancel`(OUT `msg_code` tinyint)
BEGIN
	#统计ds视讯取消的订单
	DECLARE t_error INTEGER DEFAULT 0;

	DECLARE i_ds_live_id INT DEFAULT 12;#ds平台标识
	DECLARE i_ds_live_name VARCHAR(20) DEFAULT 'DS';
  DECLARE i_ds_game_kind INT DEFAULT 41;#游戏大类 ds视讯
  DECLARE i_ds_game_kind_name VARCHAR(20) DEFAULT 'DS视讯';
	DECLARE i_ds_game_type INT;#游戏小类
  DECLARE i_ds_game_name VARCHAR(20);
	DECLARE i_ds_out_game_code VARCHAR(20);#ag游戏编码
	

	DECLARE i_user_name VARCHAR(20);#用户名
  DECLARE i_site_id INT;#网站id
	DECLARE i_sum_stake_amount DECIMAL(18,2);#用户下单总额
  DECLARE i_sum_valid_stake DECIMAL(18,2);#用户总有效投注额
  DECLARE i_sum_win_loss DECIMAL(18,2);#用户总输赢额
  DECLARE i_end_time VARCHAR(20);#投注日期
  DECLARE i_sum_count INT;#用户总投注次数

  DECLARE i_ds_report_id BIGINT DEFAULT 0; # 报表id

 -- 遍历数据结束标志
   declare done int;  
	
	#DECLARE 

	#定义游标，以不同用户分组，不同网站，不同天，并且注单必须是已结算的(体育要细分小类)
	DECLARE cur CURSOR FOR 
							SELECT live.username,live.site_id,SUM(live.stake_amount),SUM(live.valid_stake),SUM(live.win_loss),DATE_FORMAT(live.end_time,'%Y-%m-%d'),COUNT(*),live.game_type
							FROM ds_live live 
									WHERE flag = 0 AND win_loss_type IS NOT NULL AND win_loss_type = -1
									GROUP BY live.username,live.site_id,DATE_FORMAT(live.end_time,'%Y-%m-%d'),live.game_type;
  -- 将结束标志绑定到游标
		declare continue handler FOR SQLSTATE '02000' SET done = 1; 
		DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;
   START TRANSACTION;   
	
	#设置统计状态为正在统计中（只统计已结算的）
	UPDATE  ds_live SET flag = 0 WHERE flag =50 AND win_loss_type = -1;

	-- 打开游标
  OPEN cur;

-- 提取游标里的数据
	FETCH cur INTO i_user_name,i_site_id,i_sum_stake_amount,i_sum_valid_stake,i_sum_win_loss,i_end_time,i_sum_count,i_ds_out_game_code;
  -- 开始循环
  read_loop: LOOP
  
  -- 声明结束的时候
    IF done = 1 THEN
      LEAVE read_loop;
    END IF;
		
    -- 开始业务
		
		-- 游戏类型细分，先把外部_out_game_code，与内部game_type切换
		SELECT id, game_name INTO i_ds_game_type,i_ds_game_name FROM ds_game_type WHERE out_game_code = i_ds_out_game_code AND fk_live_id = i_ds_live_id;
		
		
		IF exists(SELECT d.id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_end_time AND d.game_type = i_ds_game_type) THEN
					 SELECT d.id INTO i_ds_report_id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_end_time AND d.game_type = i_ds_game_type;

    -- 存在原来的记录，更新
      UPDATE ds_report d SET bet_count = bet_count - i_sum_count,betamount = betamount - i_sum_stake_amount,winlose = winlose - i_sum_win_loss,
						validamount = validamount - i_sum_valid_stake WHERE d.id = i_ds_report_id;

		END IF;

		SET i_ds_report_id = 0;
		-- 结束业务
   FETCH cur INTO i_user_name,i_site_id,i_sum_stake_amount,i_sum_valid_stake,i_sum_win_loss,i_end_time,i_sum_count,i_ds_out_game_code;
	
END LOOP;
  -- 关闭游标
  CLOSE cur;


	-- 结束更新已统计标识
	UPDATE  ds_live SET flag = null WHERE flag = 0 AND win_loss_type = -1;

	IF t_error = 1 THEN
		ROLLBACK;
	ELSE
		COMMIT;
	END IF;
	SET msg_code = t_error;


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ds_lottery_report
-- ----------------------------
DROP PROCEDURE IF EXISTS `ds_lottery_report`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `ds_lottery_report`(OUT `msg_code` TINYINT)
BEGIN

#拉取传统彩
	DECLARE t_error INTEGER DEFAULT NULL;#出错标识
	DECLARE done INTEGER;#结束循环标识

	DECLARE r_id BIGINT(20) DEFAULT 0;#id
	DECLARE r_count BIGINT(20) DEFAULT 0 ;#统计数量
	DECLARE r_username VARCHAR(50) DEFAULT NULL;#用户名
	DECLARE r_site_id INTEGER DEFAULT NULL;#网站id
	DECLARE r_stake_amount DECIMAL(18,2) DEFAULT NULL;#下注金额
	DECLARE r_valid_stake DECIMAL(18,2) DEFAULT NULL;#下注有效金额
	DECLARE r_win_loss DECIMAL(18,2) DEFAULT NULL;#盈利金额
	DECLARE r_bet_time VARCHAR(20) DEFAULT NULL;#下注日期
	
	DECLARE r_game_kind INTEGER DEFAULT 54;#游戏种类代码
	DECLARE r_game_kind_name VARCHAR(20) DEFAULT 'DS六合彩';#游戏种类名称
	DECLARE r_game_type INTEGER DEFAULT 54000;#游戏类型代码
	DECLARE r_game_name VARCHAR(20) DEFAULT 'DS六合彩';#游戏类型名称

	DECLARE cur CURSOR FOR 
		SELECT count(1) count, d.username, d.site_id, count(d.stake_amount), count(d.valid_stake), count(d.win_loss), DATE_FORMAT(d.bet_time,'%Y-%m-%d')
		FROM ds_lottery_bet d
		WHERE flag = 0
		GROUP BY d.username, d.site_id, DATE_FORMAT(d.bet_time,'%Y-%m-%d');

	DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error = 1;

	START TRANSACTION;
	UPDATE ds_lottery_bet SET flag = 0 WHERE flag IS NULL;
	OPEN cur;
		read_loop:LOOP
			FETCH cur INTO r_count, r_username, r_site_id, r_stake_amount, r_valid_stake, r_win_loss, r_bet_time;
			IF done=1 THEN
				LEAVE read_loop;
			ELSE
				IF EXISTS(SELECT id FROM ds_report WHERE username = r_username AND site_id = r_site_id AND bet_time = r_bet_time) THEN
					SELECT id INTO r_id FROM ds_report WHERE username = r_username AND site_id = r_site_id AND bet_time = r_bet_time;
					UPDATE ds_report 
					SET bet_count = bet_count + r_count, betamount = betamount + r_stake_amount, validamount = validamount + r_valid_stake, winlose = winlose + r_win_loss
					WHERE id = r_id;
				ELSE
					INSERT INTO ds_report(username,bet_count,betamount,winlose,validamount,site_id,game_kind,game_kind_name,game_type,game_name,bet_time) 
					VALUES(r_username, r_count, r_stake_amount, r_win_loss, r_valid_stake, r_site_id, r_game_kind, r_game_kind_name, r_game_type, r_game_name, r_bet_time);
				END IF;
			END IF;
		END LOOP;
	CLOSE cur;
	UPDATE ds_lottery_bet SET flag = 50 WHERE flag = 0;
	IF t_error = 1 THEN
		ROLLBACK;
	ELSE 
		COMMIT;
	END IF;
	set msg_code = t_error;
	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ds_lotto_report
-- ----------------------------
DROP PROCEDURE IF EXISTS `ds_lotto_report`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `ds_lotto_report`(OUT `msg_code` TINYINT)
BEGIN

	#拉取香港彩到报表表中
	DECLARE t_error INTEGER;#错误标识
	DECLARE done INTEGER;#结束标识
	
	DECLARE r_id BIGINT(20) DEFAULT 0;#id
	DECLARE r_count BIGINT(20) DEFAULT 0 ;#统计数量
	DECLARE r_username VARCHAR(50) DEFAULT NULL;#用户名
	DECLARE r_site_id INTEGER DEFAULT NULL;#网站id
	DECLARE r_stake_amount DECIMAL(18,2) DEFAULT NULL;#下注金额
	DECLARE r_valid_stake DECIMAL(18,2) DEFAULT NULL;#下注有效金额
	DECLARE r_win_loss DECIMAL(18,2) DEFAULT NULL;#盈利金额
	DECLARE r_bet_time VARCHAR(20) DEFAULT NULL;#下注日期
	
	DECLARE r_game_kind INTEGER DEFAULT 55;#游戏种类代码
	DECLARE r_game_kind_name VARCHAR(20) DEFAULT 'DS传统彩';#游戏种类名称
	DECLARE r_game_type INTEGER DEFAULT 55000;#游戏类型代码
	DECLARE r_game_name VARCHAR(20) DEFAULT 'DS传统彩';#游戏类型名称

	DECLARE cur CURSOR FOR 
		SELECT count(1) count, d.username, d.site_id, COUNT(d.stake_amount), COUNT(d.valid_stake), COUNT(d.win_loss), DATE_FORMAT(d.bet_time,'%Y-%m-%d')
		FROM ds_lotto_bet d 
		WHERE flag = 0
		GROUP BY d.username, d.site_id, DATE_FORMAT(d.bet_time,'%Y-%m-%d');
	
	DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error = 1;

	START TRANSACTION;
	UPDATE ds_lotto_bet SET flag = 0 WHERE flag IS NULL;
	OPEN cur;
		read_loop:LOOP
			FETCH cur INTO r_count, r_username, r_site_id, r_stake_amount, r_valid_stake, r_win_loss, r_bet_time;
			IF done=1 THEN
				LEAVE read_loop;
			ELSE
				IF EXISTS(SELECT id FROM ds_report WHERE username = r_username AND site_id = r_site_id AND bet_time = r_bet_time) THEN
					UPDATE ds_report 
					SET bet_count = bet_count + r_count, betamount = betamount + r_stake_amount, validamount = validamount + r_valid_stake, winlose = winlose + r_win_loss
					where id = r_id;
				ELSE
					INSERT INTO ds_report(username,bet_count,betamount,winlose,validamount,site_id,game_kind,game_kind_name,game_type,game_name,bet_time) 
					VALUES(r_username, r_count, r_stake_amount, r_win_loss, r_valid_stake, r_site_id, r_game_kind, r_game_kind_name, r_game_type, r_game_name, r_bet_time);
				END IF;
			END IF;
		END LOOP;
	CLOSE cur;
	UPDATE ds_lotto_bet SET flag = 50 WHERE flag = 0;
	IF t_error=1 THEN
		ROLLBACK;
	ELSE
		COMMIT;
	END IF;
	set msg_code = t_error;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for h8_sport
-- ----------------------------
DROP PROCEDURE IF EXISTS `h8_sport`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `h8_sport`(OUT `msg_code` TINYINT)
BEGIN
	
	DECLARE t_error INTEGER DEFAULT 0;
	DECLARE i_h8_live_id INT DEFAULT 13; #h8平台标识
	DECLARE i_h8_live_name VARCHAR(20) DEFAULT 'h8';
  DECLARE i_h8_game_kind INT DEFAULT 42;   #游戏大类 h8体育
  DECLARE i_h8_game_kind_name VARCHAR(20) DEFAULT 'h8体育';
	DECLARE i_h8_game_type INT DEFAULT 4200;    #游戏小类
  DECLARE i_h8_game_name VARCHAR(20) DEFAULT 'h8体育'; #游戏小类名称
	#DECLARE i_h8_out_game_code VARCHAR(20) ;#h8游戏编码
	
	DECLARE i_user_name VARCHAR(20);#用户名
  DECLARE i_site_id INT;#网站id
	DECLARE i_sum_bet_amount DECIMAL(18,2);#用户下单总额
  DECLARE i_sum_commissionable DECIMAL(18,2);#用户总有效投注额
  DECLARE i_sum_pay_off DECIMAL(18,2);#用户总输赢额
  DECLARE i_wagers_date VARCHAR(20);#投注日期
  DECLARE i_sum_count INT;#用户总投注次数
  DECLARE i_ds_report_id BIGINT DEFAULT 0; # 报表id
  #DECLARE i_flag BIGINT DEFAULT NOW();
 -- 遍历数据结束标志
   DECLARE done INT;  
	
	#DECLARE 
	#定义游标，以不同用户分组，不同网站，不同天，并且注单必须是已结算的(体育要细分小类)
	DECLARE cur CURSOR FOR 
		SELECT h8.username,h8.site_id,SUM(h8.bet_amount),SUM(h8.commission_amount),SUM(h8.win_amount),DATE_FORMAT(h8.transaction_date,'%Y-%m-%d'),COUNT(*)
		FROM ds_m8_sport  h8  WHERE   flag = 0 AND   STATUS IN ('A','N')
		GROUP BY h8.username,h8.site_id,DATE_FORMAT(h8.transaction_date,'%Y-%m-%d');
  -- 将结束标志绑定到游标
		DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;  
		DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;
   START TRANSACTION; 
	#设置统计状态为正在统计中
	UPDATE  ds_m8_sport SET flag = 0 WHERE flag IS NULL AND STATUS IN ('A','N');
	-- 打开游标
  OPEN cur;
-- 提取游标里的数据
	FETCH cur INTO i_user_name,i_site_id,i_sum_bet_amount,i_sum_commissionable,i_sum_pay_off,i_wagers_date,i_sum_count;
  -- 开始循环
  read_loop: LOOP
  
  -- 声明结束的时候
    IF done = 1 THEN
      LEAVE read_loop;
    END IF;
		
    -- 开始业务
		
		-- 游戏类型细分，先把外部i_bbin_out_game_code，与内部game_type切换
		#SELECT id, game_name INTO i_h8_game_name FROM ds_game_type WHERE fk_live_id = i_h8_live_id;
		
		
		IF EXISTS(SELECT d.id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_wagers_date ) THEN
					 SELECT d.id INTO i_ds_report_id FROM ds_report d WHERE d.username=i_user_name AND d.site_id = i_site_id AND d.bet_time = i_wagers_date;
    -- 存在原来的记录，更新
      UPDATE ds_report d SET bet_count = bet_count + i_sum_count,betamount = betamount + i_sum_bet_amount,winlose = winlose + i_sum_pay_off,
						validamount = validamount + i_sum_commissionable WHERE d.id = i_ds_report_id;
		ELSE
			-- 不存在原来的记录，插入
			INSERT INTO ds_report(username,bet_count,betamount,winlose,validamount,site_id,live_id,live_name,game_kind,game_kind_name,game_type,game_name,bet_time)
							VALUES(i_user_name,i_sum_count,i_sum_bet_amount,i_sum_pay_off,i_sum_commissionable,i_site_id,i_h8_live_id,i_h8_live_name,i_h8_game_kind,
											i_h8_game_kind_name,i_h8_game_type,i_h8_game_name,i_wagers_date);
		END IF;
		SET i_ds_report_id = 0;
		-- 结束业务
   FETCH cur INTO i_user_name,i_site_id,i_sum_bet_amount,i_sum_commissionable,i_sum_pay_off,i_wagers_date,i_sum_count;
	
END LOOP;
  -- 关闭游标
  CLOSE cur;
	-- 结束更新已统计标识
	UPDATE  ds_m8_sport SET flag = 50 WHERE  flag = 0 AND STATUS IN ('A','N');
	
	IF t_error = 1 THEN
		ROLLBACK;
	ELSE
		COMMIT;
	END IF;
	SET msg_code = t_error;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for jilv_test
-- ----------------------------
DROP PROCEDURE IF EXISTS `jilv_test`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jilv_test`()
BEGIN
		DECLARE t_error INTEGER DEFAULT 0;
 DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;

START TRANSACTION;
 INSERT INTO ds_bbin_jilv_history SELECT * FROM ds_bbin_jilv WHERE datediff(now(),create_time)>=7;

 DELETE FROM ds_bbin_jilv WHERE datediff(now(),create_time)>=7;

	IF t_error = 1 THEN
		ROLLBACK;
	ELSE
		COMMIT;
	END IF;
	SELECT t_error;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_commission_total
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_commission_total`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_commission_total`(IN i_condition VARCHAR(500))
BEGIN
    DECLARE v_siteId INT;
    DECLARE v_betTimeBegin VARCHAR(20);
    DECLARE v_betTimeEnd  VARCHAR(20);
    DECLARE v_username VARCHAR(100);
    DECLARE v_agentLevel VARCHAR(100);
    DECLARE v_liveId INT;
    DECLARE v_gameKind INT;
    DECLARE v_gameType INT;
    DECLARE v_betStatus VARCHAR(10) DEFAULT '1';
    DECLARE v_defValidamount DECIMAL(18,2) DEFAULT '0.1';
    DECLARE v_condition VARCHAR(1000);
    DECLARE v_index INT;
    DECLARE v_substr VARCHAR(100);
    DECLARE v_subIndex INT;
    DECLARE v_fieldName VARCHAR(100);
    DECLARE v_fieldValue VARCHAR(100);
    DECLARE v_sql VARCHAR(4000);
    DECLARE v_where VARCHAR(500);
    
    SET v_index = 0;
    SET v_subIndex = 0;
    SET v_subStr = '';
    SET v_fieldName = '';
    SET v_fieldValue = '';
    SET v_condition = i_condition;
    SET v_where = '';
    condition_loop:LOOP
      IF(v_condition = '') THEN
	LEAVE condition_loop ;
      END IF;
      IF(v_condition <> '') THEN
	SET v_index = LOCATE(';',v_condition);
	IF(v_index >0) THEN
	  SET v_substr = SUBSTRING(v_condition,1,v_index-1);
	  SET v_condition = SUBSTRING(v_condition,v_index+1,LENGTH(v_condition)-v_index);
	ELSE
	  SET v_substr = v_condition;
	  SET v_condition = '';	
	END IF;
	SET v_subIndex = LOCATE('|',v_substr); 
	IF(v_subIndex > 0) THEN
	  SET v_fieldName = SUBSTRING(v_substr,1,v_subIndex-1);
	  SET v_fieldValue = SUBSTRING(v_substr,v_subIndex+1,LENGTH(v_substr)-v_subIndex);
	END IF;
				
	IF(v_fieldName = 'siteId') THEN
	  SET v_siteId = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.site_id = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'betTimeBegin') THEN
	  SET v_betTimeBegin = v_fieldValue;
	  SET v_where = CONCAT(v_where,' and a.bet_time >= CONCAT(''',v_betTimeBegin,''','' 00:00:00'') ');
	ELSEIF(v_fieldName = 'betTimeEnd') THEN
	  SET v_betTimeEnd = v_fieldValue;
	  SET v_where = CONCAT(v_where,' and a.bet_time < CONCAT(''',v_betTimeEnd,''','' 23:59:59'') ');
	ELSEIF(v_fieldName = 'agentLevel') THEN
	  SET v_agentLevel = LOWER(v_fieldValue);
	ELSEIF(v_fieldName = 'username') THEN
	  SET v_username = REPLACE(v_fieldValue ,',',''',''');
	ELSEIF(v_fieldName = 'liveId') THEN
	  SET v_liveId = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.live_id = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'gameKind') THEN
	  SET v_gameKind = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.game_kind = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'gameType') THEN
	  SET v_gameType = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.game_type = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'betStatus') THEN
	  SET v_betStatus = v_fieldValue;
	ELSEIF(v_fieldName = 'defValidamount') THEN
	  SET v_defValidamount = CAST(v_fieldValue AS DECIMAL(18,2)) ;
	END IF;
	IF(v_condition = '') THEN
	  LEAVE condition_loop ;
	END IF;	
      END IF;
    END LOOP;
    
    IF(v_agentLevel = 'superior')THEN 
      SET v_where = CONCAT(v_where,' and b.superior in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'member')THEN
      SET v_where = CONCAT(v_where,' and b.username in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'corprator')THEN  
      SET v_where = CONCAT(v_where,' and b.corprator in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'world')THEN
      SET v_where = CONCAT(v_where,' and b.world in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'agent')THEN 
      SET v_where = CONCAT(v_where,' and b.agents in (''',v_username,''') ');
     ELSEIF(v_agentLevel = 'member')THEN 
      SET v_where = CONCAT(v_where,' and a.username in (''',v_username,''') ');
    END IF;
    
    SET v_sql = CONCAT(' SELECT c.agents,sum(case when c.validamount >= ', v_defValidamount,' then 1 else 0 end ) as user_count, sum(c.winlose) as winlose,sum(c.validamount) as validamount,
    sum(c.bb_sport_winlose) as bb_sport_winlose,sum(c.bb_sport_validamount) as bb_sport_validamount,sum(c.lotto_winlose) as lotto_winlose,
    sum(c.lotto_validamount) as lotto_validamount,sum(c.live_winlose) as live_winlose,sum(c.live_validamount) as live_validamount,
    sum(c.game_winlose) as game_winlose,sum(c.game_validamount) as game_validamount,sum(c.h8_sport_winlose) as h8_sport_winlose,
    sum(c.h8_sport_validamount) as h8_sport_validamount,sum(c.bb3d_winlose) as bb3d_winlose,sum(c.bb3d_validamount) as bb3d_validamount 
			  FROM (SELECT b.agents,b.username,sum(a.winlose) as winlose,sum(a.validamount) as validamount,
			  sum(case when a.game_kind IN (1) then a.winlose else 0 end) AS bb_sport_winlose,sum(case when a.game_kind IN (1) then a.validamount else 0 end) AS bb_sport_validamount,
			  sum(case when a.game_kind IN (12,51) then a.winlose else 0 end) AS lotto_winlose,sum(case when a.game_kind IN (12,51) then a.validamount else 0 end) AS lotto_validamount,
			  sum(case when a.game_kind IN (3,21,41) then a.winlose else 0 end) AS live_winlose,sum(case when a.game_kind IN (3,21,41) then a.validamount else 0 end) AS live_validamount,
			  sum(case when a.game_kind IN (5,22) then a.winlose else 0 end) AS game_winlose,sum(case when a.game_kind IN (5,22) then a.validamount else 0 end) AS game_validamount,
			  sum(case when a.game_kind IN (42) then a.winlose else 0 end) AS h8_sport_winlose,sum(case when a.game_kind IN (42) then a.validamount else 0 end) AS h8_sport_validamount,
			  sum(case when a.game_kind IN (15) then a.winlose else 0 end) AS bb3d_winlose,sum(case when a.game_kind IN (15) then a.validamount else 0 end) AS bb3d_validamount 
			  FROM ds_report a ,ds_member b 
			  WHERE a.site_id =b.site_id AND a.username=b.username ',v_where,'GROUP BY b.agents,b.username) c GROUP BY c.agents');
    
    
    SET @SQL=v_sql; 
    PREPARE s1 FROM @SQL; 
    EXECUTE s1; 
    DEALLOCATE PREPARE s1;
    END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_commission_total_new
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_commission_total_new`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_commission_total_new`(IN i_condition VARCHAR(500))
BEGIN
    DECLARE v_siteId INT;
    DECLARE v_betTimeBegin VARCHAR(20);
    DECLARE v_betTimeEnd  VARCHAR(20);
    DECLARE v_username VARCHAR(100);
    DECLARE v_agentLevel VARCHAR(100);
    DECLARE v_liveId INT;
    DECLARE v_gameKind INT;
    DECLARE v_gameType INT;
    DECLARE v_betStatus VARCHAR(10) DEFAULT '1';
    DECLARE v_defValidamount DECIMAL(18,2) DEFAULT '0.1';
    DECLARE v_condition VARCHAR(1000);
    DECLARE v_index INT;
    DECLARE v_substr VARCHAR(100);
    DECLARE v_subIndex INT;
    DECLARE v_fieldName VARCHAR(100);
    DECLARE v_fieldValue VARCHAR(100);
    DECLARE v_sql VARCHAR(4000);
    DECLARE v_where VARCHAR(500);
    
    SET v_index = 0;
    SET v_subIndex = 0;
    SET v_subStr = '';
    SET v_fieldName = '';
    SET v_fieldValue = '';
    SET v_condition = i_condition;
    SET v_where = '';
    condition_loop:LOOP
      IF(v_condition = '') THEN
	LEAVE condition_loop ;
      END IF;
      IF(v_condition <> '') THEN
	SET v_index = LOCATE(';',v_condition);
	IF(v_index >0) THEN
	  SET v_substr = SUBSTRING(v_condition,1,v_index-1);
	  SET v_condition = SUBSTRING(v_condition,v_index+1,LENGTH(v_condition)-v_index);
	ELSE
	  SET v_substr = v_condition;
	  SET v_condition = '';	
	END IF;
	SET v_subIndex = LOCATE('|',v_substr); 
	IF(v_subIndex > 0) THEN
	  SET v_fieldName = SUBSTRING(v_substr,1,v_subIndex-1);
	  SET v_fieldValue = SUBSTRING(v_substr,v_subIndex+1,LENGTH(v_substr)-v_subIndex);
	END IF;
				
	IF(v_fieldName = 'siteId') THEN
	  SET v_siteId = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.site_id = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'betTimeBegin') THEN
	  SET v_betTimeBegin = v_fieldValue;
	  SET v_where = CONCAT(v_where,' and a.bet_time >= CONCAT(''',v_betTimeBegin,''','' 00:00:00'') ');
	ELSEIF(v_fieldName = 'betTimeEnd') THEN
	  SET v_betTimeEnd = v_fieldValue;
	  SET v_where = CONCAT(v_where,' and a.bet_time < CONCAT(''',v_betTimeEnd,''','' 23:59:59'') ');
	ELSEIF(v_fieldName = 'agentLevel') THEN
	  SET v_agentLevel = LOWER(v_fieldValue);
	ELSEIF(v_fieldName = 'username') THEN
	  SET v_username = REPLACE(v_fieldValue ,',',''',''');
	ELSEIF(v_fieldName = 'liveId') THEN
	  SET v_liveId = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.live_id = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'gameKind') THEN
	  SET v_gameKind = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.game_kind = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'gameType') THEN
	  SET v_gameType = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.game_type = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'betStatus') THEN
	  SET v_betStatus = v_fieldValue;
	ELSEIF(v_fieldName = 'defValidamount') THEN
	  SET v_defValidamount = CAST(v_fieldValue AS DECIMAL(18,2)) ;
	END IF;
	IF(v_condition = '') THEN
	  LEAVE condition_loop ;
	END IF;	
      END IF;
    END LOOP;
    
    IF(v_agentLevel = 'superior')THEN 
      SET v_where = CONCAT(v_where,' and b.superior in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'member')THEN
      SET v_where = CONCAT(v_where,' and b.username in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'corprator')THEN  
      SET v_where = CONCAT(v_where,' and b.corprator in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'world')THEN
      SET v_where = CONCAT(v_where,' and b.world in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'agent')THEN 
      SET v_where = CONCAT(v_where,' and b.agents in (''',v_username,''') ');
     ELSEIF(v_agentLevel = 'member')THEN 
      SET v_where = CONCAT(v_where,' and a.username in (''',v_username,''') ');
    END IF;
    
    SET v_sql = CONCAT(' SELECT c.agents,sum(case when c.validamount >= ', v_defValidamount,' then 1 else 0 end ) as user_count, sum(c.winlose) as winlose,sum(c.validamount) as validamount,
    sum(c.sportWinlose) as sportWinlose,sum(c.sportValidamount) as sportValidamount,sum(c.lottoWinlose) as lottoWinlose,
    sum(c.lottoValidamount) as lottoValidamount,sum(c.liveWinlose) as liveWinlose,sum(c.liveValidamount) as liveValidamount,
    sum(c.gameWinlose) as gameWinlose,sum(c.gameValidamount) as gameValidamount,
		sum(c.hongKongWinlose) as hongKongWinlose,sum(c.hongKongValidamount) as hongKongValidamount
			  FROM (SELECT b.agents,b.username,sum(a.winlose) as winlose,sum(a.validamount) as validamount,
			  sum(case when a.game_kind IN (1,42) then a.winlose else 0 end) AS sportWinlose,sum(case when a.game_kind IN (1,42) then a.validamount else 0 end) AS sportValidamount,
			  sum(case when a.game_kind IN (51,52,55) then a.winlose else 0 end) AS lottoWinlose,sum(case when a.game_kind IN (51,52,55) then a.validamount else 0 end) AS lottoValidamount,
			  sum(case when a.game_kind IN (3,21,41) then a.winlose else 0 end) AS liveWinlose,sum(case when a.game_kind IN (3,21,41) then a.validamount else 0 end) AS liveValidamount,
			  sum(case when a.game_kind IN (5,15,22,53) then a.winlose else 0 end) AS gameWinlose,sum(case when a.game_kind IN (5,15,22,53) then a.validamount else 0 end) AS gameValidamount,
        sum(case when a.game_kind IN (54) then a.winlose else 0 end) AS hongKongWinlose,sum(case when a.game_kind IN (54) then a.validamount else 0 end) AS hongKongValidamount
			  FROM ds_report a ,ds_member b 
			  WHERE a.site_id =b.site_id AND a.username=b.username ',v_where,'GROUP BY b.agents,b.username) c GROUP BY c.agents');
    
    
    SET @SQL=v_sql; 
    PREPARE s1 FROM @SQL; 
    EXECUTE s1; 
    DEALLOCATE PREPARE s1;
    END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_commission_total_new_page
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_commission_total_new_page`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_commission_total_new_page`(IN i_condition VARCHAR(500),IN start_index int(11),IN record_count int(11),OUT totalCount int)
BEGIN
    DECLARE v_siteId INT;
    DECLARE v_betTimeBegin VARCHAR(20);
    DECLARE v_betTimeEnd  VARCHAR(20);
    DECLARE v_username VARCHAR(100);
    DECLARE v_agentLevel VARCHAR(100);
    DECLARE v_liveId INT;
    DECLARE v_gameKind INT;
    DECLARE v_gameType INT;
    DECLARE v_betStatus VARCHAR(10) DEFAULT '1';
    DECLARE v_defValidamount DECIMAL(18,2) DEFAULT '0.1';
    DECLARE v_condition VARCHAR(1000);
    DECLARE v_index INT;
    DECLARE v_substr VARCHAR(100);
    DECLARE v_subIndex INT;
    DECLARE v_fieldName VARCHAR(100);
    DECLARE v_fieldValue VARCHAR(100);
    DECLARE v_sql VARCHAR(4000);
    DECLARE v_where VARCHAR(500);
    
    SET v_index = 0;
    SET v_subIndex = 0;
    SET v_subStr = '';
    SET v_fieldName = '';
    SET v_fieldValue = '';
    SET v_condition = i_condition;
    SET v_where = '';
    condition_loop:LOOP
      IF(v_condition = '') THEN
	LEAVE condition_loop ;
      END IF;
      IF(v_condition <> '') THEN
	SET v_index = LOCATE(';',v_condition);
	IF(v_index >0) THEN
	  SET v_substr = SUBSTRING(v_condition,1,v_index-1);
	  SET v_condition = SUBSTRING(v_condition,v_index+1,LENGTH(v_condition)-v_index);
	ELSE
	  SET v_substr = v_condition;
	  SET v_condition = '';	
	END IF;
	SET v_subIndex = LOCATE('|',v_substr); 
	IF(v_subIndex > 0) THEN
	  SET v_fieldName = SUBSTRING(v_substr,1,v_subIndex-1);
	  SET v_fieldValue = SUBSTRING(v_substr,v_subIndex+1,LENGTH(v_substr)-v_subIndex);
	END IF;
				
	IF(v_fieldName = 'siteId') THEN
	  SET v_siteId = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.site_id = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'betTimeBegin') THEN
	  SET v_betTimeBegin = v_fieldValue;
	  SET v_where = CONCAT(v_where,' and a.bet_time >= CONCAT(''',v_betTimeBegin,''','' 00:00:00'') ');
	ELSEIF(v_fieldName = 'betTimeEnd') THEN
	  SET v_betTimeEnd = v_fieldValue;
	  SET v_where = CONCAT(v_where,' and a.bet_time < CONCAT(''',v_betTimeEnd,''','' 23:59:59'') ');
	ELSEIF(v_fieldName = 'agentLevel') THEN
	  SET v_agentLevel = LOWER(v_fieldValue);
	ELSEIF(v_fieldName = 'username') THEN
	  SET v_username = REPLACE(v_fieldValue ,',',''',''');
	ELSEIF(v_fieldName = 'liveId') THEN
	  SET v_liveId = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.live_id = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'gameKind') THEN
	  SET v_gameKind = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.game_kind = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'gameType') THEN
	  SET v_gameType = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.game_type = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'betStatus') THEN
	  SET v_betStatus = v_fieldValue;
	ELSEIF(v_fieldName = 'defValidamount') THEN
	  SET v_defValidamount = CAST(v_fieldValue AS DECIMAL(18,2)) ;
	END IF;
	IF(v_condition = '') THEN
	  LEAVE condition_loop ;
	END IF;	
      END IF;
    END LOOP;
    
    IF(v_agentLevel = 'superior')THEN 
      SET v_where = CONCAT(v_where,' and b.superior in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'member')THEN
      SET v_where = CONCAT(v_where,' and b.username in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'corprator')THEN  
      SET v_where = CONCAT(v_where,' and b.corprator in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'world')THEN
      SET v_where = CONCAT(v_where,' and b.world in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'agent')THEN 
      SET v_where = CONCAT(v_where,' and b.agents in (''',v_username,''') ');
     ELSEIF(v_agentLevel = 'member')THEN 
      SET v_where = CONCAT(v_where,' and a.username in (''',v_username,''') ');
    END IF;
    
    SET v_sql = CONCAT(' SELECT c.agents,sum(case when c.validamount >= ', v_defValidamount,' then 1 else 0 end ) as user_count, sum(c.winlose) as winlose,sum(c.validamount) as validamount,
    sum(c.sportWinlose) as sportWinlose,sum(c.sportValidamount) as sportValidamount,sum(c.lottoWinlose) as lottoWinlose,
    sum(c.lottoValidamount) as lottoValidamount,sum(c.liveWinlose) as liveWinlose,sum(c.liveValidamount) as liveValidamount,
    sum(c.gameWinlose) as gameWinlose,sum(c.gameValidamount) as gameValidamount,
		sum(c.hongKongWinlose) as hongKongWinlose,sum(c.hongKongValidamount) as hongKongValidamount
			  FROM (SELECT b.agents,b.username,sum(a.winlose) as winlose,sum(a.validamount) as validamount,
			  sum(case when a.game_kind IN (1,42) then a.winlose else 0 end) AS sportWinlose,sum(case when a.game_kind IN (1,42) then a.validamount else 0 end) AS sportValidamount,
			  sum(case when a.game_kind IN (51,52,55) then a.winlose else 0 end) AS lottoWinlose,sum(case when a.game_kind IN (51,52,55) then a.validamount else 0 end) AS lottoValidamount,
			  sum(case when a.game_kind IN (3,21,41,23) then a.winlose else 0 end) AS liveWinlose,sum(case when a.game_kind IN (3,21,41,23) then a.validamount else 0 end) AS liveValidamount,
			  sum(case when a.game_kind IN (5,15,22,53) then a.winlose else 0 end) AS gameWinlose,sum(case when a.game_kind IN (5,15,22,53) then a.validamount else 0 end) AS gameValidamount,
        sum(case when a.game_kind IN (54) then a.winlose else 0 end) AS hongKongWinlose,sum(case when a.game_kind IN (54) then a.validamount else 0 end) AS hongKongValidamount
			  FROM ds_report a ,ds_member b 
			  WHERE a.site_id =b.site_id AND a.username=b.username ',v_where,'GROUP BY b.agents,b.username) c GROUP BY c.agents');
    
		SET @s2 = CONCAT('select count(*) into @totalCount from (',v_sql,') a');
		PREPARE tc FROM @s2; 
    EXECUTE tc; 
    DEALLOCATE PREPARE tc;
		SET totalCount  = @totalCount;
    
    SET @SQL=CONCAT(v_sql, ' limit ',((start_index-1)*record_count),',',record_count);
    PREPARE s1 FROM @SQL; 
    EXECUTE s1; 
    DEALLOCATE PREPARE s1;
    END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_privilege_total
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_privilege_total`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_privilege_total`(IN i_condition VARCHAR(500))
BEGIN
    DECLARE v_siteId INT;
    DECLARE v_betTimeBegin VARCHAR(20);
    DECLARE v_betTimeEnd  VARCHAR(20);
    DECLARE v_username VARCHAR(100);
    DECLARE v_agentLevel VARCHAR(100);
    DECLARE v_liveId INT;
    DECLARE v_gameKind INT;
    DECLARE v_gameType INT;
    DECLARE v_betStatus VARCHAR(10) DEFAULT '1';
    DECLARE v_condition VARCHAR(1000);
    DECLARE v_index INT;
    DECLARE v_substr VARCHAR(100);
    DECLARE v_subIndex INT;
    DECLARE v_fieldName VARCHAR(100);
    DECLARE v_fieldValue VARCHAR(100);
    DECLARE v_sql VARCHAR(2000);
    DECLARE v_where VARCHAR(500);
    
    SET v_index = 0;
    SET v_subIndex = 0;
    SET v_subStr = '';
    SET v_fieldName = '';
    SET v_fieldValue = '';
    SET v_condition = i_condition;
    SET v_where = '';
    condition_loop:LOOP
      IF(v_condition = '') THEN
	LEAVE condition_loop ;
      END IF;
      IF(v_condition <> '') THEN
	SET v_index = LOCATE(';',v_condition);
	IF(v_index >0) THEN
	  SET v_substr = SUBSTRING(v_condition,1,v_index-1);
	  SET v_condition = SUBSTRING(v_condition,v_index+1,LENGTH(v_condition)-v_index);
	ELSE
	  SET v_substr = v_condition;
	  SET v_condition = '';	
	END IF;
	SET v_subIndex = LOCATE('|',v_substr); 
	IF(v_subIndex > 0) THEN
	  SET v_fieldName = SUBSTRING(v_substr,1,v_subIndex-1);
	  SET v_fieldValue = SUBSTRING(v_substr,v_subIndex+1,LENGTH(v_substr)-v_subIndex);
	END IF;
				
	IF(v_fieldName = 'siteId') THEN
	  SET v_siteId = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.site_id = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'betTimeBegin') THEN
	  SET v_betTimeBegin = v_fieldValue;
	  SET v_where = CONCAT(v_where,' and a.bet_time >= CONCAT(''',v_betTimeBegin,''','' 00:00:00'') ');
	ELSEIF(v_fieldName = 'betTimeEnd') THEN
	  SET v_betTimeEnd = v_fieldValue;
	  SET v_where = CONCAT(v_where,' and a.bet_time < CONCAT(''',v_betTimeEnd,''','' 23:59:59'') ');
	ELSEIF(v_fieldName = 'agentLevel') THEN
	  SET v_agentLevel = LOWER(v_fieldValue);
	ELSEIF(v_fieldName = 'username') THEN
	  SET v_username = REPLACE(v_fieldValue ,',',''',''');
	ELSEIF(v_fieldName = 'liveId') THEN
	  SET v_liveId = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.live_id = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'gameKind') THEN
	  SET v_gameKind = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.game_kind = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'gameType') THEN
	  SET v_gameType = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.game_type = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'betStatus') THEN
	  SET v_betStatus = v_fieldValue;
	END IF;
	IF(v_condition = '') THEN
	  LEAVE condition_loop ;
	END IF;	
      END IF;
    END LOOP;
    
    IF(v_agentLevel = 'superior')THEN 
      SET v_where = CONCAT(v_where,' and b.superior in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'member')THEN
      SET v_where = CONCAT(v_where,' and b.username in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'corprator')THEN  
      SET v_where = CONCAT(v_where,' and b.corprator in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'world')THEN
      SET v_where = CONCAT(v_where,' and b.world in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'agent')THEN 
      SET v_where = CONCAT(v_where,' and b.agents in (''',v_username,''') ');
     ELSEIF(v_agentLevel = 'member')THEN 
      SET v_where = CONCAT(v_where,' and a.username in (''',v_username,''') ');
    END IF;
    
    IF(v_agentLevel = 'superior')THEN 
        SET v_sql =  CONCAT('  select b.Superior as username,
	           SUM(case when a.game_kind=1 then a.validamount else 0 end) AS bb_sport_validamount,
	           SUM(case when a.game_kind=3 then a.validamount else 0 end) AS bb_live_validamount,
	    	   SUM(case when a.game_kind=5 then a.validamount else 0 end) AS bb_jilv_validamount,
	           SUM(case when a.game_kind=15 then a.validamount else 0 end) AS bb_3d_validamount,
	           SUM(case when a.game_kind=21 then a.validamount else 0 end) AS ag_live_validamount,
	           SUM(case when a.game_kind=22 then a.validamount else 0 end) AS ag_jilv_validamount,
	           SUM(case when a.game_kind=41 then a.validamount else 0 end) AS ds_live_validamount,
	           SUM(case when a.game_kind=51 and a.game_type in (51002,51003,51004,51005,51006,51007,51008) then a.validamount else 0 end) AS lotto_validamount,
	           SUM(case when a.game_kind=51 and a.game_type=51001 then a.validamount else 0 end) AS hongkong_validamount
	      from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.Superior ');
    ELSEIF(v_agentLevel = 'corprator')THEN  
       SET v_sql =  CONCAT('  select b.corprator as username,
	           SUM(case when a.game_kind=1 then a.validamount else 0 end) AS bb_sport_validamount,
	           SUM(case when a.game_kind=3 then a.validamount else 0 end) AS bb_live_validamount,
	    	   SUM(case when a.game_kind=5 then a.validamount else 0 end) AS bb_jilv_validamount,
	           SUM(case when a.game_kind=15 then a.validamount else 0 end) AS bb_3d_validamount,
	           SUM(case when a.game_kind=21 then a.validamount else 0 end) AS ag_live_validamount,
	           SUM(case when a.game_kind=22 then a.validamount else 0 end) AS ag_jilv_validamount,
	           SUM(case when a.game_kind=41 then a.validamount else 0 end) AS ds_live_validamount,
	           SUM(case when a.game_kind=51 and a.game_type in (51002,51003,51004,51005,51006,51007,51008) then a.validamount else 0 end) AS lotto_validamount,
	           SUM(case when a.game_kind=51 and a.game_type=51001 then a.validamount else 0 end) AS hongkong_validamount
	      from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.corprator ');
    ELSEIF(v_agentLevel = 'world')THEN
       SET v_sql =  CONCAT('  select b.world as username,
	           SUM(case when a.game_kind=1 then a.validamount else 0 end) AS bb_sport_validamount,
	           SUM(case when a.game_kind=3 then a.validamount else 0 end) AS bb_live_validamount,
	    	   SUM(case when a.game_kind=5 then a.validamount else 0 end) AS bb_jilv_validamount,
	           SUM(case when a.game_kind=15 then a.validamount else 0 end) AS bb_3d_validamount,
	           SUM(case when a.game_kind=21 then a.validamount else 0 end) AS ag_live_validamount,
	           SUM(case when a.game_kind=22 then a.validamount else 0 end) AS ag_jilv_validamount,
	           SUM(case when a.game_kind=41 then a.validamount else 0 end) AS ds_live_validamount,
	           SUM(case when a.game_kind=51 and a.game_type in (51002,51003,51004,51005,51006,51007,51008) then a.validamount else 0 end) AS lotto_validamount,
	           SUM(case when a.game_kind=51 and a.game_type=51001 then a.validamount else 0 end) AS hongkong_validamount
	      from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.world ');
    ELSEIF(v_agentLevel = 'agent')THEN 
       SET v_sql =  CONCAT('  select b.agents as username,
	           SUM(case when a.game_kind=1 then a.validamount else 0 end) AS bb_sport_validamount,
	           SUM(case when a.game_kind=3 then a.validamount else 0 end) AS bb_live_validamount,
	    	   SUM(case when a.game_kind=5 then a.validamount else 0 end) AS bb_jilv_validamount,
	           SUM(case when a.game_kind=15 then a.validamount else 0 end) AS bb_3d_validamount,
	           SUM(case when a.game_kind=21 then a.validamount else 0 end) AS ag_live_validamount,
	           SUM(case when a.game_kind=22 then a.validamount else 0 end) AS ag_jilv_validamount,
	           SUM(case when a.game_kind=41 then a.validamount else 0 end) AS ds_live_validamount,
	           SUM(case when a.game_kind=51 and a.game_type in (51002,51003,51004,51005,51006,51007,51008) then a.validamount else 0 end) AS lotto_validamount,
	           SUM(case when a.game_kind=51 and a.game_type=51001 then a.validamount else 0 end) AS hongkong_validamount
	      from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.agents ');
    ELSEIF(v_agentLevel = 'member')THEN 
      SET v_sql =  CONCAT('  select b.username as username,
	           SUM(case when a.game_kind=1 then a.validamount else 0 end) AS bb_sport_validamount,
	           SUM(case when a.game_kind=3 then a.validamount else 0 end) AS bb_live_validamount,
	    	   SUM(case when a.game_kind=5 then a.validamount else 0 end) AS bb_jilv_validamount,
	           SUM(case when a.game_kind=15 then a.validamount else 0 end) AS bb_3d_validamount,
	           SUM(case when a.game_kind=21 then a.validamount else 0 end) AS ag_live_validamount,
	           SUM(case when a.game_kind=22 then a.validamount else 0 end) AS ag_jilv_validamount,
	           SUM(case when a.game_kind=41 then a.validamount else 0 end) AS ds_live_validamount,
	           SUM(case when a.game_kind=51 and a.game_type in (51002,51003,51004,51005,51006,51007,51008) then a.validamount else 0 end) AS lotto_validamount,
	           SUM(case when a.game_kind=51 and a.game_type=51001 then a.validamount else 0 end) AS hongkong_validamount
	      from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.username ');
    END IF;
    
    SET @SQL=v_sql; 
    PREPARE s1 FROM @SQL; 
    EXECUTE s1; 
    DEALLOCATE PREPARE s1;
    END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_total_report
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_total_report`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_total_report`(IN i_condition VARCHAR(500))
BEGIN
    DECLARE v_siteId INT;
    DECLARE v_betTimeBegin VARCHAR(20);
    DECLARE v_betTimeEnd  VARCHAR(20);
    DECLARE v_username VARCHAR(100);
    DECLARE v_agentLevel VARCHAR(100);
    DECLARE v_liveId INT;
    DECLARE v_gameKind INT;
    DECLARE v_gameType INT;
    DECLARE v_betStatus VARCHAR(10) DEFAULT '1';
    DECLARE v_condition VARCHAR(1000);
    DECLARE v_index INT;
    DECLARE v_substr VARCHAR(100);
    DECLARE v_subIndex INT;
    DECLARE v_fieldName VARCHAR(100);
    DECLARE v_fieldValue VARCHAR(100);
    DECLARE v_sql VARCHAR(2000);
    DECLARE v_where VARCHAR(500);
    
    SET v_index = 0;
    SET v_subIndex = 0;
    SET v_subStr = '';
    SET v_fieldName = '';
    SET v_fieldValue = '';
    SET v_condition = i_condition;
    SET v_where = '';
    condition_loop:LOOP
      IF(v_condition = '') THEN
	LEAVE condition_loop ;
      END IF;
      IF(v_condition <> '') THEN
	SET v_index = LOCATE(';',v_condition);
	IF(v_index >0) THEN
	  SET v_substr = SUBSTRING(v_condition,1,v_index-1);
	  SET v_condition = SUBSTRING(v_condition,v_index+1,LENGTH(v_condition)-v_index);
	ELSE
	  SET v_substr = v_condition;
	  SET v_condition = '';	
	END IF;
	SET v_subIndex = LOCATE('|',v_substr); 
	IF(v_subIndex > 0) THEN
	  SET v_fieldName = SUBSTRING(v_substr,1,v_subIndex-1);
	  SET v_fieldValue = SUBSTRING(v_substr,v_subIndex+1,LENGTH(v_substr)-v_subIndex);
	END IF;
				
	IF(v_fieldName = 'siteId') THEN
	  SET v_siteId = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.site_id = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'betTimeBegin') THEN
	  SET v_betTimeBegin = v_fieldValue;
	  SET v_where = CONCAT(v_where,' and a.bet_time >= CONCAT(''',v_betTimeBegin,''','' 00:00:00'') ');
	ELSEIF(v_fieldName = 'betTimeEnd') THEN
	  SET v_betTimeEnd = v_fieldValue;
	  SET v_where = CONCAT(v_where,' and a.bet_time < CONCAT(''',v_betTimeEnd,''','' 23:59:59'') ');
	ELSEIF(v_fieldName = 'agentLevel') THEN
	  SET v_agentLevel = LOWER(v_fieldValue);
	ELSEIF(v_fieldName = 'username') THEN
	  SET v_username = REPLACE(v_fieldValue ,',',''',''');
	ELSEIF(v_fieldName = 'liveId') THEN
	  SET v_liveId = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.live_id = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'gameKind') THEN
	  SET v_gameKind = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.game_kind = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'gameType') THEN
	  SET v_gameType = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.game_type = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'betStatus') THEN
	  SET v_betStatus = v_fieldValue;
	END IF;
	IF(v_condition = '') THEN
	  LEAVE condition_loop ;
	END IF;	
      END IF;
    END LOOP;
    
    IF(v_agentLevel = 'superior')THEN 
      SET v_where = CONCAT(v_where,' and b.superior in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'member')THEN
      SET v_where = CONCAT(v_where,' and b.username in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'corprator')THEN  
      SET v_where = CONCAT(v_where,' and b.corprator in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'world')THEN
      SET v_where = CONCAT(v_where,' and b.world in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'agent')THEN 
      SET v_where = CONCAT(v_where,' and b.agents in (''',v_username,''') ');
    END IF;
    
    IF(v_agentLevel = 'superior')THEN 
      IF(v_gameKind != '') THEN
	SET v_sql =  CONCAT('select b.Corprator as username,a.site_id, a.game_kind, max(a.game_kind_name) as game_kind_name,sum(a.bet_count) AS bet_count, SUM(a.betamount) AS betamount, SUM(a.winlose) AS winlose,SUM(a.validamount) AS validamount, 
	          max(b.agents) as agents,max(b.world) as world,max(b.corprator) as corprator,max(b.superior) as superior,
	          SUM(a.comm_agent) AS comm_agent,SUM(a.comm_world)AS comm_world,SUM(a.comm_corprator) AS comm_corprator, SUM(a.comm_superior) comm_superior,SUM(a.comm_branch) comm_branch
		from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.Corprator,a.site_id,a.game_kind ');
      ELSE
        SET v_sql =  CONCAT(' select b.Corprator as username,a.site_id, 0 as game_kind, ''总计'' as game_kind_name,sum(a.bet_count) AS bet_count, SUM(a.betamount) AS betamount, SUM(a.winlose) AS winlose,SUM(a.validamount) AS validamount, 
		          max(b.agents) as agents,max(b.world) as world,max(b.corprator) as corprator,max(b.superior) as superior,
		          SUM(a.comm_agent) AS comm_agent,SUM(a.comm_world)AS comm_world,SUM(a.comm_corprator) AS comm_corprator, SUM(a.comm_superior) comm_superior,SUM(a.comm_branch) comm_branch
		    from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.Corprator,a.site_id
		    UNION ALL
		    select b.Corprator as username,a.site_id, a.game_kind, max(a.game_kind_name) as game_kind_name,sum(a.bet_count) AS bet_count, SUM(a.betamount) AS betamount, SUM(a.winlose) AS winlose,SUM(a.validamount) AS validamount, 
	          max(b.agents) as agents,max(b.world) as world,max(b.corprator) as corprator,max(b.superior) as superior,
	          SUM(a.comm_agent) AS comm_agent,SUM(a.comm_world)AS comm_world,SUM(a.comm_corprator) AS comm_corprator, SUM(a.comm_superior) comm_superior,SUM(a.comm_branch) comm_branch
		from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.Corprator,a.site_id,a.game_kind ');
      END IF; 
    ELSEIF(v_agentLevel = 'corprator')THEN  
      IF(v_gameKind != '') THEN
        SET v_sql = CONCAT( 'select b.World as username,a.site_id, a.game_kind, max(a.game_kind_name) as game_kind_name,sum(a.bet_count) AS bet_count, SUM(a.betamount) AS betamount, SUM(a.winlose) AS winlose,SUM(a.validamount) AS validamount, 
	          max(b.agents) as agents,max(b.world) as world,max(b.corprator) as corprator,max(b.superior) as superior,
	          SUM(a.comm_agent) AS comm_agent,SUM(a.comm_world)AS comm_world,SUM(a.comm_corprator) AS comm_corprator, SUM(a.comm_superior) comm_superior,SUM(a.comm_branch) comm_branch
		from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.World,a.site_id,a.game_kind ');
      ELSE
        SET v_sql =  CONCAT(' select b.World as username,a.site_id, 0 as game_kind, ''总计'' as game_kind_name,sum(a.bet_count) AS bet_count, SUM(a.betamount) AS betamount, SUM(a.winlose) AS winlose,SUM(a.validamount) AS validamount, 
		          max(b.agents) as agents,max(b.world) as world,max(b.corprator) as corprator,max(b.superior) as superior,
		          SUM(a.comm_agent) AS comm_agent,SUM(a.comm_world)AS comm_world,SUM(a.comm_corprator) AS comm_corprator, SUM(a.comm_superior) comm_superior,SUM(a.comm_branch) comm_branch
		    from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.World,a.site_id
		    UNION ALL
		    select b.World as username,a.site_id, a.game_kind, max(a.game_kind_name) as game_kind_name,sum(a.bet_count) AS bet_count, SUM(a.betamount) AS betamount, SUM(a.winlose) AS winlose,SUM(a.validamount) AS validamount, 
	          max(b.agents) as agents,max(b.world) as world,max(b.corprator) as corprator,max(b.superior) as superior,
	          SUM(a.comm_agent) AS comm_agent,SUM(a.comm_world)AS comm_world,SUM(a.comm_corprator) AS comm_corprator, SUM(a.comm_superior) comm_superior,SUM(a.comm_branch) comm_branch
		from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.World,a.site_id,a.game_kind ');
      END IF; 
    ELSEIF(v_agentLevel = 'world')THEN
      IF(v_gameKind != '') THEN
	SET v_sql =  CONCAT('select b.agents as username,a.site_id, a.game_kind, max(a.game_kind_name) as game_kind_name,sum(a.bet_count) AS bet_count, SUM(a.betamount) AS betamount, SUM(a.winlose) AS winlose,SUM(a.validamount) AS validamount, 
	          max(b.agents) as agents,max(b.world) as world,max(b.corprator) as corprator,max(b.superior) as superior,
	          SUM(a.comm_agent) AS comm_agent,SUM(a.comm_world)AS comm_world,SUM(a.comm_corprator) AS comm_corprator, SUM(a.comm_superior) comm_superior,SUM(a.comm_branch) comm_branch
		from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.agents,a.site_id,a.game_kind ');
      ELSE
        SET v_sql =  CONCAT(' select b.agents as username,a.site_id, 0 as game_kind, ''总计'' as game_kind_name,sum(a.bet_count) AS bet_count, SUM(a.betamount) AS betamount, SUM(a.winlose) AS winlose,SUM(a.validamount) AS validamount, 
		          max(b.agents) as agents,max(b.world) as world,max(b.corprator) as corprator,max(b.superior) as superior,
		          SUM(a.comm_agent) AS comm_agent,SUM(a.comm_world)AS comm_world,SUM(a.comm_corprator) AS comm_corprator, SUM(a.comm_superior) comm_superior,SUM(a.comm_branch) comm_branch
		    from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.agents,a.site_id
		    UNION ALL
		    select b.agents as username,a.site_id, a.game_kind, max(a.game_kind_name) as game_kind_name,sum(a.bet_count) AS bet_count, SUM(a.betamount) AS betamount, SUM(a.winlose) AS winlose,SUM(a.validamount) AS validamount, 
	          max(b.agents) as agents,max(b.world) as world,max(b.corprator) as corprator,max(b.superior) as superior,
	          SUM(a.comm_agent) AS comm_agent,SUM(a.comm_world)AS comm_world,SUM(a.comm_corprator) AS comm_corprator, SUM(a.comm_superior) comm_superior,SUM(a.comm_branch) comm_branch
		from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.agents,a.site_id,a.game_kind ');
      END IF;
    ELSEIF(v_agentLevel = 'agent')THEN 
      IF(v_gameKind != '') THEN
        SET v_sql = CONCAT('select b.username as username,a.site_id, a.game_kind, max(a.game_kind_name) as game_kind_name,sum(a.bet_count) AS bet_count, SUM(a.betamount) AS betamount, SUM(a.winlose) AS winlose,SUM(a.validamount) AS validamount, 
	          max(b.agents) as agents,max(b.world) as world,max(b.corprator) as corprator,max(b.superior) as superior,
	          SUM(a.comm_agent) AS comm_agent,SUM(a.comm_world)AS comm_world,SUM(a.comm_corprator) AS comm_corprator, SUM(a.comm_superior) comm_superior,SUM(a.comm_branch) comm_branch
		from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.username,a.site_id,a.game_kind ');
      ELSE
	SET v_sql =  CONCAT(' select b.username as username,a.site_id, 0 as game_kind, ''总计'' as game_kind_name,sum(a.bet_count) AS bet_count, SUM(a.betamount) AS betamount, SUM(a.winlose) AS winlose,SUM(a.validamount) AS validamount, 
		          max(b.agents) as agents,max(b.world) as world,max(b.corprator) as corprator,max(b.superior) as superior,
		          SUM(a.comm_agent) AS comm_agent,SUM(a.comm_world)AS comm_world,SUM(a.comm_corprator) AS comm_corprator, SUM(a.comm_superior) comm_superior,SUM(a.comm_branch) comm_branch
		    from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.username,a.site_id
		    UNION ALL
		    select b.username as username,a.site_id, a.game_kind, max(a.game_kind_name) as game_kind_name,sum(a.bet_count) AS bet_count, SUM(a.betamount) AS betamount, SUM(a.winlose) AS winlose,SUM(a.validamount) AS validamount, 
	          max(b.agents) as agents,max(b.world) as world,max(b.corprator) as corprator,max(b.superior) as superior,
	          SUM(a.comm_agent) AS comm_agent,SUM(a.comm_world)AS comm_world,SUM(a.comm_corprator) AS comm_corprator, SUM(a.comm_superior) comm_superior,SUM(a.comm_branch) comm_branch
		from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.username,a.site_id,a.game_kind ');
      END IF;
    ELSE
      IF(v_gameKind != '') THEN
	SET v_sql = CONCAT('select b.superior as username,a.site_id, a.game_kind, max(a.game_kind_name) as game_kind_name,sum(a.bet_count) AS bet_count, SUM(a.betamount) AS betamount, SUM(a.winlose) AS winlose,SUM(a.validamount) AS validamount, 
	          max(b.agents) as agents,max(b.world) as world,max(b.corprator) as corprator,max(b.superior) as superior,
	          SUM(a.comm_agent) AS comm_agent,SUM(a.comm_world)AS comm_world,SUM(a.comm_corprator) AS comm_corprator, SUM(a.comm_superior) comm_superior,SUM(a.comm_branch) comm_branch
		from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.superior,a.site_id,a.game_kind ');
      ELSE
        SET v_sql = CONCAT(' select b.superior as username,a.site_id, 0 as game_kind, ''总计'' as game_kind_name,sum(a.bet_count) AS bet_count, SUM(a.betamount) AS betamount, SUM(a.winlose) AS winlose,SUM(a.validamount) AS validamount, 
		          max(b.agents) as agents,max(b.world) as world,max(b.corprator) as corprator,max(b.superior) as superior,
		          SUM(a.comm_agent) AS comm_agent,SUM(a.comm_world)AS comm_world,SUM(a.comm_corprator) AS comm_corprator, SUM(a.comm_superior) comm_superior,SUM(a.comm_branch) comm_branch
		    from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.superior,a.site_id
		    UNION ALL
		    select b.superior as username,a.site_id, a.game_kind, max(a.game_kind_name) as game_kind_name,sum(a.bet_count) AS bet_count, SUM(a.betamount) AS betamount, SUM(a.winlose) AS winlose,SUM(a.validamount) AS validamount, 
	          max(b.agents) as agents,max(b.world) as world,max(b.corprator) as corprator,max(b.superior) as superior,
	          SUM(a.comm_agent) AS comm_agent,SUM(a.comm_world)AS comm_world,SUM(a.comm_corprator) AS comm_corprator, SUM(a.comm_superior) comm_superior,SUM(a.comm_branch) comm_branch
		from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.superior,a.site_id,a.game_kind ');
      END IF;
    END IF;
    
    
    SET @SQL=v_sql; 
    PREPARE s1 FROM @SQL; 
    EXECUTE s1; 
    DEALLOCATE PREPARE s1;
    
    END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_validuser_total
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_validuser_total`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_validuser_total`(IN i_condition VARCHAR(500))
BEGIN
    DECLARE v_siteId INT;
    DECLARE v_betTimeBegin VARCHAR(20);
    DECLARE v_betTimeEnd  VARCHAR(20);
    DECLARE v_username VARCHAR(100);
    DECLARE v_agentLevel VARCHAR(100);
    DECLARE v_liveId INT;
    DECLARE v_gameKind INT;
    DECLARE v_gameType INT;
    DECLARE v_betStatus VARCHAR(10) DEFAULT '1';
    DECLARE v_defValidamount DECIMAL(18,2) DEFAULT 0.1;
    DECLARE v_page INT DEFAULT 1;
    DECLARE v_pageLimit INT DEFAULT 10;
    DECLARE v_firstRecord INT;
    DECLARE v_condition VARCHAR(1000);
    DECLARE v_index INT;
    DECLARE v_substr VARCHAR(100);
    DECLARE v_subIndex INT;
    DECLARE v_fieldName VARCHAR(100);
    DECLARE v_fieldValue VARCHAR(100);
    DECLARE v_sql VARCHAR(2000);
    DECLARE v_sqltotal VARCHAR(2000);
    DECLARE v_where VARCHAR(500);
    
    SET v_index = 0;
    SET v_subIndex = 0;
    SET v_subStr = '';
    SET v_fieldName = '';
    SET v_fieldValue = '';
    SET v_condition = i_condition;
    SET v_where = '';
    condition_loop:LOOP
      IF(v_condition = '') THEN
	LEAVE condition_loop ;
      END IF;
      IF(v_condition <> '') THEN
	SET v_index = LOCATE(';',v_condition);
	IF(v_index >0) THEN
	  SET v_substr = SUBSTRING(v_condition,1,v_index-1);
	  SET v_condition = SUBSTRING(v_condition,v_index+1,LENGTH(v_condition)-v_index);
	ELSE
	  SET v_substr = v_condition;
	  SET v_condition = '';	
	END IF;
	SET v_subIndex = LOCATE('|',v_substr); 
	IF(v_subIndex > 0) THEN
	  SET v_fieldName = SUBSTRING(v_substr,1,v_subIndex-1);
	  SET v_fieldValue = SUBSTRING(v_substr,v_subIndex+1,LENGTH(v_substr)-v_subIndex);
	END IF;
				
	IF(v_fieldName = 'siteId') THEN
	  SET v_siteId = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.site_id = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'betTimeBegin') THEN
	  SET v_betTimeBegin = v_fieldValue;
	  SET v_where = CONCAT(v_where,' and a.bet_time >= CONCAT(''',v_betTimeBegin,''','' 00:00:00'') ');
	ELSEIF(v_fieldName = 'betTimeEnd') THEN
	  SET v_betTimeEnd = v_fieldValue;
	  SET v_where = CONCAT(v_where,' and a.bet_time < CONCAT(''',v_betTimeEnd,''','' 23:59:59'') ');
	ELSEIF(v_fieldName = 'agentLevel') THEN
	  SET v_agentLevel = LOWER(v_fieldValue);
	ELSEIF(v_fieldName = 'username') THEN
	  SET v_username = REPLACE(v_fieldValue ,',',''',''');
	ELSEIF(v_fieldName = 'liveId') THEN
	  SET v_liveId = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.live_id = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'gameKind') THEN
	  SET v_gameKind = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.game_kind = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'gameType') THEN
	  SET v_gameType = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.game_type = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'betStatus') THEN
	  SET v_betStatus = v_fieldValue;
	ELSEIF(v_fieldName = 'defValidamount') THEN
	  SET v_defValidamount = CAST(v_fieldValue AS DECIMAL(18,2)) ;
	ELSEIF(v_fieldName = 'page') THEN
	  SET v_page = CAST(v_fieldValue AS SIGNED) ;
	ELSEIF(v_fieldName = 'pageLimit') THEN
	  SET v_pageLimit = CAST(v_fieldValue AS SIGNED) ;
	END IF;
	IF(v_condition = '') THEN
	  LEAVE condition_loop ;
	END IF;	
      END IF;
    END LOOP;
    
    
    SET v_firstRecord = CAST((v_page - 1) * v_pageLimit AS SIGNED);
    IF(v_agentLevel = 'superior')THEN 
      SET v_where = CONCAT(v_where,' and b.superior in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'member')THEN
      SET v_where = CONCAT(v_where,' and b.username in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'corprator')THEN  
      SET v_where = CONCAT(v_where,' and b.corprator in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'world')THEN
      SET v_where = CONCAT(v_where,' and b.world in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'agent')THEN 
      SET v_where = CONCAT(v_where,' and b.agents in (''',v_username,''') ');
     ELSEIF(v_agentLevel = 'member')THEN 
      SET v_where = CONCAT(v_where,' and a.username in (''',v_username,''') ');
    END IF;
    
    
    
     SET v_sqltotal = CONCAT(' select count(1) as record_count,sum(d.user_count) as user_count 
				from (SELECT c.agents,sum(case when c.validamount >= ', v_defValidamount,' then 1 else 0 end ) as user_count
					FROM (SELECT b.agents,b.username,sum(a.validamount) as validamount 
						FROM ds_report a ,ds_member b 
						WHERE a.site_id =b.site_id AND a.username=b.username ',v_where,'GROUP BY b.agents,b.username) c GROUP BY c.agents ) d ');
    
    SET v_sql = CONCAT(' SELECT c.agents,sum(case when c.validamount >= ', v_defValidamount,' then 1 else 0 end ) as user_count, sum(c.winlose) as winlose,sum(c.validamount) as validamount 
			  FROM (SELECT b.agents,b.username,sum(a.winlose) as winlose,sum(a.validamount) as validamount 
				  FROM ds_report a ,ds_member b 
				 WHERE a.site_id =b.site_id AND a.username=b.username ',v_where,'GROUP BY b.agents,b.username) c GROUP BY c.agents LIMIT ',v_firstRecord,',',v_pageLimit);
    SET @SQLTOTAL=v_sqltotal; 
    PREPARE s1 FROM @SQLTOTAL; 
    EXECUTE s1; 
    DEALLOCATE PREPARE s1;
    SET @SQL=v_sql; 
    PREPARE s2 FROM @SQL; 
    EXECUTE s2; 
    DEALLOCATE PREPARE s2;
    END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_water_report
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_water_report`;
DELIMITER ;;
CREATE DEFINER=`report_user`@`%` PROCEDURE `sp_water_report`(IN i_condition VARCHAR(500), IN i_returnOrder VARCHAR(200), IN i_returnPercent VARCHAR(2000))
BEGIN   
  /*
  i_condition:siteId|11;betTimeBegin|2015-06-03;pBetTimeEnd|2015-06-04;agentLevel|superior;username|adm000;waterType|0
  i_returnOrder:live|1;live_ds|1;live_bb|2;live_other|3;hongkong|2;lotto|3;ball|4;bb_sport|5;game|6;3d|7;
  i_returnPercent:vgold|1;max_return|999999999;liveds|1;livebb|1;liveother|1;hongkong|1;lotto|1;ball|1;bb_sport|1;game|1;3d|0.8;#vgold|500000;max_return|999999999;liveds|1;livebb|1;liveother|1;hongkong|1;lotto|1;ball|1;bb_sport|1;game|1;3d|0.8;#vgold|1000000;max_return|999999999;liveds|1;livebb|1;liveother|1;hongkong|1;lotto|1;ball|1;bb_sport|1;game|1;3d|0.8;#
  */  
  DECLARE v_siteId INT;
  DECLARE v_betTimeBegin VARCHAR(20);
  DECLARE v_betTimeEnd  VARCHAR(20);
  DECLARE v_username VARCHAR(100);
  DECLARE v_agentLevel VARCHAR(100);
  DECLARE v_waterType VARCHAR(10) DEFAULT '0';
  DECLARE v_condition VARCHAR(1000);
  DECLARE v_index INT;
  DECLARE v_substr VARCHAR(100);
  DECLARE v_subIndex INT;
  DECLARE v_fieldName VARCHAR(100);
  DECLARE v_fieldValue VARCHAR(100);
  DECLARE v_sql VARCHAR(2000);
  DECLARE v_where VARCHAR(500);
  DECLARE v_group VARCHAR(50);
  DECLARE v_max_water INT;
  
  DECLARE v_vgold INT;
  DECLARE v_max_return INT;
  DECLARE v_live_ds DECIMAL(8,2);
  DECLARE v_live_bb DECIMAL(8,2);
  DECLARE v_live_other DECIMAL(8,2);
  DECLARE v_hongkong DECIMAL(8,2);
  DECLARE v_lotto DECIMAL(8,2);
  DECLARE v_ball DECIMAL(8,2);
  DECLARE v_bb_sport DECIMAL(8,2);
  DECLARE v_game DECIMAL(8,2);
  DECLARE v_bb_3d DECIMAL(8,2);
  DECLARE v_rIndex INT;
  DECLARE v_pCondition VARCHAR(2000);
  DECLARE v_count_per INT DEFAULT 0;
  DECLARE v_next_vgold INT;
  DECLARE v_sql_update VARCHAR(3000);
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_temp_calc_validamount DECIMAL(18,2);
  DECLARE v_game_calc_validamount DECIMAL(18,2);
  DECLARE v_game_uncalc_validamount DECIMAL(18,2);
  DECLARE v_live_calc_validamount DECIMAL(18,2);
  DECLARE v_live_uncalc_validamount DECIMAL(18,2);
  DECLARE v_live_ds_calc_validamount DECIMAL(18,2);
  DECLARE v_live_ds_uncalc_validamount DECIMAL(18,2);
  DECLARE v_live_bb_calc_validamount DECIMAL(18,2);
  DECLARE v_live_bb_uncalc_validamount DECIMAL(18,2);
  DECLARE v_live_other_calc_validamount DECIMAL(18,2);
  DECLARE v_live_other_uncalc_validamount DECIMAL(18,2);
  DECLARE v_total_calc_validamount DECIMAL(18,2);
  DECLARE v_total_uncalc_validamount DECIMAL(18,2);
  DECLARE t_error INTEGER DEFAULT 0;
  DECLARE cur_percent_done INT DEFAULT 0;
  DECLARE c_vgold INT;
  DECLARE c_max_return INT;
  DECLARE c_live_ds DECIMAL(8,2);
  DECLARE c_live_bb DECIMAL(8,2);
  DECLARE c_live_other DECIMAL(8,2);
  DECLARE c_hongkong DECIMAL(8,2);
  DECLARE c_lotto DECIMAL(8,2);
  DECLARE c_ball DECIMAL(8,2);
  DECLARE c_bb_sport DECIMAL(8,2);
  DECLARE c_game DECIMAL(8,2);
  DECLARE c_bb_3d DECIMAL(8,2);
  DECLARE cur_percent CURSOR FOR
      SELECT vgold,max_return,live_ds,live_bb,live_other,hongkong,lotto,ball,bb_sport,game,bb_3d
        FROM temp_water_percent a
        ORDER BY a.vgold;
  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET cur_percent_done = 1;
  /*DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;*/
  
  SET v_index = 0;
  SET v_subIndex = 0;
  SET v_subStr = '';
  SET v_fieldName = '';
  SET v_fieldValue = '';
  SET v_condition = i_condition;
  SET v_where = 'where 1=1 ';
  condition_loop:LOOP
    IF(v_condition = '') THEN
  		LEAVE condition_loop ;
  	END IF;
  	IF(v_condition <> '') THEN
  		SET v_index = LOCATE(';',v_condition);
  	  IF(v_index >0) THEN
  		  SET v_substr = SUBSTRING(v_condition,1,v_index-1);
  			SET v_condition = SUBSTRING(v_condition,v_index+1,LENGTH(v_condition)-v_index);
  		ELSE
  			SET v_substr = v_condition;
  			SET v_condition = '';	
  		END IF;
  		SET v_subIndex = LOCATE('|',v_substr); 
  		IF(v_subIndex > 0) THEN
  			SET v_fieldName = SUBSTRING(v_substr,1,v_subIndex-1);
  			SET v_fieldValue = SUBSTRING(v_substr,v_subIndex+1,LENGTH(v_substr)-v_subIndex);
  		END IF;
  			
  		IF(v_fieldName = 'siteId') THEN
  			SET v_siteId = CAST(v_fieldValue AS SIGNED);
			SET v_where = CONCAT(v_where,' and site_id = CAST(''',v_fieldValue,''' AS SIGNED) ');
  		ELSEIF(v_fieldName = 'betTimeBegin') THEN
  			SET v_betTimeBegin = v_fieldValue;
			SET v_where = CONCAT(v_where,' and bet_time >= CONCAT(''',v_betTimeBegin,''','' 00:00:00'') ');
  		ELSEIF(v_fieldName = 'betTimeEnd') THEN
  			SET v_betTimeEnd = v_fieldValue;
			SET v_where = CONCAT(v_where,' and bet_time < CONCAT(''',v_betTimeEnd,''','' 23:59:59'') ');
  		ELSEIF(v_fieldName = 'agentLevel') THEN
  			SET v_agentLevel = LOWER(v_fieldValue);
  		ELSEIF(v_fieldName = 'username') THEN
  			SET v_username = REPLACE(v_fieldValue ,',',''',''');
		ELSEIF(v_fieldName = 'waterType') THEN
			SET v_waterType = v_fieldValue;
  		END IF;
  		IF(v_condition = '') THEN
  		  LEAVE condition_loop ;
		END IF;	
	END IF;
  END LOOP;
  /*DROP TEMPORARY TABLE IF EXISTS temp_water_order;*/
  CREATE TEMPORARY TABLE IF NOT EXISTS temp_water_order(order_name VARCHAR(20),list_order INT);
  SET v_index = 0;
  SET v_subIndex = 0;
  SET v_subStr = '';
  SET v_fieldName = '';
  SET v_fieldValue = '';
  SET v_condition = i_returnOrder;
  order_loop:LOOP
    IF(v_condition = '') THEN
  		LEAVE order_loop ;
  	END IF;
  	IF(v_condition <> '') THEN
  		SET v_index = LOCATE(';',v_condition);
  	  IF(v_index >0) THEN
  		  SET v_substr = SUBSTRING(v_condition,1,v_index-1);
  			SET v_condition = SUBSTRING(v_condition,v_index+1,LENGTH(v_condition)-v_index);
  		ELSE
  			SET v_substr = v_condition;
  			SET v_condition = '';	
  		END IF;
  		SET v_subIndex = LOCATE('|',v_substr); 
  		IF(v_subIndex > 0) THEN
  			SET v_fieldName = SUBSTRING(v_substr,1,v_subIndex-1);
  			SET v_fieldValue = SUBSTRING(v_substr,v_subIndex+1,LENGTH(v_substr)-v_subIndex);
        INSERT INTO temp_water_order VALUES(v_fieldName,CAST(v_fieldValue AS SIGNED));
  		END IF;
  			
  		IF(v_condition = '') THEN
  		  LEAVE order_loop ;
    	END IF;	
  	END IF;
  END LOOP;
  SET v_rIndex = 0;
  SET v_index = 0;
  SET v_subIndex = 0;
  SET v_subStr = '';
  SET v_fieldName = '';
  SET v_fieldValue = '';
  SET v_pcondition = i_returnPercent;
  
  /*DROP TEMPORARY TABLE IF EXISTS temp_water_percent;*/
  CREATE TEMPORARY TABLE IF NOT EXISTS  temp_water_percent(
    vgold INT,
    max_return INT,
    live_ds DECIMAL(8,2),
    live_bb DECIMAL(8,2),
    live_other DECIMAL(8,2),
    hongkong DECIMAL(8,2),
    lotto DECIMAL(8,2),
    ball DECIMAL(8,2),
    bb_sport DECIMAL(8,2),
    game DECIMAL(8,2),
    bb_3d DECIMAL(8,2),
    next_vgold INT);
  percent_loop:LOOP
    IF(v_pcondition = '') THEN
  		LEAVE percent_loop ;
  	END IF;
  	IF(v_pcondition <> '') THEN
      SET v_rIndex = LOCATE('#',v_pcondition);
      IF(v_rIndex >0) THEN
        SET v_condition = SUBSTRING(v_pcondition,1,v_rIndex-1);
        SET v_pcondition = SUBSTRING(v_pcondition,v_rIndex+1,LENGTH(v_pcondition)-v_rIndex);
      ELSE
        SET v_condition = v_pcondition;
        SET v_pcondition = '';
      END IF;
      
      SET v_index = 0;
      SET v_subIndex = 0;
      SET v_subStr = '';
      SET v_fieldName = '';
      SET v_fieldValue = '';
      SET v_vgold = NULL;
      SET v_max_return = NULL;
      SET v_live_ds = NULL;
      SET v_live_bb = NULL;
      SET v_live_other = NULL;
      SET v_hongkong = NULL;
      SET v_lotto = NULL;
      SET v_ball = NULL;
      SET v_bb_sport = NULL;
      SET v_game = NULL;
      SET v_bb_3d = NULL;
      detail_loop:LOOP
        IF(v_condition = '') THEN
      		LEAVE detail_loop ;
      	END IF;
      	IF(v_condition <> '') THEN
      		SET v_index = LOCATE(';',v_condition);
      	  IF(v_index >0) THEN
      		  SET v_substr = SUBSTRING(v_condition,1,v_index-1);
      			SET v_condition = SUBSTRING(v_condition,v_index+1,LENGTH(v_condition)-v_index);
      		ELSE
      			SET v_substr = v_condition;
      			SET v_condition = '';	
      		END IF;
      		SET v_subIndex = LOCATE('|',v_substr); 
      		IF(v_subIndex > 0) THEN
      			SET v_fieldName = SUBSTRING(v_substr,1,v_subIndex-1);
      			SET v_fieldValue = SUBSTRING(v_substr,v_subIndex+1,LENGTH(v_substr)-v_subIndex);
      		END IF;
      		
          IF(v_fieldName = 'vgold') THEN
  			    SET v_vgold = CAST(v_fieldValue AS SIGNED);
  		    ELSEIF(v_fieldName = 'max_return') THEN
            SET v_max_return = CAST(v_fieldValue AS SIGNED);
          ELSEIF(v_fieldName = 'live_ds') THEN
            SET v_live_ds = CAST(v_fieldValue AS DECIMAL(8,2));
          ELSEIF(v_fieldName = 'live_bb') THEN
            SET v_live_bb = CAST(v_fieldValue AS DECIMAL(8,2));
          ELSEIF(v_fieldName = 'live_other') THEN
            SET v_live_other = CAST(v_fieldValue AS DECIMAL(8,2));
          ELSEIF(v_fieldName = 'hongkong') THEN
            SET v_hongkong = CAST(v_fieldValue AS DECIMAL(8,2));
          ELSEIF(v_fieldName = 'lotto') THEN
            SET v_lotto = CAST(v_fieldValue AS DECIMAL(8,2));
          ELSEIF(v_fieldName = 'ball') THEN
            SET v_ball = CAST(v_fieldValue AS DECIMAL(8,2));
          ELSEIF(v_fieldName = 'bb_sport') THEN
            SET v_bb_sport = CAST(v_fieldValue AS DECIMAL(8,2));
          ELSEIF(v_fieldName = 'game') THEN
            SET v_game = CAST(v_fieldValue AS DECIMAL(8,2));
          ELSEIF(v_fieldName = '3d') THEN
            SET v_bb_3d = CAST(v_fieldValue AS DECIMAL(8,2));
          END IF;
          
      		IF(v_condition = '') THEN
      		  LEAVE detail_loop ;
        	END IF;	
      	END IF;
      END LOOP;
      INSERT INTO temp_water_percent(vgold,max_return,live_ds,live_bb,live_other,hongkong,lotto,ball,bb_sport,game,bb_3d)
            VALUES(v_vgold,v_max_return,v_live_ds,v_live_bb,v_live_other,v_hongkong,v_lotto,v_ball,v_bb_sport,v_game,v_bb_3d);
  		IF(v_pcondition = '') THEN
  		  LEAVE percent_loop ;
    	END IF;	
  	END IF;
  END LOOP;
  IF(v_agentLevel = 'superior')THEN 
    /*大股东*/
    SET v_sql = ' select superior as username,';
    SET v_where = CONCAT(v_where,' and superior in (''',v_username,''') ');
    SET v_group = ' group by superior '; 
  ELSEIF(v_agentLevel = 'member')THEN
    /*会员*/
    SET v_sql = 'select username,';
    SET v_where = CONCAT(v_where,' and username in (''',v_username,''') ');
    SET v_group = ' group by username ';
  ELSEIF(v_agentLevel = 'corprator')THEN  
    /*股东*/
    SET v_sql = 'select corprator as username,';
    SET v_where = CONCAT(v_where,' and corprator in (''',v_username,''') ');
    SET v_group = ' group by corprator ';
  ELSEIF(v_agentLevel = 'world')THEN
     /*总代*/
    SET v_sql = 'select world as username,';
    SET v_where = CONCAT(v_where,' and world in (''',v_username,''') ');
    SET v_group = ' group by world '; 
  ELSEIF(v_agentLevel = 'agent')THEN
     /*代理*/
    SET v_sql = 'select agents as username,';
    SET v_where = CONCAT(v_where,' and agents in (''',v_username,''') ');
    SET v_group = ' group by agents ';
  END IF;
  
  /*DROP TEMPORARY TABLE IF EXISTS temp_water_total;*/
  CREATE TEMPORARY TABLE IF NOT EXISTS temp_water_total(
    agents VARCHAR(50),
    username VARCHAR(50),
    total_validamount DECIMAL(18, 2),
    return_water DECIMAL(18, 2),
    ball_validamount DECIMAL(18, 2),
    ball_water DECIMAL(18, 2) DEFAULT 0,
    ball_calc_validamount DECIMAL(18, 2) DEFAULT 0,
    ball_uncalc_validamount DECIMAL(18, 2) DEFAULT 0,
    live_validamount DECIMAL(18, 2),
    live_water DECIMAL(18, 2) DEFAULT 0,
    live_calc_validamount DECIMAL(18, 2) DEFAULT 0,
    live_uncalc_validamount DECIMAL(18, 2) DEFAULT 0,
    live_bb_validamount DECIMAL(18, 2),
    live_bb_water DECIMAL(18, 2) DEFAULT 0,
    live_bb_calc_validamount DECIMAL(18, 2) DEFAULT 0,
    live_bb_uncalc_validamount DECIMAL(18, 2) DEFAULT 0,
    live_ds_validamount DECIMAL(18, 2),
    live_ds_water DECIMAL(18, 2) DEFAULT 0,
    live_ds_calc_validamount DECIMAL(18, 2) DEFAULT 0,
    live_ds_uncalc_validamount DECIMAL(18, 2) DEFAULT 0,
    live_other_validamount DECIMAL(18, 2),
    live_other_water DECIMAL(18, 2) DEFAULT 0,
    live_other_calc_validamount DECIMAL(18, 2) DEFAULT 0,
    live_other_uncalc_validamount DECIMAL(18, 2) DEFAULT 0,
    game_validamount DECIMAL(18, 2) ,
    game_water DECIMAL(18, 2) DEFAULT 0,
    game_calc_validamount DECIMAL(18, 2) DEFAULT 0,
    game_uncalc_validamount DECIMAL(18, 2) DEFAULT 0,
    lotto_validamount DECIMAL(18, 2) ,
    lotto_water DECIMAL(18, 2) DEFAULT 0,
    lotto_calc_validamount DECIMAL(18, 2) DEFAULT 0,
    lotto_uncalc_validamount DECIMAL(18, 2) DEFAULT 0,
    hongkong_validamount DECIMAL(18, 2),
    hongkong_water DECIMAL(18, 2) DEFAULT 0,
    hongkong_calc_validamount DECIMAL(18, 2) DEFAULT 0,
    hongkong_uncalc_validamount DECIMAL(18, 2) DEFAULT 0,
    bb_sport_validamount DECIMAL(18, 2) ,
    bb_sport_water DECIMAL(18, 2) DEFAULT 0,
    bb_sport_calc_validamount DECIMAL(18, 2) DEFAULT 0,
    bb_sport_uncalc_validamount DECIMAL(18, 2) DEFAULT 0,
    bb_3d_validamount DECIMAL(18, 2),
    bb_3d_water DECIMAL(18, 2) DEFAULT 0,
    bb_3d_calc_validamount DECIMAL(18, 2) DEFAULT 0,
    bb_3d_uncalc_validamount DECIMAL(18, 2) DEFAULT 0,
    total_water DECIMAL(18, 2) DEFAULT 0,
    total_calc_validamount DECIMAL(18, 2) DEFAULT 0,
    total_uncalc_validamount DECIMAL(18, 2) DEFAULT 0,
    tmp_calc_validamount DECIMAL(18, 2) DEFAULT 0);
  SET v_sql = CONCAT(
  'INSERT INTO temp_water_total(agents,username,total_validamount,ball_validamount,ball_water,live_validamount,live_water,live_bb_validamount,live_ds_validamount,
    live_other_validamount,game_validamount,game_water,lotto_validamount,lotto_water,hongkong_validamount,hongkong_water,
    bb_sport_validamount,bb_sport_water,bb_3d_validamount,bb_3d_water)
  SELECT agents,username,sum(validamount) AS validamount,0 AS ball_validamount,0 AS ball_water,sum(case when game_kind IN (3,21,41) then validamount else 0 end) AS live_validamount,0 AS live_water,
    sum(case when game_kind = 3 then validamount else 0 end) AS live_bb_validamount,sum(case when game_kind = 41 then validamount else 0 end) AS live_ds_validamount,
    sum(case when game_kind = 21 then validamount else 0 end) AS live_other_validamount,sum(case when game_kind IN(5,22) then validamount else 0 end) AS game_validamount,0 AS game_water,
    0 AS lotto_validamount,0 AS lotto_water,0 AS hongkong_validamount,0 AS hongkong_water,sum(case when game_kind = 1 then validamount else 0 end) AS bb_sport_validamount,
    0 AS bb_sport_water,sum(case when game_kind = 15 then validamount else 0 end) AS bb_3d_validamount,0 AS bb_3d_water
    FROM ds_report ',v_where,' GROUP BY agents,username ');
  
  SET @SQL=v_sql; 
  PREPARE s1 FROM @SQL; 
  EXECUTE s1; 
  DEALLOCATE PREPARE s1;
  UPDATE temp_water_total 
    SET ball_calc_validamount = 0,ball_uncalc_validamount = ball_validamount,
        live_calc_validamount = 0,live_uncalc_validamount = live_validamount,
        live_bb_calc_validamount=0,live_bb_uncalc_validamount = live_bb_validamount,
        live_ds_calc_validamount=0,live_ds_uncalc_validamount = live_ds_validamount,
        live_other_calc_validamount=0,live_other_uncalc_validamount = live_other_validamount,
        game_calc_validamount = 0,game_uncalc_validamount = game_validamount,
        lotto_calc_validamount = 0,lotto_uncalc_validamount = lotto_validamount,
        hongkong_calc_validamount = 0,hongkong_uncalc_validamount = hongkong_validamount,
        bb_sport_calc_validamount = 0,bb_sport_uncalc_validamount = bb_sport_validamount,
        bb_3d_calc_validamount = 0,bb_3d_uncalc_validamount = bb_3d_validamount,
        total_calc_validamount = 0,total_uncalc_validamount = total_validamount,tmp_calc_validamount=0;
 IF(v_waterType = '0') THEN
    /*UPDATE temp_water_total a
      SET a.ball_water = (SELECT (a.ball_validamount*b.ball)/100 FROM temp_water_percent b WHERE a.total_validamount > b.vgold  LIMIT 0,1),
         a.live_water = (SELECT (a.live_bb_validamount*b.live_bb+a.live_ds_validamount*b.live_ds+a.live_other_validamount*b.live_other)/100 FROM temp_water_percent b WHERE a.total_validamount > b.vgold  LIMIT 0,1),
         a.game_water = (SELECT (a.game_validamount*b.game)/100 FROM temp_water_percent b WHERE a.total_validamount > b.vgold  LIMIT 0,1),
         a.lotto_water = (SELECT (a.lotto_validamount*b.lotto)/100 FROM temp_water_percent b WHERE a.total_validamount > b.vgold  LIMIT 0,1),
         a.hongkong_water = (SELECT (a.hongkong_validamount*b.hongkong)/100 FROM temp_water_percent b WHERE a.total_validamount > b.vgold  LIMIT 0,1),
         a.bb_sport_water = (SELECT (a.bb_sport_validamount*b.bb_sport)/100 FROM temp_water_percent b WHERE a.total_validamount > b.vgold  LIMIT 0,1),
         a.bb_3d_water = (SELECT (a.bb_3d_validamount*b.bb_3d)/100 FROM temp_water_percent b WHERE a.total_validamount > b.vgold  LIMIT 0,1);*/
    UPDATE temp_water_total a
      SET a.ball_water = (SELECT (a.ball_validamount*b.ball)/100 FROM temp_water_percent b WHERE a.total_validamount > b.vgold  ORDER BY b.vgold DESC LIMIT 0,1);
    UPDATE temp_water_total a
      SET a.live_bb_water = (SELECT (a.live_bb_validamount*b.live_bb)/100 FROM temp_water_percent b WHERE a.total_validamount > b.vgold  ORDER BY b.vgold DESC LIMIT 0,1);
    UPDATE temp_water_total a
      SET a.live_ds_water = (SELECT (a.live_ds_validamount*b.live_ds)/100 FROM temp_water_percent b WHERE a.total_validamount > b.vgold  ORDER BY b.vgold DESC LIMIT 0,1);
    UPDATE temp_water_total a
      SET a.live_other_water = (SELECT (a.live_other_validamount*b.live_other)/100 FROM temp_water_percent b WHERE a.total_validamount > b.vgold  ORDER BY b.vgold DESC LIMIT 0,1);
    UPDATE temp_water_total a
      SET a.game_water = (SELECT (a.game_validamount*b.game)/100 FROM temp_water_percent b WHERE a.total_validamount > b.vgold  ORDER BY b.vgold DESC LIMIT 0,1);
    UPDATE temp_water_total a
      SET a.lotto_water = (SELECT (a.lotto_validamount*b.lotto)/100 FROM temp_water_percent b WHERE a.total_validamount > b.vgold ORDER BY b.vgold DESC LIMIT 0,1);
    UPDATE temp_water_total a
      SET a.hongkong_water = (SELECT (a.hongkong_validamount*b.hongkong)/100 FROM temp_water_percent b WHERE a.total_validamount > b.vgold  ORDER BY b.vgold DESC LIMIT 0,1);
    UPDATE temp_water_total a
      SET a.bb_sport_water = (SELECT (a.bb_sport_validamount*b.bb_sport)/100 FROM temp_water_percent b WHERE a.total_validamount > b.vgold  ORDER BY b.vgold DESC LIMIT 0,1);
    UPDATE temp_water_total a
      SET a.bb_3d_water = (SELECT (a.bb_3d_validamount*b.bb_3d)/100 FROM temp_water_percent b WHERE a.total_validamount > b.vgold  ORDER BY b.vgold DESC LIMIT 0,1);
  ELSE
    OPEN cur_percent;
      FETCH cur_percent INTO c_vgold,c_max_return,c_live_ds,c_live_bb,c_live_other,c_hongkong,c_lotto,c_ball,c_bb_sport,c_game,c_bb_3d;
      cur_percent_loop:LOOP
        IF (cur_percent_done = 1) THEN
          LEAVE cur_percent_loop;
        END IF;
        SELECT COUNT(1) INTO @v_count_per FROM temp_water_percent WHERE vgold > c_vgold;
        IF(@v_count_per > 0) THEN
          SELECT vgold INTO @v_next_gold FROM temp_water_percent WHERE vgold > c_vgold ORDER BY vgold ASC LIMIT 0,1;
        ELSE
          SET @v_next_gold = 0;
        END IF;
        IF(@v_next_gold > 0) THEN
          /*计算投注金额小于下一层级的起始金额，直接根据剩余的未返水金额进行计算*/
          UPDATE temp_water_total a
             SET a.ball_water = a.ball_water+(a.ball_uncalc_validamount*c_ball)/100,
                 a.ball_calc_validamount = a.ball_calc_validamount+a.ball_uncalc_validamount
            WHERE a.total_validamount <= @v_next_gold;
          UPDATE temp_water_total a
             SET /*a.live_water = a.live_water+(a.live_bb_uncalc_validamount*c_live_bb+a.live_ds_uncalc_validamount*c_live_ds+a.live_other_uncalc_validamount*c_live_other)/100,*/
                 a.live_bb_water = a.live_bb_water + (a.live_bb_uncalc_validamount*c_live_bb)/100,
                 a.live_ds_water = a.live_ds_water + (a.live_ds_uncalc_validamount*c_live_ds)/100,
                 a.live_other_water = a.live_other_water + (a.live_other_uncalc_validamount*c_live_other)/100,
                 /*a.live_calc_validamount = a.live_calc_validamount+a.live_uncalc_validamount,*/
                 a.live_bb_calc_validamount = a.live_bb_calc_validamount + a.live_bb_uncalc_validamount,
                 a.live_ds_calc_validamount = a.live_ds_calc_validamount + a.live_ds_uncalc_validamount,
                 a.live_other_calc_validamount = a.live_other_calc_validamount+a.live_other_uncalc_validamount,
                 a.game_water = a.game_water+(a.game_uncalc_validamount*c_game)/100,
                 a.game_calc_validamount = a.game_calc_validamount+a.game_uncalc_validamount,
                 a.lotto_water = a.lotto_water + (a.lotto_uncalc_validamount*c_lotto)/100,
                 a.lotto_calc_validamount = a.lotto_calc_validamount+a.lotto_uncalc_validamount,
                 a.hongkong_water = (a.hongkong_uncalc_validamount*c_hongkong)/100,
                 a.hongkong_calc_validamount = a.hongkong_calc_validamount + a.hongkong_uncalc_validamount,
                 a.bb_sport_water = a.bb_sport_water+(a.bb_sport_uncalc_validamount*c_bb_sport)/100,
                 a.bb_sport_calc_validamount = a.bb_sport_calc_validamount + a.bb_sport_uncalc_validamount, 
                 a.bb_3d_water = a.bb_3d_water + (a.bb_3d_uncalc_validamount*c_bb_3d)/100,
                 a.bb_3d_calc_validamount = a.bb_3d_calc_validamount + a.bb_3d_uncalc_validamount,
                 a.total_calc_validamount = a.total_calc_validamount + a.total_uncalc_validamount
            WHERE a.total_validamount <= @v_next_gold;
          UPDATE temp_water_total a
             SET a.ball_uncalc_validamount = 0,
                 /*a.live_uncalc_validamount = 0,*/
                 a.live_bb_uncalc_validamount = 0,
                 a.live_ds_uncalc_validamount = 0,
                 a.live_other_uncalc_validamount = 0,
                 a.game_uncalc_validamount = 0,
                 a.lotto_uncalc_validamount = 0,
                 a.hongkong_uncalc_validamount = 0,
                 a.bb_sport_uncalc_validamount = 0,
                 a.bb_3d_uncalc_validamount = 0, 
                 a.total_uncalc_validamount = 0
            WHERE a.total_validamount <= @v_next_gold;
          
          
          SELECT COUNT(1) INTO @v_count FROM  temp_water_total a WHERE  a.total_validamount > @v_next_gold;
          IF(@v_count > 0) THEN
          
            BEGIN
              DECLARE cur_order_done INT DEFAULT 0;
              DECLARE c_order_name VARCHAR(20);
              DECLARE cur_order CURSOR FOR
                  SELECT order_name
                    FROM temp_water_order a
                   WHERE a.order_name NOT LIKE 'live_%'
                    ORDER BY a.list_order;
              DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET cur_order_done = 1;
    
              OPEN cur_order;
                FETCH cur_order INTO c_order_name;
                cur_order_loop:LOOP
                  IF(cur_order_done = 1) THEN
                    LEAVE cur_order_loop;
                  END IF;
    
                  
    
                  IF(c_order_name = 'live') THEN
                    BEGIN
                      DECLARE cur_order_live_done INT DEFAULT 0;
                      DECLARE c_order_live VARCHAR(20);
                      DECLARE cur_order_live CURSOR FOR
                          SELECT order_name
                            FROM temp_water_order a
                           WHERE a.order_name LIKE 'live_%'
                            ORDER BY a.list_order;
                      DECLARE CONTINUE HANDLER FOR SQLSTATE '02000'SET cur_order_live_done = 1;
                      OPEN cur_order_live;
                      FETCH cur_order_live INTO c_order_live;
                      cur_order_live_loop:LOOP
                        IF(cur_order_live_done = 1) THEN
                          LEAVE cur_order_live_loop;
                        ELSE
                          IF(c_order_live='live_bb') THEN
                            UPDATE temp_water_total a 
                               SET  a.tmp_calc_validamount = (CASE WHEN a.live_bb_uncalc_validamount+a.total_calc_validamount < @v_next_gold THEN a.live_bb_uncalc_validamount ELSE @v_next_gold - a.total_calc_validamount END)
                              WHERE a.total_calc_validamount <= @v_next_gold;
        
                            UPDATE temp_water_total a
                              SET a.live_bb_water = a.live_bb_water +(a.tmp_calc_validamount*c_live_bb)/100,
                                  /*a.live_calc_validamount = a.live_calc_validamount + a.tmp_calc_validamount,
                                  a.live_uncalc_validamount = a.live_uncalc_validamount - a.tmp_calc_validamount, */
                                  a.live_bb_calc_validamount = a.live_bb_calc_validamount + a.tmp_calc_validamount,
                                  a.live_bb_uncalc_validamount = a.live_bb_uncalc_validamount - a.tmp_calc_validamount,
                                  a.total_calc_validamount = a.total_calc_validamount + a.tmp_calc_validamount,
                                  a.total_uncalc_validamount = a.total_uncalc_validamount - a.tmp_calc_validamount
                            WHERE a.total_calc_validamount <= @v_next_gold 
                              AND a.tmp_calc_validamount > 0;
                          ELSEIF(c_order_live='live_ds') THEN
                            UPDATE temp_water_total a 
                               SET  a.tmp_calc_validamount = (CASE WHEN a.live_ds_uncalc_validamount+a.total_calc_validamount < @v_next_gold THEN a.live_ds_uncalc_validamount ELSE @v_next_gold - a.total_calc_validamount END)
                              WHERE a.total_calc_validamount <= @v_next_gold;
        
                            UPDATE temp_water_total a
                              SET a.live_ds_water = a.live_ds_water +(a.tmp_calc_validamount*c_live_ds)/100,
                                  /*a.live_calc_validamount = a.live_calc_validamount + a.tmp_calc_validamount,
                                  a.live_uncalc_validamount = a.live_uncalc_validamount - a.tmp_calc_validamount, */
                                  a.live_ds_calc_validamount = a.live_ds_calc_validamount + a.tmp_calc_validamount,
                                  a.live_ds_uncalc_validamount = a.live_ds_uncalc_validamount - a.tmp_calc_validamount,
                                  a.total_calc_validamount = a.total_calc_validamount + a.tmp_calc_validamount,
                                  a.total_uncalc_validamount = a.total_uncalc_validamount - a.tmp_calc_validamount
                            WHERE a.total_calc_validamount <= @v_next_gold 
                              AND a.tmp_calc_validamount > 0;
                          ELSEIF(c_order_live='live_other') THEN
                            UPDATE temp_water_total a 
                               SET  a.tmp_calc_validamount = (CASE WHEN a.live_other_uncalc_validamount+a.total_calc_validamount < @v_next_gold THEN a.live_other_uncalc_validamount ELSE @v_next_gold - a.total_calc_validamount END)
                              WHERE a.total_calc_validamount <= @v_next_gold;
        
                            UPDATE temp_water_total a
                              SET a.live_other_water = a.live_other_water +(a.tmp_calc_validamount*c_live_other)/100,
                                  /*a.live_calc_validamount = a.live_calc_validamount + a.tmp_calc_validamount,
                                  a.live_uncalc_validamount = a.live_uncalc_validamount - a.tmp_calc_validamount, */
                                  a.live_other_calc_validamount = a.live_other_calc_validamount + a.tmp_calc_validamount,
                                  a.live_other_uncalc_validamount = a.live_other_uncalc_validamount - a.tmp_calc_validamount,
                                  a.total_calc_validamount = a.total_calc_validamount + a.tmp_calc_validamount,
                                  a.total_uncalc_validamount = a.total_uncalc_validamount - a.tmp_calc_validamount
                            WHERE a.total_calc_validamount <= @v_next_gold 
                              AND a.tmp_calc_validamount > 0;
                          END IF;
                          
                          FETCH cur_order_live INTO c_order_live;
                        END IF;
                      END LOOP;
                      CLOSE cur_order_live;
                    END;
                  ELSEIF(c_order_name='hongkong')THEN
                    UPDATE temp_water_total a 
                       SET  a.tmp_calc_validamount = (CASE WHEN a.hongkong_uncalc_validamount+a.total_calc_validamount < @v_next_gold THEN a.hongkong_uncalc_validamount ELSE @v_next_gold - a.total_calc_validamount END)
                      WHERE a.total_calc_validamount <= @v_next_gold;
                    UPDATE temp_water_total a
                      SET a.hongkong_water = a.hongkong_water + (a.tmp_calc_validamount*c_hongkong)/100, 
                          a.hongkong_calc_validamount = a.hongkong_calc_validamount + a.tmp_calc_validamount,
                          a.hongkong_uncalc_validamount = a.hongkong_uncalc_validamount - a.tmp_calc_validamount,
                          a.total_calc_validamount = a.total_calc_validamount + a.tmp_calc_validamount,
                          a.total_uncalc_validamount = a.total_uncalc_validamount - a.tmp_calc_validamount
                    WHERE a.total_calc_validamount <= @v_next_gold 
                      AND a.tmp_calc_validamount > 0;
                 ELSEIF(c_order_name='lotto')THEN
                     UPDATE temp_water_total a 
                       SET  a.tmp_calc_validamount = (CASE WHEN a.lotto_uncalc_validamount+a.total_calc_validamount < @v_next_gold THEN a.lotto_uncalc_validamount ELSE @v_next_gold - a.total_calc_validamount END)
                      WHERE a.total_calc_validamount <= @v_next_gold;
                    UPDATE temp_water_total a
                      SET a.lotto_water = a.lotto_water + (a.tmp_calc_validamount*c_lotto)/100, 
                          a.lotto_calc_validamount = a.lotto_calc_validamount + a.tmp_calc_validamount,
                          a.lotto_uncalc_validamount = a.lotto_uncalc_validamount - a.tmp_calc_validamount,
                          a.total_calc_validamount = a.total_calc_validamount + a.tmp_calc_validamount,
                          a.total_uncalc_validamount = a.total_uncalc_validamount - a.tmp_calc_validamount
                    WHERE a.total_calc_validamount <= @v_next_gold 
                      AND a.tmp_calc_validamount > 0;
                ELSEIF(c_order_name='ball')THEN
                    UPDATE temp_water_total a 
                       SET  a.tmp_calc_validamount = (CASE WHEN a.ball_uncalc_validamount+a.total_calc_validamount < @v_next_gold THEN a.ball_uncalc_validamount ELSE @v_next_gold - a.total_calc_validamount END)
                      WHERE a.total_calc_validamount <= @v_next_gold;
                    UPDATE temp_water_total a
                      SET a.ball_water = a.ball_water + (a.tmp_calc_validamount*c_ball)/100, 
                          a.ball_calc_validamount = a.ball_calc_validamount + a.tmp_calc_validamount,
                          a.ball_uncalc_validamount = a.ball_uncalc_validamount - a.tmp_calc_validamount,
                          a.total_calc_validamount = a.total_calc_validamount + a.tmp_calc_validamount,
                          a.total_uncalc_validamount = a.total_uncalc_validamount - a.tmp_calc_validamount
                    WHERE a.total_calc_validamount <= @v_next_gold 
                      AND a.tmp_calc_validamount > 0;
                ELSEIF(c_order_name='bb_sport')THEN
                    UPDATE temp_water_total a 
                       SET  a.tmp_calc_validamount = (CASE WHEN a.bb_sport_uncalc_validamount+a.total_calc_validamount < @v_next_gold THEN a.bb_sport_uncalc_validamount ELSE @v_next_gold - a.total_calc_validamount END)
                      WHERE a.total_calc_validamount <= @v_next_gold;
                    UPDATE temp_water_total a
                      SET a.bb_sport_water = a.bb_sport_water + (a.tmp_calc_validamount*c_bb_sport)/100, 
                          a.bb_sport_calc_validamount = a.bb_sport_calc_validamount + a.tmp_calc_validamount,
                          a.bb_sport_uncalc_validamount = a.bb_sport_uncalc_validamount - a.tmp_calc_validamount,
                          a.total_calc_validamount = a.total_calc_validamount + a.tmp_calc_validamount,
                          a.total_uncalc_validamount = a.total_uncalc_validamount - a.tmp_calc_validamount
                    WHERE a.total_calc_validamount <= @v_next_gold 
                      AND a.tmp_calc_validamount > 0;
                ELSEIF(c_order_name='game')THEN
                    
                    UPDATE temp_water_total a 
                       SET  a.tmp_calc_validamount = (CASE WHEN a.game_uncalc_validamount+a.total_calc_validamount < @v_next_gold THEN a.game_uncalc_validamount ELSE @v_next_gold - a.total_calc_validamount END)
                      WHERE a.total_calc_validamount <= @v_next_gold;
                    UPDATE temp_water_total a
                      SET a.game_water = a.game_water + (a.tmp_calc_validamount*c_game)/100, 
                          a.game_calc_validamount = a.game_calc_validamount + a.tmp_calc_validamount,
                          a.game_uncalc_validamount = a.game_uncalc_validamount - a.tmp_calc_validamount,
                          a.total_calc_validamount = a.total_calc_validamount + a.tmp_calc_validamount,
                          a.total_uncalc_validamount = a.total_uncalc_validamount - a.tmp_calc_validamount
                    WHERE a.total_calc_validamount <= @v_next_gold 
                      AND a.tmp_calc_validamount > 0;
                ELSEIF(c_order_name='3d')THEN
                    UPDATE temp_water_total a 
                       SET  a.tmp_calc_validamount = (CASE WHEN a.bb_3d_uncalc_validamount+a.total_calc_validamount < @v_next_gold THEN a.bb_3d_uncalc_validamount ELSE @v_next_gold - a.total_calc_validamount END)
                      WHERE a.total_calc_validamount <= @v_next_gold;
                    UPDATE temp_water_total a
                      SET a.bb_3d_water = a.bb_3d_water + (a.tmp_calc_validamount*c_bb_3d)/100, 
                          a.bb_3d_calc_validamount = a.bb_3d_calc_validamount + a.tmp_calc_validamount,
                          a.bb_3d_uncalc_validamount = a.bb_3d_uncalc_validamount - a.tmp_calc_validamount,
                          a.total_calc_validamount = a.total_calc_validamount + a.tmp_calc_validamount,
                          a.total_uncalc_validamount = a.total_uncalc_validamount - a.tmp_calc_validamount
                    WHERE a.total_calc_validamount <= @v_next_gold 
                      AND a.tmp_calc_validamount > 0;
                   /* BEGIN
                    
                    SET v_sql_update = CONCAT('
                    UPDATE temp_water_total a
                      SET a.',c_order_name,'_water = a.',c_order_name,'_water + (CASE WHEN a.',c_order_name,'_uncalc_validamount+a.total_calc_validamount < ',@v_next_gold,' THEN (a.',c_order_name,'_uncalc_validamount*c_live_ds)/100 ELSE (',@v_next_gold,' - a.total_calc_validamount)*c_',c_order_name,'/100 END), 
                          a.',c_order_name,'_calc_validamount = a.',c_order_name,'_calc_validamount + (CASE WHEN a.',c_order_name,'_uncalc_validamount+a.total_calc_validamount < ',@v_next_gold,' THEN a.',c_order_name,'_uncalc_validamount ELSE ',@v_next_gold,' - a.total_calc_validamount END),
                          a.',c_order_name,'_uncalc_validamount = a.',c_order_name,'_uncalc_validamount - (CASE WHEN a.',c_order_name,'_uncalc_validamount+a.total_calc_validamount < ',@v_next_gold,' THEN a.',c_order_name,'_uncalc_validamount ELSE ',@v_next_gold,' - a.total_calc_validamount END),
                          a.total_calc_validamount = a.total_calc_validamount + (CASE WHEN a.',c_order_name,'_uncalc_validamount+a.total_calc_validamount < ',@v_next_gold,' THEN a.',c_order_name,'_uncalc_validamount ELSE ',@v_next_gold,' - a.total_calc_validamount END),
                          a.total_uncalc_validamount = a.total_uncalc_validamount - (CASE WHEN a.',c_order_name,'_uncalc_validamount+a.total_calc_validamount < ',@v_next_gold,' THEN a.',c_order_name,'_uncalc_validamount ELSE ',@v_next_gold,' - a.total_calc_validamount END)
                    WHERE a.total_calc_validamount < ',@v_next_gold );
                   SET @SQLUPDATE=v_sql_update; 
                   PREPARE s12 from @SQLUPDATE; 
                   EXECUTE s12; 
                   DEALLOCATE PREPARE s12;
                   END;*/
                  END IF;
                  FETCH cur_order INTO c_order_name;
                END LOOP;
              CLOSE cur_order;
            END;
          END IF;
        ELSE
          /*BEGIN
          SELECT a.tmp_calc_validamount,a.game_calc_validamount,a.game_uncalc_validamount,a.live_calc_validamount,a.live_uncalc_validamount,
            a.live_ds_calc_validamount,a.live_ds_uncalc_validamount,a.live_bb_calc_validamount,a.live_bb_uncalc_validamount,
            a.live_other_calc_validamount,a.live_other_uncalc_validamount,a.total_calc_validamount,a.total_uncalc_validamount
            INTO @v_temp_calc_validamount,@v_game_calc_validamount,@v_game_uncalc_validamount,@v_live_calc_validamount,@v_live_uncalc_validamount,
            @v_live_ds_calc_validamount,@v_live_ds_uncalc_validamount,@v_live_bb_calc_validamount,@v_live_bb_uncalc_validamount,
            @v_live_other_calc_validamount,@v_live_other_uncalc_validamount,@v_total_calc_validamount,@v_total_uncalc_validamount
            FROM temp_water_total a LIMIT 0,1;
          END;*/
          UPDATE temp_water_total a
           SET a.ball_water = a.ball_water+(a.ball_uncalc_validamount*c_ball)/100,
               a.ball_calc_validamount = a.ball_calc_validamount+a.ball_uncalc_validamount,
               a.ball_uncalc_validamount = 0,
               /*a.live_water = a.live_water+(a.live_bb_uncalc_validamount*c_live_bb+a.live_ds_uncalc_validamount*c_live_ds+a.live_other_uncalc_validamount*c_live_other)/100,
               a.live_calc_validamount = a.live_calc_validamount+a.live_uncalc_validamount,
               a.live_uncalc_validamount = 0,*/
               a.live_bb_water = a.live_bb_water+(a.live_bb_uncalc_validamount*c_live_bb)/100,
               a.live_bb_calc_validamount = a.live_bb_calc_validamount + a.live_bb_uncalc_validamount,
               a.live_bb_uncalc_validamount = 0,
               a.live_ds_water = a.live_ds_water+(a.live_ds_uncalc_validamount*c_live_ds)/100,
               a.live_ds_calc_validamount = a.live_ds_calc_validamount + a.live_ds_uncalc_validamount,
               a.live_ds_uncalc_validamount = 0,
               a.live_other_water = a.live_other_water+(a.live_other_uncalc_validamount*c_live_other)/100,
               a.live_other_calc_validamount = a.live_other_calc_validamount+a.live_other_uncalc_validamount,
               a.live_other_uncalc_validamount = 0,
               a.game_water = a.game_water+(a.game_uncalc_validamount*c_game)/100,
               a.game_calc_validamount = a.game_calc_validamount+a.game_uncalc_validamount,
               a.game_uncalc_validamount = 0,
               a.lotto_water = a.lotto_water + (a.lotto_uncalc_validamount*c_lotto)/100,
               a.lotto_calc_validamount = a.lotto_calc_validamount+a.lotto_uncalc_validamount,
               a.lotto_uncalc_validamount = 0,
               a.hongkong_water = (a.hongkong_uncalc_validamount*c_hongkong)/100,
               a.hongkong_calc_validamount = a.hongkong_calc_validamount + a.hongkong_uncalc_validamount,
               a.hongkong_uncalc_validamount = 0,
               a.bb_sport_water = a.bb_sport_water+(a.bb_sport_uncalc_validamount*c_bb_sport)/100,
               a.bb_sport_calc_validamount = a.bb_sport_calc_validamount + a.bb_sport_uncalc_validamount, 
               a.bb_sport_uncalc_validamount = 0,
               a.bb_3d_water = a.bb_3d_water + (a.bb_3d_uncalc_validamount*c_bb_3d)/100,
               a.bb_3d_calc_validamount = a.bb_3d_calc_validamount + a.bb_3d_uncalc_validamount,
               a.bb_3d_uncalc_validamount = 0, 
               a.total_calc_validamount = a.total_calc_validamount+a.total_uncalc_validamount,
               a.total_uncalc_validamount = 0
           WHERE a.total_uncalc_validamount > 0;
        END IF;
      FETCH cur_percent INTO c_vgold,c_max_return,c_live_ds,c_live_bb,c_live_other,c_hongkong,c_lotto,c_ball,c_bb_sport,c_game,c_bb_3d;
      END LOOP;
    CLOSE cur_percent;
      
    
  END IF;
  UPDATE temp_water_total a
      SET a.live_water = a.live_ds_water+a.live_bb_water+a.live_other_water,
          a.total_water = a.ball_water+a.live_ds_water+a.live_bb_water+a.live_other_water+a.game_water+a.lotto_water+a.hongkong_water+a.bb_sport_water+a.bb_3d_water;
  SELECT max_return INTO v_max_water FROM temp_water_percent ORDER BY vgold LIMIT 0,1;
  UPDATE temp_water_total a 
     SET a.return_water = (CASE WHEN a.total_water < v_max_water THEN a.total_water ELSE v_max_water END);
  /*SELECT order_name,list_order FROM temp_water_order;
  SELECT vgold,max_return,live_ds,live_bb,live_other,hongkong,lotto,ball,bb_sport,game,bb_3d,next_vgold FROM temp_water_percent;*/
  SELECT agents,username,total_validamount,total_water,return_water,ball_validamount,ball_water,live_validamount,live_water,live_bb_validamount,live_bb_water,live_ds_validamount,live_ds_water,
    live_other_validamount,live_other_water,game_validamount,game_water,lotto_validamount,lotto_water,hongkong_validamount,hongkong_water,
    bb_sport_validamount,bb_sport_water,bb_3d_validamount,bb_3d_water
    FROM temp_water_total;  
  /* TRUNCATE TABLE temp_water_order;
   TRUNCATE TABLE temp_water_percent;
   TRUNCATE TABLE temp_water_total;*/
  DROP TEMPORARY TABLE IF EXISTS temp_water_order;
  DROP TEMPORARY TABLE IF EXISTS temp_water_percent;
  DROP TEMPORARY TABLE IF EXISTS temp_water_total;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_water_report_total
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_water_report_total`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_water_report_total`(IN i_condition VARCHAR(500))
BEGIN
    DECLARE v_siteId INT;
    DECLARE v_betTimeBegin VARCHAR(20);
    DECLARE v_betTimeEnd  VARCHAR(20);
    DECLARE v_username VARCHAR(100);
    DECLARE v_agentLevel VARCHAR(100);
    DECLARE v_liveId INT;
    DECLARE v_gameKind INT;
    DECLARE v_gameType INT;
    DECLARE v_betStatus VARCHAR(10) DEFAULT '1';
    DECLARE v_condition VARCHAR(1000);
    DECLARE v_index INT;
    DECLARE v_substr VARCHAR(100);
    DECLARE v_subIndex INT;
    DECLARE v_fieldName VARCHAR(100);
    DECLARE v_fieldValue VARCHAR(100);
    DECLARE v_sql VARCHAR(8000);
    DECLARE v_where VARCHAR(500);
    
    SET v_index = 0;
    SET v_subIndex = 0;
    SET v_subStr = '';
    SET v_fieldName = '';
    SET v_fieldValue = '';
    SET v_condition = i_condition;
    SET v_where = '';
    condition_loop:LOOP
      IF(v_condition = '') THEN
	LEAVE condition_loop ;
      END IF;
      IF(v_condition <> '') THEN
	SET v_index = LOCATE(';',v_condition);
	IF(v_index >0) THEN
	  SET v_substr = SUBSTRING(v_condition,1,v_index-1);
	  SET v_condition = SUBSTRING(v_condition,v_index+1,LENGTH(v_condition)-v_index);
	ELSE
	  SET v_substr = v_condition;
	  SET v_condition = '';	
	END IF;
	SET v_subIndex = LOCATE('|',v_substr); 
	IF(v_subIndex > 0) THEN
	  SET v_fieldName = SUBSTRING(v_substr,1,v_subIndex-1);
	  SET v_fieldValue = SUBSTRING(v_substr,v_subIndex+1,LENGTH(v_substr)-v_subIndex);
	END IF;
				
	IF(v_fieldName = 'siteId') THEN
	  SET v_siteId = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.site_id = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'betTimeBegin') THEN
	  SET v_betTimeBegin = v_fieldValue;
	  SET v_where = CONCAT(v_where,' and a.bet_time >= CONCAT(''',v_betTimeBegin,''','' 00:00:00'') ');
	ELSEIF(v_fieldName = 'betTimeEnd') THEN
	  SET v_betTimeEnd = v_fieldValue;
	  SET v_where = CONCAT(v_where,' and a.bet_time < CONCAT(''',v_betTimeEnd,''','' 23:59:59'') ');
	ELSEIF(v_fieldName = 'agentLevel') THEN
	  SET v_agentLevel = LOWER(v_fieldValue);
	ELSEIF(v_fieldName = 'username') THEN
	  SET v_username = REPLACE(v_fieldValue ,',',''',''');
	ELSEIF(v_fieldName = 'liveId') THEN
	  SET v_liveId = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.live_id = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'gameKind') THEN
	  SET v_gameKind = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.game_kind = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'gameType') THEN
	  SET v_gameType = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.game_type = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'betStatus') THEN
	  SET v_betStatus = v_fieldValue;
	END IF;
	IF(v_condition = '') THEN
	  LEAVE condition_loop ;
	END IF;	
      END IF;
    END LOOP;
    
    IF(v_agentLevel = 'superior')THEN 
      SET v_where = CONCAT(v_where,' and b.superior in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'member')THEN
      SET v_where = CONCAT(v_where,' and b.username in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'corprator')THEN  
      SET v_where = CONCAT(v_where,' and b.corprator in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'world')THEN
      SET v_where = CONCAT(v_where,' and b.world in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'agent')THEN 
      SET v_where = CONCAT(v_where,' and b.agents in (''',v_username,''') ');
     ELSEIF(v_agentLevel = 'member')THEN 
      SET v_where = CONCAT(v_where,' and b.username in (''',v_username,''') ');
    END IF;
    
    SET v_sql = CONCAT(' select b.agents,b.world,b.corprator,b.superior,a.username,sum(a.validamount) AS total_validamount,0 AS total_water,0 AS return_water,0 as total_calc_validamount,sum(a.validamount) AS total_uncalc_validamount,
	        0 AS ball_validamount,0 AS ball_water,0 as ball_calc_validamount,0 as ball_uncalc_validamount,
	        sum(case when a.game_kind IN (3,21,41) then a.validamount else 0 end) AS live_validamount,0 AS live_water,
    		sum(case when a.game_kind = 3 then a.validamount else 0 end) AS live_bb_validamount,0 as live_bb_water,0 as live_bb_calc_validamount,sum(case when a.game_kind = 3 then a.validamount else 0 end) AS live_bb_uncalc_validamount,
    		sum(case when a.game_kind = 41 then a.validamount else 0 end) AS live_ds_validamount,0 as live_ds_water,0 as live_ds_calc_validamount,sum(case when a.game_kind = 41 then a.validamount else 0 end) AS live_ds_uncalc_validamount,
    		sum(case when a.game_kind = 21 then a.validamount else 0 end) AS live_other_validamount,0 as live_other_water,0 as live_other_calc_validamount,sum(case when a.game_kind = 21 then a.validamount else 0 end) AS live_other_uncalc_validamount,
    		sum(case when a.game_kind IN(5,22) then a.validamount else 0 end) AS game_validamount,0 AS game_water,0 as game_calc_validamount,sum(case when a.game_kind IN(5,22) then a.validamount else 0 end) AS game_uncalc_validamount,
    		sum(case when a.game_kind=51 and a.game_type IN (51002,51003,51004,51005,51006,51007,51008) then a.validamount else 0 end) AS lotto_validamount,0 AS lotto_water,0 as lotto_calc_validamount,0 as lotto_uncalc_validamount,
    		sum(case when a.game_kind=51 and a.game_type = 51001 then a.validamount else 0 end) AS hongkong_validamount,0 AS hongkong_water,0 as hongkong_calc_validamount,0 as hongkong_uncalc_validamount,
    		sum(case when a.game_kind = 1 then a.validamount else 0 end) AS bb_sport_validamount,0 AS bb_sport_water,0 as bb_sport_calc_validamount,sum(case when a.game_kind = 1 then a.validamount else 0 end) AS bb_sport_uncalc_validamount,
    		sum(case when a.game_kind = 15 then a.validamount else 0 end) AS bb_3d_validamount,0 AS bb_3d_water,0 as bb_3d_calc_validamount,sum(case when a.game_kind = 15 then a.validamount else 0 end) AS bb_3d_uncalc_validamount
    	   from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,'group by b.agents,a.username');
    
    
    SET @SQL=v_sql; 
    PREPARE s1 FROM @SQL; 
    EXECUTE s1; 
    DEALLOCATE PREPARE s1;
    END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_water_report_total_new
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_water_report_total_new`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_water_report_total_new`(IN i_condition VARCHAR(500))
BEGIN
    DECLARE v_siteId INT;
    DECLARE v_betTimeBegin VARCHAR(20);
    DECLARE v_betTimeEnd  VARCHAR(20);
    DECLARE v_username VARCHAR(100);
    DECLARE v_agentLevel VARCHAR(100);
    DECLARE v_liveId INT;
    DECLARE v_gameKind INT;
    DECLARE v_gameType INT;
    DECLARE v_betStatus VARCHAR(10) DEFAULT '1';
    DECLARE v_condition VARCHAR(1000);
    DECLARE v_index INT;
    DECLARE v_substr VARCHAR(100);
    DECLARE v_subIndex INT;
    DECLARE v_fieldName VARCHAR(100);
    DECLARE v_fieldValue VARCHAR(100);
    DECLARE v_sql VARCHAR(8000);
    DECLARE v_where VARCHAR(500);
    
    SET v_index = 0;
    SET v_subIndex = 0;
    SET v_subStr = '';
    SET v_fieldName = '';
    SET v_fieldValue = '';
    SET v_condition = i_condition;
    SET v_where = '';
    condition_loop:LOOP
      IF(v_condition = '') THEN
	LEAVE condition_loop ;
      END IF;
      IF(v_condition <> '') THEN
	SET v_index = LOCATE(';',v_condition);
	IF(v_index >0) THEN
	  SET v_substr = SUBSTRING(v_condition,1,v_index-1);
	  SET v_condition = SUBSTRING(v_condition,v_index+1,LENGTH(v_condition)-v_index);
	ELSE
	  SET v_substr = v_condition;
	  SET v_condition = '';	
	END IF;
	SET v_subIndex = LOCATE('|',v_substr); 
	IF(v_subIndex > 0) THEN
	  SET v_fieldName = SUBSTRING(v_substr,1,v_subIndex-1);
	  SET v_fieldValue = SUBSTRING(v_substr,v_subIndex+1,LENGTH(v_substr)-v_subIndex);
	END IF;
				
	IF(v_fieldName = 'siteId') THEN
	  SET v_siteId = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.site_id = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'betTimeBegin') THEN
	  SET v_betTimeBegin = v_fieldValue;
	  SET v_where = CONCAT(v_where,' and a.bet_time >= CONCAT(''',v_betTimeBegin,''','' 00:00:00'') ');
	ELSEIF(v_fieldName = 'betTimeEnd') THEN
	  SET v_betTimeEnd = v_fieldValue;
	  SET v_where = CONCAT(v_where,' and a.bet_time < CONCAT(''',v_betTimeEnd,''','' 23:59:59'') ');
	ELSEIF(v_fieldName = 'agentLevel') THEN
	  SET v_agentLevel = LOWER(v_fieldValue);
	ELSEIF(v_fieldName = 'username') THEN
	  SET v_username = REPLACE(v_fieldValue ,',',''',''');
	ELSEIF(v_fieldName = 'liveId') THEN
	  SET v_liveId = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.live_id = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'gameKind') THEN
	  SET v_gameKind = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.game_kind = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'gameType') THEN
	  SET v_gameType = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.game_type = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'betStatus') THEN
	  SET v_betStatus = v_fieldValue;
	END IF;
	IF(v_condition = '') THEN
	  LEAVE condition_loop ;
	END IF;	
      END IF;
    END LOOP;
    
    IF(v_agentLevel = 'superior')THEN 
      SET v_where = CONCAT(v_where,' and b.superior in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'member')THEN
      SET v_where = CONCAT(v_where,' and b.username in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'corprator')THEN  
      SET v_where = CONCAT(v_where,' and b.corprator in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'world')THEN
      SET v_where = CONCAT(v_where,' and b.world in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'agent')THEN 
      SET v_where = CONCAT(v_where,' and b.agents in (''',v_username,''') ');
     ELSEIF(v_agentLevel = 'member')THEN 
      SET v_where = CONCAT(v_where,' and b.username in (''',v_username,''') ');
    END IF;
    
    SET v_sql = CONCAT(' select b.agents,b.world,b.corprator,b.superior,a.username,sum(a.validamount) AS totalValidamount,0 AS totalWater,0 AS returnWater,0 as totalCalcValidamount,sum(a.validamount) AS totalUncalcValidamount,
	 
	      sum(case when a.game_kind IN (3,21,41) then a.validamount else 0 end) AS liveValidamount,0 AS liveWater,
    		sum(case when a.game_kind = 3 then a.validamount else 0 end) AS liveBbValidamount,0 as liveBbWater,0 as liveBbCalcValidamount,
				sum(case when a.game_kind = 3 then a.validamount else 0 end) AS liveBbUncalcValidamount,
    		sum(case when a.game_kind = 41 then a.validamount else 0 end) AS liveDsValidamount,0 as liveDsWater,0 as liveDsCalcValidamount,
				sum(case when a.game_kind = 41 then a.validamount else 0 end) AS liveDsUncalcValidamount,
    		sum(case when a.game_kind = 21 then a.validamount else 0 end) AS liveAGValidamount,0 as liveAGWater,0 as liveAgCalcValidamount,
				sum(case when a.game_kind = 21 then a.validamount else 0 end) AS liveAgUncalcValidamount,
    		
				sum(case when a.game_kind IN(5,22,53) then a.validamount else 0 end) AS gameValidamount,0 AS gameWater,
    		sum(case when a.game_kind = 5 then a.validamount else 0 end) AS bbGameValidamount,0 as bbGameWater,0 as bbGameCalcValidamount,
				sum(case when a.game_kind = 5 then a.validamount else 0 end) AS bbgameUncalcValidamount,
    		sum(case when a.game_kind = 53 then a.validamount else 0 end) AS dsGameValidamount,0 as dsGameWater,0 as dsGameCalcValidamount,
				sum(case when a.game_kind = 53 then a.validamount else 0 end) AS dsgameUncalcValidamount,
    		sum(case when a.game_kind = 22 then a.validamount else 0 end) AS agGameValidamount,0 as agGameWater,0 as agGameCalcValidamount,
				sum(case when a.game_kind = 22 then a.validamount else 0 end) AS aggameUncalcValidamount,

				sum(case when a.game_kind IN(51,52) and a.game_type not IN (51001) then a.validamount else 0 end) AS lottoValidamount,0 AS lottoWater,
    		sum(case when a.game_kind = 51 and a.game_type not IN (51001) then a.validamount else 0 end) AS xiaoyuLottoValidamount,0 as xiaoyuLottoWater,0 as xiaoyuLottoCalcValidamount,
				sum(case when a.game_kind = 51 and a.game_type not IN (51001) then a.validamount else 0 end) AS xiaoyuLottoUncalcValidamount,
    		sum(case when a.game_kind = 52 then a.validamount else 0 end) AS fenfenLottoValidamount,0 as fenfenLottoWater,0 as fenfenLottoCalcValidamount,
				sum(case when a.game_kind = 52 then a.validamount else 0 end) AS fenfenLottoUncalcValidamount,


        sum(case when a.game_kind IN(51,52) and a.game_type IN (51001) then a.validamount else 0 end) AS hongkongValidamount,0 AS hongkongWater,
    		sum(case when a.game_kind = 51 and a.game_type IN (51001) then a.validamount else 0 end) AS xiaoyuHongkongValidamount,0 as xiaoyuHongkongWater,0 as xiaoyuHongkongCalcValidamount,
				sum(case when a.game_kind = 51 and a.game_type IN (51001) then a.validamount else 0 end) AS xiaoyuHongkongUncalcValidamount,
    		0 AS dsHongkongValidamount,0 as dsHongkongWater,0 as dsHongkongCalcValidamount,
				0 AS dsHongkongUncalcValidamount,


				sum(case when a.game_kind IN (1,42) then a.validamount else 0 end) AS sportValidamount,0 AS sportWater,
    		sum(case when a.game_kind = 1 then a.validamount else 0 end) AS bbSportValidamount,0 as bbSportWater,0 as bbSportCalcValidamount,
				sum(case when a.game_kind = 1 then a.validamount else 0 end) AS bbSportUncalcValidamount,
    		sum(case when a.game_kind = 42 then a.validamount else 0 end) AS h8Validamount,0 as h8Water,0 as h8CalcValidamount,
				sum(case when a.game_kind = 42 then a.validamount else 0 end) AS h8UncalcValidamount
    		

				from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,'group by b.agents,a.username');
    
    
    SET @SQL=v_sql;
    PREPARE s1 FROM @SQL; 
    EXECUTE s1; 
    DEALLOCATE PREPARE s1;
    END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_water_report_total_new_copy
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_water_report_total_new_copy`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_water_report_total_new_copy`(IN i_condition VARCHAR(500),IN start_index int(11),IN record_count int(11),OUT totalCount int)
BEGIN
    DECLARE v_siteId INT;
    DECLARE v_betTimeBegin VARCHAR(20);
    DECLARE v_betTimeEnd  VARCHAR(20);
    DECLARE v_username VARCHAR(100);
    DECLARE v_agentLevel VARCHAR(100);
    DECLARE v_liveId INT;
    DECLARE v_gameKind INT;
    DECLARE v_gameType INT;
    DECLARE v_betStatus VARCHAR(10) DEFAULT '1';
    DECLARE v_condition VARCHAR(1000);
    DECLARE v_index INT;
    DECLARE v_substr VARCHAR(100);
    DECLARE v_subIndex INT;
    DECLARE v_fieldName VARCHAR(100);
    DECLARE v_fieldValue VARCHAR(100);
    DECLARE v_sql VARCHAR(8000);
    DECLARE v_where VARCHAR(500);
    
    SET v_index = 0;
    SET v_subIndex = 0;
    SET v_subStr = '';
    SET v_fieldName = '';
    SET v_fieldValue = '';
    SET v_condition = i_condition;
    SET v_where = '';
    condition_loop:LOOP
      IF(v_condition = '') THEN
	LEAVE condition_loop ;
      END IF;
      IF(v_condition <> '') THEN
	SET v_index = LOCATE(';',v_condition);
	IF(v_index >0) THEN
	  SET v_substr = SUBSTRING(v_condition,1,v_index-1);
	  SET v_condition = SUBSTRING(v_condition,v_index+1,LENGTH(v_condition)-v_index);
	ELSE
	  SET v_substr = v_condition;
	  SET v_condition = '';	
	END IF;
	SET v_subIndex = LOCATE('|',v_substr); 
	IF(v_subIndex > 0) THEN
	  SET v_fieldName = SUBSTRING(v_substr,1,v_subIndex-1);
	  SET v_fieldValue = SUBSTRING(v_substr,v_subIndex+1,LENGTH(v_substr)-v_subIndex);
	END IF;
				
	IF(v_fieldName = 'siteId') THEN
	  SET v_siteId = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.site_id = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'betTimeBegin') THEN
	  SET v_betTimeBegin = v_fieldValue;
	  SET v_where = CONCAT(v_where,' and a.bet_time >= CONCAT(''',v_betTimeBegin,''','' 00:00:00'') ');
	ELSEIF(v_fieldName = 'betTimeEnd') THEN
	  SET v_betTimeEnd = v_fieldValue;
	  SET v_where = CONCAT(v_where,' and a.bet_time < CONCAT(''',v_betTimeEnd,''','' 23:59:59'') ');
	ELSEIF(v_fieldName = 'agentLevel') THEN
	  SET v_agentLevel = LOWER(v_fieldValue);
	ELSEIF(v_fieldName = 'username') THEN
	  SET v_username = REPLACE(v_fieldValue ,',',''',''');
	ELSEIF(v_fieldName = 'liveId') THEN
	  SET v_liveId = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.live_id = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'gameKind') THEN
	  SET v_gameKind = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.game_kind = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'gameType') THEN
	  SET v_gameType = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.game_type = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'betStatus') THEN
	  SET v_betStatus = v_fieldValue;
	END IF;
	IF(v_condition = '') THEN
	  LEAVE condition_loop ;
	END IF;	
      END IF;
    END LOOP;
    
    IF(v_agentLevel = 'superior')THEN 
      SET v_where = CONCAT(v_where,' and b.superior in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'member')THEN
      SET v_where = CONCAT(v_where,' and b.username in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'corprator')THEN  
      SET v_where = CONCAT(v_where,' and b.corprator in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'world')THEN
      SET v_where = CONCAT(v_where,' and b.world in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'agent')THEN 
      SET v_where = CONCAT(v_where,' and b.agents in (''',v_username,''') ');
    END IF;
    
    SET v_sql = CONCAT(' select b.agents,b.world,b.corprator,b.superior,a.username,sum(a.validamount) AS totalValidamount,0 AS totalWater,0 AS returnWater,0 as totalCalcValidamount,sum(a.validamount) AS totalUncalcValidamount,
	 
	      sum(case when a.game_kind IN (3,21,41,23) then a.validamount else 0 end) AS liveValidamount,0 AS liveWater,
    		sum(case when a.game_kind = 3 then a.validamount else 0 end) AS liveBbValidamount,0 as liveBbWater,0 as liveBbCalcValidamount,
				sum(case when a.game_kind = 3 then a.validamount else 0 end) AS liveBbUncalcValidamount,
    		sum(case when a.game_kind = 41 then a.validamount else 0 end) AS liveDsValidamount,0 as liveDsWater,0 as liveDsCalcValidamount,
				sum(case when a.game_kind = 41 then a.validamount else 0 end) AS liveDsUncalcValidamount,
    		sum(case when a.game_kind = 21 then a.validamount else 0 end) AS liveAGValidamount,0 as liveAGWater,0 as liveAgCalcValidamount,
				sum(case when a.game_kind = 21 then a.validamount else 0 end) AS liveAgUncalcValidamount,
				sum(case when a.game_kind = 23 then a.validamount else 0 end) AS liveOgValidamount,0 as liveOgWater,0 as liveOgCalcValidamount,
				sum(case when a.game_kind = 23 then a.validamount else 0 end) AS liveOgUncalcValidamount,
    		
				sum(case when a.game_kind IN(5,15,22,53) then a.validamount else 0 end) AS gameValidamount,0 AS gameWater,
    		sum(case when a.game_kind IN(5,15) then a.validamount else 0 end) AS bbGameValidamount,0 as bbGameWater,0 as bbGameCalcValidamount,
				sum(case when a.game_kind IN(5,15) then a.validamount else 0 end) AS bbgameUncalcValidamount,
    		sum(case when a.game_kind = 53 then a.validamount else 0 end) AS dsGameValidamount,0 as dsGameWater,0 as dsGameCalcValidamount,
				sum(case when a.game_kind = 53 then a.validamount else 0 end) AS dsgameUncalcValidamount,
    		sum(case when a.game_kind = 22 then a.validamount else 0 end) AS agGameValidamount,0 as agGameWater,0 as agGameCalcValidamount,
				sum(case when a.game_kind = 22 then a.validamount else 0 end) AS aggameUncalcValidamount,

				sum(case when a.game_kind IN(51,52,55) and a.game_type not IN (51001) then a.validamount else 0 end) AS lottoValidamount,0 AS lottoWater,
    		sum(case when a.game_kind = 51 and a.game_type not IN (51001) then a.validamount else 0 end) AS xiaoyuLottoValidamount,0 as xiaoyuLottoWater,0 as xiaoyuLottoCalcValidamount,
				sum(case when a.game_kind = 51 and a.game_type not IN (51001) then a.validamount else 0 end) AS xiaoyuLottoUncalcValidamount,
    		sum(case when a.game_kind = 52 then a.validamount else 0 end) AS fenfenLottoValidamount,0 as fenfenLottoWater,0 as fenfenLottoCalcValidamount,
				sum(case when a.game_kind = 52 then a.validamount else 0 end) AS fenfenLottoUncalcValidamount,
				sum(case when a.game_kind = 55 then a.validamount else 0 end) AS chuantongLottoValidamount,0 as chuantongLottoWater,0 as chuantongLottoCalcValidamount,
				sum(case when a.game_kind = 55 then a.validamount else 0 end) AS chuantongLottoUncalcValidamount,

        sum(case when a.game_kind IN(54) or a.game_type IN (51001) then a.validamount else 0 end) AS hongkongValidamount,0 AS hongkongWater,
    		sum(case when a.game_kind = 51 and a.game_type IN (51001) then a.validamount else 0 end) AS xiaoyuHongkongValidamount,0 as xiaoyuHongkongWater,0 as xiaoyuHongkongCalcValidamount,
				sum(case when a.game_kind = 51 and a.game_type IN (51001) then a.validamount else 0 end) AS xiaoyuHongkongUncalcValidamount,
				sum(case when a.game_kind = 54 then a.validamount else 0 end) AS dsHongkongValidamount,0 as dsHongkongWater,0 as dsHongkongCalcValidamount,
				sum(case when a.game_kind = 54 then a.validamount else 0 end) AS dsHongkongUncalcValidamount,


				sum(case when a.game_kind IN (1,42) then a.validamount else 0 end) AS sportValidamount,0 AS sportWater,
    		sum(case when a.game_kind = 1 then a.validamount else 0 end) AS bbSportValidamount,0 as bbSportWater,0 as bbSportCalcValidamount,
				sum(case when a.game_kind = 1 then a.validamount else 0 end) AS bbSportUncalcValidamount,
    		sum(case when a.game_kind = 42 then a.validamount else 0 end) AS h8Validamount,0 as h8Water,0 as h8CalcValidamount,
				sum(case when a.game_kind = 42 then a.validamount else 0 end) AS h8UncalcValidamount
    		

				from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,'group by b.agents,a.username');
    

		SET @s2 = CONCAT('select count(*) into @totalCount from (',v_sql,') a');
		PREPARE tc FROM @s2; 
    EXECUTE tc; 
    DEALLOCATE PREPARE tc;
		SET totalCount  = @totalCount;
    
    SET @SQL=CONCAT(v_sql, ' limit ',((start_index-1)*record_count),',',record_count);
    PREPARE s1 FROM @SQL; 
    EXECUTE s1; 
    DEALLOCATE PREPARE s1;
    END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for test
-- ----------------------------
DROP PROCEDURE IF EXISTS `test`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `test`()
BEGIN
    DECLARE v_siteId INT;
    DECLARE v_betTimeBegin VARCHAR(20);
    DECLARE v_betTimeEnd  VARCHAR(20);
    DECLARE v_username VARCHAR(100);
    DECLARE v_agentLevel VARCHAR(100);
    DECLARE v_liveId INT;
    DECLARE v_gameKind INT;
    DECLARE v_gameType INT;
    DECLARE v_betStatus VARCHAR(10) DEFAULT '1';
    DECLARE v_condition VARCHAR(1000);
    DECLARE v_index INT;
    DECLARE v_substr VARCHAR(100);
    DECLARE v_subIndex INT;
    DECLARE v_fieldName VARCHAR(100);
    DECLARE v_fieldValue VARCHAR(100);
    DECLARE v_sql VARCHAR(2000);
    DECLARE v_where VARCHAR(500);
    
    SET v_index = 0;
    SET v_subIndex = 0;
    SET v_subStr = '';
    SET v_fieldName = '';
    SET v_fieldValue = '';
    SET v_condition = 'siteId|1;betTimeBegin|2015-11-24;betTimeEnd|2015-11-24;agentLevel|Branch;betStatus|1;';
    SET v_where = '';
    condition_loop:LOOP
      IF(v_condition = '') THEN
	LEAVE condition_loop ;
      END IF;
      IF(v_condition <> '') THEN
	SET v_index = LOCATE(';',v_condition);
	IF(v_index >0) THEN
	  SET v_substr = SUBSTRING(v_condition,1,v_index-1);
	  SET v_condition = SUBSTRING(v_condition,v_index+1,LENGTH(v_condition)-v_index);
	ELSE
	  SET v_substr = v_condition;
	  SET v_condition = '';	
	END IF;
	SET v_subIndex = LOCATE('|',v_substr); 
	IF(v_subIndex > 0) THEN
	  SET v_fieldName = SUBSTRING(v_substr,1,v_subIndex-1);
	  SET v_fieldValue = SUBSTRING(v_substr,v_subIndex+1,LENGTH(v_substr)-v_subIndex);
	END IF;
				
	IF(v_fieldName = 'siteId') THEN
	  SET v_siteId = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.site_id = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'betTimeBegin') THEN
	  SET v_betTimeBegin = v_fieldValue;
	  SET v_where = CONCAT(v_where,' and a.bet_time >= CONCAT(''',v_betTimeBegin,''','' 00:00:00'') ');
	ELSEIF(v_fieldName = 'betTimeEnd') THEN
	  SET v_betTimeEnd = v_fieldValue;
	  SET v_where = CONCAT(v_where,' and a.bet_time < CONCAT(''',v_betTimeEnd,''','' 23:59:59'') ');
	ELSEIF(v_fieldName = 'agentLevel') THEN
	  SET v_agentLevel = LOWER(v_fieldValue);
	ELSEIF(v_fieldName = 'username') THEN
	  SET v_username = REPLACE(v_fieldValue ,',',''',''');
	ELSEIF(v_fieldName = 'liveId') THEN
	  SET v_liveId = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.live_id = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'gameKind') THEN
	  SET v_gameKind = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.game_kind = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'gameType') THEN
	  SET v_gameType = CAST(v_fieldValue AS SIGNED);
	  SET v_where = CONCAT(v_where,' and a.game_type = CAST(''',v_fieldValue,''' AS SIGNED) ');
	ELSEIF(v_fieldName = 'betStatus') THEN
	  SET v_betStatus = v_fieldValue;
	END IF;
	IF(v_condition = '') THEN
	  LEAVE condition_loop ;
	END IF;	
      END IF;
    END LOOP;
    
    IF(v_agentLevel = 'superior')THEN 
      SET v_where = CONCAT(v_where,' and b.superior in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'member')THEN
      SET v_where = CONCAT(v_where,' and b.username in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'corprator')THEN  
      SET v_where = CONCAT(v_where,' and b.corprator in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'world')THEN
      SET v_where = CONCAT(v_where,' and b.world in (''',v_username,''') ');
    ELSEIF(v_agentLevel = 'agent')THEN 
      SET v_where = CONCAT(v_where,' and b.agents in (''',v_username,''') ');
    END IF;
    
    IF(v_agentLevel = 'superior')THEN 
      IF(v_gameKind != '') THEN
	SET v_sql =  CONCAT('select b.Corprator as username,a.site_id, a.game_kind, max(a.game_kind_name) as game_kind_name,sum(a.bet_count) AS bet_count, SUM(a.betamount) AS betamount, SUM(a.winlose) AS winlose,SUM(a.validamount) AS validamount, 
	          max(b.agents) as agents,max(b.world) as world,max(b.corprator) as corprator,max(b.superior) as superior,
	          SUM(a.comm_agent) AS comm_agent,SUM(a.comm_world)AS comm_world,SUM(a.comm_corprator) AS comm_corprator, SUM(a.comm_superior) comm_superior,SUM(a.comm_branch) comm_branch
		from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.Corprator,a.site_id,a.game_kind ');
      ELSE
        SET v_sql =  CONCAT(' select b.Corprator as username,a.site_id, 0 as game_kind, ''总计'' as game_kind_name,sum(a.bet_count) AS bet_count, SUM(a.betamount) AS betamount, SUM(a.winlose) AS winlose,SUM(a.validamount) AS validamount, 
		          max(b.agents) as agents,max(b.world) as world,max(b.corprator) as corprator,max(b.superior) as superior,
		          SUM(a.comm_agent) AS comm_agent,SUM(a.comm_world)AS comm_world,SUM(a.comm_corprator) AS comm_corprator, SUM(a.comm_superior) comm_superior,SUM(a.comm_branch) comm_branch
		    from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.Corprator,a.site_id
		    UNION ALL
		    select b.Corprator as username,a.site_id, a.game_kind, max(a.game_kind_name) as game_kind_name,sum(a.bet_count) AS bet_count, SUM(a.betamount) AS betamount, SUM(a.winlose) AS winlose,SUM(a.validamount) AS validamount, 
	          max(b.agents) as agents,max(b.world) as world,max(b.corprator) as corprator,max(b.superior) as superior,
	          SUM(a.comm_agent) AS comm_agent,SUM(a.comm_world)AS comm_world,SUM(a.comm_corprator) AS comm_corprator, SUM(a.comm_superior) comm_superior,SUM(a.comm_branch) comm_branch
		from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.Corprator,a.site_id,a.game_kind ');
      END IF; 
    ELSEIF(v_agentLevel = 'corprator')THEN  
      IF(v_gameKind != '') THEN
        SET v_sql = CONCAT( 'select b.World as username,a.site_id, a.game_kind, max(a.game_kind_name) as game_kind_name,sum(a.bet_count) AS bet_count, SUM(a.betamount) AS betamount, SUM(a.winlose) AS winlose,SUM(a.validamount) AS validamount, 
	          max(b.agents) as agents,max(b.world) as world,max(b.corprator) as corprator,max(b.superior) as superior,
	          SUM(a.comm_agent) AS comm_agent,SUM(a.comm_world)AS comm_world,SUM(a.comm_corprator) AS comm_corprator, SUM(a.comm_superior) comm_superior,SUM(a.comm_branch) comm_branch
		from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.World,a.site_id,a.game_kind ');
      ELSE
        SET v_sql =  CONCAT(' select b.World as username,a.site_id, 0 as game_kind, ''总计'' as game_kind_name,sum(a.bet_count) AS bet_count, SUM(a.betamount) AS betamount, SUM(a.winlose) AS winlose,SUM(a.validamount) AS validamount, 
		          max(b.agents) as agents,max(b.world) as world,max(b.corprator) as corprator,max(b.superior) as superior,
		          SUM(a.comm_agent) AS comm_agent,SUM(a.comm_world)AS comm_world,SUM(a.comm_corprator) AS comm_corprator, SUM(a.comm_superior) comm_superior,SUM(a.comm_branch) comm_branch
		    from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.World,a.site_id
		    UNION ALL
		    select b.World as username,a.site_id, a.game_kind, max(a.game_kind_name) as game_kind_name,sum(a.bet_count) AS bet_count, SUM(a.betamount) AS betamount, SUM(a.winlose) AS winlose,SUM(a.validamount) AS validamount, 
	          max(b.agents) as agents,max(b.world) as world,max(b.corprator) as corprator,max(b.superior) as superior,
	          SUM(a.comm_agent) AS comm_agent,SUM(a.comm_world)AS comm_world,SUM(a.comm_corprator) AS comm_corprator, SUM(a.comm_superior) comm_superior,SUM(a.comm_branch) comm_branch
		from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.World,a.site_id,a.game_kind ');
      END IF; 
    ELSEIF(v_agentLevel = 'world')THEN
      IF(v_gameKind != '') THEN
	SET v_sql =  CONCAT('select b.agents as username,a.site_id, a.game_kind, max(a.game_kind_name) as game_kind_name,sum(a.bet_count) AS bet_count, SUM(a.betamount) AS betamount, SUM(a.winlose) AS winlose,SUM(a.validamount) AS validamount, 
	          max(b.agents) as agents,max(b.world) as world,max(b.corprator) as corprator,max(b.superior) as superior,
	          SUM(a.comm_agent) AS comm_agent,SUM(a.comm_world)AS comm_world,SUM(a.comm_corprator) AS comm_corprator, SUM(a.comm_superior) comm_superior,SUM(a.comm_branch) comm_branch
		from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.agents,a.site_id,a.game_kind ');
      ELSE
        SET v_sql =  CONCAT(' select b.agents as username,a.site_id, 0 as game_kind, ''总计'' as game_kind_name,sum(a.bet_count) AS bet_count, SUM(a.betamount) AS betamount, SUM(a.winlose) AS winlose,SUM(a.validamount) AS validamount, 
		          max(b.agents) as agents,max(b.world) as world,max(b.corprator) as corprator,max(b.superior) as superior,
		          SUM(a.comm_agent) AS comm_agent,SUM(a.comm_world)AS comm_world,SUM(a.comm_corprator) AS comm_corprator, SUM(a.comm_superior) comm_superior,SUM(a.comm_branch) comm_branch
		    from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.agents,a.site_id
		    UNION ALL
		    select b.agents as username,a.site_id, a.game_kind, max(a.game_kind_name) as game_kind_name,sum(a.bet_count) AS bet_count, SUM(a.betamount) AS betamount, SUM(a.winlose) AS winlose,SUM(a.validamount) AS validamount, 
	          max(b.agents) as agents,max(b.world) as world,max(b.corprator) as corprator,max(b.superior) as superior,
	          SUM(a.comm_agent) AS comm_agent,SUM(a.comm_world)AS comm_world,SUM(a.comm_corprator) AS comm_corprator, SUM(a.comm_superior) comm_superior,SUM(a.comm_branch) comm_branch
		from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.agents,a.site_id,a.game_kind ');
      END IF;
    ELSEIF(v_agentLevel = 'agent')THEN 
      IF(v_gameKind != '') THEN
        SET v_sql = CONCAT('select b.username as username,a.site_id, a.game_kind, max(a.game_kind_name) as game_kind_name,sum(a.bet_count) AS bet_count, SUM(a.betamount) AS betamount, SUM(a.winlose) AS winlose,SUM(a.validamount) AS validamount, 
	          max(b.agents) as agents,max(b.world) as world,max(b.corprator) as corprator,max(b.superior) as superior,
	          SUM(a.comm_agent) AS comm_agent,SUM(a.comm_world)AS comm_world,SUM(a.comm_corprator) AS comm_corprator, SUM(a.comm_superior) comm_superior,SUM(a.comm_branch) comm_branch
		from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.username,a.site_id,a.game_kind ');
      ELSE
	SET v_sql =  CONCAT(' select b.username as username,a.site_id, 0 as game_kind, ''总计'' as game_kind_name,sum(a.bet_count) AS bet_count, SUM(a.betamount) AS betamount, SUM(a.winlose) AS winlose,SUM(a.validamount) AS validamount, 
		          max(b.agents) as agents,max(b.world) as world,max(b.corprator) as corprator,max(b.superior) as superior,
		          SUM(a.comm_agent) AS comm_agent,SUM(a.comm_world)AS comm_world,SUM(a.comm_corprator) AS comm_corprator, SUM(a.comm_superior) comm_superior,SUM(a.comm_branch) comm_branch
		    from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.username,a.site_id
		    UNION ALL
		    select b.username as username,a.site_id, a.game_kind, max(a.game_kind_name) as game_kind_name,sum(a.bet_count) AS bet_count, SUM(a.betamount) AS betamount, SUM(a.winlose) AS winlose,SUM(a.validamount) AS validamount, 
	          max(b.agents) as agents,max(b.world) as world,max(b.corprator) as corprator,max(b.superior) as superior,
	          SUM(a.comm_agent) AS comm_agent,SUM(a.comm_world)AS comm_world,SUM(a.comm_corprator) AS comm_corprator, SUM(a.comm_superior) comm_superior,SUM(a.comm_branch) comm_branch
		from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.username,a.site_id,a.game_kind ');
      END IF;
    ELSE
      IF(v_gameKind != '') THEN
	SET v_sql = CONCAT('select b.superior as username,a.site_id, a.game_kind, max(a.game_kind_name) as game_kind_name,sum(a.bet_count) AS bet_count, SUM(a.betamount) AS betamount, SUM(a.winlose) AS winlose,SUM(a.validamount) AS validamount, 
	          max(b.agents) as agents,max(b.world) as world,max(b.corprator) as corprator,max(b.superior) as superior,
	          SUM(a.comm_agent) AS comm_agent,SUM(a.comm_world)AS comm_world,SUM(a.comm_corprator) AS comm_corprator, SUM(a.comm_superior) comm_superior,SUM(a.comm_branch) comm_branch
		from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.superior,a.site_id,a.game_kind ');
      ELSE
        SET v_sql = CONCAT(' select b.superior as username,a.site_id, 0 as game_kind, ''总计'' as game_kind_name,sum(a.bet_count) AS bet_count, SUM(a.betamount) AS betamount, SUM(a.winlose) AS winlose,SUM(a.validamount) AS validamount, 
		          max(b.agents) as agents,max(b.world) as world,max(b.corprator) as corprator,max(b.superior) as superior,
		          SUM(a.comm_agent) AS comm_agent,SUM(a.comm_world)AS comm_world,SUM(a.comm_corprator) AS comm_corprator, SUM(a.comm_superior) comm_superior,SUM(a.comm_branch) comm_branch
		    from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.superior,a.site_id
		    UNION ALL
		    select b.superior as username,a.site_id, a.game_kind, max(a.game_kind_name) as game_kind_name,sum(a.bet_count) AS bet_count, SUM(a.betamount) AS betamount, SUM(a.winlose) AS winlose,SUM(a.validamount) AS validamount, 
	          max(b.agents) as agents,max(b.world) as world,max(b.corprator) as corprator,max(b.superior) as superior,
	          SUM(a.comm_agent) AS comm_agent,SUM(a.comm_world)AS comm_world,SUM(a.comm_corprator) AS comm_corprator, SUM(a.comm_superior) comm_superior,SUM(a.comm_branch) comm_branch
		from ds_report a ,ds_member b where a.site_id =b.site_id and a.username=b.username ',v_where,' group by b.superior,a.site_id,a.game_kind ');
      END IF;
    END IF;
    
    
    SET @SQL=v_sql;
		SELECT CONCAT(v_sql,'');
    PREPARE s1 FROM @SQL; 
    EXECUTE s1; 
    DEALLOCATE PREPARE s1;
    
    END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for Update_UserMoney
-- ----------------------------
DROP PROCEDURE IF EXISTS `Update_UserMoney`;
DELIMITER ;;
CREATE DEFINER=`kkw_center`@`%` PROCEDURE `Update_UserMoney`(IN `uid` INT, IN `orderMoney` DECIMAL(12,2), IN `orderID` INT, IN `orderNotes` VARCHAR(20), IN `actRESULT` INT, IN `modelID` INT, OUT `resultState` INT, OUT `resultInfo` VARCHAR(20))
    MODIFIES SQL DATA
BEGIN
	
      DECLARE memberUserName VARCHAR(30) DEFAULT '';
      DECLARE memberMoney DECIMAL(12,2);
      DECLARE memberAgents VARCHAR(10) DEFAULT '';
      DECLARE memberWorld VARCHAR(10) DEFAULT '';
      DECLARE memberCorprator VARCHAR(10) DEFAULT '';
      DECLARE memberSuper VARCHAR(10) DEFAULT '';
      DECLARE memberAdmin VARCHAR(10) DEFAULT '';
      DECLARE memberDepositBankMaxAmount INT(11) DEFAULT 0;
      DECLARE memberLevel VARCHAR(11) DEFAULT 0;
      DECLARE t_error INTEGER DEFAULT 0; 
      DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;
      /*  读取当前会员信息 */
      SELECT UserName,Money,Agents,World,Corprator,SUPER,Admin,DepositBankMaxAmount,`Level` INTO memberUserName,memberMoney,memberAgents,memberWorld,memberCorprator,memberSuper,memberAdmin,memberDepositBankMaxAmount,memberLevel FROM web_member_data WHERE ID=uid LIMIT 1 FOR UPDATE;
     IF memberUserName = '' OR memberAgents='' OR memberWorld='' OR memberCorprator='' OR memberSuper='' OR memberAdmin='' THEN
               SELECT 0,'会员信息不存在' INTO resultState,resultInfo;
               SELECT 0 AS resultState,'会员信息不存在' AS resultInfo;
     ELSE 
               START TRANSACTION;
               UPDATE web_member_data SET Money=Money+orderMoney WHERE ID=uid LIMIT 1;
               SET  orderNotes = REPLACE(orderNotes,'{orderMoney}',orderMoney);
               SET  orderNotes = REPLACE(orderNotes,'{memberMoney}',memberMoney);
               SET  orderNotes = REPLACE(orderNotes,'{updateMoney}',memberMoney+orderMoney);
               INSERT INTO web_sys800_data (userid,ACT_RESULT, ModelID,Gold,MIN_SUM,UserName,Agents,World,Corprator,SUPER,Admin,CurType,DATE,PS,Notes,LevelName,bankid,fingerprint) VALUES 
                (uid,actRESULT,modelID,orderMoney,(memberMoney+orderMoney),memberUserName,memberAgents,memberWorld,memberCorprator,memberSuper,memberAdmin,'RMB',NOW(),orderID,orderNotes,memberLevel,0,'');
                
		IF actRESULT = 9 OR  actRESULT = 12 THEN
               		IF orderMoney > memberDepositBankMaxAmount THEN
               			UPDATE web_member_data SET DepositBankCount=DepositBankCount+1,DepositBankTotalAmount=DepositBankTotalAmount+orderMoney,DepositBankMaxAmount=orderMoney WHERE ID=uid LIMIT 1;
               		ELSE
               			UPDATE web_member_data SET DepositBankCount=DepositBankCount+1,DepositBankTotalAmount=DepositBankTotalAmount+orderMoney WHERE ID=uid LIMIT 1;
               		END IF;
               		
               ELSEIF actRESULT = 17 THEN
               		UPDATE web_member_data SET WithdrawalCount=WithdrawalCount+1,WithdrawalTotalAmount=WithdrawalTotalAmount-orderMoney WHERE ID=uid LIMIT 1;
               END IF;
              
               IF t_error = 1 THEN 
                     ROLLBACK; 
                     SELECT 0,'事务执行错误' INTO resultState,resultInfo;
                     SELECT 0 AS resultState,'事务执行错误' AS resultInfo;
               ELSE 
                     COMMIT; 
                     SELECT 1,'' INTO resultState,resultInfo;
                     SELECT 1 AS resultState,'' AS resultInfo;
               END IF;
     END IF;
	
END
;;
DELIMITER ;
