/*
Navicat MySQL Data Transfer

Source Server         : 119.9.92.185
Source Server Version : 50626
Source Host           : 119.9.92.185:3306
Source Database       : kakawan_center

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2017-03-11 19:37:25
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

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
  `bill_no` varchar(50) DEFAULT NULL,
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
  `play_type` varchar(50) DEFAULT NULL,
  `currency` varchar(5) DEFAULT NULL,
  `table_code` varchar(10) DEFAULT NULL,
  `login_ip` varchar(15) DEFAULT NULL,
  `recalcu_time` datetime DEFAULT NULL,
  `platform_id` varchar(10) DEFAULT NULL,
  `platform_type` varchar(50) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `round` varchar(5) DEFAULT NULL,
  `result` varchar(500) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='BBIN体育，3D，机率注单都放在此表';

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
  `odds` mediumtext,
  `state` int(11) DEFAULT NULL COMMENT '1、投注扣款  2、派彩赢加款   2、派彩输扣款   4、撤销加款"',
  `win_loss_type` tinyint(4) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `billno` (`billno`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=449626 DEFAULT CHARSET=utf8 COMMENT='DS彩票';

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
  `odds` mediumtext,
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
) ENGINE=InnoDB AUTO_INCREMENT=889940 DEFAULT CHARSET=utf8;

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
  UNIQUE KEY `order` (`order_asc`),
  KEY `game_kind` (`game_kind`)
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `live_member_report_details` mediumtext,
  `result_img_name` varchar(50) DEFAULT NULL,
  `flag` tinyint(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `billno` (`billno`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='DS视讯表';

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
  PRIMARY KEY (`id`),
  KEY `billno` (`billno`),
  KEY `site_id` (`site_id`),
  KEY `lottery_game_type` (`lottery_game_type`),
  KEY `bet_id_index` (`bet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  KEY `bet_id_index` (`bet_id`)
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
  KEY `flag` (`flag`)
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
  KEY `site_id` (`site_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=406325 DEFAULT CHARSET=utf8 COMMENT='会员代理信息';

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
  `game_casino_id` mediumtext,
  `game_poker_id` mediumtext,
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
  UNIQUE KEY `col_id` (`bet_col_id`),
  KEY `siteId` (`siteId`),
  KEY `username` (`username`),
  KEY `win_lose_type` (`win_lose_type`),
  KEY `type` (`type`),
  KEY `game_code` (`game_code`),
  KEY `transaction_timestamp` (`transaction_timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=2978 DEFAULT CHARSET=utf8;

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
-- Table structure for ds_og_live
-- ----------------------------
DROP TABLE IF EXISTS `ds_og_live`;
CREATE TABLE `ds_og_live` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `play_name` varchar(50) DEFAULT NULL,
  `betting_amount` decimal(18,5) DEFAULT NULL,
  `valid_amount` decimal(18,5) DEFAULT NULL,
  `win_lose_amount` decimal(18,5) DEFAULT NULL,
  `win_lose_type` int(11) DEFAULT NULL,
  `game_record_id` varchar(50) DEFAULT NULL,
  `order_number` varchar(50) DEFAULT NULL,
  `table_id` varchar(20) DEFAULT NULL,
  `stage` varchar(20) DEFAULT NULL,
  `inning` varchar(50) DEFAULT NULL,
  `game_name_id` varchar(20) DEFAULT NULL,
  `game_betting_kind` varchar(20) DEFAULT NULL,
  `game_betting_content` varchar(100) DEFAULT NULL,
  `result_type` varchar(20) DEFAULT NULL,
  `compensate_rate` varchar(20) DEFAULT NULL,
  `balance` decimal(18,5) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  `platform_id` varchar(10) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `game_result` varchar(10) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_id` (`product_id`) USING BTREE,
  KEY `site_id` (`site_id`),
  KEY `vendor_id` (`vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=975 DEFAULT CHARSET=utf8;

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
  KEY `username` (`username`),
  KEY `live_id` (`live_id`),
  KEY `site_id` (`site_id`),
  KEY `game_kind` (`game_kind`),
  KEY `game_type` (`game_type`),
  KEY `bet_time` (`bet_time`)
) ENGINE=InnoDB AUTO_INCREMENT=639419 DEFAULT CHARSET=utf8 COMMENT='注单统计报表';

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
  `from_lotto` int(11) DEFAULT NULL COMMENT '1:kg彩票  2：分分彩',
  `trans_id` varchar(50) DEFAULT NULL,
  `billno` varchar(50) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `lotto_name` varchar(50) DEFAULT NULL,
  `lotto_type` varchar(20) DEFAULT NULL,
  `qishu` varchar(30) DEFAULT NULL,
  `bet_amount` decimal(18,2) DEFAULT NULL,
  `valid_amount` decimal(18,2) DEFAULT NULL,
  `pay_off` decimal(18,2) DEFAULT NULL,
  `play_id` varchar(5) DEFAULT NULL COMMENT '玩法编号',
  `item` varchar(20) DEFAULT NULL,
  `bet_time` datetime DEFAULT NULL,
  `play` varchar(20) DEFAULT NULL,
  `handicap` varchar(5) DEFAULT NULL COMMENT '盘口 (A B C D 盘)',
  `play_info` varchar(50) DEFAULT NULL,
  `odds` varchar(20) DEFAULT NULL,
  `state` int(11) DEFAULT NULL COMMENT '1、投注扣款  2、派彩赢加款   2、派彩输扣款   4、撤销加款"',
  `win_loss_type` tinyint(4) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `open_time` datetime DEFAULT NULL COMMENT '开奖时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `billno` (`billno`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=505042 DEFAULT CHARSET=utf8 COMMENT='DS彩票';

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=1820 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=2835538 DEFAULT CHARSET=utf8;

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
-- Table structure for temp_audit_mg_game
-- ----------------------------
DROP TABLE IF EXISTS `temp_audit_mg_game`;
CREATE TABLE `temp_audit_mg_game` (
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for temp_audit_total
-- ----------------------------
DROP TABLE IF EXISTS `temp_audit_total`;
CREATE TABLE `temp_audit_total` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) DEFAULT NULL,
  `live_id` int(5) DEFAULT NULL,
  `order_no` varchar(50) DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=43974232 DEFAULT CHARSET=utf8;

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
-- Table structure for temp_mg
-- ----------------------------
DROP TABLE IF EXISTS `temp_mg`;
CREATE TABLE `temp_mg` (
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
) ENGINE=InnoDB AUTO_INCREMENT=1458870 DEFAULT CHARSET=utf8;

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
    
    SET v_sql = CONCAT(' SELECT c.agents,sum(case when c.validamount >= ', v_defValidamount,' then 1 else 0 end ) as userCount, sum(c.winlose) as winlose,sum(c.validamount) as validamount,
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
    
    SET v_sql = CONCAT(' SELECT c.agents,sum(case when c.validamount >= ', v_defValidamount,' then 1 else 0 end ) as userCount, sum(c.winlose) as winlose,sum(c.validamount) as validamount,
    sum(c.sportWinlose) as sportWinlose,sum(c.sportValidamount) as sportValidamount,sum(c.lottoWinlose) as lottoWinlose,
    sum(c.lottoValidamount) as lottoValidamount,sum(c.liveWinlose) as liveWinlose,sum(c.liveValidamount) as liveValidamount,
    sum(c.gameWinlose) as gameWinlose,sum(c.gameValidamount) as gameValidamount,
		sum(c.hongKongWinlose) as hongKongWinlose,sum(c.hongKongValidamount) as hongKongValidamount
			  FROM (SELECT b.agents,b.username,sum(a.winlose) as winlose,sum(a.validamount) as validamount,
			  sum(case when a.game_kind IN (1,42) then a.winlose else 0 end) AS sportWinlose,sum(case when a.game_kind IN (1,42) then a.validamount else 0 end) AS sportValidamount,
			  sum(case when a.game_kind IN (51,52,55) then a.winlose else 0 end) AS lottoWinlose,sum(case when a.game_kind IN (51,52,55) then a.validamount else 0 end) AS lottoValidamount,
			  sum(case when a.game_kind IN (3,21,41) then a.winlose else 0 end) AS liveWinlose,sum(case when a.game_kind IN (3,21,41) then a.validamount else 0 end) AS liveValidamount,
			  sum(case when a.game_kind IN (5,15,22,53,60) then a.winlose else 0 end) AS gameWinlose,sum(case when a.game_kind IN (5,15,22,53,60) then a.validamount else 0 end) AS gameValidamount,
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
-- Procedure structure for sp_total_report_copy
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_total_report_copy`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_total_report_copy`()
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
    SET v_condition = 'siteId|99999;betTimeBegin|2016-09-18;betTimeEnd|2016-09-19;agentLevel|Branch;betStatus|1;liveId|15;';
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
    
    SELECT v_sql;
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
CREATE DEFINER=`root`@`%` PROCEDURE `sp_water_report_total_new_copy`(IN i_condition MEDIUMTEXT,IN start_index int(11),IN record_count int(11),OUT totalCount int)
BEGIN
    DECLARE v_siteId INT;
    DECLARE v_betTimeBegin VARCHAR(20);
    DECLARE v_betTimeEnd  VARCHAR(200);
    DECLARE v_username MEDIUMTEXT;
    DECLARE v_agentLevel MEDIUMTEXT;
    DECLARE v_liveId INT;
    DECLARE v_gameKind INT;
    DECLARE v_gameType INT;
    DECLARE v_betStatus VARCHAR(10) DEFAULT '1';
    DECLARE v_condition MEDIUMTEXT;
    DECLARE v_index INT;
    DECLARE v_substr MEDIUMTEXT;
    DECLARE v_subIndex INT;
    DECLARE v_fieldName MEDIUMTEXT;
    DECLARE v_fieldValue MEDIUMTEXT;
    DECLARE v_sql MEDIUMTEXT;
    DECLARE v_where MEDIUMTEXT;
    
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
	 
	      sum(case when a.game_kind IN (3,21,41) then a.validamount else 0 end) AS liveValidamount,0 AS liveWater,
    		sum(case when a.game_kind = 3 then a.validamount else 0 end) AS liveBbValidamount,0 as liveBbWater,0 as liveBbCalcValidamount,
				sum(case when a.game_kind = 3 then a.validamount else 0 end) AS liveBbUncalcValidamount,
    		sum(case when a.game_kind = 41 then a.validamount else 0 end) AS liveDsValidamount,0 as liveDsWater,0 as liveDsCalcValidamount,
				sum(case when a.game_kind = 41 then a.validamount else 0 end) AS liveDsUncalcValidamount,
    		sum(case when a.game_kind = 21 then a.validamount else 0 end) AS liveAGValidamount,0 as liveAGWater,0 as liveAgCalcValidamount,
				sum(case when a.game_kind = 21 then a.validamount else 0 end) AS liveAgUncalcValidamount,
    		
				sum(case when a.game_kind IN(5,15,22,53,60) then a.validamount else 0 end) AS gameValidamount,0 AS gameWater,
    		sum(case when a.game_kind IN(5,15) then a.validamount else 0 end) AS bbGameValidamount,0 as bbGameWater,0 as bbGameCalcValidamount,
				sum(case when a.game_kind IN(5,15) then a.validamount else 0 end) AS bbgameUncalcValidamount,
    		sum(case when a.game_kind = 53 then a.validamount else 0 end) AS dsGameValidamount,0 as dsGameWater,0 as dsGameCalcValidamount,
				sum(case when a.game_kind = 53 then a.validamount else 0 end) AS dsgameUncalcValidamount,
    		sum(case when a.game_kind = 22 then a.validamount else 0 end) AS agGameValidamount,0 as agGameWater,0 as agGameCalcValidamount,
				sum(case when a.game_kind = 22 then a.validamount else 0 end) AS aggameUncalcValidamount,
				sum(case when a.game_kind = 60 then a.validamount else 0 end) AS mgGameValidamount,0 as mgGameWater,0 as mgGameCalcValidamount,
				sum(case when a.game_kind = 60 then a.validamount else 0 end) AS mggameUncalcValidamount,

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
    DECLARE v_username VARCHAR(10000);
    DECLARE v_agentLevel VARCHAR(100);
    DECLARE v_liveId INT;
    DECLARE v_gameKind INT;
    DECLARE v_gameType INT;
    DECLARE v_betStatus VARCHAR(10) DEFAULT '1';
    DECLARE v_condition VARCHAR(5000);
    DECLARE v_index INT;
    DECLARE v_substr VARCHAR(10000);
    DECLARE v_subIndex INT;
    DECLARE v_fieldName VARCHAR(100);
    DECLARE v_fieldValue VARCHAR(100);
    DECLARE v_sql VARCHAR(20000);
    DECLARE v_where VARCHAR(50000);
    
    SET v_index = 0;  
    SET v_subIndex = 0;
    SET v_subStr = '';
    SET v_fieldName = '';
    SET v_fieldValue = '';
    SET v_condition = 'siteId|99999;betTimeBegin|2015-11-29;betTimeEnd|2015-12-29;username|ceshi0011,zfce02,ceshi006,ceshi0002,ceshi0008,ceshi1100,zcsbhy1,zcsbhy2,xiaoshi,ceshi0004;agentLevel|Member;waterType|0;';
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
