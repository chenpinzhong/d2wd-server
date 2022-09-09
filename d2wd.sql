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

 Date: 09/09/2022 17:55:16
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
) ENGINE = InnoDB AUTO_INCREMENT = 4642 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

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
  `category_id` int(11) NULL DEFAULT NULL COMMENT '类目ID',
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品名称',
  `brand_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '品牌名称',
  `product_images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '产品图',
  `attribute_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '产品属性',
  `product_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '产品描述',
  `product_status` tinyint(4) NULL DEFAULT NULL COMMENT '产品状态 0下架 1上架',
  `add_time` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  `update_time` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `category_id`(`category_id`) USING BTREE,
  INDEX `product_name`(`product_name`) USING BTREE,
  INDEX `brand_name`(`brand_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 0, '111', '2222', '[{\"file_extension\":\"png\",\"file_id\":\"41\",\"file_name\":\"O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png\",\"file_path\":\"D:\\\\UI\\\\d2wd-server\\\\public\\/upload\\/temp\\/2022-09-05\\\\63154de41eaf6_O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png\",\"file_size\":233230,\"file_type\":\"image\\/png\",\"user_id\":0,\"web_path\":\"\\/upload\\/temp\\/2022-09-05\\\\63154de41eaf6_O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png\",\"web_path_100\":\"\\/upload\\/temp\\/2022-09-05\\\\100_63154de41eaf6_O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png\",\"web_path_400\":\"\\/upload\\/temp\\/2022-09-05\\\\400_63154de41eaf6_O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png\"},{\"file_extension\":\"png\",\"file_id\":\"42\",\"file_name\":\"O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png\",\"file_path\":\"D:\\\\UI\\\\d2wd-server\\\\public\\/upload\\/temp\\/2022-09-05\\\\63154e1f65050_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png\",\"file_size\":241491,\"file_type\":\"image\\/png\",\"user_id\":0,\"web_path\":\"\\/upload\\/temp\\/2022-09-05\\\\63154e1f65050_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png\",\"web_path_100\":\"\\/upload\\/temp\\/2022-09-05\\\\100_63154e1f65050_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png\",\"web_path_400\":\"\\/upload\\/temp\\/2022-09-05\\\\400_63154e1f65050_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png\"}]', '[{\"attribute_name\":\"\\u989c\\u8272\",\"attribute_value_list\":[{\"value\":\"\\u767d\\u8272\",\"image_id\":41},{\"value\":\"\\u7c89\\u8272\",\"image_id\":42}]},{\"attribute_name\":\"\\u5bb9\\u91cf\",\"attribute_value_list\":[{\"value\":\"128GB\",\"image_id\":false},{\"value\":\"256GB\",\"image_id\":false}]}]', '<p>111</p>', 1, '2022-09-09 16:14:47', '2022-09-09 16:14:47');
INSERT INTO `product` VALUES (2, 0, 'iphone13', 'iphone', '[{\"file_extension\":\"png\",\"file_id\":\"41\",\"file_name\":\"O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png\",\"file_path\":\"D:\\\\UI\\\\d2wd-server\\\\public\\/upload\\/temp\\/2022-09-05\\\\63154de41eaf6_O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png\",\"file_size\":233230,\"file_type\":\"image\\/png\",\"user_id\":0,\"web_path\":\"\\/upload\\/temp\\/2022-09-05\\\\63154de41eaf6_O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png\",\"web_path_100\":\"\\/upload\\/temp\\/2022-09-05\\\\100_63154de41eaf6_O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png\",\"web_path_400\":\"\\/upload\\/temp\\/2022-09-05\\\\400_63154de41eaf6_O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png\"},{\"file_extension\":\"png\",\"file_id\":\"42\",\"file_name\":\"O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png\",\"file_path\":\"D:\\\\UI\\\\d2wd-server\\\\public\\/upload\\/temp\\/2022-09-05\\\\63154e1f65050_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png\",\"file_size\":241491,\"file_type\":\"image\\/png\",\"user_id\":0,\"web_path\":\"\\/upload\\/temp\\/2022-09-05\\\\63154e1f65050_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png\",\"web_path_100\":\"\\/upload\\/temp\\/2022-09-05\\\\100_63154e1f65050_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png\",\"web_path_400\":\"\\/upload\\/temp\\/2022-09-05\\\\400_63154e1f65050_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png\"}]', '[{\"attribute_name\":\"\\u989c\\u8272\",\"attribute_value_list\":[{\"value\":\"\\u767d\\u8272\",\"image_id\":41},{\"value\":\"\\u7c89\\u8272\",\"image_id\":42}]},{\"attribute_name\":\"\\u5bb9\\u91cf\",\"attribute_value_list\":[{\"value\":\"128GB\",\"image_id\":false},{\"value\":\"256GB\",\"image_id\":false}]}]', '<p><br></p>', 1, '2022-09-09 16:22:41', '2022-09-09 16:22:41');

-- ----------------------------
-- Table structure for product_attribute
-- ----------------------------
DROP TABLE IF EXISTS `product_attribute`;
CREATE TABLE `product_attribute`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NULL DEFAULT NULL COMMENT '产品ID',
  `attribute_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '属性名称',
  `add_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_id`(`product_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_attribute
-- ----------------------------
INSERT INTO `product_attribute` VALUES (1, 1, '颜色', '2022-09-09 14:33:05', '2022-09-09 14:33:05');
INSERT INTO `product_attribute` VALUES (2, 1, '容量', '2022-09-09 14:36:42', '2022-09-09 14:36:42');
INSERT INTO `product_attribute` VALUES (3, 2, '颜色', '2022-09-09 16:22:32', '2022-09-09 16:22:32');
INSERT INTO `product_attribute` VALUES (4, 2, '容量', '2022-09-09 16:22:32', '2022-09-09 16:22:32');
INSERT INTO `product_attribute` VALUES (5, 3, '颜色', '2022-09-09 16:25:50', '2022-09-09 16:25:50');
INSERT INTO `product_attribute` VALUES (6, 3, '容量', '2022-09-09 16:25:50', '2022-09-09 16:25:50');

-- ----------------------------
-- Table structure for product_attribute_value
-- ----------------------------
DROP TABLE IF EXISTS `product_attribute_value`;
CREATE TABLE `product_attribute_value`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NULL DEFAULT NULL,
  `attribute_id` int(11) NULL DEFAULT NULL,
  `attribute_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `attribute_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `attribute_image_id` int(11) NULL DEFAULT NULL,
  `add_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_attribute_value
-- ----------------------------
INSERT INTO `product_attribute_value` VALUES (5, 1, 1, '颜色', '白色', 41, '2022-09-09 16:14:47', '2022-09-09 16:14:47');
INSERT INTO `product_attribute_value` VALUES (6, 1, 1, '颜色', '粉色', 42, '2022-09-09 16:14:47', '2022-09-09 16:14:47');
INSERT INTO `product_attribute_value` VALUES (7, 1, 2, '容量', '128GB', 0, '2022-09-09 16:14:47', '2022-09-09 16:14:47');
INSERT INTO `product_attribute_value` VALUES (8, 1, 2, '容量', '256GB', 0, '2022-09-09 16:14:47', '2022-09-09 16:14:47');
INSERT INTO `product_attribute_value` VALUES (9, 2, 3, '颜色', '白色', 41, '2022-09-09 16:22:41', '2022-09-09 16:22:41');
INSERT INTO `product_attribute_value` VALUES (10, 2, 3, '颜色', '粉色', 42, '2022-09-09 16:22:41', '2022-09-09 16:22:41');
INSERT INTO `product_attribute_value` VALUES (11, 2, 4, '容量', '128GB', 0, '2022-09-09 16:22:41', '2022-09-09 16:22:41');
INSERT INTO `product_attribute_value` VALUES (12, 2, 4, '容量', '256GB', 0, '2022-09-09 16:22:41', '2022-09-09 16:22:41');
INSERT INTO `product_attribute_value` VALUES (13, 3, 5, '颜色', '白色', 41, '2022-09-09 16:26:37', '2022-09-09 16:26:37');
INSERT INTO `product_attribute_value` VALUES (14, 3, 5, '颜色', '粉色', 42, '2022-09-09 16:26:37', '2022-09-09 16:26:37');
INSERT INTO `product_attribute_value` VALUES (15, 3, 6, '容量', '128GB', 0, '2022-09-09 16:26:37', '2022-09-09 16:26:37');
INSERT INTO `product_attribute_value` VALUES (16, 3, 6, '容量', '256GB', 0, '2022-09-09 16:26:37', '2022-09-09 16:26:37');

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
) ENGINE = MyISAM AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `product_catalog` VALUES (15, 1, '手机', '2022-09-09 16:22:06');
INSERT INTO `product_catalog` VALUES (12, 11, '太阳伞', '2022-09-02 11:57:07');

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
) ENGINE = MyISAM AUTO_INCREMENT = 62 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '产品图' ROW_FORMAT = Dynamic;

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
INSERT INTO `product_image` VALUES (8, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\63115601db30f_s2.jpg', 's2.jpg', '/upload/temp/2022-09-02\\63115601db30f_s2.jpg', '/upload/temp/2022-09-02\\100_63115601db30f_s2.jpg', '/upload/temp/2022-09-02\\400_63115601db30f_s2.jpg', 178330, 'image/jpeg', 'jpg', NULL, NULL);
INSERT INTO `product_image` VALUES (9, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\631158f7f2e43_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', 'O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', '/upload/temp/2022-09-02\\631158f7f2e43_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_631158f7f2e43_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_631158f7f2e43_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', 241491, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (10, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\631158f815ce4_O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', 'O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', '/upload/temp/2022-09-02\\631158f815ce4_O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_631158f815ce4_O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_631158f815ce4_O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', 250043, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (11, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\631158f82c1d2_O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png', 'O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png', '/upload/temp/2022-09-02\\631158f82c1d2_O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_631158f82c1d2_O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_631158f82c1d2_O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png', 233230, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (12, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\631158ff69e5c_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', 'O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', '/upload/temp/2022-09-02\\631158ff69e5c_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_631158ff69e5c_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_631158ff69e5c_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', 241491, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (13, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\631158ff80fba_O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', 'O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', '/upload/temp/2022-09-02\\631158ff80fba_O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_631158ff80fba_O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_631158ff80fba_O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', 250043, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (14, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\631158ff9881f_O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png', 'O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png', '/upload/temp/2022-09-02\\631158ff9881f_O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_631158ff9881f_O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_631158ff9881f_O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png', 233230, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (15, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\63115b2e13462_O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png', 'O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png', '/upload/temp/2022-09-02\\63115b2e13462_O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_63115b2e13462_O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_63115b2e13462_O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png', 233230, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (16, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\631172fb555ba_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 'O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\631172fb555ba_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_631172fb555ba_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_631172fb555ba_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 254752, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (17, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\6311731aa1dee_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 'O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\6311731aa1dee_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_6311731aa1dee_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_6311731aa1dee_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 254752, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (18, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\6311736cf014f_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 'O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\6311736cf014f_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_6311736cf014f_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_6311736cf014f_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 254752, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (19, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\631173ac9d04a_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 'O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\631173ac9d04a_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_631173ac9d04a_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_631173ac9d04a_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 254752, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (20, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\631173bbac684_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 'O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\631173bbac684_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_631173bbac684_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_631173bbac684_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 254752, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (21, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\63117463c0729_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', 'O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', '/upload/temp/2022-09-02\\63117463c0729_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_63117463c0729_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_63117463c0729_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', 241491, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (22, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\63117559eef7f_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 'O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\63117559eef7f_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_63117559eef7f_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_63117559eef7f_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 254752, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (23, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\6311758018a8e_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 'O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\6311758018a8e_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_6311758018a8e_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_6311758018a8e_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 254752, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (24, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\6311761fb8140_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 'O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\6311761fb8140_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_6311761fb8140_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_6311761fb8140_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 254752, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (25, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\6311762e21539_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 'O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\6311762e21539_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_6311762e21539_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_6311762e21539_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 254752, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (26, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\6311763ff1fdf_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 'O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\6311763ff1fdf_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_6311763ff1fdf_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_6311763ff1fdf_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 254752, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (27, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\6311766277aff_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 'O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\6311766277aff_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_6311766277aff_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_6311766277aff_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 254752, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (28, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\631177737d286_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 'O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\631177737d286_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_631177737d286_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_631177737d286_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 254752, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (29, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\6311780f6cf9a_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 'O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\6311780f6cf9a_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_6311780f6cf9a_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_6311780f6cf9a_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 254752, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (30, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\63117827875a9_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 'O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\63117827875a9_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_63117827875a9_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_63117827875a9_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 254752, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (31, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\6311785da93b7_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 'O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\6311785da93b7_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_6311785da93b7_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_6311785da93b7_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 254752, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (32, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\6311788542449_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 'O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\6311788542449_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_6311788542449_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_6311788542449_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 254752, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (33, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\6311788f67354_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 'O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\6311788f67354_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_6311788f67354_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_6311788f67354_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 254752, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (34, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\6311793018deb_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 'O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\6311793018deb_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_6311793018deb_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_6311793018deb_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 254752, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (35, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\6311799b856ad_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 'O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\6311799b856ad_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_6311799b856ad_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_6311799b856ad_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 254752, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (36, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\631179b7baf0c_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 'O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\631179b7baf0c_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_631179b7baf0c_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_631179b7baf0c_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 254752, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (37, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\631179ffbd8f7_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 'O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\631179ffbd8f7_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_631179ffbd8f7_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_631179ffbd8f7_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 254752, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (38, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\63117a1593875_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 'O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\63117a1593875_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_63117a1593875_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_63117a1593875_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 254752, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (39, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\63117a3a08c6e_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 'O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\63117a3a08c6e_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_63117a3a08c6e_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_63117a3a08c6e_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 254752, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (40, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-02\\6311bf6ae6e94_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 'O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\6311bf6ae6e94_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\100_6311bf6ae6e94_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-02\\400_6311bf6ae6e94_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 254752, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (41, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-05\\63154de41eaf6_O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png', 'O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png', '/upload/temp/2022-09-05\\63154de41eaf6_O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png', '/upload/temp/2022-09-05\\100_63154de41eaf6_O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png', '/upload/temp/2022-09-05\\400_63154de41eaf6_O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png', 233230, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (42, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-05\\63154e1f65050_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', 'O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', '/upload/temp/2022-09-05\\63154e1f65050_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', '/upload/temp/2022-09-05\\100_63154e1f65050_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', '/upload/temp/2022-09-05\\400_63154e1f65050_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', 241491, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (43, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-05\\6315500cc1b12_O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', 'O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', '/upload/temp/2022-09-05\\6315500cc1b12_O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', '/upload/temp/2022-09-05\\100_6315500cc1b12_O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', '/upload/temp/2022-09-05\\400_6315500cc1b12_O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', 250043, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (44, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-06\\6316c5b457401_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', 'O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', '/upload/temp/2022-09-06\\6316c5b457401_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', '/upload/temp/2022-09-06\\100_6316c5b457401_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', '/upload/temp/2022-09-06\\400_6316c5b457401_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', 241491, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (45, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-06\\6316c5d2e8c09_O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png', 'O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png', '/upload/temp/2022-09-06\\6316c5d2e8c09_O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png', '/upload/temp/2022-09-06\\100_6316c5d2e8c09_O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png', '/upload/temp/2022-09-06\\400_6316c5d2e8c09_O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png', 233230, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (46, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-06\\6316dfda12d42_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', 'O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', '/upload/temp/2022-09-06\\6316dfda12d42_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', '/upload/temp/2022-09-06\\100_6316dfda12d42_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', '/upload/temp/2022-09-06\\400_6316dfda12d42_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', 241491, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (47, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-06\\6316dff5de037_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 'O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-06\\6316dff5de037_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-06\\100_6316dff5de037_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-06\\400_6316dff5de037_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 254752, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (48, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-06\\6316e03a4248e_O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', 'O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', '/upload/temp/2022-09-06\\6316e03a4248e_O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', '/upload/temp/2022-09-06\\100_6316e03a4248e_O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', '/upload/temp/2022-09-06\\400_6316e03a4248e_O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', 250043, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (49, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-06\\6316e0567cfb9_O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', 'O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', '/upload/temp/2022-09-06\\6316e0567cfb9_O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', '/upload/temp/2022-09-06\\100_6316e0567cfb9_O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', '/upload/temp/2022-09-06\\400_6316e0567cfb9_O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', 250043, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (50, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-06\\6316f7ec8c68d_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', 'O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', '/upload/temp/2022-09-06\\6316f7ec8c68d_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', NULL, NULL, 241491, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (51, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-06\\6316f9046908b_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', 'O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', '/upload/temp/2022-09-06\\6316f9046908b_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', NULL, NULL, 241491, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (52, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-06\\6316f90cb3a32_O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', 'O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', '/upload/temp/2022-09-06\\6316f90cb3a32_O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', NULL, NULL, 250043, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (53, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-06\\6316f90cb6c93_O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png', 'O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png', '/upload/temp/2022-09-06\\6316f90cb6c93_O1CN017hfOEl22AESNS8Qyu_!!2-item_pic.png', NULL, NULL, 233230, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (54, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-06\\6316f9814a6f4_O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', 'O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', '/upload/temp/2022-09-06\\6316f9814a6f4_O1CN01vuqUkt22AES7LdcoV_!!2-item_pic.png', NULL, NULL, 250043, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (55, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-06\\6316f99a1713f_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', 'O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', '/upload/temp/2022-09-06\\6316f99a1713f_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', NULL, NULL, 241491, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (56, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-06\\6316fee0db058_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', 'O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', '/upload/temp/2022-09-06\\6316fee0db058_O1CN01hfgFGr22AESGHd3u6_!!2-item_pic.png', NULL, NULL, 241491, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (57, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-07\\6317f2537e469_3a7581f5e262b2a694d4739648d7c5b0.mp4', '3a7581f5e262b2a694d4739648d7c5b0.mp4', '/upload/temp/2022-09-07\\6317f2537e469_3a7581f5e262b2a694d4739648d7c5b0.mp4', NULL, NULL, 1079181, 'video/mp4', 'mp4', NULL, NULL);
INSERT INTO `product_image` VALUES (58, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-07\\6317f70e24014_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', 'O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', '/upload/temp/2022-09-07\\6317f70e24014_O1CN01FAGdP722AESI2rj8t_!!2-item_pic.png', NULL, NULL, 254752, 'image/png', 'png', NULL, NULL);
INSERT INTO `product_image` VALUES (59, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-07\\6317f851ebcc7_v2-c60c281e8b406555bc7532e39ff69557.jpeg', 'v2-c60c281e8b406555bc7532e39ff69557.jpeg', '/upload/temp/2022-09-07\\6317f851ebcc7_v2-c60c281e8b406555bc7532e39ff69557.jpeg', NULL, NULL, 2488571, 'image/jpeg', 'jpeg', NULL, NULL);
INSERT INTO `product_image` VALUES (60, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-07\\631837435b12d_v2-c60c281e8b406555bc7532e39ff69557.jpeg', 'v2-c60c281e8b406555bc7532e39ff69557.jpeg', '/upload/temp/2022-09-07\\631837435b12d_v2-c60c281e8b406555bc7532e39ff69557.jpeg', NULL, NULL, 2488571, 'image/jpeg', 'jpeg', NULL, NULL);
INSERT INTO `product_image` VALUES (61, 0, 'D:\\UI\\d2wd-server\\public/upload/temp/2022-09-09\\631b07420c092_3a7581f5e262b2a694d4739648d7c5b0.mp4', '3a7581f5e262b2a694d4739648d7c5b0.mp4', '/upload/temp/2022-09-09\\631b07420c092_3a7581f5e262b2a694d4739648d7c5b0.mp4', NULL, NULL, 1079181, 'video/mp4', 'mp4', NULL, NULL);

-- ----------------------------
-- Table structure for product_sku
-- ----------------------------
DROP TABLE IF EXISTS `product_sku`;
CREATE TABLE `product_sku`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NULL DEFAULT NULL,
  `attribute_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品属性ID',
  `attribute_value_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品属性值ID',
  `stock` int(11) NULL DEFAULT NULL COMMENT '产品库存',
  `price` double NULL DEFAULT NULL COMMENT '价格',
  `sale_price` double NULL DEFAULT NULL COMMENT '销售价格',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_id`(`product_id`) USING BTREE,
  INDEX `attribute_value_ids`(`attribute_value_ids`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100024 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_sku
-- ----------------------------
INSERT INTO `product_sku` VALUES (100012, 1, '1,2', '5,7', 999, 0, 0, '2022-09-09 16:14:47', '2022-09-09 16:14:47');
INSERT INTO `product_sku` VALUES (100013, 1, '1,2', '5,8', 999, 0, 0, '2022-09-09 16:14:47', '2022-09-09 16:14:47');
INSERT INTO `product_sku` VALUES (100014, 1, '1,2', '6,7', 999, 0, 0, '2022-09-09 16:14:47', '2022-09-09 16:14:47');
INSERT INTO `product_sku` VALUES (100015, 1, '1,2', '6,8', 999, 0, 0, '2022-09-09 16:14:47', '2022-09-09 16:14:47');
INSERT INTO `product_sku` VALUES (100016, 2, '3,4', '9,11', 999, 7999, 7999, '2022-09-09 16:22:41', '2022-09-09 16:22:41');
INSERT INTO `product_sku` VALUES (100017, 2, '3,4', '9,12', 999, 7999, 7999, '2022-09-09 16:22:41', '2022-09-09 16:22:41');
INSERT INTO `product_sku` VALUES (100018, 2, '3,4', '10,11', 999, 7999, 7999, '2022-09-09 16:22:41', '2022-09-09 16:22:41');
INSERT INTO `product_sku` VALUES (100019, 2, '3,4', '10,12', 999, 7999, 7999, '2022-09-09 16:22:41', '2022-09-09 16:22:41');
INSERT INTO `product_sku` VALUES (100020, 3, '5,6', '13,15', 999, 0, 0, '2022-09-09 16:26:37', '2022-09-09 16:26:37');
INSERT INTO `product_sku` VALUES (100021, 3, '5,6', '13,16', 999, 0, 0, '2022-09-09 16:26:37', '2022-09-09 16:26:37');
INSERT INTO `product_sku` VALUES (100022, 3, '5,6', '14,15', 999, 0, 0, '2022-09-09 16:26:37', '2022-09-09 16:26:37');
INSERT INTO `product_sku` VALUES (100023, 3, '5,6', '14,16', 999, 0, 0, '2022-09-09 16:26:37', '2022-09-09 16:26:37');

SET FOREIGN_KEY_CHECKS = 1;
