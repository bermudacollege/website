-- Adminer 4.17.1 MySQL 8.0.42-0ubuntu0.22.04.1 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `n8am2_action_log_config`;
CREATE TABLE `n8am2_action_log_config` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `id_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_action_log_config` (`id`, `type_title`, `type_alias`, `id_holder`, `title_holder`, `table_name`, `text_prefix`) VALUES
(1,	'article',	'com_content.article',	'id',	'title',	'#__content',	'PLG_ACTIONLOG_JOOMLA'),
(2,	'article',	'com_content.form',	'id',	'title',	'#__content',	'PLG_ACTIONLOG_JOOMLA'),
(3,	'banner',	'com_banners.banner',	'id',	'name',	'#__banners',	'PLG_ACTIONLOG_JOOMLA'),
(4,	'user_note',	'com_users.note',	'id',	'subject',	'#__user_notes',	'PLG_ACTIONLOG_JOOMLA'),
(5,	'media',	'com_media.file',	'',	'name',	'',	'PLG_ACTIONLOG_JOOMLA'),
(6,	'category',	'com_categories.category',	'id',	'title',	'#__categories',	'PLG_ACTIONLOG_JOOMLA'),
(7,	'menu',	'com_menus.menu',	'id',	'title',	'#__menu_types',	'PLG_ACTIONLOG_JOOMLA'),
(8,	'menu_item',	'com_menus.item',	'id',	'title',	'#__menu',	'PLG_ACTIONLOG_JOOMLA'),
(9,	'newsfeed',	'com_newsfeeds.newsfeed',	'id',	'name',	'#__newsfeeds',	'PLG_ACTIONLOG_JOOMLA'),
(10,	'link',	'com_redirect.link',	'id',	'old_url',	'#__redirect_links',	'PLG_ACTIONLOG_JOOMLA'),
(11,	'tag',	'com_tags.tag',	'id',	'title',	'#__tags',	'PLG_ACTIONLOG_JOOMLA'),
(12,	'style',	'com_templates.style',	'id',	'title',	'#__template_styles',	'PLG_ACTIONLOG_JOOMLA'),
(13,	'plugin',	'com_plugins.plugin',	'extension_id',	'name',	'#__extensions',	'PLG_ACTIONLOG_JOOMLA'),
(14,	'component_config',	'com_config.component',	'extension_id',	'name',	'',	'PLG_ACTIONLOG_JOOMLA'),
(15,	'contact',	'com_contact.contact',	'id',	'name',	'#__contact_details',	'PLG_ACTIONLOG_JOOMLA'),
(16,	'module',	'com_modules.module',	'id',	'title',	'#__modules',	'PLG_ACTIONLOG_JOOMLA'),
(17,	'access_level',	'com_users.level',	'id',	'title',	'#__viewlevels',	'PLG_ACTIONLOG_JOOMLA'),
(18,	'banner_client',	'com_banners.client',	'id',	'name',	'#__banner_clients',	'PLG_ACTIONLOG_JOOMLA'),
(19,	'application_config',	'com_config.application',	'',	'name',	'',	'PLG_ACTIONLOG_JOOMLA'),
(20,	'task',	'com_scheduler.task',	'id',	'title',	'#__scheduler_tasks',	'PLG_ACTIONLOG_JOOMLA'),
(21,	'field',	'com_fields.field',	'id',	'title',	'#__fields',	'PLG_ACTIONLOG_JOOMLA'),
(22,	'guidedtour',	'com_guidedtours.state',	'id',	'title',	'#__guidedtours',	'PLG_ACTIONLOG_JOOMLA'),
(23,	'contact',	'com_contact.form',	'id',	'name',	'#__contact_details',	'PLG_ACTIONLOG_JOOMLA');

DROP TABLE IF EXISTS `n8am2_action_logs`;
CREATE TABLE `n8am2_action_logs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `message_language_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date` datetime NOT NULL,
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int NOT NULL DEFAULT '0',
  `item_id` int NOT NULL DEFAULT '0',
  `ip_address` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0.0.0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  KEY `idx_user_id_extension` (`user_id`,`extension`),
  KEY `idx_extension_item_id` (`extension`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_action_logs` (`id`, `message_language_key`, `message`, `log_date`, `extension`, `user_id`, `item_id`, `ip_address`) VALUES
