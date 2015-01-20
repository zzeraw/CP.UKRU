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

-- Дамп структуры для таблица cakes2.banners
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

-- Дамп данных таблицы cakes2.banners: ~17 rows (приблизительно)
DELETE FROM `banners`;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` (`id`, `title`, `link`, `image`, `image_attr_title`, `image_attr_alt`, `body`, `nn`, `created_ip`, `created_datetime`, `created_user`, `modified_username`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `active`) VALUES
	(1, 'Баннер 1', NULL, 'banner-03.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(2, 'Баннер 2', NULL, 'banner-04.jpg', NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(3, 'Баннер_3', NULL, 'banner-05.jpg', NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(4, 'Баннер 4', NULL, 'banner-08.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(5, 'Шоколадный торт', NULL, 'banner_1417611073.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(6, 'Шоколадный торт', NULL, 'banner_1417611213.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(7, 'Шоколадно-ягодный торт', NULL, 'banner_1417610939.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(8, 'Шоколадный мини торт', NULL, 'banner_1417611791.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(9, 'шоколадно-ягодный торт', NULL, 'banner_1417611845.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(10, 'Яблочное пирожное', NULL, 'banner_1417611957.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(11, 'самолетик', NULL, 'banner_1417612184.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(12, 'кокосовый торт', NULL, 'banner_1417612202.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(13, 'яблочный торт', NULL, 'banner_1417612340.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(14, 'шоколадка', NULL, 'banner_1417616075.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(15, 'Кокосовый торт ', NULL, 'banner_1417898232.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(16, 'яблочный торт " Нормандия"', NULL, 'banner_1417899142.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(17, 'капрезе', NULL, 'banner_1421679246.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;


-- Дамп структуры для таблица cakes2.blocks
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

-- Дамп данных таблицы cakes2.blocks: ~2 rows (приблизительно)
DELETE FROM `blocks`;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
INSERT INTO `blocks` (`id`, `alias`, `title`, `body`, `created_ip`, `created_datetime`, `created_user`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `modified_username`, `active`) VALUES
	(1, 'header', 'Шапка', '<div class="header">\r\n<div class="container">\r\n<div class="left-side"><br />&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a style="font-size: 38px;" href="/blog/">Мой блог</a></div>\r\n<div class="logo"><a href="/"><img src="/uploads/logo.png" alt="" /></a></div>\r\n<div class="right-side"><br /><a style="font-size: 38px;" href="/portfolio/">Мои работы</a>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>\r\n<div class="clearfix"></div>\r\n</div>\r\n</div>', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', '2014-12-03 14:49:14', 1, 'zzeraw', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '2015-01-20 13:04:04', 2, 'manager', 1),
	(2, 'footer', 'Подвал', '<div class="footer">\r\n    <div class="container">\r\n        <div class="copyright">\r\n            &copy; {{w:CurrentYear}}\r\n        </div>\r\n    </div>\r\n</div>', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', '2014-12-03 14:49:27', 1, 'zzeraw', NULL, NULL, 1, 'zzeraw', 1);
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;


-- Дамп структуры для таблица cakes2.blog_posts
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Статьи сайта';

-- Дамп данных таблицы cakes2.blog_posts: ~2 rows (приблизительно)
DELETE FROM `blog_posts`;
/*!40000 ALTER TABLE `blog_posts` DISABLE KEYS */;
INSERT INTO `blog_posts` (`id`, `title`, `annotation`, `body`, `meta_index`, `meta_title`, `meta_keywords`, `meta_description`, `created_ip`, `created_datetime`, `created_user`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `modified_username`, `active`) VALUES
	(1, 'Пост 1', NULL, '<p>ыапвкпкупкупккп</p>', 1, '', '', '', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '2015-01-20 12:54:01', 2, 'manager', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '2015-01-20 12:54:01', 2, 'manager', 0),
	(2, 'Пост 2', NULL, '<p>ыпкпкупкупку</p>', 1, '', '', '', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '2015-01-20 12:54:27', 2, 'manager', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '2015-01-20 12:54:27', 2, 'manager', 0);
/*!40000 ALTER TABLE `blog_posts` ENABLE KEYS */;


-- Дамп структуры для таблица cakes2.blog_post_tags
DROP TABLE IF EXISTS `blog_post_tags`;
CREATE TABLE IF NOT EXISTS `blog_post_tags` (
  `post_id` int(10) NOT NULL,
  `tagId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`tagId`),
  KEY `blog_post_tags_ibfk2` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cakes2.blog_post_tags: ~0 rows (приблизительно)
