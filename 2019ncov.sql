/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50554
 Source Host           : localhost:3306
 Source Schema         : 2019ncov

 Target Server Type    : MySQL
 Target Server Version : 50554
 File Encoding         : 65001

 Date: 02/02/2020 01:02:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for notify
-- ----------------------------
DROP TABLE IF EXISTS `notify`;
CREATE TABLE `notify`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email_notify` tinyint(2) NOT NULL DEFAULT 0 COMMENT '0关闭，1开启',
  `sms_notify` tinyint(2) NOT NULL DEFAULT 0 COMMENT '0关闭，1开启',
  `call_notify` tinyint(2) NOT NULL DEFAULT 0 COMMENT '0关闭，1开启',
  `reserve_char_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `reserve_char_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `reserve_char_3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `extend` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'json扩展属性',
  `create_time` datetime NULL DEFAULT NULL,
  `modify_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `real_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `phone` int(11) NOT NULL DEFAULT 0,
  `mail` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `province` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `city` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `reserve_char_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `reserve_char_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reserve_char_3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `extend` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'json',
  `create_time` datetime NULL DEFAULT NULL,
  `modify_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `phone`, `mail`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user_notify
-- ----------------------------
DROP TABLE IF EXISTS `user_notify`;
CREATE TABLE `user_notify`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `notify_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user_traffic
-- ----------------------------
DROP TABLE IF EXISTS `user_traffic`;
CREATE TABLE `user_traffic`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `province_start` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `city_start` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `province_end` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `city_end` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `datetime_start` datetime NULL DEFAULT NULL,
  `datetime_end` datetime NULL DEFAULT NULL,
  `traffic` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '班次/车牌',
  `transportation` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '0初始化，1大巴/出租车牌号，2地铁几号线，3火车，4飞机，5轮船',
  `reserve_char_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `reserve_char_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `reserve_char_3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `extend` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `create_time` datetime NULL DEFAULT NULL,
  `modify_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
