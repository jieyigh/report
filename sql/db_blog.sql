/*
Navicat MySQL Data Transfer

Source Server         : localhost5.7
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : db_blog

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-03-11 19:42:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_blog
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '博客类型',
  `title` varchar(200) NOT NULL COMMENT '博客题目',
  `summary` varchar(400) DEFAULT NULL COMMENT '博客摘要',
  `releaseDate` datetime DEFAULT NULL COMMENT '发布日期',
  `clickHit` int(11) DEFAULT NULL COMMENT '评论次数',
  `replyHit` int(11) DEFAULT NULL COMMENT '回复次数',
  `content` text COMMENT '博客内容',
  `keyWord` varchar(200) DEFAULT NULL COMMENT '关键字',
  `type_id` int(11) DEFAULT NULL COMMENT '外键关联博客类别',
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `t_blog_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `t_blogtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_blog
-- ----------------------------
INSERT INTO `t_blog` VALUES ('35', 'StringUtils工具类用法', '/*1.字符串以prefix开始*/StringUtils.startsWith(\"sssdf\",\"\");//结果是：trueStringUtils.startsWith(\"sssdf\",\"\");//结果是：trueStringUtils.startsWith(\"sssdf\",\"s\");//结果是：trueS', '2016-11-25 23:28:55', '6', '0', '<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*1.字符串以prefix开始*/</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.startsWith(&quot;sssdf&quot;,&quot;&quot;);//结果是：true</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.startsWith(&quot;sssdf&quot;,&quot;&quot;);//结果是：true</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.startsWith(&quot;sssdf&quot;,&quot;s&quot;);//结果是：true</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.startsWith(&quot;sssdf&quot;,&quot;ss&quot;);//结果是：true</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.startsWith(&quot;sssdf&quot;,&quot;sss&quot;);//结果是：true</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.startsWith(&quot;sssdf&quot;,&quot;sssdf&quot;);//结果是：true</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.startsWith(&quot;sssdf&quot;,&quot;f&quot;);//结果是：false</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.startsWith(&quot;sssdf&quot;,&quot;sssdf&quot;);//结果是：true</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*2.字符串以prefix开始,不区分大小写*/</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.startsWithIgnoreCase(&quot;sssdf&quot;,&quot;Sssdf&quot;);//结果是：true</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*3.字符串以数组中的字符串开始*/</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.startsWithAny(&quot;aabcde&quot;,newString[]{&quot;g&quot;,&quot;f&quot;});//结果是：false</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.startsWithAny(&quot;aabcde&quot;,newString[]{&quot;g&quot;,&quot;a&quot;});//结果是：true</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*4.字符串以suffix结束*/</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.endsWith(&quot;aabcde&quot;,&quot;d&quot;);//结果是：false</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.endsWith(&quot;aabcde&quot;,&quot;e&quot;);//结果是：false</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.endsWithIgnoreCase(&quot;&quot;,&quot;&quot;);//结果是：false</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*5.替换字符串:把text中的searchString替换成replacement，max是最大替换次数，默认是替换所有*/</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.replaceOnce(&quot;sshhhss&quot;,&quot;ss&quot;,&quot;p&quot;);//只替换一次--&gt;结果是：phhhss</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.replace(&quot;sshhhs&quot;,&quot;ss&quot;,&quot;p&quot;);//全部替换---&gt;结果是：phhhs</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.replace(&quot;sshhhsshss&quot;,&quot;ss&quot;,&quot;7777&quot;,2);//max：最大替换次数--&gt;结果是：7777hhh7777hss</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.replaceChars(&quot;sshhhs&quot;,&quot;ss&quot;,&quot;p&quot;);//替换所有字符，区别于replace---&gt;结果是：pphhhp而不是pphhhs</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*6.按照数组进行替换，位置要匹配，数组长度要相等;暂时没发现下面replaceEach和replaceEachRepeatedly二者的区别*/</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.replaceEach(&quot;www.baidu.com&quot;,newString[]{&quot;baidu&quot;,&quot;com&quot;},newString[]{&quot;taobao&quot;,&quot;net&quot;});//结果是：www.taobao.net</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.replaceEach(&quot;www.baidu,baidu.com&quot;,newString[]{&quot;baidu&quot;,&quot;com&quot;},newString[]{&quot;taobao&quot;,&quot;net&quot;});//结果是：www.taobao,taobao.net</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.replaceEachRepeatedly(&quot;www.baidu.com&quot;,newString[]{&quot;baidu&quot;,&quot;com&quot;},newString[]{&quot;taobao&quot;,&quot;net&quot;});//结果是：www.taobao.net</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*7.比较两个字符串是否相等,如果两个均为null，则也认为相等*/</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.equals(&quot;&quot;,&quot;&quot;);//结果是true</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.equals(null,null);//结果是true</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.equals(&quot;&quot;,null);//结果是false</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.equals(null,&quot;&quot;);//结果是false</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.equalsIgnoreCase(&quot;ss&quot;,&quot;Ss&quot;);//不区分大小写--结果是true</span></p><p><br/></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*8.返回searchChar在字符串中第一次出现的位置,如果searchChar没有在字符串中出现，则返回-1*/</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.indexOf(&quot;sdfsfsfdsf&quot;,&quot;4&quot;);/*结果是-1*/</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.indexOf(&quot;sdfsfsfdsf&quot;,&quot;f&quot;);/*结果是2*/</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">//查找searchChar在字符串中最后一次出现的索引*/</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.lastIndexOf(&quot;aFkyk&quot;,&quot;k&quot;);//结果是4</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.lastIndexOf(&quot;aFkyk&quot;,&quot;&quot;);//结果是1</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*9.找出字符数组searChars第一次出现在字符串中的位置*/</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.indexOfAny(&quot;sdsfhhl0&quot;,&quot;f&quot;);//结果是3</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.indexOfAny(&quot;sdsfhhl0&quot;,newString[]{&quot;f&quot;,&quot;0&quot;});//结果是3</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.indexOfAny(&quot;sdsfhhl0&quot;,newString[]{&quot;t&quot;,&quot;j&quot;});//结果是-1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.indexOfAny(&quot;sdsfhhl0&quot;,newString[]{&quot;t&quot;,&quot;j&quot;,&quot;&quot;});//结果是3</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.lastIndexOfAny(&quot;aFkyk&quot;,newString[]{&quot;aFkyk&quot;,&quot;k&quot;});//找出字符数组searChars最后一次出现在字符串中的位置--结果是5</span></p><p><br/></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*10.找出字符串中不在字符数组searchars中的第一个字符出现的位置(从0位开始)</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">*如果都在，返回-1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">**/</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.indexOfAnyBut(&quot;sdsfhhl0&quot;,&quot;h&quot;);//结果是0</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.indexOfAnyBut(&quot;sdsfhhl0&quot;,&quot;s&quot;);//结果是1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.indexOfAnyBut(&quot;aa&quot;,&quot;aa&quot;);//结果是-1</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*11.统计参数1和参数2开始部分共有的字符个数*/</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.indexOfDifference(&quot;sdsfdsf&quot;,&quot;s&quot;);//结果是1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.indexOfDifference(newString[]{&quot;sdsfdsf&quot;,&quot;s&quot;});//结果是1</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*12.去掉参数2在参数1开始部分共有的字符串*/</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.difference(&quot;灌灌灌灌&quot;,&quot;灌灌灌灌啊啊&quot;);//结果是：啊啊</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*13.查找，不区分大小写,没有找到返回-1*/</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.indexOfIgnoreCase(&quot;aFabbSSdd&quot;,&quot;f&quot;);//返回1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.indexOfIgnoreCase(&quot;aFabbSSdd&quot;,&quot;f&quot;,2);//从指定位置开始查找，不区分大小写--返回-1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.indexOfIgnoreCase(&quot;aFabbSSdd&quot;,&quot;f&quot;,1);//返回1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.lastIndexOfIgnoreCase(&quot;&quot;,&quot;&quot;);</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.lastIndexOfIgnoreCase(&quot;&quot;,&quot;&quot;,2);</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*14.截取指定位置的字符串*/</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.substring(&quot;dskabcee&quot;,3);</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*结果是：abcee*/</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.substring(&quot;dskabcee&quot;,3,5);</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*结果是：ab*/</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*15.截取指定字符串之前的内容*/</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.substringBefore(&quot;dskeabcee&quot;,&quot;e&quot;);</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*结果是：dskeabce*/</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.substringBeforeLast(&quot;dskeabcee&quot;,&quot;e&quot;);//一直找到最后一个指定的字符串</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*结果是：dskeabce*/</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.substringAfter(&quot;dskeabcedeh&quot;,&quot;&quot;);</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*结果是：dskeabcedeh*/</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.substringAfterLast(&quot;dskeabcedeh&quot;,&quot;&quot;);</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*结果是：*/</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*16.截取参数2和参数3中间的字符*/</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.substringBetween(&quot;dskeabcedeh&quot;,&quot;ds&quot;);</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*结果是：null*/</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.substringBetween(&quot;dskeabcedeh&quot;,&quot;ds&quot;,&quot;e&quot;);</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*结果是：k*/</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.substringsBetween(&quot;dskeabcedeh&quot;,&quot;ds&quot;,&quot;e&quot;);//以数组方式返回参数2和参数3中间的字符串</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*结果是：[keabce]*/</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*1.分割字符串,可以设定得到数组的长度，但一般情况下不要设定，这样会发生冲突*/</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.split(&quot;y5y,4454,545&quot;);//默认是按，来分割</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.split(&quot;aaaa#sss&quot;,&quot;#&quot;);</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*结果是：[aaaa,sss]*/</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.split(&quot;aaaa#sss#&quot;,&quot;#&quot;,2);</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*2.按不同类型进行分割字符串*/</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.splitByCharacterType(&quot;aa3444张三Bcss&quot;);</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*结果是：[aa,3444,张三,a,B,css,B]*/</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.splitByCharacterTypeCamelCase(&quot;&quot;);</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*结果是：[aa,3444,张三,a,Bcss,B]*/</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*3.分割字符串，&quot;&quot;不会被忽略,可以设置分割字符串的数组长度*/</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.splitByWholeSeparator(&quot;aaaa#sss#&quot;,&quot;#&quot;);//&quot;&quot;不会被忽略</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*结果是：[aaaa,sss,]StringUtils.split结果是：[aaaa,sss]*/</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.splitByWholeSeparator(&quot;aaaa#sss#ggg&quot;,&quot;#&quot;);//</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*结果是：[aaaa,sss,ggg]*/</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.splitByWholeSeparator(&quot;aaaa#sss#ggg&quot;,&quot;&quot;);//按空格分割</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*结果是：[aaaa#,sss#ggg]*/</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.splitByWholeSeparator(&quot;aaaa#sss#&quot;,&quot;#&quot;,2);//2设定返回数组的最大长度</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*结果是：[aaaa,sss#]*/</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*4.分割字符串，&quot;&quot;不会被忽略,可以设置分割字符串的数组长度*/</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.splitByWholeSeparatorPreserveAllTokens(&quot;sddssfsfasfsaf&quot;,null);</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*结果是：[sddssf,sfasfsaf,]*/</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.splitByWholeSeparatorPreserveAllTokens(&quot;sddssfsfasfsaf&quot;,&quot;&quot;);</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*结果是：[sddssf,sfasfsaf,]*/</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">/*5.同上*/</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.splitPreserveAllTokens(&quot;&quot;);</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.splitPreserveAllTokens(&quot;&quot;,&quot;&quot;);</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">StringUtils.splitPreserveAllTokens(&quot;&quot;,&quot;&quot;,3);</span></p><p><br/></p>', 'Java StringUtils Apache', '16');
INSERT INTO `t_blog` VALUES ('36', 'LINUX如何关机', '1、直接关电源 2、init   0 3、telinit   0 4、shutdown   -h   now 5、halt6、poweroff', '2016-11-25 23:58:59', '2', '0', '<p>1、直接关电源&nbsp;</p><p>2、init &nbsp; 0&nbsp;</p><p>3、telinit &nbsp; 0&nbsp;</p><p>4、shutdown &nbsp; -h &nbsp; now&nbsp;</p><p>5、halt</p><p>6、poweroff</p><p><br/></p>', 'Linux', '18');
INSERT INTO `t_blog` VALUES ('37', 'linux下切换用户命令', '可以使用su命令来切换用户，su是switch user切换用户的缩写。可以是从普通用户切换到root用户，也可以是从root用户切换到普通用户。从普通用户切换到root用户需要输入密码，从root用户切换到普通用户不需要输入密码。命令格式：su [参数] [-] [用户名]用户名的默认值为root。用法示例', '2016-11-26 01:40:47', '2', '0', '<p>可以使用su命令来切换用户，su是switch user切换用户的缩写。可以是从普通用户切换到root用户，也可以是从root用户切换到普通用户。从普通用户切换到root用户需要输入密码，从root用户切换到普通用户不需要输入密码。</p><p><br/></p><p>命令格式：su [参数] [-] [用户名]</p><p>用户名的默认值为root。</p><p><br/></p><p>用法示例：</p><p>su zhidao #切换到zhidao用户</p><p>su #切换到root用户</p><p><br/></p>', 'Linux', '18');
INSERT INTO `t_blog` VALUES ('38', 'linux permission denied解决方法', '为了获得执行权限，借助chmod指令修改文件权限即可。如下所示:chmod 777 test.sh', '2016-11-26 01:59:01', '2', '0', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; text-align: justify; background-color: rgb(255, 255, 255);\">为了获得执行权限，借助chmod指令修改文件权限即可。如下所示:</span></p><p>chmod 777 test.sh</p>', 'Linux', '18');
INSERT INTO `t_blog` VALUES ('39', 'Windows相关命令', 'windows cmd命令行显示下面的文件通过命令: dir', '2016-11-26 03:00:40', '2', '0', '<ol class=\" list-paddingleft-2\" style=\"list-style-type: decimal;\"><li><p>windows cmd命令行显示下面的文件</p><p>通过命令: dir</p></li></ol><p></p>', '', '19');
INSERT INTO `t_blog` VALUES ('40', '参考学习链接', 'GitHub倪升武->https://github.com/eson15 B3log->http://blog.didispace.com/ 阿里巴巴->https://github.com/alibaba个人Blog程序猿DD(SpringCloud)->http://blog.didispace.com/', '2016-11-26 03:23:23', '10', '0', '<p><strong>GitHub</strong></p><p>倪升武-&gt;<a href=\"https://github.com/eson15\">https://github.com/eson15</a> </p><p>B3log-&gt;<a href=\"http://blog.didispace.com/\">http://blog.didispace.com/</a> </p><p>阿里巴巴-&gt;<a href=\"https://github.com/alibaba\">https://github.com/alibaba</a></p><p><br/></p><p><br/></p><p><strong>个人Blog</strong></p><p>程序猿DD(SpringCloud)-&gt;<a href=\"http://blog.didispace.com/\">http://blog.didispace.com/</a></p><p><strong><br/></strong></p><p><br/></p>', 'GitHub', '20');
INSERT INTO `t_blog` VALUES ('41', 'maven提示invalid LOC header (bad signature)的解决办法', '今天执行mvn test的时候提示：错误：读取 /home/subaochen/.m2/repository/org/slf4j/slf4j-api/1.6.1/slf4j-api-1.6.1.jar 时出错；invalid LOC header (bad signature)解决的办法是把提示的文件删掉让m', '2016-11-26 03:48:22', '1', '0', '<p style=\"margin-top: 0px; margin-bottom: 1em; padding: 0px; outline: 0px; border: 0px; vertical-align: baseline; font-size: 19px; font-family: Georgia, &quot;Times New Roman&quot;, Times, serif; white-space: normal; background-color: rgb(255, 255, 255);\">今天执行mvn test的时候提示：</p><p style=\"margin-top: 0px; margin-bottom: 1em; padding: 0px; outline: 0px; border: 0px; vertical-align: baseline; font-size: 19px; font-family: Georgia, &quot;Times New Roman&quot;, Times, serif; white-space: normal; background-color: rgb(255, 255, 255);\">错误：读取 /home/subaochen/.m2/repository/org/slf4j/slf4j-api/1.6.1/slf4j-api-1.6.1.jar 时出错；invalid LOC header (bad signature)</p><p style=\"margin-top: 0px; margin-bottom: 1em; padding: 0px; outline: 0px; border: 0px; vertical-align: baseline; font-size: 19px; font-family: Georgia, &quot;Times New Roman&quot;, Times, serif; white-space: normal; background-color: rgb(255, 255, 255);\">解决的办法是把提示的文件删掉让maven重新下载就解决了。</p><p><br/></p>', 'Maven', '21');
INSERT INTO `t_blog` VALUES ('42', 'Love Yourself', '', '2016-11-29 00:57:44', '17', '0', '<p><img src=\"/static/userImages/20161129/1480358248324067977.png\" title=\"1480358248324067977.png\" alt=\"Love Yourself.png\"/></p>', 'Love yourself', '31');

-- ----------------------------
-- Table structure for t_blogger
-- ----------------------------
DROP TABLE IF EXISTS `t_blogger`;
CREATE TABLE `t_blogger` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '博主id',
  `username` varchar(50) NOT NULL COMMENT '博主姓名',
  `password` varchar(100) NOT NULL COMMENT '博主密码',
  `profile` text COMMENT '博主信息',
  `nickname` varchar(50) DEFAULT NULL COMMENT '博主昵称',
  `sign` varchar(100) DEFAULT NULL COMMENT '博主签名',
  `imagename` varchar(100) DEFAULT NULL COMMENT '博主头像路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_blogger
-- ----------------------------
INSERT INTO `t_blogger` VALUES ('1', 'jay', '460ab6864ca25eb2770086eee2a038fb', '<p>对酒当歌，人生几何！譬如朝露，去日苦多。</p><p>慨当以慷，忧思难忘。何以解忧？唯有杜康。</p><p>青青子衿，悠悠我心。但为君故，沉吟至今。</p><p>呦呦鹿鸣，食野之苹。我有嘉宾，鼓瑟吹笙。</p><p>明明如月，何时可掇？忧从中来，不可断绝。</p><p>越陌度阡，枉用相存。契阔谈讌，心念旧恩。</p><p>月明星稀，乌鹊南飞。绕树三匝，何枝可依？</p><p>山不厌高，海不厌深。周公吐哺，天下归心。</p><p><br/></p>', '曹操', ' 山不厌高，海不厌深。', '20161129024919.jpg');

-- ----------------------------
-- Table structure for t_blogtype
-- ----------------------------
DROP TABLE IF EXISTS `t_blogtype`;
CREATE TABLE `t_blogtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '博客id',
  `typeName` varchar(30) DEFAULT NULL COMMENT '博客类别',
  `orderNum` int(11) DEFAULT NULL COMMENT '博客排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_blogtype
-- ----------------------------
INSERT INTO `t_blogtype` VALUES ('16', 'Java', '1');
INSERT INTO `t_blogtype` VALUES ('17', 'Mysql', '2');
INSERT INTO `t_blogtype` VALUES ('18', 'Linux', '3');
INSERT INTO `t_blogtype` VALUES ('19', 'Windows', '4');
INSERT INTO `t_blogtype` VALUES ('20', 'Reference', '1');
INSERT INTO `t_blogtype` VALUES ('21', 'Maven', '5');
INSERT INTO `t_blogtype` VALUES ('22', 'Spring Boot', '6');
INSERT INTO `t_blogtype` VALUES ('23', 'Spring Cloud', '7');
INSERT INTO `t_blogtype` VALUES ('24', 'Spring JPA', '7');
INSERT INTO `t_blogtype` VALUES ('25', 'Spring MVC', '7');
INSERT INTO `t_blogtype` VALUES ('26', 'Redis', '8');
INSERT INTO `t_blogtype` VALUES ('27', 'ZooKeeper', '8');
INSERT INTO `t_blogtype` VALUES ('28', 'Android', '9');
INSERT INTO `t_blogtype` VALUES ('29', 'IOS', '10');
INSERT INTO `t_blogtype` VALUES ('30', 'Mybatis', '11');
INSERT INTO `t_blogtype` VALUES ('31', 'Guitar', '1');

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论表id',
  `userIp` varchar(50) DEFAULT NULL COMMENT '评论者的ip',
  `content` varchar(1000) DEFAULT NULL COMMENT '评论内容',
  `commentDate` datetime DEFAULT NULL COMMENT '评论日期',
  `state` int(11) DEFAULT NULL COMMENT '审核状态',
  `blog_id` int(11) DEFAULT NULL COMMENT '外键关联具体博客',
  PRIMARY KEY (`id`),
  KEY `blog_id` (`blog_id`),
  CONSTRAINT `t_comment_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `t_blog` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_comment
-- ----------------------------

-- ----------------------------
-- Table structure for t_link
-- ----------------------------
DROP TABLE IF EXISTS `t_link`;
CREATE TABLE `t_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '友情链接表id',
  `linkname` varchar(100) DEFAULT NULL COMMENT '友情链接名',
  `linkurl` varchar(200) DEFAULT NULL COMMENT '友情链接url',
  `orderNum` int(11) DEFAULT NULL COMMENT '链接排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_link
-- ----------------------------