DELETE FROM `blog_post_tags`;
/*!40000 ALTER TABLE `blog_post_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_post_tags` ENABLE KEYS */;


-- Дамп структуры для таблица cakes2.blog_tags
DROP TABLE IF EXISTS `blog_tags`;
CREATE TABLE IF NOT EXISTS `blog_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `count` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Tag_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cakes2.blog_tags: ~5 rows (приблизительно)
DELETE FROM `blog_tags`;
/*!40000 ALTER TABLE `blog_tags` DISABLE KEYS */;
INSERT INTO `blog_tags` (`id`, `name`, `count`) VALUES
	(1, 'тег1', 0),
	(2, 'тег2', 0),
	(3, 'тег3', 0),
	(4, 'тег4', 0),
	(5, 'тег5', 0);
/*!40000 ALTER TABLE `blog_tags` ENABLE KEYS */;


-- Дамп структуры для таблица cakes2.form_requests
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cakes2.form_requests: ~2 rows (приблизительно)
DELETE FROM `form_requests`;
/*!40000 ALTER TABLE `form_requests` DISABLE KEYS */;
INSERT INTO `form_requests` (`id`, `fio`, `phone`, `email`, `description`, `created_ip`, `created_datetime`) VALUES
	(1, 'frerfer', '343434', NULL, '{"subject":"\\u0421 \\u0441\\u0430\\u0439\\u0442\\u0430 \\u043f\\u043e\\u0441\\u0442\\u0443\\u043f\\u0438\\u043b\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0430 \\u043d\\u0430 \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u044b\\u0439 \\u0437\\u0432\\u043e\\u043d\\u043e\\u043a","comment":""}', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '2014-12-19 12:04:01'),
	(2, 'rgege', 'fwefwe', NULL, '{"subject":"\\u0421 \\u0441\\u0430\\u0439\\u0442\\u0430 \\u043f\\u043e\\u0441\\u0442\\u0443\\u043f\\u0438\\u043b\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0430 \\u043d\\u0430 \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u044b\\u0439 \\u0437\\u0432\\u043e\\u043d\\u043e\\u043a","comment":""}', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '2014-12-19 12:04:51');
/*!40000 ALTER TABLE `form_requests` ENABLE KEYS */;


-- Дамп структуры для таблица cakes2.gallery_albums
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

-- Дамп данных таблицы cakes2.gallery_albums: ~0 rows (приблизительно)
DELETE FROM `gallery_albums`;
/*!40000 ALTER TABLE `gallery_albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_albums` ENABLE KEYS */;


-- Дамп структуры для таблица cakes2.gallery_photos
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

-- Дамп данных таблицы cakes2.gallery_photos: ~0 rows (приблизительно)
DELETE FROM `gallery_photos`;
/*!40000 ALTER TABLE `gallery_photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_photos` ENABLE KEYS */;


-- Дамп структуры для таблица cakes2.pages
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

-- Дамп данных таблицы cakes2.pages: ~3 rows (приблизительно)
DELETE FROM `pages`;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`, `title`, `alias`, `begin_body`, `end_body`, `show_title`, `module`, `template`, `meta_index`, `meta_title`, `meta_description`, `meta_keywords`, `created_ip`, `created_datetime`, `created_user`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `modified_username`, `active`) VALUES
	(1, 'Главная', '', '<div class="hello-block">\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-xs-4">\r\n<div class="photo"><a href="http://vk.com/ukrushka21"><br /></a><img class="img-responsive" src="/uploads/foto.jpg" alt="" /></div>\r\n</div>\r\n<div class="col-xs-8">\r\n<div class="greeting">\r\n<p><b>Привет! Я -Женя и я очень люблю готовить, особенно сладости! Если Вы любите сладкое так же, как и я, то Вы пришли по адресу! Хотите заказать торт? Тогда Вы можете оставить заявку ниже и я Вам обязательно перезвоню, либо Вы можете позвонить мне сами, мой номер наверху! Если же Вы еще не успели познакомиться с моими работами, то Вы можете найти замечательные фотографии моих работ ниже!&nbsp;<a href="https://www.facebook.com/jane.mikhailova?pnref=friends.search"></a></b></p>\r\n</div>\r\n<div class="banners">{{w:BannersWidget}}</div>\r\n<div></div>\r\n<div><span style="color: #ffffff;">-</span></div>\r\n<div>&nbsp;<a href="http://vk.com/ukrushka21"><img src="/uploads/0007ctea.jpg" /></a>&nbsp;&nbsp;<a href="http://instagram.com/ukrushka_"><img src="/uploads/инстаграм.jpg" /></a>&nbsp;&nbsp;<a href="https://www.facebook.com/jane.mikhailova?pnref=friends.search"><img src="/uploads/фейсфук.jpg" /></a>&nbsp; &nbsp;ПРИСОЕДИНЯЙТЕСЬ!</div>\r\n<div><a href="http://vk.com/ukrushka21"></a></div>\r\n<div><a href="http://vk.com/ukrushka21"></a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<br><br>\r\n<br>\r\n<div class="incut-block">\r\n<div class="notched-section__top"></div>\r\n<div class="notched-section__content">\r\n<div class="container">\r\n<h1 class="center red">Хотите заказать торт?</h1>\r\n</div>\r\n</div>\r\n<div class="notched-section__bottom"></div>\r\n</div>\r\n<div class="content-block order-block">\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-xs-5">\r\n<div class="form">{{w:OrderFormWidget|modal=0;form_caption=Пожалуйста, заполните эту форму;form_button_size=large;form_button_type=danger;form_button_text=Оставить заявку;form_class=landing-form;form_item=Заявка на десерт}}</div>\r\n</div>\r\n<div class="col-xs-7">\r\n<div class="main-description">\r\n<ol>\r\n<li>Укажите свои контактные данные и отправьте мне заявку.</li>\r\n<li>Я вам позвоню, и мы обговорим все детали вашего заказа.</li>\r\n<li>После чего вы получите вкусный и оригинальный десерт :)</li>\r\n</ol>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="incut-block">\r\n<div class="notched-section__top"></div>\r\n<div class="notched-section__content">\r\n<div class="container">\r\n<h1 class="center red">~&nbsp;&nbsp;&nbsp;А вот еще примеры моих десертов&nbsp;&nbsp;&nbsp;~</h1>\r\n</div>\r\n</div>\r\n<div class="notched-section__bottom"></div>\r\n</div>\r\n<div class="content-block portfolio-block">\r\n<div class="container">{{w:RecentPortfolioItems|captions=on;height=200;order=id desc;limit=12}}\r\n<hr>\r\n<p style="text-align: center"><a href="/portfolio/">Посмотреть все работы</a></p>\r\n<!-- <p style="text-align: center">или выбрать определенную тематику:</p> -->\r\n<!-- <p style="text-align: center"><a href="#">Тег1</a> <a href="#">Тег1</a> <a href="#">Тег1</a> <a href="#">Тег1</a> <a href="#">Тег1</a></p> -->\r\n</div>\r\n</div>', '', 0, NULL, 'homepage', 1, 'Ukrushka | Приготовление десертов на заказ', '', '', NULL, NULL, NULL, '', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', '2014-12-03 14:47:14', 1, 'zzeraw', 1),
	(2, 'Портфолио', 'portfolio', NULL, NULL, 1, 'portfolio', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', 1),
	(3, 'Блог', 'blog', NULL, NULL, 1, 'blog', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;


-- Дамп структуры для таблица cakes2.portfolio_items
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

-- Дамп данных таблицы cakes2.portfolio_items: ~52 rows (приблизительно)
DELETE FROM `portfolio_items`;
/*!40000 ALTER TABLE `portfolio_items` DISABLE KEYS */;
INSERT INTO `portfolio_items` (`id`, `title`, `annotation`, `body`, `image`, `image_attr_title`, `image_attr_alt`, `nn`, `meta_index`, `meta_title`, `meta_description`, `meta_keywords`, `created_ip`, `created_datetime`, `created_user`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `modified_username`, `active`) VALUES
	(1, 'Десерт', NULL, NULL, 'desert-01.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(2, 'Десерт', NULL, NULL, 'desert-02.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(3, 'Десерт', NULL, NULL, 'desert-03.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(4, 'Десерт', NULL, NULL, 'desert-04.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(5, 'Десерт', NULL, NULL, 'desert-05.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(6, 'Шоколадные трюфели с соленой карамелью', NULL, NULL, 'desert-06.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(7, 'Клубничный торт', 'Бисквит "Джоконда", клубничное желе, ванильный мусс с маскарпоне и свежими ягодами клубники, клубничный мусс. Украшен свежими ягодами клубники и клубничными макаронс.', NULL, 'desert-07.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(8, 'Десерт', NULL, NULL, 'desert-08.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(9, 'Десерт', NULL, NULL, 'desert-09.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(10, 'Торт " Фрезье"', 'Бисквит "Джоконда", масляно-фисташковый крем, свежие ягоды клубники. ', NULL, 'desert-10.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(11, 'Торт "Опера"', 'Бисквит "Джоконда", пропитанный кофейным сиропом, кофейно-масляный крем, шоколадный ганаш.', NULL, 'desert-11.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(12, 'Торт "Три шоколада"', 'Влажный бисквит "Брауни", хрустящий слой, ванильный мусс на белом шоколаде, легкий мусс с молочным и темным шоколадом. Украшен шоколадными меренгами и декором из темного шоколада', NULL, 'photo_1421677914.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(13, 'Яблочное-карамельное пирожное', 'Бисквит "Joconde" , карамельный мусс с корицей, шоколадный бисквит без муки, мусс из зеленых яблок, карамельный яблоки. ', NULL, 'photo_1421677848.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(14, 'Шоколадные трюфели', 'Шоколадные трюфели со вкусами фисташек, пралине, хрустящим слоем из орехового бисквита "Дакуаз", лесными орехами и классический "какао"', NULL, 'photo_1417599701.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(15, 'Торт "Сердце"', 'Миндально-малиновый бисквит, ягодное желе и сливочный крем.', NULL, 'photo_1421677822.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(16, 'Торт "Три шоколада"', 'Торт на детский праздник, украшен хоккейной клюшкой и хоккейной шайбой из шоколада', NULL, 'photo_1421677798.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(17, 'Кокосовый торт', 'Кокосовый торт на детский праздник. Внутри ванильно-кокосовые коржи и кокосовый крем. Украшен облаками из зефира и самолетом из белого шоколада', NULL, 'photo_1421677767.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(18, 'Шоколадный самолет', NULL, NULL, 'photo_1421677743.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(19, 'Торт "Сорренто"', 'Марципановый бисквит с маком и лимончелло, ванильно-лимонный крем, гель из лимончелло, мусс из лимона, белого шоколада и чая Earl Grey.', NULL, 'photo_1417604220.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(20, 'Торт "Сорренто"', 'Марципановый бисквит с маком и лимончелло, ванильно-лимонный крем, гель из лимончелло, мусс из лимона, белого шоколада и чая Earl Grey.', NULL, 'photo_1421677719.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(21, 'Яблочное-карамельное пирожное', 'Бисквит "Джоконда", карамельный мусс с корицей, шоколадный бисквит без муки, мусс из зеленых яблок, карамельные яблоки', NULL, 'photo_1421677699.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(22, 'Торт "Капрезе"', 'Торт по мотивам салата " Капрезе". Основа из песочного теста с пармезаном, хрустящий слой с хлебом и шоколадом, кули из томатов и малины, мусс из сыра моцарелла и желе из базилика и рукколы.', NULL, 'photo_1421677665.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(23, 'Торт "Нормандия"', 'Бисквит с фундуком, яблочное кремю, яблочный компот, карамельный мусс с кальвадосом. Украшен яблоком по рецепту молекулярной кухни', NULL, 'photo_1421677624.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(24, 'Торт "Нормандия"', 'Бисквит с фундуком, яблочное кремю, яблочный компот, карамельный мусс с кальвадосом.', NULL, 'photo_1417605468.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(25, 'Макаронс', NULL, NULL, 'photo_1421678236.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(26, 'Ягодный торт', 'Шоколадный бисквит без муки, ягодно-шоколадный ганаш. украшение из шоколада и свежих ягод.', NULL, 'photo_1421677586.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(27, 'Десерт', NULL, NULL, 'photo_1421677555.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(28, 'Шоколадно-ягодный торт', 'Шоколадный бисквит "Брауни", мусс с молочным шоколадом, малиновая карамель, мусс с темным шоколадом.', NULL, 'photo_1421677380.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(29, 'Шоколадные торты', NULL, NULL, 'photo_1421677536.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(30, 'Яблочный торт "Нормандия"', 'фундучный дакуаз( корж) , яблочное кремю, яблочный компот, карамельный мусс с кальвадосом. ', NULL, 'photo_1421677147.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(31, 'Торт "Малина Анис" в стиле новогоднего полена', 'малиново-анисовый бисквит, мусс из молочного шоколада и малины, мусс из белого шоколада с анисом. Украшен шарами из белого шоколада.', NULL, 'photo_1421677045.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(32, 'Шоколадный торт "Тео"', 'Шоколадный бисквит, хрустящий слой с вафлей и карамелизированными какао бобами, ванильный мусс и шоколадный крем', NULL, 'photo_1421676942.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(33, 'Шоколадный торт "Тео"', 'шоколадный торт, чеборксары, заказать торт в чебоксарах, заказать торт, десерты на заказ, десерты на заказ в чебоксарах, вкусные десерты, вкусный торт, шоколад, подарок для девушки, подарок для парня, подарок, подарок на день рождения, лучший подарок, подарок для нее, подарок для него', NULL, 'photo_1421676926.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(34, 'Шоколадные меренги', NULL, NULL, 'photo_1421134714.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(35, 'Шоколадный торт "Тео"', NULL, NULL, 'photo_1421678265.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(36, 'Десерт', NULL, NULL, 'photo_1421678344.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(37, 'Десерт', NULL, NULL, 'photo_1421678360.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(38, 'Десерт', NULL, NULL, 'photo_1421678405.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(39, 'Десерт', NULL, NULL, 'photo_1421678424.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(40, 'Десерт', NULL, NULL, 'photo_1421678442.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(41, 'Десерт', NULL, NULL, 'photo_1421678462.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(42, 'Десерт', NULL, NULL, 'photo_1421678482.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(43, 'Десерт', NULL, NULL, 'photo_1421678499.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(44, 'Десерт', NULL, NULL, 'photo_1421678517.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(45, 'Десерт', NULL, NULL, 'photo_1421678530.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(46, 'Десерт', NULL, NULL, 'photo_1421678546.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(47, 'Десерт', NULL, NULL, 'photo_1421678561.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(48, 'Десерт', NULL, NULL, 'photo_1421678576.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(49, 'Десерт', NULL, NULL, 'photo_1421678659.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(50, 'Десерт', NULL, NULL, 'photo_1421678676.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(51, 'Десерт', NULL, NULL, 'photo_1421678693.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(52, 'Десерт', NULL, NULL, 'photo_1421678719.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
/*!40000 ALTER TABLE `portfolio_items` ENABLE KEYS */;


-- Дамп структуры для таблица cakes2.portfolio_item_tags
DROP TABLE IF EXISTS `portfolio_item_tags`;
CREATE TABLE IF NOT EXISTS `portfolio_item_tags` (
  `post_id` int(10) NOT NULL,
  `tagId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`tagId`),
  KEY `blog_post_tags_ibfk2` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cakes2.portfolio_item_tags: ~0 rows (приблизительно)
DELETE FROM `portfolio_item_tags`;
/*!40000 ALTER TABLE `portfolio_item_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `portfolio_item_tags` ENABLE KEYS */;


-- Дамп структуры для таблица cakes2.portfolio_tags
DROP TABLE IF EXISTS `portfolio_tags`;
CREATE TABLE IF NOT EXISTS `portfolio_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `count` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Tag_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cakes2.portfolio_tags: ~0 rows (приблизительно)
DELETE FROM `portfolio_tags`;
/*!40000 ALTER TABLE `portfolio_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `portfolio_tags` ENABLE KEYS */;


-- Дамп структуры для таблица cakes2.users
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

-- Дамп данных таблицы cakes2.users: ~2 rows (приблизительно)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `description`, `created_ip`, `created_datetime`, `created_user`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `modified_username`, `active`) VALUES
	(1, 'zzeraw', '$2a$13$T8y1O/Jl2xqdevO3U6x/uO2tcoGBEUcl.2SBi2cENugNml1cjEht6', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', 1),
	(2, 'manager', '$2a$13$lN85gMTt7Q0Oy.gnpeEdx.Q8ch5SftPRmpsmCrJe2wVYbUeQICXBm', 2, NULL, '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', '2014-12-03 15:51:34', 1, 'zzeraw', NULL, NULL, 1, 'zzeraw', 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
