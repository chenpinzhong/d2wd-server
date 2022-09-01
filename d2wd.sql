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

 Date: 01/09/2022 16:56:39
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
  `add_time` datetime(0) NOT NULL COMMENT '注册时间',
  `offline_time` datetime(0) NOT NULL COMMENT '离线时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4642 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_user
-- ----------------------------
INSERT INTO `admin_user` VALUES (4594, 'chenpinzhong1', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4595, '1111', '3333', '333', '63b0eef00dadaf6c9844ed152f7861f8784e6a8f', '20220823', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4596, 'chenpinzhong1', '', 'cpz', '93d7ec2a0b72a4c59ff1d55875731ed699e9fda0', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4597, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4598, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4599, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4600, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4601, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4602, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4603, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4604, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4605, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4606, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4607, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4608, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4609, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4610, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4611, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4612, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4613, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4614, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4615, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4616, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4617, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4618, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4619, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4620, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4621, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4622, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4623, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4624, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4625, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4626, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4627, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4628, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4629, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4630, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4631, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4632, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4633, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4634, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4635, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4636, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4637, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4638, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4639, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4640, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');
INSERT INTO `admin_user` VALUES (4641, 'chenpinzhong', 'cpz', '陈品中', '10eb365d898388c87a19f12a0e270f147cafdabf', '15323734642', NULL, NULL, NULL, NULL, '2022-08-29 10:13:13', '2022-08-29 10:13:13', '2022-08-29 10:13:13');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catalog_id` int(11) NULL DEFAULT NULL COMMENT '类目ID',
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品名称',
  `product_status` tinyint(4) NULL DEFAULT NULL COMMENT '产品状态 0下架 1上架',
  `add_time` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  `update_time` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------

-- ----------------------------
-- Table structure for product_catalog
-- ----------------------------
DROP TABLE IF EXISTS `product_catalog`;
CREATE TABLE `product_catalog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '目录ID',
  `pid` int(11) NULL DEFAULT NULL COMMENT '父目录ID',
  `catalog_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '目录名称',
  `update_time` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_catalog
-- ----------------------------
INSERT INTO `product_catalog` VALUES (1, 0, '产品类目', '2022-08-29 10:15:47');
INSERT INTO `product_catalog` VALUES (2, 1, '衣服', '2022-08-29 10:15:47');
INSERT INTO `product_catalog` VALUES (3, 1, '生活用品', '2022-08-29 10:15:47');
INSERT INTO `product_catalog` VALUES (4, 2, '上衣', '2022-08-30 11:03:16');
INSERT INTO `product_catalog` VALUES (5, 2, '裙子', '2022-08-30 11:03:14');
INSERT INTO `product_catalog` VALUES (6, 3, '雨伞', '2022-08-29 10:15:47');
INSERT INTO `product_catalog` VALUES (7, 6, '太阳伞', '2022-08-30 11:03:11');
INSERT INTO `product_catalog` VALUES (10, 6, '道具伞', '2022-08-30 11:03:10');
INSERT INTO `product_catalog` VALUES (9, 3, '充电宝', '2022-08-29 10:15:47');

-- ----------------------------
-- Table structure for product_image
-- ----------------------------
DROP TABLE IF EXISTS `product_image`;
CREATE TABLE `product_image`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '上传用户ID',
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '文件存储路径',
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '文件名称',
  `web_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '网页路径',
  `web_path_100` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '网页路径400像素的',
  `web_path_400` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '网页路径400像素的',
  `file_size` int(11) NULL DEFAULT NULL COMMENT '文件大小',
  `file_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '文件类型',
  `file_extension` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '扩展名称',
  `add_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '产品图' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_image
-- ----------------------------
INSERT INTO `product_image` VALUES (1, NULL, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-01\\631057b0d66a7_s2.jpg', 's2.jpg', '/upload/temp/2022-09-01\\631057b0d66a7_s2.jpg', NULL, '/upload/temp/2022-09-01\\400_631057b0d66a7_s2.jpg', 178330, 'image/jpeg', 'jpg', '2022-09-01 16:55:45', '2022-09-01 16:55:46');
INSERT INTO `product_image` VALUES (2, NULL, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-01\\631057bea9099_s3.jpg', 's3.jpg', '/upload/temp/2022-09-01\\631057bea9099_s3.jpg', NULL, '/upload/temp/2022-09-01\\400_631057bea9099_s3.jpg', 101096, 'image/jpeg', 'jpg', '2022-09-01 16:55:48', '2022-09-01 16:55:49');
INSERT INTO `product_image` VALUES (3, NULL, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-01\\63105801145b3_s3.jpg', 's3.jpg', '/upload/temp/2022-09-01\\63105801145b3_s3.jpg', '/upload/temp/2022-09-01\\100_63105801145b3_s3.jpg', '/upload/temp/2022-09-01\\400_63105801145b3_s3.jpg', 101096, 'image/jpeg', 'jpg', '2022-09-01 16:55:51', '2022-09-01 16:55:52');
INSERT INTO `product_image` VALUES (4, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-01\\6310640f4ca14_s2.jpg', 's2.jpg', '/upload/temp/2022-09-01\\6310640f4ca14_s2.jpg', '/upload/temp/2022-09-01\\100_6310640f4ca14_s2.jpg', '/upload/temp/2022-09-01\\400_6310640f4ca14_s2.jpg', 178330, 'image/jpeg', 'jpg', NULL, NULL);
INSERT INTO `product_image` VALUES (5, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-01\\6310661e13a5b_s1.png', 's1.png', '/upload/temp/2022-09-01\\6310661e13a5b_s1.png', '/upload/temp/2022-09-01\\100_6310661e13a5b_s1.png', '/upload/temp/2022-09-01\\400_6310661e13a5b_s1.png', 1815890, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (6, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-01\\631066e034c71_s2.jpg', 's2.jpg', '/upload/temp/2022-09-01\\631066e034c71_s2.jpg', '/upload/temp/2022-09-01\\100_631066e034c71_s2.jpg', '/upload/temp/2022-09-01\\400_631066e034c71_s2.jpg', 178330, 'image/jpeg', 'jpg', NULL, NULL);
INSERT INTO `product_image` VALUES (7, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-01\\63106f120d9ee_s2.jpg', 's2.jpg', '/upload/temp/2022-09-01\\63106f120d9ee_s2.jpg', '/upload/temp/2022-09-01\\100_63106f120d9ee_s2.jpg', '/upload/temp/2022-09-01\\400_63106f120d9ee_s2.jpg', 178330, 'image/jpeg', 'jpg', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
