/*
 Navicat Premium Data Transfer

 Source Server         : 本机
 Source Server Type    : MySQL
 Source Server Version : 50711
 Source Host           : localhost:3306
 Source Schema         : novel

 Target Server Type    : MySQL
 Target Server Version : 50711
 File Encoding         : 65001

 Date: 07/04/2025 22:17:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'upload/picture1.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'upload/picture2.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'upload/picture3.jpg');

-- ----------------------------
-- Table structure for discussxiaoshuoxinxi
-- ----------------------------
DROP TABLE IF EXISTS `discussxiaoshuoxinxi`;
CREATE TABLE `discussxiaoshuoxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1743938606174 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '小说信息评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discussxiaoshuoxinxi
-- ----------------------------
INSERT INTO `discussxiaoshuoxinxi` VALUES (1651993771582, '2025-04-06 14:54:50', 1651993640777, 1651993560872, '111', '4352345', '67567');
INSERT INTO `discussxiaoshuoxinxi` VALUES (1743938606173, '2025-04-06 19:23:25', 32, 1651993560872, '1', '很好', '谢谢');

-- ----------------------------
-- Table structure for forum
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '帖子标题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) NULL DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1651993754603 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '交流论坛' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES (1651993745867, '2025-04-06 14:54:50', '交流', '<p>请输入内容22</p>', 0, 1651993560872, '111', '开放');
INSERT INTO `forum` VALUES (1651993754602, '2025-04-06 14:54:50', NULL, '而他也容易吐', 51, 1651993560872, '111', NULL);

-- ----------------------------
-- Table structure for huiyuan
-- ----------------------------
DROP TABLE IF EXISTS `huiyuan`;
CREATE TABLE `huiyuan`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `huiyuanzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '会员账号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `huiyuanxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '会员姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `huiyuandianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会员电话',
  `touxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `huiyuanzhanghao`(`huiyuanzhanghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1651993560874 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of huiyuan
-- ----------------------------
INSERT INTO `huiyuan` VALUES (1651993560872, '2025-04-06 14:54:50', '1', '1', '张三', '男', '18888886666', 'upload/1651993560320.jpg');
INSERT INTO `huiyuan` VALUES (1651993560873, '2025-04-06 14:54:50', '2', '2', '李四', '女', '16666666666', 'upload/1651993560320.jpg');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1651993705748 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公告资讯' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (71, '2025-04-06 14:54:50', '好好学习', '好好哈哈', 'upload/news_picture1.jpg', '<p>好好哈哈好好哈哈好好哈哈好好哈哈好好哈哈好好哈哈好好哈哈好好哈哈好好哈哈好好哈哈好好哈哈好好哈哈好好哈哈好好哈哈好好哈哈好好哈哈好好哈哈</p>');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) NULL DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏图片',
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1743920371157 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1651993763051, '2025-04-06 14:54:50', 1651993560872, 1651993640777, 'xiaoshuoxinxi', '杀神', 'upload/1651993586756.png', '1', NULL);

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  `expiratedtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'abo', 'users', '管理员', 'jvie16p1m68w7njrnol6kvnwkv8ey4l1', '2025-04-06 14:54:50', '2025-04-06 20:23:06');
INSERT INTO `token` VALUES (2, 1651993560872, '111', 'huiyuan', '会员', 'subrd2aon3ej6c5d04v0eabhplk9w5a4', '2025-04-06 14:54:50', '2025-04-07 23:04:47');
INSERT INTO `token` VALUES (3, 1651993560873, '2', 'huiyuan', '会员', 'xebzpkmdunh7313tlqbgahd9lqa50bxm', '2025-04-07 22:10:06', '2025-04-07 23:10:07');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin', '管理员', '2025-04-06 14:54:50');

-- ----------------------------
-- Table structure for xiaoshuofenlei
-- ----------------------------
DROP TABLE IF EXISTS `xiaoshuofenlei`;
CREATE TABLE `xiaoshuofenlei`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `xiaoshuofenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小说分类',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1651993568270 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '小说分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xiaoshuofenlei
-- ----------------------------
INSERT INTO `xiaoshuofenlei` VALUES (26, '2025-04-06 14:54:50', '仙侠');
INSERT INTO `xiaoshuofenlei` VALUES (1651993568269, '2025-04-06 14:54:50', '玄幻');

-- ----------------------------
-- Table structure for xiaoshuopingfen
-- ----------------------------
DROP TABLE IF EXISTS `xiaoshuopingfen`;
CREATE TABLE `xiaoshuopingfen`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `pingfenbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评分编号',
  `xiaoshuomingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小说名称',
  `pingfen` float NULL DEFAULT NULL COMMENT '评分',
  `huiyuanzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会员账号',
  `huiyuanxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会员姓名',
  `crossuserid` bigint(20) NULL DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) NULL DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `pingfenbianhao`(`pingfenbianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1744035027823 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '小说评分' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xiaoshuopingfen
-- ----------------------------
INSERT INTO `xiaoshuopingfen` VALUES (1744034747855, '2025-04-07 22:05:47', '2025472254323342489', '小说名称3', 4, '1', '张三', 1651993560872, 33);
INSERT INTO `xiaoshuopingfen` VALUES (1744035027822, '2025-04-07 22:10:27', '20254722102071078524', '小说名称3', 4, '2', '李四', 1651993560873, 33);

-- ----------------------------
-- Table structure for xiaoshuoxinxi
-- ----------------------------
DROP TABLE IF EXISTS `xiaoshuoxinxi`;
CREATE TABLE `xiaoshuoxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `xiaoshuobianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小说编号',
  `xiaoshuomingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小说名称',
  `xiaoshuofenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小说分类',
  `xiaoshuofengmian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小说封面',
  `xiaoshuozhangjie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小说章节',
  `xiaoshuojianjie` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '小说简介',
  `xiaoshuolianjie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小说链接',
  `xiaoshuoneirong` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小说内容',
  `pingfen` float NULL DEFAULT NULL COMMENT '评分',
  `xiaoshuoxiangqing` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '小说详情',
  `clicktime` datetime(0) NULL DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) NULL DEFAULT 0 COMMENT '点击次数',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `xiaoshuobianhao`(`xiaoshuobianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1651993640778 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '小说信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xiaoshuoxinxi
-- ----------------------------
INSERT INTO `xiaoshuoxinxi` VALUES (31, '2025-04-06 14:54:50', '1', '小说名称1', '仙侠', 'upload/xiaoshuoxinxi_xiaoshuofengmian1.jpg', '小说章节1', '小说简介1', 'http://www.baidu.com', '', 1, '<p>小说详情1</p>', '2025-04-07 22:10:09', 26);
INSERT INTO `xiaoshuoxinxi` VALUES (32, '2025-04-06 14:54:50', '2', '小说名称2', '仙侠', 'upload/xiaoshuoxinxi_xiaoshuofengmian2.jpg', '小说章节2', '小说简介2', 'http://www.baidu.com', '', 2, '<p>小说详情2</p>', '2025-04-07 22:10:12', 56);
INSERT INTO `xiaoshuoxinxi` VALUES (33, '2025-04-06 14:54:50', '3', '小说名称3', '玄幻', 'upload/xiaoshuoxinxi_xiaoshuofengmian3.jpg', '小说章节3', '小说简介3', 'http://www.baidu.com', '', 13, '<p>小说详情3</p>', '2025-04-07 22:11:37', 39);

SET FOREIGN_KEY_CHECKS = 1;