(1,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-06-11 23:02:38',	'com_users',	1,	0,	'COM_ACTIONLOGS_DISABLED'),
(2,	'PLG_ACTIONLOG_JOOMLA_GUIDEDTOURS_TOURDELAYED',	'{\"id\":12,\"title\":\"Welcome to Joomla!\",\"state\":\"delayed\",\"step\":1,\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\"}',	'2025-06-11 23:02:44',	'com_guidedtours.state',	1,	12,	'COM_ACTIONLOGS_DISABLED'),
(3,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT',	'{\"action\":\"logout\",\"id\":1,\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-06-11 23:11:44',	'com_users',	1,	1,	'COM_ACTIONLOGS_DISABLED'),
(4,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-06-11 23:12:32',	'com_users',	1,	0,	'COM_ACTIONLOGS_DISABLED'),
(5,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT',	'{\"action\":\"logout\",\"id\":1,\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-06-11 23:15:35',	'com_users',	1,	1,	'COM_ACTIONLOGS_DISABLED'),
(6,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-06-11 23:32:16',	'com_users',	1,	0,	'COM_ACTIONLOGS_DISABLED'),
(7,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT',	'{\"action\":\"logout\",\"id\":1,\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-06-11 23:41:24',	'com_users',	1,	1,	'COM_ACTIONLOGS_DISABLED'),
(8,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-06-11 23:44:30',	'com_users',	1,	0,	'COM_ACTIONLOGS_DISABLED'),
(9,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-06-12 12:32:04',	'com_users',	1,	0,	'COM_ACTIONLOGS_DISABLED'),
(10,	'PLG_ACTIONLOG_JOOMLA_GUIDEDTOURS_TOURDELAYED',	'{\"id\":12,\"title\":\"Welcome to Joomla!\",\"state\":\"delayed\",\"step\":1,\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\"}',	'2025-06-12 12:32:09',	'com_guidedtours.state',	1,	12,	'COM_ACTIONLOGS_DISABLED'),
(11,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":2,\"title\":\"Web Dev\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\"}',	'2025-06-12 12:33:45',	'com_users',	1,	2,	'COM_ACTIONLOGS_DISABLED'),
(12,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED',	'{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":2,\"title\":\"Web Dev\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\"}',	'2025-06-12 12:36:29',	'com_users',	1,	2,	'COM_ACTIONLOGS_DISABLED'),
(13,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT',	'{\"action\":\"logout\",\"id\":1,\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-06-12 12:36:36',	'com_users',	1,	1,	'COM_ACTIONLOGS_DISABLED'),
(14,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-06-12 12:36:45',	'com_users',	2,	0,	'COM_ACTIONLOGS_DISABLED'),
(15,	'PLG_ACTIONLOG_JOOMLA_GUIDEDTOURS_TOURDELAYED',	'{\"id\":12,\"title\":\"Welcome to Joomla!\",\"state\":\"delayed\",\"step\":1,\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-06-12 12:36:48',	'com_guidedtours.state',	2,	12,	'COM_ACTIONLOGS_DISABLED'),
(16,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-06-24 13:59:47',	'com_users',	2,	0,	'COM_ACTIONLOGS_DISABLED'),
(17,	'PLG_ACTIONLOG_JOOMLA_GUIDEDTOURS_TOURDELAYED',	'{\"id\":12,\"title\":\"Welcome to Joomla!\",\"state\":\"delayed\",\"step\":1,\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-06-24 14:00:00',	'com_guidedtours.state',	2,	12,	'COM_ACTIONLOGS_DISABLED'),
(18,	'PLG_ACTIONLOG_JOOMLA_USER_LOGIN_FAILED',	'{\"action\":\"login\",\"id\":2,\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-06-24 14:41:23',	'com_users',	2,	2,	'COM_ACTIONLOGS_DISABLED'),
(19,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-06-24 14:42:00',	'com_users',	2,	0,	'COM_ACTIONLOGS_DISABLED'),
(20,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT',	'{\"action\":\"logout\",\"id\":2,\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-06-24 14:42:05',	'com_users',	2,	2,	'COM_ACTIONLOGS_DISABLED'),
(21,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-06-24 15:39:25',	'com_users',	2,	0,	'COM_ACTIONLOGS_DISABLED'),
(22,	'PLG_ACTIONLOG_JOOMLA_GUIDEDTOURS_TOURDELAYED',	'{\"id\":12,\"title\":\"Welcome to Joomla!\",\"state\":\"delayed\",\"step\":1,\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-06-24 15:39:28',	'com_guidedtours.state',	2,	12,	'COM_ACTIONLOGS_DISABLED'),
(23,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}',	'2025-06-24 15:42:18',	'com_users',	2,	0,	'COM_ACTIONLOGS_DISABLED'),
(24,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}',	'2025-06-25 07:01:02',	'com_users',	2,	0,	'COM_ACTIONLOGS_DISABLED'),
(25,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT',	'{\"action\":\"logout\",\"id\":2,\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}',	'2025-06-25 07:01:13',	'com_users',	2,	2,	'COM_ACTIONLOGS_DISABLED'),
(26,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-06-27 16:24:53',	'com_users',	2,	0,	'COM_ACTIONLOGS_DISABLED'),
(27,	'PLG_ACTIONLOG_JOOMLA_GUIDEDTOURS_TOURSKIPPED',	'{\"id\":12,\"title\":\"Welcome to Joomla!\",\"state\":\"skipped\",\"step\":1,\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-06-27 16:25:02',	'com_guidedtours.state',	2,	12,	'COM_ACTIONLOGS_DISABLED'),
(28,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-14 11:47:04',	'com_users',	2,	0,	'COM_ACTIONLOGS_DISABLED'),
(29,	'PLG_ACTIONLOG_JOOMLA_USER_CACHE',	'{\"action\":\"cache\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":2,\"title\":\"webdev\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"group\":\"all\"}',	'2025-07-14 11:48:13',	'com_cache',	2,	2,	'COM_ACTIONLOGS_DISABLED'),
(30,	'PLG_ACTIONLOG_JOOMLA_USER_CACHE',	'{\"action\":\"cache\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":2,\"title\":\"webdev\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"group\":\"all\"}',	'2025-07-14 11:48:17',	'com_cache',	2,	2,	'COM_ACTIONLOGS_DISABLED'),
(31,	'PLG_ACTIONLOG_JOOMLA_USER_CACHE',	'{\"action\":\"cache\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":2,\"title\":\"webdev\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"group\":\"all\"}',	'2025-07-14 11:48:23',	'com_cache',	2,	2,	'COM_ACTIONLOGS_DISABLED'),
(32,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-14 12:41:01',	'com_users',	2,	0,	'COM_ACTIONLOGS_DISABLED'),
(33,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-15 05:04:20',	'com_users',	2,	0,	'COM_ACTIONLOGS_DISABLED'),
(34,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-15 19:03:36',	'com_users',	1,	0,	'COM_ACTIONLOGS_DISABLED'),
(35,	'PLG_ACTIONLOG_JOOMLA_GUIDEDTOURS_TOURDELAYED',	'{\"id\":12,\"title\":\"Welcome to Joomla!\",\"state\":\"delayed\",\"step\":1,\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\"}',	'2025-07-15 19:03:42',	'com_guidedtours.state',	1,	12,	'COM_ACTIONLOGS_DISABLED'),
(36,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED',	'{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":2,\"title\":\"Web Dev\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\"}',	'2025-07-15 19:04:20',	'com_users',	1,	2,	'COM_ACTIONLOGS_DISABLED'),
(38,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT',	'{\"action\":\"logout\",\"id\":2,\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-16 06:03:38',	'com_users',	2,	2,	'COM_ACTIONLOGS_DISABLED'),
(39,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-16 06:03:41',	'com_users',	2,	0,	'COM_ACTIONLOGS_DISABLED'),
(40,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT',	'{\"action\":\"logout\",\"id\":2,\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-16 06:06:02',	'com_users',	2,	2,	'COM_ACTIONLOGS_DISABLED'),
(41,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-16 06:06:13',	'com_users',	2,	0,	'COM_ACTIONLOGS_DISABLED'),
(42,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-16 10:29:27',	'com_users',	2,	0,	'COM_ACTIONLOGS_DISABLED'),
(43,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-18 11:21:58',	'com_users',	2,	0,	'COM_ACTIONLOGS_DISABLED'),
(44,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT',	'{\"action\":\"logout\",\"id\":2,\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-18 11:22:12',	'com_users',	2,	2,	'COM_ACTIONLOGS_DISABLED'),
(45,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-18 11:22:27',	'com_users',	1,	0,	'COM_ACTIONLOGS_DISABLED'),
(46,	'PLG_ACTIONLOG_JOOMLA_GUIDEDTOURS_TOURDELAYED',	'{\"id\":12,\"title\":\"Welcome to Joomla!\",\"state\":\"delayed\",\"step\":1,\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\"}',	'2025-07-18 11:22:31',	'com_guidedtours.state',	1,	12,	'COM_ACTIONLOGS_DISABLED'),
(47,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED',	'{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":2,\"title\":\"Web Dev\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\"}',	'2025-07-18 11:22:49',	'com_users',	1,	2,	'COM_ACTIONLOGS_DISABLED'),
(48,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT',	'{\"action\":\"logout\",\"id\":1,\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-18 11:23:01',	'com_users',	1,	1,	'COM_ACTIONLOGS_DISABLED'),
(49,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-18 11:23:11',	'com_users',	2,	0,	'COM_ACTIONLOGS_DISABLED'),
(50,	'PLG_ACTIONLOG_JOOMLA_USER_LOGEXPORT',	'{\"action\":\"actionlogs\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":2,\"title\":\"webdev\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-18 11:28:30',	'com_actionlogs',	2,	2,	'COM_ACTIONLOGS_DISABLED'),
(51,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT',	'{\"action\":\"logout\",\"id\":2,\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-18 11:31:02',	'com_users',	2,	2,	'COM_ACTIONLOGS_DISABLED'),
(52,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-18 11:31:29',	'com_users',	1,	0,	'COM_ACTIONLOGS_DISABLED'),
(53,	'PLG_ACTIONLOG_JOOMLA_APPLICATION_CONFIG_UPDATED',	'{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_APPLICATION_CONFIG\",\"extension_name\":\"com_config.application\",\"itemlink\":\"index.php?option=com_config\",\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\"}',	'2025-07-18 11:33:31',	'com_config.application',	1,	0,	'COM_ACTIONLOGS_DISABLED'),
(54,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-21 04:40:18',	'com_users',	2,	0,	'COM_ACTIONLOGS_DISABLED'),
(55,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-21 11:30:24',	'com_users',	2,	0,	'COM_ACTIONLOGS_DISABLED'),
(56,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-21 14:07:41',	'com_users',	2,	0,	'COM_ACTIONLOGS_DISABLED'),
(57,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT',	'{\"action\":\"logout\",\"id\":2,\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-21 14:07:50',	'com_users',	2,	2,	'COM_ACTIONLOGS_DISABLED'),
(58,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-22 00:03:33',	'com_users',	1,	0,	'COM_ACTIONLOGS_DISABLED'),
(59,	'PLG_ACTIONLOG_JOOMLA_GUIDEDTOURS_TOURDELAYED',	'{\"id\":12,\"title\":\"Welcome to Joomla!\",\"state\":\"delayed\",\"step\":1,\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\"}',	'2025-07-22 00:03:38',	'com_guidedtours.state',	1,	12,	'COM_ACTIONLOGS_DISABLED'),
(60,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":3,\"title\":\"Developer\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=3\",\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\"}',	'2025-07-22 00:05:04',	'com_users',	1,	3,	'COM_ACTIONLOGS_DISABLED'),
(61,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT',	'{\"action\":\"logout\",\"id\":1,\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-22 00:05:34',	'com_users',	1,	1,	'COM_ACTIONLOGS_DISABLED'),
(62,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":3,\"username\":\"web.dev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=3\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-22 00:05:41',	'com_users',	3,	0,	'COM_ACTIONLOGS_DISABLED'),
(63,	'PLG_ACTIONLOG_JOOMLA_GUIDEDTOURS_TOURDELAYED',	'{\"id\":12,\"title\":\"Welcome to Joomla!\",\"state\":\"delayed\",\"step\":1,\"userid\":3,\"username\":\"web.dev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=3\"}',	'2025-07-22 00:05:44',	'com_guidedtours.state',	3,	12,	'COM_ACTIONLOGS_DISABLED'),
(64,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT',	'{\"action\":\"logout\",\"id\":3,\"userid\":3,\"username\":\"web.dev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=3\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-22 00:07:26',	'com_users',	3,	3,	'COM_ACTIONLOGS_DISABLED'),
(65,	'PLG_ACTIONLOG_JOOMLA_USER_LOGIN_FAILED',	'{\"action\":\"login\",\"id\":3,\"userid\":3,\"username\":\"web.dev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=3\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-22 00:07:42',	'com_users',	3,	3,	'COM_ACTIONLOGS_DISABLED'),
(66,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":3,\"username\":\"web.dev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=3\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-22 00:07:57',	'com_users',	3,	0,	'COM_ACTIONLOGS_DISABLED'),
(67,	'PLG_ACTIONLOG_JOOMLA_USER_UPDATE',	'{\"action\":\"joomlaupdate\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":3,\"title\":\"web.dev\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=3\",\"userid\":3,\"username\":\"web.dev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=3\",\"version\":\"5.3.2\",\"oldversion\":\"5.3.1\"}',	'2025-07-22 00:09:00',	'com_joomlaupdate',	3,	3,	'COM_ACTIONLOGS_DISABLED'),
(68,	'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN',	'{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":3,\"title\":\"web.dev\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=3\",\"userid\":3,\"username\":\"web.dev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=3\",\"table\":\"#__scheduler_tasks\"}',	'2025-07-22 00:36:07',	'com_checkin',	3,	3,	'COM_ACTIONLOGS_DISABLED'),
(69,	'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN',	'{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":3,\"title\":\"web.dev\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=3\",\"userid\":3,\"username\":\"web.dev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=3\",\"table\":\"#__extensions\"}',	'2025-07-22 00:39:14',	'com_checkin',	3,	3,	'COM_ACTIONLOGS_DISABLED'),
(70,	'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN',	'{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":3,\"title\":\"web.dev\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=3\",\"userid\":3,\"username\":\"web.dev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=3\",\"table\":\"#__extensions\"}',	'2025-07-22 00:39:40',	'com_checkin',	3,	3,	'COM_ACTIONLOGS_DISABLED'),
(71,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT',	'{\"action\":\"logout\",\"id\":3,\"userid\":3,\"username\":\"web.dev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=3\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-22 00:40:07',	'com_users',	3,	3,	'COM_ACTIONLOGS_DISABLED'),
(72,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-22 00:40:23',	'com_users',	1,	0,	'COM_ACTIONLOGS_DISABLED'),
(73,	'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN',	'{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":1,\"title\":\"g.darrell\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=1\",\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\",\"table\":\"#__modules\"}',	'2025-07-22 00:41:34',	'com_checkin',	1,	1,	'COM_ACTIONLOGS_DISABLED'),
(74,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":3,\"username\":\"web.dev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=3\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-22 05:13:50',	'com_users',	3,	0,	'COM_ACTIONLOGS_DISABLED'),
(75,	'PLG_ACTIONLOG_JOOMLA_GUIDEDTOURS_TOURDELAYED',	'{\"id\":12,\"title\":\"Welcome to Joomla!\",\"state\":\"delayed\",\"step\":1,\"userid\":3,\"username\":\"web.dev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=3\"}',	'2025-07-22 05:13:56',	'com_guidedtours.state',	3,	12,	'COM_ACTIONLOGS_DISABLED'),
(76,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT',	'{\"action\":\"logout\",\"id\":3,\"userid\":3,\"username\":\"web.dev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=3\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-22 05:14:31',	'com_users',	3,	3,	'COM_ACTIONLOGS_DISABLED'),
(77,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-22 05:16:49',	'com_users',	2,	0,	'COM_ACTIONLOGS_DISABLED'),
(78,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-23 08:20:42',	'com_users',	1,	0,	'COM_ACTIONLOGS_DISABLED'),
(79,	'PLG_ACTIONLOG_JOOMLA_GUIDEDTOURS_TOURDELAYED',	'{\"id\":12,\"title\":\"Welcome to Joomla!\",\"state\":\"delayed\",\"step\":1,\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\"}',	'2025-07-23 08:20:47',	'com_guidedtours.state',	1,	12,	'COM_ACTIONLOGS_DISABLED'),
(80,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-24 23:49:02',	'com_users',	1,	0,	'COM_ACTIONLOGS_DISABLED'),
(81,	'PLG_ACTIONLOG_JOOMLA_GUIDEDTOURS_TOURDELAYED',	'{\"id\":12,\"title\":\"Welcome to Joomla!\",\"state\":\"delayed\",\"step\":1,\"userid\":1,\"username\":\"g.darrell\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1\"}',	'2025-07-24 23:49:06',	'com_guidedtours.state',	1,	12,	'COM_ACTIONLOGS_DISABLED'),
(82,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-25 10:06:44',	'com_users',	2,	0,	'COM_ACTIONLOGS_DISABLED'),
(83,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU\",\"id\":2,\"title\":\"Top Bar Navigation\",\"itemlink\":\"index.php?option=com_menus&task=menu.edit&id=2\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 10:08:56',	'com_menus.menu',	2,	2,	'COM_ACTIONLOGS_DISABLED'),
(84,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":102,\"title\":\"Admissions & Finance\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=102\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 10:13:37',	'com_menus.item',	2,	102,	'COM_ACTIONLOGS_DISABLED'),
(85,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":103,\"title\":\"Academic Programmes\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=103\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 10:20:28',	'com_menus.item',	2,	103,	'COM_ACTIONLOGS_DISABLED'),
(86,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":104,\"title\":\"Transfer Pathways\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=104\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 10:21:15',	'com_menus.item',	2,	104,	'COM_ACTIONLOGS_DISABLED'),
(87,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":105,\"title\":\"Student Resources\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=105\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 10:21:38',	'com_menus.item',	2,	105,	'COM_ACTIONLOGS_DISABLED'),
(88,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":106,\"title\":\"About Us\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=106\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 10:22:05',	'com_menus.item',	2,	106,	'COM_ACTIONLOGS_DISABLED'),
(89,	'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED',	'{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TEMPLATE\",\"id\":246,\"name\":\"bermuda\",\"extension_name\":\"bermuda\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 10:24:16',	'com_installer',	2,	246,	'COM_ACTIONLOGS_DISABLED'),
(90,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":3,\"username\":\"web.dev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=3\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-25 10:27:12',	'com_users',	3,	0,	'COM_ACTIONLOGS_DISABLED'),
(91,	'PLG_ACTIONLOG_JOOMLA_GUIDEDTOURS_TOURDELAYED',	'{\"id\":12,\"title\":\"Welcome to Joomla!\",\"state\":\"delayed\",\"step\":1,\"userid\":3,\"username\":\"web.dev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=3\"}',	'2025-07-25 10:27:20',	'com_guidedtours.state',	3,	12,	'COM_ACTIONLOGS_DISABLED'),
(92,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-25 10:56:24',	'com_users',	2,	0,	'COM_ACTIONLOGS_DISABLED'),
(93,	'PLG_ACTIONLOG_JOOMLA_EXTENSION_UNINSTALLED',	'{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TEMPLATE\",\"id\":246,\"name\":\"bermuda\",\"extension_name\":\"bermuda\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 10:57:17',	'com_installer',	2,	246,	'COM_ACTIONLOGS_DISABLED'),
(94,	'PLG_ACTIONLOG_JOOMLA_USER_CACHE',	'{\"action\":\"cache\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":2,\"title\":\"webdev\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"group\":\"all\"}',	'2025-07-25 11:16:54',	'com_cache',	2,	2,	'COM_ACTIONLOGS_DISABLED'),
(95,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":107,\"title\":\"Info for\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=107\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:18:26',	'com_menus.item',	2,	107,	'COM_ACTIONLOGS_DISABLED'),
(96,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":108,\"title\":\"Quick Links\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=108\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:18:50',	'com_menus.item',	2,	108,	'COM_ACTIONLOGS_DISABLED'),
(97,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":109,\"title\":\"Logins\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=109\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:19:15',	'com_menus.item',	2,	109,	'COM_ACTIONLOGS_DISABLED'),
(98,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU\",\"id\":3,\"title\":\"Footer\",\"itemlink\":\"index.php?option=com_menus&task=menu.edit&id=3\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:21:18',	'com_menus.menu',	2,	3,	'COM_ACTIONLOGS_DISABLED'),
(99,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED',	'{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU\",\"id\":3,\"title\":\"Footer Menu\",\"itemlink\":\"index.php?option=com_menus&task=menu.edit&id=3\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:21:41',	'com_menus.menu',	2,	3,	'COM_ACTIONLOGS_DISABLED'),
(100,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":110,\"title\":\"Contact\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=110\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:22:41',	'com_menus.item',	2,	110,	'COM_ACTIONLOGS_DISABLED'),
(101,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":111,\"title\":\"Content\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=111\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:22:56',	'com_menus.item',	2,	111,	'COM_ACTIONLOGS_DISABLED'),
(102,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":112,\"title\":\"Support Bermuda College\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=112\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:23:14',	'com_menus.item',	2,	112,	'COM_ACTIONLOGS_DISABLED'),
(103,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":113,\"title\":\"Out Commitment to You\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=113\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:23:31',	'com_menus.item',	2,	113,	'COM_ACTIONLOGS_DISABLED'),
(104,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":114,\"title\":\"Compliance\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=114\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:23:46',	'com_menus.item',	2,	114,	'COM_ACTIONLOGS_DISABLED'),
(105,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":115,\"title\":\"Address\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=115\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:24:19',	'com_menus.item',	2,	115,	'COM_ACTIONLOGS_DISABLED'),
(106,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":116,\"title\":\"Email\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=116\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:25:14',	'com_menus.item',	2,	116,	'COM_ACTIONLOGS_DISABLED'),
(107,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":117,\"title\":\"Phone\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=117\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:25:38',	'com_menus.item',	2,	117,	'COM_ACTIONLOGS_DISABLED'),
(108,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":118,\"title\":\"Contact Form\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=118\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:26:11',	'com_menus.item',	2,	118,	'COM_ACTIONLOGS_DISABLED'),
(109,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":119,\"title\":\"Admissions & Finance\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=119\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:27:12',	'com_menus.item',	2,	119,	'COM_ACTIONLOGS_DISABLED'),
(110,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":120,\"title\":\"Programmes\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=120\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:27:33',	'com_menus.item',	2,	120,	'COM_ACTIONLOGS_DISABLED'),
(111,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":121,\"title\":\"Transfer Pathways\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=121\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:27:55',	'com_menus.item',	2,	121,	'COM_ACTIONLOGS_DISABLED'),
(112,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":122,\"title\":\"Student Resources\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=122\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:28:17',	'com_menus.item',	2,	122,	'COM_ACTIONLOGS_DISABLED'),
(113,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":123,\"title\":\"About Us\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=123\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:28:37',	'com_menus.item',	2,	123,	'COM_ACTIONLOGS_DISABLED'),
(114,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":124,\"title\":\"Alumni\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=124\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:29:00',	'com_menus.item',	2,	124,	'COM_ACTIONLOGS_DISABLED'),
(115,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":125,\"title\":\"Community Outreach\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=125\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:29:31',	'com_menus.item',	2,	125,	'COM_ACTIONLOGS_DISABLED'),
(116,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":126,\"title\":\"BC Foundation\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=126\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:29:56',	'com_menus.item',	2,	126,	'COM_ACTIONLOGS_DISABLED'),
(117,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":127,\"title\":\"Donate\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=127\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:30:44',	'com_menus.item',	2,	127,	'COM_ACTIONLOGS_DISABLED'),
(118,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":128,\"title\":\"Affirmative Action & Equal Opportunity\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=128\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:31:27',	'com_menus.item',	2,	128,	'COM_ACTIONLOGS_DISABLED'),
(119,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":129,\"title\":\"Emergency Alerts & Procedures\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=129\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:31:54',	'com_menus.item',	2,	129,	'COM_ACTIONLOGS_DISABLED'),
(120,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":130,\"title\":\"Equity, Diversity & Inclusion\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=130\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:32:18',	'com_menus.item',	2,	130,	'COM_ACTIONLOGS_DISABLED'),
(121,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":131,\"title\":\"College Policies & Procedures\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=131\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:32:41',	'com_menus.item',	2,	131,	'COM_ACTIONLOGS_DISABLED'),
(122,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":132,\"title\":\"Public Records\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=132\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:33:09',	'com_menus.item',	2,	132,	'COM_ACTIONLOGS_DISABLED'),
(123,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":133,\"title\":\"Accessibility & ADA\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=133\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:40:21',	'com_menus.item',	2,	133,	'COM_ACTIONLOGS_DISABLED'),
(124,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":134,\"title\":\"Incident Reports\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=134\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:40:43',	'com_menus.item',	2,	134,	'COM_ACTIONLOGS_DISABLED'),
(125,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":135,\"title\":\"Non-Discrimination\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=135\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:41:18',	'com_menus.item',	2,	135,	'COM_ACTIONLOGS_DISABLED'),
(126,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":136,\"title\":\"Grievance Resolution\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=136\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:43:58',	'com_menus.item',	2,	136,	'COM_ACTIONLOGS_DISABLED'),
(127,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":137,\"title\":\"Suggestion Box\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=137\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 11:44:22',	'com_menus.item',	2,	137,	'COM_ACTIONLOGS_DISABLED'),
(128,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-25 12:17:19',	'com_users',	2,	0,	'COM_ACTIONLOGS_DISABLED'),
(129,	'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED',	'{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TEMPLATE\",\"id\":247,\"name\":\"bermuda\",\"extension_name\":\"bermuda\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 12:18:16',	'com_installer',	2,	247,	'COM_ACTIONLOGS_DISABLED'),
(130,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-25 12:51:24',	'com_users',	2,	0,	'COM_ACTIONLOGS_DISABLED'),
(131,	'PLG_ACTIONLOG_JOOMLA_APPLICATION_CONFIG_UPDATED',	'{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_APPLICATION_CONFIG\",\"extension_name\":\"com_config.application\",\"itemlink\":\"index.php?option=com_config\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 13:05:13',	'com_config.application',	2,	0,	'COM_ACTIONLOGS_DISABLED'),
(132,	'PLG_ACTIONLOG_JOOMLA_USER_CACHE',	'{\"action\":\"cache\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":2,\"title\":\"webdev\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"group\":\"all\"}',	'2025-07-25 13:26:48',	'com_cache',	2,	2,	'COM_ACTIONLOGS_DISABLED'),
(133,	'PLG_ACTIONLOG_JOOMLA_EXTENSION_UNINSTALLED',	'{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TEMPLATE\",\"id\":247,\"name\":\"bermuda\",\"extension_name\":\"bermuda\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 13:47:40',	'com_installer',	2,	247,	'COM_ACTIONLOGS_DISABLED'),
(134,	'PLG_ACTIONLOG_JOOMLA_USER_CACHE',	'{\"action\":\"cache\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":2,\"title\":\"webdev\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"group\":\"_media_version\"}',	'2025-07-25 13:47:59',	'com_cache',	2,	2,	'COM_ACTIONLOGS_DISABLED'),
(135,	'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED',	'{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TEMPLATE\",\"id\":248,\"name\":\"bermuda\",\"extension_name\":\"bermuda\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 14:12:32',	'com_installer',	2,	248,	'COM_ACTIONLOGS_DISABLED'),
(136,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"Admissions & Finance\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 14:19:03',	'com_content.article',	2,	1,	'COM_ACTIONLOGS_DISABLED'),
(137,	'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN',	'{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":2,\"title\":\"webdev\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"table\":\"#__content\"}',	'2025-07-25 14:20:14',	'com_checkin',	2,	2,	'COM_ACTIONLOGS_DISABLED'),
(138,	'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN',	'{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":2,\"title\":\"webdev\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"table\":\"#__menu\"}',	'2025-07-25 14:34:00',	'com_checkin',	2,	2,	'COM_ACTIONLOGS_DISABLED'),
(139,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED',	'{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":2,\"title\":\"BC Home\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 14:34:27',	'com_content.article',	2,	2,	'COM_ACTIONLOGS_DISABLED'),
(140,	'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN',	'{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":2,\"title\":\"webdev\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"table\":\"#__content\"}',	'2025-07-25 14:34:38',	'com_checkin',	2,	2,	'COM_ACTIONLOGS_DISABLED'),
(141,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED',	'{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"Home\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 14:35:14',	'com_menus.item',	2,	101,	'COM_ACTIONLOGS_DISABLED'),
(142,	'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN',	'{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":2,\"title\":\"webdev\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"table\":\"#__menu\"}',	'2025-07-25 14:35:14',	'com_checkin',	2,	2,	'COM_ACTIONLOGS_DISABLED'),
(143,	'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED',	'{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":102,\"title\":\"Admissions & Finance\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=102\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\"}',	'2025-07-25 14:35:31',	'com_menus.item',	2,	102,	'COM_ACTIONLOGS_DISABLED'),
(144,	'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN',	'{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":2,\"title\":\"webdev\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"userid\":2,\"username\":\"webdev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=2\",\"table\":\"#__menu\"}',	'2025-07-25 14:35:31',	'com_checkin',	2,	2,	'COM_ACTIONLOGS_DISABLED'),
(145,	'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN',	'{\"action\":\"login\",\"userid\":3,\"username\":\"web.dev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=3\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}',	'2025-07-25 15:50:59',	'com_users',	3,	0,	'COM_ACTIONLOGS_DISABLED'),
(146,	'PLG_ACTIONLOG_JOOMLA_GUIDEDTOURS_TOURDELAYED',	'{\"id\":12,\"title\":\"Welcome to Joomla!\",\"state\":\"delayed\",\"step\":1,\"userid\":3,\"username\":\"web.dev\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=3\"}',	'2025-07-25 15:51:08',	'com_guidedtours.state',	3,	12,	'COM_ACTIONLOGS_DISABLED');

DROP TABLE IF EXISTS `n8am2_action_logs_extensions`;
CREATE TABLE `n8am2_action_logs_extensions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_action_logs_extensions` (`id`, `extension`) VALUES
(1,	'com_banners'),
(2,	'com_cache'),
(3,	'com_categories'),
(4,	'com_config'),
(5,	'com_contact'),
(6,	'com_content'),
(7,	'com_installer'),
(8,	'com_media'),
(9,	'com_menus'),
(10,	'com_messages'),
(11,	'com_modules'),
(12,	'com_newsfeeds'),
(13,	'com_plugins'),
(14,	'com_redirect'),
(15,	'com_tags'),
(16,	'com_templates'),
(17,	'com_users'),
(18,	'com_checkin'),
(19,	'com_scheduler'),
(20,	'com_fields'),
(21,	'com_guidedtours');

DROP TABLE IF EXISTS `n8am2_action_logs_users`;
CREATE TABLE `n8am2_action_logs_users` (
  `user_id` int unsigned NOT NULL,
  `notify` tinyint unsigned NOT NULL,
  `extensions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `idx_notify` (`notify`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `n8am2_assets`;
CREATE TABLE `n8am2_assets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1,	0,	0,	191,	0,	'root.1',	'Root Asset',	'{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.api\":{\"8\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2,	1,	1,	2,	1,	'com_admin',	'com_admin',	'{}'),
(3,	1,	3,	6,	1,	'com_banners',	'com_banners',	'{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4,	1,	7,	8,	1,	'com_cache',	'com_cache',	'{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5,	1,	9,	10,	1,	'com_checkin',	'com_checkin',	'{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6,	1,	11,	12,	1,	'com_config',	'com_config',	'{}'),
(7,	1,	13,	16,	1,	'com_contact',	'com_contact',	'{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8,	1,	17,	42,	1,	'com_content',	'com_content',	'{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.execute.transition\":{\"6\":1,\"5\":1}}'),
(9,	1,	43,	44,	1,	'com_cpanel',	'com_cpanel',	'{}'),
(10,	1,	45,	46,	1,	'com_installer',	'com_installer',	'{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11,	1,	47,	50,	1,	'com_languages',	'com_languages',	'{\"core.admin\":{\"7\":1}}'),
(12,	11,	48,	49,	2,	'com_languages.language.1',	'English (en-GB)',	'{}'),
(13,	1,	51,	52,	1,	'com_login',	'com_login',	'{}'),
(14,	1,	53,	54,	1,	'com_mails',	'com_mails',	'{}'),
(15,	1,	55,	56,	1,	'com_media',	'com_media',	'{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16,	1,	57,	64,	1,	'com_menus',	'com_menus',	'{\"core.admin\":{\"7\":1}}'),
(17,	1,	65,	66,	1,	'com_messages',	'com_messages',	'{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18,	1,	67,	140,	1,	'com_modules',	'com_modules',	'{\"core.admin\":{\"7\":1}}'),
(19,	1,	141,	144,	1,	'com_newsfeeds',	'com_newsfeeds',	'{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20,	1,	145,	146,	1,	'com_plugins',	'com_plugins',	'{\"core.admin\":{\"7\":1}}'),
(21,	1,	147,	148,	1,	'com_redirect',	'com_redirect',	'{\"core.admin\":{\"7\":1}}'),
(23,	1,	149,	150,	1,	'com_templates',	'com_templates',	'{\"core.admin\":{\"7\":1}}'),
(24,	1,	155,	158,	1,	'com_users',	'com_users',	'{\"core.admin\":{\"7\":1}}'),
(26,	1,	159,	160,	1,	'com_wrapper',	'com_wrapper',	'{}'),
(27,	8,	18,	23,	2,	'com_content.category.2',	'Uncategorised',	'{}'),
(28,	3,	4,	5,	2,	'com_banners.category.3',	'Uncategorised',	'{}'),
(29,	7,	14,	15,	2,	'com_contact.category.4',	'Uncategorised',	'{}'),
(30,	19,	142,	143,	2,	'com_newsfeeds.category.5',	'Uncategorised',	'{}'),
(32,	24,	156,	157,	2,	'com_users.category.7',	'Uncategorised',	'{}'),
(33,	1,	161,	162,	1,	'com_finder',	'com_finder',	'{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34,	1,	163,	164,	1,	'com_joomlaupdate',	'com_joomlaupdate',	'{}'),
(35,	1,	165,	166,	1,	'com_tags',	'com_tags',	'{}'),
(36,	1,	167,	168,	1,	'com_contenthistory',	'com_contenthistory',	'{}'),
(37,	1,	169,	170,	1,	'com_ajax',	'com_ajax',	'{}'),
(38,	1,	171,	172,	1,	'com_postinstall',	'com_postinstall',	'{}'),
(39,	18,	68,	69,	2,	'com_modules.module.1',	'Main Menu',	'{}'),
(40,	18,	70,	71,	2,	'com_modules.module.2',	'Login',	'{}'),
(41,	18,	72,	73,	2,	'com_modules.module.3',	'Popular Articles',	'{}'),
(42,	18,	74,	75,	2,	'com_modules.module.4',	'Recently Added Articles',	'{}'),
(43,	18,	76,	77,	2,	'com_modules.module.8',	'Toolbar',	'{}'),
(44,	18,	78,	79,	2,	'com_modules.module.9',	'Notifications',	'{}'),
(45,	18,	80,	81,	2,	'com_modules.module.10',	'Logged-in Users',	'{}'),
(46,	18,	82,	83,	2,	'com_modules.module.12',	'Admin Menu',	'{}'),
(49,	18,	88,	89,	2,	'com_modules.module.15',	'Title',	'{}'),
(50,	18,	90,	91,	2,	'com_modules.module.16',	'Login Form',	'{}'),
(51,	18,	92,	93,	2,	'com_modules.module.17',	'Breadcrumbs',	'{}'),
(52,	18,	94,	95,	2,	'com_modules.module.79',	'Multilanguage status',	'{}'),
(53,	18,	98,	99,	2,	'com_modules.module.86',	'Joomla Version',	'{}'),
(54,	16,	58,	59,	2,	'com_menus.menu.1',	'Main Menu',	'{}'),
(55,	18,	102,	103,	2,	'com_modules.module.87',	'Sample Data',	'{}'),
(56,	8,	24,	41,	2,	'com_content.workflow.1',	'COM_WORKFLOW_BASIC_WORKFLOW',	'{}'),
(57,	56,	25,	26,	3,	'com_content.stage.1',	'COM_WORKFLOW_BASIC_STAGE',	'{}'),
(58,	56,	27,	28,	3,	'com_content.transition.1',	'UNPUBLISH',	'{}'),
(59,	56,	29,	30,	3,	'com_content.transition.2',	'PUBLISH',	'{}'),
(60,	56,	31,	32,	3,	'com_content.transition.3',	'TRASH',	'{}'),
(61,	56,	33,	34,	3,	'com_content.transition.4',	'ARCHIVE',	'{}'),
(62,	56,	35,	36,	3,	'com_content.transition.5',	'FEATURE',	'{}'),
(63,	56,	37,	38,	3,	'com_content.transition.6',	'UNFEATURE',	'{}'),
(64,	56,	39,	40,	3,	'com_content.transition.7',	'PUBLISH_AND_FEATURE',	'{}'),
(65,	1,	151,	152,	1,	'com_privacy',	'com_privacy',	'{}'),
(66,	1,	153,	154,	1,	'com_actionlogs',	'com_actionlogs',	'{}'),
(67,	18,	84,	85,	2,	'com_modules.module.88',	'Latest Actions',	'{}'),
(68,	18,	86,	87,	2,	'com_modules.module.89',	'Privacy Dashboard',	'{}'),
(70,	18,	96,	97,	2,	'com_modules.module.103',	'Site',	'{}'),
(71,	18,	100,	101,	2,	'com_modules.module.104',	'System',	'{}'),
(72,	18,	104,	105,	2,	'com_modules.module.91',	'System Dashboard',	'{}'),
(73,	18,	106,	107,	2,	'com_modules.module.92',	'Content Dashboard',	'{}'),
(74,	18,	108,	109,	2,	'com_modules.module.93',	'Menus Dashboard',	'{}'),
(75,	18,	110,	111,	2,	'com_modules.module.94',	'Components Dashboard',	'{}'),
(76,	18,	112,	113,	2,	'com_modules.module.95',	'Users Dashboard',	'{}'),
(77,	18,	114,	115,	2,	'com_modules.module.99',	'Frontend Link',	'{}'),
(78,	18,	116,	117,	2,	'com_modules.module.100',	'Messages',	'{}'),
(79,	18,	118,	119,	2,	'com_modules.module.101',	'Post Install Messages',	'{}'),
(80,	18,	120,	121,	2,	'com_modules.module.102',	'User Status',	'{}'),
(82,	18,	122,	123,	2,	'com_modules.module.105',	'3rd Party',	'{}'),
(83,	18,	124,	125,	2,	'com_modules.module.106',	'Help Dashboard',	'{}'),
(84,	18,	126,	127,	2,	'com_modules.module.107',	'Privacy Requests',	'{}'),
(85,	18,	128,	129,	2,	'com_modules.module.108',	'Privacy Status',	'{}'),
(86,	18,	130,	131,	2,	'com_modules.module.96',	'Popular Articles',	'{}'),
(87,	18,	132,	133,	2,	'com_modules.module.97',	'Recently Added Articles',	'{}'),
(88,	18,	134,	135,	2,	'com_modules.module.98',	'Logged-in Users',	'{}'),
(89,	18,	136,	137,	2,	'com_modules.module.90',	'Login Support',	'{}'),
(90,	1,	173,	180,	1,	'com_scheduler',	'com_scheduler',	'{}'),
(91,	1,	181,	182,	1,	'com_associations',	'com_associations',	'{}'),
(92,	1,	183,	184,	1,	'com_categories',	'com_categories',	'{}'),
(93,	1,	185,	186,	1,	'com_fields',	'com_fields',	'{}'),
(94,	1,	187,	188,	1,	'com_workflow',	'com_workflow',	'{}'),
(95,	1,	189,	190,	1,	'com_guidedtours',	'com_guidedtours',	'{}'),
(96,	18,	138,	139,	2,	'com_modules.module.109',	'Guided Tours',	'{}'),
(97,	90,	174,	175,	2,	'com_scheduler.task.1',	'Rotate Logs',	'{}'),
(98,	90,	176,	177,	2,	'com_scheduler.task.2',	'Session GC',	'{}'),
(99,	90,	178,	179,	2,	'com_scheduler.task.3',	'Update Notification',	'{}'),
(100,	16,	60,	61,	2,	'com_menus.menu.2',	'Top Bar Navigation',	'{}'),
(101,	16,	62,	63,	2,	'com_menus.menu.3',	'Footer Menu',	'{}'),
(102,	27,	19,	20,	3,	'com_content.article.1',	'Admissions & Finance',	'{}'),
(103,	27,	21,	22,	3,	'com_content.article.2',	'BC Home',	'{}');

DROP TABLE IF EXISTS `n8am2_associations`;
CREATE TABLE `n8am2_associations` (
  `id` int NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `n8am2_banner_clients`;
CREATE TABLE `n8am2_banner_clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `own_prefix` tinyint NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint NOT NULL DEFAULT '-1',
  `track_clicks` tinyint NOT NULL DEFAULT '-1',
  `track_impressions` tinyint NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `n8am2_banner_tracks`;
CREATE TABLE `n8am2_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int unsigned NOT NULL,
  `banner_id` int unsigned NOT NULL,
  `count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `n8am2_banners`;
CREATE TABLE `n8am2_banners` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cid` int NOT NULL DEFAULT '0',
  `type` int NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int NOT NULL DEFAULT '0',
  `impmade` int NOT NULL DEFAULT '0',
  `clicks` int NOT NULL DEFAULT '0',
  `clickurl` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint NOT NULL DEFAULT '0',
  `catid` int unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint unsigned NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint NOT NULL DEFAULT '-1',
  `track_clicks` tinyint NOT NULL DEFAULT '-1',
  `track_impressions` tinyint NOT NULL DEFAULT '-1',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `reset` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `version` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `n8am2_categories`;
CREATE TABLE `n8am2_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `lft` int NOT NULL DEFAULT '0',
  `rgt` int NOT NULL DEFAULT '0',
  `level` int unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `published` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL,
  `modified_user_id` int unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `hits` int unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1,	0,	0,	0,	11,	0,	'',	'system',	'ROOT',	'root',	'',	'',	1,	NULL,	NULL,	1,	'{}',	'',	'',	'{}',	1,	'2025-06-11 23:01:58',	1,	'2025-06-11 23:01:58',	0,	'*',	1),
(2,	27,	1,	1,	2,	1,	'uncategorised',	'com_content',	'Uncategorised',	'uncategorised',	'',	'',	1,	NULL,	NULL,	1,	'{\"category_layout\":\"\",\"image\":\"\",\"workflow_id\":\"use_default\"}',	'',	'',	'{\"author\":\"\",\"robots\":\"\"}',	1,	'2025-06-11 23:01:58',	1,	'2025-06-11 23:01:58',	0,	'*',	1),
(3,	28,	1,	3,	4,	1,	'uncategorised',	'com_banners',	'Uncategorised',	'uncategorised',	'',	'',	1,	NULL,	NULL,	1,	'{\"category_layout\":\"\",\"image\":\"\"}',	'',	'',	'{\"author\":\"\",\"robots\":\"\"}',	1,	'2025-06-11 23:01:58',	1,	'2025-06-11 23:01:58',	0,	'*',	1),
(4,	29,	1,	5,	6,	1,	'uncategorised',	'com_contact',	'Uncategorised',	'uncategorised',	'',	'',	1,	NULL,	NULL,	1,	'{\"category_layout\":\"\",\"image\":\"\"}',	'',	'',	'{\"author\":\"\",\"robots\":\"\"}',	1,	'2025-06-11 23:01:58',	1,	'2025-06-11 23:01:58',	0,	'*',	1),
(5,	30,	1,	7,	8,	1,	'uncategorised',	'com_newsfeeds',	'Uncategorised',	'uncategorised',	'',	'',	1,	NULL,	NULL,	1,	'{\"category_layout\":\"\",\"image\":\"\"}',	'',	'',	'{\"author\":\"\",\"robots\":\"\"}',	1,	'2025-06-11 23:01:58',	1,	'2025-06-11 23:01:58',	0,	'*',	1),
(7,	32,	1,	9,	10,	1,	'uncategorised',	'com_users',	'Uncategorised',	'uncategorised',	'',	'',	1,	NULL,	NULL,	1,	'{\"category_layout\":\"\",\"image\":\"\"}',	'',	'',	'{\"author\":\"\",\"robots\":\"\"}',	1,	'2025-06-11 23:01:58',	1,	'2025-06-11 23:01:58',	0,	'*',	1);

DROP TABLE IF EXISTS `n8am2_contact_details`;
CREATE TABLE `n8am2_contact_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint unsigned NOT NULL DEFAULT '0',
  `published` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `catid` int NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `version` int unsigned NOT NULL DEFAULT '1',
  `hits` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `n8am2_content`;
CREATE TABLE `n8am2_content` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `catid` int unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int unsigned NOT NULL DEFAULT '1',
  `ordering` int NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int unsigned NOT NULL DEFAULT '0',
  `hits` int unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_alias` (`alias`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `note`) VALUES
(1,	102,	'Admissions & Finance',	'admissions-finance',	'',	'',	1,	2,	'2025-07-25 14:19:03',	2,	'',	'2025-07-25 14:19:03',	2,	NULL,	NULL,	'2025-07-25 14:19:03',	NULL,	'{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}',	'{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}',	'{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',	1,	1,	'',	'',	1,	17,	'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}',	0,	'*',	''),
(2,	103,	'BC Home',	'bc-home',	'',	'',	1,	2,	'2025-07-25 14:34:27',	2,	'',	'2025-07-25 14:34:27',	2,	NULL,	NULL,	'2025-07-25 14:34:27',	NULL,	'{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}',	'{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}',	'{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',	1,	0,	'',	'',	1,	20,	'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}',	0,	'*',	'');

DROP TABLE IF EXISTS `n8am2_content_frontpage`;
CREATE TABLE `n8am2_content_frontpage` (
  `content_id` int NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `featured_up` datetime DEFAULT NULL,
  `featured_down` datetime DEFAULT NULL,
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `n8am2_content_rating`;
CREATE TABLE `n8am2_content_rating` (
  `content_id` int NOT NULL DEFAULT '0',
  `rating_sum` int unsigned NOT NULL DEFAULT '0',
  `rating_count` int unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `n8am2_content_types`;
CREATE TABLE `n8am2_content_types` (
  `type_id` int unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1,	'Article',	'com_content.article',	'{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"ArticleTable\",\"prefix\":\"Joomla\\\\Component\\\\Content\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}',	'',	'{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"asset_id\", \"note\":\"note\"}, \"special\":{\"fulltext\":\"fulltext\"}}',	'ContentHelperRoute::getArticleRoute',	'{\"formFile\":\"administrator\\/components\\/com_content\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2,	'Contact',	'com_contact.contact',	'{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"ContactTable\",\"prefix\":\"Joomla\\\\Component\\\\Contact\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}',	'',	'{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}',	'ContactHelperRoute::getContactRoute',	'{\"formFile\":\"administrator\\/components\\/com_contact\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3,	'Newsfeed',	'com_newsfeeds.newsfeed',	'{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"NewsfeedTable\",\"prefix\":\"Joomla\\\\Component\\\\Newsfeeds\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}',	'',	'{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}',	'NewsfeedsHelperRoute::getNewsfeedRoute',	'{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4,	'User',	'com_users.user',	'{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}',	'',	'{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerDate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}',	'',	''),
(5,	'Article Category',	'com_content.category',	'{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}',	'',	'{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}',	'ContentHelperRoute::getCategoryRoute',	'{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6,	'Contact Category',	'com_contact.category',	'{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}',	'',	'{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}',	'ContactHelperRoute::getCategoryRoute',	'{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7,	'Newsfeeds Category',	'com_newsfeeds.category',	'{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}',	'',	'{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}',	'NewsfeedsHelperRoute::getCategoryRoute',	'{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8,	'Tag',	'com_tags.tag',	'{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"TagTable\",\"prefix\":\"Joomla\\\\Component\\\\Tags\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}',	'',	'{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}',	'TagsHelperRoute::getTagRoute',	'{\"formFile\":\"administrator\\/components\\/com_tags\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9,	'Banner',	'com_banners.banner',	'{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"BannerTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}',	'',	'{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}',	'',	'{\"formFile\":\"administrator\\/components\\/com_banners\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10,	'Banners Category',	'com_banners.category',	'{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}',	'',	'{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}',	'',	'{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11,	'Banner Client',	'com_banners.client',	'{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"ClientTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\"}}',	'',	'',	'',	'{\"formFile\":\"administrator\\/components\\/com_banners\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12,	'User Notes',	'com_users.note',	'{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"NoteTable\",\"prefix\":\"Joomla\\\\Component\\\\Users\\\\Administrator\\\\Table\\\\\"}}',	'',	'',	'',	'{\"formFile\":\"administrator\\/components\\/com_users\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13,	'User Notes Category',	'com_users.category',	'{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}',	'',	'{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}',	'',	'{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

DROP TABLE IF EXISTS `n8am2_contentitem_tag_map`;
CREATE TABLE `n8am2_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';


DROP TABLE IF EXISTS `n8am2_extensions`;
CREATE TABLE `n8am2_extensions` (
  `extension_id` int NOT NULL AUTO_INCREMENT,
  `package_id` int NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `changelogurl` text COLLATE utf8mb4_unicode_ci,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint NOT NULL,
  `enabled` tinyint NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '1',
  `protected` tinyint NOT NULL DEFAULT '0' COMMENT 'Flag to indicate if the extension is protected. Protected extensions cannot be disabled.',
  `locked` tinyint NOT NULL DEFAULT '0' COMMENT 'Flag to indicate if the extension is locked. Locked extensions cannot be uninstalled.',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int DEFAULT '0',
  `state` int DEFAULT '0',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `changelogurl`, `folder`, `client_id`, `enabled`, `access`, `protected`, `locked`, `manifest_cache`, `params`, `custom_data`, `checked_out`, `checked_out_time`, `ordering`, `state`, `note`) VALUES
(1,	0,	'com_wrapper',	'component',	'com_wrapper',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Wrapper\",\"filename\":\"wrapper\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(2,	0,	'com_admin',	'component',	'com_admin',	'',	'',	1,	1,	1,	1,	1,	'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Admin\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(3,	0,	'com_banners',	'component',	'com_banners',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Banners\",\"filename\":\"banners\"}',	'{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}',	'',	NULL,	NULL,	0,	0,	NULL),
(4,	0,	'com_cache',	'component',	'com_cache',	'',	'',	1,	1,	1,	1,	1,	'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Cache\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(5,	0,	'com_categories',	'component',	'com_categories',	'',	'',	1,	1,	1,	1,	1,	'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"2007-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Categories\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(6,	0,	'com_checkin',	'component',	'com_checkin',	'',	'',	1,	1,	1,	1,	1,	'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Checkin\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(7,	0,	'com_contact',	'component',	'com_contact',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Contact\",\"filename\":\"contact\"}',	'{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_ids\":1,\"custom_fields_enable\":\"1\"}',	'',	NULL,	NULL,	0,	0,	NULL),
(8,	0,	'com_cpanel',	'component',	'com_cpanel',	'',	'',	1,	1,	1,	1,	1,	'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"2007-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Cpanel\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(9,	0,	'com_installer',	'component',	'com_installer',	'',	'',	1,	1,	1,	1,	1,	'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Installer\"}',	'{\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}',	'',	NULL,	NULL,	0,	0,	NULL),
(10,	0,	'com_languages',	'component',	'com_languages',	'',	'',	1,	1,	1,	1,	1,	'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Languages\"}',	'{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}',	'',	NULL,	NULL,	0,	0,	NULL),
(11,	0,	'com_login',	'component',	'com_login',	'',	'',	1,	1,	1,	1,	1,	'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Login\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(12,	0,	'com_media',	'component',	'com_media',	'',	'',	1,	1,	0,	1,	1,	'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Media\",\"filename\":\"media\"}',	'{\"upload_maxsize\":\"10\",\"file_path\":\"files\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"restrict_uploads_extensions\":\"bmp,gif,jpg,jpeg,png,webp,avif,ico,mp3,m4a,mp4a,ogg,mp4,mp4v,mpeg,mov,odg,odp,ods,odt,pdf,ppt,txt,xcf,xls,csv\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png,jpeg,webp,avif\",\"audio_extensions\":\"mp3,m4a,mp4a,ogg\",\"video_extensions\":\"mp4,mp4v,mpeg,mov,webm\",\"doc_extensions\":\"odg,odp,ods,odt,pdf,ppt,txt,xcf,xls,csv\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,image\\/webp,image\\/avif,audio\\/ogg,audio\\/mpeg,audio\\/mp4,video\\/mp4,video\\/webm,video\\/mpeg,video\\/quicktime,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\"}',	'',	NULL,	NULL,	0,	0,	NULL),
(13,	0,	'com_menus',	'component',	'com_menus',	'',	'',	1,	1,	1,	1,	1,	'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Menus\",\"filename\":\"menus\"}',	'{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}',	'',	NULL,	NULL,	0,	0,	NULL),
(14,	0,	'com_messages',	'component',	'com_messages',	'',	'',	1,	1,	1,	1,	1,	'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Messages\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(15,	0,	'com_modules',	'component',	'com_modules',	'',	'',	1,	1,	1,	1,	1,	'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Modules\",\"filename\":\"modules\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(16,	0,	'com_newsfeeds',	'component',	'com_newsfeeds',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}',	'{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"sef_ids\":1}',	'',	NULL,	NULL,	0,	0,	NULL),
(17,	0,	'com_plugins',	'component',	'com_plugins',	'',	'',	1,	1,	1,	1,	1,	'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Plugins\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(18,	0,	'com_templates',	'component',	'com_templates',	'',	'',	1,	1,	1,	1,	1,	'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Templates\"}',	'{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png,webp\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass,json\",\"font_formats\":\"woff,woff2,ttf,otf\",\"compressed_formats\":\"zip\",\"difference\":\"SideBySide\"}',	'',	NULL,	NULL,	0,	0,	NULL),
(19,	0,	'com_content',	'component',	'com_content',	'',	'',	1,	1,	0,	1,	1,	'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Content\",\"filename\":\"content\"}',	'{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"info_block_show_title\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"0\",\"flags\":\"1\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":100,\"show_tags\":\"1\",\"record_hits\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"urls_position\":0,\"captcha\":\"\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_configure_edit_options\":\"1\",\"show_permissions\":\"1\",\"show_associations_edit\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_category_heading_title_text\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":1,\"blog_class_leading\":\"\",\"num_intro_articles\":4,\"blog_class\":\"\",\"num_columns\":1,\"multi_column_order\":\"0\",\"num_links\":4,\"show_subcategory_content\":\"0\",\"link_intro_image\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"display_num\":\"10\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\",\"sef_ids\":1,\"custom_fields_enable\":\"1\",\"workflow_enabled\":\"0\"}',	'',	NULL,	NULL,	0,	0,	NULL),
(20,	0,	'com_config',	'component',	'com_config',	'',	'',	1,	1,	0,	1,	1,	'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Config\",\"filename\":\"config\"}',	'{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}',	'',	NULL,	NULL,	0,	0,	NULL),
(21,	0,	'com_redirect',	'component',	'com_redirect',	'',	'',	1,	1,	0,	0,	1,	'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Redirect\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(22,	0,	'com_users',	'component',	'com_users',	'',	'',	1,	1,	0,	1,	1,	'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Users\",\"filename\":\"users\"}',	'{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"12\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}',	'',	NULL,	NULL,	0,	0,	NULL),
(23,	0,	'com_finder',	'component',	'com_finder',	'',	'',	1,	1,	0,	0,	1,	'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Finder\",\"filename\":\"finder\"}',	'{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}',	'',	NULL,	NULL,	0,	0,	NULL),
(24,	0,	'com_joomlaupdate',	'component',	'com_joomlaupdate',	'',	'',	1,	1,	0,	1,	1,	'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.3\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Joomlaupdate\"}',	'{\"updatesource\":\"default\",\"customurl\":\"\"}',	'',	NULL,	NULL,	0,	0,	NULL),
(25,	0,	'com_tags',	'component',	'com_tags',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"2013-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Tags\",\"filename\":\"tags\"}',	'{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_description\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}',	'',	NULL,	NULL,	0,	0,	NULL),
(26,	0,	'com_contenthistory',	'component',	'com_contenthistory',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"2013-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Contenthistory\",\"filename\":\"contenthistory\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(27,	0,	'com_ajax',	'component',	'com_ajax',	'',	'',	1,	1,	1,	1,	1,	'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"2013-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"ajax\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(28,	0,	'com_postinstall',	'component',	'com_postinstall',	'',	'',	1,	1,	1,	1,	1,	'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"2013-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Postinstall\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(29,	0,	'com_fields',	'component',	'com_fields',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Fields\",\"filename\":\"fields\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(30,	0,	'com_associations',	'component',	'com_associations',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Associations\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(31,	0,	'com_privacy',	'component',	'com_privacy',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"com_privacy\",\"type\":\"component\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Privacy\",\"filename\":\"privacy\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(32,	0,	'com_actionlogs',	'component',	'com_actionlogs',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"com_actionlogs\",\"type\":\"component\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Actionlogs\"}',	'{\"ip_logging\":0,\"csv_delimiter\":\",\",\"loggable_extensions\":[\"com_banners\",\"com_cache\",\"com_categories\",\"com_checkin\",\"com_config\",\"com_contact\",\"com_content\",\"com_fields\",\"com_guidedtours\",\"com_installer\",\"com_media\",\"com_menus\",\"com_messages\",\"com_modules\",\"com_newsfeeds\",\"com_plugins\",\"com_redirect\",\"com_scheduler\",\"com_tags\",\"com_templates\",\"com_users\"]}',	'',	NULL,	NULL,	0,	0,	NULL),
(33,	0,	'com_workflow',	'component',	'com_workflow',	'',	'',	1,	1,	0,	1,	1,	'{\"name\":\"com_workflow\",\"type\":\"component\",\"creationDate\":\"2017-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WORKFLOW_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Workflow\"}',	'{}',	'',	NULL,	NULL,	0,	0,	NULL),
(34,	0,	'com_mails',	'component',	'com_mails',	'',	'',	1,	1,	1,	1,	1,	'{\"name\":\"com_mails\",\"type\":\"component\",\"creationDate\":\"2019-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MAILS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Mails\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(35,	0,	'com_scheduler',	'component',	'com_scheduler',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"com_scheduler\",\"type\":\"component\",\"creationDate\":\"2021-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"COM_SCHEDULER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Scheduler\"}',	'{}',	'',	NULL,	NULL,	0,	0,	NULL),
(36,	0,	'com_guidedtours',	'component',	'com_guidedtours',	'',	'',	1,	1,	0,	0,	1,	'{\"name\":\"com_guidedtours\",\"type\":\"component\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"COM_GUIDEDTOURS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Guidedtours\"}',	'{}',	'',	NULL,	NULL,	0,	0,	NULL),
(37,	0,	'lib_joomla',	'library',	'joomla',	'',	'',	0,	1,	1,	1,	1,	'{\"name\":\"lib_joomla\",\"type\":\"library\",\"creationDate\":\"2008-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"joomla\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(38,	0,	'lib_phpass',	'library',	'phpass',	'',	'',	0,	1,	1,	1,	1,	'{\"name\":\"lib_phpass\",\"type\":\"library\",\"creationDate\":\"2004-01\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"https:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.5.1\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"phpass\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(39,	0,	'mod_articles_archive',	'module',	'mod_articles_archive',	'',	'',	0,	1,	1,	0,	1,	'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesArchive\",\"filename\":\"mod_articles_archive\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(40,	0,	'mod_articles_latest',	'module',	'mod_articles_latest',	'',	'',	0,	1,	1,	0,	1,	'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesLatest\",\"filename\":\"mod_articles_latest\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(41,	0,	'mod_articles_popular',	'module',	'mod_articles_popular',	'',	'',	0,	1,	1,	0,	1,	'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesPopular\",\"filename\":\"mod_articles_popular\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(42,	0,	'mod_banners',	'module',	'mod_banners',	'',	'',	0,	1,	1,	0,	1,	'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Banners\",\"filename\":\"mod_banners\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(43,	0,	'mod_breadcrumbs',	'module',	'mod_breadcrumbs',	'',	'',	0,	1,	1,	0,	1,	'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Breadcrumbs\",\"filename\":\"mod_breadcrumbs\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(44,	0,	'mod_custom',	'module',	'mod_custom',	'',	'',	0,	1,	1,	0,	1,	'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Custom\",\"filename\":\"mod_custom\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(45,	0,	'mod_feed',	'module',	'mod_feed',	'',	'',	0,	1,	1,	0,	1,	'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"2005-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Feed\",\"filename\":\"mod_feed\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(46,	0,	'mod_footer',	'module',	'mod_footer',	'',	'',	0,	1,	1,	0,	1,	'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Footer\",\"filename\":\"mod_footer\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(47,	0,	'mod_login',	'module',	'mod_login',	'',	'',	0,	1,	1,	0,	1,	'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Login\",\"filename\":\"mod_login\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(48,	0,	'mod_menu',	'module',	'mod_menu',	'',	'',	0,	1,	1,	0,	1,	'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Menu\",\"filename\":\"mod_menu\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(49,	0,	'mod_articles_news',	'module',	'mod_articles_news',	'',	'',	0,	1,	1,	0,	1,	'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesNews\",\"filename\":\"mod_articles_news\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(50,	0,	'mod_random_image',	'module',	'mod_random_image',	'',	'',	0,	1,	1,	0,	1,	'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\RandomImage\",\"filename\":\"mod_random_image\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(51,	0,	'mod_related_items',	'module',	'mod_related_items',	'',	'',	0,	1,	1,	0,	1,	'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\RelatedItems\",\"filename\":\"mod_related_items\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(52,	0,	'mod_stats',	'module',	'mod_stats',	'',	'',	0,	1,	1,	0,	1,	'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Stats\",\"filename\":\"mod_stats\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(53,	0,	'mod_syndicate',	'module',	'mod_syndicate',	'',	'',	0,	1,	1,	0,	1,	'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"2006-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Syndicate\",\"filename\":\"mod_syndicate\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(54,	0,	'mod_users_latest',	'module',	'mod_users_latest',	'',	'',	0,	1,	1,	0,	1,	'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"2009-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\UsersLatest\",\"filename\":\"mod_users_latest\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(55,	0,	'mod_whosonline',	'module',	'mod_whosonline',	'',	'',	0,	1,	1,	0,	1,	'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Whosonline\",\"filename\":\"mod_whosonline\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(56,	0,	'mod_wrapper',	'module',	'mod_wrapper',	'',	'',	0,	1,	1,	0,	1,	'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"2004-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Wrapper\",\"filename\":\"mod_wrapper\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(57,	0,	'mod_articles_category',	'module',	'mod_articles_category',	'',	'',	0,	1,	1,	0,	1,	'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesCategory\",\"filename\":\"mod_articles_category\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(58,	0,	'mod_articles_categories',	'module',	'mod_articles_categories',	'',	'',	0,	1,	1,	0,	1,	'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesCategories\",\"filename\":\"mod_articles_categories\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(59,	0,	'mod_languages',	'module',	'mod_languages',	'',	'',	0,	1,	1,	0,	1,	'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Languages\",\"filename\":\"mod_languages\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(60,	0,	'mod_finder',	'module',	'mod_finder',	'',	'',	0,	1,	0,	0,	1,	'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Finder\",\"filename\":\"mod_finder\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(61,	0,	'MOD_ARTICLES',	'module',	'mod_articles',	'',	'',	0,	1,	0,	0,	1,	'{\"name\":\"MOD_ARTICLES\",\"type\":\"module\",\"creationDate\":\"2024-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2024 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.2.0\",\"description\":\"MOD_ARTICLES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Articles\",\"filename\":\"mod_articles\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(62,	0,	'mod_custom',	'module',	'mod_custom',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Custom\",\"filename\":\"mod_custom\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(63,	0,	'mod_feed',	'module',	'mod_feed',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"2005-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Feed\",\"filename\":\"mod_feed\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(64,	0,	'mod_latest',	'module',	'mod_latest',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Latest\",\"filename\":\"mod_latest\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(65,	0,	'mod_logged',	'module',	'mod_logged',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"2005-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Logged\",\"filename\":\"mod_logged\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(66,	0,	'mod_login',	'module',	'mod_login',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"2005-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Login\",\"filename\":\"mod_login\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(67,	0,	'mod_loginsupport',	'module',	'mod_loginsupport',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"mod_loginsupport\",\"type\":\"module\",\"creationDate\":\"2019-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_LOGINSUPPORT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Loginsupport\",\"filename\":\"mod_loginsupport\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(68,	0,	'mod_menu',	'module',	'mod_menu',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"2006-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Menu\",\"filename\":\"mod_menu\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(69,	0,	'mod_popular',	'module',	'mod_popular',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Popular\",\"filename\":\"mod_popular\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(70,	0,	'mod_quickicon',	'module',	'mod_quickicon',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Quickicon\",\"filename\":\"mod_quickicon\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(71,	0,	'mod_frontend',	'module',	'mod_frontend',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"mod_frontend\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_FRONTEND_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Frontend\",\"filename\":\"mod_frontend\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(72,	0,	'mod_messages',	'module',	'mod_messages',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"mod_messages\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Messages\",\"filename\":\"mod_messages\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(73,	0,	'mod_post_installation_messages',	'module',	'mod_post_installation_messages',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"mod_post_installation_messages\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_POST_INSTALLATION_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PostInstallationMessages\",\"filename\":\"mod_post_installation_messages\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(74,	0,	'mod_user',	'module',	'mod_user',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"mod_user\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_USER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\User\",\"filename\":\"mod_user\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(75,	0,	'mod_title',	'module',	'mod_title',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Title\",\"filename\":\"mod_title\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(76,	0,	'mod_toolbar',	'module',	'mod_toolbar',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Toolbar\",\"filename\":\"mod_toolbar\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(77,	0,	'mod_multilangstatus',	'module',	'mod_multilangstatus',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"2011-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\MultilangStatus\",\"filename\":\"mod_multilangstatus\"}',	'{\"cache\":\"0\"}',	'',	NULL,	NULL,	0,	0,	NULL),
(78,	0,	'mod_version',	'module',	'mod_version',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"2012-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Version\",\"filename\":\"mod_version\"}',	'{\"cache\":\"0\"}',	'',	NULL,	NULL,	0,	0,	NULL),
(79,	0,	'mod_stats_admin',	'module',	'mod_stats_admin',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\StatsAdmin\",\"filename\":\"mod_stats_admin\"}',	'{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',	'',	NULL,	NULL,	0,	0,	NULL),
(80,	0,	'mod_tags_popular',	'module',	'mod_tags_popular',	'',	'',	0,	1,	1,	0,	1,	'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"2013-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\TagsPopular\",\"filename\":\"mod_tags_popular\"}',	'{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}',	'',	NULL,	NULL,	0,	0,	NULL),
(81,	0,	'mod_tags_similar',	'module',	'mod_tags_similar',	'',	'',	0,	1,	1,	0,	1,	'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"2013-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\TagsSimilar\",\"filename\":\"mod_tags_similar\"}',	'{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}',	'',	NULL,	NULL,	0,	0,	NULL),
(82,	0,	'mod_sampledata',	'module',	'mod_sampledata',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"2017-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Sampledata\",\"filename\":\"mod_sampledata\"}',	'{}',	'',	NULL,	NULL,	0,	0,	NULL),
(83,	0,	'mod_latestactions',	'module',	'mod_latestactions',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"mod_latestactions\",\"type\":\"module\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_LATESTACTIONS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\LatestActions\",\"filename\":\"mod_latestactions\"}',	'{}',	'',	NULL,	NULL,	0,	0,	NULL),
(84,	0,	'mod_privacy_dashboard',	'module',	'mod_privacy_dashboard',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"mod_privacy_dashboard\",\"type\":\"module\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_PRIVACY_DASHBOARD_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PrivacyDashboard\",\"filename\":\"mod_privacy_dashboard\"}',	'{}',	'',	NULL,	NULL,	0,	0,	NULL),
(85,	0,	'mod_submenu',	'module',	'mod_submenu',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"2006-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Submenu\",\"filename\":\"mod_submenu\"}',	'{}',	'',	NULL,	NULL,	0,	0,	NULL),
(86,	0,	'mod_privacy_status',	'module',	'mod_privacy_status',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"mod_privacy_status\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_PRIVACY_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PrivacyStatus\",\"filename\":\"mod_privacy_status\"}',	'{}',	'',	NULL,	NULL,	0,	0,	NULL),
(87,	0,	'mod_guidedtours',	'module',	'mod_guidedtours',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"mod_guidedtours\",\"type\":\"module\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"MOD_GUIDEDTOURS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\GuidedTours\",\"filename\":\"mod_guidedtours\"}',	'{}',	'',	NULL,	NULL,	0,	0,	NULL),
(88,	0,	'plg_actionlog_joomla',	'plugin',	'joomla',	'',	'actionlog',	0,	1,	1,	0,	1,	'{\"name\":\"plg_actionlog_joomla\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_ACTIONLOG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Actionlog\\\\Joomla\",\"filename\":\"joomla\"}',	'{}',	'',	NULL,	NULL,	1,	0,	NULL),
(89,	0,	'plg_api-authentication_basic',	'plugin',	'basic',	'',	'api-authentication',	0,	0,	1,	0,	1,	'{\"name\":\"plg_api-authentication_basic\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_BASIC_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\ApiAuthentication\\\\Basic\",\"filename\":\"basic\"}',	'{}',	'',	NULL,	NULL,	1,	0,	NULL),
(90,	0,	'plg_api-authentication_token',	'plugin',	'token',	'',	'api-authentication',	0,	1,	1,	0,	1,	'{\"name\":\"plg_api-authentication_token\",\"type\":\"plugin\",\"creationDate\":\"2019-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\ApiAuthentication\\\\Token\",\"filename\":\"token\"}',	'{}',	'',	NULL,	NULL,	2,	0,	NULL),
(91,	0,	'plg_authentication_cookie',	'plugin',	'cookie',	'',	'authentication',	0,	1,	1,	0,	1,	'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"2013-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Cookie\",\"filename\":\"cookie\"}',	'',	'',	NULL,	NULL,	1,	0,	NULL),
(92,	0,	'plg_authentication_joomla',	'plugin',	'joomla',	'',	'authentication',	0,	1,	1,	1,	1,	'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Joomla\",\"filename\":\"joomla\"}',	'',	'',	NULL,	NULL,	2,	0,	NULL),
(93,	0,	'plg_authentication_ldap',	'plugin',	'ldap',	'',	'authentication',	0,	0,	1,	0,	1,	'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Ldap\",\"filename\":\"ldap\"}',	'{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}',	'',	NULL,	NULL,	3,	0,	NULL),
(94,	0,	'plg_behaviour_compat',	'plugin',	'compat',	'',	'behaviour',	0,	1,	1,	0,	1,	'{\"name\":\"plg_behaviour_compat\",\"type\":\"plugin\",\"creationDate\":\"2023-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_COMPAT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Compat\",\"filename\":\"compat\"}',	'{\"classes_aliases\":\"1\",\"es5_assets\":\"1\"}',	'',	NULL,	NULL,	1,	0,	NULL),
(95,	0,	'plg_behaviour_taggable',	'plugin',	'taggable',	'',	'behaviour',	0,	1,	1,	0,	1,	'{\"name\":\"plg_behaviour_taggable\",\"type\":\"plugin\",\"creationDate\":\"2015-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_TAGGABLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Taggable\",\"filename\":\"taggable\"}',	'{}',	'',	NULL,	NULL,	2,	0,	NULL),
(96,	0,	'plg_behaviour_versionable',	'plugin',	'versionable',	'',	'behaviour',	0,	1,	1,	0,	1,	'{\"name\":\"plg_behaviour_versionable\",\"type\":\"plugin\",\"creationDate\":\"2015-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_VERSIONABLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Versionable\",\"filename\":\"versionable\"}',	'{}',	'',	NULL,	NULL,	3,	0,	NULL),
(97,	0,	'plg_content_confirmconsent',	'plugin',	'confirmconsent',	'',	'content',	0,	0,	1,	0,	1,	'{\"name\":\"plg_content_confirmconsent\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_CONTENT_CONFIRMCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\ConfirmConsent\",\"filename\":\"confirmconsent\"}',	'{}',	'',	NULL,	NULL,	1,	0,	NULL),
(98,	0,	'plg_content_contact',	'plugin',	'contact',	'',	'content',	0,	1,	1,	0,	1,	'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"2014-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2014 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Contact\",\"filename\":\"contact\"}',	'',	'',	NULL,	NULL,	2,	0,	NULL),
(99,	0,	'plg_content_emailcloak',	'plugin',	'emailcloak',	'',	'content',	0,	1,	1,	0,	1,	'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\EmailCloak\",\"filename\":\"emailcloak\"}',	'{\"mode\":\"1\"}',	'',	NULL,	NULL,	3,	0,	NULL),
(100,	0,	'plg_content_fields',	'plugin',	'fields',	'',	'content',	0,	1,	1,	0,	1,	'{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Fields\",\"filename\":\"fields\"}',	'',	'',	NULL,	NULL,	4,	0,	NULL),
(101,	0,	'plg_content_finder',	'plugin',	'finder',	'',	'content',	0,	1,	1,	0,	1,	'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"2011-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Finder\",\"filename\":\"finder\"}',	'',	'',	NULL,	NULL,	5,	0,	NULL),
(102,	0,	'plg_content_joomla',	'plugin',	'joomla',	'',	'content',	0,	1,	1,	0,	1,	'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"2010-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Joomla\",\"filename\":\"joomla\"}',	'',	'',	NULL,	NULL,	6,	0,	NULL),
(103,	0,	'plg_content_loadmodule',	'plugin',	'loadmodule',	'',	'content',	0,	1,	1,	0,	1,	'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\LoadModule\",\"filename\":\"loadmodule\"}',	'{\"style\":\"xhtml\"}',	'',	NULL,	NULL,	7,	0,	NULL),
(104,	0,	'plg_content_pagebreak',	'plugin',	'pagebreak',	'',	'content',	0,	1,	1,	0,	1,	'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\PageBreak\",\"filename\":\"pagebreak\"}',	'{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}',	'',	NULL,	NULL,	8,	0,	NULL),
(105,	0,	'plg_content_pagenavigation',	'plugin',	'pagenavigation',	'',	'content',	0,	1,	1,	0,	1,	'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"2006-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\PageNavigation\",\"filename\":\"pagenavigation\"}',	'{\"position\":\"1\"}',	'',	NULL,	NULL,	9,	0,	NULL),
(106,	0,	'plg_content_vote',	'plugin',	'vote',	'',	'content',	0,	0,	1,	0,	1,	'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Vote\",\"filename\":\"vote\"}',	'',	'',	NULL,	NULL,	10,	0,	NULL),
(107,	0,	'plg_editors-xtd_article',	'plugin',	'article',	'',	'editors-xtd',	0,	1,	1,	0,	1,	'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"2009-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Article\",\"filename\":\"article\"}',	'',	'',	NULL,	NULL,	1,	0,	NULL),
(108,	0,	'plg_editors-xtd_contact',	'plugin',	'contact',	'',	'editors-xtd',	0,	1,	1,	0,	1,	'{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"2016-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Contact\",\"filename\":\"contact\"}',	'',	'',	NULL,	NULL,	2,	0,	NULL),
(109,	0,	'plg_editors-xtd_fields',	'plugin',	'fields',	'',	'editors-xtd',	0,	1,	1,	0,	1,	'{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Fields\",\"filename\":\"fields\"}',	'',	'',	NULL,	NULL,	3,	0,	NULL),
(110,	0,	'plg_editors-xtd_image',	'plugin',	'image',	'',	'editors-xtd',	0,	1,	1,	0,	1,	'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"2004-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Image\",\"filename\":\"image\"}',	'',	'',	NULL,	NULL,	4,	0,	NULL),
(111,	0,	'plg_editors-xtd_menu',	'plugin',	'menu',	'',	'editors-xtd',	0,	1,	1,	0,	1,	'{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"2016-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Menu\",\"filename\":\"menu\"}',	'',	'',	NULL,	NULL,	5,	0,	NULL),
(112,	0,	'plg_editors-xtd_module',	'plugin',	'module',	'',	'editors-xtd',	0,	1,	1,	0,	1,	'{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"2015-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Module\",\"filename\":\"module\"}',	'',	'',	NULL,	NULL,	6,	0,	NULL),
(113,	0,	'plg_editors-xtd_pagebreak',	'plugin',	'pagebreak',	'',	'editors-xtd',	0,	1,	1,	0,	1,	'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"2004-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\PageBreak\",\"filename\":\"pagebreak\"}',	'',	'',	NULL,	NULL,	7,	0,	NULL),
(114,	0,	'plg_editors-xtd_readmore',	'plugin',	'readmore',	'',	'editors-xtd',	0,	1,	1,	0,	1,	'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"2006-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\ReadMore\",\"filename\":\"readmore\"}',	'',	'',	NULL,	NULL,	8,	0,	NULL),
(115,	0,	'plg_editors_codemirror',	'plugin',	'codemirror',	'',	'editors',	0,	1,	1,	0,	1,	'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2021 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"https:\\/\\/codemirror.net\\/\",\"version\":\"6.0.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\CodeMirror\",\"filename\":\"codemirror\"}',	'{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}',	'',	NULL,	NULL,	1,	0,	NULL),
(116,	0,	'plg_editors_none',	'plugin',	'none',	'',	'editors',	0,	1,	1,	1,	1,	'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"2005-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\None\",\"filename\":\"none\"}',	'',	'',	NULL,	NULL,	2,	0,	NULL),
(117,	0,	'plg_editors_tinymce',	'plugin',	'tinymce',	'',	'editors',	0,	1,	1,	0,	1,	'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-08\",\"author\":\"Tiny Technologies, Inc\",\"copyright\":\"Tiny Technologies, Inc\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"https:\\/\\/www.tiny.cloud\",\"version\":\"6.8.5\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\TinyMCE\",\"filename\":\"tinymce\"}',	'{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"blocks\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styles\",\"|\",\"blocks\",\"fontfamily\",\"fontsize\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"jtemplate\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}',	'',	NULL,	NULL,	3,	0,	NULL),
(118,	0,	'plg_extension_finder',	'plugin',	'finder',	'',	'extension',	0,	1,	1,	0,	1,	'{\"name\":\"plg_extension_finder\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Finder\",\"filename\":\"finder\"}',	'',	'',	NULL,	NULL,	1,	0,	NULL),
(119,	0,	'plg_extension_joomla',	'plugin',	'joomla',	'',	'extension',	0,	1,	1,	0,	1,	'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"2010-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Joomla\",\"filename\":\"joomla\"}',	'',	'',	NULL,	NULL,	2,	0,	NULL),
(120,	0,	'plg_extension_joomlaupdate',	'plugin',	'joomlaupdate',	'',	'extension',	0,	1,	1,	0,	1,	'{\"name\":\"plg_extension_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"2025-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.0.0\",\"description\":\"PLG_EXTENSION_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Joomlaupdate\",\"filename\":\"joomlaupdate\"}',	'',	'',	NULL,	NULL,	3,	0,	NULL),
(121,	0,	'plg_extension_namespacemap',	'plugin',	'namespacemap',	'',	'extension',	0,	1,	1,	1,	1,	'{\"name\":\"plg_extension_namespacemap\",\"type\":\"plugin\",\"creationDate\":\"2017-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_NAMESPACEMAP_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\NamespaceMap\",\"filename\":\"namespacemap\"}',	'{}',	'',	NULL,	NULL,	4,	0,	NULL),
(122,	0,	'plg_fields_calendar',	'plugin',	'calendar',	'',	'fields',	0,	1,	1,	0,	1,	'{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Calendar\",\"filename\":\"calendar\"}',	'',	'',	NULL,	NULL,	1,	0,	NULL),
(123,	0,	'plg_fields_checkboxes',	'plugin',	'checkboxes',	'',	'fields',	0,	1,	1,	0,	1,	'{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Checkboxes\",\"filename\":\"checkboxes\"}',	'',	'',	NULL,	NULL,	2,	0,	NULL),
(124,	0,	'plg_fields_color',	'plugin',	'color',	'',	'fields',	0,	1,	1,	0,	1,	'{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Color\",\"filename\":\"color\"}',	'',	'',	NULL,	NULL,	3,	0,	NULL),
(125,	0,	'plg_fields_editor',	'plugin',	'editor',	'',	'fields',	0,	1,	1,	0,	1,	'{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Editor\",\"filename\":\"editor\"}',	'{\"buttons\":0,\"width\":\"100%\",\"height\":\"250px\",\"filter\":\"\\\\Joomla\\\\CMS\\\\Component\\\\ComponentHelper::filterText\"}',	'',	NULL,	NULL,	4,	0,	NULL),
(126,	0,	'plg_fields_imagelist',	'plugin',	'imagelist',	'',	'fields',	0,	1,	1,	0,	1,	'{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Imagelist\",\"filename\":\"imagelist\"}',	'',	'',	NULL,	NULL,	5,	0,	NULL),
(127,	0,	'plg_fields_integer',	'plugin',	'integer',	'',	'fields',	0,	1,	1,	0,	1,	'{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Integer\",\"filename\":\"integer\"}',	'{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}',	'',	NULL,	NULL,	6,	0,	NULL),
(128,	0,	'plg_fields_list',	'plugin',	'list',	'',	'fields',	0,	1,	1,	0,	1,	'{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\ListField\",\"filename\":\"list\"}',	'',	'',	NULL,	NULL,	7,	0,	NULL),
(129,	0,	'plg_fields_media',	'plugin',	'media',	'',	'fields',	0,	1,	1,	0,	1,	'{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Media\",\"filename\":\"media\"}',	'',	'',	NULL,	NULL,	8,	0,	NULL),
(130,	0,	'plg_fields_radio',	'plugin',	'radio',	'',	'fields',	0,	1,	1,	0,	1,	'{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Radio\",\"filename\":\"radio\"}',	'',	'',	NULL,	NULL,	9,	0,	NULL),
(131,	0,	'plg_fields_sql',	'plugin',	'sql',	'',	'fields',	0,	1,	1,	0,	1,	'{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\SQL\",\"filename\":\"sql\"}',	'',	'',	NULL,	NULL,	10,	0,	NULL),
(132,	0,	'plg_fields_subform',	'plugin',	'subform',	'',	'fields',	0,	1,	1,	0,	1,	'{\"name\":\"plg_fields_subform\",\"type\":\"plugin\",\"creationDate\":\"2017-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FIELDS_SUBFORM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Subform\",\"filename\":\"subform\"}',	'',	'',	NULL,	NULL,	11,	0,	NULL),
(133,	0,	'plg_fields_text',	'plugin',	'text',	'',	'fields',	0,	1,	1,	0,	1,	'{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Text\",\"filename\":\"text\"}',	'',	'',	NULL,	NULL,	12,	0,	NULL),
(134,	0,	'plg_fields_textarea',	'plugin',	'textarea',	'',	'fields',	0,	1,	1,	0,	1,	'{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Textarea\",\"filename\":\"textarea\"}',	'{\"rows\":10,\"cols\":10,\"maxlength\":\"\",\"filter\":\"\\\\Joomla\\\\CMS\\\\Component\\\\ComponentHelper::filterText\"}',	'',	NULL,	NULL,	13,	0,	NULL),
(135,	0,	'plg_fields_url',	'plugin',	'url',	'',	'fields',	0,	1,	1,	0,	1,	'{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Url\",\"filename\":\"url\"}',	'',	'',	NULL,	NULL,	14,	0,	NULL),
(136,	0,	'plg_fields_user',	'plugin',	'user',	'',	'fields',	0,	1,	1,	0,	1,	'{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\User\",\"filename\":\"user\"}',	'',	'',	NULL,	NULL,	15,	0,	NULL),
(137,	0,	'plg_fields_usergrouplist',	'plugin',	'usergrouplist',	'',	'fields',	0,	1,	1,	0,	1,	'{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\UsergroupList\",\"filename\":\"usergrouplist\"}',	'',	'',	NULL,	NULL,	16,	0,	NULL),
(138,	0,	'plg_filesystem_local',	'plugin',	'local',	'',	'filesystem',	0,	1,	1,	0,	1,	'{\"name\":\"plg_filesystem_local\",\"type\":\"plugin\",\"creationDate\":\"2017-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FILESYSTEM_LOCAL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Filesystem\\\\Local\",\"filename\":\"local\"}',	'{}',	'',	NULL,	NULL,	1,	0,	NULL),
(139,	0,	'plg_finder_categories',	'plugin',	'categories',	'',	'finder',	0,	1,	1,	0,	1,	'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Categories\",\"filename\":\"categories\"}',	'',	'',	NULL,	NULL,	1,	0,	NULL),
(140,	0,	'plg_finder_contacts',	'plugin',	'contacts',	'',	'finder',	0,	1,	1,	0,	1,	'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Contacts\",\"filename\":\"contacts\"}',	'',	'',	NULL,	NULL,	2,	0,	NULL),
(141,	0,	'plg_finder_content',	'plugin',	'content',	'',	'finder',	0,	1,	1,	0,	1,	'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Content\",\"filename\":\"content\"}',	'',	'',	NULL,	NULL,	3,	0,	NULL),
(142,	0,	'plg_finder_newsfeeds',	'plugin',	'newsfeeds',	'',	'finder',	0,	1,	1,	0,	1,	'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}',	'',	'',	NULL,	NULL,	4,	0,	NULL),
(143,	0,	'plg_finder_tags',	'plugin',	'tags',	'',	'finder',	0,	1,	1,	0,	1,	'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"2013-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Tags\",\"filename\":\"tags\"}',	'',	'',	NULL,	NULL,	5,	0,	NULL),
(144,	0,	'plg_installer_folderinstaller',	'plugin',	'folderinstaller',	'',	'installer',	0,	1,	1,	0,	1,	'{\"name\":\"plg_installer_folderinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Folder\",\"filename\":\"folderinstaller\"}',	'',	'',	NULL,	NULL,	2,	0,	NULL),
(145,	0,	'plg_installer_override',	'plugin',	'override',	'',	'installer',	0,	1,	1,	0,	1,	'{\"name\":\"plg_installer_override\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_OVERRIDE_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Override\",\"filename\":\"override\"}',	'',	'',	NULL,	NULL,	4,	0,	NULL),
(146,	0,	'plg_installer_packageinstaller',	'plugin',	'packageinstaller',	'',	'installer',	0,	1,	1,	0,	1,	'{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Package\",\"filename\":\"packageinstaller\"}',	'',	'',	NULL,	NULL,	1,	0,	NULL),
(147,	0,	'plg_installer_urlinstaller',	'plugin',	'urlinstaller',	'',	'installer',	0,	1,	1,	0,	1,	'{\"name\":\"plg_installer_urlinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Url\",\"filename\":\"urlinstaller\"}',	'',	'',	NULL,	NULL,	3,	0,	NULL),
(148,	0,	'plg_installer_webinstaller',	'plugin',	'webinstaller',	'',	'installer',	0,	1,	1,	0,	1,	'{\"name\":\"plg_installer_webinstaller\",\"type\":\"plugin\",\"creationDate\":\"2017-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Web\",\"filename\":\"webinstaller\"}',	'{\"tab_position\":\"1\"}',	'',	NULL,	NULL,	5,	0,	NULL),
(149,	0,	'plg_media-action_crop',	'plugin',	'crop',	'',	'media-action',	0,	1,	1,	0,	1,	'{\"name\":\"plg_media-action_crop\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_CROP_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Crop\",\"filename\":\"crop\"}',	'{}',	'',	NULL,	NULL,	1,	0,	NULL),
(150,	0,	'plg_media-action_resize',	'plugin',	'resize',	'',	'media-action',	0,	1,	1,	0,	1,	'{\"name\":\"plg_media-action_resize\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_RESIZE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Resize\",\"filename\":\"resize\"}',	'{}',	'',	NULL,	NULL,	2,	0,	NULL),
(151,	0,	'plg_media-action_rotate',	'plugin',	'rotate',	'',	'media-action',	0,	1,	1,	0,	1,	'{\"name\":\"plg_media-action_rotate\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_ROTATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Rotate\",\"filename\":\"rotate\"}',	'{}',	'',	NULL,	NULL,	3,	0,	NULL),
(152,	0,	'plg_privacy_actionlogs',	'plugin',	'actionlogs',	'',	'privacy',	0,	1,	1,	0,	1,	'{\"name\":\"plg_privacy_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Actionlogs\",\"filename\":\"actionlogs\"}',	'{}',	'',	NULL,	NULL,	1,	0,	NULL),
(153,	0,	'plg_privacy_consents',	'plugin',	'consents',	'',	'privacy',	0,	1,	1,	0,	1,	'{\"name\":\"plg_privacy_consents\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONSENTS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Consents\",\"filename\":\"consents\"}',	'{}',	'',	NULL,	NULL,	2,	0,	NULL),
(154,	0,	'plg_privacy_contact',	'plugin',	'contact',	'',	'privacy',	0,	1,	1,	0,	1,	'{\"name\":\"plg_privacy_contact\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Contact\",\"filename\":\"contact\"}',	'{}',	'',	NULL,	NULL,	3,	0,	NULL),
(155,	0,	'plg_privacy_content',	'plugin',	'content',	'',	'privacy',	0,	1,	1,	0,	1,	'{\"name\":\"plg_privacy_content\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Content\",\"filename\":\"content\"}',	'{}',	'',	NULL,	NULL,	4,	0,	NULL),
(156,	0,	'plg_privacy_message',	'plugin',	'message',	'',	'privacy',	0,	1,	1,	0,	1,	'{\"name\":\"plg_privacy_message\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_MESSAGE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Message\",\"filename\":\"message\"}',	'{}',	'',	NULL,	NULL,	5,	0,	NULL),
(157,	0,	'plg_privacy_user',	'plugin',	'user',	'',	'privacy',	0,	1,	1,	0,	1,	'{\"name\":\"plg_privacy_user\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_USER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\User\",\"filename\":\"user\"}',	'{}',	'',	NULL,	NULL,	6,	0,	NULL),
(158,	0,	'plg_quickicon_joomlaupdate',	'plugin',	'joomlaupdate',	'',	'quickicon',	0,	1,	1,	0,	1,	'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Joomlaupdate\",\"filename\":\"joomlaupdate\"}',	'',	'',	NULL,	NULL,	1,	0,	NULL),
(159,	0,	'plg_quickicon_extensionupdate',	'plugin',	'extensionupdate',	'',	'quickicon',	0,	1,	1,	0,	1,	'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Extensionupdate\",\"filename\":\"extensionupdate\"}',	'',	'',	NULL,	NULL,	2,	0,	NULL),
(160,	0,	'plg_quickicon_overridecheck',	'plugin',	'overridecheck',	'',	'quickicon',	0,	1,	1,	0,	1,	'{\"name\":\"plg_quickicon_overridecheck\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_OVERRIDECHECK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\OverrideCheck\",\"filename\":\"overridecheck\"}',	'',	'',	NULL,	NULL,	3,	0,	NULL),
(161,	0,	'plg_quickicon_downloadkey',	'plugin',	'downloadkey',	'',	'quickicon',	0,	1,	1,	0,	1,	'{\"name\":\"plg_quickicon_downloadkey\",\"type\":\"plugin\",\"creationDate\":\"2019-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_DOWNLOADKEY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Downloadkey\",\"filename\":\"downloadkey\"}',	'',	'',	NULL,	NULL,	4,	0,	NULL),
(162,	0,	'plg_quickicon_privacycheck',	'plugin',	'privacycheck',	'',	'quickicon',	0,	1,	1,	0,	1,	'{\"name\":\"plg_quickicon_privacycheck\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_QUICKICON_PRIVACYCHECK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\PrivacyCheck\",\"filename\":\"privacycheck\"}',	'{}',	'',	NULL,	NULL,	5,	0,	NULL),
(163,	0,	'plg_quickicon_phpversioncheck',	'plugin',	'phpversioncheck',	'',	'quickicon',	0,	1,	1,	0,	1,	'{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"2016-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\PhpVersionCheck\",\"filename\":\"phpversioncheck\"}',	'',	'',	NULL,	NULL,	6,	0,	NULL),
(164,	0,	'plg_quickicon_eos',	'plugin',	'eos',	'',	'quickicon',	0,	1,	1,	0,	1,	'{\"name\":\"plg_quickicon_eos\",\"type\":\"plugin\",\"creationDate\":\"2023-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.4.0\",\"description\":\"PLG_QUICKICON_EOS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Eos\",\"filename\":\"eos\"}',	'',	'',	NULL,	NULL,	7,	0,	NULL),
(165,	0,	'plg_sampledata_blog',	'plugin',	'blog',	'',	'sampledata',	0,	1,	1,	0,	1,	'{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"2017-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\SampleData\\\\Blog\",\"filename\":\"blog\"}',	'',	'',	NULL,	NULL,	1,	0,	NULL),
(166,	0,	'plg_sampledata_multilang',	'plugin',	'multilang',	'',	'sampledata',	0,	1,	1,	0,	1,	'{\"name\":\"plg_sampledata_multilang\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SAMPLEDATA_MULTILANG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\SampleData\\\\MultiLanguage\",\"filename\":\"multilang\"}',	'',	'',	NULL,	NULL,	2,	0,	NULL),
(167,	0,	'plg_schemaorg_article',	'plugin',	'article',	'',	'schemaorg',	0,	1,	1,	0,	0,	'{\"name\":\"plg_schemaorg_article\",\"type\":\"plugin\",\"creationDate\":\"2024-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2024 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.0\",\"description\":\"PLG_SCHEMAORG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Article\",\"filename\":\"article\"}',	'{}',	'',	NULL,	NULL,	1,	0,	NULL),
(168,	0,	'plg_schemaorg_blogposting',	'plugin',	'blogposting',	'',	'schemaorg',	0,	1,	1,	0,	0,	'{\"name\":\"plg_schemaorg_blogposting\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_BLOGPOSTING_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\BlogPosting\",\"filename\":\"blogposting\"}',	'{}',	'',	NULL,	NULL,	2,	0,	NULL),
(169,	0,	'plg_schemaorg_book',	'plugin',	'book',	'',	'schemaorg',	0,	1,	1,	0,	0,	'{\"name\":\"plg_schemaorg_book\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_BOOK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Book\",\"filename\":\"book\"}',	'{}',	'',	NULL,	NULL,	3,	0,	NULL),
(170,	0,	'plg_schemaorg_event',	'plugin',	'event',	'',	'schemaorg',	0,	1,	1,	0,	0,	'{\"name\":\"plg_schemaorg_event\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_EVENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Event\",\"filename\":\"event\"}',	'{}',	'',	NULL,	NULL,	4,	0,	NULL),
(171,	0,	'plg_schemaorg_jobposting',	'plugin',	'jobposting',	'',	'schemaorg',	0,	1,	1,	0,	0,	'{\"name\":\"plg_schemaorg_jobposting\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_JOBPOSTING_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\JobPosting\",\"filename\":\"jobposting\"}',	'{}',	'',	NULL,	NULL,	5,	0,	NULL),
(172,	0,	'plg_schemaorg_organization',	'plugin',	'organization',	'',	'schemaorg',	0,	1,	1,	0,	0,	'{\"name\":\"plg_schemaorg_organization\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_ORGANIZATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Organization\",\"filename\":\"organization\"}',	'{}',	'',	NULL,	NULL,	6,	0,	NULL),
(173,	0,	'plg_schemaorg_person',	'plugin',	'person',	'',	'schemaorg',	0,	1,	1,	0,	0,	'{\"name\":\"plg_schemaorg_person\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_PERSON_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Person\",\"filename\":\"person\"}',	'{}',	'',	NULL,	NULL,	7,	0,	NULL),
(174,	0,	'plg_schemaorg_recipe',	'plugin',	'recipe',	'',	'schemaorg',	0,	1,	1,	0,	0,	'{\"name\":\"plg_schemaorg_recipe\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_RECIPE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Recipe\",\"filename\":\"recipe\"}',	'{}',	'',	NULL,	NULL,	8,	0,	NULL),
(175,	0,	'plg_schemaorg_custom',	'plugin',	'custom',	'',	'schemaorg',	0,	1,	1,	0,	0,	'{\"name\":\"plg_schemaorg_custom\",\"type\":\"plugin\",\"creationDate\":\"2024-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2024 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.0\",\"description\":\"PLG_SCHEMAORG_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Custom\",\"filename\":\"custom\"}',	'{}',	'',	NULL,	NULL,	9,	0,	NULL),
(176,	0,	'plg_system_accessibility',	'plugin',	'accessibility',	'',	'system',	0,	0,	1,	0,	1,	'{\"name\":\"plg_system_accessibility\",\"type\":\"plugin\",\"creationDate\":\"2020-02-15\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_ACCESSIBILITY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Accessibility\",\"filename\":\"accessibility\"}',	'{}',	'',	NULL,	NULL,	1,	0,	NULL),
(177,	0,	'plg_system_actionlogs',	'plugin',	'actionlogs',	'',	'system',	0,	1,	1,	0,	1,	'{\"name\":\"plg_system_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\ActionLogs\",\"filename\":\"actionlogs\"}',	'{}',	'',	NULL,	NULL,	2,	0,	NULL),
(178,	0,	'plg_system_cache',	'plugin',	'cache',	'',	'system',	0,	0,	1,	0,	1,	'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"2007-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Cache\",\"filename\":\"cache\"}',	'{\"browsercache\":\"0\",\"cachetime\":\"15\"}',	'',	NULL,	NULL,	3,	0,	NULL),
(179,	0,	'plg_system_debug',	'plugin',	'debug',	'',	'system',	0,	1,	1,	0,	1,	'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"2006-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Debug\",\"filename\":\"debug\"}',	'{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}',	'',	NULL,	NULL,	4,	0,	NULL),
(180,	0,	'plg_system_fields',	'plugin',	'fields',	'',	'system',	0,	1,	1,	0,	1,	'{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Fields\",\"filename\":\"fields\"}',	'',	'',	NULL,	NULL,	5,	0,	NULL),
(181,	0,	'plg_system_highlight',	'plugin',	'highlight',	'',	'system',	0,	1,	1,	0,	1,	'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Highlight\",\"filename\":\"highlight\"}',	'',	'',	NULL,	NULL,	6,	0,	NULL),
(182,	0,	'plg_system_httpheaders',	'plugin',	'httpheaders',	'',	'system',	0,	1,	1,	0,	1,	'{\"name\":\"plg_system_httpheaders\",\"type\":\"plugin\",\"creationDate\":\"2017-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_HTTPHEADERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Httpheaders\",\"filename\":\"httpheaders\"}',	'{}',	'',	NULL,	NULL,	7,	0,	NULL),
(183,	0,	'plg_system_jooa11y',	'plugin',	'jooa11y',	'',	'system',	0,	1,	1,	0,	1,	'{\"name\":\"plg_system_jooa11y\",\"type\":\"plugin\",\"creationDate\":\"2022-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_JOOA11Y_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Jooa11y\",\"filename\":\"jooa11y\"}',	'',	'',	NULL,	NULL,	8,	0,	NULL),
(184,	0,	'plg_system_languagecode',	'plugin',	'languagecode',	'',	'system',	0,	0,	1,	0,	1,	'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"2011-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\LanguageCode\",\"filename\":\"languagecode\"}',	'',	'',	NULL,	NULL,	9,	0,	NULL),
(185,	0,	'plg_system_languagefilter',	'plugin',	'languagefilter',	'',	'system',	0,	0,	1,	0,	1,	'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"2010-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\LanguageFilter\",\"filename\":\"languagefilter\"}',	'',	'',	NULL,	NULL,	10,	0,	NULL),
(186,	0,	'plg_system_log',	'plugin',	'log',	'',	'system',	0,	1,	1,	0,	1,	'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"2007-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Log\",\"filename\":\"log\"}',	'',	'',	NULL,	NULL,	11,	0,	NULL),
(187,	0,	'plg_system_logout',	'plugin',	'logout',	'',	'system',	0,	1,	1,	0,	1,	'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"2009-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Logout\",\"filename\":\"logout\"}',	'',	'',	NULL,	NULL,	12,	0,	NULL),
(188,	0,	'plg_system_privacyconsent',	'plugin',	'privacyconsent',	'',	'system',	0,	0,	1,	0,	1,	'{\"name\":\"plg_system_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"2018-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\PrivacyConsent\",\"filename\":\"privacyconsent\"}',	'{}',	'',	NULL,	NULL,	14,	0,	NULL),
(189,	0,	'plg_system_redirect',	'plugin',	'redirect',	'',	'system',	0,	0,	1,	0,	1,	'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"2009-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Redirect\",\"filename\":\"redirect\"}',	'',	'',	NULL,	NULL,	15,	0,	NULL),
(190,	0,	'plg_system_remember',	'plugin',	'remember',	'',	'system',	0,	1,	1,	0,	1,	'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"2007-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Remember\",\"filename\":\"remember\"}',	'',	'',	NULL,	NULL,	16,	0,	NULL),
(191,	0,	'plg_system_schedulerunner',	'plugin',	'schedulerunner',	'',	'system',	0,	1,	1,	0,	1,	'{\"name\":\"plg_system_schedulerunner\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_SCHEDULERUNNER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\ScheduleRunner\",\"filename\":\"schedulerunner\"}',	'{}',	'',	NULL,	NULL,	17,	0,	NULL),
(192,	0,	'plg_system_schemaorg',	'plugin',	'schemaorg',	'',	'system',	0,	1,	1,	0,	0,	'{\"name\":\"plg_system_schemaorg\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SYSTEM_SCHEMAORG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Schemaorg\",\"filename\":\"schemaorg\"}',	'{}',	'',	NULL,	NULL,	18,	0,	NULL),
(193,	0,	'plg_system_sef',	'plugin',	'sef',	'',	'system',	0,	1,	1,	0,	1,	'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"2007-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Sef\",\"filename\":\"sef\"}',	'{\"domain\":\"\",\"indexphp\":\"1\",\"trailingslash\":\"0\",\"enforcesuffix\":\"1\",\"strictrouting\":\"1\"}',	'',	NULL,	NULL,	19,	0,	NULL),
(194,	0,	'plg_system_shortcut',	'plugin',	'shortcut',	'',	'system',	0,	1,	1,	0,	1,	'{\"name\":\"plg_system_shortcut\",\"type\":\"plugin\",\"creationDate\":\"2022-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_SHORTCUT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Shortcut\",\"filename\":\"shortcut\"}',	'{}',	'',	NULL,	NULL,	21,	0,	NULL),
(195,	0,	'plg_system_skipto',	'plugin',	'skipto',	'',	'system',	0,	1,	1,	0,	1,	'{\"name\":\"plg_system_skipto\",\"type\":\"plugin\",\"creationDate\":\"2020-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_SKIPTO_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Skipto\",\"filename\":\"skipto\"}',	'{}',	'',	NULL,	NULL,	22,	0,	NULL),
(196,	0,	'plg_system_stats',	'plugin',	'stats',	'',	'system',	0,	0,	1,	0,	1,	'{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"2013-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Stats\",\"filename\":\"stats\"}',	'{\"mode\":3,\"lastrun\":\"\",\"unique_id\":\"5b3e5e06c9d7618a3559ca896334c83d6a7cba8e\",\"interval\":12}',	'',	NULL,	NULL,	23,	0,	NULL),
(197,	0,	'plg_system_task_notification',	'plugin',	'tasknotification',	'',	'system',	0,	1,	1,	0,	1,	'{\"name\":\"plg_system_task_notification\",\"type\":\"plugin\",\"creationDate\":\"2021-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_TASK_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\TaskNotification\",\"filename\":\"tasknotification\"}',	'',	'',	NULL,	NULL,	24,	0,	NULL),
(198,	0,	'plg_system_webauthn',	'plugin',	'webauthn',	'',	'system',	0,	1,	1,	0,	1,	'{\"name\":\"plg_system_webauthn\",\"type\":\"plugin\",\"creationDate\":\"2019-07-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_WEBAUTHN_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Webauthn\",\"filename\":\"webauthn\"}',	'{}',	'',	NULL,	NULL,	26,	0,	NULL),
(199,	0,	'plg_task_check_files',	'plugin',	'checkfiles',	'',	'task',	0,	1,	1,	0,	1,	'{\"name\":\"plg_task_check_files\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_CHECK_FILES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Checkfiles\",\"filename\":\"checkfiles\"}',	'{}',	'',	NULL,	NULL,	1,	0,	NULL),
(200,	0,	'plg_task_deleteactionlogs',	'plugin',	'deleteactionlogs',	'',	'task',	0,	1,	1,	0,	1,	'{\"name\":\"plg_task_deleteactionlogs\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_DELETEACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\DeleteActionLogs\",\"filename\":\"deleteactionlogs\"}',	'{}',	'',	NULL,	NULL,	2,	0,	NULL),
(201,	0,	'plg_task_globalcheckin',	'plugin',	'globalcheckin',	'',	'task',	0,	1,	1,	0,	0,	'{\"name\":\"plg_task_globalcheckin\",\"type\":\"plugin\",\"creationDate\":\"2023-06-22\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_GLOBALCHECKIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Globalcheckin\",\"filename\":\"globalcheckin\"}',	'{}',	'',	NULL,	NULL,	3,	0,	NULL),
(202,	0,	'plg_task_requests',	'plugin',	'requests',	'',	'task',	0,	1,	1,	0,	1,	'{\"name\":\"plg_task_requests\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_REQUESTS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Requests\",\"filename\":\"requests\"}',	'{}',	'',	NULL,	NULL,	4,	0,	NULL),
(203,	0,	'plg_task_privacyconsent',	'plugin',	'privacyconsent',	'',	'task',	0,	1,	1,	0,	1,	'{\"name\":\"plg_task_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\PrivacyConsent\",\"filename\":\"privacyconsent\"}',	'{}',	'',	NULL,	NULL,	5,	0,	NULL),
(204,	0,	'plg_task_rotatelogs',	'plugin',	'rotatelogs',	'',	'task',	0,	1,	1,	0,	1,	'{\"name\":\"plg_task_rotatelogs\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_ROTATELOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\RotateLogs\",\"filename\":\"rotatelogs\"}',	'{}',	'',	NULL,	NULL,	6,	0,	NULL),
(205,	0,	'plg_task_sessiongc',	'plugin',	'sessiongc',	'',	'task',	0,	1,	1,	0,	1,	'{\"name\":\"plg_task_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"2023-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\SessionGC\",\"filename\":\"sessiongc\"}',	'{}',	'',	NULL,	NULL,	7,	0,	NULL),
(206,	0,	'plg_task_site_status',	'plugin',	'sitestatus',	'',	'task',	0,	1,	1,	0,	1,	'{\"name\":\"plg_task_site_status\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_SITE_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\SiteStatus\",\"filename\":\"sitestatus\"}',	'{}',	'',	NULL,	NULL,	8,	0,	NULL),
(207,	0,	'plg_task_updatenotification',	'plugin',	'updatenotification',	'',	'task',	0,	1,	1,	0,	1,	'{\"name\":\"plg_task_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\UpdateNotification\",\"filename\":\"updatenotification\"}',	'{}',	'',	NULL,	NULL,	9,	0,	NULL),
(208,	0,	'plg_multifactorauth_totp',	'plugin',	'totp',	'',	'multifactorauth',	0,	1,	1,	0,	1,	'{\"name\":\"plg_multifactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"2013-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Totp\",\"filename\":\"totp\"}',	'',	'',	NULL,	NULL,	1,	0,	NULL),
(209,	0,	'plg_multifactorauth_yubikey',	'plugin',	'yubikey',	'',	'multifactorauth',	0,	1,	1,	0,	1,	'{\"name\":\"plg_multifactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"2013-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Yubikey\",\"filename\":\"yubikey\"}',	'',	'',	NULL,	NULL,	2,	0,	NULL),
(210,	0,	'plg_multifactorauth_webauthn',	'plugin',	'webauthn',	'',	'multifactorauth',	0,	1,	1,	0,	1,	'{\"name\":\"plg_multifactorauth_webauthn\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_WEBAUTHN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Webauthn\",\"filename\":\"webauthn\"}',	'',	'',	NULL,	NULL,	3,	0,	NULL),
(211,	0,	'plg_multifactorauth_email',	'plugin',	'email',	'',	'multifactorauth',	0,	1,	1,	0,	1,	'{\"name\":\"plg_multifactorauth_email\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_EMAIL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Email\",\"filename\":\"email\"}',	'',	'',	NULL,	NULL,	4,	0,	NULL),
(212,	0,	'plg_multifactorauth_fixed',	'plugin',	'fixed',	'',	'multifactorauth',	0,	0,	1,	0,	1,	'{\"name\":\"plg_multifactorauth_fixed\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_FIXED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Fixed\",\"filename\":\"fixed\"}',	'',	'',	NULL,	NULL,	5,	0,	NULL),
(213,	0,	'plg_user_contactcreator',	'plugin',	'contactcreator',	'',	'user',	0,	0,	1,	0,	1,	'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"2009-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\ContactCreator\",\"filename\":\"contactcreator\"}',	'{\"autowebpage\":\"\",\"category\":\"4\",\"autopublish\":\"0\"}',	'',	NULL,	NULL,	1,	0,	NULL),
(214,	0,	'plg_user_joomla',	'plugin',	'joomla',	'',	'user',	0,	1,	1,	0,	1,	'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"2006-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Joomla\",\"filename\":\"joomla\"}',	'{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}',	'',	NULL,	NULL,	2,	0,	NULL),
(215,	0,	'plg_user_profile',	'plugin',	'profile',	'',	'user',	0,	0,	1,	0,	1,	'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"2008-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Profile\",\"filename\":\"profile\"}',	'{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}',	'',	NULL,	NULL,	3,	0,	NULL),
(216,	0,	'plg_user_terms',	'plugin',	'terms',	'',	'user',	0,	0,	1,	0,	1,	'{\"name\":\"plg_user_terms\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TERMS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Terms\",\"filename\":\"terms\"}',	'{}',	'',	NULL,	NULL,	4,	0,	NULL),
(217,	0,	'plg_user_token',	'plugin',	'token',	'',	'user',	0,	1,	1,	0,	1,	'{\"name\":\"plg_user_token\",\"type\":\"plugin\",\"creationDate\":\"2019-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Token\",\"filename\":\"token\"}',	'{}',	'',	NULL,	NULL,	5,	0,	NULL),
(218,	0,	'plg_webservices_banners',	'plugin',	'banners',	'',	'webservices',	0,	1,	1,	0,	1,	'{\"name\":\"plg_webservices_banners\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Banners\",\"filename\":\"banners\"}',	'{}',	'',	NULL,	NULL,	1,	0,	NULL),
(219,	0,	'plg_webservices_config',	'plugin',	'config',	'',	'webservices',	0,	1,	1,	0,	1,	'{\"name\":\"plg_webservices_config\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Config\",\"filename\":\"config\"}',	'{}',	'',	NULL,	NULL,	2,	0,	NULL),
(220,	0,	'plg_webservices_contact',	'plugin',	'contact',	'',	'webservices',	0,	1,	1,	0,	1,	'{\"name\":\"plg_webservices_contact\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Contact\",\"filename\":\"contact\"}',	'{}',	'',	NULL,	NULL,	3,	0,	NULL),
(221,	0,	'plg_webservices_content',	'plugin',	'content',	'',	'webservices',	0,	1,	1,	0,	1,	'{\"name\":\"plg_webservices_content\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Content\",\"filename\":\"content\"}',	'{}',	'',	NULL,	NULL,	4,	0,	NULL),
(222,	0,	'plg_webservices_installer',	'plugin',	'installer',	'',	'webservices',	0,	1,	1,	0,	1,	'{\"name\":\"plg_webservices_installer\",\"type\":\"plugin\",\"creationDate\":\"2020-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_INSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Installer\",\"filename\":\"installer\"}',	'{}',	'',	NULL,	NULL,	5,	0,	NULL),
(223,	0,	'plg_webservices_languages',	'plugin',	'languages',	'',	'webservices',	0,	1,	1,	0,	1,	'{\"name\":\"plg_webservices_languages\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Languages\",\"filename\":\"languages\"}',	'{}',	'',	NULL,	NULL,	6,	0,	NULL),
(224,	0,	'plg_webservices_media',	'plugin',	'media',	'',	'webservices',	0,	1,	1,	0,	1,	'{\"name\":\"plg_webservices_media\",\"type\":\"plugin\",\"creationDate\":\"2021-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"PLG_WEBSERVICES_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Media\",\"filename\":\"media\"}',	'{}',	'',	NULL,	NULL,	7,	0,	NULL),
(225,	0,	'plg_webservices_menus',	'plugin',	'menus',	'',	'webservices',	0,	1,	1,	0,	1,	'{\"name\":\"plg_webservices_menus\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Menus\",\"filename\":\"menus\"}',	'{}',	'',	NULL,	NULL,	7,	0,	NULL),
(226,	0,	'plg_webservices_messages',	'plugin',	'messages',	'',	'webservices',	0,	1,	1,	0,	1,	'{\"name\":\"plg_webservices_messages\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Messages\",\"filename\":\"messages\"}',	'{}',	'',	NULL,	NULL,	8,	0,	NULL),
(227,	0,	'plg_webservices_modules',	'plugin',	'modules',	'',	'webservices',	0,	1,	1,	0,	1,	'{\"name\":\"plg_webservices_modules\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Modules\",\"filename\":\"modules\"}',	'{}',	'',	NULL,	NULL,	9,	0,	NULL),
(228,	0,	'plg_webservices_newsfeeds',	'plugin',	'newsfeeds',	'',	'webservices',	0,	1,	1,	0,	1,	'{\"name\":\"plg_webservices_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}',	'{}',	'',	NULL,	NULL,	10,	0,	NULL),
(229,	0,	'plg_webservices_plugins',	'plugin',	'plugins',	'',	'webservices',	0,	1,	1,	0,	1,	'{\"name\":\"plg_webservices_plugins\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PLUGINS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Plugins\",\"filename\":\"plugins\"}',	'{}',	'',	NULL,	NULL,	11,	0,	NULL),
(230,	0,	'plg_webservices_privacy',	'plugin',	'privacy',	'',	'webservices',	0,	1,	1,	0,	1,	'{\"name\":\"plg_webservices_privacy\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Privacy\",\"filename\":\"privacy\"}',	'{}',	'',	NULL,	NULL,	12,	0,	NULL),
(231,	0,	'plg_webservices_redirect',	'plugin',	'redirect',	'',	'webservices',	0,	1,	1,	0,	1,	'{\"name\":\"plg_webservices_redirect\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Redirect\",\"filename\":\"redirect\"}',	'{}',	'',	NULL,	NULL,	13,	0,	NULL),
(232,	0,	'plg_webservices_tags',	'plugin',	'tags',	'',	'webservices',	0,	1,	1,	0,	1,	'{\"name\":\"plg_webservices_tags\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Tags\",\"filename\":\"tags\"}',	'{}',	'',	NULL,	NULL,	14,	0,	NULL),
(233,	0,	'plg_webservices_templates',	'plugin',	'templates',	'',	'webservices',	0,	1,	1,	0,	1,	'{\"name\":\"plg_webservices_templates\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Templates\",\"filename\":\"templates\"}',	'{}',	'',	NULL,	NULL,	15,	0,	NULL),
(234,	0,	'plg_webservices_users',	'plugin',	'users',	'',	'webservices',	0,	1,	1,	0,	1,	'{\"name\":\"plg_webservices_users\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_USERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Users\",\"filename\":\"users\"}',	'{}',	'',	NULL,	NULL,	16,	0,	NULL),
(235,	0,	'plg_workflow_featuring',	'plugin',	'featuring',	'',	'workflow',	0,	1,	1,	0,	1,	'{\"name\":\"plg_workflow_featuring\",\"type\":\"plugin\",\"creationDate\":\"2020-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_FEATURING_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Featuring\",\"filename\":\"featuring\"}',	'{}',	'',	NULL,	NULL,	1,	0,	NULL),
(236,	0,	'plg_workflow_notification',	'plugin',	'notification',	'',	'workflow',	0,	1,	1,	0,	1,	'{\"name\":\"plg_workflow_notification\",\"type\":\"plugin\",\"creationDate\":\"2020-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Notification\",\"filename\":\"notification\"}',	'{}',	'',	NULL,	NULL,	2,	0,	NULL),
(237,	0,	'plg_workflow_publishing',	'plugin',	'publishing',	'',	'workflow',	0,	1,	1,	0,	1,	'{\"name\":\"plg_workflow_publishing\",\"type\":\"plugin\",\"creationDate\":\"2020-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_PUBLISHING_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Publishing\",\"filename\":\"publishing\"}',	'{}',	'',	NULL,	NULL,	3,	0,	NULL),
(238,	0,	'plg_system_guidedtours',	'plugin',	'guidedtours',	'',	'system',	0,	1,	1,	0,	1,	'{\"name\":\"plg_system_guidedtours\",\"type\":\"plugin\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"PLG_SYSTEM_GUIDEDTOURS_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\GuidedTours\",\"filename\":\"guidedtours\"}',	'{}',	'',	NULL,	NULL,	15,	0,	NULL),
(239,	0,	'atum',	'template',	'atum',	'',	'',	1,	1,	1,	0,	1,	'{\"name\":\"atum\",\"type\":\"template\",\"creationDate\":\"2016-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ATUM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(240,	0,	'cassiopeia',	'template',	'cassiopeia',	'',	'',	0,	1,	1,	0,	1,	'{\"name\":\"cassiopeia\",\"type\":\"template\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_CASSIOPEIA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}',	'{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":0,\"backTop\":0}',	'',	NULL,	NULL,	0,	0,	NULL),
(241,	0,	'files_joomla',	'file',	'joomla',	'',	'',	0,	1,	1,	1,	1,	'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"2025-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.3.2\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(242,	0,	'English (en-GB) Language Pack',	'package',	'pkg_en-GB',	'',	'',	0,	1,	1,	1,	1,	'{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"2025-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.3.2.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"pkg_en-GB\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(243,	242,	'English (en-GB)',	'language',	'en-GB',	'',	'',	0,	1,	1,	1,	1,	'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2025-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.3.2\",\"description\":\"en-GB site language\",\"group\":\"\",\"changelogurl\":\"\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(244,	242,	'English (en-GB)',	'language',	'en-GB',	'',	'',	1,	1,	1,	1,	1,	'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2025-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.3.2\",\"description\":\"en-GB administrator language\",\"group\":\"\",\"changelogurl\":\"\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(245,	242,	'English (en-GB)',	'language',	'en-GB',	'',	'',	3,	1,	1,	1,	1,	'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2025-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.3.2\",\"description\":\"en-GB api language\",\"group\":\"\",\"changelogurl\":\"\"}',	'',	'',	NULL,	NULL,	0,	0,	NULL),
(248,	0,	'bermuda',	'template',	'bermuda',	'',	'',	0,	1,	1,	0,	0,	'{\"name\":\"bermuda\",\"type\":\"template\",\"creationDate\":\"Unknown\",\"author\":\"BC\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"1.0.0\",\"description\":\"Bermuda College Template\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"templateDetails\"}',	'{}',	'',	NULL,	NULL,	0,	0,	NULL);

DROP TABLE IF EXISTS `n8am2_fields`;
CREATE TABLE `n8am2_fields` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `required` tinyint NOT NULL DEFAULT '0',
  `only_use_in_subform` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL,
  `created_user_id` int unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `access` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_user_id` (`created_user_id`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `n8am2_fields_categories`;
CREATE TABLE `n8am2_fields_categories` (
  `field_id` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `n8am2_fields_groups`;
CREATE TABLE `n8am2_fields_groups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL,
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `access` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `n8am2_fields_values`;
CREATE TABLE `n8am2_fields_values` (
  `field_id` int unsigned NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` mediumtext COLLATE utf8mb4_unicode_ci,
  KEY `idx_field_id` (`field_id`),
  KEY `idx_item_id` (`item_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `n8am2_finder_filters`;
CREATE TABLE `n8am2_finder_filters` (
  `filter_id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `map_count` int unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `params` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `n8am2_finder_links`;
CREATE TABLE `n8am2_finder_links` (
  `link_id` int unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `indexdate` datetime NOT NULL,
  `md5sum` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint NOT NULL DEFAULT '1',
  `state` int NOT NULL DEFAULT '1',
  `access` int NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `publish_start_date` datetime DEFAULT NULL,
  `publish_end_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int NOT NULL,
  `object` mediumblob,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_language` (`language`),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(1,	'index.php?option=com_content&view=article&id=1',	'index.php?option=com_content&view=article&id=1:admissions-finance&catid=2',	'Admissions & Finance',	'',	'2025-07-25 14:19:03',	'd9316498c6f72f3ff413eb7a7a4b06ab',	1,	1,	1,	'*',	'2025-07-25 14:19:03',	NULL,	'2025-07-25 14:19:03',	NULL,	0,	0,	3,	'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:0:\"\";i:3;a:25:{s:2:\"id\";i:1;s:5:\"alias\";s:18:\"admissions finance\";s:7:\"summary\";s:0:\"\";s:4:\"body\";s:0:\"\";s:6:\"images\";s:173:\"{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}\";s:5:\"catid\";i:2;s:10:\"created_by\";i:2;s:16:\"created_by_alias\";s:0:\"\";s:8:\"modified\";s:19:\"2025-07-25 14:19:03\";s:11:\"modified_by\";i:2;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":86:{s:14:\"article_layout\";s:9:\"_:default\";s:10:\"show_title\";s:1:\"1\";s:11:\"link_titles\";s:1:\"1\";s:10:\"show_intro\";s:1:\"1\";s:19:\"info_block_position\";s:1:\"0\";s:21:\"info_block_show_title\";s:1:\"1\";s:13:\"show_category\";s:1:\"1\";s:13:\"link_category\";s:1:\"1\";s:20:\"show_parent_category\";s:1:\"0\";s:20:\"link_parent_category\";s:1:\"0\";s:17:\"show_associations\";s:1:\"0\";s:5:\"flags\";s:1:\"1\";s:11:\"show_author\";s:1:\"1\";s:11:\"link_author\";s:1:\"0\";s:16:\"show_create_date\";s:1:\"0\";s:16:\"show_modify_date\";s:1:\"0\";s:17:\"show_publish_date\";s:1:\"1\";s:20:\"show_item_navigation\";s:1:\"1\";s:13:\"show_readmore\";s:1:\"1\";s:19:\"show_readmore_title\";s:1:\"1\";s:14:\"readmore_limit\";i:100;s:9:\"show_tags\";s:1:\"1\";s:11:\"record_hits\";s:1:\"1\";s:9:\"show_hits\";s:1:\"1\";s:11:\"show_noauth\";s:1:\"0\";s:13:\"urls_position\";i:0;s:7:\"captcha\";s:0:\"\";s:23:\"show_publishing_options\";s:1:\"1\";s:20:\"show_article_options\";s:1:\"1\";s:27:\"show_configure_edit_options\";s:1:\"1\";s:16:\"show_permissions\";s:1:\"1\";s:22:\"show_associations_edit\";s:1:\"1\";s:12:\"save_history\";s:1:\"1\";s:13:\"history_limit\";i:10;s:25:\"show_urls_images_frontend\";s:1:\"0\";s:24:\"show_urls_images_backend\";s:1:\"1\";s:7:\"targeta\";i:0;s:7:\"targetb\";i:0;s:7:\"targetc\";i:0;s:11:\"float_intro\";s:4:\"left\";s:14:\"float_fulltext\";s:4:\"left\";s:15:\"category_layout\";s:6:\"_:blog\";s:19:\"show_category_title\";s:1:\"0\";s:16:\"show_description\";s:1:\"0\";s:22:\"show_description_image\";s:1:\"0\";s:8:\"maxLevel\";s:1:\"1\";s:21:\"show_empty_categories\";s:1:\"0\";s:16:\"show_no_articles\";s:1:\"1\";s:32:\"show_category_heading_title_text\";s:1:\"1\";s:16:\"show_subcat_desc\";s:1:\"1\";s:21:\"show_cat_num_articles\";s:1:\"0\";s:13:\"show_cat_tags\";s:1:\"1\";s:21:\"show_base_description\";s:1:\"1\";s:11:\"maxLevelcat\";s:2:\"-1\";s:25:\"show_empty_categories_cat\";s:1:\"0\";s:20:\"show_subcat_desc_cat\";s:1:\"1\";s:25:\"show_cat_num_articles_cat\";s:1:\"1\";s:20:\"num_leading_articles\";i:1;s:18:\"blog_class_leading\";s:0:\"\";s:18:\"num_intro_articles\";i:4;s:10:\"blog_class\";s:0:\"\";s:11:\"num_columns\";i:1;s:18:\"multi_column_order\";s:1:\"0\";s:9:\"num_links\";i:4;s:24:\"show_subcategory_content\";s:1:\"0\";s:16:\"link_intro_image\";s:1:\"0\";s:21:\"show_pagination_limit\";s:1:\"1\";s:12:\"filter_field\";s:4:\"hide\";s:13:\"show_headings\";s:1:\"1\";s:14:\"list_show_date\";s:1:\"0\";s:11:\"date_format\";s:0:\"\";s:14:\"list_show_hits\";s:1:\"1\";s:16:\"list_show_author\";s:1:\"1\";s:11:\"display_num\";s:2:\"10\";s:11:\"orderby_pri\";s:5:\"order\";s:11:\"orderby_sec\";s:5:\"rdate\";s:10:\"order_date\";s:9:\"published\";s:15:\"show_pagination\";s:1:\"2\";s:23:\"show_pagination_results\";s:1:\"1\";s:13:\"show_featured\";s:4:\"show\";s:14:\"show_feed_link\";s:1:\"1\";s:12:\"feed_summary\";s:1:\"0\";s:18:\"feed_show_readmore\";s:1:\"0\";s:7:\"sef_ids\";i:1;s:20:\"custom_fields_enable\";s:1:\"1\";s:16:\"workflow_enabled\";s:1:\"0\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":3:{s:6:\"robots\";s:0:\"\";s:6:\"author\";s:0:\"\";s:6:\"rights\";s:0:\"\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"version\";i:1;s:8:\"ordering\";i:0;s:8:\"category\";s:13:\"Uncategorised\";s:9:\"cat_state\";i:1;s:10:\"cat_access\";i:1;s:4:\"slug\";s:20:\"1:admissions-finance\";s:7:\"catslug\";s:15:\"2:uncategorised\";s:6:\"author\";s:7:\"Web Dev\";s:6:\"layout\";s:7:\"article\";s:7:\"context\";s:19:\"com_content.article\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:7:\"metakey\";i:4;s:8:\"metadesc\";i:5;s:10:\"metaauthor\";i:6;s:6:\"author\";i:7;s:16:\"created_by_alias\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;s:19:\"2025-07-25 14:19:03\";i:10;N;i:11;s:73:\"index.php?option=com_content&view=article&id=1:admissions-finance&catid=2\";i:12;N;i:13;s:19:\"2025-07-25 14:19:03\";i:14;i:1;i:15;a:4:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:7:\"Article\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:0;s:2:\"id\";i:3;}}s:6:\"Author\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:7:\"Web Dev\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:0;s:2:\"id\";i:5;}}s:8:\"Category\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:13:\"Uncategorised\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:1;s:2:\"id\";i:7;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:0;s:2:\"id\";i:9;}}}i:16;s:20:\"Admissions & Finance\";i:17;i:3;i:18;s:46:\"index.php?option=com_content&view=article&id=1\";}'),
(2,	'index.php?option=com_content&view=article&id=2',	'index.php?option=com_content&view=article&id=2:bc-home&catid=2',	'BC Home',	'',	'2025-07-25 14:34:27',	'7bccbafd512bedfdeeccf1e5d301f617',	1,	1,	1,	'*',	'2025-07-25 14:34:27',	NULL,	'2025-07-25 14:34:27',	NULL,	0,	0,	3,	'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:0:\"\";i:3;a:25:{s:2:\"id\";i:2;s:5:\"alias\";s:7:\"bc home\";s:7:\"summary\";s:0:\"\";s:4:\"body\";s:0:\"\";s:6:\"images\";s:173:\"{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}\";s:5:\"catid\";i:2;s:10:\"created_by\";i:2;s:16:\"created_by_alias\";s:0:\"\";s:8:\"modified\";s:19:\"2025-07-25 14:34:27\";s:11:\"modified_by\";i:2;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":86:{s:14:\"article_layout\";s:9:\"_:default\";s:10:\"show_title\";s:1:\"1\";s:11:\"link_titles\";s:1:\"1\";s:10:\"show_intro\";s:1:\"1\";s:19:\"info_block_position\";s:1:\"0\";s:21:\"info_block_show_title\";s:1:\"1\";s:13:\"show_category\";s:1:\"1\";s:13:\"link_category\";s:1:\"1\";s:20:\"show_parent_category\";s:1:\"0\";s:20:\"link_parent_category\";s:1:\"0\";s:17:\"show_associations\";s:1:\"0\";s:5:\"flags\";s:1:\"1\";s:11:\"show_author\";s:1:\"1\";s:11:\"link_author\";s:1:\"0\";s:16:\"show_create_date\";s:1:\"0\";s:16:\"show_modify_date\";s:1:\"0\";s:17:\"show_publish_date\";s:1:\"1\";s:20:\"show_item_navigation\";s:1:\"1\";s:13:\"show_readmore\";s:1:\"1\";s:19:\"show_readmore_title\";s:1:\"1\";s:14:\"readmore_limit\";i:100;s:9:\"show_tags\";s:1:\"1\";s:11:\"record_hits\";s:1:\"1\";s:9:\"show_hits\";s:1:\"1\";s:11:\"show_noauth\";s:1:\"0\";s:13:\"urls_position\";i:0;s:7:\"captcha\";s:0:\"\";s:23:\"show_publishing_options\";s:1:\"1\";s:20:\"show_article_options\";s:1:\"1\";s:27:\"show_configure_edit_options\";s:1:\"1\";s:16:\"show_permissions\";s:1:\"1\";s:22:\"show_associations_edit\";s:1:\"1\";s:12:\"save_history\";s:1:\"1\";s:13:\"history_limit\";i:10;s:25:\"show_urls_images_frontend\";s:1:\"0\";s:24:\"show_urls_images_backend\";s:1:\"1\";s:7:\"targeta\";i:0;s:7:\"targetb\";i:0;s:7:\"targetc\";i:0;s:11:\"float_intro\";s:4:\"left\";s:14:\"float_fulltext\";s:4:\"left\";s:15:\"category_layout\";s:6:\"_:blog\";s:19:\"show_category_title\";s:1:\"0\";s:16:\"show_description\";s:1:\"0\";s:22:\"show_description_image\";s:1:\"0\";s:8:\"maxLevel\";s:1:\"1\";s:21:\"show_empty_categories\";s:1:\"0\";s:16:\"show_no_articles\";s:1:\"1\";s:32:\"show_category_heading_title_text\";s:1:\"1\";s:16:\"show_subcat_desc\";s:1:\"1\";s:21:\"show_cat_num_articles\";s:1:\"0\";s:13:\"show_cat_tags\";s:1:\"1\";s:21:\"show_base_description\";s:1:\"1\";s:11:\"maxLevelcat\";s:2:\"-1\";s:25:\"show_empty_categories_cat\";s:1:\"0\";s:20:\"show_subcat_desc_cat\";s:1:\"1\";s:25:\"show_cat_num_articles_cat\";s:1:\"1\";s:20:\"num_leading_articles\";i:1;s:18:\"blog_class_leading\";s:0:\"\";s:18:\"num_intro_articles\";i:4;s:10:\"blog_class\";s:0:\"\";s:11:\"num_columns\";i:1;s:18:\"multi_column_order\";s:1:\"0\";s:9:\"num_links\";i:4;s:24:\"show_subcategory_content\";s:1:\"0\";s:16:\"link_intro_image\";s:1:\"0\";s:21:\"show_pagination_limit\";s:1:\"1\";s:12:\"filter_field\";s:4:\"hide\";s:13:\"show_headings\";s:1:\"1\";s:14:\"list_show_date\";s:1:\"0\";s:11:\"date_format\";s:0:\"\";s:14:\"list_show_hits\";s:1:\"1\";s:16:\"list_show_author\";s:1:\"1\";s:11:\"display_num\";s:2:\"10\";s:11:\"orderby_pri\";s:5:\"order\";s:11:\"orderby_sec\";s:5:\"rdate\";s:10:\"order_date\";s:9:\"published\";s:15:\"show_pagination\";s:1:\"2\";s:23:\"show_pagination_results\";s:1:\"1\";s:13:\"show_featured\";s:4:\"show\";s:14:\"show_feed_link\";s:1:\"1\";s:12:\"feed_summary\";s:1:\"0\";s:18:\"feed_show_readmore\";s:1:\"0\";s:7:\"sef_ids\";i:1;s:20:\"custom_fields_enable\";s:1:\"1\";s:16:\"workflow_enabled\";s:1:\"0\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":3:{s:6:\"robots\";s:0:\"\";s:6:\"author\";s:0:\"\";s:6:\"rights\";s:0:\"\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"version\";i:1;s:8:\"ordering\";i:0;s:8:\"category\";s:13:\"Uncategorised\";s:9:\"cat_state\";i:1;s:10:\"cat_access\";i:1;s:4:\"slug\";s:9:\"2:bc-home\";s:7:\"catslug\";s:15:\"2:uncategorised\";s:6:\"author\";s:7:\"Web Dev\";s:6:\"layout\";s:7:\"article\";s:7:\"context\";s:19:\"com_content.article\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:7:\"metakey\";i:4;s:8:\"metadesc\";i:5;s:10:\"metaauthor\";i:6;s:6:\"author\";i:7;s:16:\"created_by_alias\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;s:19:\"2025-07-25 14:34:27\";i:10;N;i:11;s:62:\"index.php?option=com_content&view=article&id=2:bc-home&catid=2\";i:12;N;i:13;s:19:\"2025-07-25 14:34:27\";i:14;i:1;i:15;a:4:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:7:\"Article\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:0;s:2:\"id\";i:3;}}s:6:\"Author\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:7:\"Web Dev\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:0;s:2:\"id\";i:5;}}s:8:\"Category\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:13:\"Uncategorised\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:1;s:2:\"id\";i:7;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:0;s:2:\"id\";i:9;}}}i:16;s:7:\"BC Home\";i:17;i:3;i:18;s:46:\"index.php?option=com_content&view=article&id=2\";}');

DROP TABLE IF EXISTS `n8am2_finder_links_terms`;
CREATE TABLE `n8am2_finder_links_terms` (
  `link_id` int unsigned NOT NULL,
  `term_id` int unsigned NOT NULL,
  `weight` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_finder_links_terms` (`link_id`, `term_id`, `weight`) VALUES
(1,	1,	2.46679),
(1,	2,	1.72679),
(1,	3,	0.24),
(2,	3,	0.24),
(1,	4,	0.24),
(2,	4,	0.24),
(1,	5,	0.17),
(2,	8,	0.49321),
(2,	9,	0.98679),
(2,	10,	0.17);

DROP TABLE IF EXISTS `n8am2_finder_logging`;
CREATE TABLE `n8am2_finder_logging` (
  `searchterm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5sum` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `query` blob NOT NULL,
  `hits` int NOT NULL DEFAULT '1',
  `results` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5sum`),
  KEY `searchterm` (`searchterm`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `n8am2_finder_taxonomy`;
CREATE TABLE `n8am2_finder_taxonomy` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `lft` int NOT NULL DEFAULT '0',
  `rgt` int NOT NULL DEFAULT '0',
  `level` int unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint unsigned NOT NULL DEFAULT '1',
  `access` tinyint unsigned NOT NULL DEFAULT '1',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_access` (`access`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_level` (`level`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_finder_taxonomy` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `state`, `access`, `language`) VALUES
(1,	0,	0,	17,	0,	'',	'ROOT',	'root',	1,	1,	'*'),
(2,	1,	1,	4,	1,	'type',	'Type',	'type',	1,	1,	'*'),
(3,	2,	2,	3,	2,	'type/article',	'Article',	'article',	1,	1,	'*'),
(4,	1,	5,	8,	1,	'author',	'Author',	'author',	1,	1,	'*'),
(5,	4,	6,	7,	2,	'author/web-dev',	'Web Dev',	'web-dev',	1,	1,	'*'),
(6,	1,	9,	12,	1,	'category',	'Category',	'category',	1,	1,	'*'),
(7,	6,	10,	11,	2,	'category/uncategorised',	'Uncategorised',	'uncategorised',	1,	1,	'*'),
(8,	1,	13,	16,	1,	'language',	'Language',	'language',	1,	1,	'*'),
(9,	8,	14,	15,	2,	'language/4086f6336014c75439f87cbda42d9c51',	'*',	'4086f6336014c75439f87cbda42d9c51',	1,	1,	'*');

DROP TABLE IF EXISTS `n8am2_finder_taxonomy_map`;
CREATE TABLE `n8am2_finder_taxonomy_map` (
  `link_id` int unsigned NOT NULL,
  `node_id` int unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_finder_taxonomy_map` (`link_id`, `node_id`) VALUES
(1,	3),
(1,	5),
(1,	7),
(1,	9),
(2,	3),
(2,	5),
(2,	7),
(2,	9);

DROP TABLE IF EXISTS `n8am2_finder_terms`;
CREATE TABLE `n8am2_finder_terms` (
  `term_id` int unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `links` int NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term_language` (`term`,`language`),
  KEY `idx_stem` (`stem`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_finder_terms` (`term_id`, `term`, `stem`, `common`, `phrase`, `weight`, `soundex`, `links`, `language`) VALUES
(1,	'admissions',	'admissions',	0,	0,	0.6667,	'A35252',	1,	'*'),
(2,	'finance',	'finance',	0,	0,	0.4667,	'F520',	1,	'*'),
(3,	'dev',	'dev',	0,	0,	0.2,	'D100',	2,	'*'),
(4,	'web',	'web',	0,	0,	0.2,	'W100',	2,	'*'),
(5,	'1',	'1',	0,	0,	0.1,	'',	1,	'*'),
(8,	'bc',	'bc',	0,	0,	0.1333,	'B200',	1,	'*'),
(9,	'home',	'home',	0,	0,	0.2667,	'H500',	1,	'*'),
(10,	'2',	'2',	0,	0,	0.1,	'',	1,	'*');

DROP TABLE IF EXISTS `n8am2_finder_terms_common`;
CREATE TABLE `n8am2_finder_terms_common` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_term_language` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_finder_terms_common` (`term`, `language`, `custom`) VALUES
('a',	'en',	0),
('about',	'en',	0),
('above',	'en',	0),
('after',	'en',	0),
('again',	'en',	0),
('against',	'en',	0),
('all',	'en',	0),
('am',	'en',	0),
('an',	'en',	0),
('and',	'en',	0),
('any',	'en',	0),
('are',	'en',	0),
('aren\'t',	'en',	0),
('as',	'en',	0),
('at',	'en',	0),
('be',	'en',	0),
('because',	'en',	0),
('been',	'en',	0),
('before',	'en',	0),
('being',	'en',	0),
('below',	'en',	0),
('between',	'en',	0),
('both',	'en',	0),
('but',	'en',	0),
('by',	'en',	0),
('can\'t',	'en',	0),
('cannot',	'en',	0),
('could',	'en',	0),
('couldn\'t',	'en',	0),
('did',	'en',	0),
('didn\'t',	'en',	0),
('do',	'en',	0),
('does',	'en',	0),
('doesn\'t',	'en',	0),
('doing',	'en',	0),
('don\'t',	'en',	0),
('down',	'en',	0),
('during',	'en',	0),
('each',	'en',	0),
('few',	'en',	0),
('for',	'en',	0),
('from',	'en',	0),
('further',	'en',	0),
('had',	'en',	0),
('hadn\'t',	'en',	0),
('has',	'en',	0),
('hasn\'t',	'en',	0),
('have',	'en',	0),
('haven\'t',	'en',	0),
('having',	'en',	0),
('he',	'en',	0),
('he\'d',	'en',	0),
('he\'ll',	'en',	0),
('he\'s',	'en',	0),
('her',	'en',	0),
('here',	'en',	0),
('here\'s',	'en',	0),
('hers',	'en',	0),
('herself',	'en',	0),
('him',	'en',	0),
('himself',	'en',	0),
('his',	'en',	0),
('how',	'en',	0),
('how\'s',	'en',	0),
('i',	'en',	0),
('i\'d',	'en',	0),
('i\'ll',	'en',	0),
('i\'m',	'en',	0),
('i\'ve',	'en',	0),
('if',	'en',	0),
('in',	'en',	0),
('into',	'en',	0),
('is',	'en',	0),
('isn\'t',	'en',	0),
('it',	'en',	0),
('it\'s',	'en',	0),
('its',	'en',	0),
('itself',	'en',	0),
('let\'s',	'en',	0),
('me',	'en',	0),
('more',	'en',	0),
('most',	'en',	0),
('mustn\'t',	'en',	0),
('my',	'en',	0),
('myself',	'en',	0),
('no',	'en',	0),
('nor',	'en',	0),
('not',	'en',	0),
('of',	'en',	0),
('off',	'en',	0),
('on',	'en',	0),
('once',	'en',	0),
('only',	'en',	0),
('or',	'en',	0),
('other',	'en',	0),
('ought',	'en',	0),
('our',	'en',	0),
('ours',	'en',	0),
('ourselves',	'en',	0),
('out',	'en',	0),
('over',	'en',	0),
('own',	'en',	0),
('same',	'en',	0),
('shan\'t',	'en',	0),
('she',	'en',	0),
('she\'d',	'en',	0),
('she\'ll',	'en',	0),
('she\'s',	'en',	0),
('should',	'en',	0),
('shouldn\'t',	'en',	0),
('so',	'en',	0),
('some',	'en',	0),
('such',	'en',	0),
('than',	'en',	0),
('that',	'en',	0),
('that\'s',	'en',	0),
('the',	'en',	0),
('their',	'en',	0),
('theirs',	'en',	0),
('them',	'en',	0),
('themselves',	'en',	0),
('then',	'en',	0),
('there',	'en',	0),
('there\'s',	'en',	0),
('these',	'en',	0),
('they',	'en',	0),
('they\'d',	'en',	0),
('they\'ll',	'en',	0),
('they\'re',	'en',	0),
('they\'ve',	'en',	0),
('this',	'en',	0),
('those',	'en',	0),
('through',	'en',	0),
('to',	'en',	0),
('too',	'en',	0),
('under',	'en',	0),
('until',	'en',	0),
('up',	'en',	0),
('very',	'en',	0),
('was',	'en',	0),
('wasn\'t',	'en',	0),
('we',	'en',	0),
('we\'d',	'en',	0),
('we\'ll',	'en',	0),
('we\'re',	'en',	0),
('we\'ve',	'en',	0),
('were',	'en',	0),
('weren\'t',	'en',	0),
('what',	'en',	0),
('what\'s',	'en',	0),
('when',	'en',	0),
('when\'s',	'en',	0),
('where',	'en',	0),
('where\'s',	'en',	0),
('which',	'en',	0),
('while',	'en',	0),
('who',	'en',	0),
('who\'s',	'en',	0),
('whom',	'en',	0),
('why',	'en',	0),
('why\'s',	'en',	0),
('with',	'en',	0),
('won\'t',	'en',	0),
('would',	'en',	0),
('wouldn\'t',	'en',	0),
('you',	'en',	0),
('you\'d',	'en',	0),
('you\'ll',	'en',	0),
('you\'re',	'en',	0),
('you\'ve',	'en',	0),
('your',	'en',	0),
('yours',	'en',	0),
('yourself',	'en',	0),
('yourselves',	'en',	0);

DROP TABLE IF EXISTS `n8am2_finder_tokens`;
CREATE TABLE `n8am2_finder_tokens` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint unsigned NOT NULL DEFAULT '2',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_stem` (`stem`),
  KEY `idx_context` (`context`),
  KEY `idx_language` (`language`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `n8am2_finder_tokens_aggregate`;
CREATE TABLE `n8am2_finder_tokens_aggregate` (
  `term_id` int unsigned NOT NULL,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL DEFAULT '0',
  `context` tinyint unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL DEFAULT '0',
  `total_weight` float unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `n8am2_finder_types`;
CREATE TABLE `n8am2_finder_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_finder_types` (`id`, `title`, `mime`) VALUES
(1,	'Category',	''),
(2,	'Contact',	''),
(3,	'Article',	''),
(4,	'News Feed',	''),
(5,	'Tag',	'');

DROP TABLE IF EXISTS `n8am2_guidedtour_steps`;
CREATE TABLE `n8am2_guidedtour_steps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tour_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int NOT NULL,
  `interactive_type` int NOT NULL DEFAULT '1',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL,
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int unsigned DEFAULT NULL,
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `idx_tour` (`tour_id`),
  KEY `idx_state` (`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_guidedtour_steps` (`id`, `tour_id`, `title`, `published`, `description`, `ordering`, `position`, `target`, `type`, `interactive_type`, `url`, `created`, `created_by`, `modified`, `modified_by`, `checked_out_time`, `checked_out`, `language`, `note`, `params`) VALUES
(1,	1,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_NEW_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_NEW_DESCRIPTION',	1,	'bottom',	'.button-new',	2,	1,	'administrator/index.php?option=com_guidedtours&view=tours',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(2,	1,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_TITLE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_TITLE_DESCRIPTION',	2,	'bottom',	'#jform_title',	2,	2,	'administrator/index.php?option=com_guidedtours&view=tour&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(3,	1,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_URL_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_URL_DESCRIPTION',	3,	'top',	'#jform_url',	2,	2,	'administrator/index.php?option=com_guidedtours&view=tour&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(4,	1,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONTENT_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONTENT_DESCRIPTION',	4,	'bottom',	'#jform_description,#jform_description_ifr',	2,	3,	'administrator/index.php?option=com_guidedtours&view=tour&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(5,	1,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_COMPONENT_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_COMPONENT_DESCRIPTION',	5,	'top',	'joomla-field-fancy-select .choices',	2,	3,	'administrator/index.php?option=com_guidedtours&view=tour&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(6,	1,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_AUTOSTART_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_AUTOSTART_DESCRIPTION',	6,	'bottom',	'#jform_autostart0',	2,	3,	'',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(7,	1,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_SAVECLOSE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_SAVECLOSE_DESCRIPTION',	7,	'top',	'#save-group-children-save .button-save',	2,	1,	'administrator/index.php?option=com_guidedtours&view=tour&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(8,	1,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONGRATULATIONS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONGRATULATIONS_DESCRIPTION',	8,	'bottom',	'',	0,	1,	'administrator/index.php?option=com_guidedtours&view=tour&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(9,	2,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_COUNTER_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_COUNTER_DESCRIPTION',	9,	'top',	'#toursList tbody tr:nth-last-of-type(1) td:nth-of-type(5) .btn',	2,	1,	'',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(10,	2,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_NEW_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_NEW_DESCRIPTION',	10,	'bottom',	'.button-new',	2,	1,	'',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(11,	2,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TITLE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TITLE_DESCRIPTION',	11,	'bottom',	'#jform_title',	2,	2,	'',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(12,	2,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_DESCRIPTION_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_DESCRIPTION_DESCRIPTION',	12,	'bottom',	'#jform_description,#jform_description_ifr',	2,	3,	'',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(13,	2,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_STATUS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_STATUS_DESCRIPTION',	13,	'bottom',	'#jform_published',	2,	3,	'',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(14,	2,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_POSITION_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_POSITION_DESCRIPTION',	14,	'top',	'#jform_position',	2,	3,	'',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(15,	2,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TARGET_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TARGET_DESCRIPTION',	15,	'top',	'#jform_target',	2,	3,	'',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(16,	2,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TYPE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TYPE_DESCRIPTION',	16,	'top',	'#jform_type',	2,	3,	'',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(17,	2,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_SAVECLOSE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_SAVECLOSE_DESCRIPTION',	17,	'bottom',	'#save-group-children-save .button-save',	2,	1,	'',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(18,	2,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_CONGRATULATIONS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_CONGRATULATIONS_DESCRIPTION',	18,	'bottom',	'',	0,	1,	'',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(19,	3,	'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NEW_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NEW_DESCRIPTION',	19,	'bottom',	'.button-new',	2,	1,	'administrator/index.php?option=com_content&view=articles',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(20,	3,	'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TITLE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TITLE_DESCRIPTION',	20,	'bottom',	'#jform_title',	2,	2,	'administrator/index.php?option=com_content&view=article&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(21,	3,	'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ALIAS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ALIAS_DESCRIPTION',	21,	'bottom',	'#jform_alias',	2,	2,	'administrator/index.php?option=com_content&view=article&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(22,	3,	'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONTENT_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONTENT_DESCRIPTION',	22,	'bottom',	'#jform_articletext,#jform_articletext_ifr',	2,	3,	'administrator/index.php?option=com_content&view=article&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(23,	3,	'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_STATUS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_STATUS_DESCRIPTION',	23,	'bottom',	'#jform_state',	2,	3,	'administrator/index.php?option=com_content&view=article&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(24,	3,	'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CATEGORY_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CATEGORY_DESCRIPTION',	24,	'top',	'joomla-field-fancy-select .choices[data-type=select-one]',	2,	3,	'administrator/index.php?option=com_content&view=article&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(25,	3,	'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_FEATURED_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_FEATURED_DESCRIPTION',	25,	'bottom',	'#jform_featured0',	2,	3,	'administrator/index.php?option=com_content&view=article&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(26,	3,	'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ACCESS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ACCESS_DESCRIPTION',	26,	'bottom',	'#jform_access',	2,	3,	'administrator/index.php?option=com_content&view=article&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(27,	3,	'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TAGS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TAGS_DESCRIPTION',	27,	'top',	'joomla-field-fancy-select .choices[data-type=select-multiple]',	2,	3,	'administrator/index.php?option=com_content&view=article&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(28,	3,	'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NOTE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NOTE_DESCRIPTION',	28,	'top',	'#jform_note',	2,	2,	'administrator/index.php?option=com_content&view=article&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(29,	3,	'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_VERSIONNOTE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_VERSIONNOTE_DESCRIPTION',	29,	'top',	'#jform_version_note',	2,	2,	'administrator/index.php?option=com_content&view=article&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(30,	3,	'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_SAVECLOSE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_SAVECLOSE_DESCRIPTION',	30,	'bottom',	'#save-group-children-save .button-save',	2,	1,	'administrator/index.php?option=com_content&view=article&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(31,	3,	'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONGRATULATIONS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONGRATULATIONS_DESCRIPTION',	31,	'bottom',	'',	0,	1,	'administrator/index.php?option=com_content&view=article&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(32,	4,	'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NEW_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NEW_DESCRIPTION',	32,	'bottom',	'.button-new',	2,	1,	'administrator/index.php?option=com_categories&view=categories&extension=com_content',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(33,	4,	'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TITLE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TITLE_DESCRIPTION',	33,	'bottom',	'#jform_title',	2,	2,	'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(34,	4,	'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ALIAS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ALIAS_DESCRIPTION',	34,	'bottom',	'#jform_alias',	2,	2,	'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(35,	4,	'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONTENT_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONTENT_DESCRIPTION',	35,	'bottom',	'#jform_description,#jform_description_ifr',	2,	3,	'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(36,	4,	'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_PARENT_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_PARENT_DESCRIPTION',	36,	'top',	'joomla-field-fancy-select .choices[data-type=select-one]',	2,	3,	'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(37,	4,	'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_STATUS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_STATUS_DESCRIPTION',	37,	'bottom',	'#jform_published',	2,	3,	'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(38,	4,	'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ACCESS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ACCESS_DESCRIPTION',	38,	'bottom',	'#jform_access',	2,	3,	'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(39,	4,	'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TAGS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TAGS_DESCRIPTION',	39,	'top',	'joomla-field-fancy-select .choices[data-type=select-multiple]',	2,	3,	'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(40,	4,	'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NOTE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NOTE_DESCRIPTION',	40,	'top',	'#jform_note',	2,	2,	'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(41,	4,	'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_VERSIONNOTE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_VERSIONNOTE_DESCRIPTION',	41,	'top',	'#jform_version_note',	2,	2,	'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(42,	4,	'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_SAVECLOSE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_SAVECLOSE_DESCRIPTION',	42,	'bottom',	'#save-group-children-save .button-save',	2,	1,	'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(43,	4,	'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONGRATULATIONS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONGRATULATIONS_DESCRIPTION',	43,	'bottom',	'',	0,	1,	'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(44,	5,	'COM_GUIDEDTOURS_TOUR_MENUS_STEP_NEW_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_MENUS_STEP_NEW_DESCRIPTION',	44,	'bottom',	'.button-new',	2,	1,	'administrator/index.php?option=com_menus&view=menus',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(45,	5,	'COM_GUIDEDTOURS_TOUR_MENUS_STEP_TITLE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_MENUS_STEP_TITLE_DESCRIPTION',	45,	'bottom',	'#jform_title',	2,	2,	'administrator/index.php?option=com_menus&view=menu&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(46,	5,	'COM_GUIDEDTOURS_TOUR_MENUS_STEP_UNIQUENAME_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_MENUS_STEP_UNIQUENAME_DESCRIPTION',	46,	'top',	'#jform_menutype',	2,	2,	'administrator/index.php?option=com_menus&view=menu&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(47,	5,	'COM_GUIDEDTOURS_TOUR_MENUS_STEP_DESCRIPTION_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_MENUS_STEP_DESCRIPTION_DESCRIPTION',	47,	'top',	'#jform_menudescription',	2,	2,	'administrator/index.php?option=com_menus&view=menu&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(48,	5,	'COM_GUIDEDTOURS_TOUR_MENUS_STEP_SAVECLOSE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_MENUS_STEP_SAVECLOSE_DESCRIPTION',	48,	'bottom',	'#save-group-children-save .button-save',	2,	1,	'administrator/index.php?option=com_menus&view=menu&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(49,	5,	'COM_GUIDEDTOURS_TOUR_MENUS_STEP_CONGRATULATIONS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_MENUS_STEP_CONGRATULATIONS_DESCRIPTION',	49,	'bottom',	'',	0,	1,	'administrator/index.php?option=com_menus&view=menu&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(50,	6,	'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NEW_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NEW_DESCRIPTION',	50,	'bottom',	'.button-new',	2,	1,	'administrator/index.php?option=com_tags&view=tags',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(51,	6,	'COM_GUIDEDTOURS_TOUR_TAGS_STEP_TITLE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_TAGS_STEP_TITLE_DESCRIPTION',	51,	'bottom',	'#jform_title',	2,	2,	'administrator/index.php?option=com_tags&view=tag&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(52,	6,	'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ALIAS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ALIAS_DESCRIPTION',	52,	'bottom',	'#jform_alias',	2,	2,	'administrator/index.php?option=com_tags&view=tag&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(53,	6,	'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONTENT_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONTENT_DESCRIPTION',	53,	'bottom',	'#jform_description,#jform_description_ifr',	2,	3,	'administrator/index.php?option=com_tags&view=tag&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(54,	6,	'COM_GUIDEDTOURS_TOUR_TAGS_STEP_PARENT_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_TAGS_STEP_PARENT_DESCRIPTION',	54,	'top',	'joomla-field-fancy-select .choices[data-type=select-one]',	2,	3,	'administrator/index.php?option=com_tags&view=tag&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(55,	6,	'COM_GUIDEDTOURS_TOUR_TAGS_STEP_STATUS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_TAGS_STEP_STATUS_DESCRIPTION',	55,	'bottom',	'#jform_published',	2,	3,	'administrator/index.php?option=com_tags&view=tag&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(56,	6,	'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ACCESS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ACCESS_DESCRIPTION',	56,	'bottom',	'#jform_access',	2,	3,	'administrator/index.php?option=com_tags&view=tag&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(57,	6,	'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NOTE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NOTE_DESCRIPTION',	57,	'top',	'#jform_note',	2,	2,	'administrator/index.php?option=com_tags&view=tag&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(58,	6,	'COM_GUIDEDTOURS_TOUR_TAGS_STEP_VERSIONNOTE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_TAGS_STEP_VERSIONNOTE_DESCRIPTION',	58,	'top',	'#jform_version_note',	2,	2,	'administrator/index.php?option=com_tags&view=tag&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(59,	6,	'COM_GUIDEDTOURS_TOUR_TAGS_STEP_SAVECLOSE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_TAGS_STEP_SAVECLOSE_DESCRIPTION',	59,	'bottom',	'#save-group-children-save .button-save',	2,	1,	'administrator/index.php?option=com_tags&view=tag&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(60,	6,	'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONGRATULATIONS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONGRATULATIONS_DESCRIPTION',	60,	'bottom',	'',	0,	1,	'administrator/index.php?option=com_tags&view=tag&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(61,	7,	'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_NEW_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_NEW_DESCRIPTION',	61,	'bottom',	'.button-new',	2,	1,	'administrator/index.php?option=com_banners&view=banners',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(62,	7,	'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_TITLE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_TITLE_DESCRIPTION',	62,	'bottom',	'#jform_name',	2,	2,	'administrator/index.php?option=com_banners&view=banner&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(63,	7,	'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_ALIAS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_ALIAS_DESCRIPTION',	63,	'bottom',	'#jform_alias',	2,	2,	'administrator/index.php?option=com_banners&view=banner&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(64,	7,	'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_DETAILS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_DETAILS_DESCRIPTION',	64,	'bottom',	'.col-lg-9',	2,	3,	'administrator/index.php?option=com_banners&view=banner&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(65,	7,	'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_STATUS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_STATUS_DESCRIPTION',	65,	'bottom',	'#jform_state',	2,	3,	'administrator/index.php?option=com_banners&view=banner&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(66,	7,	'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CATEGORY_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CATEGORY_DESCRIPTION',	66,	'top',	'joomla-field-fancy-select .choices[data-type=select-one]',	2,	3,	'administrator/index.php?option=com_banners&view=banner&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(67,	7,	'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_PINNED_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_PINNED_DESCRIPTION',	67,	'bottom',	'#jform_sticky1',	2,	3,	'administrator/index.php?option=com_banners&view=banner&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(68,	7,	'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_VERSIONNOTE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_VERSIONNOTE_DESCRIPTION',	68,	'top',	'#jform_version_note',	2,	2,	'administrator/index.php?option=com_banners&view=banner&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(69,	7,	'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_SAVECLOSE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_SAVECLOSE_DESCRIPTION',	69,	'bottom',	'#save-group-children-save .button-save',	2,	1,	'administrator/index.php?option=com_banners&view=banner&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(70,	7,	'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CONGRATULATIONS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CONGRATULATIONS_DESCRIPTION',	70,	'bottom',	'',	0,	1,	'administrator/index.php?option=com_banners&view=banner&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(71,	8,	'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_NEW_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_NEW_DESCRIPTION',	71,	'bottom',	'.button-new',	2,	1,	'administrator/index.php?option=com_contact&view=contacts',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(72,	8,	'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TITLE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TITLE_DESCRIPTION',	72,	'bottom',	'#jform_name',	2,	2,	'administrator/index.php?option=com_contact&view=contact&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(73,	8,	'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ALIAS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ALIAS_DESCRIPTION',	73,	'bottom',	'#jform_alias',	2,	2,	'administrator/index.php?option=com_contact&view=contact&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(74,	8,	'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_DETAILS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_DETAILS_DESCRIPTION',	74,	'bottom',	'.col-lg-9',	0,	1,	'administrator/index.php?option=com_contact&view=contact&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(75,	8,	'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_STATUS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_STATUS_DESCRIPTION',	75,	'bottom',	'#jform_published',	2,	3,	'administrator/index.php?option=com_contact&view=contact&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(76,	8,	'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CATEGORY_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CATEGORY_DESCRIPTION',	76,	'top',	'joomla-field-fancy-select .choices[data-type=select-one]',	2,	3,	'administrator/index.php?option=com_contact&view=contact&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(77,	8,	'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_FEATURED_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_FEATURED_DESCRIPTION',	77,	'bottom',	'#jform_featured0',	2,	3,	'administrator/index.php?option=com_contact&view=contact&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(78,	8,	'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ACCESS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ACCESS_DESCRIPTION',	78,	'bottom',	'#jform_access',	2,	3,	'administrator/index.php?option=com_contact&view=contact&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(79,	8,	'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TAGS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TAGS_DESCRIPTION',	79,	'top',	'joomla-field-fancy-select .choices[data-type=select-multiple]',	2,	3,	'administrator/index.php?option=com_contact&view=contact&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(80,	8,	'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_VERSIONNOTE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_VERSIONNOTE_DESCRIPTION',	80,	'top',	'#jform_version_note',	2,	2,	'administrator/index.php?option=com_contact&view=contact&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(81,	8,	'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_SAVECLOSE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_SAVECLOSE_DESCRIPTION',	81,	'bottom',	'#save-group-children-save .button-save',	2,	1,	'administrator/index.php?option=com_contact&view=contact&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(82,	8,	'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CONGRATULATIONS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CONGRATULATIONS_DESCRIPTION',	82,	'bottom',	'',	0,	1,	'administrator/index.php?option=com_contact&view=contact&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(83,	9,	'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_NEW_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_NEW_DESCRIPTION',	83,	'bottom',	'.button-new',	2,	1,	'administrator/index.php?option=com_newsfeeds&view=newsfeeds',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(84,	9,	'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TITLE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TITLE_DESCRIPTION',	84,	'bottom',	'#jform_name',	2,	2,	'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(85,	9,	'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ALIAS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ALIAS_DESCRIPTION',	85,	'bottom',	'#jform_alias',	2,	2,	'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(86,	9,	'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_LINK_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_LINK_DESCRIPTION',	86,	'bottom',	'#jform_link',	2,	2,	'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(87,	9,	'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_DESCRIPTION_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_DESCRIPTION_DESCRIPTION',	87,	'bottom',	'#jform_description,#jform_description_ifr',	2,	3,	'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(88,	9,	'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_STATUS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_STATUS_DESCRIPTION',	88,	'bottom',	'#jform_published',	2,	3,	'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(89,	9,	'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CATEGORY_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CATEGORY_DESCRIPTION',	89,	'top',	'joomla-field-fancy-select .choices[data-type=select-one]',	2,	3,	'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(90,	9,	'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ACCESS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ACCESS_DESCRIPTION',	90,	'bottom',	'#jform_access',	2,	3,	'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(91,	9,	'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TAGS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TAGS_DESCRIPTION',	91,	'top',	'joomla-field-fancy-select .choices[data-type=select-multiple]',	2,	3,	'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(92,	9,	'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_VERSIONNOTE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_VERSIONNOTE_DESCRIPTION',	92,	'top',	'#jform_version_note',	2,	2,	'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(93,	9,	'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_SAVECLOSE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_SAVECLOSE_DESCRIPTION',	93,	'bottom',	'#save-group-children-save .button-save',	2,	1,	'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(94,	9,	'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CONGRATULATIONS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CONGRATULATIONS_DESCRIPTION',	94,	'bottom',	'',	0,	1,	'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(95,	10,	'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_NEW_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_NEW_DESCRIPTION',	95,	'bottom',	'.button-new',	2,	1,	'administrator/index.php?option=com_finder&view=filters',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(96,	10,	'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_TITLE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_TITLE_DESCRIPTION',	96,	'bottom',	'#jform_title',	2,	2,	'administrator/index.php?option=com_finder&view=filter&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(97,	10,	'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_ALIAS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_ALIAS_DESCRIPTION',	97,	'bottom',	'#jform_alias',	2,	2,	'administrator/index.php?option=com_finder&view=filter&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(98,	10,	'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONTENT_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONTENT_DESCRIPTION',	98,	'bottom',	'.col-lg-9',	0,	1,	'administrator/index.php?option=com_finder&view=filter&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(99,	10,	'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_STATUS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_STATUS_DESCRIPTION',	99,	'bottom',	'#jform_state',	2,	3,	'administrator/index.php?option=com_finder&view=filter&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(100,	10,	'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_SAVECLOSE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_SAVECLOSE_DESCRIPTION',	100,	'bottom',	'#save-group-children-save .button-save',	2,	1,	'administrator/index.php?option=com_finder&view=filter&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(101,	10,	'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONGRATULATIONS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONGRATULATIONS_DESCRIPTION',	101,	'bottom',	'',	0,	1,	'administrator/index.php?option=com_finder&view=filter&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(102,	11,	'COM_GUIDEDTOURS_TOUR_USERS_STEP_NEW_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_USERS_STEP_NEW_DESCRIPTION',	102,	'bottom',	'.button-new',	2,	1,	'administrator/index.php?option=com_users&view=user&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(103,	11,	'COM_GUIDEDTOURS_TOUR_USERS_STEP_NAME_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_USERS_STEP_NAME_DESCRIPTION',	103,	'bottom',	'#jform_name',	2,	2,	'administrator/index.php?option=com_users&view=user&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(104,	11,	'COM_GUIDEDTOURS_TOUR_USERS_STEP_LOGINNAME_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_USERS_STEP_LOGINNAME_DESCRIPTION',	104,	'bottom',	'#jform_username',	2,	2,	'administrator/index.php?option=com_users&view=user&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(105,	11,	'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD_DESCRIPTION',	105,	'bottom',	'#jform_password',	2,	2,	'administrator/index.php?option=com_users&view=user&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(106,	11,	'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD2_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD2_DESCRIPTION',	106,	'bottom',	'#jform_password2',	2,	2,	'administrator/index.php?option=com_users&view=user&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(107,	11,	'COM_GUIDEDTOURS_TOUR_USERS_STEP_EMAIL_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_USERS_STEP_EMAIL_DESCRIPTION',	107,	'bottom',	'#jform_email',	2,	2,	'administrator/index.php?option=com_users&view=user&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(108,	11,	'COM_GUIDEDTOURS_TOUR_USERS_STEP_SYSTEMEMAIL_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_USERS_STEP_SYSTEMEMAIL_DESCRIPTION',	108,	'top',	'#jform_sendEmail0',	2,	3,	'administrator/index.php?option=com_users&view=user&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(109,	11,	'COM_GUIDEDTOURS_TOUR_USERS_STEP_STATUS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_USERS_STEP_STATUS_DESCRIPTION',	109,	'top',	'#jform_block0',	2,	3,	'administrator/index.php?option=com_users&view=user&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(110,	11,	'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORDRESET_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORDRESET_DESCRIPTION',	110,	'top',	'#jform_requireReset0',	2,	3,	'administrator/index.php?option=com_users&view=user&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(111,	11,	'COM_GUIDEDTOURS_TOUR_USERS_STEP_SAVECLOSE_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_USERS_STEP_SAVECLOSE_DESCRIPTION',	111,	'bottom',	'#save-group-children-save .button-save',	2,	1,	'administrator/index.php?option=com_users&view=user&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(112,	11,	'COM_GUIDEDTOURS_TOUR_USERS_STEP_CONGRATULATIONS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_USERS_STEP_CONGRATULATIONS_DESCRIPTION',	112,	'bottom',	'',	0,	1,	'administrator/index.php?option=com_users&view=user&layout=edit',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(113,	12,	'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_MENUS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_MENUS_DESCRIPTION',	113,	'right',	'#sidebarmenu',	0,	1,	'',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(114,	12,	'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_QUICKACCESS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_QUICKACCESS_DESCRIPTION',	114,	'center',	'',	0,	1,	'',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(115,	12,	'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_NOTIFICATIONS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_NOTIFICATIONS_DESCRIPTION',	115,	'left',	'.quickicons-for-update_quickicon .card',	0,	1,	'',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(116,	12,	'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_TOPBAR_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_TOPBAR_DESCRIPTION',	116,	'bottom',	'#header',	0,	1,	'',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL),
(117,	12,	'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_FINALWORDS_TITLE',	1,	'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_FINALWORDS_DESCRIPTION',	117,	'right',	'#sidebarmenu nav > ul:first-of-type > li:last-child',	0,	1,	'',	'2025-06-11 23:02:01',	1,	'2025-06-11 23:02:01',	1,	NULL,	NULL,	'*',	'',	NULL);

DROP TABLE IF EXISTS `n8am2_guidedtours`;
CREATE TABLE `n8am2_guidedtours` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uid` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `extensions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL,
  `modified_by` int NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int unsigned DEFAULT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `access` int unsigned NOT NULL DEFAULT '0',
  `autostart` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_state` (`published`),
  KEY `idx_language` (`language`),
  KEY `idx_uid` (`uid`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_guidedtours` (`id`, `title`, `uid`, `description`, `ordering`, `extensions`, `url`, `created`, `created_by`, `modified`, `modified_by`, `checked_out_time`, `checked_out`, `published`, `language`, `note`, `access`, `autostart`) VALUES
(1,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_TITLE',	'joomla-guidedtours',	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_DESCRIPTION',	1,	'[\"com_guidedtours\"]',	'administrator/index.php?option=com_guidedtours&view=tours',	'2025-06-11 23:02:00',	1,	'2025-06-11 23:02:00',	1,	NULL,	NULL,	1,	'*',	'',	1,	0),
(2,	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_TITLE',	'joomla-guidedtoursteps',	'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_DESCRIPTION',	2,	'[\"com_guidedtours\"]',	'administrator/index.php?option=com_guidedtours&view=tours',	'2025-06-11 23:02:00',	1,	'2025-06-11 23:02:00',	1,	NULL,	NULL,	1,	'*',	'',	1,	0),
(3,	'COM_GUIDEDTOURS_TOUR_ARTICLES_TITLE',	'joomla-articles',	'COM_GUIDEDTOURS_TOUR_ARTICLES_DESCRIPTION',	3,	'[\"com_content\",\"com_categories\"]',	'administrator/index.php?option=com_content&view=articles',	'2025-06-11 23:02:00',	1,	'2025-06-11 23:02:00',	1,	NULL,	NULL,	1,	'*',	'',	1,	0),
(4,	'COM_GUIDEDTOURS_TOUR_CATEGORIES_TITLE',	'joomla-categories',	'COM_GUIDEDTOURS_TOUR_CATEGORIES_DESCRIPTION',	4,	'[\"com_content\",\"com_categories\"]',	'administrator/index.php?option=com_categories&view=categories&extension=com_content',	'2025-06-11 23:02:00',	1,	'2025-06-11 23:02:00',	1,	NULL,	NULL,	1,	'*',	'',	1,	0),
(5,	'COM_GUIDEDTOURS_TOUR_MENUS_TITLE',	'joomla-menus',	'COM_GUIDEDTOURS_TOUR_MENUS_DESCRIPTION',	5,	'[\"com_menus\"]',	'administrator/index.php?option=com_menus&view=menus',	'2025-06-11 23:02:00',	1,	'2025-06-11 23:02:00',	1,	NULL,	NULL,	1,	'*',	'',	1,	0),
(6,	'COM_GUIDEDTOURS_TOUR_TAGS_TITLE',	'joomla-tags',	'COM_GUIDEDTOURS_TOUR_TAGS_DESCRIPTION',	6,	'[\"com_tags\"]',	'administrator/index.php?option=com_tags&view=tags',	'2025-06-11 23:02:00',	1,	'2025-06-11 23:02:00',	1,	NULL,	NULL,	1,	'*',	'',	1,	0),
(7,	'COM_GUIDEDTOURS_TOUR_BANNERS_TITLE',	'joomla-banners',	'COM_GUIDEDTOURS_TOUR_BANNERS_DESCRIPTION',	7,	'[\"com_banners\"]',	'administrator/index.php?option=com_banners&view=banners',	'2025-06-11 23:02:00',	1,	'2025-06-11 23:02:00',	1,	NULL,	NULL,	1,	'*',	'',	1,	0),
(8,	'COM_GUIDEDTOURS_TOUR_CONTACTS_TITLE',	'joomla-contacts',	'COM_GUIDEDTOURS_TOUR_CONTACTS_DESCRIPTION',	8,	'[\"com_contact\"]',	'administrator/index.php?option=com_contact&view=contacts',	'2025-06-11 23:02:00',	1,	'2025-06-11 23:02:00',	1,	NULL,	NULL,	1,	'*',	'',	1,	0),
(9,	'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_TITLE',	'joomla-newsfeeds',	'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_DESCRIPTION',	9,	'[\"com_newsfeeds\"]',	'administrator/index.php?option=com_newsfeeds&view=newsfeeds',	'2025-06-11 23:02:00',	1,	'2025-06-11 23:02:00',	1,	NULL,	NULL,	1,	'*',	'',	1,	0),
(10,	'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_TITLE',	'joomla-smartsearch',	'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_DESCRIPTION',	10,	'[\"com_finder\"]',	'administrator/index.php?option=com_finder&view=filters',	'2025-06-11 23:02:00',	1,	'2025-06-11 23:02:00',	1,	NULL,	NULL,	1,	'*',	'',	1,	0),
(11,	'COM_GUIDEDTOURS_TOUR_USERS_TITLE',	'joomla-users',	'COM_GUIDEDTOURS_TOUR_USERS_DESCRIPTION',	11,	'[\"com_users\"]',	'administrator/index.php?option=com_users&view=users',	'2025-06-11 23:02:00',	1,	'2025-06-11 23:02:00',	1,	NULL,	NULL,	1,	'*',	'',	1,	0),
(12,	'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_TITLE',	'joomla-welcome',	'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_DESCRIPTION',	12,	'[\"com_cpanel\"]',	'administrator/index.php',	'2025-06-11 23:02:00',	1,	'2025-06-11 23:02:00',	1,	NULL,	NULL,	1,	'*',	'',	1,	1);

DROP TABLE IF EXISTS `n8am2_history`;
CREATE TABLE `n8am2_history` (
  `version_id` int unsigned NOT NULL AUTO_INCREMENT,
  `item_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL,
  `editor_user_id` int unsigned NOT NULL DEFAULT '0',
  `character_count` int unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_history` (`version_id`, `item_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1,	'com_content.article.1',	'',	'2025-07-25 14:19:03',	2,	1591,	'121b52d2ebc22de7bec63d729bd0a757b152e7b5',	'{\"id\":1,\"asset_id\":102,\"title\":\"Admissions & Finance\",\"alias\":\"admissions-finance\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-07-25 14:19:03\",\"created_by\":2,\"created_by_alias\":\"\",\"modified\":\"2025-07-25 14:19:03\",\"modified_by\":2,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2025-07-25 14:19:03\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',	0),
(2,	'com_content.article.2',	'',	'2025-07-25 14:34:27',	2,	1567,	'fbe1f7dd71d7827c5f1b4f72a6be7897fe2bf518',	'{\"id\":2,\"asset_id\":103,\"title\":\"BC Home\",\"alias\":\"bc-home\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-07-25 14:34:27\",\"created_by\":2,\"created_by_alias\":\"\",\"modified\":\"2025-07-25 14:34:27\",\"modified_by\":2,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2025-07-25 14:34:27\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}',	0);

DROP TABLE IF EXISTS `n8am2_languages`;
CREATE TABLE `n8am2_languages` (
  `lang_id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1,	0,	'en-GB',	'English (en-GB)',	'English (United Kingdom)',	'en',	'en_gb',	'',	'',	'',	'',	1,	1,	1);

DROP TABLE IF EXISTS `n8am2_mail_templates`;
CREATE TABLE `n8am2_mail_templates` (
  `template_id` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `htmlbody` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`template_id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_mail_templates` (`template_id`, `extension`, `language`, `subject`, `body`, `htmlbody`, `attachments`, `params`) VALUES
('com_actionlogs.notification',	'com_actionlogs',	'',	'COM_ACTIONLOGS_EMAIL_SUBJECT',	'COM_ACTIONLOGS_EMAIL_BODY',	'COM_ACTIONLOGS_EMAIL_HTMLBODY',	'',	'{\"tags\":[\"messages\",\"message\",\"date\",\"extension\",\"username\"]}'),
('com_config.test_mail',	'com_config',	'',	'COM_CONFIG_SENDMAIL_SUBJECT',	'COM_CONFIG_SENDMAIL_BODY',	'',	'',	'{\"tags\":[\"sitename\",\"method\"]}'),
('com_contact.mail',	'com_contact',	'',	'COM_CONTACT_ENQUIRY_SUBJECT',	'COM_CONTACT_ENQUIRY_TEXT',	'',	'',	'{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\"]}'),
('com_contact.mail.copy',	'com_contact',	'',	'COM_CONTACT_COPYSUBJECT_OF',	'COM_CONTACT_COPYTEXT_OF',	'',	'',	'{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\",\"contactname\"]}'),
('com_messages.new_message',	'com_messages',	'',	'COM_MESSAGES_NEW_MESSAGE',	'COM_MESSAGES_NEW_MESSAGE_BODY',	'',	'',	'{\"tags\":[\"subject\",\"message\",\"fromname\",\"sitename\",\"siteurl\",\"fromemail\",\"toname\",\"toemail\"]}'),
('com_privacy.notification.admin.export',	'com_privacy',	'',	'COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_EXPORT_REQUEST',	'COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_EXPORT_REQUEST',	'',	'',	'{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.admin.remove',	'com_privacy',	'',	'COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_REMOVE_REQUEST',	'COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_REMOVE_REQUEST',	'',	'',	'{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.export',	'com_privacy',	'',	'COM_PRIVACY_EMAIL_REQUEST_SUBJECT_EXPORT_REQUEST',	'COM_PRIVACY_EMAIL_REQUEST_BODY_EXPORT_REQUEST',	'',	'',	'{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.remove',	'com_privacy',	'',	'COM_PRIVACY_EMAIL_REQUEST_SUBJECT_REMOVE_REQUEST',	'COM_PRIVACY_EMAIL_REQUEST_BODY_REMOVE_REQUEST',	'',	'',	'{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.userdataexport',	'com_privacy',	'',	'COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_SUBJECT',	'COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_BODY',	'',	'',	'{\"tags\":[\"sitename\",\"url\"]}'),
('com_users.massmail.mail',	'com_users',	'',	'COM_USERS_MASSMAIL_MAIL_SUBJECT',	'COM_USERS_MASSMAIL_MAIL_BODY',	'',	'',	'{\"tags\":[\"subject\",\"body\",\"subjectprefix\",\"bodysuffix\"]}'),
('com_users.password_reset',	'com_users',	'',	'COM_USERS_EMAIL_PASSWORD_RESET_SUBJECT',	'COM_USERS_EMAIL_PASSWORD_RESET_BODY',	'',	'',	'{\"tags\":[\"name\",\"email\",\"sitename\",\"link_text\",\"link_html\",\"token\"]}'),
('com_users.registration.admin.new_notification',	'com_users',	'',	'COM_USERS_EMAIL_ACCOUNT_DETAILS',	'COM_USERS_EMAIL_REGISTERED_NOTIFICATION_TO_ADMIN_BODY',	'',	'',	'{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.admin.verification_request',	'com_users',	'',	'COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_SUBJECT',	'COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_BODY',	'',	'',	'{\"tags\":[\"name\",\"sitename\",\"email\",\"username\",\"activate\"]}'),
('com_users.registration.user.admin_activated',	'com_users',	'',	'COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_SUBJECT',	'COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_BODY',	'',	'',	'{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.admin_activation',	'com_users',	'',	'COM_USERS_EMAIL_ACCOUNT_DETAILS',	'COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY_NOPW',	'',	'',	'{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.admin_activation_w_pw',	'com_users',	'',	'COM_USERS_EMAIL_ACCOUNT_DETAILS',	'COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY',	'',	'',	'{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.registration.user.registration_mail',	'com_users',	'',	'COM_USERS_EMAIL_ACCOUNT_DETAILS',	'COM_USERS_EMAIL_REGISTERED_BODY_NOPW',	'',	'',	'{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.registration_mail_w_pw',	'com_users',	'',	'COM_USERS_EMAIL_ACCOUNT_DETAILS',	'COM_USERS_EMAIL_REGISTERED_BODY',	'',	'',	'{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.registration.user.self_activation',	'com_users',	'',	'COM_USERS_EMAIL_ACCOUNT_DETAILS',	'COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY_NOPW',	'',	'',	'{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.self_activation_w_pw',	'com_users',	'',	'COM_USERS_EMAIL_ACCOUNT_DETAILS',	'COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY',	'',	'',	'{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.reminder',	'com_users',	'',	'COM_USERS_EMAIL_USERNAME_REMINDER_SUBJECT',	'COM_USERS_EMAIL_USERNAME_REMINDER_BODY',	'',	'',	'{\"tags\":[\"name\",\"username\",\"sitename\",\"email\",\"link_text\",\"link_html\"]}'),
('plg_multifactorauth_email.mail',	'plg_multifactorauth_email',	'',	'PLG_MULTIFACTORAUTH_EMAIL_EMAIL_SUBJECT',	'PLG_MULTIFACTORAUTH_EMAIL_EMAIL_BODY',	'',	'',	'{\"tags\":[\"code\",\"sitename\",\"siteurl\",\"username\",\"email\",\"fullname\"]}'),
('plg_system_tasknotification.failure_mail',	'plg_system_tasknotification',	'',	'PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_SUBJECT',	'PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_BODY',	'',	'',	'{\"tags\": [\"task_id\", \"task_title\", \"exit_code\", \"exec_data_time\", \"task_output\"]}'),
('plg_system_tasknotification.fatal_recovery_mail',	'plg_system_tasknotification',	'',	'PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_SUBJECT',	'PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_BODY',	'',	'',	'{\"tags\": [\"task_id\", \"task_title\"]}'),
('plg_system_tasknotification.orphan_mail',	'plg_system_tasknotification',	'',	'PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_SUBJECT',	'PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_BODY',	'',	'',	'{\"tags\": [\"task_id\", \"task_title\"]}'),
('plg_system_tasknotification.success_mail',	'plg_system_tasknotification',	'',	'PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_SUBJECT',	'PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_BODY',	'',	'',	'{\"tags\":[\"task_id\", \"task_title\", \"exec_data_time\", \"task_output\"]}'),
('plg_task_privacyconsent.request.reminder',	'plg_task_privacyconsent',	'',	'PLG_TASK_PRIVACYCONSENT_EMAIL_REMIND_SUBJECT',	'PLG_TASK_PRIVACYCONSENT_EMAIL_REMIND_BODY',	'',	'',	'{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('plg_task_updatenotification.mail',	'plg_task_updatenotification',	'',	'PLG_TASK_UPDATENOTIFICATION_EMAIL_SUBJECT',	'PLG_TASK_UPDATENOTIFICATION_EMAIL_BODY',	'',	'',	'{\"tags\":[\"newversion\",\"curversion\",\"sitename\",\"url\",\"link\",\"releasenews\"]}'),
('plg_user_joomla.mail',	'plg_user_joomla',	'',	'PLG_USER_JOOMLA_NEW_USER_EMAIL_SUBJECT',	'PLG_USER_JOOMLA_NEW_USER_EMAIL_BODY',	'',	'',	'{\"tags\":[\"name\",\"sitename\",\"url\",\"username\",\"password\",\"email\"]}');

DROP TABLE IF EXISTS `n8am2_menu`;
CREATE TABLE `n8am2_menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int unsigned DEFAULT NULL COMMENT 'FK to #__users.id',
  `checked_out_time` datetime DEFAULT NULL COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint NOT NULL DEFAULT '0',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`, `publish_up`, `publish_down`) VALUES
(1,	'',	'Menu_Item_Root',	'root',	'',	'',	'',	'',	1,	0,	0,	0,	NULL,	NULL,	0,	0,	'',	0,	'',	0,	115,	0,	'*',	0,	NULL,	NULL),
(2,	'main',	'com_banners',	'Banners',	'',	'Banners',	'index.php?option=com_banners',	'component',	1,	1,	1,	3,	NULL,	NULL,	0,	0,	'class:bookmark',	0,	'',	1,	10,	0,	'*',	1,	NULL,	NULL),
(3,	'main',	'com_banners',	'Banners',	'',	'Banners/Banners',	'index.php?option=com_banners&view=banners',	'component',	1,	2,	2,	3,	NULL,	NULL,	0,	0,	'class:banners',	0,	'',	2,	3,	0,	'*',	1,	NULL,	NULL),
(4,	'main',	'com_banners_categories',	'Categories',	'',	'Banners/Categories',	'index.php?option=com_categories&view=categories&extension=com_banners',	'component',	1,	2,	2,	5,	NULL,	NULL,	0,	0,	'class:banners-cat',	0,	'',	4,	5,	0,	'*',	1,	NULL,	NULL),
(5,	'main',	'com_banners_clients',	'Clients',	'',	'Banners/Clients',	'index.php?option=com_banners&view=clients',	'component',	1,	2,	2,	3,	NULL,	NULL,	0,	0,	'class:banners-clients',	0,	'',	6,	7,	0,	'*',	1,	NULL,	NULL),
(6,	'main',	'com_banners_tracks',	'Tracks',	'',	'Banners/Tracks',	'index.php?option=com_banners&view=tracks',	'component',	1,	2,	2,	3,	NULL,	NULL,	0,	0,	'class:banners-tracks',	0,	'',	8,	9,	0,	'*',	1,	NULL,	NULL),
(7,	'main',	'com_contact',	'Contacts',	'',	'Contacts',	'index.php?option=com_contact',	'component',	1,	1,	1,	7,	NULL,	NULL,	0,	0,	'class:address-book',	0,	'',	11,	20,	0,	'*',	1,	NULL,	NULL),
(8,	'main',	'com_contact_contacts',	'Contacts',	'',	'Contacts/Contacts',	'index.php?option=com_contact&view=contacts',	'component',	1,	7,	2,	7,	NULL,	NULL,	0,	0,	'class:contact',	0,	'',	12,	13,	0,	'*',	1,	NULL,	NULL),
(9,	'main',	'com_contact_categories',	'Categories',	'',	'Contacts/Categories',	'index.php?option=com_categories&view=categories&extension=com_contact',	'component',	1,	7,	2,	5,	NULL,	NULL,	0,	0,	'class:contact-cat',	0,	'',	14,	15,	0,	'*',	1,	NULL,	NULL),
(10,	'main',	'com_newsfeeds',	'News Feeds',	'',	'News Feeds',	'index.php?option=com_newsfeeds',	'component',	1,	1,	1,	16,	NULL,	NULL,	0,	0,	'class:rss',	0,	'',	23,	28,	0,	'*',	1,	NULL,	NULL),
(11,	'main',	'com_newsfeeds_feeds',	'Feeds',	'',	'News Feeds/Feeds',	'index.php?option=com_newsfeeds&view=newsfeeds',	'component',	1,	10,	2,	16,	NULL,	NULL,	0,	0,	'class:newsfeeds',	0,	'',	24,	25,	0,	'*',	1,	NULL,	NULL),
(12,	'main',	'com_newsfeeds_categories',	'Categories',	'',	'News Feeds/Categories',	'index.php?option=com_categories&view=categories&extension=com_newsfeeds',	'component',	1,	10,	2,	5,	NULL,	NULL,	0,	0,	'class:newsfeeds-cat',	0,	'',	26,	27,	0,	'*',	1,	NULL,	NULL),
(13,	'main',	'com_finder',	'Smart Search',	'',	'Smart Search',	'index.php?option=com_finder',	'component',	1,	1,	1,	23,	NULL,	NULL,	0,	0,	'class:search-plus',	0,	'',	29,	38,	0,	'*',	1,	NULL,	NULL),
(14,	'main',	'com_tags',	'Tags',	'',	'Tags',	'index.php?option=com_tags&view=tags',	'component',	1,	1,	1,	25,	NULL,	NULL,	0,	1,	'class:tags',	0,	'',	39,	40,	0,	'',	1,	NULL,	NULL),
(15,	'main',	'com_associations',	'Multilingual Associations',	'',	'Multilingual Associations',	'index.php?option=com_associations&view=associations',	'component',	1,	1,	1,	30,	NULL,	NULL,	0,	0,	'class:language',	0,	'',	21,	22,	0,	'*',	1,	NULL,	NULL),
(16,	'main',	'mod_menu_fields',	'Contact Custom Fields',	'',	'contact/Custom Fields',	'index.php?option=com_fields&context=com_contact.contact',	'component',	1,	7,	2,	29,	NULL,	NULL,	0,	0,	'class:messages-add',	0,	'',	16,	17,	0,	'*',	1,	NULL,	NULL),
(17,	'main',	'mod_menu_fields_group',	'Contact Custom Fields Group',	'',	'contact/Custom Fields Group',	'index.php?option=com_fields&view=groups&context=com_contact.contact',	'component',	1,	7,	2,	29,	NULL,	NULL,	0,	0,	'class:messages-add',	0,	'',	18,	19,	0,	'*',	1,	NULL,	NULL),
(18,	'main',	'com_finder_index',	'Smart-Search-Index',	'',	'Smart Search/Index',	'index.php?option=com_finder&view=index',	'component',	1,	13,	2,	23,	NULL,	NULL,	0,	0,	'class:finder',	0,	'',	30,	31,	0,	'*',	1,	NULL,	NULL),
(19,	'main',	'com_finder_maps',	'Smart-Search-Maps',	'',	'Smart Search/Maps',	'index.php?option=com_finder&view=maps',	'component',	1,	13,	2,	23,	NULL,	NULL,	0,	0,	'class:finder-maps',	0,	'',	32,	33,	0,	'*',	1,	NULL,	NULL),
(20,	'main',	'com_finder_filters',	'Smart-Search-Filters',	'',	'Smart Search/Filters',	'index.php?option=com_finder&view=filters',	'component',	1,	13,	2,	23,	NULL,	NULL,	0,	0,	'class:finder-filters',	0,	'',	34,	35,	0,	'*',	1,	NULL,	NULL),
(21,	'main',	'com_finder_searches',	'Smart-Search-Searches',	'',	'Smart Search/Searches',	'index.php?option=com_finder&view=searches',	'component',	1,	13,	2,	23,	NULL,	NULL,	0,	0,	'class:finder-searches',	0,	'',	36,	37,	0,	'*',	1,	NULL,	NULL),
(101,	'mainmenu',	'Home',	'home',	'',	'home',	'index.php?option=com_content&view=article&id=2',	'component',	1,	1,	1,	19,	NULL,	NULL,	0,	1,	' ',	0,	'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}',	41,	42,	1,	'*',	0,	NULL,	NULL),
(102,	'mainmenu',	'Admissions & Finance',	'admissions-finance',	'',	'admissions-finance',	'index.php?option=com_content&view=article&id=1',	'component',	1,	1,	1,	19,	NULL,	NULL,	0,	1,	' ',	0,	'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}',	43,	44,	0,	'*',	0,	NULL,	NULL),
(103,	'mainmenu',	'Academic Programmes',	'academic-programmes',	'',	'academic-programmes',	'#',	'url',	1,	1,	1,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	45,	46,	0,	'*',	0,	NULL,	NULL),
(104,	'mainmenu',	'Transfer Pathways',	'transfer-pathways',	'',	'transfer-pathways',	'#',	'url',	1,	1,	1,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	47,	48,	0,	'*',	0,	NULL,	NULL),
(105,	'mainmenu',	'Student Resources',	'student-resources',	'',	'student-resources',	'#',	'url',	1,	1,	1,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	49,	50,	0,	'*',	0,	NULL,	NULL),
(106,	'mainmenu',	'About Us',	'about-us',	'',	'about-us',	'#',	'url',	1,	1,	1,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	51,	52,	0,	'*',	0,	NULL,	NULL),
(107,	'topbar-navigation',	'Info for',	'info-for',	'',	'info-for',	'',	'heading',	1,	1,	1,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	53,	54,	0,	'*',	0,	NULL,	NULL),
(108,	'topbar-navigation',	'Quick Links',	'quick-links',	'',	'quick-links',	'',	'heading',	1,	1,	1,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	55,	56,	0,	'*',	0,	NULL,	NULL),
(109,	'topbar-navigation',	'Logins',	'logins',	'',	'logins',	'',	'heading',	1,	1,	1,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	57,	58,	0,	'*',	0,	NULL,	NULL),
(110,	'footer',	'Contact',	'contact',	'',	'contact',	'',	'heading',	1,	1,	1,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	59,	68,	0,	'*',	0,	NULL,	NULL),
(111,	'footer',	'Content',	'content',	'',	'content',	'',	'heading',	1,	1,	1,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	69,	80,	0,	'*',	0,	NULL,	NULL),
(112,	'footer',	'Support Bermuda College',	'support-bermuda-college',	'',	'support-bermuda-college',	'',	'heading',	1,	1,	1,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	81,	90,	0,	'*',	0,	NULL,	NULL),
(113,	'footer',	'Out Commitment to You',	'out-commitment-to-you',	'',	'out-commitment-to-you',	'',	'heading',	1,	1,	1,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	91,	102,	0,	'*',	0,	NULL,	NULL),
(114,	'footer',	'Compliance',	'compliance',	'',	'compliance',	'',	'heading',	1,	1,	1,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	103,	114,	0,	'*',	0,	NULL,	NULL),
(115,	'footer',	'Address',	'address',	'',	'contact/address',	'',	'separator',	1,	110,	2,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	60,	61,	0,	'*',	0,	NULL,	NULL),
(116,	'footer',	'Email',	'email',	'',	'contact/email',	'#',	'url',	1,	110,	2,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	62,	63,	0,	'*',	0,	NULL,	NULL),
(117,	'footer',	'Phone',	'phone',	'',	'contact/phone',	'#',	'url',	1,	110,	2,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	64,	65,	0,	'*',	0,	NULL,	NULL),
(118,	'footer',	'Contact Form',	'contact-form',	'',	'contact/contact-form',	'#',	'url',	1,	110,	2,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	66,	67,	0,	'*',	0,	NULL,	NULL),
(119,	'footer',	'Admissions & Finance',	'admissions-finance',	'',	'content/admissions-finance',	'#',	'url',	1,	111,	2,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	70,	71,	0,	'*',	0,	NULL,	NULL),
(120,	'footer',	'Programmes',	'programmes',	'',	'content/programmes',	'#',	'url',	1,	111,	2,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	72,	73,	0,	'*',	0,	NULL,	NULL),
(121,	'footer',	'Transfer Pathways',	'transfer-pathways',	'',	'content/transfer-pathways',	'#',	'url',	1,	111,	2,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	74,	75,	0,	'*',	0,	NULL,	NULL),
(122,	'footer',	'Student Resources',	'student-resources',	'',	'content/student-resources',	'#',	'url',	1,	111,	2,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	76,	77,	0,	'*',	0,	NULL,	NULL),
(123,	'footer',	'About Us',	'about-us',	'',	'content/about-us',	'#',	'url',	1,	111,	2,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	78,	79,	0,	'*',	0,	NULL,	NULL),
(124,	'footer',	'Alumni',	'alumni',	'',	'support-bermuda-college/alumni',	'#',	'url',	1,	112,	2,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	82,	83,	0,	'*',	0,	NULL,	NULL),
(125,	'footer',	'Community Outreach',	'community-outreach',	'',	'support-bermuda-college/community-outreach',	'#',	'url',	1,	112,	2,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	84,	85,	0,	'*',	0,	NULL,	NULL),
(126,	'footer',	'BC Foundation',	'bc-foundation',	'',	'support-bermuda-college/bc-foundation',	'#',	'url',	1,	112,	2,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	86,	87,	0,	'*',	0,	NULL,	NULL),
(127,	'footer',	'Donate',	'donate',	'',	'support-bermuda-college/donate',	'#',	'url',	1,	112,	2,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"donate-button\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	88,	89,	0,	'*',	0,	NULL,	NULL),
(128,	'footer',	'Affirmative Action & Equal Opportunity',	'affirmative-action-equal-opportunity',	'',	'out-commitment-to-you/affirmative-action-equal-opportunity',	'#',	'url',	1,	113,	2,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	92,	93,	0,	'*',	0,	NULL,	NULL),
(129,	'footer',	'Emergency Alerts & Procedures',	'emergency-alerts-procedures',	'',	'out-commitment-to-you/emergency-alerts-procedures',	'#',	'url',	1,	113,	2,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	94,	95,	0,	'*',	0,	NULL,	NULL),
(130,	'footer',	'Equity, Diversity & Inclusion',	'equity-diversity-inclusion',	'',	'out-commitment-to-you/equity-diversity-inclusion',	'#',	'url',	1,	113,	2,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	96,	97,	0,	'*',	0,	NULL,	NULL),
(131,	'footer',	'College Policies & Procedures',	'college-policies-procedures',	'',	'out-commitment-to-you/college-policies-procedures',	'#',	'url',	1,	113,	2,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	98,	99,	0,	'*',	0,	NULL,	NULL),
(132,	'footer',	'Public Records',	'public-records',	'',	'out-commitment-to-you/public-records',	'#',	'url',	1,	113,	2,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	100,	101,	0,	'*',	0,	NULL,	NULL),
(133,	'footer',	'Accessibility & ADA',	'accessibility-ada',	'',	'compliance/accessibility-ada',	'#',	'url',	1,	114,	2,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	104,	105,	0,	'*',	0,	NULL,	NULL),
(134,	'footer',	'Incident Reports',	'incident-reports',	'',	'compliance/incident-reports',	'#',	'url',	1,	114,	2,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	106,	107,	0,	'*',	0,	NULL,	NULL),
(135,	'footer',	'Non-Discrimination',	'non-discrimination',	'',	'compliance/non-discrimination',	'#',	'url',	1,	114,	2,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	108,	109,	0,	'*',	0,	NULL,	NULL),
(136,	'footer',	'Grievance Resolution',	'grievance-resolution',	'',	'compliance/grievance-resolution',	'#',	'url',	1,	114,	2,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	110,	111,	0,	'*',	0,	NULL,	NULL),
(137,	'footer',	'Suggestion Box',	'suggestion-box',	'',	'compliance/suggestion-box',	'#',	'url',	1,	114,	2,	0,	NULL,	NULL,	0,	1,	' ',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',	112,	113,	0,	'*',	0,	NULL,	NULL);

DROP TABLE IF EXISTS `n8am2_menu_types`;
CREATE TABLE `n8am2_menu_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`, `ordering`) VALUES
(1,	0,	'mainmenu',	'Main Menu',	'The main menu for the site',	0,	1),
(2,	100,	'topbar-navigation',	'Top Bar Navigation',	'Top Bar Navigation for Quick links etc...',	0,	0),
(3,	101,	'footer',	'Footer Menu',	'',	0,	0);

DROP TABLE IF EXISTS `n8am2_messages`;
CREATE TABLE `n8am2_messages` (
  `message_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int unsigned NOT NULL DEFAULT '0',
  `user_id_to` int unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `priority` tinyint unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `n8am2_messages_cfg`;
CREATE TABLE `n8am2_messages_cfg` (
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `n8am2_modules`;
CREATE TABLE `n8am2_modules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci,
  `ordering` int NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1,	39,	'Main Menu',	'',	'',	1,	'sidebar-right',	NULL,	NULL,	NULL,	NULL,	1,	'mod_menu',	1,	1,	'{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',	0,	'*'),
(2,	40,	'Login',	'',	'',	1,	'login',	NULL,	NULL,	NULL,	NULL,	1,	'mod_login',	1,	1,	'',	1,	'*'),
(3,	41,	'Popular Articles',	'',	'',	6,	'cpanel',	NULL,	NULL,	NULL,	NULL,	1,	'mod_popular',	3,	1,	'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',	1,	'*'),
(4,	42,	'Recently Added Articles',	'',	'',	4,	'cpanel',	NULL,	NULL,	NULL,	NULL,	1,	'mod_latest',	3,	1,	'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',	1,	'*'),
(8,	43,	'Toolbar',	'',	'',	1,	'toolbar',	NULL,	NULL,	NULL,	NULL,	1,	'mod_toolbar',	3,	1,	'',	1,	'*'),
(9,	44,	'Notifications',	'',	'',	3,	'icon',	NULL,	NULL,	NULL,	NULL,	1,	'mod_quickicon',	3,	1,	'{\"context\":\"update_quickicon\",\"header_icon\":\"icon-sync\",\"show_jupdate\":\"1\",\"show_eupdate\":\"1\",\"show_oupdate\":\"1\",\"show_privacy\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',	1,	'*'),
(10,	45,	'Logged-in Users',	'',	'',	2,	'cpanel',	NULL,	NULL,	NULL,	NULL,	1,	'mod_logged',	3,	1,	'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',	1,	'*'),
(12,	46,	'Admin Menu',	'',	'',	1,	'menu',	NULL,	NULL,	NULL,	NULL,	1,	'mod_menu',	3,	1,	'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',	1,	'*'),
(15,	49,	'Title',	'',	'',	1,	'title',	NULL,	NULL,	NULL,	NULL,	1,	'mod_title',	3,	1,	'',	1,	'*'),
(16,	50,	'Login Form',	'',	'',	7,	'sidebar-right',	NULL,	NULL,	NULL,	NULL,	1,	'mod_login',	1,	1,	'{\"greeting\":\"1\",\"name\":\"0\"}',	0,	'*'),
(17,	51,	'Breadcrumbs',	'',	'',	1,	'breadcrumbs',	NULL,	NULL,	NULL,	NULL,	1,	'mod_breadcrumbs',	1,	1,	'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}',	0,	'*'),
(79,	52,	'Multilanguage status',	'',	'',	2,	'status',	NULL,	NULL,	NULL,	NULL,	1,	'mod_multilangstatus',	3,	1,	'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',	1,	'*'),
(86,	53,	'Joomla Version',	'',	'',	1,	'status',	NULL,	NULL,	NULL,	NULL,	1,	'mod_version',	3,	1,	'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',	1,	'*'),
(87,	55,	'Sample Data',	'',	'',	1,	'cpanel',	NULL,	NULL,	NULL,	NULL,	1,	'mod_sampledata',	6,	1,	'{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',	1,	'*'),
(88,	67,	'Latest Actions',	'',	'',	3,	'cpanel',	NULL,	NULL,	NULL,	NULL,	1,	'mod_latestactions',	6,	1,	'{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',	1,	'*'),
(89,	68,	'Privacy Dashboard',	'',	'',	5,	'cpanel',	NULL,	NULL,	NULL,	NULL,	1,	'mod_privacy_dashboard',	6,	1,	'{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',	1,	'*'),
(90,	89,	'Login Support',	'',	'',	1,	'sidebar',	NULL,	NULL,	NULL,	NULL,	1,	'mod_loginsupport',	1,	1,	'{\"forum_url\":\"https://forum.joomla.org/\",\"documentation_url\":\"https://docs.joomla.org/\",\"news_url\":\"https://www.joomla.org/announcements.html\",\"automatic_title\":1,\"prepare_content\":1,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	1,	'*'),
(91,	72,	'System Dashboard',	'',	'',	1,	'cpanel-system',	NULL,	NULL,	NULL,	NULL,	1,	'mod_submenu',	1,	0,	'{\"menutype\":\"*\",\"preset\":\"system\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',	1,	'*'),
(92,	73,	'Content Dashboard',	'',	'',	1,	'cpanel-content',	NULL,	NULL,	NULL,	NULL,	1,	'mod_submenu',	1,	0,	'{\"menutype\":\"*\",\"preset\":\"content\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',	1,	'*'),
(93,	74,	'Menus Dashboard',	'',	'',	1,	'cpanel-menus',	NULL,	NULL,	NULL,	NULL,	1,	'mod_submenu',	1,	0,	'{\"menutype\":\"*\",\"preset\":\"menus\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',	1,	'*'),
(94,	75,	'Components Dashboard',	'',	'',	1,	'cpanel-components',	NULL,	NULL,	NULL,	NULL,	1,	'mod_submenu',	1,	0,	'{\"menutype\":\"*\",\"preset\":\"components\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',	1,	'*'),
(95,	76,	'Users Dashboard',	'',	'',	1,	'cpanel-users',	NULL,	NULL,	NULL,	NULL,	1,	'mod_submenu',	1,	0,	'{\"menutype\":\"*\",\"preset\":\"users\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',	1,	'*'),
(96,	86,	'Popular Articles',	'',	'',	3,	'cpanel-content',	NULL,	NULL,	NULL,	NULL,	1,	'mod_popular',	3,	1,	'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',	1,	'*'),
(97,	87,	'Recently Added Articles',	'',	'',	4,	'cpanel-content',	NULL,	NULL,	NULL,	NULL,	1,	'mod_latest',	3,	1,	'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',	1,	'*'),
(98,	88,	'Logged-in Users',	'',	'',	2,	'cpanel-users',	NULL,	NULL,	NULL,	NULL,	1,	'mod_logged',	3,	1,	'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',	1,	'*'),
(99,	77,	'Frontend Link',	'',	'',	5,	'status',	NULL,	NULL,	NULL,	NULL,	1,	'mod_frontend',	1,	1,	'',	1,	'*'),
(100,	78,	'Messages',	'',	'',	4,	'status',	NULL,	NULL,	NULL,	NULL,	1,	'mod_messages',	3,	1,	'',	1,	'*'),
(101,	79,	'Post Install Messages',	'',	'',	3,	'status',	NULL,	NULL,	NULL,	NULL,	1,	'mod_post_installation_messages',	3,	1,	'',	1,	'*'),
(102,	80,	'User Status',	'',	'',	6,	'status',	NULL,	NULL,	NULL,	NULL,	1,	'mod_user',	3,	1,	'',	1,	'*'),
(103,	70,	'Site',	'',	'',	1,	'icon',	NULL,	NULL,	NULL,	NULL,	1,	'mod_quickicon',	1,	1,	'{\"context\":\"site_quickicon\",\"header_icon\":\"icon-desktop\",\"show_users\":\"1\",\"show_articles\":\"1\",\"show_categories\":\"1\",\"show_media\":\"1\",\"show_menuItems\":\"1\",\"show_modules\":\"1\",\"show_plugins\":\"1\",\"show_templates\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',	1,	'*'),
(104,	71,	'System',	'',	'',	2,	'icon',	NULL,	NULL,	NULL,	NULL,	1,	'mod_quickicon',	1,	1,	'{\"context\":\"system_quickicon\",\"header_icon\":\"icon-wrench\",\"show_global\":\"1\",\"show_checkin\":\"1\",\"show_cache\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',	1,	'*'),
(105,	82,	'3rd Party',	'',	'',	4,	'icon',	NULL,	NULL,	NULL,	NULL,	1,	'mod_quickicon',	1,	1,	'{\"context\":\"mod_quickicon\",\"header_icon\":\"icon-boxes\",\"load_plugins\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',	1,	'*'),
(106,	83,	'Help Dashboard',	'',	'',	1,	'cpanel-help',	NULL,	NULL,	NULL,	NULL,	1,	'mod_submenu',	1,	0,	'{\"menutype\":\"*\",\"preset\":\"help\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"style\":\"System-none\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',	1,	'*'),
(107,	84,	'Privacy Requests',	'',	'',	1,	'cpanel-privacy',	NULL,	NULL,	NULL,	NULL,	1,	'mod_privacy_dashboard',	1,	1,	'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',	1,	'*'),
(108,	85,	'Privacy Status',	'',	'',	1,	'cpanel-privacy',	NULL,	NULL,	NULL,	NULL,	1,	'mod_privacy_status',	1,	1,	'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',	1,	'*'),
(109,	96,	'Guided Tours',	'',	'',	1,	'status',	NULL,	NULL,	NULL,	NULL,	1,	'mod_guidedtours',	1,	1,	'',	1,	'*');

DROP TABLE IF EXISTS `n8am2_modules_menu`;
CREATE TABLE `n8am2_modules_menu` (
  `moduleid` int NOT NULL DEFAULT '0',
  `menuid` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_modules_menu` (`moduleid`, `menuid`) VALUES
(1,	0),
(2,	0),
(3,	0),
(4,	0),
(6,	0),
(7,	0),
(8,	0),
(9,	0),
(10,	0),
(12,	0),
(14,	0),
(15,	0),
(16,	0),
(17,	0),
(79,	0),
(86,	0),
(87,	0),
(88,	0),
(89,	0),
(90,	0),
(91,	0),
(92,	0),
(93,	0),
(94,	0),
(95,	0),
(96,	0),
(97,	0),
(98,	0),
(99,	0),
(100,	0),
(101,	0),
(102,	0),
(103,	0),
(104,	0),
(105,	0),
(106,	0),
(107,	0),
(108,	0),
(109,	0);

DROP TABLE IF EXISTS `n8am2_newsfeeds`;
CREATE TABLE `n8am2_newsfeeds` (
  `catid` int NOT NULL DEFAULT '0',
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint NOT NULL DEFAULT '0',
  `numarticles` int unsigned NOT NULL DEFAULT '1',
  `cache_time` int unsigned NOT NULL DEFAULT '3600',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `rtl` tinyint NOT NULL DEFAULT '0',
  `access` int unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int unsigned NOT NULL DEFAULT '1',
  `hits` int unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `n8am2_overrider`;
CREATE TABLE `n8am2_overrider` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `n8am2_postinstall_messages`;
CREATE TABLE `n8am2_postinstall_messages` (
  `postinstall_message_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1,	241,	'COM_CPANEL_WELCOME_BEGINNERS_TITLE',	'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE',	'',	'com_cpanel',	1,	'message',	'',	'',	'',	'',	'3.2.0',	0),
(2,	241,	'COM_CPANEL_MSG_STATS_COLLECTION_TITLE',	'COM_CPANEL_MSG_STATS_COLLECTION_BODY',	'',	'com_cpanel',	1,	'message',	'',	'',	'admin://components/com_admin/postinstall/statscollection.php',	'admin_postinstall_statscollection_condition',	'3.5.0',	0),
(3,	241,	'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_TITLE',	'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_BODY',	'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_ACTION',	'plg_system_httpheaders',	1,	'action',	'site://plugins/system/httpheaders/postinstall/introduction.php',	'httpheaders_postinstall_action',	'site://plugins/system/httpheaders/postinstall/introduction.php',	'httpheaders_postinstall_condition',	'4.0.0',	0),
(4,	241,	'COM_USERS_POSTINSTALL_MULTIFACTORAUTH_TITLE',	'COM_USERS_POSTINSTALL_MULTIFACTORAUTH_BODY',	'COM_USERS_POSTINSTALL_MULTIFACTORAUTH_ACTION',	'com_users',	1,	'action',	'admin://components/com_users/postinstall/multifactorauth.php',	'com_users_postinstall_mfa_action',	'admin://components/com_users/postinstall/multifactorauth.php',	'com_users_postinstall_mfa_condition',	'4.2.0',	0);

DROP TABLE IF EXISTS `n8am2_privacy_consents`;
CREATE TABLE `n8am2_privacy_consents` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `state` int NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remind` tinyint NOT NULL DEFAULT '0',
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `n8am2_privacy_requests`;
CREATE TABLE `n8am2_privacy_requests` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `request_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `n8am2_redirect_links`;
CREATE TABLE `n8am2_redirect_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int unsigned NOT NULL DEFAULT '0',
  `published` tinyint NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `header` smallint NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modified` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `n8am2_scheduler_logs`;
CREATE TABLE `n8am2_scheduler_logs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `taskname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tasktype` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'unique identifier for job defined by plugin',
  `duration` decimal(5,3) NOT NULL,
  `jobid` int unsigned NOT NULL,
  `taskid` int unsigned NOT NULL,
  `exitcode` int NOT NULL,
  `lastdate` datetime DEFAULT NULL COMMENT 'Timestamp of last run',
  `nextdate` datetime DEFAULT NULL COMMENT 'Timestamp of next (planned) run, referred for execution on trigger',
  PRIMARY KEY (`id`),
  KEY `idx_taskname` (`taskname`),
  KEY `idx_tasktype` (`tasktype`),
  KEY `idx_lastdate` (`lastdate`),
  KEY `idx_nextdate` (`nextdate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_scheduler_logs` (`id`, `taskname`, `tasktype`, `duration`, `jobid`, `taskid`, `exitcode`, `lastdate`, `nextdate`) VALUES
(1,	'Session GC',	'Session Data Purge',	0.000,	2,	1,	0,	'2025-06-16 06:18:16',	'2025-06-17 06:18:16'),
(2,	'Update Notification',	'Joomla! Update Notification',	0.420,	3,	1,	0,	'2025-06-17 04:50:57',	'2025-06-18 04:50:58'),
(3,	'Session GC',	'Session Data Purge',	0.000,	2,	2,	0,	'2025-06-21 10:54:02',	'2025-06-22 10:54:02'),
(4,	'Update Notification',	'Joomla! Update Notification',	0.444,	3,	2,	0,	'2025-06-24 13:56:02',	'2025-06-25 13:56:02'),
(5,	'Session GC',	'Session Data Purge',	0.000,	2,	3,	0,	'2025-06-24 13:56:03',	'2025-06-25 13:56:03'),
(6,	'Update Notification',	'Joomla! Update Notification',	0.442,	3,	3,	0,	'2025-06-25 19:14:25',	'2025-06-26 19:14:25'),
(7,	'Session GC',	'Session Data Purge',	0.000,	2,	4,	0,	'2025-06-25 19:14:26',	'2025-06-26 19:14:26'),
(8,	'Update Notification',	'Joomla! Update Notification',	0.501,	3,	4,	0,	'2025-06-27 16:24:18',	'2025-06-28 16:24:19'),
(9,	'Session GC',	'Session Data Purge',	0.000,	2,	5,	0,	'2025-06-27 16:24:26',	'2025-06-28 16:24:26'),
(10,	'Update Notification',	'Joomla! Update Notification',	0.274,	3,	5,	0,	'2025-06-30 05:38:33',	'2025-07-01 05:38:34'),
(11,	'Session GC',	'Session Data Purge',	0.000,	2,	6,	0,	'2025-07-06 02:43:03',	'2025-07-07 02:43:03'),
(12,	'Update Notification',	'Joomla! Update Notification',	0.437,	3,	6,	0,	'2025-07-07 03:51:50',	'2025-07-08 03:51:50'),
(13,	'Session GC',	'Session Data Purge',	0.000,	2,	7,	0,	'2025-07-13 02:56:07',	'2025-07-14 02:56:07'),
(14,	'Update Notification',	'Joomla! Update Notification',	0.327,	3,	7,	0,	'2025-07-14 11:45:12',	'2025-07-15 11:45:12'),
(15,	'Rotate Logs',	'Rotate Logs',	0.001,	1,	1,	0,	'2025-07-14 11:45:57',	'2025-08-13 23:00:00'),
(16,	'Session GC',	'Session Data Purge',	0.000,	2,	8,	0,	'2025-07-14 11:47:06',	'2025-07-15 11:47:06'),
(17,	'Update Notification',	'Joomla! Update Notification',	0.530,	3,	8,	0,	'2025-07-15 19:02:55',	'2025-07-16 19:02:55'),
(18,	'Session GC',	'Session Data Purge',	0.000,	2,	9,	0,	'2025-07-15 19:03:24',	'2025-07-16 19:03:24'),
(19,	'Update Notification',	'Joomla! Update Notification',	0.507,	3,	9,	0,	'2025-07-18 07:42:51',	'2025-07-19 07:42:52'),
(20,	'Session GC',	'Session Data Purge',	0.000,	2,	10,	0,	'2025-07-18 09:44:22',	'2025-07-19 09:44:22'),
(21,	'Update Notification',	'Joomla! Update Notification',	0.549,	3,	10,	0,	'2025-07-21 04:37:01',	'2025-07-22 04:37:01'),
(22,	'Session GC',	'Session Data Purge',	0.000,	2,	11,	0,	'2025-07-21 04:40:20',	'2025-07-22 04:40:20'),
(23,	'Update Notification',	'Joomla! Update Notification',	0.422,	3,	11,	0,	'2025-07-22 05:13:26',	'2025-07-23 05:13:26'),
(24,	'Session GC',	'Session Data Purge',	0.000,	2,	12,	0,	'2025-07-22 05:13:52',	'2025-07-23 05:13:52'),
(25,	'Update Notification',	'Joomla! Update Notification',	0.460,	3,	12,	0,	'2025-07-23 08:20:32',	'2025-07-24 08:20:32'),
(26,	'Session GC',	'Session Data Purge',	0.000,	2,	13,	0,	'2025-07-23 08:20:44',	'2025-07-24 08:20:44'),
(27,	'Update Notification',	'Joomla! Update Notification',	0.304,	3,	13,	0,	'2025-07-24 09:47:55',	'2025-07-25 09:47:56'),
(28,	'Session GC',	'Session Data Purge',	0.000,	2,	14,	0,	'2025-07-24 09:52:56',	'2025-07-25 09:52:56'),
(29,	'Update Notification',	'Joomla! Update Notification',	0.368,	3,	14,	0,	'2025-07-25 10:06:39',	'2025-07-26 10:06:40'),
(30,	'Session GC',	'Session Data Purge',	0.000,	2,	15,	0,	'2025-07-25 10:06:46',	'2025-07-26 10:06:46');

DROP TABLE IF EXISTS `n8am2_scheduler_tasks`;
CREATE TABLE `n8am2_scheduler_tasks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'unique identifier for job defined by plugin',
  `execution_rules` text COLLATE utf8mb4_unicode_ci COMMENT 'Execution Rules, Unprocessed',
  `cron_rules` text COLLATE utf8mb4_unicode_ci COMMENT 'Processed execution rules, crontab-like JSON form',
  `state` tinyint NOT NULL DEFAULT '0',
  `last_exit_code` int NOT NULL DEFAULT '0' COMMENT 'Exit code when job was last run',
  `last_execution` datetime DEFAULT NULL COMMENT 'Timestamp of last run',
  `next_execution` datetime DEFAULT NULL COMMENT 'Timestamp of next (planned) run, referred for execution on trigger',
  `times_executed` int DEFAULT '0' COMMENT 'Count of successful triggers',
  `times_failed` int DEFAULT '0' COMMENT 'Count of failures',
  `locked` datetime DEFAULT NULL,
  `priority` smallint NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0' COMMENT 'Configurable list ordering',
  `cli_exclusive` smallint NOT NULL DEFAULT '0' COMMENT 'If 1, the task is only accessible via CLI',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created` datetime NOT NULL,
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_type` (`type`),
  KEY `idx_state` (`state`),
  KEY `idx_last_exit` (`last_exit_code`),
  KEY `idx_next_exec` (`next_execution`),
  KEY `idx_locked` (`locked`),
  KEY `idx_priority` (`priority`),
  KEY `idx_cli_exclusive` (`cli_exclusive`),
  KEY `idx_checked_out` (`checked_out`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_scheduler_tasks` (`id`, `asset_id`, `title`, `type`, `execution_rules`, `cron_rules`, `state`, `last_exit_code`, `last_execution`, `next_execution`, `times_executed`, `times_failed`, `locked`, `priority`, `ordering`, `cli_exclusive`, `params`, `note`, `created`, `created_by`, `checked_out`, `checked_out_time`) VALUES
(1,	97,	'Rotate Logs',	'rotation.logs',	'{\"rule-type\":\"interval-days\",\"interval-days\":\"30\",\"exec-day\":\"11\",\"exec-time\":\"23:00\"}',	'{\"type\":\"interval\",\"exp\":\"P30D\"}',	1,	0,	'2025-07-14 11:45:57',	'2025-08-13 23:00:00',	1,	0,	NULL,	0,	0,	0,	'{\"individual_log\":false,\"log_file\":\"\",\"notifications\":{\"success_mail\":\"0\",\"failure_mail\":\"1\",\"fatal_failure_mail\":\"1\",\"orphan_mail\":\"1\"},\"logstokeep\":1}',	NULL,	'2025-06-11 23:02:00',	1,	NULL,	NULL),
(2,	98,	'Session GC',	'session.gc',	'{\"rule-type\":\"interval-hours\",\"interval-hours\":\"24\",\"exec-day\":\"01\",\"exec-time\":\"23:00\"}',	'{\"type\":\"interval\",\"exp\":\"PT24H\"}',	1,	0,	'2025-07-25 10:06:46',	'2025-07-26 10:06:46',	15,	0,	NULL,	0,	0,	0,	'{\"individual_log\":false,\"log_file\":\"\",\"notifications\":{\"success_mail\":\"0\",\"failure_mail\":\"1\",\"fatal_failure_mail\":\"1\",\"orphan_mail\":\"1\"},\"enable_session_gc\":1,\"enable_session_metadata_gc\":1}',	NULL,	'2025-06-11 23:02:00',	1,	NULL,	NULL),
(3,	99,	'Update Notification',	'update.notification',	'{\"rule-type\":\"interval-hours\",\"interval-hours\":\"24\",\"exec-day\":\"01\",\"exec-time\":\"23:00\"}',	'{\"type\":\"interval\",\"exp\":\"PT24H\"}',	1,	0,	'2025-07-25 10:06:39',	'2025-07-26 10:06:40',	14,	0,	NULL,	0,	0,	0,	'{\"individual_log\":false,\"log_file\":\"\",\"notifications\":{\"success_mail\":\"0\",\"failure_mail\":\"1\",\"fatal_failure_mail\":\"1\",\"orphan_mail\":\"1\"},\"email\":\"\",\"language_override\":\"\"}',	NULL,	'2025-06-11 23:02:00',	1,	NULL,	NULL);

DROP TABLE IF EXISTS `n8am2_schemaorg`;
CREATE TABLE `n8am2_schemaorg` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `itemId` int unsigned DEFAULT NULL,
  `context` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schemaType` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `n8am2_schemas`;
CREATE TABLE `n8am2_schemas` (
  `extension_id` int NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_schemas` (`extension_id`, `version_id`) VALUES
(241,	'5.3.0-2025-03-14');

DROP TABLE IF EXISTS `n8am2_session`;
CREATE TABLE `n8am2_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint unsigned DEFAULT NULL,
  `guest` tinyint unsigned DEFAULT '1',
  `time` int NOT NULL DEFAULT '0',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`),
  KEY `client_id_guest` (`client_id`,`guest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
(UNHEX('30363731646237386E6C67636F7364746D6D38696834726D6C67'),	0,	1,	1753449445,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjEyO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTc1MzQ0MDE1MjtzOjQ6Imxhc3QiO2k6MTc1MzQ0ODYwNTtzOjM6Im5vdyI7aToxNzUzNDQ5NDQ1O31zOjU6InRva2VuIjtzOjMyOiIwYjdmMjgxOGFkZjYwOGFhYjgwMzc5OTRhMDVhYWE4YiI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czoxMjoiACoAc2VwYXJhdG9yIjtzOjE6Ii4iO30=\";',	0,	''),
(UNHEX('30623276616338766C336730693976696676676264656B666B67'),	1,	0,	1753439240,	'joomla|s:776:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjQ6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjg7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDM5MTg2O3M6NDoibGFzdCI7aToxNzUzNDM5MjM1O3M6Mzoibm93IjtpOjE3NTM0MzkyNDA7fXM6NToidG9rZW4iO3M6MzI6IjYwY2MzZDU1NmNjNDg3ZTZkMTdmZGZlOTRiOGEzYTIyIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTozO31zOjk6ImNvbV91c2VycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czoxMToibWZhX2NoZWNrZWQiO2k6MTt9fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czoxMjoiACoAc2VwYXJhdG9yIjtzOjE6Ii4iO30=\";',	3,	'web.dev'),
(UNHEX('307068346864626776716B717561747261627371393765317575'),	NULL,	1,	1753460462,	'joomla|s:416:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDYwNDYyO3M6NDoibGFzdCI7aToxNzUzNDYwNDYyO3M6Mzoibm93IjtpOjE3NTM0NjA0NjI7fXM6NToidG9rZW4iO3M6MzI6IjQ5NWQ5ZGE5N2VmODJjZGY5ZDE2MTZmYWE3MDUzYzhlIjt9fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czoxMjoiACoAc2VwYXJhdG9yIjtzOjE6Ii4iO30=\";',	0,	''),
(UNHEX('30756D6F71706C676331356737646B76666C6F6D353632636139'),	0,	1,	1753457751,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDU3NzUxO3M6NDoibGFzdCI7aToxNzUzNDU3NzUxO3M6Mzoibm93IjtpOjE3NTM0NTc3NTE7fXM6NToidG9rZW4iO3M6MzI6Ijc4YTVkMzlkYzE1ODNhYzAyNzkwZTU1Y2Y2M2E2NTMwIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('31326B6A6F6E68756F6C746466673370306138636B30716C6C33'),	0,	1,	1753454332,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDU0MTg5O3M6NDoibGFzdCI7aToxNzUzNDU0MTg5O3M6Mzoibm93IjtpOjE3NTM0NTQzMzI7fXM6NToidG9rZW4iO3M6MzI6ImY5MjM5MGI0NGFhZWMxNGZhNzI2N2E4NTRlOGRmZGYxIjtzOjc6ImNvdW50ZXIiO2k6MTt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('313571376575316B75647370366372627337726431733075656F'),	0,	1,	1753461853,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDYxODUzO3M6NDoibGFzdCI7aToxNzUzNDYxODUzO3M6Mzoibm93IjtpOjE3NTM0NjE4NTM7fXM6NToidG9rZW4iO3M6MzI6IjVkZTdhZjM2ZGIxNmNmYzE5OWEzMGFkYmJjMWNlODJiIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('3172716A743061716D31706670353876336839766F6862747434'),	0,	1,	1753439552,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDM5NTUyO3M6NDoibGFzdCI7aToxNzUzNDM5NTUyO3M6Mzoibm93IjtpOjE3NTM0Mzk1NTI7fXM6NToidG9rZW4iO3M6MzI6ImMyMmNjMDA2MzdiZDI0NTg1NGJiMzIxZDcwZTEzMmE2Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('32386D6F613474366167676A633134386B7167376F3276316971'),	0,	1,	1753461365,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDYxMzY1O3M6NDoibGFzdCI7aToxNzUzNDYxMzY1O3M6Mzoibm93IjtpOjE3NTM0NjEzNjU7fXM6NToidG9rZW4iO3M6MzI6ImM2NGJmMTliNzA4NTgxNzk4ZTUzZTYxNTAyMmMxNWE1Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('32766562703333357162676F666674347362346A353869713133'),	0,	1,	1753440326,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDQwMzI2O3M6NDoibGFzdCI7aToxNzUzNDQwMzI2O3M6Mzoibm93IjtpOjE3NTM0NDAzMjY7fXM6NToidG9rZW4iO3M6MzI6IjliMjc0YzU1Yzg2ZDk2NGI1YTE4MGU3OGM2YmEwNzIzIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('347570306835377570666A6E62333562746E7370623867747633'),	0,	1,	1753448262,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDQ4MjYyO3M6NDoibGFzdCI7aToxNzUzNDQ4MjYyO3M6Mzoibm93IjtpOjE3NTM0NDgyNjI7fXM6NToidG9rZW4iO3M6MzI6IjI1N2I0NzMwZGVmOGYzZTJhYzlhNDE1MzA4MTYwZDFjIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('3538336B34616568337071726864376D6436396F6A726939656C'),	0,	1,	1753454661,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDU0NjYxO3M6NDoibGFzdCI7aToxNzUzNDU0NjYxO3M6Mzoibm93IjtpOjE3NTM0NTQ2NjE7fXM6NToidG9rZW4iO3M6MzI6ImRmMTNkNjA4ZjQwMzNjZDU3MjVkNTNkZmIzOWI2NzQxIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('356E32713136753931666163307139633430706D376866646C37'),	0,	1,	1753459846,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDU5ODQ2O3M6NDoibGFzdCI7aToxNzUzNDU5ODQ2O3M6Mzoibm93IjtpOjE3NTM0NTk4NDY7fXM6NToidG9rZW4iO3M6MzI6IjI4ZjVmMDI4ZDhhZmZkNzNjMTU4YjIwZmY4MDMxNDQ1Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('37627164683933387332767332746B3566633034667064723237'),	1,	0,	1753458802,	'joomla|s:900:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjQ6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjU2O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTc1MzQ1ODU5NztzOjQ6Imxhc3QiO2k6MTc1MzQ1ODgwMTtzOjM6Im5vdyI7aToxNzUzNDU4ODAyO31zOjU6InRva2VuIjtzOjMyOiI1MjU2MDdlMjAwYWNjYmI0YjhjODEyYTE0YWJiMDNkYyI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjEzOiJjb21faW5zdGFsbGVyIjtPOjg6InN0ZENsYXNzIjoyOntzOjc6Im1lc3NhZ2UiO3M6MDoiIjtzOjE3OiJleHRlbnNpb25fbWVzc2FnZSI7czowOiIiO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6Mzt9czo5OiJjb21fdXNlcnMiO086ODoic3RkQ2xhc3MiOjE6e3M6MTE6Im1mYV9jaGVja2VkIjtpOjE7fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9\";',	3,	'web.dev'),
(UNHEX('376A69636C70393135356C75646275306E70746E7133646C6471'),	0,	1,	1753457757,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDU3NzU3O3M6NDoibGFzdCI7aToxNzUzNDU3NzU3O3M6Mzoibm93IjtpOjE3NTM0NTc3NTc7fXM6NToidG9rZW4iO3M6MzI6ImVmN2Q3MmVmOWJlODE3ZTIzNGUxYWUyYjUzMjg2ZjU1Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('393565376D63746D307638757361666774356739676C65746F68'),	0,	1,	1753443090,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDQzMDkwO3M6NDoibGFzdCI7aToxNzUzNDQzMDkwO3M6Mzoibm93IjtpOjE3NTM0NDMwOTA7fXM6NToidG9rZW4iO3M6MzI6IjM3NTljNzhmMDU4YTNlNWU2NzZjMDVhZDNmODNjYTI5Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('393570756C366D726476396830616731766F3271697571737365'),	0,	1,	1753448196,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDQ4MTk2O3M6NDoibGFzdCI7aToxNzUzNDQ4MTk2O3M6Mzoibm93IjtpOjE3NTM0NDgxOTY7fXM6NToidG9rZW4iO3M6MzI6IjRkZjE3NWU5NmJhYjk5NjkzNWRlN2EyMzc5NDg5ZWI4Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('39746267617368753331346633376C6A6D633166346C66646762'),	0,	1,	1753446083,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDQ2MDgzO3M6NDoibGFzdCI7aToxNzUzNDQ2MDgzO3M6Mzoibm93IjtpOjE3NTM0NDYwODM7fXM6NToidG9rZW4iO3M6MzI6IjllYmNkMWRkNmRmMmY1NzU4YzUwOTE5YmRhOTQzZWE5Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('617331636F67706233633532766F37736D6A76316C6671676F31'),	0,	1,	1753459287,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDU5Mjg3O3M6NDoibGFzdCI7aToxNzUzNDU5Mjg3O3M6Mzoibm93IjtpOjE3NTM0NTkyODc7fXM6NToidG9rZW4iO3M6MzI6IjI0ZmY3MmI0OTkxNzFhNzcxMDA2MGFhMmU1NmVlNTFhIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('626767756E647065703963396A61747061716B6B313567367531'),	0,	1,	1753457818,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDU3ODE4O3M6NDoibGFzdCI7aToxNzUzNDU3ODE4O3M6Mzoibm93IjtpOjE3NTM0NTc4MTg7fXM6NToidG9rZW4iO3M6MzI6IjBlMWM0MWU4MTU2MWY1MjI0YWE4N2RkYTE5N2VmNTk3Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('6269677474336C6B706E3136676330713873377434636E753764'),	1,	0,	1753454211,	'joomla|s:8440:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjU6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDQ3ODgwO3M6NDoibGFzdCI7aToxNzUzNDU0MTMxO3M6Mzoibm93IjtpOjE3NTM0NTQyMTE7fXM6NToidG9rZW4iO3M6MzI6ImNhMGQ5OTM2ZWU5YmNkMjZhNGI3Nzk0ODNmNmFlNzhlIjtzOjc6ImNvdW50ZXIiO2k6MjI2O31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6NTp7czoxMzoiY29tX2luc3RhbGxlciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJtZXNzYWdlIjtzOjA6IiI7czoxNzoiZXh0ZW5zaW9uX21lc3NhZ2UiO3M6MDoiIjtzOjY6Im1hbmFnZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo2OiJmaWx0ZXIiO2E6MTp7czo0OiJ0eXBlIjtzOjg6InRlbXBsYXRlIjt9czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7aToyMDtzOjg6Im9yZGVyaW5nIjtzOjQ6Im5hbWUiO3M6NToic3RhcnQiO2Q6MDt9fX1zOjEzOiJjb21fdGVtcGxhdGVzIjtPOjg6InN0ZENsYXNzIjozOntzOjY6InN0eWxlcyI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo5OiJjbGllbnRfaWQiO3M6MToiMCI7czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7aToyMDtzOjg6Im9yZGVyaW5nIjtzOjEwOiJhLnRlbXBsYXRlIjtzOjU6InN0YXJ0IjtkOjA7fX1zOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NToic3R5bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7Tjt9fXM6OToidGVtcGxhdGVzIjtPOjg6InN0ZENsYXNzIjoyOntzOjk6ImNsaWVudF9pZCI7aTowO3M6NDoibGlzdCI7YTo0OntzOjk6ImRpcmVjdGlvbiI7czozOiJhc2MiO3M6NToibGltaXQiO2k6MjA7czo4OiJvcmRlcmluZyI7czo5OiJhLmVsZW1lbnQiO3M6NToic3RhcnQiO2Q6MDt9fX1zOjEwOiJjb21fY29uZmlnIjtPOjg6InN0ZENsYXNzIjoxOntzOjY6ImNvbmZpZyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJnbG9iYWwiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZGF0YSI7YToxMDM6e3M6NzoiY2FjaGluZyI7aTowO3M6MTM6ImNhY2hlX2hhbmRsZXIiO3M6NDoiZmlsZSI7czoyMDoiY2FjaGVfcGxhdGZvcm1wcmVmaXgiO2I6MDtzOjk6ImNhY2hldGltZSI7aToxNTtzOjEwOiJjYWNoZV9wYXRoIjtzOjA6IiI7czoxNzoibWVtY2FjaGVkX3BlcnNpc3QiO2I6MTtzOjE4OiJtZW1jYWNoZWRfY29tcHJlc3MiO2I6MDtzOjIxOiJtZW1jYWNoZWRfc2VydmVyX2hvc3QiO3M6OToibG9jYWxob3N0IjtzOjIxOiJtZW1jYWNoZWRfc2VydmVyX3BvcnQiO2k6MTEyMTE7czoxMzoicmVkaXNfcGVyc2lzdCI7YjoxO3M6MTc6InJlZGlzX3NlcnZlcl9ob3N0IjtzOjk6ImxvY2FsaG9zdCI7czoxNzoicmVkaXNfc2VydmVyX3BvcnQiO2k6NjM3OTtzOjE3OiJyZWRpc19zZXJ2ZXJfYXV0aCI7czowOiIiO3M6MTU6InJlZGlzX3NlcnZlcl9kYiI7aTowO3M6NjoiZGJ0eXBlIjtzOjY6Im15c3FsaSI7czo0OiJob3N0IjtzOjk6ImxvY2FsaG9zdCI7czo0OiJ1c2VyIjtzOjExOiJqb29tbGFfdXNlciI7czo4OiJwYXNzd29yZCI7czoxODoiQ2xlYXJAVjFzaW9uXkVkZ2UzIjtzOjI6ImRiIjtzOjk6Impvb21sYV9kYiI7czo4OiJkYnByZWZpeCI7czo2OiJuOGFtMl8iO3M6MTI6ImRiZW5jcnlwdGlvbiI7aTowO3M6ODoiZGJzc2xrZXkiO3M6MDoiIjtzOjk6ImRic3NsY2VydCI7czowOiIiO3M6MjE6ImRic3NsdmVyaWZ5c2VydmVyY2VydCI7YjowO3M6NzoiZGJzc2xjYSI7czowOiIiO3M6MTE6ImRic3NsY2lwaGVyIjtzOjA6IiI7czo1OiJkZWJ1ZyI7YjowO3M6MTA6ImRlYnVnX2xhbmciO2I6MDtzOjE2OiJkZWJ1Z19sYW5nX2NvbnN0IjtiOjE7czo0OiJjb3JzIjtiOjA7czoxNzoiY29yc19hbGxvd19vcmlnaW4iO3M6MToiKiI7czoxODoiY29yc19hbGxvd19oZWFkZXJzIjtzOjI3OiJDb250ZW50LVR5cGUsWC1Kb29tbGEtVG9rZW4iO3M6MTg6ImNvcnNfYWxsb3dfbWV0aG9kcyI7czowOiIiO3M6MTk6ImJlaGluZF9sb2FkYmFsYW5jZXIiO2I6MDtzOjEyOiJwcm94eV9lbmFibGUiO2I6MDtzOjEwOiJwcm94eV9ob3N0IjtzOjA6IiI7czoxMDoicHJveHlfcG9ydCI7czowOiIiO3M6MTA6InByb3h5X3VzZXIiO3M6MDoiIjtzOjY6Im9mZnNldCI7czozOiJVVEMiO3M6MTA6Im1haWxvbmxpbmUiO2I6MTtzOjExOiJtYXNzbWFpbG9mZiI7YjowO3M6ODoibWFpbGZyb20iO3M6MjA6ImcuZGFycmVsbEBjb2xsZWdlLmJtIjtzOjg6ImZyb21uYW1lIjtzOjEwOiJjb2xsZWdlLmJtIjtzOjc6InJlcGx5dG8iO3M6MDoiIjtzOjExOiJyZXBseXRvbmFtZSI7czowOiIiO3M6NjoibWFpbGVyIjtzOjQ6Im1haWwiO3M6ODoic2VuZG1haWwiO3M6MTg6Ii91c3Ivc2Jpbi9zZW5kbWFpbCI7czo4OiJzbXRwaG9zdCI7czo5OiJsb2NhbGhvc3QiO3M6ODoic210cHBvcnQiO2k6MjU7czoxMDoic210cHNlY3VyZSI7czo0OiJub25lIjtzOjg6InNtdHBhdXRoIjtiOjA7czo4OiJzbXRwdXNlciI7czowOiIiO3M6ODoic210cHBhc3MiO3M6MDoiIjtzOjg6Ik1ldGFEZXNjIjtzOjA6IiI7czo2OiJyb2JvdHMiO3M6MDoiIjtzOjEwOiJNZXRhUmlnaHRzIjtzOjA6IiI7czoxMDoiTWV0YUF1dGhvciI7YjoxO3M6MTE6Ik1ldGFWZXJzaW9uIjtiOjA7czozOiJzZWYiO2I6MTtzOjExOiJzZWZfcmV3cml0ZSI7YjowO3M6MTA6InNlZl9zdWZmaXgiO2I6MDtzOjEyOiJ1bmljb2Rlc2x1Z3MiO2I6MDtzOjE5OiJzaXRlbmFtZV9wYWdldGl0bGVzIjtpOjA7czo4OiJ0bXBfcGF0aCI7czoxNzoiL3Zhci93d3cvaHRtbC90bXAiO3M6NDoiZ3ppcCI7YjowO3M6MTU6ImVycm9yX3JlcG9ydGluZyI7czo3OiJtYXhpbXVtIjtzOjk6ImZvcmNlX3NzbCI7aTowO3M6MTU6InNlc3Npb25faGFuZGxlciI7czo4OiJkYXRhYmFzZSI7czoyMzoic2Vzc2lvbl9maWxlc3lzdGVtX3BhdGgiO3M6MDoiIjtzOjI5OiJzZXNzaW9uX21lbWNhY2hlZF9zZXJ2ZXJfaG9zdCI7czo5OiJsb2NhbGhvc3QiO3M6Mjk6InNlc3Npb25fbWVtY2FjaGVkX3NlcnZlcl9wb3J0IjtpOjExMjExO3M6MjE6InNlc3Npb25fcmVkaXNfcGVyc2lzdCI7aToxO3M6MjU6InNlc3Npb25fcmVkaXNfc2VydmVyX2hvc3QiO3M6OToibG9jYWxob3N0IjtzOjI1OiJzZXNzaW9uX3JlZGlzX3NlcnZlcl9wb3J0IjtpOjYzNzk7czoyNToic2Vzc2lvbl9yZWRpc19zZXJ2ZXJfYXV0aCI7czowOiIiO3M6MjM6InNlc3Npb25fcmVkaXNfc2VydmVyX2RiIjtpOjA7czo4OiJsaWZldGltZSI7aToxNTtzOjE0OiJzaGFyZWRfc2Vzc2lvbiI7YjowO3M6MTY6InNlc3Npb25fbWV0YWRhdGEiO2I6MTtzOjI2OiJzZXNzaW9uX21ldGFkYXRhX2Zvcl9ndWVzdCI7YjoxO3M6ODoic2l0ZW5hbWUiO3M6MTA6ImNvbGxlZ2UuYm0iO3M6Nzoib2ZmbGluZSI7YjowO3M6MjM6ImRpc3BsYXlfb2ZmbGluZV9tZXNzYWdlIjtpOjE7czoxNToib2ZmbGluZV9tZXNzYWdlIjtzOjY5OiJUaGlzIHNpdGUgaXMgZG93biBmb3IgbWFpbnRlbmFuY2UuPGJyIC8+UGxlYXNlIGNoZWNrIGJhY2sgYWdhaW4gc29vbi4iO3M6MTM6Im9mZmxpbmVfaW1hZ2UiO3M6MDoiIjtzOjEyOiJmcm9udGVkaXRpbmciO2k6MTtzOjY6ImVkaXRvciI7czo3OiJ0aW55bWNlIjtzOjc6ImNhcHRjaGEiO3M6MToiMCI7czo2OiJhY2Nlc3MiO2k6MTtzOjEwOiJsaXN0X2xpbWl0IjtpOjIwO3M6MTA6ImZlZWRfbGltaXQiO2k6MTA7czoxMDoiZmVlZF9lbWFpbCI7czo0OiJub25lIjtzOjg6ImxvZ19wYXRoIjtzOjMyOiIvdmFyL3d3dy9odG1sL2FkbWluaXN0cmF0b3IvbG9ncyI7czoxNDoibG9nX2V2ZXJ5dGhpbmciO2k6MTtzOjE0OiJsb2dfZGVwcmVjYXRlZCI7aTowO3M6MTQ6ImxvZ19wcmlvcml0aWVzIjthOjE6e2k6MDtzOjM6ImFsbCI7fXM6MTQ6ImxvZ19jYXRlZ29yaWVzIjtzOjA6IiI7czoxNzoibG9nX2NhdGVnb3J5X21vZGUiO2k6MDtzOjEzOiJjb29raWVfZG9tYWluIjtzOjA6IiI7czoxMToiY29va2llX3BhdGgiO3M6MDoiIjtzOjU6InJ1bGVzIjthOjEzOntzOjE1OiJjb3JlLmxvZ2luLnNpdGUiO2E6Mjp7aTo2O2I6MTtpOjI7YjoxO31zOjE2OiJjb3JlLmxvZ2luLmFkbWluIjthOjE6e2k6NjtiOjE7fXM6MTQ6ImNvcmUubG9naW4uYXBpIjthOjE6e2k6ODtiOjE7fXM6MTg6ImNvcmUubG9naW4ub2ZmbGluZSI7YToxOntpOjY7YjoxO31zOjEwOiJjb3JlLmFkbWluIjthOjE6e2k6ODtiOjE7fXM6MTI6ImNvcmUub3B0aW9ucyI7YTowOnt9czoxMToiY29yZS5tYW5hZ2UiO2E6MTp7aTo3O2I6MTt9czoxMToiY29yZS5jcmVhdGUiO2E6Mjp7aTo2O2I6MTtpOjM7YjoxO31zOjExOiJjb3JlLmRlbGV0ZSI7YToxOntpOjY7YjoxO31zOjk6ImNvcmUuZWRpdCI7YToyOntpOjY7YjoxO2k6NDtiOjE7fXM6MTU6ImNvcmUuZWRpdC5zdGF0ZSI7YToyOntpOjY7YjoxO2k6NTtiOjE7fXM6MTM6ImNvcmUuZWRpdC5vd24iO2E6Mjp7aTo2O2I6MTtpOjM7YjoxO31zOjE1OiJjb3JlLmVkaXQudmFsdWUiO2E6MDp7fX1zOjc6ImZpbHRlcnMiO2E6OTp7aToxO2E6Mzp7czoxMToiZmlsdGVyX3R5cGUiO3M6MjoiTkgiO3M6MTE6ImZpbHRlcl90YWdzIjtzOjA6IiI7czoxNzoiZmlsdGVyX2F0dHJpYnV0ZXMiO3M6MDoiIjt9aTo5O2E6Mzp7czoxMToiZmlsdGVyX3R5cGUiO3M6MjoiTkgiO3M6MTE6ImZpbHRlcl90YWdzIjtzOjA6IiI7czoxNzoiZmlsdGVyX2F0dHJpYnV0ZXMiO3M6MDoiIjt9aTo2O2E6Mzp7czoxMToiZmlsdGVyX3R5cGUiO3M6MjoiQkwiO3M6MTE6ImZpbHRlcl90YWdzIjtzOjA6IiI7czoxNzoiZmlsdGVyX2F0dHJpYnV0ZXMiO3M6MDoiIjt9aTo3O2E6Mzp7czoxMToiZmlsdGVyX3R5cGUiO3M6MjoiQkwiO3M6MTE6ImZpbHRlcl90YWdzIjtzOjA6IiI7czoxNzoiZmlsdGVyX2F0dHJpYnV0ZXMiO3M6MDoiIjt9aToyO2E6Mzp7czoxMToiZmlsdGVyX3R5cGUiO3M6MjoiTkgiO3M6MTE6ImZpbHRlcl90YWdzIjtzOjA6IiI7czoxNzoiZmlsdGVyX2F0dHJpYnV0ZXMiO3M6MDoiIjt9aTozO2E6Mzp7czoxMToiZmlsdGVyX3R5cGUiO3M6MjoiQkwiO3M6MTE6ImZpbHRlcl90YWdzIjtzOjA6IiI7czoxNzoiZmlsdGVyX2F0dHJpYnV0ZXMiO3M6MDoiIjt9aTo0O2E6Mzp7czoxMToiZmlsdGVyX3R5cGUiO3M6MjoiQkwiO3M6MTE6ImZpbHRlcl90YWdzIjtzOjA6IiI7czoxNzoiZmlsdGVyX2F0dHJpYnV0ZXMiO3M6MDoiIjt9aTo1O2E6Mzp7czoxMToiZmlsdGVyX3R5cGUiO3M6MjoiQkwiO3M6MTE6ImZpbHRlcl90YWdzIjtzOjA6IiI7czoxNzoiZmlsdGVyX2F0dHJpYnV0ZXMiO3M6MDoiIjt9aTo4O2E6Mzp7czoxMToiZmlsdGVyX3R5cGUiO3M6NDoiTk9ORSI7czoxMToiZmlsdGVyX3RhZ3MiO3M6MDoiIjtzOjE3OiJmaWx0ZXJfYXR0cmlidXRlcyI7czowOiIiO319czo4OiJhc3NldF9pZCI7czoxOiIxIjt9fX19czoxMToiY29tX2NvbnRlbnQiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo3OiJhcnRpY2xlIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImRhdGEiO047czoyOiJpZCI7YTowOnt9fX19czo5OiJjb21fbWVudXMiO086ODoic3RkQ2xhc3MiOjI6e3M6NToiaXRlbXMiO086ODoic3RkQ2xhc3MiOjQ6e3M6ODoibWVudXR5cGUiO3M6ODoibWFpbm1lbnUiO3M6OToiY2xpZW50X2lkIjtpOjA7czoxMDoibGltaXRzdGFydCI7aTowO3M6NDoibGlzdCI7YTo0OntzOjk6ImRpcmVjdGlvbiI7czozOiJhc2MiO3M6NToibGltaXQiO2k6MjA7czo4OiJvcmRlcmluZyI7czo1OiJhLmxmdCI7czo1OiJzdGFydCI7ZDowO319czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6Iml0ZW0iO086ODoic3RkQ2xhc3MiOjQ6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7TjtzOjQ6InR5cGUiO047czo0OiJsaW5rIjtOO319fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aToyO31zOjk6ImNvbV91c2VycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czoxMToibWZhX2NoZWNrZWQiO2k6MTt9czoxMToiYXBwbGljYXRpb24iO086ODoic3RkQ2xhc3MiOjE6e3M6NToicXVldWUiO2E6MDp7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	2,	'webdev'),
(UNHEX('6276666D736164736F36303173713372696F646C636A746E7163'),	1,	1,	1753439189,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDM5MTg5O3M6NDoibGFzdCI7aToxNzUzNDM5MTg5O3M6Mzoibm93IjtpOjE3NTM0MzkxODk7fXM6NToidG9rZW4iO3M6MzI6Ijk5ZGYxODMyNDM1N2I0YmEzMjJiZGU1MzQ1YTFiNWZiIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('646F6D6571366F396F67316D3564623469746B66313738323730'),	0,	1,	1753445092,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDQ1MDkyO3M6NDoibGFzdCI7aToxNzUzNDQ1MDkyO3M6Mzoibm93IjtpOjE3NTM0NDUwOTI7fXM6NToidG9rZW4iO3M6MzI6IjRhMzc0NTc0NWNhZDUxZDk5MmFiZTk1M2IxYTk0ODA0Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('6476636574766C6366736839623266326A3363723131696A7273'),	0,	1,	1753446090,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDQ2MDkwO3M6NDoibGFzdCI7aToxNzUzNDQ2MDkwO3M6Mzoibm93IjtpOjE3NTM0NDYwOTA7fXM6NToidG9rZW4iO3M6MzI6ImNmMWY0Mjk1Y2YzNDZiNzg3OTg2NTRmMDEzNjQ1NDUzIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('65346D63346F697039747235756371726B6B346F303063636D70'),	0,	1,	1753457757,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDU3NzU3O3M6NDoibGFzdCI7aToxNzUzNDU3NzU3O3M6Mzoibm93IjtpOjE3NTM0NTc3NTc7fXM6NToidG9rZW4iO3M6MzI6IjljMzcyZDRkZDlkZGQzMmU5Mzg0NjRmOGRiYmRiNDAyIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('65713432706768763770746D627070306F6B3174303069747130'),	0,	1,	1753449563,	'joomla|s:628:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDQ5NTYzO3M6NDoibGFzdCI7aToxNzUzNDQ5NTYzO3M6Mzoibm93IjtpOjE3NTM0NDk1NjM7fX1zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czoxMjoiACoAc2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9\";',	0,	''),
(UNHEX('676765746A7265757131366D6472716F6D69326F387230723072'),	0,	1,	1753448062,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDQ4MDYyO3M6NDoibGFzdCI7aToxNzUzNDQ4MDYyO3M6Mzoibm93IjtpOjE3NTM0NDgwNjI7fXM6NToidG9rZW4iO3M6MzI6ImY4OWU1MmRlZTAyZTczMzY1MTQwMzc5YzAyMTAyNzRiIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('69396D62336237626234396A6C356268626C386771327339676D'),	0,	1,	1753446803,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDQ2ODAzO3M6NDoibGFzdCI7aToxNzUzNDQ2ODAzO3M6Mzoibm93IjtpOjE3NTM0NDY4MDM7fXM6NToidG9rZW4iO3M6MzI6IjVlMzYxMzYxZTM5ZDVkOTRjNjFlZGNmNWJjMzNjYjhlIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('6A32666339353066683367626667687167686E62353169337272'),	0,	1,	1753447662,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDQ3NjYxO3M6NDoibGFzdCI7aToxNzUzNDQ3NjYxO3M6Mzoibm93IjtpOjE3NTM0NDc2NjE7fXM6NToidG9rZW4iO3M6MzI6ImI5MmQxN2Q3YTBmNDAzNmZmNjhmMTA1YzQ1NmEyNmRkIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('6A6E326E347035356D3333326364333136643376726473763274'),	0,	1,	1753455689,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDU1Njg5O3M6NDoibGFzdCI7aToxNzUzNDU1Njg5O3M6Mzoibm93IjtpOjE3NTM0NTU2ODk7fXM6NToidG9rZW4iO3M6MzI6ImIwY2U2M2U0ZGQ5ZTgxODM1NWI1YmFhOTczMmUxZDAzIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('6A76746C6F33666568706F766164397073716134747373353563'),	0,	1,	1753450799,	'joomla|s:628:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDUwNzk5O3M6NDoibGFzdCI7aToxNzUzNDUwNzk5O3M6Mzoibm93IjtpOjE3NTM0NTA3OTk7fX1zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czoxMjoiACoAc2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9\";',	0,	''),
(UNHEX('6B323567746A38736C31666F32337562626F6E6334396D336472'),	0,	1,	1753449983,	'joomla|s:628:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDQ5OTgzO3M6NDoibGFzdCI7aToxNzUzNDQ5OTgzO3M6Mzoibm93IjtpOjE3NTM0NDk5ODM7fX1zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czoxMjoiACoAc2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9\";',	0,	''),
(UNHEX('6C353439746F686A6A6C62636B6673336D666230357130733435'),	0,	1,	1753453049,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDUzMDQ5O3M6NDoibGFzdCI7aToxNzUzNDUzMDQ5O3M6Mzoibm93IjtpOjE3NTM0NTMwNDk7fXM6NToidG9rZW4iO3M6MzI6IjQ1ODY0NjVhZmY4YTJjM2ZiN2JiNjczMTcxZmE3YmZiIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('7063756534743168663930336C6D306B36333737636B7632306B'),	0,	1,	1753461733,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDYwOTM0O3M6NDoibGFzdCI7aToxNzUzNDYwOTQwO3M6Mzoibm93IjtpOjE3NTM0NjE3MzM7fXM6NToidG9rZW4iO3M6MzI6IjY0ZGU5ZjZhMDYyMWQ4ZDEwMTlhZmFiNjFjODgyYTJlIjtzOjc6ImNvdW50ZXIiO2k6Mjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('706C723537356C72316E6364393366326575346F743863686969'),	0,	1,	1753440212,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDQwMjEyO3M6NDoibGFzdCI7aToxNzUzNDQwMjEyO3M6Mzoibm93IjtpOjE3NTM0NDAyMTI7fXM6NToidG9rZW4iO3M6MzI6ImI5OGI4Nzc1MWEwNjM2YjQwZDE5NTdkYzVlMWM0ZDY0Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('7130327266636337393065646B7563336A6A306A696C64766462'),	0,	1,	1753451702,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDUxNzAyO3M6NDoibGFzdCI7aToxNzUzNDUxNzAyO3M6Mzoibm93IjtpOjE3NTM0NTE3MDI7fXM6NToidG9rZW4iO3M6MzI6ImE0ZDBmNGY2NmVmZDZhYmVjNjIzMjIzNjAxMWQ0NWYwIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('72696471356C3674366576686F6A666E6F626F6833717230766C'),	0,	1,	1753460819,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjQ7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDYwNjQyO3M6NDoibGFzdCI7aToxNzUzNDYwNjQ1O3M6Mzoibm93IjtpOjE3NTM0NjA4MTk7fXM6NToidG9rZW4iO3M6MzI6IjJkNGU2OGY3ODRiODBjMzkzZjg1MWZiYTc5YTY2ZGU4Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('72703069726761623461636A73726B763474386B73616574746B'),	0,	1,	1753444551,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDQ0NTUxO3M6NDoibGFzdCI7aToxNzUzNDQ0NTUxO3M6Mzoibm93IjtpOjE3NTM0NDQ1NTE7fXM6NToidG9rZW4iO3M6MzI6ImI2MTU3NTk2Nzk3OGZkYjliYjM0NmQ0MjMwMjcxZWYyIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('727131636C366A75713967356B3668716E30376464726D766E66'),	0,	1,	1753441190,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDQxMTkwO3M6NDoibGFzdCI7aToxNzUzNDQxMTkwO3M6Mzoibm93IjtpOjE3NTM0NDExOTA7fXM6NToidG9rZW4iO3M6MzI6ImQzMjJiMGIxYjZhODg3YWZjMThiODQxODk0MDhjZGIzIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('733431656B3239303970333836327470326B6561667572306B67'),	0,	1,	1753438098,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDM4MDk4O3M6NDoibGFzdCI7aToxNzUzNDM4MDk4O3M6Mzoibm93IjtpOjE3NTM0MzgwOTg7fXM6NToidG9rZW4iO3M6MzI6Ijk0ZmY4OTQ5ZDJiMDQwMWE4NTA3MTAzMDljMjFiNzAxIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('7339746C69696C61316C6A6E6A323471646C666C62706B316A36'),	0,	1,	1753461902,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDYxOTAyO3M6NDoibGFzdCI7aToxNzUzNDYxOTAyO3M6Mzoibm93IjtpOjE3NTM0NjE5MDI7fXM6NToidG9rZW4iO3M6MzI6IjQ3NzhhZjdlYzM2ODczZTI5NTE4MTFjYzA5NWVmNzc2Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('736F6E6C716D37387676326A696961656D6F3569346B73626465'),	0,	1,	1753461802,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDYxODAyO3M6NDoibGFzdCI7aToxNzUzNDYxODAyO3M6Mzoibm93IjtpOjE3NTM0NjE4MDI7fXM6NToidG9rZW4iO3M6MzI6IjE1MTgwYTMxMDQ4ZmE5NTlhMmJmMzUzOTMxNDViNjVkIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('74673861723873646E31307461316768386E3576703571636D34'),	0,	1,	1753454813,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDQ3OTI5O3M6NDoibGFzdCI7aToxNzUzNDU0ODExO3M6Mzoibm93IjtpOjE3NTM0NTQ4MTM7fXM6NToidG9rZW4iO3M6MzI6ImE5NzkzMTBiYzYyNTA4YTc4ZjU2NTQxYTBkOGM4ZThiIjtzOjc6ImNvdW50ZXIiO2k6NzE7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czoxMjoiACoAc2VwYXJhdG9yIjtzOjE6Ii4iO30=\";',	0,	''),
(UNHEX('7538346F303462747568686431747038643365756C693874696C'),	0,	1,	1753454841,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDU0ODQxO3M6NDoibGFzdCI7aToxNzUzNDU0ODQxO3M6Mzoibm93IjtpOjE3NTM0NTQ4NDE7fXM6NToidG9rZW4iO3M6MzI6IjIwNWY0OGE5MmE1OTcwMjYxOWFlOGUxZTU2NTlhMGFmIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('7565397530343764676B687234316A3839716D7568706C666271'),	0,	1,	1753454841,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDU0ODQxO3M6NDoibGFzdCI7aToxNzUzNDU0ODQxO3M6Mzoibm93IjtpOjE3NTM0NTQ4NDE7fXM6NToidG9rZW4iO3M6MzI6IjYyNjZmMmFiZGRlNTJlZGQ1YzhkNmNlMzgwMjE4YjA3Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('7573396F37676136656A6E6267676D6B3937366D65766C667337'),	0,	1,	1753453828,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDUzODI4O3M6NDoibGFzdCI7aToxNzUzNDUzODI4O3M6Mzoibm93IjtpOjE3NTM0NTM4Mjg7fXM6NToidG9rZW4iO3M6MzI6IjJmYzMzZGQ0NjgwMTdmZWFjNjY5OTg1ZGU1YjEzNWJmIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	''),
(UNHEX('757566376E386B3670636E63613975616B693036753363377267'),	0,	1,	1753450504,	'joomla|s:628:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJjb3VudGVyIjtpOjU7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDUwMDI0O3M6NDoibGFzdCI7aToxNzUzNDUwNDcxO3M6Mzoibm93IjtpOjE3NTM0NTA1MDQ7fX1zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czoxMjoiACoAc2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9\";',	0,	''),
(UNHEX('767163696B37616E3171386C3231737373613769306966736568'),	0,	1,	1753440108,	'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzUzNDQwMTA4O3M6NDoibGFzdCI7aToxNzUzNDQwMTA4O3M6Mzoibm93IjtpOjE3NTM0NDAxMDg7fXM6NToidG9rZW4iO3M6MzI6IjM2NzEwNzI3OGI3YjY0OWYxNjExOWRmYjczMTBmZWE1Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',	0,	'');

DROP TABLE IF EXISTS `n8am2_tags`;
CREATE TABLE `n8am2_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `lft` int NOT NULL DEFAULT '0',
  `rgt` int NOT NULL DEFAULT '0',
  `level` int unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL,
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1,	0,	0,	1,	0,	'',	'ROOT',	'root',	'',	'',	1,	NULL,	NULL,	1,	'',	'',	'',	'',	1,	'2025-06-11 23:01:56',	'',	1,	'2025-06-11 23:01:56',	'',	'',	0,	'*',	1,	NULL,	NULL);

DROP TABLE IF EXISTS `n8am2_template_overrides`;
CREATE TABLE `n8am2_template_overrides` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hash_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension_id` int DEFAULT '0',
  `state` tinyint NOT NULL DEFAULT '0',
  `action` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint unsigned NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_extension_id` (`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `n8am2_template_styles`;
CREATE TABLE `n8am2_template_styles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inheritable` tinyint NOT NULL DEFAULT '0',
  `parent` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_client_id` (`client_id`),
  KEY `idx_client_id_home` (`client_id`,`home`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `inheritable`, `parent`, `params`) VALUES
(10,	'atum',	1,	'1',	'Atum - Default',	1,	'',	'{\"hue\":\"hsl(214, 63%, 20%)\",\"bg-light\":\"#f0f4fb\",\"text-dark\":\"#495057\",\"text-light\":\"#ffffff\",\"link-color\":\"#2a69b8\",\"special-color\":\"#001b4c\",\"colorScheme\":\"os\",\"monochrome\":\"0\",\"loginLogo\":\"\",\"loginLogoAlt\":\"\",\"logoBrandLarge\":\"\",\"logoBrandLargeAlt\":\"\",\"logoBrandSmall\":\"\",\"logoBrandSmallAlt\":\"\"}'),
(11,	'cassiopeia',	0,	'0',	'Cassiopeia - Default',	1,	'',	'{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":0,\"backTop\":0}'),
(14,	'bermuda',	0,	'1',	'Bermuda College Custom Site template - Default',	0,	'',	'{}');

DROP TABLE IF EXISTS `n8am2_tuf_metadata`;
CREATE TABLE `n8am2_tuf_metadata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `update_site_id` int DEFAULT '0',
  `root` text COLLATE utf8mb4_unicode_ci,
  `targets` text COLLATE utf8mb4_unicode_ci,
  `snapshot` text COLLATE utf8mb4_unicode_ci,
  `timestamp` text COLLATE utf8mb4_unicode_ci,
  `mirrors` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Secure TUF Updates';

INSERT INTO `n8am2_tuf_metadata` (`id`, `update_site_id`, `root`, `targets`, `snapshot`, `timestamp`, `mirrors`) VALUES
(1,	1,	'{\"signed\":{\"_type\":\"root\",\"spec_version\":\"1.0\",\"version\":9,\"expires\":\"2026-06-28T06:57:51Z\",\"keys\":{\"00e432b504508246e2bd536dd6c13e55e8b3256f0be9f767fae26da6c2a28663\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"250f8d293c49817a83909dead96ad82b62f7ac16844cf589f8d2f0e0b15cab21\"}},\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"9b2af2d9b9727227735253d795bd27ea8f0e294a5f3603e822dc5052b44802b9\"}},\"179d107f20a2354ac5bd9a1f32a2df1763c0059617f0c132bebeb4816a1a8637\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"159a4195cbafce2bb959f09ab2b36a2127b8967f94d389f65f1e7892fccfe8b8\"}},\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"a18e5ebabc19d5d5984b601a292ece61ba3662ab2d071dc520da5bd4f8948799\"}},\"273e94e5477e306ad6de75be1524860e219e265ff9a57c81ababd0691e45706c\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"1cb6702338830ef1c9e76a022fed27172d475bbaace754d8141ebc96dad8b15f\"}},\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"cb0a7a131961a20edea051d6dc2b091fb650bd399bd8514adb67b3c60db9f8f9\"}},\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"589d029a68b470deff1ca16dbf3eea6b5b3fcba0ae7bb52c468abc7fb058b2a2\"}},\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"6043c8bacc76ac5c9750f45454dd865c6ca1fc57d69e14cc192cfd420f6a66a9\"}},\"9eabc37383b243cd236375c66693db385911914b52556e1ec05fc70ed45e1bfe\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"a4b8509488f1c29ab0b1f610e7452fbec78b4f33f1fba5a418d6ff087c567429\"}},\"bfee044dd4574a281c9b7c0b6829913ef292c66c0512d1091a298cfca8493da9\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"6eb44460e5914e8e0df726ddb90bd1f3771b8ce5af19b40fb01ac5a85b023a6f\"}},\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"ad1950e117b29ebe7a38635a2e574123e07571e4f9a011783e053b5f15d2562a\"}},\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"5d451915bc2b93a0e4e4745bc6a8b292d58996d50e0fb66c78c7827152a65879\"}}},\"roles\":{\"root\":{\"keyids\":[\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\",\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\"],\"threshold\":1},\"snapshot\":{\"keyids\":[\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\",\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\",\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\",\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\",\"bfee044dd4574a281c9b7c0b6829913ef292c66c0512d1091a298cfca8493da9\",\"9eabc37383b243cd236375c66693db385911914b52556e1ec05fc70ed45e1bfe\",\"273e94e5477e306ad6de75be1524860e219e265ff9a57c81ababd0691e45706c\",\"00e432b504508246e2bd536dd6c13e55e8b3256f0be9f767fae26da6c2a28663\",\"179d107f20a2354ac5bd9a1f32a2df1763c0059617f0c132bebeb4816a1a8637\"],\"threshold\":1},\"targets\":{\"keyids\":[\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\",\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\",\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\",\"bfee044dd4574a281c9b7c0b6829913ef292c66c0512d1091a298cfca8493da9\",\"9eabc37383b243cd236375c66693db385911914b52556e1ec05fc70ed45e1bfe\",\"273e94e5477e306ad6de75be1524860e219e265ff9a57c81ababd0691e45706c\",\"00e432b504508246e2bd536dd6c13e55e8b3256f0be9f767fae26da6c2a28663\",\"179d107f20a2354ac5bd9a1f32a2df1763c0059617f0c132bebeb4816a1a8637\"],\"threshold\":1},\"timestamp\":{\"keyids\":[\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\"],\"threshold\":1}},\"consistent_snapshot\":true},\"signatures\":[{\"keyid\":\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\",\"sig\":\"b46d930abb0179f7cbbe5019de694e3ff52af2eaa61cfe29d020e6d80dd3b94e8530cf78012edc4a340d5da0be515fe0d798531f0620a780ac9d0c31f1bee500\"}]}',	'{\"signed\":{\"_type\":\"targets\",\"spec_version\":\"1.0\",\"version\":57,\"expires\":\"2025-10-22T16:37:12Z\",\"targets\":{\"Joomla_5.1.2-Stable-Upgrade_Package.zip\":{\"length\":28134889,\"hashes\":{\"sha512\":\"d6b46cdedb9b31d01a607fe4c2f3a830a3265ed6ae5c0cb7b0f836b1b016ee7c639bd8948df00baf1b61a87f2fc71368a80b39e67ef9ec2b8842ee0ab09a620f\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.1.2 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-1-2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.1.2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.1.2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5909-joomla-5-1-2-and-joomla-4-4-6-security-and-bug-fix-release.html\",\"title\":\"Joomla! 5.1.2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.1.2\",\"php_minimum\":\"8.1.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.1.2\"}},\"Joomla_5.2.6-Stable-Update_Package.zip\":{\"length\":28858320,\"hashes\":{\"sha512\":\"6a3d43d074e52d700c9c979f48707ac1cbcffb4a10a93b5b719250b131a0951a2202db6cc47875b702012a63db6a7df71d358b49d034b0bb28954ebdb009145c\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.2.6 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-2-6/Joomla_5.2.6-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.2.6/Joomla_5.2.6-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.2.6/Joomla_5.2.6-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5925-joomla-5-2-6-security-release.html\",\"title\":\"Joomla! 5.2.6 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.2.6\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.2.6\"}},\"Joomla_5.3.0-Stable-Update_Package.zip\":{\"length\":29094600,\"hashes\":{\"sha512\":\"6c97969b1d4c18cd64db20f49d82e4a5b8a32c563422a2b5608a5707d5425d1b7d9d3a344b2dc15f3b505e3bf198fabbbb1137cc93ced74c1de632139384efb0\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.3.0 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-3-0/Joomla_5.3.0-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.3.0/Joomla_5.3.0-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.3.0/Joomla_5.3.0-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5927-joomla-5-3-is-here.html\",\"title\":\"Joomla! 5.3.0 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.3.0\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.3.0\"}},\"Joomla_5.3.0-rc1-Release_Candidate-Update_Package.zip\":{\"length\":29060802,\"hashes\":{\"sha512\":\"498b052058fc0d4a28c8466d9db7fe8d97cbe4cf491d78cbab78d3aa66b888f30fb1fa71de1dfe26c0fd244c51dc8c7be6ba80750100ab6132eb57df444f2f53\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.3.0-rc1 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.3.0-rc1/Joomla_5.3.0-rc1-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5923-joomla-5-3-0-release-candidate.html\",\"title\":\"Joomla! 5.3.0-rc1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.3.0-rc1\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.3.0-rc1\"}},\"Joomla_5.3.0-rc2-Release_Candidate-Update_Package.zip\":{\"length\":29075074,\"hashes\":{\"sha512\":\"9ecebc56f171d16ce65f9199393093201c2a34b02447dfed5703549821b21eec311da7cfdde899dd6dd9a3b823624901f351dd3c70ea7215e1b190480f30fbdb\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.3.0-rc2 Release Candidate\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.3.0-rc2/Joomla_5.3.0-rc2-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5924-joomla-5-3-0-release-candidate-2.html\",\"title\":\"Joomla! 5.3.0-rc2 Release Candidate\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.3.0-rc2\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.3.0-rc2\"}},\"Joomla_5.3.1-Stable-Update_Package.zip\":{\"length\":29295680,\"hashes\":{\"sha512\":\"a2adbe952511e3c0eb9a8e86cc60dbcb1037ea5c168b612f9a5c85005cb9259ac77e3e41c2e1ef27c1d0fbe65fe913353a467fcd582c87f3656736e2680feb82\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.3.1 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-3-1/Joomla_5.3.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.3.1/Joomla_5.3.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.3.1/Joomla_5.3.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5900-joomla-5-0-and-joomla-4-4-are-here\",\"title\":\"Joomla! 5.3.1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.3.1\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.3.1\"}},\"Joomla_5.3.1-rc1-Release_Candidate-Update_Package.zip\":{\"length\":29295696,\"hashes\":{\"sha512\":\"bee8797b9cc641fd0e3ec228b5ed9de93b86ac1da481a2b75b43076b0c90975f3ffbcc5c6370f4f76ccccba68123a7fcf65f9c054287482a092930bb80e713d4\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.3.1-rc1 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.3.1-rc1/Joomla_5.3.1-rc1-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/tag/5.3.1-rc1\",\"title\":\"Joomla! 5.3.1-rc1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.3.1-rc1\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.3.1-rc1\"}},\"Joomla_5.3.2-Stable-Update_Package.zip\":{\"length\":29315279,\"hashes\":{\"sha512\":\"619f9ea172307be664ea83ade797204464ab0abe7a9d3f695aa3e29eab986b5ec0c04075fb7131451da98dda6ae2d5580d11043e1212963f6942e56cb42c2efb\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.3.2 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-3-2/Joomla_5.3.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.3.2/Joomla_5.3.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.3.2/Joomla_5.3.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5929-joomla-5-3-2-bugfix-release.html\",\"title\":\"Joomla! 5.3.2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.3.2\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.3.2\"}},\"Joomla_5.3.2-rc1-Release_Candidate-Update_Package.zip\":{\"length\":29315288,\"hashes\":{\"sha512\":\"04a791b60eba9324a93633cfc056ab83be1bade93b135c06dc95259063652639b70bb8da417d47fe20429e46577e2089b67d4013ef1cc8f995a1eb8a9c497377\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.3.2-rc1 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.3.2-rc1/Joomla_5.3.2-rc1-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/tag/5.3.2-rc1\",\"title\":\"Joomla! 5.3.2-rc1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.3.2-rc1\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.3.2-rc1\"}},\"Joomla_5.4.0-alpha1-Alpha-Update_Package.zip\":{\"length\":29363905,\"hashes\":{\"sha512\":\"91c445a2d82e334d5f5eacbfa2048f339ed768d123ab269b706d4b086dbcc2ba385084fdcdf9af54cfbbcfc7802947ca499f3eb333615c421715dbb96fb0dd2b\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.0-alpha1 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.0-alpha1/Joomla_5.4.0-alpha1-Alpha-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://developer.joomla.org/news/971-your-first-glimpse-at-joomla-5-4-0-alpha1.html\",\"title\":\"Joomla! 5.4.0-alpha1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.0-alpha1\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Alpha\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.0-alpha1\"}},\"Joomla_5.4.0-alpha2-Alpha-Update_Package.zip\":{\"length\":29387267,\"hashes\":{\"sha512\":\"06589bb6bab5647b1148cf97091fda46c67112ab3e753562a54c321de20d5ac83fd663315174ea5a39a40919c924675f49e1a2c095a8cd5732656004be81116e\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.0-alpha2 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.0-alpha2/Joomla_5.4.0-alpha2-Alpha-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://developer.joomla.org/news/973-joomla-5-4-0-alpha2-see-how-its-coming-together.html\",\"title\":\"Joomla! 5.4.0-alpha2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.0-alpha2\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Alpha\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.0-alpha2\"}},\"Joomla_5.4.0-alpha3-Alpha-Update_Package.zip\":{\"length\":29389418,\"hashes\":{\"sha512\":\"965807d5221158007d9c722637d86723fcb74649acf5a9af79397955c3418b318615e9fc5e699ef8e2cd03052f7ae52e199c4e92ddfa72bd7599d4acd9e3a4bf\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.0-alpha3 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.0-alpha3/Joomla_5.4.0-alpha3-Alpha-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://developer.joomla.org/news/975-joomla-5-4-0-alpha3-wrapping-up-the-alpha-phase.html\",\"title\":\"Joomla! 5.4.0-alpha3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.0-alpha3\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Alpha\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.0-alpha3\"}},\"Joomla_6.0.0-alpha1-Alpha-Update_Package.zip\":{\"length\":28467740,\"hashes\":{\"sha512\":\"35dc904b9b7ea8bc84dee5e37d50a453933f378675d58af7bd34009336104d4c1ddfe46cf14b9a7bcae8953130cf9198f51c1aa5b419550819584d3044cfd8a7\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.0.0-alpha1 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.0.0-alpha1/Joomla_6.0.0-alpha1-Alpha-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://developer.joomla.org/news/972-joomla-6-0-alpha1-test-the-future-of-joomla.html\",\"title\":\"Joomla! 6.0.0-alpha1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.0.0-alpha1\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Alpha\",\"supported_databases\":{\"mariadb\":\"10.6\",\"mysql\":\"8.0.13\",\"postgresql\":\"14.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.0.0-alpha1\"}},\"Joomla_6.0.0-alpha2-Alpha-Update_Package.zip\":{\"length\":28405617,\"hashes\":{\"sha512\":\"aa8d83eb94c4aa7df672aa8274803535462466bfa65b49e95ccd7ffff192e06c2036bbff082081a84e4e9832036d8519f1e320b6404c88e9eca3d630d8dcad65\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.0.0-alpha2 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.0.0-alpha2/Joomla_6.0.0-alpha2-Alpha-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://developer.joomla.org/news/974-joomla-6-0-alpha2-help-shape-the-next-generation.html\",\"title\":\"Joomla! 6.0.0-alpha2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.0.0-alpha2\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Alpha\",\"supported_databases\":{\"mariadb\":\"10.6\",\"mysql\":\"8.0.13\",\"postgresql\":\"14.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.0.0-alpha2\"}},\"Joomla_6.0.0-alpha3-Alpha-Update_Package.zip\":{\"length\":28408039,\"hashes\":{\"sha512\":\"a6077720355971a71b576e1a3fa388b416ad53e19cca13b12818acd6186841837ffd38ca02380a575dee425e498ce93118cb4f9dea5e6d369c18211a3f06a5bd\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.0.0-alpha3 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.0.0-alpha3/Joomla_6.0.0-alpha3-Alpha-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://developer.joomla.org/news/976-joomla-6-0-alpha3-help-shape-the-next-generation.html\",\"title\":\"Joomla! 6.0.0-alpha3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.0.0-alpha3\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Alpha\",\"supported_databases\":{\"mariadb\":\"10.6\",\"mysql\":\"8.0.13\",\"postgresql\":\"14.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.0.0-alpha3\"}}}},\"signatures\":[{\"keyid\":\"273e94e5477e306ad6de75be1524860e219e265ff9a57c81ababd0691e45706c\",\"sig\":\"1965cc2bd50ab77857134b045b3018bf0447faeb375ba15aea4fbc69f8b818be460dc346403ca2029d1260e7adf990c955856ddd72c84117f214ff0513ef210f\"},{\"keyid\":\"00e432b504508246e2bd536dd6c13e55e8b3256f0be9f767fae26da6c2a28663\",\"sig\":\"73a3d0b4ba7d5a43b7be8552d0e9727cc2bf2dfa0f253bf633297c28a76bcfa31c1363933eac59e41e0ffe30a078ea110ce293d2ad213fd9331d2805fd4e9503\"}]}',	'{\"signed\":{\"_type\":\"snapshot\",\"spec_version\":\"1.0\",\"version\":65,\"expires\":\"2026-02-17T16:40:44Z\",\"meta\":{\"targets.json\":{\"length\":16266,\"hashes\":{\"sha512\":\"3d42d9e69b9a238c11ef8b6d54e4dc829dff0af09d38bda60b687ee65de8b2f045905256db3ea1b610bd6a06467f12702d8745762b8d9a2a98f7dae4358396d0\"},\"version\":57}}},\"signatures\":[{\"keyid\":\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\",\"sig\":\"c577a9de0649e3ee3c1029150bd6d2f2e0a18752b9169585675e33bb0a0e65e2e015f0dfaf7a0598dd80121b25cbada68fd641f65999582e33e58fa3f1b15f02\"}]}',	'{\"signed\":{\"_type\":\"timestamp\",\"spec_version\":\"1.0\",\"version\":680,\"expires\":\"2025-07-25T17:00:47Z\",\"meta\":{\"snapshot.json\":{\"length\":532,\"hashes\":{\"sha512\":\"d01a347b7e28445de097a17a392d019b60a15a6776cf0c75f41bc6229902935114e3c87c6b2e4d68fac33526f0d79341b85da10c223ee68c9518a07af41576ac\"},\"version\":65}}},\"signatures\":[{\"keyid\":\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\",\"sig\":\"03ee3ab10b866745a1f1a9362538f2634d2841d534e669bd02da00a6fbe859ef6ea36b79cce06cc4e64a82fe710c043f51b3a3cff4a7e76c9d6d9337ceea0301\"}]}',	NULL);

DROP TABLE IF EXISTS `n8am2_ucm_base`;
CREATE TABLE `n8am2_ucm_base` (
  `ucm_id` int unsigned NOT NULL,
  `ucm_item_id` int NOT NULL,
  `ucm_type_id` int NOT NULL,
  `ucm_language_id` int NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `n8am2_ucm_content`;
CREATE TABLE `n8am2_ucm_content` (
  `core_content_id` int unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci,
  `core_state` tinyint NOT NULL DEFAULT '0',
  `core_checked_out_time` datetime DEFAULT NULL,
  `core_checked_out_user_id` int unsigned DEFAULT NULL,
  `core_access` int unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci,
  `core_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL,
  `core_modified_user_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL,
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime DEFAULT NULL,
  `core_publish_down` datetime DEFAULT NULL,
  `core_content_item_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci,
  `core_urls` text COLLATE utf8mb4_unicode_ci,
  `core_hits` int unsigned NOT NULL DEFAULT '0',
  `core_version` int unsigned NOT NULL DEFAULT '1',
  `core_ordering` int NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci,
  `core_catid` int unsigned NOT NULL DEFAULT '0',
  `core_type_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(100)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';


DROP TABLE IF EXISTS `n8am2_update_sites`;
CREATE TABLE `n8am2_update_sites` (
  `update_site_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int DEFAULT '0',
  `last_check_timestamp` bigint DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

INSERT INTO `n8am2_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`, `checked_out`, `checked_out_time`) VALUES
(1,	'Joomla! Core',	'tuf',	'https://update.joomla.org/cms/',	1,	1753458662,	'',	NULL,	NULL),
(2,	'Accredited Joomla! Translations',	'collection',	'https://update.joomla.org/language/translationlist_5.xml',	1,	1753458662,	'',	NULL,	NULL),
(3,	'Joomla! Update Component',	'extension',	'https://update.joomla.org/core/extensions/com_joomlaupdate.xml',	1,	1753458662,	'',	NULL,	NULL);

DROP TABLE IF EXISTS `n8am2_update_sites_extensions`;
CREATE TABLE `n8am2_update_sites_extensions` (
  `update_site_id` int NOT NULL DEFAULT '0',
  `extension_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

INSERT INTO `n8am2_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1,	241),
(2,	242),
(3,	24);

DROP TABLE IF EXISTS `n8am2_updates`;
CREATE TABLE `n8am2_updates` (
  `update_id` int NOT NULL AUTO_INCREMENT,
  `update_site_id` int DEFAULT '0',
  `extension_id` int DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `changelogurl` text COLLATE utf8mb4_unicode_ci,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

INSERT INTO `n8am2_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `changelogurl`, `extra_query`) VALUES
(712,	2,	0,	'Afrikaans',	'',	'pkg_af-ZA',	'package',	'',	0,	'5.3.2.1',	'',	'https://update.joomla.org/language/details5/af-ZA_details.xml',	'',	'',	''),
(713,	2,	0,	'Arabic Unitag',	'',	'pkg_ar-AA',	'package',	'',	0,	'5.3.2.3',	'',	'https://update.joomla.org/language/details5/ar-AA_details.xml',	'',	'',	''),
(714,	2,	0,	'Belarusian',	'',	'pkg_be-BY',	'package',	'',	0,	'5.3.0.1',	'',	'https://update.joomla.org/language/details5/be-BY_details.xml',	'',	'',	''),
(715,	2,	0,	'Bulgarian',	'',	'pkg_bg-BG',	'package',	'',	0,	'5.3.1.4',	'',	'https://update.joomla.org/language/details5/bg-BG_details.xml',	'',	'',	''),
(716,	2,	0,	'Catalan',	'',	'pkg_ca-ES',	'package',	'',	0,	'5.3.2.1',	'',	'https://update.joomla.org/language/details5/ca-ES_details.xml',	'',	'',	''),
(717,	2,	0,	'Chinese, Simplified',	'',	'pkg_zh-CN',	'package',	'',	0,	'5.1.2.1',	'',	'https://update.joomla.org/language/details5/zh-CN_details.xml',	'',	'',	''),
(718,	2,	0,	'Chinese, Traditional',	'',	'pkg_zh-TW',	'package',	'',	0,	'5.3.1.1',	'',	'https://update.joomla.org/language/details5/zh-TW_details.xml',	'',	'',	''),
(719,	2,	0,	'Croatian',	'',	'pkg_hr-HR',	'package',	'',	0,	'5.2.1.1',	'',	'https://update.joomla.org/language/details5/hr-HR_details.xml',	'',	'',	''),
(720,	2,	0,	'Czech',	'',	'pkg_cs-CZ',	'package',	'',	0,	'5.3.1.1',	'',	'https://update.joomla.org/language/details5/cs-CZ_details.xml',	'',	'',	''),
(721,	2,	0,	'Danish',	'',	'pkg_da-DK',	'package',	'',	0,	'5.3.2.1',	'',	'https://update.joomla.org/language/details5/da-DK_details.xml',	'',	'',	''),
(722,	2,	0,	'Dutch',	'',	'pkg_nl-NL',	'package',	'',	0,	'5.3.2.1',	'',	'https://update.joomla.org/language/details5/nl-NL_details.xml',	'',	'',	''),
(723,	2,	0,	'English, Australia',	'',	'pkg_en-AU',	'package',	'',	0,	'5.3.0.1',	'',	'https://update.joomla.org/language/details5/en-AU_details.xml',	'',	'',	''),
(724,	2,	0,	'English, Canada',	'',	'pkg_en-CA',	'package',	'',	0,	'5.3.0.1',	'',	'https://update.joomla.org/language/details5/en-CA_details.xml',	'',	'',	''),
(725,	2,	0,	'English, New Zealand',	'',	'pkg_en-NZ',	'package',	'',	0,	'5.3.0.1',	'',	'https://update.joomla.org/language/details5/en-NZ_details.xml',	'',	'',	''),
(726,	2,	0,	'English, USA',	'',	'pkg_en-US',	'package',	'',	0,	'5.3.0.1',	'',	'https://update.joomla.org/language/details5/en-US_details.xml',	'',	'',	''),
(727,	2,	0,	'Estonian',	'',	'pkg_et-EE',	'package',	'',	0,	'5.2.5.1',	'',	'https://update.joomla.org/language/details5/et-EE_details.xml',	'',	'',	''),
(728,	2,	0,	'Finnish',	'',	'pkg_fi-FI',	'package',	'',	0,	'5.3.0.1',	'',	'https://update.joomla.org/language/details5/fi-FI_details.xml',	'',	'',	''),
(729,	2,	0,	'Flemish',	'',	'pkg_nl-BE',	'package',	'',	0,	'5.3.2.1',	'',	'https://update.joomla.org/language/details5/nl-BE_details.xml',	'',	'',	''),
(730,	2,	0,	'French',	'',	'pkg_fr-FR',	'package',	'',	0,	'5.3.2.1',	'',	'https://update.joomla.org/language/details5/fr-FR_details.xml',	'',	'',	''),
(731,	2,	0,	'French, Canada',	'',	'pkg_fr-CA',	'package',	'',	0,	'5.3.2.1',	'',	'https://update.joomla.org/language/details5/fr-CA_details.xml',	'',	'',	''),
(732,	2,	0,	'Georgian',	'',	'pkg_ka-GE',	'package',	'',	0,	'5.3.2.1',	'',	'https://update.joomla.org/language/details5/ka-GE_details.xml',	'',	'',	''),
(733,	2,	0,	'German',	'',	'pkg_de-DE',	'package',	'',	0,	'5.3.2.1',	'',	'https://update.joomla.org/language/details5/de-DE_details.xml',	'',	'',	''),
(734,	2,	0,	'German, Austria',	'',	'pkg_de-AT',	'package',	'',	0,	'5.3.2.1',	'',	'https://update.joomla.org/language/details5/de-AT_details.xml',	'',	'',	''),
(735,	2,	0,	'German, Liechtenstein',	'',	'pkg_de-LI',	'package',	'',	0,	'5.3.2.1',	'',	'https://update.joomla.org/language/details5/de-LI_details.xml',	'',	'',	''),
(736,	2,	0,	'German, Luxembourg',	'',	'pkg_de-LU',	'package',	'',	0,	'5.3.2.1',	'',	'https://update.joomla.org/language/details5/de-LU_details.xml',	'',	'',	''),
(737,	2,	0,	'German, Switzerland',	'',	'pkg_de-CH',	'package',	'',	0,	'5.3.2.1',	'',	'https://update.joomla.org/language/details5/de-CH_details.xml',	'',	'',	''),
(738,	2,	0,	'Greek',	'',	'pkg_el-GR',	'package',	'',	0,	'5.3.2.1',	'',	'https://update.joomla.org/language/details5/el-GR_details.xml',	'',	'',	''),
(739,	2,	0,	'Hungarian',	'',	'pkg_hu-HU',	'package',	'',	0,	'5.3.1.1',	'',	'https://update.joomla.org/language/details5/hu-HU_details.xml',	'',	'',	''),
(740,	2,	0,	'Italian',	'',	'pkg_it-IT',	'package',	'',	0,	'5.3.2.1',	'',	'https://update.joomla.org/language/details5/it-IT_details.xml',	'',	'',	''),
(741,	2,	0,	'Japanese',	'',	'pkg_ja-JP',	'package',	'',	0,	'5.3.2.1',	'',	'https://update.joomla.org/language/details5/ja-JP_details.xml',	'',	'',	''),
(742,	2,	0,	'Kazakh',	'',	'pkg_kk-KZ',	'package',	'',	0,	'5.0.0.4',	'',	'https://update.joomla.org/language/details5/kk-KZ_details.xml',	'',	'',	''),
(743,	2,	0,	'Korean',	'',	'pkg_ko-KR',	'package',	'',	0,	'5.0.2.1',	'',	'https://update.joomla.org/language/details5/ko-KR_details.xml',	'',	'',	''),
(744,	2,	0,	'Latvian',	'',	'pkg_lv-LV',	'package',	'',	0,	'5.2.4.1',	'',	'https://update.joomla.org/language/details5/lv-LV_details.xml',	'',	'',	''),
(745,	2,	0,	'Lithuanian',	'',	'pkg_lt-LT',	'package',	'',	0,	'5.3.0.1',	'',	'https://update.joomla.org/language/details5/lt-LT_details.xml',	'',	'',	''),
(746,	2,	0,	'Norwegian Bokmål',	'',	'pkg_nb-NO',	'package',	'',	0,	'5.2.3.1',	'',	'https://update.joomla.org/language/details5/nb-NO_details.xml',	'',	'',	''),
(747,	2,	0,	'Pashto Afghanistan',	'',	'pkg_ps-AF',	'package',	'',	0,	'5.0.1.1',	'',	'https://update.joomla.org/language/details5/ps-AF_details.xml',	'',	'',	''),
(748,	2,	0,	'Persian Farsi',	'',	'pkg_fa-IR',	'package',	'',	0,	'5.3.2.1',	'',	'https://update.joomla.org/language/details5/fa-IR_details.xml',	'',	'',	''),
(749,	2,	0,	'Polish',	'',	'pkg_pl-PL',	'package',	'',	0,	'5.2.4.1',	'',	'https://update.joomla.org/language/details5/pl-PL_details.xml',	'',	'',	''),
(750,	2,	0,	'Portuguese, Brazil',	'',	'pkg_pt-BR',	'package',	'',	0,	'5.3.0.1',	'',	'https://update.joomla.org/language/details5/pt-BR_details.xml',	'',	'',	''),
(751,	2,	0,	'Portuguese, Portugal',	'',	'pkg_pt-PT',	'package',	'',	0,	'5.2.2.1',	'',	'https://update.joomla.org/language/details5/pt-PT_details.xml',	'',	'',	''),
(752,	2,	0,	'Romanian',	'',	'pkg_ro-RO',	'package',	'',	0,	'5.3.1.1',	'',	'https://update.joomla.org/language/details5/ro-RO_details.xml',	'',	'',	''),
(753,	2,	0,	'Russian',	'',	'pkg_ru-RU',	'package',	'',	0,	'5.3.0.1',	'',	'https://update.joomla.org/language/details5/ru-RU_details.xml',	'',	'',	''),
(754,	2,	0,	'Serbian, Cyrillic',	'',	'pkg_sr-RS',	'package',	'',	0,	'5.3.1.1',	'',	'https://update.joomla.org/language/details5/sr-RS_details.xml',	'',	'',	''),
(755,	2,	0,	'Serbian, Latin',	'',	'pkg_sr-YU',	'package',	'',	0,	'5.3.3.1',	'',	'https://update.joomla.org/language/details5/sr-YU_details.xml',	'',	'',	''),
(756,	2,	0,	'Slovak',	'',	'pkg_sk-SK',	'package',	'',	0,	'5.2.6.1',	'',	'https://update.joomla.org/language/details5/sk-SK_details.xml',	'',	'',	''),
(757,	2,	0,	'Slovenian',	'',	'pkg_sl-SI',	'package',	'',	0,	'5.3.2.1',	'',	'https://update.joomla.org/language/details5/sl-SI_details.xml',	'',	'',	''),
(758,	2,	0,	'Spanish',	'',	'pkg_es-ES',	'package',	'',	0,	'5.3.2.1',	'',	'https://update.joomla.org/language/details5/es-ES_details.xml',	'',	'',	''),
(759,	2,	0,	'Swedish',	'',	'pkg_sv-SE',	'package',	'',	0,	'5.3.2.1',	'',	'https://update.joomla.org/language/details5/sv-SE_details.xml',	'',	'',	''),
(760,	2,	0,	'Tamil, India',	'',	'pkg_ta-IN',	'package',	'',	0,	'5.3.2.1',	'',	'https://update.joomla.org/language/details5/ta-IN_details.xml',	'',	'',	''),
(761,	2,	0,	'Thai',	'',	'pkg_th-TH',	'package',	'',	0,	'5.3.2.1',	'',	'https://update.joomla.org/language/details5/th-TH_details.xml',	'',	'',	''),
(762,	2,	0,	'Turkish',	'',	'pkg_tr-TR',	'package',	'',	0,	'5.3.2.1',	'',	'https://update.joomla.org/language/details5/tr-TR_details.xml',	'',	'',	''),
(763,	2,	0,	'Ukrainian',	'',	'pkg_uk-UA',	'package',	'',	0,	'5.1.3.1',	'',	'https://update.joomla.org/language/details5/uk-UA_details.xml',	'',	'',	''),
(764,	2,	0,	'Urdu, Pakistan',	'',	'pkg_ur-PK',	'package',	'',	0,	'5.1.2.1',	'',	'https://update.joomla.org/language/details5/ur-PK_details.xml',	'',	'',	''),
(765,	2,	0,	'Welsh',	'',	'pkg_cy-GB',	'package',	'',	0,	'5.3.2.1',	'',	'https://update.joomla.org/language/details5/cy-GB_details.xml',	'',	'',	'');

DROP TABLE IF EXISTS `n8am2_user_keys`;
CREATE TABLE `n8am2_user_keys` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `n8am2_user_mfa`;
CREATE TABLE `n8am2_user_mfa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint NOT NULL DEFAULT '0',
  `options` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `last_used` datetime DEFAULT NULL,
  `tries` int NOT NULL DEFAULT '0',
  `last_try` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Multi-factor Authentication settings';


DROP TABLE IF EXISTS `n8am2_user_notes`;
CREATE TABLE `n8am2_user_notes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `catid` int unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `checked_out` int unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `created_user_id` int unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL,
  `modified_user_id` int unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `review_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `n8am2_user_profiles`;
CREATE TABLE `n8am2_user_profiles` (
  `user_id` int NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

INSERT INTO `n8am2_user_profiles` (`user_id`, `profile_key`, `profile_value`, `ordering`) VALUES
(1,	'guidedtour.id.12',	'{\"state\":\"delayed\",\"time\":{\"date\":\"2025-07-24 23:49:06.953369\",\"timezone_type\":3,\"timezone\":\"UTC\"}}',	0),
(2,	'guidedtour.id.12',	'{\"state\":\"skipped\"}',	0),
(2,	'joomlatoken.enabled',	'1',	2),
(2,	'joomlatoken.token',	'Y1r//5bGchfXLB9BS2N9b2//3sDXBWCYKXBZW9UGCuI=',	1),
(3,	'guidedtour.id.12',	'{\"state\":\"delayed\",\"time\":{\"date\":\"2025-07-25 15:51:08.647572\",\"timezone_type\":3,\"timezone\":\"UTC\"}}',	0),
(3,	'joomlatoken.enabled',	'1',	2),
(3,	'joomlatoken.token',	'jZ0B0ypgUQf7FmYj3eml7ptE/HuRyRYF6B70usRXOc4=',	1);

DROP TABLE IF EXISTS `n8am2_user_usergroup_map`;
CREATE TABLE `n8am2_user_usergroup_map` (
  `user_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_user_usergroup_map` (`user_id`, `group_id`) VALUES
(1,	8),
(2,	8),
(3,	8);

DELIMITER ;;

CREATE TRIGGER `after_group_insert` AFTER INSERT ON `n8am2_user_usergroup_map` FOR EACH ROW
BEGIN
  INSERT INTO user_group_audit (
    user_id, old_group_id, new_group_id, changed_by_user, changed_from_ip
  )
  VALUES (
    NEW.user_id,
    NULL,
    NEW.group_id,
    SUBSTRING_INDEX(USER(), '@', 1),
    (SELECT SUBSTRING_INDEX(HOST, ':', 1)
     FROM information_schema.processlist
     WHERE ID = CONNECTION_ID()
     LIMIT 1)
  );
END;;

CREATE TRIGGER `before_group_update` BEFORE UPDATE ON `n8am2_user_usergroup_map` FOR EACH ROW
BEGIN
  IF OLD.group_id != NEW.group_id THEN
    INSERT INTO user_group_audit (
      user_id, old_group_id, new_group_id, changed_by_user, changed_from_ip
    )
    VALUES (
      NEW.user_id,
      OLD.group_id,
      NEW.group_id,
      SUBSTRING_INDEX(USER(), '@', 1),
      (SELECT SUBSTRING_INDEX(HOST, ':', 1)
       FROM information_schema.processlist
       WHERE ID = CONNECTION_ID()
       LIMIT 1)
    );
  END IF;
END;;

DELIMITER ;

DROP TABLE IF EXISTS `n8am2_usergroups`;
CREATE TABLE `n8am2_usergroups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1,	0,	1,	18,	'Public'),
(2,	1,	8,	15,	'Registered'),
(3,	2,	9,	14,	'Author'),
(4,	3,	10,	13,	'Editor'),
(5,	4,	11,	12,	'Publisher'),
(6,	1,	4,	7,	'Manager'),
(7,	6,	5,	6,	'Administrator'),
(8,	1,	16,	17,	'Super Users'),
(9,	1,	2,	3,	'Guest');

DROP TABLE IF EXISTS `n8am2_users`;
CREATE TABLE `n8am2_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint NOT NULL DEFAULT '0',
  `sendEmail` tinyint DEFAULT '0',
  `registerDate` datetime NOT NULL,
  `lastvisitDate` datetime DEFAULT NULL,
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime DEFAULT NULL COMMENT 'Date of last password reset',
  `resetCount` int NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Backup Codes',
  `requireReset` tinyint NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  `authProvider` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Name of used authentication plugin',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`),
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`, `authProvider`) VALUES
(1,	'Gilbert A. Darrell',	'g.darrell',	'g.darrell@college.bm',	'$2y$10$9XgoClEUnpx4PhRmiQ.19eRo8t.U4OEAL7CiIwbunYbgJF23pyf8C',	0,	1,	'2025-06-11 23:02:03',	'2025-07-24 23:49:02',	'0',	'',	NULL,	0,	'',	'',	0,	''),
(2,	'Web Dev',	'webdev',	'webdev@local',	'$2y$10$/.pQEgUkOln9PaP6/VR4FeJkv37FQl9bXc4Y1WynZi5kQBMeSJoC.',	0,	0,	'2025-06-12 12:33:45',	'2025-07-25 12:51:24',	'',	'{\"admin_style\":\"\",\"colorScheme\":\"\",\"allowTourAutoStart\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\",\"a11y_mono\":\"0\",\"a11y_contrast\":\"0\",\"a11y_highlight\":\"0\",\"a11y_font\":\"0\"}',	NULL,	0,	'',	'',	0,	''),
(3,	'Developer',	'web.dev',	'web.dev@local',	'$2y$10$DSchvkf0mmCHKyRacvDeTOMKFfpwVpZkMBeMiRuUUPUonNYTf0Dem',	0,	0,	'2025-07-22 00:05:04',	'2025-07-25 15:50:59',	'',	'{\"admin_style\":\"\",\"colorScheme\":\"\",\"allowTourAutoStart\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\",\"a11y_mono\":\"0\",\"a11y_contrast\":\"0\",\"a11y_highlight\":\"0\",\"a11y_font\":\"0\"}',	NULL,	0,	'',	'',	0,	'');

DROP TABLE IF EXISTS `n8am2_viewlevels`;
CREATE TABLE `n8am2_viewlevels` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1,	'Public',	0,	'[1]'),
(2,	'Registered',	2,	'[6,2,8]'),
(3,	'Special',	3,	'[6,3,8]'),
(5,	'Guest',	1,	'[9]'),
(6,	'Super Users',	4,	'[8]');

DROP TABLE IF EXISTS `n8am2_webauthn_credentials`;
CREATE TABLE `n8am2_webauthn_credentials` (
  `id` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Credential ID',
  `user_id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'User handle',
  `label` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Human readable label',
  `credential` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Credential source data, JSON format',
  PRIMARY KEY (`id`(100)),
  KEY `user_id` (`user_id`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `n8am2_workflow_associations`;
CREATE TABLE `n8am2_workflow_associations` (
  `item_id` int NOT NULL DEFAULT '0' COMMENT 'Extension table id value',
  `stage_id` int NOT NULL COMMENT 'Foreign Key to #__workflow_stages.id',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`item_id`,`extension`),
  KEY `idx_item_stage_extension` (`item_id`,`stage_id`,`extension`),
  KEY `idx_item_id` (`item_id`),
  KEY `idx_stage_id` (`stage_id`),
  KEY `idx_extension` (`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_workflow_associations` (`item_id`, `stage_id`, `extension`) VALUES
(1,	1,	'com_content.article'),
(2,	1,	'com_content.article');

DROP TABLE IF EXISTS `n8am2_workflow_stages`;
CREATE TABLE `n8am2_workflow_stages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `workflow_id` int NOT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_workflow_id` (`workflow_id`),
  KEY `idx_checked_out` (`checked_out`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_default` (`default`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_workflow_stages` (`id`, `asset_id`, `ordering`, `workflow_id`, `published`, `title`, `description`, `default`, `checked_out_time`, `checked_out`) VALUES
(1,	57,	1,	1,	1,	'COM_WORKFLOW_BASIC_STAGE',	'',	1,	NULL,	NULL);

DROP TABLE IF EXISTS `n8am2_workflow_transitions`;
CREATE TABLE `n8am2_workflow_transitions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `workflow_id` int NOT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_stage_id` int NOT NULL,
  `to_stage_id` int NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_checked_out` (`checked_out`),
  KEY `idx_from_stage_id` (`from_stage_id`),
  KEY `idx_to_stage_id` (`to_stage_id`),
  KEY `idx_workflow_id` (`workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_workflow_transitions` (`id`, `asset_id`, `ordering`, `workflow_id`, `published`, `title`, `description`, `from_stage_id`, `to_stage_id`, `options`, `checked_out_time`, `checked_out`) VALUES
(1,	58,	1,	1,	1,	'UNPUBLISH',	'',	-1,	1,	'{\"publishing\":\"0\"}',	NULL,	NULL),
(2,	59,	2,	1,	1,	'PUBLISH',	'',	-1,	1,	'{\"publishing\":\"1\"}',	NULL,	NULL),
(3,	60,	3,	1,	1,	'TRASH',	'',	-1,	1,	'{\"publishing\":\"-2\"}',	NULL,	NULL),
(4,	61,	4,	1,	1,	'ARCHIVE',	'',	-1,	1,	'{\"publishing\":\"2\"}',	NULL,	NULL),
(5,	62,	5,	1,	1,	'FEATURE',	'',	-1,	1,	'{\"featuring\":\"1\"}',	NULL,	NULL),
(6,	63,	6,	1,	1,	'UNFEATURE',	'',	-1,	1,	'{\"featuring\":\"0\"}',	NULL,	NULL),
(7,	64,	7,	1,	1,	'PUBLISH_AND_FEATURE',	'',	-1,	1,	'{\"publishing\":\"1\",\"featuring\":\"1\"}',	NULL,	NULL);

DROP TABLE IF EXISTS `n8am2_workflows`;
CREATE TABLE `n8am2_workflows` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int DEFAULT '0',
  `published` tinyint NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL,
  `modified_by` int NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_extension` (`extension`),
  KEY `idx_default` (`default`),
  KEY `idx_created` (`created`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_modified` (`modified`),
  KEY `idx_modified_by` (`modified_by`),
  KEY `idx_checked_out` (`checked_out`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `n8am2_workflows` (`id`, `asset_id`, `published`, `title`, `description`, `extension`, `default`, `ordering`, `created`, `created_by`, `modified`, `modified_by`, `checked_out_time`, `checked_out`) VALUES
(1,	56,	1,	'COM_WORKFLOW_BASIC_WORKFLOW',	'',	'com_content.article',	1,	1,	'2025-06-11 23:01:57',	1,	'2025-06-11 23:01:57',	1,	NULL,	NULL);

DROP TABLE IF EXISTS `user_group_audit`;
CREATE TABLE `user_group_audit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `old_group_id` int DEFAULT NULL,
  `new_group_id` int DEFAULT NULL,
  `changed_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `changed_by_user` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `changed_from_ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- 2025-07-25 16:53:16
