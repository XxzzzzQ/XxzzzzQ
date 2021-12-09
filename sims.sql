/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50646
 Source Host           : localhost:3306
 Source Schema         : sims

 Target Server Type    : MySQL
 Target Server Version : 50646
 File Encoding         : 65001

 Date: 28/05/2020 00:12:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
                          `a_id` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                          `a_password` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                          PRIMARY KEY (`a_id`) USING BTREE
) ENGINE = INNODB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', '123');

-- ----------------------------
-- Table structure for college_department_class
-- ----------------------------
DROP TABLE IF EXISTS `college_department_class`;
CREATE TABLE `college_department_class`  (
                                             `college` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                             `department` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                             `cclass` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                             PRIMARY KEY (`college`, `department`, `cclass`) USING BTREE
) ENGINE = INNODB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of college_department_class
-- ----------------------------
INSERT INTO `college_department_class` VALUES ('计算机学院', '高等物理学', '19网络工程3');
INSERT INTO `college_department_class` VALUES ('计算机学院', '高等数学', '19网络工程3');
INSERT INTO `college_department_class` VALUES ('计算机学院', '计算机网络', '19网络工程3');
INSERT INTO `college_department_class` VALUES ('计算机学院', '概率论', '19网络工程4');
INSERT INTO `college_department_class` VALUES ('材能学院', '材料成型', '19材料成型1');
INSERT INTO `college_department_class` VALUES ('材能学院', '物理化学', '19新媒体2');
INSERT INTO `college_department_class` VALUES ('自动化学院', '机械工程', '19机械1');
INSERT INTO `college_department_class` VALUES ('新闻学院', '新闻传播学', '19新闻2');

