/*
 Navicat Premium Data Transfer

 Source Server         : master
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : 192.168.164.128:3306
 Source Schema         : ddcat

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 19/05/2021 15:17:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_details`;
CREATE TABLE `oauth_client_details`  (
  `client_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `resource_ids` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `client_secret` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `scope` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `authorized_grant_types` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `authorities` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_token_validity` int NULL DEFAULT NULL,
  `refresh_token_validity` int NULL DEFAULT NULL,
  `additional_information` varchar(4096) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `autoapprove` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`client_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_client_details
-- ----------------------------
INSERT INTO `oauth_client_details` VALUES ('ddcat', NULL, '$2a$10$FgUhkLyXz6rfjVUuUsgMXOK/6K0GFY6gsJRCiF2pmnK.E/MI7z.xi', 'server', 'password,refresh_token', NULL, 'oauth2', NULL, NULL, NULL, 'true');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `id` bigint NOT NULL COMMENT '??????id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '?????????id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '????????????',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '????????????',
  `sort` int NULL DEFAULT 0 COMMENT '????????????',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '?????????',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '????????????',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '??????',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `flag` tinyint NULL DEFAULT 0 COMMENT '??????????????????(????????? 1) ??????????????????(????????? 0)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '?????????' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', 'DD-CAT', 0, 'admin', '15888888888', 'admin@qq.com', 'admin', '2020-12-01 11:33:00', 'admin', '2018-03-16 11:33:00', 0);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '???????????????', 1, 'admin', '15888888888', 'admin@qq.com', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 0);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '???????????????', 2, 'admin', '15888888888', 'admin@qq.com', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 0);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '????????????', 1, 'admin', '15888888888', 'admin@qq.com', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 0);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '????????????', 2, 'admin', '15888888888', 'admin@qq.com', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 0);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '????????????', 3, 'admin', '15888888888', 'admin@qq.com', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 0);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '????????????', 4, 'admin', '15888888888', 'admin@qq.com', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 0);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '????????????', 5, 'admin', '15888888888', 'admin@qq.com', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 0);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '????????????', 1, 'admin', '15888888888', 'admin@qq.com', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 0);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '????????????', 2, 'admin', '15888888888', 'admin@qq.com', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 0);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` bigint NOT NULL COMMENT '??????ID',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????',
  `permission` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `path` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????URL',
  `parent_id` int NULL DEFAULT NULL COMMENT '?????????ID',
  `icon` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `component` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'VUE??????',
  `sort` int NULL DEFAULT 1 COMMENT '?????????',
  `is_cache` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '???????????? 0-?????????1- ??????',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '???????????? ???0?????? 1?????? 2?????????',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '????????????',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '????????????',
  `is_frame` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '????????????',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '????????????',
  `flag` tinyint NULL DEFAULT 0 COMMENT '??????????????????(????????? 1) ??????????????????(????????? 0)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2206 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '???????????????' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1000, '????????????', NULL, 'system', -1, 'system', '', 1, '0', '0', NULL, '2018-09-28 08:29:53', 'admin', '2020-12-16 11:43:17', '1', '0', 0);
INSERT INTO `sys_menu` VALUES (1100, '????????????', NULL, 'user', 1000, 'user', 'system/user/index', 1, '0', '1', NULL, '2017-11-02 22:24:37', 'admin', '2020-12-16 11:16:36', '1', '0', 0);
INSERT INTO `sys_menu` VALUES (1101, '????????????', 'sys:user:add', NULL, 1100, NULL, NULL, NULL, '0', '2', NULL, '2017-11-08 09:52:09', NULL, '2020-12-16 11:16:37', '1', '0', 0);
INSERT INTO `sys_menu` VALUES (1102, '????????????', 'sys:user:edit', NULL, 1100, NULL, NULL, NULL, '0', '2', NULL, '2017-11-08 09:52:48', NULL, '2020-12-16 11:16:44', '1', '0', 0);
INSERT INTO `sys_menu` VALUES (1103, '????????????', 'sys:user:del', NULL, 1100, NULL, NULL, NULL, '0', '2', NULL, '2017-11-08 09:54:01', NULL, '2020-12-16 11:16:43', '1', '0', 0);
INSERT INTO `sys_menu` VALUES (1200, '????????????', NULL, 'menu', 1000, 'tree-table', 'system/menu/index', 2, '0', '1', NULL, '2017-11-08 09:57:27', 'admin', '2020-12-16 11:16:45', '1', '0', 0);
INSERT INTO `sys_menu` VALUES (1201, '????????????', 'sys:menu:add', NULL, 1200, NULL, NULL, NULL, '0', '2', NULL, '2017-11-08 10:15:53', NULL, '2020-12-16 11:16:46', '1', '0', 0);
INSERT INTO `sys_menu` VALUES (1202, '????????????', 'sys:menu:edit', NULL, 1200, NULL, NULL, NULL, '0', '2', NULL, '2017-11-08 10:16:23', NULL, '2020-12-16 11:16:47', '1', '0', 0);
INSERT INTO `sys_menu` VALUES (1203, '????????????', 'sys:menu:del', NULL, 1200, NULL, NULL, NULL, '0', '2', NULL, '2017-11-08 10:16:43', NULL, '2020-12-16 11:16:48', '1', '0', 0);
INSERT INTO `sys_menu` VALUES (1300, '????????????', NULL, 'role', 1000, 'peoples', 'system/role/index', 3, '0', '1', NULL, '2017-11-08 10:13:37', 'admin', '2020-12-16 11:16:48', '1', '0', 0);
INSERT INTO `sys_menu` VALUES (1301, '????????????', 'sys:role:add', NULL, 1300, NULL, NULL, NULL, '0', '2', NULL, '2017-11-08 10:14:18', NULL, '2020-12-16 11:16:49', '1', '0', 0);
INSERT INTO `sys_menu` VALUES (1302, '????????????', 'sys:role:edit', NULL, 1300, NULL, NULL, NULL, '0', '2', NULL, '2017-11-08 10:14:41', NULL, '2020-12-16 11:16:50', '1', '0', 0);
INSERT INTO `sys_menu` VALUES (1303, '????????????', 'sys:role:del', NULL, 1300, NULL, NULL, NULL, '0', '2', NULL, '2017-11-08 10:14:59', NULL, '2020-12-16 11:16:51', '1', '0', 0);
INSERT INTO `sys_menu` VALUES (1304, '????????????', 'sys:role:perm', NULL, 1300, NULL, NULL, NULL, '0', '2', NULL, '2018-04-20 07:22:55', NULL, '2020-12-16 11:16:52', '1', '0', 0);
INSERT INTO `sys_menu` VALUES (1400, '????????????', NULL, 'dept', 1000, 'tree', 'system/dept/index', 4, '0', '1', NULL, '2018-01-20 13:17:19', 'admin', '2020-12-16 11:16:52', '1', '0', 0);
INSERT INTO `sys_menu` VALUES (1401, '????????????', 'sys:dept:add', NULL, 1400, NULL, NULL, NULL, '0', '2', NULL, '2018-01-20 14:56:16', NULL, '2020-12-16 11:16:53', '1', '0', 0);
INSERT INTO `sys_menu` VALUES (1402, '????????????', 'sys:dept:edit', NULL, 1400, NULL, NULL, NULL, '0', '2', NULL, '2018-01-20 14:56:59', NULL, '2020-12-16 11:16:54', '1', '0', 0);
INSERT INTO `sys_menu` VALUES (1403, '????????????', 'sys:dept:del', NULL, 1400, NULL, NULL, NULL, '0', '2', NULL, '2018-01-20 14:57:28', NULL, '2020-12-16 11:16:55', '1', '0', 0);
INSERT INTO `sys_menu` VALUES (2000, '????????????', NULL, 'sys-tools', -1, 'tool', '', 3, '0', '0', 'admin', '2019-11-07 20:56:00', 'admin', '2020-12-16 11:43:20', '1', '0', 0);
INSERT INTO `sys_menu` VALUES (2100, '????????????', NULL, 'logs', 2204, 'log', 'monitor/log/index', 5, '0', '1', NULL, '2017-11-20 14:06:22', NULL, '2020-12-16 11:16:56', '1', '0', 0);
INSERT INTO `sys_menu` VALUES (2101, '????????????', 'sys:log:del', NULL, 2100, NULL, NULL, NULL, '0', '2', NULL, '2017-11-20 20:37:37', NULL, '2020-12-16 11:16:57', '1', '0', 0);
INSERT INTO `sys_menu` VALUES (2200, '????????????', NULL, 'dict', 2000, 'dict', 'system/dict/index', 6, '0', '1', NULL, '2017-11-29 11:30:52', 'admin', '2020-12-16 11:16:58', '1', '0', 0);
INSERT INTO `sys_menu` VALUES (2201, '????????????', 'sys:dict:del', NULL, 2200, NULL, NULL, NULL, '0', '2', NULL, '2017-11-29 11:30:11', NULL, '2020-12-16 11:16:58', '1', '0', 0);
INSERT INTO `sys_menu` VALUES (2202, '????????????', 'sys:dict:add', NULL, 2200, NULL, NULL, NULL, '0', '2', NULL, '2018-05-11 22:34:55', NULL, '2020-12-16 11:16:59', '1', '0', 0);
INSERT INTO `sys_menu` VALUES (2203, '????????????', 'sys:dict:edit', NULL, 2200, NULL, NULL, NULL, '0', '2', NULL, '2018-05-11 22:36:03', NULL, '2020-12-16 11:17:00', '1', '0', 0);
INSERT INTO `sys_menu` VALUES (2204, '????????????', '', 'monitor', -1, 'monitor', '', 2, '0', '0', 'admin', '2020-12-04 22:36:03', 'admin', '2020-12-16 11:43:15', '1', '0', 0);
INSERT INTO `sys_menu` VALUES (2205, '????????????', NULL, 'swagger', 2204, 'swagger', 'tools/swagger/index', 5, '1', '1', NULL, '2017-11-20 14:06:22', 'admin', '2020-12-16 11:17:02', '1', '0', 1);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint NOT NULL,
  `code` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '??????',
  `name` varchar(1023) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '??????',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `flag` tinyint NULL DEFAULT 0 COMMENT '??????????????????(????????? 1) ??????????????????(????????? 0)',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name_UNIQUE`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '?????????' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, 'ROLE_admin', '???????????????', NULL, NULL, '2020-10-13 13:26:08', NULL, '2020-10-13 13:26:11', 0);
INSERT INTO `sys_role` VALUES (2, 'ROLE_test', '??????', NULL, NULL, '2020-10-13 13:26:08', 'admin', '2020-12-16 14:53:51', 1);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` int NOT NULL COMMENT '??????ID',
  `menu_id` int NOT NULL COMMENT '??????ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '???????????????' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 1000);
INSERT INTO `sys_role_menu` VALUES (1, 1100);
INSERT INTO `sys_role_menu` VALUES (1, 1101);
INSERT INTO `sys_role_menu` VALUES (1, 1102);
INSERT INTO `sys_role_menu` VALUES (1, 1103);
INSERT INTO `sys_role_menu` VALUES (1, 1200);
INSERT INTO `sys_role_menu` VALUES (1, 1201);
INSERT INTO `sys_role_menu` VALUES (1, 1202);
INSERT INTO `sys_role_menu` VALUES (1, 1203);
INSERT INTO `sys_role_menu` VALUES (1, 1300);
INSERT INTO `sys_role_menu` VALUES (1, 1301);
INSERT INTO `sys_role_menu` VALUES (1, 1302);
INSERT INTO `sys_role_menu` VALUES (1, 1303);
INSERT INTO `sys_role_menu` VALUES (1, 1304);
INSERT INTO `sys_role_menu` VALUES (1, 1400);
INSERT INTO `sys_role_menu` VALUES (1, 1401);
INSERT INTO `sys_role_menu` VALUES (1, 1402);
INSERT INTO `sys_role_menu` VALUES (1, 1403);
INSERT INTO `sys_role_menu` VALUES (1, 2000);
INSERT INTO `sys_role_menu` VALUES (1, 2100);
INSERT INTO `sys_role_menu` VALUES (1, 2101);
INSERT INTO `sys_role_menu` VALUES (1, 2200);
INSERT INTO `sys_role_menu` VALUES (1, 2201);
INSERT INTO `sys_role_menu` VALUES (1, 2202);
INSERT INTO `sys_role_menu` VALUES (1, 2203);
INSERT INTO `sys_role_menu` VALUES (1, 2204);
INSERT INTO `sys_role_menu` VALUES (1, 2205);
INSERT INTO `sys_role_menu` VALUES (1, 2300);
INSERT INTO `sys_role_menu` VALUES (1, 2301);
INSERT INTO `sys_role_menu` VALUES (1, 2400);
INSERT INTO `sys_role_menu` VALUES (1, 2401);
INSERT INTO `sys_role_menu` VALUES (1, 2402);
INSERT INTO `sys_role_menu` VALUES (1, 2403);
INSERT INTO `sys_role_menu` VALUES (1, 2500);
INSERT INTO `sys_role_menu` VALUES (1, 3000);
INSERT INTO `sys_role_menu` VALUES (1, 3100);
INSERT INTO `sys_role_menu` VALUES (1, 3200);
INSERT INTO `sys_role_menu` VALUES (1, 3300);
INSERT INTO `sys_role_menu` VALUES (1, 3301);
INSERT INTO `sys_role_menu` VALUES (1, 3302);
INSERT INTO `sys_role_menu` VALUES (1, 3303);
INSERT INTO `sys_role_menu` VALUES (1, 3400);
INSERT INTO `sys_role_menu` VALUES (1, 9999);
INSERT INTO `sys_role_menu` VALUES (2, 1101);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `login_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_id` bigint NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `flag` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '$2a$10$FgUhkLyXz6rfjVUuUsgMXOK/6K0GFY6gsJRCiF2pmnK.E/MI7z.xi', 'admin', '', '', '', '', '', 0, '2021-05-14 11:34:31', '2021-05-14 11:34:39', 'admin', 'admin', 0);
INSERT INTO `sys_user` VALUES (9, '??????', '', '??????', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` int NOT NULL COMMENT '??????ID',
  `role_id` int NOT NULL COMMENT '??????ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '???????????????' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (1, 2);
INSERT INTO `sys_user_role` VALUES (2, 2);

-- ----------------------------
-- Table structure for undo_log
-- ----------------------------
DROP TABLE IF EXISTS `undo_log`;
CREATE TABLE `undo_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `branch_id` bigint NOT NULL,
  `xid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `context` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rollback_info` longblob NOT NULL,
  `log_status` int NOT NULL,
  `log_created` datetime(0) NOT NULL,
  `log_modified` datetime(0) NOT NULL,
  `ext` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ux_undo_log`(`xid`, `branch_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of undo_log
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
