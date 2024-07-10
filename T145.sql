/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t145`;
CREATE DATABASE IF NOT EXISTS `t145` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t145`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'gonggao_types', '公告类型名称', 1, '公告类型1', NULL, NULL, '2022-01-22 07:02:57'),
	(2, 'gonggao_types', '公告类型名称', 2, '公告类型2', NULL, NULL, '2022-01-22 07:02:57'),
	(3, 'sex_types', '性别类型名称', 1, '男', NULL, NULL, '2022-01-22 07:02:57'),
	(4, 'sex_types', '性别类型名称', 2, '女', NULL, NULL, '2022-01-22 07:02:57'),
	(5, 'jiankang_types', '健康状态', 1, '健康', NULL, NULL, '2022-01-22 07:02:57'),
	(6, 'jiankang_types', '健康状态', 2, '疑似', NULL, NULL, '2022-01-22 07:02:57'),
	(7, 'jiankang_types', '健康状态', 3, '感染', NULL, NULL, '2022-01-22 07:02:57'),
	(8, 'didian_types', '地点状态', 1, '安全地区', NULL, NULL, '2022-01-22 07:02:57'),
	(9, 'didian_types', '地点状态', 2, '风险地区', NULL, NULL, '2022-01-22 07:02:57'),
	(10, 'jiance_types', '检测结果', 1, '安全', NULL, NULL, '2022-01-22 07:02:58'),
	(11, 'jiance_types', '检测结果', 2, '感染', NULL, NULL, '2022-01-22 07:02:58'),
	(12, 'yimiao_types', '疫苗类型名称', 1, '一期疫苗', NULL, NULL, '2022-01-22 07:02:58'),
	(13, 'yimiao_types', '疫苗类型名称', 2, '二期疫苗', NULL, NULL, '2022-01-22 07:02:58'),
	(14, 'yimiao_types', '疫苗类型名称', 3, '三期疫苗', NULL, NULL, '2022-01-22 07:02:58'),
	(15, 'yimiaoyuyue_types', '状态', 1, '已预约', NULL, NULL, '2022-01-22 07:02:58'),
	(16, 'yimiaoyuyue_types', '状态', 2, '已打', NULL, NULL, '2022-01-22 07:02:58'),
	(17, 'kouzhao_types', '口罩类型名称', 1, 'N95', NULL, NULL, '2022-01-22 07:02:58'),
	(18, 'kouzhao_types', '口罩类型名称', 2, '医用口罩', NULL, NULL, '2022-01-22 07:02:58'),
	(19, 'kouzhao_types', '口罩类型名称', 3, '一次性口罩', NULL, NULL, '2022-01-22 07:02:58'),
	(20, 'kouzhaoyuyue_types', '状态', 1, '已预订', NULL, NULL, '2022-01-22 07:02:58'),
	(21, 'kouzhaoyuyue_types', '状态', 2, '已领取', NULL, NULL, '2022-01-22 07:02:58'),
	(22, 'yimiao_types', '疫苗类型名称', 4, '四期疫苗', NULL, '', '2022-01-22 09:12:27');

DROP TABLE IF EXISTS `didian`;
CREATE TABLE IF NOT EXISTS `didian` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `didian_name` varchar(200) DEFAULT NULL COMMENT '地点名称 Search111 ',
  `didian_types` int DEFAULT NULL COMMENT '地点状态 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='地点';

DELETE FROM `didian`;
INSERT INTO `didian` (`id`, `didian_name`, `didian_types`, `insert_time`, `create_time`) VALUES
	(1, '地点1', 1, '2022-01-22 07:35:50', '2022-01-22 07:35:50'),
	(2, '地点2', 1, '2022-01-22 07:35:58', '2022-01-22 07:35:58'),
	(3, '地点3', 1, '2022-01-22 07:36:05', '2022-01-22 07:36:05'),
	(4, '地点4', 1, '2022-01-22 09:12:40', '2022-01-22 09:12:40');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'http://localhost:8080/jiechuzhe/upload/1642842774440.jpg', 1, '2022-01-22 07:02:57', '<p>公告详情1111</p>', '2022-01-22 07:02:57'),
	(2, '公告1', 'http://localhost:8080/jiechuzhe/upload/1642836973578.jpg', 1, '2022-01-22 07:36:21', '<p>公告1的内容</p>', '2022-01-22 07:36:21');

