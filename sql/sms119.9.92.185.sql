/*
Navicat MySQL Data Transfer

Source Server         : 119.9.92.185
Source Server Version : 50626
Source Host           : 119.9.92.185:3306
Source Database       : sms

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2017-03-11 19:38:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sms_config
-- ----------------------------
DROP TABLE IF EXISTS `sms_config`;
CREATE TABLE `sms_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `api_url` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `api_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `memo` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sms_config
-- ----------------------------
INSERT INTO `sms_config` VALUES ('1', 'http://sms-api.luosimao.com/v1/send.json', 'key-8904c8453eea332fc41d1fbc6da1354d', '50', '2016-02-25', null);

-- ----------------------------
-- Table structure for sms_mobile
-- ----------------------------
DROP TABLE IF EXISTS `sms_mobile`;
CREATE TABLE `sms_mobile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `mobile_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `memo` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sms_mobile
-- ----------------------------

-- ----------------------------
-- Table structure for sms_queue
-- ----------------------------
DROP TABLE IF EXISTS `sms_queue`;
CREATE TABLE `sms_queue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `message` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `error_code` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `sign` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `memo` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sign` (`sign`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=404 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sms_queue
-- ----------------------------
INSERT INTO `sms_queue` VALUES ('1', '18750244913', 'i love you.【鼎泰科技】', '0', null, '2016-02-29 15:33:19', '2016-02-29 16:03:00', 'rrrr', null);
INSERT INTO `sms_queue` VALUES ('2', '13570720151', '通知：AG数据延迟，请检查下，你的验证码为null【鼎泰科技】', '0', null, '2016-02-29 16:42:28', '2016-02-29 16:43:01', 'krj6B12HPOvnl0cnTvs0mA==', null);
INSERT INTO `sms_queue` VALUES ('3', '13632317383', '通知：hello，你的验证码为4350【鼎泰科技】', '0', null, '2016-03-03 03:02:09', '2016-03-03 03:03:01', 'QIKHZ/sFB0Fgt5Ll9G58HQ==', null);
INSERT INTO `sms_queue` VALUES ('4', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为6104【鼎泰科技】', '0', null, '2016-03-03 05:08:03', '2016-03-03 05:09:00', 'VUYsNZZoUmgJvSJTTpxGDA==', null);
INSERT INTO `sms_queue` VALUES ('5', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为4305【鼎泰科技】', '0', null, '2016-03-03 05:08:03', '2016-03-03 05:09:01', 'Y/U11PwxjdF29eASFcMMWA==', null);
INSERT INTO `sms_queue` VALUES ('6', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为9762【鼎泰科技】', '0', null, '2016-03-03 05:08:03', '2016-03-03 05:09:01', 'HCkxH15oVYPPpf31oQFddg==', null);
INSERT INTO `sms_queue` VALUES ('7', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为3659【鼎泰科技】', '-42', null, '2016-03-03 05:08:03', '2016-03-03 05:09:01', 'GHKAdGfJAgDYczoSuolUQQ==', null);
INSERT INTO `sms_queue` VALUES ('8', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为1857【鼎泰科技】', '-42', null, '2016-03-03 05:08:04', '2016-03-03 05:09:01', 'jC5jglNysBkM5TkenSZiMw==', null);
INSERT INTO `sms_queue` VALUES ('9', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为2109【鼎泰科技】', '-42', null, '2016-03-03 05:08:04', '2016-03-03 05:09:01', 'Ir5K6z6rXtG5vTvKW5OxXw==', null);
INSERT INTO `sms_queue` VALUES ('10', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为5327【鼎泰科技】', '-42', null, '2016-03-03 05:08:04', '2016-03-03 05:09:01', 'udcpH4LOsWFe0GYJ4Ymfhw==', null);
INSERT INTO `sms_queue` VALUES ('11', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为6548【鼎泰科技】', '-42', null, '2016-03-03 05:08:04', '2016-03-03 05:09:01', '3Hfuzq8sQwu5SDy4cfbBXg==', null);
INSERT INTO `sms_queue` VALUES ('12', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为1754【鼎泰科技】', '-42', null, '2016-03-03 05:08:04', '2016-03-03 05:09:02', '3B8+m7cl0Sx4uDX6esYnRg==', null);
INSERT INTO `sms_queue` VALUES ('13', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为3521【鼎泰科技】', '-42', null, '2016-03-03 05:08:05', '2016-03-03 05:09:02', 'bp1WqBygaMuEiETufct7UA==', null);
INSERT INTO `sms_queue` VALUES ('14', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为0189【鼎泰科技】', '-42', null, '2016-03-03 05:08:05', '2016-03-03 05:09:02', 'Wbhp6oF49WWni9rUJzAMtg==', null);
INSERT INTO `sms_queue` VALUES ('15', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为6312【鼎泰科技】', '-42', null, '2016-03-03 05:08:05', '2016-03-03 05:09:02', 'bR23mFqXqHNWEctcPLvV1Q==', null);
INSERT INTO `sms_queue` VALUES ('16', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为3125【鼎泰科技】', '-42', null, '2016-03-03 05:08:06', '2016-03-03 05:09:02', 'omixZXcsMfXG7I5SeUtkZQ==', null);
INSERT INTO `sms_queue` VALUES ('17', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为4752【鼎泰科技】', '-42', null, '2016-03-03 05:08:06', '2016-03-03 05:09:02', 'ySG9b87jN+bSzao84Pr1NQ==', null);
INSERT INTO `sms_queue` VALUES ('18', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为4509【鼎泰科技】', '-42', null, '2016-03-03 05:08:06', '2016-03-03 05:09:02', 'DoqK/os/+j6vUm4k10j+Sg==', null);
INSERT INTO `sms_queue` VALUES ('19', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为0269【鼎泰科技】', '-42', null, '2016-03-03 05:08:06', '2016-03-03 05:09:02', 'ky9PDQYsLoTM/Zz6lpbmlA==', null);
INSERT INTO `sms_queue` VALUES ('20', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为2490【鼎泰科技】', '-42', null, '2016-03-03 05:08:06', '2016-03-03 05:09:03', 'W9nKve6O5mUEE9PLRk3/vQ==', null);
INSERT INTO `sms_queue` VALUES ('21', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为5978【鼎泰科技】', '-42', null, '2016-03-03 05:08:06', '2016-03-03 05:09:03', 'kNnrOLuzSjGtaagylSEWyA==', null);
INSERT INTO `sms_queue` VALUES ('22', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为6823【鼎泰科技】', '-42', null, '2016-03-03 05:08:06', '2016-03-03 05:09:03', 'MXHK38Zhq9oo1qNvcSVKtA==', null);
INSERT INTO `sms_queue` VALUES ('23', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为5821【鼎泰科技】', '-42', null, '2016-03-03 05:08:06', '2016-03-03 05:09:03', 'cypxX5BUe/oAlWZVNevt3A==', null);
INSERT INTO `sms_queue` VALUES ('24', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为9731【鼎泰科技】', '-42', null, '2016-03-03 05:08:06', '2016-03-03 05:09:03', '+t17MzQQhnacz7wW8wXhbw==', null);
INSERT INTO `sms_queue` VALUES ('25', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为5941【鼎泰科技】', '-42', null, '2016-03-03 05:08:06', '2016-03-03 05:09:03', 'FPfjul4lqXbYekP12yqUtA==', null);
INSERT INTO `sms_queue` VALUES ('26', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为6930【鼎泰科技】', '-42', null, '2016-03-03 05:08:06', '2016-03-03 05:09:03', 'a9FQdnuPzHtY5BWcN5RtFA==', null);
INSERT INTO `sms_queue` VALUES ('27', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7013【鼎泰科技】', '-42', null, '2016-03-03 05:08:06', '2016-03-03 05:09:03', 'MAoCqzbsJz9EgfPEZTH1Bg==', null);
INSERT INTO `sms_queue` VALUES ('28', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为6279【鼎泰科技】', '-42', null, '2016-03-03 05:08:06', '2016-03-03 05:09:04', 'wkZopxVi25frfyK9cr6/pQ==', null);
INSERT INTO `sms_queue` VALUES ('29', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为6975【鼎泰科技】', '-42', null, '2016-03-03 05:08:06', '2016-03-03 05:09:04', 'w3mA7TashcMBvyjflQiczA==', null);
INSERT INTO `sms_queue` VALUES ('30', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为9532【鼎泰科技】', '-42', null, '2016-03-03 05:08:06', '2016-03-03 05:09:04', '/dBwHg2IfoXoPdtD1RaLMQ==', null);
INSERT INTO `sms_queue` VALUES ('31', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7860【鼎泰科技】', '-42', null, '2016-03-03 05:08:07', '2016-03-03 05:09:04', 'zBnx3lcNws5kIveY6OLwiw==', null);
INSERT INTO `sms_queue` VALUES ('32', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为8274【鼎泰科技】', '-42', null, '2016-03-03 05:08:07', '2016-03-03 05:09:04', 'B97QnZ3XSVFJYUNOMHULpg==', null);
INSERT INTO `sms_queue` VALUES ('33', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为5743【鼎泰科技】', '-42', null, '2016-03-03 05:08:07', '2016-03-03 05:09:04', 'uPAZMAV7FNDXUhkH4SzQlg==', null);
INSERT INTO `sms_queue` VALUES ('34', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为2348【鼎泰科技】', '-42', null, '2016-03-03 05:08:22', '2016-03-03 05:09:04', 'LItEN6lLhY0w2NjXDJQLbQ==', null);
INSERT INTO `sms_queue` VALUES ('35', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为1359【鼎泰科技】', '-42', null, '2016-03-03 05:08:22', '2016-03-03 05:09:04', 'nIwdY2f5xaTT1fSvE1Fpkg==', null);
INSERT INTO `sms_queue` VALUES ('36', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为2361【鼎泰科技】', '-42', null, '2016-03-03 05:08:22', '2016-03-03 05:09:04', 'wCy7HcDdEyGAUSruA3UJ5w==', null);
INSERT INTO `sms_queue` VALUES ('37', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为0312【鼎泰科技】', '0', null, '2016-03-03 05:09:25', '2016-03-03 05:10:00', 'sqr1b0vFwt7EqrfUFCjptQ==', null);
INSERT INTO `sms_queue` VALUES ('38', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为2531【鼎泰科技】', '0', null, '2016-03-03 05:09:25', '2016-03-03 05:10:00', 'HSti00qDpKrvxwBfx6hSow==', null);
INSERT INTO `sms_queue` VALUES ('39', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为1045【鼎泰科技】', '0', null, '2016-03-03 05:09:25', '2016-03-03 05:10:01', 'G3uUwRDRVLZzRnU42DJGxA==', null);
INSERT INTO `sms_queue` VALUES ('40', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为5782【鼎泰科技】', '0', null, '2016-03-03 05:12:00', '2016-03-03 05:13:00', 'O866Kn1xAUxavOGofzk/tw==', null);
INSERT INTO `sms_queue` VALUES ('41', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为6703【鼎泰科技】', '0', null, '2016-03-03 05:12:01', '2016-03-03 05:13:00', 'BTZrOT186TT+rhiqRlQnlw==', null);
INSERT INTO `sms_queue` VALUES ('42', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为1967【鼎泰科技】', '0', null, '2016-03-03 05:12:01', '2016-03-03 05:13:01', 'f9jPNrqNd890CkxY5ULEtQ==', null);
INSERT INTO `sms_queue` VALUES ('43', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为9681【鼎泰科技】', '0', null, '2016-03-03 05:15:00', '2016-03-03 05:16:00', 'e1iM77uXB9DE+gqDAUpHFg==', null);
INSERT INTO `sms_queue` VALUES ('44', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为0347【鼎泰科技】', '0', null, '2016-03-03 05:15:00', '2016-03-03 05:16:00', 'lIDFOEZCAKQqkeJJy8KsbA==', null);
INSERT INTO `sms_queue` VALUES ('45', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为1945【鼎泰科技】', '0', null, '2016-03-03 05:15:00', '2016-03-03 05:16:00', 'YkSmPMZuLhrPVk1P3fveCw==', null);
INSERT INTO `sms_queue` VALUES ('46', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为1620【鼎泰科技】', '0', null, '2016-03-03 05:18:00', '2016-03-03 05:19:00', 'CdKRADPRIj1cTlFSq0aNHg==', null);
INSERT INTO `sms_queue` VALUES ('47', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为2136【鼎泰科技】', '0', null, '2016-03-03 05:18:00', '2016-03-03 05:19:00', 'nuuByFPo24l0Z6CoSYstTw==', null);
INSERT INTO `sms_queue` VALUES ('48', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为8265【鼎泰科技】', '0', null, '2016-03-03 05:18:00', '2016-03-03 05:19:00', '1su67MGT2D5mxAzc3obteg==', null);
INSERT INTO `sms_queue` VALUES ('49', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为8403【鼎泰科技】', '0', null, '2016-03-03 05:21:20', '2016-03-03 05:22:01', 'Zo7I5oqrhl0TuAGDi23Wiw==', null);
INSERT INTO `sms_queue` VALUES ('50', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7610【鼎泰科技】', '0', null, '2016-03-03 05:21:20', '2016-03-03 05:22:01', 'Ge0spI8Dm585V5vSIdQo5w==', null);
INSERT INTO `sms_queue` VALUES ('51', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为8402【鼎泰科技】', '0', null, '2016-03-03 05:21:20', '2016-03-03 05:22:01', '7dlJuqGCccete4nXGjOgDw==', null);
INSERT INTO `sms_queue` VALUES ('52', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为4213【鼎泰科技】', '0', null, '2016-03-03 05:24:00', '2016-03-03 05:25:00', 'BDK4GTaCa1kKsJijm9RN4g==', null);
INSERT INTO `sms_queue` VALUES ('53', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为4807【鼎泰科技】', '0', null, '2016-03-03 05:24:00', '2016-03-03 05:25:00', 'Rcm5AxqBxQWmcy0wuCrikg==', null);
INSERT INTO `sms_queue` VALUES ('54', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为1259【鼎泰科技】', '0', null, '2016-03-03 05:24:00', '2016-03-03 05:25:00', 'Tzew4r4m24f05r8+EjpseQ==', null);
INSERT INTO `sms_queue` VALUES ('55', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为1028【鼎泰科技】', '0', null, '2016-03-03 05:27:00', '2016-03-03 05:28:00', 'R88Xgh6NPL66JurNAXdDfQ==', null);
INSERT INTO `sms_queue` VALUES ('56', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为2108【鼎泰科技】', '0', null, '2016-03-03 05:27:00', '2016-03-03 05:28:00', '2jegyNNcAVBNCFC3acV26Q==', null);
INSERT INTO `sms_queue` VALUES ('57', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为4287【鼎泰科技】', '0', null, '2016-03-04 02:12:16', '2016-03-04 02:13:00', '8HcjSym54eeUO3OC64FLog==', null);
INSERT INTO `sms_queue` VALUES ('58', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为5619【鼎泰科技】', '0', null, '2016-03-04 02:12:16', '2016-03-04 02:13:00', '6MUpzC7cdQ1SaC+P10OuSg==', null);
INSERT INTO `sms_queue` VALUES ('59', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为9637【鼎泰科技】', '0', null, '2016-03-04 02:12:16', '2016-03-04 02:13:01', 'qcev95e2HJcZ9zwTyM01uA==', null);
INSERT INTO `sms_queue` VALUES ('60', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为1873【鼎泰科技】', '0', null, '2016-03-04 02:15:00', '2016-03-04 02:16:00', 'PGRJLheJ9X0EsKnoNVRWxQ==', null);
INSERT INTO `sms_queue` VALUES ('61', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为4136【鼎泰科技】', '0', null, '2016-03-04 02:15:00', '2016-03-04 02:16:00', 'h8HjS9h/Kvllko1ySFwvBg==', null);
INSERT INTO `sms_queue` VALUES ('62', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为0582【鼎泰科技】', '0', null, '2016-03-04 02:15:01', '2016-03-04 02:16:00', 'APSVpON0x46RL/L84pdNlQ==', null);
INSERT INTO `sms_queue` VALUES ('63', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为8570【鼎泰科技】', '0', null, '2016-03-04 02:18:00', '2016-03-04 02:19:00', 'jUEaVkO+F5JAkD1S+MHQzA==', null);
INSERT INTO `sms_queue` VALUES ('64', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为0685【鼎泰科技】', '0', null, '2016-03-04 02:18:00', '2016-03-04 02:19:00', 'gYR99r/+zsX/bbkRwS4kYA==', null);
INSERT INTO `sms_queue` VALUES ('65', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为0647【鼎泰科技】', '0', null, '2016-03-04 02:18:00', '2016-03-04 02:19:00', 'HqS9tX/AKzSvYTdUDbd/fA==', null);
INSERT INTO `sms_queue` VALUES ('66', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为9681【鼎泰科技】', '0', null, '2016-03-04 02:21:00', '2016-03-04 02:22:00', 'e1iM77uXB9DE+gqDAUpHFg==', null);
INSERT INTO `sms_queue` VALUES ('67', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7431【鼎泰科技】', '0', null, '2016-03-04 02:21:00', '2016-03-04 02:22:00', 'Ed67TsV/HeZ4Isxgj9mKdA==', null);
INSERT INTO `sms_queue` VALUES ('68', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为3206【鼎泰科技】', '0', null, '2016-03-04 02:21:00', '2016-03-04 02:22:00', 'vP4v2sMdJ4nGYM/WnW7p8Q==', null);
INSERT INTO `sms_queue` VALUES ('69', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 02:24:00', '2016-03-04 02:25:01', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('70', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 02:24:00', '2016-03-04 02:25:01', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('71', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 02:24:01', '2016-03-04 02:25:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('72', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 02:27:00', '2016-03-04 02:28:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('73', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 02:27:00', '2016-03-04 02:28:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('74', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 02:27:00', '2016-03-04 02:28:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('75', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 02:42:00', '2016-03-04 02:43:15', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('76', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 02:42:00', '2016-03-04 02:43:16', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('77', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 02:42:00', '2016-03-04 02:43:16', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('78', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 02:57:26', '2016-03-04 02:58:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('79', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 02:57:26', '2016-03-04 02:58:01', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('80', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 02:57:26', '2016-03-04 02:58:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('81', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 03:15:00', '2016-03-04 03:16:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('82', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 03:15:00', '2016-03-04 03:16:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('83', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 03:15:00', '2016-03-04 03:16:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('84', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 03:30:00', '2016-03-04 03:31:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('85', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 03:30:00', '2016-03-04 03:31:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('86', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 03:30:00', '2016-03-04 03:31:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('87', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 03:45:00', '2016-03-04 03:46:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('88', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 03:45:00', '2016-03-04 03:46:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('89', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 03:45:00', '2016-03-04 03:46:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('90', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 04:00:00', '2016-03-04 04:01:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('91', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 04:00:00', '2016-03-04 04:01:01', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('92', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 04:00:00', '2016-03-04 04:01:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('93', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 04:15:00', '2016-03-04 04:16:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('94', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 04:15:00', '2016-03-04 04:16:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('95', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 04:15:00', '2016-03-04 04:16:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('96', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 04:30:00', '2016-03-04 04:31:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('97', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 04:30:00', '2016-03-04 04:31:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('98', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 04:30:00', '2016-03-04 04:31:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('99', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 04:45:00', '2016-03-04 04:46:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('100', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 04:45:00', '2016-03-04 04:46:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('101', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 04:45:00', '2016-03-04 04:46:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('102', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 05:00:00', '2016-03-04 05:01:01', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('103', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 05:00:00', '2016-03-04 05:01:01', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('104', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 05:00:00', '2016-03-04 05:01:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('105', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 05:15:00', '2016-03-04 05:16:01', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('106', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 05:15:00', '2016-03-04 05:16:01', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('107', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 05:15:00', '2016-03-04 05:16:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('108', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 05:30:00', '2016-03-04 05:31:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('109', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 05:30:00', '2016-03-04 05:31:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('110', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 05:30:00', '2016-03-04 05:31:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('111', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 05:45:00', '2016-03-04 05:46:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('112', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 05:45:00', '2016-03-04 05:46:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('113', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 05:45:00', '2016-03-04 05:46:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('114', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 06:00:00', '2016-03-04 06:01:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('115', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 06:00:00', '2016-03-04 06:01:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('116', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 06:00:00', '2016-03-04 06:01:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('117', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 06:15:01', '2016-03-04 06:16:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('118', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 06:15:01', '2016-03-04 06:16:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('119', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 06:15:02', '2016-03-04 06:16:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('120', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 06:33:00', '2016-03-04 06:34:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('121', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 06:33:00', '2016-03-04 06:34:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('122', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 06:33:00', '2016-03-04 06:34:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('123', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 06:48:00', '2016-03-04 06:49:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('124', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 06:48:00', '2016-03-04 06:49:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('125', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 06:48:00', '2016-03-04 06:49:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('126', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 07:03:00', '2016-03-04 07:04:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('127', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 07:03:00', '2016-03-04 07:04:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('128', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 07:03:00', '2016-03-04 07:04:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('129', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 07:18:00', '2016-03-04 07:19:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('130', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 07:18:00', '2016-03-04 07:19:01', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('131', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 07:18:00', '2016-03-04 07:19:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('132', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 07:33:00', '2016-03-04 07:34:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('133', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 07:33:00', '2016-03-04 07:34:01', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('134', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 07:33:00', '2016-03-04 07:34:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('135', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 07:48:00', '2016-03-04 07:49:01', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('136', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 07:48:01', '2016-03-04 07:49:01', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('137', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 07:48:01', '2016-03-04 07:49:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('138', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 08:03:00', '2016-03-04 08:04:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('139', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 08:06:00', '2016-03-04 08:07:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('140', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 08:06:00', '2016-03-04 08:07:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('141', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 08:18:00', '2016-03-04 08:19:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('142', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 08:21:00', '2016-03-04 08:22:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('143', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 08:21:00', '2016-03-04 08:22:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('144', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 08:33:00', '2016-03-04 08:34:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('145', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 08:36:00', '2016-03-04 08:37:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('146', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 08:36:00', '2016-03-04 08:37:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('147', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 08:48:00', '2016-03-04 08:49:05', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('148', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 08:51:00', '2016-03-04 08:52:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('149', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 08:51:00', '2016-03-04 08:52:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('150', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 09:03:00', '2016-03-04 09:04:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('151', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 09:06:01', '2016-03-04 09:07:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('152', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 09:06:01', '2016-03-04 09:07:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('153', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 09:18:00', '2016-03-04 09:19:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('154', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 09:24:00', '2016-03-04 09:25:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('155', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 09:24:00', '2016-03-04 09:25:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('156', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 09:33:00', '2016-03-04 09:34:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('157', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 09:39:01', '2016-03-04 09:40:01', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('158', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 09:39:01', '2016-03-04 09:40:02', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('159', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 09:48:00', '2016-03-04 09:49:01', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('160', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 09:57:00', '2016-03-04 09:58:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('161', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 09:57:01', '2016-03-04 09:58:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('162', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 10:03:00', '2016-03-04 10:04:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('163', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 10:12:00', '2016-03-04 10:13:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('164', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 10:15:00', '2016-03-04 10:16:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('165', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 10:18:00', '2016-03-04 10:19:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('166', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 10:27:01', '2016-03-04 10:28:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('167', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 10:30:02', '2016-03-04 10:31:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('168', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 10:33:00', '2016-03-04 10:34:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('169', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 10:42:01', '2016-03-04 10:43:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('170', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 10:48:01', '2016-03-04 10:49:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('171', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 10:48:01', '2016-03-04 10:49:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('172', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 11:00:01', '2016-03-04 11:01:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('173', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 11:06:00', '2016-03-04 11:07:01', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('174', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 11:06:00', '2016-03-04 11:07:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('175', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 11:18:00', '2016-03-04 11:19:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('176', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 11:21:01', '2016-03-04 11:22:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('177', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 11:21:01', '2016-03-04 11:22:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('178', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 11:33:26', '2016-03-04 11:34:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('179', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 11:39:00', '2016-03-04 11:40:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('180', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 11:39:01', '2016-03-04 11:40:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('181', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 11:51:01', '2016-03-04 11:52:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('182', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 11:54:01', '2016-03-04 11:55:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('183', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 11:57:01', '2016-03-04 11:58:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('184', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 12:06:01', '2016-03-04 12:07:01', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('185', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 12:12:01', '2016-03-04 12:13:01', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('186', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 12:12:02', '2016-03-04 12:13:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('187', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 12:21:02', '2016-03-04 12:22:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('188', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 12:30:00', '2016-03-04 12:31:01', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('189', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 12:30:01', '2016-03-04 12:31:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('190', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 12:42:02', '2016-03-04 12:43:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('191', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 12:57:01', '2016-03-04 12:58:01', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('192', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 12:57:01', '2016-03-04 12:58:02', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('193', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 13:09:00', '2016-03-04 13:10:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('194', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 13:21:00', '2016-03-04 13:22:01', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('195', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 13:21:01', '2016-03-04 13:22:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('196', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 13:33:00', '2016-03-04 13:34:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('197', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 13:45:00', '2016-03-04 13:46:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('198', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 13:45:00', '2016-03-04 13:46:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('199', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 13:51:00', '2016-03-04 13:52:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('200', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 14:06:01', '2016-03-04 14:07:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('201', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 14:06:01', '2016-03-04 14:07:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('202', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 14:06:01', '2016-03-04 14:07:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('203', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 14:33:00', '2016-03-04 14:34:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('204', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 14:33:00', '2016-03-04 14:34:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('205', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 14:33:00', '2016-03-04 14:34:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('206', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 14:54:01', '2016-03-04 14:55:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('207', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 14:54:01', '2016-03-04 14:55:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('208', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 14:54:01', '2016-03-04 14:55:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('209', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 15:18:02', '2016-03-04 15:19:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('210', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 15:18:02', '2016-03-04 15:19:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('211', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 15:18:02', '2016-03-04 15:19:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('212', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 15:42:00', '2016-03-04 15:43:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('213', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 15:42:00', '2016-03-04 15:43:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('214', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 15:42:01', '2016-03-04 15:43:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('215', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 15:57:00', '2016-03-04 15:58:01', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('216', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 15:57:01', '2016-03-04 15:58:01', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('217', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 16:06:01', '2016-03-04 16:07:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('218', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 16:21:00', '2016-03-04 16:22:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('219', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 16:21:00', '2016-03-04 16:22:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('220', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 16:30:02', '2016-03-04 16:31:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('221', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 16:45:00', '2016-03-04 16:46:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('222', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 16:45:00', '2016-03-04 16:46:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('223', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 16:54:01', '2016-03-04 16:55:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('224', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 17:06:00', '2016-03-04 17:07:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('225', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 17:06:00', '2016-03-04 17:07:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('226', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 17:18:01', '2016-03-04 17:19:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('227', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 17:21:01', '2016-03-04 17:22:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('228', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 17:21:01', '2016-03-04 17:22:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('229', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 17:36:01', '2016-03-04 17:37:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('230', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 17:39:00', '2016-03-04 17:40:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('231', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 17:39:00', '2016-03-04 17:40:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('232', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 17:54:01', '2016-03-04 17:55:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('233', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 17:54:01', '2016-03-04 17:55:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('234', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 17:54:01', '2016-03-04 17:55:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('235', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 18:12:01', '2016-03-04 18:13:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('236', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 18:12:01', '2016-03-04 18:13:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('237', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 18:12:01', '2016-03-04 18:13:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('238', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 18:30:01', '2016-03-04 18:31:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('239', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 18:30:01', '2016-03-04 18:31:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('240', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 18:30:01', '2016-03-04 18:31:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('241', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 18:48:01', '2016-03-04 18:49:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('242', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 18:48:01', '2016-03-04 18:49:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('243', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 18:48:01', '2016-03-04 18:49:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('244', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 19:06:01', '2016-03-04 19:07:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('245', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 19:06:01', '2016-03-04 19:07:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('246', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 19:06:01', '2016-03-04 19:07:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('247', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 19:24:00', '2016-03-04 19:25:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('248', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 19:24:01', '2016-03-04 19:25:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('249', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 19:24:01', '2016-03-04 19:25:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('250', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 19:39:00', '2016-03-04 19:40:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('251', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 19:42:01', '2016-03-04 19:43:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('252', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 19:42:01', '2016-03-04 19:43:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('253', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 19:54:01', '2016-03-04 19:55:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('254', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 20:00:01', '2016-03-04 20:01:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('255', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 20:00:01', '2016-03-04 20:01:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('256', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 20:12:01', '2016-03-04 20:13:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('257', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 20:18:01', '2016-03-04 20:19:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('258', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 20:18:01', '2016-03-04 20:19:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('259', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 20:30:00', '2016-03-04 20:31:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('260', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 20:39:01', '2016-03-04 20:40:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('261', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 20:39:01', '2016-03-04 20:40:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('262', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 20:45:01', '2016-03-04 20:46:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('263', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 20:57:01', '2016-03-04 20:58:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('264', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 20:57:01', '2016-03-04 20:58:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('265', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 21:06:00', '2016-03-04 21:07:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('266', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 21:21:00', '2016-03-04 21:22:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('267', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 21:21:01', '2016-03-04 21:22:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('268', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 21:21:01', '2016-03-04 21:22:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('269', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 21:42:01', '2016-03-04 21:43:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('270', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 21:42:01', '2016-03-04 21:43:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('271', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 21:42:01', '2016-03-04 21:43:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('272', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 22:00:00', '2016-03-04 22:01:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('273', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 22:00:00', '2016-03-04 22:01:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('274', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 22:00:00', '2016-03-04 22:01:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('275', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 22:21:25', '2016-03-04 22:22:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('276', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 22:21:25', '2016-03-04 22:22:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('277', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 22:21:25', '2016-03-04 22:22:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('278', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 22:42:00', '2016-03-04 22:43:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('279', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 22:42:00', '2016-03-04 22:43:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('280', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 22:42:00', '2016-03-04 22:43:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('281', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 22:57:00', '2016-03-04 22:58:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('282', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 22:57:01', '2016-03-04 22:58:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('283', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 22:57:01', '2016-03-04 22:58:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('284', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 23:18:00', '2016-03-04 23:19:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('285', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 23:18:01', '2016-03-04 23:19:01', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('286', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 23:18:01', '2016-03-04 23:19:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('287', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 23:33:01', '2016-03-04 23:34:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('288', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 23:45:01', '2016-03-04 23:46:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('289', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 23:45:01', '2016-03-04 23:46:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('290', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-04 23:51:01', '2016-03-04 23:52:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('291', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 00:03:01', '2016-03-05 00:04:01', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('292', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 00:03:01', '2016-03-05 00:04:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('293', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 00:09:00', '2016-03-05 00:10:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('294', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 00:21:01', '2016-03-05 00:22:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('295', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 00:21:01', '2016-03-05 00:22:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('296', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 00:30:01', '2016-03-05 00:31:07', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('297', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 00:45:01', '2016-03-05 00:46:01', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('298', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 00:45:01', '2016-03-05 00:46:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('299', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 00:57:01', '2016-03-05 00:58:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('300', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 01:06:00', '2016-03-05 01:07:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('301', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 01:06:01', '2016-03-05 01:07:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('302', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 01:18:01', '2016-03-05 01:19:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('303', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 01:21:01', '2016-03-05 01:22:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('304', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 01:33:01', '2016-03-05 01:34:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('305', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 01:42:00', '2016-03-05 01:43:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('306', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 01:42:01', '2016-03-05 01:43:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('307', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 01:54:01', '2016-03-05 01:55:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('308', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 01:57:00', '2016-03-05 01:58:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('309', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 02:06:01', '2016-03-05 02:07:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('310', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 02:18:00', '2016-03-05 02:19:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('311', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 02:18:00', '2016-03-05 02:19:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('312', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 02:30:00', '2016-03-05 02:31:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('313', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 02:33:00', '2016-03-05 02:34:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('314', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 02:33:00', '2016-03-05 02:34:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('315', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 02:45:00', '2016-03-05 02:46:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('316', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 02:57:00', '2016-03-05 02:58:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('317', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 02:57:00', '2016-03-05 02:58:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('318', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 03:06:00', '2016-03-05 03:07:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('319', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 03:12:00', '2016-03-05 03:13:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('320', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 03:12:00', '2016-03-05 03:13:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('321', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 03:21:00', '2016-03-05 03:22:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('322', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 03:27:00', '2016-03-05 03:28:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('323', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 03:27:00', '2016-03-05 03:28:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('324', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 03:36:00', '2016-03-05 03:37:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('325', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 03:42:00', '2016-03-05 03:43:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('326', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 03:42:00', '2016-03-05 03:43:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('327', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 03:51:00', '2016-03-05 03:52:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('328', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 03:57:00', '2016-03-05 03:58:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('329', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 03:57:00', '2016-03-05 03:58:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('330', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 04:06:00', '2016-03-05 04:07:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('331', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 04:12:00', '2016-03-05 04:13:01', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('332', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 04:12:00', '2016-03-05 04:13:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('333', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 04:21:00', '2016-03-05 04:22:01', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('334', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 04:27:00', '2016-03-05 04:28:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('335', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 04:27:00', '2016-03-05 04:28:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('336', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 04:36:01', '2016-03-05 04:37:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('337', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 04:42:00', '2016-03-05 04:43:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('338', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 04:42:01', '2016-03-05 04:43:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('339', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 04:54:00', '2016-03-05 04:55:01', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('340', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 04:57:00', '2016-03-05 04:58:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('341', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 05:00:00', '2016-03-05 05:01:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('342', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 05:09:00', '2016-03-05 05:10:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('343', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 05:12:00', '2016-03-05 05:13:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('344', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 05:15:00', '2016-03-05 05:16:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('345', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 05:24:00', '2016-03-05 05:25:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('346', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 05:27:00', '2016-03-05 05:28:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('347', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 05:33:00', '2016-03-05 05:34:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('348', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 05:39:00', '2016-03-05 05:40:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('349', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 05:42:00', '2016-03-05 05:43:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('350', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 05:57:00', '2016-03-05 05:58:02', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('351', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 05:57:00', '2016-03-05 05:58:02', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('352', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 05:57:01', '2016-03-05 05:58:02', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('353', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 06:18:00', '2016-03-05 06:19:01', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('354', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 06:18:00', '2016-03-05 06:19:01', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('355', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 06:18:01', '2016-03-05 06:19:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('356', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 06:33:01', '2016-03-05 06:34:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('357', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 06:33:01', '2016-03-05 06:34:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('358', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 06:36:00', '2016-03-05 06:37:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('359', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 06:51:00', '2016-03-05 06:52:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('360', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 06:51:00', '2016-03-05 06:52:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('361', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 06:51:00', '2016-03-05 06:52:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('362', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 07:06:00', '2016-03-05 07:07:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('363', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 07:06:01', '2016-03-05 07:07:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('364', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 07:06:01', '2016-03-05 07:07:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('365', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 07:21:00', '2016-03-05 07:22:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('366', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 07:24:00', '2016-03-05 07:25:01', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('367', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 07:24:01', '2016-03-05 07:25:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('368', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 07:36:00', '2016-03-05 07:37:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('369', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 07:39:03', '2016-03-05 07:40:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('370', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 07:39:03', '2016-03-05 07:40:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('371', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 07:54:01', '2016-03-05 07:55:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('372', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 07:57:01', '2016-03-05 07:58:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('373', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 07:57:01', '2016-03-05 07:58:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('374', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 08:15:01', '2016-03-05 08:16:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('375', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 08:15:01', '2016-03-05 08:16:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('376', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 08:15:01', '2016-03-05 08:16:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('377', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 08:33:01', '2016-03-05 08:34:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('378', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 08:33:01', '2016-03-05 08:34:00', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('379', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 08:33:01', '2016-03-05 08:34:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('380', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 08:54:01', '2016-03-05 08:55:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('381', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 08:54:01', '2016-03-05 08:55:01', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('382', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 08:54:01', '2016-03-05 08:55:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('383', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 09:09:01', '2016-03-05 09:10:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('384', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 09:12:01', '2016-03-05 09:13:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('385', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 09:12:01', '2016-03-05 09:13:01', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('386', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 09:24:01', '2016-03-05 09:25:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('387', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 09:27:01', '2016-03-05 09:28:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('388', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 09:27:01', '2016-03-05 09:28:01', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('389', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 09:42:01', '2016-03-05 09:43:00', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('390', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 09:45:01', '2016-03-05 09:46:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('391', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 09:45:01', '2016-03-05 09:46:01', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('392', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 10:09:01', '2016-03-05 10:10:02', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('393', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 10:09:01', '2016-03-05 10:10:02', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('394', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 10:09:01', '2016-03-05 10:10:02', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('395', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 10:30:00', '2016-03-05 10:31:01', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('396', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 10:30:01', '2016-03-05 10:31:01', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('397', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 10:30:01', '2016-03-05 10:31:02', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('398', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 10:45:01', '2016-03-05 10:46:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('399', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 10:54:01', '2016-03-05 10:55:01', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('400', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 10:54:01', '2016-03-05 10:55:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
INSERT INTO `sms_queue` VALUES ('401', '13632317383', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 11:09:03', '2016-03-05 11:10:00', 'F861fsNgwy0MiZyB+hC/Qw==', null);
INSERT INTO `sms_queue` VALUES ('402', '13055500546', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 11:09:03', '2016-03-05 11:10:01', 'HwkKYtaAlIapSlA6tq/8lQ==', null);
INSERT INTO `sms_queue` VALUES ('403', '13062447254', '通知：亲,ag数据可能延迟哦,请检查下吧~~~~，你的验证码为7383【鼎泰科技】', '0', null, '2016-03-05 11:09:03', '2016-03-05 11:10:01', 'vjDnHP2xkpzcBaeKQE+iWg==', null);
