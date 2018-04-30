-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-04-30 13:39:52
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bibased`
--

-- --------------------------------------------------------

--
-- 表的结构 `answers`
--

CREATE TABLE `answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `votes_count` int(11) NOT NULL DEFAULT '0',
  `comments_count` int(11) NOT NULL DEFAULT '0',
  `is_hidden` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'F',
  `close_comment` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'F',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `answers`
--

INSERT INTO `answers` (`id`, `user_id`, `question_id`, `body`, `votes_count`, `comments_count`, `is_hidden`, `close_comment`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '<p>对于多人项目，只需要在自己写的bug那里留下几行注释——</p><p>“如果你调试到这里，说明你摊上事了。但是年轻人，别紧张，作为这个bug的创造者，我有一个好消息，和一个坏消息要告诉你。<br/>坏消息是这个bug确实很棘手，很难解决。<br/>好消息是，你可以加我QQxxxxxxxx，我们一起探讨。”</p><p><br/>然后你就可以收获一大堆好友，和他们一起探讨素质三连在各种语境下的运用</p><p><span style="color: rgb(26, 26, 26); font-family: -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 15px; white-space: pre-wrap; background-color: rgb(255, 255, 255);">不要问我为什么知道，又有人加我好友了…</span></p>', 0, 0, 'F', 'F', '2018-04-26 17:41:07', '2018-04-26 17:41:07');

-- --------------------------------------------------------

--
-- 表的结构 `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comments_count` int(11) NOT NULL DEFAULT '0',
  `followers_count` int(11) NOT NULL DEFAULT '1',
  `close_comment` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'F',
  `is_hidden` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'F',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reads_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `user_id`, `comments_count`, `followers_count`, `close_comment`, `is_hidden`, `created_at`, `updated_at`, `text`, `reads_count`) VALUES
