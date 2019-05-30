/*
Navicat MySQL Data Transfer

Source Server         : Zero
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : graduation

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-05-30 17:36:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_no` varchar(20) NOT NULL,
  `admin_password` varchar(20) NOT NULL,
  PRIMARY KEY (`admin_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', 'admin');

-- ----------------------------
-- Table structure for coursedesign
-- ----------------------------
DROP TABLE IF EXISTS `coursedesign`;
CREATE TABLE `coursedesign` (
  `course_no` int(3) NOT NULL AUTO_INCREMENT,
  `major_no` int(3) NOT NULL,
  `tea_no` varchar(20) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `flag` int(1) NOT NULL DEFAULT '0',
  `is_choose` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`course_no`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coursedesign
-- ----------------------------

-- ----------------------------
-- Table structure for major
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major` (
  `major_no` int(3) NOT NULL AUTO_INCREMENT,
  `major_name` varchar(50) NOT NULL,
  PRIMARY KEY (`major_no`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of major
-- ----------------------------

-- ----------------------------
-- Table structure for refer
-- ----------------------------
DROP TABLE IF EXISTS `refer`;
CREATE TABLE `refer` (
  `stu_no` varchar(20) CHARACTER SET utf8 NOT NULL,
  `tea_no` varchar(20) CHARACTER SET utf8 NOT NULL,
  `fname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `location` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `size` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `refer_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of refer
-- ----------------------------

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `stu_no` varchar(20) NOT NULL,
  `course_no` int(3) NOT NULL,
  `desain_score` int(3) unsigned DEFAULT NULL,
  `report_score` int(3) unsigned DEFAULT NULL,
  `score` int(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`stu_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `stu_no` varchar(20) NOT NULL,
  `stu_name` varchar(20) NOT NULL,
  `stu_sex` varchar(1) DEFAULT NULL,
  `major_no` int(3) NOT NULL,
  `tea_no` varchar(20) NOT NULL,
  `stu_password` varchar(20) NOT NULL,
  `stu_login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`stu_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `subject_no` int(3) NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `major_no` int(3) NOT NULL,
  `major_start_time` date DEFAULT NULL,
  `major_end_time` date DEFAULT NULL,
  `major_desain_percentage` int(3) unsigned NOT NULL DEFAULT '0',
  `major_report_percentage` int(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`subject_no`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of subject
-- ----------------------------

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tea_no` varchar(20) NOT NULL,
  `tea_name` varchar(20) NOT NULL,
  `tea_sex` varchar(1) NOT NULL,
  `major_no` int(3) NOT NULL,
  `subject_no` int(3) NOT NULL,
  `tea_password` varchar(20) NOT NULL,
  `tea_login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`tea_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------

-- ----------------------------
-- Table structure for template
-- ----------------------------
DROP TABLE IF EXISTS `template`;
CREATE TABLE `template` (
  `template_no` int(3) NOT NULL AUTO_INCREMENT,
  `major_no` int(3) NOT NULL,
  `tea_no` varchar(20) CHARACTER SET utf8 NOT NULL,
  `fname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `location` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`template_no`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of template
-- ----------------------------
