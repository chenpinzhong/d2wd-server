/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 127.0.0.1:3306
 Source Schema         : d2wd

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 28/08/2022 19:32:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '账号名称 登陆的账号名称',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '用户名称 登陆后显示的用户名称',
  `real_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '真实名称',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '密码',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '联系电话',
  `group_rights` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '权限组  根据获取获得权限',
  `user_rights` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '特殊权限',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `level` int(11) NULL DEFAULT NULL COMMENT '等级',
  `add_time` datetime  NOT NULL COMMENT '注册时间',
  `offline_time` datetime  NOT NULL COMMENT '离线时间',
  `update_time` datetime  NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_user
-- ----------------------------
INSERT INTO `admin_user` VALUES (1, 'chenpinzhong', 'chenpinzhong', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for product_catalog
-- ----------------------------
DROP TABLE IF EXISTS `product_catalog`;
CREATE TABLE `product_catalog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '目录ID',
  `pid` int(11) NULL DEFAULT NULL COMMENT '父目录ID',
  `catalog_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '目录名称',
  `update_time` datetime  NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_catalog
-- ----------------------------
INSERT INTO `product_catalog` VALUES (1, 0, '产品类目', NULL);
INSERT INTO `product_catalog` VALUES (2, 1, '衣服', NULL);
INSERT INTO `product_catalog` VALUES (3, 1, '生活用品', NULL);
INSERT INTO `product_catalog` VALUES (4, 2, '上衣', NULL);
INSERT INTO `product_catalog` VALUES (5, 2, '裙子', NULL);
INSERT INTO `product_catalog` VALUES (6, 3, '雨伞', NULL);
INSERT INTO `product_catalog` VALUES (7, 6, '太阳伞', NULL);
INSERT INTO `product_catalog` VALUES (8, 6, '道具伞', NULL);
INSERT INTO `product_catalog` VALUES (9, 3, '充电宝', NULL);

SET FOREIGN_KEY_CHECKS = 1;