(10, '2018-4-27', '<div data-v-526cb7c7=""><div data-v-526cb7c7=""><div data-v-526cb7c7=""><div data-v-526cb7c7=""></div><div data-v-526cb7c7=""></div><p>阿达达</p></div><p>后耦合马上到家</p></div><p>是谁啊</p><p><br></p></div><p>是谁啊</p><p><br></p>', 1, 0, 1, 'F', 'F', NULL, NULL, '阿达达后耦合马上到家是谁啊是谁啊', 0),
(12, '3×这才是应该装在你电脑上的“全家桶”软件', '<div data-v-526cb7c7=""><div data-v-526cb7c7=""><div data-v-526cb7c7=""><div data-v-526cb7c7=""><div data-v-526cb7c7=""></div><div><div><p>首先谢谢大家对这个系列的支持</p><p>之前的两期推荐的软件类型涵盖了</p><p>防护清理</p><p>资源下载</p><p>影视播放</p><p>桌面工具</p><p>需求较大的几个方面，</p><p>第三期则将推荐更多其他类型的软件</p><p>同时，希望大家多多推荐自己心水的软件</p><p>我之后会把这三期在各平台评论区中</p><p>被推荐多次的软件捞起来</p><p>再做一个番外</p><p><br></p><p></p><blockquote><p><b>Teamviewer&amp;Anydesk</b></p></blockquote><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1866770-930d845df4b6957b?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div></div>\n</div><p>Tamviewer是一款进行<b>远程支持、远程访问、协助在线协作和会议</b>的软件。</p><p>tv有名远程控制工具了，可以帮助我们实现平台间的远程控制，在两个平台上<b>同时都有安装</b>即可实现。</p><p>主要功能是<b>当你出门在外</b>，没带自己常用的电脑，也可以用平板、手机访问、控制你的电脑以及组织在线会议。</p><p>操作页面直观，就像<b>真正在使用自己的电脑</b>，支持文件传输、实时语音等功能。</p><p>而另一款类似功能的软件anydesk小巧一些，<b>流畅性相比tv差一点</b>，个人使用还是可以的。</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1866770-e4ce8955d680f78b?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div></div>\n</div><p>tv个人体验版免费，企业用收费。ad有免费版也有高级付费版。</p><p><br></p><blockquote><p><b>Total commander</b></p></blockquote><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1866770-5164aa14167321b1?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div></div>\n</div><p>TC被号称是<b>windows平台上最强的文件管理器</b>，一款围绕着电脑软件各种操作的软件。</p><p>关于文件的<b>常见操作</b>如复制移动粘贴、搜索查看、压缩解压，以及不常见的FTP使用在TC上<b>都可以完成</b>。</p><p>其中一些功能也有其他专业软件可以完成，而TC的强大之处就在<b>几乎包含</b>了处理文件的功能，并且可能比一些专业软件的使用<b>更加便捷</b>。</p><p>可以说它本身就是<b>关于电脑文件的一个“全家桶”软件</b>，在多个国家流行，也有简体中文版。</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1866770-1cce40ab484cc841?imageMogr2/auto-orient/strip%7CimageView2/2/w/336"></div>\n</div>\n<div></div>\n</div><p>最舒服的是它的双窗口设置↓</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1866770-93f8e8b8f1af8778?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div></div>\n</div><p><b>常用的几个快捷键</b>在下方都提示好了，TC还支持<b>自定义各种配置</b>，打造属于自己的一款文件管理器。</p><p>同时，一款强大的软件貌似都会<b>配置支持各种扩展功能</b>的插件，TC也是，总之这是一款适合对文件管理有一定深度需求的用户进行使用的软件，有<b>一定的学习成本</b>。</p><p>虽然TC说是付费软件，但未注册的用户<b>仍然可以完全使用</b>它的所有功能，真是<b>令人想打赏</b>的操作。</p><p><br></p><blockquote><p><b>Fastone capture</b></p></blockquote><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1866770-13c79a357e355fbd?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div></div>\n</div><p>就是这么一个<b>小小的界面</b>，FC却是一款非常好用的图像工具。</p><p>小巧简便，可以进行图像查看浏览、编辑处理以及最为被称赞的<b>花式截屏</b>功能。</p><p>可以捕获活动窗口、按形状截取窗口、捕获全屏等，其中<b>捕获滚动窗口功能就相当于手机上的截长屏</b>，在电脑上滚动截取长网页。</p><p>不过你可能会发现，很多网站都有<b>分页浏览</b>，就无法一次性截完整个内容。不怕，这里再配合一个自<b>动在一个屏内翻页的油猴脚本</b>就可以完美解决了，后面一起发给大家地址。</p><p>还有个<b>小tips</b>：设置截屏后直接发送到剪贴板而不是程序内再打开保存会方便一些。</p><p><br></p><blockquote><p><b>Icons8</b></p></blockquote><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1866770-bf8b517d27945394?imageMogr2/auto-orient/strip%7CimageView2/2/w/640"></div>\n</div>\n<div></div>\n</div><p>设计师的利器，内含<b>大量图标资源</b>的一款软件包，能为设计网站、ppt等提供<b>不少便利之处</b>。</p><p>图标种类丰富，各种各样的风格灵活选择，当然这些在其他一些icon网站上<b>也能做到</b>。</p><p>Icons8真正方便的地方在于，下载下来之后<b>无需联网、下载什么的</b>，即拖拽即使用，还可以修改颜色等，虽然没有从事设计，但<b>平常做PPT</b>用到图标丰富视觉的时候还是挺不错的，</p><p>支持win和mac，也有付费无限使用套餐。</p><p><br></p><blockquote><p><b>Fences</b></p></blockquote><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1866770-287fde7e47d97995?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div></div>\n</div><p>Fences，中文翻译“珊栏”，一款<b>桌面整理软件</b>，作用如其名，把桌面上的文件分成一个个<b>珊栏区域</b>来区分管理。</p><p>Fences为你提供<b>自动分类</b>管理，你也可以选择<b>自行分区</b>然后拖拽相关图标和文件，这样更能通过自己的分类习惯快速适应。</p><div>\n<div>\n<div></div>\n<div></div></div></div></div><br><br>作者：见长<br>链接：https://www.jianshu.com/p/4a93dea3a597<br>來源：简书<br>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</div></div><p>是谁啊</p><p><br></p></div><p><br></p></div><p><br></p></div><p><br></p>', 1, 0, 1, 'F', 'F', NULL, NULL, '首先谢谢大家对这个系列的支持之前的两期推荐的软件类型涵盖了防护清理资源下载影视播放桌面工具需求较大的几个方面，第三期则将推荐更多其他类型的软件同时，希望大家多多...', 0),
(13, '小强是谁啊', '<div data-v-526cb7c7=""><div data-v-526cb7c7=""><div data-v-526cb7c7=""></div><div data-v-526cb7c7=""></div><p>阿达达阿达达阿斯达斯,修好了</p></div><p><br></p></div><p>是谁啊</p><p><br></p>', 1, 0, 1, 'F', 'F', NULL, NULL, '阿达达阿达达阿斯达斯,修好了是谁啊', 0),
(14, '2018-4-27', '<div data-v-526cb7c7=""></div><p>是谁啊</p><p><br></p>', 1, 0, 1, 'F', 'F', NULL, NULL, '是谁啊', 0),
(15, '2018-4-28', '<div data-v-526cb7c7=""></div><p>是谁啊</p><p><br></p>', 1, 0, 1, 'F', 'F', NULL, NULL, '是谁啊', 0),
(16, '小强是傻逼', '<div data-v-526cb7c7=""><div data-v-526cb7c7=""></div><p>是谁啊，对对讲得对</p><p><br></p></div><p><br></p>', 1, 0, 1, 'F', 'F', NULL, NULL, '是谁啊，对对讲得对...', 0);

