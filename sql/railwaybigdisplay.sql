/*
 Navicat Premium Dump SQL

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50710 (5.7.10-log)
 Source Host           : localhost:3306
 Source Schema         : railwaybigdisplay

 Target Server Type    : MySQL
 Target Server Version : 50710 (5.7.10-log)
 File Encoding         : 65001

 Date: 21/07/2025 11:52:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (2, 'station', '车站信息', '', '', 'Station', 'crud', 'element-plus', 'com.rdisplay.stationman', 'stationman', 'station', '车站信息管理', 'admin', '0', '/', '{\"parentMenuId\":1061}', 'admin', '2025-07-08 16:09:34', '', '2025-07-10 10:40:50', NULL);
INSERT INTO `gen_table` VALUES (5, 'station_garde', '车站等级', NULL, NULL, 'StationGarde', 'crud', 'element-plus', 'com.rdisplay.stationman', 'stationman', 'garde', '车站等级', 'admin', '0', '/', '{}', 'admin', '2025-07-09 15:00:33', '', '2025-07-15 16:15:10', NULL);
INSERT INTO `gen_table` VALUES (6, 'railway_plat_msg', '站台信息', NULL, NULL, 'RailwayPlatMsg', 'crud', 'element-plus', 'com.rdisplay.rplatmsg', 'rplatmsg', 'rplatmsg', '站台信息', 'ruoyi', '0', '/', '{\"parentMenuId\":1061}', 'admin', '2025-07-09 15:04:32', '', '2025-07-09 15:06:38', NULL);
INSERT INTO `gen_table` VALUES (7, 'station_msg', '车站发送人数', NULL, NULL, 'StationMsg', 'crud', 'element-plus', 'com.rdisplay.stationmsg', 'stationman', 'stationmsg', '车站发送人数', 'admin', '0', '/', '{\"parentMenuId\":1061}', 'admin', '2025-07-10 14:19:40', '', '2025-07-10 14:45:04', NULL);
INSERT INTO `gen_table` VALUES (8, 'railway_state_ticket', '列车状态-（检票状态，运行状态）', NULL, NULL, 'RailwayStateTicket', 'crud', 'element-plus', 'com.rdisplay.railwayticket', 'railwayticket', 'railwayticket', '列车状态-（检票状态，运行状态）', 'admin', '0', '/', '{\"parentMenuId\":1062}', 'admin', '2025-07-10 18:34:08', '', '2025-07-11 16:57:09', NULL);
INSERT INTO `gen_table` VALUES (9, 'railwaytoday', '今日车次大屏', NULL, NULL, 'Railwaytoday', 'crud', 'element-plus', 'com.rdisplay.railwaytoday', 'railwaytoday', 'railwaytoday', '今日车次大屏', 'admin', '0', '/', '{\"parentMenuId\":1077}', 'admin', '2025-07-10 18:34:08', '', '2025-07-10 18:39:10', NULL);
INSERT INTO `gen_table` VALUES (10, 'station_device', '车站设备', NULL, NULL, 'StationDevice', 'crud', 'element-plus', 'com.rdisplay.device', 'device', 'device', '车站设备', 'admin', '0', '/', '{\"parentMenuId\":1063}', 'admin', '2025-07-11 09:25:41', '', '2025-07-11 09:44:25', NULL);
INSERT INTO `gen_table` VALUES (11, 'station_device_maintenance', '车站设备维护', NULL, NULL, 'StationDeviceMaintenance', 'crud', 'element-plus', 'com.rdisplay.maintenance', 'maintenance', 'maintenance', '车站设备维护', 'admin', '0', '/', '{\"parentMenuId\":1063}', 'admin', '2025-07-11 09:25:41', '', '2025-07-11 10:51:52', NULL);
INSERT INTO `gen_table` VALUES (12, 'railwaymap', '列车运行图', NULL, NULL, 'Railwaymap', 'crud', 'element-plus', 'com.rdisplay.railway', 'railway', 'railwaymap', '列车运行图', 'admin', '0', '/', '{\"parentMenuId\":1062}', 'admin', '2025-07-11 11:41:23', '', '2025-07-11 13:14:35', NULL);
INSERT INTO `gen_table` VALUES (13, 'station_device_result', '车站设备维修处理状态', NULL, NULL, 'StationDeviceResult', 'crud', 'element-plus', 'com.rdisplay.deviceresult', 'deviceresult', 'result', '车站设备维修处理状态', 'admin', '0', '/', '{\"parentMenuId\":0}', 'admin', '2025-07-11 11:41:23', '', '2025-07-14 13:16:21', NULL);
INSERT INTO `gen_table` VALUES (14, 'station_device_type', '设备类型字段', NULL, NULL, 'StationDeviceType', 'crud', 'element-plus', 'com.rdisplay.DeviceType', 'DeviceType', 'type', '设备类型字段', 'admin', '0', '/', '{\"parentMenuId\":0}', 'admin', '2025-07-11 11:41:23', '', '2025-07-14 13:16:03', NULL);
INSERT INTO `gen_table` VALUES (15, 'station_train_peo', '车站今日列车客流信息', NULL, NULL, 'StationTrainPeo', 'crud', 'element-plus', 'com.rdisplay.peo', 'peo', 'peo', '车站今日列车客流信息', 'admin', '0', '/', '{\"parentMenuId\":1062}', 'admin', '2025-07-14 09:21:19', '', '2025-07-14 10:37:25', NULL);
INSERT INTO `gen_table` VALUES (16, 'railwaymsg', '检票口列车信息', NULL, NULL, 'Railwaymsg', 'crud', 'element-plus', 'com.rdisplay.railwayplatmsg', 'railwayplatmsg', 'railwayplatmsg', '检票口列车信息', 'admin', '0', '/', '{\"parentMenuId\":1061}', 'admin', '2025-07-14 16:44:06', '', '2025-07-14 16:46:10', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint(20) NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 86 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (5, 2, 'station_num', '车站编号', 'int(255)', 'Integer', 'stationNum', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-07-08 16:09:34', '', '2025-07-10 10:40:50');
INSERT INTO `gen_table_column` VALUES (6, 2, 'station_name', '车站名称', 'varchar(255)', 'String', 'stationName', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2025-07-08 16:09:34', '', '2025-07-10 10:40:50');
INSERT INTO `gen_table_column` VALUES (7, 2, 's_name', '车站缩写', 'varchar(255)', 'String', 'sName', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2025-07-08 16:09:34', '', '2025-07-10 10:40:50');
INSERT INTO `gen_table_column` VALUES (8, 2, 'station_grade', '车站等级（0-2: 特，一，二）', 'int(255)', 'Integer', 'stationGrade', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', 'train_station_grade', 4, 'admin', '2025-07-08 16:09:34', '', '2025-07-10 10:40:50');
INSERT INTO `gen_table_column` VALUES (15, 5, 'station_garde_num', NULL, 'int(255)', 'Long', 'stationGardeNum', '1', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-07-09 15:00:33', '', '2025-07-15 16:15:10');
INSERT INTO `gen_table_column` VALUES (16, 5, 'station_garde', NULL, 'varchar(255)', 'String', 'stationGarde', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2025-07-09 15:00:33', '', '2025-07-15 16:15:10');
INSERT INTO `gen_table_column` VALUES (17, 6, 'plat_num', '站台编号', 'int(11)', 'Long', 'platNum', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-07-09 15:04:32', '', '2025-07-09 15:06:38');
INSERT INTO `gen_table_column` VALUES (18, 6, 'train_num', '车次', 'varchar(255)', 'String', 'trainNum', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2025-07-09 15:04:32', '', '2025-07-09 15:06:38');
INSERT INTO `gen_table_column` VALUES (19, 6, 'dep_station', '始发站', 'varchar(255)', 'String', 'depStation', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2025-07-09 15:04:32', '', '2025-07-09 15:06:38');
INSERT INTO `gen_table_column` VALUES (20, 6, 'ter_station', '终到站', 'varchar(255)', 'String', 'terStation', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2025-07-09 15:04:32', '', '2025-07-09 15:06:38');
INSERT INTO `gen_table_column` VALUES (21, 6, 'start_time', '发车时间', 'time', 'Date', 'startTime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2025-07-09 15:04:32', '', '2025-07-09 15:06:38');
INSERT INTO `gen_table_column` VALUES (22, 7, 'id', NULL, 'int(255)', 'Integer', 'id', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-07-10 14:19:40', '', '2025-07-10 14:45:04');
INSERT INTO `gen_table_column` VALUES (23, 7, 'station_num', '车站编号', 'int(255)', 'Integer', 'stationNum', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2025-07-10 14:19:40', '', '2025-07-10 14:45:04');
INSERT INTO `gen_table_column` VALUES (24, 7, 'send_peop', '发送人数', 'int(255)', 'Integer', 'sendPeop', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2025-07-10 14:19:40', '', '2025-07-10 14:45:04');
INSERT INTO `gen_table_column` VALUES (25, 7, 'arrive_peop', '到达人数', 'int(255)', 'Integer', 'arrivePeop', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2025-07-10 14:19:40', '', '2025-07-10 14:45:04');
INSERT INTO `gen_table_column` VALUES (26, 8, 'railway_state_num', '状态编号', 'int(255)', 'Integer', 'railwayStateNum', '1', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-07-10 18:34:08', '', '2025-07-11 16:57:09');
INSERT INTO `gen_table_column` VALUES (27, 8, 'railway_state', '列车状态', 'varchar(255)', 'String', 'railwayState', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2025-07-10 18:34:08', '', '2025-07-11 16:57:09');
INSERT INTO `gen_table_column` VALUES (28, 9, 'id', NULL, 'int(255)', 'Integer', 'id', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-07-10 18:34:08', '', '2025-07-10 18:39:10');
INSERT INTO `gen_table_column` VALUES (29, 9, 'train_num', '车次', 'varchar(255)', 'String', 'trainNum', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2025-07-10 18:34:08', '', '2025-07-10 18:39:10');
INSERT INTO `gen_table_column` VALUES (30, 9, 'dep_station', '始发站', 'varchar(255)', 'String', 'depStation', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2025-07-10 18:34:08', '', '2025-07-10 18:39:10');
INSERT INTO `gen_table_column` VALUES (31, 9, 'ter_station', '终到站', 'varchar(255)', 'String', 'terStation', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2025-07-10 18:34:08', '', '2025-07-10 18:39:10');
INSERT INTO `gen_table_column` VALUES (32, 9, 'stop_tick_time', '停检时间', 'time', 'Date', 'stopTickTime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2025-07-10 18:34:08', '', '2025-07-10 18:39:10');
INSERT INTO `gen_table_column` VALUES (33, 9, 'start_time', '发车时间', 'time', 'Date', 'startTime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2025-07-10 18:34:08', '', '2025-07-10 18:39:10');
INSERT INTO `gen_table_column` VALUES (34, 9, 'plat', '站台', 'int(11)', 'Integer', 'plat', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2025-07-10 18:34:08', '', '2025-07-10 18:39:11');
INSERT INTO `gen_table_column` VALUES (35, 9, 'ticket_num', '检票口', 'int(255)', 'Integer', 'ticketNum', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2025-07-10 18:34:08', '', '2025-07-10 18:39:11');
INSERT INTO `gen_table_column` VALUES (36, 9, 'state', '列车状态', 'int(255)', 'Integer', 'state', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2025-07-10 18:34:08', '', '2025-07-10 18:39:11');
INSERT INTO `gen_table_column` VALUES (37, 10, 'device_id', '设备ID', 'int(255)', 'Integer', 'deviceId', '1', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-07-11 09:25:41', '', '2025-07-11 09:44:25');
INSERT INTO `gen_table_column` VALUES (38, 10, 'device_name', '设备名称', 'varchar(255)', 'String', 'deviceName', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2025-07-11 09:25:41', '', '2025-07-11 09:44:25');
INSERT INTO `gen_table_column` VALUES (39, 10, 'device_type', '设备分类', 'int(255)', 'Integer', 'deviceType', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2025-07-11 09:25:41', '', '2025-07-11 09:44:25');
INSERT INTO `gen_table_column` VALUES (40, 10, 'brand', '品牌', 'varchar(255)', 'String', 'brand', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2025-07-11 09:25:41', '', '2025-07-11 09:44:25');
INSERT INTO `gen_table_column` VALUES (41, 10, 'model', '型号', 'varchar(255)', 'String', 'model', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2025-07-11 09:25:41', '', '2025-07-11 09:44:25');
INSERT INTO `gen_table_column` VALUES (42, 10, 'station_num', '车站编号', 'int(255)', 'Integer', 'stationNum', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2025-07-11 09:25:41', '', '2025-07-11 09:44:25');
INSERT INTO `gen_table_column` VALUES (43, 10, 'location', '具体地点', 'varchar(255)', 'String', 'location', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2025-07-11 09:25:41', '', '2025-07-11 09:44:25');
INSERT INTO `gen_table_column` VALUES (44, 10, 'status', '状态', 'int(11)', 'Integer', 'status', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'radio', '', 8, 'admin', '2025-07-11 09:25:41', '', '2025-07-11 09:44:25');
INSERT INTO `gen_table_column` VALUES (45, 10, 'install_date', '安装日期', 'date', 'Date', 'installDate', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 9, 'admin', '2025-07-11 09:25:41', '', '2025-07-11 09:44:25');
INSERT INTO `gen_table_column` VALUES (46, 10, 'last_maintenance_date', '最后一次维修时间', 'date', 'Date', 'lastMaintenanceDate', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 10, 'admin', '2025-07-11 09:25:41', '', '2025-07-11 09:44:25');
INSERT INTO `gen_table_column` VALUES (47, 10, 'next_maintenance_date', '计划下一次维修时间', 'date', 'Date', 'nextMaintenanceDate', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 11, 'admin', '2025-07-11 09:25:41', '', '2025-07-11 09:44:25');
INSERT INTO `gen_table_column` VALUES (48, 10, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2025-07-11 09:25:41', '', '2025-07-11 09:44:25');
INSERT INTO `gen_table_column` VALUES (49, 10, 'update_time', '最后更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2025-07-11 09:25:41', '', '2025-07-11 09:44:25');
INSERT INTO `gen_table_column` VALUES (50, 11, 'log_id', '记录id', 'int(11)', 'Integer', 'logId', '1', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-07-11 09:25:41', '', '2025-07-11 10:51:52');
INSERT INTO `gen_table_column` VALUES (51, 11, 'device_id', '设备id', 'int(11)', 'Integer', 'deviceId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2025-07-11 09:25:41', '', '2025-07-11 10:51:52');
INSERT INTO `gen_table_column` VALUES (52, 11, 'maintenance_date', '维护时间', 'datetime', 'Date', 'maintenanceDate', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2025-07-11 09:25:41', '', '2025-07-11 10:51:52');
INSERT INTO `gen_table_column` VALUES (53, 11, 'maintenance_type', '维护类型', 'varchar(255)', 'String', 'maintenanceType', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', '', 4, 'admin', '2025-07-11 09:25:41', '', '2025-07-11 10:51:52');
INSERT INTO `gen_table_column` VALUES (54, 11, 'operator', '操作人员', 'varchar(255)', 'String', 'operator', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2025-07-11 09:25:41', '', '2025-07-11 10:51:52');
INSERT INTO `gen_table_column` VALUES (55, 11, 'description', '故障原因', 'varchar(255)', 'String', 'description', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2025-07-11 09:25:41', '', '2025-07-11 10:51:52');
INSERT INTO `gen_table_column` VALUES (56, 11, 'result', '处理结果（成/失/跟进）', 'int(11)', 'Integer', 'result', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2025-07-11 09:25:41', '', '2025-07-11 10:51:52');
INSERT INTO `gen_table_column` VALUES (57, 11, 'attachment', '现场照片', 'varchar(255)', 'String', 'attachment', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'imageUpload', '', 8, 'admin', '2025-07-11 09:25:42', '', '2025-07-11 10:51:52');
INSERT INTO `gen_table_column` VALUES (58, 12, 'id', '序号', 'int(255)', 'Integer', 'id', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-07-11 11:41:23', '', '2025-07-11 13:14:35');
INSERT INTO `gen_table_column` VALUES (59, 12, 'train_num', '车次', 'varchar(255)', 'String', 'trainNum', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2025-07-11 11:41:23', '', '2025-07-11 13:14:35');
INSERT INTO `gen_table_column` VALUES (60, 12, 'dep_station', '始发站', 'varchar(255)', 'String', 'depStation', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2025-07-11 11:41:23', '', '2025-07-11 13:14:35');
INSERT INTO `gen_table_column` VALUES (61, 12, 'dep_time', '发车时间', 'time', 'Date', 'depTime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2025-07-11 11:41:23', '', '2025-07-11 13:14:35');
INSERT INTO `gen_table_column` VALUES (62, 12, 'way_station_01', '途径站1', 'varchar(255)', 'String', 'wayStation01', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2025-07-11 11:41:23', '', '2025-07-11 13:14:35');
INSERT INTO `gen_table_column` VALUES (63, 12, 'way_dep_time_01', '途径发车时间', 'time', 'Date', 'wayDepTime01', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2025-07-11 11:41:23', '', '2025-07-11 13:14:35');
INSERT INTO `gen_table_column` VALUES (64, 12, 'way_station_02', '途径站2', 'varchar(255)', 'String', 'wayStation02', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2025-07-11 11:41:23', '', '2025-07-11 13:14:35');
INSERT INTO `gen_table_column` VALUES (65, 12, 'way_dep_time_02', '途径发车时间', 'time', 'Date', 'wayDepTime02', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 8, 'admin', '2025-07-11 11:41:23', '', '2025-07-11 13:14:35');
INSERT INTO `gen_table_column` VALUES (66, 12, 'way_station_03', '途径站3', 'varchar(255)', 'String', 'wayStation03', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2025-07-11 11:41:23', '', '2025-07-11 13:14:35');
INSERT INTO `gen_table_column` VALUES (67, 12, 'way_dep_time_03', '途径发车时间', 'time', 'Date', 'wayDepTime03', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 10, 'admin', '2025-07-11 11:41:23', '', '2025-07-11 13:14:35');
INSERT INTO `gen_table_column` VALUES (68, 12, 'ter_station', '终点站', 'varchar(255)', 'String', 'terStation', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2025-07-11 11:41:23', '', '2025-07-11 13:14:35');
INSERT INTO `gen_table_column` VALUES (69, 12, 'ter_time', '终到时间', 'time', 'Date', 'terTime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 12, 'admin', '2025-07-11 11:41:23', '', '2025-07-11 13:14:35');
INSERT INTO `gen_table_column` VALUES (70, 13, 'station_device_result_id', '状态编码', 'int(11)', 'Integer', 'stationDeviceResultId', '1', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-07-11 11:41:23', '', '2025-07-14 13:16:21');
INSERT INTO `gen_table_column` VALUES (71, 13, 'station_device_result', '维护状态', 'varchar(255)', 'String', 'stationDeviceResult', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2025-07-11 11:41:23', '', '2025-07-14 13:16:21');
INSERT INTO `gen_table_column` VALUES (72, 14, 'station_device_id', '设备类型编号', 'int(255)', 'Integer', 'stationDeviceId', '1', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-07-11 11:41:23', '', '2025-07-14 13:16:03');
INSERT INTO `gen_table_column` VALUES (73, 14, 'station_device_name', '设备类型名', 'varchar(255)', 'String', 'stationDeviceName', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2025-07-11 11:41:23', '', '2025-07-14 13:16:03');
INSERT INTO `gen_table_column` VALUES (74, 15, 'id', '序号', 'int(255)', 'Integer', 'id', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-07-14 09:21:19', '', '2025-07-14 10:37:25');
INSERT INTO `gen_table_column` VALUES (75, 15, 'train_num', '车次', 'varchar(255)', 'String', 'trainNum', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2025-07-14 09:21:19', '', '2025-07-14 10:37:25');
INSERT INTO `gen_table_column` VALUES (76, 15, 't_tp', '上车人数', 'int(255)', 'Integer', 'tTp', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2025-07-14 09:21:19', '', '2025-07-14 10:37:25');
INSERT INTO `gen_table_column` VALUES (77, 15, 'd_tp', '下车人数', 'int(255)', 'Integer', 'dTp', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2025-07-14 09:21:19', '', '2025-07-14 10:37:25');
INSERT INTO `gen_table_column` VALUES (78, 15, 'station_num', '车站编号', 'int(255)', 'Integer', 'stationNum', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2025-07-14 09:21:19', '', '2025-07-14 10:37:25');
INSERT INTO `gen_table_column` VALUES (79, 16, 'id', NULL, 'int(255)', 'Long', 'id', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-07-14 16:44:06', '', '2025-07-14 16:46:10');
INSERT INTO `gen_table_column` VALUES (80, 16, 'train_num', '车次', 'varchar(255)', 'String', 'trainNum', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2025-07-14 16:44:06', '', '2025-07-14 16:46:10');
INSERT INTO `gen_table_column` VALUES (81, 16, 'dep_station', '始发站', 'varchar(255)', 'String', 'depStation', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2025-07-14 16:44:06', '', '2025-07-14 16:46:10');
INSERT INTO `gen_table_column` VALUES (82, 16, 'ter_station', '终到站', 'varchar(255)', 'String', 'terStation', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2025-07-14 16:44:06', '', '2025-07-14 16:46:10');
INSERT INTO `gen_table_column` VALUES (83, 16, 'start_time', '开车时间', 'time', 'Date', 'startTime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2025-07-14 16:44:06', '', '2025-07-14 16:46:10');
INSERT INTO `gen_table_column` VALUES (84, 16, 'plat', '站台', 'int(255)', 'Integer', 'plat', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2025-07-14 16:44:06', '', '2025-07-14 16:46:10');
INSERT INTO `gen_table_column` VALUES (85, 16, 'state', '状态', 'int(255)', 'Integer', 'state', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2025-07-14 16:44:06', '', '2025-07-14 16:46:10');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for railway_plat_msg
-- ----------------------------
DROP TABLE IF EXISTS `railway_plat_msg`;
CREATE TABLE `railway_plat_msg`  (
  `plat_num` int(11) NOT NULL AUTO_INCREMENT COMMENT '站台编号',
  `train_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车次',
  `dep_station` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '始发站',
  `ter_station` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '终到站',
  `start_time` time NULL DEFAULT NULL COMMENT '发车时间',
  PRIMARY KEY (`plat_num`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '站台信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of railway_plat_msg
-- ----------------------------
INSERT INTO `railway_plat_msg` VALUES (1, 'G6079', '张家界西', '香港西九龙', '16:49:00');
INSERT INTO `railway_plat_msg` VALUES (10, 'D7465', '张家界西', '长沙', '16:30:00');
INSERT INTO `railway_plat_msg` VALUES (11, 'G22', '长沙', '长沙', '14:00:00');
INSERT INTO `railway_plat_msg` VALUES (12, '1', '1', '1', '16:16:26');

-- ----------------------------
-- Table structure for railway_state_ticket
-- ----------------------------
DROP TABLE IF EXISTS `railway_state_ticket`;
CREATE TABLE `railway_state_ticket`  (
  `railway_state_num` int(255) NOT NULL,
  `railway_state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`railway_state_num`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '列车状态-（检票状态，运行状态）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of railway_state_ticket
-- ----------------------------
INSERT INTO `railway_state_ticket` VALUES (-1, '停止检票');
INSERT INTO `railway_state_ticket` VALUES (0, '正在候车');
INSERT INTO `railway_state_ticket` VALUES (1, '正在检票');
INSERT INTO `railway_state_ticket` VALUES (2, '准备检票');
INSERT INTO `railway_state_ticket` VALUES (5, '早点');
INSERT INTO `railway_state_ticket` VALUES (6, '晚点');

-- ----------------------------
-- Table structure for railwaymap
-- ----------------------------
DROP TABLE IF EXISTS `railwaymap`;
CREATE TABLE `railwaymap`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `train_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车次',
  `dep_station` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '始发站',
  `dep_time` time NULL DEFAULT NULL COMMENT '发车时间',
  `way_station_01` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '途径站1',
  `way_dep_time_01` time NULL DEFAULT NULL COMMENT '途径发车时间',
  `way_station_02` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '途径站2',
  `way_dep_time_02` time NULL DEFAULT NULL COMMENT '途径发车时间',
  `way_station_03` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '途径站3',
  `way_dep_time_03` time NULL DEFAULT NULL COMMENT '途径发车时间',
  `ter_station` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '终点站',
  `ter_time` time NULL DEFAULT NULL COMMENT '终到时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '列车运行图' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of railwaymap
-- ----------------------------
INSERT INTO `railwaymap` VALUES (1, 'G2357', '重庆东', '13:27:00', '黔江', '13:50:00', '龙山北', '14:28:00', '桑植', '15:20:00', '张家界西', '15:27:00');

-- ----------------------------
-- Table structure for railwaymsg
-- ----------------------------
DROP TABLE IF EXISTS `railwaymsg`;
CREATE TABLE `railwaymsg`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `train_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车次',
  `dep_station` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '始发站',
  `ter_station` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '终到站',
  `start_time` time NULL DEFAULT NULL COMMENT '开车时间',
  `plat` int(255) NULL DEFAULT NULL COMMENT '站台',
  `state` int(255) NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '检票口列车信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of railwaymsg
-- ----------------------------
INSERT INTO `railwaymsg` VALUES (1, 'G5677', '张家界西', '长沙', '15:31:00', 13, 2);
INSERT INTO `railwaymsg` VALUES (2, 'D3973', '张家界西', '南宁东', '16:32:00', 5, 0);

-- ----------------------------
-- Table structure for railwaytoday
-- ----------------------------
DROP TABLE IF EXISTS `railwaytoday`;
CREATE TABLE `railwaytoday`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `train_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车次',
  `dep_station` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '始发站',
  `ter_station` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '终到站',
  `stop_tick_time` time NULL DEFAULT NULL COMMENT '停检时间',
  `start_time` time NULL DEFAULT NULL COMMENT '发车时间',
  `plat` int(11) NULL DEFAULT NULL COMMENT '站台',
  `ticket_num` int(255) NULL DEFAULT NULL COMMENT '检票口',
  `state` int(255) NULL DEFAULT NULL COMMENT '列车状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '今日车次大屏' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of railwaytoday
-- ----------------------------
INSERT INTO `railwaytoday` VALUES (1, 'G687', '张家界西', '北京西', '10:20:00', '10:27:00', 4, 1, -1);
INSERT INTO `railwaytoday` VALUES (2, 'D7455', '张家界西', '长沙', '11:30:00', '11:35:00', 9, 2, 1);
INSERT INTO `railwaytoday` VALUES (3, 'G2356', '张家界西', '重庆北', '12:31:00', '12:36:00', 13, 2, 0);
INSERT INTO `railwaytoday` VALUES (4, 'G4796', '重庆东', '长沙', '19:08:00', '19:13:00', 12, 2, 0);
INSERT INTO `railwaytoday` VALUES (5, 'G2357', '重庆东', '张家界西', '12:09:00', '12:14:00', 11, 2, 0);
INSERT INTO `railwaytoday` VALUES (6, 'G1374', '张家界西', '上海虹桥', '08:20:00', '08:25:00', 4, 1, 0);
INSERT INTO `railwaytoday` VALUES (7, 'G477', '成都东', '张家界西', '14:11:00', '14:16:00', 10, 2, 0);
INSERT INTO `railwaytoday` VALUES (8, '1', '1', '1', '18:46:00', '18:44:00', 1, 1, -1);

-- ----------------------------
-- Table structure for station
-- ----------------------------
DROP TABLE IF EXISTS `station`;
CREATE TABLE `station`  (
  `station_num` int(255) NOT NULL AUTO_INCREMENT COMMENT '车站编号',
  `station_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车站名称',
  `s_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车站缩写',
  `station_garde_num` int(255) NULL DEFAULT NULL COMMENT '车站等级（0-2: 特，一，二）',
  PRIMARY KEY (`station_num`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '车站信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of station
-- ----------------------------
INSERT INTO `station` VALUES (1, '张家界西', 'JXA', 0);
INSERT INTO `station` VALUES (2, '长沙', 'CSQ', 1);
INSERT INTO `station` VALUES (3, '深圳北', 'IOQ', 0);
INSERT INTO `station` VALUES (4, '广州南', 'IZQ', 0);
INSERT INTO `station` VALUES (5, '株洲西', 'ZAQ', 2);
INSERT INTO `station` VALUES (6, '福田', 'NZQ', 1);
INSERT INTO `station` VALUES (7, '西九龙', 'XJA', 0);
INSERT INTO `station` VALUES (8, '衡阳东', 'HVQ', 2);

-- ----------------------------
-- Table structure for station_device
-- ----------------------------
DROP TABLE IF EXISTS `station_device`;
CREATE TABLE `station_device`  (
  `device_id` int(255) NOT NULL AUTO_INCREMENT COMMENT '设备ID',
  `device_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备名称',
  `device_type` int(255) NULL DEFAULT NULL COMMENT '设备分类',
  `brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌',
  `model` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '型号',
  `station_num` int(255) NULL DEFAULT NULL COMMENT '车站编号',
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '具体地点',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `install_date` date NULL DEFAULT NULL COMMENT '安装日期',
  `last_maintenance_date` date NULL DEFAULT NULL COMMENT '最后一次维修时间',
  `next_maintenance_date` date NULL DEFAULT NULL COMMENT '计划下一次维修时间',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`device_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '车站设备' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of station_device
-- ----------------------------
INSERT INTO `station_device` VALUES (1, '17A检票口1号闸机', 1, 'xxxx', 'TD122311', 1, '张家界西17A检票口处', '运行正常', '2020-07-13', '2025-07-16', '2025-07-31', '2025-07-11 10:08:25', '2025-07-14 14:21:58');
INSERT INTO `station_device` VALUES (2, '候车大厅3夹层商户1a空调', 3, 'xxxx', 'TW324B12', 2, '长沙站候车大厅3楼1a商户', '运行正常', '2024-02-14', '2025-03-11', '2025-09-10', '2025-07-14 14:24:04', '2025-07-14 14:50:18');

-- ----------------------------
-- Table structure for station_device_maintenance
-- ----------------------------
DROP TABLE IF EXISTS `station_device_maintenance`;
CREATE TABLE `station_device_maintenance`  (
  `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `device_id` int(11) NULL DEFAULT NULL COMMENT '设备id',
  `maintenance_date` datetime NULL DEFAULT NULL COMMENT '维护时间',
  `maintenance_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '维护类型',
  `operator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作人员',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '故障原因',
  `result` int(11) NULL DEFAULT NULL COMMENT '处理结果（成/失/跟进）',
  `attachment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '现场照片',
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '车站设备维护' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of station_device_maintenance
-- ----------------------------
INSERT INTO `station_device_maintenance` VALUES (1, 1, '2025-07-16 03:00:00', '更换故障零件', '1', '日常保养', 3, '/profile/upload/2025/07/11/CR200J-J_20250711110822A002.png');
INSERT INTO `station_device_maintenance` VALUES (2, 2, '2025-07-15 01:00:00', '日常保养', '李四', '日常保养', 1, '/profile/upload/2025/07/11/CR300AF_20250711112953A001.png');
INSERT INTO `station_device_maintenance` VALUES (3, 3, '2025-07-16 03:32:00', '报障维修', '张三', '核心零件损坏', 2, '/profile/upload/2025/07/14/CR400BF-C-5162_20250714144830A001.png');
INSERT INTO `station_device_maintenance` VALUES (4, NULL, '2025-07-23 02:16:00', '日常保养', '王五', '日常保养', 1, '/profile/upload/2025/07/21/KCIC400AF-CIT_20250721112910A002.png');

-- ----------------------------
-- Table structure for station_device_result
-- ----------------------------
DROP TABLE IF EXISTS `station_device_result`;
CREATE TABLE `station_device_result`  (
  `station_device_result_id` int(11) NOT NULL,
  `station_device_result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`station_device_result_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '车站设备维修处理状态' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of station_device_result
-- ----------------------------
INSERT INTO `station_device_result` VALUES (1, '成功');
INSERT INTO `station_device_result` VALUES (2, '失败');
INSERT INTO `station_device_result` VALUES (3, '待跟进');

-- ----------------------------
-- Table structure for station_device_type
-- ----------------------------
DROP TABLE IF EXISTS `station_device_type`;
CREATE TABLE `station_device_type`  (
  `station_device_id` int(255) NOT NULL,
  `station_device_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`station_device_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '设备类型字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of station_device_type
-- ----------------------------
INSERT INTO `station_device_type` VALUES (1, '检票闸机');
INSERT INTO `station_device_type` VALUES (2, '安检仪');
INSERT INTO `station_device_type` VALUES (3, '空调');
INSERT INTO `station_device_type` VALUES (4, '票务机');
INSERT INTO `station_device_type` VALUES (5, '消防设备');
INSERT INTO `station_device_type` VALUES (6, '电梯');
INSERT INTO `station_device_type` VALUES (7, '照明设备');

-- ----------------------------
-- Table structure for station_garde
-- ----------------------------
DROP TABLE IF EXISTS `station_garde`;
CREATE TABLE `station_garde`  (
  `station_garde_num` int(255) NOT NULL,
  `station_garde` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`station_garde_num`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '车站等级' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of station_garde
-- ----------------------------
INSERT INTO `station_garde` VALUES (0, '特等站');
INSERT INTO `station_garde` VALUES (1, '一等站');
INSERT INTO `station_garde` VALUES (2, '二等站');
INSERT INTO `station_garde` VALUES (3, '三等站');

-- ----------------------------
-- Table structure for station_msg
-- ----------------------------
DROP TABLE IF EXISTS `station_msg`;
CREATE TABLE `station_msg`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `station_num` int(255) NULL DEFAULT NULL COMMENT '车站编号',
  `send_peop` int(255) NULL DEFAULT NULL COMMENT '发送人数',
  `arrive_peop` int(255) NULL DEFAULT NULL COMMENT '到达人数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '车站发送人数' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of station_msg
-- ----------------------------
INSERT INTO `station_msg` VALUES (1, 1, 15000, 32578);
INSERT INTO `station_msg` VALUES (2, 2, 14500, 20000);
INSERT INTO `station_msg` VALUES (3, 3, 22500, 21000);
INSERT INTO `station_msg` VALUES (4, 4, 23032, 20242);
INSERT INTO `station_msg` VALUES (5, 5, 9810, 9021);
INSERT INTO `station_msg` VALUES (6, 6, 8957, 8849);
INSERT INTO `station_msg` VALUES (7, 7, 22495, 21485);

-- ----------------------------
-- Table structure for station_train_peo
-- ----------------------------
DROP TABLE IF EXISTS `station_train_peo`;
CREATE TABLE `station_train_peo`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `train_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车次',
  `t_tp` int(255) NULL DEFAULT NULL COMMENT '上车人数',
  `d_tp` int(255) NULL DEFAULT NULL COMMENT '下车人数',
  `station_num` int(255) NULL DEFAULT NULL COMMENT '车站编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '车站今日列车客流信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of station_train_peo
-- ----------------------------
INSERT INTO `station_train_peo` VALUES (1, 'G2356', 944, 0, 1);
INSERT INTO `station_train_peo` VALUES (2, 'C7766', 0, 545, 1);
INSERT INTO `station_train_peo` VALUES (3, 'G2377', 543, 253, 1);
INSERT INTO `station_train_peo` VALUES (4, 'G7765', 453, 325, 1);
INSERT INTO `station_train_peo` VALUES (5, 'G7655', 452, 332, 1);
INSERT INTO `station_train_peo` VALUES (6, 'G474', 436, 352, 1);
INSERT INTO `station_train_peo` VALUES (7, 'G4614', 436, 224, 1);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2025-06-30 16:39:44', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2025-06-30 16:39:44', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2025-06-30 16:39:44', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2025-06-30 16:39:44', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'true', 'Y', 'admin', '2025-06-30 16:39:44', 'admin', '2025-06-30 17:40:05', '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2025-06-30 16:39:44', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');
INSERT INTO `sys_config` VALUES (7, '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '1', 'Y', 'admin', '2025-06-30 16:39:44', '', NULL, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (8, '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2025-06-30 16:39:44', '', NULL, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '湖南铁路集团', 0, 'admin', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-06-30 16:39:44', 'admin', '2025-06-30 18:21:05');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '张家界总公司', 1, 'admin', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-06-30 16:39:44', 'admin', '2025-06-30 18:21:26');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, 'damin', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-06-30 16:39:44', 'admin', '2025-06-30 18:21:41');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-06-30 16:39:44', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '监管部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-06-30 16:39:44', 'admin', '2025-06-30 18:22:07');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-06-30 16:39:44', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-06-30 16:39:44', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-06-30 16:39:44', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '电务部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-06-30 16:39:44', 'admin', '2025-06-30 18:22:25');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '运维部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-06-30 16:39:44', 'admin', '2025-06-30 18:22:38');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (30, 1, '特等站', '0', 'train_station_grade', NULL, 'default', 'N', '0', 'admin', '2025-07-08 15:33:15', 'admin', '2025-07-08 15:45:37', '特等站');
INSERT INTO `sys_dict_data` VALUES (31, 2, '一等站', '1', 'train_station_grade', NULL, 'default', 'N', '0', 'admin', '2025-07-08 15:34:37', 'admin', '2025-07-08 15:45:40', '一等站');
INSERT INTO `sys_dict_data` VALUES (32, 3, '二等站', '2', 'train_station_grade', NULL, 'default', 'N', '0', 'admin', '2025-07-08 15:35:03', 'admin', '2025-07-08 15:45:44', '二等站');
INSERT INTO `sys_dict_data` VALUES (33, 1, '正在候车', '0', 'railway_state', NULL, 'default', 'N', '0', 'admin', '2025-07-08 15:43:32', 'admin', '2025-07-08 15:45:55', '正在候车');
INSERT INTO `sys_dict_data` VALUES (34, 3, '停止检票', '-1', 'railway_state', NULL, 'default', 'N', '0', 'admin', '2025-07-08 15:43:58', 'admin', '2025-07-08 15:46:02', '停止检票');
INSERT INTO `sys_dict_data` VALUES (35, 2, '正在检票', '1', 'railway_state', NULL, 'default', 'N', '0', 'admin', '2025-07-08 15:44:28', 'admin', '2025-07-08 15:45:58', '正在检票');
INSERT INTO `sys_dict_data` VALUES (36, 4, '准备检票', '2', 'railway_state', NULL, 'default', 'N', '0', 'admin', '2025-07-08 15:44:50', 'admin', '2025-07-08 15:46:06', '准备检票');
INSERT INTO `sys_dict_data` VALUES (37, 4, '三等站', '3', 'train_station_grade', NULL, 'default', 'N', '0', 'admin', '2025-07-09 14:50:56', 'admin', '2025-07-09 14:51:02', '三等站');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (11, '车站等级', 'train_station_grade', '0', 'admin', '2025-07-08 15:28:08', 'admin', '2025-07-08 15:40:52', '车站信息等级');
INSERT INTO `sys_dict_type` VALUES (12, '列车状态', 'railway_state', '0', 'admin', '2025-07-08 15:40:34', 'admin', '2025-07-08 15:41:13', '站厅列车状态');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2025-06-30 16:39:44', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status`) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 239 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-06-30 17:29:03');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-06-30 17:42:36');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-06-30 17:43:02');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-06-30 17:45:50');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-06-30 17:46:02');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-06-30 18:26:54');
INSERT INTO `sys_logininfor` VALUES (106, '11', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '注册成功', '2025-06-30 18:27:11');
INSERT INTO `sys_logininfor` VALUES (107, '11', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-06-30 18:27:19');
INSERT INTO `sys_logininfor` VALUES (108, '11', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-06-30 18:27:27');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-06-30 18:27:31');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-06-30 18:28:52');
INSERT INTO `sys_logininfor` VALUES (111, '11', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2025-06-30 18:29:02');
INSERT INTO `sys_logininfor` VALUES (112, '11', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-06-30 18:29:07');
INSERT INTO `sys_logininfor` VALUES (113, '11', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-06-30 18:29:47');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-06-30 18:29:52');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-01 09:31:15');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-01 10:28:05');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-01 11:32:40');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-01 11:33:19');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-01 14:23:26');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2025-07-01 16:29:37');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-01 16:29:42');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-01 16:36:56');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-02 14:46:34');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-02 15:26:58');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-02 15:27:11');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-02 15:27:21');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-02 15:27:26');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-02 19:08:40');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-03 09:28:32');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2025-07-03 14:25:04');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-03 14:25:09');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-03 18:54:47');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-04 09:09:46');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-04 10:37:46');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-04 15:55:52');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-04 19:16:20');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-04 19:17:25');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-04 19:17:58');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2025-07-07 09:07:22');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-07 09:07:26');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-07 14:04:18');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2025-07-07 18:50:55');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-07 18:50:59');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-08 10:43:42');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-08 11:38:55');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-08 14:20:37');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-08 14:25:47');
INSERT INTO `sys_logininfor` VALUES (148, '11', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2025-07-08 14:28:02');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-08 14:28:12');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-08 15:24:35');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-08 17:38:23');
INSERT INTO `sys_logininfor` VALUES (152, '11', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-08 17:38:32');
INSERT INTO `sys_logininfor` VALUES (153, '11', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-08 17:38:52');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-08 17:38:59');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-08 17:41:15');
INSERT INTO `sys_logininfor` VALUES (156, '11', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-08 17:41:23');
INSERT INTO `sys_logininfor` VALUES (157, '11', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-08 17:43:24');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-08 17:43:29');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-08 17:54:17');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-08 17:54:21');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-08 17:55:56');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-08 17:56:02');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-08 17:59:51');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-08 17:59:56');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-08 18:06:04');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-08 18:06:10');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-08 18:12:03');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-08 18:12:08');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-08 18:27:22');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-08 18:39:26');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-08 18:39:32');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-08 18:40:55');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-08 18:44:35');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-08 18:44:39');
INSERT INTO `sys_logininfor` VALUES (175, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-08 18:44:53');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-08 18:45:17');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-08 18:45:21');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-08 18:58:23');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-08 18:58:39');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-08 19:14:20');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-08 19:14:24');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-08 19:16:00');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-08 19:16:06');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-08 19:16:14');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-08 19:16:22');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-08 19:17:05');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-08 19:17:11');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-08 19:25:53');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-08 19:26:02');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-08 19:26:14');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-09 10:53:43');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-09 11:18:15');
INSERT INTO `sys_logininfor` VALUES (193, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-09 11:18:20');
INSERT INTO `sys_logininfor` VALUES (194, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-09 11:47:49');
INSERT INTO `sys_logininfor` VALUES (195, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-09 11:47:55');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-09 14:04:47');
INSERT INTO `sys_logininfor` VALUES (197, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2025-07-09 18:44:06');
INSERT INTO `sys_logininfor` VALUES (198, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-09 18:44:10');
INSERT INTO `sys_logininfor` VALUES (199, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-09 18:55:04');
INSERT INTO `sys_logininfor` VALUES (200, '11', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-09 18:55:14');
INSERT INTO `sys_logininfor` VALUES (201, '11', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-09 18:55:25');
INSERT INTO `sys_logininfor` VALUES (202, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-09 18:55:29');
INSERT INTO `sys_logininfor` VALUES (203, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-10 09:43:54');
INSERT INTO `sys_logininfor` VALUES (204, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-10 14:05:59');
INSERT INTO `sys_logininfor` VALUES (205, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-10 15:39:05');
INSERT INTO `sys_logininfor` VALUES (206, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-10 16:53:43');
INSERT INTO `sys_logininfor` VALUES (207, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-10 18:32:46');
INSERT INTO `sys_logininfor` VALUES (208, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-10 19:44:17');
INSERT INTO `sys_logininfor` VALUES (209, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-11 09:16:27');
INSERT INTO `sys_logininfor` VALUES (210, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-11 13:14:05');
INSERT INTO `sys_logininfor` VALUES (211, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-11 16:20:23');
INSERT INTO `sys_logininfor` VALUES (212, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-14 09:16:44');
INSERT INTO `sys_logininfor` VALUES (213, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-14 10:25:30');
INSERT INTO `sys_logininfor` VALUES (214, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-14 16:43:49');
INSERT INTO `sys_logininfor` VALUES (215, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-14 17:24:37');
INSERT INTO `sys_logininfor` VALUES (216, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-15 09:40:53');
INSERT INTO `sys_logininfor` VALUES (217, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-15 14:06:07');
INSERT INTO `sys_logininfor` VALUES (218, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-16 09:23:48');
INSERT INTO `sys_logininfor` VALUES (219, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-21 10:54:53');
INSERT INTO `sys_logininfor` VALUES (220, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-21 11:00:10');
INSERT INTO `sys_logininfor` VALUES (221, '11', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2025-07-21 11:00:17');
INSERT INTO `sys_logininfor` VALUES (222, '11', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2025-07-21 11:00:25');
INSERT INTO `sys_logininfor` VALUES (223, '11', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2025-07-21 11:00:33');
INSERT INTO `sys_logininfor` VALUES (224, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2025-07-21 11:00:38');
INSERT INTO `sys_logininfor` VALUES (225, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-21 11:00:43');
INSERT INTO `sys_logininfor` VALUES (226, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-21 11:01:08');
INSERT INTO `sys_logininfor` VALUES (227, '11', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-21 11:01:15');
INSERT INTO `sys_logininfor` VALUES (228, '11', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-21 11:02:34');
INSERT INTO `sys_logininfor` VALUES (229, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2025-07-21 11:02:38');
INSERT INTO `sys_logininfor` VALUES (230, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-21 11:02:41');
INSERT INTO `sys_logininfor` VALUES (231, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-21 11:23:02');
INSERT INTO `sys_logininfor` VALUES (232, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-21 11:23:07');
INSERT INTO `sys_logininfor` VALUES (233, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-21 11:29:25');
INSERT INTO `sys_logininfor` VALUES (234, '11', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-21 11:29:32');
INSERT INTO `sys_logininfor` VALUES (235, '11', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-21 11:31:36');
INSERT INTO `sys_logininfor` VALUES (236, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-21 11:31:41');
INSERT INTO `sys_logininfor` VALUES (237, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-07-21 11:32:20');
INSERT INTO `sys_logininfor` VALUES (238, '11', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-07-21 11:32:26');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `route_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由名称',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1126 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2025-06-30 16:39:44', 'admin', '2025-07-08 14:22:20', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2025-06-30 16:39:44', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2025-06-30 16:39:44', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2025-06-30 16:39:44', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2025-06-30 16:39:44', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2025-06-30 16:39:44', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2025-06-30 16:39:44', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2025-06-30 16:39:44', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2025-06-30 16:39:44', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2025-06-30 16:39:44', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2025-06-30 16:39:44', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2025-06-30 16:39:44', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2025-06-30 16:39:44', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2025-06-30 16:39:44', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2025-06-30 16:39:44', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2025-06-30 16:39:44', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2025-06-30 16:39:44', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2025-06-30 16:39:44', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2025-06-30 16:39:44', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2025-06-30 16:39:44', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2025-06-30 16:39:44', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2025-06-30 16:39:44', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2025-06-30 16:39:44', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1061, '车站管理', 0, 1, 'stationmand', NULL, NULL, '', 1, 0, 'M', '0', '0', '', '厦门站', 'admin', '2025-07-08 15:49:29', 'admin', '2025-07-08 17:36:40', '');
INSERT INTO `sys_menu` VALUES (1062, '列车管理', 0, 2, 'railwaymand', NULL, NULL, '', 1, 0, 'M', '0', '0', '', '成都东站', 'admin', '2025-07-08 17:34:29', 'admin', '2025-07-09 14:33:59', '');
INSERT INTO `sys_menu` VALUES (1063, '设备管理', 0, 3, 'devicemand', NULL, NULL, '', 1, 0, 'M', '0', '0', NULL, '昆明南站', 'admin', '2025-07-08 17:36:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1064, '车站信息管理', 1061, 1, 'station', 'stationman/station/index', NULL, '', 1, 0, 'C', '0', '0', 'stationman:station:list', '#', 'admin', '2025-07-09 14:14:48', 'admin', '2025-07-10 17:49:24', '车站信息管理菜单');
INSERT INTO `sys_menu` VALUES (1065, '车站信息管理查询', 1064, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'stationman:station:query', '#', 'admin', '2025-07-09 14:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1066, '车站信息管理新增', 1064, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'stationman:station:add', '#', 'admin', '2025-07-09 14:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1067, '车站信息管理修改', 1064, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'stationman:station:edit', '#', 'admin', '2025-07-09 14:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1068, '车站信息管理删除', 1064, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'stationman:station:remove', '#', 'admin', '2025-07-09 14:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1069, '车站信息管理导出', 1064, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'stationman:station:export', '#', 'admin', '2025-07-09 14:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1070, '站台信息', 1061, 1, 'rplatmsg', 'rplatmsg/rplatmsg/index', NULL, '', 1, 0, 'C', '0', '0', 'rplatmsg:rplatmsg:list', '#', 'admin', '2025-07-09 15:10:27', '', NULL, '站台信息菜单');
INSERT INTO `sys_menu` VALUES (1071, '站台信息查询', 1070, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'rplatmsg:rplatmsg:query', '#', 'admin', '2025-07-09 15:10:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1072, '站台信息新增', 1070, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'rplatmsg:rplatmsg:add', '#', 'admin', '2025-07-09 15:10:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1073, '站台信息修改', 1070, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'rplatmsg:rplatmsg:edit', '#', 'admin', '2025-07-09 15:10:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1074, '站台信息删除', 1070, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'rplatmsg:rplatmsg:remove', '#', 'admin', '2025-07-09 15:10:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1075, '站台信息导出', 1070, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'rplatmsg:rplatmsg:export', '#', 'admin', '2025-07-09 15:10:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1076, '数据大屏', 0, 5, 'display', NULL, NULL, '', 1, 0, 'C', '0', '0', 'system:user:list', '重庆西站', 'admin', '2025-07-09 18:49:58', 'admin', '2025-07-10 11:11:45', '');
INSERT INTO `sys_menu` VALUES (1077, '今日车次', 0, 4, 'iot', NULL, NULL, '', 1, 0, 'M', '0', '0', '', '天津南站', 'admin', '2025-07-10 11:11:38', 'admin', '2025-07-10 18:58:04', '');
INSERT INTO `sys_menu` VALUES (1084, '车站发送人数', 1061, 1, 'stationmsg', 'stationman/stationmsg/index', NULL, '', 1, 0, 'C', '0', '0', 'stationman:stationmsg:list', '#', 'admin', '2025-07-10 14:46:31', '', NULL, '车站发送人数菜单');
INSERT INTO `sys_menu` VALUES (1085, '车站发送人数查询', 1084, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'stationman:stationmsg:query', '#', 'admin', '2025-07-10 14:46:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1086, '车站发送人数新增', 1084, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'stationman:stationmsg:add', '#', 'admin', '2025-07-10 14:46:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1087, '车站发送人数修改', 1084, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'stationman:stationmsg:edit', '#', 'admin', '2025-07-10 14:46:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1088, '车站发送人数删除', 1084, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'stationman:stationmsg:remove', '#', 'admin', '2025-07-10 14:46:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1089, '车站发送人数导出', 1084, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'stationman:stationmsg:export', '#', 'admin', '2025-07-10 14:46:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1090, '今日车次大屏', 1077, 1, 'railwaytoday', 'railwaytoday/railwaytoday/index', NULL, '', 1, 0, 'C', '0', '0', 'railwaytoday:railwaytoday:list', '#', 'admin', '2025-07-10 18:49:15', '', NULL, '今日车次大屏菜单');
INSERT INTO `sys_menu` VALUES (1091, '今日车次大屏查询', 1090, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'railwaytoday:railwaytoday:query', '#', 'admin', '2025-07-10 18:49:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1092, '今日车次大屏新增', 1090, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'railwaytoday:railwaytoday:add', '#', 'admin', '2025-07-10 18:49:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1093, '今日车次大屏修改', 1090, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'railwaytoday:railwaytoday:edit', '#', 'admin', '2025-07-10 18:49:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1094, '今日车次大屏删除', 1090, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'railwaytoday:railwaytoday:remove', '#', 'admin', '2025-07-10 18:49:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1095, '今日车次大屏导出', 1090, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'railwaytoday:railwaytoday:export', '#', 'admin', '2025-07-10 18:49:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1096, '车站设备', 1063, 1, 'device', 'device/device/index', NULL, '', 1, 0, 'C', '0', '0', 'device:device:list', '#', 'admin', '2025-07-11 09:30:58', '', NULL, '车站设备菜单');
INSERT INTO `sys_menu` VALUES (1097, '车站设备查询', 1096, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'device:device:query', '#', 'admin', '2025-07-11 09:30:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1098, '车站设备新增', 1096, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'device:device:add', '#', 'admin', '2025-07-11 09:30:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1099, '车站设备修改', 1096, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'device:device:edit', '#', 'admin', '2025-07-11 09:30:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1100, '车站设备删除', 1096, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'device:device:remove', '#', 'admin', '2025-07-11 09:30:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1101, '车站设备导出', 1096, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'device:device:export', '#', 'admin', '2025-07-11 09:30:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1102, '车站设备维护', 1063, 1, 'maintenance', 'maintenance/maintenance/index', NULL, '', 1, 0, 'C', '0', '0', 'maintenance:maintenance:list', '#', 'admin', '2025-07-11 09:31:09', '', NULL, '车站设备维护菜单');
INSERT INTO `sys_menu` VALUES (1103, '车站设备维护查询', 1102, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'maintenance:maintenance:query', '#', 'admin', '2025-07-11 09:31:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1104, '车站设备维护新增', 1102, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'maintenance:maintenance:add', '#', 'admin', '2025-07-11 09:31:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1105, '车站设备维护修改', 1102, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'maintenance:maintenance:edit', '#', 'admin', '2025-07-11 09:31:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1106, '车站设备维护删除', 1102, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'maintenance:maintenance:remove', '#', 'admin', '2025-07-11 09:31:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1107, '车站设备维护导出', 1102, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'maintenance:maintenance:export', '#', 'admin', '2025-07-11 09:31:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1108, '列车运行图', 1062, 1, 'railwaymap', 'railway/railwaymap/index', NULL, '', 1, 0, 'C', '0', '0', 'railway:railwaymap:list', '#', 'admin', '2025-07-11 13:16:26', '', NULL, '列车运行图菜单');
INSERT INTO `sys_menu` VALUES (1109, '列车运行图查询', 1108, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'railway:railwaymap:query', '#', 'admin', '2025-07-11 13:16:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1110, '列车运行图新增', 1108, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'railway:railwaymap:add', '#', 'admin', '2025-07-11 13:16:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1111, '列车运行图修改', 1108, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'railway:railwaymap:edit', '#', 'admin', '2025-07-11 13:16:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1112, '列车运行图删除', 1108, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'railway:railwaymap:remove', '#', 'admin', '2025-07-11 13:16:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1113, '列车运行图导出', 1108, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'railway:railwaymap:export', '#', 'admin', '2025-07-11 13:16:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1114, '今日列车客流', 1062, 1, 'peo', 'peo/peo/index', NULL, '', 1, 0, 'C', '0', '0', 'peo:peo:list', '#', 'admin', '2025-07-14 10:39:32', 'admin', '2025-07-14 13:13:47', '车站今日列车客流信息菜单');
INSERT INTO `sys_menu` VALUES (1115, '车站今日列车客流信息查询', 1114, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'peo:peo:query', '#', 'admin', '2025-07-14 10:39:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1116, '车站今日列车客流信息新增', 1114, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'peo:peo:add', '#', 'admin', '2025-07-14 10:39:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1117, '车站今日列车客流信息修改', 1114, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'peo:peo:edit', '#', 'admin', '2025-07-14 10:39:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1118, '车站今日列车客流信息删除', 1114, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'peo:peo:remove', '#', 'admin', '2025-07-14 10:39:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1119, '车站今日列车客流信息导出', 1114, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'peo:peo:export', '#', 'admin', '2025-07-14 10:39:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1120, '检票口列车信息', 1061, 1, 'railwayplatmsg', 'railwayplatmsg/railwayplatmsg/index', NULL, '', 1, 0, 'C', '0', '0', 'railwayplatmsg:railwayplatmsg:list', '#', 'admin', '2025-07-14 16:50:59', '', NULL, '检票口列车信息菜单');
INSERT INTO `sys_menu` VALUES (1121, '检票口列车信息查询', 1120, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'railwayplatmsg:railwayplatmsg:query', '#', 'admin', '2025-07-14 16:50:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1122, '检票口列车信息新增', 1120, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'railwayplatmsg:railwayplatmsg:add', '#', 'admin', '2025-07-14 16:50:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1123, '检票口列车信息修改', 1120, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'railwayplatmsg:railwayplatmsg:edit', '#', 'admin', '2025-07-14 16:50:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1124, '检票口列车信息删除', 1120, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'railwayplatmsg:railwayplatmsg:remove', '#', 'admin', '2025-07-14 16:50:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1125, '检票口列车信息导出', 1120, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'railwayplatmsg:railwayplatmsg:export', '#', 'admin', '2025-07-14 16:50:59', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (10, '今年第三季度调图', '1', 0x3C703EE58897E8BDA6E8BF90E8A18CE59BBEE5B086E4BA8E323032352E372E31E8BF9BE8A18CE4BB8AE5B9B4E7ACACE4B889E5ADA3E5BAA6E8B083E59BBEE8AFB7E59084E58D95E4BD8DE8AEA4E79C9FE99885E8AFBBE8B083E59BBEE69687E4BBB63C2F703E, '0', 'admin', '2025-06-30 18:26:41', 'admin', '2025-06-30 18:27:47', NULL);
INSERT INTO `sys_notice` VALUES (11, '11', '1', 0x3C703E313131313C2F703E, '0', 'admin', '2025-07-01 10:40:01', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type`) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status`) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 352 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '参数管理', 2, 'com.rdisplay.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/config', '127.0.0.1', '内网IP', '{\"configId\":5,\"configKey\":\"sys.account.registerUser\",\"configName\":\"账号自助-是否开启用户注册功能\",\"configType\":\"Y\",\"configValue\":\"true\",\"createBy\":\"admin\",\"createTime\":\"2025-06-30 16:39:44\",\"params\":{},\"remark\":\"是否开启注册用户功能（true开启，false关闭）\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-06-30 17:40:05', 28);
INSERT INTO `sys_oper_log` VALUES (101, '个人信息', 2, 'com.rdisplay.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', '研发部门', '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":false,\"email\":\"ry@163.com\",\"nickName\":\"admin\",\"params\":{},\"phonenumber\":\"15888888888\",\"sex\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-06-30 17:52:53', 15);
INSERT INTO `sys_oper_log` VALUES (102, '个人信息', 2, 'com.rdisplay.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', '研发部门', '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":false,\"email\":\"ry@163.com\",\"nickName\":\"ruoyi\",\"params\":{},\"phonenumber\":\"15888888888\",\"sex\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-06-30 17:53:13', 11);
INSERT INTO `sys_oper_log` VALUES (103, '个人信息', 2, 'com.rdisplay.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', '研发部门', '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":false,\"email\":\"ry@163.com\",\"nickName\":\"admin\",\"params\":{},\"phonenumber\":\"15888888888\",\"sex\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-06-30 17:53:39', 11);
INSERT INTO `sys_oper_log` VALUES (104, '部门管理', 2, 'com.rdisplay.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"湖南铁路集团\",\"email\":\"ry@qq.com\",\"leader\":\"admin\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-06-30 18:21:05', 29);
INSERT INTO `sys_oper_log` VALUES (105, '部门管理', 2, 'com.rdisplay.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":101,\"deptName\":\"张家界总公司\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"parentName\":\"湖南铁路集团\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-06-30 18:21:19', 39);
INSERT INTO `sys_oper_log` VALUES (106, '部门管理', 2, 'com.rdisplay.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":101,\"deptName\":\"张家界总公司\",\"email\":\"ry@qq.com\",\"leader\":\"admin\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"parentName\":\"湖南铁路集团\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-06-30 18:21:26', 18);
INSERT INTO `sys_oper_log` VALUES (107, '部门管理', 2, 'com.rdisplay.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":102,\"deptName\":\"长沙分公司\",\"email\":\"ry@qq.com\",\"leader\":\"damin\",\"orderNum\":2,\"params\":{},\"parentId\":100,\"parentName\":\"湖南铁路集团\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-06-30 18:21:41', 23);
INSERT INTO `sys_oper_log` VALUES (108, '部门管理', 2, 'com.rdisplay.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":104,\"deptName\":\"监管部门\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":101,\"parentName\":\"张家界总公司\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-06-30 18:22:07', 15);
INSERT INTO `sys_oper_log` VALUES (109, '部门管理', 2, 'com.rdisplay.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,102\",\"children\":[],\"deptId\":108,\"deptName\":\"电务部门\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{},\"parentId\":102,\"parentName\":\"长沙分公司\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-06-30 18:22:25', 13);
INSERT INTO `sys_oper_log` VALUES (110, '部门管理', 2, 'com.rdisplay.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,102\",\"children\":[],\"deptId\":109,\"deptName\":\"运维部门\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":102,\"parentName\":\"长沙分公司\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-06-30 18:22:38', 15);
INSERT INTO `sys_oper_log` VALUES (111, '通知公告', 1, 'com.rdisplay.web.controller.system.SysNoticeController.add()', 'POST', 1, 'admin', '研发部门', '/system/notice', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"noticeContent\":\"<p>列车运行图将于2025.7.1进行今年第三季度调图请各单位认真阅读调图文件</p>\",\"noticeTitle\":\"今年第三季度调图\",\"noticeType\":\"2\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-06-30 18:26:41', 23);
INSERT INTO `sys_oper_log` VALUES (112, '通知公告', 2, 'com.rdisplay.web.controller.system.SysNoticeController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/notice', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2025-06-30 18:26:41\",\"noticeContent\":\"<p>列车运行图将于2025.7.1进行今年第三季度调图请各单位认真阅读调图文件</p>\",\"noticeId\":10,\"noticeTitle\":\"今年第三季度调图\",\"noticeType\":\"1\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-06-30 18:27:47', 7);
INSERT INTO `sys_oper_log` VALUES (113, '用户管理', 2, 'com.rdisplay.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"\",\"createTime\":\"2025-06-30 18:27:11\",\"delFlag\":\"0\",\"deptId\":104,\"email\":\"\",\"loginDate\":\"2025-06-30 18:27:20\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"11\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[2],\"pwdUpdateDate\":\"2025-06-30 18:27:12\",\"roleIds\":[2],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":100,\"userName\":\"11\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-06-30 18:28:25', 108);
INSERT INTO `sys_oper_log` VALUES (114, '通知公告', 1, 'com.rdisplay.web.controller.system.SysNoticeController.add()', 'POST', 1, 'admin', '研发部门', '/system/notice', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"noticeContent\":\"<p>1111</p>\",\"noticeTitle\":\"11\",\"noticeType\":\"1\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-01 10:40:01', 15);
INSERT INTO `sys_oper_log` VALUES (115, '菜单管理', 2, 'com.rdisplay.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-06-30 16:39:44\",\"icon\":\"CR200J-J\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1,\"menuName\":\"系统管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"system\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-01 16:37:33', 78);
INSERT INTO `sys_oper_log` VALUES (116, '菜单管理', 2, 'com.rdisplay.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-06-30 16:39:44\",\"icon\":\"system\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1,\"menuName\":\"系统管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"system\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-01 16:38:11', 8);
INSERT INTO `sys_oper_log` VALUES (117, '菜单管理', 2, 'com.rdisplay.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-06-30 16:39:44\",\"icon\":\"CR200J-J\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1,\"menuName\":\"系统管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"system\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-01 16:39:03', 10);
INSERT INTO `sys_oper_log` VALUES (118, '菜单管理', 2, 'com.rdisplay.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-06-30 16:39:44\",\"icon\":\"system\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1,\"menuName\":\"系统管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"system\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-01 16:41:07', 8);
INSERT INTO `sys_oper_log` VALUES (119, '菜单管理', 2, 'com.rdisplay.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-06-30 16:39:44\",\"icon\":\"厦门站\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1,\"menuName\":\"系统管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"system\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 14:21:00', 87);
INSERT INTO `sys_oper_log` VALUES (120, '菜单管理', 2, 'com.rdisplay.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-06-30 16:39:44\",\"icon\":\"system\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1,\"menuName\":\"系统管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"system\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 14:22:20', 10);
INSERT INTO `sys_oper_log` VALUES (121, '代码生成', 6, 'com.rdisplay.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"train\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 15:24:49', 114);
INSERT INTO `sys_oper_log` VALUES (122, '字典类型', 1, 'com.rdisplay.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"车站等级\",\"dictType\":\"train_station_grade\",\"params\":{},\"remark\":\"0：特等，1：一等，2：二等\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 15:28:08', 29);
INSERT INTO `sys_oper_log` VALUES (123, '字典数据', 1, 'com.rdisplay.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"1\",\"dictSort\":0,\"dictType\":\"train_station_grade\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 15:33:15', 9);
INSERT INTO `sys_oper_log` VALUES (124, '字典数据', 2, 'com.rdisplay.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2025-07-08 15:33:15\",\"default\":false,\"dictCode\":30,\"dictLabel\":\"特等站\",\"dictSort\":1,\"dictType\":\"train_station_grade\",\"dictValue\":\"0\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 15:34:07', 7);
INSERT INTO `sys_oper_log` VALUES (125, '字典数据', 1, 'com.rdisplay.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"一等站\",\"dictSort\":2,\"dictType\":\"train_station_grade\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 15:34:37', 9);
INSERT INTO `sys_oper_log` VALUES (126, '字典数据', 1, 'com.rdisplay.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"二等站\",\"dictSort\":3,\"dictType\":\"train_station_grade\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 15:35:03', 10);
INSERT INTO `sys_oper_log` VALUES (127, '字典类型', 1, 'com.rdisplay.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"列车状态\",\"dictType\":\"railway_state\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 15:40:34', 8);
INSERT INTO `sys_oper_log` VALUES (128, '字典类型', 2, 'com.rdisplay.web.controller.system.SysDictTypeController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2025-07-08 15:28:08\",\"dictId\":11,\"dictName\":\"车站等级\",\"dictType\":\"train_station_grade\",\"params\":{},\"remark\":\"车站信息等级\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 15:40:52', 15);
INSERT INTO `sys_oper_log` VALUES (129, '字典类型', 2, 'com.rdisplay.web.controller.system.SysDictTypeController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2025-07-08 15:40:34\",\"dictId\":12,\"dictName\":\"列车状态\",\"dictType\":\"railway_state\",\"params\":{},\"remark\":\"站厅列车状态\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 15:41:13', 11);
INSERT INTO `sys_oper_log` VALUES (130, '字典数据', 1, 'com.rdisplay.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"正在候车\",\"dictSort\":1,\"dictType\":\"railway_state\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 15:43:32', 9);
INSERT INTO `sys_oper_log` VALUES (131, '字典数据', 1, 'com.rdisplay.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"停止检票\",\"dictSort\":3,\"dictType\":\"railway_state\",\"dictValue\":\"-1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 15:43:58', 11);
INSERT INTO `sys_oper_log` VALUES (132, '字典数据', 1, 'com.rdisplay.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"正在检票\",\"dictSort\":2,\"dictType\":\"railway_state\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 15:44:28', 7);
INSERT INTO `sys_oper_log` VALUES (133, '字典数据', 1, 'com.rdisplay.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"准备检票\",\"dictSort\":4,\"dictType\":\"railway_state\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 15:44:50', 9);
INSERT INTO `sys_oper_log` VALUES (134, '字典数据', 2, 'com.rdisplay.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2025-07-08 15:33:15\",\"default\":false,\"dictCode\":30,\"dictLabel\":\"特等站\",\"dictSort\":1,\"dictType\":\"train_station_grade\",\"dictValue\":\"0\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"remark\":\"特等站\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 15:45:37', 10);
INSERT INTO `sys_oper_log` VALUES (135, '字典数据', 2, 'com.rdisplay.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2025-07-08 15:34:37\",\"default\":false,\"dictCode\":31,\"dictLabel\":\"一等站\",\"dictSort\":2,\"dictType\":\"train_station_grade\",\"dictValue\":\"1\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"remark\":\"一等站\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 15:45:40', 13);
INSERT INTO `sys_oper_log` VALUES (136, '字典数据', 2, 'com.rdisplay.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2025-07-08 15:35:03\",\"default\":false,\"dictCode\":32,\"dictLabel\":\"二等站\",\"dictSort\":3,\"dictType\":\"train_station_grade\",\"dictValue\":\"2\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"remark\":\"二等站\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 15:45:44', 8);
INSERT INTO `sys_oper_log` VALUES (137, '字典数据', 2, 'com.rdisplay.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2025-07-08 15:43:32\",\"default\":false,\"dictCode\":33,\"dictLabel\":\"正在候车\",\"dictSort\":1,\"dictType\":\"railway_state\",\"dictValue\":\"0\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"remark\":\"正在候车\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 15:45:55', 9);
INSERT INTO `sys_oper_log` VALUES (138, '字典数据', 2, 'com.rdisplay.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2025-07-08 15:44:28\",\"default\":false,\"dictCode\":35,\"dictLabel\":\"正在检票\",\"dictSort\":2,\"dictType\":\"railway_state\",\"dictValue\":\"1\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"remark\":\"正在检票\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 15:45:58', 10);
INSERT INTO `sys_oper_log` VALUES (139, '字典数据', 2, 'com.rdisplay.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2025-07-08 15:43:58\",\"default\":false,\"dictCode\":34,\"dictLabel\":\"停止检票\",\"dictSort\":3,\"dictType\":\"railway_state\",\"dictValue\":\"-1\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"remark\":\"停止检票\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 15:46:02', 12);
INSERT INTO `sys_oper_log` VALUES (140, '字典数据', 2, 'com.rdisplay.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2025-07-08 15:44:50\",\"default\":false,\"dictCode\":36,\"dictLabel\":\"准备检票\",\"dictSort\":4,\"dictType\":\"railway_state\",\"dictValue\":\"2\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"remark\":\"准备检票\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 15:46:06', 9);
INSERT INTO `sys_oper_log` VALUES (141, '菜单管理', 1, 'com.rdisplay.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"厦门站\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"车站\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"station\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 15:49:29', 9);
INSERT INTO `sys_oper_log` VALUES (142, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"train\",\"className\":\"Train\",\"columns\":[{\"capJavaField\":\"StationNum\",\"columnComment\":\"车站编号\",\"columnId\":1,\"columnName\":\"station_num\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 15:24:49\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationNum\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StationName\",\"columnComment\":\"车站名称\",\"columnId\":2,\"columnName\":\"station_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 15:24:49\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SName\",\"columnComment\":\"车站缩写\",\"columnId\":3,\"columnName\":\"s_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 15:24:49\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"sName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StationGrade\",\"columnComment\":\"车站等级（0-2: 特，一，二）\",\"columnId\":4,\"columnName\":\"station_grade\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 15:24:49\",\"dictType\":\"train_station_grade\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 15:52:18', 29);
INSERT INTO `sys_oper_log` VALUES (143, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/train', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 15:54:26', 19);
INSERT INTO `sys_oper_log` VALUES (144, '代码生成', 8, 'com.rdisplay.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"train\"}', NULL, 0, NULL, '2025-07-08 15:54:45', 48);
INSERT INTO `sys_oper_log` VALUES (145, '代码生成', 3, 'com.rdisplay.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '研发部门', '/tool/gen/1', '127.0.0.1', '内网IP', '[1]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 16:09:24', 20);
INSERT INTO `sys_oper_log` VALUES (146, '代码生成', 6, 'com.rdisplay.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"station\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 16:09:34', 18);
INSERT INTO `sys_oper_log` VALUES (147, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"station\",\"className\":\"Station\",\"columns\":[{\"capJavaField\":\"StationNum\",\"columnComment\":\"车站编号\",\"columnId\":5,\"columnName\":\"station_num\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationNum\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StationName\",\"columnComment\":\"车站名称\",\"columnId\":6,\"columnName\":\"station_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SName\",\"columnComment\":\"车站缩写\",\"columnId\":7,\"columnName\":\"s_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"sName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StationGrade\",\"columnComment\":\"车站等级（0-2: 特，一，二）\",\"columnId\":8,\"columnName\":\"station_grade\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"train_station_grade\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 16:09:43', 11);
INSERT INTO `sys_oper_log` VALUES (148, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"station\",\"className\":\"Station\",\"columns\":[{\"capJavaField\":\"StationNum\",\"columnComment\":\"车站编号\",\"columnId\":5,\"columnName\":\"station_num\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationNum\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-07-08 16:09:43\",\"usableColumn\":false},{\"capJavaField\":\"StationName\",\"columnComment\":\"车站名称\",\"columnId\":6,\"columnName\":\"station_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-07-08 16:09:43\",\"usableColumn\":false},{\"capJavaField\":\"SName\",\"columnComment\":\"车站缩写\",\"columnId\":7,\"columnName\":\"s_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"sName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-07-08 16:09:43\",\"usableColumn\":false},{\"capJavaField\":\"StationGrade\",\"columnComment\":\"车站等级（0-2: 特，一，二）\",\"columnId\":8,\"columnName\":\"station_grade\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"train_station_grade\",\"e', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 16:11:59', 21);
INSERT INTO `sys_oper_log` VALUES (149, '代码生成', 8, 'com.rdisplay.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"station\"}', NULL, 0, NULL, '2025-07-08 16:17:32', 47);
INSERT INTO `sys_oper_log` VALUES (150, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"station\",\"className\":\"Station\",\"columns\":[{\"capJavaField\":\"StationNum\",\"columnComment\":\"车站编号\",\"columnId\":5,\"columnName\":\"station_num\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationNum\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-07-08 16:11:59\",\"usableColumn\":false},{\"capJavaField\":\"StationName\",\"columnComment\":\"车站名称\",\"columnId\":6,\"columnName\":\"station_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-07-08 16:11:59\",\"usableColumn\":false},{\"capJavaField\":\"SName\",\"columnComment\":\"车站缩写\",\"columnId\":7,\"columnName\":\"s_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"sName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-07-08 16:11:59\",\"usableColumn\":false},{\"capJavaField\":\"StationGrade\",\"columnComment\":\"车站等级（0-2: 特，一，二）\",\"columnId\":8,\"columnName\":\"station_grade\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"train_station_grade\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 16:29:47', 64);
INSERT INTO `sys_oper_log` VALUES (151, '代码生成', 8, 'com.rdisplay.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"station\"}', NULL, 0, NULL, '2025-07-08 16:31:27', 28);
INSERT INTO `sys_oper_log` VALUES (152, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"station\",\"className\":\"Station\",\"columns\":[{\"capJavaField\":\"StationNum\",\"columnComment\":\"车站编号\",\"columnId\":5,\"columnName\":\"station_num\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationNum\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-07-08 16:29:47\",\"usableColumn\":false},{\"capJavaField\":\"StationName\",\"columnComment\":\"车站名称\",\"columnId\":6,\"columnName\":\"station_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-07-08 16:29:47\",\"usableColumn\":false},{\"capJavaField\":\"SName\",\"columnComment\":\"车站缩写\",\"columnId\":7,\"columnName\":\"s_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"sName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-07-08 16:29:47\",\"usableColumn\":false},{\"capJavaField\":\"StationGrade\",\"columnComment\":\"车站等级（0-2: 特，一，二）\",\"columnId\":8,\"columnName\":\"station_grade\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"train_station_grade\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 16:56:21', 15);
INSERT INTO `sys_oper_log` VALUES (153, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"station\",\"className\":\"Station\",\"columns\":[{\"capJavaField\":\"StationNum\",\"columnComment\":\"车站编号\",\"columnId\":5,\"columnName\":\"station_num\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationNum\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-07-08 16:56:21\",\"usableColumn\":false},{\"capJavaField\":\"StationName\",\"columnComment\":\"车站名称\",\"columnId\":6,\"columnName\":\"station_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-07-08 16:56:21\",\"usableColumn\":false},{\"capJavaField\":\"SName\",\"columnComment\":\"车站缩写\",\"columnId\":7,\"columnName\":\"s_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"sName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-07-08 16:56:21\",\"usableColumn\":false},{\"capJavaField\":\"StationGrade\",\"columnComment\":\"车站等级（0-2: 特，一，二）\",\"columnId\":8,\"columnName\":\"station_grade\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"train_station_grade\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 16:57:12', 10);
INSERT INTO `sys_oper_log` VALUES (154, '代码生成', 6, 'com.rdisplay.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"station_msg\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 17:08:30', 38);
INSERT INTO `sys_oper_log` VALUES (155, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"msg\",\"className\":\"StationMsg\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":9,\"columnName\":\"id\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 17:08:30\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StationNum\",\"columnComment\":\"车站编号\",\"columnId\":10,\"columnName\":\"station_num\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 17:08:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationNum\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SendPeop\",\"columnComment\":\"发送人数\",\"columnId\":11,\"columnName\":\"send_peop\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 17:08:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"sendPeop\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ArrivePeop\",\"columnComment\":\"到达人数\",\"columnId\":12,\"columnName\":\"arrive_peop\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 17:08:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"arrivePeop\",\"javaType', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 17:09:09', 11);
INSERT INTO `sys_oper_log` VALUES (156, '代码生成', 3, 'com.rdisplay.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '研发部门', '/tool/gen/3', '127.0.0.1', '内网IP', '[3]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 17:09:23', 31);
INSERT INTO `sys_oper_log` VALUES (157, '菜单管理', 1, 'com.rdisplay.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"成都东站\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"列车管理\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"stationman\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 17:34:29', 156);
INSERT INTO `sys_oper_log` VALUES (158, '菜单管理', 1, 'com.rdisplay.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"昆明南站\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"设备管理\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"devicemand\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 17:36:32', 17);
INSERT INTO `sys_oper_log` VALUES (159, '菜单管理', 2, 'com.rdisplay.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-07-08 17:34:29\",\"icon\":\"成都东站\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1062,\"menuName\":\"列车管理\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"stationmand\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 17:36:37', 17);
INSERT INTO `sys_oper_log` VALUES (160, '菜单管理', 2, 'com.rdisplay.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-07-08 15:49:29\",\"icon\":\"厦门站\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1061,\"menuName\":\"车站管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"stationmand\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 17:36:40', 10);
INSERT INTO `sys_oper_log` VALUES (161, '角色管理', 2, 'com.rdisplay.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2025-06-30 16:39:44\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1061,1062,1063],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 17:40:59', 30);
INSERT INTO `sys_oper_log` VALUES (162, '角色管理', 2, 'com.rdisplay.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2025-06-30 16:39:44\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1061,1062,1063],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-08 17:41:11', 14);
INSERT INTO `sys_oper_log` VALUES (163, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"station\",\"className\":\"Station\",\"columns\":[{\"capJavaField\":\"StationNum\",\"columnComment\":\"车站编号\",\"columnId\":5,\"columnName\":\"station_num\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationNum\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-07-08 16:57:12\",\"usableColumn\":false},{\"capJavaField\":\"StationName\",\"columnComment\":\"车站名称\",\"columnId\":6,\"columnName\":\"station_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-07-08 16:57:12\",\"usableColumn\":false},{\"capJavaField\":\"SName\",\"columnComment\":\"车站缩写\",\"columnId\":7,\"columnName\":\"s_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"sName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-07-08 16:57:12\",\"usableColumn\":false},{\"capJavaField\":\"StationGrade\",\"columnComment\":\"车站等级（0-2: 特，一，二）\",\"columnId\":8,\"columnName\":\"station_grade\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"train_station_grade\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 14:20:09', 52);
INSERT INTO `sys_oper_log` VALUES (164, '代码生成', 8, 'com.rdisplay.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"station\"}', NULL, 0, NULL, '2025-07-09 14:20:12', 239);
INSERT INTO `sys_oper_log` VALUES (165, '菜单管理', 2, 'com.rdisplay.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-07-08 17:34:29\",\"icon\":\"成都东站\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1062,\"menuName\":\"列车管理\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"railwaymand\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 14:33:59', 23);
INSERT INTO `sys_oper_log` VALUES (166, '菜单管理', 2, 'com.rdisplay.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"stationman/station/index\",\"createTime\":\"2025-07-09 14:14:48\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1064,\"menuName\":\"车站信息管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":1061,\"path\":\"station\",\"perms\":\"stationman:station:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 14:34:47', 9);
INSERT INTO `sys_oper_log` VALUES (167, '车站信息管理', 2, 'com.rdisplay.stationman.controller.StationController.edit()', 'PUT', 1, 'admin', '研发部门', '/stationman/station', '127.0.0.1', '内网IP', '{\"params\":{},\"sName\":\"JXA\",\"stationGrade\":1,\"stationName\":\"张家界西\",\"stationNum\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 14:36:14', 12);
INSERT INTO `sys_oper_log` VALUES (168, '车站信息管理', 2, 'com.rdisplay.stationman.controller.StationController.edit()', 'PUT', 1, 'admin', '研发部门', '/stationman/station', '127.0.0.1', '内网IP', '{\"params\":{},\"sName\":\"JXA\",\"stationGrade\":0,\"stationName\":\"张家界西\",\"stationNum\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 14:36:24', 11);
INSERT INTO `sys_oper_log` VALUES (169, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"station\",\"className\":\"Station\",\"columns\":[{\"capJavaField\":\"StationNum\",\"columnComment\":\"车站编号\",\"columnId\":5,\"columnName\":\"station_num\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationNum\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-07-09 14:20:09\",\"usableColumn\":false},{\"capJavaField\":\"StationName\",\"columnComment\":\"车站名称\",\"columnId\":6,\"columnName\":\"station_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-07-09 14:20:09\",\"usableColumn\":false},{\"capJavaField\":\"SName\",\"columnComment\":\"车站缩写\",\"columnId\":7,\"columnName\":\"s_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"sName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-07-09 14:20:09\",\"usableColumn\":false},{\"capJavaField\":\"StationGrade\",\"columnComment\":\"车站等级（0-2: 特，一，二）\",\"columnId\":8,\"columnName\":\"station_grade\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"train_station_grade\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 14:37:17', 41);
INSERT INTO `sys_oper_log` VALUES (170, '车站信息管理', 5, 'com.rdisplay.stationman.controller.StationController.export()', 'POST', 1, 'admin', '研发部门', '/stationman/station/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2025-07-09 14:37:49', 828);
INSERT INTO `sys_oper_log` VALUES (171, '车站信息管理', 5, 'com.rdisplay.stationman.controller.StationController.export()', 'POST', 1, 'admin', '研发部门', '/stationman/station/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2025-07-09 14:43:26', 859);
INSERT INTO `sys_oper_log` VALUES (172, '字典数据', 1, 'com.rdisplay.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"三等站\",\"dictSort\":4,\"dictType\":\"train_station_grade\",\"dictValue\":\"3\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 14:50:56', 17);
INSERT INTO `sys_oper_log` VALUES (173, '字典数据', 2, 'com.rdisplay.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2025-07-09 14:50:56\",\"default\":false,\"dictCode\":37,\"dictLabel\":\"三等站\",\"dictSort\":4,\"dictType\":\"train_station_grade\",\"dictValue\":\"3\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"remark\":\"三等站\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 14:51:02', 17);
INSERT INTO `sys_oper_log` VALUES (174, '代码生成', 6, 'com.rdisplay.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"station_garde\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 14:57:20', 56);
INSERT INTO `sys_oper_log` VALUES (175, '代码生成', 3, 'com.rdisplay.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '研发部门', '/tool/gen/4', '127.0.0.1', '内网IP', '[4]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 15:00:28', 17);
INSERT INTO `sys_oper_log` VALUES (176, '代码生成', 6, 'com.rdisplay.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"station_garde\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 15:00:33', 18);
INSERT INTO `sys_oper_log` VALUES (177, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"station\",\"className\":\"Station\",\"columns\":[{\"capJavaField\":\"StationNum\",\"columnComment\":\"车站编号\",\"columnId\":5,\"columnName\":\"station_num\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationNum\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-07-09 14:37:17\",\"usableColumn\":false},{\"capJavaField\":\"StationName\",\"columnComment\":\"车站名称\",\"columnId\":6,\"columnName\":\"station_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-07-09 14:37:17\",\"usableColumn\":false},{\"capJavaField\":\"SName\",\"columnComment\":\"车站缩写\",\"columnId\":7,\"columnName\":\"s_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"sName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-07-09 14:37:17\",\"usableColumn\":false},{\"capJavaField\":\"StationGrade\",\"columnComment\":\"车站等级（0-2: 特，一，二）\",\"columnId\":8,\"columnName\":\"station_grade\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"train_station_grade\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 15:00:48', 29);
INSERT INTO `sys_oper_log` VALUES (178, '代码生成', 6, 'com.rdisplay.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"railway_plat_msg\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 15:04:32', 27);
INSERT INTO `sys_oper_log` VALUES (179, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"rplatmsg\",\"className\":\"RailwayPlatMsg\",\"columns\":[{\"capJavaField\":\"PlatNum\",\"columnComment\":\"站台编号\",\"columnId\":17,\"columnName\":\"plat_num\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-09 15:04:32\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"platNum\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TrainNum\",\"columnComment\":\"车次\",\"columnId\":18,\"columnName\":\"train_num\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-09 15:04:32\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"trainNum\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DepStation\",\"columnComment\":\"始发站\",\"columnId\":19,\"columnName\":\"dep_station\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-09 15:04:32\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"depStation\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TerStation\",\"columnComment\":\"终到站\",\"columnId\":20,\"columnName\":\"ter_station\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-09 15:04:32\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQu', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 15:06:38', 20);
INSERT INTO `sys_oper_log` VALUES (180, '代码生成', 8, 'com.rdisplay.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"railway_plat_msg\"}', NULL, 0, NULL, '2025-07-09 15:06:57', 34);
INSERT INTO `sys_oper_log` VALUES (181, '站台信息', 1, 'com.rdisplay.rplatmsg.controller.RailwayPlatMsgController.add()', 'POST', 1, 'admin', '研发部门', '/rplatmsg/rplatmsg', '127.0.0.1', '内网IP', '{\"depStation\":\"长沙\",\"params\":{},\"platNum\":11,\"startTime\":\"14:04:01\",\"terStation\":\"长沙\",\"trainNum\":\"G22\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 15:41:38', 251);
INSERT INTO `sys_oper_log` VALUES (182, '站台信息', 1, 'com.rdisplay.rplatmsg.controller.RailwayPlatMsgController.add()', 'POST', 1, 'admin', '研发部门', '/rplatmsg/rplatmsg', '127.0.0.1', '内网IP', '{\"depStation\":\"1\",\"params\":{},\"platNum\":12,\"startTime\":\"16:16:26\",\"terStation\":\"1\",\"trainNum\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 16:16:34', 152);
INSERT INTO `sys_oper_log` VALUES (183, '站台信息', 2, 'com.rdisplay.rplatmsg.controller.RailwayPlatMsgController.edit()', 'PUT', 1, 'admin', '研发部门', '/rplatmsg/rplatmsg', '127.0.0.1', '内网IP', '{\"depStation\":\"张家界西\",\"params\":{},\"platNum\":1,\"startTime\":\"16:49:00\",\"terStation\":\"香港西九龙\",\"trainNum\":\"G6079\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 17:04:55', 55);
INSERT INTO `sys_oper_log` VALUES (184, '站台信息', 1, 'com.rdisplay.rplatmsg.controller.RailwayPlatMsgController.add()', 'POST', 1, 'admin', '研发部门', '/rplatmsg/rplatmsg', '127.0.0.1', '内网IP', '{\"depStation\":\"4\",\"params\":{},\"platNum\":13,\"startTime\":\"19:11:44\",\"terStation\":\"2\",\"trainNum\":\"3\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 17:09:59', 17);
INSERT INTO `sys_oper_log` VALUES (185, '站台信息', 2, 'com.rdisplay.rplatmsg.controller.RailwayPlatMsgController.edit()', 'PUT', 1, 'admin', '研发部门', '/rplatmsg/rplatmsg', '127.0.0.1', '内网IP', '{\"depStation\":\"4\",\"params\":{},\"platNum\":13,\"startTime\":\"18:11:44\",\"terStation\":\"2\",\"trainNum\":\"3\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 17:10:05', 9);
INSERT INTO `sys_oper_log` VALUES (186, '站台信息', 2, 'com.rdisplay.rplatmsg.controller.RailwayPlatMsgController.edit()', 'PUT', 1, 'admin', '研发部门', '/rplatmsg/rplatmsg', '127.0.0.1', '内网IP', '{\"depStation\":\"4\",\"params\":{},\"platNum\":13,\"startTime\":\"09:11:44\",\"terStation\":\"2\",\"trainNum\":\"3\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 17:32:49', 29);
INSERT INTO `sys_oper_log` VALUES (187, '站台信息', 3, 'com.rdisplay.rplatmsg.controller.RailwayPlatMsgController.remove()', 'DELETE', 1, 'admin', '研发部门', '/rplatmsg/rplatmsg/13', '127.0.0.1', '内网IP', '[13]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 17:34:58', 11);
INSERT INTO `sys_oper_log` VALUES (188, '菜单管理', 1, 'com.rdisplay.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"数据大屏\",\"menuType\":\"F\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 18:49:58', 42);
INSERT INTO `sys_oper_log` VALUES (189, '菜单管理', 2, 'com.rdisplay.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-07-09 18:49:58\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1076,\"menuName\":\"数据大屏\",\"menuType\":\"F\",\"orderNum\":4,\"params\":{},\"parentId\":1061,\"path\":\"\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 18:51:24', 11);
INSERT INTO `sys_oper_log` VALUES (190, '菜单管理', 2, 'com.rdisplay.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-07-09 18:49:58\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1076,\"menuName\":\"数据大屏\",\"menuType\":\"F\",\"orderNum\":4,\"params\":{},\"parentId\":1061,\"path\":\"\",\"perms\":\"system:user:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 18:52:34', 11);
INSERT INTO `sys_oper_log` VALUES (191, '菜单管理', 2, 'com.rdisplay.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-07-09 18:49:58\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1076,\"menuName\":\"数据大屏\",\"menuType\":\"F\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"\",\"perms\":\"system:user:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 18:53:03', 12);
INSERT INTO `sys_oper_log` VALUES (192, '菜单管理', 2, 'com.rdisplay.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-07-09 18:49:58\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1076,\"menuName\":\"数据大屏\",\"menuType\":\"F\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"\",\"perms\":\"system:user:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 18:53:22', 18);
INSERT INTO `sys_oper_log` VALUES (193, '角色管理', 2, 'com.rdisplay.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2025-06-30 16:39:44\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1061,1062,1063,1076],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 18:54:56', 63);
INSERT INTO `sys_oper_log` VALUES (194, '菜单管理', 2, 'com.rdisplay.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-07-09 18:49:58\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1076,\"menuName\":\"数据大屏\",\"menuType\":\"F\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"\",\"perms\":\"system:user:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 18:56:04', 7);
INSERT INTO `sys_oper_log` VALUES (195, '菜单管理', 2, 'com.rdisplay.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-07-09 18:49:58\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1076,\"menuName\":\"数据大屏\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"display\",\"perms\":\"system:user:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 18:59:21', 15);
INSERT INTO `sys_oper_log` VALUES (196, '菜单管理', 2, 'com.rdisplay.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-07-09 18:49:58\",\"icon\":\"重庆西站\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1076,\"menuName\":\"数据大屏\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"display\",\"perms\":\"system:user:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 18:59:57', 10);
INSERT INTO `sys_oper_log` VALUES (197, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"station\",\"className\":\"Station\",\"columns\":[{\"capJavaField\":\"StationNum\",\"columnComment\":\"车站编号\",\"columnId\":5,\"columnName\":\"station_num\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationNum\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-07-09 15:00:48\",\"usableColumn\":false},{\"capJavaField\":\"StationName\",\"columnComment\":\"车站名称\",\"columnId\":6,\"columnName\":\"station_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-07-09 15:00:48\",\"usableColumn\":false},{\"capJavaField\":\"SName\",\"columnComment\":\"车站缩写\",\"columnId\":7,\"columnName\":\"s_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"sName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-07-09 15:00:48\",\"usableColumn\":false},{\"capJavaField\":\"StationGrade\",\"columnComment\":\"车站等级（0-2: 特，一，二）\",\"columnId\":8,\"columnName\":\"station_grade\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"train_station_grade\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-09 19:02:46', 57);
INSERT INTO `sys_oper_log` VALUES (198, '通知公告', 3, 'com.rdisplay.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/notice/2,1', '127.0.0.1', '内网IP', '[2,1]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 10:28:26', 64);
INSERT INTO `sys_oper_log` VALUES (199, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"station\",\"className\":\"Station\",\"columns\":[{\"capJavaField\":\"StationNum\",\"columnComment\":\"车站编号\",\"columnId\":5,\"columnName\":\"station_num\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationNum\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-07-09 19:02:46\",\"usableColumn\":false},{\"capJavaField\":\"StationName\",\"columnComment\":\"车站名称\",\"columnId\":6,\"columnName\":\"station_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-07-09 19:02:46\",\"usableColumn\":false},{\"capJavaField\":\"SName\",\"columnComment\":\"车站缩写\",\"columnId\":7,\"columnName\":\"s_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"sName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-07-09 19:02:46\",\"usableColumn\":false},{\"capJavaField\":\"StationGrade\",\"columnComment\":\"车站等级（0-2: 特，一，二）\",\"columnId\":8,\"columnName\":\"station_grade\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"train_station_grade\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 10:31:32', 80);
INSERT INTO `sys_oper_log` VALUES (200, '代码生成', 8, 'com.rdisplay.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"station\"}', NULL, 0, NULL, '2025-07-10 10:32:44', 146);
INSERT INTO `sys_oper_log` VALUES (201, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"station\",\"className\":\"Station\",\"columns\":[{\"capJavaField\":\"StationNum\",\"columnComment\":\"车站编号\",\"columnId\":5,\"columnName\":\"station_num\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationNum\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-07-10 10:31:32\",\"usableColumn\":false},{\"capJavaField\":\"StationName\",\"columnComment\":\"车站名称\",\"columnId\":6,\"columnName\":\"station_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-07-10 10:31:32\",\"usableColumn\":false},{\"capJavaField\":\"SName\",\"columnComment\":\"车站缩写\",\"columnId\":7,\"columnName\":\"s_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"sName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-07-10 10:31:32\",\"usableColumn\":false},{\"capJavaField\":\"StationGrade\",\"columnComment\":\"车站等级（0-2: 特，一，二）\",\"columnId\":8,\"columnName\":\"station_grade\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-08 16:09:34\",\"dictType\":\"train_station_grade\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 10:40:50', 55);
INSERT INTO `sys_oper_log` VALUES (202, '代码生成', 8, 'com.rdisplay.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"station\"}', NULL, 0, NULL, '2025-07-10 10:40:54', 351);
INSERT INTO `sys_oper_log` VALUES (203, '车站信息管理', 1, 'com.rdisplay.stationman.controller.StationController.add()', 'POST', 1, 'admin', '研发部门', '/stationman/station', '127.0.0.1', '内网IP', '{\"params\":{},\"sName\":\"CSQ\",\"stationGrade\":0,\"stationName\":\"长沙\",\"stationNum\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 10:58:14', 178);
INSERT INTO `sys_oper_log` VALUES (204, '车站信息管理', 2, 'com.rdisplay.stationman.controller.StationController.edit()', 'PUT', 1, 'admin', '研发部门', '/stationman/station', '127.0.0.1', '内网IP', '{\"params\":{},\"sName\":\"CSQ\",\"stationGrade\":1,\"stationName\":\"长沙\",\"stationNum\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 10:58:40', 18);
INSERT INTO `sys_oper_log` VALUES (205, '菜单管理', 1, 'com.rdisplay.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"天津南站\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"今日大屏\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"iot\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 11:11:38', 24);
INSERT INTO `sys_oper_log` VALUES (206, '菜单管理', 2, 'com.rdisplay.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-07-09 18:49:58\",\"icon\":\"重庆西站\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1076,\"menuName\":\"数据大屏\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"display\",\"perms\":\"system:user:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 11:11:45', 13);
INSERT INTO `sys_oper_log` VALUES (207, '代码生成', 6, 'com.rdisplay.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"station_msg\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 14:19:41', 112);
INSERT INTO `sys_oper_log` VALUES (208, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"station\",\"className\":\"StationMsg\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":22,\"columnName\":\"id\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 14:19:40\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StationNum\",\"columnComment\":\"车站编号\",\"columnId\":23,\"columnName\":\"station_num\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 14:19:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationNum\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SendPeop\",\"columnComment\":\"发送人数\",\"columnId\":24,\"columnName\":\"send_peop\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 14:19:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"sendPeop\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ArrivePeop\",\"columnComment\":\"到达人数\",\"columnId\":25,\"columnName\":\"arrive_peop\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 14:19:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"arriveP', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 14:23:30', 40);
INSERT INTO `sys_oper_log` VALUES (209, '代码生成', 8, 'com.rdisplay.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"station_msg\"}', NULL, 0, NULL, '2025-07-10 14:23:48', 122);
INSERT INTO `sys_oper_log` VALUES (210, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"stationmsg\",\"className\":\"StationMsg\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":22,\"columnName\":\"id\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 14:19:40\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2025-07-10 14:23:30\",\"usableColumn\":false},{\"capJavaField\":\"StationNum\",\"columnComment\":\"车站编号\",\"columnId\":23,\"columnName\":\"station_num\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 14:19:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationNum\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2025-07-10 14:23:30\",\"usableColumn\":false},{\"capJavaField\":\"SendPeop\",\"columnComment\":\"发送人数\",\"columnId\":24,\"columnName\":\"send_peop\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 14:19:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"sendPeop\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2025-07-10 14:23:30\",\"usableColumn\":false},{\"capJavaField\":\"ArrivePeop\",\"columnComment\":\"到达人数\",\"columnId\":25,\"columnName\":\"arrive_peop\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 14:19:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 14:29:58', 58);
INSERT INTO `sys_oper_log` VALUES (211, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"stationmsg\",\"className\":\"StationMsg\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":22,\"columnName\":\"id\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 14:19:40\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2025-07-10 14:29:58\",\"usableColumn\":false},{\"capJavaField\":\"StationNum\",\"columnComment\":\"车站编号\",\"columnId\":23,\"columnName\":\"station_num\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 14:19:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationNum\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2025-07-10 14:29:58\",\"usableColumn\":false},{\"capJavaField\":\"SendPeop\",\"columnComment\":\"发送人数\",\"columnId\":24,\"columnName\":\"send_peop\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 14:19:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"sendPeop\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2025-07-10 14:29:58\",\"usableColumn\":false},{\"capJavaField\":\"ArrivePeop\",\"columnComment\":\"到达人数\",\"columnId\":25,\"columnName\":\"arrive_peop\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 14:19:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 14:33:07', 42);
INSERT INTO `sys_oper_log` VALUES (212, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"stationmsg\",\"className\":\"StationMsg\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":22,\"columnName\":\"id\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 14:19:40\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2025-07-10 14:33:07\",\"usableColumn\":false},{\"capJavaField\":\"StationNum\",\"columnComment\":\"车站编号\",\"columnId\":23,\"columnName\":\"station_num\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 14:19:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationNum\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2025-07-10 14:33:07\",\"usableColumn\":false},{\"capJavaField\":\"SendPeop\",\"columnComment\":\"发送人数\",\"columnId\":24,\"columnName\":\"send_peop\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 14:19:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"sendPeop\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2025-07-10 14:33:07\",\"usableColumn\":false},{\"capJavaField\":\"ArrivePeop\",\"columnComment\":\"到达人数\",\"columnId\":25,\"columnName\":\"arrive_peop\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 14:19:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 14:33:20', 22);
INSERT INTO `sys_oper_log` VALUES (213, '代码生成', 8, 'com.rdisplay.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"station_msg\"}', NULL, 0, NULL, '2025-07-10 14:33:23', 325);
INSERT INTO `sys_oper_log` VALUES (214, '菜单管理', 3, 'com.rdisplay.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1078', '127.0.0.1', '内网IP', '1078', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', 0, NULL, '2025-07-10 14:34:11', 4);
INSERT INTO `sys_oper_log` VALUES (215, '菜单管理', 3, 'com.rdisplay.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1078', '127.0.0.1', '内网IP', '1078', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', 0, NULL, '2025-07-10 14:34:21', 6);
INSERT INTO `sys_oper_log` VALUES (216, '菜单管理', 3, 'com.rdisplay.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1079', '127.0.0.1', '内网IP', '1079', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 14:34:24', 19);
INSERT INTO `sys_oper_log` VALUES (217, '菜单管理', 3, 'com.rdisplay.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1080', '127.0.0.1', '内网IP', '1080', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 14:34:26', 11);
INSERT INTO `sys_oper_log` VALUES (218, '菜单管理', 3, 'com.rdisplay.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1081', '127.0.0.1', '内网IP', '1081', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 14:34:28', 14);
INSERT INTO `sys_oper_log` VALUES (219, '菜单管理', 3, 'com.rdisplay.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1078', '127.0.0.1', '内网IP', '1078', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', 0, NULL, '2025-07-10 14:34:30', 2);
INSERT INTO `sys_oper_log` VALUES (220, '菜单管理', 3, 'com.rdisplay.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1082', '127.0.0.1', '内网IP', '1082', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 14:34:34', 17);
INSERT INTO `sys_oper_log` VALUES (221, '菜单管理', 3, 'com.rdisplay.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1083', '127.0.0.1', '内网IP', '1083', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 14:34:36', 13);
INSERT INTO `sys_oper_log` VALUES (222, '菜单管理', 3, 'com.rdisplay.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1078', '127.0.0.1', '内网IP', '1078', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 14:34:38', 11);
INSERT INTO `sys_oper_log` VALUES (223, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"stationmsg\",\"className\":\"StationMsg\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":22,\"columnName\":\"id\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 14:19:40\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2025-07-10 14:33:20\",\"usableColumn\":false},{\"capJavaField\":\"StationNum\",\"columnComment\":\"车站编号\",\"columnId\":23,\"columnName\":\"station_num\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 14:19:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationNum\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2025-07-10 14:33:20\",\"usableColumn\":false},{\"capJavaField\":\"SendPeop\",\"columnComment\":\"发送人数\",\"columnId\":24,\"columnName\":\"send_peop\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 14:19:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"sendPeop\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2025-07-10 14:33:20\",\"usableColumn\":false},{\"capJavaField\":\"ArrivePeop\",\"columnComment\":\"到达人数\",\"columnId\":25,\"columnName\":\"arrive_peop\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 14:19:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 14:42:25', 20);
INSERT INTO `sys_oper_log` VALUES (224, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"stationmsg\",\"className\":\"StationMsg\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":22,\"columnName\":\"id\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 14:19:40\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2025-07-10 14:42:25\",\"usableColumn\":false},{\"capJavaField\":\"StationNum\",\"columnComment\":\"车站编号\",\"columnId\":23,\"columnName\":\"station_num\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 14:19:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationNum\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2025-07-10 14:42:25\",\"usableColumn\":false},{\"capJavaField\":\"SendPeop\",\"columnComment\":\"发送人数\",\"columnId\":24,\"columnName\":\"send_peop\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 14:19:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"sendPeop\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2025-07-10 14:42:25\",\"usableColumn\":false},{\"capJavaField\":\"ArrivePeop\",\"columnComment\":\"到达人数\",\"columnId\":25,\"columnName\":\"arrive_peop\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 14:19:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 14:43:30', 24);
INSERT INTO `sys_oper_log` VALUES (225, '代码生成', 8, 'com.rdisplay.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"station_msg\"}', NULL, 0, NULL, '2025-07-10 14:43:43', 128);
INSERT INTO `sys_oper_log` VALUES (226, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"stationmsg\",\"className\":\"StationMsg\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":22,\"columnName\":\"id\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 14:19:40\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2025-07-10 14:43:30\",\"usableColumn\":false},{\"capJavaField\":\"StationNum\",\"columnComment\":\"车站编号\",\"columnId\":23,\"columnName\":\"station_num\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 14:19:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationNum\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2025-07-10 14:43:30\",\"usableColumn\":false},{\"capJavaField\":\"SendPeop\",\"columnComment\":\"发送人数\",\"columnId\":24,\"columnName\":\"send_peop\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 14:19:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"sendPeop\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2025-07-10 14:43:30\",\"usableColumn\":false},{\"capJavaField\":\"ArrivePeop\",\"columnComment\":\"到达人数\",\"columnId\":25,\"columnName\":\"arrive_peop\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 14:19:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 14:45:04', 20);
INSERT INTO `sys_oper_log` VALUES (227, '代码生成', 8, 'com.rdisplay.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"station_msg\"}', NULL, 0, NULL, '2025-07-10 14:45:07', 114);
INSERT INTO `sys_oper_log` VALUES (228, '车站发送人数', 1, 'com.rdisplay.stationmsg.controller.StationMsgController.add()', 'POST', 1, 'admin', '研发部门', '/stationman/stationmsg', '127.0.0.1', '内网IP', '{\"arrivePeop\":20000,\"id\":2,\"params\":{},\"sendPeop\":14500,\"stationNum\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 14:49:39', 147);
INSERT INTO `sys_oper_log` VALUES (229, '车站发送人数', 2, 'com.rdisplay.stationmsg.controller.StationMsgController.edit()', 'PUT', 1, 'admin', '研发部门', '/stationman/stationmsg', '127.0.0.1', '内网IP', '{\"arrivePeop\":15300,\"id\":1,\"params\":{},\"sendPeop\":12500,\"stationNum\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 14:49:42', 17);
INSERT INTO `sys_oper_log` VALUES (230, '菜单管理', 2, 'com.rdisplay.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"stationman/station/index\",\"createTime\":\"2025-07-09 14:14:48\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1064,\"menuName\":\"车站信息管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":1061,\"path\":\"station\",\"perms\":\"system:station:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 17:45:31', 74);
INSERT INTO `sys_oper_log` VALUES (231, '菜单管理', 2, 'com.rdisplay.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"stationman/station/index\",\"createTime\":\"2025-07-09 14:14:48\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1064,\"menuName\":\"车站信息管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":1061,\"path\":\"station\",\"perms\":\"stationman:station:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 17:49:24', 9);
INSERT INTO `sys_oper_log` VALUES (232, '代码生成', 6, 'com.rdisplay.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"railway_state_ticket,railwaytoday\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 18:34:08', 136);
INSERT INTO `sys_oper_log` VALUES (233, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"railwayticket\",\"className\":\"RailwayStateTicket\",\"columns\":[{\"capJavaField\":\"RailwayStateNum\",\"columnId\":26,\"columnName\":\"railway_state_num\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 18:34:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"railwayStateNum\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"RailwayState\",\"columnId\":27,\"columnName\":\"railway_state\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 18:34:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"railwayState\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"admin\",\"functionName\":\"列车状态-（检票状态，运行状态）\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"railwayticket\",\"options\":\"{}\",\"packageName\":\"com.rdisplay.railwayticket\",\"params\":{},\"sub\":false,\"tableComment\":\"列车状态-（检票状态，运行状态）\",\"tableId\":8,\"tableName\":\"railway_state_ticket\",\"tplCategory\":\"crud\",\"tplWebType\":\"element-plus\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 18:35:59', 36);
INSERT INTO `sys_oper_log` VALUES (234, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"railwaytoday\",\"className\":\"Railwaytoday\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":28,\"columnName\":\"id\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 18:34:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TrainNum\",\"columnComment\":\"车次\",\"columnId\":29,\"columnName\":\"train_num\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 18:34:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"trainNum\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DepStation\",\"columnComment\":\"始发站\",\"columnId\":30,\"columnName\":\"dep_station\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 18:34:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"depStation\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TerStation\",\"columnComment\":\"终到站\",\"columnId\":31,\"columnName\":\"ter_station\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 18:34:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaFi', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 18:37:03', 35);
INSERT INTO `sys_oper_log` VALUES (235, '菜单管理', 2, 'com.rdisplay.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-07-10 11:11:38\",\"icon\":\"天津南站\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1077,\"menuName\":\"大屏管理\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"iot\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 18:38:53', 13);
INSERT INTO `sys_oper_log` VALUES (236, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"railwaytoday\",\"className\":\"Railwaytoday\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":28,\"columnName\":\"id\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 18:34:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2025-07-10 18:37:03\",\"usableColumn\":false},{\"capJavaField\":\"TrainNum\",\"columnComment\":\"车次\",\"columnId\":29,\"columnName\":\"train_num\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 18:34:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"trainNum\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2025-07-10 18:37:03\",\"usableColumn\":false},{\"capJavaField\":\"DepStation\",\"columnComment\":\"始发站\",\"columnId\":30,\"columnName\":\"dep_station\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 18:34:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"depStation\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2025-07-10 18:37:03\",\"usableColumn\":false},{\"capJavaField\":\"TerStation\",\"columnComment\":\"终到站\",\"columnId\":31,\"columnName\":\"ter_station\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 18:34:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"is', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 18:39:11', 36);
INSERT INTO `sys_oper_log` VALUES (237, '代码生成', 8, 'com.rdisplay.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"railwaytoday\"}', NULL, 0, NULL, '2025-07-10 18:39:13', 75);
INSERT INTO `sys_oper_log` VALUES (238, '菜单管理', 2, 'com.rdisplay.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-07-10 11:11:38\",\"icon\":\"天津南站\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1077,\"menuName\":\"今日车次\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"iot\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 18:58:04', 36);
INSERT INTO `sys_oper_log` VALUES (239, '今日车次大屏', 2, 'com.rdisplay.railwaytoday.controller.RailwaytodayController.edit()', 'PUT', 1, 'admin', '研发部门', '/railwaytoday/railwaytoday', '127.0.0.1', '内网IP', '{\"depStation\":\"张家界西\",\"id\":1,\"params\":{},\"plat\":4,\"startTime\":\"10:27:00\",\"state\":0,\"stopTickTime\":\"10:20\",\"terStation\":\"北京西\",\"ticketNum\":1,\"trainNum\":\"G687\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 18:58:43', 16);
INSERT INTO `sys_oper_log` VALUES (240, '今日车次大屏', 1, 'com.rdisplay.railwaytoday.controller.RailwaytodayController.add()', 'POST', 1, 'admin', '研发部门', '/railwaytoday/railwaytoday', '127.0.0.1', '内网IP', '{\"depStation\":\"重庆东\",\"id\":4,\"params\":{},\"plat\":12,\"startTime\":\"19:13\",\"state\":0,\"stopTickTime\":\"19:08\",\"terStation\":\"长沙\",\"ticketNum\":2,\"trainNum\":\"G4796\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 19:09:28', 92);
INSERT INTO `sys_oper_log` VALUES (241, '今日车次大屏', 1, 'com.rdisplay.railwaytoday.controller.RailwaytodayController.add()', 'POST', 1, 'admin', '研发部门', '/railwaytoday/railwaytoday', '127.0.0.1', '内网IP', '{\"depStation\":\"重庆东\",\"id\":5,\"params\":{},\"plat\":11,\"startTime\":\"12:14\",\"state\":0,\"stopTickTime\":\"12:09\",\"terStation\":\"张家界西\",\"ticketNum\":2,\"trainNum\":\"G2357\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 19:10:17', 6);
INSERT INTO `sys_oper_log` VALUES (242, '今日车次大屏', 1, 'com.rdisplay.railwaytoday.controller.RailwaytodayController.add()', 'POST', 1, 'admin', '研发部门', '/railwaytoday/railwaytoday', '127.0.0.1', '内网IP', '{\"depStation\":\"张家界西\",\"id\":6,\"params\":{},\"plat\":4,\"startTime\":\"08:25\",\"state\":0,\"stopTickTime\":\"08:20\",\"terStation\":\"上海虹桥\",\"ticketNum\":1,\"trainNum\":\"G1374\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 19:11:41', 5);
INSERT INTO `sys_oper_log` VALUES (243, '今日车次大屏', 1, 'com.rdisplay.railwaytoday.controller.RailwaytodayController.add()', 'POST', 1, 'admin', '研发部门', '/railwaytoday/railwaytoday', '127.0.0.1', '内网IP', '{\"depStation\":\"成都东\",\"id\":7,\"params\":{},\"plat\":10,\"startTime\":\"14:16\",\"state\":0,\"stopTickTime\":\"14:11\",\"terStation\":\"张家界西\",\"ticketNum\":2,\"trainNum\":\"G477\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-10 19:12:21', 5);
INSERT INTO `sys_oper_log` VALUES (244, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"railwayticket\",\"className\":\"RailwayStateTicket\",\"columns\":[{\"capJavaField\":\"RailwayStateNum\",\"columnComment\":\"状态编号\",\"columnId\":26,\"columnName\":\"railway_state_num\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 18:34:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"railwayStateNum\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2025-07-10 18:35:59\",\"usableColumn\":false},{\"capJavaField\":\"RailwayState\",\"columnComment\":\"列车状态\",\"columnId\":27,\"columnName\":\"railway_state\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 18:34:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"railwayState\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2025-07-10 18:35:59\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"admin\",\"functionName\":\"列车状态-（检票状态，运行状态）\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"railwayticket\",\"options\":\"{\\\"parentMenuId\\\":0}\",\"packageName\":\"com.rdisplay.railwayticket\",\"params\":{\"parentMenuId\":0},\"parentMenuId\":0,\"sub\":false,\"tableComment\":\"列车状态-（检票状态，运行状态）\",\"tableId\":8,\"tableName\":\"railway_state_ticket\",\"tplCategory\":\"crud\",\"tplWebType\":\"element-plus\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 09:24:51', 57);
INSERT INTO `sys_oper_log` VALUES (245, '代码生成', 6, 'com.rdisplay.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"station_device,station_device_maintenance\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 09:25:42', 116);
INSERT INTO `sys_oper_log` VALUES (246, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"maintenance\",\"className\":\"StationDeviceMaintenance\",\"columns\":[{\"capJavaField\":\"LogId\",\"columnComment\":\"记录id\",\"columnId\":50,\"columnName\":\"log_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 09:25:41\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"logId\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DeviceId\",\"columnComment\":\"设备id\",\"columnId\":51,\"columnName\":\"device_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 09:25:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"deviceId\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"MaintenanceDate\",\"columnComment\":\"维护时间\",\"columnId\":52,\"columnName\":\"maintenance_date\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 09:25:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"maintenanceDate\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"MaintenanceType\",\"columnComment\":\"维护类型\",\"columnId\":53,\"columnName\":\"maintenance_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 09:25:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInse', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 09:26:53', 31);
INSERT INTO `sys_oper_log` VALUES (247, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"device\",\"className\":\"StationDevice\",\"columns\":[{\"capJavaField\":\"DeviceId\",\"columnComment\":\"设备ID\",\"columnId\":37,\"columnName\":\"device_id\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 09:25:41\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"deviceId\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DeviceName\",\"columnComment\":\"设备名称\",\"columnId\":38,\"columnName\":\"device_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 09:25:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"deviceName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DeviceType\",\"columnComment\":\"设备分类\",\"columnId\":39,\"columnName\":\"device_type\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 09:25:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"deviceType\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Brand\",\"columnComment\":\"品牌\",\"columnId\":40,\"columnName\":\"brand\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 09:25:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 09:28:21', 49);
INSERT INTO `sys_oper_log` VALUES (248, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"maintenance\",\"className\":\"StationDeviceMaintenance\",\"columns\":[{\"capJavaField\":\"LogId\",\"columnComment\":\"记录id\",\"columnId\":50,\"columnName\":\"log_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 09:25:41\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"logId\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2025-07-11 09:26:53\",\"usableColumn\":false},{\"capJavaField\":\"DeviceId\",\"columnComment\":\"设备id\",\"columnId\":51,\"columnName\":\"device_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 09:25:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"deviceId\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2025-07-11 09:26:53\",\"usableColumn\":false},{\"capJavaField\":\"MaintenanceDate\",\"columnComment\":\"维护时间\",\"columnId\":52,\"columnName\":\"maintenance_date\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 09:25:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"maintenanceDate\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2025-07-11 09:26:53\",\"usableColumn\":false},{\"capJavaField\":\"MaintenanceType\",\"columnComment\":\"维护类型\",\"columnId\":53,\"columnName\":\"maintenance_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 09:25:41\",\"dictType\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 09:28:32', 25);
INSERT INTO `sys_oper_log` VALUES (249, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"device\",\"className\":\"StationDevice\",\"columns\":[{\"capJavaField\":\"DeviceId\",\"columnComment\":\"设备ID\",\"columnId\":37,\"columnName\":\"device_id\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 09:25:41\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"deviceId\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2025-07-11 09:28:21\",\"usableColumn\":false},{\"capJavaField\":\"DeviceName\",\"columnComment\":\"设备名称\",\"columnId\":38,\"columnName\":\"device_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 09:25:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"deviceName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2025-07-11 09:28:21\",\"usableColumn\":false},{\"capJavaField\":\"DeviceType\",\"columnComment\":\"设备分类\",\"columnId\":39,\"columnName\":\"device_type\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 09:25:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"deviceType\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2025-07-11 09:28:21\",\"usableColumn\":false},{\"capJavaField\":\"Brand\",\"columnComment\":\"品牌\",\"columnId\":40,\"columnName\":\"brand\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 09:25:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"inpu', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 09:29:00', 43);
INSERT INTO `sys_oper_log` VALUES (250, '代码生成', 8, 'com.rdisplay.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"station_device,station_device_maintenance\"}', NULL, 0, NULL, '2025-07-11 09:29:08', 123);
INSERT INTO `sys_oper_log` VALUES (251, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"device\",\"className\":\"StationDevice\",\"columns\":[{\"capJavaField\":\"DeviceId\",\"columnComment\":\"设备ID\",\"columnId\":37,\"columnName\":\"device_id\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 09:25:41\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"deviceId\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2025-07-11 09:29:00\",\"usableColumn\":false},{\"capJavaField\":\"DeviceName\",\"columnComment\":\"设备名称\",\"columnId\":38,\"columnName\":\"device_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 09:25:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"deviceName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2025-07-11 09:29:00\",\"usableColumn\":false},{\"capJavaField\":\"DeviceType\",\"columnComment\":\"设备分类\",\"columnId\":39,\"columnName\":\"device_type\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 09:25:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"deviceType\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2025-07-11 09:29:00\",\"usableColumn\":false},{\"capJavaField\":\"Brand\",\"columnComment\":\"品牌\",\"columnId\":40,\"columnName\":\"brand\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 09:25:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"inpu', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 09:44:25', 48);
INSERT INTO `sys_oper_log` VALUES (252, '车站设备', 1, 'com.rdisplay.device.controller.StationDeviceController.add()', 'POST', 1, 'admin', '研发部门', '/device/device', '127.0.0.1', '内网IP', '{\"brand\":\"xxxx\",\"createTime\":\"2025-07-11 10:04:58\",\"deviceName\":\"17A检票口1号闸机\",\"deviceType\":1,\"installDate\":\"2020-07-13\",\"lastMaintenanceDate\":\"2025-07-16\",\"location\":\"张家界西17A检票口处\",\"model\":\"TD122311\",\"nextMaintenanceDate\":\"2025-07-31\",\"params\":{},\"stationNum\":1}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'device_id\' doesn\'t have a default value\r\n### The error may exist in file [F:\\新建文件夹\\20250630144353\\RailwayDisplay\\railwaydisplay-admin\\target\\classes\\mapper\\device\\StationDeviceMapper.xml]\r\n### The error may involve com.rdisplay.device.mapper.StationDeviceMapper.insertStationDevice-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into station_device          ( device_name,             device_type,             brand,             model,             station_num,             location,                          install_date,             last_maintenance_date,             next_maintenance_date,             create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,                          ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'device_id\' doesn\'t have a default value\n; Field \'device_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'device_id\' doesn\'t have a default value', '2025-07-11 10:04:59', 309);
INSERT INTO `sys_oper_log` VALUES (253, '车站设备', 1, 'com.rdisplay.device.controller.StationDeviceController.add()', 'POST', 1, 'admin', '研发部门', '/device/device', '127.0.0.1', '内网IP', '{\"brand\":\"xxxx\",\"createTime\":\"2025-07-11 10:08:24\",\"deviceName\":\"17A检票口1号闸机\",\"deviceType\":1,\"installDate\":\"2020-07-13\",\"lastMaintenanceDate\":\"2025-07-16\",\"location\":\"张家界西17A检票口处\",\"model\":\"TD122311\",\"nextMaintenanceDate\":\"2025-07-31\",\"params\":{},\"stationNum\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 10:08:24', 12);
INSERT INTO `sys_oper_log` VALUES (254, '车站设备', 2, 'com.rdisplay.device.controller.StationDeviceController.edit()', 'PUT', 1, 'admin', '研发部门', '/device/device', '127.0.0.1', '内网IP', '{\"brand\":\"xxxx\",\"createTime\":\"2025-07-11 10:08:25\",\"deviceId\":1,\"deviceName\":\"17A检票口1号闸机\",\"deviceType\":1,\"installDate\":\"2020-07-13\",\"lastMaintenanceDate\":\"2025-07-16\",\"location\":\"张家界西17A检票口处\",\"model\":\"TD122311\",\"nextMaintenanceDate\":\"2025-07-31\",\"params\":{},\"stationNum\":1,\"status\":1,\"updateTime\":\"2025-07-11 10:10:22\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 10:10:22', 15);
INSERT INTO `sys_oper_log` VALUES (255, '车站设备', 2, 'com.rdisplay.device.controller.StationDeviceController.edit()', 'PUT', 1, 'admin', '研发部门', '/device/device', '127.0.0.1', '内网IP', '{\"brand\":\"xxxx\",\"createTime\":\"2025-07-11 10:08:25\",\"deviceId\":1,\"deviceName\":\"17A检票口1号闸机\",\"deviceType\":1,\"installDate\":\"2020-07-13\",\"lastMaintenanceDate\":\"2025-07-16\",\"location\":\"张家界西17A检票口处\",\"model\":\"TD122311\",\"nextMaintenanceDate\":\"2025-07-31\",\"params\":{},\"stationNum\":1,\"status\":\"运行正常\",\"updateTime\":\"2025-07-11 10:28:33\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 10:28:33', 28);
INSERT INTO `sys_oper_log` VALUES (256, '车站设备', 2, 'com.rdisplay.device.controller.StationDeviceController.edit()', 'PUT', 1, 'admin', '研发部门', '/device/device', '127.0.0.1', '内网IP', '{\"brand\":\"xxxx\",\"createTime\":\"2025-07-11 10:08:25\",\"deviceId\":\"SCSEG-IJ12NB-24JJA\",\"deviceName\":\"17A检票口1号闸机\",\"deviceType\":1,\"installDate\":\"2020-07-13\",\"lastMaintenanceDate\":\"2025-07-16\",\"location\":\"张家界西17A检票口处\",\"model\":\"TD122311\",\"nextMaintenanceDate\":\"2025-07-31\",\"params\":{},\"stationNum\":1,\"status\":\"运行正常\",\"updateTime\":\"2025-07-11 10:41:07\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2025-07-11 10:41:07', 22);
INSERT INTO `sys_oper_log` VALUES (257, '车站设备', 2, 'com.rdisplay.device.controller.StationDeviceController.edit()', 'PUT', 1, 'admin', '研发部门', '/device/device', '127.0.0.1', '内网IP', '{\"brand\":\"xxxx\",\"createTime\":\"2025-07-11 10:08:25\",\"deviceId\":\"SCSEG-IJ12NB-24JJA\",\"deviceName\":\"17A检票口1号闸机\",\"deviceType\":1,\"installDate\":\"2020-07-13\",\"lastMaintenanceDate\":\"2025-07-16\",\"location\":\"张家界西17A检票口处\",\"model\":\"TD122311\",\"nextMaintenanceDate\":\"2025-07-31\",\"params\":{},\"stationNum\":1,\"status\":\"运行正常\",\"updateTime\":\"2025-07-11 10:41:16\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2025-07-11 10:41:16', 5);
INSERT INTO `sys_oper_log` VALUES (258, '车站设备', 2, 'com.rdisplay.device.controller.StationDeviceController.edit()', 'PUT', 1, 'admin', '研发部门', '/device/device', '127.0.0.1', '内网IP', '{\"brand\":\"xxxx\",\"createTime\":\"2025-07-11 10:08:25\",\"deviceId\":1,\"deviceName\":\"17A检票口1号闸机\",\"deviceType\":1,\"installDate\":\"2020-07-13\",\"lastMaintenanceDate\":\"2025-07-16\",\"location\":\"张家界西17A检票口处\",\"model\":\"TD122311\",\"nextMaintenanceDate\":\"2025-07-31\",\"params\":{},\"stationNum\":1,\"status\":\"运行异常\",\"updateTime\":\"2025-07-11 10:45:34\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 10:45:34', 26);
INSERT INTO `sys_oper_log` VALUES (259, '车站设备', 2, 'com.rdisplay.device.controller.StationDeviceController.edit()', 'PUT', 1, 'admin', '研发部门', '/device/device', '127.0.0.1', '内网IP', '{\"brand\":\"xxxx\",\"createTime\":\"2025-07-11 10:08:25\",\"deviceId\":1,\"deviceName\":\"17A检票口1号闸机\",\"deviceType\":1,\"installDate\":\"2020-07-13\",\"lastMaintenanceDate\":\"2025-07-16\",\"location\":\"张家界西17A检票口处\",\"model\":\"TD122311\",\"nextMaintenanceDate\":\"2025-07-31\",\"params\":{},\"stationNum\":1,\"status\":\"运行正常\",\"updateTime\":\"2025-07-11 10:45:43\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 10:45:43', 9);
INSERT INTO `sys_oper_log` VALUES (260, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"maintenance\",\"className\":\"StationDeviceMaintenance\",\"columns\":[{\"capJavaField\":\"LogId\",\"columnComment\":\"记录id\",\"columnId\":50,\"columnName\":\"log_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 09:25:41\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"logId\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2025-07-11 09:28:32\",\"usableColumn\":false},{\"capJavaField\":\"DeviceId\",\"columnComment\":\"设备id\",\"columnId\":51,\"columnName\":\"device_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 09:25:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"deviceId\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2025-07-11 09:28:32\",\"usableColumn\":false},{\"capJavaField\":\"MaintenanceDate\",\"columnComment\":\"维护时间\",\"columnId\":52,\"columnName\":\"maintenance_date\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 09:25:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"maintenanceDate\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2025-07-11 09:28:32\",\"usableColumn\":false},{\"capJavaField\":\"MaintenanceType\",\"columnComment\":\"维护类型\",\"columnId\":53,\"columnName\":\"maintenance_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 09:25:41\",\"dictType\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 10:51:52', 61);
INSERT INTO `sys_oper_log` VALUES (261, '代码生成', 8, 'com.rdisplay.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"station_device_maintenance\"}', NULL, 0, NULL, '2025-07-11 10:52:16', 270);
INSERT INTO `sys_oper_log` VALUES (262, '用户头像', 2, 'com.rdisplay.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2025/07/11/CR400AF-J_20250711110513A001.png\",\"code\":200}', 0, NULL, '2025-07-11 11:05:13', 81);
INSERT INTO `sys_oper_log` VALUES (263, '车站设备维护', 1, 'com.rdisplay.maintenance.controller.StationDeviceMaintenanceController.add()', 'POST', 1, 'admin', '研发部门', '/maintenance/maintenance', '127.0.0.1', '内网IP', '{\"attachment\":\"/profile/upload/2025/07/11/CR200J-J_20250711110645A001.png\",\"description\":\"1\",\"deviceId\":1,\"maintenanceDate\":\"2025-07-02\",\"operator\":\"1\",\"params\":{},\"result\":1}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'log_id\' doesn\'t have a default value\r\n### The error may exist in file [F:\\新建文件夹\\20250630144353\\RailwayDisplay\\railwaydisplay-admin\\target\\classes\\mapper\\maintenance\\StationDeviceMaintenanceMapper.xml]\r\n### The error may involve com.rdisplay.maintenance.mapper.StationDeviceMaintenanceMapper.insertStationDeviceMaintenance-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into station_device_maintenance          ( device_id,             maintenance_date,                          operator,             description,             result,             attachment )           values ( ?,             ?,                          ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'log_id\' doesn\'t have a default value\n; Field \'log_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'log_id\' doesn\'t have a default value', '2025-07-11 11:07:00', 68);
INSERT INTO `sys_oper_log` VALUES (264, '车站设备维护', 1, 'com.rdisplay.maintenance.controller.StationDeviceMaintenanceController.add()', 'POST', 1, 'admin', '研发部门', '/maintenance/maintenance', '127.0.0.1', '内网IP', '{\"attachment\":\"/profile/upload/2025/07/11/CR200J-J_20250711110645A001.png\",\"description\":\"1\",\"deviceId\":1,\"maintenanceDate\":\"2025-07-02\",\"operator\":\"1\",\"params\":{},\"result\":1}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'log_id\' doesn\'t have a default value\r\n### The error may exist in file [F:\\新建文件夹\\20250630144353\\RailwayDisplay\\railwaydisplay-admin\\target\\classes\\mapper\\maintenance\\StationDeviceMaintenanceMapper.xml]\r\n### The error may involve com.rdisplay.maintenance.mapper.StationDeviceMaintenanceMapper.insertStationDeviceMaintenance-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into station_device_maintenance          ( device_id,             maintenance_date,                          operator,             description,             result,             attachment )           values ( ?,             ?,                          ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'log_id\' doesn\'t have a default value\n; Field \'log_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'log_id\' doesn\'t have a default value', '2025-07-11 11:07:04', 7);
INSERT INTO `sys_oper_log` VALUES (265, '车站设备维护', 1, 'com.rdisplay.maintenance.controller.StationDeviceMaintenanceController.add()', 'POST', 1, 'admin', '研发部门', '/maintenance/maintenance', '127.0.0.1', '内网IP', '{\"attachment\":\"/profile/upload/2025/07/11/CR200J-J_20250711110822A002.png\",\"description\":\"1\",\"deviceId\":1,\"maintenanceDate\":\"2025-07-16\",\"operator\":\"1\",\"params\":{},\"result\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 11:08:28', 11);
INSERT INTO `sys_oper_log` VALUES (266, '车站设备维护', 2, 'com.rdisplay.maintenance.controller.StationDeviceMaintenanceController.edit()', 'PUT', 1, 'admin', '研发部门', '/maintenance/maintenance', '127.0.0.1', '内网IP', '{\"attachment\":\"/profile/upload/2025/07/11/CR200J-J_20250711110822A002.png\",\"description\":\"1\",\"deviceId\":1,\"logId\":1,\"maintenanceDate\":\"2025-07-16\",\"maintenanceType\":\"更换故障零件\",\"operator\":\"1\",\"params\":{},\"result\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 11:20:39', 15);
INSERT INTO `sys_oper_log` VALUES (267, '车站设备维护', 2, 'com.rdisplay.maintenance.controller.StationDeviceMaintenanceController.edit()', 'PUT', 1, 'admin', '研发部门', '/maintenance/maintenance', '127.0.0.1', '内网IP', '{\"attachment\":\"/profile/upload/2025/07/11/CR200J-J_20250711110822A002.png\",\"description\":\"1\",\"deviceId\":1,\"logId\":1,\"maintenanceDate\":\"2025-07-16 00:00:00\",\"maintenanceType\":\"更换故障零件\",\"operator\":\"1\",\"params\":{},\"result\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 11:25:02', 25);
INSERT INTO `sys_oper_log` VALUES (268, '车站设备维护', 1, 'com.rdisplay.maintenance.controller.StationDeviceMaintenanceController.add()', 'POST', 1, 'admin', '研发部门', '/maintenance/maintenance', '127.0.0.1', '内网IP', '{\"attachment\":\"/profile/upload/2025/07/11/CR300AF_20250711112953A001.png\",\"description\":\"日常保养\",\"deviceId\":2,\"maintenanceType\":\"日常保养\",\"operator\":\"李四\",\"params\":{},\"result\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 11:30:26', 10);
INSERT INTO `sys_oper_log` VALUES (269, '车站设备维护', 2, 'com.rdisplay.maintenance.controller.StationDeviceMaintenanceController.edit()', 'PUT', 1, 'admin', '研发部门', '/maintenance/maintenance', '127.0.0.1', '内网IP', '{\"attachment\":\"/profile/upload/2025/07/11/CR300AF_20250711112953A001.png\",\"description\":\"日常保养\",\"deviceId\":2,\"logId\":2,\"maintenanceType\":\"日常保养\",\"operator\":\"李四\",\"params\":{},\"result\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 11:30:46', 5);
INSERT INTO `sys_oper_log` VALUES (270, '车站设备维护', 2, 'com.rdisplay.maintenance.controller.StationDeviceMaintenanceController.edit()', 'PUT', 1, 'admin', '研发部门', '/maintenance/maintenance', '127.0.0.1', '内网IP', '{\"attachment\":\"/profile/upload/2025/07/11/CR300AF_20250711112953A001.png\",\"description\":\"日常保养\",\"deviceId\":2,\"logId\":2,\"maintenanceType\":\"日常保养\",\"operator\":\"李四\",\"params\":{},\"result\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 11:31:28', 10);
INSERT INTO `sys_oper_log` VALUES (271, '车站设备维护', 2, 'com.rdisplay.maintenance.controller.StationDeviceMaintenanceController.edit()', 'PUT', 1, 'admin', '研发部门', '/maintenance/maintenance', '127.0.0.1', '内网IP', '{\"attachment\":\"/profile/upload/2025/07/11/CR300AF_20250711112953A001.png\",\"description\":\"日常保养\",\"deviceId\":2,\"logId\":2,\"maintenanceType\":\"日常保养\",\"operator\":\"李四\",\"params\":{},\"result\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 11:31:47', 8);
INSERT INTO `sys_oper_log` VALUES (272, '车站设备维护', 2, 'com.rdisplay.maintenance.controller.StationDeviceMaintenanceController.edit()', 'PUT', 1, 'admin', '研发部门', '/maintenance/maintenance', '127.0.0.1', '内网IP', '{\"attachment\":\"/profile/upload/2025/07/11/CR300AF_20250711112953A001.png\",\"description\":\"日常保养\",\"deviceId\":2,\"logId\":2,\"maintenanceDate\":\"2025-07-15 01:00:00\",\"maintenanceType\":\"日常保养\",\"operator\":\"李四\",\"params\":{},\"result\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 11:36:32', 11);
INSERT INTO `sys_oper_log` VALUES (273, '代码生成', 6, 'com.rdisplay.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"railwaymap,station_device_result,station_device_type\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 11:41:23', 171);
INSERT INTO `sys_oper_log` VALUES (274, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"railwaymap\",\"className\":\"Railwaymap\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"序号\",\"columnId\":58,\"columnName\":\"id\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 11:41:23\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TrainNum\",\"columnComment\":\"车次\",\"columnId\":59,\"columnName\":\"train_num\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 11:41:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"trainNum\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DepStation\",\"columnComment\":\"始发站\",\"columnId\":60,\"columnName\":\"dep_station\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 11:41:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"depStation\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DepTime\",\"columnComment\":\"发车时间\",\"columnId\":61,\"columnName\":\"dep_time\",\"columnType\":\"time\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 11:41:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 11:43:13', 66);
INSERT INTO `sys_oper_log` VALUES (275, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"result\",\"className\":\"StationDeviceResult\",\"columns\":[{\"capJavaField\":\"StationDeviceResultId\",\"columnComment\":\"状态编码\",\"columnId\":70,\"columnName\":\"station_device_result_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 11:41:23\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationDeviceResultId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StationDeviceResult\",\"columnComment\":\"维护状态\",\"columnId\":71,\"columnName\":\"station_device_result\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 11:41:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationDeviceResult\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"admin\",\"functionName\":\"车站设备维修处理状态\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"deviceresult\",\"options\":\"{}\",\"packageName\":\"com.rdisplay.deviceresult\",\"params\":{},\"sub\":false,\"tableComment\":\"车站设备维修处理状态\",\"tableId\":13,\"tableName\":\"station_device_result\",\"tplCategory\":\"crud\",\"tplWebType\":\"element-plus\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 11:45:02', 18);
INSERT INTO `sys_oper_log` VALUES (276, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"railwaymap\",\"className\":\"Railwaymap\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"序号\",\"columnId\":58,\"columnName\":\"id\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 11:41:23\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2025-07-11 11:43:13\",\"usableColumn\":false},{\"capJavaField\":\"TrainNum\",\"columnComment\":\"车次\",\"columnId\":59,\"columnName\":\"train_num\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 11:41:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"trainNum\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2025-07-11 11:43:13\",\"usableColumn\":false},{\"capJavaField\":\"DepStation\",\"columnComment\":\"始发站\",\"columnId\":60,\"columnName\":\"dep_station\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 11:41:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"depStation\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2025-07-11 11:43:13\",\"usableColumn\":false},{\"capJavaField\":\"DepTime\",\"columnComment\":\"发车时间\",\"columnId\":61,\"columnName\":\"dep_time\",\"columnType\":\"time\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 11:41:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 11:45:09', 38);
INSERT INTO `sys_oper_log` VALUES (277, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"type\",\"className\":\"StationDeviceType\",\"columns\":[{\"capJavaField\":\"StationDeviceId\",\"columnComment\":\"设备类型编号\",\"columnId\":72,\"columnName\":\"station_device_id\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 11:41:23\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationDeviceId\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StationDeviceName\",\"columnComment\":\"设备类型名\",\"columnId\":73,\"columnName\":\"station_device_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 11:41:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationDeviceName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"ruoyi\",\"functionName\":\"设备类型字段\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"DeviceType\",\"options\":\"{}\",\"packageName\":\"com.rdisplay.DeviceType\",\"params\":{},\"sub\":false,\"tableComment\":\"设备类型字段\",\"tableId\":14,\"tableName\":\"station_device_type\",\"tplCategory\":\"crud\",\"tplWebType\":\"element-plus\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 11:46:42', 11);
INSERT INTO `sys_oper_log` VALUES (278, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"railwaymap\",\"className\":\"Railwaymap\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"序号\",\"columnId\":58,\"columnName\":\"id\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 11:41:23\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2025-07-11 11:45:09\",\"usableColumn\":false},{\"capJavaField\":\"TrainNum\",\"columnComment\":\"车次\",\"columnId\":59,\"columnName\":\"train_num\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 11:41:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"trainNum\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2025-07-11 11:45:09\",\"usableColumn\":false},{\"capJavaField\":\"DepStation\",\"columnComment\":\"始发站\",\"columnId\":60,\"columnName\":\"dep_station\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 11:41:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"depStation\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2025-07-11 11:45:09\",\"usableColumn\":false},{\"capJavaField\":\"DepTime\",\"columnComment\":\"发车时间\",\"columnId\":61,\"columnName\":\"dep_time\",\"columnType\":\"time\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 11:41:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 13:14:35', 75);
INSERT INTO `sys_oper_log` VALUES (279, '代码生成', 8, 'com.rdisplay.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"railwaymap\"}', NULL, 0, NULL, '2025-07-11 13:14:37', 286);
INSERT INTO `sys_oper_log` VALUES (280, '列车运行图', 1, 'com.rdisplay.railway.controller.RailwaymapController.add()', 'POST', 1, 'admin', '研发部门', '/railway/railwaymap', '127.0.0.1', '内网IP', '{\"depStation\":\"重庆东\",\"depTime\":\"13:27\",\"id\":3,\"params\":{},\"terStation\":\"张家界西\",\"terTime\":\"15:27\",\"trainNum\":\"G2375\",\"wayDepTime01\":\"13:50\",\"wayDepTime02\":\"14:28\",\"wayDepTime03\":\"15:20\",\"wayStation01\":\"黔江\",\"wayStation02\":\"龙山北\",\"wayStation03\":\"桑植\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 13:28:48', 143);
INSERT INTO `sys_oper_log` VALUES (281, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"railwayticket\",\"className\":\"RailwayStateTicket\",\"columns\":[{\"capJavaField\":\"RailwayStateNum\",\"columnComment\":\"状态编号\",\"columnId\":26,\"columnName\":\"railway_state_num\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 18:34:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"railwayStateNum\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2025-07-11 09:24:51\",\"usableColumn\":false},{\"capJavaField\":\"RailwayState\",\"columnComment\":\"列车状态\",\"columnId\":27,\"columnName\":\"railway_state\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-10 18:34:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"railwayState\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2025-07-11 09:24:51\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"admin\",\"functionName\":\"列车状态-（检票状态，运行状态）\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"railwayticket\",\"options\":\"{\\\"parentMenuId\\\":1062}\",\"packageName\":\"com.rdisplay.railwayticket\",\"params\":{\"parentMenuId\":1062},\"parentMenuId\":1062,\"sub\":false,\"tableComment\":\"列车状态-（检票状态，运行状态）\",\"tableId\":8,\"tableName\":\"railway_state_ticket\",\"tplCategory\":\"crud\",\"tplWebType\":\"element-plus\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 16:57:10', 75);
INSERT INTO `sys_oper_log` VALUES (282, '代码生成', 8, 'com.rdisplay.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"railway_state_ticket\"}', NULL, 0, NULL, '2025-07-11 16:57:15', 296);
INSERT INTO `sys_oper_log` VALUES (283, '今日车次大屏', 1, 'com.rdisplay.railwaytoday.controller.RailwaytodayController.add()', 'POST', 1, 'admin', '研发部门', '/railwaytoday/railwaytoday', '127.0.0.1', '内网IP', '{\"depStation\":\"1\",\"id\":8,\"params\":{},\"plat\":1,\"startTime\":\"18:44\",\"stopTickTime\":\"18:46\",\"terStation\":\"1\",\"ticketNum\":1,\"trainNum\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 18:46:42', 261);
INSERT INTO `sys_oper_log` VALUES (284, '今日车次大屏', 2, 'com.rdisplay.railwaytoday.controller.RailwaytodayController.edit()', 'PUT', 1, 'admin', '研发部门', '/railwaytoday/railwaytoday', '127.0.0.1', '内网IP', '{\"depStation\":\"1\",\"id\":8,\"params\":{},\"plat\":1,\"startTime\":\"18:44:00\",\"stopTickTime\":\"18:46:00\",\"terStation\":\"1\",\"ticketNum\":1,\"trainNum\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 18:46:49', 21);
INSERT INTO `sys_oper_log` VALUES (285, '今日车次大屏', 2, 'com.rdisplay.railwaytoday.controller.RailwaytodayController.edit()', 'PUT', 1, 'admin', '研发部门', '/railwaytoday/railwaytoday', '127.0.0.1', '内网IP', '{\"depStation\":\"1\",\"id\":8,\"params\":{},\"plat\":1,\"startTime\":\"18:44:00\",\"state\":-1,\"stopTickTime\":\"18:46:00\",\"terStation\":\"1\",\"ticketNum\":1,\"trainNum\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 19:04:07', 73);
INSERT INTO `sys_oper_log` VALUES (286, '车站设备维护', 2, 'com.rdisplay.maintenance.controller.StationDeviceMaintenanceController.edit()', 'PUT', 1, 'admin', '研发部门', '/maintenance/maintenance', '127.0.0.1', '内网IP', '{\"attachment\":\"/profile/upload/2025/07/11/CR200J-J_20250711110822A002.png\",\"description\":\"日常保养\",\"deviceId\":1,\"logId\":1,\"maintenanceDate\":\"2025-07-16 03:00:00\",\"maintenanceType\":\"更换故障零件\",\"operator\":\"1\",\"params\":{},\"result\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-11 19:32:20', 81);
INSERT INTO `sys_oper_log` VALUES (287, '今日车次大屏', 2, 'com.rdisplay.railwaytoday.controller.RailwaytodayController.edit()', 'PUT', 1, 'admin', '研发部门', '/railwaytoday/railwaytoday', '127.0.0.1', '内网IP', '{\"depStation\":\"张家界西\",\"id\":2,\"params\":{},\"plat\":9,\"startTime\":\"11:35:00\",\"state\":1,\"stateTicket\":{\"params\":{},\"railwayState\":\"正在候车\"},\"stopTickTime\":\"11:30:00\",\"terStation\":\"长沙\",\"ticketNum\":2,\"trainNum\":\"D7455\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-14 09:18:34', 26);
INSERT INTO `sys_oper_log` VALUES (288, '今日车次大屏', 2, 'com.rdisplay.railwaytoday.controller.RailwaytodayController.edit()', 'PUT', 1, 'admin', '研发部门', '/railwaytoday/railwaytoday', '127.0.0.1', '内网IP', '{\"depStation\":\"张家界西\",\"id\":1,\"params\":{},\"plat\":4,\"startTime\":\"10:27:00\",\"state\":-1,\"stateTicket\":{\"params\":{},\"railwayState\":\"正在候车\"},\"stopTickTime\":\"10:20:00\",\"terStation\":\"北京西\",\"ticketNum\":1,\"trainNum\":\"G687\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-14 09:18:40', 14);
INSERT INTO `sys_oper_log` VALUES (289, '代码生成', 6, 'com.rdisplay.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"station_train_peo\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-14 09:21:19', 58);
INSERT INTO `sys_oper_log` VALUES (290, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"peo\",\"className\":\"StationTrainPeo\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"序号\",\"columnId\":74,\"columnName\":\"id\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-14 09:21:19\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TrainNum\",\"columnComment\":\"车次\",\"columnId\":75,\"columnName\":\"train_num\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-14 09:21:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"trainNum\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TTp\",\"columnComment\":\"上车人数\",\"columnId\":76,\"columnName\":\"t_tp\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-14 09:21:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"tTp\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DTp\",\"columnComment\":\"下车人数\",\"columnId\":77,\"columnName\":\"d_tp\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-14 09:21:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"dTp\",\"javaType\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-14 10:36:38', 65);
INSERT INTO `sys_oper_log` VALUES (291, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"peo\",\"className\":\"StationTrainPeo\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"序号\",\"columnId\":74,\"columnName\":\"id\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-14 09:21:19\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"updateTime\":\"2025-07-14 10:36:37\",\"usableColumn\":false},{\"capJavaField\":\"TrainNum\",\"columnComment\":\"车次\",\"columnId\":75,\"columnName\":\"train_num\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-14 09:21:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"trainNum\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"updateTime\":\"2025-07-14 10:36:37\",\"usableColumn\":false},{\"capJavaField\":\"TTp\",\"columnComment\":\"上车人数\",\"columnId\":76,\"columnName\":\"t_tp\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-14 09:21:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"tTp\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"updateTime\":\"2025-07-14 10:36:37\",\"usableColumn\":false},{\"capJavaField\":\"DTp\",\"columnComment\":\"下车人数\",\"columnId\":77,\"columnName\":\"d_tp\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-14 09:21:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-14 10:37:25', 20);
INSERT INTO `sys_oper_log` VALUES (292, '代码生成', 8, 'com.rdisplay.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"station_train_peo\"}', NULL, 0, NULL, '2025-07-14 10:37:28', 348);
INSERT INTO `sys_oper_log` VALUES (293, '菜单管理', 2, 'com.rdisplay.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"peo/peo/index\",\"createTime\":\"2025-07-14 10:39:32\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1114,\"menuName\":\"车站今日列车客流\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":1062,\"path\":\"peo\",\"perms\":\"peo:peo:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-14 13:13:20', 40);
INSERT INTO `sys_oper_log` VALUES (294, '菜单管理', 2, 'com.rdisplay.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"peo/peo/index\",\"createTime\":\"2025-07-14 10:39:32\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1114,\"menuName\":\"今日列车客流\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":1062,\"path\":\"peo\",\"perms\":\"peo:peo:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-14 13:13:47', 10);
INSERT INTO `sys_oper_log` VALUES (295, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"type\",\"className\":\"StationDeviceType\",\"columns\":[{\"capJavaField\":\"StationDeviceId\",\"columnComment\":\"设备类型编号\",\"columnId\":72,\"columnName\":\"station_device_id\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 11:41:23\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationDeviceId\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"updateTime\":\"2025-07-11 11:46:42\",\"usableColumn\":false},{\"capJavaField\":\"StationDeviceName\",\"columnComment\":\"设备类型名\",\"columnId\":73,\"columnName\":\"station_device_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 11:41:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationDeviceName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"updateTime\":\"2025-07-11 11:46:42\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"admin\",\"functionName\":\"设备类型字段\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"DeviceType\",\"options\":\"{\\\"parentMenuId\\\":0}\",\"packageName\":\"com.rdisplay.DeviceType\",\"params\":{\"parentMenuId\":0},\"parentMenuId\":0,\"sub\":false,\"tableComment\":\"设备类型字段\",\"tableId\":14,\"tableName\":\"station_device_type\",\"tplCategory\":\"crud\",\"tplWebType\":\"element-plus\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-14 13:16:03', 58);
INSERT INTO `sys_oper_log` VALUES (296, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"result\",\"className\":\"StationDeviceResult\",\"columns\":[{\"capJavaField\":\"StationDeviceResultId\",\"columnComment\":\"状态编码\",\"columnId\":70,\"columnName\":\"station_device_result_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 11:41:23\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationDeviceResultId\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2025-07-11 11:45:02\",\"usableColumn\":false},{\"capJavaField\":\"StationDeviceResult\",\"columnComment\":\"维护状态\",\"columnId\":71,\"columnName\":\"station_device_result\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-11 11:41:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationDeviceResult\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2025-07-11 11:45:02\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"admin\",\"functionName\":\"车站设备维修处理状态\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"deviceresult\",\"options\":\"{\\\"parentMenuId\\\":0}\",\"packageName\":\"com.rdisplay.deviceresult\",\"params\":{\"parentMenuId\":0},\"parentMenuId\":0,\"sub\":false,\"tableComment\":\"车站设备维修处理状态\",\"tableId\":13,\"tableName\":\"station_device_result\",\"tplCategory\":\"crud\",\"tplWebType\":\"element-plus\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-14 13:16:22', 14);
INSERT INTO `sys_oper_log` VALUES (297, '代码生成', 8, 'com.rdisplay.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"station_device_type\"}', NULL, 0, NULL, '2025-07-14 13:16:26', 56);
INSERT INTO `sys_oper_log` VALUES (298, '代码生成', 8, 'com.rdisplay.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"station_device_result\"}', NULL, 0, NULL, '2025-07-14 13:18:16', 32);
INSERT INTO `sys_oper_log` VALUES (299, '车站设备', 2, 'com.rdisplay.device.controller.StationDeviceController.edit()', 'PUT', 1, 'admin', '研发部门', '/device/device', '127.0.0.1', '内网IP', '{\"brand\":\"xxxx\",\"createTime\":\"2025-07-11 10:08:25\",\"deviceId\":1,\"deviceName\":\"17A检票口1号闸机\",\"deviceType\":1,\"installDate\":\"2020-07-13\",\"lastMaintenanceDate\":\"2025-07-16\",\"location\":\"张家界西17A检票口处\",\"model\":\"TD122311\",\"nextMaintenanceDate\":\"2025-07-31\",\"params\":{},\"station\":{\"params\":{},\"stationName\":\"张家界西\"},\"stationDeviceType\":{\"params\":{},\"stationDeviceName\":\"检票闸机\"},\"stationNum\":2,\"status\":\"运行正常\",\"updateTime\":\"2025-07-14 14:21:36\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-14 14:21:37', 67);
INSERT INTO `sys_oper_log` VALUES (300, '车站设备', 2, 'com.rdisplay.device.controller.StationDeviceController.edit()', 'PUT', 1, 'admin', '研发部门', '/device/device', '127.0.0.1', '内网IP', '{\"brand\":\"xxxx\",\"createTime\":\"2025-07-11 10:08:25\",\"deviceId\":1,\"deviceName\":\"17A检票口1号闸机\",\"deviceType\":1,\"installDate\":\"2020-07-13\",\"lastMaintenanceDate\":\"2025-07-16\",\"location\":\"张家界西17A检票口处\",\"model\":\"TD122311\",\"nextMaintenanceDate\":\"2025-07-31\",\"params\":{},\"station\":{\"params\":{},\"stationName\":\"长沙\"},\"stationDeviceType\":{\"params\":{},\"stationDeviceName\":\"检票闸机\"},\"stationNum\":1,\"status\":\"运行正常\",\"updateTime\":\"2025-07-14 14:21:41\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-14 14:21:41', 8);
INSERT INTO `sys_oper_log` VALUES (301, '车站设备', 2, 'com.rdisplay.device.controller.StationDeviceController.edit()', 'PUT', 1, 'admin', '研发部门', '/device/device', '127.0.0.1', '内网IP', '{\"brand\":\"xxxx\",\"createTime\":\"2025-07-11 10:08:25\",\"deviceId\":1,\"deviceName\":\"17A检票口1号闸机\",\"deviceType\":3,\"installDate\":\"2020-07-13\",\"lastMaintenanceDate\":\"2025-07-16\",\"location\":\"张家界西17A检票口处\",\"model\":\"TD122311\",\"nextMaintenanceDate\":\"2025-07-31\",\"params\":{},\"station\":{\"params\":{},\"stationName\":\"张家界西\"},\"stationDeviceType\":{\"params\":{},\"stationDeviceName\":\"检票闸机\"},\"stationNum\":1,\"status\":\"运行正常\",\"updateTime\":\"2025-07-14 14:21:45\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-14 14:21:45', 8);
INSERT INTO `sys_oper_log` VALUES (302, '车站设备', 2, 'com.rdisplay.device.controller.StationDeviceController.edit()', 'PUT', 1, 'admin', '研发部门', '/device/device', '127.0.0.1', '内网IP', '{\"brand\":\"xxxx\",\"createTime\":\"2025-07-11 10:08:25\",\"deviceId\":1,\"deviceName\":\"17A检票口1号闸机\",\"deviceType\":1,\"installDate\":\"2020-07-13\",\"lastMaintenanceDate\":\"2025-07-16\",\"location\":\"张家界西17A检票口处\",\"model\":\"TD122311\",\"nextMaintenanceDate\":\"2025-07-31\",\"params\":{},\"station\":{\"params\":{},\"stationName\":\"张家界西\"},\"stationDeviceType\":{\"params\":{},\"stationDeviceName\":\"空调\"},\"stationNum\":1,\"status\":\"运行正常\",\"updateTime\":\"2025-07-14 14:21:57\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-14 14:21:57', 7);
INSERT INTO `sys_oper_log` VALUES (303, '车站设备', 1, 'com.rdisplay.device.controller.StationDeviceController.add()', 'POST', 1, 'admin', '研发部门', '/device/device', '127.0.0.1', '内网IP', '{\"brand\":\"xxxx\",\"createTime\":\"2025-07-14 14:24:03\",\"deviceName\":\"候车大厅3夹层商户1a空调\",\"deviceType\":3,\"installDate\":\"2024-02-14\",\"lastMaintenanceDate\":\"2025-03-11\",\"location\":\"候车大厅3楼1a商户\",\"model\":\"TW324B12\",\"nextMaintenanceDate\":\"2025-09-10\",\"params\":{},\"stationNum\":2,\"status\":\"运行正常\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-14 14:24:03', 8);
INSERT INTO `sys_oper_log` VALUES (304, '车站设备维护', 2, 'com.rdisplay.maintenance.controller.StationDeviceMaintenanceController.edit()', 'PUT', 1, 'admin', '研发部门', '/maintenance/maintenance', '127.0.0.1', '内网IP', '{\"attachment\":\"/profile/upload/2025/07/11/CR200J-J_20250711110822A002.png\",\"description\":\"日常保养\",\"deviceId\":1,\"logId\":1,\"maintenanceDate\":\"2025-07-16 03:00:00\",\"maintenanceType\":\"更换故障零件\",\"operator\":\"1\",\"params\":{},\"result\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-14 14:41:01', 27);
INSERT INTO `sys_oper_log` VALUES (305, '车站设备维护', 1, 'com.rdisplay.maintenance.controller.StationDeviceMaintenanceController.add()', 'POST', 1, 'admin', '研发部门', '/maintenance/maintenance', '127.0.0.1', '内网IP', '{\"attachment\":\"/profile/upload/2025/07/14/CR400BF-C-5162_20250714144830A001.png\",\"description\":\"核心零件损坏\",\"deviceId\":3,\"maintenanceDate\":\"2025-07-16 03:32:00\",\"maintenanceType\":\"报障维修\",\"operator\":\"张三\",\"params\":{},\"result\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-14 14:48:32', 153);
INSERT INTO `sys_oper_log` VALUES (306, '车站设备', 2, 'com.rdisplay.device.controller.StationDeviceController.edit()', 'PUT', 1, 'admin', '研发部门', '/device/device', '127.0.0.1', '内网IP', '{\"brand\":\"xxxx\",\"createTime\":\"2025-07-14 14:24:04\",\"deviceId\":2,\"deviceName\":\"长沙南站候车大厅3夹层商户1a空调\",\"deviceType\":3,\"installDate\":\"2024-02-14\",\"lastMaintenanceDate\":\"2025-03-11\",\"location\":\"候车大厅3楼1a商户\",\"model\":\"TW324B12\",\"nextMaintenanceDate\":\"2025-09-10\",\"params\":{},\"station\":{\"params\":{},\"stationName\":\"长沙\"},\"stationDeviceType\":{\"params\":{},\"stationDeviceName\":\"空调\"},\"stationNum\":2,\"status\":\"运行正常\",\"updateTime\":\"2025-07-14 14:49:51\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-14 14:49:51', 26);
INSERT INTO `sys_oper_log` VALUES (307, '车站设备', 2, 'com.rdisplay.device.controller.StationDeviceController.edit()', 'PUT', 1, 'admin', '研发部门', '/device/device', '127.0.0.1', '内网IP', '{\"brand\":\"xxxx\",\"createTime\":\"2025-07-14 14:24:04\",\"deviceId\":2,\"deviceName\":\"长沙南站候车大厅3夹层商户1a空调\",\"deviceType\":3,\"installDate\":\"2024-02-14\",\"lastMaintenanceDate\":\"2025-03-11\",\"location\":\"候车大厅3楼1a商户\",\"model\":\"TW324B12\",\"nextMaintenanceDate\":\"2025-09-10\",\"params\":{},\"station\":{\"params\":{},\"stationName\":\"长沙\"},\"stationDeviceType\":{\"params\":{},\"stationDeviceName\":\"空调\"},\"stationNum\":2,\"status\":\"运行正常\",\"updateTime\":\"2025-07-14 14:49:56\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-14 14:49:56', 8);
INSERT INTO `sys_oper_log` VALUES (308, '车站设备', 2, 'com.rdisplay.device.controller.StationDeviceController.edit()', 'PUT', 1, 'admin', '研发部门', '/device/device', '127.0.0.1', '内网IP', '{\"brand\":\"xxxx\",\"createTime\":\"2025-07-14 14:24:04\",\"deviceId\":2,\"deviceName\":\"候车大厅3夹层商户1a空调\",\"deviceType\":3,\"installDate\":\"2024-02-14\",\"lastMaintenanceDate\":\"2025-03-11\",\"location\":\"长沙南站候车大厅3楼1a商户\",\"model\":\"TW324B12\",\"nextMaintenanceDate\":\"2025-09-10\",\"params\":{},\"station\":{\"params\":{},\"stationName\":\"长沙\"},\"stationDeviceType\":{\"params\":{},\"stationDeviceName\":\"空调\"},\"stationNum\":2,\"status\":\"运行正常\",\"updateTime\":\"2025-07-14 14:50:11\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-14 14:50:11', 10);
INSERT INTO `sys_oper_log` VALUES (309, '车站设备', 2, 'com.rdisplay.device.controller.StationDeviceController.edit()', 'PUT', 1, 'admin', '研发部门', '/device/device', '127.0.0.1', '内网IP', '{\"brand\":\"xxxx\",\"createTime\":\"2025-07-14 14:24:04\",\"deviceId\":2,\"deviceName\":\"候车大厅3夹层商户1a空调\",\"deviceType\":3,\"installDate\":\"2024-02-14\",\"lastMaintenanceDate\":\"2025-03-11\",\"location\":\"长沙站候车大厅3楼1a商户\",\"model\":\"TW324B12\",\"nextMaintenanceDate\":\"2025-09-10\",\"params\":{},\"station\":{\"params\":{},\"stationName\":\"长沙\"},\"stationDeviceType\":{\"params\":{},\"stationDeviceName\":\"空调\"},\"stationNum\":2,\"status\":\"运行正常\",\"updateTime\":\"2025-07-14 14:50:17\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-14 14:50:17', 12);
INSERT INTO `sys_oper_log` VALUES (310, '车站发送人数', 2, 'com.rdisplay.stationmsg.controller.StationMsgController.edit()', 'PUT', 1, 'admin', '研发部门', '/stationman/stationmsg', '127.0.0.1', '内网IP', '{\"arrivePeop\":15300,\"id\":1,\"params\":{},\"sendPeop\":15000,\"station\":{\"params\":{},\"stationName\":\"张家界西\"},\"stationNum\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-14 16:08:35', 78);
INSERT INTO `sys_oper_log` VALUES (311, '车站发送人数', 2, 'com.rdisplay.stationmsg.controller.StationMsgController.edit()', 'PUT', 1, 'admin', '研发部门', '/stationman/stationmsg', '127.0.0.1', '内网IP', '{\"arrivePeop\":32578,\"id\":1,\"params\":{},\"sendPeop\":15000,\"station\":{\"params\":{},\"stationName\":\"张家界西\"},\"stationNum\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-14 16:09:24', 13);
INSERT INTO `sys_oper_log` VALUES (312, '代码生成', 6, 'com.rdisplay.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"railwaymsg\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-14 16:44:06', 132);
INSERT INTO `sys_oper_log` VALUES (313, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"railwayplatmsg\",\"className\":\"Railwaymsg\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":79,\"columnName\":\"id\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-14 16:44:06\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":16,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TrainNum\",\"columnComment\":\"车次\",\"columnId\":80,\"columnName\":\"train_num\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-14 16:44:06\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"trainNum\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":16,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DepStation\",\"columnComment\":\"始发站\",\"columnId\":81,\"columnName\":\"dep_station\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-14 16:44:06\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"depStation\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":16,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TerStation\",\"columnComment\":\"终到站\",\"columnId\":82,\"columnName\":\"ter_station\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-14 16:44:06\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaFi', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-14 16:46:10', 48);
INSERT INTO `sys_oper_log` VALUES (314, '代码生成', 8, 'com.rdisplay.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"railwaymsg\"}', NULL, 0, NULL, '2025-07-14 16:46:15', 317);
INSERT INTO `sys_oper_log` VALUES (315, '检票口列车信息', 2, 'com.rdisplay.railwayplatmsg.controller.RailwaymsgController.edit()', 'PUT', 1, 'admin', '研发部门', '/railwayplatmsg/railwayplatmsg', '127.0.0.1', '内网IP', '{\"depStation\":\"张家界西\",\"id\":1,\"params\":{},\"plat\":13,\"startTime\":\"15:31:00\",\"state\":1,\"stateTicket\":{\"params\":{},\"railwayState\":\"正在候车\"},\"terStation\":\"长沙\",\"trainNum\":\"G5677\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-14 17:17:03', 60);
INSERT INTO `sys_oper_log` VALUES (316, '检票口列车信息', 2, 'com.rdisplay.railwayplatmsg.controller.RailwaymsgController.edit()', 'PUT', 1, 'admin', '研发部门', '/railwayplatmsg/railwayplatmsg', '127.0.0.1', '内网IP', '{\"depStation\":\"张家界西\",\"id\":1,\"params\":{},\"plat\":13,\"startTime\":\"15:31:00\",\"state\":2,\"stateTicket\":{\"params\":{},\"railwayState\":\"正在检票\"},\"terStation\":\"长沙\",\"trainNum\":\"G5677\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-14 17:17:07', 7);
INSERT INTO `sys_oper_log` VALUES (317, '检票口列车信息', 5, 'com.rdisplay.railwayplatmsg.controller.RailwaymsgController.export()', 'POST', 1, 'admin', '研发部门', '/railwayplatmsg/railwayplatmsg/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2025-07-14 17:17:12', 892);
INSERT INTO `sys_oper_log` VALUES (318, '车站信息管理', 5, 'com.rdisplay.stationman.controller.StationController.export()', 'POST', 1, 'admin', '研发部门', '/stationman/station/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2025-07-14 17:20:08', 114);
INSERT INTO `sys_oper_log` VALUES (319, '检票口列车信息', 5, 'com.rdisplay.railwayplatmsg.controller.RailwaymsgController.export()', 'POST', 1, 'admin', '研发部门', '/railwayplatmsg/railwayplatmsg/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2025-07-14 17:21:01', 34);
INSERT INTO `sys_oper_log` VALUES (320, '检票口列车信息', 5, 'com.rdisplay.railwayplatmsg.controller.RailwaymsgController.export()', 'POST', 1, 'admin', '研发部门', '/railwayplatmsg/railwayplatmsg/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2025-07-14 17:22:25', 985);
INSERT INTO `sys_oper_log` VALUES (321, '车站设备', 5, 'com.rdisplay.device.controller.StationDeviceController.export()', 'POST', 1, 'admin', '研发部门', '/device/device/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2025-07-15 09:41:03', 817);
INSERT INTO `sys_oper_log` VALUES (322, '车站信息管理', 5, 'com.rdisplay.stationman.controller.StationController.export()', 'POST', 1, 'admin', '研发部门', '/stationman/station/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2025-07-15 09:42:49', 52);
INSERT INTO `sys_oper_log` VALUES (323, '车站信息管理', 5, 'com.rdisplay.stationman.controller.StationController.export()', 'POST', 1, 'admin', '研发部门', '/stationman/station/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2025-07-15 09:43:26', 45);
INSERT INTO `sys_oper_log` VALUES (324, '今日车次大屏', 5, 'com.rdisplay.railwaytoday.controller.RailwaytodayController.export()', 'POST', 1, 'admin', '研发部门', '/railwaytoday/railwaytoday/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2025-07-15 09:43:57', 38);
INSERT INTO `sys_oper_log` VALUES (325, '今日车次大屏', 5, 'com.rdisplay.railwaytoday.controller.RailwaytodayController.export()', 'POST', 1, 'admin', '研发部门', '/railwaytoday/railwaytoday/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2025-07-15 09:45:14', 39);
INSERT INTO `sys_oper_log` VALUES (326, '今日车次大屏', 5, 'com.rdisplay.railwaytoday.controller.RailwaytodayController.export()', 'POST', 1, 'admin', '研发部门', '/railwaytoday/railwaytoday/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2025-07-15 09:48:08', 49);
INSERT INTO `sys_oper_log` VALUES (327, '车站信息管理', 1, 'com.rdisplay.stationman.controller.StationController.add()', 'POST', 1, 'admin', '研发部门', '/stationman/station', '127.0.0.1', '内网IP', '{\"params\":{},\"sName\":\"IOQ\",\"stationGrade\":0,\"stationName\":\"深圳北\",\"stationNum\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-15 09:55:42', 21);
INSERT INTO `sys_oper_log` VALUES (328, '车站信息管理', 1, 'com.rdisplay.stationman.controller.StationController.add()', 'POST', 1, 'admin', '研发部门', '/stationman/station', '127.0.0.1', '内网IP', '{\"params\":{},\"sName\":\"IZQ\",\"stationGrade\":0,\"stationName\":\"广州南\",\"stationNum\":4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-15 09:56:22', 11);
INSERT INTO `sys_oper_log` VALUES (329, '车站信息管理', 1, 'com.rdisplay.stationman.controller.StationController.add()', 'POST', 1, 'admin', '研发部门', '/stationman/station', '127.0.0.1', '内网IP', '{\"params\":{},\"sName\":\"ZAQ\",\"stationGrade\":2,\"stationName\":\"株洲西\",\"stationNum\":5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-15 09:57:30', 10);
INSERT INTO `sys_oper_log` VALUES (330, '车站信息管理', 1, 'com.rdisplay.stationman.controller.StationController.add()', 'POST', 1, 'admin', '研发部门', '/stationman/station', '127.0.0.1', '内网IP', '{\"params\":{},\"sName\":\"NZQ\",\"stationGrade\":1,\"stationName\":\"福田\",\"stationNum\":6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-15 09:58:02', 6);
INSERT INTO `sys_oper_log` VALUES (331, '车站信息管理', 1, 'com.rdisplay.stationman.controller.StationController.add()', 'POST', 1, 'admin', '研发部门', '/stationman/station', '127.0.0.1', '内网IP', '{\"params\":{},\"sName\":\"XJA\",\"stationGrade\":0,\"stationName\":\"西九龙\",\"stationNum\":7}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-15 09:58:29', 5);
INSERT INTO `sys_oper_log` VALUES (332, '车站发送人数', 1, 'com.rdisplay.stationmsg.controller.StationMsgController.add()', 'POST', 1, 'admin', '研发部门', '/stationman/stationmsg', '127.0.0.1', '内网IP', '{\"arrivePeop\":21000,\"id\":3,\"params\":{},\"sendPeop\":22500,\"stationNum\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-15 09:58:55', 11);
INSERT INTO `sys_oper_log` VALUES (333, '车站发送人数', 1, 'com.rdisplay.stationmsg.controller.StationMsgController.add()', 'POST', 1, 'admin', '研发部门', '/stationman/stationmsg', '127.0.0.1', '内网IP', '{\"arrivePeop\":20242,\"id\":4,\"params\":{},\"sendPeop\":23032,\"stationNum\":4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-15 09:59:15', 7);
INSERT INTO `sys_oper_log` VALUES (334, '车站发送人数', 1, 'com.rdisplay.stationmsg.controller.StationMsgController.add()', 'POST', 1, 'admin', '研发部门', '/stationman/stationmsg', '127.0.0.1', '内网IP', '{\"arrivePeop\":9021,\"id\":5,\"params\":{},\"sendPeop\":9810,\"stationNum\":5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-15 09:59:37', 20);
INSERT INTO `sys_oper_log` VALUES (335, '车站发送人数', 1, 'com.rdisplay.stationmsg.controller.StationMsgController.add()', 'POST', 1, 'admin', '研发部门', '/stationman/stationmsg', '127.0.0.1', '内网IP', '{\"arrivePeop\":8849,\"id\":6,\"params\":{},\"sendPeop\":8957,\"stationNum\":6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-15 09:59:53', 8);
INSERT INTO `sys_oper_log` VALUES (336, '车站发送人数', 1, 'com.rdisplay.stationmsg.controller.StationMsgController.add()', 'POST', 1, 'admin', '研发部门', '/stationman/stationmsg', '127.0.0.1', '内网IP', '{\"arrivePeop\":21485,\"id\":7,\"params\":{},\"sendPeop\":22495,\"stationNum\":7}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-15 10:00:09', 10);
INSERT INTO `sys_oper_log` VALUES (337, '代码生成', 2, 'com.rdisplay.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"garde\",\"className\":\"StationGarde\",\"columns\":[{\"capJavaField\":\"StationGardeNum\",\"columnId\":15,\"columnName\":\"station_garde_num\",\"columnType\":\"int(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-09 15:00:33\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationGardeNum\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StationGarde\",\"columnId\":16,\"columnName\":\"station_garde\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-07-09 15:00:33\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"stationGarde\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"admin\",\"functionName\":\"车站等级\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"stationman\",\"options\":\"{}\",\"packageName\":\"com.rdisplay.stationman\",\"params\":{},\"sub\":false,\"tableComment\":\"车站等级\",\"tableId\":5,\"tableName\":\"station_garde\",\"tplCategory\":\"crud\",\"tplWebType\":\"element-plus\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-15 16:15:10', 69);
INSERT INTO `sys_oper_log` VALUES (338, '代码生成', 8, 'com.rdisplay.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"station_garde\"}', NULL, 0, NULL, '2025-07-15 16:15:32', 275);
INSERT INTO `sys_oper_log` VALUES (339, '车站信息管理', 2, 'com.rdisplay.stationman.controller.StationController.edit()', 'PUT', 1, 'admin', '研发部门', '/stationman/station', '127.0.0.1', '内网IP', '{\"params\":{},\"sName\":\"ZAQ\",\"stationGarde\":{\"params\":{},\"stationGarde\":\"二等站\"},\"stationGardeNum\":3,\"stationName\":\"株洲西\",\"stationNum\":5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-15 16:33:27', 34);
INSERT INTO `sys_oper_log` VALUES (340, '车站信息管理', 2, 'com.rdisplay.stationman.controller.StationController.edit()', 'PUT', 1, 'admin', '研发部门', '/stationman/station', '127.0.0.1', '内网IP', '{\"params\":{},\"sName\":\"ZAQ\",\"stationGarde\":{\"params\":{},\"stationGarde\":\"三等站\"},\"stationGardeNum\":2,\"stationName\":\"株洲西\",\"stationNum\":5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-15 16:33:31', 9);
INSERT INTO `sys_oper_log` VALUES (341, '车站信息管理', 1, 'com.rdisplay.stationman.controller.StationController.add()', 'POST', 1, 'admin', '研发部门', '/stationman/station', '127.0.0.1', '内网IP', '{\"params\":{},\"sName\":\"HVQ\",\"stationGardeNum\":2,\"stationName\":\"衡阳东\",\"stationNum\":8}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-15 16:34:30', 12);
INSERT INTO `sys_oper_log` VALUES (342, '角色管理', 2, 'com.rdisplay.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2025-06-30 16:39:44\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1061,1062,1063,1077,1090,1091,1092,1093,1094,1095,1076],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-21 10:58:34', 39);
INSERT INTO `sys_oper_log` VALUES (343, '角色管理', 2, 'com.rdisplay.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2025-06-30 16:39:44\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1061,1064,1070,1084,1120,1062,1108,1114,1063,1096,1102,1077,1090,1065,1066,1069,1071,1072,1075,1085,1086,1089,1121,1122,1125,1109,1110,1113,1115,1116,1119,1097,1098,1101,1103,1104,1107,1091,1092,1095,1076],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-21 11:00:01', 31);
INSERT INTO `sys_oper_log` VALUES (344, '车站今日列车客流信息', 1, 'com.rdisplay.peo.controller.StationTrainPeoController.add()', 'POST', 1, 'admin', '研发部门', '/peo/peo', '127.0.0.1', '内网IP', '{\"dTp\":545,\"id\":2,\"params\":{},\"stationNum\":1,\"tTp\":0,\"trainNum\":\"C7766\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-21 11:07:25', 14);
INSERT INTO `sys_oper_log` VALUES (345, '车站今日列车客流信息', 1, 'com.rdisplay.peo.controller.StationTrainPeoController.add()', 'POST', 1, 'admin', '研发部门', '/peo/peo', '127.0.0.1', '内网IP', '{\"dTp\":253,\"id\":3,\"params\":{},\"stationNum\":1,\"tTp\":543,\"trainNum\":\"G2377\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-21 11:08:00', 9);
INSERT INTO `sys_oper_log` VALUES (346, '车站今日列车客流信息', 1, 'com.rdisplay.peo.controller.StationTrainPeoController.add()', 'POST', 1, 'admin', '研发部门', '/peo/peo', '127.0.0.1', '内网IP', '{\"dTp\":325,\"id\":4,\"params\":{},\"stationNum\":1,\"tTp\":453,\"trainNum\":\"G7765\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-21 11:08:35', 19);
INSERT INTO `sys_oper_log` VALUES (347, '车站今日列车客流信息', 1, 'com.rdisplay.peo.controller.StationTrainPeoController.add()', 'POST', 1, 'admin', '研发部门', '/peo/peo', '127.0.0.1', '内网IP', '{\"dTp\":332,\"id\":5,\"params\":{},\"stationNum\":1,\"tTp\":452,\"trainNum\":\"G7655\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-21 11:08:52', 9);
INSERT INTO `sys_oper_log` VALUES (348, '车站今日列车客流信息', 1, 'com.rdisplay.peo.controller.StationTrainPeoController.add()', 'POST', 1, 'admin', '研发部门', '/peo/peo', '127.0.0.1', '内网IP', '{\"dTp\":352,\"id\":6,\"params\":{},\"stationNum\":1,\"tTp\":436,\"trainNum\":\"G474\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-21 11:09:08', 10);
INSERT INTO `sys_oper_log` VALUES (349, '车站今日列车客流信息', 1, 'com.rdisplay.peo.controller.StationTrainPeoController.add()', 'POST', 1, 'admin', '研发部门', '/peo/peo', '127.0.0.1', '内网IP', '{\"dTp\":224,\"id\":7,\"params\":{},\"stationNum\":1,\"tTp\":436,\"trainNum\":\"G4614\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-21 11:09:31', 4);
INSERT INTO `sys_oper_log` VALUES (350, '车站设备维护', 1, 'com.rdisplay.maintenance.controller.StationDeviceMaintenanceController.add()', 'POST', 1, 'admin', '研发部门', '/maintenance/maintenance', '127.0.0.1', '内网IP', '{\"attachment\":\"/profile/upload/2025/07/21/KCIC400AF-CIT_20250721112910A002.png\",\"description\":\"日常保养\",\"maintenanceDate\":\"2025-07-23 02:16:00\",\"maintenanceType\":\"日常保养\",\"operator\":\"王五\",\"params\":{},\"result\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-21 11:29:12', 14);
INSERT INTO `sys_oper_log` VALUES (351, '角色管理', 2, 'com.rdisplay.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2025-06-30 16:39:44\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,107,1061,1064,1070,1084,1120,1062,1108,1114,1063,1096,1102,1077,1090,1035,1036,1065,1066,1069,1071,1072,1075,1085,1086,1089,1121,1122,1125,1109,1110,1113,1115,1116,1119,1097,1098,1101,1103,1104,1107,1091,1092,1095,1076],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-07-21 11:32:16', 27);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2025-06-30 16:39:44', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2025-06-30 16:39:44', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2025-06-30 16:39:44', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2025-06-30 16:39:44', 'admin', '2025-07-21 11:32:16', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1061);
INSERT INTO `sys_role_menu` VALUES (2, 1062);
INSERT INTO `sys_role_menu` VALUES (2, 1063);
INSERT INTO `sys_role_menu` VALUES (2, 1064);
INSERT INTO `sys_role_menu` VALUES (2, 1065);
INSERT INTO `sys_role_menu` VALUES (2, 1066);
INSERT INTO `sys_role_menu` VALUES (2, 1069);
INSERT INTO `sys_role_menu` VALUES (2, 1070);
INSERT INTO `sys_role_menu` VALUES (2, 1071);
INSERT INTO `sys_role_menu` VALUES (2, 1072);
INSERT INTO `sys_role_menu` VALUES (2, 1075);
INSERT INTO `sys_role_menu` VALUES (2, 1076);
INSERT INTO `sys_role_menu` VALUES (2, 1077);
INSERT INTO `sys_role_menu` VALUES (2, 1084);
INSERT INTO `sys_role_menu` VALUES (2, 1085);
INSERT INTO `sys_role_menu` VALUES (2, 1086);
INSERT INTO `sys_role_menu` VALUES (2, 1089);
INSERT INTO `sys_role_menu` VALUES (2, 1090);
INSERT INTO `sys_role_menu` VALUES (2, 1091);
INSERT INTO `sys_role_menu` VALUES (2, 1092);
INSERT INTO `sys_role_menu` VALUES (2, 1095);
INSERT INTO `sys_role_menu` VALUES (2, 1096);
INSERT INTO `sys_role_menu` VALUES (2, 1097);
INSERT INTO `sys_role_menu` VALUES (2, 1098);
INSERT INTO `sys_role_menu` VALUES (2, 1101);
INSERT INTO `sys_role_menu` VALUES (2, 1102);
INSERT INTO `sys_role_menu` VALUES (2, 1103);
INSERT INTO `sys_role_menu` VALUES (2, 1104);
INSERT INTO `sys_role_menu` VALUES (2, 1107);
INSERT INTO `sys_role_menu` VALUES (2, 1108);
INSERT INTO `sys_role_menu` VALUES (2, 1109);
INSERT INTO `sys_role_menu` VALUES (2, 1110);
INSERT INTO `sys_role_menu` VALUES (2, 1113);
INSERT INTO `sys_role_menu` VALUES (2, 1114);
INSERT INTO `sys_role_menu` VALUES (2, 1115);
INSERT INTO `sys_role_menu` VALUES (2, 1116);
INSERT INTO `sys_role_menu` VALUES (2, 1119);
INSERT INTO `sys_role_menu` VALUES (2, 1120);
INSERT INTO `sys_role_menu` VALUES (2, 1121);
INSERT INTO `sys_role_menu` VALUES (2, 1122);
INSERT INTO `sys_role_menu` VALUES (2, 1125);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '账号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime NULL DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', 'admin', '00', 'ry@163.com', '15888888888', '0', '/profile/avatar/2025/07/11/CR400AF-J_20250711110513A001.png', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2025-07-21 11:31:42', '2025-06-30 16:39:44', 'admin', '2025-06-30 16:39:44', '', '2025-07-21 11:31:41', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2025-06-30 16:39:44', '2025-06-30 16:39:44', 'admin', '2025-06-30 16:39:44', '', NULL, '测试员');
INSERT INTO `sys_user` VALUES (100, 104, '11', '11', '00', '', '', '0', '', '$2a$10$nAgMsjXHK8mXiNJulVYOq.jKN13Yx7Cz7T6xeuJUjPy2t1SFFMnbC', '0', '0', '127.0.0.1', '2025-07-21 11:32:27', '2025-06-30 18:27:12', '', '2025-06-30 18:27:11', 'admin', '2025-07-21 11:32:26', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
INSERT INTO `sys_user_post` VALUES (100, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 2);

SET FOREIGN_KEY_CHECKS = 1;
