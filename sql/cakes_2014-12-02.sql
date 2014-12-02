# ************************************************************
# Sequel Pro SQL dump
# Версия 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Адрес: 127.0.0.1 (MySQL 5.5.38)
# Схема: cakes
# Время создания: 2014-12-02 13:33:29 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Дамп таблицы banners
# ------------------------------------------------------------

DROP TABLE IF EXISTS `banners`;

CREATE TABLE `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  `link` varchar(256) DEFAULT NULL,
  `image` varchar(512) NOT NULL,
  `image_attr_title` varchar(512) DEFAULT NULL,
  `image_attr_alt` varchar(512) DEFAULT NULL,
  `nn` int(11) NOT NULL DEFAULT '0',
  `created_ip` varchar(300) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `created_username` varchar(200) NOT NULL,
  `modified_ip` varchar(300) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `modified_username` varchar(300) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;

INSERT INTO `banners` (`id`, `title`, `link`, `image`, `image_attr_title`, `image_attr_alt`, `nn`, `created_ip`, `created_date`, `created_user`, `created_username`, `modified_ip`, `modified_date`, `modified_user`, `modified_username`, `active`)
VALUES
	(12,'Баннер 1',NULL,'banner-03.jpg',NULL,NULL,0,NULL,NULL,NULL,'',NULL,NULL,NULL,'',1),
	(13,'Баннер 2',NULL,'banner-04.jpg',NULL,NULL,0,NULL,NULL,NULL,'',NULL,NULL,NULL,'',1),
	(14,'Баннер 3',NULL,'banner-05.jpg',NULL,NULL,0,NULL,NULL,NULL,'',NULL,NULL,NULL,'',1),
	(15,'Баннер 4',NULL,'banner-08.jpg',NULL,NULL,0,NULL,NULL,NULL,'',NULL,NULL,NULL,'',0);

/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы blocks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blocks`;

CREATE TABLE `blocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(200) NOT NULL,
  `title` varchar(300) NOT NULL,
  `body` mediumtext,
  `created_ip` varchar(256) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `created_username` varchar(200) NOT NULL,
  `modified_ip` varchar(256) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `modified_username` varchar(300) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `blocks` WRITE;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;

INSERT INTO `blocks` (`id`, `alias`, `title`, `body`, `created_ip`, `created_date`, `created_user`, `created_username`, `modified_ip`, `modified_date`, `modified_user`, `modified_username`, `active`)
VALUES
	(1,'header','Шапка','<div class=\"header\">\n    <div class=\"container\">\n        <div class=\"logo center\">\n            <a href=\"/\" title=\"Главная страница\">\n                <div class=\"title red\">Евгения Михайлова</div>\n                <div class=\"description red\">Приготовление десертов на заказ</div>\n                <div class=\"contact-phone red\">+7 906 130 71 33</div>\n            </a>\n        </div>\n    </div>\n</div>',NULL,NULL,NULL,'',NULL,NULL,NULL,'',1),
	(2,'footer','Подвал','<div class=\"footer\">\n    <div class=\"container\">\n        <div class=\"copyright\">\n            &copy; {{w:CurrentYear}}\n        </div>\n    </div>\n</div>',NULL,NULL,NULL,'',NULL,NULL,NULL,'',1);

/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы form_requests
# ------------------------------------------------------------

DROP TABLE IF EXISTS `form_requests`;

CREATE TABLE `form_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fio` varchar(300) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created_ip` varchar(300) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Дамп таблицы gallery_albums
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gallery_albums`;

CREATE TABLE `gallery_albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  `created_ip` varchar(300) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `created_username` varchar(200) NOT NULL,
  `modified_ip` varchar(300) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `modified_username` varchar(300) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `gallery_albums` WRITE;
/*!40000 ALTER TABLE `gallery_albums` DISABLE KEYS */;

