/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : lostandfound

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 26/04/2021 21:11:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ausertable
-- ----------------------------
DROP TABLE IF EXISTS `ausertable`;
CREATE TABLE `ausertable`  (
  `aname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `apwd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`aname`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ausertable
-- ----------------------------
INSERT INTO `ausertable` VALUES ('admin', '123456');

-- ----------------------------
-- Table structure for busertable
-- ----------------------------
DROP TABLE IF EXISTS `busertable`;
CREATE TABLE `busertable`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `bemail` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bpwd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bavailable` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `credit` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of busertable
-- ----------------------------
INSERT INTO `busertable` VALUES (0, 'admin', '123456', '1', 13611);
INSERT INTO `busertable` VALUES (19, '1259156356@qq.com', '123456', '1', 150);
INSERT INTO `busertable` VALUES (20, '2259156356@qq.com', '123456', '1', 5288);
INSERT INTO `busertable` VALUES (21, '3259156356@qq.com', '123456', '1', 0);
INSERT INTO `busertable` VALUES (22, '4259156356@qq.com', '123456', '1', 0);
INSERT INTO `busertable` VALUES (23, '5259156356@qq.com', '123456', '1', 0);
INSERT INTO `busertable` VALUES (24, '6259156356@qq.com', '123456', '1', 50);
INSERT INTO `busertable` VALUES (25, '7259156356@qq.com', '123456', '1', 0);
INSERT INTO `busertable` VALUES (26, '8259156356@qq.com', '123456', '1', 0);
INSERT INTO `busertable` VALUES (28, 'test', '123456', '0', 0);
INSERT INTO `busertable` VALUES (33, '201710098105@qq.com', '123456', '1', 0);
INSERT INTO `busertable` VALUES (34, '1', '1', '1', 0);

-- ----------------------------
-- Table structure for foundtable
-- ----------------------------
DROP TABLE IF EXISTS `foundtable`;
CREATE TABLE `foundtable`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `ftypename` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fimage` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fdescribe` varchar(999) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fcontact` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ftime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fisfind` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createrid` int(20) DEFAULT NULL,
  `istrusteeship` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of foundtable
-- ----------------------------
INSERT INTO `foundtable` VALUES (13, '钱包', 'ef9eae49-cac1-478f-a994-38654a61e15d.jpg', '钱包', '黑色钱包', 'QQ：1259156356', '2021-04-08 20:19:08', '0', 19, '1');
INSERT INTO `foundtable` VALUES (14, '钥匙', '6b00bbeb-dd6e-495a-b886-11a22fba419d.jpg', '钥匙', '钥匙如图所示', 'QQ：1259156356', '2021-04-08 20:19:46', '1', 19, '1');
INSERT INTO `foundtable` VALUES (15, '衣服/鞋帽', 'aa729c9a-2308-4c4e-a911-5769108e2209.jpg', '帽子', '黑色的，在C7前篮球场板下捡到', 'QQ：3259156356', '2021-04-09 02:18:40', '0', 21, '1');
INSERT INTO `foundtable` VALUES (16, '书籍/文件', 'd8665bd4-e9fb-4528-a481-150d7acef480.jpg', '高数', '高等数学，今天早上三四节在A4-301捡到', 'QQ：4259156356', '2021-04-09 02:20:33', '0', 22, '0');
INSERT INTO `foundtable` VALUES (17, '宠物', 'c10661ea-3882-487d-8500-c4c26aba0c25.jpg', '小猪佩奇', '在一饭捡到一只小猪', 'QQ：5259156356', '2021-04-09 02:25:46', '0', 23, '0');
INSERT INTO `foundtable` VALUES (18, '宠物', 'ac161124-e47b-4028-ac4a-8f46e25d16d2.jpg', '会叫的猪', '会叫的粉红色猪，在人工湖捞到的', 'QQ：5259156356', '2021-04-09 02:27:15', '0', 23, '0');
INSERT INTO `foundtable` VALUES (20, '其他', '3e6a1b66-1197-4e3a-ac75-a5d3767f1aa1.jpg', '健身器材', '在体育馆捡到，握力器', 'QQ：6259156356', '2021-04-09 02:30:07', '0', 24, '1');
INSERT INTO `foundtable` VALUES (21, '钱包', '5dcafc8a-b75b-43f1-adda-7bcc0e84de24.jpg', '钱包', '黑色的', NULL, '2021-04-13 20:50:40', '1', 0, '1');
INSERT INTO `foundtable` VALUES (23, '钱包', '447ea409-c4f9-422a-ac07-f28375dc3744.jpg', '钱包', '黑色', '膳管会', '2021-04-14 00:09:53', '1', 0, '1');
INSERT INTO `foundtable` VALUES (28, '宠物', '0328a37d-3b0d-4b9b-8a8d-c64a5d552d6a.jpg', '猪', '猪', '联系管理员', '2021-04-20 21:56:19', '0', 0, '0');
INSERT INTO `foundtable` VALUES (29, '数码产品', '0b5e571c-5536-435f-8da8-6ab3ad5d4ab4.jpg', '黑色手表', '黑色手表，今天早上三四节在A5-302捡到', 'QQ：2259156356', '2021-04-20 21:58:09', '0', 33, '0');
INSERT INTO `foundtable` VALUES (35, '其他', '79c8c9a4-7e50-42f8-8cee-6af1b7bafe1a.jpg', '魔方', '三阶魔方，今天下午在图书馆捡到', NULL, '2021-04-20 23:34:42', '0', 33, '1');
INSERT INTO `foundtable` VALUES (36, '其他', NULL, '啊', '啊', NULL, '2021-04-21 15:06:34', '0', 2, '1');

-- ----------------------------
-- Table structure for goodstype
-- ----------------------------
DROP TABLE IF EXISTS `goodstype`;
CREATE TABLE `goodstype`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `typename` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goodstype
-- ----------------------------
INSERT INTO `goodstype` VALUES (1, '其他');
INSERT INTO `goodstype` VALUES (2, '钱包');
INSERT INTO `goodstype` VALUES (3, '钥匙');
INSERT INTO `goodstype` VALUES (4, '宠物');
INSERT INTO `goodstype` VALUES (5, '卡类/证照');
INSERT INTO `goodstype` VALUES (6, '数码产品');
INSERT INTO `goodstype` VALUES (7, '手袋/挎包');
INSERT INTO `goodstype` VALUES (8, '衣服/鞋帽');
INSERT INTO `goodstype` VALUES (9, '首饰/挂饰');
INSERT INTO `goodstype` VALUES (10, '行李/包裹');
INSERT INTO `goodstype` VALUES (11, '书籍/文件');
INSERT INTO `goodstype` VALUES (22, '护肤品');
INSERT INTO `goodstype` VALUES (24, '啊');

-- ----------------------------
-- Table structure for losttable
-- ----------------------------
DROP TABLE IF EXISTS `losttable`;
CREATE TABLE `losttable`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `ltypename` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `limage` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `lname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ldescribe` varchar(999) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `lcontact` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ltime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `lisfind` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createrid` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of losttable
-- ----------------------------
INSERT INTO `losttable` VALUES (29, '卡类/证照', '0e13bb8b-d566-4c3c-96c8-3d04a6e3fdda.jpg', '一卡通', '华南理工大学广州学院一卡通\r\n学号：201710098105', 'QQ：1259156356', '2021-04-08 20:18:48', '0', 19);
INSERT INTO `losttable` VALUES (30, '数码产品', 'aeda81cb-39e7-4b36-815a-05fe4b400fe8.jpg', '手表', '黑色电子表如图所示', 'QQ：3259156356', '2021-04-09 02:15:38', '0', 21);
INSERT INTO `losttable` VALUES (31, '数码产品', 'a88a4ea9-72de-4ca5-8b63-9279a04e4632.jpg', '移动硬盘', '红色移动硬盘如图所示', 'QQ：3259156356', '2021-04-09 02:16:28', '0', 21);
INSERT INTO `losttable` VALUES (32, '书籍/文件', 'e03adfc6-6280-497d-b31a-41cfcd3fa7a3.jpg', 'Java EE框架整合开发入门到实践', '晚上在图书馆一楼地上捡到', 'QQ：4259156356', '2021-04-09 02:22:16', '0', 22);
INSERT INTO `losttable` VALUES (33, '书籍/文件', '538af734-dd94-4071-a630-0ccc8b2b4912.jpg', '设计模式', '下午三四节在B5-429捡到', 'QQ：4259156356', '2021-04-09 02:23:30', '0', 22);
INSERT INTO `losttable` VALUES (34, '其他', '984b0c4e-c3c2-4160-99f4-9efcd63aeda1.jpg', '魔方', '二阶魔方，在心形湖捡到', 'QQ：5259156356', '2021-04-09 02:28:07', '0', 23);
INSERT INTO `losttable` VALUES (43, '钥匙', '4b4f2183-fc06-4b85-b330-657974fafcaf.jpg', '钥匙', '钥匙上有一只暴力熊、一只小猫、一个小镜子和三支钥匙', 'QQ：2259156356', '2021-04-20 21:21:58', '0', 33);
INSERT INTO `losttable` VALUES (44, '其他', NULL, 'z', 'z', '', '2021-04-21 14:13:19', '0', 0);

-- ----------------------------
-- Table structure for noticetable
-- ----------------------------
DROP TABLE IF EXISTS `noticetable`;
CREATE TABLE `noticetable`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `ntitle` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ncontent` varchar(9999) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ntime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of noticetable
-- ----------------------------
INSERT INTO `noticetable` VALUES (6, '失物招领温馨提示 ', '为更好的服务广大师生财物安全，特设置了“失物招领”专栏，对送交我处的失物，第一时间在保卫处网站“失物招领”专栏进行公告，同时，对能判断失主信息的失物我们及时联系失主，或联络院系单位帮助寻找失主等。在此烦请广大师生相互转告，如有物品丢失，请随时关注“失物招领”专栏与保卫处联系。同时，为了解决存量失物长期无人认领等保管难题，我们定在每年5月份，通过学校电子公告栏及师生电子邮件群发方式，再次对未领取的失物进行招领公告与提醒，在公告后30天内仍无人认领，我们将对上一年度（易腐烂之物以腐烂期为周期处理）的失物进行分类处理，对涉及个人隐私的物品，在第三方监督下进行统一销毁处理，对可利用的物品捐献给学校慈善机构，特此告知。\r\n　　最后，寒假将至，为了您度假愉快，请您保管好自己的物品，谨防丢失和扒窃，在此也祝愿广大师生：新年快乐，出入平安！', '2021-04-09 02:38:28');
INSERT INTO `noticetable` VALUES (7, '一旦违反封号处理！发布警示信息：这些行为要警惕', '    1、请广大用户在使用过程中不要利用该系统发布违法信息，也不要参与任何形式的欺诈活动。\r\n\r\n\r\n    2、警惕网络欺诈，重视反欺诈安全提示，拒绝“天上掉馅饼”的诱惑，保护好自己的财产安全。\r\n\r\n\r\n    3、涉及到口罩等医疗用品，用过的一次性口罩最好扔掉，确保产品质量和资金安全，保护自己和家人的安全。', '2021-04-09 02:41:33');

-- ----------------------------
-- Table structure for ordertable
-- ----------------------------
DROP TABLE IF EXISTS `ordertable`;
CREATE TABLE `ordertable`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `prizeid` int(20) DEFAULT NULL,
  `prizename` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `prizedescribe` varchar(999) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pimage` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pcredit` int(20) DEFAULT NULL,
  `createrid` int(20) DEFAULT NULL,
  `ordertime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `endtime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `closetime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `state` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ordertable
-- ----------------------------
INSERT INTO `ordertable` VALUES (46, 9, '魔方', '三阶的', 'd61b94bf-b823-4448-8bbc-d8a51447c8ec.jpg', 200, 0, '2021-04-15 16:50:29', NULL, '2021-04-15 16:50:44', '1');
INSERT INTO `ordertable` VALUES (47, 9, '魔方', '三阶的', 'd61b94bf-b823-4448-8bbc-d8a51447c8ec.jpg', 200, 0, '2021-04-15 17:18:21', NULL, '2021-04-15 19:34:31', '1');
INSERT INTO `ordertable` VALUES (48, 9, '魔方', '三阶的', 'd61b94bf-b823-4448-8bbc-d8a51447c8ec.jpg', 200, 20, '2021-04-15 18:30:08', '2021-04-15 19:33:20', NULL, '2');
INSERT INTO `ordertable` VALUES (49, 9, '魔方', '三阶的', 'd61b94bf-b823-4448-8bbc-d8a51447c8ec.jpg', 200, 20, '2021-04-15 19:35:34', NULL, '2021-04-21 19:14:23', '1');
INSERT INTO `ordertable` VALUES (50, 9, '魔方', '三阶的', 'd61b94bf-b823-4448-8bbc-d8a51447c8ec.jpg', 200, 20, '2021-04-15 19:35:37', NULL, '2021-04-21 19:15:47', '1');
INSERT INTO `ordertable` VALUES (51, 9, '魔方', '三阶的', 'd61b94bf-b823-4448-8bbc-d8a51447c8ec.jpg', 200, 20, '2021-04-15 19:35:39', NULL, '2021-04-21 19:16:08', '1');
INSERT INTO `ordertable` VALUES (52, 11, '魔方', '二阶的', 'a5182418-d19d-4fe4-a3c4-a6d9e991acfd.jpg', 100, 0, '2021-04-15 20:06:06', '2021-04-20 22:25:24', NULL, '2');
INSERT INTO `ordertable` VALUES (53, 11, '魔方', '二阶的', 'a5182418-d19d-4fe4-a3c4-a6d9e991acfd.jpg', 100, 20, '2021-04-15 20:06:09', '2021-04-21 19:17:51', NULL, '2');
INSERT INTO `ordertable` VALUES (54, 12, '玩具', '小猪佩奇', '043027ce-cdec-4dfd-802b-737e219ff88e.jpg', 400, 20, '2021-04-15 20:06:22', NULL, '2021-04-21 19:16:49', '1');
INSERT INTO `ordertable` VALUES (55, 12, '玩具', '小猪佩奇', '043027ce-cdec-4dfd-802b-737e219ff88e.jpg', 400, 20, '2021-04-15 20:06:24', NULL, '2021-04-21 19:17:05', '1');
INSERT INTO `ordertable` VALUES (56, 12, '玩具', '小猪佩奇', '043027ce-cdec-4dfd-802b-737e219ff88e.jpg', 400, 0, '2021-04-15 20:06:28', NULL, '2021-04-21 19:16:27', '1');
INSERT INTO `ordertable` VALUES (57, 12, '玩具', '小猪佩奇', '043027ce-cdec-4dfd-802b-737e219ff88e.jpg', 400, 20, '2021-04-15 20:07:09', NULL, '2021-04-21 19:23:14', '1');
INSERT INTO `ordertable` VALUES (58, 12, '玩具', '小猪佩奇', '043027ce-cdec-4dfd-802b-737e219ff88e.jpg', 400, 20, '2021-04-15 20:07:13', NULL, '2021-04-21 19:24:26', '1');
INSERT INTO `ordertable` VALUES (59, 12, '玩具', '小猪佩奇', '043027ce-cdec-4dfd-802b-737e219ff88e.jpg', 400, 20, '2021-04-15 20:07:15', '2021-04-21 19:18:31', NULL, '2');
INSERT INTO `ordertable` VALUES (60, 12, '玩具', '小猪佩奇', '043027ce-cdec-4dfd-802b-737e219ff88e.jpg', 400, 20, '2021-04-15 20:07:18', NULL, '2021-04-21 19:29:18', '1');
INSERT INTO `ordertable` VALUES (61, 12, '玩具', '小猪佩奇', '043027ce-cdec-4dfd-802b-737e219ff88e.jpg', 400, 20, '2021-04-15 20:07:20', NULL, '2021-04-21 19:25:13', '1');
INSERT INTO `ordertable` VALUES (62, 12, '玩具', '小猪佩奇', '043027ce-cdec-4dfd-802b-737e219ff88e.jpg', 400, 20, '2021-04-15 20:07:23', NULL, '2021-04-21 19:28:22', '1');
INSERT INTO `ordertable` VALUES (63, 9, '魔方', '三阶的', 'd61b94bf-b823-4448-8bbc-d8a51447c8ec.jpg', 200, 0, '2021-04-21 14:30:04', NULL, '2021-04-21 19:19:44', '1');
INSERT INTO `ordertable` VALUES (64, 9, '魔方', '三阶的', 'd61b94bf-b823-4448-8bbc-d8a51447c8ec.jpg', 200, 0, '2021-04-21 19:19:39', NULL, NULL, '0');
INSERT INTO `ordertable` VALUES (65, 9, '魔方', '三阶的', 'd61b94bf-b823-4448-8bbc-d8a51447c8ec.jpg', 200, 33, '2021-04-21 19:27:15', NULL, '2021-04-21 19:27:41', '1');
INSERT INTO `ordertable` VALUES (66, 9, '魔方', '三阶的', 'd61b94bf-b823-4448-8bbc-d8a51447c8ec.jpg', 200, 20, '2021-04-21 19:32:23', NULL, '2021-04-21 19:36:30', '1');
INSERT INTO `ordertable` VALUES (67, 12, '玩具', '小猪佩奇', '043027ce-cdec-4dfd-802b-737e219ff88e.jpg', 400, 20, '2021-04-21 19:32:26', NULL, '2021-04-21 19:35:17', '1');
INSERT INTO `ordertable` VALUES (68, 9, '魔方', '三阶的', 'd61b94bf-b823-4448-8bbc-d8a51447c8ec.jpg', 200, 20, '2021-04-21 19:32:28', NULL, '2021-04-21 19:36:50', '1');
INSERT INTO `ordertable` VALUES (69, 12, '玩具', '小猪佩奇', '043027ce-cdec-4dfd-802b-737e219ff88e.jpg', 400, 20, '2021-04-21 19:32:30', NULL, NULL, '0');
INSERT INTO `ordertable` VALUES (70, 9, '魔方', '三阶的', 'd61b94bf-b823-4448-8bbc-d8a51447c8ec.jpg', 200, 20, '2021-04-21 19:32:31', NULL, NULL, '0');
INSERT INTO `ordertable` VALUES (71, 9, '魔方', '三阶的', 'd61b94bf-b823-4448-8bbc-d8a51447c8ec.jpg', 200, 33, '2021-04-21 20:02:23', NULL, NULL, '0');

-- ----------------------------
-- Table structure for prizetable
-- ----------------------------
DROP TABLE IF EXISTS `prizetable`;
CREATE TABLE `prizetable`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `prizename` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `prizedescribe` varchar(999) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pimage` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pcredit` int(20) DEFAULT NULL,
  `pamount` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prizetable
-- ----------------------------
INSERT INTO `prizetable` VALUES (9, '魔方', '三阶的', 'd61b94bf-b823-4448-8bbc-d8a51447c8ec.jpg', 200, 44);
INSERT INTO `prizetable` VALUES (11, '魔方', '二阶的', 'a5182418-d19d-4fe4-a3c4-a6d9e991acfd.jpg', 100, 0);
INSERT INTO `prizetable` VALUES (12, '玩具', '小猪佩奇', '043027ce-cdec-4dfd-802b-737e219ff88e.jpg', 400, 7);

SET FOREIGN_KEY_CHECKS = 1;