-- ----------------------------
-- Table structure for complaint
-- ----------------------------
DROP TABLE IF EXISTS `complaint`;
CREATE TABLE `complaint`  (
                              `id` INT(11) NOT NULL AUTO_INCREMENT,
                              `cdate` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                              `content` VARCHAR(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                              PRIMARY KEY (`id`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of complaint
-- ----------------------------
INSERT INTO `complaint` VALUES (1, '2021-12-01 17:40:17', '床前明月光');
INSERT INTO `complaint` VALUES (2, '2021-12-01 18:07:51', '疑是地上霜');
INSERT INTO `complaint` VALUES (3, '2021-12-01 18:09:33', '还行');
INSERT INTO `complaint` VALUES (8, '2021-12-01 18:16:24', '看着不错');
INSERT INTO `complaint` VALUES (25, '2021-12-02 21:05:26', 'insert一下');
INSERT INTO `complaint` VALUES (29, '2021-12-03 19:07:45', '？');
INSERT INTO `complaint` VALUES (40, '2021-12-05 22:41:34', 'djsajdofnsncoipahdagdoiagdao');
-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
                           `c_id` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                           `c_name` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                           `t_id` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                           `c_info` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                           PRIMARY KEY (`c_id`) USING BTREE,
                           INDEX `t_id`(`t_id`) USING BTREE,
                           CONSTRAINT `course_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `teacher` (`t_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = INNODB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('4401100', '基础数据挖掘', '12230214812047', '挖点数据kk8');
INSERT INTO `course` VALUES ('4401101', '网络安全', '41290475106', '学习如何用木马入侵');
INSERT INTO `course` VALUES ('4401111', '数据结构', '421542123206', '数据如何存储和使用');
INSERT INTO `course` VALUES ('4401121', '简明物理学', '9412414123205', '通识教育');
INSERT INTO `course` VALUES ('ye42124', '离散数学', '921472123205', '通识教育');

-- ----------------------------
-- Table structure for notify
-- ----------------------------
DROP TABLE IF EXISTS `notify`;
CREATE TABLE `notify`  (
                           `id` INT(11) NOT NULL AUTO_INCREMENT,
                           `notifyDate` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                           `notifyInfo` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                           PRIMARY KEY (`id`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of notify
-- ----------------------------
INSERT INTO `notify` VALUES (3, '2021-12-06 15:36:22', '不中');
INSERT INTO `notify` VALUES (4, '2021-12-06 15:36:22', '中！');
INSERT INTO `notify` VALUES (5, '2021-12-06 15:36:22', '开始测试一下新版本');
INSERT INTO `notify` VALUES (16, '2021-12-07 18:51:15', '这是4.24最新公告，仅供测试');
INSERT INTO `notify` VALUES (17, '2021-12-08 19:40:45', '延迟补偿一下');
INSERT INTO `notify` VALUES (18, '2021-12-08 19:42:40', '要死了');
INSERT INTO `notify` VALUES (22, '2021-12-08 20:34:00', '麻了');
INSERT INTO `notify` VALUES (23, '2021-12-08 20:42:31', 'free！');

-- ----------------------------
-- Table structure for photo
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo`  (
                          `id` INT(11) NOT NULL AUTO_INCREMENT,
                          `photo_id` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                          `photo_name` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0.jpg',
                          PRIMARY KEY (`id`) USING BTREE,
                          INDEX `photo_id`(`photo_id`) USING BTREE,
                          CONSTRAINT `photo_ibfk_1` FOREIGN KEY (`photo_id`) REFERENCES `student` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = INNODB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of photo
-- ----------------------------
INSERT INTO `photo` VALUES (10, '1812123206', '1812123206.jpg');
INSERT INTO `photo` VALUES (11, '1812123205', '1812123205.jpg');

-- ----------------------------
-- Table structure for select_course
-- ----------------------------
DROP TABLE IF EXISTS `select_course`;
CREATE TABLE `select_course`  (
                                  `s_id` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                  `c_id` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                  `score` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                  PRIMARY KEY (`s_id`, `c_id`) USING BTREE,
                                  INDEX `s_id`(`s_id`) USING BTREE,
                                  INDEX `c_id`(`c_id`) USING BTREE,
                                  CONSTRAINT `select_course_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `student` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE,
                                  CONSTRAINT `select_course_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `course` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = INNODB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of select_course
-- ----------------------------
INSERT INTO `select_course` VALUES ('1812123205', 'c1111', '70');
INSERT INTO `select_course` VALUES ('1812123205', 'c1113', '82');
INSERT INTO `select_course` VALUES ('1812123205', 'c1112', '56');
INSERT INTO `select_course` VALUES ('1812123206', 'c1111', '10');
INSERT INTO `select_course` VALUES ('1812123206', 'c1113', '62');
INSERT INTO `select_course` VALUES ('1812123206', 'c1112', '95');
INSERT INTO `select_course` VALUES ('1812365843', 'c1113', '60');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
                            `s_id` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                            `s_college` VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '未分配',
                            `s_department` VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '未分配',
                            `s_class` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '未分配',
                            `s_name` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                            `s_sex` VARCHAR(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                            `s_age` VARCHAR(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                            `s_address` VARCHAR(35) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                            `s_phone` VARCHAR(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                            `s_email` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                            `s_password` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '123',
                            PRIMARY KEY (`s_id`) USING BTREE
) ENGINE = INNODB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('2113535455', '计算机学院', '软件工程', '19软件1', '陈毅', '男', '21', '广东', '13626920469', '1296925659@qq.com', '123');
INSERT INTO `student` VALUES ('2113434556', '计算机学院', '网络工程', '19网工3', '西西比亚', '女', '21', '新疆', '13626925944', '1224525659@qq.com', '123');
INSERT INTO `student` VALUES ('2113456345', '信息工程学院', '信息安全', '19信安1', '张三', '男', '21', '福建', '13626925948', '1686925659@qq.com', '123');
INSERT INTO `student` VALUES ('2114457677', '信息工程学院', '信息安全', '19信安1', '李四', '男', '21', '福建', '13626820469', '1296598659@qq.com', '123');
INSERT INTO `student` VALUES ('2113453672', '信息工程学院', '信息安全', '19信安1', '上官怡蓝', '女', '21', '西藏', '13958220469', '1296577559@qq.com', '123');
INSERT INTO `student` VALUES ('2115688934', '自动化学院', '数学', '19数学1', '陈欣', '女', '20', '广州', '13659862469', '1296959559@qq.com', '123');
INSERT INTO `student` VALUES ('2117679344', '计算机学院', '软件工程', '19软件2', '李峰', '男', '20', '广州', '12984820469', '1292635659@qq.com', '123');
INSERT INTO `student` VALUES ('2114374858', '计算机学院', '软件工程', '19软件1', '吴善涛', '男', '20', '广州', '13666990469', '1334925659@qq.com', '123');
INSERT INTO `student` VALUES ('2117483849', '计算机学院', '软件工程', '19软件1', '吴双全', '男', '21', '广东', '13659662469', '3396925659@qq.com', '123');
INSERT INTO `student` VALUES ('2113859592', '计算机学院', '软件工程', '19软件3', '张怀洲', '男', '20', '广东', '13626926958', '2596966959@qq.com', '123');
INSERT INTO `student` VALUES ('2113589753', '计算机学院', '软件工程', '19新媒体1', '邓欣欣', '女', '20', '广东', '13436920469', '1519485659@qq.com', '123');
INSERT INTO `student` VALUES ('2114579347', '计算机学院', '软件工程', '19软件2', '王五', '男', '20', '广东', '13566920469', '12184925659@qq.com', '123');
INSERT INTO `student` VALUES ('2113599735', '计算机学院', '软件工程', '19新媒体1', '张碧华', '女', '21', '广东', '13596820469', '1296925559@qq.com', '123');
INSERT INTO `student` VALUES ('2114598485', '外国语学院', '商业英语', '19商英2', '刘福贵', '男', '20', '广东', '13592684569', '1291844659@qq.com', '555');
INSERT INTO `student` VALUES ('2114597833', '外国语学院', '商业英语', '19商英2', '李子柒', '女', '21', '福建', '13626559669', '1948164659@qq.com', '123');
-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
                            `t_id` VARCHAR(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                            `t_name` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                            `t_sex` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                            `t_education` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                            `t_title` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                            `t_password` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '123',
                            PRIMARY KEY (`t_id`) USING BTREE
) ENGINE = INNODB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('2519123205', '叶季华', '女', '硕士', '助教', '123');
INSERT INTO `teacher` VALUES ('2519123206', '陈龚', '男', '博士', '讲师', '123');

SET FOREIGN_KEY_CHECKS = 1;