INSERT INTO `gallery_albums` (`id`, `title`, `description`, `created_ip`, `created_date`, `created_user`, `created_username`, `modified_ip`, `modified_date`, `modified_user`, `modified_username`, `active`)
VALUES
	(1,'Примеры работ',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'',1);

/*!40000 ALTER TABLE `gallery_albums` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы gallery_photos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gallery_photos`;

CREATE TABLE `gallery_photos` (
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
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `created_username` varchar(200) NOT NULL,
  `modified_ip` varchar(300) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `modified_username` varchar(300) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `gallery_items_ibfk_1` (`album_id`),
  CONSTRAINT `gallery_photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `gallery_albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `gallery_photos` WRITE;
/*!40000 ALTER TABLE `gallery_photos` DISABLE KEYS */;

INSERT INTO `gallery_photos` (`id`, `album_id`, `image`, `image_attr_title`, `image_attr_alt`, `title`, `description`, `tags`, `nn`, `created_ip`, `created_date`, `created_user`, `created_username`, `modified_ip`, `modified_date`, `modified_user`, `modified_username`, `active`)
VALUES
	(1,1,'desert-01.jpg',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,'',NULL,NULL,NULL,'',1),
	(3,1,'desert-02.jpg','',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL,NULL,NULL,'',1),
	(4,1,'desert-03.jpg',NULL,NULL,'',NULL,NULL,3,NULL,NULL,NULL,'',NULL,NULL,NULL,'',1),
	(5,1,'desert-04.jpg',NULL,NULL,NULL,NULL,NULL,4,NULL,NULL,NULL,'',NULL,NULL,NULL,'',1),
	(6,1,'desert-05.jpg',NULL,NULL,NULL,NULL,NULL,6,NULL,NULL,NULL,'',NULL,NULL,NULL,'',1),
	(7,1,'desert-06.jpg',NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,'',NULL,NULL,NULL,'',1),
	(8,1,'desert-07.jpg',NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,'',NULL,NULL,NULL,'',1),
	(9,1,'desert-08.jpg',NULL,NULL,NULL,NULL,NULL,8,NULL,NULL,NULL,'',NULL,NULL,NULL,'',1),
	(10,1,'desert-09.jpg',NULL,NULL,NULL,NULL,NULL,9,NULL,NULL,NULL,'',NULL,NULL,NULL,'',1),
	(11,1,'desert-10.jpg',NULL,NULL,NULL,NULL,NULL,11,NULL,NULL,NULL,'',NULL,NULL,NULL,'',1),
	(12,1,'desert-11.jpg',NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,'',NULL,NULL,NULL,'',0);