DROP TABLE IF EXISTS `guiji`;
CREATE TABLE IF NOT EXISTS `guiji` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `didian_id` int DEFAULT NULL COMMENT '地点',
  `guiji_time` timestamp NULL DEFAULT NULL COMMENT '去的时间 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='用户轨迹';

DELETE FROM `guiji`;
INSERT INTO `guiji` (`id`, `yonghu_id`, `didian_id`, `guiji_time`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, '2022-01-06 16:00:00', '2022-01-22 08:42:43', '2022-01-22 08:42:43'),
	(2, 1, 2, '2022-01-21 18:02:03', '2022-01-22 08:43:06', '2022-01-22 08:43:06'),
	(3, 2, 4, '2022-01-19 16:00:00', '2022-01-22 09:14:00', '2022-01-22 09:14:00'),
	(4, 2, 3, '2022-01-27 20:04:02', '2022-01-22 09:18:21', '2022-01-22 09:18:21');

DROP TABLE IF EXISTS `hesuan`;
CREATE TABLE IF NOT EXISTS `hesuan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '检测人',
  `jiance_types` int DEFAULT NULL COMMENT '检测结果 Search111 ',
  `jiance_time` date DEFAULT NULL COMMENT '检测时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='核算检测';

DELETE FROM `hesuan`;
INSERT INTO `hesuan` (`id`, `yonghu_id`, `jiance_types`, `jiance_time`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, '2022-01-22', '2022-01-22 07:36:42', '2022-01-22 07:36:42'),
	(2, 2, 1, '2022-01-21', '2022-01-22 09:14:12', '2022-01-22 09:14:12');

DROP TABLE IF EXISTS `kouzhao`;
CREATE TABLE IF NOT EXISTS `kouzhao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kouzhao_name` varchar(200) DEFAULT NULL COMMENT '口罩名称 Search111 ',
  `kouzhao_types` int DEFAULT NULL COMMENT '口罩类型 Search111 ',
  `kouzhao_number` int DEFAULT NULL COMMENT '口罩数量  Search111',
  `kouzhao_content` text COMMENT '备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='口罩';

DELETE FROM `kouzhao`;
INSERT INTO `kouzhao` (`id`, `kouzhao_name`, `kouzhao_types`, `kouzhao_number`, `kouzhao_content`, `insert_time`, `create_time`) VALUES
	(1, '来自北京的n95口罩', 1, 700, '<p>无</p>', '2022-01-22 07:38:41', '2022-01-22 07:38:41'),
	(2, '一次性口罩', 3, 1400, '<p>无</p>', '2022-01-22 09:14:44', '2022-01-22 09:14:44');

DROP TABLE IF EXISTS `kouzhaoyuyue`;
CREATE TABLE IF NOT EXISTS `kouzhaoyuyue` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '预订人',
  `kouzhao_id` int DEFAULT NULL COMMENT '口罩',
  `yueding_number` int DEFAULT NULL COMMENT '预定数量',
  `kouzhaoyuyue_types` int DEFAULT NULL COMMENT '状态 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '预订时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='口罩预订';

DELETE FROM `kouzhaoyuyue`;
INSERT INTO `kouzhaoyuyue` (`id`, `yonghu_id`, `kouzhao_id`, `yueding_number`, `kouzhaoyuyue_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 200, 2, '2022-01-22 07:38:41', '2022-01-22 07:27:08'),
	(2, 1, 1, 100, 2, '2022-01-22 07:38:41', '2022-01-22 07:27:08'),
	(3, 2, 2, 100, 1, '2022-01-22 09:19:23', '2022-01-22 09:19:23');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', 'hy47jm2na1ynsvw4pa2ezqqkot3ubso3', '2022-01-22 07:26:22', '2024-04-19 13:36:37'),
	(2, 1, 'a1', 'yonghu', '用户', 'czyzku2ghef3xxxfxoksetym39bdzjxm', '2022-01-22 07:27:20', '2024-04-19 13:38:26'),
	(3, 1, 'a1', 'yihu', '医护人员', 'qqijs16sf0044i0klekx9scvqv8zr437', '2022-01-22 09:16:30', '2024-04-19 13:38:10'),
	(4, 2, 'a2', 'yonghu', '用户', '71axaa6jjqdyolsodsfuz5vhvvg2lfbv', '2022-01-22 09:17:26', '2022-01-22 10:17:27');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2021-04-27 06:51:13');

