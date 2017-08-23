-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.6.17 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 mess 的数据库结构
CREATE DATABASE IF NOT EXISTS `mess` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mess`;

-- 导出  表 mess.mess 结构
CREATE TABLE IF NOT EXISTS `mess` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message` text,
  `name` varchar(30) NOT NULL DEFAULT '0',
  `time` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- 正在导出表  mess.mess 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `mess` DISABLE KEYS */;
REPLACE INTO `mess` (`id`, `message`, `name`, `time`) VALUES
	(1, '21312', 'test1', '2017-08-23 07:27:13'),
	(2, '21312', 'test1', '2017-08-23 07:27:13'),
	(3, '21312', 'test1', '2017-08-23 07:31:48'),
	(4, '21312', 'test1', '2017-08-23 07:31:48'),
	(5, '21312', 'test1', '2017-08-23 07:32:04'),
	(6, '21312', 'test1', '2017-08-23 07:32:04'),
	(7, '21312', 'test1', '2017-08-23 07:32:30'),
	(8, '21312', 'test1', '2017-08-23 07:32:30'),
	(9, '21312', 'test1', '2017-08-23 07:33:46'),
	(10, '21312', 'test1', '2017-08-23 07:33:46'),
	(11, '213121312', 'test1', '2017-08-23 07:33:50'),
	(12, '213121312', 'test1', '2017-08-23 07:33:50'),
	(13, '213121312', 'test1', '2017-08-23 07:34:26'),
	(14, '213121312', 'test1', '2017-08-23 07:34:26'),
	(15, '213121312', 'test1', '2017-08-23 07:38:12'),
	(16, '213121312', 'test1', '2017-08-23 07:38:12'),
	(17, '213121312', 'test1', '2017-08-23 07:39:23'),
	(18, '213121312', 'test1', '2017-08-23 07:39:23'),
	(19, '213121312', 'test1', '2017-08-23 07:40:23'),
	(20, '213121312', 'test1', '2017-08-23 07:40:23'),
	(21, '213121312', 'test1', '2017-08-23 07:42:09'),
	(22, '213121312', 'test1', '2017-08-23 07:42:09'),
	(23, '213121312', 'test1', '2017-08-23 07:43:06'),
	(24, '213121312', 'test1', '2017-08-23 07:43:59'),
	(25, '213121312', 'test1', '2017-08-23 07:44:21'),
	(26, '213121312', 'test1', '2017-08-23 07:44:32'),
	(27, '213121312', 'test1', '2017-08-23 07:44:41'),
	(28, '213121312', 'test1', '2017-08-23 07:44:50'),
	(29, '213121312', 'test1', '2017-08-23 07:45:18'),
	(30, '213121312', 'test1', '2017-08-23 07:45:54');
/*!40000 ALTER TABLE `mess` ENABLE KEYS */;

-- 导出  表 mess.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- 正在导出表  mess.user 的数据：~6 rows (大约)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
REPLACE INTO `user` (`id`, `name`, `password`) VALUES
	(10, 'test1', '4297f44b13955235245b2497399d7a93'),
	(14, 'test2', '4297f44b13955235245b2497399d7a93'),
	(16, 'test3', '4297f44b13955235245b2497399d7a93'),
	(19, 'test4', '4297f44b13955235245b2497399d7a93'),
	(22, 'test5', '4297f44b13955235245b2497399d7a93'),
	(24, 'test6', '4297f44b13955235245b2497399d7a93');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
