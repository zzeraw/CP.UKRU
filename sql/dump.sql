-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.5.41-log - MySQL Community Server (GPL)
-- ОС Сервера:                   Win32
-- HeidiSQL Версия:              8.1.0.4545
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица cakes.banners
DROP TABLE IF EXISTS `banners`;
CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  `link` varchar(256) DEFAULT NULL,
  `image` varchar(512) NOT NULL,
  `image_attr_title` varchar(512) DEFAULT NULL,
  `image_attr_alt` varchar(512) DEFAULT NULL,
  `body` mediumtext,
  `nn` int(11) NOT NULL DEFAULT '0',
  `created_ip` varchar(300) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_username` varchar(300) DEFAULT NULL,
  `created_username` varchar(200) DEFAULT NULL,
  `modified_ip` varchar(300) DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cakes.banners: ~17 rows (приблизительно)
DELETE FROM `banners`;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` (`id`, `title`, `link`, `image`, `image_attr_title`, `image_attr_alt`, `body`, `nn`, `created_ip`, `created_datetime`, `created_user`, `modified_username`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `active`) VALUES
	(1, 'Баннер 1', NULL, 'banner-03.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
	(2, 'Баннер 2', NULL, 'banner-04.jpg', NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
	(3, 'Баннер_3', NULL, 'banner-05.jpg', NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
	(4, 'Баннер 4', NULL, 'banner-08.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
	(5, 'Шоколадный торт', NULL, 'banner_1417611073.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(6, 'Шоколадный торт', NULL, 'banner_1417611213.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(7, 'Шоколадно-ягодный торт', NULL, 'banner_1417610939.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(8, 'Шоколадный мини торт', NULL, 'banner_1417611791.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(9, 'шоколадно-ягодный торт', NULL, 'banner_1417611845.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(10, 'Яблочное пирожное', NULL, 'banner_1417611957.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(11, 'самолетик', NULL, 'banner_1417612184.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(12, 'кокосовый торт', NULL, 'banner_1417612202.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(13, 'яблочный торт', NULL, 'banner_1417612340.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
	(14, 'шоколадка', NULL, 'banner_1417616075.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(15, 'Кокосовый торт ', NULL, 'banner_1417898232.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
	(16, 'яблочный торт " Нормандия"', NULL, 'banner_1417899142.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(17, 'капрезе', NULL, 'banner_1421679246.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;


-- Дамп структуры для таблица cakes.blocks
DROP TABLE IF EXISTS `blocks`;
CREATE TABLE IF NOT EXISTS `blocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(200) NOT NULL,
  `title` varchar(300) NOT NULL,
  `body` mediumtext,
  `created_ip` varchar(256) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `created_username` varchar(200) DEFAULT NULL,
  `modified_ip` varchar(256) DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `modified_username` varchar(300) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cakes.blocks: ~2 rows (приблизительно)
DELETE FROM `blocks`;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
INSERT INTO `blocks` (`id`, `alias`, `title`, `body`, `created_ip`, `created_datetime`, `created_user`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `modified_username`, `active`) VALUES
	(1, 'header', 'Шапка', '<div class="service-panel">\r\n<div class="container">\r\n<div class="pull-right">{{w:LoginWidget}} | {{w:LanguageSwitcherWidget}}</div>\r\n</div>\r\n</div>\r\n<div class="header">\r\n<div class="notched-section__top"></div>\r\n<div class="notched-section__content">\r\n<div class="container">\r\n<div class="left-side">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a style="font-size: 38px;" class="font-h" href="/blog/">Мой блог</a></div>\r\n<div class="logo"><a href="/"><img src="/uploads/logo.png" alt="" /></a></div>\r\n<div class="right-side"><a style="font-size: 38px;" class="font-h" href="/portfolio/">Мои работы</a>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>\r\n<div class="clearfix"></div>\r\n</div>\r\n</div>\r\n<div class="notched-section__bottom"></div>\r\n</div>', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', '2014-12-03 14:49:14', 1, 'zzeraw', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', '2015-02-13 14:01:36', 2, 'manager', 1),
	(2, 'footer', 'Подвал', '<div class="footer">\r\n    <div class="container">\r\n        <div class="copyright">\r\n            &copy; {{w:CurrentYear}}\r\n        </div>\r\n    </div>\r\n</div>', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', '2014-12-03 14:49:27', 1, 'zzeraw', NULL, NULL, 1, 'zzeraw', 1);
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;


-- Дамп структуры для таблица cakes.blocks_lang
DROP TABLE IF EXISTS `blocks_lang`;
CREATE TABLE IF NOT EXISTS `blocks_lang` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `lang_id` varchar(6) NOT NULL,
  `l_body` mediumtext,
  PRIMARY KEY (`l_id`),
  KEY `post_lang_owner` (`owner_id`),
  KEY `lang_id` (`lang_id`),
  CONSTRAINT `blocks_lang_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `blocks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Дамп данных таблицы cakes.blocks_lang: ~2 rows (приблизительно)
DELETE FROM `blocks_lang`;
/*!40000 ALTER TABLE `blocks_lang` DISABLE KEYS */;
INSERT INTO `blocks_lang` (`l_id`, `owner_id`, `lang_id`, `l_body`) VALUES
	(1, 1, 'ru', '<div class="service-panel">\r\n<div class="container">\r\n<div class="pull-right">{{w:LoginWidget}} | {{w:LanguageSwitcherWidget}}</div>\r\n</div>\r\n</div>\r\n<div class="header">\r\n<div class="notched-section__top"></div>\r\n<div class="notched-section__content">\r\n<div class="container">\r\n<div class="left-side">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a style="font-size: 38px;" class="font-h" href="/blog/">Мой блог</a></div>\r\n<div class="logo"><a href="/"><img src="/uploads/logo.png" alt="" /></a></div>\r\n<div class="right-side"><a style="font-size: 38px;" class="font-h" href="/portfolio/">Мои работы</a>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>\r\n<div class="clearfix"></div>\r\n</div>\r\n</div>\r\n<div class="notched-section__bottom"></div>\r\n</div>'),
	(2, 1, 'en', '<div class="service-panel">\r\n<div class="container">\r\n<div class="pull-right">{{w:LoginWidget}} | {{w:LanguageSwitcherWidget}}</div>\r\n</div>\r\n</div>\r\n<div class="header">\r\n<div class="notched-section__top"></div>\r\n<div class="notched-section__content">\r\n<div class="container">\r\n<div class="left-side">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a style="font-size: 38px;" class="font-h" href="/blog/">My Blog</a></div>\r\n<div class="logo"><a href="/"><img src="/uploads/logo.png" alt="" /></a></div>\r\n<div class="right-side"><a style="font-size: 38px;" class="font-h" href="/portfolio/">My Works</a>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>\r\n<div class="clearfix"></div>\r\n</div>\r\n</div>\r\n<div class="notched-section__bottom"></div>\r\n</div>');
/*!40000 ALTER TABLE `blocks_lang` ENABLE KEYS */;


-- Дамп структуры для таблица cakes.blog_comments
DROP TABLE IF EXISTS `blog_comments`;
CREATE TABLE IF NOT EXISTS `blog_comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `blog_user_id` int(11) DEFAULT NULL,
  `blog_post_id` int(11) DEFAULT NULL,
  `comment` varchar(2048) DEFAULT NULL,
  `created_ip` varchar(300) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `created_username` varchar(300) DEFAULT NULL,
  `modified_ip` varchar(300) DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `modified_username` varchar(300) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cakes.blog_comments: ~3 rows (приблизительно)
DELETE FROM `blog_comments`;
/*!40000 ALTER TABLE `blog_comments` DISABLE KEYS */;
INSERT INTO `blog_comments` (`id`, `blog_user_id`, `blog_post_id`, `comment`, `created_ip`, `created_datetime`, `created_user`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `modified_username`, `active`) VALUES
	(1, NULL, 3, 'Первый!', NULL, '2015-02-11 19:55:00', 1, 'Павел Данилов', NULL, '2015-02-11 19:55:00', NULL, NULL, NULL),
	(3, NULL, 3, 'Вищемеш!', '::1 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', '2015-02-11 21:06:05', 1, 'Павел Данилов', '::1 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', '2015-02-11 21:06:05', 1, 'Павел Данилов', NULL);
/*!40000 ALTER TABLE `blog_comments` ENABLE KEYS */;


-- Дамп структуры для таблица cakes.blog_posts
DROP TABLE IF EXISTS `blog_posts`;
CREATE TABLE IF NOT EXISTS `blog_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `annotation` mediumtext,
  `body` mediumtext,
  `meta_index` tinyint(1) NOT NULL DEFAULT '1',
  `meta_title` varchar(300) DEFAULT NULL,
  `meta_keywords` varchar(500) DEFAULT NULL,
  `meta_description` varchar(500) DEFAULT NULL,
  `created_ip` varchar(300) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `created_username` varchar(200) DEFAULT NULL,
  `modified_ip` varchar(300) DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `modified_username` varchar(300) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Статьи сайта';

-- Дамп данных таблицы cakes.blog_posts: ~4 rows (приблизительно)
DELETE FROM `blog_posts`;
/*!40000 ALTER TABLE `blog_posts` DISABLE KEYS */;
INSERT INTO `blog_posts` (`id`, `title`, `annotation`, `body`, `meta_index`, `meta_title`, `meta_keywords`, `meta_description`, `created_ip`, `created_datetime`, `created_user`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `modified_username`, `active`) VALUES
	(1, 'Пост 1', NULL, '<p>ыапвкпкупкупккп</p>', 1, '', '', '', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '2015-01-20 12:54:01', 2, 'manager', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '2015-01-20 12:54:01', 2, 'manager', 0),
	(3, 'Мой первый пост 1', NULL, '<p>Пряники - это круто!</p>', 1, '', '', '', '::1 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', '2015-02-10 17:47:19', 2, 'manager', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', '2015-02-13 13:12:36', 2, 'manager', 1),
	(4, 'тест', NULL, '<p>тест</p>', 1, '', '', '', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', '2015-02-13 13:26:40', 2, 'manager', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', '2015-02-13 13:26:40', 2, 'manager', 1);
/*!40000 ALTER TABLE `blog_posts` ENABLE KEYS */;


-- Дамп структуры для таблица cakes.blog_posts_lang
DROP TABLE IF EXISTS `blog_posts_lang`;
CREATE TABLE IF NOT EXISTS `blog_posts_lang` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `lang_id` varchar(6) NOT NULL,
  `l_title` varchar(300) NOT NULL,
  `l_annotation` mediumtext,
  `l_body` mediumtext,
  `l_meta_title` varchar(300) DEFAULT NULL,
  `l_meta_description` varchar(500) DEFAULT NULL,
  `l_meta_keywords` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`l_id`),
  KEY `post_lang_owner` (`owner_id`),
  KEY `lang_id` (`lang_id`),
  CONSTRAINT `post_lang_owner` FOREIGN KEY (`owner_id`) REFERENCES `blog_posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cakes.blog_posts_lang: ~4 rows (приблизительно)
DELETE FROM `blog_posts_lang`;
/*!40000 ALTER TABLE `blog_posts_lang` DISABLE KEYS */;
INSERT INTO `blog_posts_lang` (`l_id`, `owner_id`, `lang_id`, `l_title`, `l_annotation`, `l_body`, `l_meta_title`, `l_meta_description`, `l_meta_keywords`) VALUES
	(1, 3, 'en', 'My First Post 1', NULL, NULL, NULL, NULL, NULL),
	(2, 3, 'ru', 'Мой первый пост 1', NULL, '<p>Пряники - это круто!</p>', '', '', ''),
	(3, 4, 'ru', 'тест', NULL, '<p>тест</p>', '', '', ''),
	(4, 4, 'en', 'test', NULL, '<p>test</p>', '', '', '');
/*!40000 ALTER TABLE `blog_posts_lang` ENABLE KEYS */;


-- Дамп структуры для таблица cakes.blog_post_tags
DROP TABLE IF EXISTS `blog_post_tags`;
CREATE TABLE IF NOT EXISTS `blog_post_tags` (
  `post_id` int(10) NOT NULL,
  `tagId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`tagId`),
  KEY `blog_post_tags_ibfk2` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cakes.blog_post_tags: ~3 rows (приблизительно)
DELETE FROM `blog_post_tags`;
/*!40000 ALTER TABLE `blog_post_tags` DISABLE KEYS */;
INSERT INTO `blog_post_tags` (`post_id`, `tagId`) VALUES
	(3, 6),
	(3, 7),
	(3, 8);
/*!40000 ALTER TABLE `blog_post_tags` ENABLE KEYS */;


-- Дамп структуры для таблица cakes.blog_tags
DROP TABLE IF EXISTS `blog_tags`;
CREATE TABLE IF NOT EXISTS `blog_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `count` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Tag_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cakes.blog_tags: ~8 rows (приблизительно)
DELETE FROM `blog_tags`;
/*!40000 ALTER TABLE `blog_tags` DISABLE KEYS */;
INSERT INTO `blog_tags` (`id`, `name`, `count`) VALUES
	(1, 'тег1', 0),
	(2, 'тег2', 0),
	(3, 'тег3', 0),
	(4, 'тег4', 0),
	(5, 'тег5', 0),
	(6, 'пряники', 1),
	(7, 'рецепты', 1),
	(8, 'вкусно', 1);
/*!40000 ALTER TABLE `blog_tags` ENABLE KEYS */;


-- Дамп структуры для таблица cakes.blog_users
DROP TABLE IF EXISTS `blog_users`;
CREATE TABLE IF NOT EXISTS `blog_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `social_id` varchar(100) DEFAULT NULL,
  `social_name` varchar(100) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `profile_url` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `created_ip` varchar(300) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `modified_ip` varchar(300) DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cakes.blog_users: ~1 rows (приблизительно)
DELETE FROM `blog_users`;
/*!40000 ALTER TABLE `blog_users` DISABLE KEYS */;
INSERT INTO `blog_users` (`id`, `social_id`, `social_name`, `name`, `profile_url`, `photo`, `created_ip`, `created_datetime`, `modified_ip`, `modified_datetime`, `active`) VALUES
	(1, '896224', 'vkontakte', 'Павел Данилов', 'http://vk.com/id896224', 'http://vk.com/images/camera_50.gif', '::1 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', '2015-02-11 16:44:39', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', '2015-02-13 11:04:26', 1);
/*!40000 ALTER TABLE `blog_users` ENABLE KEYS */;


-- Дамп структуры для таблица cakes.form_requests
DROP TABLE IF EXISTS `form_requests`;
CREATE TABLE IF NOT EXISTS `form_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fio` varchar(300) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `description` mediumtext,
  `created_ip` varchar(300) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cakes.form_requests: ~7 rows (приблизительно)
DELETE FROM `form_requests`;
/*!40000 ALTER TABLE `form_requests` DISABLE KEYS */;
INSERT INTO `form_requests` (`id`, `fio`, `phone`, `email`, `description`, `created_ip`, `created_datetime`) VALUES
	(1, 'frerfer', '343434', NULL, '{"subject":"\\u0421 \\u0441\\u0430\\u0439\\u0442\\u0430 \\u043f\\u043e\\u0441\\u0442\\u0443\\u043f\\u0438\\u043b\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0430 \\u043d\\u0430 \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u044b\\u0439 \\u0437\\u0432\\u043e\\u043d\\u043e\\u043a","comment":""}', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '2014-12-19 12:04:01'),
	(2, 'rgege', 'fwefwe', NULL, '{"subject":"\\u0421 \\u0441\\u0430\\u0439\\u0442\\u0430 \\u043f\\u043e\\u0441\\u0442\\u0443\\u043f\\u0438\\u043b\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0430 \\u043d\\u0430 \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u044b\\u0439 \\u0437\\u0432\\u043e\\u043d\\u043e\\u043a","comment":""}', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '2014-12-19 12:04:51'),
	(3, 'Тест', '3243423', NULL, '{"subject":"\\u041f\\u043e\\u0441\\u0442\\u0443\\u043f\\u0438\\u043b\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0430 c \\u0441\\u0430\\u0439\\u0442\\u0430 www.ukrushka.ru"}', '94.232.60.14 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '2015-01-20 13:35:24'),
	(4, 'тест', '334433434', NULL, '{"subject":"\\u041f\\u043e\\u0441\\u0442\\u0443\\u043f\\u0438\\u043b\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0430 c \\u0441\\u0430\\u0439\\u0442\\u0430 www.ukrushka.ru"}', '94.232.60.14 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '2015-01-20 13:36:48'),
	(5, 'Тест', '34343434', NULL, '{"subject":"\\u041f\\u043e\\u0441\\u0442\\u0443\\u043f\\u0438\\u043b\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0430 c \\u0441\\u0430\\u0439\\u0442\\u0430 www.ukrushka.ru"}', '94.232.60.14 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '2015-01-20 13:48:16'),
	(6, 'еноео', '565656', NULL, '{"subject":"\\u041f\\u043e\\u0441\\u0442\\u0443\\u043f\\u0438\\u043b\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0430 c \\u0441\\u0430\\u0439\\u0442\\u0430 www.ukrushka.ru"}', '94.232.60.14 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '2015-01-20 13:52:31'),
	(7, 'укпкп', '434343', NULL, '{"subject":"\\u041f\\u043e\\u0441\\u0442\\u0443\\u043f\\u0438\\u043b\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0430 c \\u0441\\u0430\\u0439\\u0442\\u0430 www.ukrushka.ru"}', '94.232.60.14 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '2015-01-20 13:54:35');
/*!40000 ALTER TABLE `form_requests` ENABLE KEYS */;


-- Дамп структуры для таблица cakes.gallery_albums
DROP TABLE IF EXISTS `gallery_albums`;
CREATE TABLE IF NOT EXISTS `gallery_albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  `created_ip` varchar(300) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `created_username` varchar(200) DEFAULT NULL,
  `modified_ip` varchar(300) DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `modified_username` varchar(300) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cakes.gallery_albums: ~0 rows (приблизительно)
DELETE FROM `gallery_albums`;
/*!40000 ALTER TABLE `gallery_albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_albums` ENABLE KEYS */;


-- Дамп структуры для таблица cakes.gallery_photos
DROP TABLE IF EXISTS `gallery_photos`;
CREATE TABLE IF NOT EXISTS `gallery_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `image_attr_title` varchar(300) DEFAULT NULL,
  `image_attr_alt` varchar(300) DEFAULT NULL,
  `title` varchar(300) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `tags` varchar(300) DEFAULT NULL,
  `nn` int(11) DEFAULT NULL,
  `created_ip` varchar(300) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `created_username` varchar(200) DEFAULT NULL,
  `modified_ip` varchar(300) DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `modified_username` varchar(300) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cakes.gallery_photos: ~0 rows (приблизительно)
DELETE FROM `gallery_photos`;
/*!40000 ALTER TABLE `gallery_photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_photos` ENABLE KEYS */;


-- Дамп структуры для таблица cakes.pages
DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `begin_body` text,
  `end_body` text,
  `show_title` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `template` varchar(50) DEFAULT NULL,
  `meta_index` tinyint(1) NOT NULL DEFAULT '1',
  `meta_title` varchar(200) DEFAULT NULL,
  `meta_description` varchar(500) DEFAULT NULL,
  `meta_keywords` varchar(500) DEFAULT NULL,
  `created_ip` varchar(300) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `created_username` varchar(200) DEFAULT NULL,
  `modified_ip` varchar(300) DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `modified_username` varchar(300) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cakes.pages: ~3 rows (приблизительно)
DELETE FROM `pages`;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`, `title`, `alias`, `begin_body`, `end_body`, `show_title`, `module`, `template`, `meta_index`, `meta_title`, `meta_description`, `meta_keywords`, `created_ip`, `created_datetime`, `created_user`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `modified_username`, `active`) VALUES
	(1, 'Главная', '', '<div class="hello-block">\n    <div class="container">\n        <div class="row">\n            <div class="col-xs-4">\n                <div class="photo">\n                    <a href="http://vk.com/ukrushka21">\n                        <br />\n                    </a>\n                    <img class="img-responsive" src="/uploads/foto.jpg" alt="" />\n                </div>\n            </div>\n            <div class="col-xs-8">\n                <div class="greeting">\n                    <p> <b></b>\n                    </p>\n                    <p> <b></b>\n                    </p>\n                    <p>\n                        <b></b>\n                    </p>\n                    <p>\n                        <b></b>\n                    </p>\n                    <p>\n                        <b>Привет! Я -Женя и я очень люблю готовить, особенно сладости! Если Вы любите сладкое так же, как и я, то Вы пришли по адресу! Хотите заказать торт? Тогда Вы можете оставить заявку ниже и я Вам обязательно перезвоню, либо Вы можете позвонить мне сами, мой номер наверху! Если же Вы еще не успели познакомиться с моими работами, то Вы можете найти замечательные фотографии моих работ ниже!&nbsp;\n                            <a href="https://www.facebook.com/jane.mikhailova?pnref=friends.search"></a></b> \n                    </p>\n                </div>\n                <div class="banners">{{w:BannersWidget}}</div>\n                <div></div>\n                <div>\n                    <span style="color: #ffffff;">-</span>\n                </div>\n                <div>\n                    &nbsp;\n                    <a href="http://vk.com/ukrushka21">\n                        <img src="/uploads/0007ctea.jpg" />\n                    </a>\n                    &nbsp;&nbsp;\n                    <a href="http://instagram.com/ukrushka_">\n                        <img src="/uploads/инстаграм.jpg" />\n                    </a>\n                    &nbsp;&nbsp;\n                    <a href="https://www.facebook.com/jane.mikhailova?pnref=friends.search">\n                        <img src="/uploads/фейсфук.jpg" />\n                    </a>\n                    &nbsp; &nbsp;ПРИСОЕДИНЯЙТЕСЬ!\n                </div>\n                <div>\n                    <a href="http://vk.com/ukrushka21"></a>\n                </div>\n                <div>\n                    <a href="http://vk.com/ukrushka21"></a>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<p>\n    <br />\n    <br />\n</p>\n<div class="incut-block">\n    <div class="notched-section__top"></div>\n    <div class="notched-section__content">\n        <div class="container horizontal-line-block">\n            <h1 class="center">~&nbsp;&nbsp;&nbsp;Хотите заказать торт?&nbsp;&nbsp;&nbsp;~</h1>\n        </div>\n    </div>\n    <div class="notched-section__bottom"></div>\n</div>\n<div class="content-block order-block">\n    <div class="container">\n        <div class="row">\n            <div class="col-xs-5">\n                <div class="form font-h">\n                    {{w:OrderFormWidget|modal=0;form_caption=Пожалуйста, заполните эту форму;form_button_size=large;form_button_type=danger;form_button_text=Оставить заявку;form_class=landing-form;form_item=Заявка на десерт}}\n                </div>\n            </div>\n            <div class="col-xs-7">\n                <div class="main-description">\n                    <ol>\n                        <li class="font-h">Укажите свои контактные данные и отправьте мне заявку.</li>\n                        <li class="font-h">Я вам позвоню, и мы обговорим все детали вашего заказа.</li>\n                        <li class="font-h">После чего вы получите вкусный и оригинальный десерт :)</li>\n                    </ol>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div class="incut-block">\n    <div class="notched-section__top"></div>\n    <div class="notched-section__content">\n        <div class="container horizontal-line-block">\n            <h1 class="center">\n                ~&nbsp;&nbsp;&nbsp;А вот еще примеры моих десертов&nbsp;&nbsp;&nbsp;~\n            </h1>\n        </div>\n    </div>\n    <div class="notched-section__bottom"></div>\n</div>\n<div class="content-block portfolio-block">\n    <div class="container">\n        {{w:RecentPortfolioItems|captions=on;height=200;order=id desc;limit=12}}\n        <hr />\n        <p style="text-align: center;">\n            <a href="/portfolio/">Посмотреть все работы</a>\n        </p>\n        <!-- <p style="text-align: center">или выбрать определенную тематику:</p>\n    -->\n    <!-- <p style="text-align: center">\n    <a href="#">Тег1</a>\n    <a href="#">Тег1</a>\n    <a href="#">Тег1</a>\n    <a href="#">Тег1</a>\n    <a href="#">Тег1</a>\n</p>\n-->\n</div>\n</div>', '', 0, NULL, 'homepage', 1, 'Ukrushka | Приготовление десертов на заказ', '', '', NULL, NULL, NULL, '', '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36', '2015-01-20 21:03:21', 2, 'manager', 1),
	(2, 'Список моих работ', 'portfolio', NULL, NULL, 1, 'portfolio', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', 1),
	(3, 'Блог', 'blog', NULL, NULL, 1, 'blog', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;


-- Дамп структуры для таблица cakes.pages_lang
DROP TABLE IF EXISTS `pages_lang`;
CREATE TABLE IF NOT EXISTS `pages_lang` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `lang_id` varchar(6) NOT NULL,
  `l_title` varchar(300) NOT NULL,
  `l_begin_body` mediumtext,
  `l_end_body` mediumtext,
  `l_meta_title` varchar(300) DEFAULT NULL,
  `l_meta_description` varchar(500) DEFAULT NULL,
  `l_meta_keywords` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`l_id`),
  KEY `post_lang_owner` (`owner_id`),
  KEY `lang_id` (`lang_id`),
  CONSTRAINT `pages_lang_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Дамп данных таблицы cakes.pages_lang: ~0 rows (приблизительно)
DELETE FROM `pages_lang`;
/*!40000 ALTER TABLE `pages_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_lang` ENABLE KEYS */;


-- Дамп структуры для таблица cakes.portfolio_items
DROP TABLE IF EXISTS `portfolio_items`;
CREATE TABLE IF NOT EXISTS `portfolio_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `annotation` mediumtext,
  `body` mediumtext,
  `image` varchar(300) DEFAULT NULL,
  `image_attr_title` varchar(300) DEFAULT NULL,
  `image_attr_alt` varchar(300) DEFAULT NULL,
  `nn` int(11) DEFAULT NULL,
  `meta_index` tinyint(1) NOT NULL DEFAULT '1',
  `meta_title` varchar(200) DEFAULT NULL,
  `meta_description` varchar(500) DEFAULT NULL,
  `meta_keywords` varchar(500) DEFAULT NULL,
  `created_ip` varchar(300) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `created_username` varchar(200) DEFAULT NULL,
  `modified_ip` varchar(300) DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `modified_username` varchar(300) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cakes.portfolio_items: ~51 rows (приблизительно)
DELETE FROM `portfolio_items`;
/*!40000 ALTER TABLE `portfolio_items` DISABLE KEYS */;
INSERT INTO `portfolio_items` (`id`, `title`, `annotation`, `body`, `image`, `image_attr_title`, `image_attr_alt`, `nn`, `meta_index`, `meta_title`, `meta_description`, `meta_keywords`, `created_ip`, `created_datetime`, `created_user`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `modified_username`, `active`) VALUES
	(1, 'Десерт', NULL, NULL, 'desert-01.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
	(2, 'Десерт', NULL, NULL, 'desert-02.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
	(3, 'Десерт', NULL, NULL, 'desert-03.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
	(4, 'Десерт', NULL, NULL, 'desert-04.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
	(5, 'Десерт', NULL, NULL, 'desert-05.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
	(6, 'Шоколадные трюфели с соленой карамелью', '', '', 'desert-06.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:29:29', 2, 'manager', 1),
	(7, 'Клубничный торт', 'Бисквит "Джоконда", клубничное желе, ванильный мусс с маскарпоне и свежими ягодами клубники, клубничный мусс. Украшен свежими ягодами клубники и клубничными макаронс.', NULL, 'desert-07.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
	(8, 'Десерт', NULL, NULL, 'desert-08.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
	(9, 'Десерт', NULL, NULL, 'desert-09.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
	(10, 'Торт " Фрезье"', 'Бисквит "Джоконда", масляно-фисташковый крем, свежие ягоды клубники. ', NULL, 'desert-10.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
	(11, 'Торт "Опера"', 'Бисквит "Джоконда", пропитанный кофейным сиропом, кофейно-масляный крем, шоколадный ганаш.', NULL, 'desert-11.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
	(12, 'Торт "Три шоколада"', '<p>Влажный бисквит "Брауни", хрустящий слой, ванильный мусс на белом шоколаде, легкий мусс с молочным и темным шоколадом. Украшен шоколадными меренгами и декором из темного шоколада</p>', '', 'photo_1421677914.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:29:07', 2, 'manager', 1),
	(13, 'Яблочное-карамельное пирожное', '<p>Бисквит "Joconde" , карамельный мусс с корицей, шоколадный бисквит без муки, мусс из зеленых яблок, карамельный яблоки.</p>', '', 'photo_1421677848.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:25:37', 2, 'manager', 1),
	(14, 'Шоколадные трюфели', 'Шоколадные трюфели со вкусами фисташек, пралине, хрустящим слоем из орехового бисквита "Дакуаз", лесными орехами и классический "какао"', NULL, 'photo_1417599701.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
	(15, 'Торт "Сердце"', '<p>Миндально-малиновый бисквит, ягодное желе и сливочный крем.</p>', '', 'photo_1421677822.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:28:31', 2, 'manager', 1),
	(16, 'Торт "Три шоколада"', '<p>Торт на детский праздник, украшен хоккейной клюшкой и хоккейной шайбой из шоколада</p>', '', 'photo_1421677798.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:27:44', 2, 'manager', 1),
	(17, 'Кокосовый торт', 'Кокосовый торт на детский праздник. Внутри ванильно-кокосовые коржи и кокосовый крем. Украшен облаками из зефира и самолетом из белого шоколада', NULL, 'photo_1421677767.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(18, 'Шоколадный самолет', '', '', 'photo_1421677743.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:26:44', 2, 'manager', 1),
	(19, 'Торт "Сорренто"', '<p>Марципановый бисквит с маком и лимончелло, ванильно-лимонный крем, гель из лимончелло, мусс из лимона, белого шоколада и чая Earl Grey.</p>', '', 'photo_1417604220.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:26:24', 2, 'manager', 1),
	(20, 'Торт "Сорренто"', 'Марципановый бисквит с маком и лимончелло, ванильно-лимонный крем, гель из лимончелло, мусс из лимона, белого шоколада и чая Earl Grey.', NULL, 'photo_1421677719.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
	(21, 'Яблочное-карамельное пирожное', '<p>Бисквит "Джоконда", карамельный мусс с корицей, шоколадный бисквит без муки, мусс из зеленых яблок, карамельные яблоки</p>', '', 'photo_1421677699.jpg', '', '', NULL, 1, 'пирожное, яблочное пирожное ', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:25:22', 2, 'manager', 1),
	(22, 'Торт "Капрезе"', '<p>Торт по мотивам салата " Капрезе". Основа из песочного теста с пармезаном, хрустящий слой с хлебом и шоколадом, кули из томатов и малины, мусс из сыра моцарелла и желе из базилика и рукколы.</p>', '', 'photo_1421677665.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:24:05', 2, 'manager', 1),
	(23, 'Торт "Нормандия"', '<p>Бисквит с фундуком, яблочное кремю, яблочный компот, карамельный мусс с кальвадосом. Украшен яблоком по рецепту молекулярной кухни</p>', '', 'photo_1421677624.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:23:47', 2, 'manager', 1),
	(24, 'Торт "Нормандия"', 'Бисквит с фундуком, яблочное кремю, яблочный компот, карамельный мусс с кальвадосом.', NULL, 'photo_1417605468.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
	(25, 'Макаронс', '', '', 'photo_1421678236.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:23:14', 2, 'manager', 1),
	(26, 'Ягодный торт', '<p>Шоколадный бисквит без муки, ягодно-шоколадный ганаш. Украшение из шоколада и свежих ягод.</p>', '', 'photo_1421677586.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:22:58', 2, 'manager', 1),
	(27, 'Шоколадный торт ', '', '', 'photo_1421677555.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:27:12', 2, 'manager', 1),
	(28, 'Шоколадно-ягодный торт', '<p>Шоколадный бисквит "Брауни", мусс с молочным шоколадом, малиновая карамель, мусс с темным шоколадом.</p>', '', 'photo_1421677380.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:21:03', 2, 'manager', 1),
	(29, 'Шоколадные торты', '', '', 'photo_1421677536.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:21:52', 2, 'manager', 1),
	(30, 'Яблочный торт "Нормандия"', '<p>фундучный дакуаз( корж) , яблочное кремю, яблочный компот, карамельный мусс с кальвадосом.</p>', '', 'photo_1421677147.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:19:53', 2, 'manager', 1),
	(31, 'Торт "Малина Анис" в стиле новогоднего полена', '<p>малиново-анисовый бисквит, мусс из молочного шоколада и малины, мусс из белого шоколада с анисом. Украшен шарами из белого шоколада и имбирным пряником.</p>', '', 'photo_1421677045.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:19:18', 2, 'manager', 1),
	(32, 'Шоколадный торт с шоколадными меренгами', '<p>Шоколадный бисквит, хрустящий слой с вафлей и карамелизированными какао бобами, ванильный мусс и шоколадный крем. Торт украшен шоколадными меренгами</p>', '', 'photo_1421676942.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:18:29', 2, 'manager', 1),
	(33, 'Шоколадный торт ', '', '', 'photo_1421676926.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:17:18', 2, 'manager', 1),
	(34, 'Шоколадные меренги', NULL, NULL, 'photo_1421134714.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
	(35, 'Шоколадный торт ', '', '', 'photo_1421678265.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:17:01', 2, 'manager', 1),
	(36, 'торт "Клубника с шампанским"', '', '', 'photo_1421678344.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:15:07', 2, 'manager', 1),
	(37, 'торт "Клубника с шампанским"', '', '', 'photo_1421678360.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:14:20', 2, 'manager', 1),
	(38, '"Шоколадный торт"', '', '', 'photo_1421678405.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:13:00', 2, 'manager', 1),
	(39, 'Шоколадная плитка с апельсиновыми цукатами', '', '', 'photo_1421678424.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:12:06', 2, 'manager', 1),
	(40, 'Тарт " Капрезе"', '', '', 'photo_1421678442.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:11:09', 2, 'manager', 1),
	(41, '"шоколадно-каштановый торт"', '', '', 'photo_1421678462.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:10:26', 2, 'manager', 1),
	(42, 'Шоколадные меренги', '', '', 'photo_1421678482.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:09:54', 2, 'manager', 1),
	(43, 'Десерт', NULL, NULL, 'photo_1421678499.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
	(44, 'макаронс', '', '', 'photo_1421678517.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:09:12', 2, 'manager', 1),
	(45, '"Шоколадный торт"', '', '', 'photo_1421678530.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:11:23', 2, 'manager', 1),
	(46, '"Шоколадный торт"', '', '', 'photo_1421678546.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:07:59', 2, 'manager', 1),
	(47, 'Клубничный зефир', '', '', 'photo_1421678561.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:07:34', 2, 'manager', 1),
	(48, '"Шоколадный торт"', '', '', 'photo_1421678576.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:06:33', 2, 'manager', 1),
	(49, '"Шоколадный торт"', '<p>Состав шоколадный бисквит, хрустящий слой с вафлей, миндальным пралине и темным шоколадом, ванильный мусс и крем из темного шоколада.</p>', '', 'photo_1421678659.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:06:55', 2, 'manager', 1),
	(50, 'Торт "Медовик"', '<p>Торт " Медовик" со сметанным кремом.</p>', '', 'photo_1421678676.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 21:58:16', 2, 'manager', 1),
	(51, '"Шоколадный торт"', '<p>Состав, шоколадный бисквит, хрустящий слой с вафлей, миндальным пралине и черным шоколадом, ванильный мусс и крем на темном шоколаде. Украшение выполнено из шоколада.</p>', '', 'photo_1421678693.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 22:05:18', 2, 'manager', 1),
	(52, 'Французское печенье "Макарон"', '', '', 'photo_1421678719.jpg', '', '', NULL, 1, '', '', '', NULL, NULL, NULL, NULL, '46.187.82.115 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-01-27 21:56:31', 2, 'manager', 1);
/*!40000 ALTER TABLE `portfolio_items` ENABLE KEYS */;


-- Дамп структуры для таблица cakes.portfolio_items_lang
DROP TABLE IF EXISTS `portfolio_items_lang`;
CREATE TABLE IF NOT EXISTS `portfolio_items_lang` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `lang_id` varchar(6) NOT NULL,
  `l_title` varchar(300) NOT NULL,
  `l_annotation` mediumtext,
  `l_body` mediumtext,
  `l_image_attr_title` varchar(300) DEFAULT NULL,
  `l_image_attr_alt` varchar(300) DEFAULT NULL,
  `l_meta_title` varchar(300) DEFAULT NULL,
  `l_meta_description` varchar(500) DEFAULT NULL,
  `l_meta_keywords` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`l_id`),
  KEY `post_lang_owner` (`owner_id`),
  KEY `lang_id` (`lang_id`),
  CONSTRAINT `portfolio_items_lang_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `portfolio_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Дамп данных таблицы cakes.portfolio_items_lang: ~0 rows (приблизительно)
DELETE FROM `portfolio_items_lang`;
/*!40000 ALTER TABLE `portfolio_items_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `portfolio_items_lang` ENABLE KEYS */;


-- Дамп структуры для таблица cakes.portfolio_item_tags
DROP TABLE IF EXISTS `portfolio_item_tags`;
CREATE TABLE IF NOT EXISTS `portfolio_item_tags` (
  `post_id` int(10) NOT NULL,
  `tagId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`tagId`),
  KEY `blog_post_tags_ibfk2` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cakes.portfolio_item_tags: ~148 rows (приблизительно)
DELETE FROM `portfolio_item_tags`;
/*!40000 ALTER TABLE `portfolio_item_tags` DISABLE KEYS */;
INSERT INTO `portfolio_item_tags` (`post_id`, `tagId`) VALUES
	(25, 1),
	(44, 1),
	(52, 1),
	(25, 2),
	(44, 2),
	(52, 2),
	(12, 3),
	(15, 3),
	(16, 3),
	(18, 3),
	(19, 3),
	(23, 3),
	(26, 3),
	(27, 3),
	(28, 3),
	(29, 3),
	(30, 3),
	(31, 3),
	(32, 3),
	(33, 3),
	(35, 3),
	(36, 3),
	(37, 3),
	(38, 3),
	(45, 3),
	(46, 3),
	(48, 3),
	(49, 3),
	(50, 3),
	(51, 3),
	(50, 4),
	(26, 5),
	(28, 5),
	(31, 5),
	(36, 5),
	(37, 5),
	(46, 5),
	(47, 5),
	(48, 5),
	(50, 5),
	(6, 6),
	(12, 6),
	(16, 6),
	(27, 6),
	(29, 6),
	(32, 6),
	(33, 6),
	(35, 6),
	(38, 6),
	(39, 6),
	(42, 6),
	(45, 6),
	(46, 6),
	(48, 6),
	(49, 6),
	(51, 6),
	(16, 7),
	(18, 7),
	(27, 7),
	(36, 7),
	(37, 7),
	(38, 7),
	(45, 7),
	(51, 7),
	(12, 8),
	(15, 8),
	(19, 8),
	(22, 8),
	(23, 8),
	(26, 8),
	(27, 8),
	(28, 8),
	(29, 8),
	(30, 8),
	(31, 8),
	(32, 8),
	(33, 8),
	(35, 8),
	(36, 8),
	(40, 8),
	(45, 8),
	(46, 8),
	(48, 8),
	(49, 8),
	(51, 8),
	(15, 9),
	(27, 9),
	(36, 9),
	(45, 9),
	(51, 9),
	(15, 10),
	(29, 10),
	(33, 10),
	(49, 10),
	(29, 11),
	(49, 11),
	(12, 12),
	(16, 12),
	(27, 12),
	(29, 12),
	(32, 12),
	(33, 12),
	(35, 12),
	(38, 12),
	(45, 12),
	(46, 12),
	(48, 12),
	(49, 12),
	(27, 13),
	(29, 13),
	(35, 13),
	(45, 13),
	(46, 13),
	(48, 13),
	(49, 13),
	(47, 14),
	(29, 15),
	(32, 15),
	(42, 15),
	(22, 16),
	(40, 16),
	(22, 17),
	(40, 17),
	(39, 18),
	(39, 19),
	(31, 20),
	(37, 20),
	(28, 21),
	(32, 21),
	(33, 21),
	(35, 21),
	(15, 22),
	(31, 22),
	(23, 23),
	(30, 23),
	(28, 24),
	(26, 25),
	(13, 26),
	(21, 26),
	(13, 27),
	(21, 27),
	(19, 28),
	(16, 29),
	(18, 29),
	(27, 29),
	(15, 30),
	(6, 31),
	(6, 32);
/*!40000 ALTER TABLE `portfolio_item_tags` ENABLE KEYS */;


-- Дамп структуры для таблица cakes.portfolio_tags
DROP TABLE IF EXISTS `portfolio_tags`;
CREATE TABLE IF NOT EXISTS `portfolio_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `count` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Tag_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cakes.portfolio_tags: ~32 rows (приблизительно)
DELETE FROM `portfolio_tags`;
/*!40000 ALTER TABLE `portfolio_tags` DISABLE KEYS */;
INSERT INTO `portfolio_tags` (`id`, `name`, `count`) VALUES
	(1, 'Макаронс', 3),
	(2, 'печенье', 3),
	(3, 'торт', 24),
	(4, 'медовик', 1),
	(5, 'ягоды', 9),
	(6, 'шоколад', 16),
	(7, 'тематический торт', 8),
	(8, 'торт в подарок', 21),
	(9, 'торт для него', 5),
	(10, 'торт для нее', 4),
	(11, 'торт для мамы', 2),
	(12, 'шоколадный торт', 12),
	(13, 'торт на день рождения', 7),
	(14, 'зефир', 1),
	(15, 'меренги', 3),
	(16, 'тарт', 2),
	(17, 'капрезе', 2),
	(18, 'цукаты', 1),
	(19, 'подарок', 1),
	(20, 'новый год', 2),
	(21, 'торт на день рождение', 4),
	(22, 'ягодный торт', 2),
	(23, 'яблочный торт', 2),
	(24, 'шоколадно-ягодный торт', 1),
	(25, 'ягодно-шоколадный торт', 1),
	(26, 'пирожное', 2),
	(27, 'яблочное пирожное', 2),
	(28, 'лимон', 1),
	(29, 'детский торт', 3),
	(30, '14 февраля', 1),
	(31, 'конфеты', 1),
	(32, 'трюфели', 1);
/*!40000 ALTER TABLE `portfolio_tags` ENABLE KEYS */;


-- Дамп структуры для таблица cakes.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` tinyint(4) DEFAULT '0',
  `description` varchar(400) DEFAULT NULL,
  `created_ip` varchar(300) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `created_username` varchar(200) DEFAULT NULL,
  `modified_ip` varchar(300) DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `modified_username` varchar(300) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cakes.users: ~2 rows (приблизительно)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `description`, `created_ip`, `created_datetime`, `created_user`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `modified_username`, `active`) VALUES
	(1, 'zzeraw', '$2a$13$T8y1O/Jl2xqdevO3U6x/uO2tcoGBEUcl.2SBi2cENugNml1cjEht6', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', 1),
	(2, 'manager', '$2a$13$lN85gMTt7Q0Oy.gnpeEdx.Q8ch5SftPRmpsmCrJe2wVYbUeQICXBm', 2, NULL, '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', '2014-12-03 15:51:34', 1, 'zzeraw', NULL, NULL, 1, 'zzeraw', 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
