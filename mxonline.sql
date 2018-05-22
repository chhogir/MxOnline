/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : mxonline

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 22/05/2018 14:18:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissions_0e939a4f`(`group_id`) USING BTREE,
  INDEX `auth_group_permissions_8373b171`(`permission_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  INDEX `auth_permission_417f1b1c`(`content_type_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 109 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (5, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (8, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (9, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (20, 'Can change 用户信息', 7, 'change_userprofile');
INSERT INTO `auth_permission` VALUES (19, 'Can add 用户信息', 7, 'add_userprofile');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (17, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (18, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (21, 'Can delete 用户信息', 7, 'delete_userprofile');
INSERT INTO `auth_permission` VALUES (22, 'Can add 邮箱验证码', 8, 'add_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (23, 'Can change 邮箱验证码', 8, 'change_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (24, 'Can delete 邮箱验证码', 8, 'delete_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (25, 'Can add 轮播图', 9, 'add_banner');
INSERT INTO `auth_permission` VALUES (26, 'Can change 轮播图', 9, 'change_banner');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 轮播图', 9, 'delete_banner');
INSERT INTO `auth_permission` VALUES (28, 'Can add 课程', 10, 'add_course');
INSERT INTO `auth_permission` VALUES (29, 'Can change 课程', 10, 'change_course');
INSERT INTO `auth_permission` VALUES (30, 'Can delete 课程', 10, 'delete_course');
INSERT INTO `auth_permission` VALUES (31, 'Can add 章节', 11, 'add_lesson');
INSERT INTO `auth_permission` VALUES (32, 'Can change 章节', 11, 'change_lesson');
INSERT INTO `auth_permission` VALUES (33, 'Can delete 章节', 11, 'delete_lesson');
INSERT INTO `auth_permission` VALUES (34, 'Can add 视频', 12, 'add_video');
INSERT INTO `auth_permission` VALUES (35, 'Can change 视频', 12, 'change_video');
INSERT INTO `auth_permission` VALUES (36, 'Can delete 视频', 12, 'delete_video');
INSERT INTO `auth_permission` VALUES (37, 'Can add 课程资源', 13, 'add_courseresource');
INSERT INTO `auth_permission` VALUES (38, 'Can change 课程资源', 13, 'change_courseresource');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 课程资源', 13, 'delete_courseresource');
INSERT INTO `auth_permission` VALUES (40, 'Can add 用户咨询', 14, 'add_userask');
INSERT INTO `auth_permission` VALUES (41, 'Can change 用户咨询', 14, 'change_userask');
INSERT INTO `auth_permission` VALUES (42, 'Can delete 用户咨询', 14, 'delete_userask');
INSERT INTO `auth_permission` VALUES (43, 'Can add 课程评论', 15, 'add_coursecomments');
INSERT INTO `auth_permission` VALUES (44, 'Can change 课程评论', 15, 'change_coursecomments');
INSERT INTO `auth_permission` VALUES (45, 'Can delete 课程评论', 15, 'delete_coursecomments');
INSERT INTO `auth_permission` VALUES (46, 'Can add 用户收藏', 16, 'add_userfavorite');
INSERT INTO `auth_permission` VALUES (47, 'Can change 用户收藏', 16, 'change_userfavorite');
INSERT INTO `auth_permission` VALUES (48, 'Can delete 用户收藏', 16, 'delete_userfavorite');
INSERT INTO `auth_permission` VALUES (49, 'Can add 用户消息', 17, 'add_usermessage');
INSERT INTO `auth_permission` VALUES (50, 'Can change 用户消息', 17, 'change_usermessage');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 用户消息', 17, 'delete_usermessage');
INSERT INTO `auth_permission` VALUES (52, 'Can add 用户课程', 18, 'add_usercourse');
INSERT INTO `auth_permission` VALUES (53, 'Can change 用户课程', 18, 'change_usercourse');
INSERT INTO `auth_permission` VALUES (54, 'Can delete 用户课程', 18, 'delete_usercourse');
INSERT INTO `auth_permission` VALUES (55, 'Can add 城市', 19, 'add_citydict');
INSERT INTO `auth_permission` VALUES (56, 'Can change 城市', 19, 'change_citydict');
INSERT INTO `auth_permission` VALUES (57, 'Can delete 城市', 19, 'delete_citydict');
INSERT INTO `auth_permission` VALUES (58, 'Can add 课程机构', 20, 'add_courseorg');
INSERT INTO `auth_permission` VALUES (59, 'Can change 课程机构', 20, 'change_courseorg');
INSERT INTO `auth_permission` VALUES (60, 'Can delete 课程机构', 20, 'delete_courseorg');
INSERT INTO `auth_permission` VALUES (61, 'Can add 课程机构', 21, 'add_teacher');
INSERT INTO `auth_permission` VALUES (62, 'Can change 课程机构', 21, 'change_teacher');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 课程机构', 21, 'delete_teacher');
INSERT INTO `auth_permission` VALUES (64, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (65, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (66, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (67, 'Can view 用户信息', 7, 'view_userprofile');
INSERT INTO `auth_permission` VALUES (68, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (69, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (70, 'Can view 邮箱验证码', 8, 'view_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (71, 'Can view 轮播图', 9, 'view_banner');
INSERT INTO `auth_permission` VALUES (72, 'Can view 课程', 10, 'view_course');
INSERT INTO `auth_permission` VALUES (73, 'Can view 章节', 11, 'view_lesson');
INSERT INTO `auth_permission` VALUES (74, 'Can view 视频', 12, 'view_video');
INSERT INTO `auth_permission` VALUES (75, 'Can view 课程资源', 13, 'view_courseresource');
INSERT INTO `auth_permission` VALUES (76, 'Can view 用户咨询', 14, 'view_userask');
INSERT INTO `auth_permission` VALUES (77, 'Can view 课程评论', 15, 'view_coursecomments');
INSERT INTO `auth_permission` VALUES (78, 'Can view 用户收藏', 16, 'view_userfavorite');
INSERT INTO `auth_permission` VALUES (79, 'Can view 用户消息', 17, 'view_usermessage');
INSERT INTO `auth_permission` VALUES (80, 'Can view 用户课程', 18, 'view_usercourse');
INSERT INTO `auth_permission` VALUES (81, 'Can view 城市', 19, 'view_citydict');
INSERT INTO `auth_permission` VALUES (82, 'Can view 课程机构', 20, 'view_courseorg');
INSERT INTO `auth_permission` VALUES (83, 'Can view 课程机构', 21, 'view_teacher');
INSERT INTO `auth_permission` VALUES (84, 'Can add Bookmark', 22, 'add_bookmark');
INSERT INTO `auth_permission` VALUES (85, 'Can change Bookmark', 22, 'change_bookmark');
INSERT INTO `auth_permission` VALUES (86, 'Can delete Bookmark', 22, 'delete_bookmark');
INSERT INTO `auth_permission` VALUES (87, 'Can add User Setting', 23, 'add_usersettings');
INSERT INTO `auth_permission` VALUES (88, 'Can change User Setting', 23, 'change_usersettings');
INSERT INTO `auth_permission` VALUES (89, 'Can delete User Setting', 23, 'delete_usersettings');
INSERT INTO `auth_permission` VALUES (90, 'Can add User Widget', 24, 'add_userwidget');
INSERT INTO `auth_permission` VALUES (91, 'Can change User Widget', 24, 'change_userwidget');
INSERT INTO `auth_permission` VALUES (92, 'Can delete User Widget', 24, 'delete_userwidget');
INSERT INTO `auth_permission` VALUES (93, 'Can view Bookmark', 22, 'view_bookmark');
INSERT INTO `auth_permission` VALUES (94, 'Can view User Setting', 23, 'view_usersettings');
INSERT INTO `auth_permission` VALUES (95, 'Can view User Widget', 24, 'view_userwidget');
INSERT INTO `auth_permission` VALUES (96, 'Can add log entry', 25, 'add_log');
INSERT INTO `auth_permission` VALUES (97, 'Can change log entry', 25, 'change_log');
INSERT INTO `auth_permission` VALUES (98, 'Can delete log entry', 25, 'delete_log');
INSERT INTO `auth_permission` VALUES (99, 'Can view log entry', 25, 'view_log');
INSERT INTO `auth_permission` VALUES (100, 'Can add captcha store', 26, 'add_captchastore');
INSERT INTO `auth_permission` VALUES (101, 'Can change captcha store', 26, 'change_captchastore');
INSERT INTO `auth_permission` VALUES (102, 'Can delete captcha store', 26, 'delete_captchastore');
INSERT INTO `auth_permission` VALUES (103, 'Can view captcha store', 26, 'view_captchastore');
INSERT INTO `auth_permission` VALUES (105, 'Can add 轮播课程', 10, 'add_bannercourse');
INSERT INTO `auth_permission` VALUES (106, 'Can change 轮播课程', 10, 'change_bannercourse');
INSERT INTO `auth_permission` VALUES (107, 'Can delete 轮播课程', 10, 'delete_bannercourse');
INSERT INTO `auth_permission` VALUES (108, 'Can view 轮播课程', 28, 'view_bannercourse');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_e8701ad4`(`user_id`) USING BTREE,
  INDEX `auth_user_groups_0e939a4f`(`group_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permissions_e8701ad4`(`user_id`) USING BTREE,
  INDEX `auth_user_user_permissions_8373b171`(`permission_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `response` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hashkey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `hashkey`(`hashkey`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES (41, 'TQHN', 'tqhn', '8f847033cec3a7ab77f6193b30bbebbcd20d196b', '2018-05-17 19:09:58.418000');
INSERT INTO `captcha_captchastore` VALUES (40, 'XJDA', 'xjda', 'ce333bbfaeb15f64e621cef75958ecba9c0e9ba9', '2018-05-17 19:09:28.995000');
INSERT INTO `captcha_captchastore` VALUES (43, 'SBLY', 'sbly', '44047b056f85378f4e59a567e92536c57fb6b283', '2018-05-17 19:17:32.394000');
INSERT INTO `captcha_captchastore` VALUES (44, 'AJMR', 'ajmr', '4bae2cab8975c829e5b1449b278049ff553f1ed4', '2018-05-17 19:18:23.409000');
INSERT INTO `captcha_captchastore` VALUES (45, 'JKXE', 'jkxe', '4e31eb67aa89529cce7ddd06a081910041d78418', '2018-05-17 19:19:53.115000');

-- ----------------------------
-- Table structure for courses_course
-- ----------------------------
DROP TABLE IF EXISTS `courses_course`;
CREATE TABLE `courses_course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `degree` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `learn_times` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_org_id` int(11) NULL DEFAULT NULL,
  `category` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teacher_id` int(11) NULL DEFAULT NULL,
  `teacher_tell` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `youneed_konw` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_course_11456c5a`(`course_org_id`) USING BTREE,
  INDEX `courses_course_d9614d40`(`teacher_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses_course
-- ----------------------------
INSERT INTO `courses_course` VALUES (1, 'Django 入门', 'Django 入门', 'Django 入门', 'cj', 120, 1000, 12131, 'courses/2018/05/mysql.jpg', 33, '2018-05-20 19:17:00.000000', 1, '后端开发', 'Django', 1, '“苟日新,日日新,又日新。”在国际军事竞争日益激烈的形势下，唯创新者胜。谁牵住了科技创新这个牛鼻子，谁走好了科技创新这步先手棋，谁就能占领先机、赢得优势。5月16日，习近平视察军事科学院时指出：“军事科学研究具有很强的探索性，要把创新摆在更加突出的位置，做好战略谋划和顶层设计，加强军事理论创新、国防科技创新、军事科研工作组织模式创新，把军事科研创新的引擎全速发动起来。', '“苟日新,日日新,又日新。”在国际军事竞争日益激烈的形势下，唯创新者胜。谁牵住了科技创新这个牛鼻子，谁走好了科技创新这步先手棋，谁就能占领先机、赢得优势。5月16日，习近平视察军事科学院时指出：“军事科学研究具有很强的探索性，要把创新摆在更加突出的位置，做好战略谋划和顶层设计，加强军事理论创新、国防科技创新、军事科研工作组织模式创新，把军事科研创新的引擎全速发动起来。', 1);
INSERT INTO `courses_course` VALUES (2, 'django实战项目', 'django实战项目', 'django实战项目', 'zj', 120, 12121, 12, 'courses/2018/05/540e57300001d6d906000338-240-135_MSIqfvw.jpg', 2, '2018-05-18 18:55:00.000000', 1, '后端开发', '', NULL, '', '', 1);
INSERT INTO `courses_course` VALUES (3, 'python错误和异常', 'python错误和异常', 'python错误和异常', 'cj', 121, 1212, 12, 'courses/2018/05/python面向对象.jpg', 13, '2018-05-18 18:56:00.000000', 2, '后端开发', '', NULL, '', '', 0);
INSERT INTO `courses_course` VALUES (4, 'xadmin进阶开发', 'xadmin进阶开发', '<p><img src=\"/media/courses/ueditor/57a801860001c34b12000460_20180521170140_206.jpg\" title=\"\" alt=\"57a801860001c34b12000460.jpg\"/>\r\n &nbsp; &nbsp; xadmin进阶开发</p>', 'zj', 34, 3434, 343, 'courses/2018/05/python错误和异常.jpg', 4, '2018-05-18 18:56:00.000000', 1, '后端开发', 'python', NULL, 'python', 'python', 0);
INSERT INTO `courses_course` VALUES (5, 'scrapy教程', 'scrapy教程', 'scrapy教程', 'zj', 12, 13, 0, 'courses/2018/05/57035ff200014b8a06000338-240-135_dHfj8Nq.jpg', 0, '2018-05-19 14:30:00.000000', 3, '后端开发', '', NULL, '', '', 1);
INSERT INTO `courses_course` VALUES (6, 'django与vuejs实战项目2', 'django与vuejs实战项目2', 'django与vuejs实战项目2', 'zj', 345, 44, 0, 'courses/2018/05/python文件处理.jpg', 133, '2018-05-19 14:30:00.000000', 7, '后端开发', '', NULL, '', '', 1);
INSERT INTO `courses_course` VALUES (7, 'django实战项目', 'django实战项目', 'django实战项目', 'zj', 55, 68, 0, 'courses/2018/05/mysql_Y5wGew6.jpg', 0, '2018-05-19 14:31:00.000000', 6, '后端开发', '', NULL, '', '', 1);
INSERT INTO `courses_course` VALUES (8, 'python文件处理', 'python文件处理', 'python文件处理', 'gj', 120, 1212, 0, 'courses/2018/05/540e57300001d6d906000338-240-135.jpg', 11, '2018-05-19 14:32:00.000000', 2, '后端开发', '', NULL, '', '', 0);
INSERT INTO `courses_course` VALUES (9, 'java入门3', 'java入门3', 'java入门3', 'gj', 0, 0, 0, 'courses/2018/05/57035ff200014b8a06000338-240-135_0nFiBSI.jpg', 23, '2018-05-19 14:32:00.000000', 2, '后端开发', 'java', NULL, '', '', 1);
INSERT INTO `courses_course` VALUES (10, 'java入门5', 'java入门5', 'java入门5', 'zj', 0, 0, 0, 'courses/2018/05/540e57300001d6d906000338-240-135_mvvGYHL.jpg', 4, '2018-05-19 14:33:00.000000', 9, '后端开发', 'java', NULL, '', '', 1);
INSERT INTO `courses_course` VALUES (11, 'java入门6', 'java入门6', 'java入门6', 'gj', 0, 1, 0, 'courses/2018/05/python错误和异常_hF5k5JS.jpg', 6, '2018-05-19 14:33:00.000000', 10, '后端开发', 'java', NULL, '', '', 0);

-- ----------------------------
-- Table structure for courses_courseresource
-- ----------------------------
DROP TABLE IF EXISTS `courses_courseresource`;
CREATE TABLE `courses_courseresource`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `download` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_courseresource_ea134da7`(`course_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses_courseresource
-- ----------------------------
INSERT INTO `courses_courseresource` VALUES (1, '去昂华你别', 'course/resource/2018/05/bjdx.jpg', '2018-05-19 19:18:00.000000', 1);

-- ----------------------------
-- Table structure for courses_lesson
-- ----------------------------
DROP TABLE IF EXISTS `courses_lesson`;
CREATE TABLE `courses_lesson`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_lesson_ea134da7`(`course_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses_lesson
-- ----------------------------
INSERT INTO `courses_lesson` VALUES (1, '第一节', '2018-05-16 19:20:00.000000', 1);
INSERT INTO `courses_lesson` VALUES (2, '第二节', '2018-05-19 19:02:00.000000', 1);
INSERT INTO `courses_lesson` VALUES (3, '第三节', '2018-05-19 19:02:00.000000', 1);

-- ----------------------------
-- Table structure for courses_video
-- ----------------------------
DROP TABLE IF EXISTS `courses_video`;
CREATE TABLE `courses_video`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `learn_times` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_video_ea134da7`(`lesson_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses_video
-- ----------------------------
INSERT INTO `courses_video` VALUES (1, '基础知识', '2018-05-19 19:01:00.000000', 1, 'https://dongfei.oss-cn-shanghai.aliyuncs.com/1526658014642.mp4', 0);
INSERT INTO `courses_video` VALUES (2, '冲刺训练', '2018-05-19 19:03:00.000000', 3, 'https://dongfei.oss-cn-shanghai.aliyuncs.com/1526658014642.mp4', 0);
INSERT INTO `courses_video` VALUES (3, '基础训练', '2018-05-19 19:03:00.000000', 2, 'https://dongfei.oss-cn-shanghai.aliyuncs.com/1526658014642.mp4', 0);
INSERT INTO `courses_video` VALUES (4, '托尔斯泰', '2018-05-19 19:04:00.000000', 2, 'https://dongfei.oss-cn-shanghai.aliyuncs.com/1526658014642.mp4', 0);
INSERT INTO `courses_video` VALUES (5, '就出浓浓', '2018-05-19 19:05:00.000000', 1, 'https://dongfei.oss-cn-shanghai.aliyuncs.com/1526658014642.mp4', 0);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_417f1b1c`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_e8701ad4`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (7, 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (8, 'users', 'emailverifyrecord');
INSERT INTO `django_content_type` VALUES (9, 'users', 'banner');
INSERT INTO `django_content_type` VALUES (10, 'courses', 'course');
INSERT INTO `django_content_type` VALUES (11, 'courses', 'lesson');
INSERT INTO `django_content_type` VALUES (12, 'courses', 'video');
INSERT INTO `django_content_type` VALUES (13, 'courses', 'courseresource');
INSERT INTO `django_content_type` VALUES (14, 'operation', 'userask');
INSERT INTO `django_content_type` VALUES (15, 'operation', 'coursecomments');
INSERT INTO `django_content_type` VALUES (16, 'operation', 'userfavorite');
INSERT INTO `django_content_type` VALUES (17, 'operation', 'usermessage');
INSERT INTO `django_content_type` VALUES (18, 'operation', 'usercourse');
INSERT INTO `django_content_type` VALUES (19, 'organization', 'citydict');
INSERT INTO `django_content_type` VALUES (20, 'organization', 'courseorg');
INSERT INTO `django_content_type` VALUES (21, 'organization', 'teacher');
INSERT INTO `django_content_type` VALUES (22, 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES (23, 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES (24, 'xadmin', 'userwidget');
INSERT INTO `django_content_type` VALUES (25, 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES (26, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (28, 'courses', 'bannercourse');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2018-05-16 02:24:20.071000');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2018-05-16 02:24:20.581000');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2018-05-16 02:24:20.693000');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2018-05-16 02:24:20.720000');
INSERT INTO `django_migrations` VALUES (5, 'contenttypes', '0002_remove_content_type_name', '2018-05-16 02:24:20.790000');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0002_alter_permission_name_max_length', '2018-05-16 02:24:20.831000');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0003_alter_user_email_max_length', '2018-05-16 02:24:20.863000');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0004_alter_user_username_opts', '2018-05-16 02:24:20.878000');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0005_alter_user_last_login_null', '2018-05-16 02:24:20.910000');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0006_require_contenttypes_0002', '2018-05-16 02:24:20.913000');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0007_alter_validators_add_error_messages', '2018-05-16 02:24:20.924000');
INSERT INTO `django_migrations` VALUES (12, 'sessions', '0001_initial', '2018-05-16 02:24:20.962000');
INSERT INTO `django_migrations` VALUES (13, 'users', '0001_initial', '2018-05-16 03:06:46.789000');
INSERT INTO `django_migrations` VALUES (14, 'courses', '0001_initial', '2018-05-16 07:00:29.788000');
INSERT INTO `django_migrations` VALUES (15, 'operation', '0001_initial', '2018-05-16 07:00:30.155000');
INSERT INTO `django_migrations` VALUES (16, 'organization', '0001_initial', '2018-05-16 07:00:30.300000');
INSERT INTO `django_migrations` VALUES (17, 'users', '0002_banner_emailverifyrecord', '2018-05-16 07:00:30.340000');
INSERT INTO `django_migrations` VALUES (18, 'users', '0003_auto_20180516_1545', '2018-05-16 15:45:16.978000');
INSERT INTO `django_migrations` VALUES (19, 'xadmin', '0001_initial', '2018-05-16 15:56:36.378000');
INSERT INTO `django_migrations` VALUES (20, 'xadmin', '0002_log', '2018-05-16 16:41:41.064000');
INSERT INTO `django_migrations` VALUES (21, 'xadmin', '0003_auto_20160715_0100', '2018-05-16 16:41:41.135000');
INSERT INTO `django_migrations` VALUES (22, 'courses', '0002_auto_20180516_1927', '2018-05-16 19:27:39.831000');
INSERT INTO `django_migrations` VALUES (23, 'users', '0004_auto_20180517_1057', '2018-05-17 10:57:45.197000');
INSERT INTO `django_migrations` VALUES (24, 'captcha', '0001_initial', '2018-05-17 15:35:24.615000');
INSERT INTO `django_migrations` VALUES (25, 'organization', '0002_auto_20180518_1038', '2018-05-18 10:39:05.855000');
INSERT INTO `django_migrations` VALUES (26, 'organization', '0003_auto_20180518_1551', '2018-05-18 15:51:52.125000');
INSERT INTO `django_migrations` VALUES (27, 'courses', '0003_course_course_org', '2018-05-18 17:27:34.411000');
INSERT INTO `django_migrations` VALUES (28, 'organization', '0004_teacher_image', '2018-05-18 18:32:39.838000');
INSERT INTO `django_migrations` VALUES (29, 'courses', '0004_course_category', '2018-05-19 15:30:16.114000');
INSERT INTO `django_migrations` VALUES (30, 'users', '0005_auto_20180519_1546', '2018-05-19 15:46:51.561000');
INSERT INTO `django_migrations` VALUES (31, 'courses', '0005_course_tag', '2018-05-19 16:49:32.542000');
INSERT INTO `django_migrations` VALUES (32, 'courses', '0006_video_url', '2018-05-19 19:00:47.017000');
INSERT INTO `django_migrations` VALUES (33, 'courses', '0007_video_learn_times', '2018-05-19 19:14:55.126000');
INSERT INTO `django_migrations` VALUES (34, 'courses', '0008_course_teacher', '2018-05-19 19:29:45.409000');
INSERT INTO `django_migrations` VALUES (35, 'courses', '0009_auto_20180519_1935', '2018-05-19 19:35:43.470000');
INSERT INTO `django_migrations` VALUES (36, 'organization', '0005_courseorg_age', '2018-05-20 14:39:27.398000');
INSERT INTO `django_migrations` VALUES (37, 'organization', '0006_auto_20180520_1442', '2018-05-20 14:42:38.611000');
INSERT INTO `django_migrations` VALUES (38, 'users', '0006_auto_20180520_1851', '2018-05-20 18:51:17.418000');
INSERT INTO `django_migrations` VALUES (39, 'users', '0007_auto_20180520_1859', '2018-05-20 18:59:19.930000');
INSERT INTO `django_migrations` VALUES (40, 'courses', '0010_course_is_banner', '2018-05-21 10:30:47.462000');
INSERT INTO `django_migrations` VALUES (41, 'organization', '0007_courseorg_tag', '2018-05-21 10:58:23.975000');
INSERT INTO `django_migrations` VALUES (42, 'courses', '0011_auto_20180521_1642', '2018-05-21 16:42:37.776000');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_de54fa62`(`expire_date`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('usyq9o4dof3bhu0vr3jxls7ir1chnev7', 'ZTZiOTY5ZTllMTNhMjE0ZGMzZDA5OTBlN2UxN2U4MGVkOGM0MGVmODp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiTElTVF9RVUVSWSI6W1siY291cnNlcyIsImNvdXJzZSJdLCIiXSwiX2F1dGhfdXNlcl9oYXNoIjoiMzIwMDZjMjcyYmQ5YjZlMWEwODIwNTI0ZWJkYjBmNjU3NTZmYTAxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQifQ==', '2018-06-04 17:19:04.533000');

-- ----------------------------
-- Table structure for operation_coursecomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_coursecomments`;
CREATE TABLE `operation_coursecomments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_coursecomments_ea134da7`(`course_id`) USING BTREE,
  INDEX `operation_coursecomments_e8701ad4`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_coursecomments
-- ----------------------------
INSERT INTO `operation_coursecomments` VALUES (1, '发德邦到付的方便地方', '2018-05-19 20:06:00.000000', 1, 4);
INSERT INTO `operation_coursecomments` VALUES (2, '深V大V是大V是大V大V', '2018-05-19 20:07:00.000000', 1, 9);

-- ----------------------------
-- Table structure for operation_userask
-- ----------------------------
DROP TABLE IF EXISTS `operation_userask`;
CREATE TABLE `operation_userask`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_userask
-- ----------------------------
INSERT INTO `operation_userask` VALUES (32, 'hello', '13312341233', 'djano', '2018-05-18 17:11:45.807000');
INSERT INTO `operation_userask` VALUES (33, 'hello', '13312341233', 'djano', '2018-05-18 17:13:05.432000');
INSERT INTO `operation_userask` VALUES (34, 'hello', '13312312121', 'djano', '2018-05-18 17:17:14.202000');
INSERT INTO `operation_userask` VALUES (35, 'hello', '13312312121', 'djano', '2018-05-18 17:19:13.841000');
INSERT INTO `operation_userask` VALUES (36, 'hello', '18312312121', 'djano', '2018-05-18 17:20:24.107000');

-- ----------------------------
-- Table structure for operation_usercourse
-- ----------------------------
DROP TABLE IF EXISTS `operation_usercourse`;
CREATE TABLE `operation_usercourse`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_usercourse_ea134da7`(`course_id`) USING BTREE,
  INDEX `operation_usercourse_e8701ad4`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of operation_usercourse
-- ----------------------------
INSERT INTO `operation_usercourse` VALUES (1, '2018-05-19 15:47:00.000000', 1, 9);
INSERT INTO `operation_usercourse` VALUES (2, '2018-05-19 16:32:00.000000', 1, 4);
INSERT INTO `operation_usercourse` VALUES (3, '2018-05-19 16:32:00.000000', 9, 4);
INSERT INTO `operation_usercourse` VALUES (4, '2018-05-19 16:33:00.000000', 9, 5);
INSERT INTO `operation_usercourse` VALUES (5, '2018-05-19 16:34:00.000000', 9, 9);
INSERT INTO `operation_usercourse` VALUES (6, '2018-05-20 19:30:00.000000', 3, 4);
INSERT INTO `operation_usercourse` VALUES (7, '2018-05-21 09:59:00.367000', 11, 4);

-- ----------------------------
-- Table structure for operation_userfavorite
-- ----------------------------
DROP TABLE IF EXISTS `operation_userfavorite`;
CREATE TABLE `operation_userfavorite`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_userfavorite_e8701ad4`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of operation_userfavorite
-- ----------------------------
INSERT INTO `operation_userfavorite` VALUES (18, 2, 2, '2018-05-20 20:00:00.000000', 4);
INSERT INTO `operation_userfavorite` VALUES (15, 9, 1, '2018-05-19 17:15:57.177000', 4);
INSERT INTO `operation_userfavorite` VALUES (19, 3, 2, '2018-05-20 20:00:00.000000', 4);
INSERT INTO `operation_userfavorite` VALUES (21, 1, 2, '2018-05-20 20:02:14.690000', 4);
INSERT INTO `operation_userfavorite` VALUES (22, 1, 3, '2018-05-20 20:16:00.000000', 4);
INSERT INTO `operation_userfavorite` VALUES (23, 2, 3, '2018-05-20 20:16:00.000000', 4);

-- ----------------------------
-- Table structure for operation_usermessage
-- ----------------------------
DROP TABLE IF EXISTS `operation_usermessage`;
CREATE TABLE `operation_usermessage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_usermessage
-- ----------------------------
INSERT INTO `operation_usermessage` VALUES (1, 4, 'hellosdsd', 1, '2018-05-20 20:55:00.000000');
INSERT INTO `operation_usermessage` VALUES (2, 4, 'hellosdsdsdgs', 1, '2018-05-20 20:56:00.000000');
INSERT INTO `operation_usermessage` VALUES (3, 4, 'degeger', 0, '2018-05-20 21:12:00.000000');

-- ----------------------------
-- Table structure for organization_citydict
-- ----------------------------
DROP TABLE IF EXISTS `organization_citydict`;
CREATE TABLE `organization_citydict`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organization_citydict
-- ----------------------------
INSERT INTO `organization_citydict` VALUES (1, '北京市', '北京市', '2018-05-18 10:07:00.000000');
INSERT INTO `organization_citydict` VALUES (2, '上海市', '上海市', '2018-05-18 10:07:00.000000');
INSERT INTO `organization_citydict` VALUES (3, '广州市', '广州市', '2018-05-18 10:07:00.000000');
INSERT INTO `organization_citydict` VALUES (4, '深圳市', '深圳市', '2018-05-18 10:09:00.000000');
INSERT INTO `organization_citydict` VALUES (5, '天津市', '天津市', '2018-05-18 10:09:00.000000');

-- ----------------------------
-- Table structure for organization_courseorg
-- ----------------------------
DROP TABLE IF EXISTS `organization_courseorg`;
CREATE TABLE `organization_courseorg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `city_id` int(11) NOT NULL,
  `category` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_nums` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `tag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `organization_courseorg_c7141997`(`city_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organization_courseorg
-- ----------------------------
INSERT INTO `organization_courseorg` VALUES (1, '慕课网', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n  慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。 [1]', 0, 0, 'org/2018/05/imooc_OO2ykYP.png', '天津市', '2018-05-18 10:14:00.000000', 1, 'pxjg', 3, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (2, '极客学院', '极客学院 [1]  是中国android开发在线学习平台，汇集了几十名国内顶尖的有多年项目和实战经验的Android开发授课大师，精心制作了上千个高质量视频教程，涵盖了Android开发学习的基础入门、中级进阶，高级提升、项目实战开发等专业的android开发课程。\r\n  极客学院 [2]  背后是一支疯狂喜欢编程，狂热开发移动app的超有活力团队。他们希望通过最新的，高质量的，专业实战的在线开发课程打破传统的编程学习模式，以新一代的编程学习模式帮助开发者更快更好的学习Android开发，帮助开发者通过技术实现自己的理想。', 0, 0, 'org/2018/05/jike.jpg', '深圳市', '2018-05-18 10:18:00.000000', 3, 'pxjg', 0, 10, '全国知名');
INSERT INTO `organization_courseorg` VALUES (3, '麦子学院', '麦子学院，国内第一家在美国建立商务中心的IT在线教育机构，目前已与美国知名教育公司取得合作，未来将源源不断向国内输出大量高质量教育资源\r\n  前身麦可网，2014年，麦可网完成千万级A轮融资，并更名为”麦子学院“，同时通过“麦子圈”IT职业实名社交圈——提供包括企业招聘对接，猎头，项目外包，经验分享，职业交友等一系列增值服务。\r\n  做在线职业教育示范学院，将教育和课程做到极致。除了提供高质量的课程学习之外，也提供包括就业推荐，职业交友，项目外包，创业服务等全面的增值服务，并且线上线下结合，移动设备和传统网络相结合，打造IT职业教育的一个完整生态链。', 0, 0, 'org/2018/05/maizi.jpg', '广州市', '2018-05-18 10:20:00.000000', 3, 'gr', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (4, 'MOOC学院', 'MOOC学院是果壳网旗下的一个讨论MOOC（大型开放式网络课程）课程的学习社区。MOOC学院收录了主流的三大课程提供商Coursera、Udacity、edX的所有课程，并将大部分课程的课程简介翻译成中文。用户可以在MOOC学院给上过的MOOC课程点评打分，在学习的过程中和同学讨论课程问题，记录自己的上课笔记。 [1]', 0, 0, 'org/2018/05/mooc.jpg', '天津市', '2018-05-18 10:22:00.000000', 5, 'gx', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (5, '可汗学院', '可汗学院(Khan Academy)，通过在线图书馆收藏了3500 多部可汗老师的教学视频，向世界各地的人们提供免费的高品质教育。该项目由萨尔曼·可汗给亲戚的孩子讲授的在线视频课程开始，迅速向周围蔓延，并从家庭走进了学校，甚至正在“翻转课堂”，被认为正打开“未来教育”的曙光。 [1]  创始人可汗老师全名叫萨尔曼·可汗，孟加拉裔，自小课业优异，就读于麻省理工学院，大学双修数学和电机电脑工程，工作后读了哈佛的MBA课程，可汗老师什么都教，从数学，物理，化学，一直到理财人生，但他自己从来都不出现在镜头前面。', 0, 0, 'org/2018/05/kehan.jpg', '深圳市', '2018-05-18 10:27:00.000000', 4, 'pxjg', 0, 12, '全国知名');
INSERT INTO `organization_courseorg` VALUES (6, '腾讯大学', '微信学院\r\n全新上线的“微信学院”是一个公开对外的学习平台，共分为微信商学院、微信技术院、玩转微信和微信时刻4个版块。微信的合作伙伴、开发爱好者均可在此学习如何使用微信平台实现商业化应用、学习微信的技术教程、了解微信最新动态。', 0, 0, 'org/2018/05/tengxun.png', '广州市', '2018-05-18 10:29:00.000000', 3, 'gr', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (7, '阿里学院', '阿里学院 编辑\r\n阿里学院是阿里巴巴公司于2004年9月10日在其五周年庆典之际，宣布创办成立企业学院，这是中国互联网第一家企业学院。 阿里巴巴首席人力官关明生表示，阿里学院将在中国从事电子商务活动的企业和个人中全力普及电子商务知识，在中国建立第一套完整的企业和个人的电子商务培训和管理体系。 关明生表示，据了解，目前全国能有效利用网络技术的电子商务人才非常奇缺，专家估计，未来5年我国国际电子商务人才缺口至少有100万', 0, 0, 'org/2018/05/bjdx.jpg', '北京市', '2018-05-18 10:30:00.000000', 1, 'pxjg', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (8, '华为大学', '腾讯实施开放策略是在2011年。通过腾讯提供的开放API，第三方可以把各类社交、游戏、电商及实用工具等应用，通过腾讯朋 友、QQ空间、腾讯微博、腾讯游戏、Q+等多个社交平台进行推广。 [4] \r\n  腾讯平台的最大优势在于多维度的社交网络和打通的账号资源 [4]  。\r\n掌握中国互联网的社交主动脉，腾讯平台上的互动类应用繁多、接口丰富，通过多个社交平台可以实现应用的最快传播和多次传播。同时，开放的账户机制让用户可以用QQ账号登陆不同的网站与应用，加快了网络业务的运作效率，让第三方产品的传播与使用更加便利。', 0, 0, 'org/2018/05/imooc.png', '上海市', '2018-05-18 10:31:00.000000', 2, 'gx', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (9, '甲骨文学院', '2008年3月11日美国甲骨文公司（Oracle）教育工程全球副总裁Clare Dolan女士访问深圳职业技术学院，举行甲骨文学院（Oracle Academy）授牌仪式。甲骨文学院授权培训中心以全球第一的软件企业——甲骨文公司为坚强后盾，开展数据库、ERP等培训业务，并将推进甲骨文学院与高教区入驻高校进行嵌入式教育合作。', 0, 0, 'org/2018/05/imooc_V0TJOyb.png', '深圳市', '2018-05-18 10:32:00.000000', 4, 'gr', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (10, '思远it学院', 'ThinkBank思远是在中国国家信息化建设浪潮和教育体制改革中发展起来的股份制教育投资和运营机构。创始于1998年，经2002年1月扩充改制后，成为一个多种所有制成分、面向全社会提供软件外包、信息化咨询、培训、人才教育及输出的IT服务型专业机构。', 0, 0, 'org/2018/05/qhdx-logo.png', '北京市', '2018-05-18 10:33:00.000000', 1, 'pxjg', 0, 0, '全国知名');

-- ----------------------------
-- Table structure for organization_teacher
-- ----------------------------
DROP TABLE IF EXISTS `organization_teacher`;
CREATE TABLE `organization_teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_company` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `work_position` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `points` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `org_id` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `organization_teacher_9cf869aa`(`org_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organization_teacher
-- ----------------------------
INSERT INTO `organization_teacher` VALUES (1, '张老师', 11, '百度', '程序员', '好', 10, 11, '2018-05-18 17:22:00.000000', 1, 'teachers/2018/05/aobama_CXWwMef.png', 18);
INSERT INTO `organization_teacher` VALUES (2, '王老师', 2, '京东', '网络工程师', '不好', 12, 1231, '2018-05-18 17:24:00.000000', 1, 'teachers/2018/05/aobama.png', 18);
INSERT INTO `organization_teacher` VALUES (3, '李老师', 12, '阿里巴巴', '系统架构师', '幽默', 23, 23, '2018-05-20 14:56:00.000000', 3, 'teachers/2018/05/default_middile_2.png', 34);
INSERT INTO `organization_teacher` VALUES (4, 'Jason', 23, '江苏大学', 'Linux 运维', '简单', 34, 2323, '2018-05-20 14:58:00.000000', 4, 'teachers/2018/05/default_middile_7.png', 56);
INSERT INTO `organization_teacher` VALUES (5, '江海', 23, '腾讯', 'CEO', '古板', 23, 45, '2018-05-20 14:59:00.000000', 7, 'teachers/2018/05/default_middile_8.png', 55);

-- ----------------------------
-- Table structure for users_banner
-- ----------------------------
DROP TABLE IF EXISTS `users_banner`;
CREATE TABLE `users_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_banner
-- ----------------------------
INSERT INTO `users_banner` VALUES (1, '第一个', 'banner/2018/05/540e57300001d6d906000338-240-135.jpg', 'https://www.baidu.com/', 1, '2018-05-21');
INSERT INTO `users_banner` VALUES (2, '第二个', 'banner/2018/05/57035ff200014b8a06000338-240-135.jpg', 'https://www.baidu.com/', 2, '2018-05-21');
INSERT INTO `users_banner` VALUES (3, '第三个', 'banner/2018/05/mysql.jpg', 'https://www.baidu.com/', 3, '2018-05-21');
INSERT INTO `users_banner` VALUES (4, '第四个', 'banner/2018/05/python错误和异常.jpg', 'https://www.baidu.com/', 4, '2018-05-21');
INSERT INTO `users_banner` VALUES (5, '第五个', 'banner/2018/05/python文件处理.jpg', 'https://www.baidu.com/', 5, '2018-05-21');
INSERT INTO `users_banner` VALUES (6, '第六个', 'banner/2018/05/57a801860001c34b12000460.jpg', 'https://www.baidu.com', 6, '2018-05-21');

-- ----------------------------
-- Table structure for users_emailverifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverifyrecord`;
CREATE TABLE `users_emailverifyrecord`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `send_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `send_time` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_emailverifyrecord
-- ----------------------------
INSERT INTO `users_emailverifyrecord` VALUES (1, 'admin', 'xx@qq.com', 'register', '2018-05-16');
INSERT INTO `users_emailverifyrecord` VALUES (2, '1234', 'xx@sd.com', 'forget', '2018-05-16');
INSERT INTO `users_emailverifyrecord` VALUES (4, 'yIFgT3cDgDxTkXyL', 'iamdongfei@sina.com', 'register', '2018-05-17');
INSERT INTO `users_emailverifyrecord` VALUES (5, 'GJsK4WXy8sYwnKXO', 'iamdongfei@sina.com', 'register', '2018-05-17');
INSERT INTO `users_emailverifyrecord` VALUES (6, 'OZLRrQLcyLL8yolz', 'iamdongfei@sina.com', 'forget', '2018-05-17');
INSERT INTO `users_emailverifyrecord` VALUES (7, 'ECcbQ5FU6l3NegCc', 'iamdongfei@sina.com', 'forget', '2018-05-17');
INSERT INTO `users_emailverifyrecord` VALUES (8, 'tDJllyyzumsbXhUq', 'iamdongfei@sina.com', 'forget', '2018-05-17');
INSERT INTO `users_emailverifyrecord` VALUES (9, 'dgznifWhKzQB35aT', 'iamdongfei@sina.com', 'forget', '2018-05-17');
INSERT INTO `users_emailverifyrecord` VALUES (10, 'KN4S', 'iamdongfei@sina.com', 'update_email', '2018-05-20');
INSERT INTO `users_emailverifyrecord` VALUES (11, 'vpak', 'iamdongfei@sina.com', 'update_email', '2018-05-20');
INSERT INTO `users_emailverifyrecord` VALUES (12, 'hh4M', 'iamdongfei@sina.com', 'update_email', '2018-05-20');

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nick_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birthday` date NULL DEFAULT NULL,
  `gender` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES (5, 'pbkdf2_sha256$24000$3Jt6nxsVa2UY$C6X9tlR24rG7P/MoC8fdLBM8MIKXRtF8kuY2G2Hb9v0=', '2018-05-21 13:19:41.264000', 0, 'admin', '', '', '11@admin.com', 1, 1, '2018-05-17 11:06:00.000000', 'admiaimn', NULL, 'female', 'admin', '', 'image/2018/05/default_big_14.png');
INSERT INTO `users_userprofile` VALUES (8, 'pbkdf2_sha256$24000$2StxHiEbF4Kw$ETOqA5zD7PMb5QQ/FnQ8y/WE+Xyj6RevlomqA7B0dLc=', '2018-05-17 19:11:00.000000', 0, 'iamdongfei@sina.com', '', '', 'ia12i@sina.com', 0, 1, '2018-05-17 17:41:00.000000', 'helliamo', NULL, 'female', '江苏省', '', 'image/2018/05/default_middile_2_WZ1559E.png');
INSERT INTO `users_userprofile` VALUES (4, 'pbkdf2_sha256$24000$xeCCNdJ7n6Kv$JpFZF1WHxsPKoRdRiSkcYNI02nPFUEBB2oHLU+nOumM=', '2018-05-21 13:20:00.228000', 1, 'root', '', '', 'iamdongfei@sina.com', 1, 1, '2018-05-17 10:59:00.000000', 'helloroot', '2018-05-20', 'male', '上海', '18860883488', 'image/2018/05/default_middile_7_hCLQD4Q.png');
INSERT INTO `users_userprofile` VALUES (9, 'pbkdf2_sha256$24000$mZybe9WT6Cfz$f0X5edZ0NHxtljJOvV3dGqyKMmI4yeTIkM3X57NGhvU=', NULL, 0, 'jack', '', '', '', 0, 1, '2018-05-19 15:48:00.000000', 'iamackja', NULL, 'female', '北京', '', 'image/2018/05/default_middile_7.png');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_groups_userprofile_id_823cf2fc_uniq`(`userprofile_id`, `group_id`) USING BTREE,
  INDEX `users_userprofile_groups_9c2a73e9`(`userprofile_id`) USING BTREE,
  INDEX `users_userprofile_groups_0e939a4f`(`group_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_user_permissions_userprofile_id_d0215190_uniq`(`userprofile_id`, `permission_id`) USING BTREE,
  INDEX `users_userprofile_user_permissions_9c2a73e9`(`userprofile_id`) USING BTREE,
  INDEX `users_userprofile_user_permissions_8373b171`(`permission_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `query` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_bookmark_417f1b1c`(`content_type_id`) USING BTREE,
  INDEX `xadmin_bookmark_e8701ad4`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_log_417f1b1c`(`content_type_id`) USING BTREE,
  INDEX `xadmin_log_e8701ad4`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 92 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES (10, '2018-05-18 10:07:38.623000', '127.0.0.1', '1', 'CityDict object', 'create', '已添加。', 19, 4);
INSERT INTO `xadmin_log` VALUES (9, '2018-05-17 11:07:02.410000', '127.0.0.1', '5', 'admin', 'change', '已修改 email，nick_name 和 address 。', 7, 4);
INSERT INTO `xadmin_log` VALUES (8, '2018-05-17 11:06:08.262000', '127.0.0.1', '5', 'admin', 'create', '已添加。', 7, 4);
INSERT INTO `xadmin_log` VALUES (7, '2018-05-17 11:04:29.083000', '127.0.0.1', '2', 'admin123', 'delete', '', 7, 4);
INSERT INTO `xadmin_log` VALUES (5, '2018-05-17 11:03:36.148000', '127.0.0.1', '3', 'aa', 'delete', '', 7, 4);
INSERT INTO `xadmin_log` VALUES (6, '2018-05-17 11:03:56.919000', '127.0.0.1', '1', 'admin', 'delete', '', 7, 4);
INSERT INTO `xadmin_log` VALUES (11, '2018-05-18 10:07:50.629000', '127.0.0.1', '2', 'CityDict object', 'create', '已添加。', 19, 4);
INSERT INTO `xadmin_log` VALUES (12, '2018-05-18 10:09:19.414000', '127.0.0.1', '3', '广州市', 'create', '已添加。', 19, 4);
INSERT INTO `xadmin_log` VALUES (13, '2018-05-18 10:09:34.532000', '127.0.0.1', '4', '深圳市', 'create', '已添加。', 19, 4);
INSERT INTO `xadmin_log` VALUES (14, '2018-05-18 10:09:49.537000', '127.0.0.1', '5', '天津市', 'create', '已添加。', 19, 4);
INSERT INTO `xadmin_log` VALUES (15, '2018-05-18 10:16:18.004000', '127.0.0.1', '1', '慕课网', 'create', '已添加。', 20, 4);
INSERT INTO `xadmin_log` VALUES (16, '2018-05-18 10:20:47.834000', '127.0.0.1', '2', '极客学院', 'create', '已添加。', 20, 4);
INSERT INTO `xadmin_log` VALUES (17, '2018-05-18 10:22:24.469000', '127.0.0.1', '3', '麦子学院', 'create', '已添加。', 20, 4);
INSERT INTO `xadmin_log` VALUES (18, '2018-05-18 10:27:43.592000', '127.0.0.1', '4', 'MOOC学院', 'create', '已添加。', 20, 4);
INSERT INTO `xadmin_log` VALUES (19, '2018-05-18 10:28:46.605000', '127.0.0.1', '5', '可汗学院', 'create', '已添加。', 20, 4);
INSERT INTO `xadmin_log` VALUES (20, '2018-05-18 10:30:54.898000', '127.0.0.1', '6', '腾讯大学', 'create', '已添加。', 20, 4);
INSERT INTO `xadmin_log` VALUES (21, '2018-05-18 10:31:38.913000', '127.0.0.1', '7', '阿里学院', 'create', '已添加。', 20, 4);
INSERT INTO `xadmin_log` VALUES (22, '2018-05-18 10:32:37.386000', '127.0.0.1', '8', '华为大学', 'create', '已添加。', 20, 4);
INSERT INTO `xadmin_log` VALUES (23, '2018-05-18 10:33:16.620000', '127.0.0.1', '9', '甲骨文学院', 'create', '已添加。', 20, 4);
INSERT INTO `xadmin_log` VALUES (24, '2018-05-18 10:33:57.799000', '127.0.0.1', '10', '思远it学院', 'create', '已添加。', 20, 4);
INSERT INTO `xadmin_log` VALUES (25, '2018-05-18 17:23:33.295000', '127.0.0.1', '1', '张老师', 'create', '已添加。', 21, 4);
INSERT INTO `xadmin_log` VALUES (26, '2018-05-18 17:24:28.180000', '127.0.0.1', '2', '王老师', 'create', '已添加。', 21, 4);
INSERT INTO `xadmin_log` VALUES (27, '2018-05-18 17:28:47.458000', '127.0.0.1', '1', 'Django 入门', 'change', '已修改 course_org 。', 10, 4);
INSERT INTO `xadmin_log` VALUES (28, '2018-05-18 18:07:13.306000', '127.0.0.1', '1', 'Django 入门', 'change', '已修改 image 。', 10, 4);
INSERT INTO `xadmin_log` VALUES (29, '2018-05-18 18:24:45.466000', '127.0.0.1', '1', 'Django 入门', 'change', '没有字段被修改。', 10, 4);
INSERT INTO `xadmin_log` VALUES (30, '2018-05-18 18:33:29.654000', '127.0.0.1', '2', '王老师', 'change', '已修改 image 。', 21, 4);
INSERT INTO `xadmin_log` VALUES (31, '2018-05-18 18:33:39.315000', '127.0.0.1', '1', '张老师', 'change', '已修改 image 。', 21, 4);
INSERT INTO `xadmin_log` VALUES (32, '2018-05-18 18:56:03.605000', '127.0.0.1', '2', 'django实战项目', 'create', '已添加。', 10, 4);
INSERT INTO `xadmin_log` VALUES (33, '2018-05-18 18:56:46.410000', '127.0.0.1', '3', 'python错误和异常', 'create', '已添加。', 10, 4);
INSERT INTO `xadmin_log` VALUES (34, '2018-05-18 18:57:23.829000', '127.0.0.1', '4', 'xadmin进阶开发', 'create', '已添加。', 10, 4);
INSERT INTO `xadmin_log` VALUES (35, '2018-05-19 14:30:50.195000', '127.0.0.1', '5', 'scrapy教程', 'create', '已添加。', 10, 4);
INSERT INTO `xadmin_log` VALUES (36, '2018-05-19 14:31:14.655000', '127.0.0.1', '6', 'django与vuejs实战项目2', 'create', '已添加。', 10, 4);
INSERT INTO `xadmin_log` VALUES (37, '2018-05-19 14:32:07.323000', '127.0.0.1', '7', 'django实战项目', 'create', '已添加。', 10, 4);
INSERT INTO `xadmin_log` VALUES (38, '2018-05-19 14:32:50.562000', '127.0.0.1', '8', 'python文件处理', 'create', '已添加。', 10, 4);
INSERT INTO `xadmin_log` VALUES (39, '2018-05-19 14:33:19.641000', '127.0.0.1', '9', 'java入门3', 'create', '已添加。', 10, 4);
INSERT INTO `xadmin_log` VALUES (40, '2018-05-19 14:33:37.154000', '127.0.0.1', '10', 'java入门3', 'create', '已添加。', 10, 4);
INSERT INTO `xadmin_log` VALUES (41, '2018-05-19 14:34:01.372000', '127.0.0.1', '11', 'java入门6', 'create', '已添加。', 10, 4);
INSERT INTO `xadmin_log` VALUES (42, '2018-05-19 15:37:00.164000', '127.0.0.1', '5', 'admin', 'change', '已修改 last_login 和 image 。', 7, 4);
INSERT INTO `xadmin_log` VALUES (43, '2018-05-19 15:37:56.458000', '127.0.0.1', '8', 'iamdongfei@sina.com', 'change', '已修改 last_login，nick_name，address 和 image 。', 7, 4);
INSERT INTO `xadmin_log` VALUES (44, '2018-05-19 15:38:23.908000', '127.0.0.1', '4', 'root', 'change', '已修改 last_login，nick_name，address 和 image 。', 7, 4);
INSERT INTO `xadmin_log` VALUES (45, '2018-05-19 15:38:49.509000', '127.0.0.1', '5', 'admin', 'change', '没有字段被修改。', 7, 4);
INSERT INTO `xadmin_log` VALUES (46, '2018-05-19 15:48:12.767000', '127.0.0.1', '9', 'jack', 'create', '已添加。', 7, 4);
INSERT INTO `xadmin_log` VALUES (47, '2018-05-19 15:48:20.406000', '127.0.0.1', '1', '用户(jack)学习了Django 入门 ', 'create', '已添加。', 18, 4);
INSERT INTO `xadmin_log` VALUES (48, '2018-05-19 15:49:06.430000', '127.0.0.1', '9', 'jack', 'change', '已修改 nick_name，address 和 image 。', 7, 4);
INSERT INTO `xadmin_log` VALUES (49, '2018-05-19 16:32:31.671000', '127.0.0.1', '2', '用户(root)学习了Django 入门 ', 'create', '已添加。', 18, 4);
INSERT INTO `xadmin_log` VALUES (50, '2018-05-19 16:33:06.085000', '127.0.0.1', '3', '用户(root)学习了java入门3 ', 'create', '已添加。', 18, 4);
INSERT INTO `xadmin_log` VALUES (51, '2018-05-19 16:33:26.346000', '127.0.0.1', '4', '用户(admin)学习了java入门3 ', 'create', '已添加。', 18, 4);
INSERT INTO `xadmin_log` VALUES (52, '2018-05-19 16:35:01.231000', '127.0.0.1', '5', '用户--jack--增加课程--java入门3 ', 'create', '已添加。', 18, 4);
INSERT INTO `xadmin_log` VALUES (53, '2018-05-19 16:56:39.771000', '127.0.0.1', '11', 'java入门6', 'change', '已修改 tag 。', 10, 4);
INSERT INTO `xadmin_log` VALUES (54, '2018-05-19 16:56:47.620000', '127.0.0.1', '10', 'java入门5', 'change', '已修改 tag 。', 10, 4);
INSERT INTO `xadmin_log` VALUES (55, '2018-05-19 16:56:55.045000', '127.0.0.1', '9', 'java入门3', 'change', '已修改 tag 。', 10, 4);
INSERT INTO `xadmin_log` VALUES (56, '2018-05-19 19:02:05.349000', '127.0.0.1', '1', '基础知识', 'create', '已添加。', 12, 4);
INSERT INTO `xadmin_log` VALUES (57, '2018-05-19 19:02:38.289000', '127.0.0.1', '2', '进阶开发', 'create', '已添加。', 11, 4);
INSERT INTO `xadmin_log` VALUES (58, '2018-05-19 19:02:51.444000', '127.0.0.1', '2', '第二节', 'change', '已修改 name 。', 11, 4);
INSERT INTO `xadmin_log` VALUES (59, '2018-05-19 19:03:00.772000', '127.0.0.1', '3', '第三节', 'create', '已添加。', 11, 4);
INSERT INTO `xadmin_log` VALUES (60, '2018-05-19 19:03:21.102000', '127.0.0.1', '2', '基础训练', 'create', '已添加。', 12, 4);
INSERT INTO `xadmin_log` VALUES (61, '2018-05-19 19:03:45.713000', '127.0.0.1', '2', '冲刺训练', 'change', '已修改 lesson 和 name 。', 12, 4);
INSERT INTO `xadmin_log` VALUES (62, '2018-05-19 19:04:08.169000', '127.0.0.1', '3', '基础训练', 'create', '已添加。', 12, 4);
INSERT INTO `xadmin_log` VALUES (63, '2018-05-19 19:05:06.117000', '127.0.0.1', '4', '托尔斯泰', 'create', '已添加。', 12, 4);
INSERT INTO `xadmin_log` VALUES (64, '2018-05-19 19:05:23.839000', '127.0.0.1', '5', '就出浓浓', 'create', '已添加。', 12, 4);
INSERT INTO `xadmin_log` VALUES (65, '2018-05-19 19:17:58.157000', '127.0.0.1', '1', 'Django 入门', 'change', '已修改 students，fav_nums，add_time 和 tag 。', 10, 4);
INSERT INTO `xadmin_log` VALUES (66, '2018-05-19 19:18:48.720000', '127.0.0.1', '1', '去昂华你别', 'create', '已添加。', 13, 4);
INSERT INTO `xadmin_log` VALUES (67, '2018-05-19 19:30:30.234000', '127.0.0.1', '1', 'Django 入门', 'change', '已修改 teacher 。', 10, 4);
INSERT INTO `xadmin_log` VALUES (68, '2018-05-19 19:37:35.550000', '127.0.0.1', '1', 'Django 入门', 'change', '已修改 youneed_konw 和 teacher_tell 。', 10, 4);
INSERT INTO `xadmin_log` VALUES (69, '2018-05-19 20:07:47.828000', '127.0.0.1', '1', '用户(root)对于《Django 入门》 评论 :', 'create', '已添加。', 15, 4);
INSERT INTO `xadmin_log` VALUES (70, '2018-05-19 20:08:08.721000', '127.0.0.1', '2', '用户(jack)对于《Django 入门》 评论 :', 'create', '已添加。', 15, 4);
INSERT INTO `xadmin_log` VALUES (71, '2018-05-20 13:50:54.456000', '127.0.0.1', '5', '就出浓浓', 'change', '已修改 url 。', 12, 4);
INSERT INTO `xadmin_log` VALUES (72, '2018-05-20 14:58:45.221000', '127.0.0.1', '3', '李老师', 'create', '已添加。', 21, 4);
INSERT INTO `xadmin_log` VALUES (73, '2018-05-20 14:59:38.258000', '127.0.0.1', '4', 'Jason', 'create', '已添加。', 21, 4);
INSERT INTO `xadmin_log` VALUES (74, '2018-05-20 15:00:19.152000', '127.0.0.1', '5', '江海', 'create', '已添加。', 21, 4);
INSERT INTO `xadmin_log` VALUES (75, '2018-05-20 19:23:33.572000', '127.0.0.1', '4', 'root', 'change', '已修改 last_login 和 birthday 。', 7, 4);
INSERT INTO `xadmin_log` VALUES (76, '2018-05-20 19:30:24.557000', '127.0.0.1', '6', '用户--root--增加课程--python错误和异常 ', 'create', '已添加。', 18, 4);
INSERT INTO `xadmin_log` VALUES (77, '2018-05-20 20:00:48.822000', '127.0.0.1', '18', '用户--root--收藏--成功 ', 'create', '已添加。', 16, 4);
INSERT INTO `xadmin_log` VALUES (78, '2018-05-20 20:01:24.401000', '127.0.0.1', '19', '用户--root--收藏--成功 ', 'create', '已添加。', 16, 4);
INSERT INTO `xadmin_log` VALUES (79, '2018-05-20 20:16:50.185000', '127.0.0.1', '22', '用户--root--收藏--成功 ', 'create', '已添加。', 16, 4);
INSERT INTO `xadmin_log` VALUES (80, '2018-05-20 20:17:22.281000', '127.0.0.1', '23', '用户--root--收藏--成功 ', 'create', '已添加。', 16, 4);
INSERT INTO `xadmin_log` VALUES (81, '2018-05-20 20:56:15.502000', '127.0.0.1', '1', 'UserMessage object', 'create', '已添加。', 17, 4);
INSERT INTO `xadmin_log` VALUES (82, '2018-05-20 20:56:24.500000', '127.0.0.1', '2', 'UserMessage object', 'create', '已添加。', 17, 4);
INSERT INTO `xadmin_log` VALUES (83, '2018-05-20 21:12:24.868000', '127.0.0.1', '3', 'UserMessage object', 'create', '已添加。', 17, 4);
INSERT INTO `xadmin_log` VALUES (84, '2018-05-21 10:34:51.979000', '127.0.0.1', '1', 'Banner object', 'create', '已添加。', 9, 4);
INSERT INTO `xadmin_log` VALUES (85, '2018-05-21 10:35:05.914000', '127.0.0.1', '2', 'Banner object', 'create', '已添加。', 9, 4);
INSERT INTO `xadmin_log` VALUES (86, '2018-05-21 10:35:29.162000', '127.0.0.1', '3', 'Banner object', 'create', '已添加。', 9, 4);
INSERT INTO `xadmin_log` VALUES (87, '2018-05-21 10:35:45.411000', '127.0.0.1', '4', 'Banner object', 'create', '已添加。', 9, 4);
INSERT INTO `xadmin_log` VALUES (88, '2018-05-21 10:35:58.571000', '127.0.0.1', '5', 'Banner object', 'create', '已添加。', 9, 4);
INSERT INTO `xadmin_log` VALUES (89, '2018-05-21 10:52:38.478000', '127.0.0.1', '6', 'Banner object', 'create', '已添加。', 9, 4);
INSERT INTO `xadmin_log` VALUES (90, '2018-05-21 13:19:29.181000', '127.0.0.1', '5', 'admin', 'change', '已修改 is_staff 。', 7, 4);
INSERT INTO `xadmin_log` VALUES (91, '2018-05-21 16:10:24.425000', '127.0.0.1', '1', '慕课网', 'change', '没有字段被修改。', 20, 4);

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_usersettings_e8701ad4`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES (4, 'users_userprofile_editform_portal', 'box-0,box-1,box-2,box-3,box-4|box-5', 4);
INSERT INTO `xadmin_usersettings` VALUES (3, 'dashboard:home:pos', '', 4);
INSERT INTO `xadmin_usersettings` VALUES (5, 'dashboard:home:pos', '', 5);
INSERT INTO `xadmin_usersettings` VALUES (6, 'courses_course_editform_portal', 'box-0,lesson_set-group,courseresource_set-group,,', 4);

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `widget_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_userwidget_e8701ad4`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
