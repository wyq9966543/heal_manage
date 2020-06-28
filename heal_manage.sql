/*
MySQL Data Transfer
Source Host: localhost
Source Database: db_jkd
Target Host: localhost
Target Database: db_jkd
Date: 2016-10-20 ���� 04:13:00
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL auto_increment,
  `userName` varchar(500) default NULL,
  `userPw` varchar(500) default NULL,
  PRIMARY KEY  (`userId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_jibing
-- ----------------------------
CREATE TABLE `t_jibing` (
  `id` int(11) NOT NULL auto_increment,
  `mingcheng` varchar(500) default NULL,
  `zhengzhuang` varchar(500) default NULL,
  `renyuanId` int(11) default NULL,
  `huanshijian` varchar(500) default NULL,
  `yisheng` varchar(500) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_renyuan
-- ----------------------------
CREATE TABLE `t_renyuan` (
  `id` int(11) NOT NULL auto_increment,
  `xingming` varchar(500) default NULL,
  `xingbie` varchar(500) default NULL,
  `nianling` varchar(500) default NULL,
  `dizhi` varchar(500) default NULL,
  `chusheng` varchar(500) default NULL,
  `shenfenzheng` varchar(500) default NULL,
  `lianxi` varchar(500) default NULL,
  `danwei` varchar(500) default NULL,
  `menzu` varchar(500) default NULL,
  `wenhua` varchar(500) default NULL,
  `hunyin` varchar(500) default NULL,
  `beizhu` varchar(500) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_tijian
-- ----------------------------
CREATE TABLE `t_tijian` (
  `id` int(11) NOT NULL auto_increment,
  `renyuan_id` int(11) default NULL,
  `shijian` varchar(500) default NULL,
  `yisheng` varchar(500) default NULL,
  `xueya` varchar(500) default NULL,
  `tizhong` varchar(500) default NULL,
  `kouchun` varchar(500) default NULL,
  `chilie` varchar(500) default NULL,
  `shili` varchar(500) default NULL,
  `tingli` varchar(500) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'a', 'a');
INSERT INTO `t_admin` VALUES ('2', 'dd', 'dd');
INSERT INTO `t_jibing` VALUES ('1', 'd', 'd', '1', '2016-10-20', 'd');
INSERT INTO `t_renyuan` VALUES ('1', '魏玉', '男', '21', '甘肃省', '1985-10-01', '622224198510106016', '18093619385', '甘肃省张掖市', '汉', '本科', '已婚', '<p>无</p>');
INSERT INTO `t_tijian` VALUES ('1', '1', '2016-10-20', 'dd', '1', '1', '1', '1', '1', '1');
