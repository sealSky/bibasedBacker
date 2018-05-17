-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-05-13 04:06:45
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
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reads_count` int(11) NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `user_id`, `comments_count`, `followers_count`, `close_comment`, `is_hidden`, `created_at`, `updated_at`, `text`, `reads_count`, `img`) VALUES
(12, '3×这才是应该装在你电脑上的“全家桶”软件', '<div data-v-526cb7c7=""><div data-v-526cb7c7=""><div data-v-526cb7c7=""><div data-v-526cb7c7=""><div data-v-526cb7c7=""><div data-v-526cb7c7=""><div data-v-526cb7c7=""><div data-v-526cb7c7=""></div><div><div><p>首先谢谢大家对这个系列的支持</p><p>之前的两期推荐的软件类型涵盖了</p><p>防护清理</p><p>资源下载</p><p>影视播放</p><p>桌面工具</p><p>需求较大的几个方面，</p><p>第三期则将推荐更多其他类型的软件</p><p>同时，希望大家多多推荐自己心水的软件</p><p>我之后会把这三期在各平台评论区中</p><p>被推荐多次的软件捞起来</p><p>再做一个番外</p><p><br></p><p></p><blockquote><p><b>Teamviewer&amp;Anydesk</b></p></blockquote><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1866770-930d845df4b6957b?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div></div>\n</div><p>Tamviewer是一款进行<b>远程支持、远程访问、协助在线协作和会议</b>的软件。</p><p>tv有名远程控制工具了，可以帮助我们实现平台间的远程控制，在两个平台上<b>同时都有安装</b>即可实现。</p><p>主要功能是<b>当你出门在外</b>，没带自己常用的电脑，也可以用平板、手机访问、控制你的电脑以及组织在线会议。</p><p>操作页面直观，就像<b>真正在使用自己的电脑</b>，支持文件传输、实时语音等功能。</p><p>而另一款类似功能的软件anydesk小巧一些，<b>流畅性相比tv差一点</b>，个人使用还是可以的。</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1866770-e4ce8955d680f78b?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div></div>\n</div><p>tv个人体验版免费，企业用收费。ad有免费版也有高级付费版。</p><p><br></p><blockquote><p><b>Total commander</b></p></blockquote><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1866770-5164aa14167321b1?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div></div>\n</div><p>TC被号称是<b>windows平台上最强的文件管理器</b>，一款围绕着电脑软件各种操作的软件。</p><p>关于文件的<b>常见操作</b>如复制移动粘贴、搜索查看、压缩解压，以及不常见的FTP使用在TC上<b>都可以完成</b>。</p><p>其中一些功能也有其他专业软件可以完成，而TC的强大之处就在<b>几乎包含</b>了处理文件的功能，并且可能比一些专业软件的使用<b>更加便捷</b>。</p><p>可以说它本身就是<b>关于电脑文件的一个“全家桶”软件</b>，在多个国家流行，也有简体中文版。</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1866770-1cce40ab484cc841?imageMogr2/auto-orient/strip%7CimageView2/2/w/336"></div>\n</div>\n<div></div>\n</div><p>最舒服的是它的双窗口设置↓</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1866770-93f8e8b8f1af8778?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div></div>\n</div><p><b>常用的几个快捷键</b>在下方都提示好了，TC还支持<b>自定义各种配置</b>，打造属于自己的一款文件管理器。</p><p>同时，一款强大的软件貌似都会<b>配置支持各种扩展功能</b>的插件，TC也是，总之这是一款适合对文件管理有一定深度需求的用户进行使用的软件，有<b>一定的学习成本</b>。</p><p>虽然TC说是付费软件，但未注册的用户<b>仍然可以完全使用</b>它的所有功能，真是<b>令人想打赏</b>的操作。</p><p><br></p><blockquote><p><b>Fastone capture</b></p></blockquote><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1866770-13c79a357e355fbd?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div></div>\n</div><p>就是这么一个<b>小小的界面</b>，FC却是一款非常好用的图像工具。</p><p>小巧简便，可以进行图像查看浏览、编辑处理以及最为被称赞的<b>花式截屏</b>功能。</p><p>可以捕获活动窗口、按形状截取窗口、捕获全屏等，其中<b>捕获滚动窗口功能就相当于手机上的截长屏</b>，在电脑上滚动截取长网页。</p><p>不过你可能会发现，很多网站都有<b>分页浏览</b>，就无法一次性截完整个内容。不怕，这里再配合一个自<b>动在一个屏内翻页的油猴脚本</b>就可以完美解决了，后面一起发给大家地址。</p><p>还有个<b>小tips</b>：设置截屏后直接发送到剪贴板而不是程序内再打开保存会方便一些。</p><p><br></p><blockquote><p><b>Icons8</b></p></blockquote><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1866770-bf8b517d27945394?imageMogr2/auto-orient/strip%7CimageView2/2/w/640"></div>\n</div>\n<div></div>\n</div><p>设计师的利器，内含<b>大量图标资源</b>的一款软件包，能为设计网站、ppt等提供<b>不少便利之处</b>。</p><p>图标种类丰富，各种各样的风格灵活选择，当然这些在其他一些icon网站上<b>也能做到</b>。</p><p>Icons8真正方便的地方在于，下载下来之后<b>无需联网、下载什么的</b>，即拖拽即使用，还可以修改颜色等，虽然没有从事设计，但<b>平常做PPT</b>用到图标丰富视觉的时候还是挺不错的，</p><p>支持win和mac，也有付费无限使用套餐。</p><p><br></p><blockquote><p><b>Fences</b></p></blockquote><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1866770-287fde7e47d97995?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div></div>\n</div><p>Fences，中文翻译“珊栏”，一款<b>桌面整理软件</b>，作用如其名，把桌面上的文件分成一个个<b>珊栏区域</b>来区分管理。</p><p>Fences为你提供<b>自动分类</b>管理，你也可以选择<b>自行分区</b>然后拖拽相关图标和文件，这样更能通过自己的分类习惯快速适应。</p><div>\n<div>\n<div></div>\n<div></div></div></div></div><br><br>作者：见长<br>链接：https://www.jianshu.com/p/4a93dea3a597<br>來源：简书<br>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</div></div><p>是谁啊</p><p><br></p></div><p><br></p></div><p><br></p></div><p><br></p></div><p><br></p></div><p><br></p></div><p><br></p>', 1, 2, 2, 'F', 'F', NULL, '2018-5-4', '首先谢谢大家对这个系列的支持之前的两期推荐的软件类型涵盖了防护清理资源下载影视播放桌面工具需求较大的几个方面，第三期则将推荐更多其他类型的软件同时，希望大家多多...', 1, '<img src="//upload-images.jianshu.io/upload_images/1866770-930d845df4b6957b?imageMogr2/auto-orient/strip%7CimageView2/2/w/700">'),
(17, '自从学了计算机网络，室友终于不在半夜打游戏了-- ping/ICMP学以致用', '<div data-v-526cb7c7=""></div><div><div><p>相信很多好好学习天天睡觉的宝宝，经常会有这样的苦恼：凌晨两点，隔壁床游戏打得正酣，机械键盘啪啪的响，嘴里不时吼道“又捡到一个二级头。我x这货开挂了吧，举报举报。。。”你心里可能恨恨地想着：捡你个头，举报你个头，我特么才要举报你呢，大晚上的不睡觉，...（此处省去30字脏话）。好吧，总之，你可能想过，我要是有个办法能让他或她断网就好了......</p>\n<p>今天在学习ICMP协议(Internet Control Message Protocol)的时候，做到了一道题，问ping命令可以用来做什么↓</p>\n<br>\n<div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/8214349-670cf1d3b9752cfa.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div>ping</div>\n</div>\n<blockquote>\n<p>其中第三个选项说： ping can be maliciously used as a way to attack a machine by flooding it with ping requests.<br>\n通过大量的ping请求，ping可以被恶意地用作一种攻击方式。</p>\n</blockquote>\n<p>做完这道题的时候，我虎躯一震，抖擞起了原本因为晚上没睡好而萎靡的精神。对啊，如果我死命的ping对方，对方是不是就上不了网了？即使能让对方的网络变卡也行。<br>\n其实这是一种网络攻击方式，它有种酷酷的名称，叫“死亡之ping”， 英文为"ping flooding"（像洪水一样ping对方，直到对方淹死在你的icmp里）</p>\n<ul>\n<li>\n<h3>什么是ICMP</h3>\n</li>\n</ul>\n<p>要了解什么是ping flooding，我们先要了解ping是什么，要了解ping，则首先要了解什么是ICMP。</p>\n<blockquote>\n<p>提起ICMP，一些人可能会感到陌生，实际上，ICMP与我们息息相关。在网络体系结构的各层次中，都需要控制，而不同的层次有不同的分工和控制内容，IP层的控制功能是最复杂的，主要负责差错控制、拥塞控制等，任何控制都是建立在信息的基础之上的，在基于IP数据报的网络体系中，网关必须自己处理数据报的传输工作，而IP协议自身没有内在机制来获取差错信息并处理。为了处理这些错误，TCP/IP设计了ICMP协议，当某个网关发现传输错误时，立即向信源主机发送ICMP报文，报告出错信息，让信源主机采取相应处理措施，它是一种差错和控制报文协议，不仅用于传输差错报文，还传输控制报文。  ------摘自网络</p>\n</blockquote>\n<p>总之，简单来说，icmp首先可以用于所谓的“差错报文”，就是发送出问题时对方回复你“这里出问题了，没送到！”，比如下表：没到达应到的网络--&gt;icmp报错；包在网络中迷路过期了--&gt;icmp错误。第二则用于“控制报文”，比如我们总说某个网络能不能ping通，那么我们实际是看，我们给某个ip发一个icmp(echo request)，看它会不会回复我们一个icmp(echo reply)，回复了就意味着网络是通的，没回复就是哪里出问题了。</p>\n<div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/8214349-538d26917c4bb00f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div>image.png</div>\n</div>\n<ul>\n<li>\n<h3>ICMP是如何工作的</h3>\n</li>\n</ul>\n<div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/8214349-b6fcb6a11d81e13e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div>image.png</div>\n</div><br>\n<p>假如小明是路由(router)，你给小红(host)写了份情书(ip packet)，但是不晓得怎么被小明捡到了，不知所措的小明心想肯定是邮递员弄错了吧，他很好心的想把信件送还给你，但是由于你对小红实在情深意切，写的东西太多，而小明只想告诉你发送失败了，再发一次，而没必要告诉你，你自己究竟写的是什么鬼话，于是他把你的信封保留了(ip头部)，还把你的信撕得只留下八个字节（让你知道哦原来是我写的千万封情书中的哪一封），然后，小明在你的旧信封上套了个ICMP牌子的大信封，还在大信封里写了张纸条，这是什么类型什么编码的icmp(见上图type，code栏)，署名发信地为小明的ip，收件人为你的ip。</p>\n\n<ul>\n<li>\n<h3>ping是如何工作的</h3>\n</li>\n</ul>\n<div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/8214349-b10a394365e07f98.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/692"></div>\n</div>\n<div>icmp&amp;ping</div>\n</div>\n<p>有一天，你惹小红生气了，她一连好几天好几天不理你，于是你想写封信问候一下她，但是又怕说错话惹得她更加生气，于是你写了封简短的icmp，标号8、0代表这是用于"echo request"，只是想看看小红在家不，并不想打扰到她。小红家的管家接到了你的信，啥也没说，把一封”echo replay"的icmp回信发还给了你。于是你就知道小红好着呢！只是不想理你～</p>\n<ul>\n<li>\n<h3>死亡之ping</h3>\n</li>\n</ul>\n<p>言归正传，我们来看看用什么方法可以让舍友断子绝孙，哦不，不能上网！<br>\n打开电脑的终端。通过 <code>man ping</code> 命令，我们可以看到ping命令的详细使用方法，其中<code>-s</code>可以指定发送包的大小，<code>-i</code>指定发送的包的频率，这两个正是我们想要的，因为首先我们需要发送足够大的数据包从而能撑爆对方的带宽，其次每秒ping一次可不够，我们最好要每秒ping他个上千次，这样才更有可能阻塞对方的网络。</p>\n<div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/8214349-d3b1c94db2699f87.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div>如果不指明，默认发送64字节ICMP数据以及8字节的icmp头部</div>\n</div>\n<div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/8214349-2b5024e558d63b28.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div>注意间隔如果低于0.2秒一次需要超级用户权限，所以我们最后需要sudo+命令</div>\n</div>\n<blockquote>\n<p>另外，以上的方法只使用linux或者mac系统，windows据说是这么写的<code>ping -l 65500 -t ip地址</code></p>\n</blockquote>\n<p>好吧，重点来了，首先躺枪的是我的手机。</p>\n<blockquote>\n<p>这里提醒一下，这种方法有效的前提是你们都在一个局域网下，比如你们连的都是校网。</p>\n</blockquote>\n<div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/8214349-31e0a3e6493d2ca5.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div>查看我手机的内网ip，这里我用的是termux软件</div>\n</div>\n<p>然后在你的电脑上输入<code>sudo ping ***.***.***.*** -i 0.001 -s 65500</code> ，这个意思就是说，每0.001秒给我的手机发送一个大小65500字节的icmp包。然后按回车：<br>\n</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/8214349-5e270123d0fc21d1.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div>616063456.jpg</div>\n</div><p></p>\n<p>于是可以看到，我手机的流量蹭蹭蹭的涨上去了，等十秒以后，我就连不上百度了。。。</p>\n<br>\n<div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/8214349-f962bb5c651fdc71.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div>按ctrl+c停止攻击后，手机再次恢复了平静</div>\n</div>\n<h3>后记：</h3>\n<p>当然，这种攻击方法还有很多新花样，比如仿造对方ip发送，让局域网下的电脑都收到对方的ping request,从而让整个局域网ping reply对方的电脑，或者动动脑子在内网搞个大闹天宫，我点到为止。</p>\n<p>同样，除了icmp攻击，类似的攻击方法还有udp攻击，tcp攻击。本人菜鸟，具体是不是叫这个名儿我不知道瞎说的别信。</p>\n<p>我一直觉得，学习计算机和学习魔法有非常多的相似之处。在霍格沃兹，学生学习一系列的咒语来召唤出潜藏在魔杖中的魔力，而我们，学习一系列的编码，代码（code）来召唤出计算机中的算力，从而为我们所用，造福人类，to make the world a better place是所有程序员的信条。所以，当你学了更多的知识，当你有了更强大的魔力以后，不要试图去做伏地魔，就像谷歌喊出的口号-------don''t be evil!（不作恶！）</p></div><br><br>作者：DeepWeaver<br>链接：https://www.jianshu.com/p/84d112d746c1<br>來源：简书<br>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</div>', 4, 0, 1, 'F', 'F', NULL, NULL, '相信很多好好学习天天睡觉的宝宝，经常会有这样的苦恼：凌晨两点，隔壁床游戏打得正酣，机械键盘啪啪的响，嘴里不时吼道“又捡到一个二级头。我x这货开挂了吧，举报举报。...', 0, NULL),
(18, '记住这五个网址，让你的资源搜索时间减少一半', '<div data-v-526cb7c7=""><div data-v-526cb7c7=""><div data-v-526cb7c7=""></div><div><div><h4><div><div><div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/9198732-00b0fa39267d7114.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/600"></div>\n</div>\n<div>图片发自简书App</div>\n</div>\n<br>\n</h4><h4>1.咪咪搜索</h4><p><a href="https://link.jianshu.com?t=http%3A%2F%2Ftaoxiaozhong.com%2Fview.php%3Furl%3Dhttps%3A%2F%2Fwww.mimisearch.com%2F%26name%3D%25E5%2592%25AA%25E5%2592%25AA%25E6%2590%259C%25E7%25B4%25A2%26go%3D" target="_blank" rel="nofollow">mimisearch – Multiple Search Engine</a></p><p>多种搜索引擎一键切换，简洁高效</p><p>搜索引擎是大家每天都在用的工具，但大多数人都只用百度，还有部分人用360搜索，搜狗搜索，但这些搜索引擎检索出的内容是全部互联网的内容，还有很多优质资源在部分独立网站中，比如知乎、简书、微信、百度文库等，如何快速方便的从这类网站中检索出需要的资料呢？MiMiSearch（咪咪搜索）。</p><p><br></p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/9198732-a1817d4d83464be4.PNG?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div></div>\n</div><h4>2.鸠摩搜书</h4><p><a href="https://link.jianshu.com?t=http%3A%2F%2Fwww.jiumodiary.com%2F" target="_blank" rel="nofollow">Jiumo E-Book Search 鸠摩搜书 - 文档搜索引擎</a></p><p>电子书搜索引擎 一个电子书狂热爱好者自建的一个搜索平台,整合了一些电子书资源平台并且锁定了格式为电子书格式。一个强大的电子书平台，关键是免费，不用注册就能下载</p><p><br></p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/9198732-313db9194306f735.PNG?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div></div>\n</div><h4>3.西林街</h4><p><a href="https://link.jianshu.com?t=http%3A%2F%2Ftaoxiaozhong.com%2Fview.php%3Furl%3Dhttp%3A%2F%2Fwww.xilinjie.com%2F%26name%3D%25E8%25A5%25BF%25E6%259E%2597%25E8%25A1%2597%26go%3D" target="_blank" rel="nofollow">西林街搜索（X站） - 官网</a></p><p>全能型网盘搜索引擎，更是网盘搜索神器！</p><p>网站还有“求资源”版块，是提供“高质量”需求解决方案的集中营。</p><p><br></p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/9198732-f9e435ad7b46f1ae.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/600"></div>\n</div>\n<div></div>\n</div><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/9198732-279c3bba9e06a402.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/600"></div>\n</div>\n<div></div>\n</div><h4>4.flvcd硕鼠</h4><p><a href="https://link.jianshu.com?t=http%3A%2F%2Ftaoxiaozhong.com%2Fview.php%3Furl%3Dhttp%3A%2F%2Fwww.flvcd.com%2F%26name%3Dflvcd%25E7%25A1%2595%25E9%25BC%25A0%26go%3D" target="_blank" rel="nofollow">http://taoxiaozhong.com/view.php?url=http://www.flvcd.com/&amp;name=flvcd%E7%A1%95%E9%BC%A0&amp;go=</a></p><p>超强大在线视频解析下载平台，支持88个主流音乐视频网站</p><p>flvcd硕鼠官网是超稳定的FLV视频下载平台，提供FLV在线视频下载服务，持续更新。支持土豆、优酷、CNTV、新浪、搜狐等88个网站的FLV下载，并提供电视剧、电影、音乐的批量下载。</p><p><br></p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/9198732-6b186e95a804a05e.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/600"></div>\n</div>\n<div></div>\n</div><h4>5.8090电影</h4><p><a href="https://link.jianshu.com?t=http%3A%2F%2Ftaoxiaozhong.com%2Fview.php%3Furl%3Dhttp%3A%2F%2Fwww.kan8090.com%2F%26name%3D8090%25E7%2594%25B5%25E5%25BD%25B1%25E7%25BD%2591%26go%3D" target="_blank" rel="nofollow">8090电影网,看8090新视觉影院,免费在线电影,在线影院,神马影院,爱神马电影网,6080新视觉影院-YY8090-YY6090</a></p><p>一个能让你告别电影下载的在线播放电影网站，支持手机播放</p><p>很多朋友都喜欢看电影，每次找到自己喜欢看的电影的时候，都要去下载。有些朋友带宽不是很高，下载的很慢。包括手机，没有wifi的情况下很苦恼。很多朋友在很多电影站下载的时候，肯定遇见很多虚假的下载都是广告包括下载链接看不清那个是真实的下载地址，往往点错了下了一堆没有用的。</p><p>我想看到这里你很郁闷吧</p><p>那么今天我和你一样都喜欢看电影。我找了很久找到了一个在线播放无广告免费绿色版的在线电影网站——看8090电影。</p><p><br></p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/9198732-54bdea44aa013ebd.PNG?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div></div></div></div><br><br>作者：胶片书生<br>链接：https://www.jianshu.com/p/89f9d49b3a89<br>來源：简书<br>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</div></div><p><br></p></div><p><br></p>', 1, 0, 1, 'F', 'F', NULL, '2018-5-4', '\n\n\n图片发自简书App\n\n\n1.咪咪搜索mimisearch – Multiple Search Engine多种搜索引擎一键切换，简洁高效搜索引擎是大家每天...', 0, '<img src="//upload-images.jianshu.io/upload_images/9198732-00b0fa39267d7114.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/600">'),
(19, '致读者——如何提升自己的口才水平，成为说话高手？', '<div data-v-526cb7c7=""></div><div><div><div><p>致读者：</p><p>大家好，我是陈慕妤，一名在内地工作生活的香港人。</p><p>在学期间多次参加过演讲辩论的比赛，再经过将近十年的磨练，慢慢从一个口舌笨拙的内向者，变成如今在一家影视制作公司任职活动统筹和市场沟通的企划。</p><p>我曾经在香港兼职过很多工作，从底层的冰室侍应，酒楼服务员，寿司店帮厨，到后来建筑公司的文案策划，设计公司的平面设计，广告公司的摄影师，再到如今公司的活动统筹，组织策划和对外沟通专员等，经常要和不同的客户、商家、老板和阶层不一的社会人士谈判、交流工作上的事务。我深深感受到，口才对于人与人之间沟通的重要性，没有好的口才，就会影响自身的生活和工作发展。</p><p>由于我大学的专业是建基于语言学和心理学的研究学科，再加上自己切身的经验，于是我对于语言的运用及其背后的原理有着深刻的认识。</p><p>2016年年中，我无意中发现简书这个平台，于是小试牛刀在上面发表文章，试着分享一些自己对个人成长和口才锻炼的经验。万万没想到，自己这些文章居然能够给予不少读者提供很大的帮助，解决他们不敢开口说话的障碍。</p><p>基于这个原因，直到如今我在简书这个平台，利用工作以外的闲暇时间发表了大概100篇文章，而文章讲述的内容都是围绕个人成长和口才锻炼这两个范畴。</p><p>如果你渴望自己变得更好，提升自己的口才能力，或许我的文章能够帮到你。</p><p><br></p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/2544184-e65f378e0850b507.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/690"></div>\n</div>\n<div></div>\n</div><h3><b>如何阅读我的文章？</b></h3><p><br></p><p>口才对于你的生活而言，重不重要呢？</p><p>如果你的答案是肯定的，那么不要迟疑，从现在开始就着手锻炼你的口才吧！</p><p>根据我的知识和经验，一个人想要提高自己的口才，除非嘴皮子的锻炼，个人心理、思想、阅历和学识的提高，也是口才锻炼中非常重要的一环。对于后者，我没办法教导你们，毕竟每个人生活的环境不一样，学习的东西也不一样。但对于前者口才能力的培养和锻炼，却是具备有迹可循的实操方法。</p><p>于是，我所有与口才有关的文章结集成《掌握说话的力量》这个文集。这个文集可以被分为四个部分。每个部分，都是针对不同的口才困境而提供相应解决办法。</p><p><br></p><h4><b>1，口才的总体论述</b></h4><p>这个部分的文章，会让你知道好的口才是什么样子，应该具备什么样的条件，而且它的局限或者缺点是在哪里。</p><p>只有知道了这些概念，我们才能够针对自己的需要，有目的的去锻炼自己，提高自己，而非盲人摸象那样，看不到整体而把时间浪费在不必要的地方。</p><p>看一看目前的你在哪方面的口才有所欠缺，或许你就知道，应该朝着哪个方向去努力提高了。</p><p><br></p><h3>2，<b>口才的基本功锻炼</b>\n</h3><p>有些人能够说话，却并不能“说好话”，不是说的磕磕碰碰，不顺溜，就是一些基本的说话能力都无法展现出来。那这样的口才，自然会影响到我们整体的表达效果。</p><p>所以基本功的锻炼，对于提升口才而言，就显得非常重要了。怎么样才可以克服紧张，让自己说话更顺畅，怎样才可以提升我们语言组织的能力，表达的逻辑思维如何培养，或者怎样才能发挥幽默等等，都是这部分要讲述的内容。</p><p>拥有好的基本功，才能让你的口才发挥出应有的力量，而非茶壶里煮饺子——有货倒不出！</p><p><br></p><h3>3，<b>提升与人聊天的能力</b>\n</h3><p>学习口才，最终还是要落实到与人交流上面。但怎么交流，才能让彼此建立友好的人际关系，这就是一门技术活儿了。</p><p>很多人尽管非常愿意跟别人交流，然而却从来不知道怎么打破冷场，建立进一步的关系。要是你就是这样的一种人，学习怎么跟别人好好聊天，或许能够帮到你更好的表达自己。</p><p>当然，并不是每一个人都能够好好聊天，有时候他们会无缘无故地怼我们，出言不逊地伤害我们，我们可不能任由这样的人主宰我们的情绪，所以学会怎么反击，也是聊天能力的一部分。</p><p>所以，这个部分讲述的内容，就是让你学习如何与人更好的聊天交流。你不懂开启话题与人聊天，我告诉你答案；你不懂跟异性聊天，无法发挥幽默，我也告诉你；别人针对你，你怎么反驳，我也可以教到你；甚至你害怕冷场，或者害怕找不到话题，在这里也找到相应的建议。</p><p><br></p><h3><b>4，掌握高情商的说话技巧</b></h3><p>情商对于我们与人沟通来说，其重要性已经不言而喻了，但怎么才算高情商说话，怎么学会高情商说话，并不是每个人都知道。</p><p>高情商，并不是虚与委蛇地跟人称兄道弟、把酒言欢，说一些与自己内心背道而驰的说话，而是一种说话方式的调整。当你懂得如何调整自己的言辞表达，你就能够更好的与人沟通，从而获得更好的结果。学会高情商说话，你的口才才能够如虎添翼。</p><p>所以，从这些文章的铺排来看，我提供学习口才的逻辑线就是先讲述学会说话的作用，接着再说到怎么训练基本功，有了这个基本功锻炼嘴皮子后。然后再讲到一般的聊天技巧，怎么让自己有话可说，有话可聊。最后到高级的情商沟通技能，说明情商如何影响我们的说话，又如何提高情商，从而最终提高我们的说话能力。</p><p><br></p><p><b>如果你受够了无话可说的郁闷感，</b></p><p><b>厌倦了自己沉默寡言的痛苦，</b></p><p><b>甚至错失跟心仪对象聊天的机会，</b></p><p><b>无法处理好生活工作上各种复杂的说话关系，</b></p><p><b>那么学习口才，将会对你提供很大的帮助。</b></p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/2544184-a0514be169028b9e.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div></div>\n</div><p>这是我个人知识经验的真实分享，希望这些分享，能够真切的给予有需要的你提供可行的帮助。</p><p>当然，在简书写作这两年多，除了部分读者的打赏，我没有从中获得任何收入。现在本文集已经卖给出版社，将会出版纸质书，为了配合平台和出版社保护文章版权，这些文章将会收取些微费用，需要付款才能够全部阅读，希望大家能够多多体谅。你们的支持和认可，将是对我最大的鼓舞。我会继续写出更好更有用的文章以飨读者，帮助各位提高自己的能力。</p><p>但凡你遇到问题，随时留言给我，或者私信找我咨询，我看到信息会及时回复的，尽量为各位排忧解答。</p><p><br></p><h3><b>订阅须知：</b></h3><p>1、《掌握说话的力量》的内容会不定时更新、扩充和修改，发表新的文章，直至让其全部内容变成一个完整合理的体系；读者也可以留言跟我说说，想学习提高哪方面的说话能力，我会尽量把知道的东西写成文章的。</p><p>2、这是一次性付费（￥12.99）订阅产品，订阅成功后即可永久阅读本作品的所有内容。（还有不定期打折促销，请持续关注）</p><p>3、购买的前20人， 将可免费获得本连载《掌握说话的力量》出版的纸质。（名额已满）</p><p>4、这是为虚拟内容服务，一经订阅概不退款，请理性购买。</p></div><br><br>作者：陈慕妤<br>链接：https://www.jianshu.com/p/9b98fdf818fe<br>來源：简书<br>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</div></div>', 3, 0, 0, 'F', 'F', '2018-5-5', '2018-5-5', '致读者：大家好，我是陈慕妤，一名在内地工作生活的香港人。在学期间多次参加过演讲辩论的比赛，再经过将近十年的磨练，慢慢从一个口舌笨拙的内向者，变成如今在一家影视制...', 2, '<img src="//upload-images.jianshu.io/upload_images/2544184-e65f378e0850b507.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/690">'),
(22, '90后的QQ时代，还在吗？', '<h2><div><div><div><div><div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/2233434-c66bc9c154c2f060.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div></div>\n</div><p>微博头条上，</p><p>有这样一条消息，腾讯上线了QQ号可以注销的功能。</p><p>这一消息，引起了很多人的热议。</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/2233434-d49f117869e2167c?imageMogr2/auto-orient/strip%7CimageView2/2/w/440"></div>\n</div>\n<div></div>\n</div><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/2233434-fccb6506d2a1df35?imageMogr2/auto-orient/strip%7CimageView2/2/w/440"></div>\n</div>\n<div></div>\n</div><p>QQ，这个承载着太多90后回忆的社交工具，如今也名正言顺地走向了尽头。</p><p>还记得，那个时候，谁要是没有QQ都是一件不时髦的事情，能有一个八位数的账号，头上顶着一个太阳的，走路都带风。</p><p>那是一种身份的象征，是一种骄傲的代表。</p><p>我记得，在QQ里写下的第一篇日志，是高三那年，为自己加油打气的随笔，稚嫩的文笔，写下了那年的所有期许。</p><p>我记得，在QQ里的第一位好友，是我的初中同学，我们会偷偷聊天，生怕家长发现。</p><p>我记得，我们在电脑课上，登上QQ可以聊一整节课的天；我记得，上大学时，有了第一部手机，安装的第一个软件就是QQ；我记得，那些年，和QQ在一起的每一件事情。</p><p>那时候，没有微信，没有微博，只有QQ，下了课，一起去网吧玩QQ炫舞。回到家，登上QQ，开始偷菜，自己守着一亩三分地，看准时机，便下手，把好友的菜全部偷来，是一种“幸福”。</p><p>那个我们最熟悉的小企鹅，随着我们的长大，它也在变化，变得越来越不像从前的它，也许，不是它变了，是我们变了。</p><p>如今，我们的手机里不再有QQ，因为占内存，我们把它卸载了；如今，我们也不需要用它聊天了，因为我们有微信，有电话；如今，我们都快忘记了QQ密码，再次登录时发现登录错误。</p><p>不知从什么时候起，那些年在一起玩QQ炫舞的我们，长大了，半夜守在电脑前，偷菜的我们，不见了，每逢生日时，会用QQ送上祝福的我们，消失了。</p><p>现在，偶尔还能听见QQ的消息提示，您的好友快过生日了，为TA送上祝福吧。我们会毫不犹豫地略过，把它当作垃圾短信一般删去。</p><p>现在，QQ成了我们的相册存放处，许许多多的相片在那里，当我们想起时，会登陆看一看，再度退去。</p><p>现在，QQ里的好友依旧在，但头像一直是灰色状态，已经记不清楚，上次聊天是什么时候了。</p><p>我们有了更多的社交工具，曾经的东西早已成为回忆。</p><p>我们有了更多的朋友，曾经的记忆都已成为昨天的挥手告别。</p><p>QQ已不再是一种社交工具，它已经成为了我们青春里不可磨灭的东西，最珍贵的过去。</p><p>现在，QQ账号可以注销了，你会注销吗？</p><p>你还记得那些年，你和QQ的回忆吗？</p><p>第一篇日志是什么时候写下的？第一次申请是什么时候吗？现在你的QQ等级是多少？</p><p>我记得，你呢？</p><p><b><br></b></p><p><b>你还呀，我是羊达令，一个会唱会画会写的轻度女神经！</b></p></div><br><br>作者：羊达令<br>链接：https://www.jianshu.com/p/c8d80dccb291<br>來源：简书<br>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</div></h2>', 3, 0, 1, 'F', 'F', '2018-5-5', '2018-5-5', '\n\n\n\n微博头条上，有这样一条消息，腾讯上线了QQ号可以注销的功能。这一消息，引起了很多人的热议。\n\n\n\n\n\n\n\n\n\n\n\nQQ，这个承载着太多90后回忆的社交工...', 0, '<img src="//upload-images.jianshu.io/upload_images/2233434-c66bc9c154c2f060.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/700">'),
(23, '人最可怕的是从一碗鸡汤里爬出来，又掉进了另一碗鸡汤', '<div><div><div><div><div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1714291-e142d68d7234ee9b.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div></div>\n</div><p>最近，一篇名为《摩拜创始人胡玮炜套现15亿：你的同龄人正在抛弃你》的文章在微信朋友圈中广泛传播。</p><p>文章举了日前摩拜单车被收购，创始人胡玮炜创业<b>3年套现15亿</b>的例子。</p><p>称在80后们还在为了房贷<b>苟延残喘</b>时，胡玮炜已经是叱咤风云的商业女精英，一跃成为成功人士。</p><p>全文表达了“当你不仅一事无成，还步入中年危机时，作为你的同龄人，正在无声无息的抛弃你”的观点。</p><p>在文章最后，以一句 “<b>不要在你本该奋斗的时候，选择了安逸</b>” 的经典鸡汤式名言结尾。</p><p>毫无疑问，这是一篇典型的“自媒体自嗨式”文章。</p><p>首先对于胡玮炜套现15亿这个说法本身就不正确；</p><p>其次整篇文章并没有多少有营养的内容，而是举一些毫无意义的案例，通过夸张的标题，无形之中给人们一种压力，甚至刻意营造一种不合理的“<b>焦虑和恐慌</b>”。</p><h4>\n<b>01&nbsp;</b><b>胡玮炜是幸运的</b>\n</h4><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1714291-fd5027a5e5e877e1.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/616"></div>\n</div>\n<div></div>\n</div><p>胡玮炜，1982年出生于浙江东阳。2004年，胡玮炜从浙江大学城市学院新闻系毕业，进入刚创刊的《每日经济新闻》经济部做汽车记者。</p><p>和其他大学生一样，胡玮炜参加工作也是从4位数的月薪干起。</p><p>后来北上到了北京的《新京报》，随后又跳槽到了《商业价值》和极客公园做和汽车相关的报道，这一干就是10年。</p><p>今年春节前吴晓波对胡玮炜进行一次采访中，吴晓波问有没有考虑过万一创业失败了，有没有想过后果。</p><p>胡玮炜回答道，十几年前一个人拎着一个小箱子来北京，当时什么也没有，但现在想想那也算是人生，那也是她拥有的东西，她觉得一个人能活下去就很简单了。</p><p>2015年1月，胡玮炜成立了摩拜。估值从0做到了估值100亿，实现这一目标的滴滴用了3年，阿里用了整整6年，而摩拜仅仅只用了2年。</p><p><b>毫无疑问，摩拜是幸运的，胡玮炜是幸运的。</b></p><p>2016年被称为「共享单车」元年，由于共享单车迎合了人们对短途出行的需求，导致各种共享单车扎堆成群如雨后春笋般涌出，争相成为资本竞逐的对象。</p><p>在疯狂的造车竞赛与城市扩张的背景下，如今3Vbike、悟空单车、町町单车纷纷倒闭， 而在这场 “百车大战”中，ofo、摩拜成为仅有的两家获胜者。</p><p><b>摩拜是幸运的，ofo是幸运的。</b></p><p>从前年「共享单车」、去年「共享经济」再到今年的「区块链」，每一年都有新的风口，诞生一大批创业项目，但是大部分都<b>“生的悄无声息，死的尸骨无存”</b>。</p><p>今天，我们可能只记得创业3年套现15亿的胡玮炜，但是创业浪潮中，有太多失败的李玮炜，张玮炜，李跃亭、孙跃亭沦为历史前进中的炮灰。</p><p>这个社会就是这么现实，成功了你万人敬仰，失败了你无人问津。</p><p>胡玮炜是幸运的。</p><h4>\n<b>02&nbsp;</b><b>找准定位，顺其自然</b>\n</h4><p>2002年，扎克伯格考入哈佛大学；</p><p>2004年，扎克伯格创建了Facebook；</p><p>2010年，在福布斯公布的资产排行榜里，扎克伯格以<b>40亿</b>美元成为最年轻的入榜人；同年扎克伯格登上《时代》周刊，成为2010年年度人物。</p><p>截止目前，Facebook的月度活跃用户数超过<b>20亿</b>人，成为全球最大的社交网站。</p><p>1978年，王小川生于成都。</p><p>1990年，成都市中考第一名，考入成都七中数学实验班；</p><p>1993年，因获得全国数学联赛一等奖，被保送入成都七中高中；</p><p><i>（成都七中什么概念，是四川甚至是整个西部最好的高中!）</i></p><p>1996年因获得国际奥林匹克信息学竞赛金牌，被招入清华大学计算机系。</p><p>2000年，保送清华大学计算机系，高性能所读研究生。</p><p>2005年，27岁的王小川，成了搜狐首席技术官，最年轻的副总裁。</p><p>.........</p><p>这世界永远不会缺少天才，贝多芬、莫扎特、爱因斯坦、牛顿、扎克伯格、王小川....</p><p>他们都是“同龄人”中的佼佼者，是社会中的精英，但毕竟这些人是少数，马东在《十三邀》里说过一句话：</p><p><b>“世界上的精英只有5%，有愿望积累知识，了解过去，那剩下95%的人就是在生活。”</b></p><p>有的人天生就是天才，有的人天生就是富二代，而有的人一生为了房贷奋斗，沦为房奴。</p><p>接受自己是普通人的设定，找好自己的定位，把平凡日子过的有滋有味的人就很了不起。</p><p>每个人都在努力的活着，别人的成功不一定能复制，成功的标准也不是只有一套，达到自己的一个小目标，和过去的自己比有进步，你也是成功的。</p><h4>\n<b>03&nbsp;</b><b>心灵鸡汤，胜似毒药</b>\n</h4><p>都说<b>“少年鲜衣，则青年怒马，至于中年，则步履沧桑”。</b></p><p>回头看看现在的少年，还未青年驽马，一个个就充满焦虑、迷茫、失落与好奇，这种状态在刚毕业的年轻群体中尤为明显。</p><p>明明是刚毕业风华正茂的年龄，却又被 “你的同龄人抛弃你”的文章充斥网络；</p><p>而中年历经了青春时期张狂不羁，原本是一个十分稳重成熟的阶段，却又被<b>中年危机、中年油腻</b>刷屏。</p><p>制造了一次又一次的恐慌，大部分来自于自媒体的<b>「心灵鸡汤」</b>。</p><p>回头再来谈一谈，为什么那篇文章会引起大家讨论？</p><p>首先作者很巧妙的用了<b>“同龄人”</b>这个话题，拿现实中平凡的个体，去和创业3年套现15亿的胡玮炜，还和硕士毕业不到两年一跃成为百度公司最年轻副总裁李叫兽做对比。</p><p>最后以「不要在你本该奋斗的时候，选择了安逸」，告诫你要努力奋斗，不要选择安逸。</p><p>然后读者看了之后，产生强大的共鸣，一想作为同龄人，别人都财富自由了，自己还在为房贷苟延残喘。</p><p>随后转发朋友圈感慨一番，配文<b>「比你优秀的人还比你拼命，你有什么理由不努力呢？</b>」</p><p>然后一直盯着朋友圈有没有多少人给自己点赞，一觉醒来后，就当没发生过一样。</p><p>从每次刷遍朋友圈的文章来看，或多或少带点「鸡汤味」，虽然很多人很反感鸡汤，但鸡汤还是这个时代的刚需，因为至少能唤起大家的共鸣。&nbsp;</p><p>谈到心灵鸡汤，再多扯一点，心灵鸡汤这两年开始没那么流行了，因为一帮有知识有文化有腔调有品位的读者正在崛起。</p><p>所以现在市面上那些《成功的秘诀》，《成功的十个方法》、《生活在于折腾》都已经不好卖了。</p><p>他们开始谈我的<b>「时间管理」、「我的读书经验」，「我的工作管理」、「我的学习方法实践」，「我是如何从毕业2年年薪50万」</b>，总之就是我如何如何……</p><p>告诉你如何从Low逼变牛逼，分享《月薪3000和月薪30000的区别》，批评《你瞎忙的样子看起来真失败》等以个体经历向读者传授成功的经验。</p><p><b>在今天个体意识空前强大的时代，越来越追求自我的实现与价值。然而，过快的生活节奏使得越来越多的人陷入到对知识、工作、生活的焦虑中。</b></p><p>那些看了作者的文章，听了所谓成功人士的经验分享之后，不但没有成功，反而陷入更深恐慌之中。</p><p><b>茫然无措，迷惘与焦灼。</b></p><p>中年未必油腻，青年未必焦虑，但一些自媒体作者的文章的确满是人间烟火气。</p><h4>\n<b>04&nbsp;</b><b>善待自己，随遇而安</b>\n</h4><p>关于同龄人的那篇文章，韩寒也在微博发布长文发表自己的看法。</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1714291-0d006d9502058a6f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div></div>\n</div><p>他表示自己是极讨厌这种标题的，他觉得这是在<b>贩卖焦虑</b>，甚至是在<b>制造恐慌。</b></p><p>韩寒认为，现在很多人也都在努力干活认真生活，成功的定义绝不只是套现几亿十几亿。</p><p><b>“身价千亿的首富，面对一个园丁，一个美编，一个程序员，都不存在抛弃不抛弃的关系，时代里不同人就是有着不同的分工和命运，也各有不同的幸福。安于现状或不甘如此都是每个人自己的内心意愿，他人不可强加。”</b></p><p>我觉得韩寒说的非常对，成功的定义有好多种，每个人都有不同的境遇，也有不同的选择，不要把自己的价值观强加给他人。</p><p>除了最近胡玮炜套现离场的新闻外，在刚刚结束的第三季《中国诗词大会》总决赛上，来自杭州的外卖小哥雷海为打败<b>北大</b>文学硕士彭敏、四川大学韩墨言逆袭夺冠的新闻，让人更加感到尊敬与感动。</p><p>雷海为来自湖南邵阳市洞口县，今年37岁，是某外卖平台的一名外卖小哥。</p><p>在小学一年级的时候，雷海为就对诗词有了浓厚的兴趣，前后上过两所初中，两所高中，两所中专，期间频繁的转学，让他失去上大学的机会。</p><p>2001年，雷海为中专毕业后外出打工。2002年，雷海为一个人到了上海，理由很纯粹，就是“想看看大上海的繁华”。</p><p>2008年春节过后雷海为来杭州工作，当起了一名外卖小哥，但爱诗歌的心从未改变。</p><p>在商家取餐、在路上等红灯、甚至骑车在路上的时候，那些等外卖的那些零碎时间，都被他用来读书，看诗，了解它的写作背景，还有看注解、鉴赏，还能背一两首新的诗词。</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1714291-8bebff00cf186208.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/600"></div>\n</div>\n<div></div>\n</div><p>在外人眼里，一个不打牌、不玩任何社交软件的中年男子，每天在送餐的时候，喜欢看诗，反而成为同龄人眼里的“异类”，甚至带有偏见的人会觉得他“很low”。</p><p><b>但是</b>，<b>当雷海为揣着一本《唐诗三百首》边送外卖边背诗的情景，在现场大屏幕上播放时，几乎所有人都对这个坚韧的年轻人，投以钦佩的目光。</b></p><p>和那些离我们有一定距离的人相比，雷海为显得更让人动容和敬佩。</p><p>主持人董卿曾这样称赞雷海为：</p><p><b>“你在读书上花的任何时间，都会在某一个时刻给你回报，我觉得你所有在日晒雨淋，在风吹雨打当中的奔波和辛苦，你所有偷偷地躲在那书店里背下的诗句，在这一刻都绽放出了格外夺目的光彩。”</b></p><hr><p>在《怦然心动》有这样一句经典台词：</p><p><b>“</b>Some of us get dipped in flat, some in satin, some in gloss. But every once in a while you find someone who''s iridescent, and when you do, nothing will ever compare.<b>”</b></p><p>这句台词，被韩寒翻译成：</p><p><b>“有人住高楼,有人在深沟,有人光万丈,有人一身锈,世人万千种,浮云莫去求,斯人若彩虹,遇上方知有”。</b></p><p>的确，天地悠悠，生命短促，每个人都有每个人的生活，不必强求，一花一世界，一叶一菩提，善待自己，随遇而安。</p><p><b>最后，还是以韩寒的话结尾：“千万别从一碗鸡汤里爬出来，又掉进了另一碗鸡汤。”</b></p></div><br><br>作者：黑眼豆豆写字的地方<br>链接：https://www.jianshu.com/p/766d5921f0fa<br>來源：简书<br>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</div>', 3, 0, 1, 'F', 'F', '2018-5-5', '2018-5-5', '\n\n\n\n最近，一篇名为《摩拜创始人胡玮炜套现15亿：你的同龄人正在抛弃你》的文章在微信朋友圈中广泛传播。文章举了日前摩拜单车被收购，创始人胡玮炜创业3年套现15...', 0, '<img src="//upload-images.jianshu.io/upload_images/1714291-e142d68d7234ee9b.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/700">'),
(24, '全！你想要的2018产品暑期实习笔试汇总，包含腾讯、百度、今日头条、美团、京东、携程、去哪儿等', '<div><div><p>最近2018暑期实习如火如荼的开展了，小编贴心的为大家带来了各大公司的产品笔试题（欢迎补充），持续更新中，<b>各位看官满意的话，虽然点个赞关注一下呗</b>~更希望大家私信或留言和小编一起讨论哈~</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/6880991-3fcc46ab3db9864d.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/433"></div>\n</div>\n<div></div>\n</div><h1>今日头条</h1><p>2个小时，必做6道，题量还是有点大的。</p><h4>产品功能3道</h4><p>1、分析一款你知道的直播答题类APP（冲顶大会、芝士超人、百万英雄等）请从产品、运营、营销、制作等方面分析。</p><p>2、结合市场现状与合理假设，请推算出资讯类APP日活跃用户（DAU）的天花板。</p><p>3、如果让你给今日头条的APP增加或者去除一个功能，你最想添加或者去除的同能是，请给出原因。</p><h4>建模题1道</h4><p>4、为2-10岁的儿童设计一款视频APP，写出设计思路和推广方式</p><h4>发散题1道</h4><p>5、你心目中优秀的产品经理有哪些？他们有哪些共同特点？请谈谈你对产品经理职业的理解，并从自身出发阐述你若座位一名产品经理优劣势在哪？</p><h4>附加题4道（4选1）</h4><p>6、头条、抖音目前的变现模式是广告，请任选一个APP，分析该APP广告变现，第二个潜力变现模式是什么，并分析理由</p><p>7、罗振宇（得到APP创始人）在微信、微博、头条、百度、抖音、得到上卖同一本书，你认为哪个平台会卖的最多，如何售卖，请至少选择三个熟悉的平台，结合平台特点给出相应结论</p><p>8、头条App推荐频道中，间隔多少条信息，给出一条广告更合适，请给出答案和理由。综合考核哪些因素，如何量化各因素的影响</p><h1>美团</h1><p>全是行测，也是挺特别的了&nbsp;</p><h1>唯品会</h1><p>同全是行测，和美团算是互联网产品大军中独树一帜的存在了hhh</p><h1>携程</h1><p>1个半小时：20道测评题+4道问答题</p><p>1、估算北京有多少间酒店</p><p>估算题的一般是会从供给方和需求方两个维度来看，但互联网产品一般是需求至上，所以从需求的角度来看会比较好（个人看法）</p><p>2、如果你是携程APP的产品经理，某一天的订单转化率下降了，订单转化率=订单数量/总浏览量</p><p>（1）根据公式推断所有可能原因</p><p>思路：因为题干明确说了是根据公式，那么就从订单数量和总浏览量两个角度来分析，可以结合数据来思考订单量下降的原因（舆论，重大事件，软件bug等）和总浏览量上升的原因（营销事件，广告效应等）</p><p>（2）如果订单量和之前的变化不大，分析原因</p><p>3、设计一款海外出游的APP，考虑的内容包括但不限于需求分析、产品设计、推广策略。</p><p>目前这一块垂直领域痛点还挺多的，可以发散下思维～</p><p>4、某生活类APP最近花重金进军打车业，分析携程是否有必要花重金进军打车市场，为什么？</p><p>主要可从，携程的优劣势和是否有必要花重金进军打车市场两个或多个角度分析吧</p><h1>顺丰科技</h1><p>顺丰科技之前有一次测评，测评后第二天就发来了笔试通知</p><p>50分钟5道问答题（个人觉得时间紧难度还是挺大的=。=）</p><p>1、某一天，你的leader给你看了下微信APP，然后对你说做一款一模一样的出来，你应该怎么进行这个项目？</p><p>2、用户在顺丰寄件一直到用户收件，简单阐述运单号在后台运转的数据流程</p><p>3、各种金融类APP对于用户账号安全的风险点有哪些？具有哪些安全保障的功能支持？</p><p>4、设计一款针对仓储和小哥的APP，不同于大众用户的APP，这款产品应如何设计？</p><p>5、快件业务一直是顺丰的主打业务，请简要叙述如何利用这一优势拓展线上或者线下的其他业务？</p><h1>360产品笔试题</h1><p>测评：全部都是行测，10道言语理解+15道数理思维+15道逻辑推理+10道资料分析。</p><p>题量还是比较大的，时间紧，所以要快速的答题 =。=</p><h1>去哪儿产品笔试题</h1><p><b>12道不定项选择</b>，是小编看到的第一家选择题中不只有行测题还有产品概念题的，而且竟然还考到了时下最热门的区块链！就问你怕不怕hhh</p><p>+4道问答题（时间充裕，但题目不简单 =。=）</p><p>1、企业为了吸引更多用户，决定开发新产品，产品A投入成本为200w，历时两个月，产品上线后新增用户8%，产品B投入320w，历时1.5个月，产品上线后新增4%-15%，产品上线后不影响转换率，现有转化率为30%，该公司用户量为100w。企业应该选择做哪一个？</p><p>2、用户拉新是去哪儿的重要战略目标，请为去哪儿设计一个拉新活动，从活动主题，基本形态等作答</p><p>3、小明预定了去哪儿的3.13的酒店，有效期到3.13 24：00，但小明24：10到酒店被告知他过了预定时间保留时间，此时酒店已满且无法协调，小明只能露宿街头，事后在微博上吐槽了一番。</p><p>请结合案例，从用户视角想出一套完备方案解决这个问题。</p><p>4、酒店入住是个强需求，房间入住在时序上有规律性，一般有60%人会选择提前n(假设1《n《30)天预定，请设计一套预测未来某个城市某一天入住房间的系统</p><p>（1）需要哪些数据，如何收集</p><p>（2）如何预测（求解）</p><p>（3）阐述预测系统的现实意义。</p><h1>招行信用卡</h1><p>行测部分：全是智力题，数学相关，没有语言类的，果然招行还是喜欢成绩好，脑子好的同学hhh</p><h1>美图</h1><p>1、介绍一款你最近忍不住推荐给别人的APP，分析它的亮点和槽点。</p><p>2、请分析一个今年颠覆了你旧有观念的互联网产品认知。</p><p>3、请简单设计一个AI或AR或区块链相关的相机APP。</p><p>4、向你爸妈安利一位表情包巨头，图片仅供参考。</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/6880991-9c56715d4951f96e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div>呵，我的表情如图中1234</div>\n</div><h1>腾讯</h1><p>今年腾讯选在清明节的上午笔试...可以说非常厉害了，还让不让人好好过节了？！</p><p>和往常年一样，腾讯笔试25道选择题+15道材料题+2道问答</p><p>1、腾讯视频是中国领先的网络平台，假设有一个很好的IP将在腾讯视频平台播出，你负责联动各个产品线做IP联合运营。你现在可以调动公司的丰富资源，你会如何实用哪些产品进行联动运营计划。</p><p>小编是按1、IP相关资源：比如腾讯动漫、文学等关联IP，京东商城关联周边售卖，QQ音乐关联bgm等；2、资讯：QQ看点、腾讯新闻、兴趣部落、腾讯微视等铺各种文章、广告、小视频等 &nbsp;3、与手游结合：资金允许情况下，可开发相关的手游 4、ASO优化：腾讯应用宝上将腾讯视频提前，并在下载页放上即将播放xxx视频 &nbsp;等</p><p>2、如果让你设计一个小程序，你会怎么做？请说明小程序核心功能、解决的用户痛点和使用场景（可使用草图、文字说明）</p><p>腾讯今年没有像其他家一样扣热点，考察的是产品经理的基本功，需要考虑到的点儿还是挺多的，欢迎大家一起来讨论下如何解答的~</p><h1>京东</h1><p>京东是直接在牛客网上做的，有一套题库随机出题</p><p>产品岗位是25道逻辑推理+25道定量计算+25道英语题+15道专业题（专业题就是一些关于名词解释、时事热点等，大家也可参考一下我之前的一篇文章<a href="https://www.jianshu.com/p/0426f25dae10" target="_blank">产品常考的一些名词</a>）</p><p>+两道问答，这两道问答大家也不太一样，下面收集了几道</p><p>1、你生活中有遇到不好的交互体验么？试说明如何优化</p><p>此题举线上线下的都可以的吧，只要优化方案贴合互联网思维就好</p><p>2、列出你觉得京东APP不好的地方并提出解决方案</p><p>emm...这个一般会出现在面试题里面，但这次出现在了笔试题，着实让人有些吃惊hhh</p><p>3、画出pos机的运行流程</p><p>可以在纸上话然后上传图片</p><p>4、设计一款新的互联网产品</p><h1>百度</h1><p>同样是在牛客网做的</p><p>包括大约50道选择题（需要一个一个点进去做）和两道问答题，选择题和问答题的时间是分开计算的，客观题时间比较紧，但主观题时间还是比较够的</p><p>1、请举例说明你最常用的一款APP</p><p>1、说出它的商业模式是什么</p><p>2、画出产品架构</p><p>3、请说明它面向的用户群体是</p><p>4、解决了用户哪些痛点</p><p>5、用户使用它的频率是怎样的？</p><p>6、他的竞品是什么，对比竞品，这个APP有哪些优势</p><p>2、以百度地图为例，你认为AI技术会对百度地图的交互方式产生什么样的影响？在其影响下，百度地图的导航过程中的使用场景是怎么样的？</p><p>持续更新中...</p></div><br><br>作者：搬砖小仙女<br>链接：https://www.jianshu.com/p/e07b413e8231<br>來源：简书<br>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</div>', 8, 0, 1, 'F', 'F', '2018-5-6', '2018-5-6', '最近2018暑期实习如火如荼的开展了，小编贴心的为大家带来了各大公司的产品笔试题（欢迎补充），持续更新中，各位看官满意的话，虽然点个赞关注一下呗~更希望大家私信...', 0, '<img src="//upload-images.jianshu.io/upload_images/6880991-3fcc46ab3db9864d.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/433">'),
(25, '见过世面的女人，还能被什么样的男人吸引?', '<div><div><div><div><div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1574541-00fb1d30eab9cd01.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div></div>\n</div><p><b>这是一个不装逼，不卖货，偶尔分享时尚干货，偶尔讲解品位文化，偶尔科普美妆护肤技巧，偶尔聊聊吃喝玩乐的公众号，男士和女士的都有，各类内容分享频率不定。</b></p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1574541-e397121e0eb979b6?imageMogr2/auto-orient/strip%7CimageView2/2/w/600"></div>\n</div>\n<div></div>\n</div><p>在男人中流传着一种讲法：如果你对一个姑娘有想法，一定要在她25岁之前搞定，结婚生子，过了25岁的女人都成精了。</p><p>关于这个讲法，义琳专门去请教了很多长辈，她们一致表示确实是这样。</p><p>刚刚走出象牙塔的姑娘，还没被人间的烟火气包裹，没经历过亲人离世、事业瓶颈、人事挤压、理想幻灭、家庭责任，忽然遇上个肯为她买抱抱熊，去游乐场撒欢，在悲泣时敞开胸怀的男孩子，就以为遇到了真名命天子。</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1574541-3e143be2e4da4b6e?imageMogr2/auto-orient/strip%7CimageView2/2/w/640"></div>\n</div>\n<div></div>\n</div><p>等被困在做不完的家务劳动，理不清的婆媳关系，孩子的哭闹、陪玩、哄睡、课业辅导，新人的排挤，上司的黑脸，日渐下滑的体能中的时候，才发现婚姻里只有自己一个人在孤军奋战，哪里有什么战友。</p><p>爱是天雷勾地火，一触即发。婚姻是照妖镜，激情褪去，留下的是设色丹青，还是无厘头的胡乱涂鸦，一清二楚。</p><p>随着社会阅历增长，七灾八难，九转炼狱，眼光越来越犀利，心越来越澄明。</p><p>回首年轻时的那些小心机，就像TVB滥俗的台词，藏不住的傲气与不甘，却经不起一次逻辑梳理，每一句不走心的表白，都禁不住一个「?」</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1574541-2058316407f5b70b?imageMogr2/auto-orient/strip%7CimageView2/2/w/600"></div>\n</div>\n<div></div>\n</div><p>摔的跤多了，受过的伤，流血留疤，锥心的痛，结疤结痂，每一道伤，都化作强大的动力，自强不息地抗争。心底的柔软不变，只是不再相信玛丽苏的故事和杰克苏的套路。</p><p>谁也不是平白无故就修炼成精，都是生活教的。</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1574541-848815bc198bb9eb?imageMogr2/auto-orient/strip%7CimageView2/2/w/600"></div>\n</div>\n<div></div>\n</div><p>最近正风靡社交网络的韩剧《迷雾》（Misty），就刻画了这样一个「见过世面」的女人——高慧兰。</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1574541-a237976144795ea9?imageMogr2/auto-orient/strip%7CimageView2/2/w/392"></div>\n</div>\n<div></div>\n</div><p>理智、沉稳、老辣、独立、自信、坚韧、清醒，</p><p>草根出身，为了职业信仰和理想，可以不惜牺牲一切，</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1574541-be3dd532fb6a6424?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div></div>\n</div><p>抛弃爱人，交换婚姻，牺牲友情，放弃孩子，碾压后辈，撕逼同辈，怒怼上司，</p><p>职业能力强，交际手腕硬，有勇气，有谋略，</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1574541-a9fb5127e33f534e?imageMogr2/auto-orient/strip%7CimageView2/2/w/600"></div>\n</div>\n<div></div>\n</div><p>即使每次都被逼到死角，也能够绝地反击，</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1574541-09e4eaabf3762432?imageMogr2/auto-orient/strip%7CimageView2/2/w/640"></div>\n</div>\n<div></div>\n</div><p>即使深夜痛哭买醉，待太阳升起，又是一个杀伐决断，善恶难辨，眉梢皱纹，衣衫折痕，统统可以杀人的魔女。</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1574541-02c4a6f48da41acf?imageMogr2/auto-orient/strip%7CimageView2/2/w/560"></div>\n</div>\n<div></div>\n</div><p>她不惜一切代价让自己拥有并维持纤细的身材、傲人的美貌、御姐的气场。</p><p>太多职业女性在她身上找到了自己的影子，我身边也有很多这样精致优雅到高级的女人。</p><p>但对于更多男人来说，这样的女人并不好惹，看起来完美到无懈可击，没有缺口可以攻破，却又让人一次次躁动不安。</p><p><b>究竟什么样的男人才能欣赏得了这样的女人？能够将女神收入囊中？</b></p><p>剧中就安排了这样三个男人。</p><p><b>1.&nbsp;认同并支持她的梦想</b></p><p>JBC播报局局长，见证了她从一个跑现场的新人一步步升级打怪强势霸占黄金时间主播位置长达7年之久。</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1574541-2e2bfc4775b118b3?imageMogr2/auto-orient/strip%7CimageView2/2/w/415"></div>\n</div>\n<div></div>\n</div><p>面对她屡次出言不逊，对后辈的打压都予以容忍是对她能力的认可，那么后来在青瓦台来做外调，不吝溢美赞许，再到她陷入牢狱危机的时候，合谋共计，跟不上是因为他与她有着相同的梦想——实现正义社会。</p><p><b>2. 懂得她的野心，肯定她的努力</b></p><p>剧中和女主相关的角色背后都牵着一根隐形的丝线，直到14集依然看不清其中的关联。</p><p>但从即将垮台的姜仁翰的前后活动，以及14集公婆的登门来看，公公一直是一个隐藏在深处的狠角色。</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1574541-1227fbcb4a9fb093?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div></div>\n</div><p>甚至可以从剧中很多蛛丝马迹感到，她的多舛命运甚至与这位幕后高人有关。</p><p>姜仁翰登门拜访公公到公公来儿子家做客的态度，公公曾多方设置障碍，考察过这个儿媳，肯定了她的努力，也对她的野心表示赞许。</p><p><b>3. 愿意和她共创未来，彼此给力</b></p><p>一个人的魅力很大程度上来自于他/她专注的那个部分，可能是TA的理想、职业，或者爱好。</p><p>当你被她吸引的时候，也请同时保护好她魅力的源泉，尊重她的理想，认同她的职业，支持她的爱好，不要试图将其圈进传统的婚姻，改造成贤妻良母。</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1574541-f6882e2a50f54f28?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div></div>\n</div><p>她需要的不是司机、厨师、保洁阿姨，而是可以携手努力，并肩奔跑的梦想合伙人。</p><p>松浦弥太郎说：「爱，是让对方活出自己。」能够互相信任，彼此赋能的婚姻会让你见证她的成长，一次又一次爱上她。</p><p><b>4. 有体面的身份，懂得打理自己的形象和生活</b></p><p>作为新时代的「白骨精」，无论背地里需要付出多少牺牲和努力，都会在人前美得毫不费力。站在她身边的男人，自然要领得出去见人。</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1574541-67f7e8198147be52?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div></div>\n</div><p>能够有得体的形象是最起码的要求，但别指望她有时间帮你打理臭袜子、脏衣服，打理生活中的各种鸡毛蒜皮，照顾好你和你家人的生活。</p><p>作为一个成年人，能够照顾好自己的生活，打理好自己的形象，是能够让人信赖的基本条件。</p><p>作为梦想合伙人，实力相当才能共谋大业。大股东才有机会参加董事局会议，发表意见，散户只有吃瓜的份。</p><p>即便你不能带她飞，但至少不会相互掣肘拖后腿。</p><p><b>5. 懂得她的柔弱的底色，愿意倾听守候</b></p><p>正如高慧兰所说：「活到现在，这种绝境我经历了好几次，穷途末路无法退后，我从来没有逃跑或是躲避过，从来都是正面突破。」</p><p>她们经历过太多无助的时刻，不再期待沉船时会有人将最后一块木板让给自己，但如果有一个人，肯于耐心守候，在她最脆弱的把肩膀，怀抱一齐张开，欢迎她回来。</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1574541-202528e3bdec93df?imageMogr2/auto-orient/strip%7CimageView2/2/w/600"></div>\n</div>\n<div></div>\n</div><p>任凭是超人还是女侠，都会忍不住心动不已。</p><p>最后，也是最重要的一点，当然要彼此喜欢啦。</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1574541-5b30da73d2f86f83?imageMogr2/auto-orient/strip%7CimageView2/2/w/640"></div>\n</div>\n<div></div>\n</div><p>姑娘们，碰到这样一个尊重你，认同你，懂你，支持你的男人，千万不要错过，要狠狠地幸福哦。</p><p><b>你的点赞和转发就是对我掏心掏肺最大的鼓励。授权转载，请至后台联</b><b>系，未经授权禁止转载。</b></p><p>文字 &amp;图片编辑：义琳</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/1574541-31e991198e65e793?imageMogr2/auto-orient/strip%7CimageView2/2/w/600"></div>\n</div>\n<div></div>\n</div><p>图片来自网络</p></div><br><br>作者：义琳<br>链接：https://www.jianshu.com/p/24ab2441b051<br>來源：简书<br>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</div>', 8, 1, 3, 'F', 'F', '2018-5-6', '2018-5-6', '\n\n\n\n这是一个不装逼，不卖货，偶尔分享时尚干货，偶尔讲解品位文化，偶尔科普美妆护肤技巧，偶尔聊聊吃喝玩乐的公众号，男士和女士的都有，各类内容分享频率不定。\n\n...', 4, '<img src="//upload-images.jianshu.io/upload_images/1574541-00fb1d30eab9cd01.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/700">'),
(26, '拍照出书环游中国，追求梦想的路上我想和你谈点实际的', '<div><div><p>我拍了上万张照片，写了超过五十万的文字，出了两部电子书，即将发行一本纸张书，走遍了全国21个省，100多座城市，还有东南亚的一些小国家。而以前的我心里也会有种很无力的感觉，明明想做点什么，但是什么都做不了，也什么都改变不了。</p><p>现在凌晨5点，这篇文章我写了很久，说长不长，说短不短，大概有7000字左右，基本上都是干货，分享了我近一年多来旅行摄影这条路上的经历，方法和技巧，希望能够帮助你在旅行摄影+写作上成长更快。</p><blockquote><p><b>第一次尝试付费，本文为我从自身经验出发，整理出来的干货福利。本周优惠购买价格为2.99元，对本文感兴趣的同学请尽快出手哦~</b></p></blockquote><p><b>在追求梦想的路上，还是来点实际的吧，今天讲讲自己在旅行摄影+写作方面所知道的那些“套路”。</b></p><p>着重聊一聊如何建立个人IP，下面从<b>形象定位、互联网思维、社交分享、福利活动、后期维护运营五个方面，</b>告诉你我是怎么做的。</p><p>如果你想在互联网上建立自己的个人品牌，将爱好与兴趣变成个人职业，建议可以看看本文。</p><p>总结起来，我觉得有下面几个步骤要走。</p><blockquote>\n<p><b>一.从五大版块出发，教你如何建立个人IP（重点）<br></b></p>\n<p><b>二、选择拍摄作品类型，精准自身定位</b></p>\n<p><b>三、多角度系统学习摄影知识，一直干下去</b></p>\n<p><b>四、每日一拍，积累作品</b></p>\n<p><b>五、摄影路上的一些建议</b></p>\n</blockquote><p><b><br></b></p><p><br></p><h4>进入正题：</h4><p><b>首先是本文最最最精华的部分。</b></p><p><b>一，如何建立个人IP</b></p><p>个人IP，既为树立个人品牌，顾名思义你是个什么样的人？你要去做什么，为什么别人要关注你？</p><p>看你能不能在这条路上走远走久，就是要靠这一步了。在这个互联网和自媒体崛起的时代里，只要你有一技之长，就可以打造自己的品牌。</p><p>我下面从形象<b>定位、互联网思维、社交分享、福利活动、后期维护运营五个方面，告诉你我是怎么做的。</b></p><p><b>1、形象定位</b></p><p>形象定位，其实就是要解决“你是谁”的问题。</p><p>OK，我想做一个旅行摄影师，首先你参与的所有线上线下的活动，都是围绕这个主题来展示的。</p><p>先说说昵称的事情，我一开始想了很多，比如做一个温暖的人，比如浪迹天涯。但最后我用了有备而来的路人甲，为什么呢？这个名字会让别人觉得还蛮有故事，然后就会产生兴趣。</p><p>再说说头像，既然你都是旅行摄影师，那你的头像能不能不要放那些开通，或者随意拍一张就放上去。而应该是清晰的个人旅行照片，或者在某个唯美的地方拿着自己的相机的那种照片。</p><p>此外，<b>不要频繁的更换你的头像</b>，你看哪个品牌经常换LOGO的？这样会给你的（潜在）顾客造成搜索识别困难，而且显得不够成熟稳重。</p><p>说完名字和头像，就是你的个性签名了。很多人会觉得个性签名不是很重要，但其实错了，个性签名也能够体现很多信息，比如我的个性签名里一直有一句话：<b>虽然素未谋面，却已相识很久。</b>这句话能让那些喜欢旅行的人感同身受。也可以去体现你其他平台的昵称。</p><p>最后再说说朋友圈的事情，你都定位自己要做旅行摄影师了，你就多发一点自己关于这些旅行和摄影方面的东西好嘛？比如你是怎么样一步一步学习，或者可以在朋友圈打卡每日一拍的照片，这些东西都是可以呈现的，让关注你的人，了解你的动态，见证你成长的过程，而不是打着旅行摄影的定义，整体发一些乱七八糟的东西。</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/3459828-0a8fae6a851191c7.jpeg?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div></div>\n</div><p><br></p><p><b>2、互联网思维</b></p><p>什么是互联网思维呢？大意是指：分享、交流、扁平、快捷、体验等。与本篇文章主题有关的，我主要分享下面点点。</p><p><b>入驻：</b></p><p>当你已久积累一定的作品之后，那么你就要开始入驻一些互联网平台了。我直接告诉你我是如何操作的。</p><p>第一步，建立个人微信公众号，发的勤一点，每日一更，尽快拿到原创便签，为什么要先进行这一步呢，现在盗用文章的现象很普遍，最起码别的公众号想发的时候你这里有原创便签了，别人不能轻易盗用。</p><p>第二步，入驻一个相对容易带来流量的平台。我们都知道，微信公众号只有关注的人才能够看到推送消息，或者别人转发了才可以看见，但现在这个时代很能崛起。那么需要找一个积累流量相对容易的平台进行创作。比如简书，只要你认真的写，总会人看你的文章。当然，很多人说我写了很久阅读量寥寥无几，其实我一开始的时候也是，几乎没有人看。</p></div><br><br>作者：有备而来的路人甲<br>链接：https://www.jianshu.com/p/9bc3fff0810d<br>來源：简书<br>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</div>', 9, 0, 1, 'F', 'F', '2018-5-6', '2018-5-6', '我拍了上万张照片，写了超过五十万的文字，出了两部电子书，即将发行一本纸张书，走遍了全国21个省，100多座城市，还有东南亚的一些小国家。而以前的我心里也会有种很...', 0, '<img src="//upload-images.jianshu.io/upload_images/3459828-0a8fae6a851191c7.jpeg?imageMogr2/auto-orient/strip%7CimageView2/2/w/700">'),
(27, '你在抖音刷段子，我在网易云学情话。', '<div><div><blockquote>网易云的评论区，从来就是个不缺故事的地方，收集了一些情话，不知道说给谁听，发出来共享一下吧。</blockquote><h4>1.</h4><p>@你背后有光ya：</p><p>"在吗”</p><p>“在啊咋了"</p><p>“我发现了一个外国人和中国的区别"</p><p>“什么区别？"</p><p>"外国人喜欢一个人很直接说I love you"</p><p>“那中国人呢？"</p><p>“中国人很委婉会小心翼翼的问他在吗"</p><p>来自单曲如常-房东的猫</p><p><br></p><h4>2.</h4><p>@那你有小鱼干吗：</p><p>周恩来给妻子写的信上说：“你的信太过官方，都不说想我。”</p><p>她回信说：“纸短情长，吻你万千。"</p><p>来自单曲纸短情长-烟把儿</p><p><br></p><h4>3.</h4><p>@七亿仙男的梦：</p><p>不想撞南墙了</p><p>想撞先生的胸膛</p><p>来自单曲起风了-买辣椒也用券</p><p><br></p><h4>4.</h4><p>@团子汐回复：</p><p>曾经我自半个诗人，见山是深情伟岸，见海是热情澎湃，见花见草信他们皆有故事，云海江潮，虫鸣鸟啼都暗藏情愫。唯独见了你，山川沉默，海面静谧，云海不再翻涌，江潮不再澎湃，花鸟鱼虫被光与尘凝固，世界万籁俱寂，只剩下你。</p><p>@我是绘梨衣啊：</p><p>我是个俗气至顶的人，见山是山，见海是海，见花便是花。唯独见了你，云海开始翻涌，江潮开始澎湃，昆虫的小触须挠着全世界的痒。你无需开口，我和天地万物便通通奔向你。</p><p>来自单曲起风了-买辣椒也用券<br></p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/5921503-91114054d8b41578.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div>山川 photo by 蔡小卿Yoki</div>\n</div><p><br></p><p></p><p></p><h4>5.</h4><p>@苏弥生：这里荒芜寸草不生，</p><p>后来你来这走了一遭，</p><p>奇迹般万物生长，</p><p>这里是我的心。</p><p>——《沙漠》</p><p>喜欢倒着读这首小诗</p><p>来自单曲「喜欢你，但害怕]-戴尔基</p><p><br></p><h4>6.</h4><p>@韩先森爱鱼小妹：</p><p>现在想想，最美妙的时刻不是热恋，而是有人忽然闯进你心里的那一瞬间。仿佛拥有了新的世界，叫人相信所有的剧本都是为你我而写。</p><p>来自单曲小永远-何洁</p><p><br></p><h4>7.</h4><p>@帐号已注销：</p><p>江湖太远了我不去了</p><p>我爱上了给你做饭陪你睡觉.</p><p>来自单曲123我爱你（男声版）</p><p><br></p><h4>8.</h4><p>@猫姐姐-：</p><p>我北上看到的冰川是你，</p><p>我南下追寻的极光是你，</p><p>我西去流浪的经幡是你，</p><p>我东去皈依的梵经也是你。</p><p>来自单曲浮生-刘莱斯<br></p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/5921503-68c1ff8cd06f3be8.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div>经幡 photo by 蔡小卿Yoki</div>\n</div><p><br></p><h4>9.</h4><p>@妖么嬷：<br></p><p>“我有一个办法让你快速瘦三斤哦~”</p><p>？"</p><p>“把你的心给我"</p><p>来自单曲123我爱你（男声版）</p><p><br></p><h4>10.</h4><p>@Sun_小瑶：</p><p>“一腔情意喂了狗，谁再回头谁是狗。</p><p>“汪.…</p><p>来自单曲一腔诗意喂了狗-花粥</p><p><br></p><h4>11.</h4><p>@八月间下雨很正常：“你听什么歌呢？"“歌名太长太难说了"“那就说前几个字吧~””我喜欢你。。。"</p><p>来自单曲我喜欢你胜过削好的水果周末的零食延后的死线冰镇西瓜正中间那一口肆无忌惮的赖床和空调房里盖棉被的感觉但我就是不敢告诉你</p><p><br></p><h4>12.</h4><p>@亿万少女的怀春梦：</p><p>我看过春风十里，见过夏至未至，试过秋光潋滟，爱过冬日暖阳，全都抵不过你一句我想见你。</p><p>来自单曲好想你-沈以诚<br></p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/5921503-83d236a2b65bf7cf.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div>春色 photo by 蔡小卿Yoki</div>\n</div><h4>13.</h4><p>@愿风带走伤和痛：</p><p>老师让用两个字来形容爱情。有个同学写下“瓶邪"老师不知，问该如何解释。同学淡定回答道：“瓶字，可以拆分为并瓦，意为并肩屋檐下。邪字，牙耳，可以理解为鬓边私语。两个字合起来，意思就是，我与你，在屋檐下并肩而坐，悄悄地在耳边说着些别人不懂的秘密。“然后，整个课堂都沸腾了。</p><p>来自单曲好想你-沈以诚</p><p><br></p><h4>14.</h4><p>@大概上辈子是个狐狸：</p><p>我喜欢吃草莓，草莓汁不行，草莓蛋糕不行，不是草莓不行。</p><p>我喜欢你，长得像你不行，性格像你不行，不是你不行。</p><p>来自单曲我多喜欢你，你会知道</p><p><br></p><h4>15.</h4><p>@我要变成长颈鹿了：</p><p>“其实有很多事情不用那么拐弯抹角。与其说我喜欢夏天，不如说我喜欢西瓜冰淇淋小短裙；与其说我喜欢大海，不如说我喜欢海水漫过脚踝；与其说我喜欢笑起来很阳光的人，不如说我喜欢你。”</p><p>来自单曲Say Hello-Rosie Thomas<br></p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/5921503-1e0908591b631d88.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div>海 photo by 蔡小卿Yoki</div>\n</div><h4>16.</h4><p>@HalfBrokeHorse:</p><p>"何为归途？"</p><p>"夜鸟荒路漫漫无期。"</p><p>“可否具体？"</p><p>“碎言华灯喧嚣无际。"</p><p>“可否再具体？"</p><p>“一诗一酌不觉千里。"</p><p>“仍是不解。”</p><p>“与你，四处为安。”</p><p>来自单曲浮生-刘莱斯</p><p><br></p><h4>17.</h4><p>@蔡小卿Yoki:</p><p>你看到了我眼里的沙丘河流，也看到了我眼里的星辰黄昏，你可曾看到我心里，嘘在那里，你一直都那里。</p><p>来自单曲嘘（Acoustic)-愚青</p><p><br></p><hr><p>我的其它相关文章：<br></p><p><a href="https://www.jianshu.com/p/1daec452a74d" target="_blank">网易云音乐上这些乐评，一下子戳中了我的心</a></p><p><a href="https://www.jianshu.com/p/587222627f09" target="_blank">那些被我偷拍的情侣们，告诉我爱情的样子</a><br></p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/5921503-13e370957f6599fb.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/700"></div>\n</div>\n<div>图片发自简书App</div>\n</div><p>我是走在路上的蔡小卿，如果你喜欢我的照片和文字，可以帮我点赞、关注，也欢迎一起交流，有缘的话，我们路上见~</p></div><br><br>作者：蔡小卿Yoki<br>链接：https://www.jianshu.com/p/725c7dc55d58<br>來源：简书<br>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</div>', 9, 0, 0, 'F', 'F', '2018-5-6', '2018-5-6', '网易云的评论区，从来就是个不缺故事的地方，收集了一些情话，不知道说给谁听，发出来共享一下吧。1.@你背后有光ya："在吗”“在啊咋了"“我发现了一个外国人和中国...', 1, '<img src="//upload-images.jianshu.io/upload_images/5921503-91114054d8b41578.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/700">');
INSERT INTO `articles` (`id`, `title`, `body`, `user_id`, `comments_count`, `followers_count`, `close_comment`, `is_hidden`, `created_at`, `updated_at`, `text`, `reads_count`, `img`) VALUES
(28, '这是一篇如何下载电影的必备干货', '<div><div><p>哈喽大家好，这里是白胡椒。大概是一个月以前，我发了一篇文章教大家如何找电影资源，没看过的可以点击<a href="https://www.jianshu.com/p/9bc345dbec08" target="_blank">《这是一篇如何找电影资源的必备干货》</a>认真复习，当时说的再写下篇可能等到猴年马月去了，没想到啊没想到，竟然就是今天啊！</p><p>所以，本期内容的主题就是教大家<b>如何下载电影资源</b>。嗯，没有下载电影的习惯而只在在线平台观看电影的朋友们，大概现在就可以散了吧，毕竟道不同不相为谋嘛，你说呢～</p><p>本期内容分为<b>下载器推荐</b>、<b>百度云下载</b>、<b>在线平台视频下载</b>等，如果有分平台讨论的情况我也会特别标明。为了控制篇幅每个内容都不会涉及得太过于精细，点到为止，但会贴出相关文章推荐。还是希望各位读者大老爷们自己动手丰衣足食的，毕竟我也只是个学艺术完全没有编程基础的电脑小白哇～</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/6192172-8f0a8951f430a04c?imageMogr2/auto-orient/strip%7CimageView2/2/w/580"></div>\n</div>\n<div></div>\n</div><p>再次强调，本胡椒从win10转mac OS，目前手头仅有mac，以下所有均为<b>自用</b>的目前最佳方案，在描述时会同时<b>兼顾两个平台</b>的用户。任何专业问题请不要问我，任何操作问题也请不要问我，如果觉得我说得不够细致或出现错误请谅解并自行百度，<b>电脑小白</b>在此谢过！</p><p>好了，废话不多说让我们直接讨论下载最重要的工具——<b>下载器</b>！</p><p>在此，没有疑问，首推<b>迅雷</b>。</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/6192172-157c316557cd481e?imageMogr2/auto-orient/strip%7CimageView2/2/w/640"></div>\n</div>\n<div></div>\n</div><p>尽管多年前就有一大批用户唱衰渣渣雷，但你看，直到现在，电驴死了，QQ旋风死了，渣渣雷依旧坚挺。</p><p>虽然迅雷9版本给win用户绑定了广告大礼包，mac版尽管清爽了许多，可广告礼包仅仅是略有收敛，但迅雷在国内下载器中的地位还是不容小觑，不管你怎么恨得牙痒痒都很难找到可以完全替代的产品。</p><p>由于其支持的下载链种类多样，解析速度快，支持离线下载等种种原因，我还是会推荐一般用户使用迅雷，重度下载用户（比如我）掏钱开会员，可以说是速度飞天了。</p><p>win用户推荐使用<b>迅雷极速版</b>，最干净简洁的迅雷版本，尽管不再更新但依旧是迅雷各版本中的巅峰之作。</p><p>mac版用户推荐参考<b>【少数派】</b>的这篇文章进行配置：</p><p><a href="https://link.jianshu.com?t=https%3A%2F%2Fsspai.com%2Fpost%2F42248" target="_blank" rel="nofollow">https://sspai.com/post/42248</a></p><p>精简后的页面：</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/6192172-3594fff4edf4a565?imageMogr2/auto-orient/strip%7CimageView2/2/w/640"></div>\n</div>\n<div></div>\n</div><p>但现在由于版权问题越来越严重，迅雷即使开了会员也极有可能遇到因版权问题无法下载的情况，那还有什么下载器能临时代替迅雷呢？</p><p>我巡视了一圈，发现有的不是免费，有的页面丑陋，有的支持的下载链接太少，总之没有能够完全替代迅雷的产品，因此挑来挑去就只挑了这一款给大家：</p><p><b>FDM（Free Downloa Manager）</b></p><p>官网：<a href="https://link.jianshu.com?t=https%3A%2F%2Fwww.freedownloadmanager.org%2F" target="_blank" rel="nofollow">https://www.freedownloadmanager.org/</a></p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/6192172-22d019c84619be8d?imageMogr2/auto-orient/strip%7CimageView2/2/w/640"></div>\n</div>\n<div></div>\n</div><p>纯免费，跨平台，兼容最流行的浏览器Google Chrome，Mozilla Firefox，Microsoft Edge，Internet Explorer和Safari，抓取网页链接、智能限速、断点续传，同时支持 URL 和 Torrent，可以「边下边播」，页面简洁速度稳定，没什么特殊需求的话用这个就够。</p><p>主要问题是现在的下载链接中，有很大一部分是迅雷专链，其他的很多下载器无法解析最后逼你用回迅雷，可以说是非常凄惨了……</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/6192172-1356a11f72813ea7?imageMogr2/auto-orient/strip%7CimageView2/2/w/250"></div>\n</div>\n<div></div>\n</div><p>尽管迅雷能够解决大多数的下载需求，开了会员以后的速度也确实是无可挑剔，但是面对百度云的资源，迅雷就显得束手无策。</p><p>众所周知，百度云也是在云盘纷纷死亡之后依旧屹立不倒的老大哥，丰富的资源和超大的免费空间也让它占领了极大份额的市场。寡头垄断就意味着，它怎么剥削你你都束手无策，面对高昂的百度网盘超级会员和各种强制跳入客户端的行为，智慧的网友充分发挥了他们的各种聪明才智：</p><p>目前，从百度网盘下载资源到本地，我<b>个人已知</b>的方案有以下四种：</p><blockquote>\n<p>1、乖巧地使用百度网盘客户端</p>\n<p>2、越过客户端，利用插件和脚本导出至网页下载器下载</p>\n<p>3、越过客户端，利用插件和脚本导出外链，粘贴到迅雷进行下载</p>\n<p>4、配置Aria2及浏览器插件下载</p>\n</blockquote><p>对于这四种方案我将一一详细地为大家讲解：</p><p>首先，第1条，应该是大多数用户的选择。跳进客户端下载的时候，每天系统会赠送120s的超级会员体验时间，这时会你可以体会到满速下载的流畅，当试用时间过后看着几k几十k的下载速度，一怒之下掏了这个会员费的应该也不少吧。但算起来，百度这30块并不如迅雷的15性价比高来得划算，当然土豪请随意。</p><p>于是，让百度网盘绕过客户端通过其他渠道下载成为了一条最主要的思路，而2、3不过是使用的脚本不同罢了。</p><p>以下内容以<b>Chrome浏览器</b>为例：</p><p>首先是下载安装<b>Tempermonkey（俗称油猴）</b></p><p>官网：<a href="https://link.jianshu.com?t=http%3A%2F%2Ftampermonkey.net%2F" target="_blank" rel="nofollow">http://tampermonkey.net/</a></p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/6192172-a799740faae2516c?imageMogr2/auto-orient/strip%7CimageView2/2/w/584"></div>\n</div>\n<div></div>\n</div><p>这是一个名声在外的脚本管理插件，相信大家都有所耳闻，支持多种浏览器</p><p>安装完油猴，下一步当然就是去<b>安装脚本</b></p><p>推荐使用的是<b>Greasy Fork</b></p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/6192172-7479ec14f356677d?imageMogr2/auto-orient/strip%7CimageView2/2/w/640"></div>\n</div>\n<div></div>\n</div><p>网址在这里：<a href="https://link.jianshu.com?t=https%3A%2F%2Fgreasyfork.org%2Fzh-CN" target="_blank" rel="nofollow">https://greasyfork.org/zh-CN</a></p><p>大家到<b>脚本列表</b>就可以随心安装脚本了</p><p>脚本列表里最多的就是有关于百度网盘的，比如这些，都是可以越过客户端直接下载的脚本</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/6192172-766f26199dc33c19?imageMogr2/auto-orient/strip%7CimageView2/2/w/640"></div>\n</div>\n<div></div>\n</div><p>装上后会在百度网盘网页端出现这样的内容框：</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/6192172-36f2246303c519d5?imageMogr2/auto-orient/strip%7CimageView2/2/w/498"></div>\n</div>\n<div></div>\n</div><p>除此之外还有这种：</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/6192172-fd90c6f338d8d288?imageMogr2/auto-orient/strip%7CimageView2/2/w/640"></div>\n</div>\n<div></div>\n</div><p>还有这一个也很实用：</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/6192172-094eb2d3a7aa21d8?imageMogr2/auto-orient/strip%7CimageView2/2/w/640"></div>\n</div>\n<div></div>\n</div><p>出来的效果是这样的：</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/6192172-1adfd28ea7828123?imageMogr2/auto-orient/strip%7CimageView2/2/w/560"></div>\n</div>\n<div></div>\n</div><p>如果你喜欢在线看视频，最好装一个这样的脚本，将flash换成html5</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/6192172-b9b637b0cf164adb?imageMogr2/auto-orient/strip%7CimageView2/2/w/640"></div>\n</div>\n<div></div>\n</div><p>如果你用豆瓣，可以装一个这样的脚本，同时显示豆瓣和imdb的评分</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/6192172-f785258522643bc8?imageMogr2/auto-orient/strip%7CimageView2/2/w/640"></div>\n</div>\n<div></div>\n</div><p>对于大学生来说，请务必装一个这个脚本，不用被迫下载知网论文格式真的很方便</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/6192172-9d9998eb60e9944a?imageMogr2/auto-orient/strip%7CimageView2/2/w/640"></div>\n</div>\n<div></div>\n</div><p>大家自个儿研究吧，应该会有收获～</p><p>安装完脚本后，登陆特定的网页脚本会自动生效，非常方便了。</p><p>需要注意的是，用户在某一个或几个脚本失效的时候要记得去手动更新一下，或者到这个网站重新安装。</p><p>尽管通过这种方法可以避开客户端，导入自己的下载器，但无论是网页下载器还是迅雷等下载器，这种方法一般都难以实现多链程下载，而且导出外链下载的失败率也越来越高。因此我追求到了另一下载神器<b>Aria2</b>，搭配Chrome百度插件，完美解决了这个问题。</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/6192172-3bb052aeb4e33412?imageMogr2/auto-orient/strip%7CimageView2/2/w/640"></div>\n</div>\n<div></div>\n</div><p>再次声明，我不是程序员，我不懂这其中的门道，我不懂什么终端什么Homebrew的，所以细节问题请大家自己动手找教程，我仅仅只负责贴出我所使用过的下载地址。</p><p>相信一般同学都会去<b>官网</b>直接下载：</p><p><a href="https://link.jianshu.com?t=http%3A%2F%2Faria2.github.io%2F" target="_blank" rel="nofollow">http://aria2.github.io/</a></p><p>可是并不是所有人都会配置的，对于程序员自然都是小意思但是作为一个纯艺术生电脑小白的我真的是花了整整一个下午和晚上来研究这个东西啊啊啊啊啊啊……</p><p>贴出这个我看不懂的<b>说明书</b>：</p><p><a href="https://link.jianshu.com?t=http%3A%2F%2Faria2c.com%2Fusage.html" target="_blank" rel="nofollow">http://aria2c.com/usage.html</a></p><p>建议大家去<b>GitHub</b>下载这个<b>配置好的</b>版本：</p><p><a href="https://link.jianshu.com?t=https%3A%2F%2Fgithub.com%2Faria2%2Faria2%2Freleases%2Ftag%2Frelease-1.33.1" target="_blank" rel="nofollow">https://github.com/aria2/aria2/releases/tag/release-1.33.1</a></p><p>然后在GitHub下载<b>最新版</b>的<b>插件</b>：</p><p><a href="https://link.jianshu.com?t=https%3A%2F%2Fgithub.com%2Facgotaku%2FBaiduExporter" target="_blank" rel="nofollow">https://github.com/acgotaku/BaiduExporter</a></p><p><b>（注意：Chrome的插件格式是.crx）</b></p><p>教程建议在<b>简书</b>搜索，<b>按时间排序</b>。下载安装的时候一定要最新版本，无论是软件还是插件，否则，匹配不齐会出岔子。我上述给出的GitHub网址中就有最新的版本，大家根据需要选择使用。</p><p>如果顺利的话，你们的百度云盘网页端会出现一个<b>【导出下载】</b>的选择框，选中下载内容点击<b>【ARIA2 RPC】</b></p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/6192172-4f7b65a9403787b4?imageMogr2/auto-orient/strip%7CimageView2/2/w/640"></div>\n</div>\n<div></div>\n</div><p>在已经<b>提前打开</b>aria2 yaaw或aria2 gui的前提下，能够将百度云的链接直接导入进去下载。虽然有时候可能不稳定会抽抽，多<b>刷新</b>几次或<b>重新打开浏览器</b>可能就好了。</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/6192172-723203da39373108?imageMogr2/auto-orient/strip%7CimageView2/2/w/640"></div>\n</div>\n<div></div>\n</div><p>关于百度云的内容到此为止，最后配置aria2这个方法适合百度网盘下载需求大、不怕折腾最好有计算机基础的同学，当然网上也有小白版的教程，但还是需要大家的耐心。</p><p>最后谈一谈从B站等网站下载视频的方法：</p><p>尽管有插件或脚本导出外链，也有在视频链接的bilibili后加jj或前面加i（这两种目前都已经失效，<b>现在只能在bilibili前加kan，即kanbilibili</b>）的方法，但是都不如<b>硕鼠</b>下载来得速度快且方便：</p><p>硕鼠官网：<a href="https://link.jianshu.com?t=http%3A%2F%2Fwww.flvcd.com%2F" target="_blank" rel="nofollow">http://www.flvcd.com/</a></p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/6192172-9258216f41f09f17?imageMogr2/auto-orient/strip%7CimageView2/2/w/640"></div>\n</div>\n<div></div>\n</div><p>目前win版体验已经非常好，mac版体验非常不好。尽管如此，这个神器用来下载在线网页的视频体验确实很好，速度快，清晰度可选，支持网页多，多段下载后自动合并，算是比较不错的了。</p><p>嗯，今天就先介绍到这里，其实大多数内容都算得上是小常识，比如装浏览器插件脚本之类的，复杂的如配置aria2这种开源下载器我个人也并不怎么懂，因此算是一个马马虎虎的介绍，还请赏识。</p><p>最后还是例行希望大家关注我的公众号FlodiaFilm，虽然日常拖更但励志做到小而精，不敷衍。谢谢各位读者大老爷们！</p><div>\n<div>\n<div></div>\n<div><img src="//upload-images.jianshu.io/upload_images/6192172-dc2b8df38215f5f6?imageMogr2/auto-orient/strip%7CimageView2/2/w/250"></div></div></div></div><br><br>作者：白胡椒小姐<br>链接：https://www.jianshu.com/p/95be03cf0648<br>來源：简书<br>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</div>', 1, 3, 1, 'F', 'F', '2018-5-7', '2018-5-7', '哈喽大家好，这里是白胡椒。大概是一个月以前，我发了一篇文章教大家如何找电影资源，没看过的可以点击《这是一篇如何找电影资源的必备干货》认真复习，当时说的再写下篇可...', 16, '<img src="//upload-images.jianshu.io/upload_images/6192172-8f0a8951f430a04c?imageMogr2/auto-orient/strip%7CimageView2/2/w/580">');

-- --------------------------------------------------------

--
-- 表的结构 `collections`
--

CREATE TABLE `collections` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `collections`
--

INSERT INTO `collections` (`id`, `user_id`, `article_id`, `type`, `created_at`, `updated_at`) VALUES
(59, 2, 13, NULL, NULL, NULL),
(73, 9, 13, NULL, NULL, NULL),
(79, 8, 13, NULL, NULL, NULL),
(80, 10, 13, NULL, NULL, NULL),
(81, 0, 13, NULL, NULL, NULL),
(82, 8, 12, NULL, NULL, NULL),
(86, 1, 22, NULL, NULL, NULL),
(87, 1, 18, NULL, NULL, NULL),
(88, 1, 17, NULL, NULL, NULL),
(89, 1, 12, NULL, NULL, NULL),
(91, 1, 28, NULL, NULL, NULL),
(92, 1, 25, NULL, NULL, NULL),
(93, 6, 25, NULL, NULL, NULL),
(94, 3, 25, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `level` smallint(6) NOT NULL DEFAULT '1',
  `is_hidden` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'F',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `comment`, `article_id`, `parent_id`, `level`, `is_hidden`, `created_at`, `updated_at`) VALUES
(6, 8, '自动添加时间', 13, NULL, 1, 'F', '2018-05-06 09:57:14', '2018-05-06 09:57:14'),
(7, 8, '写的不错的', 13, NULL, 1, 'F', '2018-05-06 11:42:48', '2018-05-06 11:42:48'),
(8, 10, '进行测试', 13, NULL, 1, 'F', '2018-05-06 11:46:29', '2018-05-06 11:46:29'),
(9, 8, '软件好用就可以了，对于开发来说，软件只是工具，提高效率，如果成本太高反而降低了原来的开发速度', 12, NULL, 1, 'F', '2018-05-06 12:01:11', '2018-05-06 12:01:11'),
(10, 8, '你好啊', 12, NULL, 1, 'F', '2018-05-06 12:02:46', '2018-05-06 12:02:46'),
(11, 6, '我发表了评论', 24, NULL, 1, 'F', '2018-05-06 14:44:21', '2018-05-06 14:44:21'),
(12, 6, '第二条评论', 24, NULL, 1, 'F', '2018-05-06 14:44:30', '2018-05-06 14:44:30'),
(13, 1, '测试中', 28, NULL, 1, 'F', '2018-05-11 09:06:09', '2018-05-11 09:06:09'),
(14, 1, '阿萨德', 28, NULL, 1, 'F', '2018-05-11 09:06:33', '2018-05-11 09:06:33'),
(15, 1, 'ces1', 28, NULL, 1, 'F', '2018-05-11 09:09:43', '2018-05-11 09:09:43'),
(16, 3, '我来评论啦', 25, NULL, 1, 'F', '2018-05-11 12:23:59', '2018-05-11 12:23:59');

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

--
-- 转存表中的数据 `followers`
--

INSERT INTO `followers` (`id`, `follower_id`, `followed_id`, `created_at`, `updated_at`) VALUES
(24, 4, 1, NULL, NULL),
(42, 1, 4, NULL, NULL),
(43, 1, 4, NULL, NULL),
(44, 1, 4, NULL, NULL),
(45, 1, 4, NULL, NULL),
(46, 1, 4, NULL, NULL),
(47, 1, 4, NULL, NULL),
(48, 1, 4, NULL, NULL),
(49, 1, 4, NULL, NULL),
(50, 1, 4, NULL, NULL),
(51, 1, 4, NULL, NULL),
(52, 1, 4, NULL, NULL),
(53, 1, 4, NULL, NULL),
(54, 6, 1, NULL, NULL),
(55, 6, 1, NULL, NULL),
(56, 6, 1, NULL, NULL),
(57, 6, 1, NULL, NULL),
(58, 6, 1, NULL, NULL),
(59, 6, 1, NULL, NULL),
(60, 6, 1, NULL, NULL),
(61, 6, 1, NULL, NULL),
(62, 6, 1, NULL, NULL),
(63, 6, 1, NULL, NULL),
(64, 6, 1, NULL, NULL),
(65, 6, 1, NULL, NULL);

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
-- 表的结构 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `article_count` int(11) NOT NULL DEFAULT '0',
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

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `avatar`, `confirmation_token`, `is_active`, `question_count`, `article_count`, `comments_count`, `favorites_count`, `likes_count`, `followers_count`, `followings_count`, `settings`, `remember_token`, `created_at`, `updated_at`, `api_token`) VALUES
(1, 'wxy', '', '17839191581', '123456', '/static/images/default.jpg', '', 0, 0, 0, 0, 3, 0, 0, 0, NULL, NULL, NULL, NULL, ''),
(2, 'xtc', '', '17839191581', '123456', '/static/images/default.jpg', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, ''),
(3, '测试1号', '', '17839191581', '123456', '/static/images/default.jpg', '', 0, 0, 0, 0, 3, 0, 0, 0, NULL, NULL, NULL, NULL, ''),
(4, '测试1', '', '17839191581', '123456', '/static/images/default.jpg', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, ''),
(5, '测试2', '', '17839191581', '123456', '/static/images/default.jpg', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, ''),
(6, '用户一号', '', '17839191581', '123456', '/static/images/avatar.jpg', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, ''),
(7, 'tc', '', '17839191581', '123456', '/static/images/avatar.jpg', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, ''),
(8, 'abc', '', '17839191581', '123456', '/static/images/avatar.jpg', '', 0, 0, 0, 0, 2, 0, 0, 0, NULL, NULL, NULL, NULL, ''),
(9, 'bcd', '', '17839191581', '123456', '/static/images/avatar.jpg', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, ''),
(10, 'abcd', '', '17839191581', '123456', '/static/images/avatar.jpg', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, ''),
(11, '123', '', '17839191581', '123456', '/static/images/avatar.jpg', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, ''),
(12, 'aaa', '', '17839191581', '123456', '/static/images/avatar.jpg', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- 表的结构 `votes`
--

CREATE TABLE `votes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `answer_id` int(10) UNSIGNED NOT NULL,
  `is_agree` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `votes`
--

INSERT INTO `votes` (`id`, `user_id`, `answer_id`, `is_agree`, `created_at`, `updated_at`) VALUES
(24, 1, 1, 1, '2018-04-30 21:37:49', '2018-04-30 21:37:49'),
(25, 1, 3, 1, '2018-04-30 21:49:13', '2018-04-30 21:49:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `votes_user_id_index` (`user_id`),
  ADD KEY `votes_answer_id_index` (`answer_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- 使用表AUTO_INCREMENT `collections`
--
ALTER TABLE `collections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- 使用表AUTO_INCREMENT `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- 使用表AUTO_INCREMENT `followers`
--
ALTER TABLE `followers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- 使用表AUTO_INCREMENT `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