-- --------------------------------------------------------

--
-- 表的结构 `article_topic`
--

CREATE TABLE `article_topic` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `article_topic`
--

INSERT INTO `article_topic` (`id`, `article_id`, `topic_id`, `created_at`, `updated_at`) VALUES
(1, 3, 4, '2018-04-25 20:19:42', '2018-04-25 20:19:42'),
(2, 3, 7, '2018-04-25 20:19:42', '2018-04-25 20:19:42'),
(3, 4, 1, '2018-04-25 20:24:26', '2018-04-25 20:24:26'),
(4, 4, 8, '2018-04-25 20:24:26', '2018-04-25 20:24:26');

-- --------------------------------------------------------

--
-- 表的结构 `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` int(10) UNSIGNED NOT NULL,
  `commentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `level` smallint(6) NOT NULL DEFAULT '1',
  `is_hidden` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'F',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `followers`
--

CREATE TABLE `followers` (
  `id` int(10) UNSIGNED NOT NULL,
  `follower_id` int(10) UNSIGNED NOT NULL,
  `followed_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `from_user_id` int(10) UNSIGNED NOT NULL,
  `to_user_id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_read` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'F',
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `dialog_id` bigint(20) NOT NULL DEFAULT '44'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_05_19_213114_create_questions_table', 1),
(4, '2017_05_21_154207_create_topics_table', 1),
(5, '2017_05_21_154947_create_questions_topics_table', 1),
(6, '2017_05_24_091500_create_answers_table', 1),
(7, '2017_05_24_152912_create_user_question_table', 1),
(8, '2017_05_25_152001_add_api_token_to_users', 1),
(9, '2017_05_25_165913_create_followers_table', 1),
(10, '2017_05_29_103523_create_notifications_table', 1),
(11, '2017_05_31_141727_create_votes_table', 1),
(12, '2017_05_31_155720_create_messages_table', 1),
(13, '2017_05_31_172745_create_comments_table', 1),
(14, '2017_06_03_134026_add_dialog_id_to_messages', 1),
(15, '2018_04_25_153554_create_articles_table', 2),
(16, '2018_04_25_185502_create_articles_topics_table', 3),
(17, '2018_04_25_185502_create_article_topic_table', 4);

-- --------------------------------------------------------

--
-- 表的结构 `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comments_count` int(11) NOT NULL DEFAULT '0',
  `answers_count` int(11) NOT NULL DEFAULT '0',
  `followers_count` int(11) NOT NULL DEFAULT '1',
  `close_comment` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'F',
  `is_hidden` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'F',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `questions`
--

INSERT INTO `questions` (`id`, `title`, `body`, `user_id`, `comments_count`, `answers_count`, `followers_count`, `close_comment`, `is_hidden`, `created_at`, `updated_at`) VALUES
(1, '如何在程序里留下彩蛋？', '如何有趣的在自己的程序留下彩蛋？是在500页面还是404页面或者直接在代码中？', 1, 0, 0, 1, 'F', 'F', '2018-04-26 10:22:38', '2018-04-26 10:22:38');

-- --------------------------------------------------------

--
-- 表的结构 `question_topic`
--

CREATE TABLE `question_topic` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `question_topic`
--