/*!40000 ALTER TABLE `gallery_photos` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `alias` varchar(200) DEFAULT NULL,
  `begin_body` text,
  `end_body` text,
  `nn` int(11) DEFAULT NULL,
  `show_in_menu` tinyint(1) NOT NULL DEFAULT '0',
  `show_title` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `undeletable` tinyint(1) NOT NULL DEFAULT '0',
  `template` varchar(50) DEFAULT NULL,
  `meta_index` tinyint(1) NOT NULL DEFAULT '1',
  `meta_title` varchar(200) DEFAULT NULL,
  `meta_description` varchar(500) DEFAULT NULL,
  `meta_keywords` varchar(500) DEFAULT NULL,
  `created_ip` varchar(300) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `created_username` varchar(200) NOT NULL,
  `modified_ip` varchar(300) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `modified_username` varchar(300) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;

INSERT INTO `pages` (`id`, `title`, `alias`, `begin_body`, `end_body`, `nn`, `show_in_menu`, `show_title`, `module`, `undeletable`, `template`, `meta_index`, `meta_title`, `meta_description`, `meta_keywords`, `created_ip`, `created_date`, `created_user`, `created_username`, `modified_ip`, `modified_date`, `modified_user`, `modified_username`, `active`)
VALUES
	(1,'Главная','','<div class=\"content-block hello-block\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-4\">\r\n<div class=\"photo\"><img class=\"img-responsive\" src=\"/uploads/foto.jpg\" alt=\"\" /></div>\r\n</div>\r\n<div class=\"col-xs-8\">\r\n<div class=\"greeting\">\r\n<p><strong>Привет, меня зовут Женя!</strong></p>\r\n<p>Я очень люблю готовить, а еще больше я люблю готовить десерты. Раньше я готовила дома, но теперь у меня есть свой бар, где я могу полностью посвятить себя любимому делу. И мне очень хотелось бы поделиться результатом с вами.</p>\r\n<p>Мои десерты вкусные, оригинальные и из натуральных продуктов.</p>\r\n<p>Вот примеры моих работ:</p>\r\n</div>\r\n<div>{{w:BannersWidget}}</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"incut-block\">\r\n<div class=\"notched-section__top\"></div>\r\n<div class=\"notched-section__content\">\r\n<div class=\"container\">\r\n<h1 class=\"center red\">~&nbsp;&nbsp;&nbsp;Как заказать такую красоту?&nbsp;&nbsp;&nbsp;~</h1>\r\n</div>\r\n</div>\r\n<div class=\"notched-section__bottom\"></div>\r\n</div>\r\n<div class=\"content-block order-block\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-5\">\r\n<div class=\"form\">{{w:SimpleFormWidget|type=form;form_caption=Пожалуйста, заполните эту форму;form_button_size=big;form_button_type=red;form_button_text=Оставить заявку;form_class=landing-form;form_item=Заявка на десерт}}</div>\r\n</div>\r\n<div class=\"col-xs-7\">\r\n<div class=\"main-description\">\r\n<ol>\r\n<li>Сперва укажите свои контактные данные и отправьте мне заявку.</li>\r\n<li>Я вам позвоню, и мы обговорим все детали вашего заказа.</li>\r\n<li>После чего вы получите вкусный и оригинальный десерт :)</li>\r\n</ol>\r\n</div>\r\n<div class=\"strawberry\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"incut-block\">\r\n<div class=\"notched-section__top\"></div>\r\n<div class=\"notched-section__content\">\r\n<div class=\"container\">\r\n<h1 class=\"center red\">~&nbsp;&nbsp;&nbsp;А вот еще примеры моих десертов&nbsp;&nbsp;&nbsp;~</h1>\r\n</div>\r\n</div>\r\n<div class=\"notched-section__bottom\"></div>\r\n</div>\r\n<div class=\"content-block portfolio-block\">\r\n<div class=\"container\">{{w:GalleryBlock|album=Примеры работ;captions=off;height=200;row_span=3;order=nn desc}}</div>\r\n</div>','',1,1,0,NULL,0,'',1,'Ukrushka | Приготовление десертов на заказ','','торты на заказ, десерты',NULL,NULL,NULL,'','::1 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36','2014-12-02 17:26:34',2,'manager',1);

/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` tinyint(4) DEFAULT '0',
  `description` varchar(400) DEFAULT NULL,
  `created_ip` varchar(300) DEFAULT '',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `created_username` varchar(200) DEFAULT '',
  `modified_ip` varchar(300) DEFAULT '',
  `modified_date` datetime DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `modified_username` varchar(300) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `username`, `password`, `role`, `description`, `created_ip`, `created_date`, `created_user`, `created_username`, `modified_ip`, `modified_date`, `modified_user`, `modified_username`, `active`)
VALUES
	(1,'zzeraw','$2a$13$T8y1O/Jl2xqdevO3U6x/uO2tcoGBEUcl.2SBi2cENugNml1cjEht6',1,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'',1),
	(2,'manager','$2a$13$opF9clM8pLzCfx7mwtedZ.NBZ28nEWbBHeaqCP7nyQYn12b7H2wAa',2,NULL,'::1 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36','2014-12-02 17:22:09',1,'zzeraw','::1 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36',NULL,1,'zzeraw',1);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
