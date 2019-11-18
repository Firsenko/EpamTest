-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Ноя 18 2019 г., 13:00
-- Версия сервера: 5.7.27-0ubuntu0.18.04.1
-- Версия PHP: 7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `epamtest`
--

-- --------------------------------------------------------

--
-- Структура таблицы `areas`
--

CREATE TABLE `areas` (
  `id` int(11) NOT NULL,
  `area` varchar(255) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `areas`
--

INSERT INTO `areas` (`id`, `area`, `timestamp`, `user_id`) VALUES
(41, 'nav', 1574076613, 79978373),
(42, 'main', 1574076623, 79978373),
(43, 'main', 1574076625, 79978373),
(44, 'nav', 1574076693, 79978373),
(45, 'nav', 1574077915, 79978373),
(46, 'news', 1574077921, 79978373),
(47, 'main', 1574077926, 79978373),
(48, 'nav', 1574077948, 79978373),
(49, 'nav', 1574080106, 79978373),
(50, 'nav', 1574080124, 79978373),
(51, 'news', 1574080126, 79978373),
(52, 'news', 1574080130, 79978373),
(53, 'nav', 1574080143, 79978373),
(54, 'nav', 1574081364, 79978373),
(55, 'nav', 1574081455, 79978373),
(56, 'news', 1574081458, 79978373),
(57, 'news', 1574081462, 79978373),
(58, 'nav', 1574081471, 79978373),
(59, 'nav', 1574081599, 79978373);

-- --------------------------------------------------------

--
-- Структура таблицы `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `locale` varchar(2) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `faqs`
--

INSERT INTO `faqs` (`id`, `locale`, `question`, `answer`) VALUES
(2, 'en', 'Lorem ipsum', 'EpamTest loprem ipsum'),
(4, 'ru', 'EpamTest loprem ipsum', 'EpamTest loprem ipsum');

-- --------------------------------------------------------

--
-- Структура таблицы `langs`
--

CREATE TABLE `langs` (
  `id` int(11) NOT NULL,
  `name` varchar(16) NOT NULL,
  `locale` varchar(2) NOT NULL,
  `original` varchar(32) NOT NULL,
  `flag` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `langs`
--

INSERT INTO `langs` (`id`, `name`, `locale`, `original`, `flag`) VALUES
(1, 'English', 'en', 'English', 'gb'),
(2, 'Russian', 'ru', 'Русский', 'ru');

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1531208255),
('m140209_132017_init', 1531208258),
('m140403_174025_create_account_table', 1531208258),
('m140504_113157_update_tables', 1531208258),
('m140504_130429_create_token_table', 1531208258),
('m140830_171933_fix_ip_field', 1531208258),
('m140830_172703_change_account_table_name', 1531208258),
('m141222_110026_update_ip_field', 1531208258),
('m141222_135246_alter_username_length', 1531208258),
('m150614_103145_update_social_account_table', 1531208258),
('m150623_212711_fix_username_notnull', 1531208258),
('m151218_234654_add_timezone_to_profile', 1531208258),
('m160929_103127_add_last_login_at_to_user_table', 1531208258);

-- --------------------------------------------------------

--
-- Структура таблицы `navigation`
--

CREATE TABLE `navigation` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `locale` varchar(2) NOT NULL,
  `position` int(11) NOT NULL,
  `in_footer` tinyint(1) NOT NULL,
  `pages` text NOT NULL,
  `anchor` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `navigation`
--

INSERT INTO `navigation` (`id`, `title`, `locale`, `position`, `in_footer`, `pages`, `anchor`) VALUES
(23, 'Home', 'en', 1, 0, '13', ''),
(26, 'Analytics', 'en', 3, 0, '27', ''),
(29, 'Главная страница', 'ru', 1, 0, '20', '');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `locale` varchar(2) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `content` longtext NOT NULL,
  `meta_title` varchar(128) NOT NULL,
  `meta_description` varchar(256) NOT NULL,
  `keywords` varchar(256) NOT NULL,
  `head_scripts` text NOT NULL,
  `body_scripts` text NOT NULL,
  `index` tinyint(1) NOT NULL,
  `follow` tinyint(1) NOT NULL,
  `home_page` tinyint(1) NOT NULL,
  `hide` tinyint(1) NOT NULL,
  `anchor` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `title`, `locale`, `slug`, `content`, `meta_title`, `meta_description`, `keywords`, `head_scripts`, `body_scripts`, `index`, `follow`, `home_page`, `hide`, `anchor`) VALUES
(13, 'Home', 'en', 'home', '<div class=\"container\">\r\n<div class=\"row\">\r\n<aside data-area=\"news\" class=\"col-sm-4 clickable\">[[BLOG]]</aside>\r\n<article data-area=\"main\" class=\"col-sm-8 clickable\">[[BLOG]]</article>\r\n</div>\r\n</div>', '', '', '', '', '', 0, 0, 1, 0, ''),
(14, 'Blog', 'en', 'blog', '<div class=\"container\">[[BLOG]]</div>', '', '', '', '', '', 0, 0, 0, 0, ''),
(15, 'Contact Us', 'en', 'contact-us', '<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-md-6\">\n<p>Contact Us</p>\n<div>[[CONTACT_FORM]]</div>\n</div>\n</div>\n</div>', '', '', '', '', '', 0, 0, 0, 0, ''),
(16, 'About Us', 'en', 'about-us', '<div class=\"container\">About Us</div>', '', '', '', '', '', 0, 0, 0, 0, ''),
(17, 'FAQ', 'en', 'faq', '<div class=\"container\">[[FAQ]]</div>', '', '', '', '', '', 0, 0, 0, 0, ''),
(18, 'Terms & Conditions', 'en', 'terms---conditions', '<div class=\"container\">Terms and Conditions</div>', '', '', '', '', '', 0, 0, 0, 0, ''),
(19, 'Privacy Policy', 'en', 'privacy-policy', '<div class=\"container\">Privacy Policy</div>', '', '', '', '', '', 0, 0, 0, 0, ''),
(20, 'Главная страница', 'ru', 'glavnaia-stranitsa', '<div class=\"container\">\r\n<p>Home Page</p>\r\n</div>', '', '', '', '', '', 0, 0, 1, 0, ''),
(21, 'Блог', 'ru', 'blog-ru', '<div class=\"container\">[[BLOG]]</div>', '', '', '', '', '', 0, 0, 0, 0, ''),
(22, 'О нас', 'en', 'o-nas', '<div class=\"container\">About Us</div>', '', '', '', '', '', 0, 0, 0, 0, ''),
(23, 'ЧаВо', 'ru', 'chavo', '<div class=\"container\">[[FAQ]]</div>', '', '', '', '', '', 0, 0, 0, 0, ''),
(24, 'Связаться с Нами', 'ru', 'sviazatsia-s-nami', '<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<p>Contact Us</p>\r\n<div>[[CONTACT_FORM]]</div>\r\n</div>\r\n</div>\r\n</div>', '', '', '', '', '', 0, 0, 0, 0, ''),
(25, 'Условия и Положения', 'ru', 'usloviia-i-polozhieniia', '<div class=\"container\">Terms and Conditions</div>', '', '', '', '', '', 0, 0, 0, 0, ''),
(26, 'Политика конфиденциальности', 'ru', 'politika-konfidientsialnosti', '<div class=\"container\">Privacy Policy</div>', '', '', '', '', '', 0, 0, 0, 0, ''),
(27, 'Analytics', 'en', 'analytics', '<div class=\"container\">[[CONTACT_FORM]]</div>', '', '', '', '', '', 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `preview` varchar(512) NOT NULL,
  `text` text NOT NULL,
  `img` varchar(32) NOT NULL,
  `created_by` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `slug` varchar(64) NOT NULL,
  `locale` varchar(2) NOT NULL,
  `hide` tinyint(1) NOT NULL,
  `meta_title` varchar(128) NOT NULL,
  `meta_description` varchar(256) NOT NULL,
  `keywords` varchar(256) NOT NULL,
  `index` tinyint(1) NOT NULL,
  `follow` tinyint(1) NOT NULL,
  `views` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `preview`, `text`, `img`, `created_by`, `date`, `slug`, `locale`, `hide`, `meta_title`, `meta_description`, `keywords`, `index`, `follow`, `views`) VALUES
(1, 'First post in blog', '<p>...and this is a description</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec aliquam quam ut dolor sagittis pellentesque. Fusce dictum enim at nisi suscipit ullamcorper. Donec sem mi, commodo vulputate est quis, facilisis posuere ligula. Maecenas ultrices felis rutrum libero feugiat pretium. Ut odio sapien, vestibulum ac nunc a, convallis rutrum purus. Etiam quis enim magna. Integer semper neque nec dui cursus, sed laoreet metus maximus. Fusce pretium et purus eget tincidunt. Sed lorem nisi, faucibus vitae convallis eu, ullamcorper eu enim.</p>\r\n<p>Vivamus consectetur eu arcu quis luctus. Quisque eu diam nec nisi imperdiet lacinia eget eu metus. Fusce ultrices in neque sed euismod. Donec dictum aliquet ornare. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam massa erat, placerat non nisi id, lobortis imperdiet sapien. Duis nibh arcu, faucibus ac odio nec, lobortis viverra sem. Curabitur bibendum lacus sit amet arcu dignissim, eget euismod est feugiat.</p>\r\n<p>Vivamus a ipsum ac est consectetur lacinia. Integer magna diam, varius sed turpis eu, lacinia cursus risus. Praesent eget ultricies elit. Ut ac nibh id nisi commodo mollis vitae elementum nunc. Donec id nunc non metus fringilla porta at ut massa. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris non convallis nibh. Praesent auctor velit velit, ut blandit mi suscipit non. Nullam augue ex, pellentesque sollicitudin placerat ut, dapibus nec ligula. Ut a nibh lacinia ligula imperdiet posuere vitae ac enim. Quisque blandit sed odio at laoreet. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent ut accumsan est. Donec elementum dolor vitae mi fermentum, vel auctor eros rhoncus. Proin id nisi magna.</p>\r\n<p>Etiam ante metus, convallis et blandit sed, suscipit quis lacus. Fusce volutpat ipsum eget quam faucibus tincidunt. Etiam eget magna vel mi sagittis posuere nec eget lacus. Nullam dignissim magna mattis, sodales tellus non, commodo risus. Duis est elit, laoreet eget dignissim non, aliquam dapibus augue. Suspendisse pulvinar porttitor ullamcorper. Maecenas ullamcorper ut mi nec vestibulum. Fusce ac pellentesque ipsum, sed volutpat mi.</p>\r\n<p>Praesent id cursus lectus. Nunc molestie, tellus at vestibulum porttitor, felis nisl malesuada turpis, sit amet molestie ex dui nec turpis. Vestibulum ac feugiat neque. Phasellus pretium neque convallis, condimentum velit sed, blandit erat. Nunc non neque lectus. Duis id tristique sapien. Pellentesque volutpat in odio pulvinar sagittis. Donec ut pretium purus. Mauris pharetra ultrices dui id consectetur. Morbi elementum aliquet felis in pretium. Nulla nec ipsum sem. Aenean hendrerit, tellus laoreet consequat scelerisque, felis ipsum porttitor arcu, non suscipit velit nunc at metus. In id libero pretium, imperdiet ex eget, scelerisque neque. Suspendisse vehicula in diam non ornare. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec bibendum, magna eget rutrum auctor, tellus metus volutpat lectus, vel convallis arcu ante a nulla.</p>', '/img/blog/LFLPRXWCxr5.png', 35, '2018-09-01 11:51:44', 'first-post-in-blog', 'en', 0, 'First post in blog', 'First post in blog', 'First post in blog', 1, 1, 1),
(4, 'Первая запись в блоге', '<p>...и её описание</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec aliquam quam ut dolor sagittis pellentesque. Fusce dictum enim at nisi suscipit ullamcorper. Donec sem mi, commodo vulputate est quis, facilisis posuere ligula. Maecenas ultrices felis rutrum libero feugiat pretium. Ut odio sapien, vestibulum ac nunc a, convallis rutrum purus. Etiam quis enim magna. Integer semper neque nec dui cursus, sed laoreet metus maximus. Fusce pretium et purus eget tincidunt. Sed lorem nisi, faucibus vitae convallis eu, ullamcorper eu enim.</p>\r\n<p>Vivamus consectetur eu arcu quis luctus. Quisque eu diam nec nisi imperdiet lacinia eget eu metus. Fusce ultrices in neque sed euismod. Donec dictum aliquet ornare. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam massa erat, placerat non nisi id, lobortis imperdiet sapien. Duis nibh arcu, faucibus ac odio nec, lobortis viverra sem. Curabitur bibendum lacus sit amet arcu dignissim, eget euismod est feugiat.</p>\r\n<p>Vivamus a ipsum ac est consectetur lacinia. Integer magna diam, varius sed turpis eu, lacinia cursus risus. Praesent eget ultricies elit. Ut ac nibh id nisi commodo mollis vitae elementum nunc. Donec id nunc non metus fringilla porta at ut massa. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris non convallis nibh. Praesent auctor velit velit, ut blandit mi suscipit non. Nullam augue ex, pellentesque sollicitudin placerat ut, dapibus nec ligula. Ut a nibh lacinia ligula imperdiet posuere vitae ac enim. Quisque blandit sed odio at laoreet. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent ut accumsan est. Donec elementum dolor vitae mi fermentum, vel auctor eros rhoncus. Proin id nisi magna.</p>\r\n<p>Etiam ante metus, convallis et blandit sed, suscipit quis lacus. Fusce volutpat ipsum eget quam faucibus tincidunt. Etiam eget magna vel mi sagittis posuere nec eget lacus. Nullam dignissim magna mattis, sodales tellus non, commodo risus. Duis est elit, laoreet eget dignissim non, aliquam dapibus augue. Suspendisse pulvinar porttitor ullamcorper. Maecenas ullamcorper ut mi nec vestibulum. Fusce ac pellentesque ipsum, sed volutpat mi.</p>\r\n<p>Praesent id cursus lectus. Nunc molestie, tellus at vestibulum porttitor, felis nisl malesuada turpis, sit amet molestie ex dui nec turpis. Vestibulum ac feugiat neque. Phasellus pretium neque convallis, condimentum velit sed, blandit erat. Nunc non neque lectus. Duis id tristique sapien. Pellentesque volutpat in odio pulvinar sagittis. Donec ut pretium purus. Mauris pharetra ultrices dui id consectetur. Morbi elementum aliquet felis in pretium. Nulla nec ipsum sem. Aenean hendrerit, tellus laoreet consequat scelerisque, felis ipsum porttitor arcu, non suscipit velit nunc at metus. In id libero pretium, imperdiet ex eget, scelerisque neque. Suspendisse vehicula in diam non ornare. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec bibendum, magna eget rutrum auctor, tellus metus volutpat lectus, vel convallis arcu ante a nulla.</p>', '/img/blog/GtvbsT8Z9SZ.jpg', 35, '2019-09-02 08:24:36', 'piervaia-zapis-v-blogie', 'ru', 0, '', '', '', 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `profile`
--

CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `timezone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `profile`
--

INSERT INTO `profile` (`user_id`, `name`, `public_email`, `gravatar_email`, `gravatar_id`, `location`, `website`, `bio`, `timezone`) VALUES
(35, 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `message` text NOT NULL,
  `country` varchar(32) NOT NULL,
  `subject` varchar(128) NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `requests`
--

INSERT INTO `requests` (`id`, `name`, `email`, `message`, `country`, `subject`, `date`, `ip`, `status`) VALUES
(10, 'Test', 'test@test.com', 'test', 'Ukraine', 'Email', '2018-09-01 13:25:57', '95.67.107.154', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `locale` varchar(2) DEFAULT NULL,
  `youtube` varchar(128) DEFAULT NULL,
  `facebook` varchar(128) DEFAULT NULL,
  `twitter` varchar(128) DEFAULT NULL,
  `footer` text,
  `email` varchar(128) DEFAULT NULL,
  `instagram` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `name`, `locale`, `youtube`, `facebook`, `twitter`, `footer`, `email`, `instagram`) VALUES
(1, 'EpamTest ', 'en', '', '', '', '', '', ''),
(2, 'EpamTest ', 'ru', '', '', '', '', NULL, '');

-- --------------------------------------------------------

--
-- Структура таблицы `site_settings`
--

CREATE TABLE `site_settings` (
  `id` int(11) NOT NULL,
  `user_module_enabled` tinyint(1) NOT NULL,
  `faq_module_enabled` tinyint(1) NOT NULL,
  `blog_module_enabled` tinyint(1) NOT NULL,
  `admin_email` varchar(32) NOT NULL,
  `language_module_enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `site_settings`
--

INSERT INTO `site_settings` (`id`, `user_module_enabled`, `faq_module_enabled`, `blog_module_enabled`, `admin_email`, `language_module_enabled`) VALUES
(1, 0, 0, 1, 'fira.webdev@gmail.com', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `social_account`
--

CREATE TABLE `social_account` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `style`
--

CREATE TABLE `style` (
  `id` int(11) NOT NULL,
  `logo` varchar(32) NOT NULL,
  `background` varchar(32) NOT NULL,
  `footer_color` varchar(32) NOT NULL,
  `favicon` varchar(32) NOT NULL,
  `background_color` varchar(16) NOT NULL,
  `background_img` tinyint(1) NOT NULL,
  `highlight_tab` tinyint(1) NOT NULL,
  `navbar_color` varchar(16) NOT NULL,
  `active_link_color` varchar(16) NOT NULL,
  `navbar_links_color` varchar(16) NOT NULL,
  `navbar_border_color` varchar(16) NOT NULL,
  `active_link_background` varchar(16) NOT NULL,
  `link_hover_color` varchar(16) NOT NULL,
  `link_hover_background` varchar(16) NOT NULL,
  `ddm_background` varchar(16) NOT NULL,
  `ddm_links` varchar(16) NOT NULL,
  `ddm_border` varchar(16) NOT NULL,
  `ddm_active` varchar(16) NOT NULL,
  `ddm_hover_background` varchar(16) NOT NULL,
  `ddm_hover_text` varchar(16) NOT NULL,
  `ddm_active_background` varchar(16) NOT NULL,
  `logo_width` int(11) NOT NULL,
  `fixed_navbar` tinyint(1) NOT NULL,
  `navbar_transition` tinyint(1) NOT NULL,
  `transition_color` varchar(16) NOT NULL,
  `transition_time` int(11) NOT NULL,
  `footer_background_color` varchar(16) NOT NULL,
  `footer_titles_color` varchar(16) NOT NULL,
  `footer_links_color` varchar(16) NOT NULL,
  `footer_text_color` varchar(16) NOT NULL,
  `footer_social_links_color` varchar(16) NOT NULL,
  `footer_links_hover_color` varchar(16) NOT NULL,
  `navbar_align` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `style`
--

INSERT INTO `style` (`id`, `logo`, `background`, `footer_color`, `favicon`, `background_color`, `background_img`, `highlight_tab`, `navbar_color`, `active_link_color`, `navbar_links_color`, `navbar_border_color`, `active_link_background`, `link_hover_color`, `link_hover_background`, `ddm_background`, `ddm_links`, `ddm_border`, `ddm_active`, `ddm_hover_background`, `ddm_hover_text`, `ddm_active_background`, `logo_width`, `fixed_navbar`, `navbar_transition`, `transition_color`, `transition_time`, `footer_background_color`, `footer_titles_color`, `footer_links_color`, `footer_text_color`, `footer_social_links_color`, `footer_links_hover_color`, `navbar_align`) VALUES
(1, '', '/img/background.jpg', '#000', '/web/favicon.ico', '#ffffff', 1, 1, '#ffffff', '#0000ff', '#000000', 'transparent', '#ffffff', '#434343', 'transparent', '#ffffff', '#000000', '#d9d9d9', '#ffffff', '#4a86e8', '#ffffff', '#4a86e8', 250, 0, 1, '#cccccc', 1, '#000000', '#d9d9d9', '#cfe2f3', '#ffffff', '#ffffff', '#4a86e8', 'navbar-right');

-- --------------------------------------------------------

--
-- Структура таблицы `token`
--

CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `token`
--

INSERT INTO `token` (`user_id`, `code`, `created_at`, `type`) VALUES
(35, 'unNtFkmv4B3lpc6N8TJZjEhmWK-cp2VQ', 1533212299, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `last_login_at` int(11) DEFAULT NULL,
  `auth_token` text COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `zip_code` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `mt4id` int(11) NOT NULL,
  `access_token` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`, `last_login_at`, `auth_token`, `first_name`, `last_name`, `country`, `city`, `zip_code`, `address`, `state`, `phone`, `mt4id`, `access_token`) VALUES
(35, 'admin@admin.com', 'admin@admin.com', '$2y$12$TGj4JH2AOUSK16P9/DmTS.cUXicVilGgqWJTzYWIeCn.4S3W.Izv2', 'f0cNIVCuynx_A4wrig2Fio-mQ9k7eIg8', 1535716937, NULL, NULL, '95.67.107.154', 1531917250, 1535721699, 0, 1574072258, '4qQOwljLeynMTqAUBKdwm8SSFBeMSXgmboquFXzvLUPwxscjmNdYxeqkFjclVZdSqfA3D5JBEenyw4U1hdo4rmCSHe', 'Ilya', 'Koopiyanov', 'Ukraine', 'Kiev', '011103', 'Bulvarno-Kudriavska 24b', 'Kyiv state', '+380663879427', 0, 'I8vxR6XEEYZxPavtQqUtoeXxJBAabr5n');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `langs`
--
ALTER TABLE `langs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `navigation`
--
ALTER TABLE `navigation`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `social_account`
--
ALTER TABLE `social_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_unique` (`provider`,`client_id`),
  ADD UNIQUE KEY `account_unique_code` (`code`),
  ADD KEY `fk_user_account` (`user_id`);

--
-- Индексы таблицы `style`
--
ALTER TABLE `style`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `token`
--
ALTER TABLE `token`
  ADD UNIQUE KEY `token_unique` (`user_id`,`code`,`type`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_unique_username` (`username`),
  ADD UNIQUE KEY `user_unique_email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT для таблицы `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `langs`
--
ALTER TABLE `langs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `navigation`
--
ALTER TABLE `navigation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `social_account`
--
ALTER TABLE `social_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `style`
--
ALTER TABLE `style`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `social_account`
--
ALTER TABLE `social_account`
  ADD CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
