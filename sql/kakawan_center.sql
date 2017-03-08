/*
Navicat MySQL Data Transfer

Source Server         : money-center
Source Server Version : 50505
Source Host           : 172.25.10.56:3306
Source Database       : kakawan_center

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-03-08 13:53:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for api_agent
-- ----------------------------
DROP TABLE IF EXISTS `api_agent`;
CREATE TABLE `api_agent` (
  `agent` varchar(255) NOT NULL,
  `hashcode` varchar(50) NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `memo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`agent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='对外代理配置中心';

-- ----------------------------
-- Table structure for api_agent_ip
-- ----------------------------
DROP TABLE IF EXISTS `api_agent_ip`;
CREATE TABLE `api_agent_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `name` varchar(50) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `memo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip` (`ip`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

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
  `validate_report_select_sql` mediumtext,
  `vaildate_detail_table_select_sql` mediumtext,
  `delete_report_sql` mediumtext,
  `delete_temp_table_sql` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `newsID` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `theTime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM AUTO_INCREMENT=945 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_ag_live
-- ----------------------------
DROP TABLE IF EXISTS `ds_ag_live`;
CREATE TABLE `ds_ag_live` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) DEFAULT NULL,
  `user_pre` varchar(5) DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `player_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_bbin_3d
-- ----------------------------
DROP TABLE IF EXISTS `ds_bbin_3d`;
CREATE TABLE `ds_bbin_3d` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='BBIN体育，3D，机率注单都放在此表';

-- ----------------------------
-- Table structure for ds_bbin_jilv
-- ----------------------------
DROP TABLE IF EXISTS `ds_bbin_jilv`;
CREATE TABLE `ds_bbin_jilv` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='BBIN体育，3D，机率注单都放在此表';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='BBIN体育，3D，机率注单都放在此表';

-- ----------------------------
-- Table structure for ds_bbin_live
-- ----------------------------
DROP TABLE IF EXISTS `ds_bbin_live`;
CREATE TABLE `ds_bbin_live` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_bbin_sport
-- ----------------------------
DROP TABLE IF EXISTS `ds_bbin_sport`;
CREATE TABLE `ds_bbin_sport` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='BBIN体育，3D，机率注单都放在此表';

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
-- Table structure for ds_fenfen_game
-- ----------------------------
DROP TABLE IF EXISTS `ds_fenfen_game`;
CREATE TABLE `ds_fenfen_game` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `qishu` varchar(15) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `result` varchar(10) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_fenfen_game_log
-- ----------------------------
DROP TABLE IF EXISTS `ds_fenfen_game_log`;
CREATE TABLE `ds_fenfen_game_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `qishu` varchar(20) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
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
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
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
  `play_sum` varchar(255) DEFAULT NULL,
  `play_multiple` varchar(255) DEFAULT NULL,
  `play_amount` varchar(255) DEFAULT NULL,
  `play_win` varchar(255) DEFAULT NULL,
  `play_mode` varchar(255) DEFAULT NULL,
  `play_info` varchar(200) DEFAULT NULL,
  `odds` mediumtext,
  `state` int(11) DEFAULT NULL COMMENT '1、投注扣款  2、派彩赢加款   2、派彩输扣款   4、撤销加款"',
  `win_loss_type` tinyint(4) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `billno` (`billno`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8588 DEFAULT CHARSET=utf8 COMMENT='DS彩票';

-- ----------------------------
-- Table structure for ds_fenfen_lotto_agent
-- ----------------------------
DROP TABLE IF EXISTS `ds_fenfen_lotto_agent`;
CREATE TABLE `ds_fenfen_lotto_agent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `billno` varchar(50) DEFAULT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
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
  `play_mode` varchar(255) DEFAULT NULL,
  `play_sum` varchar(255) DEFAULT NULL,
  `play_multiple` varchar(255) DEFAULT NULL,
  `play_amount` varchar(255) DEFAULT NULL,
  `play_win` varchar(255) DEFAULT NULL,
  `play` mediumtext,
  `odds` varchar(20) DEFAULT NULL,
  `state` int(11) DEFAULT NULL COMMENT '1、投注扣款  2、派彩赢加款   2、派彩输扣款   4、撤销加款"',
  `win_loss_type` tinyint(4) DEFAULT NULL,
  `lotto_id` bigint(20) DEFAULT NULL,
  `item_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `billno` (`billno`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='DS彩票';

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
) ENGINE=InnoDB AUTO_INCREMENT=14652 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_fenfen_saibao
-- ----------------------------
DROP TABLE IF EXISTS `ds_fenfen_saibao`;
CREATE TABLE `ds_fenfen_saibao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `qishu` varchar(15) DEFAULT NULL,
  `result` varchar(10) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  UNIQUE KEY `order` (`order_asc`) USING BTREE,
  KEY `game_kind` (`game_kind`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='报表游戏种类排序';

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
-- Table structure for ds_ip_game
-- ----------------------------
DROP TABLE IF EXISTS `ds_ip_game`;
CREATE TABLE `ds_ip_game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `name` varchar(50) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `memo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip` (`ip`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=11308 DEFAULT CHARSET=utf8;

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
  `poker_list` mediumtext,
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
  `sequence_no` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `billno` (`billno`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7023 DEFAULT CHARSET=utf8 COMMENT='DS视讯表';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `tray` varchar(5) DEFAULT NULL COMMENT '游戏盘口类型: A,B,C',
  `bet_time` datetime DEFAULT NULL COMMENT '下注时间',
  `bet_id` varchar(40) DEFAULT NULL COMMENT '下注code唯一值',
  `lottery_game_type` varchar(50) DEFAULT NULL,
  `game_info_id` int(11) DEFAULT NULL COMMENT '游戏类型 1:广东快乐十分 2:重庆时时彩3:北京赛车 4:江苏骰宝 5:幸运农场',
  `game_no` varchar(30) DEFAULT NULL COMMENT '期号',
  `bet_on` varchar(200) DEFAULT NULL COMMENT '下注类型',
  `bet_type` varchar(200) DEFAULT NULL COMMENT '下注类型详细',
  `odds` double(8,3) DEFAULT NULL COMMENT '赔率',
  `bet_detail` varchar(2000) DEFAULT NULL COMMENT '下注明细',
  `stake_amount` double(18,2) DEFAULT NULL COMMENT '下注额',
  `valid_stake` double(18,2) DEFAULT NULL COMMENT '有效下注额',
  `win_loss` double(18,2) DEFAULT NULL COMMENT '输赢',
  `win_loss_type` tinyint(3) DEFAULT NULL COMMENT '输赢类型',
  `ip` varchar(20) DEFAULT NULL COMMENT '用户下注时的ip',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `sequence_no` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `billno` (`billno`) USING BTREE,
  KEY `site_id` (`site_id`) USING BTREE,
  KEY `lottery_game_type` (`lottery_game_type`) USING BTREE,
  KEY `bet_id_index` (`bet_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1701870 DEFAULT CHARSET=utf8;

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
  UNIQUE KEY `game_info_id` (`game_info_id`,`bet_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1160 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_lotto_bet
-- ----------------------------
DROP TABLE IF EXISTS `ds_lotto_bet`;
CREATE TABLE `ds_lotto_bet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `billno` bigint(20) DEFAULT NULL COMMENT '游戏平台记录 begin_id',
  `site_id` int(8) DEFAULT NULL COMMENT '网站 id',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `tray` varchar(5) DEFAULT NULL COMMENT '游戏盘口类型  A,B,C,D',
  `bet_time` datetime DEFAULT NULL COMMENT '下注时间',
  `bet_id` varchar(40) DEFAULT NULL COMMENT '下注时唯一 code',
  `game_no` varchar(15) DEFAULT NULL COMMENT '期数',
  `bet_on_id` varchar(200) DEFAULT NULL COMMENT '下注类型 id',
  `bet_type_id` varchar(200) DEFAULT NULL COMMENT '下注类型详细 id',
  `bet_details_id` varchar(2000) DEFAULT NULL COMMENT '下注类型详细',
  `odds` double(8,3) DEFAULT NULL COMMENT '赔率',
  `stake_amount` double(18,2) DEFAULT NULL COMMENT '下注额',
  `valid_stake` double(18,2) DEFAULT NULL COMMENT '有效下注额',
  `win_loss` double(18,2) DEFAULT NULL COMMENT '输赢',
  `odds2` double(8,3) DEFAULT NULL COMMENT '赔率2 针对三中二中三，二中特中特',
  `win_loss_type` tinyint(5) DEFAULT NULL COMMENT '输赢类型',
  `ip` varchar(20) DEFAULT NULL COMMENT 'IP 限制',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `bet_id_index` (`bet_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_lotto_bet_detail
-- ----------------------------
DROP TABLE IF EXISTS `ds_lotto_bet_detail`;
CREATE TABLE `ds_lotto_bet_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bet_detail_id` varchar(11) DEFAULT NULL,
  `bet_detail_id_expain` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_lotto_bet_on
-- ----------------------------
DROP TABLE IF EXISTS `ds_lotto_bet_on`;
CREATE TABLE `ds_lotto_bet_on` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bet_on_id` int(11) DEFAULT NULL,
  `bet_on_id_expain` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_lotto_bet_type
-- ----------------------------
DROP TABLE IF EXISTS `ds_lotto_bet_type`;
CREATE TABLE `ds_lotto_bet_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bet_type_id` int(11) DEFAULT NULL,
  `bet_type_id_expain` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=327 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_m8_sport
-- ----------------------------
DROP TABLE IF EXISTS `ds_m8_sport`;
CREATE TABLE `ds_m8_sport` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fetch_id` bigint(20) DEFAULT NULL,
  `bet_id` varchar(20) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
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
  KEY `flag` (`flag`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_manniu_bet
-- ----------------------------
DROP TABLE IF EXISTS `ds_manniu_bet`;
CREATE TABLE `ds_manniu_bet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `log_id` bigint(20) DEFAULT NULL,
  `bet_billno` varchar(80) DEFAULT NULL COMMENT '注单编号',
  `site_id` int(11) DEFAULT NULL COMMENT '网站ID',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `playname` varchar(55) DEFAULT NULL COMMENT '玩家姓名',
  `after_balance` decimal(18,5) DEFAULT NULL COMMENT '余额',
  `bet_money` decimal(18,5) DEFAULT NULL COMMENT '下注金额',
  `bet_msg` varchar(20) DEFAULT NULL COMMENT '下注信息',
  `bet_num` int(20) DEFAULT NULL COMMENT '下注数字',
  `bet_type` varchar(20) DEFAULT NULL COMMENT '下注类型',
  `game_type` varchar(10) DEFAULT NULL COMMENT '游戏类型',
  `pay_off` decimal(20,5) DEFAULT NULL,
  `state` int(11) DEFAULT NULL COMMENT '1:下注, 2:派彩赢, 3:派彩输, 4:撤销',
  `table_id` int(11) DEFAULT NULL,
  `term` bigint(20) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL,
  `bet_odds1314` varchar(20) DEFAULT NULL COMMENT '1314赔率',
  `bet_odds_expected` varchar(20) DEFAULT NULL COMMENT '普通赔率',
  `win_lose_type` int(5) DEFAULT NULL COMMENT '1.为赢；2为输',
  PRIMARY KEY (`id`),
  UNIQUE KEY `log_id` (`log_id`) USING BTREE,
  UNIQUE KEY `bet_billno` (`bet_billno`) USING BTREE,
  KEY `site_id` (`site_id`) USING BTREE,
  KEY `index_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=1760009 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_member
-- ----------------------------
DROP TABLE IF EXISTS `ds_member`;
CREATE TABLE `ds_member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL COMMENT '网站名称',
  `site_name` varchar(12) DEFAULT NULL COMMENT '外接代理名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `agents` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `world` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `corprator` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `superior` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `company` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `comm_agent` decimal(18,2) DEFAULT NULL,
  `comm_world` decimal(18,2) DEFAULT NULL,
  `comm_corprator` decimal(18,2) DEFAULT NULL,
  `comm_superior` decimal(18,2) DEFAULT NULL,
  `comm_branch` decimal(18,2) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`site_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=58882 DEFAULT CHARSET=utf8 COMMENT='会员代理信息';

-- ----------------------------
-- Table structure for ds_member_point
-- ----------------------------
DROP TABLE IF EXISTS `ds_member_point`;
CREATE TABLE `ds_member_point` (
  `site_id` varchar(20) NOT NULL DEFAULT '',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `point` decimal(18,5) NOT NULL COMMENT '用户金额',
  `state` int(11) DEFAULT '50',
  PRIMARY KEY (`site_id`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_member_point_log
-- ----------------------------
DROP TABLE IF EXISTS `ds_member_point_log`;
CREATE TABLE `ds_member_point_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `site_id` varchar(20) DEFAULT NULL COMMENT '网站标识',
  `sitename` varchar(50) DEFAULT NULL COMMENT '网站名称',
  `from_key` varchar(50) DEFAULT NULL COMMENT '请求者网站url',
  `request_ip` varchar(15) DEFAULT NULL,
  `trans_id` varchar(200) NOT NULL,
  `from_key_type` varchar(50) DEFAULT NULL,
  `before_point` decimal(20,5) DEFAULT NULL,
  `remit` decimal(20,5) NOT NULL COMMENT '交易积分',
  `after_point` decimal(20,5) NOT NULL COMMENT '交易后用户积分',
  `trans_type` varchar(3) NOT NULL COMMENT '交易方式\r\n            in:转入          out：转出',
  `game_id` varchar(50) DEFAULT NULL,
  `game_type` varchar(50) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `memo` varchar(200) DEFAULT NULL COMMENT '备注',
  `valid_amount` decimal(18,5) DEFAULT NULL,
  `rate` decimal(20,5) DEFAULT NULL COMMENT '比率',
  PRIMARY KEY (`id`),
  KEY `site_id_index` (`site_id`) USING BTREE,
  KEY `from_key_type_index` (`from_key_type`) USING BTREE,
  KEY `username_index` (`username`) USING BTREE,
  KEY `trans_id_index` (`trans_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=190486 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_mg_game
-- ----------------------------
DROP TABLE IF EXISTS `ds_mg_game`;
CREATE TABLE `ds_mg_game` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `siteId` int(11) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `playername` varchar(30) DEFAULT NULL,
  `hor_key` varchar(50) DEFAULT NULL,
  `bet_col_id` varchar(50) DEFAULT NULL,
  `win_col_ids` mediumtext,
  `win_lose_type` int(11) DEFAULT NULL,
  `hor_ne_key` varchar(50) DEFAULT NULL,
  `mbr_ne_key` varchar(50) DEFAULT NULL,
  `bet_trans_key` varchar(50) DEFAULT NULL,
  `game_key` varchar(30) DEFAULT NULL,
  `game_code` varchar(30) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `product` varchar(20) DEFAULT NULL,
  `transaction_timestamp` bigint(20) DEFAULT NULL,
  `transaction_timestamp_date` datetime DEFAULT NULL,
  `amount` decimal(20,5) DEFAULT NULL,
  `validate_amount` decimal(20,5) DEFAULT NULL,
  `payoff` decimal(20,5) DEFAULT NULL,
  `mbr_code` varchar(30) DEFAULT NULL,
  `mbr_alias` varchar(50) DEFAULT NULL,
  `game_casino_id` varchar(60) DEFAULT NULL,
  `game_poker_id` varchar(30) DEFAULT NULL,
  `game_poker_type` varchar(30) DEFAULT NULL,
  `ref_type` varchar(30) DEFAULT NULL,
  `ref_key` varchar(30) DEFAULT NULL,
  `after_tx_wallet_amount` decimal(20,5) DEFAULT NULL,
  `mgs_game_id` varchar(10) DEFAULT NULL,
  `mgs_action_id` varchar(20) DEFAULT NULL,
  `clrng_amnt` decimal(20,5) DEFAULT NULL,
  `game_platform_type` varchar(10) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `memo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `col_id` (`bet_col_id`) USING BTREE,
  KEY `siteId` (`siteId`) USING BTREE,
  KEY `username` (`username`) USING BTREE,
  KEY `win_lose_type` (`win_lose_type`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `game_code` (`game_code`) USING BTREE,
  KEY `transaction_timestamp` (`transaction_timestamp`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3374 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_mg_game_config
-- ----------------------------
DROP TABLE IF EXISTS `ds_mg_game_config`;
CREATE TABLE `ds_mg_game_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` bigint(20) DEFAULT NULL,
  `agent_code` varchar(20) DEFAULT NULL,
  `agent_pre` varchar(10) DEFAULT NULL,
  `p_usm` varchar(20) DEFAULT NULL,
  `p_pwd` varchar(20) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `memo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_mg_record_time
-- ----------------------------
DROP TABLE IF EXISTS `ds_mg_record_time`;
CREATE TABLE `ds_mg_record_time` (
  `agent` varchar(11) NOT NULL,
  `last_get_record_time` datetime DEFAULT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `memo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`agent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_point
-- ----------------------------
DROP TABLE IF EXISTS `ds_point`;
CREATE TABLE `ds_point` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
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
  PRIMARY KEY (`id`),
  KEY `username` (`username`) USING BTREE,
  KEY `live_id` (`live_id`) USING BTREE,
  KEY `site_id` (`site_id`) USING BTREE,
  KEY `game_kind` (`game_kind`) USING BTREE,
  KEY `game_type` (`game_type`) USING BTREE,
  KEY `bet_time` (`bet_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8939 DEFAULT CHARSET=utf8 COMMENT='注单统计报表';

-- ----------------------------
-- Table structure for ds_point_config
-- ----------------------------
DROP TABLE IF EXISTS `ds_point_config`;
CREATE TABLE `ds_point_config` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `memo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_report
-- ----------------------------
DROP TABLE IF EXISTS `ds_report`;
CREATE TABLE `ds_report` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
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
  PRIMARY KEY (`id`),
  KEY `username` (`username`) USING BTREE,
  KEY `live_id` (`live_id`) USING BTREE,
  KEY `site_id` (`site_id`) USING BTREE,
  KEY `game_kind` (`game_kind`) USING BTREE,
  KEY `game_type` (`game_type`) USING BTREE,
  KEY `bet_time` (`bet_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9335 DEFAULT CHARSET=utf8 COMMENT='注单统计报表';

-- ----------------------------
-- Table structure for ds_xiaoyu_lotto
-- ----------------------------
DROP TABLE IF EXISTS `ds_xiaoyu_lotto`;
CREATE TABLE `ds_xiaoyu_lotto` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `from_lotto` int(11) DEFAULT NULL,
  `trans_id` varchar(50) DEFAULT NULL,
  `billno` varchar(50) DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='DS彩票';

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ds_xiaoyu_lotto_play_config
-- ----------------------------
DROP TABLE IF EXISTS `ds_xiaoyu_lotto_play_config`;
CREATE TABLE `ds_xiaoyu_lotto_play_config` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `lottoType` varchar(20) DEFAULT NULL,
  `codeId` varchar(5) DEFAULT NULL,
  `project` varchar(50) DEFAULT NULL,
  `paly` varchar(30) DEFAULT NULL,
  `status` int(10) DEFAULT NULL COMMENT '是否有效',
  `remark` varchar(20) DEFAULT NULL COMMENT '备注彩种',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Table structure for temp_ag_game
-- ----------------------------
DROP TABLE IF EXISTS `temp_ag_game`;
CREATE TABLE `temp_ag_game` (
  `id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for temp_ag_live
-- ----------------------------
DROP TABLE IF EXISTS `temp_ag_live`;
CREATE TABLE `temp_ag_live` (
  `id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for temp_audit_fenfen_lotto
-- ----------------------------
DROP TABLE IF EXISTS `temp_audit_fenfen_lotto`;
CREATE TABLE `temp_audit_fenfen_lotto` (
  `id` int(11) NOT NULL DEFAULT '0',
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
  `order_no` varchar(200) DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `bet_time` datetime DEFAULT NULL,
  `pay_amount` decimal(18,2) DEFAULT NULL,
  `bet_amount` decimal(18,2) DEFAULT NULL,
  `valid_amount` decimal(18,2) DEFAULT '0.00',
  `type` int(11) NOT NULL COMMENT '1:视讯 2:体育 3:彩票 4:机率 5:3d',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`) USING BTREE,
  KEY `live_id` (`live_id`) USING BTREE,
  KEY `order_no` (`order_no`) USING BTREE,
  KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20377361 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for temp_audit_video_game_wager
-- ----------------------------
DROP TABLE IF EXISTS `temp_audit_video_game_wager`;
CREATE TABLE `temp_audit_video_game_wager` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for temp_bbin_3d
-- ----------------------------
DROP TABLE IF EXISTS `temp_bbin_3d`;
CREATE TABLE `temp_bbin_3d` (
  `id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for temp_bbin_jilv
-- ----------------------------
DROP TABLE IF EXISTS `temp_bbin_jilv`;
CREATE TABLE `temp_bbin_jilv` (
  `id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for temp_bbin_live
-- ----------------------------
DROP TABLE IF EXISTS `temp_bbin_live`;
CREATE TABLE `temp_bbin_live` (
  `id` int(11) NOT NULL DEFAULT '0',
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
-- Table structure for temp_ds_live_lottery
-- ----------------------------
DROP TABLE IF EXISTS `temp_ds_live_lottery`;
CREATE TABLE `temp_ds_live_lottery` (
  `id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for temp_ds_lotto_bet
-- ----------------------------
DROP TABLE IF EXISTS `temp_ds_lotto_bet`;
CREATE TABLE `temp_ds_lotto_bet` (
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
-- Table structure for temp_h8_sport
-- ----------------------------
DROP TABLE IF EXISTS `temp_h8_sport`;
CREATE TABLE `temp_h8_sport` (
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for temp_manniu
-- ----------------------------
DROP TABLE IF EXISTS `temp_manniu`;
CREATE TABLE `temp_manniu` (
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for temp_video_game_wager
-- ----------------------------
DROP TABLE IF EXISTS `temp_video_game_wager`;
CREATE TABLE `temp_video_game_wager` (
  `id` bigint(20) NOT NULL,
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
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `accountId` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
