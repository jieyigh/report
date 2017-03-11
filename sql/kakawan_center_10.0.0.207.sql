/*
Navicat MySQL Data Transfer

Source Server         : 10.0.0.207蛮牛
Source Server Version : 50505
Source Host           : 10.0.0.207:3306
Source Database       : kakawan_center

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-03-10 11:40:51
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
-- Records of api_agent
-- ----------------------------
INSERT INTO `api_agent` VALUES ('', 'jhdsfkjdsakjhdkjashdkask', '10001', null);
INSERT INTO `api_agent` VALUES ('2', 'jpzxxnjnvjdjkljldsfd1', '10002', null);
INSERT INTO `api_agent` VALUES ('3', 'jpzsadaskjkfldjkds2', '10003', null);
INSERT INTO `api_agent` VALUES ('4', 'jpzdskjadkasdkljljd3', '10004', null);
INSERT INTO `api_agent` VALUES ('5', 'jpzdskjadkasdkjay5', '10005', null);

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
-- Records of api_agent_ip
-- ----------------------------
INSERT INTO `api_agent_ip` VALUES ('1', '103.41.16.124', 'ffc拉取注单本地测试', '50', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of api_info
-- ----------------------------
INSERT INTO `api_info` VALUES ('4', null, '2', '威尼斯人', 'wn', null, null, '', null, null, null, '0', '2', 'ag', '');
INSERT INTO `api_info` VALUES ('5', null, '2', '威尼斯人', 'wn', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '0', '11', 'bbin', 'dweinisi');
INSERT INTO `api_info` VALUES ('6', null, '2', '威尼斯人', 'wn', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '0', '12', 'ds', 'weinisi-ddffe-rfgv-edrf-9684s5s7s15f');
INSERT INTO `api_info` VALUES ('10', null, '4', '银河', 'yh', null, null, null, null, null, null, '0', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('11', null, '4', '银河', 'yh', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '0', '12', 'ds', 'dsyinhe-dfef-sdff-rtyu-123jssdfsoert');
INSERT INTO `api_info` VALUES ('12', null, '4', '银河', 'yh', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '0', '11', 'bbin', 'dyinhe');
INSERT INTO `api_info` VALUES ('13', null, '5', '美高美娱乐城', 'mg', null, null, null, null, null, null, '0', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('14', null, '5', '美高美娱乐城', 'mg', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '0', '12', 'ds', 'meigaomei-gogo-letg-nzka-tyujshfkqoj');
INSERT INTO `api_info` VALUES ('15', null, '5', '美高美娱乐城', 'mg', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '0', '11', 'bbin', 'dmeigaomei');
INSERT INTO `api_info` VALUES ('16', null, '6', '易发', 'yf', null, null, null, null, null, null, '0', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('17', null, '6', '易发', 'yf', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '0', '12', 'ds', 'cf9082e7-3a58-4b39-e62f-2d4fa9e5yifa');
INSERT INTO `api_info` VALUES ('18', null, '6', '易发', 'yf', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '0', '11', 'bbin', 'dyifa');
INSERT INTO `api_info` VALUES ('19', null, '7', '博狗亚洲', 'yz', null, null, null, null, null, null, '0', '2', 'ag', '');
INSERT INTO `api_info` VALUES ('20', null, '7', '博狗亚洲', 'yz', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '0', '12', 'ds', 'bogouyazhou-R5TG6-rwdfkn-ryhmm8-zza3');
INSERT INTO `api_info` VALUES ('21', null, '7', '博狗亚洲', 'yz', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '0', '11', 'bbin', 'dbogouyazhou');
INSERT INTO `api_info` VALUES ('22', null, '8', '诚信娱乐城', 'cx', null, null, null, null, null, null, '0', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('23', null, '8', '诚信娱乐城', 'cx', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '0', '12', 'ds', 'chengxin-dddd-fgbv-sdfg-sdsdsd569llk');
INSERT INTO `api_info` VALUES ('24', null, '8', '诚信娱乐城', 'cx', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '0', '11', 'bbin', 'dchengxin');
INSERT INTO `api_info` VALUES ('25', null, '9', '菲律宾娱乐城', 'fl', null, null, null, null, null, null, '0', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('26', null, '9', '菲律宾娱乐城', 'fl', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '0', '12', 'ds', 'fevvbgd5-erty-uiop-qw23-qq88ssgbnjmk');
INSERT INTO `api_info` VALUES ('27', null, '9', '菲律宾娱乐城', 'fl', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '0', '11', 'bbin', 'dfeilvbin1');
INSERT INTO `api_info` VALUES ('28', null, '10', '金煌', 'jh', null, null, null, null, null, null, '0', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('29', null, '10', '金煌', 'jh', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '0', '12', 'ds', 'jinhuang-cdcc-qqq3-dddv-win7xpwin8dn');
INSERT INTO `api_info` VALUES ('30', null, '10', '金煌', 'jh', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '0', '11', 'bbin', 'djinhuang');
INSERT INTO `api_info` VALUES ('31', null, '11', '新濠天地', 'xh', null, null, null, null, null, null, '0', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('32', null, '11', '新濠天地', 'xh', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '0', '12', 'ds', 'xinhao-w222-33333-hongniu-uyuyueju88');
INSERT INTO `api_info` VALUES ('33', null, '11', '新濠天地', 'xh', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '0', '11', 'bbin', 'dxinhao');
INSERT INTO `api_info` VALUES ('34', null, '12', '酷客', 'kb', null, null, null, null, null, null, '0', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('35', null, '12', '酷客', 'kb', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '0', '12', 'ds', '841348ca-6425-dc40-e7ea-843ekgkkwbet');
INSERT INTO `api_info` VALUES ('36', null, '12', '酷客', 'kb', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '0', '11', 'bbin', 'dkkwbet');
INSERT INTO `api_info` VALUES ('37', null, '13', '明升娱乐城', 'ms', null, null, null, null, null, null, '0', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('38', null, '13', '明升娱乐城', 'ms', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '0', '12', 'ds', '293664a9-aae4-9b3d-875b-fb6mingsheng');
INSERT INTO `api_info` VALUES ('39', null, '13', '明升娱乐城', 'ms', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '0', '11', 'bbin', 'dmingsheng');
INSERT INTO `api_info` VALUES ('40', null, '14', '葡京·澳门', 'pj', null, null, null, null, null, null, '0', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('41', null, '14', '葡京·澳门', 'pj', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '0', '12', 'ds', 'pujing-3333d-4r4r4tttg-8888-99998eer');
INSERT INTO `api_info` VALUES ('42', null, '14', '葡京·澳门', 'pj', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '0', '11', 'bbin', 'dpujing');
INSERT INTO `api_info` VALUES ('43', null, '15', '大发', 'kg', null, null, null, null, null, null, '0', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('44', null, '15', '大发', 'kg', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '0', '12', 'ds', '5e627ec5-33a9-1e36-e73a-06d6071kgkkw');
INSERT INTO `api_info` VALUES ('45', null, '15', '大发', 'kg', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '0', '11', 'bbin', 'dkakawan');
INSERT INTO `api_info` VALUES ('46', null, '16', '新葡京娱乐城', 'xj', null, null, null, null, null, null, '0', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('47', null, '16', '新葡京娱乐城', 'xj', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '0', '12', 'ds', 'xinpujingyulecheng-yiwesabsiwlq-7-er');
INSERT INTO `api_info` VALUES ('48', null, '16', '新葡京娱乐城', 'xj', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '0', '11', 'bbin', 'dxpjylc');
INSERT INTO `api_info` VALUES ('49', null, '17', '英皇', 'yg', null, null, null, null, null, null, '0', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('50', null, '17', '英皇', 'yg', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '0', '12', 'ds', 'yinghuang-dfdv-xdsf-df6t-t85d5d24fge');
INSERT INTO `api_info` VALUES ('51', null, '17', '英皇', 'yg', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '0', '11', 'bbin', 'dyinghuang');
INSERT INTO `api_info` VALUES ('52', null, '18', '澳门（守信）', 'am', null, null, null, null, null, null, '0', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('53', null, '18', '澳门（守信）', 'am', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '0', '12', 'ds', 'aomen-qwqw-ewewew-wewewffd-uy5t5hhhh');
INSERT INTO `api_info` VALUES ('54', null, '18', '澳门（守信）', 'am', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '0', '11', 'bbin', 'daomen');
INSERT INTO `api_info` VALUES ('55', null, '19', '博狗', 'bo', null, null, null, null, null, null, '0', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('56', null, '19', '博狗', 'bo', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '0', '11', 'bbin', 'dbodog');
INSERT INTO `api_info` VALUES ('57', null, '19', '博狗', 'bo', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '0', '12', 'ds', 'bodogssss-erer-rere-rfrf-tgtghyytg55');
INSERT INTO `api_info` VALUES ('58', null, '20', '云鼎至尊', 'yd', null, null, null, null, null, null, '0', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('59', null, '20', '云鼎至尊', 'yd', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '0', '11', 'bbin', 'dyunding');
INSERT INTO `api_info` VALUES ('60', null, '20', '云鼎至尊', 'yd', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '0', '12', 'ds', 'yunding-tygh5678-123ksdf0o039j2-yyet');
INSERT INTO `api_info` VALUES ('89', null, '21', '一筒国际', 'yt', null, null, null, null, null, null, '-50', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('90', null, '21', '一筒国际', 'yt', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '-50', '11', 'bbin', 'dyitong');
INSERT INTO `api_info` VALUES ('91', null, '21', '一筒国际', 'yt', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '-50', '12', 'ds', 'yitong-skhfs-efefo0-ef442-5sdfr-44r8');
INSERT INTO `api_info` VALUES ('92', null, '22', '金沙城', 'js', null, null, null, null, null, null, '-50', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('93', null, '22', '金沙城', 'js', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '0', '11', 'bbin', 'djinshacheng');
INSERT INTO `api_info` VALUES ('94', null, '22', '金沙城', 'js', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '0', '12', 'ds', 'jinshacheng-wewerd445dr5-okliji09mcr');
INSERT INTO `api_info` VALUES ('95', null, '1', '测试网站', 'cs', null, null, null, null, null, null, '0', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('96', null, '1', '测试网站', 'cs', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '0', '11', 'bbin', 'daomenwnsr');
INSERT INTO `api_info` VALUES ('97', null, '1', '测试网站', 'cs', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '0', '12', 'ds', 'aomenwnsr-sdfs-ffsfd5-tgbn-jdjskijns');
INSERT INTO `api_info` VALUES ('98', null, '1001', '鸿发', 'hf', null, null, null, null, null, null, '50', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('99', null, '1001', '鸿发', 'hf', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '50', '11', 'bbin', 'dhongfayule');
INSERT INTO `api_info` VALUES ('100', null, '1001', '鸿发', 'hf', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '50', '12', 'ds', 'hongfa001-qweqsd211-ada9887sa-66656');
INSERT INTO `api_info` VALUES ('101', null, '1001', '鸿发', 'hf', '3r88', null, 'http://apiweb.mywinday.com/api.aspx', null, null, null, '50', '13', 'h8', 'a130987d');
INSERT INTO `api_info` VALUES ('102', null, '1002', '澳门娱乐城', 'ay', null, null, null, null, null, null, '50', '2', null, null);
INSERT INTO `api_info` VALUES ('103', null, '1002', '澳门娱乐城', 'ay', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '50', '11', 'bbin', 'daomenylch');
INSERT INTO `api_info` VALUES ('104', null, '1002', '澳门娱乐城', 'ay', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '50', '12', null, 'aomenyulecheng-845aaf1g8e-g9d8-1bhh');
INSERT INTO `api_info` VALUES ('105', null, '99999', '鼎盛测试', 'cs', null, null, null, null, null, null, '50', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('106', null, '99999', '鼎盛测试', 'cs', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '50', '11', 'bbin', 'djishu');
INSERT INTO `api_info` VALUES ('107', null, '99999', '鼎盛测试', 'cs', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '50', '12', 'ds', 'dsjishucs_784vb8d_df9s84df54_g8s4ss');
INSERT INTO `api_info` VALUES ('108', null, '99999', '鼎盛测试', 'cs', '3rjs3rdsjs', null, 'http://apiweb.mywinday.com/api.aspx', null, null, null, '50', '13', 'h8', 'a104409d');
INSERT INTO `api_info` VALUES ('109', null, '1002', '澳门娱乐城', 'ay', '3raa', null, 'http://apiweb.mywinday.com/api.aspx', null, null, null, '50', '13', 'h8', 'a951748d');
INSERT INTO `api_info` VALUES ('111', null, '1003', '一筒国际', 'yi', null, null, null, null, null, null, '50', '2', null, null);
INSERT INTO `api_info` VALUES ('113', null, '1003', '一筒国际', 'yi', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '50', '11', 'bbin', 'dyitongxin');
INSERT INTO `api_info` VALUES ('115', null, '1003', '一筒国际', 'yi', '3r3rC3r3rCC', null, 'http://apiweb.mywinday.com/api.aspx', null, null, null, '50', '13', 'h8', 'a647468d');
INSERT INTO `api_info` VALUES ('117', null, '1003', '一筒国际', 'yi', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '50', '12', 'ds', 'yitong_8fw45f_gr4e4rgerg64_grg945ge');
INSERT INTO `api_info` VALUES ('119', null, '1004', '四季娱乐城', 'sj', null, null, null, null, null, null, '50', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('121', null, '1004', '四季娱乐城', 'sj', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '50', '11', 'bbin', 'dsjcwsyl');
INSERT INTO `api_info` VALUES ('123', null, '1004', '四季娱乐城', 'sj', '3r3rd3r3rd', null, 'http://apiweb.mywinday.com/api.aspx', null, null, null, '50', '13', 'h8', 'a562968d');
INSERT INTO `api_info` VALUES ('125', null, '1004', '四季娱乐城', 'sj', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '50', '12', 'ds', 'sjcwsyl_fsd8454b5f4b_fsdf945g4f_fss');
INSERT INTO `api_info` VALUES ('127', null, '1005', '金煌娱乐城', 'aa', '3r3r3rds100788', null, 'http://apiweb.mywinday.com/api.aspx', null, null, null, '50', '13', 'h8', 'a097726d');
INSERT INTO `api_info` VALUES ('129', null, '1005', '金煌娱乐城', 'aa', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '50', '12', 'ds', 'ds100588_24e89703-b2a1-4453-a13a-518');
INSERT INTO `api_info` VALUES ('131', null, '1005', '金煌娱乐城', 'aa', null, null, null, null, null, null, '50', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('133', null, '1005', '金煌娱乐城', 'aa', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '50', '11', 'bbin', 'dds100588');
INSERT INTO `api_info` VALUES ('135', null, '1007', '菁英会', 'ad', null, null, null, null, null, null, '50', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('137', null, '1007', '菁英会', 'ad', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '50', '11', 'bbin', 'dds100788');
INSERT INTO `api_info` VALUES ('139', null, '1007', '菁英会', 'ad', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '50', '12', 'ds', 'ds100788_7f8dg454g_fsdg954g_dfg7544');
INSERT INTO `api_info` VALUES ('141', null, '1007', '菁英会', 'ad', '3rdsa1008888', null, 'http://apiweb.mywinday.com/api.aspx', null, null, null, '50', '13', 'h8', 'a353986d');
INSERT INTO `api_info` VALUES ('147', null, '1006', '云顶至尊', 'ab', null, null, null, null, null, null, '50', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('149', null, '1006', '云顶至尊', 'ab', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '50', '11', 'bbin', 'dds100666');
INSERT INTO `api_info` VALUES ('151', null, '1006', '云顶至尊', 'ab', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '50', '12', 'ds', 'ds100666_f7g8fg54_sdf61321g_dfg987g');
INSERT INTO `api_info` VALUES ('153', null, '1006', '云顶至尊', 'ab', '3rffds100999', null, 'http://apiweb.mywinday.com/api.aspx', null, null, null, '50', '13', 'h8', 'a893363d');
INSERT INTO `api_info` VALUES ('155', null, '1008', '新濠天地', 'ae', null, null, null, null, null, null, '50', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('157', null, '1008', '新濠天地', 'ae', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '50', '11', 'bbin', 'dds100888');
INSERT INTO `api_info` VALUES ('159', null, '1008', '新濠天地', 'ae', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '50', '12', 'ds', 'ds100888_9754gf4g_gfg945s1df_fd964g');
INSERT INTO `api_info` VALUES ('161', null, '1008', '新濠天地', 'ae', '3r11', null, 'http://apiweb.mywinday.com/api.aspx', null, null, null, '50', '13', 'h8', 'a274235d');
INSERT INTO `api_info` VALUES ('163', null, '1009', '保时捷', 'af', null, null, '', null, null, null, '50', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('165', null, '1009', '保时捷', 'af', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '50', '11', 'bbin', 'dds100999');
INSERT INTO `api_info` VALUES ('167', null, '1009', '保时捷', 'af', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '50', '12', 'ds', 'ds100999_97654gfg_sdg41321vb_sfd945');
INSERT INTO `api_info` VALUES ('169', null, '1009', '保时捷', 'af', '3rg3rg', null, 'http://apiweb.mywinday.com/api.aspx', null, null, null, '50', '13', 'h8', 'a821759d');
INSERT INTO `api_info` VALUES ('171', null, '1010', '永利', 'yl', null, null, null, null, null, null, '50', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('173', null, '1010', '永利', 'yl', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '50', '11', 'bbin', 'dds101010');
INSERT INTO `api_info` VALUES ('175', null, '1010', '永利', 'yl', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '50', '12', 'ds', 'ds101010_97gefh6nj44gh_gfg9f_f975h4');
INSERT INTO `api_info` VALUES ('177', null, '1010', '永利', 'yl', '3rh3rh', null, 'http://apiweb.mywinday.com/api.aspx', null, null, null, '50', '13', 'h8', 'a521450d');
INSERT INTO `api_info` VALUES ('179', null, '1013', '新普京', 'xp', null, null, '', null, null, null, '50', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('181', null, '1013', '新普京', 'xp', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '50', '11', 'bbin', 'dds101314');
INSERT INTO `api_info` VALUES ('183', null, '1013', '新普京', 'xp', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '50', '12', 'ds', 'ds101314_4a7e334a-453c-4ef8-ad60-07a');
INSERT INTO `api_info` VALUES ('185', null, '1013', '新普京', 'xp', '3rj3rj', null, 'http://apiweb.mywinday.com/api.aspx', null, null, null, '50', '13', 'h8', 'a378985d');
INSERT INTO `api_info` VALUES ('187', null, '1011', '金沙城', 'ja', null, null, null, null, null, null, '50', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('189', null, '1011', '金沙城', 'ja', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '50', '11', 'bbin', 'dds101116');
INSERT INTO `api_info` VALUES ('191', null, '1011', '金沙城', 'ja', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '50', '12', 'ds', 'ds101116_96e7d623-b497-4095-b790-15f');
INSERT INTO `api_info` VALUES ('193', null, '1011', '金沙城', 'ja', '3rk3rk', null, 'http://apiweb.mywinday.com/api.aspx', null, null, null, '50', '13', 'h8', 'a589103d');
INSERT INTO `api_info` VALUES ('195', null, '1017', '盛世国际', 'ss', null, null, null, null, null, null, '50', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('197', null, '1017', '盛世国际', 'ss', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '50', '11', 'bbin', 'dds101759');
INSERT INTO `api_info` VALUES ('199', null, '1017', '盛世国际', 'ss', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '50', '12', 'ds', 'ds101759_a7ca547e-4549-41f7-ba14-064');
INSERT INTO `api_info` VALUES ('201', null, '1017', '盛世国际', 'ss', '3rl3rl', null, 'http://apiweb.mywinday.com/api.aspx', null, null, null, '50', '13', 'h8', 'a529616d');
INSERT INTO `api_info` VALUES ('203', null, '1014', '普京国际', 'vp', null, null, null, null, null, null, '50', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('205', null, '1014', '普京国际', 'vp', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '50', '11', 'bbin', 'dds101413');
INSERT INTO `api_info` VALUES ('207', null, '1014', '普京国际', 'vp', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '50', '12', 'ds', 'ds101413_a959bbd4-d45a-4346-a542-dd5');
INSERT INTO `api_info` VALUES ('209', null, '1014', '普京国际', 'vp', '3rv3rv', null, 'http://apiweb.mywinday.com/api.aspx', null, null, null, '50', '13', 'h8', 'a216181d');
INSERT INTO `api_info` VALUES ('211', null, '1025', '金宝博', 'jb', null, null, null, null, null, null, '50', '2', 'ag', null);
INSERT INTO `api_info` VALUES ('213', null, '1025', '金宝博', 'jb', null, null, 'http://linkapi.s1116.com/app/WebService/JSON/display.php/', null, null, null, '50', '11', 'bbin', 'dds102588');
INSERT INTO `api_info` VALUES ('215', null, '1025', '金宝博', 'jb', null, null, 'http://repwf.dsbet87.com/dsapiwfrecord/app/api.do', null, null, null, '50', '12', 'ds', 'ds102588_ea8559a4-49df-47d1-8c3a-d25');
INSERT INTO `api_info` VALUES ('217', null, '1025', '金宝博', 'jb', '3rx3rx', null, 'http://apiweb.mywinday.com/api.aspx', null, null, null, '50', '13', 'h8', 'a187399d');
INSERT INTO `api_info` VALUES ('219', null, '99999', '鼎盛测试', 'cs', null, null, 'https://ag.adminserv88.com/', null, null, null, '50', '15', 'mg', 'mg');

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
-- Records of c_live_id_config
-- ----------------------------
INSERT INTO `c_live_id_config` VALUES ('1', 'ds_ag_live', '2', '21', 'AG视讯', '0', 'game_kind', 'bet_time', 'bet_amount', 'valid_bet_amount', 'net_amount', null);
INSERT INTO `c_live_id_config` VALUES ('2', 'ds_ag_live', '2', '22', 'AG机率', '0', 'game_kind', 'bet_time', 'bet_amount', 'valid_bet_amount', 'net_amount', null);
INSERT INTO `c_live_id_config` VALUES ('3', 'ds_bbin_3d', '11', '15', 'BBIN 3D', '0', '', 'wagers_date', 'bet_amount', 'commissionable', 'pay_off', null);
INSERT INTO `c_live_id_config` VALUES ('4', 'ds_bbin_jilv', '11', '5', 'BBIN机率', '0', null, 'wagers_date', 'bet_amount', 'commissionable', 'pay_off', null);
INSERT INTO `c_live_id_config` VALUES ('5', 'ds_bbin_live', '11', '3', 'BBIN视讯', '0', null, 'wagers_date', 'bet_amount', 'commissionable', 'pay_off', null);
INSERT INTO `c_live_id_config` VALUES ('6', 'ds_bbin_sport', '11', '1', 'BBIN体育', '0', null, 'wagers_date', 'bet_amount', 'commissionable', 'pay_off', null);
INSERT INTO `c_live_id_config` VALUES ('7', 'ds_live', '12', '41', 'DS视讯', '0', null, 'end_time', 'stake_amount', 'valid_stake', 'win_loss', null);
INSERT INTO `c_live_id_config` VALUES ('8', 'ds_lottery_bet', '12', '55', 'DS传统彩', '0', null, 'bet_time', 'stake_amount', 'valid_stake', 'win_loss', null);
INSERT INTO `c_live_id_config` VALUES ('9', 'ds_lotto_bet', '12', '54', 'DS香港彩', '0', null, 'bet_time', 'stake_amount', 'valid_stake', 'win_loss', null);
INSERT INTO `c_live_id_config` VALUES ('10', 'ds_fenfen_lotto', '12', '52', 'DS分分彩', '1', null, 'bet_time', 'bet_amount', 'valid_amount', 'pay_off', null);
INSERT INTO `c_live_id_config` VALUES ('11', 'ds_m8_sport', '13', '42', 'H8体育', '1', null, 'transaction_date', 'bet_amount', 'commission_amount', 'win_amount', null);
INSERT INTO `c_live_id_config` VALUES ('12', 'ds_mg_game', '15', '60', 'MG电子', '0', null, 'transaction_timestamp_date', 'amount', 'validate_amount', 'payoff', null);

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
-- Records of c_total_audit_config
-- ----------------------------
INSERT INTO `c_total_audit_config` VALUES ('11', null, 'SELECT a.id,\r\na.site_id AS siteId, \r\na.username,\r\na.bet_amount AS betAmount,\r\na.valid_amount AS validAmount,\r\na.pay_off AS payAmount,\r\n12 AS liveId,\r\na.billno AS orderNo,\r\n3 AS type,\r\na.bet_time as betTime\r\nFROM ds_fenfen_lotto a WHERE a.win_loss_type IS NOT NULL AND win_loss_type<>-1 \r\nAND NOT EXISTS (SELECT * FROM temp_audit_fenfen_lotto t WHERE t.id=a.id) LIMIT 500', null, 'temp_audit_fenfen_lotto', '50', '分分彩');
INSERT INTO `c_total_audit_config` VALUES ('12', null, 'SELECT a.id,\r\na.siteId, \r\na.username,\r\na.betAmount AS betAmount,\r\na.commissonAmount AS validAmount,\r\na.winLose AS payAmount,\r\n12 AS liveId,\r\na.id AS orderNo,\r\n4 AS type,\r\na.createTime as betTime\r\nFROM video_game_wager a WHERE a.winLoseType IS NOT NULL AND winLoseType<>-1 \r\nAND NOT EXISTS (SELECT * FROM temp_audit_video_game_wager t WHERE t.id=a.id) LIMIT 500', null, 'temp_audit_video_game_wager', '50', 'DS电子游戏');
INSERT INTO `c_total_audit_config` VALUES ('13', null, '  SELECT a.id,\r\na.siteId, \r\na.username,\r\na.amount AS betAmount,\r\na.validate_amount AS validAmount,\r\na.payoff AS payAmount,\r\n15 AS liveId,\r\na.bet_col_id AS orderNo,\r\n4 AS type,\r\na.transaction_timestamp_date as betTime\r\nFROM ds_mg_game a WHERE a.win_lose_type IS NOT NULL AND win_lose_type<>-1 \r\nAND NOT EXISTS (SELECT * FROM temp_audit_mg_game t WHERE t.id=a.id) LIMIT 500', null, 'temp_audit_mg_game', '0', 'MG电子游戏');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_total_report_config
-- ----------------------------
INSERT INTO `c_total_report_config` VALUES ('1', null, 'SELECT a.id,\r\na.site_id AS siteId, \r\na.username,\r\na.bet_amount AS betAmount,\r\na.valid_bet_amount AS validAmount,\r\na.net_amount AS winLossAmount,\r\n2 AS liveId,\r\n\'ag 视讯\' AS liveName,\r\na.game_kind AS gameKind,\r\n\'ag 视讯\' AS gameKindName,\r\na.bet_time as betTime,\r\n(CASE a.game_type WHEN \'BAC\' THEN 21001 \r\nWHEN \'CBAC\' THEN 21002  \r\nWHEN \'LINK\' THEN 21003\r\nWHEN \'DT\' THEN 21004 \r\nWHEN \'SHB\' THEN 21005 \r\nWHEN \'ROU\' THEN 21006 \r\nWHEN \'FT\' THEN 21007\r\nWHEN \'LBAC\' THEN 21008\r\nWHEN \'ULPK\' THEN 21009\r\nELSE 21005\r\nEND) as gameType,\r\n\r\n(CASE a.game_type WHEN \'BAC\' THEN \'百家乐\' \r\nWHEN \'CBAC\' THEN \'包桌百家乐\'  \r\nWHEN \'LINK\' THEN \'连环百家乐\'\r\nWHEN \'DT\' THEN \'龙虎\' \r\nWHEN \'SHB\' THEN \'骰宝\' \r\nWHEN \'ROU\' THEN \'轮盘\' \r\nWHEN \'FT\' THEN \'番攤\'\r\nWHEN \'LBAC\' THEN \'竞咪百家乐\'\r\nWHEN \'ULPK\' THEN \'终极德州扑克\' \r\nELSE \'其他\'\r\nEND)\r\n as gameName\r\nFROM ds_ag_live a WHERE a.game_kind = 21 AND a.win_loss_type IS NOT NULL AND win_loss_type<>-1 \r\nAND NOT EXISTS (SELECT * FROM temp_ag_live t WHERE t.id=a.id) limit 500', null, 'temp_ag_live', '50', 'ag视讯统计', 'SELECT SUM(a.bet_count) AS count,SUM(a.betamount) AS betMount,\r\nSUM(a.winlose) AS payoffMount,SUM(a.validamount) AS validateMount \r\nFROM ds_report a WHERE a.bet_time = \'?\'  and game_kind = 21', 'SELECT COUNT(*) AS count,SUM(a.bet_amount) AS betMount,\r\nSUM(a.valid_bet_amount) AS validateMount,SUM(a.net_amount) AS payoffMount\r\nFROM ds_ag_live a WHERE a.game_kind = 21 AND a.bet_time >= \'? 00:00:00\' AND a.bet_time <= \'? 23:59:59\' AND EXISTS \r\n(SELECT l.id FROM temp_ag_live l WHERE l.id = a.id)', 'DELETE FROM ds_report WHERE game_kind = 21 AND bet_time = \'?\'', 'DELETE FROM temp_ag_live WHERE id IN(\r\nSELECT a.id FROM ds_ag_live a WHERE a.game_kind = 21 AND a.bet_time >= \'? 00:00:00\' AND a.bet_time <= \'? 23:59:59\')');
INSERT INTO `c_total_report_config` VALUES ('2', null, 'SELECT a.id,\r\na.site_id AS siteId, \r\na.username,\r\na.bet_amount AS betAmount,\r\na.valid_bet_amount AS validAmount,\r\na.net_amount AS winLossAmount,\r\n2 AS liveId,\r\n\'ag\' AS liveName,\r\na.game_kind AS gameKind,\r\n\'ag 机率\' AS gameKindName,\r\na.bet_time as betTime,\r\nIFNULL((SELECT id FROM ds_game_type b WHERE b.out_game_code = a.game_type and b.parent_id = 22),22000) as gameType,\r\nIFNULL((SELECT b.game_name FROM ds_game_type b WHERE b.out_game_code = a.game_type and b.parent_id = 22),\'AG最新机率\') as gameName\r\nFROM ds_ag_live a WHERE a.game_kind = 22 AND a.win_loss_type IS NOT NULL AND win_loss_type<>-1 \r\nAND NOT EXISTS (SELECT * FROM temp_ag_game t WHERE t.id=a.id) LIMIT 500', null, 'temp_ag_game', '50', 'ag机率统计', 'SELECT SUM(a.bet_count) AS count,SUM(a.betamount) AS betMount,\r\nSUM(a.winlose) AS payoffMount,SUM(a.validamount) AS validateMount \r\nFROM ds_report a WHERE a.bet_time = \'?\'  and game_kind = 22', 'SELECT COUNT(*) AS count,SUM(a.bet_amount) AS betMount,\r\nSUM(a.valid_bet_amount) AS validateMount,SUM(a.net_amount) AS payoffMount\r\nFROM ds_ag_live a WHERE a.game_kind = 22 AND a.bet_time >= \'? 00:00:00\' AND a.bet_time <= \'? 23:59:59\' AND EXISTS \r\n(SELECT l.id FROM temp_ag_game l WHERE l.id = a.id)', 'DELETE FROM ds_report WHERE game_kind = 22 AND bet_time = \'?\'', 'DELETE FROM temp_ag_game WHERE id IN(\r\nSELECT a.id FROM ds_ag_live a WHERE a.game_kind = 22 AND a.bet_time >= \'? 00:00:00\' AND a.bet_time <= \'? 23:59:59\')');
INSERT INTO `c_total_report_config` VALUES ('3', null, 'SELECT a.id,\r\na.site_id AS siteId, \r\na.username,\r\na.stake_amount AS betAmount,\r\na.valid_stake AS validAmount,\r\na.win_loss AS winLossAmount,\r\n12 AS liveId,\r\n\'ds 平台\' AS liveName,\r\n41 AS gameKind,\r\n\'ds 视讯\' AS gameKindName,\r\na.end_time as betTime,\r\n(CASE a.game_type WHEN \'BACCARAT\' THEN 41001 \r\nWHEN \'DRAGON_TIGER\' THEN 41002  \r\nWHEN \'ROULETTE\' THEN 41003\r\nWHEN \'BACCARAT_INSURANCE\' THEN 41004 \r\nWHEN \'SICBO\' THEN 41005 \r\nWHEN \'XOC_DIA\' THEN 41006 \r\nWHEN \'BULL_BULL\' THEN 41007 \r\nEND) as gameType,\r\n\r\n(CASE a.game_type WHEN \'BACCARAT\' THEN \'百家乐\' \r\nWHEN \'DRAGON_TIGER\' THEN \'龙虎\'  \r\nWHEN \'ROULETTE\' THEN \'轮盘\'\r\nWHEN \'BACCARAT_INSURANCE\' THEN \'保险百家乐\' \r\nWHEN \'SICBO\' THEN \'骰宝\' \r\nWHEN \'XOC_DIA\' THEN \'色碟\'\r\nWHEN \'BULL_BULL\' THEN \'斗牛\'  \r\nEND)\r\n as gameName\r\nFROM ds_live a WHERE a.win_loss_type IS NOT NULL AND win_loss_type<>-1 \r\nAND NOT EXISTS (SELECT * FROM temp_ds_live t WHERE t.id=a.id) LIMIT 500', null, 'temp_ds_live', '50', 'ds视讯', 'SELECT SUM(a.bet_count) AS count,SUM(a.betamount) AS betMount,\r\nSUM(a.winlose) AS payoffMount,SUM(a.validamount) AS validateMount \r\nFROM ds_report a WHERE a.bet_time = \'?\'  and game_kind = 41', 'SELECT COUNT(*) AS count,SUM(a.stake_amount) AS betMount,\r\nSUM(a.valid_stake) AS validateMount,SUM(a.win_loss) AS payoffMount\r\nFROM ds_live a WHERE a.end_time >= \'? 00:00:00\' AND a.end_time <= \'? 23:59:59\' AND EXISTS \r\n(SELECT l.id FROM temp_ds_live l WHERE l.id = a.id)', 'DELETE FROM ds_report WHERE game_kind = 41 AND bet_time = \'?\'', 'DELETE FROM temp_ds_live WHERE id IN(\r\nSELECT a.id FROM ds_live a WHERE a.end_time >= \'? 00:00:00\' AND a.end_time <= \'? 23:59:59\')');
INSERT INTO `c_total_report_config` VALUES ('4', null, 'SELECT a.id,\r\na.site_id AS siteId, \r\na.user_name as username,\r\na.bet_amount AS betAmount,\r\na.commissionable AS validAmount,\r\na.pay_off AS winLossAmount,\r\n11 AS liveId,\r\n\'bbin\' AS liveName,\r\n 15 AS gameKind,\r\n\'BBIN 3D\' AS gameKindName,\r\na.wagers_date as betTime,\r\nIFNULL((SELECT id FROM ds_game_type b WHERE b.out_game_code = a.game_type and b.parent_id = 15),15000) as gameType,\r\nIFNULL((SELECT b.game_name FROM ds_game_type b WHERE b.out_game_code = a.game_type and b.parent_id = 15),\'BBIN最新3D\') as gameName\r\nFROM ds_bbin_3d a WHERE a.win_loss_type IS NOT NULL \r\nAND NOT EXISTS (SELECT * FROM temp_bbin_3d t WHERE t.id=a.id) LIMIT 500', null, 'temp_bbin_3d', '50', 'BBIN 3D', 'SELECT SUM(a.bet_count) AS count,SUM(a.betamount) AS betMount,\r\nSUM(a.winlose) AS payoffMount,SUM(a.validamount) AS validateMount \r\nFROM ds_report a WHERE a.bet_time = \'?\'  and game_kind = 15', 'SELECT COUNT(*) AS count,SUM(a.bet_amount) AS betMount,\r\nSUM(a.commissionable) AS validateMount,SUM(a.pay_off) AS payoffMount\r\nFROM ds_bbin_3d a WHERE a.wagers_date >= \'? 00:00:00\' AND a.wagers_date <= \'? 23:59:59\' AND EXISTS \r\n(SELECT l.id FROM temp_bbin_3d l WHERE l.id = a.id)', 'DELETE FROM ds_report WHERE game_kind = 15 AND bet_time = \'?\'', 'DELETE FROM temp_bbin_3d WHERE id IN(\r\nSELECT a.id FROM ds_bbin_3d a WHERE a.wagers_date >= \'? 00:00:00\' AND a.wagers_date <= \'? 23:59:59\')');
INSERT INTO `c_total_report_config` VALUES ('5', null, 'SELECT a.id,\r\na.site_id AS siteId, \r\na.user_name as username,\r\na.bet_amount AS betAmount,\r\na.commissionable AS validAmount,\r\na.pay_off AS winLossAmount,\r\n11 AS liveId,\r\n\'bbin\' AS liveName,\r\n 5 AS gameKind,\r\n\'BBIN GAME\' AS gameKindName,\r\na.wagers_date as betTime,\r\nIFNULL((SELECT id FROM ds_game_type b WHERE b.out_game_code = a.game_type and b.parent_id = 5),5000) as gameType,\r\nIFNULL((SELECT b.game_name FROM ds_game_type b WHERE b.out_game_code = a.game_type  and b.parent_id = 5),\'BBIN最新机率\') as gameName\r\nFROM ds_bbin_jilv a WHERE a.win_loss_type IS NOT NULL AND win_loss_type<>-1 \r\nAND NOT EXISTS (SELECT * FROM temp_bbin_jilv t WHERE t.id=a.id) LIMIT 500', null, 'temp_bbin_jilv', '50', 'BBIN机率', 'SELECT SUM(a.bet_count) AS count,SUM(a.betamount) AS betMount,\r\nSUM(a.winlose) AS payoffMount,SUM(a.validamount) AS validateMount \r\nFROM ds_report a WHERE a.bet_time = \'?\'  and game_kind = 5', 'SELECT COUNT(*) AS count,SUM(a.bet_amount) AS betMount,\r\nSUM(a.commissionable) AS validateMount,SUM(a.pay_off) AS payoffMount\r\nFROM ds_bbin_jilv a WHERE a.wagers_date >= \'? 00:00:00\' AND a.wagers_date <= \'? 23:59:59\' AND EXISTS \r\n(SELECT l.id FROM temp_bbin_jilv l WHERE l.id = a.id)', 'DELETE FROM ds_report WHERE game_kind = 5 AND bet_time = \'?\'', 'DELETE FROM temp_bbin_jilv WHERE id IN(\r\nSELECT a.id FROM ds_bbin_jilv a WHERE a.wagers_date >= \'? 00:00:00\' AND a.wagers_date <= \'? 23:59:59\')');
INSERT INTO `c_total_report_config` VALUES ('6', null, 'SELECT a.id,\r\na.site_id AS siteId, \r\na.user_name as username,\r\na.bet_amount AS betAmount,\r\na.commissionable AS validAmount,\r\na.pay_off AS winLossAmount,\r\n11 AS liveId,\r\n\'bbin\' AS liveName,\r\n3 AS gameKind,\r\n\'BBIN 视讯\' AS gameKindName,\r\na.wagers_date as betTime,\r\na.game_type as gameType,\r\n\r\n(CASE a.game_type WHEN 3001 THEN \'百家乐\' \r\nWHEN 3002 THEN \'二八杠\'  \r\nWHEN 3003 THEN \'龙虎斗\'\r\nWHEN 3005 THEN \'三公\' \r\nWHEN 3006 THEN \'温州牌九\' \r\nWHEN 3007 THEN \'轮盘\' \r\nWHEN 3008 THEN \'骰宝\'\r\nWHEN 3010 THEN \'德州扑克\'\r\nWHEN 3011 THEN \'色碟\'\r\nWHEN 3012 THEN \'牛牛\'\r\nWHEN 3013 THEN \'赛本引\'\r\nWHEN 3014 THEN \'无限21点\'\r\nWHEN 3015 THEN \'番攤\'  \r\nELSE \'其他\'\r\nEND)\r\n as gameName\r\nFROM ds_bbin_live a WHERE a.win_loss_type IS NOT NULL AND win_loss_type<>4 \r\nAND NOT EXISTS (SELECT * FROM temp_bbin_live t WHERE t.id=a.id) LIMIT 500', null, 'temp_bbin_live ', '50', 'BBIN视讯', 'SELECT SUM(a.bet_count) AS count,SUM(a.betamount) AS betMount,\r\nSUM(a.winlose) AS payoffMount,SUM(a.validamount) AS validateMount \r\nFROM ds_report a WHERE a.bet_time = \'?\'  and game_kind = 3', 'SELECT COUNT(*) AS count,SUM(a.bet_amount) AS betMount,\r\nSUM(a.commissionable) AS validateMount,SUM(a.pay_off) AS payoffMount\r\nFROM ds_bbin_live a WHERE a.wagers_date >= \'? 00:00:00\' AND a.wagers_date <= \'? 23:59:59\' AND EXISTS \r\n(SELECT l.id FROM temp_bbin_live l WHERE l.id = a.id)', 'DELETE FROM ds_report WHERE game_kind = 3 AND bet_time = \'?\'', 'DELETE FROM temp_bbin_live WHERE id IN(\r\nSELECT a.id FROM ds_bbin_live a WHERE a.wagers_date >= \'? 00:00:00\' AND a.wagers_date <= \'? 23:59:59\')');
INSERT INTO `c_total_report_config` VALUES ('7', null, 'SELECT a.id,\r\na.site_id AS siteId, \r\na.user_name as username,\r\na.bet_amount AS betAmount,\r\na.commissionable AS validAmount,\r\na.pay_off AS winLossAmount,\r\n11 AS liveId,\r\n\'bbin\' AS liveName,\r\n1 AS gameKind,\r\n\'BBIN 体育\' AS gameKindName,\r\na.wagers_date as betTime,\r\n(CASE a.game_type WHEN \'BK\' THEN 1001 \r\nWHEN \'BS\' THEN 1002  \r\nWHEN \'F1\' THEN 1003\r\nWHEN \'FB\' THEN 1004 \r\nWHEN \'FT\' THEN 1005 \r\nWHEN \'FU\' THEN 1006 \r\nWHEN \'IH\' THEN 1007 \r\nWHEN \'SP\' THEN 1008\r\nWHEN \'TN\' THEN 1009 \r\nELSE 1003\r\nEND) as gameType,\r\n\r\n(CASE a.game_type WHEN \'BK\' THEN \'篮球\' \r\nWHEN \'BS\' THEN \'棒球\'  \r\nWHEN \'F1\' THEN \'其他\'\r\nWHEN \'FB\' THEN \'美足\' \r\nWHEN \'FT\' THEN \'足球\' \r\nWHEN \'FU\' THEN \'指数\' \r\nWHEN \'IH\' THEN \'冰球\'\r\nWHEN \'SP\' THEN \'冠军\'\r\nWHEN \'TN\' THEN \'网球\'  \r\nELSE \'其他\'\r\nEND)\r\n as gameName\r\nFROM ds_bbin_sport a WHERE a.win_loss_type IS NOT NULL AND win_loss_type<>-1 \r\nAND NOT EXISTS (SELECT * FROM temp_bbin_sport t WHERE t.id=a.id) LIMIT 500', null, 'temp_bbin_sport ', '50', 'BBIN体育', 'SELECT SUM(a.bet_count) AS count,SUM(a.betamount) AS betMount,\r\nSUM(a.winlose) AS payoffMount,SUM(a.validamount) AS validateMount \r\nFROM ds_report a WHERE a.bet_time = \'?\'  and game_kind = 1', 'SELECT COUNT(*) AS count,SUM(a.bet_amount) AS betMount,\r\nSUM(a.commissionable) AS validateMount,SUM(a.pay_off) AS payoffMount\r\nFROM ds_bbin_sport a WHERE a.wagers_date >= \'? 00:00:00\' AND a.wagers_date <= \'? 23:59:59\' AND EXISTS \r\n(SELECT l.id FROM temp_bbin_sport l WHERE l.id = a.id)', 'DELETE FROM ds_report WHERE game_kind = 1 AND bet_time = \'?\'', 'DELETE FROM temp_bbin_sport WHERE id IN(\r\nSELECT a.id FROM ds_bbin_sport a WHERE a.wagers_date >= \'? 00:00:00\' AND a.wagers_date <= \'? 23:59:59\')');
INSERT INTO `c_total_report_config` VALUES ('8', null, 'SELECT a.id,\r\na.site_id AS siteId, \r\na.username,\r\na.bet_amount AS betAmount,\r\na.commission_amount AS validAmount,\r\na.win_amount AS winLossAmount,\r\n13 AS liveId,\r\n\'h8 体育\' AS liveName,\r\n42 AS gameKind,\r\n\'h8 体育\' AS gameKindName,\r\na.transaction_date AS betTime,\r\n4200 AS gameType,\r\n\'h8 体育\' AS gameName\r\nFROM ds_m8_sport a WHERE a.win_lose_type IS NOT NULL AND win_lose_type<>-1 \r\nAND NOT EXISTS (SELECT * FROM temp_h8_sport t WHERE t.id=a.id) LIMIT 500', null, 'temp_h8_sport', '50', 'h8体育', 'SELECT SUM(a.bet_count) AS count,SUM(a.betamount) AS betMount,\r\nSUM(a.winlose) AS payoffMount,SUM(a.validamount) AS validateMount \r\nFROM ds_report a WHERE a.bet_time = \'?\'  and game_kind = 42', 'SELECT COUNT(*) AS count,SUM(a.bet_amount) AS betMount,\r\nSUM(a.commission_amount) AS validateMount,SUM(a.win_amount) AS payoffMount\r\nFROM ds_m8_sport a WHERE a.transaction_date >= \'? 00:00:00\' AND a.transaction_date <= \'? 23:59:59\' AND EXISTS \r\n(SELECT l.id FROM temp_h8_sport l WHERE l.id = a.id)', 'DELETE FROM ds_report WHERE game_kind = 42 AND bet_time = \'?\'', 'DELETE FROM temp_h8_sport WHERE id IN(\r\nSELECT a.id FROM ds_m8_sport a WHERE a.transaction_date >= \'? 00:00:00\' AND a.transaction_date <= \'? 23:59:59\')');
INSERT INTO `c_total_report_config` VALUES ('9', null, 'SELECT a.id,\r\na.siteId AS siteId, \r\na.username,\r\na.betAmount AS betAmount,\r\na.commissonAmount AS validAmount,\r\na.winLose AS winLossAmount,\r\n12 AS liveId,\r\n\'DS电子游戏\' AS liveName,\r\n53 AS gameKind,\r\n\'DS电子游戏\' AS gameKindName,\r\na.createTime AS betTime,\r\nIFNULL((SELECT id FROM ds_game_type b WHERE b.out_game_code = a.gameKey AND b.parent_id=53),53000) as gameType,\r\nIFNULL((SELECT b.game_name FROM ds_game_type b WHERE b.out_game_code = a.gameKey AND b.parent_id=53),\'DS最新电子游戏\') as gameName\r\nFROM video_game_wager a WHERE a.winLoseType IS NOT NULL AND winLoseType<>-1 and isFinal=1\r\nAND NOT EXISTS (SELECT * FROM temp_video_game_wager t WHERE t.id=a.id) LIMIT 500', null, 'temp_video_game_wager', '50', 'DS机率游戏', 'SELECT SUM(a.bet_count) AS count,SUM(a.betamount) AS betMount,\r\nSUM(a.winlose) AS payoffMount,SUM(a.validamount) AS validateMount \r\nFROM ds_report a WHERE a.bet_time = \'?\'  and game_kind = 53', 'SELECT COUNT(*) AS count,SUM(a.betAmount) AS betMount,\r\nSUM(a.commissonAmount) AS validateMount,SUM(a.winLose) AS payoffMount\r\nFROM video_game_wager a WHERE a.createTime >= \'? 00:00:00\' AND a.createTime <= \'? 23:59:59\' AND EXISTS \r\n(SELECT l.id FROM temp_video_game_wager l WHERE l.id = a.id)', 'DELETE FROM ds_report WHERE game_kind = 53 AND bet_time = \'?\'', 'DELETE FROM temp_video_game_wager WHERE id IN(\r\nSELECT a.id FROM video_game_wager a WHERE a.createTime >= \'? 00:00:00\' AND a.createTime <= \'? 23:59:59\')');
INSERT INTO `c_total_report_config` VALUES ('10', null, 'SELECT a.id,\r\na.site_id AS siteId, \r\na.username,\r\na.stake_amount AS betAmount,\r\na.valid_stake AS validAmount,\r\na.win_loss AS winLossAmount,\r\n12 AS liveId,\r\n\'ds平台\' AS liveName,\r\n55 AS gameKind,\r\n\'ds传统彩\' AS gameKindName,\r\na.bet_time as betTime,\r\nIFNULL((SELECT id FROM ds_game_type b WHERE b.out_game_code = a.game_info_id and b.parent_id = 55),55000) as gameType,\r\nIFNULL((SELECT b.game_name FROM ds_game_type b WHERE b.out_game_code = a.game_info_id  and b.parent_id = 55),\'DS传统彩\') as gameName\r\nFROM ds_lottery_bet a WHERE a.win_loss_type IS NOT NULL AND win_loss_type<>-1 \r\nAND NOT EXISTS (SELECT * FROM temp_ds_live_lottery t WHERE t.id=a.id) LIMIT 500;', null, 'temp_ds_live_lottery', '50', 'DS传统彩', 'SELECT SUM(a.bet_count) AS count,SUM(a.betamount) AS betMount,\r\nSUM(a.winlose) AS payoffMount,SUM(a.validamount) AS validateMount \r\nFROM ds_report a WHERE a.bet_time = \'?\'  and game_kind = 55', 'SELECT COUNT(*) AS count,SUM(a.stake_amount) AS betMount,\r\nSUM(a.valid_stake) AS validateMount,SUM(a.win_loss) AS payoffMount\r\nFROM ds_lottery_bet a WHERE a.bet_time >= \'? 00:00:00\' AND a.bet_time <= \'? 23:59:59\' AND EXISTS \r\n(SELECT l.id FROM temp_ds_live_lottery l WHERE l.id = a.id)', 'DELETE FROM ds_report WHERE game_kind = 55 AND bet_time = \'?\'', 'DELETE FROM temp_ds_live_lottery WHERE id IN(\r\nSELECT a.id FROM ds_lottery_bet a WHERE a.bet_time >= \'? 00:00:00\' AND a.bet_time <= \'? 23:59:59\')');
INSERT INTO `c_total_report_config` VALUES ('11', null, 'SELECT a.id,\r\na.site_id AS siteId, \r\na.username,\r\na.stake_amount AS betAmount,\r\na.valid_stake AS validAmount,\r\na.win_loss AS winLossAmount,\r\n12 AS liveId,\r\n\'ds平台\' AS liveName,\r\n54 AS gameKind,\r\n\'ds香港彩\' AS gameKindName,\r\na.bet_time as betTime,\r\n54000 as gameType,\r\n\'DS香港彩\' as gameName\r\nFROM ds_lotto_bet a WHERE a.win_loss_type IS NOT NULL AND win_loss_type<>-1 \r\nAND NOT EXISTS (SELECT * FROM temp_ds_lotto_bet t WHERE t.id=a.id) LIMIT 500', null, 'temp_ds_lotto_bet ', '50', 'DS香港彩', 'SELECT SUM(a.bet_count) AS count,SUM(a.betamount) AS betMount,\r\nSUM(a.winlose) AS payoffMount,SUM(a.validamount) AS validateMount \r\nFROM ds_report a WHERE a.bet_time = \'?\'  and game_kind = 54', 'SELECT COUNT(*) AS count,SUM(a.stake_amount) AS betMount,\r\nSUM(a.valid_stake) AS validateMount,SUM(a.win_loss) AS payoffMount\r\nFROM ds_lotto_bet a WHERE a.bet_time >= \'? 00:00:00\' AND a.bet_time <= \'? 23:59:59\' AND EXISTS \r\n(SELECT l.id FROM temp_ds_lotto_bet l WHERE l.id = a.id)', 'DELETE FROM ds_report WHERE game_kind = 54 AND bet_time = \'?\'', 'DELETE FROM temp_ds_lotto_bet WHERE id IN(\r\nSELECT a.id FROM ds_lotto_bet a WHERE a.bet_time >= \'? 00:00:00\' AND a.bet_time <= \'? 23:59:59\')');
INSERT INTO `c_total_report_config` VALUES ('12', null, 'SELECT a.id,\r\na.site_id AS siteId, \r\na.username,\r\na.bet_amount AS betAmount,\r\na.valid_amount AS validAmount,\r\na.pay_off AS winLossAmount,\r\n12 AS liveId,\r\n\'DS 分分彩\' AS liveName,\r\n52 AS gameKind,\r\n\'DS分分彩\' AS gameKindName,\r\na.bet_time AS betTime,\r\nlotto_type AS gameType,\r\nlotto_name AS gameName\r\nFROM ds_fenfen_lotto a WHERE a.win_loss_type IS NOT NULL AND win_loss_type<>-1 \r\nAND NOT EXISTS (SELECT * FROM temp_fenfen t WHERE t.id=a.id) LIMIT 500', null, 'temp_fenfen', '50', 'DS分分彩', 'SELECT SUM(a.bet_count) AS count,SUM(a.betamount) AS betMount,\r\nSUM(a.winlose) AS payoffMount,SUM(a.validamount) AS validateMount \r\nFROM ds_report a WHERE a.bet_time = \'?\'  and game_kind = 52', 'SELECT COUNT(*) AS count,SUM(a.bet_amount) AS betMount,\r\nSUM(a.valid_amount) AS validateMount,SUM(a.pay_off) AS payoffMount\r\nFROM ds_fenfen_lotto a WHERE a.bet_time >= \'? 00:00:00\' AND a.bet_time <= \'? 23:59:59\'  AND a.win_loss_type<>-1  AND EXISTS \r\n(SELECT l.id FROM temp_fenfen l WHERE l.id = a.id);', 'DELETE FROM ds_report WHERE game_kind = 52 AND bet_time = \'?\';', 'DELETE FROM temp_fenfen WHERE id IN(\r\nSELECT a.id FROM ds_fenfen_lotto a WHERE a.bet_time >= \'? 00:00:00\' AND a.bet_time <= \'? 23:59:59\')');
INSERT INTO `c_total_report_config` VALUES ('13', null, 'SELECT a.id,\r\na.siteId AS siteId, \r\na.username,\r\na.amount AS betAmount,\r\na.validate_amount AS validAmount,\r\na.payoff AS winLossAmount,\r\n15 AS liveId,\r\n\'MG电子游戏\' AS liveName,\r\n60 AS gameKind,\r\n\'MG电子游戏\' AS gameKindName,\r\na.transaction_timestamp_date AS betTime,\r\nIFNULL((SELECT id FROM ds_game_type b WHERE b.out_game_code = a.game_code and b.parent_id = 60),5000) as gameType,\r\nIFNULL((SELECT b.game_name FROM ds_game_type b WHERE b.out_game_code = a.game_code  and b.parent_id = 60),\'MG最新机率\') as gameName\r\nFROM ds_mg_game a WHERE a.win_lose_type IS NOT NULL AND a.win_lose_type<>-1 \r\nAND NOT EXISTS (SELECT * FROM temp_mg t WHERE t.id=a.id) LIMIT 500', null, 'temp_mg', '50', 'MG电子游戏', 'SELECT SUM(a.bet_count) AS count,SUM(a.betamount) AS betMount,\r\nSUM(a.winlose) AS payoffMount,SUM(a.validamount) AS validateMount \r\nFROM ds_report a WHERE a.bet_time = \'?\'  and game_kind = 60', 'SELECT COUNT(*) AS count,SUM(a.amount) AS betMount,\r\nSUM(a.validate_amount) AS validateMount,SUM(a.payoff) AS payoffMount\r\nFROM ds_mg_game a WHERE a.transaction_timestamp_date >= \'? 00:00:00\' AND a.transaction_timestamp_date <= \'? 23:59:59\'  AND a.win_lose_type<>-1  AND EXISTS \r\n(SELECT l.id FROM temp_mg l WHERE l.id = a.id);', 'DELETE FROM ds_report WHERE game_kind = 60 AND bet_time = \'?\';', 'DELETE FROM temp_mg WHERE id IN(\r\nSELECT a.id FROM ds_mg_game a WHERE a.transaction_timestamp_date >= \'? 00:00:00\' AND a.transaction_timestamp_date <= \'? 23:59:59\')');

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
-- Records of ds_game_type
-- ----------------------------
INSERT INTO `ds_game_type` VALUES ('0', null, null, null, null);
INSERT INTO `ds_game_type` VALUES ('1', 'BBIN球类', '1', null, '11');
INSERT INTO `ds_game_type` VALUES ('3', 'BBIN视讯', '3', null, '11');
INSERT INTO `ds_game_type` VALUES ('5', 'BBIN机率', '5', null, '11');
INSERT INTO `ds_game_type` VALUES ('12', 'BBIN彩票', '12', null, '11');
INSERT INTO `ds_game_type` VALUES ('15', 'BBIN3D厅', '15', null, '11');
INSERT INTO `ds_game_type` VALUES ('21', 'AG视讯', '21', null, '2');
INSERT INTO `ds_game_type` VALUES ('22', 'AG机率', '22', null, '2');
INSERT INTO `ds_game_type` VALUES ('41', 'DS视讯', '41', null, '12');
INSERT INTO `ds_game_type` VALUES ('42', 'H8体育', '42', null, '13');
INSERT INTO `ds_game_type` VALUES ('51', 'DS经典彩', '51', null, '12');
INSERT INTO `ds_game_type` VALUES ('52', 'DS分分彩', '52', null, '12');
INSERT INTO `ds_game_type` VALUES ('53', 'DS电游', '53', null, '12');
INSERT INTO `ds_game_type` VALUES ('54', 'DS六合彩', '54', null, '12');
INSERT INTO `ds_game_type` VALUES ('55', 'DS传统彩', '55', null, '12');
INSERT INTO `ds_game_type` VALUES ('60', 'MG电子', '60', null, '15');
INSERT INTO `ds_game_type` VALUES ('1001', '篮球', 'BK', '1', '11');
INSERT INTO `ds_game_type` VALUES ('1002', '棒球', 'BS', '1', '11');
INSERT INTO `ds_game_type` VALUES ('1003', '其他', 'F1', '1', '11');
INSERT INTO `ds_game_type` VALUES ('1004', '美足', 'FB', '1', '11');
INSERT INTO `ds_game_type` VALUES ('1005', '足球', 'FT', '1', '11');
INSERT INTO `ds_game_type` VALUES ('1006', '指数', 'FU', '1', '11');
INSERT INTO `ds_game_type` VALUES ('1007', '冰球', 'IH', '1', '11');
INSERT INTO `ds_game_type` VALUES ('1008', '冠军', 'SP', '1', '11');
INSERT INTO `ds_game_type` VALUES ('1009', '网球', 'TN', '1', '11');
INSERT INTO `ds_game_type` VALUES ('1010', '混合过关', 'CB', '1', '11');
INSERT INTO `ds_game_type` VALUES ('3001', '百家乐', '3001', '3', '11');
INSERT INTO `ds_game_type` VALUES ('3002', '二八杠', '3002', '3', '11');
INSERT INTO `ds_game_type` VALUES ('3003', '龙虎斗', '3003', '3', '11');
INSERT INTO `ds_game_type` VALUES ('3005', '三公', '3005', '3', '11');
INSERT INTO `ds_game_type` VALUES ('3006', '温州牌九', '3006', '3', '11');
INSERT INTO `ds_game_type` VALUES ('3007', '轮盘', '3007', '3', '11');
INSERT INTO `ds_game_type` VALUES ('3008', '骰宝', '3008', '3', '11');
INSERT INTO `ds_game_type` VALUES ('3010', '德州扑克', '3010', '3', '11');
INSERT INTO `ds_game_type` VALUES ('3011', '色碟', '3011', '3', '11');
INSERT INTO `ds_game_type` VALUES ('3012', '牛牛', '3012', '3', '11');
INSERT INTO `ds_game_type` VALUES ('3013', '赛本引', '3013', '3', '11');
INSERT INTO `ds_game_type` VALUES ('3014', '无限21点', '3014', '3', '11');
INSERT INTO `ds_game_type` VALUES ('3015', '番摊', '3015', '3', '11');
INSERT INTO `ds_game_type` VALUES ('4200', 'H8体育', '4200', '42', '13');
INSERT INTO `ds_game_type` VALUES ('5000', 'BBIN机率', '5000', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5004', '足球拉霸', '5004', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5005', '惑星战记', '5005', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5006', 'Starburst', '5006', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5007', '激爆水果盘', '5007', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5009', '金剛爬樓', '5009', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5011', '西遊記', '5011', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5013', '傳統', '5013', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5014', '丛林', '5014', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5015', 'FIFA2010', '5015', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5016', '史前丛林冒险', '5016', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5017', '星際大戰', '5017', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5018', '齐天大圣', '5018', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5019', '水果樂園', '5019', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5020', '热带风情', '5020', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5025', '法海鬥白蛇', '5025', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5026', '2012伦敦奥运', '5026', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5027', '功夫龍', '5027', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5028', '中秋月光派对', '5028', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5029', '聖誕派對', '5029', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5030', '幸运财神', '5030', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5034', '王牌5PK', '5034', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5035', '加勒比扑克', '5035', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5039', '魚蝦蟹', '5039', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5040', '百搭二王', '5040', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5041', '7PK', '5041', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5042', '异星战场', '5042', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5047', '屍樂園', '5047', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5048', '特务危机', '5048', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5049', '玉蒲團', '5049', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5050', '战火佳人', '5050', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5057', '明星97', '5057', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5058', '疯狂水果盘', '5058', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5059', '馬戲團', '5059', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5060', '动物奇观五', '5060', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5061', '超級7', '5061', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5062', '龙在囧途\r', '5062', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5063', '水果拉霸\r', '5063', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5064', '扑克拉霸', '5064', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5065', '筒子拉霸\r', '5065', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5066', '足球拉霸\r', '5066', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5070', '黃金大轉輪', '5070', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5073', '百家乐大转轮', '5073', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5076', '數字大轉輪', '5076', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5077', '水果大转轮', '5077', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5078', '象棋大轉輪', '5078', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5079', '3D数字大转轮', '5079', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5080', '樂透轉輪', '5080', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5083', '钻石列车', '5083', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5084', '聖獸傳說', '5084', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5086', '海底派对', '5086', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5088', '鬥大', '5088', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5089', '红狗', '5089', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5091', '三國拉霸', '5091', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5092', '封神榜', '5092', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5093', '金瓶梅', '5093', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5094', '金瓶梅2', '5094', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5095', '鬥雞', '5095', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5101', '欧式轮盘', '5101', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5102', '美式輪盤', '5102', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5103', '彩金轮盘', '5103', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5104', '法式輪盤', '5104', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5106', '三国', '5106', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5115', '經典21點', '5115', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5117', '維加斯21點', '5117', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5118', '奖金21点', '5118', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5131', '皇家德州撲克', '5131', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5201', '火焰山', '5201', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5202', '月光寶盒', '5202', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5203', '爱你一万年', '5203', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5204', '2014FIFA', '5204', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5401', '天山侠侣传\r', '5401', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5402', '夜市人生', '5402', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5403', '七剑传说', '5403', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5404', '沙灘排球', '5404', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5405', '暗器之王', '5405', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5406', '神舟27', '5406', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5407', '大红帽与小野狼', '5407', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5601', '秘境冒險', '5601', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5701', '连连看', '5701', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5703', '發達囉', '5703', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5705', '聚寶盆', '5705', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5706', '浓情巧克力', '5706', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5707', '金錢豹', '5707', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5801', '海豚世界', '5801', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5802', '阿基里斯', '5802', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5803', '阿兹特克宝藏', '5803', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5804', '大明星', '5804', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5805', '凯萨帝国', '5805', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5806', '奇幻花園', '5806', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5808', '浪人武士', '5808', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5809', '空戰英豪', '5809', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5810', '航海时代', '5810', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5811', '狂歡夜', '5811', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5821', '国际足球', '5821', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5823', '發大財', '5823', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5824', '恶龙传说', '5824', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5825', '金蓮', '5825', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5826', '金矿工', '5826', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5827', '老船長', '5827', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5828', '霸王龙', '5828', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5831', '高球之旅', '5831', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5832', '高速卡车', '5832', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5833', '沉默武士', '5833', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5835', '喜福牛年', '5835', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5836', '龍捲風', '5836', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5837', '喜福猴年', '5837', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5888', 'JACKPOT', '5888', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5901', '連環奪寶', '5901', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5902', '糖果派对', '5902', '5', '11');
INSERT INTO `ds_game_type` VALUES ('5903', '秦皇祕寶', '5903', '5', '11');
INSERT INTO `ds_game_type` VALUES ('12000', 'BBIN彩票', '12000', '12', '11');
INSERT INTO `ds_game_type` VALUES ('15000', 'BBIN3D厅', '15000', '15', '11');
INSERT INTO `ds_game_type` VALUES ('15006', '3D玉蒲团', '15006', '15', '11');
INSERT INTO `ds_game_type` VALUES ('15016', '厨王争霸', '15016', '15', '11');
INSERT INTO `ds_game_type` VALUES ('15018', '激情243', '15018', '15', '11');
INSERT INTO `ds_game_type` VALUES ('15019', '倩女幽魂', '15019', '15', '11');
INSERT INTO `ds_game_type` VALUES ('15021', '全民狗仔', '15021', '15', '11');
INSERT INTO `ds_game_type` VALUES ('15022', '怒火领空', '15022', '15', '11');
INSERT INTO `ds_game_type` VALUES ('15024', '2014世足赛', '15024', '15', '11');
INSERT INTO `ds_game_type` VALUES ('21001', '百家乐', 'BAC', '21', '2');
INSERT INTO `ds_game_type` VALUES ('21002', '包桌百家乐', 'CBAC', '21', '2');
INSERT INTO `ds_game_type` VALUES ('21003', '连环百家乐', 'LINK', '21', '2');
INSERT INTO `ds_game_type` VALUES ('21004', '龙虎', 'DT', '21', '2');
INSERT INTO `ds_game_type` VALUES ('21005', '骰宝', 'SHB', '21', '2');
INSERT INTO `ds_game_type` VALUES ('21006', '轮盘', 'ROU', '21', '2');
INSERT INTO `ds_game_type` VALUES ('21007', '番攤', 'FT', '21', '2');
INSERT INTO `ds_game_type` VALUES ('21008', '竞咪百家乐', 'LBAC', '21', '2');
INSERT INTO `ds_game_type` VALUES ('21009', '终极德州扑克', 'ULPK', '21', '2');
INSERT INTO `ds_game_type` VALUES ('21010', '保险百家乐', 'SBAC', '21', '2');
INSERT INTO `ds_game_type` VALUES ('22000', 'AG机率', '22000', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22001', '疯狂水果店', 'SL2', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22002', '3D水族馆', 'SL3', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22003', '视频扑克(杰克高手)', 'PK_J', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22004', '极速赛车', 'SL4', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22005', '新视频扑克(杰克高手)', 'PKBJ', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22006', '水果拉霸', 'FRU', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22007', '捕鱼王', 'HUNTER', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22008', '美女沙排(沙滩排球)', 'SLM1', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22009', '运财羊(新年运财羊)', 'SLM2', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22010', '武圣传', 'SLM3', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22011', '幸运老虎机', 'SC01', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22012', '极速幸运轮', 'TGLW', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22013', '武则天', 'SLM4', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22014', '赌场战争', 'TGCW', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22015', '太空漫游', 'SB01', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22016', '复古花园', 'SB02', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22017', '关东煮', 'SB03', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22018', '牧场咖啡', 'SB04', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22019', '甜一甜屋', 'SB05', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22020', '日本武士', 'SB06', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22021', '巴西世界杯', 'SL1', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22022', '麻将老虎机', 'SB08', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22023', '西洋棋老虎机', 'SB09', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22024', '开心农场', 'SB10', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22025', '夏日营地', 'SB11', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22026', '海底漫游', 'SB12', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22027', '鬼马小丑', 'SB13', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22028', '机动乐园', 'SB14', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22029', '惊吓鬼屋', 'SB15', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22030', '疯狂马戏团', 'SB16', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22031', '海洋剧场', 'SB17', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22032', '水上乐园', 'SB18', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22033', '土地神', 'SB25', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22034', '空中戰爭', 'SB19', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22035', '搖滾狂迷', 'SB20', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22036', '越野機車', 'SB21', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22037', '埃及奧秘', 'SB22', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22038', '歡樂時光', 'SB23', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22039', '侏羅紀', 'SB24', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22040', '布袋和尚', 'SB26', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22041', '正財神', 'SB27', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22042', '武財神', 'SB28', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22043', '偏財神', 'SB29', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22044', '性感女僕', 'AV01', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22045', '龍珠', 'XG01', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22046', '幸運 8', 'XG02', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22047', '閃亮女郎', 'XG03', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22048', '金魚', 'XG04', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22049', '中國新年', 'XG05', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22050', '海盜王', 'XG06', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22051', '鮮果狂熱', 'XG07', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22052', '小熊貓', 'XG08', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22053', '大豪客', 'XG09', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22054', '靈猴獻瑞', 'SB30', '22', '2');
INSERT INTO `ds_game_type` VALUES ('22055', '体育', 'FIFA', '22', '2');
INSERT INTO `ds_game_type` VALUES ('41001', '百家乐', 'BACCARAT', '41', '12');
INSERT INTO `ds_game_type` VALUES ('41002', '龙虎', 'DRAGON_TIGER', '41', '12');
INSERT INTO `ds_game_type` VALUES ('41003', '轮盘', 'ROULETTE', '41', '12');
INSERT INTO `ds_game_type` VALUES ('41004', '保险百家乐', 'BACCARAT_INSURANCE', '41', '12');
INSERT INTO `ds_game_type` VALUES ('41005', '骰宝', 'SICBO', '41', '12');
INSERT INTO `ds_game_type` VALUES ('41006', '色碟', 'XOC_DIA', '41', '12');
INSERT INTO `ds_game_type` VALUES ('41007', '斗牛', 'BULL_BULL', '41', '12');
INSERT INTO `ds_game_type` VALUES ('51001', '香港彩', '51001', '51', '12');
INSERT INTO `ds_game_type` VALUES ('51002', '重庆时时彩', '51002', '51', '12');
INSERT INTO `ds_game_type` VALUES ('51003', '幸运农场', '51003', '51', '12');
INSERT INTO `ds_game_type` VALUES ('51004', '北京赛车', '51004', '51', '12');
INSERT INTO `ds_game_type` VALUES ('51005', '广东快乐十分', '51005', '51', '12');
INSERT INTO `ds_game_type` VALUES ('51006', '广西快乐十分', '51006', '51', '12');
INSERT INTO `ds_game_type` VALUES ('51007', '新疆时时彩', '51007', '51', '12');
INSERT INTO `ds_game_type` VALUES ('51008', '江苏快3', '51008', '51', '12');
INSERT INTO `ds_game_type` VALUES ('52001', '山东11选5', '52001', '52', '12');
INSERT INTO `ds_game_type` VALUES ('52002', '重庆时时彩', '52002', '52', '12');
INSERT INTO `ds_game_type` VALUES ('52003', '黑龙江时时彩', '52003', '52', '12');
INSERT INTO `ds_game_type` VALUES ('52004', '重庆11选5', '52004', '52', '12');
INSERT INTO `ds_game_type` VALUES ('52005', '江西11选5', '52005', '52', '12');
INSERT INTO `ds_game_type` VALUES ('52006', '广东11选5', '52006', '52', '12');
INSERT INTO `ds_game_type` VALUES ('52007', '新疆时时彩', '52007', '52', '12');
INSERT INTO `ds_game_type` VALUES ('52008', '江苏快三', '52008', '52', '12');
INSERT INTO `ds_game_type` VALUES ('52009', '福彩3D', '52009', '52', '12');
INSERT INTO `ds_game_type` VALUES ('52010', '排列三/五', '52010', '52', '12');
INSERT INTO `ds_game_type` VALUES ('52011', '分分彩', '52011', '52', '12');
INSERT INTO `ds_game_type` VALUES ('52012', '天津时时彩', '52012', '52', '12');
INSERT INTO `ds_game_type` VALUES ('52013', '快三分分彩', '52013', '52', '12');
INSERT INTO `ds_game_type` VALUES ('52014', '江西时时彩', '52014', '52', '12');
INSERT INTO `ds_game_type` VALUES ('52015', 'PK拾', '52015', '52', '12');
INSERT INTO `ds_game_type` VALUES ('52016', '湖北快3', '52016', '52', '12');
INSERT INTO `ds_game_type` VALUES ('53000', 'DS电子游戏', '53000', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53001', '欧式轮盘', 'EURoulette', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53002', '骰宝', 'SicBo', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53003', '鱼虾蟹', 'FishPrawnCrab', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53004', '鱼虾鲎', 'Belangkai', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53005', '幸运节轮盘', 'LuckyKnot', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53007', '百家乐', 'Baccarat', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53008', '红狗', 'RedDog', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53009', '大篷车', 'CircusWagon', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53010', '守车人', 'CabooseMan', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53011', '侏罗纪', 'LastDinosaurs', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53012', '开心农场', 'HappyFarm', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53013', '掘金者', 'GoldMiner', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53014', '皇家赛马', 'RoyalAscot', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53015', '最佳射手', 'ShootOut', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53016', '性感沙滩', 'SexyBeach', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53017', '金指玉夜', 'LuxNight', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53018', '羽球冠军', 'BadmintonChampion', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53019', '万圣节', 'HalloweenNight', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53020', '急速逛飙', 'HurricaneSpeed', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53021', '迷失非洲', 'LostInAfrica', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53022', '舞狮', 'LionDance', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53023', '航海时代', 'AgeOfDiscovery', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53024', '企鹅大冒险', 'PenguinAdventure', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53025', '阿努比斯', 'Anubis', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53026', '机器人世界', 'RobotWorld', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53027', '中秋节', 'MidAutumnFestival', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53028', '宠物物语', 'PetsWar', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53029', '疯狂小猪', 'AngryPigs', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53030', '甜蜜享受', 'AfterDinner', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53031', '杀手23', 'Killer23', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53032', '大人物', 'MrBig', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53033', '性感宝贝', 'HotSweety', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53034', '单身贵族', 'HottestBachelor', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53035', '鬼屋', 'GhostHouse', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53036', '地下狂飙', 'Underground', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53037', '北极世界', 'NorthPole', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53038', '第三世纪', 'The3rdCentury', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53039', '爱人机器', 'LoverMachine', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53040', '橘子公园', 'OrangePark', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53041', '龙珠', 'DragonBall', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53042', '快乐小丑', 'HappyJoker', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53043', '扑克K', 'KingCard', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53044', '鬼堡', 'GhostCastle', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53045', '黑帮', 'Gangs', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53046', '十三幺', 'Mahjong13', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53047', '外星人', 'TheAliens', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53048', '玛雅代码', 'MayanCode', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53049', '夏日海滩', 'SummerBeach', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53050', '超级美食', 'SuperFood', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53051', '宠物战争', 'AnimalsWar', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53052', '牛仔很忙', 'Cowboy', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53053', '魔鬼宝藏', 'SatansTreasure', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53054', '快乐小鸡', 'HappyChicken', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53055', '可爱脸谱', 'LovelySmile', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53056', '幸运樱桃', 'LuckyCheery', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53057', '钢铁战争', 'MetalWar', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53058', '圣诞快乐', 'MerryXmas', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53059', '荣誉之战', 'GloryWar', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53060', '财源滚滚', 'MoneyOnTree', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53061', '金彩夺宝', 'JCDB', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53062', '牌九', 'PaiGow', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53064', '夜店', 'NightClub', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53065', '百家乐大转盘', 'BaccaratWheel', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53066', '21点', 'Blackjack', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53068', '美式轮盘', 'USRoulette', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53069', '宙斯', 'OrionInteplayV1', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53070', '罗宾', 'ROBYN', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53071', '王牌', 'CardLord', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53072', '水果大王', 'FruitKing', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53073', '糖果派对', 'CandyClub', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53074', '至尊百家乐', 'BaccaratPro', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53075', '琅琊榜', 'NirvanaInFire', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53076', '快乐大本营', 'BoomingTown', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53077', '多人百家乐', 'Multibaccarat', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53300', '性感沙滩', 'H5_SexyBeach', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53301', '金指玉夜', 'H5_LuxNight', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53302', '羽球冠军', 'H5_BadmintonChampion', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53303', '最佳射手', 'H5_ShootOut', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53304', '皇家赛马', 'H5_RoyalAscot', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53305', '掘金者', 'H5_GoldMiner', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53306', '开心农场', 'H5_HappyFarm', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53307', '侏罗纪', 'H5_LastDinosaurs', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53308', '守车人', 'H5_CabooseMan', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53309', '大篷车', 'H5_CircusWagon', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53310', '宠物物语', 'H5_PetsWar', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53311', '中秋节', 'H5_MidAutumnFestival', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53312', '机器人世界', 'H5_RobotWorld', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53313', '阿努比斯', 'H5_Anubis', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53314', '企鹅大冒险', 'H5_PenguinAdventure', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53315', '急速狂飙', 'H5_HurricaneSpeed', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53316', '舞狮', 'H5_LionDance', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53317', '迷失非洲', 'H5_LostInAfrica', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53318', '航海时代', 'H5_AgeOfDiscovery', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53319', '万圣节之夜', 'H5_HalloweenNight', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53320', '北极世界', 'H5_NorthPole', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53321', '地下狂飙', 'H5_Underground', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53322', '第三世纪', 'H5_The3rdCentury', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53323', '大人物', 'H5_MrBig', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53324', '杀手23', 'H5_Killer23', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53325', '单身贵族', 'H5_HottestBachelor', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53326', '性感宝贝', 'H5_HotSweety', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53327', '鬼屋', 'H5_GhostHouse', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53328', '甜蜜派对', 'H5_AfterDinner', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53329', '疯狂小猪', 'H5_AngryPigs', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53330', '爱人机器', 'H5_LoverMachine', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53331', '玛雅传说', 'H5_MayanCode', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53332', '外星人', 'H5_TheAliens', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53333', '十三幺', 'H5_Mahjong13', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53334', '黑帮', 'H5_Gangs', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53335', '鬼堡', 'H5_GhostCastle', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53336', '扑克K', 'H5_KingCard', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53337', '快乐小丑', 'H5_HappyJoker', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53338', '龙珠', 'H5_DragonBall', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53339', '橘子公园', 'H5_OrangePark', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53340', '圣诞快乐', 'H5_MerryXmas', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53341', '钢铁战争', 'H5_MetalWar', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53342', '幸运樱桃', 'H5_LuckyCheery', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53343', '可爱脸谱', 'H5_LovelySmile', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53344', '快乐小鸡', 'H5_HappyChicken', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53345', '魔鬼宝藏', 'H5_SatansTreasure', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53346', '牛仔很忙', 'H5_Cowboy', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53347', '宠物战争', 'H5_AnimalsWar', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53348', '超级美食', 'H5_SuperFood', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53349', '夏日海滩', 'H5_SummerBeach', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53350', '鱼虾蟹', 'H5_FishPrawnCrab', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53351', '鱼虾鲎', 'H5_Belangkai', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53352', '骰宝', 'H5_SicBo', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53353', '欧式轮盘', 'H5_EURoulette', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53354', '美式轮盘', 'H5_USRoulette', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53355', '红狗', 'H5_RedDog', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53356', '21点', 'H5_Blackjack', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53357', '皇家捕鱼', 'FishingRoyal', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53358', '财神到', 'Mammon', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53359', '加勒比扑克', 'CaribbeanPoker', '53', '12');
INSERT INTO `ds_game_type` VALUES ('53360', '飞禽走兽', 'ForestAnimal', '53', '12');
INSERT INTO `ds_game_type` VALUES ('55000', 'DS彩票', '55000', '55', '12');
INSERT INTO `ds_game_type` VALUES ('55001', '重庆时时彩', '2', '55', '12');
INSERT INTO `ds_game_type` VALUES ('55002', '北京赛车', '3', '55', '12');
INSERT INTO `ds_game_type` VALUES ('55003', '幸运农场', '5', '55', '12');
INSERT INTO `ds_game_type` VALUES ('55004', '广东快乐十分', '1', '55', '12');
INSERT INTO `ds_game_type` VALUES ('55005', '江苏骰宝', '4', '55', '12');
INSERT INTO `ds_game_type` VALUES ('55006', '广西快乐十分', '12', '55', '12');
INSERT INTO `ds_game_type` VALUES ('55007', '新疆时时彩', '7', '55', '12');
INSERT INTO `ds_game_type` VALUES ('55008', '天津时时彩', '6', '55', '12');
INSERT INTO `ds_game_type` VALUES ('55009', '江西时时彩', '8', '55', '12');
INSERT INTO `ds_game_type` VALUES ('55010', '云南时时彩', '9', '55', '12');
INSERT INTO `ds_game_type` VALUES ('55011', '上海时时彩', '10', '55', '12');
INSERT INTO `ds_game_type` VALUES ('55012', '天津快乐十分', '11', '55', '12');
INSERT INTO `ds_game_type` VALUES ('55013', '湖南快乐十分', '13', '55', '12');
INSERT INTO `ds_game_type` VALUES ('55014', '安徽快3', '14', '55', '12');
INSERT INTO `ds_game_type` VALUES ('55015', '广西快3', '15', '55', '12');
INSERT INTO `ds_game_type` VALUES ('55016', '吉林快3', '16', '55', '12');
INSERT INTO `ds_game_type` VALUES ('60001', '5卷的驱动器 ', '28114', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60002', '王牌和八分', '28116', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60003', '王牌和面孔2', '28128', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60004', '王牌和面孔', '28122', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60005', '宫廷历险', '28134', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60006', '大航海时代', '28136', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60007', '美女秘探', '28138', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60008', '阿拉斯加钓鱼', '28144', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60009', '亚历山大在尸乐园', '28148', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60010', '所有王牌扑克', '28150', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60011', '所有美国', '28152', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60012', '美式轮盘', '28204', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60013', '极寒鸿运', '28166', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60014', '爱丽娜', '28174', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60015', '环游世界', '28182', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60016', '亚洲美人', '28188', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60017', '大西洋城黄金21点', '28192', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60018', '阿瓦隆', '28194', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60019', '阿瓦隆2', '28198', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60020', '百家乐', '28234', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60021', '百家乐黄金版', '28236', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60022', '篮球巨星', '44751', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60023', '太空堡垒', '28240', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60024', '啤酒巨星', '28242', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60025', '超级厨王', '28248', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60026', '大五黄金21点', '28260', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60027', '大破', '28266', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60028', '厨神', '28268', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60029', '征服钱海', '28270', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60030', '征服钱海-蛇与梯子', '28272', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60031', '马戏篷', '28274', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60032', '比基尼派对', '46497', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60033', '宾果富豪', '28276', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60034', '疯狂奖金局末平分', '28280', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60035', '奖金扑克', '28282', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60036', '豪华奖金扑克', '28284', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60037', '藏宝时间', '28286', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60038', '击倒', '28290', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60039', '摆脱', '28292', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60040', '抢银行 ', '28296', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60041', '银行爆破', '28310', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60042', '新娘吉拉', '29601', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60043', '泡泡富豪', '29591', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60044', '兔子锅炉', '28278', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60045', '黄金兔子锅炉', '28330', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60046', '燃烧的欲望', '28332', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60047', '丛林摇摆 ', '28336', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60048', '抢劫银行', '29555', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60049', '狂欢节', '28350', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60050', '现金蚬', '28354', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60051', '财运疯狂', '28358', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60052', '卡萨努瓦', '28364', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60053', '昆虫派对 ', '28368', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60054', '昆虫派对 ', '28372', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60055', '挥金如土', '28376', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60056', '中心球场', '28380', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60057', '锁子甲', '28384', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60058', '经典黄金21点', '28398', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60059', '酷巴克', '28400', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60060', '酷狼', '28404', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60061', '宇宙猫', '28408', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60062', '沙发土豆', '28414', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60063', '疯狂的80年代', '28418', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60064', '疯狂的变色龙', '28422', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60065', '板球明星', '29561', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60066', '鳄鱼建城邦', '28424', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60067', '国际鱼虾蟹骰宝', '28428', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60068', '地穴的远征', '28432', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60069', '黄金地穴的远征', '28436', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60070', '网络扑克', '28442', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60071', '黎明的面包', '28448', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60072', '闪亮的圣诞节', '28454', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60073', '百搭小丑扑克2', '28466', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60074', '百搭小丑扑克', '28460', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60075', '万能两点2', '28472', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60076', '万能两点', '28470', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60077', '恐龙迪诺', '28476', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60078', '医生的爱', '28478', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60079', '狗爸爸', '28480', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60080', '寻访海豚', '28484', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60081', '双重奖金扑克', '28486', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60082', '换牌扑克', '28492', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60083', '双重黄金曝光', '28494', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60084', '双百搭2', '28506', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60085', '双百搭', '28498', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60086', '双魔', '28510', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60087', '双重韦密', '28514', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60088', '恐怖实验室', '28522', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60089', '舞龙', '46494', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60090', '龙的鸿运', '28524', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60091', '熊峰战争', '28542', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60092', '老鹰的翅膀', '28562', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60093', '电宾果', '28566', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60094', '水果怪兽', '28568', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60095', '魔法森林', '28572', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60096', '欧洲黄金21点', '28576', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60097', '欧式黄金轮盘', '28580', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60098', '奇妙7', '28582', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60099', '胖女人辛斯', '28584', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60100', '派对鱼', '28586', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60101', '超级飞行员', '28588', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60102', '泡沫财富', '28590', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60103', '足球明星', '28592', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60104', '幸运曲奇', '28594', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60105', '四乘四', '28596', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60106', '冻结模糊球', '28598', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60107', '法式轮盘', '28602', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60108', '水果老虎机', '28604', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60109', '银河舰队', '28606', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60110', '网球最终局', '28616', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60111', '精灵宝石', '28608', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60112', '细菌对对碰', '28614', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60113', '礼品包装', '28618', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60114', '女孩与枪II', '29449', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60115', '女孩与枪', '28622', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60116', '黄金海岸', '28624', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60117', '黄金工厂', '28626', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60118', '黄金龙', '28628', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60119', '黄金时代', '28630', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60120', '黄金食尸鬼', '28632', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60121', '疯狂赛道', '28636', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60122', '黄金囊地鼠', '28638', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60123', '老太太赛车', '28640', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60124', '大狮鹫', '28642', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60125', '毛茸茸的仙女', '28646', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60126', '万圣节', '28648', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60127', '万圣节2', '28650', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60128', '肉搏战', '28488', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60129', '快乐假日', '45397', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60130', '新年快乐', '28490', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60131', '哈维斯的晚餐', '28664', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60132', '地狱男爵', '28500', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60133', '地狱阿嬷', '28502', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60134', '六线', '28504', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60135', '高限制百家乐', '28508', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60136', '欧式高限21点', '28668', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60137', '上流社会', '28516', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60138', '高速扑克', '28518', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60139', '13欧洲 21点黃金桌', '28520', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60140', '终极杀手', '28670', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60141', '嗬嗬嗬', '28674', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60142', '地府烈焰', '28574', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60143', '神奇墨水', '28540', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60144', '棒球直击', '28534', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60145', '酷犬酒店', '28644', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60146', '龙之家', '28680', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60147', '不朽的爱情', '28548', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60148', '刮刮卡20合一', '29450', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60149', '爱尔兰眼睛', '28552', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60150', '累计奖金快车', '28558', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60151', '千斤顶或更好', '28694', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60152', '千斤顶或更好', '28686', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60153', '判若两人', '28660', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60154', '东方珠宝', '28652', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60155', '铃儿响叮当', '28654', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60156', '小丑扑克2', '28720', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60157', '小丑扑克', '28710', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60158', '侏罗纪大奖', '28724', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60159', '功夫小胖猪', '28726', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60160', '卡萨缦都', '28734', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60161', '基诺', '28740', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60162', '亚瑟王', '28744', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60163', '现金之王', '28762', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60164', '凯蒂卡巴拉', '28772', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60165', '女仕之夜', '28776', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60166', '红衣女郎', '28812', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60167', '财富阶级', '28780', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60168', '遗产L', '28786', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60169', '炫富一族', '28790', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60170', '海盗王', '28796', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60171', '路易斯安那双', '28814', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60172', '招财鞭炮', '28800', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60173', '幸运的锦鲤', '28794', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60174', '妖精的战利品', '28782', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60175', '幸运数字', '28778', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60176', '幸运双星', '42981', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60177', '幸运女巫', '28774', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60178', '幸运生肖', '28770', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60179', '疯狂的帽子', '28766', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60180', '终极破坏', '28758', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60181', '星战传奇', '28756', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60182', '玛雅宾果', '28748', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60183', '玛雅公主', '28738', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60184', '银行爆破', '28706', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60185', '海底世界 ', '28716', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60186', '疯狂的猴子', '28712', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60187', '怪物躁狂症', '28696', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60188', '月光', '28708', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60189', '奥林匹斯山', '28676', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60190', '疯狂假面', '28666', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60191', '复式黄金轮盘', '28816', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60192', '多手21点黄金桌', '28820', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60193', '多手21点黄金桌2', '28822', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60194', '多手21点黄金桌3', '28678', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60195', '多手21点黄金桌4', '28826', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60196', '孟买魔术', '28612', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60197', '怪兽曼琪肯', '28610', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60198', '神秘梦境 ', '28600', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60199', '神秘森林', '28578', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60200', '章鱼', '28828', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60201', '临门一脚', '28658', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60202', '东方财富', '28564', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60203', '发现天堂', '28560', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60204', '躲猫猫', '42979', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60205', '幻影现金', '28570', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60206', '法老宾果', '28550', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60207', '隔离的宝石', '28842', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60208', '小猪财富', '28556', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60209', '持枪王者', '28546', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60210', '花花公子', '28858', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60211', '掠夺之海', '28544', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60212', '扑克追求', '28874', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60213', '蜜蜂乐园', '28890', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60214', '21点黄金桌', '28538', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60215', '21点黄金桌', '28536', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60216', '多手21点黄金桌', '28532', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60217', '超级赛马', '28530', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60218', '轮盘', '28528', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60219', '轮盘钻石版', '28526', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60220', '超级马车赛', '28904', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60221', '优质物业', '28910', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60222', '纯铂', '28512', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60223', '为粉红而战', '28496', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60224', '拉美西斯的财富', '28916', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60225', '急速转轮', '28482', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60226', '红唇诱惑', '28474', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60227', '宝石迷阵', '28468', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60228', '卷行使价', '28464', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60229', '雷电击', '28462', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60230', '复古旋转', '28458', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60231', '复古卷轴 - 极热', '28456', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60232', '复古卷轴钻石耀眼', '28452', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60233', '押韵的卷轴 - 心挞', '28450', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60234', '押韵的卷轴 - 老国王科尔', '28446', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60235', '海滨财富', '28444', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60236', '洛伯杰克', '28440', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60237', '摇滚船', '28438', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60238', '滚德比', '28434', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60239', '罗马财富', '28430', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60240', '橄榄球明星', '28426', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60241', '萨巴宾果', '28420', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60242', '圣诞老人的疯狂 ？', '28416', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60243', '守财奴', '28412', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60244', '秘密崇拜者', '28410', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60245', '圣诞老人的秘密', '28406', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60246', '宁静', '45399', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60247', '射击', '28402', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60248', '银芳', '28396', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60249', '六位枪手掠夺者黄金版', '28394', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60250', '骷髅陷阱', '28392', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60251', '猛撞恐惧', '28390', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60252', '怪兽多多', '28388', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60253', '糖果多多', '28386', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60254', '寿司多多', '28382', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60255', '动物足球', '28378', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60256', '太空逃避物', '28370', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60257', '太空逃避物黄金版', '28366', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60258', '西班牙21点', '28362', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60259', '西班牙21点', '28360', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60260', '财富之轮', '28356', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60261', '我推', '28352', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60262', '春假', '28348', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60263', '星尘', '45401', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60264', '星梦之吻', '28344', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60265', '星云', '28342', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60266', '泰坦之藏匿', '28340', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60267', '蒸汽朋克英雄', '28338', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60268', '纯银3D', '28334', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60269', '探索太阳', '28328', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60270', '太阳征程', '50193', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60271', '跑起来', '28326', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60272', '超级奖金宾果', '28322', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60273', '超级有趣21', '28320', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60274', '超级零点', '28318', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60275', '动物冲浪', '28314', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60276', '甜蜜的收获', '28312', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60277', '泰利嗬', '28308', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60278', '数万或更好', '28302', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60279', '数万或更好2', '28304', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60280', '终结者2', '28300', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60281', '蝙蝠侠崛起', '28298', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60282', '好日子', '28294', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60283', '失落的阿纳斯塔西娅公主', '28246', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60284', '鼠包', '28238', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60285', '反转马戏团', '28232', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60286', '埃及王座', '28230', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60287', '雷神', '28228', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60288', '雷神2', '28226', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60289', '熊虎之战', '28222', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60290', '太阳神之许珀里翁', '28112', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60291', '太阳神之忒伊亚', '28220', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60292', '古墓丽影', '28218', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60293', '古墓丽影2', '28216', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60294', '图腾宝藏', '28214', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60295', '三角', '28212', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60296', '三魔法', '28210', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60297', '三人德州扑克', '28208', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60298', '棒棒乌龟', '28206', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60299', '野性的孟加拉虎', '28202', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60300', '狂野之鹰', '28200', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60301', '大熊猫', '28196', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60302', '野性的狼群', '28190', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60303', '拉斯维加斯21点单人黄金桌', '28186', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60304', '拉斯维加斯21点', '28180', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60305', '拉斯维加斯21点黄金桌', '28184', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60306', '维多利亚的恶棍', '28176', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60307', '乙烯基倒计时', '28172', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60308', '芥末寿司', '28168', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60309', '瓜分大奖', '28158', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60310', '猫头鹰乐园', '28178', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60311', '地球生物', '28154', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60312', '水果财富', '28156', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60313', '财富转轮特别版', '28146', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60314', '白水牛', '28140', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60315', '野生捕鱼', '28142', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60316', '野生冠军', '28132', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60317', '东方珍兽', '50194', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60318', '钱来运转', '29573', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60319', '赢得向导', '28130', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60320', '女巫的财富', '28126', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60321', '燃尼巨蟒', '28124', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60322', '108好汉', '59065', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60323', '三國', '59067', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60324', '丛林吉姆-黄金国', '66481', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60325', '昆虫派对刮刮乐', '28372', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60326', '帽子里的兔子', '28912', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60327', '现金喷射 3轴', '29489\r\n29489\r\n29489', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60328', '现金喷射 5轴', '29491', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60329', '水果嘉年华 3轴', '29493', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60330', '水果嘉年华 5轴', '29495', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60331', '现金王', '29497', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60332', '战利品 3轴', '29499', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60333', '战利品 5轴', '29501', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60334', '百万少校', '29503', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60335', '百万钞票', '29505', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60336', '百万埃及女神', '29507', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60337', '尼羅河寶藏', '29509', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60338', '关爱财宝', '29511', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60339', '哇', '29513', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60340', '美国酒吧', '28682', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60341', '新娘吉拉', '45529', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60342', '埃及女神伊西絲', '28936', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60343', '狮子的骄傲', '28946', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60344', '夏天', '29050', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60345', '冒险之旅', '29453', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60346', '老虎之眼', '29118', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60347', '图腾宝藏', '29132', '60', '15');
INSERT INTO `ds_game_type` VALUES ('60348', '瞧！', '29136', '60', '15');