DROP TABLE IF EXISTS `yihu`;
CREATE TABLE IF NOT EXISTS `yihu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yihu_name` varchar(200) DEFAULT NULL COMMENT '医护人员姓名 Search111 ',
  `yihu_phone` varchar(200) DEFAULT NULL COMMENT '医护人员手机号 Search111 ',
  `yihu_id_number` varchar(200) DEFAULT NULL COMMENT '医护人员身份证号 Search111 ',
  `yihu_photo` varchar(200) DEFAULT NULL COMMENT '医护人员头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='医护人员';

DELETE FROM `yihu`;
INSERT INTO `yihu` (`id`, `username`, `password`, `yihu_name`, `yihu_phone`, `yihu_id_number`, `yihu_photo`, `sex_types`, `create_time`) VALUES
	(1, '医护1', '123456', '张1', '17703786901', '410224199610232001', 'http://localhost:8080/jiechuzhe/upload/1642837809090.jpg', 1, '2022-01-22 07:50:11'),
	(2, '医护2', '123456', '张2', '17703786902', '410224199610232002', 'http://localhost:8080/jiechuzhe/upload/1642842916463.jpg', 1, '2022-01-22 09:15:18');

DROP TABLE IF EXISTS `yimiao`;
CREATE TABLE IF NOT EXISTS `yimiao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yimiao_name` varchar(200) DEFAULT NULL COMMENT '疫苗名称 Search111 ',
  `yimiao_types` int DEFAULT NULL COMMENT '疫苗类型 Search111 ',
  `yimiao_number` int DEFAULT NULL COMMENT '疫苗数量  Search111',
  `yimiao_content` text COMMENT '备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='疫苗';

DELETE FROM `yimiao`;
INSERT INTO `yimiao` (`id`, `yimiao_name`, `yimiao_types`, `yimiao_number`, `yimiao_content`, `insert_time`, `create_time`) VALUES
	(1, '张1公司生产的一期疫苗', 1, 998, '<p>无</p>', '2022-01-22 07:53:04', '2022-01-22 07:53:04'),
	(2, '张1公司生产的二期疫苗', 2, 2000, '<p>无</p>', '2022-01-22 07:53:26', '2022-01-22 07:53:26'),
	(3, '张2公司生成的四期疫苗', 4, 9000, '<p>无</p>', '2022-01-22 09:15:41', '2022-01-22 09:15:41');

DROP TABLE IF EXISTS `yimiaoyuyue`;
CREATE TABLE IF NOT EXISTS `yimiaoyuyue` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '预约人',
  `yimiao_id` int DEFAULT NULL COMMENT '疫苗',
  `yimiaoyuyue_types` int DEFAULT NULL COMMENT '状态 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='疫苗预约';

DELETE FROM `yimiaoyuyue`;
INSERT INTO `yimiaoyuyue` (`id`, `yonghu_id`, `yimiao_id`, `yimiaoyuyue_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 2, '2022-01-22 07:53:04', '2022-01-22 07:27:08'),
	(2, 2, 1, 1, '2022-01-22 09:19:46', '2022-01-22 09:19:46');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `jiankang_types` int DEFAULT NULL COMMENT '健康状态',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `jiankang_types`, `create_time`) VALUES
	(1, '用户1', '123456', '张1', '17703786901', '410224199610232001', 'http://localhost:8080/jiechuzhe/upload/1642836422802.jpg', 2, 1, '2022-01-22 07:27:08'),
	(2, '用户2', '123456', '张2', '17703786902', '410224199610232002', 'http://localhost:8080/jiechuzhe/upload/1642842811787.jpg', 1, 1, '2022-01-22 09:13:37'),
	(3, '用户3', '123456', '张3', '17703786903', '410224199610232003', NULL, NULL, 1, '2022-01-22 09:20:31');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
