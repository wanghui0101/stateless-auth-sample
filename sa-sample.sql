/*
Navicat MySQL Data Transfer

Source Server         : localhost_本地
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : sa-sample

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-06-07 13:01:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_resource
-- ----------------------------
DROP TABLE IF EXISTS `t_resource`;
CREATE TABLE `t_resource` (
  `id` varchar(36) NOT NULL,
  `description` varchar(30) NOT NULL,
  `permission` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_resource
-- ----------------------------
INSERT INTO `t_resource` VALUES ('0b5c6b8f-28d9-4d93-ae25-cfe1bfd7560a', '需要授权的模块', 'index:authz');
INSERT INTO `t_resource` VALUES ('53db6d59-f6fb-49e9-be7f-c740220b86e4', '首页展示内容3', 'index:show:3');
INSERT INTO `t_resource` VALUES ('e3b8b2c2-0266-4e12-8d1c-fdc978a33efc', '首页展示内容2', 'index:show:2');
INSERT INTO `t_resource` VALUES ('f121d9d1-6f71-4cbd-b297-d6cefdeeedd5', '首页展示内容1', 'index:show:1');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` varchar(36) NOT NULL,
  `name` varchar(30) NOT NULL,
  `text` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('2eaa2fac-a035-46e5-9665-31874667e468', 'sample-role-1', '示例角色1号');
INSERT INTO `t_role` VALUES ('cf176ee0-f4c2-4a6a-bc65-85e0f45cace6', 'sample-role-2', '示例角色2号');

-- ----------------------------
-- Table structure for t_role_resource_rel
-- ----------------------------
DROP TABLE IF EXISTS `t_role_resource_rel`;
CREATE TABLE `t_role_resource_rel` (
  `id` varchar(36) NOT NULL,
  `resource_id` varchar(36) NOT NULL,
  `role_id` varchar(36) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_resource_rel
-- ----------------------------
INSERT INTO `t_role_resource_rel` VALUES ('5b96a836-0750-4d41-bcf0-06b03131dc43', '0b5c6b8f-28d9-4d93-ae25-cfe1bfd7560a', '2eaa2fac-a035-46e5-9665-31874667e468');
INSERT INTO `t_role_resource_rel` VALUES ('76873fb5-badd-498e-90dc-900cc36bbd00', 'f121d9d1-6f71-4cbd-b297-d6cefdeeedd5', '2eaa2fac-a035-46e5-9665-31874667e468');
INSERT INTO `t_role_resource_rel` VALUES ('8069bcdb-1e9d-4ced-880e-1241d25d318b', 'e3b8b2c2-0266-4e12-8d1c-fdc978a33efc', 'cf176ee0-f4c2-4a6a-bc65-85e0f45cace6');
INSERT INTO `t_role_resource_rel` VALUES ('8c634366-5018-4b3a-86dc-1b723cf9b74a', 'f121d9d1-6f71-4cbd-b297-d6cefdeeedd5', 'cf176ee0-f4c2-4a6a-bc65-85e0f45cace6');
INSERT INTO `t_role_resource_rel` VALUES ('9da30cb9-060f-4af0-985c-a6fc1deaca9c', '53db6d59-f6fb-49e9-be7f-c740220b86e4', '2eaa2fac-a035-46e5-9665-31874667e468');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` varchar(36) NOT NULL,
  `username` varchar(36) NOT NULL,
  `name` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(40) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('c627a1b9-e2a4-4ede-9d7f-5d3496c6e62e', 'user1', '用户1', 'b5e403dd2ae47e0742a1ca718d7aed13b0359714', '1cb3dc7ba08aa23e', '185****9520'); -- user1/111111
INSERT INTO `t_user` VALUES ('e34ae468-e4d8-4da8-9445-0bf90af85962', 'user2', '用户2', '4bf97984e7e2ee8322a8676e3795c0527a28c18c', '2a65f8f265deb6d2', '185****7520'); -- user2/111111

-- ----------------------------
-- Table structure for t_user_role_rel
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role_rel`;
CREATE TABLE `t_user_role_rel` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) NOT NULL,
  `role_id` varchar(36) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_role_rel
-- ----------------------------
INSERT INTO `t_user_role_rel` VALUES ('02a84e45-871b-4fc3-adc3-09807eeb2974', 'e34ae468-e4d8-4da8-9445-0bf90af85962', 'cf176ee0-f4c2-4a6a-bc65-85e0f45cace6');
INSERT INTO `t_user_role_rel` VALUES ('09a14d50-42c3-4730-af71-a01bbe9d9c1f', 'c627a1b9-e2a4-4ede-9d7f-5d3496c6e62e', 'cf176ee0-f4c2-4a6a-bc65-85e0f45cace6');
INSERT INTO `t_user_role_rel` VALUES ('876300c2-accb-4e11-8578-57298db98d49', 'c627a1b9-e2a4-4ede-9d7f-5d3496c6e62e', '2eaa2fac-a035-46e5-9665-31874667e468');