INSERT INTO `question_topic` (`id`, `question_id`, `topic_id`, `created_at`, `updated_at`) VALUES
(1, 1, 9, '2018-04-26 10:22:44', '2018-04-26 10:22:44');

-- --------------------------------------------------------

--
-- 表的结构 `topics`
--

CREATE TABLE `topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `questions_count` int(11) NOT NULL DEFAULT '0',
  `followers_count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `topics`
--

INSERT INTO `topics` (`id`, `name`, `bio`, `questions_count`, `followers_count`, `created_at`, `updated_at`) VALUES
(1, '移动互联网', '互联网（英语：Internet），是网络与网络之间所串连成的庞大网络，这些网络以一组标准的网络TCP/IP协议族相连，链接全世界几十亿个设备，形成逻辑上的单一巨大国际网络。这是一个网络的网络，它是由从地方到全球范围内几百万个私人的，学术界的，企业的和政府的网络所构成，通过电子，无线和光纤网络技术等等一系列广泛的技术联系在一起.这种将计算机网络互相联接在一起的方法可称作“网络互联”，在这基础上发展出覆盖全世界的全球性互联网络称互联网，即是互相连接一起的网络。', 2, 0, '2018-04-08 00:00:00', '2018-04-25 20:24:26'),
(2, '电子商务', '电子商务（Electronic Commerce）的定义：电子商务是利用计算机技术、网络技术和远程通信技术，实现电子化、数字化和网络化的整个商务过程。联合国国际贸易程序简化工作组对电子商务的定义是：采用电子形式开展商务活动，它包括在供应商、客户、政府及其他参与方之间通过任何电子工具，如EDI、Web技术、电子邮件等共享非结构化商务信息，并管理和完成在商务活动、管理活动和消费活动中的各种交易。', 1, 0, '2018-04-03 00:00:00', '2018-04-04 00:00:00'),
(3, '音乐', '音乐，广义而言，指精心组织声音，并将其排布在时间和空间上的艺术类型，作为人类表达精神活动的形式之一。', 1, 0, '2018-04-09 00:00:00', '2018-04-10 00:00:00'),
(4, 'PHP', 'PHP 是英文超级文本预处理语言（PHP：Hypertext Preprocessor）的缩写。PHP 是一种 HTML 内嵌式的语言，是一种在服务器端执行的嵌入 HTML 文档的脚本语言，语言的风格有类似于 C 语言，被广泛的运用。PHP 具有非常强大的功能，所有的 CGI 的功能 PHP 都能实现，而且支持几乎所有流行的数据库以及操作系统。', 3, 0, '2018-04-08 00:00:00', '2018-04-25 20:19:42'),
(5, 'PHP 开发', NULL, 1, 0, '2018-04-08 00:00:00', '2018-04-09 00:00:00'),
(6, 'laravel', NULL, 1, 0, '2018-04-25 20:16:22', '2018-04-25 20:16:22'),
(8, '互联网', NULL, 1, 0, '2018-04-25 20:24:26', '2018-04-25 20:24:26'),
(9, 'HTML', NULL, 3, 0, '2018-04-26 10:17:48', '2018-04-26 10:22:38'),
(10, 'HTML', NULL, 1, 0, '2018-04-26 10:18:27', '2018-04-26 10:18:27');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirmation_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` smallint(6) NOT NULL DEFAULT '0',
  `question_count` int(11) NOT NULL DEFAULT '0',
  `answers_count` int(11) NOT NULL DEFAULT '0',
  `comments_count` int(11) NOT NULL DEFAULT '0',
  `favorites_count` int(11) NOT NULL DEFAULT '0',
  `likes_count` int(11) NOT NULL DEFAULT '0',
  `followers_count` int(11) NOT NULL DEFAULT '0',
  `followings_count` int(11) NOT NULL DEFAULT '0',
  `settings` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `api_token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `avatar`, `confirmation_token`, `is_active`, `question_count`, `answers_count`, `comments_count`, `favorites_count`, `likes_count`, `followers_count`, `followings_count`, `settings`, `remember_token`, `created_at`, `updated_at`, `api_token`) VALUES
(1, 'wxy', '', '17839191581', '123456', '../assets/reslongo.png', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, ''),
(2, 'xtc', '', '17839191581', '123456', '../assets/reslongo.png', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
