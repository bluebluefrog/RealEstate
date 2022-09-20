/*
 Navicat Premium Data Transfer

 Source Server         : Maria-localhost
 Source Server Type    : MariaDB
 Source Server Version : 100608
 Source Host           : localhost:3307
 Source Schema         : g7-re

 Target Server Type    : MariaDB
 Target Server Version : 100608
 File Encoding         : 65001

 Date: 20/09/2022 00:45:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Is_seller` int(11) NOT NULL,
  `person_info_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  `updated_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('2', '123456', '4QrcOUm6Wau+VuBX8g+IPg==', 'http://img.lemeitu.com/m00/85/e4/dc3eb8dfc638bba269e1d252a9f0f6a7__w.jpg', 0, '1', '2022-09-01 22:14:21', '2022-09-01 22:14:21');
INSERT INTO `account` VALUES ('2209200C051MRMNC', 'wjb6791', '4QrcOUm6Wau+VuBX8g+IPg==', 'http://img.lemeitu.com/m00/85/e4/dc3eb8dfc638bba269e1d252a9f0f6a7__w.jpg', 0, '2209200C04XRHHM8', '2022-09-20 00:36:02', '2022-09-20 00:36:02');
INSERT INTO `account` VALUES ('2209200D0448ZNTC', 'wjb67911', '4QrcOUm6Wau+VuBX8g+IPg==', 'http://img.lemeitu.com/m00/85/e4/dc3eb8dfc638bba269e1d252a9f0f6a7__w.jpg', 0, '2209200D043YR30H', '2022-09-20 00:39:02', '2022-09-20 00:39:02');

-- ----------------------------
-- Table structure for agent
-- ----------------------------
DROP TABLE IF EXISTS `agent`;
CREATE TABLE `agent`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `agent_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `company` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  `updated_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of agent
-- ----------------------------

-- ----------------------------
-- Table structure for auction
-- ----------------------------
DROP TABLE IF EXISTS `auction`;
CREATE TABLE `auction`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `auction_date` date NOT NULL,
  `auction_duration` datetime NOT NULL,
  `starting_bid` decimal(10, 0) NOT NULL,
  `highest_auction_record_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `auction_title` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `auction_detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `auction_announcement` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `real_estate_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  `updated_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  `auction_sponsor_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `security_deposit` decimal(10, 0) NOT NULL,
  `appraised_value` decimal(10, 0) NOT NULL,
  `markup` decimal(10, 0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auction
-- ----------------------------
INSERT INTO `auction` VALUES ('1', '2022-09-19', '2022-09-20 10:00:00', 10, '2209200DFRFB1CSW', '123', '123', '123', '1', '2022-09-20 00:39:59', '2022-09-20 00:39:59', '2', 1, 10, 1);
INSERT INTO `auction` VALUES ('2', '1970-01-01', '2022-09-20 10:00:00', 10, '0', '123', '123', '123', '1', '2022-09-19 22:54:49', '2022-09-19 22:54:49', '2', 1, 10, 1);
INSERT INTO `auction` VALUES ('3', '1970-01-01', '2022-09-20 10:00:00', 10, '0', '123', '123', '123', '1', '2022-09-19 22:55:13', '2022-09-19 22:55:13', '2', 1, 10, 1);
INSERT INTO `auction` VALUES ('4', '1970-01-01', '1970-01-01 10:00:00', 132, '0', '123', '123', '123', '1', '2022-09-19 23:09:32', '2022-09-19 23:09:32', '2', 1, 10, 1);
INSERT INTO `auction` VALUES ('5', '1970-01-01', '1970-01-01 10:00:00', 132, '0', '123', '123', '123', '1', '2022-09-19 23:09:57', '2022-09-19 23:09:57', '2', 1, 10, 1);
INSERT INTO `auction` VALUES ('6', '1970-01-01', '1970-01-01 10:00:00', 132, '0', '123', '123', '123', '1', '2022-09-19 23:13:35', '2022-09-19 23:13:35', '2', 1, 10, 1);

-- ----------------------------
-- Table structure for auction_record
-- ----------------------------
DROP TABLE IF EXISTS `auction_record`;
CREATE TABLE `auction_record`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` int(11) NOT NULL COMMENT '1lead 2out',
  `account_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `auction_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bid_price` decimal(10, 0) NOT NULL,
  `bid_time` datetime NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  `updated_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auction_record
-- ----------------------------
INSERT INTO `auction_record` VALUES ('2209200D9H1S3X1P', 2, '2209200C051MRMNC', '1', 3, '2022-09-20 00:40:03', '2022-09-20 00:40:03', '2022-09-20 00:40:03');
INSERT INTO `auction_record` VALUES ('2209200DBPYBABHH', 2, '2209200C051MRMNC', '1', 4, '2022-09-20 00:40:17', '2022-09-20 00:40:17', '2022-09-20 00:40:17');
INSERT INTO `auction_record` VALUES ('2209200DFRFB1CSW', 1, '2209200C051MRMNC', '1', 5, '2022-09-20 00:40:36', '2022-09-20 00:40:36', '2022-09-20 00:40:36');

-- ----------------------------
-- Table structure for person_info
-- ----------------------------
DROP TABLE IF EXISTS `person_info`;
CREATE TABLE `person_info`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `sex` int(11) NOT NULL,
  `birthday` date NOT NULL,
  `email` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `age` int(11) NOT NULL,
  `other_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of person_info
-- ----------------------------
INSERT INTO `person_info` VALUES ('2', 'unknow', 'unknow', 0, 2, '2022-09-01', 'unknow', 'unknow', 99, 'unknow', '2022-09-01 21:52:28', '2022-09-01 21:52:28');
INSERT INTO `person_info` VALUES ('2209200C04XRHHM8', 'unknow', 'unknow', 0, 2, '2022-09-20', 'unknow', 'unknow', 99, 'unknow', '2022-09-20 00:36:02', '2022-09-20 00:36:02');
INSERT INTO `person_info` VALUES ('2209200C4392AMCH', 'unknow', 'unknow', 0, 2, '2022-09-20', 'unknow', 'unknow', 99, 'unknow', '2022-09-20 00:36:28', '2022-09-20 00:36:28');
INSERT INTO `person_info` VALUES ('2209200D043YR30H', 'unknow', 'unknow', 0, 2, '2022-09-20', 'unknow', 'unknow', 99, 'unknow', '2022-09-20 00:39:02', '2022-09-20 00:39:02');
INSERT INTO `person_info` VALUES ('3', 'unknow', 'unknow', 0, 2, '2022-09-01', 'unknow', 'unknow', 99, 'unknow', '2022-09-01 22:14:21', '2022-09-01 22:14:21');

-- ----------------------------
-- Table structure for real_estate
-- ----------------------------
DROP TABLE IF EXISTS `real_estate`;
CREATE TABLE `real_estate`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `real_estate_type` int(11) NOT NULL,
  `land_area` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `real_estate_area` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `bathrooms` int(11) NOT NULL,
  `garage` int(11) NOT NULL,
  `street_address` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `suburb` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `agent_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  `updated_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of real_estate
-- ----------------------------
INSERT INTO `real_estate` VALUES ('1', 1, '160', '120', 2, 2, 1, '36 Melody Street', 'Redfern', '2', '2022-08-22 12:35:54', '2022-08-26 19:20:52');
INSERT INTO `real_estate` VALUES ('10', 1, '900', '875', 4, 5, 2, '323 Hawk Cresent', 'Clyde North', '31231', '2022-09-22 16:23:45', '2022-10-11 17:05:36');
INSERT INTO `real_estate` VALUES ('11', 1, '745', '717', 3, 3, 1, '312 Saint George', 'Baulkham Hills', '31231', '2022-09-22 18:23:45', '2022-10-11 18:05:36');
INSERT INTO `real_estate` VALUES ('12', 1, '689', '605', 3, 2, 0, '123 Valentine Street', 'West Croydon', '31231', '2022-09-22 15:23:45', '2022-10-11 19:05:36');
INSERT INTO `real_estate` VALUES ('13', 1, '698', '632', 3, 2, 1, '887 Cosworth Avenue', 'Abbotsford', '31231', '2022-09-22 11:23:45', '2022-10-11 11:05:36');
INSERT INTO `real_estate` VALUES ('14', 1, '845', '798', 4, 3, 2, '456 Christopher Street', 'Chuwar', '31231', '2022-09-22 12:23:45', '2022-10-11 10:05:36');
INSERT INTO `real_estate` VALUES ('2', 1, '180', '158', 3, 2, 2, '21 Malson Street', 'Petersham', '3', '2022-08-10 14:12:43', '2022-08-27 10:54:24');
INSERT INTO `real_estate` VALUES ('3', 1, '190', '132', 5, 3, 2, '34, George Street', 'Burwood', '2', '2022-08-14 20:25:42', '2022-08-30 09:38:32');
INSERT INTO `real_estate` VALUES ('4', 1, '210', '180', 5, 4, 3, '23, Lucas Street', 'Marsfield', '4', '2022-09-01 15:12:35', '2022-09-05 10:29:31');
INSERT INTO `real_estate` VALUES ('5', 1, '180', '150', 3, 3, 2, '1, Neon Street', 'Flemington', '1', '2022-09-02 13:12:45', '2022-09-13 10:12:58');
INSERT INTO `real_estate` VALUES ('6', 1, '160', '120', 3, 2, 1, '61 Boronia Street', 'Kensington', '5', '2022-09-13 09:14:41', '2022-09-14 05:56:23');
INSERT INTO `real_estate` VALUES ('7', 1, '195', '175', 4, 2, 2, '86 Thomas Street', 'Strathfield', '7', '2022-09-15 09:24:32', '2022-09-16 12:34:56');
INSERT INTO `real_estate` VALUES ('8', 1, '700', '630', 4, 3, 1, '123 Winsdor', 'Mascot', '123', '2022-11-09 14:23:45', '2022-11-10 15:05:36');
INSERT INTO `real_estate` VALUES ('9', 2, '823', '789', 3, 4, 2, '467 O\'brien', 'Greensquare', '31231', '2022-09-22 12:23:45', '2022-10-11 16:05:36');

-- ----------------------------
-- Table structure for real_estate_img
-- ----------------------------
DROP TABLE IF EXISTS `real_estate_img`;
CREATE TABLE `real_estate_img`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `real_estate_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `position_sort` int(11) NOT NULL,
  `is_main` int(11) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  `updated_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of real_estate_img
-- ----------------------------
INSERT INTO `real_estate_img` VALUES ('1', '1', 1, 1, '2022-08-22 12:35:54', '2022-08-26 19:20:52', 'https://cdn.discordapp.com/attachments/1003508959505817628/1020321358804176926/unknown.png');
INSERT INTO `real_estate_img` VALUES ('10', '10', 10, 1, '2022-09-22 16:23:45', '2022-10-11 17:05:36', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/84418e27975e4d0306561bf1459eefda8ade08e5fdba451b8b9f528c2f81753b/image.jpg');
INSERT INTO `real_estate_img` VALUES ('11', '11', 11, 1, '2022-09-22 18:23:45', '2022-10-11 18:05:36', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/d0427fdc7cc3d60b9f90c33421a8eee5ea90c6e5e56a2a594c0e388aea3fb785/image.jpg');
INSERT INTO `real_estate_img` VALUES ('12', '12', 12, 1, '2022-09-22 15:23:45', '2022-10-11 19:05:36', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/6e1ad8a862483f891b8bc4353d181dd634d5555b4d31d79c3659ce0fbb4ff8f0/image.jpg');
INSERT INTO `real_estate_img` VALUES ('13', '13', 13, 1, '2022-09-22 11:23:45', '2022-10-11 11:05:36', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/d7f7aa89a788a6d77ab5519d1e55666c999fc886930a423f034202cbbade18a9/image.jpg');
INSERT INTO `real_estate_img` VALUES ('14', '14', 14, 1, '2022-09-22 12:23:45', '2022-10-11 10:05:36', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/513562de12160f7a5fc6604980328b6abb6839d8f45a5ac9893b268fffe2faee/image.jpg');
INSERT INTO `real_estate_img` VALUES ('2', '2', 2, 1, '2022-08-10 14:12:43', '2022-08-27 10:54:24', 'https://cdn.discordapp.com/attachments/1003508959505817628/1020321077395734538/unknown.png');
INSERT INTO `real_estate_img` VALUES ('3', '3', 3, 1, '2022-08-10 14:12:43', '2022-08-27 10:54:24', 'https://cdn.discordapp.com/attachments/1003508959505817628/1020321146454937710/unknown.png');
INSERT INTO `real_estate_img` VALUES ('4', '4', 4, 1, '2022-08-14 20:25:42', '2022-08-30 09:38:32', 'https://cdn.discordapp.com/attachments/1003508959505817628/1020321415167226026/unknown.png');
INSERT INTO `real_estate_img` VALUES ('5', '5', 5, 1, '2022-09-02 13:12:45', '2022-09-13 10:12:58', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/ff6aed451970c38e861e0a3b2f9190ac32844b85029fa5653518876a331113ca/image.jpg');
INSERT INTO `real_estate_img` VALUES ('6', '6', 6, 1, '2022-09-13 09:14:41', '2022-09-14 05:56:23', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/ff6aed451970c38e861e0a3b2f9190ac32844b85029fa5653518876a331113ca/image.jpg');
INSERT INTO `real_estate_img` VALUES ('7', '7', 7, 1, '2022-09-15 09:24:32', '2022-09-16 12:34:56', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/d37db48a284aeb3f6b0b263fb7bb27bdd2d58e0bdce9b8a09ad928b1d1fc94b4/image.jpg');
INSERT INTO `real_estate_img` VALUES ('8', '8', 8, 1, '2022-11-09 14:23:45', '2022-11-10 15:05:36', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/209dd452da45041ef7b569b403c88013506afa16d7243f4c1d006f0357efdc45/image.jpg');
INSERT INTO `real_estate_img` VALUES ('9', '9', 9, 1, '2022-09-22 12:23:45', '2022-10-11 16:05:36', 'https://i2.au.reastatic.net/1560x920-resize,extend,r=33,g=40,b=46/a4bc7bf1a2e81cc7f9aefa700af5f45c3a08576cd8942f7905e909f6a869ef2a/image.jpg');

-- ----------------------------
-- Table structure for wallet
-- ----------------------------
DROP TABLE IF EXISTS `wallet`;
CREATE TABLE `wallet`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `funds` decimal(10, 0) NOT NULL,
  `bank_account` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `account_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  `updated_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wallet
-- ----------------------------

-- ----------------------------
-- Table structure for watch_list
-- ----------------------------
DROP TABLE IF EXISTS `watch_list`;
CREATE TABLE `watch_list`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `account_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `real_estate_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  `updated_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of watch_list
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
