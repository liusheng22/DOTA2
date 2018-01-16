SET NAMES UTF8;
#DROP DATABASE IF EXISTES DOTA2;
CREATE DATABASE DOTA2 CHARSET=UTF8;
USE DOTA2;

-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-12-21 03:23:15
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dota-test`
--

-- --------------------------------------------------------

--
-- main页面的banner图 `main_carousel`
--

CREATE TABLE `main_carousel_banner` (
  `bid`				int(11)					NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`src`				varchar(128)		NOT NULL,
	`title`			varchar(128)		NOT NULL,
	`href`			varchar(128)		NOT NULL
)
CREATE TABLE `main_carousel_match` (
  `bid`				int(11)					NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`src`				varchar(128)		NOT NULL,
	`title`			varchar(128)		NOT NULL,
	`href`			varchar(128)		NOT NULL
)
CREATE TABLE `main_carousel_version` (
  `bid`			int(11)					NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`src`			varchar(128)		NOT NULL,
	`title`		varchar(128)		NOT NULL,
	`href`			varchar(128)		NOT NULL
)
INSERT INTO `main_carousel`  VALUES 
	('','img/main/carousel_banner/carousel_banner_1.jpg','双旦大促',''),


-- --------------------------------------------------------

--
-- 表的结构 `game_new`
--

CREATE TABLE `game_new` (
  `nid` int(11) NOT NULL,
  `new_title` int(11) NOT NULL DEFAULT '0',
  `new_pic` varchar(45) NOT NULL DEFAULT '',
  `new_little_content` varchar(45) NOT NULL DEFAULT '',
  `new_creatTime` bigint(64) NOT NULL DEFAULT '0',
  `new_content_part1` varchar(1000) NOT NULL DEFAULT '',
  `new_content_part2` varchar(1000) NOT NULL DEFAULT '',
  `new_content_part3` varchar(1000) NOT NULL DEFAULT '',
  `new_content_part4` varchar(1000) NOT NULL DEFAULT '',
  `new_content_part5` varchar(1000) NOT NULL DEFAULT '',
  `new_content_part6` varchar(1000) NOT NULL DEFAULT '',
  `new_content_part7` varchar(1000) NOT NULL DEFAULT '',
  `new_content_part8` varchar(1000) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `goods_detail`
--

CREATE TABLE `goods_detail` (
  `did` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL DEFAULT '0',
  `goods_name` varchar(512) NOT NULL DEFAULT '',
  `goods_pic` varchar(128) NOT NULL DEFAULT '',
  `is_base_goods` enum('1','0') NOT NULL DEFAULT '0',
  `is_upgrade_goods` enum('1','0') NOT NULL DEFAULT '0',
  `is_shenmi_goods` enum('1','0') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `goods_detail`
--

INSERT INTO `goods_detail` (`did`, `goods_id`, `goods_name`, `goods_pic`, `is_base_goods`, `is_upgrade_goods`, `is_shenmi_goods`) VALUES
(1, 1, 'faerie_fire', 'faerie_fire_lg.png?3', '1', '0', '0'),
(2, 2, 'enchanted_mango', 'enchanted_mango_lg.png?3', '1', '0', '0'),
(3, 3, 'tango', 'tango_lg.png?3', '1', '0', '0'),
(4, 4, 'flask', 'flask_lg.png?3', '1', '0', '0'),
(5, 5, 'smoke_of_deceit', 'smoke_of_deceit_lg.png?3', '1', '0', '0'),
(6, 6, 'tpscroll', 'tpscroll_lg.png?3', '1', '0', '0'),
(7, 7, 'dust', 'dust_lg.png?3', '1', '0', '0'),
(8, 8, 'courier', 'courier_lg.png?3', '1', '0', '0'),
(9, 9, 'flying_courier', 'flying_courier_lg.png?3', '1', '0', '0'),
(10, 10, 'ward_observer', 'ward_observer_lg.png?3', '1', '0', '0'),
(11, 11, 'ward_sentry', 'ward_sentry_lg.png?3', '1', '0', '0'),
(12, 12, 'tome_of_knowledge', 'tome_of_knowledge_lg.png?3', '1', '0', '0'),
(13, 13, 'bottle', 'bottle_lg.png?3', '1', '0', '0'),
(14, 14, 'branches', 'branches_lg.png?3', '1', '0', '0'),
(15, 15, 'gauntlets', 'gauntlets_lg.png?3', '1', '0', '0'),
(16, 16, 'slippers', 'slippers_lg.png?3', '1', '0', '0'),
(17, 17, 'mantle', 'mantle_lg.png?3', '1', '0', '0'),
(18, 18, 'circlet', 'circlet_lg.png?3', '1', '0', '0'),
(19, 19, 'belt_of_strength', 'belt_of_strength_lg.png?3', '1', '0', '0'),
(20, 20, 'boots_of_elves', 'boots_of_elves_lg.png?3', '1', '0', '0'),
(21, 21, 'robe', 'robe_lg.png?3', '1', '0', '0'),
(22, 22, 'ogre_axe', 'ogre_axe_lg.png?3', '1', '0', '0'),
(23, 23, 'blade_of_alacrity', 'blade_of_alacrity_lg.png?3', '1', '0', '0'),
(24, 24, 'staff_of_wizardry', 'staff_of_wizardry_lg.png?3', '1', '0', '0'),
(25, 25, 'ring_of_protection', 'ring_of_protection_lg.png?3', '1', '0', '0'),
(26, 26, 'stout_shield', 'stout_shield_lg.png?3', '1', '0', '0'),
(27, 27, 'quelling_blade', 'quelling_blade_lg.png?3', '1', '0', '0'),
(28, 28, 'infused_raindrop', 'infused_raindrop_lg.png?3', '1', '0', '0'),
(29, 29, 'blight_stone', 'blight_stone_lg.png?3', '1', '0', '0'),
(30, 30, 'orb_of_venom', 'orb_of_venom_lg.png?3', '1', '0', '0'),
(31, 31, 'blades_of_attack', 'blades_of_attack_lg.png?3', '1', '0', '0'),
(32, 32, 'chainmail', 'chainmail_lg.png?3', '1', '0', '0'),
(33, 33, 'quarterstaff', 'quarterstaff_lg.png?3', '1', '0', '0'),
(34, 34, 'helm_of_iron_will', 'helm_of_iron_will_lg.png?3', '1', '0', '0'),
(35, 35, 'broadsword', 'broadsword_lg.png?3', '1', '0', '0'),
(36, 36, 'claymore', 'claymore_lg.png?3', '1', '0', '0'),
(37, 37, 'javelin', 'javelin_lg.png?3', '1', '0', '0'),
(38, 38, 'mithril_hammer', 'mithril_hammer_lg.png?3', '1', '0', '0'),
(39, 39, 'wind_lace', 'wind_lace_lg.png?3', '1', '0', '0'),
(40, 40, 'magic_stick', 'magic_stick_lg.png?3', '1', '0', '0'),
(41, 41, 'sobi_mask', 'sobi_mask_lg.png?3', '1', '0', '0'),
(42, 42, 'ring_of_regen', 'ring_of_regen_lg.png?3', '1', '0', '0'),
(43, 43, 'boots', 'boots_lg.png?3', '1', '0', '0'),
(44, 44, 'gloves', 'gloves_lg.png?3', '1', '0', '0'),
(45, 45, 'cloak', 'cloak_lg.png?3', '1', '0', '0'),
(46, 46, 'ring_of_health', 'ring_of_health_lg.png?3', '1', '0', '0'),
(47, 47, 'void_stone', 'void_stone_lg.png?3', '1', '0', '0'),
(48, 48, 'gem', 'gem_lg.png?3', '1', '0', '0'),
(49, 49, 'lifesteal', 'lifesteal_lg.png?3', '1', '0', '0'),
(50, 50, 'shadow_amulet', 'shadow_amulet_lg.png?3', '1', '0', '0'),
(51, 51, 'ghost', 'ghost_lg.png?3', '1', '0', '0'),
(52, 52, 'blink', 'blink_lg.png?3', '1', '0', '0'),
(53, 53, 'wraith_band', 'wraith_band_lg.png?3', '0', '1', '0'),
(54, 54, 'null_talisman', 'null_talisman_lg.png?3', '0', '1', '0'),
(55, 55, 'magic_wand', 'magic_wand_lg.png?3', '0', '1', '0'),
(56, 56, 'bracer', 'bracer_lg.png?3', '0', '1', '0'),
(57, 57, 'poor_mans_shield', 'poor_mans_shield_lg.png?3', '0', '1', '0'),
(58, 58, 'soul_ring', 'soul_ring_lg.png?3', '0', '1', '0'),
(59, 59, 'phase_boots', 'phase_boots_lg.png?3', '0', '1', '0'),
(60, 60, 'power_treads', 'power_treads_lg.png?3', '0', '1', '0'),
(61, 61, 'oblivion_staff', 'oblivion_staff_lg.png?3', '0', '1', '0'),
(62, 62, 'pers', 'pers_lg.png?3', '0', '1', '0'),
(63, 63, 'hand_of_midas', 'hand_of_midas_lg.png?3', '0', '1', '0'),
(64, 64, 'travel_boots', 'travel_boots_lg.png?3', '0', '1', '0'),
(65, 65, 'moon_shard', 'moon_shard_lg.png?3', '0', '1', '0'),
(66, 66, 'ring_of_basilius', 'ring_of_basilius_lg.png?3', '0', '1', '0'),
(67, 67, 'iron_talon', 'iron_talon_lg.png?3', '0', '1', '0'),
(68, 68, 'headdress', 'headdress_lg.png?3', '0', '1', '0'),
(69, 69, 'buckler', 'buckler_lg.png?3', '0', '1', '0'),
(70, 70, 'urn_of_shadows', 'urn_of_shadows_lg.png?3', '0', '1', '0'),
(71, 71, 'ring_of_aquila', 'ring_of_aquila_lg.png?3', '0', '1', '0'),
(72, 72, 'tranquil_boots', 'tranquil_boots_lg.png?3', '0', '1', '0'),
(73, 73, 'medallion_of_courage', 'medallion_of_courage_lg.png?3', '0', '1', '0'),
(74, 74, 'arcane_boots', 'arcane_boots_lg.png?3', '0', '1', '0'),
(75, 75, 'ancient_janggo', 'ancient_janggo_lg.png?3', '0', '1', '0'),
(76, 76, 'vladmir', 'vladmir_lg.png?3', '0', '1', '0'),
(77, 77, 'mekansm', 'mekansm_lg.png?3', '0', '1', '0'),
(78, 78, 'pipe', 'pipe_lg.png?3', '0', '1', '0'),
(79, 79, 'guardian_greaves', 'guardian_greaves_lg.png?3', '0', '1', '0'),
(80, 80, 'glimmer_cape', 'glimmer_cape_lg.png?3', '0', '1', '0'),
(81, 81, 'force_staff', 'force_staff_lg.png?3', '0', '1', '0'),
(82, 82, 'veil_of_discord', 'veil_of_discord_lg.png?3', '0', '1', '0'),
(83, 83, 'aether_lens', 'aether_lens_lg.png?3', '0', '1', '0'),
(84, 84, 'necronomicon', 'necronomicon_lg.png?3', '0', '1', '0'),
(85, 85, 'dagon', 'dagon_lg.png?3', '0', '1', '0'),
(86, 86, 'cyclone', 'cyclone_lg.png?3', '0', '1', '0'),
(87, 87, 'solar_crest', 'solar_crest_lg.png?3', '0', '1', '0'),
(88, 88, 'rod_of_atos', 'rod_of_atos_lg.png?3', '0', '1', '0'),
(89, 89, 'ultimate_scepter', 'ultimate_scepter_lg.png?3', '0', '1', '0'),
(90, 90, 'ultimate_scepter', 'ultimate_scepter_lg.png?3', '0', '1', '0'),
(91, 91, 'orchid', 'orchid_lg.png?3', '0', '1', '0'),
(92, 92, 'refresher', 'refresher_lg.png?3', '0', '1', '0'),
(93, 93, 'sheepstick', 'sheepstick_lg.png?3', '0', '1', '0'),
(94, 94, 'octarine_core', 'octarine_core_lg.png?3', '0', '1', '0'),
(95, 95, 'lesser_crit', 'lesser_crit_lg.png?3', '0', '1', '0'),
(96, 96, 'armlet', 'armlet_lg.png?3', '0', '1', '0'),
(97, 97, 'meteor_hammer', 'meteor_hammer_lg.png?3', '0', '1', '0'),
(98, 98, 'basher', 'basher_lg.png?3', '0', '1', '0'),
(99, 99, 'invis_sword', 'invis_sword_lg.png?3', '0', '1', '0'),
(100, 100, 'bfury', 'bfury_lg.png?3', '0', '1', '0'),
(101, 101, 'ethereal_blade', 'ethereal_blade_lg.png?3', '0', '1', '0'),
(102, 102, 'silver_edge', 'silver_edge_lg.png?3', '0', '1', '0'),
(103, 103, 'radiance', 'radiance_lg.png?3', '0', '1', '0'),
(104, 104, 'monkey_king_bar', 'monkey_king_bar_lg.png?3', '0', '1', '0'),
(105, 105, 'greater_crit', 'greater_crit_lg.png?3', '0', '1', '0'),
(106, 106, 'butterfly', 'butterfly_lg.png?3', '0', '1', '0'),
(107, 107, 'rapier', 'rapier_lg.png?3', '0', '1', '0'),
(108, 108, 'abyssal_blade', 'abyssal_blade_lg.png?3', '0', '1', '0'),
(109, 109, 'bloodthorn', 'bloodthorn_lg.png?3', '0', '1', '0'),
(110, 110, 'hood_of_defiance', 'hood_of_defiance_lg.png?3', '0', '1', '0'),
(111, 111, 'blade_mail', 'blade_mail_lg.png?3', '0', '1', '0'),
(112, 112, 'vanguard', 'vanguard_lg.png?3', '0', '1', '0'),
(113, 113, 'soul_booster', 'soul_booster_lg.png?3', '0', '1', '0'),
(114, 114, 'crimson_guard', 'crimson_guard_lg.png?3', '0', '1', '0'),
(115, 115, 'combo_breaker', 'combo_breaker_lg.png?3', '0', '1', '0'),
(116, 116, 'black_king_bar', 'black_king_bar_lg.png?3', '0', '1', '0'),
(117, 117, 'lotus_orb', 'lotus_orb_lg.png?3', '0', '1', '0'),
(118, 118, 'shivas_guard', 'shivas_guard_lg.png?3', '0', '1', '0'),
(119, 119, 'manta', 'manta_lg.png?3', '0', '1', '0'),
(120, 120, 'bloodstone', 'bloodstone_lg.png?3', '0', '1', '0'),
(121, 121, 'sphere', 'sphere_lg.png?3', '0', '1', '0'),
(122, 122, 'hurricane_pike', 'hurricane_pike_lg.png?3', '0', '1', '0'),
(123, 123, 'assault', 'assault_lg.png?3', '0', '1', '0'),
(124, 124, 'heart', 'heart_lg.png?3', '0', '1', '0'),
(125, 125, 'helm_of_the_dominator', 'helm_of_the_dominator_lg.png?3', '0', '1', '0'),
(126, 126, 'mask_of_madness', 'mask_of_madness_lg.png?3', '0', '1', '0'),
(127, 127, 'dragon_lance', 'dragon_lance_lg.png?3', '0', '1', '0'),
(128, 128, 'sange', 'sange_lg.png?3', '0', '1', '0'),
(129, 129, 'yasha', 'yasha_lg.png?3', '0', '1', '0'),
(130, 130, 'trident', 'trident_lg.png?3', '0', '1', '0'),
(131, 131, 'echo_sabre', 'echo_sabre_lg.png?3', '0', '1', '0'),
(132, 132, 'maelstrom', 'maelstrom_lg.png?3', '0', '1', '0'),
(133, 133, 'diffusal_blade', 'diffusal_blade_lg.png?3', '0', '1', '0'),
(134, 134, 'desolator', 'desolator_lg.png?3', '0', '1', '0'),
(135, 135, 'heavens_halberd', 'heavens_halberd_lg.png?3', '0', '1', '0'),
(136, 136, 'sange_and_yasha', 'sange_and_yasha_lg.png?3', '0', '1', '0'),
(137, 137, 'mjollnir', 'mjollnir_lg.png?3', '0', '1', '0'),
(138, 138, 'skadi', 'skadi_lg.png?3', '0', '1', '0'),
(139, 139, 'satanic', 'satanic_lg.png?3', '0', '1', '0'),
(140, 140, 'demon_edge', 'demon_edge_lg.png?3', '0', '0', '1'),
(141, 141, 'eagle', 'eagle_lg.png?3', '0', '0', '1'),
(142, 142, 'reaver', 'reaver_lg.png?3', '0', '0', '1'),
(143, 143, 'relic', 'relic_lg.png?3', '0', '0', '1'),
(144, 144, 'platemail', 'platemail_lg.png?3', '0', '0', '1'),
(145, 145, 'talisman_of_evasion', 'talisman_of_evasion_lg.png?3', '0', '0', '1'),
(146, 146, 'hyperstone', 'hyperstone_lg.png?3', '0', '0', '1'),
(147, 147, 'ultimate_orb', 'ultimate_orb_lg.png?3', '0', '0', '1'),
(148, 148, 'mystic_staff', 'mystic_staff_lg.png?3', '0', '0', '1'),
(149, 149, 'energy_booster', 'energy_booster_lg.png?3', '0', '0', '1'),
(150, 150, 'point_booster', 'point_booster_lg.png?3', '0', '0', '1'),
(151, 151, 'vitality_booster', 'vitality_booster_lg.png?3', '0', '0', '1'),
(152, 152, '', '', '0', '0', '0'),
(153, 153, '', '', '0', '0', '0'),
(154, 154, '', '', '0', '0', '0'),
(155, 155, '', '', '0', '0', '0'),
(156, 156, '', '', '0', '0', '0'),
(157, 157, '', '', '0', '0', '0'),
(158, 158, '', '', '0', '0', '0'),
(159, 159, '', '', '0', '0', '0');

-- --------------------------------------------------------

--
-- 表的结构 `goods_detail_style`
--

CREATE TABLE `goods_detail_style` (
  `did` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL DEFAULT '0',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dname` varchar(128) NOT NULL DEFAULT '',
  `qual` varchar(128) NOT NULL DEFAULT '',
  `descr` varchar(2048) NOT NULL DEFAULT '',
  `notes` varchar(2048) NOT NULL DEFAULT '',
  `attrib` varchar(2048) NOT NULL DEFAULT '',
  `mc` varchar(128) NOT NULL DEFAULT '',
  `cd` varchar(128) NOT NULL DEFAULT '',
  `lore` varchar(128) NOT NULL DEFAULT '',
  `components` varchar(128) NOT NULL DEFAULT '',
  `created` varchar(128) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

	
--
-- 转存表中的数据 `goods_detail_style`
--

INSERT INTO `goods_detail_style` (`did`, `goods_id`, `goods_price`, `dname`, `qual`, `descr`, `notes`, `attrib`, `mc`, `cd`, `lore`, `components`, `created`) VALUES
(1, 1, '70.00', '仙灵之火', '', '<h1>使用：吞服</h1>立刻回复75点生命值。', '', '<p class="pop_skill_p">+伤害：<span class="color_yellow">2</span></p>', '', '5.0', '虚无的火焰，来自天木熊熊燃烧的遗迹，可以跨越现实燃烧。', '', ''),
(2, 2, '100.00', '魔法芒果', '', '<h1>使用：吞食芒果</h1>立刻回复150点魔法。<br><br>对友军施放距离：400', '按住Ctrl键点击附近友方英雄可以对其使用。', '<p class="pop_skill_p">+生命回复：<span class="color_yellow">1.0</span></p>', '', '', '基迪岛上特有的苦甜参半风味让两栖动物无法抗拒。', '', ''),
(3, 3, '150.00', '树之祭祀', '', '<h1>使用：吞食</h1>吃掉一棵树或一个守卫，获得7.0点/秒生命恢复，持续16.0秒。食用守卫或铁树枝干种下的小树后恢复量加倍。<br><br>可以使用5次。对友方英雄使用可以分给他一次使用机会。<br><br>吞食树木施法距离：165<br>吞食守卫施法距离：450', '', '', '', '', '战场上的救命稻草。', '', ''),
(4, 4, '110.00', '治疗药膏', '', '<h1>使用：药膏</h1>向目标提供50点/秒生命恢复，持续8秒。<br><br>受到敌方英雄或Roshan攻击时效果会被驱散。<br><br>对友军施放距离：250', '', '', '', '', '即使最严重的伤口也能快速治愈的魔法药膏。', '', ''),
(5, 5, '80.00', '诡计之雾', '', '<h1>使用：潜行</h1>使用者和附近1025范围内的友方玩家控制单位在35.0秒内获得隐身效果和15%移动速度加成。他们在小地图上的图标也会消失。<br><br>发动攻击，或靠近敌方英雄或防御塔1025距离后将打破隐身效果。<br><br>潜行的隐身效果不受真实视域影响。', '', '', '', '1.0', '招摇撞骗的法师梅丁对奥术唯一真正的贡献。', '', ''),
(6, 6, '50.00', '回城卷轴', '', '<h1>使用：传送</h1>经过3.0秒持续施法后传送到一个指定的友方建筑。<br><br>双击将直接传送至己方泉水。', '如果多名英雄在短时间内接连传送至相同地点，那么后续英雄的传送时间都会相应的有所延长。', '', '75', '80.0', '英雄真正需要的东西。', '', ''),
(7, 7, '180.00', '显影之尘', '', '<h1>使用：现形</h1>立刻显示周围1050范围内的隐形英雄并造成-20%减速，持续12秒。', '对范围内的敌方单位施加状态，他们在隐身状态下依然会显形。', '', '0', '30.0', '容颜易藏，音声难隐。', '', ''),
(8, 8, '200.00', '动物信使', '', '<h1>使用：配置信使</h1> 配置可以运载物品往返于基地的生物。', '', '', '', '', '弄丢信使会被判以死刑的严惩。', '', ''),
(9, 9, '150.00', '飞行信使', '', '<h1>使用：升级信使</h1>升级己方的动物信使，使其可以跨越地形运载物品往返于基地。<br><br>需要先配置动物信使。', '', '', '', '', '可靠的坐骑，战争的财富在它背上一飞冲天。', '', ''),
(10, 10, '80.00', '侦查守卫', '', '<h1>使用：放置</h1>放置隐形的侦查守卫来获得附近区域1600范围内的视野。持续6分钟。<br><br>按住Ctrl键可以对友方英雄使用，将1个守卫转移到他的物品栏中。<br><br>施法距离：500', '', '', '', '1.0', '一种植物形态，只有一半的感知力，一般由巫师学徒培养。', '', ''),
(11, 11, '100.00', '岗哨守卫', '', '<h1>使用：放置</h1>放置一个隐形的岗哨守卫以在周围850范围内提供真实视域，可以看到隐形的敌方单位和守卫。守卫放置后将持续4分钟。<br><br>本身不提供视野。<br><br>按住Ctrl键可以对友方英雄使用，将1个守卫转移到他的物品栏中。<br><br>施法距离：500', '', '', '', '1.0', '一种植物形态，原种于一位害世国王的花园中。', '', ''),
(12, 12, '150.00', '知识之书', '', '', '', '', '', '0.0', '', '', ''),
(13, 13, '650.00', '魔瓶', '', '<h1>使用：恢复</h1>每使用一次都能在2.5秒内恢复80点生命与40点魔法。<br><br>对友军施放距离：350<br><br>受到来自敌方英雄或Roshan的攻击会驱散效果。魔瓶在靠近友方泉水时会被灌满。你也能用魔瓶装载神符以备用，但神符在2分钟后会自动激活。', '魔瓶可以共享。储存的神符无法共享。按住Ctrl键对友方英雄点击使用可以使其享受恢复效果。<br>赏金神符使用后只回到2/3。<br>如果魔瓶为非满状态，放在信使上会导致信使被减速30%。', '', '', '0.5', '一个流传至今的古老瓶子，内部空间随着时间的流逝逐渐拥有魔力。', '', ''),
(14, 14, '50.00', '铁树枝干', '', '<h1>主动：种树</h1> 对地面施放，种下一棵快乐的小树，持续20秒。<br><br>施法距离：200', '', '<p class="pop_skill_p">+所有属性：<span class="color_yellow">1</span></p>', '', '0.0', '一根看起来很普通的树枝，它如铁般坚硬的品质赋予持有者好运。', '', ''),
(15, 15, '135.00', '力量手套', '', '', '', '<p class="pop_skill_p">+力量：<span class="color_yellow">3</span></p>', '', '', '带来野兽般力量的钉饰皮革手套。', '', ''),
(16, 16, '135.00', '敏捷便鞋', '', '', '', '<p class="pop_skill_p">+敏捷：<span class="color_yellow">3</span></p>', '', '', '蜘蛛皮做成的轻便靴子，能让你感觉到刺痛。', '', ''),
(17, 17, '135.00', '智力斗篷', '', '', '', '<p class="pop_skill_p">+智力：<span class="color_yellow">3</span></p>', '', '', '历代女王所穿的，镶有蓝宝石的漂亮斗篷。', '', ''),
(18, 18, '165.00', '圆环', '', '', '', '<p class="pop_skill_p">+所有属性：<span class="color_yellow">2</span></p>', '', '', '为人类公主们设计的雅致头环。', '', ''),
(19, 19, '450.00', '力量腰带', '', '', '', '<p class="pop_skill_p">+力量：<span class="color_yellow">6</span></p>', '', '', '提高活力的重要配件。', '', ''),
(20, 20, '450.00', '精灵布带', '', '', '', '<p class="pop_skill_p">+敏捷：<span class="color_yellow">6</span></p>', '', '', '轻巧且便于行动的柔韧纺织物。', '', ''),
(21, 21, '450.00', '法师长袍', '', '', '', '<p class="pop_skill_p">+智力：<span class="color_yellow">6</span></p>', '', '', '这个长袍将腐化使用者的灵魂，并以给予智慧作为交换。', '', ''),
(22, 22, '1000.00', '食人魔之斧', '', '', '', '<p class="pop_skill_p">+力量：<span class="color_yellow">10</span></p>', '', '', '只要拿着它你就会变的强壮。', '', ''),
(23, 23, '1000.00', '欢欣之刃', '', '', '', '<p class="pop_skill_p">+敏捷：<span class="color_yellow">10</span></p>', '', '', '一把充满时间魔法的长刃。', '', ''),
(24, 24, '1000.00', '魔力法杖', '', '', '', '<p class="pop_skill_p">+智力：<span class="color_yellow">10</span></p>', '', '', '一个由法师长老代代相传的魔法之杖。', '', ''),
(25, 25, '175.00', '守护指环', '', '', '', '<p class="pop_skill_p">+护甲：<span class="color_yellow">2</span></p>', '', '', '能保护佩戴者的闪光戒指。', '', ''),
(26, 26, '200.00', '圆盾', '', '<h1>被动：伤害格挡</h1> 拥有50%的概率格挡伤害，近战英雄可格挡18点伤害，远程英雄可格挡9点。', '多种伤害格挡物品的效果互不叠加。', '', '', '', '一个人的酒桶底盖，在另一个人手里就成了圆盾。', '', ''),
(27, 27, '200.00', '压制之刃', '', '<h1>主动：砍伐/排眼</h1> 砍伐一根指定树木，或者摧毁一个守卫。摧毁守卫时施放距离较远。<br><br>砍伐施法距离：350<br>排眼施法距离：450<h1>被动：压制</h1>对非英雄单位进行物理攻击会造成额外伤害，近战英雄为24点，远程英雄为7点。', '最多携带一把。<br>砍伐可以用于摧毁工程师的遥控炸弹。', '', '0', '4.0', '堕落地精的斧头，能让你更快的在森林中穿行。', '', ''),
(28, 28, '225.00', '凝魂之露', '', '<h1>被动：魔法伤害抵挡</h1>受到超过50点伤害时自动触发，消耗一点能量并抵挡120点魔法伤害。<br><br>自带5点能量。能量耗尽后消失。', '每次受到伤害时最多使用一点能量。', '<p class="pop_skill_p">+魔法恢复：<span class="color_yellow">0.5</span></p>', '', '7.0', '为魔法突袭提供质朴的防护。', '', ''),
(29, 29, '300.00', '枯萎之石', '', '', '', '', '', '', '', '', ''),
(30, 30, '275.00', '淬毒之珠', '', '<h1>被动：毒性攻击</h1>使目标中毒，造成每秒5.0点持续伤害，持续3.0秒，装备的英雄为近战将造成-12%的移动速度减缓，装备的英雄为远程将造成-4%的移动速度减缓。', '', '', '', '', '给你的武器淬上毒蛇的毒液。', '', ''),
(31, 31, '420.00', '攻击之爪', '', '', '', '<p class="pop_skill_p">+伤害：<span class="color_yellow">9</span></p>', '', '', '不要低估这里面藏着的小刀刃的伤害。', '', ''),
(32, 32, '550.00', '锁子甲', '', '', '', '<p class="pop_skill_p">+护甲：<span class="color_yellow">5</span></p>', '', '', '金属锁链制成的编织甲。', '', ''),
(33, 33, '875.00', '短棍', '', '', '', '<p class="pop_skill_p">+伤害：<span class="color_yellow">10</span></p><p class="pop_skill_p">+攻击：<span class="color_yellow">10</span></p>', '', '', '能让你攻击变快的普通棍子。', '', ''),
(34, 34, '900.00', '铁意头盔', '', '', '', '<p class="pop_skill_p">+护甲：<span class="color_yellow">5</span></p><p class="pop_skill_p">+生命回复：<span class="color_yellow">3</span></p>', '', '', '一位战死沙场的传奇般的武士穿戴过的头盔。', '', ''),
(35, 35, '1200.00', '阔剑', '', '', '', '<p class="pop_skill_p">+伤害：<span class="color_yellow">18</span></p>', '', '', '骑士经典的武器选择，这把阔剑杀起敌来既坚韧又牢靠。', '', ''),
(36, 36, '1400.00', '大剑', '', '', '', '<p class="pop_skill_p">+伤害：<span class="color_yellow">21</span></p>', '', '', '一把能劈透盔甲的剑，通常是是蓄势待发的剑士的首选武器。', '', ''),
(37, 37, '1100.00', '标枪', '', '<h1>被动：穿刺</h1> 每次攻击有25%的概率无视闪避并造成额外100点伤害。', '', '', '', '', '一把相当有特色的长矛，用来攻击时有时会刺穿敌人的盔甲。', '', ''),
(38, 38, '1600.00', '秘银锤', '', '', '', '<p class="pop_skill_p">+伤害：<span class="color_yellow">24</span></p>', '', '', '由纯粹的秘银打造而成的锤子。', '', ''),
(39, 39, '250.00', '风灵之纹', '', '', '', '', '', '', '', '', ''),
(40, 40, '200.00', '魔棒', '', '<h1>主动：充能</h1>立刻根据能量点数回复相应的生命和魔法，每点能量恢复15点生命和魔法。<br><br>每当周围1200视野范围内有敌人施放技能都会自动充能（最多10点能量）。', '1200码视野范围内敌人使用技能就会获得点数。<br>部分英雄技能和物品技能的施放将不会增加点数。', '', '', '13.0', '一个简易但实用的魔杖，能够补充使用者的能量--巫师学徒和高级术士都喜欢。', '', ''),
(41, 41, '325.00', '贤者面罩', '', '', '贤者面罩可以共享。', '<p class="pop_skill_p">+魔法恢复：<span class="color_yellow">0.5</span></p>', '', '', '法师和术士用作举办仪式常用的面罩。', '', ''),
(42, 42, '300.00', '回复戒指', '', '', '回复戒指可以共享。', '<p class="pop_skill_p">+生命回复：<span class="color_yellow">1.5</span></p>', '', '', '一些侏儒迷信这个戒指能带来好运气。', '', ''),
(43, 43, '400.00', '速度之靴', '', '多个鞋类物品提供的移动速度加成不叠加。', '', '<p class="pop_skill_p">+移动速度：<span class="color_yellow">40</span></p>', '', '', '穿双鞋子，跑的更快。', '', ''),
(44, 44, '500.00', '加速手套', '', '', '', '<p class="pop_skill_p">+攻击：<span class="color_yellow">20</span></p>', '', '', '一双似乎能化手中武器为无物的魔法手套。', '', ''),
(45, 45, '550.00', '抗魔斗篷', '', '', '能与其他提高魔法抗性的技能叠加。', '<p class="pop_skill_p">+魔法抗性：<span class="color_yellow">15%</span></p>', '', '', '一件用魔法材料制成的斗篷，可以驱散一切施加于其上的魔法。', '', ''),
(46, 46, '850.00', '治疗指环', '', '', '治疗指环可以共享。', '<p class="pop_skill_p">+生命回复：<span class="color_yellow">5</span></p>', '', '', '一枚闪闪发光的指环，在一个胖乎乎的半身人尸体下被人所发现。', '', ''),
(47, 47, '850.00', '虚无宝石', '', '', '虚无宝石可以共享。', '<p class="pop_skill_p">+魔法恢复：<span class="color_yellow">1.0</span></p>', '', '', '一件曾被用来引导冥界魔法的珠宝，这个戒指中跃动着魔力。', '', ''),
(48, 48, '900.00', '真视宝石', '', '<h1>被动：真实视域</h1> 携带者自身和周围友方单位可以看见900范围内的隐身单位和守卫。<h1>被动：永恒</h1>', '在信使身上时没有实际效果。', '', '', '', '只为苍生不受深海的奴役\n只为生魂免去溺灵要塞的灾戾\n只为让麦尔朗恩长眠于海底\n璀璨的宝石终归于沉寂', '', ''),
(49, 49, '1100.00', '吸血面具', '', '<h1>被动：吸血</h1>攻击者每次攻击都将根据造成的伤害回复15%的生命值。', '', '<p class="pop_skill_p">+伤害：<span class="color_yellow">10</span></p>', '', '', '这个面具会吸取被它凝视之人的生命力。', '', ''),
(50, 50, '1300.00', '暗影护符', '', '<h1>主动：渐隐</h1>让自己或友方单位静止不动的情况下获得隐身效果。<br><br>拥有1.25秒渐隐时间，如果移动将立刻打破隐身。<br><br>对自身使用时没有冷却时间。', '', '<p class="pop_skill_p">+攻击：<span class="color_yellow">20</span></p>', '0', '7.0', '一件小小的护符，握住了完全不动就能隔开敌人的感应。', '', ''),
(51, 51, '1500.00', '幽魂权杖', '', '<h1>主动：幽灵形态</h1> 进入幽灵形态，持续4.0秒，期间无法进行普通攻击也不会受到物理伤害，但会受到-40%的额外魔法伤害。', '如果在开启期间进入技能免疫状态，幽魂效果将会中止。如果在技能免疫状态下开启权杖将不会拥有幽魂效果。<br>与虚灵之刃共享冷却时间。', '<p class="pop_skill_p">+所有属性：<span class="color_yellow">5</span></p>', '', '20.0', '赐予使用者幽灵般的姿态，让他们避开物理性的伤害。', '', ''),
(52, 52, '2250.00', '闪烁匕首', '', '<h1>主动：闪烁</h1>\r\n传送到最远1200距离的位置。<br><br>受到来自敌方英雄或Roshan的攻击时，闪烁匕首将在3.0秒内无法使用。', '快速点击两次会将自己往己方泉水方向传送。<br>如果闪烁传送的距离超过最长施法距离，那么只能传送到最长距离的4/5。', '', '0', '12.0', '传说中这块大陆上来去如风的刺客使用的匕首。', '', ''),
(53, 53, '465.00', '怨灵系带', '', '', '', '<p class="pop_skill_p">+力量：<span class="color_yellow">3</span></p><p class="pop_skill_p">+敏捷：<span class="color_yellow">7</span></p><p class="pop_skill_p">+智力：<span class="color_yellow">3</span></p>', '', '', '总是回响着微弱耳语的圆环。', '', ''),
(54, 54, '465.00', '空灵挂件', '', '', '', '<p class="pop_skill_p">+力量：<span class="color_yellow">3</span></p><p class="pop_skill_p">+敏捷：<span class="color_yellow">3</span></p><p class="pop_skill_p">+智力：<span class="color_yellow">7</span></p>', '', '', '由锁链装饰起来的小巧的宝石。', '', ''),
(55, 55, '400.00', '魔杖', '', '<h1>主动：充能</h1>立刻根据能量点数回复相应的生命和魔法，每点能量恢复15点生命和魔法。<br><br>每当周围1200视野范围内有敌人施放技能都会自动充能（最多17点能量）。', '1200码视野范围内敌人使用技能就会获得点数。<br>部分英雄技能和物品技能的施放将不会增加点数。', '<p class="pop_skill_p">+所有属性：<span class="color_yellow">2</span></p><p class="pop_skill_p">+生命回复：<span class="color_yellow">1.5</span></p>', '', '13.0', '一个简易但实用的魔杖，能够补充使用者的能量--巫师学徒和高级术士都喜欢。', '', ''),
(56, 56, '465.00', '护腕', '', '', '', '<p class="pop_skill_p">+力量：<span class="color_yellow">7</span></p><p class="pop_skill_p">+敏捷：<span class="color_yellow">3</span></p><p class="pop_skill_p">+智力：<span class="color_yellow">3</span></p>', '', '', '护腕是增强防御和延长寿命的常见选择。', '', ''),
(57, 57, '0.00', '穷鬼盾', '', '<h1>被动：伤害格挡</h1> 拥有%block_chance_hero%%的概率格挡来自敌方英雄的伤害，近战英雄可格挡18点伤害，远程英雄可格挡9点。<br><br>拥有50%的概率格挡来自普通单位的伤害。', '多种伤害格挡物品的效果互不叠加。', '<p class="pop_skill_p">+敏捷：<span class="color_yellow">6</span></p>', '', '25.0', '一块破旧的老式盾牌，格挡效果却比想象中要好。', '', ''),
(58, 58, '755.00', '灵魂之戒', '', '<h1>主动：献身</h1> 消耗150点生命值来暂时获取150点魔法值。持续10秒。<br><br>如果获得魔法后超过了自身的魔法上限，多出来的魔法会加入上限，并优先被使用。', '如果在持续时间结束时没有使用，额外的魔法将会消失。', '<p class="pop_skill_p">+力量：<span class="color_yellow">6</span></p><p class="pop_skill_p">+生命回复：<span class="color_yellow">2.0</span></p>', '0', '25.0', '一个能吞噬佩带者灵魂的戒指。', '', ''),
(59, 59, '1240.00', '相位鞋', '', '<h1>主动：相位移动</h1>提升移动速度并使你可以穿越单位。近战英雄提升24%移动速度，远程英雄提升20%移动速度，状态持续2.5秒。<br><br>多个鞋类物品提供的移动速度加成不叠加。', '', '<p class="pop_skill_p">+移动速度：<span class="color_yellow">45</span></p><p class="pop_skill_p">+伤害：<span class="color_yellow">24</span></p>', '', '8.0', '穿着它的人可以穿越虚空。', '', ''),
(60, 60, '1350.00', '动力鞋', '', '<h1>主动：属性切换</h1>将附加属性在力量，敏捷以及智力三者间切换，选择+10点力量，+10点敏捷或+10点智力。<br><br>多个鞋类物品提供的移动速度加成不叠加。', '动力鞋可以使用力量腰带、精灵布带或法师长袍合成。<br>攻击速度加成效果不会与其他动力鞋叠加。', '<p class="pop_skill_p">+移动速度：<span class="color_yellow">45</span></p><p class="pop_skill_p">+所选属性：<span class="color_yellow">10</span></p><p class="pop_skill_p">+攻击：<span class="color_yellow">25</span></p>', '', '', '一双厚实的皮靴，能根据穿着者的需求切换属性。', '', ''),
(61, 61, '1650.00', '空明杖', '', '', '', '<p class="pop_skill_p">+智力：<span class="color_yellow">10</span></p><p class="pop_skill_p">+攻击：<span class="color_yellow">10</span></p><p class="pop_skill_p">+伤害：<span class="color_yellow">10</span></p><p class="pop_skill_p">+魔法恢复：<span class="color_yellow">0.75</span></p>', '', '', '在让人误以为只是根普通铁头木棒的外表下的，其实是根非常强大的法杖，其威力如影惧神殿一样捉摸不透。', '', ''),
(62, 62, '1700.00', '坚韧球', '', '', '坚韧球可以共享。', '<p class="pop_skill_p">+生命回复：<span class="color_yellow">5.5</span></p><p class="pop_skill_p">+魔法恢复：<span class="color_yellow">1.5</span></p>', '', '', '给持有者带来勇气的宝石。', '', ''),
(63, 63, '2150.00', '迈达斯之手', '', '<h1>主动：炼金</h1> 立刻炼化一个普通单位，获得200金钱和1.85倍经验值。<br><br>无法用于远古单位。<br><br>施法距离：600', '获得的金钱属于可靠金钱（不会得到击杀该单位的正常金钱）。<br>使用炼化获得的经验不会与他人共享。', '<p class="pop_skill_p">+攻击：<span class="color_yellow">30</span></p>', '0', '100.0', '以未知的魔法手段维持着的迈达斯之手，是件贪婪的武器，通过炼化生灵来装满持有者的腰包。', '', ''),
(64, 64, '2400.00', '远行鞋', '', '<h1>主动：传送</h1>传送至一个友方建筑或非英雄单位附近。<br><br>与回城卷轴共享冷却时间。<br><br>多个鞋类物品提供的移动速度加成不叠加。', '', '<p class="pop_skill_p">+移动速度：<span class="color_yellow">100</span></p>', '75', '45.0', '足生双翼，上天入地。', '', ''),
(65, 65, '4000.00', '银月之晶', '', '<h1>使用：吞噬</h1> 吞噬银月之晶，永久获得60攻击速度和150夜间视野加成。最多使用1次。<h1>被动：月夜之视</h1>提供额外300夜间视野。', '额外夜间视野在暗夜魔王的黑暗时间技能下同样生效。', '<p class="pop_skill_p">+攻击：<span class="color_yellow">120</span></p>', '', '', '相传这是月之女神赛莉蒙妮流下的一滴眼泪。', '', ''),
(66, 66, '500.00', '王者之戒', '', '<h1>被动：王者光环</h1>为900范围内友军提供0.5点/秒魔法恢复和2点护甲加成。<h1>开关：光环</h1>点击以切换护甲加成光环是否对非英雄单位生效。', '王者之戒和天鹰之戒拥有的护甲光环互不叠加。<br>多个王者光环效果不会叠加。', '<p class="pop_skill_p">+伤害：<span class="color_yellow">7</span></p>', '', '', '这枚戒指是最伟大的法师才能获得的嘉奖。', '', ''),
(67, 67, '0.00', '寒铁钢爪', '', '<h1>主动：砍伐</h1>对非玩家控制的敌方单位使用，移除当前生命值的40%。<br><br>对树木或守卫施放会立刻将其摧毁。 <br><br>砍伐单位施法距离：350<br>砍伐树木施法距离：350<BR>砍伐守卫施法距离：450<h1>被动：压制</h1> 对非英雄单位进行物理攻击会造成额外伤害，近战英雄为24点，远程英雄为7点。', '对树木使用时冷却时间为4秒。<br>不能以远古生物为目标。', '<p class="pop_skill_p">+生命回复：<span class="color_yellow">2</span></p>', '0', '20.0', '简单却有效的武器，为镇压地狱熊怪的起义而设计。', '', ''),
(68, 68, '650.00', '恢复头巾', '', '<h1>被动：恢复光环</h1>提升友方单位2点/秒生命恢复。<br><br>作用范围：900', '多个回复光环效果不会叠加。', '<p class="pop_skill_p">+所有属性：<span class="color_yellow">2</span></p>', '', '', '创造一个镇痛的光环在战斗中为友军恢复生命。', '', ''),
(69, 69, '800.00', '玄冥盾牌', '', '<h1>主动：防御提升</h1>为所有友方单位增加2点护甲。英雄/非英雄单位持续时间为25.0/30.0 秒。<br><br>作用范围：900', '', '<p class="pop_skill_p">+护甲：<span class="color_yellow">5</span></p><p class="pop_skill_p">+所有属性：<span class="color_yellow">2</span></p>', '10', '25.0', '一面强大的盾牌赐予携带者过往英雄们的力量，它能在战斗中为整支军队提供保护。', '', ''),
(70, 70, '875.00', '影之灵龛', '', '<h1>主动：灵魂释放</h1> 对友方单位施放时提供35点/秒生命恢复，对敌方单位则造成25点每秒伤害。<br><br>持续8.0秒。<br><br>每当敌方英雄在1400范围内死亡时获得充能。只有最靠近阵亡英雄的灵龛能得到充能。<br><br>施法距离：950', '点数为0的灵龛将获得2个点数。<br>如果对已经被施放灵魂释放的英雄使用，那么将刷新它的持续时间。', '<p class="pop_skill_p">+魔法恢复：<span class="color_yellow">1.0</span></p><p class="pop_skill_p">+所有属性：<span class="color_yellow">2</span></p><p class="pop_skill_p">+护甲：<span class="color_yellow">2</span></p>', '', '7.0', '内含强大恶魔的骨灰。', '', ''),
(71, 71, '965.00', '天鹰之戒', '', '<h1>被动：天鹰光环</h1>给予周围友军额外的0.5点/秒魔法恢复速率和2点护甲。<br><br>作用范围：900<h1>开关：光环</h1> 关闭后不会作用于非英雄单位。', '王者之戒和天鹰之戒拥有的护甲光环互不叠加。<br>多个天鹰光环效果不会叠加。', '<p class="pop_skill_p">+伤害：<span class="color_yellow">10</span></p><p class="pop_skill_p">+力量：<span class="color_yellow">3</span></p><p class="pop_skill_p">+敏捷：<span class="color_yellow">9</span></p><p class="pop_skill_p">+智力：<span class="color_yellow">3</span></p>', '', '', '战将阿奎拉阵亡后他的戒指依然在战场上支援着军队。', '', ''),
(72, 72, '950.00', '静谧之鞋', '', '<h1>被动：破损</h1> 只要主动攻击或受到攻击，静谧之鞋就会损失%bonus_health_health%点/秒回复效果，并且移动速度加成降低至65，持续13秒。<br><br>多个鞋类物品提供的移动速度加成不叠加。', '', '<p class="pop_skill_p">+移动速度：<span class="color_yellow">90</span></p><p class="pop_skill_p">+生命回复：<span class="color_yellow">13</span></p>', '0', '13.0', '虽然延长了穿戴者的寿命，但这鞋子其实并不可靠。', '', ''),
(73, 73, '1175.00', '勇气勋章', '', '<h1>主动：无畏</h1> 如果对队友施放可以在降低自身7点护甲的同时，提升目标7点护甲。<br><br>如果对敌人施放将同时降低自身和目标7点护甲。<br><br>无法对技能免疫单位施放。<br><br>施法距离：1000', '', '<p class="pop_skill_p">+护甲：<span class="color_yellow">7</span></p><p class="pop_skill_p">+魔法恢复：<span class="color_yellow">0.5</span></p>', '', '7.0', '持有者将无惧于战斗。', '', ''),
(74, 74, '1300.00', '奥术鞋', '', '<h1>主动：补魔</h1>回复英雄周围友方单位135点魔法。<br><br>作用范围：900<br><br>多个鞋类物品提供的移动速度加成不叠加。<br><br>作用范围：900', '米波的克隆体不能使用。', '<p class="pop_skill_p">+移动速度：<span class="color_yellow">50</span></p><p class="pop_skill_p">+魔法：<span class="color_yellow">250</span></p>', '0', '55.0', '装备这种鞋子的法师在战斗中值得重视。', '', ''),
(75, 75, '1615.00', '韧鼓', '', '<h1>主动：坚韧</h1> 为周围友军提供+35的攻速加成和+13%的移动速度加成，持续6秒。<br><br>作用范围：900<h1>被动：迅捷光环</h1>为周围友军提供20移动速度加成。<br><br>作用范围：900', '重新购买韧鼓的配方可以刷新其使用次数。<br>多个迅捷光环效果不会叠加。', '<p class="pop_skill_p">+智力：<span class="color_yellow">6</span></p><p class="pop_skill_p">+力量：<span class="color_yellow">7</span></p><p class="pop_skill_p">+敏捷：<span class="color_yellow">3</span></p><p class="pop_skill_p">+魔法恢复：<span class="color_yellow">0.75</span></p>', '', '30.0', '在危难时刻能鼓舞周围人士气的遗物。', '', ''),
(76, 76, '2250.00', '弗拉迪米尔的祭品', '', '<h1>被动：弗拉迪米尔光环</h1> 为900范围内附近的友军提供吸血、2.5点/秒生命恢复、0.65点/秒魔法恢复、15%额外攻击力和4点护甲。吸血光环效果对近战为15%，远程为10%。<br><br>作用范围：900', '多个弗拉迪米尔的祭品拥有的护甲光环互不叠加。<br>多个弗拉迪米尔光环效果不会叠加。', '<p class="pop_skill_p">+所有属性：<span class="color_yellow">2</span></p>', '', '', '一副怪异的面具，纠缠着死去吸血鬼的怨念。', '', ''),
(77, 77, '2350.00', '梅肯斯姆', '', '<h1>主动：回复</h1>为900范围内友方单位回复250点生命值，并提升2点护甲。<h1>被动：梅肯斯姆光环</h1>提升900范围内友方单位3.5点/秒生命恢复。', '回复不能作用于25秒内已经被回复作用过的单位。<br>多个梅肯斯姆光环效果不会叠加。', '<p class="pop_skill_p">+所有属性：<span class="color_yellow">5</span></p><p class="pop_skill_p">+护甲：<span class="color_yellow">5</span></p>', '225', '65.0', '各种散件不知是怎样完美地组合起来，形成的散发着光芒的珠宝。', '', ''),
(78, 78, '3150.00', '洞察烟斗', '', '<h1>主动：魔法护盾</h1>为周围友方单位套上能抵挡400点魔法伤害的护盾。持续12.0秒。<br><br>作用范围：900<h1>被动：洞察光环</h1> 提升友方单位每秒生命恢复速度2点和10%的魔法抗性。<br><br>作用范围：900', '多个魔法护盾效果不会叠加。<br>能与其他提高魔法抗性的技能叠加。', '<p class="pop_skill_p">+生命回复：<span class="color_yellow">6.5</span></p><p class="pop_skill_p">+魔法抗性：<span class="color_yellow">30%</span></p>', '100', '60.0', '一件来源神秘的强大古物，能制造出抵挡法术攻击的护盾。', '', ''),
(79, 79, '5350.00', '卫士胫甲', '', '<h1>主动：修复</h1>使周围友军回复250点生命和160点魔法，并移除施法者身上大部分的负面效果。<br><br>作用范围：900<br>驱散类型：<span class="GameplayValues GameplayVariable">弱驱散</span><h1>被动：卫士光环</h1> 为周围友军提供3.5点/秒额外生命恢复和2点额外护甲。如果友方英雄的生命值低于20%，他们将获得12点/秒额外生命恢复和15点额外护甲。多个鞋类物品提供的移动速度加成不叠加。', '光环效果仅对英雄有效。', '<p class="pop_skill_p">+移动速度：<span class="color_yellow">55</span></p><p class="pop_skill_p">+魔法：<span class="color_yellow">250</span></p><p class="pop_skill_p">+所有属性：<span class="color_yellow">5</span></p><p class="pop_skill_p">+护甲：<span class="color_yellow">5</span></p>', '0', '40', '为了向全能之神致敬所打造的众多圣器之一。', '', ''),
(80, 80, '1850.00', '微光披风', '', '<h1>主动： 微光</h1> 经过0.6秒延迟后，自身或者友方目标单位进入隐身状态， 获得45%的魔法抗性加成。持续5秒。<br><br>施法距离：800<br><br>可以在持续施法时施放。', '', '<p class="pop_skill_p">+攻击：<span class="color_yellow">20</span></p><p class="pop_skill_p">+魔法抗性：<span class="color_yellow">15%</span></p>', '90', '14.0', '一位幻术大师失窃的披风。', '', ''),
(81, 81, '2250.00', '原力法杖', '', '<h1>主动：原力</h1>将任何目标单位向其面对方向推进600距离。<br><br>施法距离：800', '快速点击两次可以对自身施放原力。<br>原力法杖不会打断目标的动作。<br>对时间结界，决斗或黑洞内的单位无效。', '<p class="pop_skill_p">+智力：<span class="color_yellow">10</span></p><p class="pop_skill_p">+生命回复：<span class="color_yellow">5</span></p>', '25', '23.0', '让你可以操纵他人，不论出于善或恶。', '', ''),
(82, 82, '2330.00', '纷争面纱', '', '<h1>主动：魔法虚弱</h1> 发出一波弱化冲击，使600范围内敌人的魔法抗性降低-25%。<br><br>施法距离：1000<br>持续时间：16.0', '', '<p class="pop_skill_p">+生命回复：<span class="color_yellow">5</span></p><p class="pop_skill_p">+护甲：<span class="color_yellow">6</span></p><p class="pop_skill_p">+敏捷：<span class="color_yellow">6</span></p><p class="pop_skill_p">+力量：<span class="color_yellow">6</span></p><p class="pop_skill_p">+智力：<span class="color_yellow">14</span></p>', '50', '20', '一个堕落法师的头饰。', '', ''),
(83, 83, '2350.00', '以太之镜', '', '<h1>被动：以太焦点</h1> 指向性技能和物品的施法距离增加250。', '被动效果不会叠加。', '<p class="pop_skill_p">+魔法：<span class="color_yellow">450</span></p><p class="pop_skill_p">+魔法恢复：<span class="color_yellow">1.25</span></p>', '', '', '装饰着最后一口气的咒语，这件礼物是由一位行将就木的法师赠予他体弱多病的孩子。', '', ''),
(84, 84, '2400.00', '死灵书', '', '<h1>主动：召唤死灵</h1>召唤一个死灵战士和死灵射手为你作战，持续50秒。<br><br><h1>战士：</h1>每次攻击燃烧魔法，并且对将其击杀的单位造成魔法伤害。3级时获得真实视域。<br>生命值：700 800 900<br>攻击力：75 100 125<br>法力损毁伤害：20 30 40<br>遗愿伤害：550 675 800<br><br><h1>射手：</h1>拥有提升移动速度与攻击速度的被动光环。3级时拥有主动施放的净化技能。<br>生命值：700 800 900<br>攻击力：60 90 120<br>光环移动速度：5 7 9<br>光环攻击速度：5 10 15<br>光环作用范围：900', '', '<p class="pop_skill_p">+力量：<span class="color_yellow">10 15 20</span></p><p class="pop_skill_p">+魔法恢复：<span class="color_yellow">1 1.25 1.5</span></p>', '50', '90.0', '借助亡灵术和恶魔学的终极奥义，强大的邪恶力量被封印在书页之内。', '', ''),
(85, 85, '2715.00', '达贡之神力', '', '<h1>主动：能量冲击</h1> 释放高伤害的魔法爆发冲击敌方目标单位。可以升级。<br><br>伤害：400 500 600 700 800<br>施法距离：600 650 700 750 800<br>魔法消耗：180', '立刻消灭幻象。', '<p class="pop_skill_p">+智力：<span class="color_yellow">15 18 21 24 27</span></p><p class="pop_skill_p">+所有属性：<span class="color_yellow">3</span></p>', '180', '35.0 30.0 25.0 20.0 15.0', '越用威力就越大的次级法杖，让持有者的魔法从指尖喷涌而出。', '', ''),
(86, 86, '2750.00', 'Eul的神圣法杖', '', '<h1>主动：龙卷风</h1> 使目标单位被卷入龙卷风中，持续2.5秒，并处于无敌状态。可以对自己使用龙卷风。<br><br>敌方单位落地后将受到50点魔法伤害。<br><br>施法距离：575<br>驱散类型：<span class="GameplayValues GameplayVariable">弱驱散</span>', '不能对队友使用龙卷风。<br>对自己施放龙卷风时无视技能免疫。<br>龙卷风可以驱散部分正面和负面状态。', '<p class="pop_skill_p">+智力：<span class="color_yellow">10</span></p><p class="pop_skill_p">+魔法恢复：<span class="color_yellow">2.25</span></p><p class="pop_skill_p">+移动速度：<span class="color_yellow">40</span></p>', '175', '23.0', '一支从久远年代流传下来的神秘权杖，能招来破坏性的龙卷风行善或作恶。', '', ''),
(87, 87, '2625.00', '炎阳纹章', '', '<h1>主动：日耀</h1>对队友施放可以提供10点护甲和20%的闪避。对敌人施放将降低其10点护甲，友军对目标发动攻击时带有40%的必中效果。<br><br>使用时自身会暂时失去炎阳纹章的护甲和闪避加成。<br><br>无法对技能免疫的敌人施放。<br><br>施法距离：1000', '', '<p class="pop_skill_p">+护甲：<span class="color_yellow">10</span></p><p class="pop_skill_p">+魔法恢复：<span class="color_yellow">1.0</span></p><p class="pop_skill_p">+闪避：<span class="color_yellow">20%</span></p>', '', '7.0', '为了纪念炎日天空所打造的护符。', '', ''),
(88, 88, '3030.00', '阿托斯之棍', '', '<h1>主动：致残</h1>缠绕目标，持续2.0秒。<br><br>施法距离：1150', '', '<p class="pop_skill_p">+智力：<span class="color_yellow">20</span></p><p class="pop_skill_p">+力量：<span class="color_yellow">15</span></p><p class="pop_skill_p">+敏捷：<span class="color_yellow">6</span></p>', '50', '16', '荒芜之王阿托斯将他的精粹储存在这根看似平平无奇的魔杖中。', '', ''),
(89, 89, '4200.00', '阿哈利姆神杖', '', '<h1>被动：终极技能升级</h1>提升某些英雄的终极技能和基础技能效果。', '', '<p class="pop_skill_p">+所有属性：<span class="color_yellow">10</span></p><p class="pop_skill_p">+生命：<span class="color_yellow">175</span></p><p class="pop_skill_p">+魔法：<span class="color_yellow">175</span></p>', '', '', '拥有半神之力的法师的权杖。', '', ''),
(90, 90, '4200.00', '阿哈利姆神杖', '', '<h1>被动：终极技能升级</h1>提升某些英雄的终极技能和基础技能效果。', '', '<p class="pop_skill_p">+所有属性：<span class="color_yellow">10</span></p><p class="pop_skill_p">+生命：<span class="color_yellow">175</span></p><p class="pop_skill_p">+魔法：<span class="color_yellow">175</span></p>', '', '', '拥有半神之力的法师的权杖。', '', ''),
(91, 91, '4075.00', '紫怨', '', '<h1>主动：灵魂燃烧</h1>沉默目标单位5秒，沉默结束后所受伤害的30%将以额外魔法伤害的形式结算。<br><br>施法距离：900', '', '<p class="pop_skill_p">+智力：<span class="color_yellow">25</span></p><p class="pop_skill_p">+攻击：<span class="color_yellow">30</span></p><p class="pop_skill_p">+伤害：<span class="color_yellow">30</span></p><p class="pop_skill_p">+魔法恢复：<span class="color_yellow">2.25</span></p>', '100', '18.0', '一颗诞自火焰恶魔精华的榴石。', '', ''),
(92, 92, '5200.00', '刷新球', '', '<h1>主动：完全重置</h1>重置所有物品和技能的冷却时间。', '', '<p class="pop_skill_p">+生命回复：<span class="color_yellow">11</span></p><p class="pop_skill_p">+魔法恢复：<span class="color_yellow">3.0</span></p>', '375', '195.0', '一件为巫师量身定做的强力物品。', '', ''),
(93, 93, '5700.00', '邪恶镰刀', '', '<h1>主动：妖术</h1>将一个单位变成无害的小动物，持续3.5秒。目标的基础移速变为140，并且被沉默、锁闭和缴械。<br>幻象会被立刻消灭。<br><br>施法距离：800', '目标的基础移速将降至140，但是若拥有极限移动速度的状态就不会受影响。', '<p class="pop_skill_p">+力量：<span class="color_yellow">10</span></p><p class="pop_skill_p">+敏捷：<span class="color_yellow">10</span></p><p class="pop_skill_p">+智力：<span class="color_yellow">35</span></p><p class="pop_skill_p">+魔法恢复：<span class="color_yellow">2.25</span></p>', '100', '22.0', '维斯教会中守卫最为森严的圣物，也是法师们最为垂涎的武器。', '', ''),
(94, 94, '5900.00', '玲珑心', '', '<h1>被动：冷却减少</h1>所有技能和物品的冷却时间减少25%。<h1>被动：技能吸血</h1>技能对敌方英雄造成伤害的25%将以生命回复返还给施法者，对所有技能伤害均有效。<br><br>技能吸血对普通单位的效果为5%。', '', '<p class="pop_skill_p">+智力：<span class="color_yellow">25</span></p><p class="pop_skill_p">+生命：<span class="color_yellow">425</span></p><p class="pop_skill_p">+魔法：<span class="color_yellow">425</span></p>', '', '', '位于法术技艺核心的，是只有身负异能之人才能感知的光带。', '', ''),
(95, 95, '2120.00', '水晶剑', '', '<h1>被动：致命一击</h1>每次攻击时有20%概率造成75%额外伤害。', '在攻击建筑物时不会触发致命一击。', '<p class="pop_skill_p">+伤害：<span class="color_yellow">30</span></p>', '', '', '用稀有水晶锻造的剑刃，会寻找敌人护甲的脆弱处。', '', ''),
(96, 96, '2370.00', '莫尔迪基安的臂章', '', '<h1>激活：邪恶之力</h1>\r\n激活后邪恶之力将提升31点攻击力、25点力量和4点护甲，但每秒失去54点生命值。<br><br> 开启邪恶之力后生命流失并不会导致死亡，关闭邪恶之力后力量降低也不会导致死亡。', '力量值的变化会影响血量上限和当前生命值，但是不会致死。<br>力量的增加将在0.6秒内完成。<br>开启或关闭邪恶之力并不会打断持续施法。', '<p class="pop_skill_p">+伤害：<span class="color_yellow">9</span></p><p class="pop_skill_p">+攻击：<span class="color_yellow">25</span></p><p class="pop_skill_p">+护甲：<span class="color_yellow">5</span></p><p class="pop_skill_p">+生命回复：<span class="color_yellow">4</span></p>', '', '0.0', '能让你成为野兽的武器，持有者牺牲自己的生命能量来获得巨大力量。', '', ''),
(97, 97, '2625.00', '陨星锤', '', '<h1>主动：陨星锤</h1> 持续施法 - 成功施法后召唤一颗陨石，打击300范围内敌人，造成2.0秒眩晕和冲击伤害。对敌方单位和建筑造成持续伤害，持续6秒。<BR><BR>对建筑冲击伤害：75<BR>对建筑持续伤害：50<BR><BR>对非建筑冲击伤害：150<BR>对非建筑持续伤害：90<BR><BR>持续施法时间：3秒<BR>落地时间：.5秒。', '', '<p class="pop_skill_p">+力量：<span class="color_yellow">12</span></p><p class="pop_skill_p">+智力：<span class="color_yellow">12</span></p><p class="pop_skill_p">+生命回复：<span class="color_yellow">4.0</span></p><p class="pop_skill_p">+魔法恢复：<span class="color_yellow">1.5</span></p>', '125', '40', '', '', ''),
(98, 98, '2700.00', '碎颅锤', '', '<h1>被动：重击</h1>\r\n近战英雄的攻击有25%的概率击晕目标1.4秒并额外造成100点伤害。触发重击时无视闪避。远程英雄的击晕概率为10%。', '不与其他击晕类技能叠加，但是能与短暂击晕类叠加。<br>以下英雄无法触发该物品的重击效果：裂魂人，虚空假面，斯拉达，以及巨魔战将。', '<p class="pop_skill_p">+力量：<span class="color_yellow">10</span></p>', '', '2.3', '正确使用下会是件恐怖的武器，不要低估这把大槌粉碎对手防御的能力。', '', ''),
(99, 99, '2700.00', '影刃', '', '<h1>主动：暗影步</h1>进入隐身直到持续时间结束、攻击或施法。当激活暗影步时，移动速度提升20%并能穿越单位。持续14.0秒。<br><br>破隐一击造成175点额外伤害。', '拥有0.3秒的进入隐身时间。<br>如果隐身结束时没有攻击，额外伤害效果将会消失。', '<p class="pop_skill_p">+伤害：<span class="color_yellow">22</span></p><p class="pop_skill_p">+攻击：<span class="color_yellow">30</span></p>', '75', '28.0', '一位国王死后留下的宝剑，拿着它你可以隐身移动并从阴影中发动突袭。', '', ''),
(100, 100, '4100.00', '狂战斧', '', '<h1>主动：砍伐/排眼</h1>砍伐一根指定树木，或者摧毁一个守卫。<br><br>砍伐施法距离：350<br>排眼施法距离：450 <h1>被动：压制</h1>对非英雄单位进行物理攻击会造成额外伤害，近战英雄为60%，远程英雄为25%。<h1>被动：分裂</h1>普通攻击时对目标周围最远625距离的锥形区域内敌人造成40%的分裂伤害。（仅近战有效）', '分裂伤害会根据护甲类型有所减少，但是与护甲数值无关。<br>分裂伤害无视技能免疫。<br>如果存在多个分裂效果，每个分裂的伤害都会单独计算。<br>砍伐可以用于摧毁工程师的遥控炸弹。', '<p class="pop_skill_p">+伤害：<span class="color_yellow">45</span></p><p class="pop_skill_p">+生命回复：<span class="color_yellow">6</span></p><p class="pop_skill_p">+魔法恢复：<span class="color_yellow">2.25</span></p>', '', '4.0', '持有这把强大斧头的人可以一次砍倒一片敌人。', '', ''),
(101, 101, '4700.00', '虚灵之刃', '', '<h1>主动：虚化冲击</h1>发射一道能量波，将目标转变为虚无状态，接下来受到的魔法伤害将会提升-40%，并且无法攻击或被攻击。友方单位受到作用时持续4.0秒，敌方单位则持续3.0秒。<br><br>如果目标是敌人还将被减速-80%，并额外受到2.0x[你的主属性]+75点魔法伤害。<br><br>施法距离：800', '与幽魂权杖共享冷却时间。<br>虚无状态下的单位将额外受到40%的魔法伤害。<br>自身或友方单位身上的效果额外增加一秒。<br>使用回城卷轴或远行鞋不会驱散虚无状态。', '<p class="pop_skill_p">+敏捷：<span class="color_yellow">40</span></p><p class="pop_skill_p">+力量：<span class="color_yellow">10</span></p><p class="pop_skill_p">+智力：<span class="color_yellow">10</span></p>', '100', '20.0', '一把忽隐忽现的阴森刀刃，可以在物理和魔法两个位面造成伤害。', '', ''),
(102, 102, '5550.00', '白银之锋', '', '<h1>主动：暗影步</h1>进入隐身直到14.0秒持续时间结束、攻击或施法。隐身时，移动速度将提升25%，而且可以穿越单位。<br><br>破隐一击将造成175点额外伤害， 并且5秒内目标的被动技能无效。', '暗影步无法闪避。<br>暗影步并不能无视技能免疫。', '<p class="pop_skill_p">+伤害：<span class="color_yellow">30</span></p><p class="pop_skill_p">+攻击：<span class="color_yellow">30</span></p><p class="pop_skill_p">+所有属性：<span class="color_yellow">15</span></p>', '75', '24.0', '曾经是手刃不义之君的利器，但是后来王国也因此陷入了内乱。', '', ''),
(103, 103, '5150.00', '辉耀', '', '<h1>开关：辉耀灼烧</h1> 开启后，辉耀灼烧每秒对敌军造成60点伤害，并且物理攻击有17%的几率不会命中。<br><br>作用范围：700', '', '<p class="pop_skill_p">+伤害：<span class="color_yellow">65</span></p>', '', '', '一把拥有耀眼光芒灼烧效果的神圣武器，能让敌人化为灰烬。', '', ''),
(104, 104, '4200.00', '金箍棒', '', '<h1>被动：穿刺</h1>每次攻击均有75%的概率无视闪避，并造成额外60点纯粹伤害。', '克敌机先在攻击敌方建筑时不会生效。', '<p class="pop_skill_p">+攻击：<span class="color_yellow">60</span></p>', '', '', '一位大师级战士使用的强力棍棒。', '', ''),
(105, 105, '5320.00', '代达罗斯之殇', '', '<h1>被动：致命一击</h1>普通攻击有30%的概率造成135%额外伤害。', '致命一击对建筑无效。', '<p class="pop_skill_p">+伤害：<span class="color_yellow">80</span></p>', '', '', '这件武器有着惊人的力量，即使是最强的战士也难以掌控它。', '', ''),
(106, 106, '5525.00', '蝴蝶', '', '<h1>主动：振翅</h1> 获得35%移动速度提升，持续2秒。', '与其他闪避效果为非线性叠加。', '<p class="pop_skill_p">+敏捷：<span class="color_yellow">35</span></p><p class="pop_skill_p">+伤害：<span class="color_yellow">30</span></p><p class="pop_skill_p">+闪避：<span class="color_yellow">35%</span></p><p class="pop_skill_p">+攻击：<span class="color_yellow">30</span></p>', '', '25.0', '只有最强大最老练的战士才能携带蝴蝶，但它也提供无可比拟的战斗灵活力作为回报。', '', ''),
(107, 107, '6000.00', '圣剑', '', '<h1>被动：永恒</h1> 死亡后掉落，而且无法被摧毁。<br><br>当拥有者的队友拾取后，仅在返还给拥有者后才会有效。一旦被敌人拾取，圣剑将不再受此限制，信使无法拾取掉落的圣剑。', '如果圣剑掉落后被拥有者的敌人拾取，那么只有在敌人死亡后才会再次掉落。', '<p class="pop_skill_p">+伤害：<span class="color_yellow">330</span></p>', '', '', '它强横无匹，并不满足于侍奉唯一的主人。', '', ''),
(108, 108, '6400.00', '深渊之刃', '', '<h1>主动：强击</h1> 击晕一个敌方目标，持续2秒。<br><br>无视技能免疫。<h1>被动：重击</h1>近战英雄攻击时有25%的概率击晕对手1.4秒，并造成100点额外伤害。触发重击时无视闪避。远程英雄的击晕概率为10%。<h1>被动：伤害格挡</h1> 有50%几率格挡物理攻击造成的伤害，近战英雄可格挡70点伤害，远程英雄可格挡35点伤害。', '眩晕的施法距离与近战单位的攻击距离相同。<br>不与其他重击效果叠加。<br>以下英雄无法触发该物品的重击效果：裂魂人，虚空假面，斯拉达，以及巨魔战将。', '<p class="pop_skill_p">+生命：<span class="color_yellow">250</span></p><p class="pop_skill_p">+生命回复：<span class="color_yellow">7</span></p><p class="pop_skill_p">+力量：<span class="color_yellow">10</span></p>', '75', '35', '深渊指挥官的失落宝剑，能够轻易刺穿敌人的灵魂。', '', ''),
(109, 109, '7195.00', '血棘', '', '<h1>主动：灵魂撕裂</h1>使目标沉默5秒，沉默结束后其间所受伤害的30%将以额外魔法伤害的形式结算。<br>施法距离：900<br><br>所有对目标造成的攻击均不会落空，并且造成140%致命一击伤害。<h1>被动：致命一击</h1> 每次攻击时有20%的概率造成175%致命伤害。', '致命一击对建筑无效。', '<p class="pop_skill_p">+智力：<span class="color_yellow">25</span></p><p class="pop_skill_p">+攻击：<span class="color_yellow">30</span></p><p class="pop_skill_p">+伤害：<span class="color_yellow">60</span></p><p class="pop_skill_p">+魔法恢复：<span class="color_yellow">2.25</span></p>', '100', '18.0', '一把亵渎之刃，受害者临死前的每次挣扎都会使其砍得更深。', '', ''),
(110, 110, '1700.00', '挑战头巾', '', '<h1>主动：绝缘</h1>创造一个技能护盾，可以吸收325点魔法伤害。持续12.0秒。', '能与其他提高魔法抗性的技能叠加。', '<p class="pop_skill_p">+生命回复：<span class="color_yellow">6.5</span></p><p class="pop_skill_p">+魔法抗性：<span class="color_yellow">25%</span></p>', '75', '60.0', '一顶巫师们害怕的、具有魔法抵抗力的皮质头巾。', '', ''),
(111, 111, '2200.00', '刃甲', '', '<h1>主动：反弹伤害</h1>\r\n反弹所有受到的伤害。持续4.5秒。', '反弹的均为减免前的伤害。<br>伤害反弹不会反弹来自其他刃甲的伤害。<br>反弹伤害的类型与受到时相同。<br>如果原伤害的类型可以无视技能免疫状态，则反弹的伤害也可以。', '<p class="pop_skill_p">+伤害：<span class="color_yellow">22</span></p><p class="pop_skill_p">+护甲：<span class="color_yellow">6</span></p><p class="pop_skill_p">+智力：<span class="color_yellow">10</span></p>', '25', '20.0', '覆盖着尖锐剃刀的盔甲，战斗中可以用来做出不顾自身安危的烈士行为。', '', ''),
(112, 112, '2150.00', '先锋盾', '', '<h1>被动：伤害格挡</h1> 拥有50%的概率格挡伤害，近战英雄可格挡70点伤害，远程英雄可格挡35点。', '多种伤害格挡物品的效果互不叠加。', '<p class="pop_skill_p">+生命：<span class="color_yellow">250</span></p><p class="pop_skill_p">+生命回复：<span class="color_yellow">5.5</span></p>', '', '', '能够让持有者躲过最致命攻击的强力盾牌。', '', ''),
(113, 113, '3200.00', '振魂石', '', '', '', '<p class="pop_skill_p">+生命：<span class="color_yellow">425</span></p><p class="pop_skill_p">+魔法：<span class="color_yellow">425</span></p>', '', '', '再次鼓起丧失的勇气。', '', ''),
(114, 114, '3550.00', '赤红甲', '', '<h1>主动：坚盾</h1> 使周围所有友方英雄和建筑每次受到物理攻击都有100%的几率格挡60点伤害，并提升2点护甲。持续12秒。<br><br>每46秒才能被坚盾作用一次。<h1>被动：伤害格挡</h1> 近战英雄每次受到攻击都有50%的几率格挡70点伤害，远程英雄则是格挡35点。', '多种伤害格挡效果不会叠加。', '<p class="pop_skill_p">+生命：<span class="color_yellow">250</span></p><p class="pop_skill_p">+生命回复：<span class="color_yellow">6</span></p><p class="pop_skill_p">+所有属性：<span class="color_yellow">2</span></p><p class="pop_skill_p">+护甲：<span class="color_yellow">5</span></p>', '', '46.0', '原为抵御可怕的年兽所打造的铠甲。', '', ''),
(115, 115, '3600.00', '永恒之盘', '', '<h1>被动：强断连招</h1> 当受到伤害并且生命值不足80%时，会对英雄施加一个强驱散效果，2.5秒内所有受到和造成的伤害全部归零。来自玩家的伤害才会触发。<h1>被动：状态抗性</h1> 负面效果的持续时间减少25%。', '', '<p class="pop_skill_p">+生命：<span class="color_yellow">250</span></p><p class="pop_skill_p">+魔法：<span class="color_yellow">250</span></p>', '', '100.0', '', '', ''),
(116, 116, '3975.00', '黑皇杖', '', '<h1>主动：天神下凡</h1>\r\n获得技能免疫状态和100%的魔法抗性。持续时间和冷却时间每使用一次都会降低。<br><br>持续时间：10.0 9.0 8.0 7.0 6.0 5.0<br>驱散类型：<span class="GameplayValues GameplayVariable">弱驱散</span>', '再次购买黑皇杖也不会重置天神下凡的持续时间。<br>使用黑皇杖将使部分有益状态消失。', '<p class="pop_skill_p">+力量：<span class="color_yellow">10</span></p><p class="pop_skill_p">+伤害：<span class="color_yellow">24</span></p>', '', '80 75 70 65 60 55', '渗透了巨人之力的强大法杖。', '', ''),
(117, 117, '4000.00', '清莲宝珠', '', '<h1>主动：回音护盾</h1>对目标单位施加一个护盾，持续6秒，可以将大部分指向性法术反馈给施法者。<br><br>护盾目标依然会受到法术的伤害。<br><br>驱散类型：<span class="GameplayValues GameplayVariable">弱驱散</span>', '', '<p class="pop_skill_p">+护甲：<span class="color_yellow">10</span></p><p class="pop_skill_p">+生命回复：<span class="color_yellow">5.5</span></p><p class="pop_skill_p">+魔法恢复：<span class="color_yellow">1.75</span></p><p class="pop_skill_p">+魔法：<span class="color_yellow">250</span></p>', '75', '15.0', '位居中央的宝石依然能反射出其制造者苍白的景象。', '', ''),
(118, 118, '4750.00', '希瓦的守护', '', '<h1>主动：极寒冲击</h1> 发出一道寒冷的波动，对敌人造成200点魔法伤害并减速-40%，持续4.0秒。<br><br>作用范围：900<h1>被动：霜冷光环</h1> 降低敌人-45攻击速度。<br><br>作用范围：900', '极寒冲击的扩张速度为350，最大半径为900。<br>极寒冲击将以施放者为中心。<br>多个霜冷光环效果不会叠加。', '<p class="pop_skill_p">+智力：<span class="color_yellow">30</span></p><p class="pop_skill_p">+护甲：<span class="color_yellow">15</span></p>', '100', '30', '据说曾经属于某位女神，至今仍保持大部分神力。', '', ''),
(119, 119, '5000.00', '幻影斧', '', '<h1>主动：镜像</h1>制造2个你的幻象，持续20秒。<br><br>近战英雄的幻象继承33%的攻击力，承受350%的伤害；远程英雄的幻象继承28%的攻击力，承受400%的伤害。<br><br>远程英雄装备后的冷却时间增加15秒。</font><br><br> 驱散类型：<span class="GameplayValues GameplayVariable">弱驱散</span>', '有0.1秒的施法时间，其间处于无敌状态。<br>可以使用幻影斧移除多种负面效果。<br>不会与其他夜叉、散夜对剑以及幻影斧提供的移动速度加成叠加。', '<p class="pop_skill_p">+力量：<span class="color_yellow">10</span></p><p class="pop_skill_p">+敏捷：<span class="color_yellow">26</span></p><p class="pop_skill_p">+智力：<span class="color_yellow">10</span></p><p class="pop_skill_p">+攻击：<span class="color_yellow">15</span></p><p class="pop_skill_p">+移动速度：<span class="color_yellow">10%</span></p>', '125', '45.0', '用反光材料制成的斧头，能够混淆敌军。', '', ''),
(120, 120, '4900.00', '血精石', '', '<h1>主动：绝地自尽</h1>立刻原地自杀。<br><br>必须点地施放，无法点自身施放。<h1>被动：血之契约</h1>具有14点初始能量，1600范围内有敌方英雄死亡时获得1点能量。<br><br>每点能量给予%tooltip_mana_per_charge%点/秒的魔法回复，死亡时减少3秒重生时间。<br><br>当持有者死亡时，血精石失去1/3的能量。', '如果英雄身上有多个血精石，只有第一个会获得点数。', '<p class="pop_skill_p">+生命：<span class="color_yellow">475</span></p><p class="pop_skill_p">+魔法：<span class="color_yellow">425</span></p><p class="pop_skill_p">+生命回复：<span class="color_yellow">7</span></p><p class="pop_skill_p">+魔法恢复：<span class="color_yellow">2.0</span></p>', '', '300.0', '血精石鲜红的色彩在战场上绝对不会被看错，拥有者似乎有无限的生命力和精力。', '', ''),
(121, 121, '4850.00', '林肯法球', '', '<h1>被动：法术抵抗</h1>每13.0秒被动抵挡一次大部分指向性法术。<h1>主动：抵抗转移</h1>将抵挡状态暂时转移给一个友方单位，持续13.0秒。<br><br>施法距离：700', '', '<p class="pop_skill_p">+所有属性：<span class="color_yellow">15</span></p><p class="pop_skill_p">+生命回复：<span class="color_yellow">5.5</span></p><p class="pop_skill_p">+魔法恢复：<span class="color_yellow">2.25</span></p>', '', '13.0', '这个有魔力的球体曾经保护了一位历史上最有名的英雄。', '', ''),
(122, 122, '4615.00', '飓风长戟', '', '', '', '', '25', '15.0', '', '', ''),
(123, 123, '5250.00', '强袭胸甲', '', '<h1>被动：强袭光环</h1>\r\n附近友军单位和建筑提升25攻击速度和5点护甲，削弱附近敌军-5点护甲。<br><br>作用范围：900', '多个强袭光环效果不会叠加。', '<p class="pop_skill_p">+攻击：<span class="color_yellow">30</span></p><p class="pop_skill_p">+护甲：<span class="color_yellow">10</span></p>', '', '', '在幽冥地带的深渊锻造，这件地狱盔甲提高整支军队的护甲和攻击速度。', '', ''),
(124, 124, '5200.00', '恐鳌之心', '', '<h1>被动：生命恢复</h1>每秒恢复最大生命值的7%。<br><br>如果近战英雄最近5秒（远程英雄7秒）内受到敌方英雄或Roshan的攻击，此被动将失效。', '', '<p class="pop_skill_p">+力量：<span class="color_yellow">40</span></p><p class="pop_skill_p">+生命：<span class="color_yellow">500</span></p>', '', '7.0', '已经绝种的怪物的心脏，能提升携带者的耐久力。', '', ''),
(125, 125, '2000.00', '支配头盔', '', '<h1>主动：支配</h1>控制一个普通、非远古单位，其移动速度变为425。被支配单位的生命值将不会少于1500点。<br><br>被支配单位的最大生命值大于1500点时将保留原来的最大生命值。被支配单位的击杀奖励为固定%tooltip_bounty%金。<h1>被动：支配光环</h1> 周围友方单位的攻击速度提升15，生命恢复提升8点/秒。<br><br>作用范围：900', '只能存在一个被支配的单位。如果支配了新的单位，原来的单位将会死亡。<br>出售或升级支配头盔会导致支配的单位死亡。', '<p class="pop_skill_p">+所有属性：<span class="color_yellow">2</span></p><p class="pop_skill_p">+攻击：<span class="color_yellow">10</span></p>', '0', '60.0', '死去的死灵法师留下的可怕头盔。', '', ''),
(126, 126, '1975.00', '疯狂面具', '', '<h1>主动：狂热</h1>攻击速度提升110，移动速度提升17%，但是护甲降低7点，并且被沉默。持续8.0秒。<h1>被动：吸血</h1>攻击者每次攻击都将根据造成的伤害回复15%的生命值。', '', '<p class="pop_skill_p">+伤害：<span class="color_yellow">20</span></p><p class="pop_skill_p">+攻击：<span class="color_yellow">10</span></p>', '25', '22.0', '一旦戴上这个面具就会变成无法控制的好战分子。', '', ''),
(127, 127, '1900.00', '魔龙枪', '', '<h1>被动：魔龙之能</h1> 远程英雄的攻击距离增加140。', '被动效果不会叠加。', '<p class="pop_skill_p">+敏捷：<span class="color_yellow">12</span></p><p class="pop_skill_p">+力量：<span class="color_yellow">12</span></p>', '', '', '向前冲锋的飞龙群毫不留情。', '', ''),
(128, 128, '1950.00', '散华', '', '<h1>被动：次级残废</h1>每次攻击均有30%的几率降低敌方英雄的移动速度和攻击速度。装备的是近战英雄时将降低-20%移动速度和-20攻击速度。装备的是远程英雄时将降低-10%移动速度和-10攻击速度。残废效果持续5.0秒。', '', '<p class="pop_skill_p">+伤害：<span class="color_yellow">10</span></p><p class="pop_skill_p">+力量：<span class="color_yellow">16</span></p>', '', '', '散华是一把异常精准的武器，会自动寻找对方的弱点所在。', '', ''),
(129, 129, '1950.00', '夜叉', '', '', '不会与其他夜叉、散夜对剑以及幻影斧提供的移动速度加成叠加。', '<p class="pop_skill_p">+敏捷：<span class="color_yellow">16</span></p><p class="pop_skill_p">+攻击：<span class="color_yellow">10</span></p><p class="pop_skill_p">+移动速度：<span class="color_yellow">8%</span></p>', '', '', '夜叉可以称得上有史以来最轻巧的武器。', '', ''),
(130, 130, '1950.00', '慧光', '', '', '', '<p class="pop_skill_p">+智力：<span class="color_yellow">16</span></p><p class="pop_skill_p">+技能增强：<span class="color_yellow">10%</span></p><p class="pop_skill_p">+降低魔法消耗和损失：<span class="color_yellow">10%</span></p>', '', '', '', '', ''),
(131, 131, '2650.00', '回音战刃', '', '', '', '', '0', '5.0', '', '', ''),
(132, 132, '2800.00', '漩涡', '', '<h1>被动：连环闪电</h1>攻击有25%的概率释放一道连环闪电，在900范围内4个目标之间跳跃，闪电将造成120点魔法伤害。', '', '<p class="pop_skill_p">+伤害：<span class="color_yellow">24</span></p><p class="pop_skill_p">+攻击：<span class="color_yellow">25</span></p>', '', '', '神亲自打造的战锤，漩涡可以在攻击中发动闪电的力量。', '', ''),
(133, 133, '3150.00', '净魂之刃', '', '<h1>主动：阻止</h1> 以敌方单位为目标，减缓其移动速度，持续4.0秒。<br><br>施法距离：600<h1>被动：破法</h1>每次攻击将燃烧目标50点魔法，而且每燃烧一点魔法都会造成0.8点物理伤害。<br><br>近战英雄的幻象每次攻击将燃烧16点魔法。远程英雄的幻象每次攻击将燃烧8点魔法。', '不会与其他法力损毁技能叠加。', '<p class="pop_skill_p">+敏捷：<span class="color_yellow">20</span></p><p class="pop_skill_p">+智力：<span class="color_yellow">10</span></p>', '0', '15.0', '一把直接切入敌人灵魂的魔力之刃。', '', ''),
(134, 134, '3500.00', '黯灭', '', '<h1>被动：腐蚀</h1> 物理攻击将降低目标-6点护甲，持续15.0秒。', '护甲降低效果对建筑有效。', '<p class="pop_skill_p">+伤害：<span class="color_yellow">50</span></p>', '', '', '这件邪恶并且嗜血的武器，通常用于拷打政治犯。', '', ''),
(135, 135, '3400.00', '天堂之戟', '', '<h1>主动：缴械</h1>阻止目标单位进行物理攻击，持续5.0/3.0（远程/近战）秒。<br><br>施法距离：600<h1>被动：次级残废</h1>每次攻击均有35%的几率降低敌方英雄的移动速度和攻击速度。装备的是近战英雄时将降低-20%移动速度和-20攻击速度。装备的是远程英雄时将降低-10%移动速度和-10攻击速度。残废效果持续5.0秒。', '', '<p class="pop_skill_p">+闪避：<span class="color_yellow">25%</span></p><p class="pop_skill_p">+伤害：<span class="color_yellow">25</span></p><p class="pop_skill_p">+力量：<span class="color_yellow">20</span></p>', '100', '18', '这把战戟挥动起来如同轻型武器般迅捷，能让持有者赢得决斗的胜利。', '', ''),
(136, 136, '3900.00', '散夜对剑', '', '<h1>被动：高级残废</h1>每次攻击均有40%的几率降低敌方英雄的移动速度和攻击速度。装备的是近战英雄时将降低-26%移动速度和-26攻击速度。装备的是远程英雄时将降低-13%移动速度和-13攻击速度。残废效果持续5.0秒。', '不会与其他夜叉、散夜对剑以及幻影斧提供的移动速度加成叠加。', '<p class="pop_skill_p">+伤害：<span class="color_yellow">16</span></p><p class="pop_skill_p">+力量：<span class="color_yellow">16</span></p><p class="pop_skill_p">+敏捷：<span class="color_yellow">16</span></p><p class="pop_skill_p">+攻击：<span class="color_yellow">16</span></p><p class="pop_skill_p">+移动速度：<span class="color_yellow">16%</span></p>', '', '', '散华和夜叉经过月光的照耀而产生共鸣，双剑合璧发挥出更大的威力。', '', ''),
(137, 137, '5700.00', '雷神之锤', '', '<h1>主动：静电冲击</h1>对目标单位施加一个静电护盾，持续15.0秒。护盾有20%的几率对附近攻击护盾的目标及其周围4个敌方单位释放闪电冲击，造成200点魔法伤害。<br><br>施法距离：800<h1>被动：连环闪电</h1>攻击有25%的概率释放一道连环闪电，在900范围内12个目标之间跳跃，每次造成150点魔法伤害。', '静电冲击的触发间隔大于1秒。<br>静电冲击的闪电将会对拥有护盾的英雄周围单位造成魔法伤害，静电冲击只会对900范围以内的目标发出闪电冲击。<br>静电冲击不会弹跳至处于隐身状态下或战争迷雾内的英雄。', '<p class="pop_skill_p">+伤害：<span class="color_yellow">24</span></p><p class="pop_skill_p">+攻击：<span class="color_yellow">80</span></p>', '50', '35.0', '索尔的魔法之锤，由矮人名匠布鲁克和伊特里打造。', '', ''),
(138, 138, '5500.00', '斯嘉蒂之眼', '', '<h1>被动：霜冻攻击</h1> 攻击附带使敌人移动速度减缓-35%和攻击速度降低-45%的霜冻效果。<br><br>效果在近战英雄上持续5.0秒，在远程英雄上持续2.5秒。', '近战单位的霜冻攻击效果持续5秒，远程单位的持续2.5秒。', '<p class="pop_skill_p">+所有属性：<span class="color_yellow">25</span></p><p class="pop_skill_p">+生命：<span class="color_yellow">225</span></p><p class="pop_skill_p">+魔法：<span class="color_yellow">250</span></p>', '', '', '极度罕见的古物，由苍空之龙看管。', '', ''),
(139, 139, '5500.00', '撒旦之邪力', '', '<h1>主动：不洁狂热</h1>吸血效果提升至200%，持续4.5秒。<h1>被动：吸血</h1>攻击者每次攻击都将根据造成的伤害回复25%的生命值。', '', '<p class="pop_skill_p">+力量：<span class="color_yellow">25</span></p>', '', '35.0', '无穷的力量，需要你付出灵魂作为代价。', '', ''),
(140, 140, '2200.00', '恶魔刀锋', '', '', '', '<p class="pop_skill_p">+伤害：<span class="color_yellow">42</span></p>', '', '', '由恶魔铁匠阿布兹迪安锻造的最古老的武器之一，一出炉就杀死了它的锻造者。', '', ''),
(141, 141, '3200.00', '鹰歌弓', '', '', '', '<p class="pop_skill_p">+敏捷：<span class="color_yellow">25</span></p>', '', '', '这只神秘的号角捕捉有雄鹰嘹亮的呼啸，能给予听见这声音的英雄几近无限的敏捷度。', '', ''),
(142, 142, '3000.00', '掠夺者之斧', '', '', '', '<p class="pop_skill_p">+力量：<span class="color_yellow">25</span></p>', '', '', '一把开山断岳的强力巨斧。', '', ''),
(143, 143, '3800.00', '圣者遗物', '', '', '', '<p class="pop_skill_p">+伤害：<span class="color_yellow">60</span></p>', '', '', '一件足以改变战争形势的强力武器。', '', ''),
(144, 144, '1400.00', '板甲', '', '', '', '<p class="pop_skill_p">+护甲：<span class="color_yellow">10</span></p>', '', '', '保护整个上身的厚重金属板。注意别砸到脚。', '', ''),
(145, 145, '1450.00', '闪避护符', '', '', '与其他闪避效果为非线性叠加。', '<p class="pop_skill_p">+闪避：<span class="color_yellow">20%</span></p>', '', '', '能让你预知到敌人攻击的项链。', '', ''),
(146, 146, '2000.00', '振奋宝石', '', '', '', '<p class="pop_skill_p">+攻击：<span class="color_yellow">55</span></p>', '', '', '一块刻有神秘纹路的石头，能够提升携带者的激情。', '', ''),
(147, 147, '2150.00', '极限法球', '', '', '', '<p class="pop_skill_p">+所有属性：<span class="color_yellow">10</span></p>', '', '', '蕴含生命本质的神秘法球。', '', ''),
(148, 148, '2700.00', '神秘法杖', '', '', '', '<p class="pop_skill_p">+智力：<span class="color_yellow">25</span></p>', '', '', '这根谜一般的法杖是由最贵重的水晶做成的。', '', ''),
(149, 149, '900.00', '能量之球', '', '', '', '<p class="pop_skill_p">+魔法：<span class="color_yellow">250</span></p>', '', '', '想要改善在战斗中的仪态的巫师们通常会把这块天青石加入自己的收藏。', '', ''),
(150, 150, '1200.00', '精气之球', '', '', '', '<p class="pop_skill_p">+魔法：<span class="color_yellow">175</span></p><p class="pop_skill_p">+生命：<span class="color_yellow">175</span></p>', '', '', '一块完美成型的紫水晶，持有时可以滋养身体和心灵。', '', ''),
(151, 151, '1100.00', '活力之球', '', '', '', '<p class="pop_skill_p">+生命：<span class="color_yellow">250</span></p>', '', '', '一块在战士家族中世代相传的红宝石。', '', ''),

-- --------------------------------------------------------

--
-- 表的结构 `goods_style`
--

CREATE TABLE `goods_style` (
  `did` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL DEFAULT '0',
  `is_xiaohao` enum('1','0') NOT NULL DEFAULT '0',
  `is_shuxin` enum('1','0') NOT NULL DEFAULT '0',
  `is_junbei` enum('1','0') NOT NULL DEFAULT '0',
  `is_aoyi` enum('1','0') NOT NULL DEFAULT '0',
  `is_putong` enum('1','0') NOT NULL DEFAULT '0',
  `is_fuzhu` enum('1','0') NOT NULL DEFAULT '0',
  `is_faqi` enum('1','0') NOT NULL DEFAULT '0',
  `is_wuqi` enum('1','0') NOT NULL DEFAULT '0',
  `is_fangju` enum('1','0') NOT NULL DEFAULT '0',
  `is_shengwu` enum('1','0') NOT NULL DEFAULT '0',
  `is_shenmi` enum('1','0') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `goods_style`
--

INSERT INTO `goods_style` (`did`, `goods_id`, `is_xiaohao`, `is_shuxin`, `is_junbei`, `is_aoyi`, `is_putong`, `is_fuzhu`, `is_faqi`, `is_wuqi`, `is_fangju`, `is_shengwu`, `is_shenmi`) VALUES
(1, 1, '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(2, 2, '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(3, 3, '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4, 4, '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5, 5, '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(6, 6, '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(7, 7, '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(8, 8, '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(9, 9, '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10, 10, '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(11, 11, '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12, 12, '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(13, 13, '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(14, 14, '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(15, 15, '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(16, 16, '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(17, 17, '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(18, 18, '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(19, 19, '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(20, 20, '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(21, 21, '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(22, 22, '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(23, 23, '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(24, 24, '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(25, 25, '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0'),
(26, 26, '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0'),
(27, 27, '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0'),
(28, 28, '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0'),
(29, 29, '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0'),
(30, 30, '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0'),
(31, 31, '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0'),
(32, 32, '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0'),
(33, 33, '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0'),
(34, 34, '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0'),
(35, 35, '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0'),
(36, 36, '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0'),
(37, 37, '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0'),
(38, 38, '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0'),
(39, 39, '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0'),
(40, 40, '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0'),
(41, 41, '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0'),
(42, 42, '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0'),
(43, 43, '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0'),
(44, 44, '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0'),
(45, 45, '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0'),
(46, 46, '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0'),
(47, 47, '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0'),
(48, 48, '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0'),
(49, 49, '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0'),
(50, 50, '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0'),
(51, 51, '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0'),
(52, 52, '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0'),
(53, 53, '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0'),
(54, 54, '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0'),
(55, 55, '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0'),
(56, 56, '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0'),
(57, 57, '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0'),
(58, 58, '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0'),
(59, 59, '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0'),
(60, 60, '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0'),
(61, 61, '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0'),
(62, 62, '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0'),
(63, 63, '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0'),
(64, 64, '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0'),
(65, 65, '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0'),
(66, 66, '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0'),
(67, 67, '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0'),
(68, 68, '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0'),
(69, 69, '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0'),
(70, 70, '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0'),
(71, 71, '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0'),
(72, 72, '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0'),
(73, 73, '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0'),
(74, 74, '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0'),
(75, 75, '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0'),
(76, 76, '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0'),
(77, 77, '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0'),
(78, 78, '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0'),
(79, 79, '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0'),
(80, 80, '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0'),
(81, 81, '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0'),
(82, 82, '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0'),
(83, 83, '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0'),
(84, 84, '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0'),
(85, 85, '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0'),
(86, 86, '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0'),
(87, 87, '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0'),
(88, 88, '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0'),
(89, 89, '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0'),
(90, 90, '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0'),
(91, 91, '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0'),
(92, 92, '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0'),
(93, 93, '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0'),
(94, 94, '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0'),
(95, 95, '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0'),
(96, 96, '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0'),
(97, 97, '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0'),
(98, 98, '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0'),
(99, 99, '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0'),
(100, 100, '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0'),
(101, 101, '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0'),
(102, 102, '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0'),
(103, 103, '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0'),
(104, 104, '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0'),
(105, 105, '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0'),
(106, 106, '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0'),
(107, 107, '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0'),
(108, 108, '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0'),
(109, 109, '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0'),
(110, 110, '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0'),
(111, 111, '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0'),
(112, 112, '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0'),
(113, 113, '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0'),
(114, 114, '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0'),
(115, 115, '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0'),
(116, 116, '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0'),
(117, 117, '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0'),
(118, 118, '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0'),
(119, 119, '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0'),
(120, 120, '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0'),
(121, 121, '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0'),
(122, 122, '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0'),
(123, 123, '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0'),
(124, 124, '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0'),
(125, 125, '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0'),
(126, 126, '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0'),
(127, 127, '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0'),
(128, 128, '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0'),
(129, 129, '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0'),
(130, 130, '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0'),
(131, 131, '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0'),
(132, 132, '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0'),
(133, 133, '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0'),
(134, 134, '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0'),
(135, 135, '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0'),
(136, 136, '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0'),
(137, 137, '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0'),
(138, 138, '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0'),
(139, 139, '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0'),
(140, 140, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1'),
(141, 141, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1'),
(142, 142, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1'),
(143, 143, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1'),
(144, 144, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1'),
(145, 145, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1'),
(146, 146, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1'),
(147, 147, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1'),
(148, 148, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1'),
(149, 149, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1'),
(150, 150, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1'),
(151, 151, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1'),
(152, 152, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(153, 153, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(154, 154, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(155, 155, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(156, 156, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(157, 157, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(158, 158, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(159, 159, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- 表的结构 `heroes_data`
--

CREATE TABLE `heroes_data` (
  `hid` int(11) NOT NULL,
  `hero_id` int(11) NOT NULL DEFAULT '0',
  `hero_name` varchar(45) NOT NULL DEFAULT '',
  `hero_cname` varchar(45) NOT NULL DEFAULT '',
  `main_attribute` varchar(45) NOT NULL DEFAULT '',
  `other_name` varchar(45) NOT NULL DEFAULT '',
  `camp` enum('天辉','夜魇') NOT NULL DEFAULT '天辉',
  `attack_type` enum('近战','远程') NOT NULL DEFAULT '近战'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `heroes_data`
--

INSERT INTO `heroes_data` (`hid`, `hero_id`, `hero_name`, `hero_cname`, `main_attribute`, `other_name`, `camp`, `attack_type`) VALUES
(1, 1, 'Templar Assassin', '圣堂刺客', '敏捷', 'TA，圣堂', '天辉', '远程'),
(2, 2, 'Tusk', '巨牙海民', '力量', '海民', '天辉', '近战'),
(3, 3, 'Rattletrap', '发条技师', '力量', '发条、CG', '天辉', '近战'),
(4, 4, 'Gyrocopter', '矮人直升机', '敏捷', '飞机', '天辉', '远程'),
(5, 5, 'Huskar', '哈斯卡', '力量', '神灵、神灵武士', '天辉', '远程'),
(6, 6, 'Phoenix', '凤凰', '力量', '凤凰', '天辉', '远程'),
(7, 7, 'Shredder', '伐木机', '力量', '地精撕裂者', '天辉', '近战'),
(8, 8, 'Bloodseeker', '嗜血狂魔', '敏捷', 'BS', '夜魇', '近战'),
(9, 9, 'Elder Titan', '上古巨神', '力量', '大牛', '天辉', '近战'),
(10, 10, 'Earthshaker', '撼地者', '力量', '小牛，牛，神牛，撼地神牛', '天辉', '近战'),
(11, 11, 'Tiny', '小小', '力量', '山岭', '天辉', '近战'),
(12, 12, 'Kunkka', '昆卡', '力量', '船长', '天辉', '近战'),
(13, 13, 'Alchemist', '炼金术士', '力量', '炼金', '天辉', '近战'),
(14, 14, 'Oracle', '神谕者', '智力', '神谕者、Oracle', '天辉', '远程'),
(15, 15, 'Bounty Hunter', '赏金猎人', '敏捷', '赏金,BH', '天辉', '近战'),
(16, 16, 'Dragon Knight', '龙骑士', '力量', '龙骑，DK', '天辉', '近战'),
(17, 17, 'Legion Commander', '军团指挥官', '力量', '军团', '天辉', '近战'),
(18, 18, 'Storm Spirit', '风暴之灵', '智力', '蓝猫', '天辉', '远程'),
(19, 19, 'Crystal Maiden', '水晶室女', '智力', '冰女', '天辉', '远程'),
(20, 20, 'Tinker', '修补匠', '智力', 'TK', '天辉', '远程'),
(21, 21, 'Shadow Shaman', '暗影萨满', '智力', '小Y', '天辉', '远程'),
(22, 22, 'Medusa', '美杜莎', '敏捷', '1姐', '夜魇', '远程'),
(23, 23, 'Treant', '树精卫士', '力量', '大树', '天辉', '近战'),
(24, 24, 'Broodmother', '育母蜘蛛', '敏捷', '蜘蛛', '夜魇', '近战'),
(25, 25, 'Warlock', '术士', '智力', 'Warlock', '夜魇', '远程'),
(26, 26, 'Sand King', '沙王', '力量', 'SK', '夜魇', '近战'),
(27, 27, 'Silencer', '沉默术士', '智力', '沉默、诺崇', '天辉', '远程'),
(28, 28, 'Slark', '斯拉克', '敏捷', '小鱼人', '夜魇', '近战'),
(29, 29, 'Chen', '陈', '智力', 'Chen', '天辉', '远程'),
(30, 30, 'Ember Spirit', '灰烬之灵', '敏捷', '火猫', '天辉', '近战'),
(31, 31, 'Windrunner', '风行者', '敏捷', '风行，WR', '天辉', '远程'),
(32, 32, 'Pudge', '帕吉', '力量', '屠夫，胖子', '夜魇', '近战'),
(33, 33, 'Terrorblade', '恐怖利刃', '敏捷', 'TB、魂守', '夜魇', '近战'),
(34, 34, 'Techies', '工程师', '智力', '炸弹人、拉登', '天辉', '远程'),
(35, 35, 'Ursa', '熊战士', '敏捷', '拍拍熊', '天辉', '近战'),
(36, 36, 'Jakiro', '杰奇洛', '智力', '双头龙', '天辉', '远程'),
(37, 37, 'Sven', '斯温', '力量', 'SV，流浪', '天辉', '近战'),
(38, 38, 'Winter Wyvern', '寒冬飞龙', '智力', '冰龙', '夜魇', '远程'),
(39, 39, 'Beastmaster', '兽王', '力量', 'BM', '天辉', '近战'),
(40, 40, 'Obsidian Destroyer', '殁境神蚀者', '敏捷', '黑鸟', '夜魇', '远程'),
(41, 41, 'Meepo', '米波', '敏捷', '地卜', '夜魇', '近战'),
(42, 42, 'Viper', '冥界亚龙', '敏捷', 'VIP，毒龙', '夜魇', '远程'),
(43, 43, 'Mirana', '米拉娜', '敏捷', '白虎，虎妞，月女', '天辉', '远程'),
(44, 44, 'Pugna', '帕格纳', '智力', '骨法', '夜魇', '远程'),
(45, 45, 'Dazzle', '戴泽', '智力', '暗牧', '夜魇', '远程'),
(46, 46, 'Clinkz', '克林克兹', '敏捷', '骨弓', '夜魇', '远程'),
(47, 47, 'Shadow Demon', '暗影恶魔', '智力', '毒狗', '夜魇', '远程'),
(48, 48, 'Centaur', '半人马战行者', '力量', '人马', '天辉', '近战'),
(49, 49, 'Night Stalker', '暗夜魔王', '力量', '夜魔', '夜魇', '近战'),
(50, 50, 'Ogre Magi', '食人魔魔法师', '智力', '蓝胖子', '天辉', '近战'),
(51, 51, 'Magnataur', '马格纳斯', '力量', '猛犸', '夜魇', '近战'),
(52, 52, 'Spectre', '幽鬼', '敏捷', 'Spe', '夜魇', '近战'),
(53, 53, 'Monkey King', '齐天大圣', '敏捷', '大圣、猴子', '天辉', '近战'),
(54, 54, 'Lich', '巫妖', '智力', 'LICH', '夜魇', '远程'),
(55, 55, 'Doom Bringer', '末日使者', '力量', '末日，爸爸', '夜魇', '近战'),
(56, 56, 'Riki', '力丸', '敏捷', '隐刺', '天辉', '近战'),
(57, 57, 'Brewmaster', '酒仙', '力量', '熊猫', '天辉', '近战'),
(58, 58, 'Lina', '莉娜', '智力', '火女', '天辉', '远程'),
(59, 59, 'Enchantress', '魅惑魔女', '智力', '小鹿', '天辉', '远程'),
(60, 60, 'Spirit Breaker', '裂魂人', '力量', '白牛，SB', '夜魇', '近战'),
(61, 61, 'Ancient Apparition', '远古冰魄', '智力', '冰魂', '夜魇', '远程'),
(62, 62, 'Naga Siren', '娜迦海妖', '敏捷', '小娜迦', '夜魇', '近战'),
(63, 63, 'Lone Druid', '德鲁伊', '敏捷', 'LD、熊德、DLY、小德', '天辉', '远程'),
(64, 64, 'Sniper', '狙击手', '敏捷', '火枪，传说哥', '天辉', '远程'),
(65, 65, 'Chaos Knight', '混沌骑士', '力量', '混沌', '夜魇', '近战'),
(66, 66, 'Wisp', '艾欧', '力量', '小精灵', '天辉', '远程'),
(67, 67, 'Phantom Assassin', '幻影刺客', '敏捷', 'PA、幻刺、魅影之纱', '夜魇', '近战'),
(68, 68, 'Lycan', '狼人', '力量', 'Lyc', '夜魇', '近战'),
(69, 69, 'Drow Ranger', '卓尔游侠', '敏捷', '小黑、崔希丝', '天辉', '远程'),
(70, 70, 'Enigma', '谜团', '智力', 'Enig', '夜魇', '远程'),
(71, 71, 'Visage', '维萨吉', '智力', '灰鸟，死灵飞龙', '夜魇', '远程'),
(72, 72, 'Life Stealer', '噬魂鬼', '力量', '小狗', '夜魇', '近战'),
(73, 73, 'Undying', '不朽尸王', '力量', '尸王', '夜魇', '近战'),
(74, 74, 'Nevermore', '影魔', '敏捷', 'SF', '夜魇', '远程'),
(75, 75, 'Morphling', '变体精灵', '敏捷', '水人', '天辉', '远程'),
(76, 76, 'Puck', '帕克', '智力', 'puck，精灵龙', '天辉', '远程'),
(77, 77, 'Rubick', '拉比克', '智力', 'GM', '天辉', '远程'),
(78, 78, 'Vengefulspirit', '复仇之魂', '敏捷', 'VS、仙德尔莎?丝木', '天辉', '远程'),
(79, 79, 'Batrider', '蝙蝠骑士', '智力', '蝙蝠', '夜魇', '远程'),
(80, 80, 'Witch Doctor', '巫医', '智力', 'WD', '夜魇', '远程'),
(81, 81, 'Faceless Void', '虚空假面', '敏捷', '虚空', '夜魇', '近战'),
(82, 82, 'Keeper Of The Light', '光之守卫', '智力', '光法、伊扎洛', '天辉', '远程'),
(83, 83, 'Queenofpain', '痛苦女王', '敏捷', 'QOP', '夜魇', '远程'),
(84, 84, 'Arc Warden', '天穹守望者', '敏捷', '弧光守望者、电狗', '夜魇', '远程'),
(85, 85, 'Disruptor', '干扰者', '智力', '萨尔', '天辉', '远程'),
(86, 86, 'Luna', '露娜', '敏捷', '月骑', '天辉', '远程'),
(87, 87, 'Slardar', '斯拉达', '力量', '大鱼人', '夜魇', '近战'),
(88, 88, 'Earth Spirit', '大地之灵', '力量', '土熊猫', '天辉', '近战'),
(89, 89, 'Venomancer', '剧毒术士', '敏捷', '剧毒', '夜魇', '远程'),
(90, 90, 'Omniknight', '全能骑士', '力量', '全能', '天辉', '近战'),
(91, 91, 'Weaver', '编织者', '敏捷', '蚂蚁', '夜魇', '远程'),
(92, 92, 'Antimage', '敌法师', '敏捷', 'AM、敌法', '天辉', '近战'),
(93, 93, 'Abyssal Underlord', '孽主', '力量', '', '夜魇', '近战'),
(94, 94, 'Invoker', '祈求者', '智力', '卡尔、加若、Invoker', '夜魇', '远程'),
(95, 95, 'Abaddon', '亚巴顿', '力量', '死骑', '夜魇', '近战'),
(96, 96, 'Dark Seer', '黑暗贤者', '智力', '兔子、黑贤、DS', '夜魇', '近战'),
(97, 97, 'Pangolier', '石鳞剑士', '敏捷', '穿山甲', '天辉', '近战'),
(98, 98, 'Lion', '莱恩', '智力', 'Lion', '夜魇', '远程'),
(99, 99, 'Axe', '斧王', '力量', '蒙哥可汗、Mogul Khan、Axe', '夜魇', '近战'),
(100, 100, 'Furion', '先知', '智力', 'FUR', '天辉', '远程'),
(101, 101, 'Skeleton King', '冥魂大帝', '智力', 'SNK、骷髅王', '夜魇', '近战'),
(102, 102, 'Juggernaut', '主宰', '敏捷', '剑圣', '天辉', '近战'),
(103, 103, 'Dark Willow', '邪影芳灵', '智力', '', '天辉', '远程'),
(104, 104, 'Tidehunter', '潮汐猎人', '力量', '潮汐、TH', '夜魇', '近战'),
(105, 105, 'Razor', '剃刀', '敏捷', '电棍', '夜魇', '远程'),
(106, 106, 'Necrolyte', '瘟疫法师', '智力', 'NEC，死灵法', '夜魇', '远程'),
(107, 107, 'Nyx Assassin', '司夜刺客', '敏捷', 'NA，小强', '夜魇', '近战'),
(108, 108, 'Bristleback', '钢背兽', '力量', '钢背，背背猪', '天辉', '近战'),
(109, 109, 'Leshrac', '拉席克', '智力', '老鹿，光鹿', '夜魇', '远程'),
(110, 110, 'Bane', '祸乱之源', '智力', '痛苦之源', '夜魇', '远程'),
(111, 111, 'Skywrath Mage', '天怒法师', '智力', '龙鹰', '天辉', '远程'),
(112, 112, 'Troll Warlord', '巨魔战将', '敏捷', '巨魔', '天辉', '远程'),
(113, 113, 'Zeus', '宙斯', '智力', '神王', '天辉', '远程'),
(114, 114, 'Death Prophet', '死亡先知', '智力', 'DP', '夜魇', '远程'),
(115, 115, 'Phantom Lancer', '幻影长矛手', '敏捷', '猴子、阿兹瑞斯', '天辉', '近战');

-- --------------------------------------------------------

--
-- 表的结构 `hero_dower`
--

CREATE TABLE `hero_dower` (
  `hid` int(11) NOT NULL,
  `hero_id` int(11) NOT NULL DEFAULT '0',
  `dower10_part1` varchar(45) NOT NULL DEFAULT '',
  `dower10_part2` varchar(45) NOT NULL DEFAULT '',
  `dower15_part1` varchar(45) NOT NULL DEFAULT '',
  `dower15_part2` varchar(45) NOT NULL DEFAULT '',
  `dower20_part1` varchar(45) NOT NULL DEFAULT '',
  `dower20_part2` varchar(45) NOT NULL DEFAULT '',
  `dower25_part1` varchar(45) NOT NULL DEFAULT '',
  `dower25_part2` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hero_dower`
--

INSERT INTO `hero_dower` (`hid`, `hero_id`, `dower10_part1`, `dower10_part2`, `dower15_part1`, `dower15_part2`, `dower20_part1`, `dower20_part2`, `dower25_part1`, `dower25_part2`) VALUES
(1, 1, '+3 灵能陷阱', '+25 攻击速度', '+200 灵能陷阱伤害', '+7 护甲', '-4 隐匿降低护甲', '折光带驱散', '+4 折光次数', '灵能之刃飞溅造成麻痹'),
(2, 2, '+90 金钱/分', '+40% 经验获取', '+150 雪球伤害', '+350 生命', '+100% 海象神拳暴击', '+300 雪球速度', '-6秒 寒冰碎片冷却', '12% 普攻触发海象神拳'),
(3, 3, '+25 移动速度', '+5 护甲', '+30 弹幕冲击伤害', '+15 力量', '+125 照明火箭伤害', '+20% 魔法抗性', '-0.3秒 弹幕冲击间隔', '照明火箭具有真实视域'),
(4, 4, '+200 生命', '+25 攻击力', '+11 火箭弹幕伤害', '+3 高射火炮攻击次数', '-25秒 召唤飞弹冷却', '+50 移动速度', '全屏召唤飞弹', '3 追踪导弹能量点数'),
(5, 5, '+20 攻击力', '+175 生命', '15% 吸血', '+10 沸血之矛每秒伤害', '+400 牺牲施法距离', '+15 力量', '活血术无冷却', '+125 攻击距离'),
(6, 6, '+8% 技能增强', '+90 金钱/分', '+40% 经验获取', '+60 烈火精灵每秒伤害', '+1秒 超新星眩晕', '+1400 凤凰冲击施法距离', '+2% 烈日炙烤最大生命值伤害', '+3 超新星可被攻击次数'),
(7, 7, '+25% 经验获取', '+6% 技能增强', '+5 活性护甲叠加', '+100 攻击力', '10% 冷却时间减少', '+15 力量', '+1400 伐木锯链距离', '+8% 死亡旋风属性降低'),
(8, 8, '+4 护甲', '+25 攻击速度', '+75 血之祭祀伤害', '+300 生命', '25% 吸血', '+14% 割裂伤害', '+20 嗜血渴望移速和攻击力', '-6秒 血之祭祀冷却'),
(9, 9, '+200 生命', '+25 移动速度', '+30 星体游魂触碰英雄攻击力', '+15% 魔法抗性', '+100 回音重踏伤害', '+70 攻击速度', '100% 吸血', '-75秒 裂地沟壑冷却'),
(10, 10, '+250 魔法', '+30 攻击力', '+7 护甲', '+30 移动速度', '+400 沟壑距离', '+50 回音击伤害', '-2秒 强化图腾冷却', '+50% 魔法抗性'),
(11, 11, '+30 攻击力', '+20% 魔法抗性', '+125 山崩伤害', '+350 生命', '投掷不需要目标', '-7秒 抓树冷却', '3 投掷能量点数', '-12秒 山崩冷却'),
(12, 12, '+6 护甲', '+40 攻击力', '+120 洪流伤害', '+10 生命恢复', '+25 力量', '+100 洪流范围', '+50% 潮汐使者分裂', '幽灵船舰队'),
(13, 13, '-5秒 不稳定化合物冷却', '+25 攻击速度', '+50 攻击力', '+350 生命', '+360 不稳定化合物伤害', '+25% 分裂', '+30 化学狂暴恢复', '-0.2 化学狂暴基础攻击间隔'),
(14, 14, '+25% 经验获取', '+1秒 气运之末最大持续时间', '+90 金钱/分', '+150 施法距离', '虚妄之诺提供隐身', '+75 移动速度', '+2秒 虚妄之诺持续时间', '-5秒 命运敕令冷却'),
(15, 15, '+25% 经验获取', '+30 移动速度', '+350 生命', '+50 攻击速度', '+125% 忍术致命一击', '+75 投掷飞镖伤害', '+300 追踪术金钱', '50% 闪避'),
(16, 16, '+30 攻击速度', '+2 魔法恢复', '+300 生命', '+35 攻击力', '2倍 龙族血统生命恢复/护甲', '+150 金钱/分', '+1.75秒 神龙摆尾眩晕', '+40 力量'),
(17, 17, '+25% 经验获取', '+8 力量', '+50 压倒性优势英雄提供伤害', '+30 攻击速度', '+10% 勇气之霎触发几率', '+60 移动速度', '-10秒 强攻冷却', '+40 决斗攻击力加成'),
(18, 18, '+2 魔法恢复', '+20 攻击力', '+300 生命', '+80 残影伤害', '+30 攻击速度', '+0.5秒 电子涡流持续时间', '球状闪电每500距离\n自动施放残影', '超负荷无视技能免疫'),
(19, 19, '+100 施法距离', '+200 生命', '+90 金钱/分', '+14% 光环降低魔法消耗/损失', '+60 极寒领域伤害', '+250 攻击速度', '+300 冰霜新星伤害', '+1.5秒 冰封禁制持续时间'),
(20, 20, '+75 施法距离', '+6% 技能增强', '10% 技能吸血', '+40 移动速度', '+8 进击的机械伤害', '+100 攻击力', '+0.3秒 热导飞弹眩晕', '+100 激光伤害'),
(21, 21, '+20% 经验获取', '+200 生命', '-4秒 妖术冷却', '+125 施法距离', '+1 群蛇守卫可被攻击次数', '+3秒 枷锁持续时间', '+60 守卫攻击力', '+400 苍穹震击伤害'),
(22, 22, '12% 闪避', '+25 攻击力', '+15% 秘术异蛇魔法窃取', '+30 攻击速度', '+2.5秒 石化凝视持续时间', '+800 魔法', '分裂箭继承攻击特效', '+7 分裂箭目标'),
(23, 23, '10% 冷却时间减少', '+35% 经验获取', '3秒 树木重生时间', '+90 攻击力', '+40 寄生种子伤害/治疗', '+2秒 自然蔽护缠绕', '+350 丛林之眼和疯狂生长范围', '+6 活体护甲格挡次数'),
(24, 24, '+200 生命', '+75 孵化蜘蛛伤害', '+35% 经验获取', '20% 冷却时间减少', '+50 攻击速度', '+20 小蜘蛛攻击力', '+350 小蜘蛛生命值', '+60 极度饥渴攻击力/吸血'),
(25, 25, '+125 施法距离', '+5% 致命连接伤害', '-7秒 暗言术冷却', '+40% 经验获取', '250 范围型暗言术', '死亡时召唤地狱火', '地狱火技能免疫', '+20 地狱火护甲'),
(26, 26, '+200 生命', '+30 移动速度', '-50 地震攻速降低', '+50 沙尘暴每秒伤害', '+4 地震波数', '+10 护甲', '50% 沙尘暴减速和致盲', '+35 生命恢复'),
(27, 27, '+25 攻击速度', '+5 护甲', '+2 智力窃取', '+90 金钱/分', '+30 奥术诅咒伤害', '+125 攻击距离', '+2秒 全领域静默持续时间', '+20% 智慧之刃伤害'),
(28, 28, '+10 敏捷', '+8 力量', '20% 吸血', '+30 攻击速度', '+3秒 突袭束缚时间', '+150 黑暗契约伤害', '+120秒 能量转移持续时间', '+1秒 暗影之舞持续时间'),
(29, 29, '+200 施法距离', '+35% 经验获取', '-10秒 忠诚考验冷却', '+7 护甲', '+1000 被劝化单位最低生命', '+180 金钱/分', '+400 上帝之手治疗', '+4 神圣劝化数量上限'),
(30, 30, '+200 烈火罩吸收伤害', '+25 攻击力', '+1秒 炎阳索持续时间', '+50 烈火罩每秒伤害', '克敌机先', '+10% 技能增强', '-25秒 残焰充能时间', '2 无影拳能量点数'),
(31, 31, '+30% 风行减速', '+1.75 魔法恢复', '+100 攻击距离', '+100 强力击伤害', '风行提供隐身效果', '+1 束缚击目标', '30% 冷却时间减少', '+20% 集中火力造成短暂眩晕'),
(32, 32, '+35 腐烂伤害', '+5 护甲', '+75 攻击力', '13% 技能吸血', '15% 冷却时间减少', '+180 金钱/分', '+2.0 腐肉堆积叠加力量', '+3秒 肢解持续时间'),
(33, 33, '10% 闪避', '+20 移动速度', '+25 攻击速度', '+300 生命', '-10秒 倒影冷却', '+10 全属性', '+300 魔化攻击距离', '-35秒 魂断冷却'),
(34, 34, '-4秒 感应地雷冷却', '+30% 经验获取', '+4 魔法恢复', '+300 爆破起飞伤害', '+150 金钱/分', '+75 移动速度', '+25 地雷移动速度', '+251 攻击力'),
(35, 35, '+8 力量', '+1.75 魔法恢复', '-1秒 震撼大地冷却', '+16 敏捷', '+25秒 怒意狂击重置时间', '+1 激怒持续时间', '+14 怒意狂击伤害', '+600 震撼大地范围'),
(36, 36, '+8% 技能增强', '+25% 经验获取', '+40 冰火交加烧灼伤害', '+250 攻击距离', '+150 金钱/分', '-60 液态火降低攻击速度', '+1.25秒 冰封路径持续时间', '烈焰焚身为纯粹\n且无视技能免疫'),
(37, 37, '+2 魔法恢复', '+8 力量', '+30 攻击力', '+30 移动速度', '风暴之拳带驱散', '25% 吸血', '-9秒 风暴之拳冷却', '+40 神之力量额外力量'),
(38, 38, '+50 攻击力', '+90 金钱/分', '+500 夜间视野', '+350 生命', '-5秒 极寒之拥冷却', '+15% 严寒烧灼减速', '碎裂冲击造成2秒眩晕', '+1.5秒 寒冬诅咒持续时间'),
(39, 39, '+30 移动速度', '+25% 经验获取', '+40 豪猪攻击力', '+7 护甲', '+500 生命', '+100 野性之斧伤害', '+2 召唤战鹰数量', '+40 野性之心攻击速度'),
(40, 40, '+20 攻击速度', '+200 生命', '+15% 精气光环几率', '+40 移动速度', '+2 神智之蚀伤害系数', '+20 力量', '15% 技能吸血', '+60秒 奥术天球智力窃取'),
(41, 41, '+20 攻击力', '+7 力量', '+40 忽悠伤害', '10% 吸血', '15% 闪避', '-4秒 地之束缚冷却', '-5秒 忽悠冷却', '+600 生命'),
(42, 42, '8% 技能吸血', '+20 攻击速度', '+6 腐蚀皮肤各效果', '+100 攻击距离', '毒性攻击影响建筑', '+100 蝮蛇突袭每秒伤害', '+120 攻击力', '幽冥剧毒造成沉默'),
(43, 43, '+200 生命', '+20 攻击力', '+100 跳跃攻击速度', '-5秒 月神之箭冷却', '+25 法力损毁', '+12% 技能增强', '-70秒 月之暗面冷却', '+2 月神之箭齐发'),
(44, 44, '+225 生命', '+25 移动速度', '+1 幽冥守卫生命', '-1秒 幽冥爆轰冷却', '+2秒 衰老持续时间', '+25% 生命汲取回复', '+1.75 幽冥守卫伤害系数', '+200 幽冥爆轰伤害'),
(45, 45, '+175 生命', '+60 攻击力', '+20 暗影波治疗/伤害', '+125 施法距离', '+30 剧毒之触每秒伤害', '+50 移动速度', '+0.5 每秒编织护甲', '-4秒 暗影波冷却'),
(46, 46, '+5 护甲', '+12% 魔法抗性', '+30 灼热之箭伤害', '15% 闪避', '+20 生命恢复', '+100 攻击距离', '灼热之箭齐发', '+4秒 扫射躲避机会/持续时间'),
(47, 47, '+25% 经验获取', '+10 力量', '+25% 暗影剧毒伤害', '+40 移动速度', '-1.5秒 暗影剧毒冷却', '-6秒 灵魂猎手冷却', '+5秒 崩裂禁锢放逐', '+500 邪恶净化伤害'),
(48, 48, '+10% 魔法抗性', '10% 闪避', '+15% 反击力量伤害', '+75 攻击力', '+20 力量', '+250 双刃剑伤害', '+1.5秒 马蹄践踏眩晕', '反击变成光环'),
(49, 49, '+200 魔法', '+200 生命', '+150 施法距离', '+15 力量', '+50 攻击力', '+50 移动速度', '-8秒 伤残恐惧冷却', '+140 暗夜猎影攻击速度'),
(50, 50, '+100 施法距离', '+60 金钱/分', '+300 生命', '+90 攻击力', '+40 嗜血术攻速加成', '+30 力量', '+275 火焰爆轰伤害', '+90 移动速度'),
(51, 51, '+200 生命', '+25 攻击速度', '+75 震荡波伤害', '+15 力量', '+500 巨角冲撞距离', '+12 护甲', '+0.75秒 两极反转眩晕', '+20% 授予力量攻击力/分裂'),
(52, 52, '+15 荒芜伤害', '+5 生命恢复', '-8秒 幽鬼之刃冷却', '+8 全属性', '+20% 幽鬼之刃减速/加速', '+500 生命', '+8% 折射', '+20% 鬼影重重幻象攻击力'),
(53, 53, '+20 攻击速度', '+150 丛林之舞视野范围', '+75 如意棒法攻击力', '+300 丛林之舞施法距离', '+300 乾坤之跃伤害', '+50% 棒击大地暴击', '+1 猴子猴孙圆阵', '+100 猴子猴孙护甲'),
(54, 54, '+25 移动速度', '+175 生命', '-4秒 寒霜爆发冷却', '+120 攻击力', '+120 金钱/分', '+175 施法距离', '普攻减30%攻速和移速', '霜冻护甲提供+30 生命恢复'),
(55, 55, '+25 移动速度', '+10 焦土伤害/治疗', '+150 吞噬额外金钱', '20% 闪避', '吞噬可作用远古', '+40 末日每秒伤害', '+100% 分裂', '+3% 阎刃伤害'),
(56, 56, '+8 敏捷', '+5 生命恢复', '-5秒 烟幕冷却', '+20% 致命一击（1.5倍）', '+900 闪烁突袭施法距离', '+0.20 背刺系数', '刀光谍影不显形', '+400 绝杀秘技范围'),
(57, 57, '+200 生命', '+30 攻击力', '+20% 魔法抗性', '+3秒 雷霆一击减速', '+100 攻击速度', '+1500 元素分离单位生命', '+15% 醉拳几率', '-65秒 元素分离冷却'),
(58, 58, '+100 施法距离', '+25 攻击力', '+140 光击阵伤害', '+300 生命', '+25/2% 炽魂每次叠加', '+10% 技能增强', '+175 攻击距离', '-6秒 龙破斩冷却'),
(59, 59, '+25 移动速度', '+15% 魔法抗性', '+8 自然之助小精灵', '+50 攻击力', '魅惑可作用远古', '+100 不可侵犯减速', '+25 自然之助治疗', '+8% 推进伤害'),
(60, 60, '+5 护甲', '+400 夜间视野', '+40 攻击力', '+10 生命恢复', '+400 冲刺速度', '+30% 巨力重击伤害', '+800 生命', '+25% 巨力重击概率'),
(61, 61, '+10% 技能增强', '+60 金钱/分', '+20 生命恢复', '-1.5秒 冰霜漩涡冷却', '+80 极寒之触伤害', '+8% 冰霜漩涡减速/伤害加深', '+4% 冰晶爆轰斩杀上限', '4 寒霜之足能量点数'),
(62, 62, '+10% 镜像攻击力', '+25 移动速度', '+14 力量', '+15 敏捷', '+1 镜像幻象', '-5秒 诱捕冷却', '-6 激流降低护甲', '30% 闪避'),
(63, 63, '+175 攻击距离', '+250 生命', '+10 熊灵护甲', '-8秒 野蛮咆哮冷却', '+40 狂猛攻击速度', '-25秒 战斗嚎叫冷却', '战斗嚎叫提供技能免疫', '缠绕之爪无冷却'),
(64, 64, '+20 攻击力', '15% 冷却时间减少', '+25 榴霰弹每秒伤害', '+40 攻击速度', '-1.5秒 暗杀锁定时间', '+35 爆头击退距离', '+6 榴霰弹能量点数', '+125 攻击距离'),
(65, 65, '+20 移动速度', '+5 全属性', '12% 冷却时间减少', '+15 力量', '实相裂隙无视技能免疫', '+150 金钱/分', '+2 混乱之箭最大眩晕', '-7 实相裂隙护甲削弱'),
(66, 66, '+60 攻击力', '+400 幽魂最大距离', '羁绊提供神杖加成', '+90 幽魂对英雄伤害', '攻击羁绊友军的目标', '+150 金钱/分', '+50 生命恢复', '羁绊造成眩晕'),
(67, 67, '+15 攻击力', '+150 生命', '+20% 分裂', '-4 护甲削弱', '窒息之刃攻击两个目标', '20% 吸血', '+25% 模糊闪避', '+5% 恩赐解脱几率'),
(68, 68, '+20 攻击力', '+5 护甲', '12% 冷却时间减少', '+8 野性驱使生命恢复', '+16% 野性驱使攻击力', '+8秒 变身持续时间', '+3 召狼数量', '+600 嗥叫对英雄生命'),
(69, 69, '+5 全属性', '+20 移动速度', '+400 狂风距离/击退', '+25 攻击速度', '+2秒 狂风持续时间', '+20 射手天赋敏捷', '50% 冷却时间减少', '+20% 精准光环攻击力'),
(70, 70, '+15% 魔法抗性', '+25 移动速度', '+120 金钱/分', '15% 冷却时间减少', '+70 虚灵体攻击力', '+400 生命', '+8 恶魔转化虚灵', '+4 憎恶触发次数'),
(71, 71, '+30 攻击力', '+125 施法距离', '灵魂超度攻击两个目标', '+40% 经验获取', '+80 佣兽移动速度', '+15 灵魂超度每点灵魂伤害', '+1 佣兽', '-2秒 陵卫斗篷恢复时间'),
(72, 72, '+20 攻击速度', '+200 生命', '+35 移动速度', '+30 攻击力', '+50% 撕裂伤口吸血', '20% 闪避', '+2秒 狂暴持续时间', '+2% 盛宴伤害/吸血'),
(73, 73, '+8 生命恢复', '+100 施法距离', '+20秒 腐朽持续时间', '死亡时召唤墓碑', '+3 墓碑可被攻击次数', '+30 墓碑僵尸攻击力', '-2秒 腐朽冷却', '重生 200秒冷却'),
(74, 74, '+20 攻击速度', '+10% 技能增强', '+40 移动速度', '魔王降临影响建筑', '+150 毁灭阴影伤害', '20% 闪避', '40% 冷却时间减少', '+3 攻击力/灵魂'),
(75, 75, '+300 波浪形态距离', '+10 敏捷', '+30 攻击速度', '波浪形态攻击目标', '+15秒 变形持续时间', '变形可作用友军', '+2 变体攻击多个目标', '2 波浪形态能量点数'),
(76, 76, '+5 护甲', '+10 智力', '+50 攻击力', '+8% 技能增强', '+40% 幻象法球距离/速度', '-5秒 新月之痕冷却', '梦境缠绕快速攻击', '+420 金钱/分'),
(77, 77, '+60 攻击力', '+200 生命', '-35 弱化能流降低英雄攻击力', '+100 施法距离', '+300 隔空取物着陆距离', '+5% 失效力场', '+75% 窃取技能获得技能增强', '-15秒 隔空取物冷却'),
(78, 78, '-1 恐怖波动护甲', '+15% 魔法抗性', '-6秒 恐怖波动冷却', '+15 敏捷', '+15% 复仇光环攻击力', '-5秒 魔法箭冷却', '魔法箭无视技能免疫', '+400 魔法箭伤害'),
(79, 79, '+5 护甲', '+6% 技能增强', '+300 生命', '+2秒 烈焰破击烧灼', '+50 移动速度', '15% 冷却时间减少', '-13秒 烈焰破击冷却', '+8秒 火焰飞行持续时间'),
(80, 80, '+5 护甲', '+75 攻击力', '+120 金钱/分', '+2 麻痹药剂弹跳', '+1 诅咒爆发次数', '+125 死亡守卫攻击距离', '+75 死亡守卫攻击力', '+1.5% 巫毒回复术最大生命值'),
(81, 81, '+8 力量', '+20 攻击力', '+300 生命', '+100 时间锁定伤害', '+500 时间漫游距离', '+40 攻击速度', '+175 时间结界范围', '+25% 回到过去'),
(82, 82, '+25 移动速度', '8% 技能吸血', '+350 施法距离', '+40% 经验获取', '+300 查克拉魔法回复', '+40% 魔法抗性', '+200 冲击波伤害/治疗', '+2秒 法力流失眩晕'),
(83, 83, '+10 力量', '+25 攻击力', '+40 攻击速度', '12% 冷却时间减少', '650 范围型暗影突袭', '30% 技能吸血', '20秒 法术抵抗', '痛苦尖叫造成1.5秒恐惧'),
(84, 84, '+25 攻击速度', '+5 护甲', '+2秒 乱流持续时间', '+350 生命', '+100 攻击距离', '10% 冷却时间减少', '+350 闪光幽魂伤害', '30% 吸血'),
(85, 85, '+40 雷霆之击伤害', '+200 生命', '-3秒 动能力场冷却', '+150 施法距离', '+4 雷霆之击打击次数', '+180 金钱/分', '+4秒 动能力场持续时间', '-10秒 恶念瞥视冷却'),
(86, 86, '+200 施法距离', '+20 攻击速度', '+24 月之祝福攻击力', '-3秒 月光冷却', '+100 月光伤害', '+10 全属性', '+0.25秒 月蚀月光眩晕', '25% 吸血'),
(87, 87, '+20 攻击力', '+5 生命恢复', '+100 深海重击伤害', '+300 生命', '+1000 夜间视野', '+50 攻击速度', '侵蚀雾霭不可驱散', '+15% 重击概率'),
(88, 88, '+40 攻击力', '+10 智力', '+200 巨石翻滚伤害', '+7 护甲', '+150 金钱/分', '+15% 技能增强', '+1.0秒 巨石冲击眩晕', '地磁之握可作用友军'),
(89, 89, '+90 金钱/分', '-8秒 瘴气冷却', '+6% 毒刺减速', '+150 施法距离', '瘴气击中英雄时召唤2个守卫', '+6秒 剧毒新星持续时间', '3倍 瘟疫守卫生命/伤害', '+600 剧毒新星范围'),
(90, 90, '+75 洗礼范围', '+90 金钱/分', '+90 攻击力', '+35% 经验获取', '+4 魔法恢复', '-12% 退化光环', '+3秒 驱逐持续时间', '+200 洗礼伤害/治疗'),
(91, 91, '+25% 经验获取', '+20 法力损毁', '+75 缩地伤害', '+12 力量', '+2 虫群可被攻击次数', '+0.5 虫群削弱护甲', '+1 连击', '+200 缩地移动速度'),
(92, 92, '+20 攻击速度', '+175 生命', '+15 敏捷', '-2秒 闪烁冷却', '+300 闪烁施法距离', '闪烁产生不可控幻象', '-50秒 法力虚空冷却', '+25% 法术护盾'),
(93, 93, '+30 移动速度', '+18 火焰风暴每波伤害', '+15 衰退光环英雄死亡攻击力加成', '+100 施法距离', '+20 生命恢复', '+70 攻击速度', '25% 火焰风暴对建筑伤害', '+0.8秒 怨念深渊缠绕'),
(94, 94, '+30 混沌陨石撞击伤害', '+0.3秒 强袭飓风滞空', '+1.5秒 急速冷却持续时间', '+1 熔炉精灵召唤数量', '+35 灵动迅捷攻击力/攻速', '毁天灭地', '-16秒 强袭飓风冷却', '环形超震声波'),
(95, 95, '+20% 经验获取', '+25 移动速度', '+50 迷雾缠绕治疗/伤害', '+6 护甲', '+90 攻击力', '15% 冷却时间减少', '+25% 魔霭诅咒减缓移速', '+250 无光之盾吸收'),
(96, 96, '+90 攻击力', '12% 闪避', '+75 真空范围', '+12 生命恢复', '300 范围型奔腾', '15% 冷却时间减少', '+150 离子外壳伤害', '平行光墙'),
(97, 97, '+25 移动速度', '+2 魔法恢复', '+30 攻击速度', '2秒 滚动时甲盾冲击冷却', '+20 力量', '+30 虚张声势伤害', '-16秒 地雷滚滚冷却', '-3秒 虚张声势冷却'),
(98, 98, '+75 攻击力', '+75 施法距离', '+90 金钱/分', '+200 死亡之指伤害', '+2 法力吸取多个目标', '+500 生命', '+325 范围型妖术', '+1000 裂地尖刺距离'),
(99, 99, '+40 攻击速度', '+8 力量', '+30 移动速度', '+3 魔法恢复', '攻击触发反击螺旋', '+20 生命恢复', '+120 战斗饥渴每秒伤害', '+100 狂战士之吼范围'),
(100, 100, '+30 移动速度', '+30 攻击力', '+4 召唤树人', '+8 护甲', '-4秒 发芽冷却', '+40 攻击速度', '2倍 树人生命/攻击力', '传送无冷却'),
(101, 101, '+20 攻击速度', '+40 冥火爆击每秒伤害', '+5 骷髅兵上限', '+15 力量', '+30 骷髅兵攻击力', '重生不消耗魔法', '重生施放冥火爆击', '+25% 吸血光环吸血'),
(102, 102, '+20 移动速度', '+5 全属性', '+25 攻击速度', '+1秒 剑刃风暴持续时间', '+100 剑刃风暴每秒伤害', '+10 护甲', '+5 无敌斩次数', '+600 生命'),
(103, 103, '+125 施法距离', '+20 攻击力', '+40 移动速度', '+90 金钱/分', '+300 暗影之境最大伤害', '10% 技能吸血', '+1 恐吓持续时间', '+200 攻击速度'),
(104, 104, '+80 巨浪伤害', '+25 移动速度', '+25% 锚击降低攻击力', '+40% 经验获取', '-4 巨浪降低护甲', '+24 海妖外壳格挡伤害', '+250 攻击力', '25% 冷却时间减少'),
(105, 105, '+15 敏捷', '+200 生命', '+4% 不稳定电流移动速度', '+7 静电连接攻击力窃取', '-0.1 风暴之眼打击间隔', '+10 护甲', '-3秒 不稳定电流间隔', '+100 攻击速度'),
(106, 106, '+10 力量', '+40 攻击力', '+30 移动速度', '+300 生命', '+80 攻击速度', '+20% 魔法抗性', '-1.5秒 死亡脉冲冷却', '+0.6 竭心光环'),
(107, 107, '+60 金钱/分', '+6% 技能增强', '+35 移动速度', '+325 生命', '+175 穿刺伤害', '+75% 尖刺外壳伤害', '复仇无视地形', '+100 敏捷'),
(108, 108, '+2 魔法恢复', '+20 移动速度', '+6 鼻液叠加上限', '+250 生命', '+25 刺针叠加伤害', '+20 生命恢复', '+20 战意叠加攻击力', '15% 技能吸血'),
(109, 109, '+250 魔法', '+5 护甲', '+40 移动速度', '+15 力量', '+50 脉冲新星伤害', '25% 闪避', '+3秒 闪电风暴减速', '+50 恶魔敕令爆炸次数'),
(110, 110, '+100 施法距离', '+6 护甲', '+40% 经验获取', '虚弱窃取攻击力', '+75 移动速度', '+100 虚弱攻击力降低', '+7秒 魔爪持续时间', '+250 蚀脑伤害/治疗'),
(111, 111, '+8 智力', '+25 移动速度', '+1 奥法鹰隼施放数量', '-6秒 上古封印冷却', '+15% 上古封印降低魔法抗性', '全屏震荡光弹', '+600 神秘之耀伤害', '+300 金钱/分'),
(112, 112, '+200 生命', '+10 敏捷', '+50 旋风飞斧伤害', '+3 热血战魂叠加上限', '+50 攻击力', '20% 闪避', '战斗专注带驱散', '-6秒 旋风飞斧冷却'),
(113, 113, '+25% 经验获取', '+6 护甲', '+1% 静电场伤害', '+40 移动速度', '+0.5秒 雷击眩晕', '15% 冷却时间减少', '+170 弧形闪电伤害', '+200 施法距离'),
(114, 114, '+12% 魔法抗性', '+50 攻击力', '+150 施法距离', '+1% 吸魂巫术最大生命值', '-2秒 地穴虫群冷却', '+500 生命', '+8 驱使恶灵数量', '驱使恶灵提供极速状态'),
(115, 115, '+20 攻击速度', '10% 闪避', '+125 灵魂之矛伤害', '+250 生命', '+4 并列幻象上限', '+500 幻影冲锋距离', '+30% 致命一击（2倍）', '-5秒 神行百变冷却');

-- --------------------------------------------------------

--
-- 表的结构 `hero_equipment`
--

CREATE TABLE `hero_equipment` (
  `hid` int(11) NOT NULL,
  `hero_id` int(11) NOT NULL DEFAULT '0',
  `equipment1` varchar(45) NOT NULL DEFAULT '',
  `equipment2` varchar(45) NOT NULL DEFAULT '',
  `equipment3` varchar(45) NOT NULL DEFAULT '',
  `equipment4` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hero_equipment`
--

INSERT INTO `hero_equipment` (`hid`, `hero_id`, `equipment1`, `equipment2`, `equipment3`, `equipment4`) VALUES
(1, 1, '树之祭祀@敏捷便鞋@治疗药膏@铁树枝干@', '魔棒@速度之靴@魔瓶@', '相位鞋@魔杖@闪烁匕首@黯灭@', '幻影斧@黑皇杖@金箍棒@影刃@蝴蝶@影刃@'),
(2, 2, '治疗药膏@树之祭祀@力量手套@铁树枝干@', '魔棒@速度之靴@护腕@', '魔杖@相位鞋@影刃@', '黯灭@恐鳌之心@强袭胸甲@黑皇杖@深渊之刃@'),
(3, 3, '树之祭祀@治疗药膏@圆盾@铁树枝干@', '速度之靴@护腕@魔瓶@', '相位鞋@魔杖@刃甲@', '阿哈利姆神杖@韧鼓@洞察烟斗@恐鳌之心@辉耀@希瓦的守护@'),
(4, 4, '敏捷便鞋@树之祭祀@治疗药膏@净化药水@铁树枝干@', '魔棒@速度之靴@天鹰之戒@', '魔杖@相位鞋@魔龙枪@', '黑皇杖@散夜对剑@金箍棒@飓风长戟@阿哈利姆神杖@蝴蝶@撒旦之邪力@'),
(5, 5, '治疗药膏@树之祭祀@力量手套@铁树枝干@', '速度之靴@魔棒@影之灵龛@', '动力鞋@魔杖@莫尔迪基安的臂章@支配头盔@回城卷轴@', '黑皇杖@撒旦之邪力@恐鳌之心@强袭胸甲@阿哈利姆神杖@影刃@天堂之戟@梅肯斯姆@白银之锋@'),
(6, 6, '治疗药膏@树之祭祀@铁树枝干@圆盾@', '静谧之鞋@影之灵龛@魔杖@', '迈达斯之手@纷争面纱@希瓦的守护@', '阿哈利姆神杖@邪恶镰刀@阿托斯之棍@刷新球@天堂之戟@'),
(7, 7, '树之祭祀@治疗药膏@铁树枝干@圆盾@', '速度之靴@护腕@魔瓶@', '奥术鞋@魔杖@血精石@', '邪恶镰刀@血精石@林肯法球@黑皇杖@达贡之神力@希瓦的守护@'),
(8, 8, '树之祭祀@圆盾@压制之刃@', '穷鬼盾@速度之靴@魔杖@回城卷轴@', '动力鞋@怨灵系带@散夜对剑@', '辉耀@蝴蝶@黑皇杖@金箍棒@强袭胸甲@恐鳌之心@'),
(9, 9, '力量手套@治疗药膏@净化药水@铁树枝干@', '魔棒@速度之靴@灵魂之戒@', '魔杖@奥术鞋@梅肯斯姆@Eul的神圣法杖@', '邪恶镰刀@血精石@恐鳌之心@强袭胸甲@希瓦的守护@林肯法球@'),
(10, 10, '净化药水@树之祭祀@治疗药膏@力量手套@铁树枝干@', '魔棒@速度之靴@护腕@能量之球@', '魔杖@奥术鞋@闪烁匕首@回城卷轴@', '阿哈利姆神杖@纷争面纱@希瓦的守护@邪恶镰刀@恐鳌之心@玲珑心@'),
(11, 11, '净化药水@树之祭祀@铁树枝干@圆环@', '魔棒@速度之靴@护腕@魔瓶@', '魔杖@奥术鞋@闪烁匕首@', '远行鞋@强袭胸甲@韧鼓@恐鳌之心@邪恶镰刀@希瓦的守护@'),
(12, 12, '净化药水@树之祭祀@治疗药膏@力量手套@铁树枝干@', '速度之靴@魔棒@护腕@治疗指环@', '相位鞋@魔杖@先锋盾@影刃@', '黑皇杖@代达罗斯之殇@强袭胸甲@恐鳌之心@狂战斧@'),
(13, 13, '树之祭祀@治疗药膏@铁树枝干@圆盾@', '速度之靴@魔棒@铁意头盔@', '远行鞋@魔杖@莫尔迪基安的臂章@辉耀@', '玲珑心@幻影斧@强袭胸甲@雷神之锤@白银之锋@深渊之刃@'),
(14, 14, '树之祭祀@治疗药膏@力量手套@动物信使@铁树枝干@', '魔棒@速度之靴@护腕@', '魔杖@奥术鞋@梅肯斯姆@侦查守卫@回城卷轴@以太之镜@', '闪烁匕首@远行鞋@邪恶镰刀@以太之镜@希瓦的守护@'),
(15, 15, '圆盾@树之祭祀@治疗药膏@铁树枝干@', '速度之靴@穷鬼盾@魔棒@', '相位鞋@魔杖@狂战斧@', '勇气勋章@黯灭@金箍棒@弗拉迪米尔的祭品@强袭胸甲@净魂之刃@'),
(16, 16, '树之祭祀@压制之刃@净化药水@力量手套@铁树枝干@', '速度之靴@魔棒@护腕@', '动力鞋@魔杖@支配头盔@', '黑皇杖@深渊之刃@恐鳌之心@强袭胸甲@撒旦之邪力@天堂之戟@'),
(17, 17, '治疗药膏@净化药水@圆盾@铁树枝干@', '速度之靴@魔棒@影之灵龛@', '动力鞋@魔杖@闪烁匕首@刃甲@', '天堂之戟@黑皇杖@莫尔迪基安的臂章@恐鳌之心@强袭胸甲@'),
(18, 18, '树之祭祀@治疗药膏@净化药水@智力斗篷@', '魔棒@速度之靴@空灵挂件@空灵挂件@', '魔杖@动力鞋@魔瓶@', '邪恶镰刀@血精石@林肯法球@黑皇杖@达贡之神力@希瓦的守护@'),
(19, 19, '树之祭祀@治疗药膏@净化药水@力量手套@动物信使@铁树枝干@', '魔棒@速度之靴@护腕@护腕@', '魔杖@静谧之鞋@韧鼓@侦查守卫@', 'Eul的神圣法杖@幽魂权杖@邪恶镰刀@阿哈利姆神杖@希瓦的守护@影刃@'),
(20, 20, '树之祭祀@治疗药膏@智力斗篷@铁树枝干@', '魔棒@速度之靴@护腕@魔瓶@', '以太之镜@远行鞋@灵魂之戒@闪烁匕首@', '邪恶镰刀@血精石@希瓦的守护@原力法杖@达贡之神力@'),
(21, 21, '树之祭祀@净化药水@治疗药膏@力量手套@铁树枝干@', '魔棒@速度之靴@护腕@', '魔杖@奥术鞋@闪烁匕首@', '阿哈利姆神杖@刷新球@血精石@希瓦的守护@死灵书@'),
(22, 22, '敏捷便鞋@树之祭祀@治疗药膏@净化药水@铁树枝干@', '魔棒@速度之靴@天鹰之戒@', '魔杖@相位鞋@刃甲@魔龙枪@', '幻影斧@蝴蝶@飓风长戟@撒旦之邪力@斯嘉蒂之眼@'),
(23, 23, '动物信使@树之祭祀@治疗药膏@净化药水@铁树枝干@', '魔棒@速度之靴@护腕@王者之戒@', '魔杖@奥术鞋@梅肯斯姆@阿哈利姆神杖@侦查守卫@', '邪恶镰刀@希瓦的守护@恐鳌之心@刷新球@死灵书@韧鼓@'),
(24, 24, '治疗药膏@树之祭祀@净化药水@铁树枝干@守护指环@', '速度之靴@灵魂之戒@天鹰之戒@', '动力鞋@紫怨@', '黯灭@黑皇杖@弗拉迪米尔的祭品@蝴蝶@金箍棒@强袭胸甲@辉耀@'),
(25, 25, '动物信使@守护指环@净化药水@铁树枝干@治疗药膏@', '魔棒@速度之靴@护腕@王者之戒@', '魔杖@奥术鞋@梅肯斯姆@侦查守卫@', '邪恶镰刀@希瓦的守护@阿哈利姆神杖@刷新球@死灵书@韧鼓@'),
(26, 26, '力量手套@治疗药膏@净化药水@铁树枝干@', '魔棒@速度之靴@护腕@', '魔杖@奥术鞋@闪烁匕首@', '阿哈利姆神杖@纷争面纱@刃甲@希瓦的守护@黑皇杖@恐鳌之心@'),
(27, 27, '树之祭祀@治疗药膏@净化药水@圆环@智力斗篷@', '速度之靴@魔棒@空灵挂件@回城卷轴@', '动力鞋@原力法杖@魔杖@梅肯斯姆@回城卷轴@', '邪恶镰刀@阿托斯之棍@希瓦的守护@Eul的神圣法杖@紫怨@黑皇杖@'),
(28, 28, '圆盾@铁树枝干@治疗药膏@净化药水@树之祭祀@', '魔棒@速度之靴@淬毒之珠@', '魔杖@动力鞋@韧鼓@', '黑皇杖@斯嘉蒂之眼@恐鳌之心@幻影斧@强袭胸甲@蝴蝶@'),
(29, 29, '树之祭祀@治疗药膏@净化药水@守护指环@动物信使@', '速度之靴@王者之戒@恢复头巾@', '奥术鞋@梅肯斯姆@侦查守卫@', '阿哈利姆神杖@弗拉迪米尔的祭品@邪恶镰刀@死灵书@韧鼓@幽魂权杖@'),
(30, 30, '治疗药膏@净化药水@铁树枝干@圆盾@', '速度之靴@魔棒@影之灵龛@', '远行鞋@魔杖@纷争面纱@漩涡@刃甲@', '辉耀@林肯法球@希瓦的守护@雷神之锤@远行鞋@'),
(31, 31, '树之祭祀@治疗药膏@净化药水@智力斗篷@铁树枝干@', '魔棒@速度之靴@空灵挂件@王者之戒@', '魔杖@相位鞋@原力法杖@', '邪恶镰刀@紫怨@希瓦的守护@林肯法球@阿哈利姆神杖@Eul的神圣法杖@'),
(32, 32, '力量手套@治疗药膏@净化药水@铁树枝干@', '魔棒@速度之靴@护腕@魔瓶@', '魔杖@相位鞋@挑战头巾@', '洞察烟斗@恐鳌之心@阿哈利姆神杖@希瓦的守护@原力法杖@韧鼓@'),
(33, 33, '治疗药膏@树之祭祀@铁树枝干@圆盾@', '速度之靴@护腕@天鹰之戒@食人魔之斧@', '动力鞋@韧鼓@幻影���@', '代达罗斯之殇@恐鳌之心@蝴蝶@辉耀@黑皇杖@斯嘉蒂之眼@'),
(34, 34, '树之祭祀@净化药水@净化药水@净化药水@动物信使@', '静谧之鞋@灵魂之戒@回城卷轴@', 'Eul的神圣法杖@阿哈利姆神杖@', '血精石@幽魂权杖@邪恶镰刀@希瓦的守护@原力法杖@死灵书@'),
(35, 35, '树之祭祀@治疗药膏@铁树枝干@圆盾@', '速度之靴@魔棒@王者之戒@', '相位鞋@魔杖@弗拉迪米尔的祭品@闪烁匕首@', '蝴蝶@黯灭@强袭胸甲@金箍棒@代达罗斯之殇@恐鳌之心@'),
(36, 36, '动物信使@树之祭祀@治疗药膏@净化药水@铁树枝干@', '速度之靴@魔棒@王者之戒@', '魔杖@梅肯斯姆@奥术鞋@侦查守卫@', '纷争面纱@希瓦的守护@邪恶镰刀@洞察烟斗@Eul的神圣法杖@阿哈利姆神杖@'),
(37, 37, '净化药水@治疗药膏@治疗药膏@力量手套@力量手套@铁树枝干@', '魔棒@护腕@速度之靴@', '魔杖@动力鞋@闪烁匕首@回音战刃@疯狂面具@', '闪烁匕首@黑皇杖@恐鳌之心@强袭胸甲@远行鞋@代达罗斯之殇@'),
(38, 38, '树之祭祀@治疗药膏@动物信使@铁树枝干@', '魔棒@速度之靴@护腕@侦查守卫@', '魔杖@奥术鞋@梅肯斯姆@原力法杖@', '远行鞋@死灵书@血精石@邪恶镰刀@希瓦的守护@黑皇杖@'),
(39, 39, '树之祭祀@治疗药膏@净化药水@力量手套@铁树枝干@', '魔棒@速度之靴@护腕@', '魔杖@动力鞋@韧鼓@', '洞察烟斗@死灵书@阿哈利姆神杖@闪烁匕首@恐鳌之心@强袭胸甲@'),
(40, 40, '铁树枝干@智力斗篷@树之祭祀@治疗药膏@', '魔棒@速度之靴@空灵挂件@', '动力鞋@魔杖@原力法杖@回城卷轴@', '飓风长戟@希瓦的守护@闪烁匕首@邪恶镰刀@银月之晶@'),
(41, 41, '树之祭祀@力量手套@治疗药膏@铁树枝干@', '治疗指环@魔棒@速度之靴@王者之戒@', '魔杖@动力鞋@梅肯斯姆@魔龙枪@', '阿哈利姆神杖@弗拉迪米尔的祭品@邪恶镰刀@强袭胸甲@恐鳌之心@希瓦的守护@'),
(42, 42, '树之祭祀@敏捷便鞋@治疗药膏@铁树枝干@', '魔棒@速度之靴@怨灵系带@怨灵系带@', '魔杖@动力鞋@先锋盾@', '幻影斧@黑皇杖@金箍棒@影刃@蝴蝶@紫怨@'),
(43, 43, '敏捷便鞋@树之祭祀@治疗药膏@净化药水@铁树枝干@', '魔棒@速度之靴@天鹰之戒@', '魔杖@动力鞋@幻影斧@', '蝴蝶@净魂之刃@强袭胸甲@黯灭@金箍棒@'),
(44, 44, '力量手套@铁树枝干@净化药水@树之祭祀@治疗药膏@', '魔棒@速度之靴@护腕@王者之戒@', '魔杖@相位鞋@梅肯斯姆@', '阿哈利姆神杖@邪恶镰刀@希瓦的守护@达贡之神力@黑皇杖@韧鼓@'),
(45, 45, '铁树枝干@净化药水@树之祭祀@动物信使@@', '魔棒@速度之靴@影之灵龛@灵魂之戒@', '魔杖@奥术鞋@侦查守卫@梅肯斯姆@', '邪恶镰刀@希瓦的守护@阿哈利姆神杖@洞察烟斗@Eul的神圣法杖@勇气勋章@'),
(46, 46, '治疗药膏@树之祭祀@敏捷便鞋@铁树枝干@', '速度之靴@天鹰之戒@魔杖@空明杖@', '动力鞋@紫怨@金箍棒@', '代达罗斯之殇@蝴蝶@斯嘉蒂之眼@邪恶镰刀@黑皇杖@'),
(47, 47, '铁树枝干@智力斗篷@树之祭祀@治疗药膏@', '魔棒@速度之靴@空灵挂件@', '魔杖@奥术鞋@原力法杖@回城卷轴@', '洞察烟斗@希瓦的守护@死灵书@梅肯斯姆@Eul的神圣法杖@邪恶镰刀@'),
(48, 48, '树之祭祀@治疗药膏@铁树枝干@圆盾@', '魔棒@速度之靴@护腕@', '魔杖@静谧之鞋@闪烁匕首@挑战头巾@先锋盾@', '阿哈利姆神杖@辉耀@恐鳌之心@刃甲@天堂之戟@'),
(49, 49, '力量手套@铁树枝干@净化药水@治疗药膏@树之祭祀@', '魔棒@速度之靴@影之灵龛@', '魔杖@相位鞋@炎阳纹章@阿哈利姆神杖@', '深渊之刃@恐鳌之心@强袭胸甲@黑皇杖@莫尔迪基安的臂章@天堂之戟@'),
(50, 50, '动物信使@树之祭祀@治疗药膏@净化药水@铁树枝干@', '魔棒@速度之靴@护腕@', '魔杖@梅肯斯姆@奥术鞋@', '邪恶镰刀@希瓦的守护@恐鳌之心@刷新球@死灵书@'),
(51, 51, '力量手套@治疗药膏@净化药水@铁树枝干@', '魔棒@速度之靴@魔瓶@', '魔杖@奥术鞋@闪烁匕首@', '恐鳌之心@狂战斧@希瓦的守护@强袭胸甲@刷新球@疯狂面具@'),
(52, 52, '压制之刃@树之祭祀@治疗药膏@铁树枝干@', '魔棒@速度之靴@治疗指环@', '魔杖@相位鞋@先锋盾@辉耀@', '净魂之刃@幻影斧@代达罗斯之殇@蝴蝶@恐鳌之心@散夜对剑@'),
(53, 53, '树之祭祀@治疗药膏@圆环@圆盾@', '速度之靴@天鹰之戒@治疗指环@枯萎之石@', '相位鞋@回音战刃@先锋盾@黯灭@漩涡@', '黑皇杖@深渊之刃@白银之锋@净魂之刃@斯嘉蒂之眼@'),
(54, 54, '树之祭祀@治疗药膏@力量手套@动物信使@', '魔棒@速度之靴@护腕@', '魔杖@静谧之鞋@梅肯斯姆@侦查守卫@', '远行鞋@邪恶镰刀@希瓦的守护@阿哈利姆神杖@飞行信使@'),
(55, 55, '铁树枝干@树之祭祀@治疗药膏@圆盾@', '治疗指环@魔棒@速度之靴@王者之戒@', '魔杖@先锋盾@相位鞋@', '辉耀@恐鳌之心@强袭胸甲@希瓦的守护@阿哈利姆神杖@刷新球@'),
(56, 56, '树之祭祀@治疗药膏@敏捷便鞋@铁树枝干@', '魔棒@速度之靴@穷鬼盾@', '动力鞋@魔杖@净魂之刃@', '蝴蝶@弗拉迪米尔的祭品@黑皇杖@强袭胸甲@散夜对剑@'),
(57, 57, '树之祭祀@治疗药膏@圆盾@铁树枝干@', '速度之靴@魔棒@护腕@', '相位鞋@魔杖@弗拉迪米尔的祭品@闪烁匕首@', '阿哈利姆神杖@强袭胸甲@希瓦的守护@恐鳌之心@辉耀@'),
(58, 58, '树之祭祀@净化药水@治疗药膏@铁树枝干@动物信使@', '魔棒@速度之靴@护腕@', '魔杖@奥术鞋@闪烁匕首@侦查守卫@', '韧鼓@邪恶镰刀@血精石@阿哈利姆神杖@希瓦的守护@Eul的神圣法杖@'),
(59, 59, '树之祭祀@力量手套@治疗药膏@铁树枝干@', '魔棒@速度之靴@', '魔杖@动力鞋@影之灵龛@阿哈利姆神杖@侦查守卫@', '血精石@希瓦的守护@邪恶镰刀@紫怨@恐鳌之心@强袭胸甲@'),
(60, 60, '树之祭祀@治疗药膏@圆盾@铁树枝干@', '速度之靴@魔棒@影之灵���@护腕@', '动力鞋@魔杖@疯狂面具@黑皇杖@', '恐鳌之心@天堂之戟@强袭胸甲@阿哈利姆神杖@代达罗斯之殇@@'),
(61, 61, '铁树枝干@净化药水@树之祭祀@治疗药膏@', '影之灵龛@魔杖@速度之靴@', '动力鞋@Eul的神圣法杖@梅肯斯姆@侦查守卫@', '阿哈利姆神杖@邪恶镰刀@阿托斯之棍@原力法杖@斯嘉蒂之眼@林肯法球@'),
(62, 62, '树之祭祀@治疗药膏@敏捷便鞋@铁树枝干@', '魔棒@速度之靴@穷鬼盾@', '奥术鞋@魔杖@梅肯斯姆@', '恐鳌之心@天堂之戟@幻影斧@净魂之刃@蝴蝶@'),
(63, 63, '铁树枝干@树之祭祀@守护指环@', '魔棒@速度之靴@', '魔杖@静谧之鞋@迈达斯之手@漩涡@', '阿哈利姆神杖@雷神之锤@深渊之刃@辉耀@恐鳌之心@弗拉迪米尔的祭品@'),
(64, 64, '树之祭祀@净化药水@敏捷便鞋@铁树枝干@', '速度之靴@怨灵系带@', '魔杖@动力鞋@影刃@', '幻影斧@黯灭@蝴蝶@雷神之锤@斯嘉蒂之眼@撒旦之邪力@'),
(65, 65, '树之祭祀@治疗药膏@力量手套@铁树枝干@', '速度之靴@魔棒@护腕@', '动力鞋@魔杖@莫尔迪基安的臂章@韧鼓@', '辉耀@恐鳌之心@黑皇杖@天堂之戟@幻影斧@'),
(66, 66, '力量手套@铁树枝干@净化药水@治疗药膏@树之祭祀@', '魔棒@速度之靴@影之灵龛@', '奥术鞋@魔杖@梅肯斯姆@微光披风@侦查守卫@', '卫士胫甲@恐鳌之心@希瓦的守护@阿托斯之棍@洞察烟斗@刷新球@'),
(67, 67, '树之祭祀@治疗药膏@铁树枝干@圆盾@', '魔棒@速度之靴@天鹰之戒@', '魔杖@相位鞋@黑皇杖@', '恐鳌之心@强袭胸甲@蝴蝶@深渊之刃@'),
(68, 68, '治疗药膏@树之祭祀@压制之刃@守护指环@', '速度之靴@弗拉迪米尔的祭品@', '动力鞋@黑皇杖@勇气勋章@', '强袭胸甲@黯灭@死灵书@天堂之戟@恐鳌之心@深渊之刃@'),
(69, 69, '治疗药膏@树之祭祀@敏捷便鞋@铁树枝干@', '速度之靴@魔棒@怨灵系带@', '魔杖@动力鞋@幻影斧@魔龙枪@', '影刃@蝴蝶@代达罗斯之殇@黑皇杖@撒旦之邪力@'),
(70, 70, '守护指环@净化药水@树之祭祀@动物信使@', '魔棒@速度之靴@王者之戒@灵魂之戒@', '魔杖@动力鞋@闪烁匕首@护腕@', '梅肯斯姆@邪恶镰刀@希瓦的守护@阿哈利姆神杖@黑皇杖@刷新球@'),
(71, 71, '树之祭祀@治疗药膏@净化药水@守护指环@铁树枝干@', '速度之靴@魔棒@王者之戒@', '动力鞋@魔杖@梅肯斯姆@勇气勋章@', '阿哈利姆神杖@邪恶镰刀@希瓦的守护@强袭胸甲@阿托斯之棍@恐鳌之心@'),
(72, 72, '树之祭祀@治疗药膏@圆盾@铁树枝干@', '相位鞋@枯萎之石@魔杖@', '莫尔迪基安的臂章@回音战刃@黯灭@', '雷神之锤@强袭胸甲@深渊之刃@散夜对剑@闪烁匕首@撒旦之邪力@'),
(73, 73, '树之祭祀@圆盾@铁树枝干@净化药水@', '速度之靴@魔棒@影之灵龛@', '奥术鞋@魔杖@梅肯斯姆@阿哈利姆神杖@', '卫士胫甲@辉耀@恐鳌之心@刃甲@天堂之戟@'),
(74, 74, '治疗药膏@树之祭祀@敏捷便鞋@铁树枝干@', '魔棒@速度之靴@天鹰之戒@', '魔杖@动力鞋@闪烁匕首@黑皇杖@', '影刃@强袭胸甲@代达罗斯之殇@黯灭@蝴蝶@金箍棒@'),
(75, 75, '敏捷便鞋@树之祭祀@治疗药膏@净化药水@铁树枝干@', '速度之靴@魔棒@怨灵系带@', '动力鞋@坚韧球@魔杖@天鹰之戒@', '幻影斧@林肯法球@虚灵之刃@蝴蝶@斯嘉蒂之眼@撒旦之邪力@'),
(76, 76, '树之祭祀@治疗药膏@净化药水@力量手套@铁树枝干@', '魔棒@速度之靴@魔瓶@护腕@护腕@', '魔杖@动力鞋@闪烁匕首@', '邪恶镰刀@血精石@阿哈利姆神杖@达贡之神力@希瓦的守护@林肯法球@'),
(77, 77, '动物信使@树之祭祀@治疗药膏@净化药水@铁树枝干@', '魔棒@速度之靴@护腕@侦查守卫@', '奥术鞋@原力法杖@侦查守卫@', '阿哈利姆神杖@梅肯斯姆@希瓦的守护@闪烁匕首@邪恶镰刀@纷争面纱@'),
(78, 78, '树之祭祀@治疗药膏@净化药水@圆环@动物信使@', '魔棒@速度之靴@天鹰之戒@', '魔杖@动力鞋@勇气勋章@侦查守卫@回城卷轴@', '阿哈利姆神杖@原力法杖@闪烁匕首@黯灭@蝴蝶@幻影斧@恐鳌之心@韧鼓@炎阳纹章@微光披风@'),
(79, 79, '树之祭祀@圆盾@铁树枝干@', '速度之靴@魔棒@影之灵龛@', '动力鞋@闪烁匕首@先锋盾@魔杖@回城卷轴@', '挑战头巾@Eul的神圣法杖@邪恶镰刀@洞察烟斗@希瓦的守护@原力法杖@'),
(80, 80, '树之祭祀@净化药水@治疗药膏@力量手套@动物信使@', '魔棒@速度之靴@护腕@侦查守卫@', '魔杖@相位鞋@侦查守卫@', '邪恶镰刀@黑皇杖@希瓦的守护@血精石@达贡之神力@阿哈利姆神杖@'),
(81, 81, '压制之刃@树之祭祀@治疗药膏@敏捷便鞋@', '魔棒@速度之靴@吸血面具@', '魔杖@动力鞋@疯狂面具@幻影斧@净魂之刃@', '蝴蝶@黯灭@强袭胸甲@金箍棒@代达罗斯之殇@阿哈利姆神杖@'),
(82, 82, '树之祭祀@治疗药膏@力量手套@铁树枝干@动物信使@', '速度之靴@魔棒@护腕@', '静谧之鞋@魔杖@梅肯斯姆@侦查守卫@回城卷轴@', '阿哈利姆神杖@远行鞋@希瓦的守护@阿托斯之棍@邪恶镰刀@洞察烟斗@Eul的神圣法杖@原力法'),
(83, 83, '治疗药膏@树之祭祀@智力斗篷@铁树枝干@', '速度之靴@魔瓶@魔棒@空灵挂件@空灵挂件@', '动力鞋@魔杖@邪恶镰刀@', '斯嘉蒂之眼@雷神之锤@希瓦的守护@阿哈利姆神杖@纷争面纱@死灵书@'),
(84, 84, '圆环@树之祭祀@治疗药膏@铁树枝干@', '魔杖@魔瓶@', '奥术鞋@迈达斯之手@死灵书@', '邪恶镰刀@希瓦的守护@达贡之神力@幻影斧@黑皇杖@刃甲@蝴蝶@代达罗斯之殇@金箍棒@炎阳纹'),
(85, 85, '树之祭祀@治疗药膏@净化药水@铁树枝干@动物信使@', '速度之靴@魔棒@护腕@', '奥术鞋@魔杖@梅肯斯姆@侦查守卫@回城卷轴@', '阿哈利姆神杖@闪烁匕首@原力法杖@希瓦的守护@洞察烟斗@死灵书@纷争面纱@飞行信使@'),
(86, 86, '树之祭祀@治疗药膏@敏捷便鞋@铁树枝干@', '静谧之鞋@魔棒@护腕@', '韧鼓@魔杖@黑皇杖@', '幻影斧@蝴蝶@强袭胸甲@撒旦之邪力@代达罗斯之殇@'),
(87, 87, '圆盾@治疗药膏@树之祭祀@净化药水@铁树枝干@', '魔棒@速度之靴@', '魔杖@动力鞋@闪烁匕首@', '黑皇杖@莫尔迪基安的臂章@恐鳌之心@黯灭@强袭胸甲@撒旦之邪力@'),
(88, 88, '治疗药膏@净化药水@铁树枝干@圆盾@', '速度之靴@魔棒@影之灵龛@淬毒之珠@', '@魔杖@闪烁匕首@', 'Eul的神圣法杖@微光披风@纷争面纱@卫士胫甲@洞察烟斗@'),
(89, 89, '守护指环@树之祭祀@敏捷便鞋@治疗药膏@净化药水@', '魔棒@速度之靴@天鹰之戒@', '魔杖@动力鞋@阿哈利姆神杖@', 'Eul的神圣法杖@闪烁匕首@影刃@蝴蝶@紫怨@幻影斧@'),
(90, 90, '治疗药膏@净化药水@铁树枝干@守护指环@树之祭祀@', '速度之靴@魔棒@王者之戒@', '灵魂之戒@奥术鞋@魔杖@侦查守卫@回城卷轴@', '阿哈利姆神杖@梅肯斯姆@邪恶镰刀@希瓦的守护@远行鞋@弗拉迪米尔的祭品@'),
(91, 91, '树之祭祀@净化药水@治疗药膏@敏捷便鞋@铁树枝干@', '魔棒@速度之靴@天鹰之戒@', '魔杖@动力鞋@林肯法球@魔龙枪@', '净魂之刃@黯灭@代达罗斯之殇@金箍棒@蝴蝶@'),
(92, 92, '树之祭祀@治疗药膏@铁树枝干@圆盾@', '速度之靴@魔棒@治疗指环@', '动力鞋@魔杖@狂战斧@夜叉@回城卷轴@', '幻影斧@远行鞋@深渊之刃@蝴蝶@恐鳌之心@斯嘉蒂之眼@'),
(93, 93, '树之祭祀@圆盾@净化药水@圆环@铁树枝干@', '速度之靴@灵魂之戒@魔棒@恢复头巾@', '奥术鞋@先锋盾@梅肯斯姆@挑战头巾@魔杖@', '卫士胫甲@��甲@希瓦的守护@恐鳌之心@辉耀@赤红甲@'),
(94, 94, '树之祭祀@治疗药膏@圆环@力量手套@铁树枝干@', '速度之靴@魔棒@护腕@', '相位鞋@韧鼓@魔杖@原力法杖@', '邪恶镰刀@闪烁匕首@阿哈利姆神杖@Eul的神圣法杖@黑皇杖@斯嘉蒂之眼@'),
(95, 95, '树之祭祀@治疗药膏@力量手套@动物信使@', '穷鬼盾@相位鞋@魔杖@回城卷轴@', '相位鞋@散夜对剑@黑皇杖@', '辉耀@蝴蝶@黑皇杖@金箍棒@强袭胸甲@恐鳌之心@'),
(96, 96, '树之祭祀@治疗药膏@净化药水@圆盾@铁树枝干@', '魔棒@速度之靴@灵魂之戒@', '魔杖@奥术鞋@梅肯斯姆@回城卷轴@', '赤红甲@阿哈利姆神杖@挑战头巾@洞察烟斗@闪烁匕首@邪恶镰刀@希瓦的守护@恐鳌之心@刷新球'),
(97, 97, '树之祭祀@治疗药膏@铁树枝干@圆盾@', '速度之靴@天鹰之戒@魔杖@', '动力鞋@闪烁匕首@净魂之刃@', '雷神之锤@金箍棒@深渊之刃@希瓦的守护@'),
(98, 98, '树之祭祀@净化药水@治疗药膏@力量手套@动物信使@', '魔棒@速度之靴@护腕@侦查守卫@', '魔杖@相位鞋@侦查守卫@', '邪恶镰刀@黑皇杖@希瓦的守护@血精石@达贡之神力@阿哈利姆神杖@'),
(99, 99, '树之祭祀@圆盾@守护指环@铁树枝干@', '静谧之鞋@魔棒@', '闪烁匕首@先锋盾@魔杖@回城卷轴@', '刃甲@恐鳌之心@洞察烟斗@希瓦的守护@阿哈利姆神杖@远行鞋@强袭胸甲@天堂之戟@赤红甲@清'),
(100, 100, '守护指环@净化药水@树之祭祀@', '魔棒@速度之靴@王者之戒@', '魔杖@动力鞋@邪恶镰刀@', '迈达斯之手@阿哈利姆神杖@紫怨@黯灭@死灵书@代达罗斯之殇@'),
(101, 101, '树之祭祀@治疗药膏@净化药水@铁树枝干@压制之刃@', '魔棒@速度之靴@铁意头盔@', '魔杖@动力鞋@莫尔迪基安的臂章@', '黯灭@黑皇杖@强袭胸甲@深渊之刃@恐鳌之心@天堂之戟@'),
(102, 102, '树之祭祀@治疗药膏@净化药水@铁树枝干@敏捷便鞋@', '速度之靴@穷鬼盾@魔棒@治疗指环@', '相位鞋@魔杖@狂战斧@', '散夜对剑@蝴蝶@黯灭@阿哈利姆神杖@弗拉迪米尔的祭品@黑皇杖@'),
(103, 103, '侦查守卫@树之祭祀@净化药水@风灵之纹@', '速度之靴@魔棒@', '魔杖@奥术鞋@梅肯斯姆@', 'Eul的神圣法杖@闪烁匕首@卫士胫甲@清莲宝珠@邪恶镰刀@希瓦的守护@'),
(104, 104, '树之祭祀@治疗药膏@净化药水@力量手套@铁树枝干@', '魔棒@速度之靴@护腕@', '魔杖@奥术鞋@闪烁匕首@', '恐鳌之心@辉耀@希瓦的守护@强袭胸甲@洞察烟斗@刷新球@'),
(105, 105, '守护指环@树之祭祀@治疗药膏@铁树枝干@', '魔棒@天鹰之戒@速度之靴@', '魔杖@动力鞋@先锋盾@', '散夜对剑@黯灭@恐鳌之心@蝴蝶@阿哈利姆神杖@'),
(106, 106, '铁树枝干@智力斗篷@治疗药膏@树之祭祀@', '魔棒@速度之靴@恢复头巾@', '魔杖@动力鞋@梅肯斯姆@精气之球@', '血精石@邪恶镰刀@希瓦的守护@阿哈利姆神杖@洞察烟斗@恐鳌之心@'),
(107, 107, '动物信使@树之祭祀@治疗药膏@净化药水@铁树枝干@', '魔棒@速度之靴@治疗指环@', '魔杖@奥术鞋@达贡之神力@', 'Eul的神圣法杖@幽魂权杖@邪恶镰刀@阿哈利姆神杖@希瓦的守护@黯灭@'),
(108, 108, '治疗药膏@树之祭祀@净化药水@铁树枝干@圆盾@', '速度之靴@治疗指环@王者之戒@魔杖@', '动力鞋@先锋盾@回城卷轴@', '刃甲@赤红甲@天堂之戟@强袭胸甲@洞察烟斗@希瓦的守护@恐鳌之心@辉耀@阿托斯之棍@玲珑心'),
(109, 109, '树之祭祀@净化药水@治疗药膏@力量手套@动物信使@', '魔棒@速度之靴@护腕@侦查守卫@', '魔杖@相位鞋@血精石@', '血精石@黑皇杖@邪恶镰刀@阿哈利姆神杖@闪烁匕首@希瓦的守护@'),
(110, 110, '树之祭祀@治疗药膏@净化药水@智力斗篷@铁树枝干@', '速度之靴@魔棒@护腕@', '奥术鞋@魔杖@原力法杖@侦查守卫@', '阿哈利姆神杖@原力法杖@希瓦的守护@闪烁匕首@邪恶镰刀@纷争面纱@'),
(111, 111, '铁树枝干@智力斗篷@树之祭祀@治疗药膏@', '速度之靴@魔棒@空灵挂件@', '魔杖@奥术鞋@精气之球@', '阿哈利姆神杖@原力法杖@希瓦的守护@闪烁匕首@邪恶镰刀@纷争面纱@'),
(112, 112, '敏捷便鞋@树之祭祀@治疗药膏@净化药水@铁树枝干@', '速度之靴@怨灵系带@', '魔杖@相位鞋@影刃@散夜对剑@黑皇杖@', '幻影斧@黯灭@蝴蝶@雷神之锤@斯嘉蒂之眼@撒旦之邪力@'),
(113, 113, '树之祭祀@净化药水@治疗药膏@铁树枝干@', '魔瓶@速度之靴@', '以太之镜@纷争面纱@', '阿哈利姆神杖@刷新球@邪恶镰刀@血精石@Eul的神圣法杖@'),
(114, 114, '树之祭祀@治疗药膏@净化药水@铁树枝干@智力斗篷@', '速度之靴@魔棒@空灵挂件@', '相位鞋@魔杖@血精石@', '希瓦的守护@邪恶镰刀@恐鳌之心@黑皇杖@梅肯斯姆@洞察烟斗@'),
(115, 115, '树之祭祀@治疗药膏@铁树枝干@圆盾@', '魔棒@速度之靴@天鹰之戒@', '魔杖@动力鞋@净魂之刃@', '恐鳌之心@幻影斧@蝴蝶@深渊之刃@');

-- --------------------------------------------------------

--
-- 表的结构 `hero_intro`
--

CREATE TABLE `hero_intro` (
  `hid` int(11) NOT NULL,
  `hero_id` int(11) NOT NULL DEFAULT '0',
  `hero_story1` varchar(1024) NOT NULL DEFAULT '',
  `hero_story2` varchar(1024) NOT NULL DEFAULT '',
  `hero_story3` varchar(1024) NOT NULL DEFAULT '',
  `hero_story4` varchar(1024) NOT NULL DEFAULT '',
  `hero_video` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hero_intro`
--

INSERT INTO `hero_intro` (`hid`, `hero_id`, `hero_story1`, `hero_story2`, `hero_story3`, `hero_story4`, `hero_video`) VALUES
(1, 1, '拉娜娅，圣堂刺客，一直行走在对万物的探求之路上。她有一颗渴求知识的心，早年就非常专注于研究自然法则——对魔法和炼金术有关的书非常入迷，试图重现她在紫罗兰档案馆找到的吉光片羽中记载的实验，并且背下了档案保管者对实验的观察记录。由于她天性悄声隐秘，再加上获得这些东西的高难度，拉娜娅的隐秘行动技巧得到了进一步的强化。要不是她处事低调，她的“神偷”大名早已传遍了各大公会。不过她的研究一步步的将她带进了更为诡异的死角。就在她将自己的隐秘天赋完全奉献给探索宇宙秘密的时候，却无意中打开了一扇隐秘的自然之门：隐之圣堂的入口。入口另一侧的智慧生命早已在等着她了，他们向拉娜娅解答了许多未解之谜，然而当他们告诉拉娜娅她可以为圣堂服务时，这些秘密都算不得什么了。她立誓守护这些秘密，然而更重要的是，为圣堂服务能够满足她那对知识无尽的渴求。在消灭的每个敌人眼中，她发现自己揭示的秘密又多了一分。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/templa'),
(2, 2, '那是场值得铭记���干架。当时号称“冰盾之惧”的巨牙海民尤弥尔，也叫钴蓝冰原的雪球大汉，他是唯一光明正大地打败刚背格斗家的战士，现在狼穴酒馆里只有他屹立不倒。原本是一场关于谁力气最大的酒吧小赌，结果那四名修士，一名铁匠还有六名来自霜寒军旅的一流士兵都被巨牙海民打得落花流水，酒馆里的桌椅瓶罐几乎都遭了秧。而他自鸣得意，端起酒杯一饮而尽。\r\n\r\n倒地的输家们刚头脑有点清醒，他们又开始叫嚣着再来赌一把。巨牙海民心想着何乐而不为，但是其他人回想刚才他赢的那场，实在想不出还能打什么赌。这时酒馆老板已经被店里毁坏的物品吓得面无人色，极力想避免让他们再打一架，他有了个主意。尤弥尔尽管身怀绝技，但是他从未在真正的战斗中大显身手，没有在你死我活的战争混沌中证明自己。老板跟战士打了个赌：尽力寻找规模最大的战斗，不论所在阵营，获胜凯旋。赌注是？下一轮的酒钱。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/tusk_b'),
(3, 3, '瑞托崔普和狙击手以及修补匠属于同一个分布广泛的种族，和其他许多敏感的族人一样，瑞托崔普用他的智慧和一些小玩意弥补了体型上的矮小。作为一个钟表匠的孙子，瑞托崔普在这个行业当了很多年的学徒，直到战争从山的另一边席卷而来，摧毁了这个从事着与战斗无关的行业的无辜村庄。祖先传下来的村庄变成了满是焦火和黑烟的废墟，“你的新行业是战斗”他的父亲临死前留下这样一句话。这个可怜的生意人责备他的工具无法用于战斗，但瑞托崔普从不找借口。在村庄的废墟中埋葬了父亲后，瑞托崔普开始着手将他自己转变为前所未见的最强大的战争道具。他发誓永远不再毫无防备的被抓住，瑞托崔普用他的智慧装配了一套强大的发条动力装甲，这使其它大陆的骑士在他面前就像易拉罐般渺小。现在瑞托崔普全身充满各种装置，小而强大的战士，他埋伏和破坏的技术已经达到了几乎自动化的高效水平。这个死亡工匠的机械可以迅速干掉不够谨慎的敌人，在这个战争时代宣告了新的曙光。是时候让你们见识见识发条技师的厉害了！', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/clockw'),
(4, 4, '在毕生为战争、起义、暴动和革命服务后，军中名人奥雷尔终于感到厌倦了。退役时除了一些琐碎物品和一笔可观的退休金，这位前工程师还带走了一样很有意思的东西：一件被遗忘了很久的，未完成的旋翼飞机设计图，这将是世界上第一架有人驾驶的，不依靠魔力的飞行装置。退休后他身无旁物，只带着时间和资金来到灰烬群岛，在这片隐蔽的热带岛屿中着手制造他的飞行装置。随着时间一年年过去，原型机失败作的残骸越堆越多，他甚至开始怀疑依靠机械飞行是否真的可能。在退休后第十年的第一天，一个阳光明媚、南风微拂的午后。奥雷尔坐在他最后的试验机中，充满愤怒和此次也将失败的预料。拉动点火绳后，在引擎的咕哝声中他护起脑袋，等着和以往一样不可避免的爆炸。然而这次大大出乎他的意料，他开始升空了，经过一阵慌乱的调整和稳定操作。不到一个小时，他就乘着微风，与海鸥结伴同行，飞行的体验让奥雷尔惊讶得近乎窒息。黄昏临近，他设置了返回工作间的路线，但就在这时，他的旋翼机被一发飞来的炮弹击穿了尾翼。从坠毁的残骸中解脱后，他游向眼前最近的岛屿，咒骂着射出那发炮弹的船只要为此付出代价。几天后，奥雷尔回到了工作间，开始制造他的新飞行器，一种能装载许多危险的火箭和导弹的新型旋翼机。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/gyroco'),
(5, 5, '从虚无之境带给他的剧痛中逃离后，哈斯卡终于睁开了双眼，醒来的第一件事却是发现暗影牧师戴泽正在对他吟唱一个艰深的咒语。哈斯卡的灵魂从永恒虚无中被救了出来，这是违背了德��教团古老仪式的准则的，然而和其他去过虚无之境的人一样，哈斯卡也发现自己的身体被那里所彻底改变了。他不再怜悯凡人的肉体，他的生命之血成为了强大的力量源泉，每一滴鲜血都给他成倍的狂暴的、灼热的能量。然而，这一新生的天赋却激怒了哈斯卡，因为在拯救他逃离虚无之境时，戴泽拒绝让他进入神灵之地。他的自我牺牲也被拒绝。当教团的的长老们试图寻找一个扩大自己影响的方法时，他们一致认为哈斯卡将成为他们在战争中最可怕的武器。然而，成为教团的武器让哈斯卡更加愤怒，因为他们不仅利用他，还否定了他与生俱来的权利。于是在战争打响之际，他逃离了家乡，去寻找新的盟友，寻找那些值得他牺牲自己，释放强大力量的盟友。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/huskar'),
(6, 6, '永世的黑暗中，光之守护者的第一个太阳之光轻微闪过，这一束有自我意识的光线注定要在虚空里发光发热。亿万年里，这一束炫目的光芒逐渐聚集了无穷的能量，爆发成了一颗超新星。在这烈火之中，如同其起源一样的光线向四下散射，穿越黑暗的海洋，到达各个星座。很快，这些光芒也将成为超新星，以同样的形式向外传递着光和热。这种奇迹一般的生命与重生将一直持续到创世神鬼斧神工的苍穹之上被完全点亮。在这无尽的轮回中，被凡人们称作凤凰的星星坍塌成型，和其先前的光芒一样，凤凰也一头扎入无尽宇宙，在其邻近的星系中散布光能。经过长久的轮回，逐渐有了意识，开始了解万物，机缘巧合下听闻有一处地方，由于宇宙的横生变故进行着经年累月的战斗。因此众星的新生儿化成了生物形态，渴望在最黑暗的地方闪耀他的光和热。', '', '', '', ''),
(7, 7, '直到现在瑞兹拉克的脑海中仍然还萦绕着那尖叫声。他原来的工作是马不停蹄地转动扳手，扭紧螺丝，搭建模型，切割模具，锻造机器。睡眠离他而去；他终日都在制造机器的工作中度过。就这样，他把自己关在了他叔叔的工坊里。一晃数月过去，工作即将完成，他马上就能得到解放。一天，他抬了抬直掉的眼皮，站起来揉了揉背，看着窗外预兆湾那徐徐的波浪，上面竟飘来了满满的花朵，花朵开始爆裂，变成了花粉云团，直奔肺部而去，碰到的人纷纷倒地。他被呛地一激灵，睡意顿时一扫而空。之后几个小时工坊里尽是抑扬顿挫的磨刀声，他将一套巨大的刀刃磨得锃亮。他的脑海里满是邻居因窒息而死青筋暴起的惨状，被花树包围的房屋。但预兆湾的花潮相比潮水过后城墙外的哀鸿遍野就不值一提了。不过他眼里这套锯齿机器强大而富有安全感，他抱着这一丝希望，这样逐渐模糊的意识里才没有被恐惧全部占据。城市里遍地可见花枝和鲜血。在城市毁灭时，瑞兹拉克逃离了那些能够行走战斗还会杀人的花树。花树毁坏了城门，涌入城市。预兆湾最后召集的守卫也被他们肆意碾压践踏，寥寥无几的难民后面花树还在紧紧地追赶。虽然瑞兹拉克的头脑还是一片混沌，但是他静悄悄地从机器手臂里拽出一根巨大的链条，双手颤抖着检查了每个节点，用战栗的手指按了按链条末端的钢爪。这套锯齿机器已经就绪待命。\r\n\r\n他颤颤巍巍地用双手将这浑身带着刀刃的机器启动。恐惧，无论是萦绕已久的恐惧还是他接下来要面对的恐惧都在驱使着他，他还怀有让自己头脑冷静的希望。随着机器的震动开始运转，他知道他必须面对这恐惧，他也知道这恐惧他一点也不想要。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/timber'),
(8, 8, '嗜血狂魔史德利古尔是通过仪式严格甄选出的猎手，更准确的说，他是剥皮双子忠实的走狗，他从常年云雾缭绕的噬血之峰被派下去搜寻鲜血。剥皮双子需要海量的鲜血来获得满足和安抚，而如果当地的祭祀没能满足他们，他们就会抽干这个高原王国所有人民的鲜血。因此史德利古尔总是外出进行屠戮。他能榨取出血液之中的生命之力，然后这些能量通过他武器和护甲上的附魔标记立刻流向双子。多年以来，他一直是一条得力的走狗，在战斗时他像豺狼一样残暴。据说，在嗜血狂魔那涌动着对鲜血的渴望的面具之下，能够直视剥皮双子那可怖的嘴脸。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/bloods'),
(9, 9, '也许有人会问：“这个世界是如何形成的？”在所有现存世界中，为什么这个世界的属性如此奇特，如此多样化，其中的生物，文化和传说更是数不胜数呢？“答案，”有人低语道，“就在于巨神们。”\r\n\r\n这些原初的先祖在宇宙形成伊始就已在世——即使他们并非创世的见证，他们降世时耳中也是回荡着创世的巨响。带着宇宙原初力量的印记，他们最大的愿望是自己创世者的生涯能得到延续。所以他们转而承担了改造事物的任务：捶打、鼓风、加热、塑形，一切全凭意志。事物改造后如果失去了挑战性，他们就会提着工具转向自己，修正自己的思想，锻炼自己的灵魂，提高自身的忍耐力。现实本身就是他们锻造的终极目标。但是，在这样的过程中，他们有时也会犯错。在施展雄图大志时，错误总是不可避免。\r\n\r\n我们所知的上古巨神是伟大的创造者，他曾在创世的熔炉研习。在磨砺技艺时，他打碎了一样东西，无法修复、只能放弃的东西。他陷入了自己破碎的世界，这也是他自己破碎的灵魂。他 滞留所在的位面里全是参差不齐的碎片和漫山遍野的裂缝，还有其他从初生宇宙裂缝中散落的失落残片。这就解释了为什么众所周知的世界形似一座小岛，岛上尽是失事船只上的幸存者，现在这些落难之人早已在历史长河中被忘却。世人虽无记忆，但是自责的人除外。他将永世寻找方法去完成修复工作，寻找再次与他残破的灵魂结合的方法，寻找修复世人和世界的方法。这就是我们所知的上古巨神。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/elder_'),
(10, 10, '和傀儡以及石像鬼类似，撼地者也曾经是大地的一部分，但现在他自由地行走在地面上。不同于那些存在，撼地者自身的意志创造了他，他不需要服从于任何主人。在岩石深处不安宁的沉睡中，他感到了上方世界自由自在的生命的存在。他对此产生了好奇心。在一个地震多发的时期，尼西埃雪山摇动的山顶发生了雪崩，河流的流径改变了，浅浅的山谷变成了深不可测的深渊。大地停止震动后，撼地者从沉淀的灰土中走了出来，像脱下毯子一样抖落无数岩石。他幻化成他想象中的野兽的外形，并自称雷格石蹄。他现在流动着血液、呼吸着空气、也会死亡。但他的精神仍然与大地同在，他的力量在那根永不离身的魔力图腾中。当他回归尘土的那天，大地仍会欢迎这个浪子回家。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/earths'),
(11, 11, '以一团石头的形式出现的生命体，小小不断思索他的起源，但这始终是个谜。现在的他是个石巨人，但过去是什么呢？从土傀儡的脚后跟掉落的碎片？从制造石像鬼的工房被打扫出来的碎屑？神圣预言石的表层之砂？受到强烈的好奇心驱使，他不知疲倦的环游世界，寻找着他的起源，他的出身，和他的种族。在旅途中，他变得越来越庞大，不过路上的风雨吹打掉了他身上的石头，所以他不停的吸收新的岩石，永远在长大。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/tiny_b'),
(12, 12, '昆卡，铁帆海军的舰队统帅，在洪流恶魔现身于人类的土地时，担负起守卫他祖国诸岛的使命。恶魔经过多年的小规模突击后，他们的出击越来越大胆，也更具毁灭性，他们的舰队终于包围了战栗之岛。绝望之下，铁帆舰队的魔法师使用了自杀性的终极杀招，召唤了一群先祖灵魂来保护舰队。这刚好能够扭转与恶魔对峙的局势。昆卡看着他的战舰一艘接一艘被击沉的同时，他也很欣慰的看见先祖在慢慢消耗掉恶魔的舰队。但在战斗最激烈的时候，人类、恶魔、先祖灵魂的大战惹恼了沉睡在深海的第四股势力。残留不多的舰队旁喷出了高耸的海浪，深渊触手——麦尔朗恩在战场中出现了。他的触须在船只间移动，把人类和恶魔的舰船拖卷在一起，水和风被搅动成狂怒的混沌。没有人能说清那场严酷的风暴中到底发生了什么。洪流恶魔放弃了进攻，怒吼着逃入了虚空。而统帅昆卡的麾下只剩下一艘战舰，一艘不断重演它最终毁灭场面的幽灵船。然而谁都说不准他是否还活着。即使是麦尔朗恩的召唤者潮汐猎人，也不能确定。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/kunkka'),
(13, 13, '投身神圣的化学事业是黑酿家族的传统，但是年轻的拉泽尔无论是野心、创造力还是执着都可谓是前无古人。然而在他成年以后，他却将家族事业置之不顾，开始试着用炼金术制造黄金。如他大胆的名声所述，有一次他宣布要把一整座山全部变成金子。在浪费了二十年时间进行研究和准备后，他的炼金术在众人面前壮观地失败了，实验造成了大面积的破坏��很快他就被囚禁了。但是拉泽尔可不会向挫折屈服，他一直在寻找机会逃出去继续他的研究。当他的牢房来了一个凶猛的食人魔狱友后，他发现机会来了。说服食人魔不要吃他后，拉泽尔用牢房石地上生长的霉菌和苔藓为原料，仔细地调和着一种药酊，准备给食人魔服下。花了一周不到的时间，药酊似乎完成了。当食人魔喝下药剂后，它突然变得狂怒起来，像个无法阻挡的狂战士般，破坏了监狱的铁栏，冲破了墙壁和狱卒。很快他们就发现自己在城市外围的森林中迷路了，虽然留下了一路破坏的踪迹，但没有追兵的迹象。受到药剂后遗症的作用，食人魔显得很安详、快乐，也更热心了。决定合伙后，这对搭档再次出发去寻找拉泽尔炼金术试验所需要的材料。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/alchem'),
(14, 14, '长年以来，西姆瑞国的首席星官从位于狂徒山脉高耸顶峰的象牙孵巢引入他们的神谕者，他们先寄存初成的胚胎，待其长大成人，成为训练有素的先知后将被送还大铭王的门下。\r\n\r\n所有认定的神谕者均由一群苍白巫女抚养长大，他们的肉体形态并未离开我们大多数人所处的位面；而在同时，他们的灵魂在遥远的时空徜徉，几乎不受太空中其他星体的影响。先知们从宇宙漫游中归来后，他们的血肉之口中说出的话语全是火焰。这些神秘的言词将由西姆瑞的解命师们进行分析，从中找到未来的景象，与他国的外交对策，所有超自然军火的所在，确保大铭王的军队无论是在王庭中，还是战场上都能取得所有战斗的胜利。就这样过了数个世代，大铭书上写满了君王的胜仗和他们开辟的疆土。时光如梭，名为奈里夫的神谕者前来侍奉当朝的最后一位大铭王。\r\n\r\n从一开始，奈里夫的预言就与众不同。他的预言看起来不仅是预示未来，更是改造未来。这位怪异的预言家用低哑的嗓音说出了未来的外交对策，但并非回答解命师们关于敌国的提问，而在一夜之间，西姆瑞人发现自己与新的敌人产生了冲突。解命师们感到自己的权位受到了动摇，马上把这些不利的进展推到新来的神谕者身上。他们要求大铭王免去他的职位，并祈求巫女收回这个不擅预言的先知，再送来一位名符其实的神谕者。但是接下来就听奈里夫描述了一个不详的梦，梦见了孵巢的毁灭，而没多久就传来了古老的学院在雪崩灾难中湮灭的消息。解命师们害怕遇到苍白巫女一样的命运，急忙躲开神谕者的注意，逃到了他们的议事厅。\r\n\r\n不过，大铭王是极其注重实用性的人。他怀疑他的解命师只是因为过分胆小才得出这样的结论。他的道理是，既然有这样一位世间少见的神谕者，应该善加利用，扩张版图肯定能事半功倍。因此他将这些胆小的议臣全部降职，并把奈里夫提拔为左右手。尽管对奈里夫的天赋只是一知半解，他还是大胆地说出了他想要的结果，并劝诱奈里夫在预言中说出他的愿望。\r\n\r\n起初，一切都很顺利。末代大铭王吹嘘自己收养的是命运的宠物，命运已被他玩弄于股掌。在他准备入侵天欲国的领土时，他企图强迫神谕者为他做出胜利在望的预言，但是只听到奈里夫静静地咕哝着，“事情将朝着两个方向发展。”此外他从奈里夫的口中撬不出更加确凿的言语。他本应将此作为警示，但是他对自己的军队还是很有信心。天欲国地处内陆，军备落后，而且处于孤立无援的状态。他认为“事情将朝着两个方向发展”说的是他那强大的军队将会获胜，而对方只能战败。\r\n\r\n当然，现在我们就知道，他当时应', '', '', '', ''),
(15, 15, '关于赏金猎人刚铎，有很多真假难分的故事，唯一的共同点是，讲述这些故事的人都死了。在那些低语中，有的说他像工具一样被抛弃，为了生存而学习追踪术。另一种说法是他是战争中幸存的弃儿，被伟大的猎手索鲁克带走，并在阴暗的森林中教会他高超的猎人技巧。然而，另外一些人则相信他是贫民窟的捣蛋鬼，在一帮小偷扒手中混迹成人，擅长偷盗和误导。被刚铎追杀的人每次一提起他，恐惧就会剧增：他们说，那个追踪暴君伽夫多年，最后将其逼疯并杀死，割下其头颅拿走其权杖的人，就是刚铎。就是他，渗透进海西特反叛军营地，将传奇盗贼“白色海角”带回去接受审判。就是他，终结了猎手索鲁克的神话，让其为杀死王子的得力助手付出了代价。刚铎的传奇还在继续，每一个故事都比之前的更加不可思议，每一个猎物都比以前的更加难以捕杀。然而，只要出价够高，谁都无法躲开他；只要出价够高，即使是最强大的战士，想到刚铎，都会在阴影中颤抖。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/bounty'),
(16, 16, '多年来骑士达维安一直在追寻一条传说中的古龙，而他发现自己最终面对的敌��后感到失望：过去让人闻风丧胆的神龙斯莱瑞克已经变得苍老而脆弱，它的双翼已经残破，它所剩不多的龙鳞也开始腐烂，它的爪子变得肿大老化，它曾经引以为傲的火焰吐息现在威力和进水了的火柴差不多。达维安觉得这样的屠龙行径已经不能给他带来任何荣誉，转身就要离开，让他的老对手安息。但是他的脑海里传来了一个声音，斯莱瑞克低声的乞求着，让达维安允许它光荣的战死。达维安同意了，随即发现他的怜悯给他带来了意外的收获：当他将手中的锋刃刺入斯莱瑞克的胸膛时，神龙使出最后的力量用龙爪刺穿了他的喉咙，随着他们血液的融合，斯莱瑞克将它所有的力量随着血液赐予了达维安，也赐予了他数百年的智慧。龙的死去将他们的命运完全的绑定在了一起，龙骑士横空出世。古老的力量在龙骑士达维安的身体里沉睡着，应他的呼唤而复苏。或者，也许是神龙呼唤着骑士让他复苏...', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/dragon'),
(17, 17, '这是全无征兆的一天。石堂城的城墙里突然传来一阵轰隆隆的声响，一团黑色云雾出现，数不尽的魔兽大军从中奔涌而出，他们的魔火和邪术让所有人措手不及。城内的老弱妇孺纷纷惨遭毒手。曾经所向披靡的石堂城军队，古铜军团闻讯火速赶来响应。他们由未尝一败的指挥官特蕾丝汀带领军团开进城内，只见沿途的巷道溅满了鲜血，市集燃起了熊熊大火。士兵们从敌人中杀出一条血路，到达这次入侵的源头：石堂城的城市广场，虚无裂隙在其中央，旁边则是魔军骇人的首领。\r\n\r\n首领浑身笼罩着毁灭性的光芒，挥舞着一把大刀，他二话不说将一名士兵劈成了两半，只见尸首即刻开始腐烂。特蕾丝汀举起溅满鲜血的大刀，目光锁定在这怪物身上。他转过身来，对着她咧开嘴开始笑，牙齿乱得跟迷宫一般。他们全然不顾周遭的激烈战斗，向对方冲去。\r\n\r\n两人迅速缠斗在一起。每个招数都被对方挡下，两人的拼死决斗就如舞蹈一般行云流水，古铜军团的士兵则在他们周围一一倒下。特蕾丝汀见对手一刀向她劈来，她纵身一跃，跳到了敌人的身后。局势就此出现了逆转。敌人见状不妙，马上变招，劈砍变成横切，从侧面向她切去，这时她刚站稳，马上为之一振见招拆招。两刀相碰，特蕾丝汀顺势使劲，将刀柄下满是节瘤的敌爪斩下，场上顿时血光一片。其他魔兽见到如此场面早已惊呆，特蕾丝汀趁机发动强攻，将她的长刀刺进敌人的心脏。魔物一声仰天哀嚎，震散了天上的乌云，他在痛苦的扭曲中化成了滚滚淤血。深渊的门户开始颤栗，维系裂隙的力量就如突现一样消失的无影无踪。剩下的入侵者也很快倒在了石堂城的铁骑之下。\r\n\r\n尽管赢得了胜利，谁也没有心情庆祝：石堂城满目疮痍，伤亡无数。特蕾丝汀重新扬起战旗，召集了一群友军。她的愤怒随时都会爆发，誓要将深渊的魔物大军赶尽杀绝。谁敢作对，格杀勿论。', '', '', '', ''),
(18, 18, '风暴之灵，正如其名，是狂风和暴雨的野性凝成人形的自然之力。他狂放，乐天，恣意挥洒！就像个受人喜爱的大叔一样，他给所到之处充满欢乐的能量。但事实上，创造出他的是一起灾难。几个世代前，在悲叹山脉远处的平原上，很多人正因干旱和饥荒而挨饿。一个名叫风暴烈酒的元素使，使用禁忌的咒语召唤了风暴之灵，天真的向他祈求雨水。被称为雷神的暴风雨天神对这个凡人的放肆感到愤怒，打算用狂风和洪水把这片土地化为荒地。风暴烈酒完全不是天神的对手，直到最后他用了一个自杀性的咒语，将他和雷神的命运融在了一起，他用自己的身体作为牢笼捕获了雷神。被困在一起后，风暴烈酒那无限的幽默感与雷神疯狂的能量融合了，创造了乐天的雷神·风暴烈酒，一个以物质形态行于世间的天神。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/storm_'),
(19, 19, '水晶室女莉莱出生在一个气候温和的地区，与性子火爆的姐姐莉娜一起长大，她很快就发现她天生对冰元素的吸引力给周围所有人制造了麻烦。只要她在附近坐下休息，井水和山泉瞬间就会被冻住；成熟的庄稼被寒霜冻伤，果园变成了冰的迷宫，然后垮塌损毁。当他们无奈的父母把莉娜送到南方后，又把莉莱流放到了寒冷北方的冰川残骸，一个隐居在蓝心冰川顶峰的寒冰巫师收留了她。经过长期的学习后，巫师认为莉莱已经能够独立的修习冰冻魔法了，于是他便降入冰川内开始千年的冬眠。从那以后，莉莱的冰冻法术变的愈发精湛，而现在，她的魔法已无可匹敌。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/crysta'),
(20, 20, '修补匠鲍什的矮小种族以他们独有的智慧、狡猾以及敌视魔法而闻名。出于自傲，他们完全凭借自己的智慧生存，只通过理性的科学方法来合理利用自然的力量。然而，即使是对魔法如此严令禁止，也给他们带来了很多麻烦，这一点鲍什深有体会。作为曾经的自然法则首席研究员，修补匠鲍什在传说中薄雾缭绕的紫罗兰高原建立了一座地下实验室，在那里领导了大量对自然运作规律的研究。出于对魔法师们给世界带来的伤害的鄙夷，鲍什和他的修补匠助手带着高傲，打开了一扇传送门，门的另一端是一个超越了凡人认知能力的国度，于是他们自食恶果。黑色的薄���从紫罗兰高原的洞穴内升起，将高原覆盖在不断散发出恐怖声音的永恒黑暗中。机智的鲍什带着他的机关装置逃了出来，成了紫罗兰高原事故中唯一生还的修补匠。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/tinker'),
(21, 21, '罗斯塔出生于流血丘陵，这个当时正挨饿的年轻人结识了一个旅行中的骗子。只要给两枚铜钱，这个老骗子就会为你算命。给三个就会帮你阉猪，给五个还能帮你儿子做割礼。给一顿美餐，他就会穿上他的萨满装束，从他的古书里念出咒语，诅咒你的敌人。他身边那奇怪的年轻人，部分是丘陵巨魔血统，部分是...其它某些东西，作为他的助手，为他的把戏增添了一丝异国情调。总是在受骗的客人发现前开溜，总是甩开追捕他们的客人一座城镇的距离，两人艰苦跋涉穿越毁灭的大陆，直到有一天，骗子发现这个年轻人可以真的做出那些他一直假装在做的事情。他的守卫具有一种能力，一种会吸引客人的能力。于是年轻的罗斯塔就被推上了场，暗影萨满的艺名诞生了。两人继续在城镇之间旅行，用魔术赚钱的同时，暗影萨满的名声也越来越响亮。最终，两人行骗的过去暴露了，中了一群从前被他们诈骗的客人所设下的埋伏。老骗子被杀死了，罗斯塔第一次使用了他的黑暗力量，屠杀了攻击者。罗斯塔埋葬了他挚爱的主人，现在他用他的力量消灭任何企图伤害他的人。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/shadow'),
(22, 22, '无上的力量即为绝伦的美貌。美杜莎的心中一直靠着这样的想法得以慰藉——她在蛇发女妖三姐妹中年纪最小，也是海洋女神的女儿中最为可人的尤物——因为只有她跟姐妹们不一样，她是凡人。这反而救了她的命，那一天，一群蒙面之徒侵入了蛇发女妖居住的领域，将她两个不朽之身的姐姐从家里拖走，对她们的美貌还是泪水都无动于衷。其中一个入侵者也抓住了美杜莎，但是厌恶地看了一眼后就推向了一旁：“这女的散发着凡胎的臭味。我们可不要。”美杜莎受尽了凌辱，满腔愤懑地逃向了母亲所在的神庙，在女神面前哭诉自己的遭遇。“您拒绝赐予我永生—因此我乞求您，赐予我力量！有了力量我就可以去拯救姐姐们，为受到的不公复仇！”经过长时间的考虑，女神接受了她女儿的请求，美杜莎无与伦比的娇美相貌变成了象征着可怕力量的脸孔。但是她一刻也没有对自己的抉择后悔。她明白，睥睨万物才是值得拥有的美貌—这才是能够改变世界的力量。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/medusa'),
(23, 23, '在遥远的西方之外，预兆之谷远方的群山中，蕴藏着一股强大的古老力量，一股隐藏在树木中，令人敬畏的力量之源。据说生长在这片区域的物种都很奇特。对于自然之力而言，这是一片神圣的土地，不为世人所知。这片土地上有着各种致命的陷阱和危险——吞噬一切的杂草，各式杂交的动物以及充满剧毒的花——不过这些都远远比不上强大的树精卫士。这些长生不老，体型巨大的生物终其一生都在维护这片土地的安静，保证没人能够侵犯这里，没人能够知道他们的秘密。他们已经守护这片圣地长达千万年，与外界秋毫无犯，对世界的变迁也不甚了了。然而不可避免的，外界逐渐的注意到了这片未开化的土地，随着时间的推移，外面世界的入侵者也愈发大胆。他们很快就带着工具来砍伐焚烧这片土地，而树精卫士们则在思考，这些脆弱却勤劳的生物到底是什么？那原本绿色的原野现在变成了什么样？数万年的疑问和怀疑通通浮现，从上古时期流传下来的传统开始被他们重新审视，同时，越来越多外面世界的人死在了这片土地上，成为了花草的养分。当所有的生物都商议完毕以后，他们达成了一致，对外界的好奇终究战胜了保守和审慎。他们决定：向外界派出一名树精卫士，肩负着将外界情况传达给他们的使命，观察外面那个变化的世界以及其中的生命，最重要的是，监视那些有可能威胁到他们神圣领地的一切危险。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/treant'),
(24, 24, '几个世纪以来，育母蜘蛛布蕾克·艾拉齐娜一直潜伏在灼神山的火山口岩洞中，悉心的照料着数以百万计的幼虫，保证他们能够安全的存活到去地上世界捕食的年龄。直到后来，索罗普瑟斯，一个贪婪的权臣，在死火山的火山口修建了他的私人庙塔，因为他知道，就算有人觊觎他的财富，也不能活着穿越那条蜘蛛出没的死亡之路。在安享了几百年的安宁后，布蕾克·艾拉齐娜发现一些不速之客不停的在干扰着她的生活，毛手毛脚的小偷、有勇无谋的骑士，以及出生贵族的年轻人——诚然，他们都是美味的食物，但是他们的到来切实的影响到了她照料她那“无辜”的后代。忍无可忍之时，她去造访了索罗普瑟斯，而这个权臣却不愿意妥协，于是她用蛛丝将他裹起来，扔到一边，留给那些即将出生的小崽子们美味一顿。不幸的是，庙塔主人的失踪却让更多的人壮着胆子前来骚扰。而当她的一名新生儿被一个冒失的探险者踩死时，她终于爆发了。育母蜘蛛向着地上世界前进，誓要清洗掉世界上所有可能对她的孩子有威胁的入侵者，即使是英雄也不例外，直到确保她能够为她那珍贵的小蜘蛛们提供一个安全健康的温床。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/broodm'),
(25, 25, '作为秘湮学院禁断圣所的首席馆长和馆藏物主管，戴蒙·拉尼克不知疲倦地追求着那些罕见的失落的禁忌卷轴。无论被诅咒的寺庙有多禁忌，无论隐藏洞穴的路途有多危险，只要有谣传说那里藏着传说学识的原典，他就会不顾自己的安危进入这些危险的场所。然而，他经常在调查中惹怒各种守护者，这使他感到有必要掌握魔法。他将追寻古物时的执念用在了逼迫自己学习魔法上，最终他比大多数学徒都要快地完成了整个学业，在最短时间内成为了学院最强大的术士。后来他用恐惧之木雕刻了一根法杖，并在其中注入了一个他从异界之狱俘获的灵魂。因为期待着有一天能够复原所有的失落魔法书，他开始撰写自己的黑暗魔典。毫无疑问，这对他的黑暗魔法来说，意义非凡。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/warloc'),
(26, 26, '闪烁荒原的沙漠是有知觉的活物，它与自我对话，思考着只有这广阔的沙漠能包容的思想。当它必须要寻找一种和那些有限的存在交流的方式时，它解放了一块它的碎片，填入一块由狡猾的卡尔丁灯神创造的魔法甲壳中。这个存在称它自己为克里瑟历斯，意为“沙之魂”，不过世人都称他为沙王。沙王那巨大蛛形生物的外形源自闪烁荒地那些渺小但无处不及的居民，这身形真实地展示了他残忍的天性。沙王无法与赐予他生命的无限沙漠分开，他是这片沙漠的守卫者��战士、使节。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/sand_k'),
(27, 27, '作为一支精心呵护的传承血脉中第七代也是最后一代的成员，诺崇从小就被一个叫做风蚀之寒的古老组织抚养，为的是让他成为世界上技艺空前的大魔法师。他就是预言中那个天选者，两百年来，先人在配偶和繁衍时谨慎无比，积累了数代的优秀血统，就是要培养出一个能够为组织带来无上荣誉的战斗法师，同时，毁灭他们的死敌：教会骑士团。组织在哈扎达尔废墟旁的山上的一个隐秘营地中抚养着一群和诺崇一样年轻的法师，导师们一直在等着诺崇展现自己独特的天赋。然而，就当其他学徒都开始施展并提升自己的火系、冰系、变形系魔法的时候，诺崇仍然是沉默的坐在那里，其貌不扬，连变形术都不会。随着最终考核日的临近，他身上仍然一点魔力都没有。导师们厌恶地斥责了他，其他人则大声的嘲笑着。“你根本不是法师。”组织的领袖大声的宣布。然而，诺崇并没有灰溜溜的走掉。他进入了比赛场，俯视着那些嘲笑他的年轻法师们，随后，他让这些人以及他们的导师们明白了一个重要的道理：魔法之极，唯寂方至。诺崇将那些所谓的天才法师们一个接一个的沉默，让他们不得不和他近身搏斗，直到最后，赛场中站着的只有他一个人，正如预言所说，他是风蚀之寒的首席法师。随后，他走出群山，走进大陆，现在的他有一个全新的名字：沉默术士，一切魔法，遭遇了他，都将归于寂静。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/silenc'),
(28, 28, '除了水下住民，暗黑之礁很少为世人所知晓，这是座沉没之牢，关押的都是犯下滔天罪行的海洋生物。这座监牢外围装满了倒钩，里面充斥着心狠手辣的鱼人，狡猾歹毒的深海住民还有嗜杀同类的南海人。在这阴暗的迷宫中，鳗鱼四处巡逻，巨大的海葵担任着守卫的工作，在里面想不死就只能为恶。斯拉克被投入暗黑之礁的罪名已经不得而知，他在里面待的半生泯灭了亲情和良知，信任的只有自己，信奉的生存之道是鬼祟的行动和冷酷的心肠，他的脑海中不断酝酿自己的想法和计划。当臭名昭著的暗黑之礁十二恶棍密谋着越狱时，他们完美地将计划保密，发现蛛丝马迹的人都被他们杀害-但是他们的阴谋不知怎么的被斯拉克发现了，他在这计划中给自己找到了容身之地。越狱过程中十个恶棍遭到击毙，剩下两个被擒获，押回了暗黑之礁，作为那里犯人们的消遣活动被处以极刑。但是斯拉克，无名的第十三个越狱犯，利用暴乱作掩护逃之夭夭；永获自由。现在斯拉克隐居在紧靠影承废墟南部的食肉红树林灌丛中，迄今为止，他仍是唯一成功从暗黑之礁越狱的逃犯。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/slark_'),
(29, 29, '生于无信仰的哈扎达尔废墟，陈出生的年代正是那些沙漠中的游荡部落苦苦挣扎求生的时期。通过古老的动物奴役手段，陈的同胞们悉心的看护着沙漠中特有的掘地蜥，这是一种发育不良的掘地龙变种，能够将沙熔为集雨的玻璃管道——尽管两年才下一次雨。长期挣扎在饥荒和干旱的边缘，不停和周围的部落争斗，陈的部落做了一个错误的决定，在宿命注定的那一天，他们袭击了一个不该袭击的车队。在接下来的残酷战斗中，陈的部落完全处于下风。他们的袭击对象——全副武装的教会骑士，很快的清理掉了一大波攻击的掘地蜥。随着部落的神龙死去，族人们也接连被杀死。陈挣扎着，忍着刀伤，爬行着，几近死去。失败以后，他跪着准备接受充满羞辱的处决，引颈待戮。仲裁者被陈的勇气所打动，没有处死他。他给陈提供了一个选择：死亡还是转变信仰。陈开始执着的信仰神灵。他加入了教会，通过一次又一次血腥的改造，他逐渐赢得了自己的地位和武装。而现在，出于对改造他人信仰的狂热，力量达到巅峰的他，和他的动物奴役一起，寻找着那些无信仰之人，给予最终的“赏赐”。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/chen_b'),
(30, 30, '悲叹山脉中无人问津的角落里，有一座荒废已久的光火堡。堡内演武堂已经空无一人，校场里满是落叶和灰尘。门窗禁闭的光火殿里放着一口玉石大釜，装满了灰烬，这是当年战争诗人——炘的火葬之地。炘培养了整整三代卫火盟的弟子，从修身养性的真经，到强身健体的武艺，炘悉心教导在堡外闯荡所需的一切本领。然而，作为众多弟子的师傅，他也不得不对付弟子在外惹来的敌人。在炘的暮年，他不敌对手，惨遭兵解。堡内的弟子在此后也奔走各方。一晃之间，数十年乃至数百年转瞬而过，弟子们不断地开枝散叶，而他的教义在口口相传之下慢慢地消逝。后来燃烧天神，一位好学的火神，被他传承的师德所打动，下凡来到了光火堡，重新点燃了灰烬。闪耀的余烬之中，炘的脸庞慢慢浮现，火焰环绕之下他显得格外沉静。为了让知识之火得以燎原，为了让寻求指引的世人接受教导，他已准备就绪。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/ember_'),
(31, 31, '西部森林中隐藏了无数的秘密。其中之一就是受到风神眷顾的森林弓箭大师莱瑞蕾。风行者莱瑞蕾的家人在她出生那夜的暴风雨中全部去世了，狂风摧毁了他们的房屋，一切都化为乌有。只有还是婴儿的风行者在充满死亡和破坏的瓦屑中幸存了下来。暴风雨平静下来后，自然之风注意到了这个在草地中哭泣的幸运儿。风很怜悯这个孩子，便将她抬起，放到一户邻居的门前台阶上。之后的岁月里，风会时不时回来看下这个孩子的生活，从远处看着她磨练自己的技术。现在，经过多年的训练，风行者射出的箭矢百步穿杨。她迅捷的步伐让人难以看清，犹如背后有风在推动。风行者用飓风般的箭矢群杀戮敌人，她几乎已成为自然之力本身。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/windru'),
(32, 32, '在与囚尸岭南部遥遥相望的戮尽之地，一个肥胖的身影在夜晚不知疲倦地工作着——肢解、开膛、堆积死人的四肢和内脏，一切都是为了在黎明前把战场打扫干净。在这片被诅咒的地方，尸体不会腐烂和分解，虽然不会复活，但无论坟墓挖的有多深，它们都不会回归大地。屠夫帕吉的身边总是围绕着一群食腐鸟类，他为它们切好大小能够塞进鸟嘴的肉块，时间久了，他的技术也越来越成熟。嗖嗖嗖...嗖嗖嗖...唰...肉块就从骨头上掉下来，肌腱和韧带像湿纸一样被剥离。帕吉的兴趣在一开始只是屠宰，但时间一长，他对食尸也产生了兴趣。刚开始时只是这里吃一小块肉，那里小嗫一口血...但很快他就开始了自己的饕餮盛举，即使是躯干上最硬的部位他也像狗啃着骨头一样，津津有味地品尝。就算是面对死神都毫无惧色的猛士，看到屠夫，也是异常恐惧。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/pudge_'),
(33, 33, '恐怖利刃是恶魔中的掠夺者——这个无法无天的魔头就连恶魔都惧怕三分。他曾因对恶魔领主动了贼念，无视了所有规范他行为的基本法则，触犯了七度地狱的所有法规。他被好好上了一课：原来还有比地狱更可怕的地方。接下来是短暂又残酷的审问，最终他被打入了荒邪之狱，这是一个隐藏的位面，恶魔们将它们的同类囚禁在这里。荒邪之狱并不是普通的监狱，这是现实的暗黑镜像，恶魔经过判决都到这里来直视他们自身灵魂中的扭曲倒影。然而恐怖利刃不但没有受苦，反而将自身最邪恶的倒影转化成了操控自如的力量，并将他的恐怖全数释放。', '', '', '', ''),
(34, 34, '在矿工湾流传很广的冒险故事里，背负最多骂名的莫过于爆破工程师。然后，矿工湾就在人世间消失了。还有起重港。还有猎手镇。事实上，如果稍微研究一下爆破工程师的历史，不难发现工程师只要出现在哪个城镇，这个城镇不久就会不复存在。\r\n\r\n就跟工程师周围所有注定的灾难一样，矿工湾的消失是从一个发明开始的。爆破奇才斯奎、斯布林和斯布恩三人负责为地下矿井设计安全的引爆方式，他们发明了最为古怪的东西：一个按钮，摁下就能使远处的装置点燃引线。\r\n\r\n由于他们急于测试自己的发明，三人用火盐炸药装了一桶又一桶，狭小的工坊里每个角落都堆满了刚研发的遥控炸弹。他们胡乱从炸弹堆里扯出一桶，埋到一个离得很远的地方。接着他们躲进了附近的壕沟，蜷缩着瑟瑟发抖。斯布林按下了引爆的按钮。然而过了一会儿，什么也没发生。他非常困惑，站了起来，反复地摁下按钮，终于，地上炸出了一个洞。斯奎和斯布林顿时欣喜若狂，可正当他们转身时，工坊方向传来了巨大的能量声波，他们直接被震倒在地。\r\n\r\n出人意料的爆炸让他们耳鸣不已，也非常迷茫。他们走进灰暗的烟雾中，眼前只见工坊已经变成了冒烟的废墟。木材和石头一直在大块大块地掉落，前方的地洞越来越大，慢慢变成了一座深坑。整个矿工湾开始震颤，惊慌失措的居民四处奔逃，而城镇徐徐地滑入了地下矿井。而他们就坐在悬崖上，看着故乡沉没，三人张开嘴开始傻笑，也不在乎原来嘲笑他们的邻居是否注意到了他们。他们想知道的只有一件事情：这么强力的爆炸他们究竟是如何引发的？', '', '', '', ''),
(35, 35, '战士乌尔萨是熊怪部落最强大的一员，保护着他的家园和人民。在漫长的冬季，当女性族人在睡觉和照料后代时，男性则外出��逻，他们不知疲倦、保持警惕，按自古以来的传统守卫着部落。乌尔萨听见一些模糊但在增加的传言说有一股邪恶势力正在扩散，他便跑出了这个野性部族的边界线，希望追踪到这个邪恶势力并在它能危害到他的人民之前，就将其在源头摧毁。自豪的乌尔萨有着光明且强大的灵魂，他是个绝对值得信任的忠实战友和守卫者。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/ursa_b'),
(36, 36, '即使是在那些奇怪的魔法生物中，双头龙也算是一头怪物。同时拥有着冰火之力，狡黠且狂猛，被称为杰奇洛的双头龙在战场上空肆意的灼烧大地，冰封敌人，将胆敢和它对抗的任何事物变成废墟。灼霜龙族的窝中从来都是有两只幼龙。与生俱来的凶残使它们闻名于世，这一种族中，新孵化的幼龙在出生伊始就会努力的杀死自己的兄弟姐妹。强者生存。这就是灼霜龙族维系其强大力量的办法。在一次意外中，怪胎杰奇洛从一个龙蛋里孵化出来了，在这一头幼龙的身体里有着灼霜龙族所有的力量。在它那厚重的龙鳞内，蕴含着冰火之力，在这样的力量面前，随时可能丧命。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/jakiro'),
(37, 37, '斯温是一名守夜骑士的私生子，身怀苍白南海人的血统，在影承废墟长大。他父亲因为违背了守夜人法典而被处决，母亲又因为她的种族而被驱逐，这一切让斯温坚信所谓的社会法则中毫无荣誉可言——荣誉只存在于他心中。在照顾母亲走过弥留之际以后，他以新人的身份参加了守夜骑士团，并对自己的身份绝对保密。十三年来，他一直在他父亲当年的学校里学习，掌握那些仇视他出身的人所撰写的法则。接着，在他本该立誓成为守夜骑士的那天，他手持弃誓之刃，击碎神圣之盔，用守夜圣火烧毁了那所谓的法则。他大步流星的从守夜堡离开，注定了永世孤独，并向圣符起誓，只遵循他自己心中的法则。是的，他仍然是一名骑士，一名剑客，不过是...流浪剑客。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/sven_b'),
(38, 38, '就像许多伟大的诗人，傲洛斯只想用她的一生书写诗篇。可是寒冬飞龙在生活中不断受到干扰。古龙的史诗漫长而多彩，但是世上残存的龙族学者在有些人眼里不像他们的前辈那样博学，上个盛世之后，古龙的龙诗中只加入了寥寥数行。傲洛斯哀悼道，“生活之中，不应尽是制敌和赢敌，此点却被众人遗忘。我们必须穷己一生，追寻妙语隽言。”她开始着手探险研究，收集能激发灵感的书籍。不过这样的研究极大地分散了她的精力，用于写作的时间所剩无几。尽管她明白自己应当潜藏在巢穴中，为龙诗增添新的诗句，可她发现自己已陷入了一场史诗级战斗，面对着强大的敌人。她掠夺城堡，搜刮古代的图书馆...对于偶然得之的荣光，她告诉自己这仅仅是研究的一个副作用。事实上，由于她的技艺和力量在战场上过于神妙，她在学术上的努力并不为人称道。但是她不满足于撰写英雄的传说。她还想要去亲手缔造。', '', '', '', ''),
(39, 39, '卡洛克自出生伊始就被当做兽婴。他的母亲在他出生时就已死去；他的父亲是斯洛姆末代帝王的马蹄铁匠，在他五岁时被马群践踏致死。后来，卡洛克将自己卖到国王的动物园干活，在那里，他和宫廷里面饲养的狮子，猩猩，野鹿以及其他一些很少见的甚至传说中的野兽一起长大。在他七岁那年，一个冒险者带着一只没人见过的野兽来觐见国王。当这只野兽被国王的链条锁住的时候，它说话了，乞求自由，然而它的嘴并没有张开。国王大笑，命令野兽表演助兴，遭到拒绝以后，国王用他的疯狂权杖狠狠的抽打了野兽，并把它关在了兽栏里面。接下来的几个月里，卡洛克每天都给这个受伤的野兽偷偷的带去食物和药物，然而这一切只能减缓野兽的死亡。这只野兽和卡洛克开始了交流，无言的交流，他们之间的情感纽带也随着时间的推移而加深，最后卡洛克发现他竟然能够和宫廷动物园里面的所有动物交流。在那只野兽死去的晚上，卡洛克狂怒无比，他煽动了所有的动物一起反叛，并且将它们的笼子打开，在宫廷广场上大开杀戒。末代帝王在动乱中受伤。在混乱之中，一只皇家雄鹿在这个救了它的男孩面前屈膝，让他以兽王的身份骑上它，带他跃过了堡垒的高墙，逃出生天。现在，兽王卡洛克已经成长为一个男子汉，并且仍然能够自由的和野生动物交谈。他已经成为了拥有自然狂猛野性的战士。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/beastm'),
(40, 40, '一个高傲且强横的种族中的一员，先兆者，徘徊于虚空裂隙，他是整个世界与创世深渊之间唯一的卫士。在这充斥着星体残片的殁境中，他凝视着天穹，警觉的提防着繁星之外那无底深渊中的任何骚动。在他非凡的智慧中，深藏着对先兆的敏锐洞察力和强烈共鸣，他心中那曲黑暗的协奏曲暗示着：总有一天，在这深渊之中，在那造化之外，会有某种东西醒来，并且注意到我们的世界。由于太专注于监视星体，殁境神蚀者对太阳附近的事件并不关心。然而，随着遗迹发出战争的召唤，随着心中那潜在的危机感不断扩大，殁境神蚀者展开双翼，向着我们的世界飞来。在预言中，先兆者的地位不言而喻：他的出现即是灾厄的征兆。何况，他已然亲临。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/outwor'),
(41, 41, '“对我而言，生活就是你所知和所能发现的一切。当你住在裂影荒墟时，想要找到食物并不是一件容易的事。因此，你需要走捷径，你需要会忽悠，你需要对自己的能力充分了解。有些野兽能够杀掉你，那么你就需要躲开强壮的，捕杀弱小的。在荒墟之上，有过一段往事，一段对某些人意义重大的往事。曾经那里有个宫殿，他们在宫殿里面举行黑暗的仪式，非常邪恶。如果你从仪式中幸存下来，他们还会以击碎水晶的方式将你的灵魂撕裂成碎片。不过他们的艺术成就也很高，比如雕塑之类的。记住这点：如果你在某个时候发现了这些雕塑，一定把他们全拿到市场上去卖掉，然后你接下来的一周都不会饿肚子。如果你走运的话，你可能会发现影墟水晶，那赶紧找人帮你估价，多问问，总有人能帮你找到需要这玩意的疯子买主的。就算别人都不要，你也可以卖给城里的魔导师，他们喜欢这玩意。不过，不管你怎么做，一定要小心这些水晶，这玩意要是在你身上炸开，可是很疼的。”', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/meepo_'),
(42, 42, '一个暴虐凶残的巫师捕获了蝮蛇，希望驯服它作为自己的凶狠宠物，好奇的蝮蛇很乐意被带离那封闭不化的三途川，那是一块在地壳滑移中被封闭的幽冥龙穴，它的种族在那里已经居住了成千上万年。蝮蛇一开始还试着花时间来理解并服从巫师的命令，希望能学到他最高超的黑暗魔法。但它很快就发现，没有多少咒语比它与生俱来的毒液更致命。蝮蛇流出的酸液很快就腐蚀掉了它笼子上的铁柱，冥界亚龙挣脱出了巫师的囚禁，将它的毒液喷在了老巫师眼睛里杀死了它，蝮蛇翱翔在空中，向世��宣告它的来临。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/viper_'),
(43, 43, '出生于皇室，带有高贵血统的公主米拉娜，在她即将登上太阳王座时，欣然放弃了所有对国土的世俗权力，将自身完全奉献给了月之女神赛莉蒙妮。从那以后米拉娜就作为众所周知的月之公主，巡回在银夜森林，搜索那些从月之女神保护地中的银色水池偷取夜光莲花的大胆之徒。米拉娜骑着她庞大的猫科伙伴，沉着、自豪且无畏，调和于月相和星座旋转。她的弓上镶嵌的月之矿石吸收月光之力，为她的光之箭矢充入能量。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/mirana'),
(44, 44, '在帕格纳的出生之境，三途川的发源地附近耸立着一座专门研究湮灭术的喇嘛寺，这座寺庙直接从河中汲取冥界的能量。寺庙的上师几年之前湮灭了自己，留下一个无人管理的学院。在上师归西的同时，寺庙摄政者们就开始举行一个占卜仪式，来确定他们师傅的转世。最终，所有标记都指向了紧挨他们的邻居。数个村庄坐落在寺庙的影子下，小巷与广场充满了孩童们的笑骂声。帕格纳，一个仅仅13个月大的幼儿，成为了当地的候选者之一，并且在提名日，他与另外两名幼儿被寺庙选中。喇嘛们给了他们一大堆前任上师用过的珍贵宝物。一个男孩伸手抓出一根原本属于喇嘛的斑岩手杖……然后把它插到他鼻孔里。一个调皮的女孩拉出一个原本也属于喇嘛的护符，然后立刻吞掉了。帕格纳冷静地注视着另外两人，愉快地笑了一下，接着用一团翠绿的火焰把他们烧成了灰。然后他从灰烬中夺回了手杖和护符，说到：“这些是我的！”摄政者们立刻将喜气洋洋的帕格纳架在肩上，给他套上了上师的法衣，在他心情变化前急忙把他抬上了宝座。五年内，这座庙宇本身成为了另一堆灰烬，让帕格纳愉悦不止。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/pugna_'),
(45, 45, '每一个德尊教团的年轻侍僧在成为暗影牧师前都必须完成一系列的仪式。而仪式的最后一步，则是穿越无比危险的虚无之境，一个只有少数人能活着回来的未知领域。有些人虽然回来了，但却发疯了。还有些回来的人获得了奇怪的能力。但可以肯定的是，所有去了那里的人都被改变了。出于对神圣启示的执着追求，戴泽成为了他部族中最年轻的神圣仪式的追求者。起初，教团拒绝了他，因为他太年轻了。然而戴泽不是那么容易放弃的。教团长老在这位顽固的年轻侍僧身上感到了一些特别的东西，便宽许他进入了教团。最终仪式时，戴泽将神圣药剂一饮而尽后在篝火旁坐下，而他的族人则在一旁跳着祭祀之舞。在虚无之境的虚灵位面中，光明与黑暗的属性被反转了。导致戴泽原本灿烂夺目的治疗之光演变成了包藏凶险的邪恶力量，在那夺目的光辉中隐藏的则是黑暗的行径。不出长老所料：戴泽回来了，成为了一名不世出的暗影牧师，他获得了既可以用来治疗也可以进行破坏的能力。现在，他用他的力量消灭敌人，治愈同伴。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/dazzle'),
(46, 46, '在流血丘陵的底部，蔓延着一片庞大的森林——霍文林地，在那里，有着数个幽暗的湖泊，汇集着丘陵上渗透下来的死血。萨瑟雷克斯，王之魔法师，用他的仁慈统治着这片土地。他手下最为忠心的，霍文林地的誓约守护者，克林克兹，是一名技艺精湛的弓箭手。在王之魔法师统治的第三百年，来自第六狱的恶魔莫拉克希出现了，声称要占领这片森林。作为反击，王之魔法师降下了一个牢不可破的咒语：任何打败恶魔的人，都能获得无尽的生命。克林克兹在对咒语一无所知的情况下，毅然加入到了对莫拉格斯的战斗中，保护他的土地免遭恶魔的屠戮。逐渐的，克林克兹将莫拉格斯驱逐到了第六狱的传送门前，在那里与其进行了殊死的决斗。双双重伤的情况下，恶魔竭尽生命之力放出了地狱之火，而克林克兹也射出了自己的最后一箭。在箭矢射中恶魔并将其杀死的同时，地狱之火也在大地上蔓延开来，眼看克林克兹就要被活活烧死。然而，就在弓箭手燃烧的时候，王之魔法师的咒语生效了，让他以这种邪恶的形态活了下来。现在，克林克兹肉体已失，生命被禁锢在死亡的契约之中，只留下灼热的骷髅和无尽的怒气。他永不停止的呼吸中，充斥着地狱的灼热。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/clinkz'),
(47, 47, '在那些能够直接进入现实世界肆虐的强大恶魔中，末日使者几乎不理会那些低等物种的琐事，影魔来到世间只是为了他的灵魂收集。而暗影恶魔则一向对这个世界有着浓厚的兴趣，他似乎觉察到对两个世界之间坚定联系的掌握可能是统治整个物质世界的关键所在。一开始，暗影恶魔是被一些低级巫师召唤的，他满足了他们所有的愿望，展现出惊人的法力，直到一些高级恶魔学家注意到他的存在，进而一些试图通过巫术来维持他们世俗统治的暴君、独裁者们也开始利用他的恶魔之力。暗影恶魔的欺诈之术高明至极，以至于那些召唤他的人都认为自己是主人，暗影恶魔只是他们的奴仆；而就在同时，暗影恶魔不停地吞噬着他们的神智，并为己所用。到了最后，那些召唤过他的人，都成了他的傀儡，为他那邪恶的意志卖命。没人能猜到暗影恶魔下一步究竟想要做什么，然而就在那时，影魔偶然间吞噬了一个充满着恶臭的灵魂，发现里面竟然有着暗影恶魔的痕迹。在意识到暗影恶魔即将对他们的统治造成威胁，依靠阴影契约维持的古老的平衡已经不复存在以后，末日使者和影魔立���加入到摧毁暗影恶魔傀儡大军的力量中。在他们那不可思议的力量面前，暗影恶魔几百年的精心谋划毁于一旦，他的傀儡大军也遭到瓦解——所有人都被杀死了。到最后，只有他自己的一点碎片残留了下来。然而，即使是一点碎片，也足以让他卷土重来。在接下来的几百年里，他开始缓慢的重新凝聚。他的碎片将触碰到的一切事物感染，而这种感染则逐渐滋生壮大。那些以前被撕裂的，现在被感染的部分通过一片混沌结合在一起，重新连接，给予了暗影恶魔一个比以前更加强大的形态。他几乎已经凝聚完成，而他那永久统治世界的计划也更加的周密。虽然我们的世界似乎不可能出现一个如此邪恶和恶毒的存在，这将是对所有生命的巨大威胁……然而，暗影恶魔的信徒，依然众多。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/shadow'),
(48, 48, '相传半人马所到之处，尸横遍野。对于名为战行者的半人马，这场面的确相当壮观。外界谣传，这杜鲁德大草原的四足部落里都是头脑简单，性格残暴的生物。他们虽有语言，但无文字；他们的文化没有图画记录，成型音乐，或是正式宗教。半人马认为，战斗是思想的完美阐释，自身实力的最高体现。如果杀戮是半人马部落中的艺术，那么战行者布拉德瓦登就是其中最伟大的艺术家。他获得主宰部落的地位��在古老的欧梅克斯竞技场，半人马部族千年以来聚集于此，行使他们格斗的权利。随着他声名远扬，不少观众都是不远千里前来目睹这名半人马的雄伟风姿。他总是第一个踏入竞技场，最后一个离开，在血肉横飞、刀光剑影中谱写着战斗的巨著。这是鲜血与钢铁织就的诗篇，飘扬在杀戮场上扬起的尘埃中。赛上暗淡的沙尘间看到的只有挥舞得眼花缭乱的兵器。\r\n\r\n战行者将挑战者一个接一个地击败，直到竞技场里欢腾着他的名字，作为部族里无与匹敌的冠军，他感到异常孤独。他被授予竞技场的巨大腰带，系在他伟岸的身躯上。但是这死亡艺术家在他的胜利中只感到空虚。没有挑战的战士还有什么意义？那天强大的半人马就这样带着全新的目标奔出了欧梅克斯竞技场。在他的族人中，战行者是踏入竞技场中最为强大的战士。现在他要证明，自己是有史以来最为强大的斗士。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/centau'),
(49, 49, '暗夜魔王巴拉那的过去无人知晓，流传的只有一些道听途说的野史轶闻。在每一个种族，每一个文明中，都流传着一段古老的传说：在被称为永夜的那段时间，黑夜笼罩，大地被一群黑暗生物——暗夜魔王那样的黑暗生物所统治的传说。据说，在日出之日的黎明，所有的夜行生物都灭亡了。所有的，除了他。他是邪恶的化身，他对自己的凶残十分满意，他是所有黑暗恐惧的源头，他是夜魔，他是吓唬小孩子故事里面永恒的幽灵。而他自己最满意的角色并不是那些传说中虚构的种种。他的确喜欢猎杀那些粗心大意的，毫无防备的，胆敢不顾他们朋友劝告而去阳光无法照耀到的路上行走的冒失鬼。暗夜魔王的存在，就是为了告诉世界，你们的噩梦...都是真的。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/night_'),
(50, 50, '普通食人魔的愚蠢正是一句俗话“蠢的像一袋石头一样”所形容的。在自然状况下，一只食人魔完全没有能力做任何事或下决定。他们不仅邋遢至极，有时一只食人魔还会发现自己吃完一头动物后居然被困在它的皮囊里。食人魔并非社会性生物，经常有人发现他们大岩石或者树桩亲昵的依偎在一起，显然是将这些东西错认成了他们的同类（这也许可以解释食人魔的低繁殖率）。然而，每一世代的食人魔中，都会诞生一只双头的食人魔魔法师，一出生就会立刻被授予传统名字：阿格隆·碎石者，这个名字属于它们种族历史上第一个以及或许是每一世代中唯一有智慧的食人魔。有两个脑袋的食人魔魔法师发现他可以比其他只有一个脑袋的生物更高效的行事。尽管食人魔魔法师无法赢得任何辩论（即使和它自己），但它天生就属于傻人有傻福，这命运中的意外收获让这个无法供养自己的种族在敌人的威胁和恶劣的天气下能繁荣起来。就好像是幸运女神对这个平均智商低下的种族的特别眷顾一样，她赐予了他们食人魔法师。她还能怎样呢？真是可怜的家伙们。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/ogre_m'),
(51, 51, '杰尔拉克山的铸造大师们只对一件事达成了共识：半人犀牛的角比任何合金都要珍贵。而这些角中，形状最大、最为锋利的角属于被称作马格纳斯的野兽。在半个世代以来，马格纳斯的运动就是用角冲撞那些前来猎取他同胞的猎人。每次他回到洞穴，蹄上和角上都是血迹斑斑，直到族里的女族长要求他和他的族人在山脉阴影之 外的北边寻找避难的居所，但是马格纳斯对此嗤之以鼻，他从未在守卫族人时倒下。他决定，半人犀牛将留在这个地方，因为他们从不相信侥幸...抑或是改变自己的 主意。但是在杰尔拉克山毫无预兆地喷发时，他一半的族人都消失在烈火和烟尘中，马格纳斯终究还是改变了想法。幸存的族人开始向北边进发，结果遇到了由上百 名装备着铁甲和弓箭的猎人组成的封锁线。马格纳斯不希望族人有伤亡，他率领着最为勇猛的兄弟姐妹向敌人发起冲锋，战斗中透着的那股狠劲儿只有他身后冒着熊熊烈火的火山才能相提并论。与此同时族里的老弱妇孺纷纷消失在战场的沙尘中。对于之后发生的故事铸造大师们众说纷纭。有人说他统一了他的族人，而其他人则 声称他受了致命伤，倒在了女族长的身旁憾然离世。这些说法都不正确。他的确发誓要使族人重聚...但是要在找到使杰尔拉克山喷发的罪魁祸首，看着他们在自己的角上死去之后，因为半人犀牛从不相信侥幸或偶然。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/magnus'),
(52, 52, '和所有强大的能量都喜欢欺凌弱小一样，被称为墨丘利的幽鬼也是一个拥有着强横能量的存在，同样的，她对现实世界中的冲突和纷争无比着迷。然而她平时的幽鬼形态超越了常人的感知范围，因此每当她以实体形态出现时，她不得不损失一部分自我能量——尽管她也不愿意。在战斗中，她的自我意识逐渐散落并重新聚合，她也开始有了意识。她意识到了自己是幽鬼墨丘利——其他所有的鬼影都只是她自我的阴影。出于重新凝聚的打算，她开始专注，她的心智也在不断的成熟。只有等到她取得胜利或者彻底失败时，她那超物质的形态才会得以重聚。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/spectr'),
(53, 53, '500年来，他被一座大山压得动弹不得，露在外面的只有头颅。这座石头打造的监牢是由古神降下，为的是镇压他不成熟的暴乱。苔藓开始顺着他脸上的纹路生长，青草从他耳朵里萌发；慢慢地，他的双眼只能看到脸颊旁的土壤里长出的野花。大多数人都以为，与天庭诸神决战后他已不堪凌虐而消亡，流传的只有他的传说。但是，跟故事里一样，齐天大圣是不死之身。\r\n他一直在等待。直到诸神前来，给了他一个改过的机会。他忍住了。诸神道出了重获自由的条件时，他接受了他们的任务：护送一名年轻的僧人踏上朝圣之路，一路上保护他不受邪魔外道所侵，并且助他带回价值连城的圣物。同时，为这个神圣的任务虚心接受凡人的调遣，这样才能证明自己的改过。\r\n为了寻求改变，悟空向诸神实现了他的誓言，救赎了昔日反叛的罪孽。僧人在历经多番苦难后带着圣物安然返回了故土；而孙悟空——发现自己第一次可以与众神平起平坐——愿意一时放弃对冒险和荣耀的渴望。但是齐天大圣生性不喜清静...而得罪众神也绝不无聊。', '', '', '', ''),
(54, 54, '巫妖生前是一位叫艾斯瑞安的冰霜法师，他曾经威胁要带来毁灭性的冰霜，企图征服整个王国。终于，那些平民在几个绝望的魔法师的帮助下，终于鼓起了勇气去暗算他。他们用一些具有足够魔力的绳索把他永远束缚住了，被绑上了厚重的石头后，这个冰霜巫师被扔进了一个据说深不见底的湖泊。但其实不然。他只下沉了一年左右，绳索挂在了一个石头上。在那里他平静地死去，虽然死了但并没有腐烂，直到风水师安希尔前来核查被认为是无底湖的黑暗之湖的传说。安希尔放下的铅垂线与绑住被淹死的巫师的绳索缠在了一起，于是他拉上了意外的收获。他认为将死者转变为不死族后，便可以向巫妖询问这个湖的情况，他移除了捆绑巫妖的绳索并进行了简单的转生仪式。由于艾斯瑞安的故事已经被时间所抹去，就算是当年杀死他的人的后代也不再记得，所以当时没有人能对安希尔的鲁莽行为做出警告。不过紧接着，安希尔就尝到了苦果，巫妖一摆脱绳索的束缚，就将他吞噬。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/lich_b'),
(55, 55, '他的烈焰永不熄灭，他的吞食永远得不到满足，他的杀戮无人能够制裁——路西法带给他的敌人的只有末日。手持燃焰魔剑，掠夺生灵魂魄，他是堕落使者，曾是暗之国度备受敬畏的将军，却因蔑视之罪而被放逐——他拒绝向任何人下跪。佤什昂多的丧钟六次为他敲响。他的翅膀受到六十六次烙印之刑，直到只剩下烧焦的残翼。失去双翼之后，他尖叫着坠向大地。落到了沙漠中的一个火山口，失落的乐园。现在他出招毫不留情，也无需理由，在七片黑暗领土上，只有他能自由行动。受到无法摆脱的欲望束缚，被难以想象的天赋所扭曲，末日使者所到之处既是地狱。蔑视世间一切。最终，世界将归于末日。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/doom_b'),
(56, 56, '力丸是伟大的塔林王朝的二皇子。他有一个将会继承王位的兄长，还有一个受到百般照顾的弟弟，而作为二子的力丸，则似乎生来就是隐形人。他自己很注意培养这一项特殊才能，在一个晚上，国家被叛徒所颠覆，他的家人被屠杀，只有力丸因为隐身技能活了下来。矮小而敏捷的力丸用烟雾做掩护，无比谨慎的逃离了，他也是唯一逃脱的皇族。善于突袭的他杀出了皇家庭院，无声地切开一个又一个敌人的喉咙。不再背负皇室治国之责以后，力丸开始运用他的天赋以谋生，他成为了一名隐形刺客。现在他于无声中将敌人杀死，不断精进自己的技术，期望有一天可以能够手刃那些杀死他家人，夺走他国家的叛徒。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/riki_b'),
(57, 57, '几个世纪以来，在悲叹山脉的深处，在废弃之都底部的避世村庄里，古老的奥尤社一直在进行他们神圣的沉思，通过在盛大的节日时喝醉来达到与魂灵的深度交流。曼吉克斯，神与凡人的孩子，是村中第一个拥有神之天赋，凡人之精气的天纵之才。他从小就与社中最伟大的学者一同学习，并最终通过不停的努力，获得了挑战酒仙——族群中最受尊敬的称号——的权利。\r\n酒仙之战是饮酒和搏斗同时进行，连续九天，曼吉克斯都在不停的豪饮并且和上一任酒仙搏斗。到了晚上，他们则都是站立不稳，步履蹒跚的打斗，直到上一任酒仙终于一醉不起，曼吉克斯成为了新的酒仙。如今，年轻的新任酒仙召唤了奥尤社祖先之力，使整个族群更加迅猛。当他使用魔法的时候，他就变身为祖先的模样。正如之前的所有酒仙一样，曼吉克斯也踏上了自己的征途，向着唯一的目标前进。他走遍大陆，以酒启迪心灵，找寻着古老的族群分裂的原因——同时寻找着能够将精神和物质位面重新结合起来的方法。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/brewma'),
(58, 58, '秀逗魔导士莉娜和她妹妹水晶室女莉莱从小就合不来，她们从童年开始就你来我往的争斗成为了当地人津津乐道的传奇故事。莉娜总是占上风，如果说水晶室女的天性纯良而诚实，那么莉娜则是火爆中带着放纵和聪慧。在两人分别用冰和火毁掉了一大半房子以后，她们气急败坏的父母终于意识到两人必须分开。作为姐姐，莉娜被送到了遥远的南方，纷争之国的燃烧沙漠，和她有耐心的姑妈一起生活，这里的气候对这位火爆的魔导士来说其实更舒服。她的到来让一潭死水的当地泛起了不小的涟漪，许多男人试图追求她，最后却拖着烧焦的手指头或者只剩半边的眉毛以及被摧毁的自信心狼狈离开。莉娜非常自信且骄傲，没有任何事物能抑制她的火焰。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/lina_b'),
(59, 59, '从外表上看，爱由莎就像是一个天真无忧的森林精灵，尽管的确如此，但这也不是对她最为完整的评价。她对自然所遭受的苦难感同身受。她曾跋山涉水，穿越过斑驳的森林，走过四季变换，结识新的朋友，分享新的见闻，为她所到之处带去自然的治愈和欢乐的笑容。因为在那些饱受战乱折磨的地区，森林被大规模的砍伐，用作造船以及制造攻城车；而即使是在和平地区，也有人因为建造房屋而砍伐森林，为添加灶火而毁坏树木。爱由莎从森林中的小精灵处听闻了这些事情，这些小家伙需要森林的荫蔽来繁衍。她耐心的倾听着那些苦于无法倾诉的人诉说着痛苦，坚信自己的鼓励也是一种魅力，一种能够让未来再次充满绿色的魅之魔力。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/enchan'),
(60, 60, '裂魂人巴拉森来自元素领域，他高傲、强大、凶猛且精通元素之力，来到物质世界参与那些会影响到元素世界的事件。为此他准备了一个能派上用处的形态，既存在于我们的物质世界，又存在于物质世界之外。他的物理形态来自于我们的物质世界，又像牛又像人，有蹄和手，这个外表象征着他的力量、速度与狡猾。他戴着的鼻环则暗示了他侍奉于一位藏在幕后的主人，而这个世界对他来说不过是元素世界的影子。', '', '', '', ''),
(61, 61, '卡尔德，远古冰魄，是时光之外的冰冷投影。他来自寒冷的无尽虚空，目睹宇宙诞生，见证宇宙终结。卡尔德是夕在，今在，永在的无上力量...我们的所有认知，所有自认为强大的事物，在永恒的卡尔德看来，不过是最细微最无力的附和。世间有这样的传言，随着宇宙的老化并走向衰亡，卡尔德的力量和光芒也将变得更强——远古冰魄将更加年轻，更加强大。他对冰霜的控制能够冻结一切事物，他的投影放出的光芒异常夺目。他将不再是魂魄，而是神！', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/ancien'),
(62, 62, '在鱼人卫士团的誓言中，有一句誓词最广为流传：鱼人永不败。事实上，这句话既是誓词，又是命令，所有失败的人都已经被放逐。鱼人族内不容败者。司里希丝曾经是她族群内最受尊敬的战士，多年来她一直指挥着一支军队，她最强力的武器就是她那让人畏惧的声音。强大，婉转，难以捉摸，她一直用她这一致命武器守卫着深海住民以及沉没之城中的财富。然而在克雷之役的最后一战中，面对着一帮想给他们的深渊之神献上财宝的狂热深海巨怪，她的军队节节败退。费尽千辛万苦抵御住攻击后，他们开始清理战场，却发现宝藏中镶嵌着珠宝的圣杯不见了。她的百人队中只有寥寥数人活了下来，然而同胞们的勇敢和牺牲却无关紧要了。重要的是他们的珍宝不翼而飞。他们的荣誉消散殆尽。娜迦海妖就这样遭到流放，她被放逐去寻回失窃的圣杯。不管她能够做出多少倍的补偿，她也注定不会被原谅，除非她带回了失窃的宝藏。她所失去的荣耀，千金难抵。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/naga_s'),
(63, 63, '早在有史可考的年代之前，德鲁伊巨熊部落就已经形成。他们天生就是智者，专注于探索和理解自然秩序。自然之力注意到了他们，并找到了他们中最有学识的一位，睿智的老悉拉，巨熊部落的先知和仲裁者，脱颖而出。它走到悉拉面前，将生命之种交给了他，并且告诉他：“当世界变得昏暗，当文明不再繁荣，当荒漠延伸到世界的尽头，那就种下这粒种子。”获得了自然之力的信任以后，悉拉感到自己的活力又回来了，岁月的痕迹也消失无踪，他原本渊博的学识更加广袤。同时，他发现自己能够将自己的意愿变成现���，甚至，在专注的情况下，能够改变自己的物质形态。然而，关于生命之种的谣言却给他的部落和人民带来了灾难，恐怖的战争席卷了整个部落，将其毁于一旦。家园被毁，悉拉带着自己的责任，逃到了荒野。随着时间的流逝，巨熊部落以及生命之种的故事已经在岁月长河中被人遗忘。几万年来，悉拉一直在等待，等待神谕，等待永世争斗的结束，等待他流浪宿命的终结，等待他神圣使命的实现，同时准备着消灭那些敢于阻挠他的事物。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/lone_d'),
(64, 64, '卡德尔·鹰眼出生在诺伦山脉的山谷中，这里的住民从太古以来就靠猎杀居住在村庄上方悬崖上的一种奇怪生物为生，他们从远距离杀死这种叫峭壁潜行兽的生物，然后收集他们掉下来的尸体。鹰眼是这些怪异住民中其中最棒的射手之一，对他来说，枪械是他身体的一部分，射击就和触摸一样自然。在征召之日，他即将在村庄中获得完全的地位时，他经历了古老的考验：从谷底一击射下一头悬崖上的潜行兽。打空则是耻辱。在全体村民的注视下，鹰眼射击了。一头潜行兽掉下来了；人群欢呼了。但当尸体被收起时，整个村子都沉默了，长老发现子弹穿过了潜行兽中间的眼睛后，紧紧的卡在了它的下颚骨中。这个凶兆正是黑暗预言的开端所描述的，按预言中所说，射出这发子弹的枪手将成为伟大的人，但也将被流放。狙击手鹰眼因此离开了他的人民，被他自己的技术所诅咒，在剩下的预言实现前不得回来，他必须成为战场上的传说。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/sniper'),
(65, 65, '作为一名被上千个世界中无数战斗洗礼过的战斗大师，混沌骑士来自一个遥远的上层位面，在那里，宇宙的基本法则都能被直接感知到。在所有的法则中，混沌是最古老且最不知疲倦的——永无休止的搜寻着被他称为“光”的存在。很久以前,“光”违抗初始之契约离开了起源的世界，在其他世界开始了他的旅途。现在混沌骑士在一个个位面之间穿梭，无论到哪里，他永远都在搜寻然后抹杀“光”的存在 ，将其无数次的抹杀，然后进入下一个位面继续他的搜索。带着自己的铁甲战马“天劫”，带着疯狂的暴怒冲进战场，从宇宙的混乱中吸取力量。他就是混沌在物理位面的化身，并在有需要的时候他会召唤其他位面的自己，这群黑暗骑兵的齐冲如同自然之力一般无法阻挡。只有当一个世界中所有“光”的存在都被彻底消灭，他的搜寻才会结束。混沌骑士的铁蹄所到之处，死亡随之同行。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/chaos_'),
(66, 66, '艾欧存在于所有地方和世间万物之内。敌人们诋毁它为灭绝者，学者们则尊崇它为闪动的神圣之眼，艾欧同时在所有位面存在着，它们可以在任何时候将自己身体的一小部分转化为物理存在。 \r\n\r\n就像伟大的双子骑士“暗”与“光”，还有一位来历已淹没在时间中的远古旅者一样，精灵守卫艾欧也是宇宙的基本法则，比时间还要古老，来自凡人无法理解的领域。艾欧不仅仅是物质内部的吸引力和排斥力的结合，它是将实体连接在一起的电荷的直观体现。只有将这些力量进行可控的扭曲，艾欧才能在物理位面被人感受到。作为一股善意、乐于合作的力量，艾欧将它的力量与其它人绑在一起，让盟友的力量得到强化。它的心思深不可测，它的力量无法想象，艾欧在物理���面穿梭着，是神秘宇宙的完美体现。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/io_bas'),
(67, 67, '通过占卜和预见，魅影之纱一直严格的甄选一些婴儿来抚养成人，成为她们的刺客。这是一个将刺杀视作神圣的自然法则的女刺客同盟。魅影之纱通过冥想和神谕来确定他们的暗杀目标。她们并不接受契约，也从不因为政治斗争或者金钱利益出手。她们的刺杀完全没有时间规律，似乎是随性为之：不管目标是执掌大权，还是耕田放牧，对她们来说并没有任何差别。即使这些刺杀行为有一个固定的套路，那也是只有组织成员才知道。目标在她们眼中都是牺牲品，而丧命于她们手中则是莫大的荣耀。作为幻影刺客，她们只有组织所赋予的身份，而任何一个幻影刺客都能填补另一个的空缺；她们甚至连代号都不为人知。也许成员有很多，也许只有几个。那谜样面纱之下的真相无人知晓。只有一个，在四下无人之时，那面纱会时不时的被隐秘低语所拂动，低语中，是她自己的名字：茉崔蒂。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/phanto'),
(68, 68, '贝恩霍勒出生在高贵的安布里家族——古老的斯洛姆王国中最伟大的贵族。在凋零之秋以前，国王的欲望愈发的奇怪，朝廷也逐渐被法师和江湖术士占领，而安布里家族则第一个起来反对王权的贪得无厌。他们不再对国王效忠，不再对国家纳贡，而是派出了一支六千人的军队去进攻王城，结果，在史称“变节者之殇”的大屠杀中，这些人被尽数除掉。接下来发生的就完全印证了古语中常说的：打蛇打七寸，擒贼先擒王：叛变将国王激怒了，他将安布里家族的家主和其幼子贝恩霍勒抓住，然后将所有安布里家族的人杀得一干二净。在皇家法庭的审判中，国王命令他的法师将安布里领主的幼子施法变成狼，然后咬断他父亲的喉咙。“动手！”国王下令，“这样他也能尝尝被人背叛的滋味！”强大的魔法被施放到了贝恩霍勒身上，这个孩子当时就变成了狼。然而，尽管躯体转变，他的心智尚存，他将看守撕成了碎片。为了将这只猛兽赶走，国王付出了一队骑士的生命。安布里领主在加锁中大笑着，甚至当国王将剑刺入其身体后仍狂笑不止。现在，安布里家族唯一的子嗣，贝恩霍勒，以狼人的形态游荡着，半狼半人，追寻着，他所失去的公义。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/lycan_'),
(69, 69, '卓尔游侠名叫崔希丝，这个名字很适合矮小、有点像侏儒、令人生厌的卓尔人。但崔希丝并不是卓尔人。她的双亲在坐大篷车旅行时受到土匪的袭击，滥杀无辜的土匪激怒了附近爱好和平的卓尔人。战斗结束后，卓尔人发现了一个藏在马车残骸中的小女孩，他们一致同意不能让这个失去父母的孩子被抛弃。还是孩童时，崔希丝就展现出了她对那些卓尔人引以为傲的技术的天赋：隐秘、沉默、敏锐。如果不看身体，在精神上她就像一个被拐走后又回到自己真正家中的卓尔人孩童。但随着她的成长，她的个头比她的家人高了不少，她因此认为自己是个丑陋的卓尔人。即使她皮肤光滑且长的匀称，完全没有卓尔人的肉疣和粗糙的髯须。与收养她的部族疏远后，她独自居住在森林中。许多在森林中寻路的旅行者都说他们见过一个美丽得难以置信的游侠在树林深处凝视他们，而当他们试图接近时，她又消失的无影无踪。轻盈、隐秘的冷美人，她像无声的迷雾般移动。你听到的森林低语，其实是她命中敌人心脏的霜冻箭矢的破空之声。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/drow_r'),
(70, 70, '谜团的背景正如同其名字一样，无人知晓。只有一些流传下来的故事和传说，但大多数都不可信。事实上，关于谜团的各种故事，都只是寥寥的描述，神秘无比：他是宇宙之力，世界的吞噬者。他是虚空中的存在，有时会以物质形态出现，其它时候则以非物质形态存在。他是同时存在于多个位面的生物。在有的传说中，他曾经是一个试图解开宇宙之谜的伟大炼金术士，但最后却因为自己的傲慢而受到诅咒。在其它传说中，他来自远古，是一种不可思议的重力生命体，是来自原始黑暗的扭曲声音，在宇宙中的第一丝光线诞生前就存在的深渊化身。还有更古老的传说，说他是第一颗崩塌的恒星，产生的黑洞变成了有知觉的复杂存在，他的动机无从得知，他的力量无法阻挡，他的存在就是毁灭之力本身。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/enigma'),
(71, 71, '面目狰狞的石像鬼庞大的身影蹲坐在狭窄迷宫的入口，永恒地凝视着通往往生之境的路径。无论走兽还是飞鸟，人类还是怪物，一切服从生老病死并选择进入冥府的生物终有一天会经过它们的面前。对于一个离开肉体的灵魂而言，一旦做出了穿过死亡幕帘的决定就再无回头之路。不过总有一些不安分的灵魂 凭着智力或机巧，借着偶然的契机得以从天国或是地狱逃离。这时候，令人胆寒的石像鬼维萨吉，承载死灵飞龙不朽灵魂的形体，就会被派遣出去寻回他们。维萨吉精明强干又冷酷无情，不受死亡或是疲倦的支配。它无休无止、毫不留情地追踪它的猎物，一心只想摧毁一切逃亡灵魂的藏身之处。谁敢嘲笑冥界的法则， 谁就永远不得安宁。 虽然亡者的确可以被复活， 但他们迟早会被维萨吉找到， 并且遣送回他们本来该在的地方。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/visage'),
(72, 72, '在德瓦克地下城中，关押着一个一心想要复仇的巫师，他正在密谋着如何逃跑。和他被关在同一间牢房的，是一个口齿不清的生物，一个名叫奈克斯的贼，它被邪恶议会施加了长命百岁的诅咒，这样才有足够的时间来尽可能多的惩罚它的偷窃和欺骗的行径。年复一年，它的枷锁已然被侵蚀得不成样子，它的思维也不再清醒；奈克斯已经完全忘记了以前的事情，也不再想着逃跑。巫师见状，觉得自己为逃跑大计找到了一个完美的牺牲品，于是对奈克斯施放了感染之咒，将自己的生命之力灌注到奈克斯的躯壳里，然后指使奈克斯制造暴乱，牺牲它的躯体来破坏囚牢，巫师随后就能返回自己的身体，然后神��知鬼不觉的逃跑。然而他的如意算盘并未实现，在进入奈克斯躯体以后，巫师发现他的神志被一个疯狂的旋涡所捕获，那个旋涡的力量强横无匹，抹掉了他所有的意识。由于其意识被一个鲜活生命的闯入刺激，奈克斯突然之间从它那疯狂的梦魇中清醒了过来，并且按着脑海中那个虚无的声音的唯一的指令行动：逃跑。也就是在那个时候，噬魂鬼正式诞生。这个生命体将自己的心智灌注到地下城里面的卫兵身体里，强迫他们打开牢笼，杀死其他卫兵，为噬魂鬼打开了一条畅通无阻的自由大道，而他们的生命也在被吞噬。现在，噬魂鬼仍然带着那串破碎的镣铐，似乎是在告诉世界没有人能够禁锢住他，但同时它心里还认为自己是个囚犯。两个意识共存于一个身体里——恶毒狡猾，阳奉阴违的无名生命，还有只能发号施令的主人。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/lifest'),
(73, 73, '他残破的心，已不再记得自己的名，已不再记得自己的命。\r\n\r\n他还依稀记得的，是盔甲，是战旗，是身边死去的兄弟。他还记得那场战役：一双给他带去痛苦和恐惧的苍白的手，将他从马上扯下。他还记得自己和兄弟们一起被扔进死亡之神那漆黑的深坑，还记得他被虚无吞噬时耳畔的挽歌。在深渊下的黑暗中，他们被时间遗弃，抛弃了思想，抛弃了理智，唯一尚存的，只有饥饿。他们以彼此残留的指甲和牙齿为食，唤醒了身体。这时挽歌传来，一开始很遥远，只是最轻微的感官体验，然后声音逐渐汇集，似乎铺天盖地永无止境，歌声似乎形成了一堵音墙，将他意识中所有想法都清除。随着自己被挽歌吞噬，他也向死亡之神张开了双臂，迎接自己的陨灭。然而死亡之神并没有选择毁掉他，而是让他投入战争，在一片惨然的虚无中，他被赋予了新的使命：让世界遍地哀鸿，让死者吞噬生命。他成为了不朽尸王，死亡之神的先驱，他的躯体永生不灭。在你的往生路上，会奏响他永恒的挽歌。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/undyin'),
(74, 74, '据说影魔奈文摩尔有着一个诗人的灵魂，事实上，他吞噬的诗人灵魂早已成千上万。千百年来，他收集了各式各样的灵魂，包括诗人，牧师，帝王，乞丐，奴隶，哲人，罪犯，当然，还有英雄。他拥有着世间所有种类的灵魂。然而没人知道他收集这些灵魂作何之用。从来没有人得以窥视影魔��魂渊之秘，他从魂渊中伸出灵魂触须，蔓延在精神位面。他是把灵魂一个个吞噬了？还是把灵魂堆积在他的影惧神殿里？又或是将灵魂浸在死灵之池中？难道他仅仅是一个被恶魔傀儡大师操纵着，通过位面裂口进入世界的傀儡？尽管众说纷纭，但根本没有人能看透他那黑暗光环下的层层邪恶。然而，如果你实在是很想知道那些灵魂的归宿，有个办法能帮你达成心愿：凡人，将你的灵魂奉献给影魔，或者等待魔王的收割！', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/shadow'),
(75, 75, '在那黑暗的年代里，有一颗彗星一直绕着天体运动着。被太阳束缚，又被地心引力拉扯，这颗巨大的冰球在世界之间的黑暗缝隙中穿行着，其自身也被这段黑暗的旅途改变着。在乌洛伊战争的前夜，它刺破天穹，轰然坠地，并散发出了一丝奇异的光芒，点亮了黑夜——战争的双方都认为这是一个征兆。这个冰球在沸腾的燥热中融化了，在战争中双方踏入分界河的时候，它融合了双方的力量。旋即冰封解除，变体精灵在战争中横空出世，拥有海洋潮汐之力的元素，反复无常，变化多端。他加入了战斗，在一瞬间就复制了一方的将军的形态，然后杀死了他——这个冒失鬼居然想试图穿过分界河。随着那些士兵们一个个死去，变体精灵也将自己的形态一次又一次的转换，吸收着这些奇怪生物的形态——一会是步兵，一会是弓箭手，一会又是骑兵，直到最后一个士兵也死去，变体精灵终于将所有的形态复制完毕。战争算是结束了，而变体精灵的时代，则刚刚开始。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/morphl'),
(76, 76, '当别人第一眼看到帕克的时候，都会觉得它十分淘气，是小孩子性格。然而正是这种错觉让帕克的真实个性得以隐藏。仙女龙一族的寿命趋于无限，帕克则还处于仙女龙的幼年形态，然而它在这一形态也已经过了上千年了。因此即使从某种意义上来说，帕克还算是幼年，但它的幼年期将会一直持续到现在的城市归于尘土。帕克的真实动机是什么，旁人完全无法捉摸，而在那嬉戏的外表下也有可能隐藏着更隐秘的目的。而唯一能让人体会到帕克真实个性的，是它对顽皮捣乱的无尽热衷。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/puck_b'),
(77, 77, '所有法师都���点魔法，其中一部分通过长时间的学习应该也能成为巫师，然而只有其中最有天赋的，才有资格成为魔导师。法师们都是一样，虽然相互认识，但却并不相互尊重。在整个魔法界，拉比克已经算是著名的斗士和学者，不过他自己也没想过自己是当魔导师的料，直到他第17次外出刺杀。他和往常一样将那些失败者从高台上抛下，轮到第12个人时，他猛然的发现自己的生命是如此的无趣。曾经很简单的短暂法术干扰或者空手召唤火焰都能让他兴奋不已，而现在对他来说已经是意料之中的事情。他渴求更大的挑战。于是，他戴上了战斗面具，做了每个试图超越的巫师都会做的事：扬言要杀死一名魔导师。拉比克很快就发现对一个魔导师宣战的后果就是对整个魔导师群体宣战，他们将愤怒倾泻在他身上。每个魔导师的咒语都是势不可挡的能量洪流，每次攻击都是精确的杀招。然而很快魔导师们就发现了一些诡异的事情：他们好像在被自己的法术攻击。魔法漩涡中隐约传来拉比克的轻笑，他隐秘的解读着魔导师们的法术，复制其中之一，然后用这个法术攻击另外一人，在魔导师之间制造着他精心编制的混乱。被背叛的愤怒开始在魔导师们中滋生，很快他们就开始相互攻击，因为他们也不确定究竟是谁攻击了自己。战斗终于停止，所有的魔导师都被他人的魔法灼烧，冻僵，甚至切成碎片，死伤惨重。拉比克则独自站在一旁，疲惫却欣喜，这次战斗让他获益颇丰。当他向隐修议会提出晋升的要求时，没有人敢置喙一句，议会中的幻寂十一长者一致同意，承认他为大魔导师。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/rubick'),
(78, 78, '天怒一族这种生物，即使最满足最安心的时候脾气也很暴躁，他们天生就会为了最微不足道的侮辱寻求复仇。然而复仇就是复仇之魂的本质所在。曾经作为一个自傲而残暴的天怒之子，仙德尔莎是苍白之巢的第一继承人，直到一个姐妹背叛了她，夺走了她的继承权。被暗杀者的陷阱困住以后，仙德尔莎以双翼为代价，逃出生天。用对于这一族最丢脸的方式：步行，颠簸逃离了。仙德尔莎明白天怒一族再也不会接受失去翅膀的她作为统治者。而且面对处于最高处的苍白之巢，没有能够飞翔的翅膀是无法接近的，她将无法碰到她的姐妹。不甘作为一个无法飞翔的废物苟活，她对于复仇的渴望超越了所有的俗世欲望，落难的公主向女神丝奎奥克达成了交易：放弃她残破的身体，换来的是精神能量化成的灵体，永世不灭，以复仇为动力，能在物质位面带来浩劫。她或许永远都不能飞翔，但她终将为自己报仇雪恨。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/vengef'),
(79, 79, '那些生活在荒狱丛林中的生物根本不知道什么叫和平共处。它们只知道用牙咬，用爪挠，用蛰刺，用蹄踩，即使稍微露怯也能让你立马��去。据说蝙蝠骑士在被外出觅食的食人蝠带走之前，只是一个普通农家的孩子，正在地里帮忙做农活。然而被带走后，他立刻想出了好点子，翻身骑上了抓住他的蝙蝠的后背，转眼间蝙蝠就成了他的工具。当他从那些血腥的尸骸中走出来时，他已经沉醉于战斗给他带来的兴奋和刺激，男孩终于意识到了自己内心深处的渴望。随着他的成长，每个夏天他都会回到家里的农田中，经常外出躲在草丛中，期望能够找回当年的血盆大口和致命的下坠给他带来的面对死亡的兴奋。时间一年年的过去，他的渴望变得愈发强烈。为了快速成长，他参加了每一次的远征，直到他找到了蝙蝠洞穴的路。据说在一个灼热仲夏的前夜，骑手只带了一捆绳索、一瓶壮胆酒以及灼热的决心，为了再次感受到天空，他只身跳入洞穴...', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/batrid'),
(80, 80, '一个轮廓不匀的瘦长身影迈着怪异的步伐纵横在战场上，寻找着敌人的致命弱点，用他可怕的才能造成严重的伤害。无论他那扭曲的身体是被打断的还是先天的，没有人可以质疑其中的力量。巫医扎瓦克用他的长杖猛击地面前进，他是一个迷信、巫术和咒语的恐怖聚合体。这个身体在阿克图拉岛的高原地带学习了魔法知识并磨练娴熟，现在精确的用在他的敌人身上。治疗友军，践踏敌人，扎瓦克可以成为你的好战友，或者最糟糕的敌人。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/witch_'),
(81, 81, '暗惧者虚空假面是来自超维视界的一名访客，一个时间之外的境域。这个来自其他维度的存在，坚信为复仇之石的争斗值得它降临我们物质位面的原因，依然是个迷，但显然它对这个世界平衡力扰乱的后果已经反映到了相邻的维度。时间对暗惧者毫无意义，除了作为一种阻挠敌人并帮助盟友的手段。它那长远的宇宙视角赐予它悠久却不相关的特技，但没关系，在战场上它完全能随心施展这些能力。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/facele'),
(82, 82, '他座下是一骑白马，他是无尽千阳之辉，他就是光之守卫。早在许久以前，伊扎洛就挣脱了将他束缚在浩浩原初谐律之内的其他远古力量，从而由原始位面逃离，在宇宙的黎明，本是无形力量的他萌生了知觉。如今他高举承载着光之力量的辉光之杖，同时奔走在所有的位面，将追寻着他的混沌抛在身后。乍一看去，他似乎是一个无法稳坐于马上的衰朽老头，然而掩藏在这副外表下的却是他高贵的真身。只有在面对混沌和黑暗军团的挑战时，他的全部力量才会显现出来。原初之光从体内迸射而出的一刻，他也将再次化身为璀璨的力量之芒。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/keeper'),
(83, 83, '厄泽王庭的教皇有个隐秘的受虐癖——以品尝禁忌之痛为乐。即便是对那些普通政客而言这都是愚蠢至极的，而对于教皇而言，这种私欲已经威胁到了神权本身的纯洁和完整。于是他只好偷偷的去他的地牢里，求助于那一帮恶魔学识大师，承诺只要有人召唤一名完全为他服务的痛苦女妖，那就能获得自由。旋即魔女降世，名为阿卡莎，她给教皇带去了无与伦比的痛苦和刺激，教皇随即赐其隐秘皇后之位，并将所有闲暇时间用于享受她带来的花样百出的痛苦——最终，为了追求这种只有阿卡莎能带给他的痛苦，教皇放弃了他的所有职责。痛苦女王能让他体验濒死之欢愉，并因为受符文的限制而无法杀死他。终于，教皇的不理朝政引发了起义，他被愤怒的人们从密室里拖出来，然后从祈灵塔上扔了下去。然而，他的死亡却让痛苦女王获得了自由，不再被奴役，她将恣意的向世界挥洒她的痛苦。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/queen_'),
(84, 84, '在万物的发源之前，有这样一个存在：一个原初意识，无穷无尽、无边无垠又神秘莫测。随着宇宙隆隆地形成，这个意识逐渐分裂，溃散。其中两个最大的碎片，被称为天辉和夜魇，发觉彼此是注定的冤家，他们开始扭曲所有造物，为他俩的斗争助阵。\r\n随着战事和灾厄威胁到新生的宇宙，又有个碎片形成了意识。将自己命名为泽特，这个智慧寻求大分裂的解决，让一切回归完美的统一。惊异于同胞相斗的天性，泽特聚集了自己所有的力量。在瞬间的闪光中，它的威力碾压了它的手足，将大战的双方封入了一个天球，再将他们推入黑暗，进入一个平凡世界的外围轨道。宇宙恢复了和谐，但是泽特的力量只有一丝得到了保留。将目光锁定到监牢上，泽特决定使用衰弱的力量时刻守望，直到时间的尽头。数不清的千年过去，守护一直存在。\r\n月下的世界中生命在繁衍生息，而散发柔光的月亮里囚禁的威胁早已被遗忘，就像泽特为了扼制他们所做的努力一样。随着监牢内囚徒无休的争斗不停地回荡，牢笼的表面开始震动，开始逐渐破裂。泽特衰竭的力量根本不足以控制住裂缝，月亮最终分崩离析。监牢中的远古住民向外逃逸，他们的冲突再度展开。\r\n泽特受到监牢爆炸的波及而被抛向最远的边际，昔日囚徒的不谐能量改变了它。它不再是单一的形态和思维，它的存在分裂而四散，有些较弱，有些较强，相互靠着短暂的意识弧光连接。挣扎着���制自身的不和，泽特向它同胞日渐激烈的冲突加速前进，同时矫正自己分裂的意识，向同一个结局努力：原初意识的所有方面必须再度结合，否则在大战全面蔓延后一切都逃不过毁灭的命运……', '', '', '', ''),
(85, 85, '在狂风肆虐的杜鲁德大草原高处，有一位年轻且富有天赋的风暴术师，他被人称作干扰者，并第一个参透了夏日风暴的秘密。由于经常受到季节性的暴风袭击和南方文明王国的侵略，几个世纪以来，高地人一直都在这片无尽的高原上为生存而挣扎。他们是一个伟大的文明破碎后遗留下来的堕落部族，他们那奇特而神秘的控制风暴的技术，拼凑自那些支离破碎的连他们自己都不能完全理解的失落知识。对于居住在高原地区的人们，气候已经成为了一种信仰，被作为生命的授予者和终结者而崇拜。雷电风暴所带来的大雨是维持生命所必需的，但这是有代价的，每次雷电风暴结束时，总会留下一些烤焦冒烟的尸体。尽管在他的族群中还很卑微，但干扰者无所畏惧，永不满足的好奇心是他的动力。尽管还对风暴技术一窍不通也没有自己的坐骑，但他还是去探索了祖先城市的遗迹，在崩塌的建筑和早已腐朽的图书馆中搜索着，在生锈的制造车间中到处翻寻。他找到了需要的东西，然后返回了部族。将古时设计的线圈重新改编后，他获得了操纵电荷的能力，现在可以在任何他想要的地方召唤雷电。部分依靠魔法，部分��靠工艺技术，他的能量圈内束缚着能掌控生与死的力量，用来精确打击南方王国的侵略者和任何闯入这片古老高地之人。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/disrup'),
(86, 86, '她曾经是被称为平原之灾的残酷领导者，率领着众多爪牙和野兽，敢于在任何地方肆虐。但不知为何沦落为现在这副样子。远离故土，饥饿至半疯状态流浪了好几个月，她的军队早已成为了尸体，甚至某些更糟的东西。当她站在一片古老森林的边缘时，那古老的树枝之间有一双灼热的眼睛正在暗中监视她。在这落幕的黄昏中，某种美丽但致命的野兽正在寻找一顿美餐。它悄无声息的转身离开了。愤怒占据了她的大脑。她紧紧抓住手中生锈的匕首，冲向那只野兽，只为寻回一丝曾经的荣誉。但这只猎物却无法被抓住。她三次将它逼进岩石和树木的死角，但每次她要扑上去抓住它时，都只能看见一丝褐色残影冲进森林的深处。不过由于满月的月光十分明亮，这头野兽的足迹很容易追踪。当一路追到一座高山开阔的山顶上时，这头体型巨大的野兽就那么坐在那里，专注地等待着她。当她挥起匕首刺过去时，野兽后退了一下，然后咆哮着冲向她。在坚持了这么久之后，在这片陌生的土地上，她似乎感到了自己的死期终于到来了。她平静的站在那里，准备接受结局。但在这一瞬间，野兽夺下了她手中的匕首，然后消失进了树林中。此时万物归于平静，几个戴头巾的身影靠近了她。她们用虔诚的语气告诉她，月之女神赛莉蒙妮选择了她，并指引了她，也测试了她。在不知不觉中，她已经通过了银夜森林的守卫者-暗月骑士的神圣仪式。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/luna_b'),
(87, 87, '斯拉达是个鱼人，���位深海住民，他守卫着沉没的城市和其中埋藏的古老宝藏。在海底深渊那黑暗的海沟中，鱼人守卫穿梭在藏有宝物的密室中。对付陆地上贪婪的巫师们派下去的潜水盗贼。他对海洋绝对忠诚，沉默寡言的性格有效的隐藏了海洋最秘密场所的位置。有时他会上浮到浅海侦查，不顾光亮造成的痛苦，确保没人在对深海进行谋划。有时他会无情的追杀那些极少数设法从沉没宝库偷取宝物的家伙。由于斯拉达的一生都生活在深海中，承受着海洋巨大的水压，因此鱼人守卫的力量无比强大。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/slarda'),
(88, 88, '陆地上悬崖和峭壁之间的深处，有一层早已被高地矿工放弃的圣玉层。考林将军的雕像就是采用这种材料打造，深埋在地底，引领着一支数以万计的兵马俑。武士俑、军吏俑、说唱俑等等一应俱全，经过工匠的精心雕刻后在大地黑暗的怀抱中沉睡了上千年。\r\n\r\n而工匠们没有想到的是，这奇玉之中流转着大地本身的灵魂——与星球一致的元素之力。当玉雕之灵发现自己与世界的生命隔断后，它就在千年的时光中汇聚自己的力量，最终冲上了地面，进入了光明。现在，伟大的大地之灵考林从容地走在地面之上，为大地而战；而土壤的深情怀抱之中埋藏着的大军将会受他召唤，变成残像横扫一切敌人。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/earth_'),
(89, 89, '在基迪岛上的浓酸密林中，在所有生物的体内，包括植物的根茎，动物的内脏中，都流淌着致命的腐蚀剧毒。然而，就算在这种毒巢里，剧毒术士也是公认的万毒之王。多年以前，一个叫做里瑟尔的植物学家乘坐小舟跨越弗拉基海湾，想要从植物的根须中提取出一种强力药剂，结果他却遭遇了噩梦一般的变故。在深入到基迪岛密林中数英里时，里瑟尔遇到了一种伪装成寄生植物的毒性爬虫，当他想把爬虫扯下来的时候，被爬虫狠狠的蛰了。绝望之际，他用他对丛林植物仅有的认知，飞快地掐住这只爬虫后，将它的毒液和一种带甲兰花的花蜜混合，合成了解毒剂。他用兰花的尖刺为自己注射了解毒剂，然后立即陷入昏迷，并且逐渐陷入了全身完全麻木的状态。十七年后，在他倒下的地方，从多年积累的腐土中钻出某个东西：剧毒术士。草药学家里瑟尔已经不复存在，现在他是死亡使者里瑟尔。他的记忆几乎都没有了，他原来的肉体已经毁灭，现在被一种新的物质所替代--融合了那只爬虫的毒液和兰花的毒性外皮。基迪岛的浓酸丛林现在有了新的主人，过去最剧毒的捕食者在他面前都只能逃走或臣服求饶。这个可怕的岛屿毕竟太有限了，里瑟尔受到内心深处残留的人类的饥渴驱使，离开了岛屿，去寻找新的毒物，以及带来新的死亡。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/venoma'),
(90, 90, '普利斯特·雷霆之怒是一名见多识广、勇于拼搏、无比虔诚的骑士，他被声望极高的骑士团长老抚养长大，作为他们的贴身侍卫，立誓遵守他们的命令。他将一生都献给了全知全能的神。骑士团毕生都在进行艰苦的圣战，而普利斯特也至死不渝的履行着他的职责，奉献他的力量以及那年轻人特有的热忱，从未有过怀疑。然而，多年的远征让他的长辈和上级都已经归于尘土，带着悔恨和愧疚，被埋葬在远征路上的墓穴里，他亲如兄弟的战友，在同那些拒绝臣服于全能之神的野蛮人的战斗中陨落，而他自己的亲卫，也被伏击、瘟疫吞噬，于是他开始质疑自己誓言的意义——远征的意义。经过了深刻的冥想，他离开了他的军队，长途跋涉回到了晴雪城——传说中的圣城，在那里，他对全能之神的祭司们发出了质问。从来没有哪个骑士胆敢如此，祭司们试图将他投入献祭之渊，然而普利斯特却如山一般无法撼动。因为当他俯视着祭司时，全身闪耀着圣洁之光，祭司们看到全能之神选择了他作为其显圣之身。年长的大祭司见状，便亲自花费了数周的时间，指引他前往圣城深处的密室，世间最为圣洁之地，在那里等着他的，并不是一些充满智慧的晦涩抽象的书籍，也不是什么供���信奉的洞窟遗迹，而是全能之神本尊。神在这个密室里已经居住了千万年，并且创造了世间万物，在星球周围创造了巨大的保护外壳，抵御来自其他世界的邪恶。全能之神告诉普利斯特，他创造了世界，并且给予了教徒世间的真理。骑士没有办法驳斥这个故事。也许全能之神只是一个被关在石牢里面的骗子，根本不是什么创世者，但是全能骑士也不再质疑他的信仰。他的战斗终于有了意义，毫无疑问，他身体里面涌动着神圣的光明之力，而他在战斗中带给战友的力量，更是不容置疑。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/omnikn'),
(91, 91, '创世之纱需要长期细心的照料，以防止其变得残破；因为一旦它散开了，整个世界就将毁于一旦。编织者的工作就是保持创世之纱的紧密，用现实之网修补它的破损。他们同样要防止那些在创世之纱的缺口上产卵或者侵蚀创世之纱的虫子，只要编织者稍微分心，这些家伙的幼虫就能吞噬掉整个宇宙。斯吉茨格尔是一名大师级的编织者，负责维护一块小补丁的紧密。然而这项任务并不能满足他，他经常唠叨过去那些原始的创造工作，对干完活就走人的世界纺织者也是颇有微词。他想创造，不想只是维护——他想按自己的设计编织出自己的世界。他开始在他负责的区域上做手脚，逐渐不能自拔，他的胆子也愈发的大，甚至私自改动了世界纺织者编织的图案。最后，守卫者来了，毁掉了编织者所作的一切，直接从创世之纱上去除了这一块，然后重新编织，却不让他参与其中。斯吉茨格尔现在孤身一人，被种群所弃，换做任何其他编织者，都会备受折磨。然而斯吉茨格尔却无比愉悦，因为他终于自由了，能够自由的创造，重头开始。他创造新世界所需的所有材料都触手可及。他只需要从缺口处将现在的世界撕裂。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/weaver'),
(92, 92, '当山下的王国被潮水般的侵略者们横扫的时候，星隐寺的僧侣们只是在山上默默的注视着那崎岖的山谷。苦行且务实的他们在偏远高山的寺院里，独自沉浸在远离尘嚣的冥想中，不受任何魔法元素或者神灵的干扰。然而，死亡之神的军队来了，带着摧毁所有信仰，并让当地人转而信奉死亡之神的虚无主义。带着他们千年的战乱和血雨腥风，死亡军团将他们打败的敌人的灵魂和尸骨撕裂，用这种恐怖来摧毁星隐寺的信仰。面对此等攻击，寺院只坚持了不到两个星期，甚至还有一些刚从冥想中醒来的僧侣认为，这些入侵者不过是恶魔用来干扰他们冥想的幻象，于是他们死在了自己的冥想垫上。只有一个人幸免于难，他是来星隐寺寻求智慧，却尚未得到寺院认可的侍僧。他惊恐地看着自己曾经侍奉过的僧侣们被杀，然后又被复活成为死亡之神的祭司。带着星隐寺残存的珍贵教义卷轴，他艰难地到达了一个相对安全的地方，他发誓，不仅要消灭死亡之神的魔法师，更要将“魔法”这个词从世上抹去。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/anti_m'),
(93, 93, '世上现存的神话还是诗歌都没有讲述过他们的到来。在地表深处之下存在着未知的奇观和邪景。继续往下，在滚动的岩浆层和即将爆发的休眠火山之下，坐落着黑曜城市艾兹尤格，无与伦比的黑曜岩跨越了无穷无尽的洞穴。蜂窝状的城墙内填着无数奴隶的尸骨，而里面就是深渊大军，还有他们残酷的孽主维洛格罗斯的领地。由凶暴的铸造师为其打造武器和铠甲，又精通黑暗之门的技艺，维洛格罗斯可以借助各世之间的扭曲召唤出焚骨扬灰的火焰和致人伤残的恶意。他永远都在寻求扩张自己的领土，摧毁或俘虏他遇到的一切。但地下之域存在的大陆少之又少，所以他的眼界开始向上发展。随着他的一声号令，第一波深渊侵略者穿过大门开始进军，劫数难逃的几个军团还不能证明地上界诸国的实力。现在，随着他的大军已经完全准备好无尽的征战，维洛格罗斯自己也踏入了阳光普照的世界，宣告他即将来临的统治。孽主面前必须臣服致敬，否则难逃消亡的噩运。', '', '', '', ''),
(94, 94, '在创立之初，魔法本质上是一门记忆的艺术，有些人认为这才是其最强力的形式。它无需任何科技，也无需魔杖或者其他施法媒介，只需要你有一颗魔法师的心。所有的那些祭祀里面的象形符号也仅仅是帮助记忆的手段，初衷是为了让施法者能够回想起施放法术时那大量的细节以及步骤。在那个年代，最伟大的法师就是记忆天赋最高的人，然而魔法祈唤实在是太过艰深，因此所有的法师不得不有所专攻。即使是最刻苦的法师，将一辈子奉献给魔法，最多也只能掌握三到四个法术。普通的法师能掌握两个就心满意足了，而对于那些乡下的法师来说，只掌握一个法术也再正常不过——即使这样，在极少的真正需要使用魔法的场合，他还得借助魔典才能战胜自己的健忘。然而，在那些早期的施法者中，有一个例外，一个智力超群，记忆力惊人的天才，以祈求者的名字为人们所知。在年少时，祈求者就已经掌握了不下十种法术。是的，不是四五个，也不是七个，而是十个，而且他还能毫不费力的施放这些法术。他学到过更多的法术，但是因为觉得没用，试过一次以后就彻底从脑中遗忘，这样才能为其他更为有用的法术留出空间。这些法术就是包括永生之术——能让施法者永生的法术，那些在世界之初吟唱了这个法术的人现在还活得好好的（除非他们被物质毁灭了）。而大多数这样的准不朽者都低调的生活在我们中间，害怕他们的秘密泄露：然而祈求者不是一个喜欢隐藏自己的天赋的人。他来自远古，比任何人都要博学，而他的心智还有余力让他去思考他无穷的自我价值...以及更多的法术——他在世界毁灭之时的漫长暮色中用来自娱自乐的法术。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/invoke'),
(95, 95, '魔霭圣池，一个处于原初群石的裂缝，从中带有先兆力量的蒸汽不断溢出，作为家族力量的源泉，已经惠及数个世代。在居住于洞穴中的魔霭家族，每个新生儿都会在暗黑迷雾中接受沐浴，经过这样的洗礼，他们与大陆的神秘力量获得了内在的联系。随着他们长大，内心坚信自己的使命是誓死保护世袭的传统和领域的风俗——实际上他们守护的不过就是圣池本身。而迷雾的作用原理尚不明朗。\r\n\r\n当初生的亚巴顿沐浴在圣池中时，众人都表示事情并不对劲。孩子的双眼里闪耀出洞察之光，在场所有人都大吃一惊，神父们纷纷交头接耳。而他之后的成长道路与所有魔霭族裔的传人并无差别——为战争接受训练，在危机时刻需要他挺身而出，率领家族的军队守卫先祖的大陆。但是亚巴顿总是特立独行。其他人挥着武器训练时，他喜欢在迷雾前沉思。他饱吸从圣池中涌出的蒸汽，开始学习将自己的灵魂与家族深处流出的力量相融合；他变成了被暗黑迷雾笼罩的怪物。\r\n\r\n魔霭家族怨气冲天——不论老小都谴责他对自己的责任视而不见。但是亚巴顿驾临战场时，不满全都烟消云散，他们目睹了迷雾的强大力量让他恣意挥洒着生杀大权，族内任何领主都是望尘莫及。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/abaddo'),
(96, 96, '迅捷如风，足智多谋，黑暗贤者依什卡菲尔并不需要多么锋利的武器来搏斗，他总是运用强大的心灵之力来征服敌人。他有着颠覆战局使之对己方有利的天才。迎着欢呼和敬意，他从一个叫做“幻墙之末”的世界走了出来，并不热衷于这个世界的纷争——他是一个来自现实世界之外的勇者。曾经，黑暗贤者是备受人民尊敬的将军，是神王达玛瑞克斯麾下英勇的保卫者，然而他的军队在边境大战的最后几天，被一股更为强大的力量悉数歼灭。面临如此惨败，他绝望的做出了最后一个决定：引诱着敌军进入了幻墙迷宫。在他即将被捕的前一刻，他穿过幻墙，释放出强大的黑暗能量，将幻墙永远的封印起来。当飞扬的尘土归于平静以后，他发现他成功的拯救了自己的人民，而自己却沐浴在另一个世界的阳光下，亦真亦幻，无法回到现实世界。现在，他决心以一名战略家的身份来证明自己的价值，并且立誓要让这个新的世界见识他那伟大的谋略。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/dark_s'),
(97, 97, '英剑门中人，不论男女都是天天练剑习武、谈情说爱的生活。尽管所有人都恪守“冒险的一生才是有意义的一生”的信念，但唐特·培林的英勇事迹还是能令快乐至上的剑士们侧目。 没有他对付不了的怪兽。没有他搭讪不了的生灵。没有他反抗不了的暴君。也没有他辩驳不过的贵族。', '', '', '', ''),
(98, 98, '莱恩曾经是个为光明和正义战斗的恶魔巫师，在同胞之间享有声望的传统巫术大师。但奉承和谄媚使他堕落了。莱恩产生了超过他力量所及的野心，他受到恶魔的引诱，变得邪恶，用自己的灵魂换取了声望。在做出了许多恐怖的罪恶行为后，莱恩的灵魂受到了损伤，恶魔因此抛弃了他。背叛了他的恶魔与他的敌人联手，用更强的手段对付他。 莱恩对此变得狂怒，他追着恶魔一路跟到地狱，在地狱杀死了这个恶魔，把它一截一截地撕裂，最后莱恩取下恶魔那有魔力的手腕，装在自己的身体上。然而，与恶魔融合是要付出代价的。莱恩的身体变成了某种无法辨识的东西。他从地狱中出来时成为了狂怒的化身，不仅杀光了所有称他为怪物的人，还践踏了那片自己曾经受人崇拜的土地。他是唯一幸存的传统恶魔巫师，那些想来当他助手或学徒的人都被他抽光了魔法，然后轻松的夺走生命。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/lion_h'),
(99, 99, '作为红雾军团的一名步兵，蒙哥可汗的目标是成为红雾军团的将军。在一场又一场的战斗中，他用血腥的战果证明了自己的价值。他毫不犹豫杀死上级的行为帮助他完成了晋升。在长达七年的千湖之境战役中，他用光荣的杀戮给自己带来了荣誉，他的声望比从前更耀眼了，但他身边的战友也在一个个地减少。在最终战胜的夜晚，蒙哥可汗宣布他为红雾军团的新将军，并冠以自身“斧王”的头衔。但他的军队却只有他一人，虽然许多人是战死的，但更多人则是死在斧王的刃下。不用说，现在大多数战士都不想由他领导。但这对斧王来说不算什么，因为他的军队只需要他一个人就够了。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/axe_ba'),
(100, 100, '在种子里埋入盘起的灵魂，从岩石深处引出缠绕的水流，起誓阳光会普照这生长的一切，当树木之神维萝迪希娅完成这一系列森林的创造后，她意识到自己的生命也到达终点，如一片命运已被她印在种子中的树叶一样飘落，无法看见自己的梦想结果。嫩芽尚未破土，即使破土，脆弱的嫩芽也很容易受到各种伤害，而她却即将辞世，无能为力，这让她无比痛心。然而她在种子袋中发现了一颗播种时漏掉的种子，在弥留之际，她将力量化作一字箴言，寄于此种，然后将其服下。在漫长的冬天，她巨大的身体逐渐分解，化为了幼苗来年春天的肥料。在春分的早晨，当其它种子还没有苏醒时，最后那颗种子在一瞬间成熟然后爆裂了。从中走出了自然的先知，他身披树叶，强壮且智慧，拥有树木之神维萝迪希娅的力量，能预见到森林最需要他的地方，同时他也很清楚，能作为他的盟友，是天赐的幸运。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/nature'),
(101, 101, '奥斯塔里昂大帝那建造在敌人骸骨上的庞大帝国已经屹立了无数个年头了，他对自己的统治有着无尽的狂热，希望自己的集权统治能够永生不灭。他坚信，只要自己宫殿里的的白骨高塔建成，他就将万古不朽。然后他最终还是意识到自己这一想法的荒谬...白骨也会腐坏。出于对血肉之躯的不屑，他找到了一个更为长久的办法来维持自己的统治，冥魂之力，一种在某些黑暗生物死亡时释放出的纯粹的精神力量。出于国王的骄傲，在计划将冥魂精华灌入自己体内时，他认为最好自己也能拥有一副光耀不灭的躯体。在千年一遇的至日，冥魂之夜那一天，他启动了仪式，命令他的手下收集足够多的灵魂来完成他自己的不朽。王上终不朽，将士万骨枯。现在，冥魂大帝已不再迷恋他那闪光的王座——他拔出自己的巨剑外出征伐，被他征服的人，要献上自己无惧死亡的绝对忠诚。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/skelet'),
(102, 102, '没有人见过主宰尤涅若面具下的真面目。甚至有人认为他没有脸部。作为公然反抗腐败领主的惩罚，主宰被古老的遮面之岛流放了，这反而救了他的性命。不久后海岛在一个充斥着复仇魔法的夜晚被海浪彻底毁灭了。岛屿上古老的主宰传统，礼法和剑术都由他独自继承。作为这项传统最后的开拓者，尤涅若的自信和勇气来自他坚持不懈的锻炼，他独创的剑术证明他从未停止挑战自我。一如既往的，他的内心和他的表情一样难以捉摸。作为一位曾两度失去一切的英雄，主宰斗志昂扬，仿佛胜利已是定局。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/jugger'),
(103, 103, '孩子们喜欢讲仙女们古怪的冒险故事……那是因为孩子们不知道大多数仙女都是恶毒的混蛋。而在恶毒仙女的世界里，能比米瑞斯嘉·晴风这个名字招来更多蔑视的少之又少。降生于一个仙灵商王的家庭，米瑞斯嘉自小在瑞文特尔长大；一个残酷的国度，权术和谋杀是常态。但她相当娴熟地操纵着生活中充斥的礼节，暗地的规矩还有社交仪式，她却发现所有事情是那么的无趣。所以，米瑞斯嘉做了大多数叛逆的孩子都会做的事：烧掉家族的基业，带着宠物精灵杰克斯启程去做一个云游四方的欺诈师。', '', '', '', ''),
(104, 104, '人称利维坦的潮汐猎人曾经是沉没之岛的竞技大师，他的行为方式和他的同胞们一样神秘莫测。陆地居民都知道海上航线的重要性，帝国的崛起和衰亡都取决于谁掌控了公海。相比之下，海底航线和南海流民的敌对部族如何通过无数次小规模海底战斗开辟家园的故事，则鲜为人知。在南海人和陆地人那脆弱的协议中，我们可以瞥见这个海底王国的规模，不过他们的政体则显得十分复杂和不透明。利维坦似乎厌倦了这些琐碎的小冲突，便独自离开了，只效忠于他的深海之神-深渊触手麦尔朗恩。现在他在浅滩上独自游弋，寻找路上遇到的人类或者南海人，他对他的宿敌-舰队统帅昆卡有着一种独特的厌恶，然而他们为何成为敌人，已经和当年的激烈海战一起被遗忘了。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/tide_h'),
(105, 105, '闪电幽魂-剃刀，是永劫之墟中最有代表性的可怕力量。他鞭打着闪电巡回在狭窄迷宫中，这是一个区分死者灵魂的迷宫，他们要靠生前的智慧、精明和毅力来通过其中变化莫测的网络通道。剃刀飘浮于迷宫上方，俯视着那些迷茫不前的灵魂，用闪电鞭打他们赶快前进去决定他们的命运，朝向光明的出口或者黑暗的地狱。剃刀是支配力量的永恒化身，他使用力量时残忍而客观。但他贵族般的气势暗示了他对工作那讽刺的满足。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/razor_'),
(106, 106, '在瘟疫肆虐时期，罗坦德吉利，内心黑暗的无名僧侣，由于所有上级的暴毙，被提拔为红衣主教。当教团的其他人都外出救援病人时，这个新上任的红衣主教却把他自己关在鲁姆斯克大教堂中，忙着谋夺濒死贵族的财产，他答应他们只要签字转让领土，灵魂便会获得奖赏。瘟疫减退到小部分顽固地区后，他的所作所为被教团注意到了，教团认定他犯下了异端之罪并判处他在瘟疫牢房中服刑，那里的咒语会让他患上一种长期的慢性疾病。教团认为，就算他的免疫力再强，也必死无疑。罗坦德吉利染上了瘟疫，然而他不仅没有病死，还发现这种瘟疫在提供他力量，他变成了真正的瘟疫法师，瘟疫的教皇。正式宣称自己为瘟疫法师后，他开始环游世界，在所到之处散布瘟疫，随着一个个村庄消失在他引起的瘟疫中，他恐怖的力量不断在成长。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/necrol'),
(107, 107, '在秘湮学院的禁断圣所中，在那些研究龙类遗传学论文和艰深晦涩的咒语书之间，藏有一本记���着古代昆虫学的珍贵书籍。这本凝聚了学者们心血的书里面记录了一种天生具有读心术的狂热圣甲虫，这种具有社会性的昆虫在七个位面的所以世界中都是独一无二的。和他领地中的其他幼虫不一样的是，司夜刺客的变形并不是被那种工兵般无聊乏味的思想所引领的。他的变化很特别，受到了夜神妮克丝的恩赐。他是天选者，被女神从万千族人中挑选出来并赐予了女神精华。他的族人大多都在虫后密室的黑暗祝福下死去，而后他出现了，有着犀利的读心术，尖刀般锋利的爪子和剃刀一样的下颚，通过空气感知着他身边的那些同类的想法。在所有的狂热圣甲虫中，只有他被最高存在召唤。在妮克丝的恩惠下，他变体了，重生了，被赋予了各种能力，去完成他的创造者唯一的要求：以女神之名杀戮。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/nyx_as'),
(108, 108, '瑞格沃在打架时从不以背示人，他因与众多强大烦人的拳手进行的正面交锋为人称道。醉汉们给他冠以“钢背大师”的美名，从斯洛姆王国到厄泽王国的路上，沿途经过的所有酒馆他都插手了后院发生的斗殴。终于，一个寻求打手的酒吧老板注意到了他的英勇事迹。为了少许的酒钱，钢背兽帮酒馆收集账单，维护秩序，偶尔还能折断一两条腿，如果不走运的吐丝家伙碰到了他那就是五条。\r\n\r\n在一晚痛快的干架中，钢背兽终于遇到了自己的对手，他眼看着酒馆的常客和老板身上都受了不少伤。“先生，你那长牙让我不爽。”他对着一个来自北方荒原，体型巨大的家伙醉醺醺地哼道。接下来就是场世纪大战。十多个斗士一拥而上。凳子无一幸免，最后不可思议的发生了：酒钱没付。数月过去，钢背兽的伤口愈合了，他的刺针也长回来了；但是执法者的名誉受损非常棘手。他自己拿钱付了账单，发誓要去追寻这个北方人，让他加倍偿还。然后他做了件之前从没做过的事：实际上他训练过，在训练中他对自己有了惊人的发现。他折了折自己的刺针后，嘴角扬起了一丝微笑。在战斗中背部迎人或许正好合适。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/bristl'),
(109, 109, '拉席克，受折磨的灵魂，是一个从人性之中被撕裂出来的存在，他身体的一半存在于物质面，另外一半存在于非物质面。他敏锐的智慧使他能觉察到任何生物心中的最细微的恐惧。作为一个曾经毕生寻求存在意义的伟大哲学家，他用时光水晶探视了人性的最深处，在那里，他被展示在他面前的神秘的丑恶永远地改变了。傲慢与自负点燃了他内心最黑暗的深渊。和其他元素生命一样，他也是个完全随天性而行的人，但他的天性中只有邪恶和恐怖。他是唯一一个看到现实世界邪恶真理的存在，对那些相信上苍会对善举做出回馈的人，拉席克无疑是最大的反面例子。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/leshra'),
(110, 110, '如果神明做了噩梦，那一定是祸乱之源带来的。被称为阿特洛波斯的祸乱之源诞生自女神妮塔莎午夜的恐惧。永生的女神在漫长的时间中孕育了过强的恐惧，已经无法用睡眠抑制，于是，祸乱之源在不断蚕食女神的不朽之身后，从她的躯体中逃脱了，他雾状的身形源自女神墨色的鲜血。他的存在就是恐惧本身。听见他声音的凡人会感觉他们心中最阴暗的秘密在耳边低语。他呼唤着所有英雄内心隐藏的恐惧。就算不眠不休亦无济于事，因为祸乱之源会用他不停滴落的黑色血液把敌人困在噩梦中。只要祸乱之源一出现，所有英雄心中都会想起那可怖的黑暗。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/bane_b');
INSERT INTO `hero_intro` (`hid`, `hero_id`, `hero_story1`, `hero_story2`, `hero_story3`, `hero_story4`, `hero_video`) VALUES
(111, 111, '作为苍白之巢王庭的高阶法师，扎贡纳斯的生活非常困苦。他天生就宣誓保护荆棘王座之主，但是对现在的天怒女皇痛恨得咬牙切齿。身为出身高贵的年轻人，他与荆棘王座的第一继承人，天怒皇族的长公主曾是亲密无间的伙伴。他对她浓烈的爱意至死不渝，不过出于自身的身份，他全身心投入到奥术的学习中，努力去掌握天怒一族的法术。\r\n\r\n由于对奥术的着迷，他没有发现王庭有人密谋背叛仙德尔莎，错失阻止阴谋的机会。在王庭的暴力政变瞬息而过，等他在如山的魔法书前抬起头来，发现他挚爱的老友已经无处寻觅。荆棘王座现在由仙德尔莎心肠歹毒的妹妹霸占，而扎贡纳斯无能为力。天怒法师拥有的魔力只会在他保护天怒皇族时才能掌控，所以奋起反抗荆棘王座只会让他一无是处。他坚守自己的岗位，相信总有一天他的真爱将回到应有的王位上。同时，仙德尔莎残破的肉体经由女神丝奎奥克的魔力成为复仇能量的化身，她也知晓天怒法师的暗恋。\r\n\r\n在他梦想着让深爱的女皇重登苍白之巢时，他更渴望让仙德尔莎重拾健全的肉体形态。天性品行高尚，宅心仁厚的他侍奉王庭时阳奉阴违的举动让自己苦恼不已；但是最要命的是，想象着复仇之魂内心因为立场的对立而对他无比憎恨，他痛彻心扉。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/skywra'),
(112, 112, '激怒巨魔是非常轻松的一件事情。巨魔这个种族的特点是容易动怒，喜爱争斗，靠着争吵和打架度日，不会错过任何话茬扯着嗓门与人争辩。男性巨魔在女族长的统治下在地下洞穴长到成年，终日饭来张口，游手好闲。通常在成年后他们还会待上数年，女族长继续负责他们的吃喝拉撒。当年轻的巨魔最终离开地下的洞穴时，他们会找到同类三两成群，组成团伙四处游荡，高声抱怨各种琐事。\r\n\r\n既然巨魔生性爱吵架，可以想象下一只巨魔因为太难相处被族人赶走是件多么稀罕的事。比如巨魔战将的经历，来自霍文林地深处的巨魔商人。他听不得他人的三言两语，说话又十分刻薄粗暴，即使是其他巨魔也发现难以与他相处。特别是有一次劫掠后他一个劲地数落同伴的不是，把大部分战利品都霸占了，他的同伴们终于忍无可忍。他们把矛头都指向他，用棍棒痛扁了一顿，还把他赶出了露营聚集地。他因为这次驱逐暴跳如雷，第二天回去的时候已经全副武装，一个接一个地把同伴杀光。接着他立下血誓：此后成为一支战斗力量为自己卖命。现在他以巨魔战将的称号在世界上游荡，言语尖酸，动作凶猛，作为一支单兵军队高高在上的得力战将。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/troll_'),
(113, 113, '天界之王，众神之父，宙斯对待英雄一向视如己出。然而在无数次与凡间的女性幽会时当场被抓后，宙斯接到了妻子给他下的最后通牒：“既然你这么喜欢凡人，就去当凡人吧。如果你能证明的忠诚，就回来做我永生的丈夫。不然的话，就去和你的创造物一起去死吧。”宙斯无奈的发现她的逻辑（和她的魔法）无懈可击，只好照她说的去做。从那以后宙斯洗心革面，在凡人面前不再多情，将爱留给他永生的女神。但为了证明他配得上永恒的爱妻，他必须在战场上，大获全胜。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/zeus_b'),
(114, 114, '克萝贝露丝曾是一名死亡先知——她为那些希望透过迷雾看清未来的人预知死后的命运，当然只为其中的有钱人做预言。在多年为他人探寻命运后，她开始寻找自己命运的线索。当死亡拒绝向她透露它的秘密后，她便尝试用自己的生命来换取死亡的真相。但即使是这终极的代价也没有用。死亡一次又一次拒绝了她，将最深的秘密隐藏了起来。嫉妒开始在她心里滋长。其他人能够通过死亡来获得永恒——凭什么她不能？凭什么只有她必须不厌其烦的在生与死之间徘徊？凭什么她无法拥有其他所有生物都必有的一死？即使是这样，她也不会气馁。每次从坟墓中返回人间时，她都带回一点死亡气息。鬼魂像她破碎灵魂的碎片般跟着她；她的血液颜色日益稀薄并且散发出灵气；那些在幽暗之处肆意掠食的生物与她愈发亲密。每一次死亡，她都失去一点生命，似乎已经能够看到她的终结之日了。随着她对死亡的加倍追求，她不再为其他客人做预言，专心于自己的命运，克萝贝露丝更狂热地将自己投向死亡的深渊，决心要完成那一直在回避她的预言：某一天，死亡先知将不再从死亡中归来。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/death_'),
(115, 115, '遥远的极地村庄对于王国中心地带肆虐的战火一无所知。对于那里的村民们来说，用长矛刺鱼、一家人聚餐就是生活的全部。但是战争还是到来了。征兵令传来后，出身卑微的长矛手阿兹瑞斯作为一个身体健全的士兵，���入了军队，宣誓给王国带来和平，这样做也是为了给他的村庄带来和平。他和他的族人在对抗恐怖巫师沃恩的最终进攻中被安排为前锋，这使他们付出了几乎全灭的代价。当前锋队一路战斗到敌人的堡垒下时，长矛手的族人已经只剩阿兹瑞斯一个人了，他作为最后一人，成功地潜入了巫师的城堡。族人的死激怒了阿兹瑞斯，他闯过了巫师设置的每一个死亡陷阱，打败了所有巫师召唤的幻象守卫。很快，这个出身低微的渔夫抵达了沃恩的高塔圣所。两人激战了一整晚，长矛和法杖的对决掀起了狂怒的混沌，最终在一声震耳欲聋的嘶吼中，阿兹瑞斯的长矛刺穿了巫师的身体。但是巫师并没有单纯的死去；他爆裂成无数光影的碎片，以巨大的力量穿透了杀死他的阿兹瑞斯。尘埃落定，战斗激起的烟雾散去后，阿兹瑞斯发现他站在一群他的族人之中。每个人都穿的和他一样，每个人都拿着和他一样的武器，而且他能感觉到每个人都和他在进行同样的思考。意识到王国军在接近，阿兹瑞斯希望这些幻影赶快藏起来，于是他们就一个接一个遁入了虚无。士兵们到达塔顶后发现巫师已经被阿兹瑞斯打倒了。当他们靠近这位战士时，长矛手突然消失了。刚才站在他们面前的长矛手只是一个幻影而已。真正的阿兹瑞斯早已逃离了战场，为他的怒火而羞愧，为他失去的同胞而痛心，他坚定了要用今后的战斗为村人带来和平的决心。', '', '', '', 'http://dota2.dl.wanmei.com/dota2/patch/phanto');

-- --------------------------------------------------------

--
-- 表的结构 `hero_location`
--

CREATE TABLE `hero_location` (
  `hid` int(11) NOT NULL,
  `hero_id` int(11) NOT NULL DEFAULT '0',
  `hexin` enum('1','0') NOT NULL DEFAULT '0',
  `kongzhi` enum('1','0') NOT NULL DEFAULT '0',
  `duixianfuzhu` enum('1','0') NOT NULL DEFAULT '0',
  `xianshou` enum('1','0') NOT NULL DEFAULT '0',
  `daye` enum('1','0') NOT NULL DEFAULT '0',
  `fuzhu` enum('1','0') NOT NULL DEFAULT '0',
  `naijiu` enum('1','0') NOT NULL DEFAULT '0',
  `baofa` enum('1','0') NOT NULL DEFAULT '0',
  `tuijin` enum('1','0') NOT NULL DEFAULT '0',
  `taosheng` enum('1','0') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hero_location`
--

INSERT INTO `hero_location` (`hid`, `hero_id`, `hexin`, `kongzhi`, `duixianfuzhu`, `xianshou`, `daye`, `fuzhu`, `naijiu`, `baofa`, `tuijin`, `taosheng`) VALUES
(1, 1, '1', '0', '0', '0', '0', '0', '0', '0', '0', '1'),
(2, 2, '0', '1', '0', '1', '0', '0', '0', '1', '0', '0'),
(3, 3, '0', '1', '0', '1', '0', '0', '1', '1', '0', '0'),
(4, 4, '1', '1', '0', '0', '0', '0', '0', '1', '0', '0'),
(5, 5, '1', '0', '0', '1', '0', '0', '1', '0', '0', '0'),
(6, 6, '0', '1', '0', '1', '0', '1', '0', '1', '0', '1'),
(7, 7, '0', '0', '0', '0', '0', '0', '1', '1', '0', '1'),
(8, 8, '1', '1', '0', '1', '1', '0', '0', '1', '0', '0'),
(9, 9, '0', '1', '0', '1', '0', '0', '1', '1', '0', '0'),
(10, 10, '0', '1', '0', '1', '0', '1', '0', '1', '0', '0'),
(11, 11, '1', '1', '0', '1', '0', '0', '1', '1', '1', '0'),
(12, 12, '1', '1', '0', '1', '0', '0', '1', '1', '0', '0'),
(13, 13, '1', '1', '0', '1', '0', '1', '1', '1', '0', '0'),
(14, 14, '0', '1', '0', '0', '0', '1', '0', '1', '0', '1'),
(15, 15, '0', '0', '0', '0', '0', '0', '0', '1', '0', '1'),
(16, 16, '1', '1', '0', '1', '0', '0', '1', '1', '1', '0'),
(17, 17, '1', '1', '0', '1', '0', '0', '1', '1', '0', '0'),
(18, 18, '1', '1', '0', '1', '0', '0', '0', '1', '0', '1'),
(19, 19, '0', '1', '0', '0', '1', '1', '0', '1', '0', '0'),
(20, 20, '1', '0', '0', '0', '0', '0', '0', '1', '1', '0'),
(21, 21, '0', '1', '0', '1', '0', '1', '0', '1', '1', '0'),
(22, 22, '1', '1', '0', '0', '0', '0', '1', '0', '0', '0'),
(23, 23, '0', '1', '0', '1', '0', '1', '1', '0', '0', '1'),
(24, 24, '1', '0', '0', '0', '0', '0', '0', '1', '1', '1'),
(25, 25, '0', '1', '0', '1', '0', '1', '0', '0', '0', '0'),
(26, 26, '0', '1', '0', '1', '1', '0', '0', '1', '0', '1'),
(27, 27, '1', '1', '0', '1', '0', '1', '0', '1', '0', '0'),
(28, 28, '1', '1', '0', '0', '0', '0', '0', '1', '0', '1'),
(29, 29, '0', '0', '0', '0', '1', '1', '0', '0', '1', '0'),
(30, 30, '1', '1', '0', '1', '0', '0', '0', '1', '0', '1'),
(31, 31, '1', '1', '0', '0', '0', '1', '0', '1', '0', '1'),
(32, 32, '0', '1', '0', '1', '0', '0', '1', '1', '0', '0'),
(33, 33, '1', '0', '0', '0', '0', '0', '0', '1', '1', '0'),
(34, 34, '0', '1', '0', '0', '0', '0', '0', '1', '0', '0'),
(35, 35, '1', '1', '0', '0', '1', '0', '1', '0', '0', '0'),
(36, 36, '0', '1', '0', '0', '0', '1', '0', '1', '1', '0'),
(37, 37, '1', '1', '0', '1', '0', '0', '1', '1', '0', '0'),
(38, 38, '0', '1', '0', '0', '0', '1', '0', '1', '0', '0'),
(39, 39, '0', '1', '0', '1', '0', '0', '1', '1', '0', '0'),
(40, 40, '1', '1', '0', '0', '0', '0', '0', '1', '0', '0'),
(41, 41, '1', '1', '0', '1', '0', '0', '0', '1', '1', '1'),
(42, 42, '1', '1', '0', '1', '0', '0', '1', '0', '0', '0'),
(43, 43, '1', '1', '0', '0', '0', '1', '0', '1', '0', '1'),
(44, 44, '0', '0', '0', '0', '0', '0', '0', '1', '1', '0'),
(45, 45, '0', '1', '0', '0', '0', '1', '0', '1', '0', '0'),
(46, 46, '1', '0', '0', '0', '0', '0', '0', '0', '1', '1'),
(47, 47, '0', '1', '0', '1', '0', '1', '0', '1', '0', '0'),
(48, 48, '0', '1', '0', '1', '0', '0', '1', '1', '0', '1'),
(49, 49, '1', '1', '0', '1', '0', '0', '1', '1', '0', '0'),
(50, 50, '0', '1', '0', '1', '0', '1', '1', '1', '0', '0'),
(51, 51, '0', '1', '0', '1', '0', '0', '0', '1', '0', '1'),
(52, 52, '1', '0', '0', '0', '0', '0', '1', '0', '0', '1'),
(53, 53, '1', '1', '0', '1', '0', '0', '0', '0', '0', '1'),
(54, 54, '0', '0', '0', '0', '0', '1', '0', '1', '0', '0'),
(55, 55, '1', '1', '0', '1', '0', '0', '1', '1', '0', '0'),
(56, 56, '1', '1', '0', '0', '0', '0', '0', '0', '0', '1'),
(57, 57, '1', '1', '0', '1', '0', '0', '1', '1', '0', '0'),
(58, 58, '1', '1', '0', '0', '0', '1', '0', '1', '0', '0'),
(59, 59, '0', '1', '0', '0', '1', '1', '1', '0', '1', '0'),
(60, 60, '1', '1', '0', '1', '0', '0', '1', '0', '0', '1'),
(61, 61, '0', '1', '0', '0', '0', '1', '0', '1', '0', '0'),
(62, 62, '1', '1', '0', '1', '0', '1', '0', '0', '1', '1'),
(63, 63, '1', '0', '0', '0', '1', '0', '1', '0', '1', '0'),
(64, 64, '1', '0', '0', '0', '0', '0', '0', '1', '0', '0'),
(65, 65, '1', '1', '0', '1', '0', '0', '1', '0', '1', '0'),
(66, 66, '0', '0', '0', '0', '0', '1', '0', '1', '0', '1'),
(67, 67, '1', '0', '0', '0', '0', '0', '0', '0', '0', '1'),
(68, 68, '1', '0', '0', '0', '1', '0', '1', '0', '1', '1'),
(69, 69, '1', '1', '0', '0', '0', '0', '0', '0', '1', '0'),
(70, 70, '0', '1', '0', '1', '1', '0', '0', '0', '1', '0'),
(71, 71, '0', '1', '0', '0', '0', '1', '1', '1', '1', '0'),
(72, 72, '1', '1', '0', '0', '1', '0', '1', '0', '0', '1'),
(73, 73, '0', '1', '0', '0', '0', '1', '1', '1', '0', '0'),
(74, 74, '1', '0', '0', '0', '0', '0', '0', '1', '0', '0'),
(75, 75, '1', '1', '0', '0', '0', '0', '1', '1', '0', '1'),
(76, 76, '0', '1', '0', '1', '0', '0', '0', '1', '0', '1'),
(77, 77, '0', '1', '0', '0', '0', '1', '0', '1', '0', '0'),
(78, 78, '0', '1', '0', '1', '0', '1', '0', '1', '0', '1'),
(79, 79, '0', '1', '0', '1', '1', '0', '0', '0', '0', '1'),
(80, 80, '0', '1', '0', '0', '0', '1', '0', '1', '0', '0'),
(81, 81, '1', '1', '0', '1', '0', '0', '1', '0', '0', '1'),
(82, 82, '0', '1', '0', '0', '1', '1', '0', '1', '0', '0'),
(83, 83, '1', '0', '0', '0', '0', '0', '0', '1', '0', '1'),
(84, 84, '1', '0', '0', '0', '0', '0', '0', '1', '0', '1'),
(85, 85, '0', '1', '0', '1', '0', '1', '0', '1', '0', '0'),
(86, 86, '1', '0', '0', '0', '0', '0', '0', '1', '1', '0'),
(87, 87, '1', '1', '0', '1', '0', '0', '1', '0', '0', '1'),
(88, 88, '0', '1', '0', '1', '0', '0', '1', '1', '0', '1'),
(89, 89, '0', '1', '0', '1', '0', '1', '0', '1', '1', '0'),
(90, 90, '0', '0', '0', '0', '0', '1', '1', '1', '0', '0'),
(91, 91, '1', '0', '0', '0', '0', '0', '0', '0', '0', '1'),
(92, 92, '1', '0', '0', '0', '0', '0', '0', '1', '0', '1'),
(93, 93, '0', '1', '0', '0', '0', '1', '1', '1', '0', '1'),
(94, 94, '1', '1', '0', '0', '0', '0', '0', '1', '1', '1'),
(95, 95, '1', '0', '0', '0', '0', '1', '1', '0', '0', '0'),
(96, 96, '0', '1', '0', '1', '1', '0', '0', '0', '0', '1'),
(97, 97, '1', '1', '0', '1', '0', '0', '1', '1', '0', '1'),
(98, 98, '0', '1', '0', '1', '0', '1', '0', '1', '0', '0'),
(99, 99, '0', '1', '0', '1', '1', '0', '1', '0', '0', '0'),
(100, 100, '1', '0', '0', '0', '1', '0', '0', '1', '1', '1'),
(101, 101, '1', '1', '0', '1', '0', '1', '1', '0', '0', '0'),
(102, 102, '1', '0', '0', '0', '0', '0', '0', '0', '1', '1'),
(103, 103, '0', '1', '0', '0', '0', '1', '0', '1', '0', '1'),
(104, 104, '0', '1', '0', '1', '0', '0', '1', '1', '0', '0'),
(105, 105, '1', '0', '0', '0', '0', '0', '1', '1', '1', '0'),
(106, 106, '1', '1', '0', '0', '0', '0', '1', '1', '0', '0'),
(107, 107, '0', '1', '0', '1', '0', '0', '0', '1', '0', '1'),
(108, 108, '1', '0', '0', '1', '0', '0', '1', '1', '0', '0'),
(109, 109, '1', '1', '0', '0', '0', '1', '0', '1', '1', '0'),
(110, 110, '0', '1', '0', '0', '0', '1', '1', '1', '0', '0'),
(111, 111, '0', '1', '0', '0', '0', '1', '0', '1', '0', '0'),
(112, 112, '1', '1', '0', '0', '0', '0', '1', '0', '1', '0'),
(113, 113, '0', '0', '0', '0', '0', '0', '0', '1', '0', '0'),
(114, 114, '1', '1', '0', '0', '0', '0', '0', '1', '1', '0'),
(115, 115, '1', '0', '0', '0', '0', '0', '0', '1', '1', '1');

-- --------------------------------------------------------

--
-- 表的结构 `hero_match`
--

CREATE TABLE `hero_match` (
  `hid` int(11) NOT NULL,
  `hero_id` int(11) NOT NULL DEFAULT '0',
  `fit_match` varchar(256) NOT NULL DEFAULT '',
  `same_type` varchar(256) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hero_match`
--

INSERT INTO `hero_match` (`hid`, `hero_id`, `fit_match`, `same_type`) VALUES
(1, 1, '祸乱之源@兽王@发条技师@龙骑士@军团指挥官@先知@风行者@', '酒仙@末日使者@龙骑士@暗夜魔王@影魔@'),
(2, 2, '半人马战行者@小小@', '小小@斧王@混沌骑士@'),
(3, 3, '沙王@陈@戴泽@撼地者@矮人直升机@艾欧@祈求者@凤凰@', '帕吉@米拉娜@马格纳斯@娜迦海妖@'),
(4, 4, '谜团@潮汐猎人@马格纳斯@斧王@黑暗贤者@', '美杜莎@露娜@'),
(5, 5, '戴泽@全能骑士@亚巴顿@', '熊战士@斯拉达@力丸@噬魂鬼@冥界亚龙@'),
(6, 6, '潮汐猎人@马格纳斯@斧王@祈求者@撼地者@昆卡@沙王@', '潮汐猎人@马格纳斯@撼地者@昆卡@沙王@'),
(7, 7, '水晶室女@光之守卫@树精卫士@', '黑暗贤者@痛苦女王@天怒法师@宙斯@灰烬之灵@大地之灵@'),
(8, 8, '兽王@莱恩@冥界亚龙@复仇之魂@', '莱恩@末日使者@'),
(9, 9, '谜团@潮汐猎人@马格纳斯@斧王@黑暗贤者@', '上古巨神@沙王@干扰者@谜团@马格纳斯@潮汐猎人@'),
(10, 10, '谜团@潮汐猎人@马格纳斯@斧王@黑暗贤者@', '上古巨神@沙王@干扰者@谜团@马格纳斯@潮汐猎人@'),
(11, 11, '兽王@谜团@马格纳斯@光之守卫@巨魔战将@复仇之魂@艾欧@', '天怒法师@莉娜@莱恩@沙王@宙斯@痛苦女王@司夜刺客@'),
(12, 12, '暗影恶魔@干扰者@撼地者@马格纳斯@黑暗贤者@', '狙击手@卓尔游侠@马格纳斯@潮汐猎人@炼金术士@'),
(13, 13, '全能骑士@复仇之魂@水晶室女@斯拉达@', '冥魂大帝@裂魂人@炼金术士@昆卡@军团指挥官@混沌骑士@斯温@'),
(14, 14, '水晶室女@杰奇洛@娜迦海妖@', '水晶室女@魅惑魔女@杰奇洛@维萨吉@巫医@'),
(15, 15, '钢背兽@噬魂鬼@克林克兹@育母蜘蛛@斯拉克@编织者@', '克林克兹@育母蜘���@斯拉克@编织者@'),
(16, 16, '炼金术士@远古冰魄@兽王@半人马战行者@发条技师@黑暗贤者@干扰者@大地之灵@杰奇洛@马格纳斯@', '冥魂大帝@裂魂人@炼金术士@昆卡@军团指挥官@混沌骑士@斯温@'),
(17, 17, '亚巴顿@远古冰魄@嗜血狂魔@莉娜@莱恩@帕吉@天怒法师@狙击手@风暴之灵@宙斯@风行者@', '炼金术士@酒仙@末日使者@龙骑士@哈斯卡@噬魂鬼@冥魂大帝@'),
(18, 18, '陈@光之守卫@噬魂鬼@', '瘟疫法师@死亡先知@殁境神蚀者@灰烬之灵@'),
(19, 19, '炼金术士@远古冰魄@斧王@主宰@噬魂鬼@', '复仇之魂@魅惑魔女@维萨吉@'),
(20, 20, '兽王@嗜血狂魔@', '痛苦女王@死亡先知@小小@'),
(21, 21, '育母蜘蛛@先知@陈@谜团@拉席克@暗影萨满@', '育母蜘蛛@先知@陈@谜团@拉席克@暗影萨满@'),
(22, 22, '水晶室女@莱恩@暗影萨满@潮汐猎人@复仇之魂@巫妖@光之守卫@全能骑士@马格纳斯@', '敌法师@虚空假面@变体精灵@幻影刺客@狙击手@幽鬼@'),
(23, 23, '圣堂刺客@伐木机@不朽尸王@钢背兽@龙骑士@', '戴泽@全能骑士@杰奇洛@'),
(24, 24, '陈@德鲁伊@@先知@修补匠@', '德鲁伊@@先知@克林克兹@'),
(25, 25, '谜团@潮汐猎人@沙王@撼地者@昆卡@', '宙斯@伐木机@马格纳斯@@'),
(26, 26, '谜团@潮汐猎人@斧王@撼地者@昆卡@娜迦海妖@', '天怒法师@莉娜@莱恩@痛苦女王@小小@宙斯@司夜刺客@'),
(27, 27, '潮汐猎人@马格纳斯@影魔@撼地者@', '大地之灵@干扰者@死亡先知@卓尔游侠@'),
(28, 28, '赏金猎人@水晶室女@军团指挥官@暗夜魔王@', '克林克兹@卓尔游侠@虚空假面@噬魂鬼@军团指挥官@米拉娜@'),
(29, 29, '米拉娜@先知@谜团@魅惑魔女@', '魅惑魔女@'),
(30, 30, '斯温@撼地者@沙王@上古巨神@', '瘟疫法师@死亡先知@殁境神蚀者@风暴之灵@'),
(31, 31, '先知@斯温@小小@沙王@', '斯温@小小@沙王@'),
(32, 32, '艾欧@全能骑士@光之守卫@远古冰魄@莱恩@沙王@', '嗜血狂魔@昆卡@发条技师@'),
(33, 33, '复仇之魂@天怒法师@亚巴顿@', '敌法师@美杜莎@卓尔游侠@狙击手@露娜@'),
(34, 34, '小小@黑暗贤者@帕吉@马格纳斯@娜迦海妖@蝙蝠骑士@', '小小@痛苦女王@祈求者@米波@'),
(35, 35, '冥魂大帝@艾欧@全能骑士@', '斯拉达@斯温@小小@噬魂鬼@'),
(36, 36, '暗影恶魔@娜迦海妖@马格纳斯@黑暗贤者@', '祸乱之源@干扰者@光之守卫@艾欧@维萨吉@巫医@'),
(37, 37, '莉娜@拉席克@杰奇洛@昆卡@', '沙王@斯拉达@复仇之魂@卓尔游侠@'),
(38, 38, '水晶室女@杰奇洛@娜迦海妖@', '水晶室女@魅惑魔女@杰奇洛@维萨吉@巫医@'),
(39, 39, '虚空假面@军团指挥官@噬魂鬼@育母蜘蛛@陈@先知@复仇之魂@狙击手@', '祸乱之源@复仇之魂@撼地者@沙王@'),
(40, 40, '水晶室女@莱恩@暗影萨满@潮汐猎人@复仇之魂@巫妖@光之守卫@沉默术士@全能骑士@', '敌法师@虚空假面@变体精灵@幻影长矛手@狙击手@幽鬼@'),
(41, 41, '斧王@@发条技师@撼地者@戴泽@全能骑士@马格纳斯@潮汐猎人@', '克林克兹@风暴之灵@斯拉克@噬魂鬼@'),
(42, 42, '全能骑士@亚巴顿@', '美杜莎@末日使者@@'),
(43, 43, '祸乱之源@炼金术士@兽王@陈@撼地者@龙骑士@大地之灵@军团指挥官@先知@', '狙击手@露娜@昆卡@炼金术士@'),
(44, 44, '育母蜘蛛@先知@陈@谜团@拉席克@暗影萨满@', '育母蜘蛛@先知@陈@谜团@拉席克@'),
(45, 45, '@育母蜘蛛@哈斯卡@', '远古冰魄@巫医@巫妖@暗影恶魔@'),
(46, 46, '炼金术士@蝙蝠骑士@', '赏金猎人@育母蜘蛛@斯拉克@编织者@'),
(47, 47, '米拉娜@拉席克@祈求者@陈@魅惑魔女@昆卡@', '巫医@巫妖@远古冰魄@暗影恶魔@'),
(48, 48, '沙王@暗影恶魔@马格纳斯@全能骑士@亚巴顿@', '钢背兽@酒仙@龙骑士@'),
(49, 49, '全能骑士@瘟疫法师@戴泽@树精卫士@复仇之魂@', '亚巴顿@酒仙@半人马战行者@混沌骑士@发条技师@末日使者@噬魂鬼@斯拉达@'),
(50, 50, '复仇之魂@魅惑魔女@陈@沙王@', '兽王@混沌骑士@莱恩@'),
(51, 51, '谜团@撼地者@昆卡@沙王@术士@', '兽王@干扰者@大地之灵@灰烬之灵@沙王@潮汐猎人@不朽尸王@'),
(52, 52, '水晶室女@莱恩@暗影萨满@潮汐猎人@复仇之魂@巫妖@光之守卫@全能骑士@', '敌法师@虚空假面@变体精灵@幻影刺客@狙击手@幻影长矛手@'),
(53, 53, '潮汐猎人@巫医@谜团@杰奇洛@树精卫士@食人魔魔法师@', '主宰@灰烬之灵@斯拉克@熊战士@幻影刺客@'),
(54, 54, '敌法师@幽鬼@潮汐猎人@马格纳斯@黑暗贤者@', '祸乱之源@干扰者@艾欧@光之守卫@维萨吉@巫医@'),
(55, 55, '兽王@大地之灵@马格纳斯@裂魂人@', '炼金术士@酒仙@龙骑士@哈斯卡@噬魂鬼@冥魂大帝@'),
(56, 56, '祸乱之源@赏金猎人@树精卫士@全能骑士@', '克林克兹@卓尔游侠@虚空假面@噬魂鬼@军团指挥官@米拉娜@斯拉克@'),
(57, 57, '沙王@暗影恶魔@天怒法师@', '兽王@发条技师@末日使者@上古巨神@昆卡@马格纳斯@'),
(58, 58, '祸乱之源@兽王@发条技师@军团指挥官@莱恩@米拉娜@帕吉@暗影萨满@帕格纳@水晶室女@暗影恶魔@', '天怒法师@莱恩@司夜刺客@沙王@小小@宙斯@痛苦女王@'),
(59, 59, '亚巴顿@光之守卫@沉默术士@不朽尸王@', '陈@水晶室女@复仇之魂@'),
(60, 60, '幽鬼@先知@宙斯@光之守卫@修补匠@远古冰魄@艾欧@', '冥魂大帝@龙骑士@炼金术士@昆卡@军团指挥官@混沌骑士@斯温@'),
(61, 61, '混沌骑士@龙骑士@祈求者@莱恩@马格纳斯@风暴之灵@冥魂大帝@斯温@', '巫医@巫妖@戴泽@暗影恶魔@'),
(62, 62, '潮汐猎人@马格纳斯@斧王@祈求者@撼地者@昆卡@沙王@', '幻影长矛手@恐怖利刃@混沌骑士@'),
(63, 63, '炼金术士@兽王@发条技师@撼地者@杰奇洛@', '酒仙@克林克兹@混沌骑士@矮人直升机@殁境神蚀者@小小@'),
(64, 64, '水晶室女@莱恩@暗影萨满@潮汐猎人@复仇之魂@巫妖@光之守卫@全能骑士@', '敌法师@虚空假面@变体精灵@幻影刺客@狙击手@幽鬼@'),
(65, 65, '炼金术士@远古冰魄@兽王@半人马战行者@发条技师@黑暗贤者@干扰者@大地之灵@杰奇洛@马格纳斯@艾欧@', '娜迦海妖@幻影长矛手@龙骑士@暗夜魔王@'),
(66, 66, '小小@混沌骑士@斯拉克@力丸@', '祸乱之源@干扰者@杰奇洛@光之守卫@维萨吉@巫医@'),
(67, 67, '水晶室女@莱恩@暗影萨满@潮汐猎人@复仇之魂@巫妖@光之守卫@', '敌法师@虚空假面@变体精灵@幻影长矛手@狙击手@幽鬼@'),
(68, 68, '育母蜘蛛@谜团@先知@', '修补匠@先知@育母蜘蛛@'),
(69, 69, '龙骑士@撼地者@复仇之魂@沙王@', '狙击手@露娜@米拉娜@昆卡@炼金术士@'),
(70, 70, '全能骑士@沉默术士@', '陈@魅惑魔女@先知@马格纳斯@潮汐猎人@黑暗贤者@'),
(71, 71, '谜团@潮汐猎人@沙王@撼地者@昆卡@', '拉比克@伐木机@宙斯@魅惑魔女@'),
(72, 72, '先知@冥魂大帝@风暴之灵@帕克@', '冥魂大帝@克林克兹@哈斯卡@斯拉达@'),
(73, 73, '树精卫士@潮汐猎人@娜迦海妖@沙王@', '兽王@干扰者@大地之灵@灰烬之灵@沙王@潮汐猎人@钢背兽@'),
(74, 74, '兽王@蝙蝠骑士@虚空假面@马格纳斯@沉默术士@潮汐猎人@', '炼金术士@克林克兹@噬魂鬼@德鲁伊@殁境神蚀者@斯拉克@伐木机@熊战士@'),
(75, 75, '术士@光之守卫@', '狙击手@幻影长矛手@敌法师@幽鬼@'),
(76, 76, '陈@马格纳斯@潮汐猎人@干扰者@大地之灵@昆卡@', '潮汐猎人@术士@马格纳斯@撼地者@'),
(77, 77, '水晶室女@杰奇洛@娜迦海妖@', '水晶室女@魅惑魔女@杰奇洛@维萨吉@巫医@'),
(78, 78, '斯温@沙王@撼地者@敌法师@卓尔游侠@露娜@', '水晶室女@风行者@娜迦海妖@'),
(79, 79, '沉默术士@撼地者@上古巨神@昆卡@殁境神蚀者@影魔@术士@', '兽王@干扰者@大地之灵@灰烬之灵@马格纳斯@沙王@潮汐猎人@不朽尸王@'),
(80, 80, '巫妖@斯拉达@帕克@斯温@沙王@马格纳斯@莉娜@', '巫妖@远古冰魄@暗影恶魔@戴泽@'),
(81, 81, '水晶室女@莱恩@暗影萨满@潮汐猎人@复仇之魂@巫妖@', '敌法师@幻影长矛手@变体精灵@幻影刺客@狙击手@幽鬼@'),
(82, 82, '酒仙@混沌骑士@干扰者@美杜莎@幻影长矛手@', '祸乱之源@干扰者@杰奇洛@艾欧@维萨吉@巫医@'),
(83, 83, '暗影恶魔@光之守卫@水晶室女@宙斯@', '天怒法师@莉娜@莱恩@沙王@小小@宙斯@司夜刺客@'),
(84, 84, '卓尔游侠@主宰@狼人@育母蜘蛛@死亡先知@', '育母蜘蛛@狼人@修补匠@灰烬之灵@'),
(85, 85, '混沌骑士@大地之灵@矮人直升机@噬魂鬼@马格纳斯@', '兽王@大地之灵@灰烬之灵@马格纳斯@沙王@潮汐猎人@不朽尸王@'),
(86, 86, '全能骑士@潮汐猎人@帕克@复仇之魂@', '狙击手@卓尔游侠@昆卡@炼金术士@'),
(87, 87, '戴泽@小小@复仇之魂@赏金猎人@', '冥魂大帝@克林克兹@哈斯卡@'),
(88, 88, '伐木机@末日使者@斯拉克@炼金术士@马格纳斯@', '伐木机@末日使者@斯拉克@炼金术士@马格纳斯@'),
(89, 89, '小小@先知@陈@谜团@拉席克@暗影萨满@', '育母蜘蛛@先知@陈@谜团@拉席克@暗影萨满@'),
(90, 90, '戴泽@树精卫士@杰奇洛@亚巴顿@帕吉@', '戴泽@树精卫士@杰奇洛@亚巴顿@'),
(91, 91, '全能骑士@谜团@潮汐猎人@沙王@撼地者@昆卡@', '赏金猎人@力丸@斯拉克@'),
(92, 92, '水晶室女@莱恩@暗影萨满@潮汐猎人@复仇之魂@巫妖@', '虚空假面@幻影长矛手@变体精灵@幻影刺客@狙击手@幽鬼@'),
(93, 93, '天怒法师@痛苦女王@力丸@虚空假面@露娜@', '潮汐猎人@食人魔魔法师@钢背兽@斯拉达@沙王@'),
(94, 94, '发条技师@远古冰魄@马格纳斯@黑暗贤者@虚空假面@', '马格纳斯@杰奇洛@小小@莉娜@'),
(95, 95, '全能骑士@黑暗贤者@斧王@酒仙@半人马战行者@发条技师@末日使者@哈斯卡@暗夜魔王@斯拉达@斯温@', '全能骑士@戴泽@'),
(96, 96, '干扰者@上古巨神@撼地者@昆卡@沙王@斯拉达@', '潮汐猎人@发条技师@马格纳斯@'),
(97, 97, '远古冰魄@发条技师@巨牙海民@全能骑士@黑暗贤者@', '亚巴顿@钢背兽@矮人直升机@'),
(98, 98, '祈求者@暗夜魔王@帕吉@天怒法师@斯拉达@冥魂大帝@', '天怒法师@莉娜@司夜刺客@沙王@小小@宙斯@痛苦女王@'),
(99, 99, '亚巴顿@半人马战行者@干扰者@光之守卫@全能骑士@戴泽@', '斯拉达@兽王@谜团@半人马战行者@撼地者@昆卡@'),
(100, 100, '噬魂鬼@谜团@修补匠@宙斯@', '修补匠@宙斯@幽鬼@远古冰魄@育母蜘蛛@'),
(101, 101, '蝙蝠骑士@赏金猎人@嗜血狂魔@撼地者@光之守卫@剧毒术士@', '龙骑士@裂魂人@炼金术士@昆卡@军团指挥官@混沌骑士@斯温@'),
(102, 102, '水晶室女@娜迦海妖@米拉娜@恐怖利刃@', '斯温@沙王@斯拉克@斯拉达@'),
(103, 103, '齐天大圣@嗜血狂魔@祸乱之源@暗影萨满@干扰者@', '帕克@痛苦女王@拉席克@神谕者@'),
(104, 104, '娜迦海妖@露娜@黑暗贤者@', '兽王@昆卡@马格纳斯@沙王@树精卫士@'),
(105, 105, '亚巴顿@兽王@', '伐木机@裂魂人@维萨吉@潮汐猎人@'),
(106, 106, '天怒法师@哈斯卡@宙斯@痛苦女王@', '全能骑士@死亡先知@殁境神蚀者@戴泽@'),
(107, 107, '兽王@半人马战行者@干扰者@龙骑士@莱恩@先知@沙王@斯温@宙斯@', '天怒法师@莉娜@莱恩@沙王@小小@宙斯@痛苦女王@'),
(108, 108, '树精卫士@全能骑士@', '亚巴顿@半人马战行者@龙骑士@暗夜魔王@'),
(109, 109, '暗影恶魔@斯温@沙王@杰奇洛@食人魔魔法师@', '祸乱之源@干扰者@艾欧@光之守卫@维萨吉@巫医@'),
(110, 110, '敌法师@死亡先知@卓尔游侠@魅惑魔女@矮人直升机@变体精灵@殁境神蚀者@幻影刺客@斯拉克@狙击手@', '蝙蝠骑士@撼地者@上古巨神@莱恩@暗影萨满@'),
(111, 111, '祸乱之源@兽王@发条技师@军团指挥官@莱恩@米拉娜@帕吉@暗影萨满@', '莉娜@莱恩@司夜刺客@沙王@小小@宙斯@痛苦女王@'),
(112, 112, '熊战士@虚空假面@噬魂鬼@美杜莎@殁境神蚀者@斯拉克@沙王@', '幻影刺客@敌法师@噬魂鬼@虚空假面@'),
(113, 113, '先知@幽鬼@修补匠@远古冰魄@帕格纳@光之守卫@', '天怒法师@莉娜@莱恩@沙王@小小@痛苦女王@司夜刺客@'),
(114, 114, '马格纳斯@黑暗贤者@', '卓尔游侠@瘟疫法师@'),
(115, 115, '水晶室女@莱恩@暗影萨满@潮汐猎人@复仇之魂@巫妖@光之守卫@', '敌法师@虚空假面@变体精灵@幻影刺客@狙击手@幽鬼@');

-- --------------------------------------------------------

--
-- 表的结构 `hero_pic`
--

CREATE TABLE `hero_pic` (
  `hid` int(11) NOT NULL,
  `hero_id` int(11) NOT NULL DEFAULT '0',
  `xs_pic` varchar(128) NOT NULL DEFAULT '',
  `sm_pic` varchar(128) NOT NULL DEFAULT '',
  `ss_pic` varchar(128) NOT NULL DEFAULT '',
  `mm_pic` varchar(128) NOT NULL DEFAULT '',
  `touxiang_pic` varchar(128) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hero_pic`
--

INSERT INTO `hero_pic` (`hid`, `hero_id`, `xs_pic`, `sm_pic`, `ss_pic`, `mm_pic`, `touxiang_pic`) VALUES
(1, 1, 'http://www.dota2.com.cn/images/heroes/earthshaker_sb.png', 'http://www.dota2.com.cn/images/heroes/earthshaker_hphover.png', 'http://www.dota2.com.cn/images/heroes/templar_assassin_full.png', 'http://www.dota2.com.cn/images/heroes/templar_assassin_vert.jpg', 'http://www.dota2.com.cn/images/heroes/templar_assassin_icon.png'),
(2, 2, 'http://www.dota2.com.cn/images/heroes/sven_sb.png', 'http://www.dota2.com.cn/images/heroes/sven_hphover.png', 'http://www.dota2.com.cn/images/heroes/tusk_full.png', 'http://www.dota2.com.cn/images/heroes/tusk_vert.jpg', 'http://www.dota2.com.cn/images/heroes/tusk_icon.png'),
(3, 3, 'http://www.dota2.com.cn/images/heroes/tiny_sb.png', 'http://www.dota2.com.cn/images/heroes/tiny_hphover.png', 'http://www.dota2.com.cn/images/heroes/rattletrap_full.png', 'http://www.dota2.com.cn/images/heroes/rattletrap_vert.jpg', 'http://www.dota2.com.cn/images/heroes/rattletrap_icon.png'),
(4, 4, 'http://www.dota2.com.cn/images/heroes/kunkka_sb.png', 'http://www.dota2.com.cn/images/heroes/kunkka_hphover.png', 'http://www.dota2.com.cn/images/heroes/gyrocopter_full.png', 'http://www.dota2.com.cn/images/heroes/gyrocopter_vert.jpg', 'http://www.dota2.com.cn/images/heroes/gyrocopter_icon.png'),
(5, 5, 'http://www.dota2.com.cn/images/heroes/beastmaster_sb.png', 'http://www.dota2.com.cn/images/heroes/beastmaster_hphover.png', 'http://www.dota2.com.cn/images/heroes/huskar_full.png', 'http://www.dota2.com.cn/images/heroes/huskar_vert.jpg', 'http://www.dota2.com.cn/images/heroes/huskar_icon.png'),
(6, 6, 'http://www.dota2.com.cn/images/heroes/dragon_knight_sb.png', 'http://www.dota2.com.cn/images/heroes/dragon_knight_hphover.png', 'http://www.dota2.com.cn/images/heroes/phoenix_full.png', 'http://www.dota2.com.cn/images/heroes/phoenix_vert.jpg', 'http://www.dota2.com.cn/images/heroes/phoenix_icon.png'),
(7, 7, 'http://www.dota2.com.cn/images/heroes/rattletrap_sb.png', 'http://www.dota2.com.cn/images/heroes/rattletrap_hphover.png', 'http://www.dota2.com.cn/images/heroes/shredder_full.png', 'http://www.dota2.com.cn/images/heroes/shredder_vert.jpg', 'http://www.dota2.com.cn/images/heroes/shredder_icon.png'),
(8, 8, 'http://www.dota2.com.cn/images/heroes/omniknight_sb.png', 'http://www.dota2.com.cn/images/heroes/omniknight_hphover.png', 'http://www.dota2.com.cn/images/heroes/bloodseeker_full.png', 'http://www.dota2.com.cn/images/heroes/bloodseeker_vert.jpg', 'http://www.dota2.com.cn/images/heroes/bloodseeker_icon.png'),
(9, 9, 'http://www.dota2.com.cn/images/heroes/huskar_sb.png', 'http://www.dota2.com.cn/images/heroes/huskar_hphover.png', 'http://www.dota2.com.cn/images/heroes/elder_titan_full.png', 'http://www.dota2.com.cn/images/heroes/elder_titan_vert.jpg', 'http://www.dota2.com.cn/images/heroes/elder_titan_icon.png'),
(10, 10, 'http://www.dota2.com.cn/images/heroes/alchemist_sb.png', 'http://www.dota2.com.cn/images/heroes/alchemist_hphover.png', 'http://www.dota2.com.cn/images/heroes/earthshaker_full.png', 'http://www.dota2.com.cn/images/heroes/earthshaker_vert.jpg', 'http://www.dota2.com.cn/images/heroes/earthshaker_icon.png'),
(11, 11, 'http://www.dota2.com.cn/images/heroes/brewmaster_sb.png', 'http://www.dota2.com.cn/images/heroes/brewmaster_hphover.png', 'http://www.dota2.com.cn/images/heroes/tiny_full.png', 'http://www.dota2.com.cn/images/heroes/tiny_vert.jpg', 'http://www.dota2.com.cn/images/heroes/tiny_icon.png'),
(12, 12, 'http://www.dota2.com.cn/images/heroes/treant_sb.png', 'http://www.dota2.com.cn/images/heroes/treant_hphover.png', 'http://www.dota2.com.cn/images/heroes/kunkka_full.png', 'http://www.dota2.com.cn/images/heroes/kunkka_vert.jpg', 'http://www.dota2.com.cn/images/heroes/kunkka_icon.png'),
(13, 13, 'http://www.dota2.com.cn/images/heroes/wisp_sb.png', 'http://www.dota2.com.cn/images/heroes/wisp_hphover.png', 'http://www.dota2.com.cn/images/heroes/alchemist_full.png', 'http://www.dota2.com.cn/images/heroes/alchemist_vert.jpg', 'http://www.dota2.com.cn/images/heroes/alchemist_icon.png'),
(14, 14, 'http://www.dota2.com.cn/images/heroes/centaur_sb.png', 'http://www.dota2.com.cn/images/heroes/centaur_hphover.png', 'http://www.dota2.com.cn/images/heroes/oracle_full.png', 'http://www.dota2.com.cn/images/heroes/oracle_vert.jpg', 'http://www.dota2.com.cn/images/heroes/oracle_icon.png'),
(15, 15, 'http://www.dota2.com.cn/images/heroes/shredder_sb.png', 'http://www.dota2.com.cn/images/heroes/shredder_hphover.png', 'http://www.dota2.com.cn/images/heroes/bounty_hunter_full.png', 'http://www.dota2.com.cn/images/heroes/bounty_hunter_vert.jpg', 'http://www.dota2.com.cn/images/heroes/bounty_hunter_icon.png'),
(16, 16, 'http://www.dota2.com.cn/images/heroes/bristleback_sb.png', 'http://www.dota2.com.cn/images/heroes/bristleback_hphover.png', 'http://www.dota2.com.cn/images/heroes/dragon_knight_full.png', 'http://www.dota2.com.cn/images/heroes/dragon_knight_vert.jpg', 'http://www.dota2.com.cn/images/heroes/dragon_knight_icon.png'),
(17, 17, 'http://www.dota2.com.cn/images/heroes/tusk_sb.png', 'http://www.dota2.com.cn/images/heroes/tusk_hphover.png', 'http://www.dota2.com.cn/images/heroes/legion_commander_full.png', 'http://www.dota2.com.cn/images/heroes/legion_commander_vert.jpg', 'http://www.dota2.com.cn/images/heroes/legion_commander_icon.png'),
(18, 18, 'http://www.dota2.com.cn/images/heroes/elder_titan_sb.png', 'http://www.dota2.com.cn/images/heroes/elder_titan_hphover.png', 'http://www.dota2.com.cn/images/heroes/storm_spirit_full.png', 'http://www.dota2.com.cn/images/heroes/storm_spirit_vert.jpg', 'http://www.dota2.com.cn/images/heroes/storm_spirit_icon.png'),
(19, 19, 'http://www.dota2.com.cn/images/heroes/legion_commander_sb.png', 'http://www.dota2.com.cn/images/heroes/legion_commander_hphover.png', 'http://www.dota2.com.cn/images/heroes/crystal_maiden_full.png', 'http://www.dota2.com.cn/images/heroes/crystal_maiden_vert.jpg', 'http://www.dota2.com.cn/images/heroes/crystal_maiden_icon.png'),
(20, 20, 'http://www.dota2.com.cn/images/heroes/earth_spirit_sb.png', 'http://www.dota2.com.cn/images/heroes/earth_spirit_hphover.png', 'http://www.dota2.com.cn/images/heroes/tinker_full.png', 'http://www.dota2.com.cn/images/heroes/tinker_vert.jpg', 'http://www.dota2.com.cn/images/heroes/tinker_icon.png'),
(21, 21, 'http://www.dota2.com.cn/images/heroes/phoenix_sb.png', 'http://www.dota2.com.cn/images/heroes/phoenix_hphover.png', 'http://www.dota2.com.cn/images/heroes/shadow_shaman_full.png', 'http://www.dota2.com.cn/images/heroes/shadow_shaman_vert.jpg', 'http://www.dota2.com.cn/images/heroes/shadow_shaman_icon.png'),
(22, 22, 'http://www.dota2.com.cn/images/heroes/antimage_sb.png', 'http://www.dota2.com.cn/images/heroes/antimage_hphover.png', 'http://www.dota2.com.cn/images/heroes/medusa_full.png', 'http://www.dota2.com.cn/images/heroes/medusa_vert.jpg', 'http://www.dota2.com.cn/images/heroes/medusa_icon.png'),
(23, 23, 'http://www.dota2.com.cn/images/heroes/drow_ranger_sb.png', 'http://www.dota2.com.cn/images/heroes/drow_ranger_hphover.png', 'http://www.dota2.com.cn/images/heroes/treant_full.png', 'http://www.dota2.com.cn/images/heroes/treant_vert.jpg', 'http://www.dota2.com.cn/images/heroes/treant_icon.png'),
(24, 24, 'http://www.dota2.com.cn/images/heroes/juggernaut_sb.png', 'http://www.dota2.com.cn/images/heroes/juggernaut_hphover.png', 'http://www.dota2.com.cn/images/heroes/broodmother_full.png', 'http://www.dota2.com.cn/images/heroes/broodmother_vert.jpg', 'http://www.dota2.com.cn/images/heroes/broodmother_icon.png'),
(25, 25, 'http://www.dota2.com.cn/images/heroes/mirana_sb.png', 'http://www.dota2.com.cn/images/heroes/mirana_hphover.png', 'http://www.dota2.com.cn/images/heroes/warlock_full.png', 'http://www.dota2.com.cn/images/heroes/warlock_vert.jpg', 'http://www.dota2.com.cn/images/heroes/warlock_icon.png'),
(26, 26, 'http://www.dota2.com.cn/images/heroes/morphling_sb.png', 'http://www.dota2.com.cn/images/heroes/morphling_hphover.png', 'http://www.dota2.com.cn/images/heroes/sand_king_full.png', 'http://www.dota2.com.cn/images/heroes/sand_king_vert.jpg', 'http://www.dota2.com.cn/images/heroes/sand_king_icon.png'),
(27, 27, 'http://www.dota2.com.cn/images/heroes/phantom_lancer_sb.png', 'http://www.dota2.com.cn/images/heroes/phantom_lancer_hphover.png', 'http://www.dota2.com.cn/images/heroes/silencer_full.png', 'http://www.dota2.com.cn/images/heroes/silencer_vert.jpg', 'http://www.dota2.com.cn/images/heroes/silencer_icon.png'),
(28, 28, 'http://www.dota2.com.cn/images/heroes/vengefulspirit_sb.png', 'http://www.dota2.com.cn/images/heroes/vengefulspirit_hphover.png', 'http://www.dota2.com.cn/images/heroes/slark_full.png', 'http://www.dota2.com.cn/images/heroes/slark_vert.jpg', 'http://www.dota2.com.cn/images/heroes/slark_icon.png'),
(29, 29, 'http://www.dota2.com.cn/images/heroes/riki_sb.png', 'http://www.dota2.com.cn/images/heroes/riki_hphover.png', 'http://www.dota2.com.cn/images/heroes/chen_full.png', 'http://www.dota2.com.cn/images/heroes/chen_vert.jpg', 'http://www.dota2.com.cn/images/heroes/chen_icon.png'),
(30, 30, 'http://www.dota2.com.cn/images/heroes/sniper_sb.png', 'http://www.dota2.com.cn/images/heroes/sniper_hphover.png', 'http://www.dota2.com.cn/images/heroes/ember_spirit_full.png', 'http://www.dota2.com.cn/images/heroes/ember_spirit_vert.jpg', 'http://www.dota2.com.cn/images/heroes/ember_spirit_icon.png'),
(31, 31, 'http://www.dota2.com.cn/images/heroes/templar_assassin_sb.png', 'http://www.dota2.com.cn/images/heroes/templar_assassin_hphover.png', 'http://www.dota2.com.cn/images/heroes/windrunner_full.png', 'http://www.dota2.com.cn/images/heroes/windrunner_vert.jpg', 'http://www.dota2.com.cn/images/heroes/windrunner_icon.png'),
(32, 32, 'http://www.dota2.com.cn/images/heroes/luna_sb.png', 'http://www.dota2.com.cn/images/heroes/luna_hphover.png', 'http://www.dota2.com.cn/images/heroes/pudge_full.png', 'http://www.dota2.com.cn/images/heroes/pudge_vert.jpg', 'http://www.dota2.com.cn/images/heroes/pudge_icon.png'),
(33, 33, 'http://www.dota2.com.cn/images/heroes/bounty_hunter_sb.png', 'http://www.dota2.com.cn/images/heroes/bounty_hunter_hphover.png', 'http://www.dota2.com.cn/images/heroes/terrorblade_full.png', 'http://www.dota2.com.cn/images/heroes/terrorblade_vert.jpg', 'http://www.dota2.com.cn/images/heroes/terrorblade_icon.png'),
(34, 34, 'http://www.dota2.com.cn/images/heroes/ursa_sb.png', 'http://www.dota2.com.cn/images/heroes/ursa_hphover.png', 'http://www.dota2.com.cn/images/heroes/techies_full.png', 'http://www.dota2.com.cn/images/heroes/techies_vert.jpg', 'http://www.dota2.com.cn/images/heroes/techies_icon.png'),
(35, 35, 'http://www.dota2.com.cn/images/heroes/gyrocopter_sb.png', 'http://www.dota2.com.cn/images/heroes/gyrocopter_hphover.png', 'http://www.dota2.com.cn/images/heroes/ursa_full.png', 'http://www.dota2.com.cn/images/heroes/ursa_vert.jpg', 'http://www.dota2.com.cn/images/heroes/ursa_icon.png'),
(36, 36, 'http://www.dota2.com.cn/images/heroes/lone_druid_sb.png', 'http://www.dota2.com.cn/images/heroes/lone_druid_hphover.png', 'http://www.dota2.com.cn/images/heroes/jakiro_full.png', 'http://www.dota2.com.cn/images/heroes/jakiro_vert.jpg', 'http://www.dota2.com.cn/images/heroes/jakiro_icon.png'),
(37, 37, 'http://www.dota2.com.cn/images/heroes/naga_siren_sb.png', 'http://www.dota2.com.cn/images/heroes/naga_siren_hphover.png', 'http://www.dota2.com.cn/images/heroes/sven_full.png', 'http://www.dota2.com.cn/images/heroes/sven_vert.jpg', 'http://www.dota2.com.cn/images/heroes/sven_icon.png'),
(38, 38, 'http://www.dota2.com.cn/images/heroes/troll_warlord_sb.png', 'http://www.dota2.com.cn/images/heroes/troll_warlord_hphover.png', 'http://www.dota2.com.cn/images/heroes/winter_wyvern_full.png', 'http://www.dota2.com.cn/images/heroes/winter_wyvern_vert.jpg', 'http://www.dota2.com.cn/images/heroes/winter_wyvern_icon.png'),
(39, 39, 'http://www.dota2.com.cn/images/heroes/ember_spirit_sb.png', 'http://www.dota2.com.cn/images/heroes/ember_spirit_hphover.png', 'http://www.dota2.com.cn/images/heroes/beastmaster_full.png', 'http://www.dota2.com.cn/images/heroes/beastmaster_vert.jpg', 'http://www.dota2.com.cn/images/heroes/beastmaster_icon.png'),
(40, 40, 'http://www.dota2.com.cn/images/heroes/monkey_king_sb.png', 'http://www.dota2.com.cn/images/heroes/monkey_king_hphover.png', 'http://www.dota2.com.cn/images/heroes/obsidian_destroyer_full.png', 'http://www.dota2.com.cn/images/heroes/obsidian_destroyer_vert.jpg', 'http://www.dota2.com.cn/images/heroes/obsidian_destroyer_icon.png'),
(41, 41, 'http://www.dota2.com.cn/images/heroes/pangolier_sb.png', 'http://www.dota2.com.cn/images/heroes/pangolier_hphover.png', 'http://www.dota2.com.cn/images/heroes/meepo_full.png', 'http://www.dota2.com.cn/images/heroes/meepo_vert.jpg', 'http://www.dota2.com.cn/images/heroes/meepo_icon.png'),
(42, 42, 'http://www.dota2.com.cn/images/heroes/crystal_maiden_sb.png', 'http://www.dota2.com.cn/images/heroes/crystal_maiden_hphover.png', 'http://www.dota2.com.cn/images/heroes/viper_full.png', 'http://www.dota2.com.cn/images/heroes/viper_vert.jpg', 'http://www.dota2.com.cn/images/heroes/viper_icon.png'),
(43, 43, 'http://www.dota2.com.cn/images/heroes/puck_sb.png', 'http://www.dota2.com.cn/images/heroes/puck_hphover.png', 'http://www.dota2.com.cn/images/heroes/mirana_full.png', 'http://www.dota2.com.cn/images/heroes/mirana_vert.jpg', 'http://www.dota2.com.cn/images/heroes/mirana_icon.png'),
(44, 44, 'http://www.dota2.com.cn/images/heroes/storm_spirit_sb.png', 'http://www.dota2.com.cn/images/heroes/storm_spirit_hphover.png', 'http://www.dota2.com.cn/images/heroes/pugna_full.png', 'http://www.dota2.com.cn/images/heroes/pugna_vert.jpg', 'http://www.dota2.com.cn/images/heroes/pugna_icon.png'),
(45, 45, 'http://www.dota2.com.cn/images/heroes/windrunner_sb.png', 'http://www.dota2.com.cn/images/heroes/windrunner_hphover.png', 'http://www.dota2.com.cn/images/heroes/dazzle_full.png', 'http://www.dota2.com.cn/images/heroes/dazzle_vert.jpg', 'http://www.dota2.com.cn/images/heroes/dazzle_icon.png'),
(46, 46, 'http://www.dota2.com.cn/images/heroes/zuus_sb.png', 'http://www.dota2.com.cn/images/heroes/zuus_hphover.png', 'http://www.dota2.com.cn/images/heroes/clinkz_full.png', 'http://www.dota2.com.cn/images/heroes/clinkz_vert.jpg', 'http://www.dota2.com.cn/images/heroes/clinkz_icon.png'),
(47, 47, 'http://www.dota2.com.cn/images/heroes/lina_sb.png', 'http://www.dota2.com.cn/images/heroes/lina_hphover.png', 'http://www.dota2.com.cn/images/heroes/shadow_demon_full.png', 'http://www.dota2.com.cn/images/heroes/shadow_demon_vert.jpg', 'http://www.dota2.com.cn/images/heroes/shadow_demon_icon.png'),
(48, 48, 'http://www.dota2.com.cn/images/heroes/shadow_shaman_sb.png', 'http://www.dota2.com.cn/images/heroes/shadow_shaman_hphover.png', 'http://www.dota2.com.cn/images/heroes/centaur_full.png', 'http://www.dota2.com.cn/images/heroes/centaur_vert.jpg', 'http://www.dota2.com.cn/images/heroes/centaur_icon.png'),
(49, 49, 'http://www.dota2.com.cn/images/heroes/tinker_sb.png', 'http://www.dota2.com.cn/images/heroes/tinker_hphover.png', 'http://www.dota2.com.cn/images/heroes/night_stalker_full.png', 'http://www.dota2.com.cn/images/heroes/night_stalker_vert.jpg', 'http://www.dota2.com.cn/images/heroes/night_stalker_icon.png'),
(50, 50, 'http://www.dota2.com.cn/images/heroes/furion_sb.png', 'http://www.dota2.com.cn/images/heroes/furion_hphover.png', 'http://www.dota2.com.cn/images/heroes/ogre_magi_full.png', 'http://www.dota2.com.cn/images/heroes/ogre_magi_vert.jpg', 'http://www.dota2.com.cn/images/heroes/ogre_magi_icon.png'),
(51, 51, 'http://www.dota2.com.cn/images/heroes/enchantress_sb.png', 'http://www.dota2.com.cn/images/heroes/enchantress_hphover.png', 'http://www.dota2.com.cn/images/heroes/magnataur_full.png', 'http://www.dota2.com.cn/images/heroes/magnataur_vert.jpg', 'http://www.dota2.com.cn/images/heroes/magnataur_icon.png'),
(52, 52, 'http://www.dota2.com.cn/images/heroes/jakiro_sb.png', 'http://www.dota2.com.cn/images/heroes/jakiro_hphover.png', 'http://www.dota2.com.cn/images/heroes/spectre_full.png', 'http://www.dota2.com.cn/images/heroes/spectre_vert.jpg', 'http://www.dota2.com.cn/images/heroes/spectre_icon.png'),
(53, 53, 'http://www.dota2.com.cn/images/heroes/chen_sb.png', 'http://www.dota2.com.cn/images/heroes/chen_hphover.png', 'http://www.dota2.com.cn/images/heroes/monkey_king_full.png', 'http://www.dota2.com.cn/images/heroes/monkey_king_vert.jpg', 'http://www.dota2.com.cn/images/heroes/monkey_king_icon.png'),
(54, 54, 'http://www.dota2.com.cn/images/heroes/silencer_sb.png', 'http://www.dota2.com.cn/images/heroes/silencer_hphover.png', 'http://www.dota2.com.cn/images/heroes/lich_full.png', 'http://www.dota2.com.cn/images/heroes/lich_vert.jpg', 'http://www.dota2.com.cn/images/heroes/lich_icon.png'),
(55, 55, 'http://www.dota2.com.cn/images/heroes/ogre_magi_sb.png', 'http://www.dota2.com.cn/images/heroes/ogre_magi_hphover.png', 'http://www.dota2.com.cn/images/heroes/doom_bringer_full.png', 'http://www.dota2.com.cn/images/heroes/doom_bringer_vert.jpg', 'http://www.dota2.com.cn/images/heroes/doom_bringer_icon.png'),
(56, 56, 'http://www.dota2.com.cn/images/heroes/rubick_sb.png', 'http://www.dota2.com.cn/images/heroes/rubick_hphover.png', 'http://www.dota2.com.cn/images/heroes/riki_full.png', 'http://www.dota2.com.cn/images/heroes/riki_vert.jpg', 'http://www.dota2.com.cn/images/heroes/riki_icon.png'),
(57, 57, 'http://www.dota2.com.cn/images/heroes/disruptor_sb.png', 'http://www.dota2.com.cn/images/heroes/disruptor_hphover.png', 'http://www.dota2.com.cn/images/heroes/brewmaster_full.png', 'http://www.dota2.com.cn/images/heroes/brewmaster_vert.jpg', 'http://www.dota2.com.cn/images/heroes/brewmaster_icon.png'),
(58, 58, 'http://www.dota2.com.cn/images/heroes/keeper_of_the_light_sb.png', 'http://www.dota2.com.cn/images/heroes/keeper_of_the_light_hphover.png', 'http://www.dota2.com.cn/images/heroes/lina_full.png', 'http://www.dota2.com.cn/images/heroes/lina_vert.jpg', 'http://www.dota2.com.cn/images/heroes/lina_icon.png'),
(59, 59, 'http://www.dota2.com.cn/images/heroes/skywrath_mage_sb.png', 'http://www.dota2.com.cn/images/heroes/skywrath_mage_hphover.png', 'http://www.dota2.com.cn/images/heroes/enchantress_full.png', 'http://www.dota2.com.cn/images/heroes/enchantress_vert.jpg', 'http://www.dota2.com.cn/images/heroes/enchantress_icon.png'),
(60, 60, 'http://www.dota2.com.cn/images/heroes/oracle_sb.png', 'http://www.dota2.com.cn/images/heroes/oracle_hphover.png', 'http://www.dota2.com.cn/images/heroes/spirit_breaker_full.png', 'http://www.dota2.com.cn/images/heroes/spirit_breaker_vert.jpg', 'http://www.dota2.com.cn/images/heroes/spirit_breaker_icon.png'),
(61, 61, 'http://www.dota2.com.cn/images/heroes/techies_sb.png', 'http://www.dota2.com.cn/images/heroes/techies_hphover.png', 'http://www.dota2.com.cn/images/heroes/ancient_apparition_full.png', 'http://www.dota2.com.cn/images/heroes/ancient_apparition_vert.jpg', 'http://www.dota2.com.cn/images/heroes/ancient_apparition_icon.png'),
(62, 62, 'http://www.dota2.com.cn/images/heroes/dark_willow_sb.png', 'http://www.dota2.com.cn/images/heroes/dark_willow_hphover.png', 'http://www.dota2.com.cn/images/heroes/naga_siren_full.png', 'http://www.dota2.com.cn/images/heroes/naga_siren_vert.jpg', 'http://www.dota2.com.cn/images/heroes/naga_siren_icon.png'),
(63, 63, 'http://www.dota2.com.cn/images/heroes/axe_sb.png', 'http://www.dota2.com.cn/images/heroes/axe_hphover.png', 'http://www.dota2.com.cn/images/heroes/lone_druid_full.png', 'http://www.dota2.com.cn/images/heroes/lone_druid_vert.jpg', 'http://www.dota2.com.cn/images/heroes/lone_druid_icon.png'),
(64, 64, 'http://www.dota2.com.cn/images/heroes/pudge_sb.png', 'http://www.dota2.com.cn/images/heroes/pudge_hphover.png', 'http://www.dota2.com.cn/images/heroes/sniper_full.png', 'http://www.dota2.com.cn/images/heroes/sniper_vert.jpg', 'http://www.dota2.com.cn/images/heroes/sniper_icon.png'),
(65, 65, 'http://www.dota2.com.cn/images/heroes/sand_king_sb.png', 'http://www.dota2.com.cn/images/heroes/sand_king_hphover.png', 'http://www.dota2.com.cn/images/heroes/chaos_knight_full.png', 'http://www.dota2.com.cn/images/heroes/chaos_knight_vert.jpg', 'http://www.dota2.com.cn/images/heroes/chaos_knight_icon.png'),
(66, 66, 'http://www.dota2.com.cn/images/heroes/slardar_sb.png', 'http://www.dota2.com.cn/images/heroes/slardar_hphover.png', 'http://www.dota2.com.cn/images/heroes/wisp_full.png', 'http://www.dota2.com.cn/images/heroes/wisp_vert.jpg', 'http://www.dota2.com.cn/images/heroes/wisp_icon.png'),
(67, 67, 'http://www.dota2.com.cn/images/heroes/tidehunter_sb.png', 'http://www.dota2.com.cn/images/heroes/tidehunter_hphover.png', 'http://www.dota2.com.cn/images/heroes/phantom_assassin_full.png', 'http://www.dota2.com.cn/images/heroes/phantom_assassin_vert.jpg', 'http://www.dota2.com.cn/images/heroes/phantom_assassin_icon.png'),
(68, 68, 'http://www.dota2.com.cn/images/heroes/wraith_king_sb.png', 'http://www.dota2.com.cn/images/heroes/wraith_king_hphover.png', 'http://www.dota2.com.cn/images/heroes/lycan_full.png', 'http://www.dota2.com.cn/images/heroes/lycan_vert.jpg', 'http://www.dota2.com.cn/images/heroes/lycan_icon.png'),
(69, 69, 'http://www.dota2.com.cn/images/heroes/life_stealer_sb.png', 'http://www.dota2.com.cn/images/heroes/life_stealer_hphover.png', 'http://www.dota2.com.cn/images/heroes/drow_ranger_full.png', 'http://www.dota2.com.cn/images/heroes/drow_ranger_vert.jpg', 'http://www.dota2.com.cn/images/heroes/drow_ranger_icon.png'),
(70, 70, 'http://www.dota2.com.cn/images/heroes/night_stalker_sb.png', 'http://www.dota2.com.cn/images/heroes/night_stalker_hphover.png', 'http://www.dota2.com.cn/images/heroes/enigma_full.png', 'http://www.dota2.com.cn/images/heroes/enigma_vert.jpg', 'http://www.dota2.com.cn/images/heroes/enigma_icon.png'),
(71, 71, 'http://www.dota2.com.cn/images/heroes/doom_bringer_sb.png', 'http://www.dota2.com.cn/images/heroes/doom_bringer_hphover.png', 'http://www.dota2.com.cn/images/heroes/visage_full.png', 'http://www.dota2.com.cn/images/heroes/visage_vert.jpg', 'http://www.dota2.com.cn/images/heroes/visage_icon.png'),
(72, 72, 'http://www.dota2.com.cn/images/heroes/spirit_breaker_sb.png', 'http://www.dota2.com.cn/images/heroes/spirit_breaker_hphover.png', 'http://www.dota2.com.cn/images/heroes/life_stealer_full.png', 'http://www.dota2.com.cn/images/heroes/life_stealer_vert.jpg', 'http://www.dota2.com.cn/images/heroes/life_stealer_icon.png'),
(73, 73, 'http://www.dota2.com.cn/images/heroes/lycan_sb.png', 'http://www.dota2.com.cn/images/heroes/lycan_hphover.png', 'http://www.dota2.com.cn/images/heroes/undying_full.png', 'http://www.dota2.com.cn/images/heroes/undying_vert.jpg', 'http://www.dota2.com.cn/images/heroes/undying_icon.png'),
(74, 74, 'http://www.dota2.com.cn/images/heroes/chaos_knight_sb.png', 'http://www.dota2.com.cn/images/heroes/chaos_knight_hphover.png', 'http://www.dota2.com.cn/images/heroes/nevermore_full.png', 'http://www.dota2.com.cn/images/heroes/nevermore_vert.jpg', 'http://www.dota2.com.cn/images/heroes/nevermore_icon.png'),
(75, 75, 'http://www.dota2.com.cn/images/heroes/undying_sb.png', 'http://www.dota2.com.cn/images/heroes/undying_hphover.png', 'http://www.dota2.com.cn/images/heroes/morphling_full.png', 'http://www.dota2.com.cn/images/heroes/morphling_vert.jpg', 'http://www.dota2.com.cn/images/heroes/morphling_icon.png'),
(76, 76, 'http://www.dota2.com.cn/images/heroes/magnataur_sb.png', 'http://www.dota2.com.cn/images/heroes/magnataur_hphover.png', 'http://www.dota2.com.cn/images/heroes/puck_full.png', 'http://www.dota2.com.cn/images/heroes/puck_vert.jpg', 'http://www.dota2.com.cn/images/heroes/puck_icon.png'),
(77, 77, 'http://www.dota2.com.cn/images/heroes/abaddon_sb.png', 'http://www.dota2.com.cn/images/heroes/abaddon_hphover.png', 'http://www.dota2.com.cn/images/heroes/rubick_full.png', 'http://www.dota2.com.cn/images/heroes/rubick_vert.jpg', 'http://www.dota2.com.cn/images/heroes/rubick_icon.png'),
(78, 78, 'http://www.dota2.com.cn/images/heroes/abyssal_underlord_sb.png', 'http://www.dota2.com.cn/images/heroes/abyssal_underlord_hphover.png', 'http://www.dota2.com.cn/images/heroes/vengefulspirit_full.png', 'http://www.dota2.com.cn/images/heroes/vengefulspirit_vert.jpg', 'http://www.dota2.com.cn/images/heroes/vengefulspirit_icon.png'),
(79, 79, 'http://www.dota2.com.cn/images/heroes/bloodseeker_sb.png', 'http://www.dota2.com.cn/images/heroes/bloodseeker_hphover.png', 'http://www.dota2.com.cn/images/heroes/batrider_full.png', 'http://www.dota2.com.cn/images/heroes/batrider_vert.jpg', 'http://www.dota2.com.cn/images/heroes/batrider_icon.png'),
(80, 80, 'http://www.dota2.com.cn/images/heroes/nevermore_sb.png', 'http://www.dota2.com.cn/images/heroes/nevermore_hphover.png', 'http://www.dota2.com.cn/images/heroes/witch_doctor_full.png', 'http://www.dota2.com.cn/images/heroes/witch_doctor_vert.jpg', 'http://www.dota2.com.cn/images/heroes/witch_doctor_icon.png'),
(81, 81, 'http://www.dota2.com.cn/images/heroes/razor_sb.png', 'http://www.dota2.com.cn/images/heroes/razor_hphover.png', 'http://www.dota2.com.cn/images/heroes/faceless_void_full.png', 'http://www.dota2.com.cn/images/heroes/faceless_void_vert.jpg', 'http://www.dota2.com.cn/images/heroes/faceless_void_icon.png'),
(82, 82, 'http://www.dota2.com.cn/images/heroes/venomancer_sb.png', 'http://www.dota2.com.cn/images/heroes/venomancer_hphover.png', 'http://www.dota2.com.cn/images/heroes/keeper_of_the_light_full.png', 'http://www.dota2.com.cn/images/heroes/keeper_of_the_light_vert.jpg', 'http://www.dota2.com.cn/images/heroes/keeper_of_the_light_icon.png'),
(83, 83, 'http://www.dota2.com.cn/images/heroes/faceless_void_sb.png', 'http://www.dota2.com.cn/images/heroes/faceless_void_hphover.png', 'http://www.dota2.com.cn/images/heroes/queenofpain_full.png', 'http://www.dota2.com.cn/images/heroes/queenofpain_vert.jpg', 'http://www.dota2.com.cn/images/heroes/queenofpain_icon.png'),
(84, 84, 'http://www.dota2.com.cn/images/heroes/phantom_assassin_sb.png', 'http://www.dota2.com.cn/images/heroes/phantom_assassin_hphover.png', 'http://www.dota2.com.cn/images/heroes/arc_warden_full.png', 'http://www.dota2.com.cn/images/heroes/arc_warden_vert.jpg', 'http://www.dota2.com.cn/images/heroes/arc_warden_icon.png'),
(85, 85, 'http://www.dota2.com.cn/images/heroes/viper_sb.png', 'http://www.dota2.com.cn/images/heroes/viper_hphover.png', 'http://www.dota2.com.cn/images/heroes/disruptor_full.png', 'http://www.dota2.com.cn/images/heroes/disruptor_vert.jpg', 'http://www.dota2.com.cn/images/heroes/disruptor_icon.png'),
(86, 86, 'http://www.dota2.com.cn/images/heroes/clinkz_sb.png', 'http://www.dota2.com.cn/images/heroes/clinkz_hphover.png', 'http://www.dota2.com.cn/images/heroes/luna_full.png', 'http://www.dota2.com.cn/images/heroes/luna_vert.jpg', 'http://www.dota2.com.cn/images/heroes/luna_icon.png'),
(87, 87, 'http://www.dota2.com.cn/images/heroes/broodmother_sb.png', 'http://www.dota2.com.cn/images/heroes/broodmother_hphover.png', 'http://www.dota2.com.cn/images/heroes/slardar_full.png', 'http://www.dota2.com.cn/images/heroes/slardar_vert.jpg', 'http://www.dota2.com.cn/images/heroes/slardar_icon.png'),
(88, 88, 'http://www.dota2.com.cn/images/heroes/weaver_sb.png', 'http://www.dota2.com.cn/images/heroes/weaver_hphover.png', 'http://www.dota2.com.cn/images/heroes/earth_spirit_full.png', 'http://www.dota2.com.cn/images/heroes/earth_spirit_vert.jpg', 'http://www.dota2.com.cn/images/heroes/earth_spirit_icon.png'),
(89, 89, 'http://www.dota2.com.cn/images/heroes/spectre_sb.png', 'http://www.dota2.com.cn/images/heroes/spectre_hphover.png', 'http://www.dota2.com.cn/images/heroes/venomancer_full.png', 'http://www.dota2.com.cn/images/heroes/venomancer_vert.jpg', 'http://www.dota2.com.cn/images/heroes/venomancer_icon.png'),
(90, 90, 'http://www.dota2.com.cn/images/heroes/meepo_sb.png', 'http://www.dota2.com.cn/images/heroes/meepo_hphover.png', 'http://www.dota2.com.cn/images/heroes/omniknight_full.png', 'http://www.dota2.com.cn/images/heroes/omniknight_vert.jpg', 'http://www.dota2.com.cn/images/heroes/omniknight_icon.png'),
(91, 91, 'http://www.dota2.com.cn/images/heroes/nyx_assassin_sb.png', 'http://www.dota2.com.cn/images/heroes/nyx_assassin_hphover.png', 'http://www.dota2.com.cn/images/heroes/weaver_full.png', 'http://www.dota2.com.cn/images/heroes/weaver_vert.jpg', 'http://www.dota2.com.cn/images/heroes/weaver_icon.png'),
(92, 92, 'http://www.dota2.com.cn/images/heroes/slark_sb.png', 'http://www.dota2.com.cn/images/heroes/slark_hphover.png', 'http://www.dota2.com.cn/images/heroes/antimage_full.png', 'http://www.dota2.com.cn/images/heroes/antimage_vert.jpg', 'http://www.dota2.com.cn/images/heroes/antimage_icon.png'),
(93, 93, 'http://www.dota2.com.cn/images/heroes/medusa_sb.png', 'http://www.dota2.com.cn/images/heroes/medusa_hphover.png', 'http://www.dota2.com.cn/images/heroes/abyssal_underlord_full.png', 'http://www.dota2.com.cn/images/heroes/abyssal_underlord_vert.jpg', 'http://www.dota2.com.cn/images/heroes/abyssal_underlord_icon.png'),
(94, 94, 'http://www.dota2.com.cn/images/heroes/terrorblade_sb.png', 'http://www.dota2.com.cn/images/heroes/terrorblade_hphover.png', 'http://www.dota2.com.cn/images/heroes/invoker_full.png', 'http://www.dota2.com.cn/images/heroes/invoker_vert.jpg', 'http://www.dota2.com.cn/images/heroes/invoker_icon.png'),
(95, 95, 'http://www.dota2.com.cn/images/heroes/arc_warden_sb.png', 'http://www.dota2.com.cn/images/heroes/arc_warden_hphover.png', 'http://www.dota2.com.cn/images/heroes/abaddon_full.png', 'http://www.dota2.com.cn/images/heroes/abaddon_vert.jpg', 'http://www.dota2.com.cn/images/heroes/abaddon_icon.png'),
(96, 96, 'http://www.dota2.com.cn/images/heroes/bane_sb.png', 'http://www.dota2.com.cn/images/heroes/bane_hphover.png', 'http://www.dota2.com.cn/images/heroes/dark_seer_full.png', 'http://www.dota2.com.cn/images/heroes/dark_seer_vert.jpg', 'http://www.dota2.com.cn/images/heroes/dark_seer_icon.png'),
(97, 97, 'http://www.dota2.com.cn/images/heroes/lich_sb.png', 'http://www.dota2.com.cn/images/heroes/lich_hphover.png', 'http://www.dota2.com.cn/images/heroes/pangolier_full.png', 'http://www.dota2.com.cn/images/heroes/pangolier_vert.jpg', 'http://www.dota2.com.cn/images/heroes/pangolier_icon.png'),
(98, 98, 'http://www.dota2.com.cn/images/heroes/lion_sb.png', 'http://www.dota2.com.cn/images/heroes/lion_hphover.png', 'http://www.dota2.com.cn/images/heroes/lion_full.png', 'http://www.dota2.com.cn/images/heroes/lion_vert.jpg', 'http://www.dota2.com.cn/images/heroes/lion_icon.png'),
(99, 99, 'http://www.dota2.com.cn/images/heroes/witch_doctor_sb.png', 'http://www.dota2.com.cn/images/heroes/witch_doctor_hphover.png', 'http://www.dota2.com.cn/images/heroes/axe_full.png', 'http://www.dota2.com.cn/images/heroes/axe_vert.jpg', 'http://www.dota2.com.cn/images/heroes/axe_icon.png'),
(100, 100, 'http://www.dota2.com.cn/images/heroes/enigma_sb.png', 'http://www.dota2.com.cn/images/heroes/enigma_hphover.png', 'http://www.dota2.com.cn/images/heroes/furion_full.png', 'http://www.dota2.com.cn/images/heroes/furion_vert.jpg', 'http://www.dota2.com.cn/images/heroes/furion_icon.png'),
(101, 101, 'http://www.dota2.com.cn/images/heroes/necrolyte_sb.png', 'http://www.dota2.com.cn/images/heroes/necrolyte_hphover.png', 'http://www.dota2.com.cn/images/heroes/skeleton_king_full.png', 'http://www.dota2.com.cn/images/heroes/skeleton_king_vert.jpg', 'http://www.dota2.com.cn/images/heroes/skeleton_king_icon.png'),
(102, 102, 'http://www.dota2.com.cn/images/heroes/warlock_sb.png', 'http://www.dota2.com.cn/images/heroes/warlock_hphover.png', 'http://www.dota2.com.cn/images/heroes/juggernaut_full.png', 'http://www.dota2.com.cn/images/heroes/juggernaut_vert.jpg', 'http://www.dota2.com.cn/images/heroes/juggernaut_icon.png'),
(103, 103, 'http://www.dota2.com.cn/images/heroes/queenofpain_sb.png', 'http://www.dota2.com.cn/images/heroes/queenofpain_hphover.png', 'http://www.dota2.com.cn/images/heroes/dark_willow_full.png', 'http://www.dota2.com.cn/images/heroes/dark_willow_vert.jpg', 'http://www.dota2.com.cn/images/heroes/dark_willow_icon.png'),
(104, 104, 'http://www.dota2.com.cn/images/heroes/death_prophet_sb.png', 'http://www.dota2.com.cn/images/heroes/death_prophet_hphover.png', 'http://www.dota2.com.cn/images/heroes/tidehunter_full.png', 'http://www.dota2.com.cn/images/heroes/tidehunter_vert.jpg', 'http://www.dota2.com.cn/images/heroes/tidehunter_icon.png'),
(105, 105, 'http://www.dota2.com.cn/images/heroes/pugna_sb.png', 'http://www.dota2.com.cn/images/heroes/pugna_hphover.png', 'http://www.dota2.com.cn/images/heroes/razor_full.png', 'http://www.dota2.com.cn/images/heroes/razor_vert.jpg', 'http://www.dota2.com.cn/images/heroes/razor_icon.png'),
(106, 106, 'http://www.dota2.com.cn/images/heroes/dazzle_sb.png', 'http://www.dota2.com.cn/images/heroes/dazzle_hphover.png', 'http://www.dota2.com.cn/images/heroes/necrolyte_full.png', 'http://www.dota2.com.cn/images/heroes/necrolyte_vert.jpg', 'http://www.dota2.com.cn/images/heroes/necrolyte_icon.png'),
(107, 107, 'http://www.dota2.com.cn/images/heroes/leshrac_sb.png', 'http://www.dota2.com.cn/images/heroes/leshrac_hphover.png', 'http://www.dota2.com.cn/images/heroes/nyx_assassin_full.png', 'http://www.dota2.com.cn/images/heroes/nyx_assassin_vert.jpg', 'http://www.dota2.com.cn/images/heroes/nyx_assassin_icon.png'),
(108, 108, 'http://www.dota2.com.cn/images/heroes/dark_seer_sb.png', 'http://www.dota2.com.cn/images/heroes/dark_seer_hphover.png', 'http://www.dota2.com.cn/images/heroes/bristleback_full.png', 'http://www.dota2.com.cn/images/heroes/bristleback_vert.jpg', 'http://www.dota2.com.cn/images/heroes/bristleback_icon.png'),
(109, 109, 'http://www.dota2.com.cn/images/heroes/batrider_sb.png', 'http://www.dota2.com.cn/images/heroes/batrider_hphover.png', 'http://www.dota2.com.cn/images/heroes/leshrac_full.png', 'http://www.dota2.com.cn/images/heroes/leshrac_vert.jpg', 'http://www.dota2.com.cn/images/heroes/leshrac_icon.png'),
(110, 110, 'http://www.dota2.com.cn/images/heroes/ancient_apparition_sb.png', 'http://www.dota2.com.cn/images/heroes/ancient_apparition_hphover.png', 'http://www.dota2.com.cn/images/heroes/bane_full.png', 'http://www.dota2.com.cn/images/heroes/bane_vert.jpg', 'http://www.dota2.com.cn/images/heroes/bane_icon.png'),
(111, 111, 'http://www.dota2.com.cn/images/heroes/invoker_sb.png', 'http://www.dota2.com.cn/images/heroes/invoker_hphover.png', 'http://www.dota2.com.cn/images/heroes/skywrath_mage_full.png', 'http://www.dota2.com.cn/images/heroes/skywrath_mage_vert.jpg', 'http://www.dota2.com.cn/images/heroes/skywrath_mage_icon.png'),
(112, 112, 'http://www.dota2.com.cn/images/heroes/obsidian_destroyer_sb.png', 'http://www.dota2.com.cn/images/heroes/obsidian_destroyer_hphover.png', 'http://www.dota2.com.cn/images/heroes/troll_warlord_full.png', 'http://www.dota2.com.cn/images/heroes/troll_warlord_vert.jpg', 'http://www.dota2.com.cn/images/heroes/troll_warlord_icon.png'),
(113, 113, 'http://www.dota2.com.cn/images/heroes/shadow_demon_sb.png', 'http://www.dota2.com.cn/images/heroes/shadow_demon_hphover.png', 'http://www.dota2.com.cn/images/heroes/zuus_full.png', 'http://www.dota2.com.cn/images/heroes/zuus_vert.jpg', 'http://www.dota2.com.cn/images/heroes/zuus_icon.png'),
(114, 114, 'http://www.dota2.com.cn/images/heroes/visage_sb.png', 'http://www.dota2.com.cn/images/heroes/visage_hphover.png', 'http://www.dota2.com.cn/images/heroes/death_prophet_full.png', 'http://www.dota2.com.cn/images/heroes/death_prophet_vert.jpg', 'http://www.dota2.com.cn/images/heroes/death_prophet_icon.png'),
(115, 115, 'http://www.dota2.com.cn/images/heroes/winter_wyvern_sb.png', 'http://www.dota2.com.cn/images/heroes/winter_wyvern_hphover.png', 'http://www.dota2.com.cn/images/heroes/phantom_lancer_full.png', 'http://www.dota2.com.cn/images/heroes/phantom_lancer_vert.jpg', 'http://www.dota2.com.cn/images/heroes/phantom_lancer_icon.png');

-- --------------------------------------------------------

--
-- 表的结构 `hero_property`
--

CREATE TABLE `hero_property` (
  `hid` int(11) NOT NULL,
  `hero_id` int(11) NOT NULL DEFAULT '0',
  `power_initial` int(11) NOT NULL DEFAULT '0',
  `brains_initial` int(11) NOT NULL DEFAULT '0',
  `agility_initial` int(11) NOT NULL DEFAULT '0',
  `power_grow` decimal(10,2) NOT NULL DEFAULT '0.00',
  `brains_grow` decimal(10,2) NOT NULL DEFAULT '0.00',
  `agility_grow` decimal(10,2) NOT NULL DEFAULT '0.00',
  `move_speed` int(11) NOT NULL DEFAULT '0',
  `armor` int(11) NOT NULL DEFAULT '0',
  `attack_value` int(11) NOT NULL DEFAULT '0',
  `attack_speed` varchar(64) NOT NULL DEFAULT '0',
  `attack_harm` varchar(16) NOT NULL DEFAULT '',
  `attack_range` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hero_property`
--

INSERT INTO `hero_property` (`hid`, `hero_id`, `power_initial`, `brains_initial`, `agility_initial`, `power_grow`, `brains_grow`, `agility_grow`, `move_speed`, `armor`, `attack_value`, `attack_speed`, `attack_harm`, `attack_range`) VALUES
(1, 1, 18, 23, 20, '2.40', '2.30', '2.00', 300, 4, 33, '123（2.05秒攻击一次）', '30-36', 140),
(2, 2, 23, 23, 18, '3.00', '2.10', '1.70', 300, 3, 29, '123（2.05秒攻击一次）', '27-31', 150),
(3, 3, 26, 13, 17, '3.20', '2.30', '1.30', 315, 2, 29, '113（1.88秒攻击一次）', '28-30', 150),
(4, 4, 18, 24, 19, '2.10', '2.80', '2.10', 320, 5, 18, '124（2.07秒攻击一次）', '13-23', 365),
(5, 5, 21, 15, 18, '2.70', '1.40', '1.50', 295, 1, 25, '115（1.92秒攻击一次）', '21-30', 400),
(6, 6, 19, 12, 18, '3.20', '1.30', '1.80', 285, 0, 31, '112（1.87秒攻击一次）', '26-36', 500),
(7, 7, 21, 16, 21, '2.10', '1.30', '2.40', 290, 0, 28, '116（1.93秒攻击一次）', '26-30', 150),
(8, 8, 23, 24, 18, '2.70', '3.00', '1.70', 285, 4, 36, '124（2.07秒攻击一次）', '33-39', 150),
(9, 9, 24, 14, 23, '2.60', '1.80', '1.60', 315, 3, 28, '114（1.90秒攻击一次）', '23-33', 150),
(10, 10, 22, 12, 16, '3.20', '1.40', '1.80', 310, 3, 29, '112（1.87秒攻击一次）', '24-34', 150),
(11, 11, 30, 0, 17, '3.30', '0.00', '1.60', 285, 0, 47, '100（1.67秒攻击一次）', '44-50', 150),
(12, 12, 24, 14, 18, '3.30', '1.30', '1.50', 300, 4, 31, '114（1.90秒攻击一次）', '26-36', 150),
(13, 13, 25, 16, 25, '2.10', '1.20', '1.80', 295, 2, 28, '攻击力\n\n- 攻击���度：116（1.93秒攻击一次）', '24-33', 150),
(14, 14, 18, 15, 23, '2.20', '1.70', '2.90', 305, 2, 19, '115（1.92秒攻击一次）', '16-22', 620),
(15, 15, 17, 21, 19, '2.10', '3.00', '2.00', 315, 6, 31, '121（2.02秒攻击一次）', '24-38', 150),
(16, 16, 19, 19, 15, '3.10', '2.20', '1.70', 290, 4, 34, '119（1.98秒攻击一次）', '31-37', 150),
(17, 17, 26, 18, 20, '2.90', '1.70', '2.20', 320, 3, 37, '118（1.97秒攻击一次）', '35-39', 150),
(18, 18, 19, 22, 24, '1.80', '1.50', '3.00', 285, 5, 27, '122（2.03秒攻击一次）', '22-32', 480),
(19, 19, 16, 16, 16, '2.00', '1.60', '2.90', 275, 1, 22, '116（1.93秒攻击一次）', '19-25', 600),
(20, 20, 17, 13, 30, '2.30', '1.20', '2.20', 305, 4, 25, '113（1.88秒攻击一次）', '22-28', 500),
(21, 21, 21, 16, 21, '2.10', '1.60', '3.00', 285, 2, 53, '116（1.93秒攻击一次）', '50-57', 400),
(22, 22, 14, 20, 19, '1.50', '2.50', '2.10', 285, 2, 27, '120（2.00秒攻击一次）', '24-30', 600),
(23, 23, 25, 15, 17, '3.60', '2.00', '1.80', 270, 1, 66, '115（1.92秒攻击一次）', '62-70', 150),
(24, 24, 17, 18, 18, '2.80', '2.20', '2.00', 270, 3, 29, '118（1.97秒攻击一次）', '26-32', 150),
(25, 25, 22, 10, 24, '2.80', '1.00', '2.70', 295, 2, 27, '110（1.83秒攻击一次）', '22-32', 600),
(26, 26, 22, 19, 16, '2.90', '2.10', '1.80', 295, 3, 33, '119（1.98秒攻击一次）', '25-41', 150),
(27, 27, 17, 22, 27, '2.50', '3.00', '2.50', 295, 2, 23, '122（2.03秒攻击一次）', '16-30', 600),
(28, 28, 20, 21, 16, '1.90', '1.50', '1.70', 295, 2, 37, '121（2.02秒攻击一次）', '33-41', 150),
(29, 29, 23, 15, 21, '1.80', '2.10', '2.80', 300, 1, 27, '115（1.92秒攻击一次）', '22-32', 650),
(30, 30, 19, 22, 20, '2.10', '1.80', '1.80', 305, 1, 32, '122（2.03秒攻击一次）', '30-34', 150),
(31, 31, 15, 17, 22, '2.80', '1.40', '2.60', 295, 1, 28, '117（1.95秒攻击一次）', '22-34', 600),
(32, 32, 25, 14, 14, '3.50', '1.50', '1.50', 280, 1, 30, '114（1.90秒攻击一次）', '27-33', 150),
(33, 33, 15, 22, 19, '1.70', '3.20', '1.60', 310, 1, 29, '122（2.03秒攻击一次）', '26-32', 150),
(34, 34, 17, 14, 22, '2.30', '1.30', '2.90', 270, 7, 8, '114（1.90秒攻击一次）', '7-9', 700),
(35, 35, 23, 18, 16, '3.00', '2.10', '1.50', 305, 6, 26, '118（1.97秒攻击一次）', '24-28', 150),
(36, 36, 25, 10, 28, '2.60', '1.20', '2.80', 290, 2, 29, '110（1.83秒攻击一次）', '25-33', 400),
(37, 37, 23, 21, 16, '3.00', '2.00', '1.30', 290, 5, 42, '121（2.02秒攻击一次）', '41-43', 150),
(38, 38, 24, 16, 25, '2.40', '1.90', '3.10', 285, 1, 13, '116（1.93秒攻击一次）', '10-17', 425),
(39, 39, 23, 18, 16, '2.50', '1.60', '1.90', 310, 5, 43, '118（1.97秒攻击一次）', '41-45', 150),
(40, 40, 19, 24, 26, '2.60', '2.00', '2.70', 315, 4, 21, '124（2.07秒攻击一次）', '14-29', 450),
(41, 41, 23, 23, 20, '1.60', '2.20', '1.60', 310, 2, 23, '123（2.05秒攻击一次）', '20-26', 150),
(42, 42, 20, 21, 15, '2.40', '2.90', '1.80', 275, 1, 24, '121（2.02秒攻击一次）', '23-25', 575),
(43, 43, 17, 18, 17, '2.10', '3.20', '1.60', 295, 2, 26, '118（1.97秒攻击一次）', '21-32', 630),
(44, 44, 17, 16, 26, '1.50', '1.00', '4.50', 335, 1, 23, '116（1.93秒攻击一次）', '19-27', 630),
(45, 45, 16, 21, 27, '2.10', '1.70', '3.40', 305, 2, 23, '121（2.02秒攻击一次）', '14-32', 550),
(46, 46, 15, 22, 16, '1.90', '2.60', '1.50', 295, 2, 18, '122（2.03秒攻击一次）', '15-21', 640),
(47, 47, 21, 18, 23, '2.20', '2.20', '2.70', 295, 3, 29, '118（1.97秒攻击一次）', '27-31', 500),
(48, 48, 23, 15, 15, '4.30', '1.00', '1.60', 300, 2, 33, '115（1.92秒攻击一次）', '32-34', 150),
(49, 49, 23, 18, 13, '3.10', '2.20', '1.60', 295, 6, 40, '118（1.97秒攻击一次）', '38-42', 150),
(50, 50, 23, 14, 17, '3.50', '1.50', '2.00', 285, 8, 44, '114（1.90秒攻击一次）', '41-47', 150),
(51, 51, 21, 15, 19, '3.20', '2.50', '1.60', 310, 4, 38, '115（1.92秒攻击一次）', '32-44', 150),
(52, 52, 20, 23, 16, '2.30', '1.80', '1.90', 285, 3, 25, '123（2.05秒攻击一次）', '23-27', 150),
(53, 53, 18, 22, 20, '2.80', '3.20', '1.80', 300, 0, 30, '122（2.03秒攻击一次）', '27-33', 300),
(54, 54, 18, 15, 18, '1.80', '2.00', '3.20', 315, 1, 28, '115（1.92秒攻击一次）', '24-33', 550),
(55, 55, 26, 11, 13, '3.50', '0.90', '2.10', 290, 0, 35, '111（1.85秒攻击一次）', '27-43', 150),
(56, 56, 17, 30, 14, '1.90', '2.20', '1.30', 275, 5, 6, '130（2.17秒攻击一次）', '4-8', 150),
(57, 57, 23, 22, 14, '3.20', '1.90', '1.20', 300, 2, 32, '122（2.03秒攻击一次）', '29-36', 150),
(58, 58, 18, 16, 27, '1.80', '1.50', '3.20', 295, 1, 22, '116（1.93秒攻击一次）', '13-31', 670),
(59, 59, 16, 19, 21, '1.30', '1.80', '3.10', 340, 1, 36, '119（1.98秒攻击一次）\n- ��击伤害：31-41\n- 攻击距离：', '攻击力\n\n- 攻击速度：119（', 550),
(60, 60, 29, 17, 14, '2.70', '1.70', '1.80', 285, 5, 36, '117（1.95秒攻击一次）', '31-41', 150),
(61, 61, 18, 20, 25, '1.70', '2.20', '2.60', 295, 2, 24, '120（2.00秒攻击一次）', '19-29', 675),
(62, 62, 21, 21, 21, '2.80', '3.20', '2.00', 315, 6, 24, '121（2.02秒攻击一次）', '23-25', 150),
(63, 63, 17, 24, 13, '2.40', '2.70', '1.40', 320, 4, 20, '124（2.07秒攻击一次）', '18-22', 550),
(64, 64, 16, 21, 15, '1.70', '2.70', '2.60', 285, 2, 18, '121（2.02秒攻击一次）', '15-21', 550),
(65, 65, 22, 14, 16, '3.20', '2.10', '1.20', 325, 4, 44, '114（1.90秒攻击一次）', '29-59', 150),
(66, 66, 17, 14, 23, '2.20', '1.60', '1.70', 295, 0, 30, '114（1.90秒攻击一次）', '26-35', 575),
(67, 67, 20, 23, 15, '2.10', '3.10', '1.40', 305, 4, 24, '123（2.05秒攻击一次）', '23-25', 150),
(68, 68, 25, 16, 17, '3.30', '1.00', '1.50', 305, 3, 38, '116（1.93秒攻击一次）', '36-41', 150),
(69, 69, 17, 26, 15, '1.90', '1.90', '1.40', 285, 1, 19, '126（2.10秒攻击一次）', '14-25', 625),
(70, 70, 17, 14, 20, '2.40', '1.00', '3.40', 300, 4, 25, '114（1.90秒攻击一次）', '22-28', 500),
(71, 71, 22, 11, 24, '2.70', '1.30', '2.50', 285, 0, 26, '111（1.85秒攻击一次）', '21-31', 600),
(72, 72, 25, 18, 15, '3.10', '1.90', '1.70', 315, 2, 32, '118（1.97秒攻击一次）', '27-37', 150),
(73, 73, 22, 10, 27, '2.40', '0.80', '2.80', 310, 4, 39, '110（1.83秒攻击一次）', '35-43', 150),
(74, 74, 15, 20, 18, '2.30', '2.90', '2.00', 310, 1, 18, '120（2.00秒攻击一次）', '15-21', 500),
(75, 75, 19, 24, 13, '2.30', '3.70', '1.10', 280, 2, 13, '124（2.07秒攻击一次）', '9-18', 350),
(76, 76, 15, 22, 25, '2.00', '1.70', '2.40', 295, 1, 33, '122（2.03秒攻击一次）', '28-39', 550),
(77, 77, 19, 14, 27, '1.80', '1.60', '2.40', 290, 1, 22, '114（1.90秒攻击一次）', '17-27', 550),
(78, 78, 18, 27, 13, '2.90', '3.30', '1.50', 295, 4, 16, '127（2.12秒攻击一次）', '12-20', 400),
(79, 79, 23, 15, 24, '2.70', '1.50', '2.50', 290, 2, 16, '115（1.92秒攻击一次）', '14-18', 375),
(80, 80, 16, 13, 24, '2.10', '1.40', '2.90', 305, 1, 32, '113（1.88秒攻击一次）', '27-37', 600),
(81, 81, 23, 23, 15, '2.10', '2.80', '1.50', 295, 3, 36, '123（2.05秒攻击一次）', '33-39', 150),
(82, 82, 14, 15, 25, '2.10', '1.60', '2.80', 335, 1, 21, '115（1.92秒攻击一次）', '18-25', 600),
(83, 83, 16, 18, 24, '2.00', '2.00', '2.50', 295, 2, 25, '118（1.97秒攻击一次）', '21-29', 550),
(84, 84, 24, 15, 24, '3.00', '1.80', '2.60', 280, 0, 34, '115（1.92秒攻击一次）', '29-39', 625),
(85, 85, 19, 15, 22, '2.20', '1.40', '2.50', 300, 1, 29, '115（1.92秒攻击一次）', '27-31', 600),
(86, 86, 15, 18, 16, '2.20', '3.30', '1.80', 330, 3, 23, '118（1.97秒攻击一次）', '20-26', 330),
(87, 87, 21, 17, 15, '3.10', '2.40', '1.50', 290, 5, 34, '117（1.95秒攻击一次）', '30-38', 150),
(88, 88, 21, 17, 18, '3.20', '1.50', '2.10', 290, 3, 30, '117（1.95秒攻击一次）', '25-35', 150),
(89, 89, 18, 22, 17, '1.90', '2.80', '1.80', 275, 3, 17, '122（2.03秒攻击一次）', '16-18', 450),
(90, 90, 22, 15, 15, '3.10', '1.70', '1.80', 305, 5, 36, '115（1.92秒攻击一次）', '31-41', 150),
(91, 91, 15, 14, 15, '1.80', '2.80', '1.80', 280, 1, 41, '114（1.90秒攻击一次）', '36-46', 425),
(92, 92, 22, 22, 12, '1.30', '2.80', '1.80', 310, 2, 29, '122（2.03秒攻击一次）', '27-31', 150),
(93, 93, 25, 12, 17, '2.90', '1.30', '2.60', 290, 4, 40, '112（1.87秒攻击一次）\n- 攻���伤害：37-43\n- 攻击距离：', '攻击力\n\n- 攻击速度：112（', 150),
(94, 94, 16, 14, 16, '2.20', '1.90', '4.00', 280, 1, 22, '114（1.90秒攻击一次）', '19-25', 600),
(95, 95, 23, 17, 21, '2.60', '1.50', '2.00', 310, 1, 37, '117（1.95秒攻击一次）', '32-42', 150),
(96, 96, 22, 12, 23, '2.60', '1.20', '2.70', 295, 7, 34, '112（1.87秒攻击一次）', '31-37', 150),
(97, 97, 16, 18, 16, '2.50', '2.80', '1.90', 305, 4, 32, '118（1.97秒攻击一次）', '29-35', 150),
(98, 98, 16, 15, 20, '2.00', '1.50', '3.00', 290, 1, 30, '115（1.92秒攻击一次）', '27-33', 600),
(99, 99, 25, 20, 18, '2.80', '2.20', '1.60', 290, 2, 26, '120（2.00秒攻击一次）', '24-28', 150),
(100, 100, 19, 18, 25, '2.10', '1.90', '2.90', 290, 4, 37, '118（1.97秒攻击一次）', '30-44', 600),
(101, 101, 22, 18, 18, '2.80', '1.70', '1.60', 300, 3, 40, '118（1.97秒攻击一次）', '39-41', 150),
(102, 102, 20, 26, 14, '2.20', '2.40', '1.40', 295, 4, 24, '126（2.10秒攻击一次）', '22-26', 150),
(103, 103, 18, 18, 20, '1.80', '1.60', '3.00', 295, 2, 29, '118（1.97秒攻击一次）', '25-33', 475),
(104, 104, 22, 15, 16, '3.30', '1.50', '1.70', 305, 3, 28, '115（1.92秒攻击一次）', '25-31', 150),
(105, 105, 21, 22, 21, '2.60', '1.80', '1.80', 285, 2, 24, '122（2.03秒攻击一次）', '23-25', 475),
(106, 106, 16, 15, 22, '2.30', '1.20', '2.50', 285, 3, 24, '115（1.92秒攻击一次）', '22-26', 550),
(107, 107, 18, 19, 18, '2.30', '2.20', '2.10', 295, 4, 29, '119（1.98秒攻击一次）', '27-31', 150),
(108, 108, 22, 17, 14, '2.20', '1.80', '2.80', 290, 3, 27, '117（1.95秒攻击一次）', '22-32', 150),
(109, 109, 16, 23, 26, '1.80', '1.70', '3.00', 325, 3, 17, '123（2.05秒攻击一次）', '15-19', 600),
(110, 110, 23, 23, 23, '2.40', '2.40', '2.40', 310, 4, 40, '123（2.05秒攻击一次）', '37-43', 400),
(111, 111, 19, 13, 27, '1.80', '0.80', '3.60', 330, 0, 17, '113（1.88秒攻击一次）', '12-22', 600),
(112, 112, 20, 21, 13, '2.50', '2.50', '1.00', 295, 2, 26, '121（2.02秒攻击一次）', '17-35', 500),
(113, 113, 19, 11, 22, '2.60', '1.20', '2.70', 300, 1, 25, '111（1.85秒攻击一次）', '21-29', 350),
(114, 114, 17, 14, 23, '2.60', '1.40', '3.00', 310, 3, 30, '114（1.90秒攻击一次）', '24-36', 600),
(115, 115, 21, 29, 21, '2.00', '2.80', '2.00', 285, 4, 33, '129（2.15秒攻击一次）', '22-44', 150);

-- --------------------------------------------------------

--
-- 表的结构 `hero_punctuate`
--

CREATE TABLE `hero_punctuate` (
  `hid` int(11) NOT NULL,
  `hero_id` int(11) NOT NULL DEFAULT '0',
  `skill1_sm_pic` varchar(45) NOT NULL DEFAULT '',
  `skill2_sm_pic` varchar(45) NOT NULL DEFAULT '',
  `skill3_sm_pic` varchar(45) NOT NULL DEFAULT '',
  `skill4_sm_pic` varchar(45) NOT NULL DEFAULT '',
  `skill5_sm_pic` varchar(45) NOT NULL DEFAULT '',
  `punctuate` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hero_punctuate`
--

INSERT INTO `hero_punctuate` (`hid`, `hero_id`, `skill1_sm_pic`, `skill2_sm_pic`, `skill3_sm_pic`, `skill4_sm_pic`, `skill5_sm_pic`, `punctuate`) VALUES
(1, 1, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,3,5,7@8,9,11,12@1,4,13,14@16,18@6@'),
(2, 2, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,5,7@2,4,8,9@11,13,14,16@6,12,18@10,15,20,'),
(3, 3, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,3,5,7@1,13,14,16@4,8,9,11@6,12,18@10,15,20,'),
(4, 4, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,5,7@11,13,14,16@2,4,8,9@6,12,18@10,15,20,'),
(5, 5, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '4,13,14,16@1,3,5,7@2,8,9,11@6,12,18@10,15,20,'),
(6, 6, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,4,14,16@2,3,5,7@8,9,11,13@6,12,18@10,15,20,'),
(7, 7, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,13,14,16@4,7,8,9@1,3,5,11@6,12,18@10,15,20,'),
(8, 8, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,4,14,16@3,8,9,13@2,5,7,11@6,12,18@10,15,20,'),
(9, 9, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,9,11@2,13,14,16@4,5,7,8@6,12,18@10,15,20,'),
(10, 10, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,5,7@4,13,14,16@2,8,9,11@6,12,18@10,15,20,'),
(11, 11, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,13,14,16@4,8,9,11@1,3,5,7@6,12,18@10,15,20,'),
(12, 12, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,4,8,9@1,3,5,7@11,13,14,16@6,12,18@10,15,20,'),
(13, 13, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,4,8,9@11,13,14,16@1,3,5,7@6,12,18@10,15,20,'),
(14, 14, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,13,14,16@4,8,9,11@2,3,5,7@6,12,18@10,15,20,'),
(15, 15, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '3,4,5,7@2,13,14,16@1,8,9,11@6,12,18@10,15,20,'),
(16, 16, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,5,7@4,13,14,16@2,8,9,11@6,12,18@10,15,20,'),
(17, 17, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '11,13,14,16@2,4,8,9@1,3,5,7@6,12,18@20,25@'),
(18, 18, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,8,11,16@4,9,13,14@2,3,5,7@6,12,18@10,15,20,'),
(19, 19, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '4,13,14,16@1,8,9,10@2,3,5,7@6,12,18@11,15,20,'),
(20, 20, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,9,10@2,11,12,13@4,5,6,7@8,16,23@14,15,20,'),
(21, 21, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,5,7,8@4,9,14,16@1,3,11,13@6,12,18@10,15,20,'),
(22, 22, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '11,13,14,16@1,3,5,7@2,4,8,9@6,12,18@@'),
(23, 23, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,5,7@2,13,14,16@4,8,9,11@6,12,18@10,15,20,'),
(24, 24, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,3,5,7@1,4,6,8@11,13,14,16@9,12,18@10,15,20,'),
(25, 25, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,4,8,9@2,3,5,7@11,13,14,16@6,12,18@10,15,20,'),
(26, 26, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,5,7@2,4,8,9@11,13,14,16@6,12,18@10,15,20,'),
(27, 27, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,3,5,7@1,13,14,16@4,8,9,11@6,12,18@10,15,20,'),
(28, 28, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '3,8,9,11@2,4,5,7@1,13,14,16@6,12,18@10,15,20,'),
(29, 29, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '4,13,14,16@2,8,9,11@1,3,5,7@6,12,18@10,15,20,'),
(30, 30, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,4,9,11@8,13,14,16@1,3,5,7@6,12,18@@'),
(31, 31, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '4,8,13,14@1,3,5,7@2,6,9,16@11,12,18@10,15,20,'),
(32, 32, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,5,7@2,4,8,9@11,13,14,16@6,12,18@10,15,20,'),
(33, 33, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '11,13,14,16@2,4,6,8@1,3,5,7@9,12,17@10,15,20,'),
(34, 34, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,4,8,9@11,13,14,16@1,3,5,7@6,12,18@10,15,20,'),
(35, 35, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,13,14,16@4,5,8,10@1,3,7,9@6,12,18@15,20,25@'),
(36, 36, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '4,13,14,16@2,8,9,11@1,3,5,7@6,12,18@10,15,20,'),
(37, 37, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,13,14,16@4,5,7,8@2,3,9,11@6,12,18@10,15,20,'),
(38, 38, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,13,14,16@3,4,5,7@2,8,9,11@6,12,18@10,15,20,'),
(39, 39, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '11,13,14,16@1,3,5,7@2,4,8,9@6,12,18@10,15,20,'),
(40, 40, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,9,14,16@1,3,5,7@4,6,8,13@11,12,18@15,25@'),
(41, 41, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,13,14,16@1,4,5,7@6,8,9,12@3,10,17@@'),
(42, 42, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,9,13@2,11,14,16@4,5,7,8@6,12,18@10,15,20,'),
(43, 43, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '3,4,5,7@1,13,14,16@2,8,9,11@6,12,18@10,15,20,'),
(44, 44, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,5,7@2,13,14,16@4,8,9,11@6,12,18@10,15,20,'),
(45, 45, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '3,5,14,16@2,7,11,13@1,4,8,9@6,12,18@10,15,20,'),
(46, 46, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '4,13,14,16@1,3,5,7@2,8,9,11@6,12,18@10,15,20,'),
(47, 47, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,13,14,16@4,8,9,11@2,3,5,7@6,12,18@10,15,20,'),
(48, 48, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,8,9,11@3,4,5,7@1,13,14,16@6,12,18@10,15,20,'),
(49, 49, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,5,7@8,13,14,16@2,4,9,11@6,12,18@10,15,20,'),
(50, 50, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,13,14,16@2,3,9,11@4,5,7,8@6,12,18@10,15,20,'),
(51, 51, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,3,5,7@1,8,9,11@4,13,14,16@6,12,18@10,15,20,'),
(52, 52, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,5,7@2,8,9,11@4,13,14,16@6,12,18@10,15,20,'),
(53, 53, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,8,9,11@4,13,14,16@1,3,5,7@6,12,18@10,15,20,'),
(54, 54, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,3,5,7@4,8,9,11@1,13,14,16@6,12,18@10,15,20,'),
(55, 55, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,4,9,11@2,3,5,7@8,13,14,16@6,12,18@10,15,20,'),
(56, 56, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '4,13,14,16@2,8,9,11@1,3,5,7@6,12,18@10,15,20,'),
(57, 57, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,5,7@11,13,14,16@2,4,8,9@6,12,18@10,15,20,'),
(58, 58, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,4,5,7@1,13,14,16@3,8,9,11@6,12,18@10,15,20,'),
(59, 59, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,3,5,7@1,13,14,16@4,8,9,11@6,12,19@10,15,20,'),
(60, 60, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,8,9@11,13,14,16@2,4,5,7@6,12,18@10,15,20,'),
(61, 61, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,4,5,7@3,8,9,11@1,13,14,16@6@12,18@'),
(62, 62, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,4,6,8@9,13,14,16@1,3,5,7@11,12,18@10,15,20,'),
(63, 63, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '', '1,3,5,9@2,6,7,8@4,11,13,14@10,15,20,25@undefi'),
(64, 64, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '11,13,14,16@2,4,8,9@1,3,5,7@6,12,18@10,15,20,'),
(65, 65, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,5,7@2,4,6,8@9,13,14,16@11,12,18@10,15,20,'),
(66, 66, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,13,14,16@3,4,5,7@2,8,9,11@6,12,18@10,15,20,'),
(67, 67, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,5,7@2,8,9,11@4,13,14,16@6,12,18@10,15,20,'),
(68, 68, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '11,13,14,16@2,4,8,9@1,3,5,7@6,12,18@10,15,20,'),
(69, 69, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,8,9,11@4,13,14,16@1,3,5,7@6,12,18@10,15,20,'),
(70, 70, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,8,9,11@1,3,5,7@4,13,14,16@6,12,18@10,15,20,'),
(71, 71, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,5,7,8@2,4,9,11@3,13,14,16@6,12,18@10,15,20,'),
(72, 72, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '4,5,7,8@1,3,14,16@2,9,11,13@6,12,18@10,15,20,'),
(73, 73, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,4,14,16@2,3,11,13@5,7,8,9@6,12,18@10,15,20,'),
(74, 74, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,3,5,7@1,4,6,8@11,13,14,16@9,12,18@10,15,20,'),
(75, 75, '', '', '', '', '', 'undefined@undefined@undefined@undefined@undef'),
(76, 76, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,5,7@2,8,9,11@4,13,14,16@6,12,18@10,15,20,'),
(77, 77, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,4,8,9@2,3,5,7@11,13,14,16@6,12,18@10,15,20,'),
(78, 78, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,5,7@11,13,14,16@2,4,8,9@6,12,18@10,15,20,'),
(79, 79, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,7,9,11@4,13,14,16@2,3,5,8@6,12,18@10,15,20,'),
(80, 80, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,5,7@4,13,14,16@2,8,9,11@6,12,18@10,15,20,'),
(81, 81, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,5,7@11,13,14,16@2,4,8,9@6,12,18@10@'),
(82, 82, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,5,8,9@3,7,11,13@2,4,16@6,12,18@10,14,20,25@'),
(83, 83, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,14,16@2,9,11,13@4,5,7,8@6,12,18@10,15,20,'),
(84, 84, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,4,8,9@11,13,14,16@2,3,5,7@6,12,18@10,15,20,'),
(85, 85, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,3,14,16@4,5,7,8@1,9,11,13@6,12,18@10,15,20,'),
(86, 86, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,3,5,7@8,9,11,13@1,4,14,16@6,12,18@10,15,20,'),
(87, 87, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,3,8,9@1,4,5,7@11,13,14,16@6,12,18@10,15,20,'),
(88, 88, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,4,5,7@1,13,14,16@3,8,9,11@6,12,18@10,15,20,'),
(89, 89, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '4,13,14,16@2,6,9,11@1,3,5,7@8,12,18@10,15,20,'),
(90, 90, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,5,7@2,8,9,11@4,13,14,16@6,12,18@10,15,20,'),
(91, 91, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '4,8,9,11@1,3,5,7@2,13,14,16@6,12,18@10,15,20,'),
(92, 92, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,8,9,11@1,4,5,7@3,13,14,16@6,12,18@10,15,20,'),
(93, 93, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,5,7@6,9,11,13@2,4,14,16@8,12,18@10,15,20,'),
(94, 94, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '', '4,6,8,21,22,23,24@2,10,12,14,16,18,19@1,3,5,7'),
(95, 95, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '11,13,14,16@2,3,5,7@1,4,8,9@6,12,18@10,15,20,'),
(96, 96, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '4,8,9,13@1,3,5,7@2,6,14,16@11,12,18@10,15,20,'),
(97, 97, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,5,7@2,8,9,11@4,13,14,16@6,12,18@10,15,20,'),
(98, 98, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,5,7,8@4,9,11,13@2,3,14,16@6,12,18@10,15,20,'),
(99, 99, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,4,8,9@11,13,14,16@1,3,5,7@6,12,18@10,15,20,'),
(100, 100, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '3,13,14,16@2,5,8,11@1,4,7,9@6,12,18@10,15,20,'),
(101, 101, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,5,7@2,13,14,16@4,8,9,11@6,12,18@10,15,20,'),
(102, 102, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,5,7@11,13,14,16@2,4,8,9@6,12,18@10,15,20,'),
(103, 103, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,4,9,11@1,3,5,7@8,13,14,16@6,12,18@10,15,20,'),
(104, 104, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,13,14,16@2,4,8,9@3,5,7,11@6,12,18@10,15,20,'),
(105, 105, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '2,4,5,7@1,3,9,11@6,13,14,16@8,12,18@10,15,20,'),
(106, 106, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,5,7@4,13,14,16@2,8,9,11@6,12,18@10,15,20,'),
(107, 107, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,4,5,7@2,8,9,11@3,13,14,16@6,12,18@10,15,20,'),
(108, 108, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '4,13,14,16@1,3,5,7@2,8,9,11@6,12,18@10,15,20,'),
(109, 109, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,13,14,16@2,3,5,7@4,6,8,9@11,12,18@10,15,20,'),
(110, 110, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '11,13,14,16@2,3,5,7@1,4,8,9@6,12,18@10,15,20,'),
(111, 111, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,5,7@2,13,14,16@4,6,8,9@11,12,18@10,15,20,'),
(112, 112, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,8,9,11@3,4,5,7@2,13,14,16@6,12,18@10,15,20,'),
(113, 113, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,8,9,11@2,3,5,7@4,13,14,16@6,12,18@10,15,20,'),
(114, 114, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,5,7@4,13,14,16@2,8,9,11@6,12,18@10,15,20,'),
(115, 115, 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', 'http://www.dota2.com.cn/images/heroes/abiliti', '', '1,3,5,7@2,8,9,11@4,13,14,16@6,12,18@10,15,20,');

-- --------------------------------------------------------

--
-- 表的结构 `hero_skill`
--

CREATE TABLE `hero_skill` (
  `hid` int(11) NOT NULL,
  `hero_id` int(11) NOT NULL DEFAULT '0',
  `skill1_title` varchar(45) NOT NULL DEFAULT '',
  `skill1_pic` varchar(45) NOT NULL DEFAULT '',
  `skill1_intro1` varchar(256) NOT NULL DEFAULT '',
  `skill1_intro2` varchar(256) NOT NULL DEFAULT '',
  `skill1_spell` varchar(256) NOT NULL DEFAULT '',
  `skill1_cooling` varchar(45) NOT NULL DEFAULT '',
  `skill1_effect` varchar(512) NOT NULL DEFAULT '',
  `skill1_video` varchar(128) NOT NULL DEFAULT '',
  `skill1_supplement` varchar(256) NOT NULL DEFAULT '',
  `skill2_title` varchar(45) NOT NULL DEFAULT '',
  `skill2_pic` varchar(45) NOT NULL DEFAULT '',
  `skill2_intro1` varchar(256) NOT NULL DEFAULT '',
  `skill21_intro2` varchar(256) NOT NULL DEFAULT '',
  `skill2_spell` varchar(256) NOT NULL DEFAULT '',
  `skill2_cooling` varchar(45) NOT NULL DEFAULT '',
  `skill2_effect` varchar(512) NOT NULL DEFAULT '',
  `skill2_video` varchar(128) NOT NULL DEFAULT '',
  `skill2_supplement` varchar(256) NOT NULL DEFAULT '',
  `skill3_title` varchar(45) NOT NULL DEFAULT '',
  `skill3_pic` varchar(45) NOT NULL DEFAULT '',
  `skill3_intro1` varchar(256) NOT NULL DEFAULT '',
  `skill3_intro2` varchar(256) NOT NULL DEFAULT '',
  `skill3_spell` varchar(256) NOT NULL DEFAULT '',
  `skill3_cooling` varchar(45) NOT NULL DEFAULT '',
  `skill3_effect` varchar(512) NOT NULL DEFAULT '',
  `skill3_video` varchar(128) NOT NULL DEFAULT '',
  `skill3_supplement` varchar(256) NOT NULL DEFAULT '',
  `skill4_title` varchar(45) NOT NULL DEFAULT '',
  `skill4_pic` varchar(45) NOT NULL DEFAULT '',
  `skill4_intro1` varchar(256) NOT NULL DEFAULT '',
  `skill4_intro2` varchar(256) NOT NULL DEFAULT '',
  `skill4_spell` varchar(256) NOT NULL DEFAULT '',
  `skill4_cooling` varchar(45) NOT NULL DEFAULT '',
  `skill4_effect` varchar(512) NOT NULL DEFAULT '',
  `skill4_video` varchar(128) NOT NULL DEFAULT '',
  `skill4_supplement` varchar(256) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hero_skill`
--

INSERT INTO `hero_skill` (`hid`, `hero_id`, `skill1_title`, `skill1_pic`, `skill1_intro1`, `skill1_intro2`, `skill1_spell`, `skill1_cooling`, `skill1_effect`, `skill1_video`, `skill1_supplement`, `skill2_title`, `skill2_pic`, `skill2_intro1`, `skill21_intro2`, `skill2_spell`, `skill2_cooling`, `skill2_effect`, `skill2_video`, `skill2_supplement`, `skill3_title`, `skill3_pic`, `skill3_intro1`, `skill3_intro2`, `skill3_spell`, `skill3_cooling`, `skill3_effect`, `skill3_video`, `skill3_supplement`, `skill4_title`, `skill4_pic`, `skill4_intro1`, `skill4_intro2`, `skill4_spell`, `skill4_cooling`, `skill4_effect`, `skill4_video`, `skill4_supplement`) VALUES
(1, 1, '折光', 'http://www.dota2.com.cn/images/heroes/abiliti', '圣堂刺客变得十分难以捉摸，躲避伤害的同时获得攻击力加成。攻击力加成和伤害躲避效果相互独立，都是只有一定次数的效果。', '', '魔法消耗：100', '冷却时间：17.0/17.0/17.0/17.0', '技能:无目标\n伤害类型:物理\n折光次数：3/4/5/6\n攻击力加成：20/40/60/80\n持续时间：17.0/17.0/17.0/17.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/templar_assassin_refraction.mp4', '通过操控她的灵能面纱，拉娜娅让自然法则为她所用。', '隐匿', 'http://www.dota2.com.cn/images/heroes/abiliti', '圣堂刺客将自己隐藏起来，只要静止不动将一直处于隐身状态。只要在隐匿状态下攻击敌人打破隐身，拉娜娅将对敌人造成额外伤害，并降低其护甲，持续10秒。', '', '魔法消耗：50/50/50/50', '冷却时间：6', '技能:无目标\n伤害类型:物理\n额外伤害：50/100/150/200\n护甲削弱：-2/-4/-6/-8\n护甲降低持续时间：10', 'http://dota2.dl.wanmei.com/dota2/video/abilities/templar_assassin_meld.mp4', '拉娜娅本人就和她与隐之圣堂的契约一样神秘。', '灵能之刃', 'http://www.dota2.com.cn/images/heroes/abiliti', '		圣堂刺客锋利的灵能之刃可以穿透敌人，对其正后方的敌人同样造成伤害，并且提高攻击距离。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n伤害类型:纯粹\n攻击距离提升：60/120/180/240\n飞溅距离：590/630/670/710', 'http://dota2.dl.wanmei.com/dota2/video/abilities/templar_assassin_psi_blades.mp4', '她的灵刃刺进了他人的皮肤，也刺进了他们的思想，使她对现实这一奥秘有了更深的理解。', '触发陷阱', 'http://www.dota2.com.cn/images/heroes/abiliti', '		触发最近的陷阱，减速周围的敌人。', '', '魔法消耗：0', '冷却时间：0.5', '技能:无目标', '', ''),
(2, 2, '寒冰碎片', 'http://www.dota2.com.cn/images/heroes/abiliti', '		巨牙海民将数块寒冰碎片压缩成蕴含冰冻能量的冰球，对所有接触到冰球的敌人造成伤害。如果冰球到达目标地点时，则产生一个障碍物，持续7.0秒。', '', '魔法消耗：100/105/110/115', '冷却时间：19.0/16.0/13.0/10.0', '技能:点目标\n伤害类型:魔法\n作用范围：200\n碎片伤害：60/120/180/240\n碎片持续时间：7.0\n施法距离：1800', 'http://dota2.dl.wanmei.com/dota2/video/abilities/tusk_1.mp4', '在冰盾附近的冻原上，秋天最后一个日落后，结冰的速度非常惊人。', '雪球', 'http://www.dota2.com.cn/images/heroes/abiliti', '巨牙海民开始卷成雪球。右键点击350范围内的友方英雄能使其加入雪球。发动雪球后，雪球经过的单位将会被眩晕并受到伤害。雪球每卷入一个英雄，它的伤害都会得到提升。', '', '魔法消耗：75/75/75/75', '冷却时间：21/20/19/18', '技能:单位目标\n伤害类型:魔法\n基础伤害：80/120/160/200\n雪球速度：675\n每个英雄提升伤害：20/30/40/50\n眩晕持续时间：0.5/0.75/1.0/1.25\n卷入范围：100\n发动时间：3.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/tusk_2.mp4', '至今还有故事在讲述白色荒原上终结那场空前格斗的狂野之举。', '冰封魔印', 'http://www.dota2.com.cn/images/heroes/abiliti', '		巨牙海民从严冬极寒中召唤出一个冰冻印迹。印迹会创造暴风雪降低600范围内敌军速度。', '', '魔法消耗：75/75/75/75', '冷却时间：50.0/50.0/50.0/50.0', '技能:无目标\n光环作用范围：600\n持续时间：30.0\n移动速度减缓：10%/15%/20%/25%\n攻击速度降低：30/40/50/60', 'http://dota2.dl.wanmei.com/dota2/video/abilities/tusk_3.mp4', '故乡的寒意！', '海象飞踢', 'http://www.dota2.com.cn/images/heroes/abiliti', '		将目标踢回，造成伤害并且减缓移动速度。', '', '魔法消耗：100', '冷却时间：8', '技能:单位目标\n伤害类型:魔法\n飞踢距离：1400\n移动速度减缓：40%\n减速持续时间：4\n伤害：350', '', ''),
(3, 3, '弹幕冲击', 'http://www.dota2.com.cn/images/heroes/abiliti', '向附近敌方单位随机射出高能弹片，造成小幅魔法伤害和短暂眩晕。', '', '魔法消耗：100', '冷却时间：32.0/28.0/24.0/20.0', '技能:无目标\n伤害类型:魔法\n作用范围：275/275/275/275\n持续时间：10.5/10.5/10.5/10.5\n间隔：0.7/0.7/0.7/0.7', 'http://dota2.dl.wanmei.com/dota2/video/abilities/clockwerk_battery_assault_creeps.mp4', '瑞托崔普某些新近挂载的装置运作不良，所以就把它们爆出去作为有效的进攻手段。', '能量齿轮', 'http://www.dota2.com.cn/images/heroes/abiliti', '用通电的齿轮在发条技师周围形成一圈障碍物，困住贴近的单位。在外侧的敌人碰到齿轮会被电流震退，损失一定的生命和魔法。一个齿轮发动过一次震击后就会报废。敌人攻击齿轮数次后可将其摧毁，而发条技师只需要攻击一次。', '', '魔法消耗：50/60/70/80', '冷却时间：15', '技能:无目标\n伤害类型:魔法\n持续时间：5.0/6.0/7.0/8.0\n魔法/生命 损失：80/120/160/200\n摧毁齿轮的攻击次数：2', 'http://dota2.dl.wanmei.com/dota2/video/abilities/clockwerk_power_cogs.mp4', '发条技师最骄傲的发明之一就是他的能量齿轮 - 虽然有时会被他的盟友轻视。', '照明火箭', 'http://www.dota2.com.cn/images/heroes/abiliti', '向全地图范围内的任意目标区域发射照明弹，对区域内敌人造成伤害并提供10秒的视野。', '', '魔法消耗：50/50/50/50', '冷却时间：20.0/18.0/16.0/14.0', '技能:点目标\n伤害类型:魔法\n作用范围：600', 'http://dota2.dl.wanmei.com/dota2/video/abilities/clockwerk_rocket_flare_creeps.mp4', '最初用作节日的焰火，现在成了侦察和轰炸敌人的工具。', '发射钩爪', 'http://www.dota2.com.cn/images/heroes/abiliti', '向目标位置高速射出钩爪，如果命中一个单位，发条技师会将自己牵引到目标身边，若目标为非友方单位则造成眩晕和伤害。对牵引时冲撞到的单位也造成伤害和眩晕。可用神杖升级。', '', '魔法消耗：150/150/150', '冷却时间：70.0/55.0/40.0', '技能:点目标\n伤害类型:魔法\n眩晕时间：1.0/1.5/2.0\n距离：2000/2500/3000\n伤害：75/175/275\n神杖升级冷却时间：12.0/12.0/12.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/clockwerk_hookshot.mp4', '一个有些笨重的设备，钩爪能把更加厚重的发条重装甲送入天空。'),
(4, 4, '火箭弹幕', 'http://www.dota2.com.cn/images/heroes/abiliti', '向矮人直升机周围一定范围内的敌方单位齐射导弹。持续3秒。', '', '魔法消耗：90/90/90/90', '冷却时间：7.0/6.5/6/5.5', '技能:无目标\n伤害类型:魔法\n作用范围：400\n每秒发射导弹数：10\n火箭伤害：7/12/17/22', 'http://dota2.dl.wanmei.com/dota2/video/abilities/gyrocopter_rocket_barrage.mp4', '奥雷尔的新飞行器有更大的火箭载弹量，增强了速射能力。', '追踪导弹', 'http://www.dota2.com.cn/images/heroes/abiliti', '发射一枚会自动定位目标单位的追踪导弹。导弹发射后持续增加飞行速度，击中目标时造成伤害及眩晕。飞行距离越远，造成的伤害越大。敌方单位可在导弹接近前将其击落。', '', '魔法消耗：120/130/140/150', '冷却时间：20/17/14/11', '技能:单位目标\n伤害类型:魔法\n摧毁所需次数：3/3/4/4\n摧毁所需防御塔攻击次数：6/6/8/10\n眩晕时间：2.25/2.5/2.75/3.0\n最低伤害：50', 'http://dota2.dl.wanmei.com/dota2/video/abilities/gyrocopter_homing_missile.mp4', '奥雷尔的飞行器上所能装载的最大的导弹，为了实现最佳效果，他对空气动力学和爆炸物进行精心计算才得到了炸蛋™。', '高射火炮', 'http://www.dota2.com.cn/images/heroes/abiliti', '矮人直升机的攻击会击中目标周围一定范围内的所有敌人，持续一定次数的攻击。只有主要目标会受到致命一击等攻击特效。持续15秒或攻击次数用完。', '', '魔法消耗：50/50/50/50', '冷却时间：30/30/30/30', '技能:无目标\n伤害类型:物理\n作用范围：1250\n最多攻击次数：3/4/5/6', 'http://dota2.dl.wanmei.com/dota2/video/abilities/gyrocopter_flak_cannon.mp4', '这架新近改造的旋翼机装备了足够的弹药，可以攻击360度全范围内的敌人。', '召唤飞弹', 'http://www.dota2.com.cn/images/heroes/abiliti', '召唤导弹从空中打击目标区域内的敌方单位。两发导弹先后到达，第一发造成大量伤害和小幅减速，减速持续2秒；第二发造成少量伤害和大幅减速，减速持续4秒。可用神杖升级。', '', '魔法消耗：125/125/125', '冷却时间：55/50/45', '技能:点目标\n伤害类型:魔法\n第一发导弹伤害：200/275/350\n第二发导弹伤害：100/150/200\n第一发导弹减速：30%\n第二发导弹减速：60%\n作用范围：600', 'http://dota2.dl.wanmei.com/dota2/video/abilities/gyrocopter_call_down.mp4', '‘开始轰炸！’'),
(5, 5, '活血术', 'http://www.dota2.com.cn/images/heroes/abiliti', '发友方单位的恢复力，基于其基础属性治疗目标。如果目标血量低于35%，则恢复速率提高。持续16秒。', '', '魔法消耗：170/170/170/170', '冷却时间：22/18/14/10', '技能:单位目标\n生命恢复：10\n属性治疗加成：6%/8%/10%/12%\n低血量治疗加成：22%/30%/38%/46%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/huskar_inner_vitality.mp4', '虽然哈斯卡很少用魔法，不过从戴泽还有德尊牧师那里学来的这个强化术，在他严重受伤时经常被使用。', '沸血之矛', 'http://www.dota2.com.cn/images/heroes/abiliti', '哈斯卡将其长矛点燃，在普通攻击的同时对敌方单位造成持续伤害。多次攻击会造成持续伤害叠加。每次攻击都将牺牲哈斯卡部分生命值。持续8秒。', '', '魔法消耗：0/0/0/0', '冷却时间：0.0/0.0/0.0/0.0', '技能:单位目标, 自动施放\n伤害类型:魔法\n生命消耗：15\n烧灼伤害：5/10/15/20', 'http://dota2.dl.wanmei.com/dota2/video/abilities/huskar_burning_spear.mp4', '神灵武士的武器经过自身鲜血的沾染，燃起了烈火 - 敌人将领受远超己痛的苦楚。', '狂战士之血', 'http://www.dota2.com.cn/images/heroes/abiliti', '	哈斯卡的伤痛赐予他力量，根据他损失的生命值将获得攻击速度和魔法抗性加成。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n最大攻击速度：220/260/300/340\n最大魔法抗性：20%/30%/40%/50%\n最大加成时生命值：10%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/huskar_berserker_s_blood.mp4', '从虚无之境逃出后，哈斯卡的力量会随着血液的损失而增强，使他能够造成致命的物理性破坏。', '牺牲', 'http://www.dota2.com.cn/images/heroes/abiliti', '卡利用自己的生命值来摧毁敌人的生命，跃向范围内的一个目标，以自己的生命为代价对对方造成目标生命值一定比例的伤害和减速。哈斯卡在跳跃过程中对技能免疫。可用神杖升级。', '', '魔法消耗：0/0/0', '冷却时间：12', '技能:单位目标\n伤害类型:魔法\n伤害：34%/38%/42%\n生命损耗：34%/38%/42%\n移动速度减缓：-40%/-50%/-60%\n减速持续时间：4/5/6\n神杖升级造成伤害：65%\n神杖升级冷却时间：4', 'http://dota2.dl.wanmei.com/dota2/video/abilities/huskar_life_break.mp4', '哈斯卡不顾危险，冲入只有他能幸存的激烈近身战。'),
(6, 6, '凤凰冲击', 'http://www.dota2.com.cn/images/heroes/abiliti', '凤凰向目标方向进行圆弧状飞行，飞行距离固定，对沿途的敌人造成持续伤害并减缓其移动速度，然后返回初始位置。飞行过程中如果施放超新星将停止飞行。', '', '魔法消耗：0', '冷却时间：36', '技能:点目标\n伤害类型:魔法\n生命值消耗：15%\n冲击长度：1400\n烧灼持续时间：4\n每秒烧灼伤害：10/30/50/70\n移动速度减缓：-28%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/phoenix_icarus_dive_a.mp4', '尽管没少在宇宙虚空之间遨游，但在大气里振翅高飞还是有不同的快感。', '烈火精灵', 'http://www.dota2.com.cn/images/heroes/abiliti', '召唤4只围绕凤凰飞行的烈火精灵。每一只烈火精灵都能被单独发射到指定区域。对敌人持续造成伤害并大幅降低他们的攻击速度。', '', '魔法消耗：80/90/100/110', '冷却时间：45/40/35/30', '技能:无目标\n伤害类型:魔法\n生命值消耗：20%\n烈火精灵持续时间：20\n作用范围：175/175/175/175\n烧灼持续时间：4.0\n攻击速度减少：-80/-100/-120/-140\n每秒烧灼伤害：10/30/50/70', 'http://dota2.dl.wanmei.com/dota2/video/abilities/phoenix_fire_spirits.mp4', '凤凰那不断坍塌重生的内核经常释放出具有意识的霎那光流。', '烈日炙烤', 'http://www.dota2.com.cn/images/heroes/abiliti', '凤凰以损失生命能量为代价，向前射出一束炽热的光线炙烤敌人。光线对敌人造成伤害，并且能治疗友军，伤害和治疗的数值均为基础数值加上目标生命值的一定百分比。随着光线不断炙烤，造成的伤害也会不断增加。', '', '魔法消耗：100', '冷却时间：26', '技能:点目标\n伤害类型:魔法\n每秒生命值消耗：6%\n每秒基础伤害：14/20/26/32\n最大伤害：1.5%/3.25%/5.0%/6.75%\n每秒基础治疗：7/10/13/16\n最大治疗：0.625%/1.25%/1.875%/2.5%\n持续时间：6', 'http://dota2.dl.wanmei.com/dota2/video/abilities/phoenix_sun_ray.mp4', '星体能量的这般释放对凤凰来说仅仅是打开了原子大小的豁口。', '切换移动状态', 'http://www.dota2.com.cn/images/heroes/abiliti', '		在烈日炙烤时切换为缓慢前行状态。', '', '魔法消耗：0', '冷却时间：0', '技能:无目标', 'http://dota2.dl.wanmei.com/dota2/video/abilities/phoenix_toggle_movement.mp4', '&￥……%'),
(7, 7, '死亡旋风', 'http://www.dota2.com.cn/images/heroes/abiliti', '伐木机挥舞极其锋利的刀刃，对敌人造成伤害并摧毁他周围的树木。如果敌方英雄受到了作用，他的主要属性将在短时间内降低少许。如果该技能施放过程中砍倒了树木则会造成纯粹伤害。', '', '魔法消耗：70', '冷却时间：6', '技能:无目标\n伤害类型:魔法\n作用范围：300\n伤害：100/150/200/250\n属性减少百分比：15%\n属性降低持续时间：14.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/timbersaw_1.mp4', '当瑞兹拉克被梦魇般的藤蔓和植物包围的情况下，他马上就拿起了链锯自卫。', '伐木锯链', 'http://www.dota2.com.cn/images/heroes/abiliti', '伐木机发射一条锯链，锯链会嵌入第一棵碰到的树里，然后将他拉向那棵树。行进过程中任何碰到的敌方单位都会受到伤害。', '', '魔法消耗：60/70/80/90', '冷却时间：4', '技能:点目标\n伤害类型:纯粹\n锯链最大长度：850/1050/1250/1450\n作用范围：225/225/225/225\n锯链发射速度：1600/2000/2400/2800\n伤害：100/140/180/220', 'http://dota2.dl.wanmei.com/dota2/video/abilities/timbersaw_2.mp4', '你做梦也不会想到自己将逃离邪恶的树苗。', '活性护甲', 'http://www.dota2.com.cn/images/heroes/abiliti', '伐木机每受到一次物理攻击，他的生命恢复速率和护甲值都会提升。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n额外护甲：1/1.2/1.4/1.6\n额外生命恢复：1/1.15/1.3/1.45\n最大叠加次数：5/10/15/20\n单次效果持续时间：10/13/16/19', 'http://dota2.dl.wanmei.com/dota2/video/abilities/timbersaw_3.mp4', '锯齿机器上的设备可以用强化防御应对轻微的触碰。', '锯齿飞轮', 'http://www.dota2.com.cn/images/heroes/abiliti', '伐木机将次锯刃射向目标区域，锯刃会高速旋转，对周围的敌方单位造成伤害。在锯刃作用范围内的敌方单位每损失最大生命值的5%，他们的移动速度都会进一步被降低。锯刃在发射和收回的过程中都将造成伤害并砍倒碰到的树木。在发射锯刃后伐木机将无法攻击，同时会持续消耗魔法。', '', '魔法消耗：100/150/200', '冷却时间：8.0/8.0/8.0', '技能:点目标\n伤害类型:纯粹\n作用范围：200.0\n飞行伤害：100/140/180\n每秒造成伤害：50/75/100\n移动速度减缓：5%\n每秒消耗魔法：20.0/25.0/30.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/timbersaw_4.mp4', '我砍砍砍砍砍砍砍砍砍！'),
(8, 8, '血之狂暴', 'http://www.dota2.com.cn/images/heroes/abiliti', '让一个单位陷入渴望鲜血的狂怒中，使其在持续时间内造成和承受的伤害都会被加深。血之狂暴状态下的单位杀死任一单位后将回复阵亡单位最大生命值的一定百分比；血之狂暴状态下的单位被击杀则击杀者将回复阵亡英雄最大生命值的一定百分比。', '', '魔法消耗：0', '冷却时间：12/10/8/6', '技能:单位目标\n持续时间：9/10/11/12\n伤害数值提高：25%/30%/35%/40%\n击杀后回复百分比：19%/21%/23%/25%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/bloodseeker_bloodrage_a.mp4', '史德利古尔与人分享他那野兽般的嗜血饥渴。', '血之祭祀', 'http://www.dota2.com.cn/images/heroes/abiliti', '嗜血狂魔用圣血为一片区域洗礼。经过3.0秒后祭祀完成，区域范围内所有敌人都会受到伤害，并被沉默。', '', '魔法消耗：100', '冷却时间：18/16/14/12', '技能:点目标\n伤害类型:纯粹\n祭祀范围：600\n沉默持续时间：3/4/5/6\n伤害：120/160/200/240', 'http://dota2.dl.wanmei.com/dota2/video/abilities/bloodseeker_blood_bath_b.mp4', '只要有人在战场上遍洒鲜血，那么剥皮双子就乐于向他施以援手。', '嗜血渴望', 'http://www.dota2.com.cn/images/heroes/abiliti', '嗜血狂魔能够感知到敌人的伤口中涌出的鲜血，只要敌方英雄的生命值低于75%，他的移动速度和攻击力就会提升，而且生命值越低，提升效果越大。如果生命值低于25%，他还将获得该英雄的视野和真实视域。嗜血渴望的效果可以叠加。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n触发渴望临界生命值：75%\n嗜血渴望移速加成上限：16%/24%/32%/40%\n嗜血渴望攻击力加成上限：16/24/32/40\n获得视野血量临界值：25%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/bloodseeker_thirst_a.mp4', '史德利古尔闻到血腥味就会变得无比狂热。', '割裂', 'http://www.dota2.com.cn/images/heroes/abiliti', '个敌方单位皮开肉绽。若受到割裂的单位移动，将按移动距离的一定百分比受到伤害。伤害效果无视技能免疫。可用神杖升级。', '', '魔法消耗：200/225/250', '冷却时间：60', '技能:单位目标\n伤害类型:纯粹\n持续时间：12.0\n移动伤害：30%/45%/60%\n施法距离：1000\n神杖升级能量点数：2\n神杖升级充能时间：40', 'http://dota2.dl.wanmei.com/dota2/video/abilities/bloodseeker_rupture.mp4', '当嗜血狂魔猎杀你时，受伤就意味着死亡。'),
(9, 9, '回音重踏', 'http://www.dota2.com.cn/images/heroes/abiliti', '上古巨神与他的星体游魂一起践踏地面，对敌方单位造成伤害并使他们在原地昏迷。上古巨神造成物理伤害，星体游魂造成魔法伤害。', '', '魔法消耗：100', '冷却时间：14/13/12/11', '技能:无目标, 持续施法\n伤害类型:物理\n吟唱时间：1.7\n作用范围：500\n昏迷时间：2.0/3.0/4.0/5.0\n践踏伤害：70/100/130/160', 'http://dota2.dl.wanmei.com/dota2/video/abilities/elder_titan_1.mp4', '创世之力依然在巨神的重踏下回响。', '星体游魂', 'http://www.dota2.com.cn/images/heroes/abiliti', '上古巨神将他的星体游魂，一个从隐藏位面拖出的自己送至前方。灵魂对任何经过的单位造成伤害。当它与巨神合体时，它每伤害过一个单位就能给予若干攻击力和移动速度加成。星体游魂拥有回音践踏，回归和自然秩序三个技能。', '', '魔法消耗：80/90/100/110', '冷却时间：16.0', '技能:点目标\n伤害类型:魔法\n作用范围：275\n伤害：60/90/120/150\n持续时间：8.0\n加成持续时间：9.0\n移动速度加成（每个小兵）：1%\n移动速度加成（每个英雄）：5%\n攻击力加成（普通单位）：6/9/12/15\n攻击力加成（英雄单位）：15/30/45/60', 'http://dota2.dl.wanmei.com/dota2/video/abilities/elder_titan_2.mp4', '就像四大基本法则，上古巨神在所有位面同时存在，可以在需要协助的时候将其他位面的自己拖入。', '自然秩序', 'http://www.dota2.com.cn/images/heroes/abiliti', '使所有元素降低至基础水平，移除附近敌方单位的基础物理护甲和魔法抗性。护甲降低效果以英雄为中心，魔法抗性降低效果以星体游魂为中心。', '', '魔法消耗：0', '冷却时间：0', '技能:被动, 光环\n作用范围：350\n基础护甲减少：40%/60%/80%/100%\n基础魔抗减少：40%/60%/80%/100%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/elder_titan_3.mp4', '上古巨神又让创世之初重现。', '裂地沟壑', 'http://www.dota2.com.cn/images/heroes/abiliti', '上古巨神向前方放出一道不平坦的裂纹。3秒后裂纹塌陷，范围内的单位将被减速，并受到基于他们自身生命最大值的伤害。其中一半伤害为魔法伤害，另一半为物理伤害。可用神杖升级。', '', '魔法消耗：125/175/225', '冷却时间：100.0/100.0/100.0', '技能:点目标\n伤害类型:魔法\n裂地延迟：3.14\n裂纹宽度：315\n裂地长度：2400\n移动速度减缓：30%/40%/50%\n减速持续时间：3.0/4.0/5.0\n最大生命值伤害百分比：30%/40%/50%\n神杖升��减速/缴械持续时间：4.0/5.0/6.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/elder_titan_earth_splitter.mp4', '巨神创造之世他亲手将其撕裂。'),
(10, 10, '沟壑', 'http://www.dota2.com.cn/images/heroes/abiliti', '武的图腾猛击地面，沿直线裂开地面，制造一条无法通过的岩脊。同时眩晕和伤害敌方单位。', '', '魔法消耗：125/140/155/170', '冷却时间：18/17/16/15', '技能:点目标\n伤害类型:魔法\n沟壑距离：1400\n沟壑持续时间：8.0\n眩晕时间：1.0/1.25/1.5/1.75', 'http://dota2.dl.wanmei.com/dota2/video/abilities/earthshaker_fissure_creeps.mp4', '尼西埃图腾能以惊世之力使大地裂开。', '强化图腾', 'http://www.dota2.com.cn/images/heroes/abiliti', '强化撼地者的图腾，下次攻击造成额外伤害。可用神杖升级。', '', '魔法消耗：35/40/45/50', '冷却时间：5.0', '技能:无目标\n攻击力提升：100%/200%/300%/400%\n持续时间：14.0/14.0/14.0/14.0\n神杖升级跳跃距离：900', 'http://dota2.dl.wanmei.com/dota2/video/abilities/earthshaker_enchant_totem_creeps.mp4', '瑞格勇猛的的蛮力能摧毁山脉。', '余震', 'http://www.dota2.com.cn/images/heroes/abiliti', '者施放技能时会引起脚下的大地震动，眩晕附近的敌方单位并造成额外伤害。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n伤害类型:魔法\n作用范围：300\n持续时间：0.6/0.9/1.2/1.5', 'http://dota2.dl.wanmei.com/dota2/video/abilities/earthshaker_aftershock_creeps.mp4', '大地在瑞格强有力的步伐下颤抖。', '回音击', 'http://www.dota2.com.cn/images/heroes/abiliti', '过地面的冲击波，伤害敌方单位。每个受到攻击的敌人都会引起伤害附近单位的反射波。英雄本体将引起两次反射。', '', '魔法消耗：145/205/265', '冷却时间：150.0/130.0/110.0', '技能:无目标\n伤害类型:魔法\n作用范围：600\n回音伤害：60/85/110', 'http://dota2.dl.wanmei.com/dota2/video/abilities/earthshaker_echo_slam_creeps.mp4', '地壳开裂，山岳折叠，敌人遭回音击尽数碾压。'),
(11, 11, '山崩', 'http://www.dota2.com.cn/images/heroes/abiliti', '用岩石轰炸一块区域，对地面上的敌人造成伤害并眩晕。', '', '魔法消耗：120/120/120/120', '冷却时间：17.0/17.0/17.0/17.0', '技能:点目标\n伤害类型:魔法\n作用范围：275/275/275/275\n眩晕时间：1.0\n伤害：120/180/240/300', 'http://dota2.dl.wanmei.com/dota2/video/abilities/tiny_avalanche_creeps.mp4', '当受到山岭巨人召唤时，毫无生气的石头也会很有杀伤力。', '投掷', 'http://www.dota2.com.cn/images/heroes/abiliti', '抓起小小附近275范围内最近的单位（敌我皆可），然后投向目标单位或神符，对落地点周围的敌人造成伤害。如果被投掷的是敌方单位，那么这个单位会受到20%的额外伤害。', '', '魔法消耗：90/100/110/120', '冷却时间：8', '技能:单位目标\n伤害类型:魔法\n作用范围：275\n距离：1300\n伤害：75/150/225/300', 'http://dota2.dl.wanmei.com/dota2/video/abilities/tiny_toss_creeps.mp4', '小小那巨大的身形让他能够随意抛起最强壮的勇士。', '抓树', 'http://www.dota2.com.cn/images/heroes/abiliti', '抓起一棵树砸向敌人的头，可以使用一定次数。攻击距离得到提升。攻击造成更多伤害（对建筑有效），并且路径上的单位受到全额溅射伤害。可以投掷树木，耗尽所有使用次数，对远距离的敌人造成攻击伤害。', '', '魔法消耗：20/30/40/50', '冷却时间：18/16/14/12', '技能:单位目标\n伤害类型:物理\n攻击次数：5\n额外伤害：10%/20%/30%/40%\n对建筑额外伤害：60%/80%/100%/120%\n攻击距离：350', 'http://dota2.dl.wanmei.com/dota2/video/abilities/tiny_craggy_exterior.mp4', '', '长大', 'http://www.dota2.com.cn/images/heroes/abiliti', '小小崎岖的身体体重不断增长，提升了力量，并且可以摆脱负面效果。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n状态抗性：20%/30%/40%\n护甲加成：5/10/15\n攻击力提升：30/45/60\n攻击速度降低：20/30/40', 'http://dota2.dl.wanmei.com/dota2/video/abilities/tiny_grow.mp4', '亲眼看着丘陵变成山峦是震撼的 - 特别是这座山将他的敌人毁灭的时候。'),
(12, 12, '洪流', 'http://www.dota2.com.cn/images/heroes/abiliti', '喷涌的洪流，短暂延迟后，将敌人冲上天，造成伤害、眩晕和减速。', '', '魔法消耗：90/100/110/120', '冷却时间：16/14/12/10', '技能:点目标\n伤害类型:魔法\n作用范围：225\n移速减缓：-35%\n减速持续时间：1.75/2.5/3.25/4.0\n眩晕时间：1.6\n延迟：1.6/1.6/1.6/1.6\n洪流伤害：75/150/225/300', 'http://dota2.dl.wanmei.com/dota2/video/abilities/kunkka_torrent_creeps.mp4', '世界中心喷涌出的上古之洪流，应舰队统帅的召唤而来。', '潮汐使者', 'http://www.dota2.com.cn/images/heroes/abiliti', '昆卡的传奇之剑使他的下一次攻击附加额外的攻击力并在前方造成大范围的分裂攻击伤害。', '', '魔法消耗：0', '冷却时间：13.0/10.0/7.0/4.0', '技能:单位目标, 自动施放\n伤害类型:物理\n攻击力加成：25/45/65/85\n分裂伤害：100%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/kunkka_tidebringer.mp4', '迷失的铁帆海军灵魂依附在昆卡信赖的宝剑-潮汐使者之中，增强它对洪流恶魔的破坏力。', 'X标记', 'http://www.dota2.com.cn/images/heroes/abiliti', '友方或敌方英雄使用，用 X 标记他们当前位置，数秒后将他们送回 X 标记处。在技能持续时间内，昆卡可以手动触发送回。对友方英雄使用后持续时间加倍。', '', '魔法消耗：50', '冷却时间：26/20/14/8', '技能:单位目标\n敌方持续时间：4.0\n友方持续时间：8.0\n距离：400/600/800/1000', 'http://dota2.dl.wanmei.com/dota2/video/abilities/kunkka_x_marks_the_spot_sven.mp4', '舰队统帅诸多神秘能力中的一种，能用于战斗或娱乐。', '幽灵船', 'http://www.dota2.com.cn/images/heroes/abiliti', '唤一艘幽灵船驶过战场，直到撞成粉碎，残骸周围的敌人将会因撞击受到伤害并眩晕。友军被泡在舰队统帅的朗姆酒中，移动速度提升并对受到的伤害反应麻木，一定百分比的伤害将会延后到持续时间结束时结算。可用神杖升级。', '', '魔法消耗：125/175/225', '冷却时间：60/50/40', '技能:点目标\n伤害类型:魔法\n撞击延迟：2.7\n施法距离：2000\n作用宽度：425/425/425\n朗姆酒移动速度提升：10%/10%/10%\n朗姆酒持续时间：10\n眩晕时间：1.4/1.4/1.4\n延后结算伤害：40%/45%/50%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/kunkka_ghost_ship_sven.mp4', '铁帆舰队最后的战舰虽然只是个幻影，但它给昆卡的敌人带来的死亡却是完全真实的。'),
(13, 13, '酸性喷雾', 'http://www.dota2.com.cn/images/heroes/abiliti', '标区域喷洒高压酸雾。穿过受污染地带的敌人每秒会受到物理伤害，同时护甲被削弱。', '', '魔法消耗：130/140/150/160', '冷却时间：22.0', '技能:点目标\n伤害类型:物理\n作用范围：400/475/550/625\n持续时间：16\n每秒伤害：15/20/25/30\n护甲削弱：4/5/6/7', 'http://dota2.dl.wanmei.com/dota2/video/abilities/alchemist_acid_spray_creeps.mp4', '用黑酿家族的祖传化学知识，拉泽尔配出一种能溶解最坚硬金属的强酸。', '不稳定化合物', 'http://www.dota2.com.cn/images/heroes/abiliti', '炼金术士调制一瓶不稳定的化合物，投向敌方英雄，对爆炸点周边范围的单位造成伤害并眩晕。调制的时间越久，伤害越大，眩晕时间也越长。调制5秒后达到最大伤害量和最长眩晕时间。然而，如果5.5秒后还不扔出去的话，则会在炼金术士自己手中爆炸。', '', '魔法消耗：120', '冷却时间：22/20/18/16', '技能:无目标\n伤害类型:物理\n最长眩晕时间：1.75/2.5/3.25/4.0\n最大伤害：150/220/290/360\n爆炸作用范围：200', 'http://dota2.dl.wanmei.com/dota2/video/abilities/alchemist_unstable_concoction.mp4', '将整座山转变成黄金的实验失败后带来的副产品，这种易挥发的药剂有着破坏的潜力。', '贪魔的贪婪', 'http://www.dota2.com.cn/images/heroes/abiliti', '金术士将敌人的尸体和赏金神符转化成额外的金币。炼金术士每杀死一个单位，就能获得基础额外金钱和附加额外金钱。如果炼金术士在接下来30秒内又杀死了一个单位，获得了黄金，那么他所获得的附加额外金钱将有一定幅度的增加。另外，激活赏金神符后将获得2.5倍金钱。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n连杀限时：30\n基础金钱奖励：4\n额外金钱奖励：4\n最高额外金钱：16/20/24/28\n赏金神符奖励系数：2.5', 'http://dota2.dl.wanmei.com/dota2/video/abilities/alchemist_goblin_s_greed.mp4', '尽管不是一座山，不过拉泽尔还是掌握将一些较小的化合物转化成金币来填满他荷包的技术。', '化学狂暴', 'http://www.dota2.com.cn/images/heroes/abiliti', '术士诱发他的食人魔同伴进入化学狂暴，降低攻击间隔，提高移动速度和回复能力。', '', '魔法消耗：50/100/150', '冷却时间：55.0', '技能:无目标\n持续时间：25.0\n基础攻击间隔：1.4/1.2/1.0\n生命回复提升：40/48/56\n额外魔法恢复：3.0/7.5/12.0\n移动速度提升：40/50/60', 'http://dota2.dl.wanmei.com/dota2/video/abilities/alchemist_chemical_rage_running.mp4', '拉泽尔在越狱时给食人魔喝的酿造物成了激战中的有效药剂。'),
(14, 14, '气运之末', 'http://www.dota2.com.cn/images/heroes/abiliti', '持续施法 - 将神谕者的力量汇聚为一股蕴含荡涤之力的能量，对敌方目标释放这股能量可以对其造成伤害，使其被缠绕，并且净化其附近区域的魔法效果。如果目标是友军，将只造成净化效果。引导时间最长可以达到2.5秒。停止效果的持续时间与引导时间相同。驱散类型：弱驱散', '', '魔法消耗：110', '冷却时间：15/12/9/6', '技能:单位目标, 持续施法\n伤害类型:魔法\n伤害：90/120/150/180\n停滞最短持续时间：0.5\n停滞最长持续时间：2.5\n作用范围：300', '', '星体天球充沛的力量让四周充斥着静电爆裂声，而生能射向八方，使敌人暂时魂魄出窍。', '命运敕令', 'http://www.dota2.com.cn/images/heroes/abiliti', '神谕者让目标沉醉，使其无法攻击，同时提高其100%的魔法抗性。可对友方和敌方单位施放。', '', '魔法消耗：50', '冷却时间：16/13/10/7', '技能:单位目标\n持续时间：3.0/3.5/4.0/4.5\n施法距离：500/600/700/800', '', '无法逾越的预言四处回响：神选之友将暂时不受魔法的折磨。但是折磨还有很多种...', '涤罪之焰', 'http://www.dota2.com.cn/images/heroes/abiliti', '将目标身上一切不洁之物净化，对其造成大量魔法伤害，并使其在接下来的一段时间内逐渐恢复生命值。恢复的生命值总量将超过受到的伤害。可对友方和敌方单位施放。可用神杖升级。', '', '魔法消耗：80/85/90/95', '冷却时间：2.25', '技能:单位目标\n伤害类型:魔法\n伤害：90/180/270/360\n每秒治疗量：11.0/22.0/33.0/44.0\n治疗生命值总量：99/198/297/396\n持续时间：9.0\n神杖升级冷却时间：1.0', '', '一支蜡烛的微光在挂满镜子的厅堂中异常耀眼，无独有偶，破碎的宇宙之壁可以将预言的微光变成炫目的火炬。', '虚妄之诺', 'http://www.dota2.com.cn/images/heroes/abiliti', '暂时篡改队友的命运，技能期间受到的任何治疗���伤害效果将在虚妄之诺结束后结算，其中治疗效果加倍结算。施放时将移除目标身上大部分的负面状态效果。驱散类型：强驱散', '', '魔法消耗：100', '冷却时间：100/65/30', '技能:单位目标\n持续时间：8/9/10', '', '敌人和虚妄的先知一样常常会编造他人的命运。'),
(15, 15, '投掷飞镖', 'http://www.dota2.com.cn/images/heroes/abiliti', '		向一名敌方单位掷出一枚致命的飞镖，对目标造成伤害和短暂眩晕。只要作用目标周围1200范围内存在被追踪术标记的单位，飞镖就能向其弹射。可用神杖升级。', '', '魔法消耗：120/130/140/150', '冷却时间：10', '技能:单位目标\n伤害类型:魔法\n伤害：150/225/300/375\n被追踪单位弹射距离：1200', 'http://dota2.dl.wanmei.com/dota2/video/abilities/bounty_hunter_shuriken_toss.mp4', '尽管飞镖很小，但刚铎精确的瞄准可以带来致命伤害。', '忍术', 'http://www.dota2.com.cn/images/heroes/abiliti', '赏金猎人准备好他的下次攻击，造成致命一击并残废目标。', '', '魔法消耗：0', '冷却时间：12.0/10.0/8.0/6.0', '技能:被动\n致命一击伤害倍率：150%/175%/200%/225%\n移动速度减缓：-15%/-20%/-25%/-30%\n攻击速度降低：-15/-20/-25/-30\n持续时间：3.0/3.0/3.0/3.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/bounty_hunter_jinada.mp4', '对着他信赖的刀刃低语从索鲁克那里学来的魔法，刚铎瞄准对手的肌腱和关节下手，就是要让他们残废。', '暗影步', 'http://www.dota2.com.cn/images/heroes/abiliti', '	赏金猎人进入隐身，并能够穿越其它单位，直到他攻击或使用技能。破隐一击会造成额外伤害。', '', '魔法消耗：65', '冷却时间：15.0/15.0/15.0/15.0', '技能:无目标\n伤害类型:物理\n持续时间：20.0/25.0/30.0/35.0\n进入隐身时间：1.0/0.75/0.5/0.25\n额外伤害：30/60/90/120', 'http://dota2.dl.wanmei.com/dota2/video/abilities/bounty_hunter_shadow_walk.mp4', '当回忆起暴君伽夫被刺杀时的那个宫廷小丑，人们脑海中只能想起那舞动的暗影。', '追踪术', 'http://www.dota2.com.cn/images/heroes/abiliti', '	追踪一个敌方英雄，获得目标的真实视域，以及目标当前携带的金钱数额。被追踪者周围的友军获得移动速度提升。如果目标在被追踪期间死亡，赏金猎人和附近友方英雄都将获得一笔赏金。', '', '魔法消耗：65', '冷却时间：4', '技能:单位目标\n加速范围：900/900/900\n移动速度提升：16%/18%/20%\n自身金钱奖励：150/250/350\n友军金钱奖励：40/80/120\n持续时间：30.0/30.0/30.0\n施法距离：1200', 'http://dota2.dl.wanmei.com/dota2/video/abilities/bounty_hunter_track.mp4', '利用他高度敏锐的视觉和嗅觉，刚铎的袭击成功率很高。'),
(16, 16, '火焰气息', 'http://www.dota2.com.cn/images/heroes/abiliti', '向龙骑士的前方喷射出一团火焰，烧灼碰到的敌人，并使其基础攻击力降低。', '', '魔法消耗：100/110/120/130', '冷却时间：14/13/12/11', '技能:点目标, 单位目标 \n伤害类型:魔法\n攻击力降低：-25%\n减攻持续时间：11', 'http://dota2.dl.wanmei.com/dota2/video/abilities/dragon_knight_breathe_fire_creeps.mp4', '龙骑士达维安的气息已经变成了斯莱瑞克的古龙之息，人们还记得它将无数骑士烧成了焦炭。', '神龙摆尾', 'http://www.dota2.com.cn/images/heroes/abiliti', '龙骑士用盾对身边的一个敌方单位进行打击，造成眩晕和少量伤害。在古龙形态下施法距离提高到400。', '', '魔法消耗：100/100/100/100', '冷却时间：12/11/10/9', '技能:单位目标\n伤害类型:魔法\n眩晕时间：2.5/2.75/3.0/3.25', 'http://dota2.dl.wanmei.com/dota2/video/abilities/dragon_knight_dragon_tail.mp4', '达维安将龙族的天赋和骑士的战斗技巧完美结合，使他在近身肉搏中无比勇猛。', '龙族血统', 'http://www.dota2.com.cn/images/heroes/abiliti', '龙族的鲜血能提高龙骑士的生命恢复速度以及护甲。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n生命恢复：4/6/8/10\n护甲提升：3/6/9/12', 'http://dota2.dl.wanmei.com/dota2/video/abilities/dragon_knight_dragon_blood.mp4', '斯莱瑞克的血液流遍达维安的全身，他获得了寻常骑士身上双倍的活力。', '古龙形态', 'http://www.dota2.com.cn/images/heroes/abiliti', '龙骑士能够变身成为三种古龙形态之一，同时提升移动速度以及神龙摆尾的施法距离，并且获得新的能力。等级1 碧龙 - 腐蚀吐息：攻击时附带毒素，造成每秒20点伤害，持续5秒。等级2 赤龙 - 溅射攻击：攻击时伤害将溅射到300范围内所有单位，并且全部受到腐蚀吐息的作用。等级3 苍龙 - 冰霜吐息：降低攻击溅射到的敌人30%移动速度和30攻击速度，持续3秒，并且全部受到腐蚀吐息的作用。', '', '魔法消耗：50/50/50', '冷却时间：115', '技能:无目标\n持续时间：60\n移动速度提升：25/25/25\n额外攻击距离：350', '', '达维安体内有一个更为强大的形态正在休眠，一个将骑士之力和古龙之威完美结合的形态。'),
(17, 17, '压倒性优势', 'http://www.dota2.com.cn/images/heroes/abiliti', '			用敌人的数量反抗他们，造成伤害并提升军团指挥官的移动速度。根据作用单位和英雄的数量决定造成的伤害数值，以及移速加成的数值。对幻象和召唤单位额外造成相当于其生命值一定百分比的伤害。', '', '魔法消耗：100/110/120/130', '冷却时间：15', '技能:点目标\n伤害类型:魔法\n基础伤害：40/60/80/100\n每个小兵提供伤害：14/16/18/20\n每个英雄提供伤害：30/60/90/120\n对幻象的伤害百分比：25%\n移动速度加成（每个小兵）：3%\n移动速度加成（每个英雄）：9%\n��速加成持续时间：7.0\n作用范围：330', 'http://dota2.dl.wanmei.com/dota2/video/abilities/legion_commander_overwhelming_odds.mp4', '石堂城的弓箭手就等特蕾丝汀一声令下。', '强攻', 'http://www.dota2.com.cn/images/heroes/abiliti', '解除指定友方单位的一切负面效果和控制技能，并额外给予其攻击速度和生命恢复速率，持续一定时间。驱散类型：强驱散', '', '魔法消耗：110', '冷却时间：16.0/15.0/14.0/13.0', '技能:单位目标\n持续时间：5.0\n攻击速度加成：65/90/115/140\n生命恢复：30/35/40/45', 'http://dota2.dl.wanmei.com/dota2/video/abilities/legion_commander_press_the_attack.mp4', '古铜军团的重振号角可以鼓舞人心。', '勇气之霎', 'http://www.dota2.com.cn/images/heroes/abiliti', '		每当受到攻击，军团指挥官都有几率立即作出反击（此次攻击具有吸血效果）。', '', '魔法消耗：0', '冷却时间：2.3/1.8/1.3/0.8', '技能:被动\n反击触发几率：25%\n吸血百分比：55%/65%/75%/85%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/legion_commander_moment_of_courage.mp4', '特蕾丝汀知道，敌人出招最狠的时候也是他们最脆弱的时候。', '决斗', 'http://www.dota2.com.cn/images/heroes/abiliti', '军团指挥官强制与目标敌方英雄进行决斗，持续短暂的数秒。决斗开始后双方英雄只能进行物理攻击，不能使用任何物品和技能。如果有英雄在决斗期间死亡，赢得决斗的英雄将永久获得额外攻击力。可用神杖升级。', '', '魔法消耗：75/75/75', '冷却时间：50.0/50.0/50.0', '技能:单位目标\n持续时间：4.0/4.75/5.5\n神杖升级持续时间：6/7/8\n攻击力奖励：10/14/18', 'http://dota2.dl.wanmei.com/dota2/video/abilities/legion_commander_duel.mp4', '与石堂城的士兵进行单挑是令人无法抗拒的挑战。'),
(18, 18, '残影', 'http://www.dota2.com.cn/images/heroes/abiliti', '之灵制造一个充满爆炸性能量的自身残影，如果有人接近就会引爆造成伤害，残影持续12秒。', '', '魔法消耗：100', '冷却时间：3.5', '技能:无目标\n伤害类型:魔法\n作用范围：260\n伤害：140/180/220/260', 'http://dota2.dl.wanmei.com/dota2/video/abilities/storm_spirit_static_remnant.mp4', '雷神·风暴烈酒的二象性让他可以欣赏自己被电时的百态。', '电子涡流', 'http://www.dota2.com.cn/images/heroes/abiliti', '将一个敌人拖到风暴之灵所在位置的涡流，同时也会在3秒内降低风暴之灵自己50%的移动速度。可用神杖升级。', '', '魔法消耗：85', '冷却时间：21/20/19/18', '技能:单位目标\n自身减速：-50%\n自身减速持续时间：3.0\n持续时间：1.0/1.5/2.0/2.5\n神杖升级作用范围：475', 'http://dota2.dl.wanmei.com/dota2/video/abilities/storm_spirit_electric_vortex.mp4', '雷神狂暴的雷霆力量总是让其他人为之一电。', '超负荷', 'http://www.dota2.com.cn/images/heroes/abiliti', '法时会产生电荷，在风暴之灵下次攻击时被释放，对附近敌人造成伤害并减速。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n伤害类型:魔法\n作用范围：300\n移动速度减缓：-80%\n攻击速度降低：-50\n持续时间：0.6/0.6/0.6/0.6', 'http://dota2.dl.wanmei.com/dota2/video/abilities/storm_spirit_overload.mp4', '啪！嘶！咝！', '球状闪电', 'http://www.dota2.com.cn/images/heroes/abiliti', '风暴之灵变成不稳定的电流在战场上横冲直撞，直到他的魔法耗尽或到达目标才停下。施法消耗为30+总魔法量的8%，每移动100距离消耗12+总魔法量的0.7%，本技能造成的伤害每飞行100距离就会递增。', '', '魔法消耗：30', '冷却时间：0', '技能:点目标\n伤害类型:魔法\n速度：1250/1875/2500\n作用范围：125/200/275\n距离魔法消耗：0.7%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/storm_spirit_ball_lightning.mp4', '风暴来袭。'),
(19, 19, '冰霜新星', 'http://www.dota2.com.cn/images/heroes/abiliti', '召唤具有破坏性的冰爆，降低目标区域内的敌人的移动和攻击速度。', '', '魔法消耗：100/120/140/160', '冷却时间：12/11/10/9', '技能:点目标\n伤害类型:魔法\n作用范围：425\n移动速度减缓：-20%/-30%/-40%/-50%\n攻击速度降低：-20/-30/-40/-50\n持续时间：4.5\n伤害：100/150/200/250', 'http://dota2.dl.wanmei.com/dota2/video/abilities/crystal_maiden_crystal_nova_creeps.mp4', '莉莱周围的温度急剧下降，让周围的人被急速冻结。', '冰封禁制', 'http://www.dota2.com.cn/images/heroes/abiliti', '操控冰霜包围一个敌方单位，禁止移动和攻击，同时每0.5秒造成50点伤害。对6级以下的普通单位施放将产生10秒的持续时间。', '', '魔法消耗：140/145/150/155', '冷却时间：9/8/7/6', '技能:单位目标\n伤害类型:魔法\n每半秒造成伤害：50\n对英雄单位的持续时间：1.5/2.0/2.5/3.0\n对英雄总伤害：150/200/250/300\n对非英雄单位持续时间：10.0/10.0/10.0/10.0\n对非英雄单位伤害总量：1000', 'http://dota2.dl.wanmei.com/dota2/video/abilities/crystal_maiden_frostbite_creep.mp4', '莉莱引来蓝心冰川的寒风，将敌人封禁在冰块里。', '奥术光环', 'http://www.dota2.com.cn/images/heroes/abiliti', '提升地图上所有友方单位的魔法回复速度。水晶室女自身获得更高的回复速度。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n友军魔法恢复速率：0.8/1.0/1.2/1.4\n自身魔法恢复速率：1/2/3/4', 'http://dota2.dl.wanmei.com/dota2/video/abilities/crystal_maiden_arcane_aura.mp4', '低温提升了魔法精华，莉莱的出现能够让盟友更频繁的使用魔法而不必担心消耗。', '极寒领域', 'http://www.dota2.com.cn/images/heroes/abiliti', '持续施法 - 以水晶室女为中心召唤冰晶轰炸敌人，将其减速并造成大量伤害。持续10秒。可用神杖升级。', '', '魔法消耗：200/400/600', '冷却时间：110/100/90', '技能:无目标, 持续施法\n伤害类型:魔法\n作用范围：835\n冰爆范围：300\n移动速度减缓：-30%\n攻击速度降低：-30\n伤害：105/170/250', 'http://dota2.dl.wanmei.com/dota2/video/abilities/crystal_maiden_freezing_field_creeps.mp4', '在她被流放的地方，冰川残骸成为了莉莱用来修练寒冰魔法的场地。'),
(20, 20, '激光', 'http://www.dota2.com.cn/images/heroes/abiliti', '强烈的能量光束，对目标造成伤害和致盲效果，使他的所有物理攻击都落空。可用神杖升级。', '', '魔法消耗：95/120/145/170', '冷却时间：14.0/14.0/14.0/14.0', '技能:单位目标\n伤害类型:纯粹\n致盲后丢失概率：100%/100%/100%/100%\n英雄致盲持续时间：3/3.5/4/4.5\n小兵致盲持续时间：6.0/6.0/6.0/6.0\n激光伤害：80/160/240/320\n施法距离：650\n神杖升级折射作用范围：650', 'http://dota2.dl.wanmei.com/dota2/video/abilities/tinker_laser.mp4', '鲍什在他的地下实验室完善了这把激光岩石切割器，从没考虑过它���作战效用。', '热导飞弹', 'http://www.dota2.com.cn/images/heroes/abiliti', '发射一对火箭，攻击2500范围内可见的最近的敌方英雄。可用神杖升级。', '', '魔法消耗：80/100/120/140', '冷却时间：25.0/25.0/25.0/25.0', '技能:无目标\n伤害类型:魔法\n伤害：125/200/275/350\n目标数：2/2/2/2\n神杖升级目标数：4/4/4/4', 'http://dota2.dl.wanmei.com/dota2/video/abilities/tinker_heat-seeking_missile_long.mp4', '鲍什最后救下来的玩意儿，是一个改造过的制导式火箭筒。', '进击的机械', 'http://www.dota2.com.cn/images/heroes/abiliti', '	征募一支机器人军队，摧毁修补匠周围的敌方单位。', '', '魔法消耗：145/150/165/190', '冷却时间：35.0/35.0/35.0/35.0', '技能:点目标\n伤害类型:魔法\n作用范围：900\n持续时间：6.0', '', '就算实验室最后被封锁了，呼叫机械兵锋的无线电还是通的。', '再装填', 'http://www.dota2.com.cn/images/heroes/abiliti', '续施法 - 重置修补匠的大多数物品和技能的冷却时间。', '', '魔法消耗：100/200/300', '冷却时间：0.0/0.0/0.0', '技能:无目标, 持续施法\n再装填所需时间：3.0/1.5/0.75', 'http://dota2.dl.wanmei.com/dota2/video/abilities/tinker_rearm.mp4', '这儿换块新电池，那儿塞几枚火箭弹，鲍什不断改进现有的技术。'),
(21, 21, '苍穹震击', 'http://www.dota2.com.cn/images/heroes/abiliti', '		利用虚空能量制造出分叉的闪电，打击多个敌方单位。', '', '魔法消耗：95/105/135/160', '冷却时间：8.0/8.0/8.0/8.0', '技能:单位目标\n伤害类型:魔法\n目标数：1/3/5/7\n伤害：140/200/260/320', 'http://dota2.dl.wanmei.com/dota2/video/abilities/shadow_shaman_ether_shock_creeps.mp4', '最初是给流浪艺人作开场秀用的，罗斯塔的闪电之炫能分成数叉来震击不止一个对手。', '妖术', 'http://www.dota2.com.cn/images/heroes/abiliti', '将一个敌方单位变成人畜无害的动物，使其无法攻击和使用技能。', '', '魔法消耗：110/140/170/200', '冷却时间：13', '技能:单位目标\n持续时间：1.25/2.0/2.75/3.5', 'http://dota2.dl.wanmei.com/dota2/video/abilities/shadow_shaman_hex.mp4', '罗斯塔通常将自己变成一个小鸡来结束表演——现在他把这个屈辱分享给别人了。', '枷锁', 'http://www.dota2.com.cn/images/heroes/abiliti', '持续施法 - 使用魔法绑住一个敌方单位，使其无法攻击和移动，同时持续造成伤害。', '', '魔法消耗：140/150/160/170', '冷却时间：10', '技能:单位目标, 持续施法\n伤害类型:魔法\n总伤害：120/200/280/360\n最大持续时间：2.75/3.5/4.25/5.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/shadow_shaman_shackles.mp4', '一个自卫用咒语，是师傅于渗色岭被害后，罗斯塔所开发的枷锁咒。', '群蛇守卫', 'http://www.dota2.com.cn/images/heroes/abiliti', '		召唤10支毒蛇守卫来攻击敌方单位和建筑。守卫对魔法免疫。每个守卫受到两次攻击就会被摧毁。可用神杖升级。', '', '魔法消耗：200/350/600', '冷却时间：120', '技能:点目标\n伤害类型:物理\n攻击力：40/70/100\n持续时间：45.0/45.0/45.0\n神杖升级攻击距离加成：225', 'http://dota2.dl.wanmei.com/dota2/video/abilities/shadow_shaman_mass_serpent_ward.mp4', '耍蛇曾是演艺中的重头戏；现在罗斯塔可以授予蛇力量，以服从他自己的吩咐。'),
(22, 22, '分裂箭', 'http://www.dota2.com.cn/images/heroes/abiliti', '杜莎施展魔法将她的箭分裂成若干支箭矢。分裂箭造成的伤害为正常攻击力的一定百分比。额外目标不会受到其他攻击特效（比如致命一击）的作用。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n攻击力百分比：30%/45%/60%/75%\n额外目标数：3', 'http://dota2.dl.wanmei.com/dota2/video/abilities/medusa_split_shot.mp4', '遇到了被诅咒的蛇发女妖，那就会领教到她的愤怒。', '秘术异蛇', 'http://www.dota2.com.cn/images/heroes/abiliti', '放出一条秘术异蛇在敌人之间跳跃，造成伤害并偷取魔法值。抵达最后一个目标后，它会返回到美杜莎身上为其恢复魔法值。每次跳跃造成更多伤害，并偷取11 14 17 20%最大魔法值的魔法。对石化凝视作用下的石化单位将造成纯粹伤害。可用神杖升级。', '', '魔法消耗：140/150/160/170', '冷却时间：11', '技能:单位目标\n伤害类型:魔法\n跳跃范围：475/475/475/475\n跳跃次数：3/4/5/6\n伤害：80/120/160/200\n魔法偷取：11%/14%/17%/20%\n每次跳跃增加伤害：35%\n神杖升级基础持续时间：1.0\n神杖升级弹跳增加持续时间：0.3', 'http://dota2.dl.wanmei.com/dota2/video/abilities/medusa_mystic_snake.mp4', '蛇发女妖所受的诅咒也是她最强大的力量。', '魔法护盾', 'http://www.dota2.com.cn/images/heroes/abiliti', '创造一个魔法护盾，消耗美杜莎的魔法值以吸收60%的伤害。', '', '魔法消耗：0', '冷却时间：0', '技能:无目标\n每点魔法吸收伤害：1.6/1.9/2.2/2.5', 'http://dota2.dl.wanmei.com/dota2/video/abilities/medusa_mana_shield.mp4', '尽管美杜莎生来没被赐以永恒的生命，她所受的诅咒赋予了她独一无二的防御力量。', '石化凝视', 'http://www.dota2.com.cn/images/heroes/abiliti', '任何盯着蛇发女妖的敌方单位的攻击速度和移动速度均将被减缓。如果一单位在石化凝视期间盯着蛇发女妖超过2秒，该单位会被完全石化。被石化的单位处于眩晕状态，魔法抗性为100%，受到物理攻击时承受额外伤害。如果幻象被石化将立刻消失。', '', '魔法消耗：200/200/200', '冷却时间：90', '技能:无目标\n伤害类型:魔法\n作用范围：1000/1000/1000\n持续时间：5/6/7\n速度减缓：35%\n石化持续时间：3.0\n额外物理伤害：50%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/medusa_stone_gaze_sven.mp4', '美杜莎的美貌感天动地。'),
(23, 23, '自然蔽护', 'http://www.dota2.com.cn/images/heroes/abiliti', '树精卫士只要进入一棵树木的265距离内，经过7 6 5 3秒后就会获得隐身效果。隐身时移动速度提升10 18 26 34%，破隐一击将使目标被缴械并缠绕，持续0.4 1.0 1.6 2.2秒。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n渐隐时间：7/6/5/3\n树木范围：265\n移动速度：10%/18%/26%/34%\n缠绕持续时间：0.4/1.0/1.6/2.2', '', '树精卫士不常出现在人们的视线中；他们舒适地隐蔽于枝繁叶茂的同胞当中并保持自然的形态。', '寄生种子', 'http://www.dota2.com.cn/images/heroes/abiliti', '树精卫士在一个敌方单位体内种下一颗吸血的种子，吸收其生命值，同时使其减速。种子对其周围的友方单位进行治疗。吸取6次。', '', '魔法消耗：80/95/110/125', '冷却时间：16/13/10/7', '技能:单位目标\n伤害类型:魔法\n每次伤害：15/30/45/60\n移动速度减缓：-16%/-20%/-24%/-28%\n范围：500\n持续时间：4.5', 'http://dota2.dl.wanmei.com/dota2/video/abilities/treant_protector_leech_seed.mp4', '鲁夫伦特悉心培育的这些生命完全靠闯入他圣地的入侵者的生命力维持。', '活体护甲', 'http://www.dota2.com.cn/images/heroes/abiliti', '将友方英雄或建筑笼罩在保护性外壳中，获得额外的生命回复速率。同时为英雄提供所有类型的伤害格挡。在受到若干次攻击后护甲将会消失。', '', '魔法消耗：50', '冷却时间：30/24/18/12', '技能:单位目标, 点目标\n抵挡伤害次数：4/5/6/7\n生命回复速率：4/7/10/13\n格挡伤害量：20/40/60/80\n持续时间：15.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/treant_protector_living_armor.mp4', '树精卫士的根须广泛蔓延，促进自然万物的生长和恢复。', '丛林之眼', 'http://www.dota2.com.cn/images/heroes/abiliti', '树精卫士对目标树木灌注魔力。注魔后树木将拥有周围的顺畅视野。如果树精卫士施放了疯狂生长，这些树木附近800范围内的单位将会被困住，并受到伤害。', '', '魔法消耗：100', '冷却时间：35', '技能:单位目标\n伤害类型:魔法\n树木视野范围：800\n神杖升级疯狂生长作用范围：800\n神杖升级疯狂生长每秒伤害：175', '', '对于需要守卫的，谁也不能打包票究竟是什么人，或什么东西。'),
(24, 24, '孵化蜘蛛', 'http://www.dota2.com.cn/images/heroes/abiliti', '		育母蜘���将她的卵注入敌人体内，造成伤害。如果目标在感染期间被击杀，卵会孵化成小蜘蛛。', '', '魔法消耗：120/120/120/120', '冷却时间：10.0/10.0/10.0/10.0', '技能:单位目标\n伤害类型:魔法\n小蜘蛛持续时间：60.0/60.0/60.0/60.0\n伤害：70/140/210/280\n数量：1/2/3/4', 'http://dota2.dl.wanmei.com/dota2/video/abilities/broodmother_spawn_spiderlings.mp4', '布蕾克·艾拉齐娜不断抚育她的后代，即使是在战场上。新孵化的小蜘蛛很快就学会如何支援她们的母亲。', '织网', 'http://www.dota2.com.cn/images/heroes/abiliti', '编织出一张蜘蛛网，育母蜘蛛在蛛网里获得无视地形移动的能力，同时提高生命恢复和移动速度。织网的能量点数每40.0秒恢复1点。织网现在可向其他蛛网触及的区域全屏释放。蛛网永久存在，不过可以手动摧毁。当其数量超过上限，最早的蛛网将会消失。', '', '魔法消耗：50', '冷却时间：0.0', '技能:点目标\n蛛网数量上限：2/4/6/8\n生命回复提升：3/5/7/9\n移速加成：40%/50%/60%/70%\n织网能量点数上限：2/4/6/8\n能量恢复所需时间：40.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/broodmother_spin_web.mp4', '编制出一张蛛丝之床，艾拉齐娜的网保护她和她的后代，同时给予前进的敌人警告。', '麻痹之咬', 'http://www.dota2.com.cn/images/heroes/abiliti', '		育母蜘蛛用毒液削弱敌方单位，使她的攻击带有减速效果，中毒单位的攻击有一定概率落空。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n落空概率：30%/40%/50%/60%\n移动速度减缓：-16%/-26%/-36%/-46%\n持续时间：2.0/2.0/2.0/2.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/broodmother_incapacitating_bite_running.mp4', '来自布蕾克·艾拉齐娜的尖牙中的麻痹毒素，对侵入她的网中的敌人造成减速和痛苦的死亡。', '极度饥渴', 'http://www.dota2.com.cn/images/heroes/abiliti', '		对活物体液的强烈饥渴提高了育母蜘蛛的攻击力，并使她的攻击附带吸血效果。', '', '魔法消耗：100/100/100', '冷却时间：45.0/45.0/45.0', '技能:无目标\n攻击力加成：60/100/140\n吸血百分比：60%/100%/140%\n持续时间：14.0/14.0/14.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/broodmother_insatible_hunger_sven.mp4', '大多数猎物都被她用丝茧裹了起来，作为饲料留给后代，育母蜘蛛自己则想品尝那些迷路的英雄。'),
(25, 25, '致命连接', 'http://www.dota2.com.cn/images/heroes/abiliti', '	将数个敌方单位连接在一起，其中一人所受伤害的一定百分比会被其他所有人感受到。', '', '魔法消耗：140', '冷却时间：24/22/20/18', '技能:单位目标\n连接敌人数：3/4/5/6\n伤害共享百分比：25%\n持续时间：25.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/warlock_fatal_bonds.mp4', '一个远古咒语，能将多个生命体的生命能量连接成一个集合体。', '暗言术', 'http://www.dota2.com.cn/images/heroes/abiliti', '术士低声说出一个咒语，持续治疗一个友方单位或伤害一个敌方单位。', '', '魔法消耗：90/110/130/150', '冷却时间：16', '技能:单位目标\n伤害类型:魔法\n持续时间：12.0\n施法距离：525/600/675/750', 'http://dota2.dl.wanmei.com/dota2/video/abilities/warlock_shadow_word_sven.mp4', '戴蒙的奥术有无穷的用途，可以用来强化友军也可以用作诅咒伤害敌人。', '剧变', 'http://www.dota2.com.cn/images/heroes/abiliti', '续施法 - 随施法时间增强的减速气流。持续最多16秒。在魔法结束或目标离开生效区域后，敌人仍会被减速3秒。', '', '魔法消耗：100/110/120/130', '冷却时间：50/46/42/38', '技能:点目标, 持续施法\n作用范围：650/650/650/650\n最大减速效果所需吟唱时间：12.5/6.5/4.5/3.5\n最大减速：84%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/warlock_upheaval_sven.mp4', '戴蒙操纵时空，削弱所有敌军。', '混乱之祭', 'http://www.dota2.com.cn/images/heroes/abiliti', '	从深渊召唤一个地狱火，眩晕敌人1秒。地狱火持续60秒，能够减免部分技能的伤害，拥有永久献祭和烈焰之拳技能。可用神杖升级。', '', '魔法消耗：250/375/500', '冷却时间：170', '技能:点目标\n伤害类型:魔法\n召唤冲击作用范围：600\n地狱火生命值：1000/1500/2000\n地狱火攻击力：75/100/125\n地狱火护甲：6/9/12\n地狱火生命恢复：25/50/75\n神杖升级地狱火数量：2\n神杖升级地狱火血量：750/1125/1500\n神杖升级地狱火攻击力：56/75/94\n神杖升级奖励减少：50%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/warlock_chaotic_offering_creeps.mp4', '戴蒙释放被他关在恐惧之木法杖中的异界灵魂，在敌阵中造成毁灭性的打击。'),
(26, 26, '掘地穿刺', 'http://www.dota2.com.cn/images/heroes/abiliti', '	沙王钻入地面挖掘隧道前进，穿出地面时伤害并眩晕上方的敌方单位。可用神杖升级。', '', '魔法消耗：110/120/130/140', '冷却时间：11.0/11.0/11.0/11.0', '技能:点目标, 单位目标 \n伤害类型:魔法\n眩晕时间：2.17\n距离：350/450/550/650\n神杖升级距离：700/900/1100/1300', 'http://dota2.dl.wanmei.com/dota2/video/abilities/sand_king_burrowstrike_creeps.mp4', '克里瑟历斯经常钻入地下埋伏，等待伏击敌人。', '沙尘暴', 'http://www.dota2.com.cn/images/heroes/abiliti', '持续施法 - 沙王制造一起可怕的沙尘暴，伤害敌方单位的同时隐匿沙王自身。沙尘暴结束后，沙王会短暂保持隐身状态。', '', '魔法消耗：60/50/40/30', '冷却时间：34/26/18/10', '技能:无目标, 持续施法\n伤害类型:魔法\n隐身续存时间：0.9/1.1/1.3/1.5\n作用范围：525\n持续时间：50\n沙尘暴伤害；40/60/80/100', 'http://dota2.dl.wanmei.com/dota2/video/abilities/sand_king_sand_storm_creeps.mp4', '有人认为克里瑟历斯只是传说中的幻影，因为他的甲壳在闪烁荒原的沙尘中总是若隐若现。', '腐尸毒', 'http://www.dota2.com.cn/images/heroes/abiliti', '沙王的攻击会给敌方单位注入毒液，持续时间结束或中毒单位死亡时发生剧烈爆炸，造成范围伤害和移动速度减缓效果。持续时间结束时造成较低伤害。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n伤害类型:魔法\n爆炸范围：400\n死尸爆炸伤害：90/130/170/220\n毒发爆炸伤害：20/50/80/110\n毒发所需时间：6\n移动速度减缓：-30%\n减速持续时间：3', 'http://dota2.dl.wanmei.com/dota2/video/abilities/sand_king_caustic_finale.mp4', '克里瑟历斯的毒液让受害者变得脆弱并且干涸如干旱的荒地，最后爆炸而死。', '地震', 'http://www.dota2.com.cn/images/heroes/abiliti', '续施法 - 在2秒吟唱后，沙王向地中发送扰动，引起大地剧烈震动。所有范围内的敌人会受到伤害并被减速。每次后续震击都会提高伤害传播半径。', '', '魔法消耗：150/225/300', '冷却时间：120/110/100', '技能:持续施法, 无目标\n伤害类型:魔法\n震击次数：6/8/10\n每波伤害：110/110/110\n移动速度减缓：-30%/-30%/-30%\n攻击速度降低：-30\n减速持续时间：3', 'http://dota2.dl.wanmei.com/dota2/video/abilities/sand_king_epicenter_creeps.mp4', '许多探险家丧生于闪烁荒原的流沙。'),
(27, 27, '奥术诅咒', 'http://www.dota2.com.cn/images/heroes/abiliti', '诅咒目标区域，其中的敌方英雄会持续受到伤害，并且移动速度被减缓。期间受到作用的英雄一旦施放魔法，持续时间就会延长。', '', '魔法消耗：75/95/115/135', '冷却时间：20/18/16/14', '技能:点目标\n伤害类型:魔法\n伤害：14/22/30/38\n作用范围：425\n基础持续时间：6\n惩罚持续时间：4\n移动速度减缓：-9%/-12%/-15%/-18%', '', '无法使用咒语对诺崇来说不是什么问题，但对他的敌人来说，这可是个大问题。', '智慧之刃', 'http://www.dota2.com.cn/images/heroes/abiliti', '沉默术士用他的智慧强化刀刃，造成基于他智力值的额外伤害。可用神杖升级。', '', '魔法消耗：15/15/15/15', '冷却时间：0', '技能:单位目标, 自动施放\n伤害类型:纯粹\n智力值伤害系数：15%/30%/45%/60%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/silencer_glaives_of_wisdom.mp4', '尽管无法使用传统咒语，诺崇的风蚀之寒血统带给他一种诡异的智慧，他把它用在物理战斗上。', '最后遗言', 'http://www.dota2.com.cn/images/heroes/abiliti', '向目标施加魔咒，只要目标施放技能或者魔咒消失。目标就会受到伤害并被沉默。', '', '魔法消耗：115', '冷却时间：30/24/18/12', '技能:单位目标\n伤害类型:魔法\n伤害：150/200/250/300\n魔咒持续时间：4\n沉默持续时间：3/4/5/6', 'http://dota2.dl.wanmei.com/dota2/video/abilities/silencer_last_word_updated.mp4', '诺崇的敌人念出的咒语往往将成为他们的遗言。', '全领域静默', 'http://www.dota2.com.cn/images/heroes/abiliti', '	沉默术士停止一切声音，阻止地图上所有敌方英雄和单位施法。', '', '魔法消耗：250/375/500', '冷却时间：130.0', '技能:无目标\n持续时间：4.0/5.0/6.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/silencer_global_silence.mp4', '随着大地一震，所有的魔法和声音都停止了，诺崇实现了他的预言。'),
(28, 28, '黑暗契约', 'http://www.dota2.com.cn/images/heroes/abiliti', '		短暂延迟后，斯拉克牺牲部分生命力，清除大部分负面状态并对自己和周围敌方单位造成伤害。斯拉克自身只受到造成的50%伤害。驱散类型：强��散', '', '魔法消耗：55/50/45/40', '冷却时间：9.0/8.0/7.0/6.0', '技能:无目标\n伤害类型:魔法\n施法延迟：1.5\n作用范围：325\n伤害：75/150/225/300', 'http://dota2.dl.wanmei.com/dota2/video/abilities/slark_dark_pact.mp4', '鱼人具有使鳍快速重新生长的能力，这样在重伤下也能救回自己的命。', '突袭', 'http://www.dota2.com.cn/images/heroes/abiliti', '斯拉克向前跳跃，抓住第一个碰到的英雄。该单位会受到伤害并被斯拉克束缚，只能在斯拉克着地点附近的有限范围内移动。', '', '魔法消耗：75/75/75/75', '冷却时间：20.0/16.0/12.0/8.0', '技能:无目标\n伤害类型:魔法\n突袭距离：700\n突袭伤害：40/80/120/160\n束缚持续时间：3.5\n束缚作用范围：325', 'http://dota2.dl.wanmei.com/dota2/video/abilities/slark_pounce.mp4', '在暗黑之礁的服刑期间，斯拉克成长为危险的刺客；举止凶残，无所畏惧。', '能量转移', 'http://www.dota2.com.cn/images/heroes/abiliti', '		斯拉克的攻击会偷走敌方英雄的生命能量，每次吸取他们的一点全属性并转化成自身额外的敏捷值。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n敏捷获取：3\n全属性丢失：1\n持续时间：15/30/60/120', 'http://dota2.dl.wanmei.com/dota2/video/abilities/slark_essence_shift.mp4', '对敌人每攻击一次，斯拉克对他们的弱点就多了解一分。', '暗影之舞', 'http://www.dota2.com.cn/images/heroes/abiliti', '		斯拉克将自己藏进暗影之云，变成隐身状态，不会被反隐手段发现。攻击、施法、使用物品都不会使斯拉克显形。该技能还有被动效果，在敌人视野外时移动速度和生命恢复会得到提升。可用神杖升级。', '', '魔法消耗：120/120/120', '冷却时间：60.0', '技能:无目标\n持续时间：4.0\n移动速度提升：30%/35%/40%\n每秒获取生命值：3%/5%/7%\n神杖升级作用范围：325', 'http://dota2.dl.wanmei.com/dota2/video/abilities/slark_shadow_dance.mp4', '秘而不宣的第十三个逃犯是个浑身滑溜的敌人。'),
(29, 29, '赎罪', 'http://www.dota2.com.cn/images/heroes/abiliti', '一个敌方单位移动变慢，受到的攻击和技能伤害增加。', '', '魔法消耗：70', '冷却时间：14.0/13.0/12.0/11.0', '技能:单位目标\n持续时间：8\n移动速度减缓：-18%/-24%/-30%/-36%\n受到伤害加成：18%/24%/30%/36%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/chen_penitence_running.mp4', '尽管陈控制动物的能力还没有强到可以控制敌方英雄，不过还是可以用来考验他们的战斗意志。', '忠诚考验', 'http://www.dota2.com.cn/images/heroes/abiliti', '对一个敌方单位造成随机伤害来考验他的忠诚。对友方单位施放将随机治疗一定血量。对自己施放时总是治疗最大血量。', '', '魔法消耗：60/80/100/120', '冷却时间：16', '技能:单位目标\n伤害类型:纯粹\n最低伤害：50/100/150/200\n最高伤害：100/200/300/400\n最低治疗：25/50/75/100\n最高治疗：50/100/150/200', 'http://dota2.dl.wanmei.com/dota2/video/abilities/chen_test_of_faith.mp4', '教会骑士所掌握的狂热魔法形式，不过大多数其他魔法师都认为没什么用。', '神圣劝化', 'http://www.dota2.com.cn/images/heroes/abiliti', '陈控制住敌方小兵或者中立生物。若被劝化的目标拥有的生命值低于最小生命值，其生命值将会提升到最小生命值。可对友军施放，将其传送回基地。对陈自身施放则陈控制的所有神圣劝化单位都会传送到他身边。可用神杖升级，陈将可以劝化远古生物。可劝化的远古生物数量上限与上帝之手的当前等级相同。', '', '魔法消耗：70/90/110/130', '冷却时间：10', '技能:单位目标\n最多劝化数量：1/2/3/4\n最低生命值：700/800/900/1000\n传送延迟：6.0/5.0/4.0/3.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/chen_holy_persuasion_creep.mp4', '尽管他们可能当不了骑士，陈将野兽们吸收入教会，就像他自己当年被改变信仰一样。', '上帝之手', 'http://www.dota2.com.cn/images/heroes/abiliti', '治疗地图上的所有友军英雄以及陈控制的所有单位。可用神杖升级。', '', '魔法消耗：200/300/400', '冷却时间：160/140/120', '技能:无目标\n治疗量：250/375/500\n神杖升级神圣劝化远古单位数量上限：1/2/3', 'http://dota2.dl.wanmei.com/dota2/video/abilities/chen_hand_of_god.mp4', '利用他的奴隶与他的精神连接，陈给予他们完全的康复和幸福。'),
(30, 30, '炎阳索', 'http://www.dota2.com.cn/images/heroes/abiliti', '灰烬之灵释放出火焰绳索来缠绕住附近的敌人，将他们困于原地并每秒造成一定伤害。', '', '魔法消耗：110', '冷却时间：14.0/12.0/10.0/8.0', '技能:无目标\n伤害类型:魔法\n持续时间：1.0/2.0/2.0/3.0\n作用范围：400\n每秒伤害：80/60/120/100\n总伤害：80/120/240/300\n绳索数量：2', 'http://dota2.dl.wanmei.com/dota2/video/abilities/ember_spirit_searing_chains.mp4', '炘之严训，炽链相伴。', '无影拳', 'http://www.dota2.com.cn/images/heroes/abiliti', '灰烬之灵以燎原之火的速度横冲直撞，攻击目标区域内所有敌人，随后返回所在位置。对英雄造成额外伤害，对非英雄单位造成的伤害较低。', '', '魔法消耗：50', '冷却时间：30.0/22.0/14.0/6.0', '技能:点目标\n伤害类型:物理\n作用范围：250/350/450/550\n对英雄额外伤害：20/40/60/80\n攻击间隔：0.2\n对非英雄伤害降低：-50%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/ember_spirit_sleight_of_fist.mp4', '顷刻之间，鞭策众敌。', '烈火罩', 'http://www.dota2.com.cn/images/heroes/abiliti', '灰烬之灵用火焰之环将自己包裹起来，接下来的魔法伤害将被全部吸收。烈火罩对灰烬之灵周围的敌人造成持续伤害。吸收的伤害超过上限后将失去伤害效果。', '', '魔法消��：80/90/100/110', '冷却时间：35.0', '技能:无目标\n伤害类型:魔法\n持续时间：8.0/12.0/16.0/20.0\n作用范围：400\n魔法伤害吸收：50/200/350/500\n每秒造成伤害：30/40/50/60', 'http://dota2.dl.wanmei.com/dota2/video/abilities/ember_spirit_flame_guard.mp4', '近身之敌，自讨苦吃。', '激活残焰', 'http://www.dota2.com.cn/images/heroes/abiliti', '	选择残焰，灰烬之灵将向其冲去。', '', '魔法消耗：150', '冷却时间：0.0', '技能:点目标\n伤害类型:魔法', 'http://dota2.dl.wanmei.com/dota2/video/abilities/ember_spirit_activate_fire_remnant.mp4', '燎原之火，瞬息将至！'),
(31, 31, '束缚击', 'http://www.dota2.com.cn/images/heroes/abiliti', '将目标束缚在正对其后的一个敌方单位或树上。若目标后面没有其它敌方单位或树木，则眩晕时间减少至0.75秒。', '', '魔法消耗：90/100/110/120', '冷却时间：18/16/14/12', '技能:单位目标\n束缚时间：2.0/2.6/3.2/3.8', 'http://dota2.dl.wanmei.com/dota2/video/abilities/windrunner_shackleshot.mp4', '风行者的诸多弓技中，有一种用密集的绳索来束缚住敌人让其难以逃脱的箭矢。', '强力击', 'http://www.dota2.com.cn/images/heroes/abiliti', '风行者为她的弓蓄力，射出一支强力的箭矢，最长可蓄力1秒，其间可以打断蓄力，蓄力时间越长箭矢伤害越高。这支箭会对穿过的所有敌方单位造成伤害，并破坏树木。每伤害一个单位，箭矢的伤害都会降低20%。', '', '魔法消耗：90/100/110/120', '冷却时间：12/11/10/9', '技能:点目标, 持续施法\n伤害类型:魔法\n强力击伤害：180/260/340/420\n射程：2600', 'http://dota2.dl.wanmei.com/dota2/video/abilities/windrunner_powershot_creeps.mp4', '在早年的训练生涯，莱瑞蕾学会了射出足以破开树木击中目标的强力箭矢。', '风行', 'http://www.dota2.com.cn/images/heroes/abiliti', '升移动速度并闪避一切物理攻击，同时降低周围敌人的移动速度。', '', '魔法消耗：60', '冷却时间：12', '技能:无目标\n移动速度提升：60%\n闪避几率：100%\n敌军减速：-15%/-20%/-25%/-30%\n敌方减速作用范围：325\n持续时间：3/4/5/6', 'http://dota2.dl.wanmei.com/dota2/video/abilities/windrunner_windrun_running.mp4', '莱瑞蕾运用疾风之力抵御来临的攻击。', '集中火力', 'http://www.dota2.com.cn/images/heroes/abiliti', '	风行者受风的引领，攻击敌方单位或建筑的攻击速度增加350，但是攻击伤害降低。不过次级物品效果的附加伤害不会降低。持续20秒。可用神杖升级。', '', '魔法消耗：75/100/125', '冷却时间：70', '技能:单位目标\n攻击速度加成：350\n攻击力降低：-50%/-40%/-30%\n持续时间：20\n神杖升级冷却时间：15.0/15.0/15.0\n神杖升级攻击力降低：-30%/-15%/-0%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/windrunner_focus_fire.mp4', '莱瑞蕾具备狂风般地向敌人轰射出无数箭矢的无双本领——尽管牺牲了不少威力。'),
(32, 32, '肉钩', 'http://www.dota2.com.cn/images/heroes/abiliti', '向一个单位或方向射出血腥的肉钩。勾住第一个遭遇的单位，并将它拖到帕吉身边，如果是敌人的话将造成伤害。可用神杖升级。', '', '魔法消耗：110/120/130/140', '冷却时间：14/13/12/11', '技能:点目标\n伤害类型:纯粹\n距离：1000/1100/1200/1300\n神杖升级冷却时间：4.0\n神杖升级伤害：180/270/360/450', 'http://dota2.dl.wanmei.com/dota2/video/abilities/pudge_meat_hook.mp4', '屠夫的肉钩是噩梦的象征，锋利的倒钩暗示了他嗜血的本性。', '腐烂', 'http://www.dota2.com.cn/images/heroes/abiliti', '能够造成持续伤害并减缓敌人移动速度的毒性云雾——同时对敌军和自身造成伤害。', '', '魔法消耗：0', '冷却时间：0', '技能:无目标\n伤害类型:魔法\n作用范围：250\n移动速度减缓：-30%\n伤害：30/60/90/120', 'http://dota2.dl.wanmei.com/dota2/video/abilities/pudge_rot.mp4', '从屠夫腐烂肿胀的肉体中放出的有毒气体，气味恶心的令人窒息。', '腐肉堆积', 'http://www.dota2.com.cn/images/heroes/abiliti', '		给予帕吉对魔法伤害的抗性，并且帕吉每次杀死一个敌方英雄，或者附近有敌方英雄死亡时，帕吉将获得额外的力量。腐肉堆积在学习之前就可以积累力量，但是学习之后才能获得这部分力量。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n魔法抗性：6%/8%/10%/12%\n力量增加：1/1.5/2/2.5\n距离：450', 'http://dota2.dl.wanmei.com/dota2/video/abilities/pudge_flesh_heap.mp4', '屠夫赋予“肉盾”这个词新的含义。', '肢解', 'http://www.dota2.com.cn/images/heroes/abiliti', '持续施法 - 帕吉撕咬一个敌方单位，使其失去行动能力并受到持续伤害。帕吉将回复与伤害量相等的生命。对英雄持续3秒，对普通单位持续6秒。', '', '魔法消耗：100/130/170', '冷却时间：30/25/20', '技能:单位目标, 持续施法\n伤害类型:魔法\n每秒伤害：60/90/120\n力量值伤害系数：0.3/0.45/0.6', 'http://dota2.dl.wanmei.com/dota2/video/abilities/pudge_dismember.mp4', '“等我干掉这些蠢货以后，就可以把它们做成肉饼了！”'),
(33, 33, '倒影', 'http://www.dota2.com.cn/images/heroes/abiliti', '恐怖利刃映出所有敌方英雄的黑暗倒影对其进行反制，目标在短时间内将被自身倒影攻击，移动速度也会被减缓。倒影为无敌状态。', '', '魔法消耗：50', '冷却时间：22/20/18/16', '技能:无目标\n倒影持续时间：2.5/3.5/4.5/5.5\n倒影继承攻击力：40%/60%/80%/100%\n移动速度减缓：25%\n攻击速度降低：25\n作用范围：900', 'http://dota2.dl.wanmei.com/dota2/patch/terrorblade_reflection.mp4', '荒邪之狱的分形之墙中，恐怖利刃洞悉了古老的寓言：你就是自己最可怕的敌人。现在他也要让别人明白这个道理。', '惑幻', 'http://www.dota2.com.cn/images/heroes/abiliti', '创造一个恐怖利刃的幻象，���以攻击敌人造成伤害。', '', '魔法消耗：70', '冷却时间：16', '技能:无目标\n幻象持续时间：34.0\n幻象攻击力：30%/40%/50%/60%\n幻象承受伤害：400.0%', '', '比面对恐怖利刃更可怕的只有这么种情况：面对成倍的恐怖利刃！', '魔化', 'http://www.dota2.com.cn/images/heroes/abiliti', '恐怖利刃变换形态，化身成可怕的恶���并具备远程攻击能力。任何恐怖利刃的幻象在900范围内也将魔化。', '', '魔法消耗：100', '冷却时间：155.0', '技能:无目标\n持续时间：40/44/48/52\n魔化所需时间：0.35\n基础攻击间隔：1.5\n攻击距离：550\n攻击力加成：20/40/60/80\n基础移动速度减少：25\n魔化光环作用范围：900', '', '暴躁生气，渐起怒意，激变形体。见识一下恐怖利刃最为恐怖的一面吧。', '魂断', 'http://www.dota2.com.cn/images/heroes/abiliti', '隔断恐怖利刃以及目标英雄的灵魂并将双方的当前血量进行互换。交换后双方英雄的生命值必定在一定百分比以上。', '', '魔法消耗：200/100/0', '冷却时间：120.0/80.0/40.0', '技能:单位目标\n隔断后最低生命值：25%', '', '你是不是不想要这条命？恶魔掠夺者偷走的正是你最为珍视的。'),
(34, 34, '感应地雷', 'http://www.dota2.com.cn/images/heroes/abiliti', '埋布隐形的地雷，不会被真实视域检测到，但是有敌方单位在地雷的400生效范围内会显形。敌人在生效范围内停留超过1.6秒会使地雷爆炸。爆炸在爆炸范围内造成全额伤害，对建筑物造成25%伤害。', '', '魔法消耗：110/130/150/170', '冷却时间：12', '技能:点目标\n伤害类型:魔法\n作用范围：400\n伤害：200/400/600/800\n对建筑伤害：25%\n启动延迟：1.75', '', '起重港的噩梦！', '静滞陷阱', 'http://www.dota2.com.cn/images/heroes/abiliti', '埋设一个隐形的陷阱，当有敌方单位靠近时会马上自动触发，造成缠绕。', '', '魔法消耗：80/110/140/160', '冷却时间：20.0/16.0/13.0/10.0', '技能:点目标\n触发陷阱范围：400\n缠绕作用范围：600\n缠绕持续时间：2/3/4/5\n陷阱渐隐时间：2.0', '', '猎手镇的灾难！', '爆破起飞！', 'http://www.dota2.com.cn/images/heroes/abiliti', '	工程师冲到敌人中间，在相遇时引爆炸药，造成大量范围伤害，并沉默敌人。引爆时会对工程师造成最大生命值50%的伤害。', '', '魔法消耗：100/125/150/175', '冷却时间：35', '技能:点目标\n伤害类型:魔法\n作用范围：400\n全额伤害：300/400/500/600\n沉默持续时间：4/5/6/7\n对自身的最大生命值伤害：50%', '', '我们是要去哪？', '集中引爆', 'http://www.dota2.com.cn/images/heroes/abiliti', '直接引爆目标区域内所有遥控炸弹。', '', '魔法消耗：0', '冷却时间：1.0/1.0/1.0', '技能:点目标\n伤害类型:魔法\n作用范围：700', '', '既然能点燃所有引线那干嘛只点一根？'),
(35, 35, '震撼大地', 'http://www.dota2.com.cn/images/heroes/abiliti', '乌尔萨猛击地面带来强烈的冲击，对附近范围内的所有敌方单位造成伤害并减速4秒。', '', '魔法消耗：75/75/75/75', '冷却时间：5', '技能:无目标\n伤害类型:魔法\n作用范围：385\n移动速度减缓：-25%/-35%/-45%/-55%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/ursa_earthshock_creeps.mp4', '雄性熊怪有力的步伐撼动着大地，展示了他们坚定的战士之心。', '超强力量', 'http://www.dota2.com.cn/images/heroes/abiliti', '乌尔萨的战斗技巧提升他接下来几次攻击的攻击速度。', '', '魔法消耗：45/55/65/75', '冷却时间：10.0/10.0/10.0/10.0', '技能:无目标\n攻击次数：3/4/5/6\n攻击速度提升：400/400/400/400\n持续时间：15', 'http://dota2.dl.wanmei.com/dota2/video/abilities/ursa_overpower_sven.mp4', '乌尔萨有着让人难以和他巨大的体型联想到一起的敏捷。', '怒意狂击', 'http://www.dota2.com.cn/images/heroes/abiliti', '乌尔萨的利爪深深地撕裂敌人的伤口，对同一敌人连续攻击将造成更多伤害。如果同一个目标在15秒内不受攻击，将失去额外伤害加成。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n伤害类型:物理\n重置时间：20\n重置时间（ROSHAN）：6\n每次攻击叠加伤害：15/20/25/30', 'http://dota2.dl.wanmei.com/dota2/video/abilities/ursa_fury_swipes.mp4', '在大自然中，很少有受伤的动物能在饥饿的捕食者攻击下幸存。', '激怒', 'http://www.dota2.com.cn/images/heroes/abiliti', '萨进入狂怒状态，怒意狂击的额外伤害将增加数倍，并且承受的伤害减少80%。施放时将移除所受的负面效果。可用神杖升级。', '', '魔法消耗：0/0/0', '冷却时间：50/40/30', '技能:无目标\n怒意狂击伤害倍数：1.5/1.75/2.0\n伤害降低：80%\n持续时间：4.0\n神杖升级冷却时间：30/24/18', 'http://dota2.dl.wanmei.com/dota2/video/abilities/ursa_enrage.mp4', '乌尔萨放纵他的远古之魂，成为战场上最凶残的生物。\n\n驱散类型：强驱散'),
(36, 36, '冰火交加', 'http://www.dota2.com.cn/images/heroes/abiliti', '杰奇洛对面前的敌人先后喷出寒冰和火焰。寒冰吐息减速敌人，火焰吐息对敌人造成持续伤害。', '', '魔法消耗：135/140/155/170', '冷却时间：10.0/10.0/10.0/10.0', '技能:点目标, 单位目标 \n伤害类型:魔法\n前端范围：225\n末端范围：275\n燃烧伤害：20/40/60/80\n移动速度减缓：-28%/-32%/-36%/-40%\n攻击速度降低：-28/-32/-36/-40\n持续时间：5', 'http://dota2.dl.wanmei.com/dota2/video/abilities/jakiro_dual_breath.mp4', '灼霜龙族的各个物种分支个体都拥有极端危险的气息；而将各物种分支的特性混合起来，就简直难以想象。', '冰封路径', 'http://www.dota2.com.cn/images/heroes/abiliti', '在杰奇洛前方制造一条冰封路径，对触及到的敌人造成伤害并眩晕。', '', '魔法消耗：90', '冷却时间：12.0/11.0/10.0/9.0', '技能:点目标\n伤害类型:魔法\n冻结延迟：0.5\n持续时间：1/1.5/2.0/2.5\n作用范围：150\n伤害：50', 'http://dota2.dl.wanmei.com/dota2/video/abilities/jakiro_ice_path_creeps.mp4', '杰奇洛狡猾的右脑使出它的冰封天赋，用骇人的酷寒冻结大地。', '液态火', 'http://www.dota2.com.cn/images/heroes/abiliti', '奇洛的火焰燃烧效果范围内的敌人，并降低他们的攻击速度。', '', '魔法消耗：0', '冷却时间：20/15/10/4', '技能:单位目标, 自动施放\n伤害类型:魔法\n攻击速度降低：-30/-40/-50/-60\n作用范围：300\n每秒燃烧伤害：12/16/20/24', 'http://dota2.dl.wanmei.com/dota2/video/abilities/jakiro_liquid_fire_creeps.mp4', '杰奇洛张开左边的咽喉，让前方生灵涂炭。', '烈焰焚身', 'http://www.dota2.com.cn/images/heroes/abiliti', '杰奇洛释放出烈焰风暴，烈焰风暴作用范围很宽，并持续数秒。烈焰风暴每秒都会对作用范围内的敌人造成伤害。可用神杖升级。', '', '魔法消耗：220/330/440', '冷却时间：60/60/60', '技能:点目标\n伤害类型:魔法\n每秒伤害：100/140/180\n火焰长度：1400\n火焰宽度：260\n持续时间：10\n神杖升级每秒伤害：125/175/225\n神杖升级火焰长度：1800\n神杖升级持续时间：30', 'http://dota2.dl.wanmei.com/dota2/video/abilities/jakiro_macropyre_creeps.mp4', '用冰与火混合而成的极端温度撕裂战场。');
INSERT INTO `hero_skill` (`hid`, `hero_id`, `skill1_title`, `skill1_pic`, `skill1_intro1`, `skill1_intro2`, `skill1_spell`, `skill1_cooling`, `skill1_effect`, `skill1_video`, `skill1_supplement`, `skill2_title`, `skill2_pic`, `skill2_intro1`, `skill21_intro2`, `skill2_spell`, `skill2_cooling`, `skill2_effect`, `skill2_video`, `skill2_supplement`, `skill3_title`, `skill3_pic`, `skill3_intro1`, `skill3_intro2`, `skill3_spell`, `skill3_cooling`, `skill3_effect`, `skill3_video`, `skill3_supplement`, `skill4_title`, `skill4_pic`, `skill4_intro1`, `skill4_intro2`, `skill4_spell`, `skill4_cooling`, `skill4_effect`, `skill4_video`, `skill4_supplement`) VALUES
(37, 37, '风暴之拳', 'http://www.dota2.com.cn/images/heroes/abiliti', '斯温用他充满魔力的手套对敌人造成伤害和眩晕。', '', '魔法消耗：140', '冷却时间：13.0', '技能:单位目标\n伤害类型:魔法\n眩晕时间：1.7/1.8/1.9/2.0\n作用范围：255', '', '流浪剑客从他父亲的学校里取得的精铁护手能对敌人造成致命打击。', '巨力挥舞', 'http://www.dota2.com.cn/images/heroes/abiliti', '斯温以巨力攻击，并对所有附近的敌方单位造成分裂攻击伤害。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n分裂伤害：30%/42%/54%/66%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/sven_great_cleave.mp4', '守夜骑士团仍然在试图从斯温那里取回被偷走的弃誓之刃，一把能在低阶战士中杀出条大路的利剑。', '战吼', 'http://www.dota2.com.cn/images/heroes/abiliti', '的战吼激励着同伴作战，提升他们的护甲和移动速度，持续8秒。', '', '魔法消耗：25/25/25/25', '冷却时间：35/30/25/20', '技能:无目标\n护甲提升：5/10/15/20\n移动速度提升：12%\n作用范围：900\n持续时间：8', 'http://dota2.dl.wanmei.com/dota2/video/abilities/sven_warcry_running.mp4', '吟诵守夜人法典的句子能够强化斯温对其流浪法则的遵从。太有诗意了！', '神之力量', 'http://www.dota2.com.cn/images/heroes/abiliti', '斯温爆发出他流浪剑客的力量���获得25秒的攻击力提升。可用神杖升级。', '', '魔法消耗：100/150/200', '冷却时间：80', '技能:无目标\n攻击力加成：80%/120%/160%\n力量加成：10/20/30\n神杖升级光环范围：900\n神杖升级队友攻击力加成：75%/100%/125%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/sven_god_s_strength.mp4', '凭借能够击碎神圣之盔的力量，流浪剑客在近身肉搏中未尝一败。'),
(38, 38, '严寒烧灼', 'http://www.dota2.com.cn/images/heroes/abiliti', '寒冬飞龙乘着一股极地寒风扶摇而上，移动将无视地形，每次攻击都将呼出逼人的寒气。高飞时，她的攻击射程更远，攻击弹道速度也更快，被攻击的敌人在寒意作用下，移动速度也被减缓，同时每秒损失7.5 8 8.5 9%的当前生命值。在夜晚的寒风中，她的视野还会被加强，在技能期间夜晚将额外获得400的视野范围。可用神杖升级。', '', '魔法消耗：120/110/100/90', '冷却时间：50.0/40.0/30.0/20.0', '技能:无目标\n伤害类型:魔法\n飞行持续时间：8.0\n攻击射程加成：275/375/475/575\n生命值烧灼百分比：7.5%/8%/8.5%/9%\n烧灼持续时间：5.0\n移动速度减缓：22%/28%/34%/40%\n夜晚视野范围加成：400\n神杖升级每秒耗魔：40', '', '在傲洛斯体内，其他龙点燃龙炎的器官熔炼的是难以想象的寒冷。从她咽喉的深处呼出的气会将敌人送入烧灼的痛苦中。', '碎裂冲击', 'http://www.dota2.com.cn/images/heroes/abiliti', '向目标单位发射一团易碎的冰球。冰球一击中目标就会碎裂，而目标单位将不会受到任何效果，但是附近500范围内敌人都将因碎片的冲击受到伤害，并且移动速度减缓25%。', '', '魔法消耗：120/130/140/150', '冷却时间：7', '技能:单位目标\n伤害类型:魔法\n碎裂作用范围：500\n移动速度减缓：25%\n减速持续时间：4.0', '', '这些冰渣由她冰冻的咽喉中特殊的囊泡慢慢生成，寒冬飞龙正借此轰击她的敌人。', '极寒之拥', 'http://www.dota2.com.cn/images/heroes/abiliti', '将队友封入一个冰茧中，使其被冻在原地并恢复生命值，恢复数值为基础数值加上最大生命值的一定比例。冰茧将阻隔一切物理伤害。', '', '魔法消耗：75/75/75/75', '冷却时间：24/21/18/15', '技能:单位目标\n持续时间：4.0\n基础生命恢复：15\n最大生命值恢复百分比：3.0%/4.0%/5.0%/6.0%', '', '寒冬之心中有着寒冷而治愈的拥抱。坚冰减缓了血液的流动，使治疗的魔力发挥得更加彻底。', '寒冬诅咒', 'http://www.dota2.com.cn/images/heroes/abiliti', '寒冬飞龙将一个敌方目标冻在原地，附近的其他敌人将受到癫狂诅咒，对冻住的队友进行攻击，而且攻击速度得到提升。冻住的目标和被诅咒攻击队友的敌人不会受到任何来自敌方的伤害。', '', '魔法消耗：250', '冷却时间：80', '技能:单位目标\n诅咒作用范围：500\n诅咒所受伤害降低：100%\n诅咒攻击速度：85\n诅咒持续时间：3.25/4/4.75', '', '这个诅咒在书龙咒语中最为古老，也是那句老话的真相：有时候我的敌人的敌人还是我的敌人。'),
(39, 39, '野性之斧', 'http://www.dota2.com.cn/images/heroes/abiliti', '兽王投出他的斧头然后召回它们，切开飞过的敌人和树木。每把飞斧只对同一个敌人攻击一次，并且使受到来自兽王和其单位的伤害增加。', '', '魔法消耗：80', '冷却时间：8', '技能:点目标\n伤害类型:物理\n距离：1500\n每把飞斧伤害：30/60/90/120\n每把加深伤害：6/8/10/12', 'http://dota2.dl.wanmei.com/dota2/video/abilities/beastmaster_wild_axes_creeps.mp4', '在独自学习野外生存时，兽王也掌握了飞斧的运用技巧，使他能够熟练的砍下树木，或者敌人的脑袋。', '野性呼唤', 'http://www.dota2.com.cn/images/heroes/abiliti', '兽王召唤野兽前来助阵。1级：1级豪猪2级：2级豪猪 3级：3级豪猪 + 战鹰4级：4级豪猪 + 战鹰 + 随机中立生物', '', '魔法消耗：50/60/70/80', '冷却时间：60', '技能:无目标\n豪猪生命值：200/300/400/500\n豪猪攻击力：16/24/32/40\n豪猪减速：10%/20%/30%/40%\n豪猪毒素持续时间：3.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/beastmaster_call_of_the_wild.mp4', '度过了与异兽互惠互助的孩童时期，兽王学会了如何随时召唤野兽。', '野性之心', 'http://www.dota2.com.cn/images/heroes/abiliti', '唤起友军内心的狂怒，提高他们的攻击速度。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n作用范围：900\n攻击速度提升：15/25/35/45', 'http://dota2.dl.wanmei.com/dota2/video/abilities/beastmaster_inner_beast.mp4', '兽王的激起野兽先天力量的能力，在他劈打斯洛美之王时被目击到。', '原始咆哮', 'http://www.dota2.com.cn/images/heroes/abiliti', '兽王发出震耳欲聋的咆哮，使目标敌方单位受到伤害并眩晕，同时在兽王和他的猎物之间清出一条通道。通道上的所有单位都被震开，也受到伤害并被降低移动和攻击速度。另外，兽王和他的单位获得30%移动速度提升，持续3秒。可用神杖升级。', '', '魔法消耗：150/175/200', '冷却时间：80.0/75.0/70.0', '技能:单位目标\n伤害类型:魔法\n眩晕时间：3.0/3.5/4.0\n伤害：150/225/300\n咆哮宽度：300\n移动速度减缓：-50%/-50%/-50%\n攻击速度降低：-50/-50/-50\n减速持续时间：2.0/3.0/4.0\n神杖升级施法距离：950/950/950\n神杖升级冷却时间：45.0/45.0/45.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/beastmaster_primal_roar.mp4', '兽王学会将他的原始本能凝聚为猛兽般的怒吼，以破坏敌人的队列。'),
(40, 40, '奥术天球', 'http://www.dota2.com.cn/images/heroes/abiliti', '在殁境神蚀者的攻击中附带基于他当前魔法值的额外纯粹伤害。攻击敌方英雄时每次攻击都可以窃取1 2 3 4点智力，持续80秒。奥术天球对召唤单位和镜像造成额外伤害。', '', '魔法消耗：100/120/140/160', '冷却时间：0', '技能:单位目标, 自动施放\n伤害类型:纯粹\n伤害系数：6%/7%/8%/9%\n对幻象伤害：100/200/300/400\n智力窃取：1/2/3/4\n窃取持续时间：80', 'http://dota2.dl.wanmei.com/dota2/video/abilities/outworld_destroyer_arcane_orb.mp4', '先兆者的殁境学识使他可以洞悉所有精神能量的涨落，并将其融入自身。', '星体禁锢', 'http://www.dota2.com.cn/images/heroes/abiliti', '将一个目标友方或敌方英雄禁锢在星体中。被禁锢的英雄处于无敌和无法行动状态。禁锢结束时，对目标周围400范围内敌人造成100 175 250 325点伤害。可用神杖升级。', '', '魔法消耗：120/140/160/180', '冷却时间：22/18/14/10', '技能:单位目标\n伤害类型:魔法\n禁锢持续时间：4.0\n作用范围：400\n伤害：100/175/250/325\n施法距离：225/300/375/450\n神杖升级最大能量点数：2\n神杖升级充能时间：12', 'http://dota2.dl.wanmei.com/dota2/video/abilities/outworld_destroyer_astral_imprisonment_sven.mp4', '被关在现世和殁境之间的空间中，受害者认识到自己如孩童般的学识和血肉之躯。', '精气光环', 'http://www.dota2.com.cn/images/heroes/abiliti', '当附近友方英雄或殁境神蚀者自己使用技能时，有一定概率回复自身魔法上限一定百分比的魔法值。同时被动增加殁境神蚀者的魔法上限。一些没有冷却时间的技能和切换型的技能不能触发精气光环。', '', '魔法消耗：0', '冷却时间：0', '技能:被动, 光环\n作用范围：900\n魔法上限加成：125/200/275/350\n恢复最大魔法值百分比：10%/15%/20%/25%\n回复概率：40%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/outworld_destroyer_essence_aura.mp4', '殁境的水晶产生出奥术能量，先兆者将其引导至凡人的世界。', '神智之蚀', 'http://www.dota2.com.cn/images/heroes/abiliti', '释放出一道神智冲击波，受作用英雄将损失最大魔法值的40%，并且还将受到伤害，伤害数值取决于英雄与殁境神蚀者的智力之差。如果有敌方英雄的智力等于或高于殁境神蚀者，那神智之蚀不会对其造成伤害。神智之蚀可以影响星体禁锢中的单位。', '', '魔法消耗：175/250/325', '冷却时间：160', '技能:点目标\n伤害类型:魔法\n智力差值的伤害系数：8/9/10\n作用范围：375/475/575\n施法距离：700', 'http://dota2.dl.wanmei.com/dota2/video/abilities/outworld_destroyer_sanitys_eclipse.mp4', '当一块殁境的水晶破裂之时，灾难性的能量被释放出来，甚至在其他的空间也能感受到这股能量的回响。'),
(41, 41, '地之束缚', 'http://www.dota2.com.cn/images/heroes/abiliti', '		向目标地点扔出一张网，困住所有敌方单位。地之束缚能阻止隐身、闪烁。', '', '魔法消耗：100', '冷却时间：20/16/12/8', '技能:点目标\n持续时间：2.0\n作用范围：220\n施法距离：500/750/1000/1250', 'http://dota2.dl.wanmei.com/dota2/video/abilities/meepo_earthbind_running.mp4', '在裂影荒墟抓住晚饭可是件体力活。', '忽悠', 'http://www.dota2.com.cn/images/heroes/abiliti', '通过从大地中汲取神秘的能量，一个米波可以在施法1.5秒后传送至另一个米波或自身所在之处，在离开和到达的区域都造成伤害。', '', '魔法消耗：80', '冷却时间：12/10/8/6', '技能:点目标\n伤害类型:魔法\n作用范围：375\n忽悠伤害：80/100/120/140', 'http://dota2.dl.wanmei.com/dota2/video/abilities/meepo_poof.mp4', '有时候打碎一块影墟水晶可以作为自己摆脱陷阱的方法。或是另外一个自己。', '地之突袭', 'http://www.dota2.com.cn/images/heroes/abiliti', '		米波强化他的武器，对敌人造成每秒伤害，同时降低受攻击单位的移动速度。多个米波的地之突袭可以叠加。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n移速减缓：-5%/-10%/-15%/-20%\n持续时间：2.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/meepo_geostrike_running.mp4', '生存的最佳法则是背包不重，工具不多，但是用途多样。', '分则能成', 'http://www.dota2.com.cn/images/heroes/abiliti', '		米波召唤一个不完美的半自主性自身复制体，可以像本体一样获得金钱和经验，并拥有本体的经验、属性和技能。但是，克隆只能使用本体装备的鞋类物品。任何一个克隆死亡都会导致所有米波全体死亡。可用神杖升级。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n克隆数量：1/2/3', 'http://dota2.dl.wanmei.com/dota2/video/abilities/meepo_divided_we_stand.mp4', '我是不是在哪见过你？'),
(42, 42, '毒性攻击', 'http://www.dota2.com.cn/images/heroes/abiliti', '增强冥界亚龙的毒液，使它的普通攻击降低目标的攻击和移动速度，并根据目标损失的血量造成持续伤害。', '', '魔法消耗：40/35/30/25', '冷却时间：6.0/4.0/2.0/0.0', '技能:单位目标, 自动施放\n伤害类型:魔法\n持续时间：3\n伤害基于掉血百分比：0.25/0.5/0.75/1.0\n移动速度减缓：-25%/-30%/-35%/-40%\n攻击速度降低：-25/-30/-35/-40', 'http://dota2.dl.wanmei.com/dota2/video/abilities/viper_poison_attack.mp4', '冥界亚龙天生带有剧毒的呼吸能够迅速地抽干敌人的生命活力。', '幽冥剧毒', 'http://www.dota2.com.cn/images/heroes/abiliti', '冥界亚龙向目标区域施放幽冥剧毒。对范围内敌人造成持续伤害，降低魔法抗性并且禁用他们的被动技能。', '', '魔法消耗：75', '冷却时间：5.0', '技能:点目标\n伤害类型:魔法\n每秒伤害：20/30/40/50\n作用范围：300\n魔法抗性降低：-10/-15/-20/-25\n持续时间：8', 'http://dota2.dl.wanmei.com/dota2/video/abilities/viper_nethertoxin.mp4', '三途川的剧毒让小伤也能致死，而疲乏可以送命。', '腐蚀皮肤', 'http://www.dota2.com.cn/images/heroes/abiliti', '冥界亚龙分泌出感染性的毒素，伤害并减速1400范围内任何伤害它的敌人。这种酸性分泌物还能提高蝮蛇的魔法抗性。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n伤害类型:魔法\n持续时间：4.0\n攻击速度降低：8/16/24/32\n魔法抗性提升：10%/15%/20%/25%\n每秒伤害：8/16/24/32\n作用范围上限：1400', 'http://dota2.dl.wanmei.com/dota2/video/abilities/viper_corrosive_skin.mp4', '对那些攻击冥界亚龙的人来说，刀刃一接触到它的皮肤就被腐蚀是再正常不过的。', '蝮蛇突袭', 'http://www.dota2.com.cn/images/heroes/abiliti', '降低目标敌方单位的移动和攻击速度，并造成持续毒性伤害。移动速度会在毒性的持续时间内逐渐恢复。可用神杖升级。', '', '魔法消耗：125/175/250', '冷却时间：50/40/30', '技能:单位目标\n伤害类型:魔法\n持续时间：5\n每秒伤害：60/100/145\n移动速度减缓：-40%/-60%/-80%\n攻击速度降低：-40/-60/-80\n神杖升级魔法消耗：125/125/125\n神杖升级冷却时间：10\n神杖升级施法距离：900', 'http://dota2.dl.wanmei.com/dota2/video/abilities/viper_viper_strike.mp4', '曾经用于屠杀它那残酷主人的招数，冥界亚龙毒素中最强大的一种，用来折磨那些敢于激怒它的人来说再好不过。'),
(43, 43, '群星风暴', 'http://www.dota2.com.cn/images/heroes/abiliti', '召唤一波流星砸向附近的敌方单位。425范围内最近的敌方单位将会再受到一次75%伤害的冲击。可用神杖升级。', '', '魔法消耗：100/120/140/160', '冷却时间：12.0/12.0/12.0/12.0', '技能:无目标\n伤害类型:魔法\n作用范围：650\n神杖升级触发间隔：10.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/mirana_starstorm_.mp4', '月之女神打破月亮的一部分地表，让她的公主在需要之时获得力量。', '月神之箭', 'http://www.dota2.com.cn/images/heroes/abiliti', '射出一支绝对精准的箭矢，对第一个击中的敌人造成伤害并眩晕目标。目标距离越远，眩晕时间越长，最短0.01秒，最长可达5.0秒。根据箭矢飞行的距离还将对目标额外造成最多140点伤害。若击中的是非远古的普通单位，将直接秒杀。', '', '魔法消耗：100/100/100/100', '冷却时间：17.0', '技能:点目标\n伤害类型:魔法\n射程：3000\n最短眩晕时间：0.01\n最长眩晕时间：5.0\n最大额外伤害：140', 'http://dota2.dl.wanmei.com/dota2/video/abilities/mirana_sacred_arrow.mp4', '明月的能量让月之公主的箭矢变得愈发致命。', '跳跃', 'http://www.dota2.com.cn/images/heroes/abiliti', '娜的坐骑向前跳跃加入战斗，发出一声凶狠的咆哮鼓舞它的主人，提升攻击和移动速度。速度加成持续2.0秒。', '', '魔法消耗：40', '冷却时间：0', '技能:无目标\n距离：550\n移动速度增加：8%/16%/24%/32%\n攻击速度提升：25/50/75/100\n最大能量点数：3\n充能时间：60/50/40/30', 'http://dota2.dl.wanmei.com/dota2/video/abilities/mirana_leap.mp4', '在战斗最激烈的时候，没人会注意不到米拉娜标志性的白色野兽。', '月之暗面', 'http://www.dota2.com.cn/images/heroes/abiliti', '让米拉娜和所有己方英雄进入隐身状态。只要还在月光阴影的持续时间内，即使隐身被打破也会在短时间内重新淡入隐身。', '', '魔法消耗：75', '冷却时间：140.0/120.0/100.0', '技能:无目标\n淡入延迟：2.5/2.0/1.5\n持续时间：15.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/mirana_moonlight_shadow.mp4', '作为赛莉蒙妮的代言人，米拉娜能将月蚀之暗投向大地，将她和她的友军隐藏在阴影中。'),
(44, 44, '幽冥爆轰', 'http://www.dota2.com.cn/images/heroes/abiliti', '		一个爆炸性脉冲，对敌方单位造成伤害。对建筑物造成半额伤害。', '', '魔���消耗：85/105/125/145', '冷却时间：5', '技能:点目标\n伤害类型:魔法\n爆轰延迟：0.9/0.9/0.9/0.9\n作用范围：400/400/400/400\n爆轰伤害：100/175/250/325', 'http://dota2.dl.wanmei.com/dota2/video/abilities/pugna_nether_blast_creeps.mp4', '湮灭术中有一招是来自三途川的碧绿轰击。', '衰老', 'http://www.dota2.com.cn/images/heroes/abiliti', '一个强大的驱逐咒语，能降低一个单位的速度并使其无法攻击/受到攻击。受影响的单位承受额外魔法伤害。', '', '魔法消耗：60', '冷却时间：15.0/12.0/9.0/6.0', '技能:单位目标\n魔法伤害加深（对队友）：-25%\n魔法伤害加深：-30%/-40%/-50%/-60%\n敌方移动速度减缓：-30%/-40%/-50%/-60%\n持续时间：3.5', 'http://dota2.dl.wanmei.com/dota2/video/abilities/pugna_decrepify_sven.mp4', '作为童年时期遗留下来的癖好，现在帕格纳精通于把人放逐到幽冥之境，而不管那人是善还是恶，或者仅仅是他的一时兴起。', '幽冥守卫', 'http://www.dota2.com.cn/images/heroes/abiliti', '		帕格纳在目标地点放置一个幽冥守卫。守卫将降低附近敌方英雄的魔法恢复速率，对任何施法的敌方英雄发射魔力闪光。幽冥守卫造成的伤害与施法消耗的魔法值成正比。', '', '魔法消耗：80/80/80/80', '冷却时间：35.0/35.0/35.0/35.0', '技能:点目标\n伤害类型:魔法\n守卫攻击距离：1600\n每点魔法造成伤害：1.0/1.25/1.50/1.75\n魔法流失速率：-0.25/-0.5/-0.75/-1\n摧毁所需攻击次数：4/4/4/4\n守卫持续时间：30', 'http://dota2.dl.wanmei.com/dota2/video/abilities/pugna_nether_ward.mp4', '还在喇嘛寺里时，帕格纳就学会了操控富有幽冥魔力的守卫来支配他的同学。', '生命汲取', 'http://www.dota2.com.cn/images/heroes/abiliti', '		持续施法 - 使用生命汲取时，帕格纳吸取目标敌方单位的生命值，并获得其视野。如果生命值已满，而且目标是名英雄，那将开始回复魔法值。持续10秒。向队友施放可以将自己的生命值转移给队友。可用神杖升级。', '', '魔法消耗：125/175/225', '冷却时间：22.0/22.0/22.0', '技能:单位目标, 持续施法\n伤害类型:魔法\n每秒汲取生命：150/200/250\n施法距离：700\n最大持续时间：10\n神杖升级每秒汲取生命：180/240/300', 'http://dota2.dl.wanmei.com/dota2/video/abilities/pugna_life_drain.mp4', '帕格纳确实已经变得非常强大了，甚至比湮灭术前任上师还要强大。'),
(45, 45, '剧毒之触', 'http://www.dota2.com.cn/images/heroes/abiliti', '		施放一道锥形的剧毒魔法，可以打击多个敌方单位。造成持续伤害和减速。每次目标受到攻击，负面效果将刷新持续时间。', '', '魔法消耗：80', '冷却时间：35/30/25/20', '技能:单位目标\n伤害类型:物理\n目标数：4/5/6/7\n每秒伤害：10/20/30/40\n减速：-14%/-16%/-18%/-20%\n持续时间：4/5/6/7\n施法距离：600/700/800/900', 'http://dota2.dl.wanmei.com/dota2/video/abilities/dazzle_poison_touch.mp4', '少数进攻性的德尊仪式之一，麻痹魔法经常显示出它的有用之处。', '薄葬', 'http://www.dota2.com.cn/images/heroes/abiliti', '将薄葬施放于一名友军，使他在持续时间内无论受到多大伤害都不会死亡。可用神杖升级。', '', '魔法消耗：150', '冷却时间：60/45/30/15', '技能:单位目标\n持续时间：5/5/5/5\n范围：550/700/850/1000\n神杖升级作用范围：450', 'http://dota2.dl.wanmei.com/dota2/video/abilities/dazzle_shallow_grave.mp4', '只有经验老道的暗影侍僧才能正确做出免死之仪式。', '暗影波', 'http://www.dota2.com.cn/images/heroes/abiliti', '	放出一道能量弧，可以瞬间跳跃至目标附近的队友，治疗的同时还将对附近的敌人造成伤害。施放暗影波时戴泽必定会享受到治疗效果。', '', '魔法消耗：90/100/110/120', '冷却时间：12/10/8/6', '技能:单位目标\n伤害类型:物理\n能量弧跳跃范围：475\n伤害范围：185\n治疗目标数上限：4/5/6/7\n伤害：80/100/120/140', 'http://dota2.dl.wanmei.com/dota2/video/abilities/dazzle_shadow_wave.mp4', '虽然对暗影牧师来说，暗影波只是很简单也很日常的仪式，不过它确实是取胜的关键所在。', '编织', 'http://www.dota2.com.cn/images/heroes/abiliti', '在目标区域内的所有英雄身上施加一个效果，随着时间逐渐提升友方英雄的护甲，降低敌方英雄的护甲。', '', '魔法消耗：100/100/100', '冷却时间：40/40/40', '技能:点目标\n作用范围：575/575/575\n每秒护甲变化：0.75/1/1.25\n持续时间：24.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/dazzle_shadow_wave.mp4', '戴泽在虚无之境的以太之旅让他能将光与暗的力量融在一起，创造出有两种力量的魔力波动。'),
(46, 46, '扫射', 'http://www.dota2.com.cn/images/heroes/abiliti', '克兹以密集的火力攻击。在短时间内极大提高攻击速度，并且克林克兹可以自动躲避最多3个攻击和技能弹道。', '', '魔法消耗：90/90/90/90', '冷却时间：45/35/25/15', '技能:无目标\n持续时间：3.0\n攻击速度提升：80/140/200/260', 'http://dota2.dl.wanmei.com/dota2/video/abilities/clinkz_strafe.mp4', '其他人很难分辨骷髅弓箭手身边缭绕的劲风到底是来自他心中的火焰还是那让人眼花缭乱的射箭速度。', '灼热之箭', 'http://www.dota2.com.cn/images/heroes/abiliti', '让克林克兹的箭矢带有火焰，造成更多伤害。', '', '魔法消耗：10', '冷却时间：0.0/0.0/0.0/0.0', '技能:单位目标, 自动施放\n伤害类型:物理\n额外伤害：30/40/50/60', 'http://dota2.dl.wanmei.com/dota2/video/abilities/clinkz_searing_arrows.mp4', '克林克兹用他的灼热精华点燃弓箭，造成毁灭性打击。', '骨隐步', 'http://www.dota2.com.cn/images/heroes/abiliti', '克林克兹能在隐形状态下移动，攻击或使用技能时现形。', '', '魔法消耗：75/75/75/75', '冷却时间：20/19/18/17', '技能:无目标\n持续时间：20.0/25.0/30.0/35.0\n移动速度提升：15%/25%/35%/45%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/clinkz_skeleton_walk.mp4', '随着火焰的爆裂和烟雾的升起，骷髅弓箭手的身形遁于无形。', '死亡契约', 'http://www.dota2.com.cn/images/heroes/abiliti', '克林克兹消化掉一个友方或敌方的普通单位，生命上限及攻击力增加，数值为目标当前生命值的一定百分比。', '', '魔法消耗：100/100/100', '冷却时间：85', '技能:单位目标\n持续时间：65\n生命提升：40%/60%/80%\n攻击力提升：4.0%/6.0%/8.0%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/clinkz_death_pact_b.mp4', '萨瑟雷克斯的死亡契约已经成了克林克兹的一部分，他通过杀死那些低等生物来使自己的枯骨获得新生。'),
(47, 47, '崩裂禁锢', 'http://www.dota2.com.cn/images/heroes/abiliti', '将目标单位从战场上放逐，在持续时间内将其移除。回归时创造2个该单位的幻象，受暗影恶魔控制。', '', '魔法消耗：120/120/120/120', '冷却时间：27.0/24.0/21.0/18.0', '技能:单位目标\n禁锢持续时间：2.5/2.5/2.5/2.5\n幻象持续时间：8/10/12/14\n幻象继承攻击力：30.0%/45.0%/60.0%/75.0%\n幻象承受伤害：300%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/shadow_demon_disruption_b.mp4', '欺骗的痛苦不是在其发生之时，而是在其被揭露之时。', '灵魂猎手', 'http://www.dota2.com.cn/images/heroes/abiliti', '对区域内的随机一个敌人施加伤害加深效果。处于崩裂禁锢中的单位仍然可以被灵魂猎手影响。如果在灵魂猎手作用下阵亡，该英雄会产生幻象，受你的控制，直到敌人复活。', '', '魔法消耗：50/60/70/80', '冷却时间：13/12/11/10', '技能:点目标\n伤害类型:纯粹\n额外伤害：20%/30%/40%/50%\n作用范围：450/450/450/450\n持续时间：12.0/12.0/12.0/12.0\n幻象攻击力：30%/45%/60%/75%\n幻象承受伤害：200%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/shadow_demon_soul_catcher.mp4', '对暗影恶魔腐蚀的抵抗通常都是徒劳的。', '暗影剧毒', 'http://www.dota2.com.cn/images/heroes/abiliti', '在一条直线上造成伤害，并以毒咒折磨敌方单位。根据目标身上的叠加层数，毒咒造成1/2/4/8/16倍的叠加伤害，至多5层。更多层的叠加每层造成50点伤害。这部分延缓的伤害在暗影毒的持续时间结束后生效，或者你可以使用附属技能释放立刻造成伤害。', '', '魔法消耗：50', '冷却时间：2.5', '技能:点目标\n伤害类型:魔法\n叠加伤害：20/35/50/65\n伤害加倍最多层数：5\n作用范围：200\n持续时间：10.0/10.0/10.0/10.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/shadow_demon_shadow_poison.mp4', '暗影恶魔不断增长的影响能够玷污最勇敢最纯洁的英雄。', '释放暗影毒', 'http://www.dota2.com.cn/images/heroes/abiliti', '	释放毒咒对所有受影响的单位造成伤害。崩裂禁锢中的单位依然可以受到暗影毒的影响。', '', '魔法消耗：0', '冷却时间：1.0', '技能:无目标', 'http://dota2.dl.wanmei.com/dota2/video/abilities/shadow_demon_shadow_poison_release.mp4', ''),
(48, 48, '马蹄践踏', 'http://www.dota2.com.cn/images/heroes/abiliti', '	猛踏地面，眩晕并伤害身边的敌方单位。', '', '魔法消耗：130', '冷却时间：13.0/13.0/13.0/13.0', '技能:无目标\n伤害类型:魔法\n范围：315\n眩晕持续时间：2.0/2.25/2.5/2.75\n践踏伤害：100/150/200/250', 'http://dota2.dl.wanmei.com/dota2/video/abilities/centaur_warrunner_hoof_stomp.mp4', '当战行者健壮的马蹄碰到了土壤，大地的震颤各处都能感受到。', '双刃剑', 'http://www.dota2.com.cn/images/heroes/abiliti', '半人马战行者以猛烈的力量进行近战攻击，对目标周围单位和自身造成伤害。此技能无法用于自杀。', '', '魔法消耗：0/0/0/0', '冷却时间：5.0', '技能:单位目标\n伤害类型:魔法\n伤害：175/250/325/400', 'http://dota2.dl.wanmei.com/dota2/video/abilities/centaur_warrunner_double_edge.mp4', '在激烈的战斗中，布拉德瓦登凶猛的撞击有时候会对自己造成伤害。', '反击', 'http://www.dota2.com.cn/images/heroes/abiliti', '人马战行者向攻击他的单位发出反击，伤害基于半人马战行者的力量值。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n伤害类型:物理\n伤害：16/18/20/22\n力量加成伤害：30%/45%/60%/75%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/centaur_warrunner_return.mp4', '布拉德瓦登无需回避对手的攻击；这由他那盔甲般的马皮负责。', '奔袭冲撞', 'http://www.dota2.com.cn/images/heroes/abiliti', '	半人马战行者带领所有队友向胜利冲锋，所有友方英雄达到极限移动速度，并使踩到的敌人停滞。每个敌人只会受到一次踩踏作用，并受到基于半人马战行者力量值的伤害。可用神杖升级。', '', '魔法消耗：100', '冷却时间：90.0/75.0/60.0', '技能:无目标\n奔袭冲撞持续时间：4.0\n力量值伤害系数：1.0/2.0/3.0\n停滞持续时间：1.8\n踩踏作用范围：105\n神杖升级伤害减少：40%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/centaur_warrunner_stampede.mp4', '欧梅克斯的巨大腰带，彰显着布拉德瓦登是同族中最伟大的战士，激励着他的格斗士同伴在野蛮的战斗中跟随他。'),
(49, 49, '虚空', 'http://www.dota2.com.cn/images/heroes/abiliti', '一个伤害性的虚空，对一个敌方单位造成减速及伤害。虚空可以造成一个短暂眩晕，用于打断持续施法。减速效果在夜晚持续时间更长。', '', '魔法消耗：80/90/100/110', '冷却时间：8/8/8/8', '技能:单位目标\n伤害类型:魔法\n白天持续时间：1.25\n夜晚持续时间：2.5/3/3.5/4\n移动速度减缓：-50%/-50%/-50%/-50%\n攻击速度降低：-50/-50/-50/-50', 'http://dota2.dl.wanmei.com/dota2/video/abilities/night_stalker_void_running.mp4', '巴拉那制造一个无限之夜的漩涡，将敌人猛烈地撕扯进永恒的黑暗。', '伤残恐惧', 'http://www.dota2.com.cn/images/heroes/abiliti', '暗夜魔王恐吓目标敌方英雄，使目标的攻击有一定概率不能命中并被沉默。效果在夜晚持续更久。', '', '魔法消耗：50', '冷却时间：12/12/12/12', '技能:单位目标\n白天持续时间：3.0/3.0/3.0/3.0\n夜晚持续时间：5.0/6.0/7.0/8.0\n白天丢失概率：10%/10%/10%/10%\n夜晚丢失概率：50%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/night_stalker_crippling_fear.mp4', '巴拉那在那些挡在他面前的卑微灵魂的头脑中植入扭曲深渊的幻象。', '暗夜猎影', 'http://www.dota2.com.cn/images/heroes/abiliti', '暗夜魔王在夜晚如鱼得水，攻击和移动都变得迅速。可以在夜晚开启，使暗夜魔王获得飞行状态，持续2秒。', '', '魔法消耗：80', '冷却时间：30/26/22/18', '技能:被动\n移动速度提升：20%/25%/30%/35%\n攻击速度提升：45/60/75/90', '', '巴拉那的狩猎技术随着夜晚降临大幅精进。', '黑暗时间', 'http://www.dota2.com.cn/images/heroes/abiliti', '暗夜魔王遮住太阳，让夜晚立刻降临，使他的力量可以得到最大程度的发挥。黑暗时间施放后敌方英雄，非英雄单位，守卫和建筑物的视野范围均下降至675。可用神杖升级。', '', '魔法消耗：0/0/0', '冷却时间：160/120/80', '技能:无目标\n持续时间：40.0\n敌方视野范围：675', 'http://dota2.dl.wanmei.com/dota2/video/abilities/night_stalker_darkness.mp4', '最强大的战士都变得害怕黑暗，真是个令人感到羞耻的场景。'),
(50, 50, '火焰爆轰', 'http://www.dota2.com.cn/images/heroes/abiliti', '		以一波火焰轰击一个敌方单位，造成伤害并使目标眩晕。', '', '魔法消耗：75/85/95/105', '冷却时间：12', '技能:单位目标\n伤害类型:魔法\n眩晕时间：1.5\n火焰爆轰伤害：55/110/165/220', 'http://dota2.dl.wanmei.com/dota2/video/abilities/ogre_magi_fireblast.mp4', '食人魔魔法师很容易就能被逗乐，玩火就能玩上几个小时。', '引燃', 'http://www.dota2.com.cn/images/heroes/abiliti', '使目标浸透在挥发性化学物质中，导致其瞬间被火焰吞噬。目标处在极度痛苦之中，受到伤害并且移动缓慢。', '', '魔法消耗：90', '冷却时间：15', '技能:单位目标\n伤害类型:魔法\n持续时间：5/6/7/8\n燃烧伤害：26/34/42/50\n移动速度减缓：-20%/-22%/-24%/-26%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/ogre_magi_ignite_running.mp4', '准备好！', '嗜血术', 'http://www.dota2.com.cn/images/heroes/abiliti', '	激起一个友方单位的狂暴，增加其移动和攻击速度。可以对防御塔施放。', '', '魔法消耗：65', '冷却时间：20', '技能:单位目标, 自动施放\n额外移动速度：10%/12%/14%/16%\n额外攻击速度：30/40/50/60\n持续时间：30', 'http://dota2.dl.wanmei.com/dota2/video/abilities/ogre_magi_bloodlust_sven.mp4', '“跑来跑去可没有打人爽...太无聊了。”', '未精通的火焰爆轰', 'http://www.dota2.com.cn/images/heroes/abiliti', '						以一波火焰轰击一个敌方单位，造成伤害并使目标眩晕。魔法消耗为食人魔魔法师当前魔法的60%。', '', '魔法消耗：400', '冷却时间：6', '技能:单位目标\n伤害类型:魔法\n眩晕时间：1.5\n火焰爆轰伤害：275', 'http://dota2.dl.wanmei.com/dota2/video/abilities/ogre_magi_unrefined_blast_blue.mp4', '食人魔魔法师关于“谁先施法”的自我争论最后用同时施法解决了。'),
(51, 51, '震荡波', 'http://www.dota2.com.cn/images/heroes/abiliti', '格纳斯放出一道能量波，对一条直线上的敌方单位造成伤害。可用神杖升级。', '', '魔法消耗：90/90/90/90', '冷却时间：10.0/9.0/8.0/7.0', '技能:单位目标, 点目标\n伤��类型:魔法\n伤害：75/150/225/300\n神杖升级移动速度减缓：60%\n神杖升级减速持续时间：2', 'http://dota2.dl.wanmei.com/dota2/video/abilities/magnus_1.mp4', '杰尔拉克山体并不稳定，马格纳斯已经学会如何将山体里的回响引导出来。', '授予力量', 'http://www.dota2.com.cn/images/heroes/abiliti', '给予一个友方单位额外攻击力并且使其获得分裂攻击的能力。', '', '魔法消耗：30/50/70/90', '冷却时间：8', '技能:单位目标\n持续时间：40.0/40.0/40.0/40.0\n攻击力加成：20%/30%/40%/50%\n分裂伤害：20%/30%/40%/50%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/magnus_2.mp4', '随着一声怒吼，马格纳斯展示了他真正的力量。', '巨角冲撞', 'http://www.dota2.com.cn/images/heroes/abiliti', '马格纳斯向前冲刺，用他巨大的犀角将敌人挑起。被击中的英雄将被拽至终点，然后受到伤害并被减速。', '', '魔法消耗：80/80/80/80', '冷却时间：25', '技能:点目标\n伤害类型:魔法\n冲刺速度：950\n冲刺距离：900/1000/1100/1200\n移动速度减缓：25%/30%/35%/40%\n减速持续时间：2.5/2.75/3/3.25\n伤害：70/140/210/280', 'http://dota2.dl.wanmei.com/dota2/video/abilities/magnus_3.mp4', '对潜在的商人来说，半人犀牛的犀角价值与犀角能够造成的破坏成正比。', '两极反转', 'http://www.dota2.com.cn/images/heroes/abiliti', '马格纳斯改变物质的属性，将附近的敌人都拖拽到他的前方，并且以强力的震击对他们造成伤害和眩晕。', '', '魔法消耗：200/250/300', '冷却时间：120', '技能:无目标\n伤害类型:魔法\n拖拽范围：410\n伤害：50/125/200\n眩晕时间：2.25/3.0/3.75', 'http://dota2.dl.wanmei.com/dota2/video/abilities/magnus_4.mp4', '作战时愤怒的马格纳斯如同喷发的杰尔拉克山。'),
(52, 52, '幽鬼之刃', 'http://www.dota2.com.cn/images/heroes/abiliti', '		幽鬼掷出一把匕首，留下一条暗影之径，对路径上的敌人造成伤害并降低其移动速度。被匕首击中的单位移动时也会留下暗影之径。幽鬼在暗影之径上可以无视地形移动。', '', '魔法消耗：130/140/150/160', '冷却时间：16.0/16.0/16.0/16.0', '技能:点目标, 单位目标 \n伤害类型:魔法\n伤害：50/100/150/200\n移动速度加成：8%/12%/16%/20%\n持续时间：7.0/7.0/7.0/7.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/spectre_spectral_dagger_sven.mp4', '墨丘利的匕首将物理位面隐藏在暗影中，凡人在其中畏缩，幽鬼则变得强势。', '荒芜', 'http://www.dota2.com.cn/images/heroes/abiliti', '当敌人落单时，幽鬼的攻击对他们造成额外伤害。敌人的视野将有所减少，持续5.0秒。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n伤害类型:纯粹\n额外伤害：20/30/40/50\n范围：325\n视野降低：40%/50%/60%/70%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/spectre_desolate.mp4', '战士们常常发现只有一个墨丘利的幻象和他们在一起 - 不得不去质疑，这是不是真正的幽鬼。', '折射', 'http://www.dota2.com.cn/images/heroes/abiliti', '幽鬼将受到的伤害折射给敌人，降低她受到的伤害。距离越远，效果越小。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n伤害反弹：10%/14%/18%/22%\n最小范围：300/300/300/300\n最大范围：1000/1000/1000/1000', 'http://dota2.dl.wanmei.com/dota2/video/abilities/spectre_dispersion.mp4', '一个令人却步的考验摆在墨丘利的敌人面前 - 用剑和魔法消灭一个影子。', '空降', 'http://www.dota2.com.cn/images/heroes/abiliti', '幽鬼与选中的鬼影交换位置。', '', '魔法消耗：0', '冷却时间：0', '技能:点目标', 'http://dota2.dl.wanmei.com/dota2/video/abilities/wisp_relocate_tether.mp4', '分散的影子重聚成真正的幽鬼。'),
(53, 53, '棒击大地', 'http://www.dota2.com.cn/images/heroes/abiliti', '齐天大圣让金箍棒变大，并将其挥起猛击地面，眩晕一条直线上的敌人并造成基于他普通攻击的致命一击伤害。具有克敌机先效果。', '', '魔法消耗：100', '冷却时间：22', '技能:点目标\n伤害类型:物理\n眩晕持续时间：0.4/0.8/1.2/1.6\n暴击百分比：150%/175%/200%/225%\n距离：1200', '', '传说中的金箍棒根据主人的意愿变大变长，确保敌人都逃不出齐天大圣的手心。', '丛林之舞', 'http://www.dota2.com.cn/images/heroes/abiliti', '齐天大圣跳上一棵树并停在上面。停留时获得乾坤之跃技能——需要持续施法的跳跃式攻击。如果树木被摧毁，他将从树上掉下，并眩晕4秒。在地面受到玩家或Roshan的伤害时丛林之舞将在一定时间内无法使用，处于冷却状态。', '', '魔法消耗：0', '冷却时间：1.2', '技能:单位目标\n距离：1000\n受到伤害时冷却时间：3.0\n乾坤之跃伤害：140/210/280/350\n乾坤之跃减速：20%/40%/60%/80%', '', '孙悟空在树顶上灵活地跳跃，总是一跃而至。', '乾坤之跃', 'http://www.dota2.com.cn/images/heroes/abiliti', '齐天大圣从树顶跃下，对着陆区域内敌人造成减速和伤害。持续施法的时间越长，伤害和减速效果越高。', '', '魔法消耗：130/120/110/100', '冷却时间：19/17/15/13', '技能:点目标, 持续施法\n伤害类型:魔法\n伤害：140/210/280/350\n移动速度减缓：20%/40%/60%/80%\n减速持续时间：4.0\n最大距离：1000', '', '从浓密的树丛中跃向敌军中央，孙悟空的攻击毫不留情。', '如意棒法', 'http://www.dota2.com.cn/images/heroes/abiliti', '齐天大圣的攻击唤醒了金箍棒的力量。连续攻击四次同个英雄后齐天大圣的下四次攻击得到加强，获得了攻击力加成和吸血效果。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n所需次数：4\n计数持续时间：10\n能量点数：4\n攻击力加成：60/90/120/150\n额外吸血：15%/30%/45%/60%', '', '金箍棒能敏锐感知主人的情绪，在孙悟空展现战意时散发力量。'),
(54, 54, '寒霜爆发', 'http://www.dota2.com.cn/images/heroes/abiliti', '破坏性的寒霜在目标敌方单位身上爆发，造成范围伤害并降低范围内敌人的移动和攻击速度，持续4秒。主要目标所受伤害最高。', '', '魔法消耗：125/150/170/190', '冷却时间：8.0', '技能:单位目标\n伤害类型:魔法\n作用范围：200/200/200/200\n移动速度减缓：-30%/-30%/-30%/-30%\n攻击速度降低：-20/-20/-20/-20\n范围伤害：75/100/125/150', 'http://dota2.dl.wanmei.com/dota2/video/abilities/lich_frost_blast.mp4', '冰霜法师艾斯瑞安从没忘记哪怕最简单的冰系操控咒。', '霜冻护甲', 'http://www.dota2.com.cn/images/heroes/abiliti', '为一个友方单位或建筑物制造一层寒冰护甲，增加护甲值并减速对其发动攻击的敌方单位。持续40秒。', '', '魔法消耗：50/50/50/50', '冷却时间：5.0/5.0/5.0/5.0', '技能:单位目标, 自动施放\n友军护甲提升：3/5/7/9\n建筑护甲提升：3/5/7/9\n减速持续时间：2.0/2.0/2.0/2.0\n敌军移动速度减缓：-8%/-16%/-24%/-32%\n敌军攻击速度降低：-8/-16/-24/-32', 'http://dota2.dl.wanmei.com/dota2/video/abilities/lich_ice_armor.mp4', '原本是为了在中埋伏自卫时打造的，巫妖能够为他人施加一个强力的冰霜护体魔咒。', '献祭', 'http://www.dota2.com.cn/images/heroes/abiliti', '一个友方单位，将他的当前生命值转化成巫妖的魔法值。', '', '魔法消耗：25/25/25/25', '冷却时间：60/46/32/18', '技能:单位目标\n生命值转化率：30%/50%/70%/90%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/huskar_life_break.mp4', '在艾斯瑞安还是人类的时候，从没听过他会对质疑他统治的人手下留情。', '连环霜冻', 'http://www.dota2.com.cn/images/heroes/abiliti', '释放一个在敌人间弹跳至多10 10 10次的霜冻之球，每次击中敌人后都会造成伤害和减速效果。可用神杖升级。', '', '魔法消耗：200/325/500', '冷却时间：100.0/80.0/60.0', '技能:单位目标\n伤害类型:魔法\n每次弹跳伤害：280/370/460\n弹跳次数：10/10/10\n弹跳距离：600\n移动速度减缓：-65%\n攻击速度降低：-65\n减速持续时间：2.5\n神杖升级伤害：370/460/550', 'http://dota2.dl.wanmei.com/dota2/video/abilities/lich_chain_frost_a.mp4', '几乎所有人都认为是冰霜法术中的终极咒语，艾斯瑞安的霜死之珠能用恐惧击打那些胆敢站出来反对他的人们。'),
(55, 55, '吞噬', 'http://www.dota2.com.cn/images/heroes/abiliti', '消化一个敌军或中立生物，获得其特殊技能。', '', '魔法消耗：40/50/60/70', '冷却时间：70.0/60.0/50.0/40.0', '技能:单位目标\n金钱奖励：25/50/75/100', 'http://dota2.dl.wanmei.com/dota2/video/abilities/doombringer_devour.mp4', '路西法的食欲和贪婪永远不会得到满足。', '焦土', 'http://www.dota2.com.cn/images/heroes/abiliti', '用火焰覆盖周围的土地，对敌人造成伤害，并且治疗末日使者，同时其移动速度得到提升。', '', '魔法消耗：60/65/70/75', '冷却时间：55', '技能:无目标\n伤害类型:魔法\n伤害：16/24/32/40\n生命恢复：12/18/24/30\n作用范围：600/600/600/600\n移动速度提升：14%\n持续时间：10.0/12.0/14.0/16.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/doombringer_scorched_earth_creeps.mp4', '堕落者在他所及之处散布毁灭，他的火焰不宽恕任何人。', '阎刃', 'http://www.dota2.com.cn/images/heroes/abiliti', '末日挥舞他的炽烈之剑，将敌人点燃。造成0.6秒眩晕，并施加一个燃烧效果，持续4.0秒，每秒造成25 30 35 40 + 1.25 2.5 3.75 5%目标最大生命值的伤害。', '', '魔法消耗：40', '冷却时间：16/12/8/4', '技能:单位目标, 自动施放\n伤害类型:魔法\n基础烧灼伤害：25/30/35/40\n最大生命值伤害百分比：1.25%/2.5%/3.75%/5%\n烧灼持续时间：4.0\n眩晕持续时间：0.6', '', '路西法很乐意与他人分享自己被放逐时身受的火焰烙印。', '技能（来自吞噬）', 'http://www.dota2.com.cn/images/heroes/abiliti', '						本技能栏在使用吞噬获得技能后可以使用。', '', '魔法消耗：0', '冷却时间：0', '技能:被动', '', ''),
(56, 56, '烟幕', 'http://www.dota2.com.cn/images/heroes/abiliti', '一个烟雾弹，沉默处于范围内的敌方单位，同时使他们的大多数攻击落空，而且移动速度被减缓。', '', '魔法消耗：90', '冷却时间：11', '技能:点目标\n作用范围：250/275/300/325\n落空概率：40%/50%/60%/70%\n移动速度减缓：10%/15%/20%/25%\n持续时间：6', 'http://dota2.dl.wanmei.com/dota2/video/abilities/riki_smoke_screen_sven.mp4', '自从他在背叛之夜逃脱后，力丸就发掘出这能迷惑对手的简单烟幕的价值。', '闪烁突袭', 'http://www.dota2.com.cn/images/heroes/abiliti', '传送到一个目标背后，如果是敌人则对其造成额外伤害。', '', '魔法消耗：50', '冷却时间：16/12/8/4', '技能:单位目标\n伤害类型:魔法\n施法距离：700\n额外伤害：55/70/85/100', 'http://dota2.dl.wanmei.com/dota2/video/abilities/riki_blink_strike.mp4', '隐形刺客迅捷的动作让他的目标几乎不可能逃脱。', '刀光谍影', 'http://www.dota2.com.cn/images/heroes/abiliti', '力丸遁入阴影，保持隐身状态。每次力丸从背后攻击敌人都会造成基于敏捷值的额外伤害。主动攻击敌人，力丸将会显形。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n伤害类型:物理\n敏捷伤害系数：0.4/0.6/0.8/1.0\n渐隐时间：6/5/4/3', 'http://dota2.dl.wanmei.com/dota2/video/abilities/riki_permanent_invisibility.mp4', '力丸来找你了。', '绝杀秘技', 'http://www.dota2.com.cn/images/heroes/abiliti', '持续施法 - 转移出现实位面，每秒从背后攻击一次500范围内的每个敌人。可用神杖升级。', '', '魔法消耗：75', '冷却时间：40/35/30', '技能:无目标, 持续施法\n作用范围：500\n每个单位最大攻击次数：4/5/6\n神杖升级额外持续时间：4', '', '隐形刺客从不忌讳使用肮脏的战斗手法，尤其擅长从对手的背后发动攻击。'),
(57, 57, '雷霆一击', 'http://www.dota2.com.cn/images/heroes/abiliti', '猛击地面，造成伤害并降低附近敌方地面单位的移动速度和攻击速度。', '', '魔法消耗：90/105/130/150', '冷却时间：13', '技能:无目标\n伤害类型:魔法\n作用范围：400/400/400/400\n伤害：100/175/250/300\n移动速度减缓：25%/35%/45%/55%\n攻击速度降低：25/35/45/55\n对英雄持续时间：4.0\n对小兵持续时间：8.0/8.0/8.0/8.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/brewmaster_thunder_clap_creeps.mp4', '曼吉克斯巨大酒桶的一击标志着庆典的开始。', '醉酒云雾', 'http://www.dota2.com.cn/images/heroes/abiliti', '用酒精浸透目标，使其移动速度降低，并且攻击有一定概率不能命中。', '', '魔法消耗：25', '冷却时间：8/7/6/5', '技能:单位目标\n持续时间：4.5\n移动速度减缓：10%/20%/30%/40%\n丢失概率：70%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/brewmaster_drunken_haze.mp4', '奥尤社解决所有问题的方法 - 再喝一轮！', '醉拳', 'http://www.dota2.com.cn/images/heroes/abiliti', '定概率闪避攻击并能造成致命一击。只要在若干秒内没有发动攻击，或没有受到攻击，醉拳的被动效果将下一次攻击或被攻击时必定触发。与其他闪避效果为非线性叠加。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n闪避概率：10%/15%/20%/25%\n致命一击概率：10%/15%/20%/25%\n致命一击伤害：230%\n必定触发所需时间：13/12/11/10', 'http://dota2.dl.wanmei.com/dota2/video/abilities/brewmaster_drunken_brawler.mp4', '曼吉克斯赢得奥尤社的酒仙称号的同时，也确立了他在精通醉拳方面的地位。', '元素分离', 'http://www.dota2.com.cn/images/heroes/abiliti', '酒仙分裂成元素，产生3个各有所长的战士，生存能力极强。只要其中任何一个在召唤时间结束后存活下来，酒仙就能重生。可用神杖升级。', '', '魔法消耗：125/150/175', '冷却时间：140/120/100', '技能:无目标\n持续时间：16/18/20', 'http://dota2.dl.wanmei.com/dota2/video/abilities/brewmaster_primal_split.mp4', '没有人清楚曼吉克斯是否注意到自己和自然之间强大的连结，因为这总是发生在他醉得不省人事之时。'),
(58, 58, '龙破斩', 'http://www.dota2.com.cn/images/heroes/abiliti', '莉娜引导龙的吐息，放出一波火焰，烧焦所有波及的敌人。', '', '魔法消耗：100/115/130/145', '冷却时间：8.0', '技能:单位目标, 点目标\n伤害类型:魔法', 'http://dota2.dl.wanmei.com/dota2/video/abilities/lina_dragon_slave_creeps.mp4', '在纷争之国的荒焦之地，为了娱乐，莉娜学会了操纵沙漠龙的火焰吐息。', '光击阵', 'http://www.dota2.com.cn/images/heroes/abiliti', '召唤柱状火焰伤害并眩晕敌人。', '', '魔法消耗：100/110/120/130', '冷却时间：7.0/7.0/7.0/7.0', '技能:点目标\n伤害类型:魔法\n作用范围：225\n施法延迟：0.5\n眩晕时间：1.6/1.9/2.2/2.5\n伤害：80/120/160/200', 'http://dota2.dl.wanmei.com/dota2/video/abilities/lina_light_strike_array_creeps.mp4', '莉娜的精华让她能够集中太阳的能量，随时让空气燃烧。', '炽魂', 'http://www.dota2.com.cn/images/heroes/abiliti', '娜每次施法都会给她带来攻击和移动速度提升。可以叠加。持续10秒。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n攻击速度提升：40/55/70/85\n移动速度提升：5%/6%/7%/8%\n最大叠加数：3\n持续时间：10', 'http://dota2.dl.wanmei.com/dota2/video/abilities/lina_fiery_soul.mp4', '舞动的火焰体现了莉娜爱玩的天性，展示了她真实炙热的自我。', '神灭斩', 'http://www.dota2.com.cn/images/heroes/abiliti', '对单个敌方单位射出闪电，造成大量伤害。可用神杖升级。', '', '魔法消耗：280/420/680', '冷却时间：70/60/50', '技能:单位目标\n伤害类型:魔法\n伤害：450/650/850', 'http://dota2.dl.wanmei.com/dota2/video/abilities/lina_laguna_blade.mp4', '莉娜身边的空气变得极度炙热，产生白热的闪电来灼烧过于接近的敌人。'),
(59, 59, '不可侵犯', 'http://www.dota2.com.cn/images/heroes/abiliti', '		魅惑魔女让她的敌人神魂颠倒，受到他们攻击时会降低其攻击速度。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n攻击速度降低：-40/-70/-100/-130', 'http://dota2.dl.wanmei.com/dota2/video/abilities/enchantress_untouchable.mp4', '在攻击爱由莎之后，大多数敌人都会由于攻击了这样一个天然的美人而不知所措。', '魅惑', 'http://www.dota2.com.cn/images/heroes/abiliti', '魅惑魔女诱惑一个敌人。如果目标是英雄，其移动速度将会被减缓。如果目标是普通单位，其将会被魅惑魔女控制。如果是对已被控制的普通单位使用，魅惑的持续时间将会被刷新。', '', '魔法消耗：65/65/65/65', '冷却时间：30.0/24.0/18.0/12.0', '技能:单位目标\n魅惑持续时间（对普通单位）：80.0\n移动速度减缓（对英雄）：-55%\n减速持续时间（对英雄）：2.25/3.5/4.75/6', 'http://dota2.dl.wanmei.com/dota2/video/abilities/enchantress_enchant_sven_running.mp4', '作为森林真正的管家，无论是卑贱的巨魔还是强大的半人马，爱由莎都会和他们成为朋友。', '自然之助', 'http://www.dota2.com.cn/images/heroes/abiliti', '		召唤一群小精灵治疗魅惑魔女以及身边的友方单位，持续11秒。', '', '魔法消耗：125', '冷却时间：45.0/45.0/45.0/45.0', '技能:无目标\n每秒治疗量：10.0/10.0/10.0/10.0\n作用范围：275/275/275/275\n小精灵数量：4/6/8/10', 'http://dota2.dl.wanmei.com/dota2/video/abilities/enchantress_nature_s_attendants.mp4', '古怪的森林小精灵所有的治疗之力虽然微弱，但可以用数量弥补。', '推进', 'http://www.dota2.com.cn/images/heroes/abiliti', '激活后每次攻击都有附魔效果，根据与目标的距离造成额外伤害。目标越远，伤害越高。可用神杖升级。', '', '魔法消耗：55/60/65', '冷却时间：0.0/0.0/0.0', '技能:单位目标, 自动施放\n伤害类型:纯粹\n距离伤害加成：14.0%/18.0%/22.0%\n神杖升级攻击距离加成：190/190/190', 'http://dota2.dl.wanmei.com/dota2/video/abilities/enchantress_impetus.mp4', '虽然爱由莎更喜欢和平的处事方式，但她还是会用远距离的魔法突击来解决一些问题，她扔出的长矛会从掠过的空气中获得能量。'),
(60, 60, '暗影冲刺', 'http://www.dota2.com.cn/images/heroes/abiliti', '裂魂人盯紧一个敌方单位，开始无视一切物体的冲刺。途中经过的所有敌方单位和目标单位都将受到巨力重击。如果目标单位在到达前死亡了，裂魂人将他的目标改为原路径上最近的一个敌方单位。', '', '魔法消耗：100/100/100/100', '冷却时间：12', '技能:单位目标\n冲刺速度：600/650/700/750\n眩晕时间：1.2/1.6/2.0/2.4', 'http://dota2.dl.wanmei.com/dota2/video/abilities/spirit_breaker_charge_of_darkness_creeps.mp4', '巴拉森带着一股狂蛮之力从黑暗中冲出。', '神行太保', 'http://www.dota2.com.cn/images/heroes/abiliti', '裂魂人的高速移动给他带来力量，提高附近友军单位的移动速度。技能可以施放，施放后效果提升50%，持续6秒，然而技能在冷却过程中被动效果将会减半。', '', '魔法消耗：0', '冷却时间：12', '技能:无目标, 光环\n自身移动速度提升：8%/12%/16%/20%\n友军移动速度提升：4%/6%/8%/10%\n光环作用范围：900/900/900/900\n施放后额外速度加成：3%/4%/5%/6%\n施放后额外速度加成持续时间：6', 'http://dota2.dl.wanmei.com/dota2/video/abilities/spirit_breaker_empowering_haste.mp4', '英雄们只要留心观察裂魂人在战场上的支配地位，就能提高他们的速度与力量。', '巨力重击', 'http://www.dota2.com.cn/images/heroes/abiliti', '攻击时有一定概率眩晕并击退敌方单位，打出重击后获得移动速度加成。重击的伤害值为移动速度的一定百分比。', '', '魔法消耗：0', '冷却时间：1.5/1.5/1.5/1.5', '技能:被动\n伤害类型:魔法\n重击概率：17%/17%/17%/17%\n移动速度转化为伤害比例：12%/24%/36%/48%\n眩晕时间：1.0/1.2/1.4/1.6\n击退持续时间：0.5/0.5/0.5/0.5\n移动速度提升：15%/15%/15%/15%\n加速持续时间：3.0/3.0/3.0/3.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/spirit_breaker_greater_bash.mp4', '巴拉森幽灵般链球的标志性一击。', '幽冥一击', 'http://www.dota2.com.cn/images/heroes/abiliti', '裂魂人遁入幽冥领域，从不幸的目标身旁再次出现，发动当前等级的巨力重击并造成额外伤害。可用神杖升级。', '', '魔法消耗：125/150/175', '冷却时间：100/80/60', '技能:单位目标\n伤害类型:魔法\n额外伤害：150/250/350\n范围：700\n神杖升级施法距离：850\n神杖升级巨力重击范围：250/250/250\n神杖升级冷却时间：20.0/20.0/20.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/spirit_breaker_nether_strike.mp4', '巴拉森暂时回到他原来所在的元素领域，然后带回来自两个世界的回击。'),
(61, 61, '寒霜之足', 'http://www.dota2.com.cn/images/heroes/abiliti', '在一个敌方单位身上施放造成持续伤害的寒冰咒印，但对象只要远离施法点足够距离即可消除咒印。如果受攻击单位没有在4秒内走出消除距离，则将被眩晕并被冻在原地。', '', '魔法消耗：125', '冷却时间：10/9/8/7', '技能:单位目标\n伤害类型:魔法\n每次伤害：30/50/70/90\n失效距离：740/740/740/740\n眩晕时间：2.0/2.5/3.0/3.5\n施法距离：700/800/900/1000', 'http://dota2.dl.wanmei.com/dota2/video/abilities/ancient_aparition_cold_feet.mp4', '卡尔德的存在将压周围的敌人吸入寒冷虚空，带来将他们锁进永恒冰牢的威胁。', '冰霜漩涡', 'http://www.dota2.com.cn/images/heroes/abiliti', '创造一个寒冰能量的漩涡，降低范围内敌人的移动速度，增加他们受到的魔法伤害。持续16秒。', '', '魔法消耗：80/90/100/110', '冷却时间：4.0', '技能:点目标\n作用范围：275/275/275/275\n移动速度减缓：-15%/-20%/-25%/-30%\n魔法伤害加深：-15%/-20%/-25%/-30%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/ancient_aparition_ice_vortex_sven.mp4', '卡尔德带来腐蚀性的冰风，将战场变寒冷。', '极寒之触', 'http://www.dota2.com.cn/images/heroes/abiliti', '一阵极寒之风对友方英雄施加魔法，使他们接下来的数次普通攻击造成额外魔法伤害。每次攻击都会减缓敌人的移动速度。无论选择何处施放，远古冰魄总是会获得状态效果。持续30秒。', '', '魔法消耗：110/120/130/140', '冷却时间：50.0/42.0/34.0/26.0', '技能:点目标\n伤害类型:魔法\n作用范围：525\n最多攻击次数：3/4/5/6\n额外伤害：30/45/60/75\n移动速度减缓：30\n减速持续时间：0.3', 'http://dota2.dl.wanmei.com/dota2/video/abilities/ancient_aparition_chilling_touch.mp4', '远古冰魄的永恒知识给他的友军带来寒冷强化。', '冰晶爆轰', 'http://www.dota2.com.cn/images/heroes/abiliti', '向地图的任意位置发出爆炸冰球，在冰球飞行时再次施放此技能将使其停下，使所在区域产生毁灭性的冰爆。冰球飞行的距离越长，冰爆影响的范围也将越大。冰爆范围内的所有敌方单位将马上受到大量伤害，而处于冰球飞行路径上的敌方英雄将与冰爆范围内的敌方英雄一同受到寒霜诅咒的作用，持续受到小幅伤害，同时无法恢复生命值。在此期间如果生命值低于一定百分比，该英雄将立刻死亡。可用神杖升级。', '', '魔法消耗：150', '冷却时间：40.0', '技能:点目标\n伤害类型:魔法\n寒霜诅咒持续时间：8.0/9.0/10.0\n寒霜诅咒持续伤害：12.5/20.0/32.0\n即死生命值百分比：10.0%/11.0%/12.0%\n神杖升级寒霜诅咒持续时间：17', 'http://dota2.dl.wanmei.com/dota2/video/abilities/ancient_aparition_ice_blast_long_sven.mp4', '卡尔德的寒霜之体中流出远古的寒冰风暴，将这个世界的居民冻成他永恒力量的纪念碑。'),
(62, 62, '镜像', 'http://www.dota2.com.cn/images/heroes/abiliti', '制造三个受娜迦海妖控制的镜像。驱散类型：弱驱散', '', '魔法消耗：70/80/90/100', '冷却时间：40.0/40.0/40.0/40.0', '技能:无目标\n镜像持续时间：30.0/30.0/30.0/30.0\n镜像攻击力：25%/30%/35%/40%\n镜像承受伤害：550%/500%/450%/400%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/naga_siren_mirror_image.mp4', '司里希丝天生就很强大，并且众人皆知其难以追踪。', '诱捕', 'http://www.dota2.com.cn/images/heroes/abiliti', '打断目标的动作并困住目标，使之无法移动或闪烁。', '', '魔法消耗：70/80/90/100', '冷却时间：12', '技能:单位目标\n持续时间：2.0/3.0/4.0/5.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/naga_siren_ensnare.mp4', '想要逃脱娜迦海妖的追杀，唯一的办法就是一开始就不要与之作对。', '激流', 'http://www.dota2.com.cn/images/heroes/abiliti', '娜迦海妖和她的镜像用具有破坏力的水波攻击周围所有敌方单位，并削弱他们的护甲，持续8秒。', '', '魔法消耗：80/90/100/110', '冷却时间：10.0', '技能:无目标\n伤害类型:魔法\n护甲降低：-2/-3/-4/-5\n持续时间：8.0/8.0/8.0/8.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/naga_siren_rip_tide.mp4', '娜迦海妖的敌人被深海涌出的洪流冲刷，防御遭到粉碎。', '海妖之歌', 'http://www.dota2.com.cn/images/heroes/abiliti', '		娜迦海妖周围的所有敌人受到魔法影响陷入停滞状态，既无法行动也不会受到攻击。再次使用海妖之歌可以提前停止效果。可用神杖升级。', '', '魔法消耗：100/100/100', '冷却时间：160.0/120.0/80.0', '技能:无目标\n作用范围：1000/1200/1400\n持续时间：7.0/7.0/7.0\n神杖升级生命恢复：10%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/naga_siren_song_of_the_siren.mp4', '司里希丝具有魔力的声音使敌人不自觉地沉醉其中，同时在需要的时候召唤她的族人前来助战。'),
(63, 63, '熊灵伙伴', 'http://www.dota2.com.cn/images/heroes/abiliti', '		召唤一只可以装备物品的熊灵伙伴。若熊灵与德鲁伊的距离超过1100，则不能攻击。如果熊灵死亡，德鲁伊会受到自身最大生命值的10.0%作为反冲伤害。随着熊灵的等级提高，可以学习回归，缠绕之爪和粉碎击技能。熊灵装备的物品拥有的属性加成对熊灵无效。可用神杖升级。', '', '魔法消耗：75/75/75/75', '冷却时间：120.0', '技能:无目标\n熊灵生命值：1500/2000/2500/3000\n熊灵每秒生命恢复：4/5/6/7\n熊灵基础攻击间隔：1.75/1.65/1.55/1.45\n熊灵护甲：3/4/5/6\n反冲纯粹伤害：10.0%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/lone_druid_summon_spirit_bear.mp4', '悉拉终生的伙伴与他的灵魂和心灵共生，在他需要时随时前来相助。', '狂猛', 'http://www.dota2.com.cn/images/heroes/abiliti', '提升德鲁伊和熊灵的攻击速度和移动速度。', '', '魔法消耗：50/50/50/50', '冷却时间：35', '技能:无目标\n攻击速度提升：20/30/40/50\n移动速度提升：10%/15%/20%/25%\n持续时间：25', 'http://dota2.dl.wanmei.com/dota2/video/abilities/lone_druid_rabid.mp4', '熊通常不被认为是灵巧的生物，但实际上它们移动迅速，尤其是发怒之时。', '野蛮咆哮', 'http://www.dota2.com.cn/images/heroes/abiliti', '		德鲁伊发出野性的咆哮，吓得周围敌人朝自己的基地狂奔。敌人的移动速度将增加20%。', '', '魔法消耗：50', '冷却时间：38/32/26/20', '技能:无目标\n作用范围：325\n敌军移动速度加成：20%\n持续时间：1.2/1.6/2.0/2.4', 'http://dota2.dl.wanmei.com/dota2/video/abilities/lone_druid_synergy.mp4', '悉拉研习并精通失落的熊族技艺，他的行动也因此与自然高度协调。', '战斗嚎叫', 'http://www.dota2.com.cn/images/heroes/abiliti', '		提升德鲁伊和附近受其控制单位的攻击力和护甲。', '', '魔法消耗：50/50/50', '冷却时间：45.0', '技能:无目标\n攻击力��成：70/100/130\n护甲提升：10/15/20\n持续时间：5.0\n作用范围：1000', 'http://dota2.dl.wanmei.com/dota2/video/abilities/lone_druid_battle_cry.mp4', '当悉拉在森林中怒吼，在很远的地方也能听到他声音的回响。'),
(64, 64, '榴霰弹', 'http://www.dota2.com.cn/images/heroes/abiliti', '	消耗一点能量射出一发带有爆炸弹片的榴霰弹，在目标区域降下弹雨。区域内的敌军受到伤害并被减速。榴霰弹将给予目标区域的视野。榴霰弹的能量每过55秒恢复1点。', '', '魔法消耗：50', '冷却时间：0', '技能:点目标\n伤害类型:魔法\n移动速度减缓：-15%/-20%/-25%/-30%\n作用范围：450\n伤害：15/35/55/75\n持续时间：10.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/sniper_shrapnel.mp4', '卡德尔的模块化步枪还能发射燃烧弹，对攻击战壕中的敌人很有用。', '爆头', 'http://www.dota2.com.cn/images/heroes/abiliti', '狙击手提高他的精确度，有一定概率造成额外伤害和短暂的移动停滞。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n伤害类型:物理\n概率：40%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/sniper_headshot.mp4', '童年时对潜行兽的胡乱射击现在被练就成攻击敌人的技术。', '瞄准', 'http://www.dota2.com.cn/images/heroes/abiliti', '增加狙击手的步枪的射程。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n射程增加：100/200/300/400', 'http://dota2.dl.wanmei.com/dota2/video/abilities/sniper_take_aim.mp4', '卡德尔总是保持自己待在远处的安全距离，同时他仍然可以作为狙击手进行完美的射击。', '暗杀', 'http://www.dota2.com.cn/images/heroes/abiliti', '狙击手锁定一个目标敌方单位，2秒后，从远距离射出一发毁灭性的子弹，对目标造成伤害及短暂眩晕。可用神杖升级。', '', '魔法消耗：175/275/375', '冷却时间：20.0/15.0/10.0', '技能:单位目标\n伤害类型:魔法\n施法距离：2000/2500/3000\n神杖升级作用范围：400\n神杖升级致命一击伤害：280%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/sniper_assassinate.mp4', '为了完成预言然后返回家乡，卡德尔必须和参加古老考验那天一样，做出完美的射击。'),
(65, 65, '混乱之箭', 'http://www.dota2.com.cn/images/heroes/abiliti', '对目标单位投掷一支神秘的能量箭。造成随机时间的眩晕和随机的伤害。', '', '魔法消耗：140/140/140/140', '冷却时间：10.0/10.0/10.0/10.0', '技能:单位目标\n伤害类型:魔法\n最短眩晕：1/1/1/2\n最长眩晕：2/3/4/4\n最低伤害：75/100/125/150\n最高伤害：200/225/250/275', 'http://dota2.dl.wanmei.com/dota2/video/abilities/chaos_knight_chaos_bolt.mp4', '甚至混沌骑士自己都无法预测这不洁之力会有何种效果。', '实相裂隙', 'http://www.dota2.com.cn/images/heroes/abiliti', '将混沌骑士及混沌骑士的幻象和目标单位传送到混沌骑士与目标连线上的随机位置，并且降低目标护甲，持续8秒。', '', '魔法消耗：50', '冷却时间：18/14/10/6', '技能:单位目标\n范围：550/600/650/700\n护甲降低：-1/-3/-5/-7\n削弱持续时间：8', 'http://dota2.dl.wanmei.com/dota2/video/abilities/chaos_knight_reality_rift_long.mp4', '天劫的铁蹄跨过不同位面的世界，让混沌骑士的敌人无处可藏。', '混沌一击', 'http://www.dota2.com.cn/images/heroes/abiliti', '混沌骑士的每次攻击都有一定概率造成额外伤害，并且触发的致命一击具有75%的吸血效果。', '', '魔法消耗：0', '冷却时���：0', '技能:被动\n致命一击概率：12%\n致命一击伤害：125%/175%/225%/275%\n致命一击吸血：75%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/chaos_knight_chaos_strike.mp4', '混沌骑士用巨大的蛮力砸向面前的敌人，击碎最厚的盔甲。', '混沌之军', 'http://www.dota2.com.cn/images/heroes/abiliti', '从另一维度内召唤若干个混沌骑士的幻象。施放时有50%的几率额外召唤一个幻象。幻象继承100 100 100%攻击力，但是承受260%的伤害。可用神杖升级。驱散类型：弱驱散', '', '魔法消耗：125/200/275', '冷却时间：145', '技能:无目标\n幻象数量：1/2/3\n额外幻象几率：50%\n幻象持续时间：42\n幻象继承攻击力：100%/100%/100%\n幻象承受伤害：260%\n神杖升级冷却时间：110', '', '凭借混沌骑士在各个世界丰富的战斗经验，他的幻象足以压制所有敢于反抗他的人。'),
(66, 66, '羁绊', 'http://www.dota2.com.cn/images/heroes/abiliti', '将艾欧和一个友方单位连接在一起，提高双方的移动速度。当艾欧回复生命或魔法时，连在一起的友军也将获得1.5倍的回复效果。任何碰到连接的敌方单位将被减速。距离过远��连接将会断开，也可以主动断开连接。', '', '魔法消耗：40/40/40/40', '冷却时间：12.0/12.0/12.0/12.0', '技能:单位目标\n最远连接距离：900/900/900/900\n移动速度提升：10%/12%/14%/16%\n羁绊持续时间：12.0/12.0/12.0/12.0\n敌方移动速度减缓：-100%\n敌方攻击速度降低：-100\n敌方减速持续时间：0.75/1.25/1.75/2.25', 'http://dota2.dl.wanmei.com/dota2/video/abilities/wisp_tether.mp4', '艾欧善意的接触从不同位面之间带来力量。', '幽魂', 'http://www.dota2.com.cn/images/heroes/abiliti', '召唤五个围绕艾欧起舞的幽魂，对所有碰触到的单位造成伤害。如果碰到的是敌方英雄，幽魂会爆炸，对其附近的所有敌人造成伤害。普通单位碰到幽魂会受到轻微伤害，但是不会使其爆炸。持续时间结束后，幽魂将自动爆炸。', '', '魔法消耗：150', '冷却时间：20.0/18.0/16.0/14.0', '技能:无目标\n伤害类型:魔法\n对小兵伤害：8/14/20/26\n对英雄伤害：25/50/75/100\n最大范围：700\n爆炸范围：300/300/300/300\n持续时间：19.0/19.0/19.0/19.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/wisp_spirits_sven.mp4', '艾欧用它不可思议的力量扭曲了宇宙中的粒子。', '过载', 'http://www.dota2.com.cn/images/heroes/abiliti', '艾欧获得攻击速度加成并降低受到的伤害，代价是每秒流失一定百分比的当前生命值和魔法值。如果艾欧和一个友军连接，该单位也会获得增益效果。', '', '魔法消耗：0', '冷却时间：2.0', '技能:无目标\n攻击速度：40/50/60/70\n受到伤害降低：-5%/-10%/-15%/-20%\n生命/魔法流失：6.0%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/wisp_overcharge_tether.mp4', '从所有��面的世界吸取一切物质的能量，艾欧开始展示时间的真相。', '拉近幽魂', 'http://www.dota2.com.cn/images/heroes/abiliti', '		将幽魂召回到你身边。可以切换开关状态。', '', '魔法消耗：0', '冷却时间：0', '技能:无目标', '', ''),
(67, 67, '窒息之刃', 'http://www.dota2.com.cn/images/heroes/abiliti', '对敌方单位掷出一把匕首，减缓其移动速度，并造成物理伤害，数值为65+幻影刺客攻击伤害的25 40 55 70%，同时继承物品和技能的攻击效果。', '', '魔法消耗：30/25/20/15', '冷却时间：6', '技能:单位目标\n伤害类型:物理\n移动速度减缓：-50%\n减速持续时间：1/2/3/4\n基础伤害：65\n攻击伤害：25%/40%/55%/70%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/phantom_assassin_stifling_dagger_long.mp4', '魅影之纱成员学习到的第一个技能，中招就意味着下一次攻击要来了。', '幻影突袭', 'http://www.dota2.com.cn/images/heroes/abiliti', '闪烁到一个友方或敌方单位身边，如果是敌方单位则在攻击该目标时获得攻击速度加成。', '', '魔法消耗：50/50/50/50', '冷却时间：14/11/8/5', '技能:单位目标\n攻速提升：130\n最多攻击次数：4\n距离：1000/1000/1000/1000', 'http://dota2.dl.wanmei.com/dota2/video/abilities/phantom_assassin_phantom_strike_long.mp4', '茉崔蒂的真丝面纱是她倒霉的目标临终所见之物。', '模糊', 'http://www.dota2.com.cn/images/heroes/abiliti', '刺客集中注意力，提升自己闪避敌方攻击的技艺。当附近没有敌方英雄时身形变得模糊，从敌方小地图上消失。与其他闪避效果为非线性叠加。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n闪避几率：20%/30%/40%/50%\n在地图显形所需的敌人范围：1600/1600/1600/1600', 'http://dota2.dl.wanmei.com/dota2/video/abilities/phantom_assassin_blur.mp4', '长期的冥想使得魅影之纱的成员能够谨慎的预知到敌人的到来。', '恩赐解脱', 'http://www.dota2.com.cn/images/heroes/abiliti', '幻影刺客修炼她的战斗技巧，有一定概率对敌方单位造成毁灭性的致命一击。致命一击的效果对窒息之刃同样有效。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n致命一击伤害：230%/340%/450%\n致命一击概率：15%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/phantom_assassin_coup_de_grace.mp4', '神圣的一击，茉崔蒂通过赐予对手死亡来向他们致以敬意。'),
(68, 68, '召狼', 'http://www.dota2.com.cn/images/heroes/abiliti', '召唤两头狼为狼人而战。等级3-4的狼拥有致残技能，等级4的狼还拥有永久隐身技能。', '', '魔法消耗：145', '冷却时间：30.0/30.0/30.0/30.0', '技能:无目标\n持续时间：55.0/55.0/55.0/55.0\n基础攻击间隔：1.25/1.2/1.15/1.1\n攻击力：18/29/37/46\n生命值：200/240/280/320\n精灵狼数量：2/2/2/2', 'http://dota2.dl.wanmei.com/dota2/video/abilities/lycanthrope_summon_wolves.mp4', '扭曲他生命本质的魔法还能召唤出他的犬科伙伴。', '嗥叫', 'http://www.dota2.com.cn/images/heroes/abiliti', '给予狼人、所有友方英雄及所有玩家控制的单位攻击力加成。嗥叫在夜晚效果加倍。', '', '魔法消耗：40', '冷却时间：60/55/50/45', '技能:无目标\n持续时间：13.0\n英雄单位攻击力提升：10/15/20/25\n普通单位攻击力提升：4/6/8/10\n额外生命值（对英雄）：50/100/150/200\n额外生命值（对非英雄）：25/50/75/100', 'http://dota2.dl.wanmei.com/dota2/video/abilities/lycanthrope_howl.mp4', '毛骨悚然的狼嚎让敌人明白贝恩霍勒在就在它们之中。', '野性驱使', 'http://www.dota2.com.cn/images/heroes/abiliti', '		提升狼人和所有他控制的单位的生命恢复速率和攻击力。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n作用范围：900/900/900/900\n攻击力提升：15%/26%/37%/48%\n额外生命恢复；1/3/5/7', 'http://dota2.dl.wanmei.com/dota2/video/abilities/lycanthrope_feral_impulse.mp4', '贝恩霍勒与犬类野兽的共生强化了他的反应和狩猎能力。', '变身', 'http://www.dota2.com.cn/images/heroes/abiliti', '狼人展现出他的凶狼形态，提升夜间视野，并获得致命一击的能力。在变形持续时间中，狼人和他控制的所有单位达到超高移动速度，并且不能被减速，每次攻击有40%的几率造成160 180 200%的致命一击伤害。', '', '魔法消耗：100/100/100', '冷却时间：120/90/60', '技能:无目标\n持续时间：18\n变形后移动速度：650\n额外夜间视野：1000\n变身所需时间：1.5\n致命一击概率：40%\n致命一击伤害：160%/180%/200%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/lycanthrope_shapeshift_running.mp4', '贝恩霍勒接受了永恒的狼人诅咒，拥抱了他的野性，也永远成为了他狼性的奴仆。'),
(69, 69, '霜冻之箭', 'http://www.dota2.com.cn/images/heroes/abiliti', '		卓尔游侠在箭矢中附上冰冻效果，减缓敌人的移动速度。对英雄持续1.5秒，对普通单位持续7.0秒。', '', '魔法消耗：12/12/12/12', '冷却时间：0.0/0.0/0.0/0.0', '技能:单位目标, 自动施放\n移速减缓：-16%/-32%/-48%/-64%\n对英雄持续时间：1.5\n对小兵持续时间：7.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/drow_ranger_frost_arrows_running.mp4', '覆盖着寒冰的箭矢破空而出，将敌人冻结致死。', '狂风', 'http://www.dota2.com.cn/images/heroes/abiliti', '释放一阵狂风，沉默敌方单位并将其击退。击退距离与敌人和卓尔游侠的距离成反比。', '', '魔法消耗：90', '冷却时间：16/15/14/13', '技能:点目标\n施法距离：900\n作用宽度：250\n沉默持续时间：3/4/5/6\n最大击退距离：350\n击退持续时间：0.6/0.7/0.8/0.9', 'http://dota2.dl.wanmei.com/dota2/video/abilities/drow_ranger_gust.mp4', '崔希丝特别中意肉搏中蕴含的静谧，因此她运用卓尔人的天赋终结敌人的魔法。', '精准光环', 'http://www.dota2.com.cn/images/heroes/abiliti', '		提高所有友方远程英雄的攻击力，提升数值是卓尔游侠敏捷值的一定百分比。施放后对所有普通单位生效，持续30秒。', '', '魔法消耗：0', '冷却时间：100', '技能:无目标\n远程攻击力增加：10%/18%/26%/34%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/drow_ranger_trueshot_aura.mp4', '崔希丝在卓尔族森林中独处的时光让她有时间教导其他弓箭手如何提高弓技。', '射手天赋', 'http://www.dota2.com.cn/images/heroes/abiliti', '		卓尔游侠的战斗经验提高了她的精确度和战斗效率，被动增加敏捷。如果400范围内有敌方英雄，敏捷加成消失。可用神杖升级。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n敏捷提升：40/60/80\n神杖升级分裂箭矢数：2\n分裂范围：375\n伤害降低：50%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/drow_ranger_marksmanship.mp4', '卓尔游侠是弓箭手登峰造极的典型。'),
(70, 70, '憎恶', 'http://www.dota2.com.cn/images/heroes/abiliti', '团的力量集中于一个目标，使它受到多次伤害并反复被眩晕。每两秒眩晕一次。', '', '魔法消耗：110/130/150/160', '冷却时间：15.0/15.0/15.0/15.0', '技能:单位目标\n伤害类型:魔法\n眩晕时间：0.25/0.5/0.75/1.0\n每次打击伤害：30/50/70/90\n眩晕次数：3/3/3/3', 'http://dota2.dl.wanmei.com/dota2/video/abilities/enigma_malefice.mp4', '奇特的重力将你的敌人核心进行拖拽，让他们动弹不得。', '恶魔转化', 'http://www.dota2.com.cn/images/heroes/abiliti', '将一个普通单位转化成三个谜团自身的碎片。这些虚灵都由谜团控制，在反复经过几次成功的攻击后，虚灵会再次分裂，并完全回复生命值。', '', '魔法消耗：170/170/170/170', '冷却时间：35.0/35.0/35.0/35.0', '技能:单位目标\n转化数量：3/3/3/3\n分裂所需攻击次数：6/6/6/6\n虚灵生命值：180/200/220/240\n虚灵攻击力：20/28/38/47\n持续时间：35.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/enigma_demonic_conversion.mp4', '谜团具备将自身的形体吸入另一个维度的能力——随之产生的就是三个追猎肉体位面的暗黑虚灵。', '午夜凋零', 'http://www.dota2.com.cn/images/heroes/abiliti', '使一块区域浸入暗共振中，对敌方单位造成他们基于最大生命值的伤害。', '', '魔法消耗：95/110/125/140', '冷却时间：35', '技能:点目标\n伤害类型:纯粹\n作用范围：550\n每秒伤害：3%/3.75%/4.5%/5.25%\n持续时间：11', 'http://dota2.dl.wanmei.com/dota2/video/abilities/enigma_midnight_pulse_creeps.mp4', '世界的一部分缓缓跌入虚空。', '黑洞', 'http://www.dota2.com.cn/images/heroes/abiliti', '施法 - 召唤一个强引力漩涡吸住敌方单位。被黑���影响的单位不能移动、攻击或施法。可用神杖升级。', '', '魔法消耗：275/325/375', '冷却时间：200.0/180.0/160.0', '技能:点目标, 持续施法\n伤害类型:纯粹\n每秒伤害：50/100/150\n作用范围：420\n持续时间：4.0/4.0/4.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/enigma_black_hole_creeps.mp4', '谜团将毁灭的终极漩涡，具有毁天灭地力量的奇点进行引导，大地因此颤抖。'),
(71, 71, '黄泉颤抖', 'http://www.dota2.com.cn/images/heroes/abiliti', '维萨吉吸取目标单位的移动和攻击速度，自身获得等量加成。', '', '魔法消耗：90', '冷却时间：16.0/14.0/12.0/10.0', '技能:单位目标\n持续时间：3.25/4.5/5.75/7.0\n移动速度吸取：32%/32%/32%/32%\n攻击速度吸取：64/64/64/64', 'http://dota2.dl.wanmei.com/dota2/video/abilities/visage_grave_chill.mp4', '温暖的阳光到了黑暗的狭窄迷宫里只剩下寒意。', '灵魂超度', 'http://www.dota2.com.cn/images/heroes/abiliti', '每次附近英雄（不论敌我）受到的伤害超过110点，维萨吉就能集聚灵魂精华的能量。将精华释放后，会对目标单位造成基础伤害，每一点集聚的能量还将造成额外伤害。', '', '魔法消耗：170/160/150/140', '冷却时间：4.0/4.0/4.0/4.0', '技能:单位目标\n伤害类型:魔法\n基础伤害：20\n每点灵魂伤害：65\n最大能量点数：3/4/5/6\n能量持续时间：6.0\n累积伤害临界值：110\n集聚伤害范围：1375', 'http://dota2.dl.wanmei.com/dota2/video/abilities/visage_soul_assumption.mp4', '收集的死者亡魂四散而去带回生魂。', '陵卫斗篷', 'http://www.dota2.com.cn/images/heroes/abiliti', '维萨吉产生数层屏障来保护他，降低受到的伤害。每当他受到来自玩家的伤害，就会失去一层屏障，失去的屏障需要一定时间才能恢复。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n最大层数：4\n每层减少伤害：8%/12%/16%/20%\n每层恢复时间：6/5/4/3\n最低伤害：50', 'http://dota2.dl.wanmei.com/dota2/video/abilities/visage_gravekeeper_s_cloak.mp4', '维萨吉坚硬的鳞片同时具有鬼魂和石像的属性，刀剑和魔法的突袭对他来说不痛不痒。', '召唤佣兽', 'http://www.dota2.com.cn/images/heroes/abiliti', '召唤2只盲眼的佣兽为维萨吉作战。佣兽拥有石像形态技能，可以化为石像，在落地时使敌人眩晕。在石像形态中的佣兽无敌，并且迅速回复生命值。佣兽被击杀时给予高额奖励。可用神杖升级。', '', '魔法消耗：150/150/150', '冷却时间：130', '技能:无目标\n生命值：400/550/700\n佣兽移动速度：430\n佣兽攻击力：30/45/60', 'http://dota2.dl.wanmei.com/dota2/video/abilities/visage_summon_familiars.mp4', '死灵飞龙的佣兽，也是狭窄迷宫的守卫，俯视着他的领地。'),
(72, 72, '狂暴', 'http://www.dota2.com.cn/images/heroes/abiliti', '进入狂暴状态，对技能免疫，获得100%魔法抗性并提升攻击速度。驱散类型：弱驱散', '', '魔法消��：75/75/75/75', '冷却时间：16', '技能:无目标\n攻击速度提升：40/50/60/70\n持续时间：3.0/4.0/5.0/6.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/lifestealer_rage.mp4', '奈克斯的疯狂和残暴使得他在战斗中异常凶狠无情。', '盛宴', 'http://www.dota2.com.cn/images/heroes/abiliti', '噬魂鬼每次攻击时还会根据目标当前生命值造成额外的伤害，同时自身回复等量的生命。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n生命吸取：4.5%/5.5%/6.5%/7.5%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/lifestealer_feast.mp4', '从德瓦克的监狱中逃离后，奈克斯就靠着吞噬那些挡路的倒霉蛋的血肉维持生命。', '撕裂伤口', 'http://www.dota2.com.cn/images/heroes/abiliti', '		噬魂鬼撕裂一个敌方单位，减缓受害者的移动速度，并使所有友军在攻击该单位时根据造成的伤害回复一定比例的生命。所有伤害都有回复效果，包括技能的伤害。受害者在持续时间内逐渐恢复移动速度。', '', '魔法消耗：140/130/120/110', '冷却时间：24/20/16/12', '技能:单位目标\n生命吸取：50%\n最大减速：70%\n持续时间：8\n施法距离：200/300/400/500', 'http://dota2.dl.wanmei.com/dota2/video/abilities/lifestealer_open_wounds.mp4', '新鲜的伤口和鲜血的芳香通常能引来那些嗜血的清道夫。', '吸收', 'http://www.dota2.com.cn/images/heroes/abiliti', '噬魂鬼吞下友方目标，使其藏于自己的体内。被吸收的单位将享受噬魂鬼的回复效果。被吸收的英雄离开噬魂鬼时会突然现身，对周围敌人造成伤害。驱散类型：强驱散', '', '魔法消耗：50', '冷却时间：50', '技能:单位目标\n伤害类型:魔法\n爆发伤害：300\n爆发范围：700/700/700', '', '噬魂鬼怎能抗拒品尝队友的机会？'),
(73, 73, '腐朽', 'http://www.dota2.com.cn/images/heroes/abiliti', '不朽尸王偷取区域内所有敌方英雄的力量，造成基础伤害并将敌人的力量据为己有。可用神杖升级。', '', '魔法消耗：70/85/100/115', '冷却时间：10.0/8.0/6.0/4.0', '技能:点目标\n伤害类型:魔法\n基础伤害：20/50/80/110\n力量偷取：4\n偷取效果持续时间：45\n作用范围：325\n神杖升级力量窃取：10', 'http://dota2.dl.wanmei.com/dota2/video/abilities/undying_decay.mp4', '生者的力量只不过是从死者那里借来的。', '噬魂', 'http://www.dota2.com.cn/images/heroes/abiliti', '不朽尸王从附近的所有单位身上扯出生命力，并使用它治疗队友或伤害敌人。可以使用噬魂治疗墓碑。', '', '魔法消耗：100/110/120/130', '冷却时间：24.0/18.0/12.0/6.0', '技能:单位目标\n伤害类型:魔法\n每个单位提供的伤害/治疗量：18/22/26/30\n有效单位数上限：10/12/14/16\n噬魂作用范围：1300\n墓碑治疗量：2/4/6/8', 'http://dota2.dl.wanmei.com/dota2/video/abilities/undying_soul_rip.mp4', '即使是友军也能从不朽尸王的存在中感受到绝望。', '墓碑', 'http://www.dota2.com.cn/images/heroes/abiliti', '在目标位置召唤一座墓碑。墓碑会不断在其附近的每个敌方单位身边产生僵尸攻击他们。僵尸拥有死亡渴望技能，使他们的攻击带有减速效果，并且若目标的生命值低于一定数值或一定百分比，僵尸的攻击和移动速度会提升。', '', '魔法消耗：120/130/140/150', '冷却时间：85/80/75/70', '技能:点目标\n摧毁所需攻击次数：4/5/6/8\n墓碑持续时间：30.0\n僵尸产生范围：1200\n死亡渴望触发生命值：100/200/300/400\n死亡渴望触发百分比：20%/25%/30%/35%\n僵尸产生间隔：4.5/4.0/3.5/3.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/undying_tombstone.mp4', '挽歌召唤他倒下的战友为死亡之神作战。', '血肉傀儡', 'http://www.dota2.com.cn/images/heroes/abiliti', '		不朽尸王变身为一具令人毛骨悚然的血肉傀儡，拥有瘟疫光环。光环对750范围内的所有敌方单位有减速效果，并加深他们受到的伤害；他们距离不朽尸王越近，受到的伤害就越多，减速效果也越大。当一个在瘟疫影响下的单位死亡时，不朽尸王会获得自己生命最大值一定比例的生命恢复。', '', '魔法消耗：100/100/100', '冷却时间：75.0/75.0/75.0', '技能:无目标\n持续时间：30\n最高伤害加深：20%/25%/30%\n最低伤害加深：1%\n最高移速减缓：20%\n最低移速减缓：1%\n死亡治疗量（英雄）：10%\n死亡治疗量（普通单位）：2%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/undying_flesh_golem.mp4', '新近死者的血肉增强了挽歌瘟疫的力量。');
INSERT INTO `hero_skill` (`hid`, `hero_id`, `skill1_title`, `skill1_pic`, `skill1_intro1`, `skill1_intro2`, `skill1_spell`, `skill1_cooling`, `skill1_effect`, `skill1_video`, `skill1_supplement`, `skill2_title`, `skill2_pic`, `skill2_intro1`, `skill21_intro2`, `skill2_spell`, `skill2_cooling`, `skill2_effect`, `skill2_video`, `skill2_supplement`, `skill3_title`, `skill3_pic`, `skill3_intro1`, `skill3_intro2`, `skill3_spell`, `skill3_cooling`, `skill3_effect`, `skill3_video`, `skill3_supplement`, `skill4_title`, `skill4_pic`, `skill4_intro1`, `skill4_intro2`, `skill4_spell`, `skill4_cooling`, `skill4_effect`, `skill4_video`, `skill4_supplement`) VALUES
(74, 74, '毁灭阴影', 'http://www.dota2.com.cn/images/heroes/abiliti', '影魔对其正前方区域释放毁灭能量，对该区域中的敌人造成伤害。在目标身上施加一个连中效果，持续时间内再被毁灭阴影击中将受到额外伤害。', '', '魔法消耗：90', '冷却时间：10', '技能:无目标\n伤害类型:魔法\n基础伤害：90/160/230/300\n距离：200\n连中额外伤害：80\n叠加持续时间：8', 'http://dota2.dl.wanmei.com/dota2/video/abilities/shadow_fiend_shadowraze.mp4', '奈文摩尔标志性的灵魂收割手段。', '毁灭阴影', 'http://www.dota2.com.cn/images/heroes/abiliti', '影魔对其正前方区域释放毁灭能量，对该区域中的敌人造成伤害。在目标身上施加一个连中效果，持续时间内再被毁灭阴影击中将受到额外伤害。', '', '魔法消耗：90', '冷却时间：10', '技能:无目标\n伤害类型:魔法\n基础伤害：90/160/230/300\n距离：450\n连中额外伤害：80\n叠加持续时间：8', 'http://dota2.dl.wanmei.com/dota2/video/abilities/shadow_fiend_shadowraze.mp4', '奈文摩尔标志性的灵魂收割手段。', '毁灭阴影', 'http://www.dota2.com.cn/images/heroes/abiliti', '影魔对其正前方区域释放毁灭能量，对该区域中的敌人造成伤害。在目标身上施加一个连中效果，持续时间内再被毁灭阴影击中将受到额外伤害。', '', '魔法消耗：90', '冷却时间：10', '技能:无目标\n伤害类型:魔法\n基础伤害：90/160/230/300\n距离：700\n连中额外伤害：80\n叠加持续时间：8', 'http://dota2.dl.wanmei.com/dota2/video/abilities/shadow_fiend_shadowraze.mp4', '奈文摩尔标志性的灵魂收割手段。', '支配死灵', 'http://www.dota2.com.cn/images/heroes/abiliti', '影魔每杀死一个单位都会窃取其灵魂，获得额外的攻击力。杀死一个英雄将获得12个灵魂。影魔死亡时一半的灵魂将逃离他的束缚。可用神杖升级。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n单个灵魂的攻击力加成：2\n灵魂上限：18/24/30/36\n神杖升级灵魂上限：22/30/38/46', 'http://dota2.dl.wanmei.com/dota2/video/abilities/shadow_fiend_necromastery.mp4', '被收割的亡魂在魂渊内外盘旋，增加了影魔的力量，也方便他扩大自己的灵魂收藏。'),
(75, 75, '波浪形态', 'http://www.dota2.com.cn/images/heroes/abiliti', '化为波浪向前涌进，对路径上的敌人造成伤害。变体精灵在波浪形态中是无敌的。', '', '魔法消耗：140/155/160/165', '冷却时间：11.0/11.0/11.0/11.0', '技能:点目标\n伤害类型:魔法', 'http://dota2.dl.wanmei.com/dota2/video/abilities/morphling_waveform_creeps.mp4', '轻松卷走敌人的滔滔洪水。', '变体攻击（敏捷）', 'http://www.dota2.com.cn/images/heroes/abiliti', '用猛烈的水波打击一个敌方单位，造成的伤害为基础伤害加上变体精灵自身敏捷值乘以伤害系数的额外伤害。如果变体精灵的敏捷比力量高50%，将造成最大伤害。', '', '魔法消耗：80', '冷却时间：10', '技能:单位目标\n伤害类型:魔法\n基础伤害：100\n伤害最低敏捷系数：0.5\n伤害最高敏捷系数：1.0/1.5/2.0/2.5\n施法距离：600/700/800/900', 'http://dota2.dl.wanmei.com/dota2/video/abilities/morphling_adaptive_strike_agility.mp4', '变体精灵唤出自身的元素，构成波浪碾碎对手。', '变体攻击（力量）', 'http://www.dota2.com.cn/images/heroes/abiliti', '用猛烈的水波打击一个敌方单位，根据变体精灵自身力量值造成眩晕和击退。如果变体精灵的力量比敏捷高50%，将造成最大眩晕。', '', '魔法消耗：80', '冷却时间：10', '技能:单位目标\n伤害类型:魔法\n最小眩晕：0.5\n最大眩晕：1.5/2.0/2.5/3.0\n最小击退距离：100\n最大击退距离：500\n施法距离：600/700/800/900', '', '变体精灵唤出自身的元素，构成波浪碾碎对手。', '属性变换（敏捷获取）', 'http://www.dota2.com.cn/images/heroes/abiliti', '		变体精灵改变它的形态，将一些力量转化成敏捷。该过程可逆。升级此技能将提高转化速率。被动获得敏捷加成。', '', '魔法消耗：0', '冷却时间：0.0', '技能:无目标\n敏捷加成：4/5/6/7\n变换速率：1/4/10/25', 'http://dota2.dl.wanmei.com/dota2/video/abilities/morphling__morph_agility_gain__new.mp4', '转变为水形态的变体精灵特征很难被辨别。'),
(76, 76, '幻象法球', 'http://www.dota2.com.cn/images/heroes/abiliti', '帕克向直线方向发出一个魔法球，对经过路径上的敌人造成伤害。在幻象法球飞行过程中，帕克可以使用灵动之翼来传送到法球所在的位置。', '', '魔法消耗：80/100/120/140', '冷却时间：14/13/12/11', '技能:点目标\n伤害类型:魔法\n最大距离：1950', 'http://dota2.dl.wanmei.com/dota2/video/abilities/puck_illusory_orb_creeps.mp4', '顽皮的仙女龙很喜欢捉弄他人，一下子消失，然后在他们想不到的地方出现。', '新月之痕', 'http://www.dota2.com.cn/images/heroes/abiliti', '帕克洒出它神秘的仙女粉尘，对周围的敌人造成伤害并使其沉默。', '', '魔法消耗：100/110/120/130', '冷却时间：16/15/14/13', '技能:无目标\n伤害类型:魔法\n作用范围：400/400/400/400\n持续时间：0.75/1.5/2.25/3.0\n伤害：100/160/220/280', 'http://dota2.dl.wanmei.com/dota2/video/abilities/puck_waning_rift_creeps.mp4', '帕克淘气地一笑，洒出中断魔法流动的附魔粉尘。', '相位转移', 'http://www.dota2.com.cn/images/heroes/abiliti', '帕克暂时将自己转移到另一个位面，从而免疫伤害。', '', '魔法消耗：0/0/0/0', '冷却时间：6', '技能:无目标, 持续施法\n持续时间：0.75/1.50/2.25/3.25', 'http://dota2.dl.wanmei.com/dota2/video/abilities/puck_phase_shift_sven.mp4', '带着嘲笑，帕克瞬间转移到了她的异维度。', '灵动之翼', 'http://www.dota2.com.cn/images/heroes/abiliti', '让帕克能传送到幻象法球所在的位置。', '', '魔法消耗：0', '冷却时间：0', '技能:无目标', 'http://dota2.dl.wanmei.com/dota2/video/abilities/puck_ethereal_jaunt.mp4', ''),
(77, 77, '隔空取物', 'http://www.dota2.com.cn/images/heroes/abiliti', '拉比克利用它的隔空取物能力，将敌人短暂抬到空中，然后猛投向地面。被投下的单位会砸晕落地点附近的敌人。', '', '魔法消耗：125', '冷却时间：22', '技能:单位目标\n滞空时间：1.5/1.75/2.0/2.25\n眩晕持续时间：1.0/1.25/1.5/1.75\n作用半径：325/325/325/325\n最大投��距离：375/375/375/375\n施法距离：550/575/600/625', 'http://dota2.dl.wanmei.com/dota2/video/abilities/rubick_telekinesis_creeps.mp4', '即使是最伟大的魔导师也会将他的力量用来娱乐。', '弱化能流', 'http://www.dota2.com.cn/images/heroes/abiliti', '拉比克制造一道强大的奥术能量流，在多个敌方单位之间流动，造成伤害并降低他们的攻击力。每次弹跳造成的伤害递减。', '', '魔法消耗：120/130/140/150', '冷却时间：16/14/12/10', '技能:单位目���\n伤害类型:魔法\n伤害：80/160/240/320\n每次跳跃伤害降低：8%\n攻击力降低（英雄单位）：20/25/30/35\n攻击力降低（普通单位）：10/13/15/17\n削弱持续时间：10.0/10.0/10.0/10.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/rubick_fade_bolt.mp4', '拉比克最喜欢用来对付那些试图刺杀他的人的法术其实是一个相当简单的咒语。', '失效力场', 'http://www.dota2.com.cn/images/heroes/abiliti', '拉比克对奥术的精通能够影响周围敌人的感知，降低他们的魔法抗性。可以在防御和进攻之间切换，选择降低敌人的魔法抗性或提升队友的魔法抗性。', '', '魔法消耗：0', '冷却时间：30', '技能:无目标\n魔法抗性加成：10%/14%/18%/22%\n作用范围：1200', 'http://dota2.dl.wanmei.com/dota2/video/abilities/rubick_null_field.mp4', '不是每一个魔导师都能成为大魔导师...', '窃取的魔法', 'http://www.dota2.com.cn/images/heroes/abiliti', '	本技能栏在使用魔法窃取获得魔法后可以使用。', '', '魔法消耗：0', '冷却时间：0', '技能:被动', '', ''),
(78, 78, '魔法箭', 'http://www.dota2.com.cn/images/heroes/abiliti', '一个敌方单位射出魔法箭，眩晕并造成伤害。', '', '魔法消耗：110/120/130/140', '冷却时间：13/12/11/10', '技能:单位目标\n伤害类型:魔法\n眩晕持续时间：1.2/1.4/1.6/1.8\n伤害：100/175/250/325', 'http://dota2.dl.wanmei.com/dota2/video/abilities/vengeful_spirit_magic_missile.mp4', '天怒一族的简单战斗技巧，魔法箭是仙德尔主要的复仇工具。', '恐怖波动', 'http://www.dota2.com.cn/images/heroes/abiliti', '复仇之魂放出邪恶的嚎叫，削弱敌人的护甲并打开前方经过路径的视野。', '', '魔法消耗：40/40/40/40', '冷却时间：10', '技能:点目标\n伤害类型:魔法\n护甲削弱：-3/-4/-5/-6\n负面状态持续时间：8\n视野持续时间：3.0/3.0/3.0/3.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/vengeful_spirit_wave_of_terror.mp4', '仙德尔那挥之不去的低语暗示着她的裁决降至。', '复仇光环', 'http://www.dota2.com.cn/images/heroes/abiliti', '复仇之魂的存在提高了附近友方单位的物理攻击力。友方英雄在复仇光环下死亡时就会产生该英雄的幻象，持续攻击导致其死亡的敌人。', '', '魔法消耗：0', '冷却时间：0', '技能:被动, 光环\n攻击提升：12%/18%/24%/30%\n作用范围：1200\n幻象攻击力：100%\n幻象持续时间：6', 'http://dota2.dl.wanmei.com/dota2/video/abilities/vengeful_spirit_vengeance_aura.mp4', '尽管其他人无法理解她对于复仇那无休止的强烈爱好，但战斗时他们还是会利用她的复仇狂热。', '移形换位', 'http://www.dota2.com.cn/images/heroes/abiliti', '与一个目标英雄瞬间交换位置，无论敌我。移形换位打断目标的持续施法。可用神杖升级。', '', '魔法消耗：100/150/200', '冷却时间：45.0', '技能:单位目标\n距离：700/950/1200\n神杖升级冷却时间：10\n神杖升级幻象继承攻击力：100%\n神杖升级幻象承受伤害：150%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/vengeful_spirit_nether_swap.mp4', '复仇有时需要一点牺牲作为小小的代价。'),
(79, 79, '粘性燃油', 'http://www.dota2.com.cn/images/heroes/abiliti', '用粘性油浸透一块区域，蝙蝠骑士的攻击和技能对区域内的敌人造成额外伤害，并降低他们的移动速度和转身速率。再次施法可以继续提高伤害，最多叠加10次。普通单位受到的额外伤害减半。', '', '魔法消耗：20/20/20/20', '冷却时间：3.0/3.0/3.0/3.0', '技能:点目标\n额外伤害：10/15/20/25\n作用范围：375/375/375/375\n持续时间：8.0/8.0/8.0/8.0\n移动速度减缓：-3%/-5%/-7%/-9%\n转身速度降低：-70%/-70%/-70%/-70%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/batrider_sticky_napalm_creeps.mp4', '蝙蝠骑士给他的对手泼燃油时，经常能听见他在喋喋不休。', '烈焰破击', 'http://www.dota2.com.cn/images/heroes/abiliti', '投掷一瓶爆炸性的混合物，到达目标地点时爆炸，击退区域内的敌人并造成持续伤害。', '', '魔法消耗：110/120/130/140', '冷却时间：17.0', '技能:点目标\n伤害类型:魔法\n每秒伤害：25/30/35/40\n烧灼持续时间：4/5/6/7\n总伤害：100/150/210/280\n作用范围：375', 'http://dota2.dl.wanmei.com/dota2/video/abilities/batrider_flamebreak_creeps.mp4', '蝙蝠骑士选择用燃烧弹作为武器。', '火焰飞行', 'http://www.dota2.com.cn/images/heroes/abiliti', '蝙蝠骑士飞向天空，从空中留下一道燃烧的尾迹。飞行时，燃烧尾迹会破坏树木，对经过的敌人造成伤害，蝙蝠骑士获得无视地形的视野和移动能力。', '', '魔法消耗：125', '冷却时间：40.0/40.0/40.0/40.0', '技能:无目标\n伤害类型:魔法\n每秒伤害：10/30/50/70\n作用范围：200/200/200/200\n持续时间：18.0/18.0/18.0/18.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/batrider_firefly_creeps.mp4', '当敌人逃进荒狱丛林时，大部分人都不得不先砍开挡道的树丛。而蝙蝠骑士却选择直接将他的敌人，连同丛林一起破坏殆尽。', '燃烧枷锁', 'http://www.dota2.com.cn/images/heroes/abiliti', '用枷锁捆住一个敌人，在蝙蝠骑士的后面拖行。无法被拖过不能通行的地形。被拖行的单位不能移动、攻击或使用技能。传送或闪烁会打破枷锁。可用神杖升级。', '', '魔法消耗：225', '冷却时间：100.0/80.0/60.0', '技能:单位目标\n持续时间：3.0/3.5/4.0\n神杖升级连抓距离：400\n神杖升级每秒伤害：100', 'http://dota2.dl.wanmei.com/dota2/video/abilities/batrider_flaming_lasso.mp4', '就算蝙蝠骑士说免费，也几乎没人敢去骑他的蝙蝠。'),
(80, 80, '麻痹药剂', 'http://www.dota2.com.cn/images/heroes/abiliti', '出一个装满麻痹粉末的木桶，在敌人中弹跳，眩晕击中的敌人并造成伤害。', '', '魔法消耗：110/120/130/140', '冷却时间：20.0/18.0/16.0/14.0', '技能:单位目标\n伤害类型:魔法\n眩晕时间（英雄单位）：1.0/1.0/1.0/1.0\n眩晕时间（普通单位）：5.0/5.0/5.0/5.0\n伤害（英雄单位）：50/50/50/50\n弹跳次数：2/4/6/8', 'http://dota2.dl.wanmei.com/dota2/video/abilities/witch_doctor_paralyzing_cask_2.mp4', '巫医回收倒下的友军和敌人的尸骨，磨成粉末用作他的符咒和炼丹术的材料。', '巫毒回复术', 'http://www.dota2.com.cn/images/heroes/abiliti', '巫医集中魔力治疗附近的友军单位。', '', '魔法消耗：20/30/40/50', '冷却时间：0.0/0.0/0.0/0.0', '技能:无目标\n每秒消耗魔法：8/12/16/20\n作用范围：500\n治疗量：16/24/32/40', 'http://dota2.dl.wanmei.com/dota2/video/abilities/witch_doctor_voodoo_restoration.mp4', '扎瓦克的药酒不仅可以用来戏弄对手，用来治疗小伤也不错。', '诅咒', 'http://www.dota2.com.cn/images/heroes/abiliti', '较小区域内所有敌方英雄施放诅咒，他们将每秒受到定额伤害，并且从诅咒开始每4秒根据失去的血量再受到爆发伤害。', '', '魔法消耗：105/110/115/120', '冷却时间：20.0', '技能:点目标\n伤害类型:魔法\n作用范围：180\n持续时间：12\n爆发伤害：16%/24%/32%/40%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/witch_doctor_maledict.mp4', '某种会让敌人后悔招惹巫医的巫毒魔法。', '死亡守卫', 'http://www.dota2.com.cn/images/heroes/abiliti', '续施法 - 召唤一个拥有克敌机先效果的死亡守卫攻击700范围内敌方英雄。最多持续8秒。可用神杖升级。', '', '魔法消耗：200/200/200', '冷却时间：80.0', '技能:点目标, 持续施法\n伤害类型:物理\n攻击力：60/105/150\n神杖升级弹射次数：4/4/4', 'http://dota2.dl.wanmei.com/dota2/video/abilities/witch_doctor_death_ward.mp4', '巫医跳起他的传统巫毒舞蹈，在生者的梦中作祟。'),
(81, 81, '时间漫游', 'http://www.dota2.com.cn/images/heroes/abiliti', '冲到目标位置，并取消最近2.0秒内受到的任何伤害。', '', '魔法消耗：40', '冷却时间：24/18/12/6', '技能:点目标\n距离：675\n回到过去持续时间：2.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/faceless_void_time_walk_sven.mp4', '暗惧者将时间撕出一个洞，穿过超维视界并瞬间重现出来。', '时间膨胀', 'http://www.dota2.com.cn/images/heroes/abiliti', '虚空假面将附近所有敌人困在一个时间膨胀场中，持续6 8 10 12秒，技能的冷却将会停止，每停止一个技能的冷却，敌人的移动和攻击速度就会降低14%。', '', '魔法消耗：75', '冷却时间：40/34/28/22', '技能:无目标\n作用范围：725\n持续时间：6/8/10/12\n每个冷却技能造成减速：14%', '', '', '时间锁定', 'http://www.dota2.com.cn/images/heroes/abiliti', '攻击有一定概率将一个敌方目标锁定在时间中，造成眩晕及额外伤害。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n伤害类型:魔法\n持续时间：1.0\n触发概率：10%/15%/20%/25%\n额外伤害：50/75/100/125', 'http://dota2.dl.wanmei.com/dota2/video/abilities/faceless_void_time_lock.mp4', '虚空假面的突袭伴随着维度转移之力。', '时间结界', 'http://www.dota2.com.cn/images/heroes/abiliti', '在时空中创造一个泡状遮罩，将所有位于其中的单位定住，并使虚空假面在其内部来去自如。只有虚空假面和他控制的单位不受影响。在其中的隐身单位会显形。可用神杖升级。', '', '魔法消耗：150/225/300', '冷却时间：140.0/125.0/110.0', '技能:点目标\n作用范围：425\n持续时间：4.0/4.5/5.0\n神杖升级冷却时间：60', 'http://dota2.dl.wanmei.com/dota2/video/abilities/faceless_void_chronosphere_sven.mp4', '当超维视界的裂隙突现之时，所有不幸被其困住的可怜灵魂都将万劫不复。'),
(82, 82, '冲击波', 'http://www.dota2.com.cn/images/heroes/abiliti', '攒光的能量，积攒时间越长，威力越大。释放后，光波沿直线发出，造成伤害并打开视野。可用神杖升级。', '', '魔法消耗：150/160/170/180', '冷却时间：10.0/10.0/10.0/10.0', '技能:点目标, 持续施法\n伤害类型:魔法\n每秒积聚伤害：100.0/100.0/100.0/100.0\n最大积聚时间：2.0/3.0/4.0/5.0\n宽度：375\n射程：1550\n总伤害：200/300/400/500', 'http://dota2.dl.wanmei.com/dota2/video/abilities/keeper_of_the_light_illuminate.mp4', '伊扎洛深藏的光芒显现之时璀璨夺目。', '法力流失', 'http://www.dota2.com.cn/images/heroes/abiliti', '削弱敌人的魔法精华，使他们在移动时损失魔法。如果敌人损失了全部的魔法值，他将被眩晕。', '', '魔法消耗：160', '冷却时间：16/14/12/10', '技能:单位目标\n流失持续时间：4.0/5.0/6.0/7.0\n魔法流失百分比：5.0%\n眩晕持续时间：1.5/2.0/2.5/3.0\n施法距离：400/500/600/700', 'http://dota2.dl.wanmei.com/dota2/video/abilities/keeper_of_the_light_mana_leak.mp4', '伊扎洛打破本源的协调，耗尽那些可怜的构造体身上的魔法能量。', '查克拉魔法', 'http://www.dota2.com.cn/images/heroes/abiliti', '	恢复目标单位的魔法值，提升魔法上限并减少下一个技能施放后的冷却时间。', '', '魔法消耗：25/35/45/55', '冷却时间：17/16/15/14', '技能:单位目标\n魔法回复：75/150/225/300\n友军冷却时间减少：3/4/5/6\n冷却时间减少效果持续时间：15', 'http://dota2.dl.wanmei.com/dota2/video/abilities/keeper_of_the_light_chakra_magic.mp4', '通过同样的渠道，伊扎洛将他的协调授予他人。', '召回', 'http://www.dota2.com.cn/images/heroes/abiliti', '延迟后，将目标友方英雄传送到你的位置。如果在此期间，目标友方英雄受到来自玩家的伤害，召回将被打断。', '', '魔法消耗：100/100/100', '冷却时间：15', '技能:点目标, 持续施法, 单位目标 , 无目标\n传送延迟：5.0/4.0/3.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/keeper_of_the_light_recall.mp4', '朝着光明前行。'),
(83, 83, '暗影突袭', 'http://www.dota2.com.cn/images/heroes/abiliti', '		猛投一把淬毒匕首造成大量初始伤害，并造成3秒一次的后续伤害。中毒单位移动速度降低15秒。', '', '魔法消耗：110', '冷却时间：16.0/12.0/8.0/4.0', '技能:单位目标\n伤害类型:魔法\n初始伤害：50/75/100/125\n每次伤害：30/45/60/75\n移动速度减缓：-20%/-30%/-40%/-50%\n施法距离：450/500/550/600\n持续时间：15', 'http://dota2.dl.wanmei.com/dota2/video/abilities/queen_of_pain_shadow_strike.mp4', '阿卡莎的淬毒匕首让她从受害者的痛苦中得到愉悦。', '闪烁', 'http://www.dota2.com.cn/images/heroes/abiliti', '让痛苦女王自由出入战场的短距离传送。', '', '魔法消耗：60/60/60/60', '冷却时间：15.0/12.0/9.0/6.0', '技能:点目标\n距离：1300', 'http://dota2.dl.wanmei.com/dota2/video/abilities/anti-mage_blink.mp4', '痛苦女王得名的秘密，你无法从她的痛苦逃脱。', '痛苦尖叫', 'http://www.dota2.com.cn/images/heroes/abiliti', '		痛苦女王发出刺耳的尖叫，对周围敌人造成伤害。', '', '魔法消耗：110/120/130/140', '冷却时间：7.0/7.0/7.0/7.0', '技能:无目标\n伤害类型:魔法\n作用范围：475', 'http://dota2.dl.wanmei.com/dota2/video/abilities/queen_of_pain_scream_of_pain.mp4', '阿卡莎那魅惑的声音吸引着敌人的同时也在偷取他们的灵魂。', '超声冲击波', 'http://www.dota2.com.cn/images/heroes/abiliti', '			痛苦女王在她面前制造出强大的声波，对其轨迹上的所有敌人造成大量伤害。可用神杖升级。', '', '魔法消耗：250/360/500', '冷却时间：135/135/135', '技能:点目标\n伤害类型:纯粹\n声波最大范围：450\n伤害：290/380/470\n神杖升级冷却时间：40\n神杖升级伤害：325/440/555', 'http://dota2.dl.wanmei.com/dota2/video/abilities/queen_of_pain_sonic_wave_creeps.mp4', '她最为剧烈的折磨，阿卡莎的超声冲击波让她可怜的敌人从痛苦中得到解脱。'),
(84, 84, '乱流', 'http://www.dota2.com.cn/images/heroes/abiliti', '将不稳定的涡流能量灌注到落单敌人体内，减缓其移动速度并造成持续伤害。如目标周围有其他敌方单位 ，则效果暂时消失。', '', '魔法消耗：75', '冷却时间：18.0', '技能:单位目标\n伤害类型:魔法\n持续时间：6.0\n每秒伤害：15/30/45/60\n友军搜寻范围：225\n移动速度减缓：20%/30%/40%/50%\n施法距离：500/600/700/800', '', '囚禁遗迹之力的无穷小碎片。', '磁场', 'http://www.dota2.com.cn/images/heroes/abiliti', '制造一个充满磁能的圆形扭曲力场，为力场中的友方英雄及建筑提供攻击速度加成，使其闪避来自磁场外的攻击。', '', '魔法消耗：80/90/100/110', '冷却时间：35/30/25/20', '技能:点目标\n作用范围：275\n持续时间：3.5/4.5/5.5/6.5\n攻击速度加成：50/60/70/80\n闪避加成：100%', '', '时间与空间对于古老如泽特之人实在是无足轻重。', '闪光幽魂', 'http://www.dota2.com.cn/images/heroes/abiliti', '		召唤一个缓慢实体化的闪光怨灵萦绕在目标区域。一旦有敌方单位进入范围，怨灵将贴近敌人自我熔化并造成魔法伤害，同时使目标减速。', '', '魔法消耗：80', '冷却时间：4.0/4.0/4.0/4.0', '技能:点目标\n伤害类型:魔法\n搜寻范围：375\n启动延迟：2.0\n持续时间：50\n幽魂速度：400\n伤害：100/160/220/280\n减速持续时间：0.4/0.5/0.6/0.7', '', '泽特原始自我的低级碎片。', '风暴双雄', 'http://www.dota2.com.cn/images/heroes/abiliti', '		天穹守望者将破碎的自我汇聚到一起，创造出自身的完美电子复制体。复制体可以使用天穹守望者的当前所有物品和技能，消耗品以及死亡时掉落的物品除外。复制体的物品和技能冷却时间会独立计算。', '', '魔法消耗：0', '冷却时间：60/50/40', '技能:无目标\n持续时间：14/16/18', '', '被同类的力量扭曲后，天穹守望者变成了自己最为不齿的：大分裂。'),
(85, 85, '雷霆之击', 'http://www.dota2.com.cn/images/heroes/abiliti', '用闪电反复打击目标单位。每次打击会伤害附近小范围内的敌方单位。提供目标的视野。', '', '魔法消耗：130/130/130/130', '冷却时间：12/11/10/9', '技能:单位目标\n伤害类型:魔法\n作用范围：240/240/240/240\n打击次数：4/4/4/4\n打击间隔：2.0/2.0/2.0/2.0\n打击伤害：40/60/80/100', 'http://dota2.dl.wanmei.com/dota2/video/abilities/disruptor_thunder_strike.mp4', '干扰者的充能线圈有时会超负荷，然后他的敌人就只剩一块烤焦的盔甲碎片或者一簇毛皮了。', '恶念瞥视', 'http://www.dota2.com.cn/images/heroes/abiliti', '将目标英雄传送回他4秒前所在位置。瞬间杀死幻象单位。', '', '魔法消耗：100', '冷却时间：60.0/46.0/32.0/18.0', '技能:单位目标\n施法距离：600/1000/1400/1800', 'http://dota2.dl.wanmei.com/dota2/video/abilities/disruptor_glimpse.mp4', '对电流的把玩能产生出人意料的结果。', '动能力场', 'http://www.dota2.com.cn/images/heroes/abiliti', '在短暂的构造时间后，创造一个敌人无法通过的环形动能屏障。', '', '魔法消耗：70/70/70/70', '冷却时间：13/12/11/10', '技能:点目标\n作用范围：340\n成形延迟：1.2/1.2/1.2/1.2\n持续时间：2.6/3.2/3.8/4.4', 'http://dota2.dl.wanmei.com/dota2/video/abilities/disruptor_kinetic_field.mp4', '干扰者的坐骑不会受到那摧残敌人的狂风的影响。', '静态风暴', 'http://www.dota2.com.cn/images/heroes/abiliti', '创造一场静态风暴，在持续时间内伤害并沉默区域内的所有敌方单位。伤害刚开始时很低，但会在持续时间内逐渐增强。可用神杖升级。', '', '魔法消耗：125/175/225', '冷却时间：90/80/70', '技能:点目标\n伤害类型:魔法\n作用范围：450\n伤害波数：20\n最大每秒伤害：200/250/300\n持续时间：5.0\n神杖升级持续时间：7.0\n神杖升级伤害波数：28', 'http://dota2.dl.wanmei.com/dota2/video/abilities/disruptor_static_storm.mp4', '只有高地人能从杜鲁德大草原上的夏日风暴中幸存。'),
(86, 86, '月光', 'http://www.dota2.com.cn/images/heroes/abiliti', '召唤一道月能的光束打击敌人，造成伤害并短暂眩晕目标。', '', '魔法消耗：90/100/110/120', '冷却时间：6.0/6.0/6.0/6.0', '技能:单位目标\n伤害类型:魔法\n眩晕时间：0.8\n月光伤害：75/150/225/300', 'http://dota2.dl.wanmei.com/dota2/video/abilities/luna_lucent_beam.mp4', '那些侵犯银夜森林的家伙会受到赛莉蒙妮的毁灭打击。', '月刃', 'http://www.dota2.com.cn/images/heroes/abiliti', '强化露娜的月刃，使其攻击可以在敌方单位之间弹跳。每次弹跳造成的��害都会减少。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n弹跳范围：500\n弹射次数：1/2/3/6\n弹跳伤害衰减：35%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/luna_moon_glaive.mp4', '露娜精心打磨过的回旋镖型武器可以从大群敌人中杀出一条血路。', '月之祝福', 'http://www.dota2.com.cn/images/heroes/abiliti', '		提升露娜和附近友方英雄的攻击力，而露娜受到福佑后夜间视野上升。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n福佑作用范围：900/900/900/900\n攻击力加成：14/22/30/38\n额外夜间视野：250/500/750/1000', 'http://dota2.dl.wanmei.com/dota2/video/abilities/luna_lunar_blessing.mp4', '月之女神对她的族人微笑。', '月蚀', 'http://www.dota2.com.cn/images/heroes/abiliti', '召唤一次月蚀，以她当前技能等级的月光随机打击附近敌人。月光只有伤害效果，不会造成眩晕，而且单一目标只能受到有限次数的打击。月蚀会暂时将白天变为黑夜，持续10秒。可用神杖升级。', '', '魔法消耗：150/200/250', '冷却时间：140.0', '技能:无目标\n伤害类型:魔法\n月光数量：5/8/11\n最大单体打击次数：5\n月蚀持续时间：2.4/4.2/6.0\n作用范围：675/675/675\n神杖升级月光数量：6/12/18\n神杖升级持续时间：1.8/3.6/5.4\n神杖升级施法距离：2500', 'http://dota2.dl.wanmei.com/dota2/video/abilities/luna_eclipse.mp4', '在急需其帮助的时候，赛莉蒙妮亲自降临世间，遮蔽照向敌人的光芒，以及他们的希望。'),
(87, 87, '守卫冲刺', 'http://www.dota2.com.cn/images/heroes/abiliti', '斯拉达向前蜿行，移动速度得到显著提升，并且可以穿越单位，但受到更多伤害。技能达到4级时，斯拉达在河道的移动速度为700。', '', '魔法消耗：0', '冷却时间：17', '技能:无目标\n移动速度加成：20%/28%/36%/44%\n受到额外伤害：15%\n持续时间：12', 'http://dota2.dl.wanmei.com/dota2/video/abilities/slardar_sprint.mp4', '斯拉达从深海来到陆地后，发现有必要用强有力的尾巴冲刺来代替游泳。', '鱼人碎击', 'http://www.dota2.com.cn/images/heroes/abiliti', '猛击地面，对附近地面单位造成伤害并眩晕。眩晕结束后还会受到减速。', '', '魔法消耗：80/95/105/115', '冷却时间：8', '技能:无目标\n伤害类型:物理\n作用范围：350\n移动速度减缓：-20%\n攻击速度降低：-20\n减速持续时间：2.0\n眩晕时间：1.25/1.5/1.75/2.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/slardar_slithreen_crush_creeps.mp4', '强力的快速碎击，溅起的水浪打破最坚固的防御。', '深海重击', 'http://www.dota2.com.cn/images/heroes/abiliti', '攻击有一定概率造成额外伤害并眩晕敌人。对普通单位的眩晕时间加倍。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n伤害类型:物理\n概率：10%/15%/20%/25%\n额外伤害：60/80/100/120\n眩晕时间：1.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/slardar_bash.mp4', '偷窃深海宝藏的盗贼在战斗中遭遇到鱼人守卫的残暴之力。', '侵蚀雾霭', 'http://www.dota2.com.cn/images/heroes/abiliti', '削弱敌人的护甲，加深他受到的物理伤害，同时提供目标的真实视域，显示隐身单位。', '', '魔法消耗：25', '冷却时间：5', '技能:单位目标\n护甲削弱：-10/-15/-20\n持续时间：18', 'http://dota2.dl.wanmei.com/dota2/video/abilities/slardar_amplify_damage.mp4', '即使是最坚硬的铠甲，一旦遇到海水也是不堪一击。'),
(88, 88, '巨石冲击', 'http://www.dota2.com.cn/images/heroes/abiliti', '大地之灵将敌方单位或友方单位作为目标，将其击飞，目标将沿他面朝的方向飞行一段距离。如果大地之灵点地为目标，他将击飞200范围内距离最近的残岩。击飞过程中目标对碰到的所有单位都会造成伤害。如果目标是残岩，被击飞的距离也将加长，而受到伤害的单位还将被眩晕。', '', '魔法消耗：100', '冷却时间：22.0/18.0/14.0/10.0', '技能:点目标, 单位目标 \n伤害类型:魔法\n冲击残岩范围：200\n伤害：50/100/150/200\n眩晕持续时间：0.75/1.25/1.75/2.25\n行进速度：900\n击飞距离：500.0/600.0/700.0/800.0\n击飞距离（对残岩）：2000.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/earth_spirit_boulder_smash_d.mp4', '大地之灵的一招一式都蕴含着移山之力。', '巨石翻滚', 'http://www.dota2.com.cn/images/heroes/abiliti', '大地之灵化身为巨石，经过0.6秒延迟后沿目标位置翻滚，对经过的敌人造成伤害，如果撞到敌方英雄或自身被眩晕，翻滚都会中止。如果翻滚过程中经过残岩将会大幅提高翻滚距离和速度，被撞的敌人将受到更多伤害，其移动速度将被降低。', '', '魔法消耗：50', '冷却时间：16.0/12.0/8.0/4.0', '技能:点目标\n伤害类型:魔法\n速度：800\n速度（经过残岩）：1600\n距离：800.0\n距离（经过残岩）：1600.0\n伤害：100\n移动速度减缓：80%\n减速持续时间：0.8/1.2/1.6/2.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/earth_spirit_rolling_boulder_a.mp4', '大地之灵将自己与大地紧密结合，使松散的石块吸附到身上，从而组成一个防护圆球向前滚动。', '地磁之握', 'http://www.dota2.com.cn/images/heroes/abiliti', '大地之灵将残岩拉扯到自己所在的位置，行进路径上被击中的敌人都会被沉默并受到伤害。', '', '魔法消耗：100', '冷却时间：13', '技能:点目标, 单位目标 \n伤害类型:魔法\n沉默持续时间：2.0/2.5/3/3.5\n英雄拉扯速度：600\n残岩伤害：50/100/150/200\n残岩拉扯速度：1000', 'http://dota2.dl.wanmei.com/dota2/video/abilities/earth_spirit_geomagnetic_grip_b.mp4', '异性相吸。即使是深藏于鲜血和骨头中的矿物都不能免疫大地之灵的呼唤。', '残岩', 'http://www.dota2.com.cn/images/heroes/abiliti', '定位置召唤一枚巨石残岩。残岩没有视野，不能被摧毁，残岩可以加强大地之灵的技能效果。召唤残岩需要消耗能量，能量将慢慢恢复。', '', '魔法消耗：0', '冷却时间：0.0', '技能:点目标\n最大能量：6\n每点能量恢复时间：30.0\n持续时间：120.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/earth_spirit_stone_remnant.mp4', '大地之灵唤出的残岩源自与他一同在大地黑暗的怀抱下埋藏多年的兵马俑。'),
(89, 89, '瘴气', 'http://www.dota2.com.cn/images/heroes/abiliti', '沿直线射出一个毒液球，碰到的敌人受到初始伤害和持续伤害，并受到减速效果影响。瘴气在持续时间内每3秒造成一次持续伤害。', '', '魔法消耗：125', '冷却时间：21/20/19/18', '技能:点目标\n伤害类型:魔法\n持续时间：15.0/15.0/15.0/15.0\n初始伤害：25/50/75/100\n每次伤害：10/40/70/100\n移动速度减缓：-50%/-50%/-50%/-50%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/venomancer_venomous_gale.mp4', '一种由基迪岛丛林里搜集的各种毒针、毒液和毒素混合而成的药剂，几乎没有人能在沾到它后存活下来。', '毒刺', 'http://www.dota2.com.cn/images/heroes/abiliti', '在剧毒术士的普通攻击中加入毒性伤害，可以减缓敌人的移动速度。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n伤害类型:魔法\n持续时间：6.0/9.0/12.0/15.0\n每秒伤害：6/14/22/30\n移动速度减缓：-11%/-12%/-13%/-14%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/venomancer_poison_sting.mp4', '造成了他变异的那个生物的麻痹毒刺，现在属于剧毒术士了。', '瘟疫守卫', 'http://www.dota2.com.cn/images/heroes/abiliti', '		召唤一个瘟疫守卫来攻击敌方单位和建筑。守卫对魔法免疫。守卫拥有毒刺攻击，效果与毒刺技能的当前等级相同，造成50%的原技能伤害。', '', '魔法消耗：20/20/20/20', '冷却时间：5.0', '技能:点目标\n伤害类型:物理\n持续时间：40.0\n守卫生命值：75/200/325/450\n守卫攻击力：13/22/31/40', 'http://dota2.dl.wanmei.com/dota2/video/abilities/venomancer_plague_ward.mp4', '他通过将早先的草药学天赋，和后天获得的毒素专精混合起来，创造出一个活体化瘟疫。', '剧毒新星', 'http://www.dota2.com.cn/images/heroes/abiliti', '		施放一个剧毒之环，对剧毒术士周围的敌方单位造成持续伤害。剧毒新星的效果不能致死；目标的生命值最低降至1点。可用神杖升级。', '', '魔法消耗：200/300/400', '冷却时间：140.0/120.0/100.0', '技能:无目标\n伤害类型:魔法\n作用范围：830\n持续时间：16\n伤害：30/55/80\n神杖升级冷却时间：140.0/120.0/60.0\n神杖升级伤害：60/85/110', 'http://dota2.dl.wanmei.com/dota2/video/abilities/venomancer_poison_nova.mp4', '浓酸丛林中的生物通常会对攻击者释放毒性瘴气来保命；而剧毒术士却将这种瘟疫扩散出基迪岛。'),
(90, 90, '洗礼', 'http://www.dota2.com.cn/images/heroes/abiliti', '立即治疗���个友方单位，并对周围的敌军造成伤害。', '', '魔法消耗：85/100/115/130', '冷却时间：11/10/9/8', '技能:单位目标\n伤害类型:纯粹\n治疗/伤害：90/160/230/300\n伤害作用范围：260', 'http://dota2.dl.wanmei.com/dota2/video/abilities/omniknight_purification_a_.mp4', '全知的牧师们善于清除己方战士们身心中的污杂。', '驱逐', 'http://www.dota2.com.cn/images/heroes/abiliti', '创造出一个神圣守卫环绕目标，使目标获得技能免疫状态和100%的魔法抗性。驱散类型：弱驱散', '', '魔法消耗：50/50/50/50', '冷却时间：30/26/22/18', '技能:单位目标\n持续时间：4/5/6/7', 'http://dota2.dl.wanmei.com/dota2/video/abilities/omniknight_repel.mp4', '当面对着牺牲之渊时，普里斯特对魔法的适应力得到了测试和证实。', '退化光环', 'http://www.dota2.com.cn/images/heroes/abiliti', '		极大程度的减缓附近敌人的移动速度和攻击速度。', '', '魔法消耗：0', '冷却时间：0', '技能:被动, 光环\n移动速度减缓：-10%/-18%/-26%/-34%\n攻击速度降低：-10/-18/-26/-34\n作用范围：300', 'http://dota2.dl.wanmei.com/dota2/video/abilities/omniknight_degenaura.mp4', '作为神圣的化身，普里斯特．雷霆之怒足以削弱那些不忠之徒。', '守护天使', 'http://www.dota2.com.cn/images/heroes/abiliti', '		全能骑士召唤出守护天使，使附近的友方单位对物理伤害免疫。可用神杖升级。', '', '魔法消耗：125/175/250', '冷却时间：160', '技能:无目标\n持续时间：6.0/7.0/8.0\n作用范围：600\n神杖升级持续时间：8.0/9.0/10.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/omniknight_guardian_cast.mp4', '全知之主对那些被普利斯特称为“朋友”的人降下保护结界。'),
(91, 91, '虫群', 'http://www.dota2.com.cn/images/heroes/abiliti', '编织者放出12只编织者幼虫，每只幼虫都会紧紧缠住它遇到的敌人，攻击敌人并削弱他们的护甲，直到幼虫被杀死。', '', '魔法消耗：70/80/90/100', '冷却时间：35/30/25/20', '技能:点目标\n伤害类型:物理\n甲虫攻击力：14/16/18/20\n攻击频率：1.25/1.1/0.95/0.8\n数量：12/12/12/12\n护甲削弱：1/1/1/1\n持续时间：16\n甲虫可承受攻击次数：8/8/8/8', 'http://dota2.dl.wanmei.com/dota2/video/abilities/weaver_the_swarm_creeps.mp4', '斯吉茨格尔打开时空之纱的缺口，让编织者幼虫穿越而出，帮助他战斗。', '缩地', 'http://www.dota2.com.cn/images/heroes/abiliti', '编织者进入隐身，移动速度达到极限，并且能穿行肉体，在穿过敌方单位时还将造成伤害。', '', '魔法消耗：60/60/60/60', '冷却时间：12.0/10.0/8.0/6.0', '技能:无目标\n伤害类型:魔法\n伤害：75/100/125/150\n作用范围：175/175/175/175\n进入隐身时间：0.25/0.25/0.25/0.25\n持续时间：4.0/4.0/4.0/4.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/weaver_shukuchi_running.mp4', '编织者曾为创世之纱工作，小小的虫洞让他们可以穿越时间来更好的发挥他们的手艺。', '连击', 'http://www.dota2.com.cn/images/heroes/abiliti', '允许编织者立刻发动两次攻击。', '', '魔法消耗：0', '冷却时间：7.0/6.0/5.0/3.0', '技能:被动', 'http://dota2.dl.wanmei.com/dota2/video/abilities/weaver_geminate_attack.mp4', '斯吉茨格尔与时间有着多变的联系，使他的动作被看到和感受到，不止一次。', '时光倒流', 'http://www.dota2.com.cn/images/heroes/abiliti', '		编织者回到五秒前的时间点，获得当时的生命值和魔法值。不影响冷却时间、金钱和经验。可用神杖升级。驱散类型：强驱散', '', '魔法消耗：150/75/0', '冷却时间：60/50/40', '技能:无目标\n神杖升级冷却时间：16\n神杖升级对队友施法距离：1000', 'http://dota2.dl.wanmei.com/dota2/video/abilities/weaver_time_lapse.mp4', '如果斯吉茨格尔认为世界当前的现实与他所渴望的不合，他就爬回过去的时间点来纠正错误。'),
(92, 92, '法力损毁', 'http://www.dota2.com.cn/images/heroes/abiliti', '		每次攻击损毁目标一定量的魔法值，并额外造成相当于损毁魔法值50%的伤害。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n伤害类型:物理\n每次攻击损毁魔法：28/40/52/64', 'http://dota2.dl.wanmei.com/dota2/video/abilities/anti-mage_mana_break.mp4', '一种格斗技巧，改良自星隐寺僧侣们的温和招式，可以让魔法能量反噬其拥有者。', '闪烁', 'http://www.dota2.com.cn/images/heroes/abiliti', '让敌法师自由出入战场的短距离传送。', '', '魔法消耗：60', '冷却时间：15/12/9/6', '技能:点目标\n距离：925/1000/1075/1150', 'http://dota2.dl.wanmei.com/dota2/video/abilities/anti-mage_blink.mp4', '在与死亡之神遭遇时，敌法师明白了让人捉摸不定是多么重要。', '法术护盾', 'http://www.dota2.com.cn/images/heroes/abiliti', '		提高敌法师的魔法抗性。可用神杖升级。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n抗性：20%/30%/40%/50%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/anti-mage_spell_shield.mp4', '多年的冥想和对复仇的执着强化了敌法师的皮肤，可以更好地抵御神秘的对手。', '法力虚空', 'http://www.dota2.com.cn/images/heroes/abiliti', '		根据目标损失的魔法值，对目标和其周围的敌人造成伤害。主要目标受到短暂眩晕。', '', '魔法消耗：125/200/275', '冷却时间：70.0/70.0/70.0', '技能:单位目标\n伤害类型:魔法\n伤害：0.6/0.85/1.1\n眩晕时间：0.3\n作用范围：500', 'http://dota2.dl.wanmei.com/dota2/video/abilities/anti-mage_mana_void.mp4', '敌人倒下之后，将因使用奥术而受到敌法师的惩戒。'),
(93, 93, '火焰风暴', 'http://www.dota2.com.cn/images/heroes/abiliti', '召唤数波火焰风暴攻击目标区域内的所有单位，风暴还有后续伤害。', '', '魔法消耗：100/110/120/130', '冷却时间：12.0', '技能:点目标\n伤害类型:魔法\n作用范围：400\n风暴波数：6\n每波伤害：25/40/55/70\n每波间隔：1.0\n烧灼最大生命值百分比：1%/2%/3%/4%\n灼烧持续时间：2.0', '', '征战的烈焰从深渊最黑暗的深处向外迸发。', '怨念深渊', 'http://www.dota2.com.cn/images/heroes/abiliti', '在目标区域制造致命的深渊；踏入深渊的敌方单位将被缠绕。每个敌方单位每隔3.6秒都会再次受到作用。', '', '魔法消耗：100/115/130/145', '冷却时间：32/28/24/20', '技能:点目标\n伤害类型:魔法\n作用范围：375\n深渊持续时间：12.0\n控制间隔：3.6\n控制持续时间：0.9/1.2/1.5/1.8', '', '扭曲成现实本身的接缝，维洛格罗斯昭然的仇恨让蔑视他意志的人动弹不得。', '衰退光环', 'http://www.dota2.com.cn/images/heroes/abiliti', '周围所有敌方单位遭到了削弱，损失部分基础攻击力。如果敌人在光环范围内死亡，孽主将获得额外攻击力加成。可用神杖升级。', '', '魔法消耗：0', '冷却时间：0', '技能:被动, 光环\n作用范围：900\n基础攻击力降低：7%/18%/29%/40%\n额外攻击力（小兵死亡）：5\n额外攻击力（英雄死亡）：30/35/40/45\n持续时间：30/40/50/60', '', '光是站在孽主面前就能感受到自己的战意从灵魂里被榨干。', '黑暗之门', 'http://www.dota2.com.cn/images/heroes/abiliti', '以友方单位作为目标地点打开黑暗的大门。经过短暂的延迟，孽主和附近所有友方英雄都将传送至目标地点。 黑暗之门在传送生效前可以取消。如果在技能生效前取消，或者目标单位死亡，黑暗之门都会进入冷却。', '', '魔法消耗：75/150/225', '冷却时间：130/120/110', '技能:点目标, 单位目标 \n传送作用范围：600\n传送延迟：6.0/5.0/4.0', '', '他们的到来全无征兆，王国曾经繁荣的地方只剩下烈火和血海。'),
(94, 94, '冰', 'http://www.dota2.com.cn/images/heroes/abiliti', '允许祈求者掌控冰元素。 每一点冰元素都将提供生命恢复速度加成。', '', '魔法消耗：0', '冷却时间：0', '技能:无目标\n单个元素恢复加成：1/3/5/7/9/11/13', '', '', '雷', 'http://www.dota2.com.cn/images/heroes/abiliti', '允许祈求者掌控雷元素。 每一点雷元素均提供攻击速度和移动速度加成。', '', '魔法消耗：0', '冷却时间：0', '技能:无目标\n单个元素攻速加成：2/4/6/8/10/12/14\n单个元素移速加成：1%/2%/3%/4%/5%/6%/7%', '', '', '火', 'http://www.dota2.com.cn/images/heroes/abiliti', '允许祈求者掌控火元素。每一点火元素提升一定的攻击力。', '', '魔法消耗：0', '冷却时间：0', '技能:无目标\n单个元素攻击力加成：4/8/12/16/20/24/28', '', '', '祈唤技能', 'http://www.dota2.com.cn/images/heroes/abiliti', '			施放元素祈唤后本技能栏会变成对应祈求者当前的冰、雷和火元素状态的十大技能之一。', '', '魔法消耗：0', '冷却时间：0', '技能:被动', '', ''),
(95, 95, '迷雾缠绕', 'http://www.dota2.com.cn/images/heroes/abiliti', '亚巴顿以部分生命为代价，释放带有死亡气息的迷雾缠绕伤害敌方单位或治疗友方单位。', '', '魔法消耗：50/60/70/80', '冷却时间：4.5', '技能:单位目标\n伤害类型:魔法\n对自身伤害：75/100/125/150\n伤害/治疗：100/150/200/250', 'http://dota2.dl.wanmei.com/dota2/video/abilities/abaddon_1.mp4', '亚巴顿的气息中充盈着来自魔霭圣池的神秘之汽，他能随意将其释放。', '无光之盾', 'http://www.dota2.com.cn/images/heroes/abiliti', '召唤黑暗能量环绕友方单位，创造一个护盾，护盾在消失前能吸收一定量的伤害。护盾被摧毁后，它会将之前吸收的伤害反馈给周围的敌方单位。施放时移除目标身上的负面魔法效果。驱散类型：强驱散', '', '魔法消耗：115', '冷却时间：12.0/10.0/8.0/6.0', '技能:单位目标\n持续时间：15.0\n最大伤害吸收量：110/140/170/200\n爆炸作用范围：675', 'http://dota2.dl.wanmei.com/dota2/video/abilities/abaddon_2.mp4', '升腾的黑雾将敌人的招数一一吞噬，如同吞噬日光。', '魔霭诅咒', 'http://www.dota2.com.cn/images/heroes/abiliti', '亚巴顿的攻击中带有寒心诅咒，受到攻击的敌人将被减速，同时所有攻击被减速目标的单位将提升移动速度和攻击速度，持续一定时间。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n减速持续时间：2.5\n加速持续时间：4.5\n移动速度减缓：8%/12%/16%/20%\n攻击速度降低：8/12/16/20\n移动速度加成：15%\n攻击速度加成：10/20/30/40', 'http://dota2.dl.wanmei.com/dota2/video/abilities/abaddon_3.mp4', '缓敌之咒，捷己之语。', '回光返照', 'http://www.dota2.com.cn/images/heroes/abiliti', '启动后所有受到的伤害转而治疗你，启动时还将移除大部分的负面效果。只要技能不在冷却过程中，在生命值低于400点时技能会自动启动。可用神杖升级。驱散类型：强驱散', '', '魔法消耗：0/0/0', '冷却时间：60.0/50.0/40.0', '技能:无目标\n生命临界值：400\n持续时间：4.0/5.0/6.0\n神杖升级持续时间：5.0/6.0/7.0\n神杖升级伤害转移：50%\n神杖升级伤害转移范围：900', 'http://dota2.dl.wanmei.com/dota2/video/abilities/abaddon_4.mp4', '魔霭圣池中最为扭曲的馈赠，凡人对死亡的认知在此力量前显得异常可笑。敌之尖刀，我之伤药；死地后生，回光返照。'),
(96, 96, '真空', 'http://www.dota2.com.cn/images/heroes/abiliti', '贤者在目标区域制造一个真空环境，将周围的敌方单位吸入，具有打断效果并造成伤害。', '', '魔法消耗：100/130/160/190', '冷却时间：32', '技能:点目标\n伤害类型:魔法\n作用范围：250/350/450/550\n伤害：40/80/120/160', 'http://dota2.dl.wanmei.com/dota2/video/abilities/dark_seer_vacuum_creeps2.mp4', '依什卡菲尔能随心所欲的改变某一地区的引力。', '离子外壳', 'http://www.dota2.com.cn/images/heroes/abiliti', '将目标用一面尖刺之盾包围起来，对周围的敌人造成伤害。', '', '魔法消耗：100/110/120/130', '冷却时间：9', '技能:单位目标\n伤害类型:魔法\n作用范围：250\n每秒伤害：30/50/70/90\n持续时间：25', 'http://dota2.dl.wanmei.com/dota2/video/abilities/dark_seer_ion_shell_creeps.mp4', '黑暗贤者打通“幻墙之末”，让其中的光棱力量渗透出来。', '奔腾', 'http://www.dota2.com.cn/images/heroes/abiliti', '个友方目标注入能量，使其在短时间内移动速度达到最高。', '', '魔法消耗：50', '冷却时间：13/12/11/10', '技能:单位目标\n持续时间：3.0/4.5/6.0/7.5', 'http://dota2.dl.wanmei.com/dota2/video/abilities/dark_seer_surge_running.mp4', '依什卡菲尔曾经用他心智之神速来在幻墙之间辨明方向。', '复制之墙', 'http://www.dota2.com.cn/images/heroes/abiliti', '制造一堵扭曲的光墙，对穿过的敌方英雄造成减速，并复制一个其自身的幻象，幻象由黑暗贤者控制，持续到光墙消失，或者被敌人消灭。可用神杖升级。', '', '魔法消耗：125/250/375', '冷却时间：100.0/100.0/100.0', '技能:点目标\n伤害类型:魔法\n光墙持续时间：45.0\n幻象继承攻击力：60%/75%/90%\n幻象承受伤害：400%/400%/400%\n施法距离：500/900/1300\n神杖升级幻象继承攻击力：100%/120%/140%\n移动速度减缓：75%\n减速持续时间：0.5/0.75/1.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/dark_seer_wall_of_replica_sven.mp4', '尽管黑暗贤者不能回到他原来的国度，他仍然能召唤出一道具有强大心智力量的璀璨幻墙，在敌人之间制造混乱。'),
(97, 97, '虚张声势', 'http://www.dota2.com.cn/images/heroes/abiliti', '以矢量为目标。石鳞剑士先冲向目标地点，再向指示方向上的所有敌人刺出数剑。刺剑有几率触发一剑穿心。', '', '魔法消耗：70/80/90/100', '冷却时间：20/16/12/8', '技能:点目标\n伤害类型:物理\n冲刺距离：1000\n刺剑距离：900\n每次伤害：24/42/60/78\n刺剑次数：4', '', '石鳞剑士的剑比舌头还要灵活。', '甲盾冲击', 'http://www.dota2.com.cn/images/heroes/abiliti', '石鳞剑士跃入空中，再落向地面造成冲击。他周围的敌人将受到伤害。冲击时每击中一个敌方英雄，他就能在短时间内获得一定百分比的减伤效果。地雷滚滚过程中使用甲盾冲击将会保持前进，并且可以使地雷滚滚跨过地形障碍。', '', '魔法消耗：90/100/110/120', '冷却时间：13.0', '技能:无目标\n伤害类型:魔法\n伤害：75/150/225/300\n每名英雄减少伤害：9%/12%/15%/18%\n减伤持续时间：10.0', '', '只有被敌人层层包围，石鳞剑士才能真正地一展雄风。', '一剑穿心', 'http://www.dota2.com.cn/images/heroes/abiliti', '石鳞剑士完美把握敌人的动向，灵巧地使剑穿过防御。他的攻击有几率无视护甲并使目标减速，效果经过一定延迟后生效。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n穿心概率：15%\n持续时间：2/3/4/5\n移动速度减缓：-35/-40/-45/-50\n效果延迟：2.0', '', '这些蠢材对真正的护甲一无所知……', '地雷滚滚', 'http://www.dota2.com.cn/images/heroes/abiliti', '石鳞剑士卷成一个技能免疫状态的圆球，隆隆地向前滚去。滚动时移动速度提升，可以碾过树木，但是转身速率降低。敌人被击中后会被击退，然后受到伤害和眩晕。与地形障碍相撞后会暂时停止滚动，并且滚动方向变反。', '', '魔法消耗：100', '冷却时间：50/45/40', '技能:无目标\n伤害类型:魔法\n变形时间：1.2\n滚动速度：600\n作用范围：150\n眩晕持续时间：1.0/1.25/1.5\n击退距离：150\n持续时间：6.0/7.0/8.0', '', '他的祖先只能找到安全感的地方，石鳞剑士却看见了机遇……'),
(98, 98, '裂地尖刺', 'http://www.dota2.com.cn/images/heroes/abiliti', '		岩石尖刺在地上沿一条直线穿刺而出。敌方单位被抛向空中，落地时被眩晕并受到伤害。', '', '魔法消耗：100/120/140/160', '冷却时间：12.0/12.0/12.0/12.0', '技能:点目标, 单位目标 \n伤害类型:魔法\n眩晕持续时间：1.4/1.8/2.2/2.6', 'http://dota2.dl.wanmei.com/dota2/video/abilities/lion_earth_spike_creeps.mp4', '恶魔巫师使用他的恶魔契约，打开一条来自地狱的裂缝。', '妖术', 'http://www.dota2.com.cn/images/heroes/abiliti', '将一个敌方单位变成人畜无害的动物，受害者无法使用所有特殊能力。', '', '魔法消耗：125/150/175/200', '冷却时间：30.0/24.0/18.0/12.0', '技能:单位目标\n持续时间：2.5/3/3.5/4', 'http://dota2.dl.wanmei.com/dota2/video/abilities/lion_hex.mp4', '莱恩将他的变形术用在敌人身上，扭曲其生命本质。', '法力吸取', 'http://www.dota2.com.cn/images/heroes/abiliti', '		持续施法 - 从一个敌方单位吸取魔法能量，每秒回复自己一定的魔法值。', '', '魔法消耗：10/10/10/10', '冷却时间：16/12/8/4', '技能:单位目标, 持续施法\n持续时间：5.0\n每秒抽取魔法值：20/40/60/120\n中断距离：1200', 'http://dota2.dl.wanmei.com/dota2/video/abilities/lion_mana_drain.mp4', '那些比他弱小的法师的魔力对恶魔巫师来说只不过是他回复魔法的来源。', '死亡之指', 'http://www.dota2.com.cn/images/heroes/abiliti', '		撕裂一个敌方单位，将其折磨得死去活来，并造成巨大伤害。可用神杖升级。', '', '魔法消耗：200/420/650', '冷却时间：160.0/100.0/40.0', '技能:单位目标\n伤害类型:魔法\n伤害：600/725/850\n神杖升级伤害：725/875/1025\n神杖升级魔法消耗：200/420/625\n神杖升级冷却时间：100.0/60.0/20.0\n神杖升级作用范围：325', 'http://dota2.dl.wanmei.com/dota2/video/abilities/lion_finger_of_death.mp4', '莱恩丑陋的手正是他最强大力量的来源，能够用恶魔的力量让受害者完全崩溃。'),
(99, 99, '狂战士之吼', 'http://www.dota2.com.cn/images/heroes/abiliti', '	斧王嘲讽附近的敌方单位，强迫他们攻击自己，同时获得额外护甲。', '', '魔法消耗：80/90/100/110', '冷却时间：16/14/12/10', '技能:无目标\n作用范围：300\n护甲提升：40\n持续时间：2.0/2.4/2.8/3.2', 'http://dota2.dl.wanmei.com/dota2/video/abilities/axe_berserkers_call.mp4', '蒙哥可汗的狂吼嘲讽使敌人不得不与他作战。', '战斗饥渴', 'http://www.dota2.com.cn/images/heroes/abiliti', '激怒一个敌方单位，使他受到减速和持续伤害，直到他杀死一个单位或者持续时间结束为止。斧王从每个受战斗饥渴影响的敌人身上获得移动速度加成。可用神杖升级。', '', '魔法消耗：75', '冷却时间：20.0/15.0/10.0/5.0', '技能:单位目标\n伤害类型:魔法\n持续时间：10.0\n移动速度减缓：-12%\n移动速度提升：12%\n每秒伤害：16/24/32/40\n神杖升级伤害降低：30%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/axe_battle_hunger.mp4', '通常英雄都无法抵挡蒙哥可汗的战斗狂怒，他们会一直受伤，直到蒙哥可汗的狂怒平息。', '反击螺旋', 'http://www.dota2.com.cn/images/heroes/abiliti', '受攻击时，斧王做出螺旋反击，对附近所有敌方单位造成纯粹伤害。', '', '魔法消耗：0', '冷却时间：0.45/0.4/0.35/0.3', '技能:被动\n伤害类型:纯粹\n作用范围：275\n反击概率：20%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/axe_counter_helix.mp4', '这支军队只要有斧王就不需要援军了。', '淘汰之刃', 'http://www.dota2.com.cn/images/heroes/abiliti', '斧王寻找弱点来出击，直接秒杀低血量的敌方单位，血量如果过高则只造成一定伤害。当秒杀的是敌方英雄时，本技能不会进入冷却时间。同时斧王和附近友军单位获得移动速度加成。', '', '魔法消耗：60/120/180', '冷却时间：75.0/65.0/55.0', '技能:单位目标\n伤害类型:魔法\n秒杀血量：250/325/400\n伤害：150/250/300\n斩杀后移动速度加成：30%\n斩杀后攻击速度加成：30\n斩杀加速持续时间：6\n斩杀后加速范围：900', 'http://dota2.dl.wanmei.com/dota2/video/abilities/axe_culling_blade_a.mp4', '蒙哥可汗是战斗与狂怒的化身，胆敢与斧王为敌者只有死路一条。'),
(100, 100, '发芽', 'http://www.dota2.com.cn/images/heroes/abiliti', '在一个单位周围发芽一圈树木，把它困在其中。', '', '魔法消耗：70/90/110/130', '冷却时间：11/10/9/8', '技能:单位目标, 点目标\n持续时间：3/4/5/6\n施法距离：625/700/775/850', 'http://dota2.dl.wanmei.com/dota2/video/abilities/natures_prophet_sprout.mp4', '疯长的树木给那些试图攻击先知的人留下了难以磨灭的恐惧。', '传送', 'http://www.dota2.com.cn/images/heroes/abiliti', '传送到地图上任何位置。', '', '魔法消耗：50/50/50/50', '冷却时间：50/40/30/20', '技能:点目标', 'http://dota2.dl.wanmei.com/dota2/video/abilities/natures_prophet_teleportation.mp4', '先知保护着整片森林，当森林需要他的时候立刻出现。', '自然的呼唤', 'http://www.dota2.com.cn/images/heroes/abiliti', '			将一片树木转化成树人。树人拥有550点生命，造成30-34点伤害。', '', '魔法消耗：130/140/150/160', '冷却时间：37/37/37/37', '技能:点目标\n树人数量：2/3/4/5\n树人持续时间：60/60/60/60', 'http://dota2.dl.wanmei.com/dota2/video/abilities/natures_prophet_natures_call.mp4', '树木之神维萝迪希娅赐予先知召唤树人守卫的能力，这是神话中大自然的军队。', '自然之怒', 'http://www.dota2.com.cn/images/heroes/abiliti', '		伤害性的能量在全地图跳跃，打击视野中距目标点最近的多个敌人。每击中一个敌人伤害都会增加。可用神杖升级。', '', '魔法消耗：175/225/275', '冷却时间：90/75/60', '技能:单位目标, 点目标\n伤害类型:魔法\n最大目标数：16/16/16\n伤害：110/140/170\n每次弹跳增加伤害：11%\n神杖升级伤害：135/170/205\n神杖升级树人产生时限：4', 'http://dota2.dl.wanmei.com/dota2/video/abilities/natures_prophet_wrath_of_nature_creeps.mp4', '先知召唤维萝迪希娅的狂怒，消灭那些想要毁坏自然的敌人。'),
(101, 101, '冥火爆击', 'http://www.dota2.com.cn/images/heroes/abiliti', '冥魂大帝向一个敌方单位发射冥魂火球，造成伤害和眩晕，并带来持续伤害和减速。', '', '魔法消耗：140', '冷却时间：8.0/8.0/8.0/8.0', '技能:单位目标\n伤害类型:魔法\n眩晕时间：2.0\n减速持续时间：2\n移动速度减缓：-20%\n每秒伤害：20/35/50/65', 'http://dota2.dl.wanmei.com/dota2/video/abilities/wraith_king_wraithfire_blast.mp4', '奥斯塔里昂激活他的冥魂怒意，毁灭他的敌人。', '吸血光环', 'http://www.dota2.com.cn/images/heroes/abiliti', '附近友方单位在攻击敌方单位时将根据造成的伤害回复一定的生命值。', '', '魔法消耗：0', '冷却时间：0', '技能:无目标, 光环\n吸血：15%/20%/25%/30%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/wraith_king_vampiric_aura.mp4', '冥魂大帝的剑刃汲取敌人的精华，填补自身的元气。', '殊死一搏', 'http://www.dota2.com.cn/images/heroes/abiliti', '冥魂大帝在攻击时有几率造成额外伤害。攻击非玩家控制的单位时触发将造成秒杀，并且将其转化为骷髅兵。', '', '魔法消耗：75', '冷却时间：50', '技能:无目标\n致命一击伤害：300%\n秒杀几率：9%/11%/13%/15%\n骷髅兵持续时间：90\n最大能量点数：4/5/6/7', 'http://dota2.dl.wanmei.com/dota2/video/abilities/wraith_king_mortal_strike.mp4', '单凭一击，斩敌无匹。', '重生', 'http://www.dota2.com.cn/images/heroes/abiliti', '大帝倒下后，他飞散的冥魂会重组，使他复活。死亡时附近900范围内的敌人会被减速。可用神杖升级。', '', '魔法消耗：160', '冷却时间：200/120/40', '技能:被动\n重生时间：3.0/3.0/3.0\n移动速度减缓：-75%\n攻击速度降低：-75\n减速持续时间：5.0\n神杖升级冥魂续命持续时间：7\n神杖升级冥魂续命作用范围：1200', 'http://dota2.dl.wanmei.com/dota2/video/abilities/wraith_king_reincarnation.mp4', '冥魂大帝的对头们一直很疑惑，为什么他就是不会��透。'),
(102, 102, '剑刃风暴', 'http://www.dota2.com.cn/images/heroes/abiliti', '舞起具有破坏性力量的剑刃风暴，对主宰周围的敌方单位造成伤害，并使主宰对魔法免疫。驱散类型：弱驱散', '', '魔法消耗：120/110/100/90', '冷却时间：42/34/26/18', '技能:无目标\n伤害类型:魔法\n作用范围：250\n伤害：80/105/130/155\n持续时间：5.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/juggernaut_blade_fury_creeps.mp4', '无论是战士还是法师，都害怕尤涅若的武士刀剑技。', '治疗守卫', 'http://www.dota2.com.cn/images/heroes/abiliti', '召唤一个治疗守卫，按周围友军单位最大生命值的一定比例治疗他们。治疗守卫可以移动，移动速度为420。持续25秒。', '', '魔法消耗：140', '冷却时间：60.0/60.0/60.0/60.0', '技能:点目标\n每秒最大生命值回复：2%/3%/4%/5%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/juggernaut_healing_ward.mp4', '这是主宰在遮面之岛学到的一项惯用技巧，战斗证明会使用一点巫毒魔法治疗伤口是很有效的。', '剑舞', 'http://www.dota2.com.cn/images/heroes/abiliti', '有一定概率在攻击时造成双倍伤害。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n致命一击伤害：200%\n致命一击概率：20%/25%/30%/35%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/juggernaut_blade_dance.mp4', '作为他对剑技传承的最后承诺，尤涅若立誓将使此剑技为世人所铭记。', '无敌斩', 'http://www.dota2.com.cn/images/heroes/abiliti', '宰挥剑跃向敌人，随后再斩击附近的其它敌方单位，每次斩击造成200-225点伤害。主宰在无敌斩期间无敌。可用神杖升级。', '', '魔法消耗：200/275/350', '冷却时间：130.0/120.0/110.0', '技能:单位目标\n伤害类型:物理\n斩击次数：3/6/9\n斩击跳跃范围：425\n神杖升级斩击次数：6/9/12\n神杖升级冷却时间：70', 'http://dota2.dl.wanmei.com/dota2/video/abilities/juggernaut_omnislash.mp4', '“自律已有成果；勤练带来力量。”'),
(103, 103, '荆棘迷宫', 'http://www.dota2.com.cn/images/heroes/abiliti', '邪影芳灵在目标区域创造出一片荆棘迷宫。进入荆棘的敌人将持续受到伤害，并且被缠绕。', '', '魔法消耗：140/150/160/170', '冷却时间：40/35/30/25', '技能:点目标\n伤害类型:魔法\n数量：8\n迷宫持续时间：15\n缠绕持续时间：1/1.5/2/2.5\n荆棘伤害：100/150/200/250', '', '仙灵之境将你环绕，只是在等着让你深陷……', '暗影之境', 'http://www.dota2.com.cn/images/heroes/abiliti', '邪影芳灵遁入暗影之境，无法成为攻击或技能的目标。她的下次攻击将获得额外攻击距离，并且造成额外魔法伤害，暗影之境技能也会结束。在暗影中时间越长，伤害越高。在暗影之境内的时间超过3秒将获得最大伤害。', '', '魔法消耗：70/80/90/100', '冷却时间：30/24/18/12', '技能:无目标\n伤害类型:魔法\n持续时间：5\n最高伤害：120/200/280/360\n攻击距离加成：600\n最大伤害持续时间：3', '', '你看不见的东西肯定会害你。', '诅咒王冠', 'http://www.dota2.com.cn/images/heroes/abiliti', '邪影芳灵授予敌人一顶被诅咒的古老仙灵王冠。经过一定延迟后，目标和周围的所有敌人都会被眩晕。', '', '魔法消耗：100/120/140/160', '冷却时间：18/16/14/12', '技能:单位目标\n伤害类型:魔法\n延迟：4\n眩晕持续时间：2/2.5/3/3.5\n眩晕作用范围：325', '', '没人告诉过你吗？千万别和仙女打交道……', '作祟', 'http://www.dota2.com.cn/images/heroes/abiliti', '芳灵的精灵宠物在持续时间内围绕她飞行，快速攻击周围敌人。恐吓开启期间不能使用作祟。', '', '魔法消耗：100/150/200', '冷却时间：40/30/20', '技能:无目标\n伤害类型:魔法\n攻击伤害：60/140/220\n攻击间隔：0.25\n攻击作用范围：300\n攻击目标：1\n游走作用范围：200\n游走持续时间：4.0', '', '你得原谅我的朋友杰克斯。他是有点杀红了眼。'),
(104, 104, '巨浪', 'http://www.dota2.com.cn/images/heroes/abiliti', '一股巨浪攻击一个敌方单位，减速并削弱护甲。持续4秒。可用神杖升级。', '', '魔法消耗：90/100/110/120', '冷却时间：12', '技能:单位目标\n伤害类型:魔法\n巨浪伤害：110/160/210/260\n移动速度减缓：-40%/-40%/-40%/-40%\n护甲降低：3/4/5/6\n神杖升级作用范围：240\n神杖升级冷却时间：7\n神杖升级距离：1800', 'http://dota2.dl.wanmei.com/dota2/video/abilities/tidehunter_gush.mp4', '在沉没之岛的竞赛中，利维坦赢得了对公海的统治。', '海妖外壳', 'http://www.dota2.com.cn/images/heroes/abiliti', '加厚潮汐猎人的外皮，可以被动格挡物理伤害，当受到的伤害达到临界值时外皮还将移除绝大多数负面效果。不与带有伤害格挡的物品叠加。驱散类型：强驱散', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n伤害格挡：12/24/36/48\n伤害临界值：600/550/500/450\n临界值累计时间：6.0/6.0/6.0/6.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/tidehunter_kraken_shell.mp4', '铁帆海军里有一个传言，说是有只强大的海兽，明明被矛刺中被剑砍伤依然能践踏舰队。', '锚击', 'http://www.dota2.com.cn/images/heroes/abiliti', '猎人挥动他巨大的锚，对附近敌人造成伤害并降低他们的攻击力。', '', '魔法消耗：30/40/50/60', '冷却时间：7.0/6.0/5.0/4.0', '技能:无目标\n伤害类型:物理\n攻击力降低：-45%/-50%/-55%/-60%\n持续时间：6.0/6.0/6.0/6.0\n作用范围：375', 'http://dota2.dl.wanmei.com/dota2/video/abilities/tidehunter_anchor_smash.mp4', '从舰队统帅昆卡的一艘旗舰上偷来的重锚，被利维坦用作有效的近战武器。', '毁灭', 'http://www.dota2.com.cn/images/heroes/abiliti', '���面，触手向各个方向穿出，伤害并眩晕附近所有敌方单位。', '', '魔法消耗：150/225/325', '冷却时间：150.0/150.0/150.0', '技能:无目标\n伤害类型:魔法\n作用范围：1250\n持续时间：2.0/2.4/2.8', 'http://dota2.dl.wanmei.com/dota2/video/abilities/tidehunter_ravage_creeps.mp4', '呼唤深海之神麦尔朗恩的举动导致了整支武装舰队在海上失踪。'),
(105, 105, '等离子场', 'http://www.dota2.com.cn/images/heroes/abiliti', '释放一波威力随扩张程度提升的等离子能量场，收缩时也会对经过的敌人造成伤害。距离剃刀越远，伤害越大。', '', '魔法消耗：125/125/125/125', '冷却时间：14', '技能:无目标\n伤害类型:魔法\n最低伤害：30/50/70/90\n最高伤害：160/230/300/370\n作用范围：700', 'http://dota2.dl.wanmei.com/dota2/video/abilities/razor_plasma_field_creeps.mp4', '闪电幽魂用等离子力量统治着永劫之墟。', '静电连接', 'http://www.dota2.com.cn/images/heroes/abiliti', '在剃刀和一个敌方英雄之间创造静电连接，偷取目标的攻击力并将其转移给剃刀。', '', '魔法消耗：50', '冷却时间：32/30/28/26', '技能:单位目标\n连接持续时间：8\n攻击加成持续时间：18.0/18.0/18.0/18.0\n攻击力吸取速率：7/14/21/28', 'http://dota2.dl.wanmei.com/dota2/video/abilities/razor_static_link.mp4', '剃刀的极性吸引电流通向自身，以汲取他对手的力量。', '不稳定电流', 'http://www.dota2.com.cn/images/heroes/abiliti', '	提升剃刀的移动速度，并且每隔5秒随机选择周围一个单位施加一道电流。电流造成伤害和减速，并且驱散增益效果。驱散类型：弱驱散', '', '魔法消耗：0', '冷却时间：5', '技能:被动\n伤害类型:魔法\n移动速度提升：4%/8%/12%/16%\n当前间隔：5\n减速持续时间：0.5/1.0/1.5/2.0\n减速：-40%\n作用范围：350', 'http://dota2.dl.wanmei.com/dota2/video/abilities/razor_unstable_current.mp4', '仅仅是靠近闪电幽魂就会体验免费的电击疗法。', '风暴之眼', 'http://www.dota2.com.cn/images/heroes/abiliti', '强大的闪电风暴，打击生命值最低的敌方单位，造成伤害并削弱护甲。可用神杖升级。', '', '魔法消耗：100/150/200', '冷却时间：80/70/60', '技能:无目标\n伤害类型:物理\n作用范围：500/500/500\n持续时间：30.0\n打击间隔：0.7/0.6/0.5\n护甲削弱：1/1/1\n伤害：40/55/70\n神杖升级打击间隔：0.6/0.5/0.4', 'http://dota2.dl.wanmei.com/dota2/video/abilities/razor_eye_of_the_storm_creeps.mp4', '掌控闪电。'),
(106, 106, '死亡脉冲', 'http://www.dota2.com.cn/images/heroes/abiliti', '瘟疫法师在他周围释放死亡波动，伤害敌方单位并治疗友军单位。瘟疫法师每杀死一个单位都能被动获得恢复效果，持续6秒。', '', '魔法消耗：125/145/165/185', '冷却时间：8/7/6/5', '技能:无目标\n伤害类型:魔法\n作用范围：475\n治疗量：60/80/100/120\n每次击杀提供生命恢复：2/3/4/5\n每次击杀提供魔法恢复速率：2/2.25/2.5/2.75\n恢复持续时间：6\n英雄击杀提供恢复倍数：6', 'http://dota2.dl.wanmei.com/dota2/video/abilities/necrolyte_death_pulse.mp4', '可怜的灵魂们，屈从于罗坦德吉利的瘟疫后遭到回收，沦为他用。', '幽魂护罩', 'http://www.dota2.com.cn/images/heroes/abiliti', '瘟疫法师步入将生者与死者相隔的领域。散发出一片灵气，减缓周围敌人的移动速度。在这个形态下，瘟疫法师无法攻击或被攻击，受到的魔法伤害增加，但是生命/魔法恢复效果加强。', '', '魔法消耗：50', '冷却时间：28/24/20/16', '技能:无目标\n持续时间：3/3.5/4/4.5\n恢复效果加强：75%\n移动速度减缓：6%/12%/18%/24%\n减速作用范围：750\n魔法伤害加深：-30%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/necrophos_sadist_a.mp4', '罗坦德吉利利用手中的亡者灵魂搭建出从生到死的桥梁。', '竭心光环', 'http://www.dota2.com.cn/images/heroes/abiliti', '瘟疫法师让敌人的心脏停跳，使附近敌方单位按最大生命值一定百分比持续流失生命。', '', '魔法消耗：0', '冷却时间：0', '技能:被动, 光环\n作用范围：700\n每秒生命流失：0.5%/1.0%/1.5%/2.0%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/necrolyte_heartstopper_aura.mp4', '接近瘟疫法师就会感受到在他周围的空气中存在的瘟疫和灾祸。', '死神镰刀', 'http://www.dota2.com.cn/images/heroes/abiliti', '眩晕目标敌方英雄，然后造成基于他当前损失生命值的伤害。被死神镰刀杀死后下次复活时间将会增加10 20 30秒。如果目标在死神镰刀效果下死亡，击杀者为瘟疫法师。可用神杖升级。', '', '魔法消耗：200/350/500', '冷却时间：120', '技能:单位目标\n伤害类型:魔法\n每点损失生命值造成伤害：0.6/0.75/0.9\n眩晕时间：1.5/1.5/1.5\n神杖升级冷却时间：55/40/25\n复活时间增加：10/20/30', 'http://dota2.dl.wanmei.com/dota2/video/abilities/necrolyte_reapers_scythe.mp4', '空气中充斥的死亡和苦难增强了瘟疫法师的瘟疫魔法。'),
(107, 107, '穿刺', 'http://www.dota2.com.cn/images/heroes/abiliti', '尖刺在地上沿一条直线穿刺而出。敌方单位被抛向空中，落地时被眩晕并受到伤害。', '', '魔法消耗：95/115/135/155', '冷却时间：14.0', '技能:点目标\n伤害类型:魔法\n眩晕时间：1.6/2.0/2.4/2.8\n穿刺伤害：80/140/200/260', 'http://dota2.dl.wanmei.com/dota2/video/abilities/nyx_assassin_impale.mp4', '所有狂热的圣甲虫都拥有地底通道的秘密学识，并用其为自己带来优势。', '法力燃烧', 'http://www.dota2.com.cn/images/heroes/abiliti', '烧毁目标英雄智力值数倍的魔法值，并造成和烧毁的魔法值等量的伤害。', '', '魔法消耗：100', '冷却时间：28.0/20.0/12.0/4.0', '技能:单位目标\n伤害类型:魔法\n智力值倍数：3.5/4/4.5/5', 'http://dota2.dl.wanmei.com/dota2/video/abilities/nyx_assassin_mana_burn.mp4', '秘湮学院的典籍记载着一只能够侵蚀低等生物心智的圣甲虫。', '尖刺外壳', 'http://www.dota2.com.cn/images/heroes/abiliti', '激活状态下，尖刺外壳可以反弹并无效化司夜刺客受到的伤害（每个攻击者最多作用一次），同时眩晕攻击者。激活尖刺外壳不会打破复仇的隐身状态。钻地状态下尖刺外壳施放后将立刻眩晕周围的敌人。', '', '魔法消耗：40/40/40/40', '冷却时间：25/20/15/10', '技能:无目标\n伤害类型:纯粹\n反弹持续时间：2.25\n眩晕时间：0.6/1.2/1.8/2.4\n反弹伤害：100%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/nyx_assassin_spiked_carapace.mp4', '虽然他们的甲壳相对来说很薄，但是那是由伸缩自如的剃刀般锋利的尖刺所保卫的。', '钻地', 'http://www.dota2.com.cn/images/heroes/abiliti', '刺客经过短时间的掘地后钻入地下。钻地后尖刺外壳一施放就会直接晕眩附近所有敌人，法力燃烧和穿刺的施法距离提升，穿刺的冷却时间减少，司夜刺客为隐身状态，无法进行移动/攻击。同时生命和魔法恢复速率都有所增加，受到的所有伤害都会降低。', '', '魔法消耗：0', '冷却时间：0', '技能:无目标\n钻地后生命/魔法恢复速率：1.5%\n钻地后伤害减免：40%\n钻地后法力燃烧施法距离：1050\n钻地后穿刺施法距离：1225\n钻地后穿刺冷却时间：7\n钻地后尖刺外壳作用范围：300', '', '狂热圣甲虫中某些层级的成名绝技是挖掘小型洞穴，守株待兔，做好伏击猎物的准备。'),
(108, 108, '粘稠鼻液', 'http://www.dota2.com.cn/images/heroes/abiliti', '用鼻涕包裹一个敌方单位，降低他的移动速度，减少他的护甲。多次施放效果会叠加，同时持续时间以最后一次为准。可用神杖���级。', '', '魔法消耗：25', '冷却时间：1.5/1.5/1.5/1.5', '技能:单位目标\n持续时间：5.0\n护甲降低：1/1.4/1.8/2.2\n初始移动速度减缓：20%\n每次叠加后移速减缓：3%/6%/9%/12%\n叠加上限：4\n神杖升级作用范围：750', 'http://dota2.dl.wanmei.com/dota2/video/abilities/bristleback_1.mp4', '被大雪困住的时候着了凉，但是钢背兽让这为他所用。', '刺针扫射', 'http://www.dota2.com.cn/images/heroes/abiliti', '将尖刺喷射向敌人，对钢背兽附近的敌人造成伤害。任何单位最近14秒内每次受到刺针扫射的打击都会受到额外伤害。', '', '魔法消耗：35/35/35/35', '冷却时间：3.0/3.0/3.0/3.0', '技能:无目标\n伤害类型:物理\n作用范围：700\n刺针直接伤害：20.0/40.0/60.0/80.0\n刺针叠加伤害：30.0/32.0/34.0/36.0\n伤害叠加持续时间：14.0\n伤害上限：550.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/bristleback_2.mp4', '执法者的荣誉维护起来非常棘手。他的刺针也是。', '钢毛后背', 'http://www.dota2.com.cn/images/heroes/abiliti', '如果伤害来自钢背兽的侧面或者背后，他将会受到较少的伤害。钢毛后背每吸收210点伤害会自动释放一次当前等级的刺针扫射。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n侧面伤害减少：8%/12%/16%/20%\n背后伤害减少：16%/24%/32%/40%\n伤害吸收触发值：210', 'http://dota2.dl.wanmei.com/dota2/video/abilities/bristleback_3.mp4', '在战斗中背部迎人或许正好合适。', '战意', 'http://www.dota2.com.cn/images/heroes/abiliti', '兽在使用技能的时候会进入狂暴的状态，移动速度和攻击力都将提升。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n每次叠加提升攻击力：18/24/30\n每次叠加提升移动速度：3%/4%/5%\n战意叠加持续时间：14.0\n最大叠加次数：5/7/9', 'http://dota2.dl.wanmei.com/dota2/video/abilities/bristleback_4.mp4', '“别没事就发火”，他母亲总是这样训斥他。但是在战斗中，火冒三丈将有非凡效果。'),
(109, 109, '撕裂大地', 'http://www.dota2.com.cn/images/heroes/abiliti', '撕裂敌人脚下的大地。造成伤害和短暂的眩晕。', '', '魔法消耗：100/125/140/160', '冷却时间：9/9/9/9', '技能:点目标\n伤害类型:魔法\n眩晕延迟：0.35\n作用范围：150/175/200/225\n眩晕时间：2', 'http://dota2.dl.wanmei.com/dota2/video/abilities/leshrac_split_earth_creeps.mp4', '拉席克用他恶毒的意志扭曲大自然，撕裂大地摧毁那些挡他路的倒霉蛋。', '恶魔敕令', 'http://www.dota2.com.cn/images/heroes/abiliti', '使拉席克周围的区域充满魔法爆炸，对敌方单位和建筑造成物理伤害。范围内的敌人越少，他们受到的伤害就越大。对防御塔额外造成40%的伤害。持续10秒。', '', '魔法消耗：95/120/135/155', '冷却时间：22/22/22/22', '技能:无目标\n伤害类型:物理\n爆炸次数：40\n作用范围：500', '', '古老的能量从一个位面向另一个位面爆发，将触碰到的一切化为灰烬。', '闪电风暴', 'http://www.dota2.com.cn/images/heroes/abiliti', '召唤一片闪电风暴攻击目标敌方单位，并跳跃到附近的敌方单位。被攻击的敌人将会被减速。可用神杖升级。', '', '魔法消耗：90/100/110/120', '冷却时间：4', '技能:单位目标\n伤害类型:魔法\n闪电跳跃次数：4/6/8/10\n闪电跳跃范围：475\n移动速度减缓：-75%\n减速持续时间：0.7/0.8/0.9/1.0\n神杖升级触发间隔：1.75\n神杖升级作用范围：750', 'http://dota2.dl.wanmei.com/dota2/video/abilities/leshrac_lightning_storm.mp4', '受折磨的灵魂用来击倒敌人的闪电风暴展示了他对元素的精通。', '脉冲新星', 'http://www.dota2.com.cn/images/heroes/abiliti', '拉席克在他周围创造破坏性的能量波，每秒对附近敌方单位造成伤害。', '', '魔法消耗：70/90/110', '冷却时间：1.0/1.0/1.0/1.0', '技能:无目标\n伤害类型:魔法\n每秒魔法消耗：20/40/60\n作用范围：450\n伤害：100/140/180', 'http://dota2.dl.wanmei.com/dota2/video/abilities/leshrac_pulse_nova_creeps.mp4', '必要时，受折磨的灵魂能操纵时空本身，毁灭弱小的存在。'),
(110, 110, '虚弱', 'http://www.dota2.com.cn/images/heroes/abiliti', '虚弱一个敌方单位，降低它的物理攻击力。持续20秒。', '', '魔法消耗：95', '冷却时间：8', '技能:单位目标\n攻击力削弱：30/60/90/120', 'http://dota2.dl.wanmei.com/dota2/video/abilities/bane_enfeeble.mp4', '即使是最强大的战士，在阿特洛波斯的恐怖面前也会崩溃。', '蚀脑', 'http://www.dota2.com.cn/images/heroes/abiliti', '暴食一个敌方单位的生命能量，造成伤害并回复自身生命值。可用神杖升级。', '', '魔法消耗：70/100/130/160', '冷却时间：14/13/12/11', '技能:单位目标\n伤害类型:纯粹\n伤害：90/160/230/300\n生命回复量：90/160/230/300\n神杖升级冷却时间：1.5', 'http://dota2.dl.wanmei.com/dota2/video/abilities/bane_brain_sap.mp4', '阿特洛波斯认为收割被他亲自制造的恐惧弄崩溃的生命是至高的享受。', '噩梦', 'http://www.dota2.com.cn/images/heroes/abiliti', '让目标敌方或友方英雄进入沉睡。睡着的单位受到攻击便会醒来，但噩梦将转移到攻击者身上。祸乱之源可以随意攻击噩梦中的目标。', '', '魔法消耗：165/165/165/165', '冷却时间：22/19/16/13', '技能:单位目标\n伤害类型:纯粹\n持续时间：4.0/5.0/6.0/7.0\n施法距离：425/500/575/650', 'http://dota2.dl.wanmei.com/dota2/video/abilities/bane_nightmare_sven.mp4', '从夜之女神妮塔莎那里偷来的能力，让猎物一觉不醒。', '魔爪', 'http://www.dota2.com.cn/images/heroes/abiliti', '持续施法 - 抓住一个敌方单位，使其失去行动能力并持续受到大量伤害，同时每0.5秒按目标最大魔法值一定比例吸取魔法。', '', '魔法消耗：200/300/400', '冷却时间：100.0/100.0/100.0', '技能:单位目标, 持续施法\n伤害类型:魔法\n魔法吸取：5%\n持续时间：5.0/5.0/5.0\n伤害：100/155/215', 'http://dota2.dl.wanmei.com/dota2/video/abilities/bane_fiends_grip.mp4', '阿特洛波斯的受害者经常因为噩梦中逼真的幻象痛不欲生。'),
(111, 111, '奥法鹰隼', 'http://www.dota2.com.cn/images/heroes/abiliti', '天怒法师施放出缓慢移动的奥术鹰群，对敌方单位造成基于天怒法师智力值的伤害。', '', '魔法消耗：70/70/70/70', '冷却时间：5.0/4.0/3.0/2.0', '技能:单位目标\n伤害类型:魔法\n基础伤害：60/80/100/120\n智力伤害系数：1.6', '', '面对苍白之巢内无穷的诡计，只有沉稳的聪明人才能幸存。', '震荡光弹', 'http://www.dota2.com.cn/images/heroes/abiliti', '天怒法师释放一个远距离的光弹，将击中超大范围内最近的英雄。被击中后英雄附近一定范围内单位将受到伤害，移动速度也会减缓。', '', '魔法消耗：95', '冷却时间：18.0/16.0/14.0/12.0', '技能:无目标\n伤害类型:魔法\n光弹射程：1600\n伤害作用范围：250\n伤害：70/140/210/280\n减速持续时间：4.0\n移动速度减缓：30%/35%/40%/45%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/skywrath_mage_2.mp4', '侍奉苍白之巢王庭就会对身边的暗流涌动不加关注。必须要时刻明白周围最近的危险所在。', '上古封印', 'http://www.dota2.com.cn/images/heroes/abiliti', '天怒法师利用上古符文将目标单位封印，目标单位将被沉默，受到法术伤害时将承担额外伤害。', '', '魔法消耗：80/90/100/110', '冷却时间：14', '技能:单位目标\n魔法伤害加深：-30%/-35%/-40%/-45%\n持续时间：3.0/4.0/5.0/6.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/skywrath_mage_3.mp4', '一个神圣的咒语，无论是谁，只要被丝奎奥克的符印所包围就必然在无声的忏悔中受难。', '神秘之耀', 'http://www.dota2.com.cn/images/heroes/abiliti', '天怒法师运用终极魔法技能，召唤精准致命的奥术力场毁灭对手。2.4秒期间对范围内所有敌方英雄造成大量伤害。可用神杖升级。', '', '魔法消耗：300/550/800', '冷却时间：60.0/40.0/20.0', '技能:点目标\n伤害类型:魔法\n作用范围：170\n持续时间：2.4\n伤害：600/1000/1400', 'http://dota2.dl.wanmei.com/dota2/video/abilities/skywrath_mage_mystic_flare.mp4', '天怒一族中只有勤加修炼的法师才能将苍天塑造成这样的风暴。'),
(112, 112, '狂战士之怒', 'http://www.dota2.com.cn/images/heroes/abiliti', '巨魔战将从远程形态变成近战进行攻击。近战攻击时将有几率触发重击，击晕目标并造成额外伤害。狂战士之怒还将提供额外的移动速度，护甲和更快的攻击速度。狂战士之怒激活后会改变旋风飞斧的作用机制。', '', '魔法消耗：0', '冷却时间：0', '技能:无目标\n移动速度加成：10/20/30/40\n护甲加成：6\n基础攻击间隔（近战）：1.50\n击晕概率：10%\n重击眩晕持续时间：0.8/1.2/1.6/2.0\n重击造成额外伤害：20/30/40/50', 'http://dota2.dl.wanmei.com/dota2/video/abilities/troll_warlord_berserkers_rage_melee.mp4', '跟巨魔战将的怒火一样，他的斧头也是源源不断。', '旋风飞斧（远程）', 'http://www.dota2.com.cn/images/heroes/abiliti', '巨魔战将掷出手中的五把飞斧，减速并伤害前方900范围锥形区域内的敌方单位。', '', '魔法消耗：50', '冷却时间：9', '技能:单位目标, 点目标\n伤害类型:魔法\n飞斧伤害：75\n减速持续时间：2.5/3/3.5/4\n移动速度减缓：40%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/troll_warlord_whirling_axes_ranged.mp4', '只有注入了憎恨的斧头旋转起来才会如此致命。', '旋风飞斧（近战）', 'http://www.dota2.com.cn/images/heroes/abiliti', '巨魔战将掷出两把飞斧环绕在他周围，使敌方单位受到伤害，并且部分普通攻击将不能命中。', '', '魔法消耗：50', '冷却时间：9', '技能:无目标\n伤害类型:魔法\n伤害：75/125/175/225\n作用范围：450.0\n致盲持续时间：5\n攻击落空几率：60%\n围绕持续时间：3.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/troll_warlord_whirling_axes_melee.mp4', '要靠近你的敌人。', '热血战魂', 'http://www.dota2.com.cn/images/heroes/abiliti', '将持续攻击同一个目标时，他会攻击得越来越快。如果改变目标，则额外的攻速加成清零。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n最大叠加层数：7\n每层效果攻速加成：15/20/25/30', 'http://dota2.dl.wanmei.com/dota2/video/abilities/troll_warlord_fervor.mp4', '如果第一下没成功，那就接着出招呗。');
INSERT INTO `hero_skill` (`hid`, `hero_id`, `skill1_title`, `skill1_pic`, `skill1_intro1`, `skill1_intro2`, `skill1_spell`, `skill1_cooling`, `skill1_effect`, `skill1_video`, `skill1_supplement`, `skill2_title`, `skill2_pic`, `skill2_intro1`, `skill21_intro2`, `skill2_spell`, `skill2_cooling`, `skill2_effect`, `skill2_video`, `skill2_supplement`, `skill3_title`, `skill3_pic`, `skill3_intro1`, `skill3_intro2`, `skill3_spell`, `skill3_cooling`, `skill3_effect`, `skill3_video`, `skill3_supplement`, `skill4_title`, `skill4_pic`, `skill4_intro1`, `skill4_intro2`, `skill4_spell`, `skill4_cooling`, `skill4_effect`, `skill4_video`, `skill4_supplement`) VALUES
(113, 113, '弧形闪电', 'http://www.dota2.com.cn/images/heroes/abiliti', '		释放一道会跳跃穿越附近敌人的闪电。', '', '魔法消耗：65/70/75/80', '冷却时间：1.6', '技能:单位目标\n伤害类型:魔法\n伤害：85/100/115/145\n跳跃次数：5/7/9/15', 'http://dota2.dl.wanmei.com/dota2/video/abilities/zeus_arc_lightning_creeps.mp4', '弧形闪电是宙斯在对付渺小的凡人时最喜欢用的法术。', '雷击', 'http://www.dota2.com.cn/images/heroes/abiliti', '召唤一道闪电打击一个敌方单位，造成伤害及短暂眩晕。施放后，雷击在目标周围750范围内提供空中视野和真实视域。本技能可以对地施放，将会自动作用于325范围内最近的敌方英雄上。', '', '魔法消耗：75/95/115/135', '冷却时间：6.0/6.0/6.0/6.0', '技能:单位目标, 点目标\n伤害类型:魔法\n视野范围：750\n视���持续时间：4.5', 'http://dota2.dl.wanmei.com/dota2/video/abilities/zeus_lightning_bolt.mp4', '对那些反叛的异教徒最震慑的天罚。', '静电场', 'http://www.dota2.com.cn/images/heroes/abiliti', '	宙斯每次施放技能时都会电击附近所有敌方单位，造成他们当前生命一定比例的伤害。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n伤害类型:魔法\n作用范围：1200\n生命减少：4%/6%/8%/10%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/zeus_static_field.mp4', '当天神行于世间，空气中满是静电爆裂。', '雷云', 'http://www.dota2.com.cn/images/heroes/abiliti', '在地图任意地点创造一朵雷云，雷云将自动对附近敌人施放雷击。', '', '魔法消耗：275', '冷却时间：35', '技能:点目标\n伤害类型:魔法\n持续时间：35\n雷击基础冷却时间：2.25', '', ''),
(114, 114, '地穴虫群', 'http://www.dota2.com.cn/images/heroes/abiliti', '召唤一群食腐虫��死亡先知面前的敌人中肆虐。', '', '魔法消耗：105/120/140/165', '冷却时间：8/7/6/5', '技能:单位目标, 点目标\n伤害类型:魔法\n距离：810/810/810/810', 'http://dota2.dl.wanmei.com/dota2/video/abilities/death_prophet_crypt_swarm_creeps.mp4', '克萝贝露丝在鬼门关的来来回回聚集了一大群被诅咒的生物。', '沉默魔法', 'http://www.dota2.com.cn/images/heroes/abiliti', '阻止目标区域内的敌人施放魔法。', '', '魔法消耗：80/80/80/80', '冷却时间：15/14/13/12', '技能:点目标\n作用范围：425\n持续时间：3.0/4.0/5.0/6.0', 'http://dota2.dl.wanmei.com/dota2/video/abilities/death_prophet_silence_sven.mp4', '透过她敌人的命运之纱，克萝贝露丝看到的是一个沉默的明天。', '吸魂巫术', 'http://www.dota2.com.cn/images/heroes/abiliti', '创造一个灵魂连接，将死亡先知与一个敌方单位相连。每秒吸取14 + 最大生命值的1.0 2.5 4.0 5.5%，并且移动速度减缓5 10 15 20%。', '', '魔法消耗：70/65/60/55', '冷却时间：0', '技能:单位目标\n伤害类型:魔法\n基础伤害：14\n最大生命值伤害百分比：1.0%/2.5%/4.0%/5.5%\n持续时间：6\n敌军移速减缓：5%/10%/15%/20%\n最大能量点数：1/2/3/4\n充能时间：45', '', '', '驱使恶灵', 'http://www.dota2.com.cn/images/heroes/abiliti', '释放恶灵偷走敌方单位和建筑的生命。持续时间结束后，死亡先知根据造成的伤害量，获得一定比例的治疗。持续35秒。', '', '魔法消耗：200/300/400', '冷却时间：145.0', '技能:无目标\n伤害类型:物理\n作用范围：700/700/700\n恶灵数量：8/16/24\n生命回复：25%/25%/25%\n恶灵攻击力：58', 'http://dota2.dl.wanmei.com/dota2/video/abilities/death_prophet_exorcism_creeps.mp4', '伴随着无数次的死亡，她前世死亡幻化出的女妖们总是萦绕于现世。'),
(115, 115, '灵魂之矛', 'http://www.dota2.com.cn/images/heroes/abiliti', '对敌方目标单位投出一支有魔力的灵魂之矛，造成伤害并减速，同时召唤一个幻象攻击该单位。可用神杖升级。', '', '魔法消耗：125/130/135/140', '冷却时间：7.0/7.0/7.0/7.0', '技能:单位目标\n伤害类型:魔法\n伤害：100/150/200/250\n减速持续时间：3.25\n移动速度降低：-10%/-20%/-30%/-40%\n幻象持续时间：2.0/4.0/6.0/8.0\n幻象继承攻击力：20%\n幻象承受伤害：400%/400%/400%/400%\n神杖升级弹跳范围：400\n神杖升级弹跳次数：5', 'http://dota2.dl.wanmei.com/dota2/video/abilities/phantom_lancer_spirit_lance.mp4', '阿兹瑞斯对于用长矛捕鱼养家的精通被证明在战场上非常有用。', '神行百变', 'http://www.dota2.com.cn/images/heroes/abiliti', '幻影长矛手暂时从战场上消失。经过1秒，幻影长矛手和附近的所有幻象都会出现在目标地点的随机位置，并产生两个新的幻象。施放技能后延长所有幻象的持续时间。新加的两个幻象拥有不同的特性：一个承受正常百分比的伤害，不具有攻击力，另一个承受600%的伤害，继承20%的攻击力。驱散类型：弱驱散', '', '魔法消耗：50', '冷却时间：25/20/15/10', '技能:点目标\n目标区域大小：325\n幻象聚集范围：900\n重新现身延迟时间：1\n神行幻象持续时间：8\n幻象持续时间延长：2', 'http://dota2.dl.wanmei.com/dota2/video/abilities/phantom_lancer_doppelwalk.mp4', '恐怖巫师沃恩的死亡让幻影长矛手获得了将自身在所有光线之中弯折破碎的能力。', '幻影冲锋', 'http://www.dota2.com.cn/images/heroes/abiliti', '对目标发动攻击后，幻影长矛手将快速向其冲去，到达目标时将获得短暂的敏捷提升。幻影长矛手的幻象也将继承此技能。', '', '魔法消耗：0', '冷却时间：16/12/8/4', '技能:无目标\n最小冲锋距离：250\n最大冲锋距离：600/700/800/900\n敏捷加成：6/14/22/30', 'http://dota2.dl.wanmei.com/dota2/video/abilities/phantom_lancer_juxtapose.mp4', '阿兹瑞斯明白，瞬息万变的战场上，速度就是一切。', '并列', 'http://www.dota2.com.cn/images/heroes/abiliti', '长矛手的存在有一定几率会破碎，产生自身的幻象。幻象也有几率进一步破碎，再产生幻象。幻影长矛手产生的幻象持续8秒，幻象产生的幻象则持续4秒。', '', '魔法消耗：0', '冷却时间：0', '技能:被动\n幻象数量上限：6/8/10\n本体触发几率：40%/45%/50%\n幻象触发几率：8%\n幻象继承攻击力：16%\n幻象承受伤害：500%', 'http://dota2.dl.wanmei.com/dota2/video/abilities/phantom_lancer_phantom_edge.mp4', '阿兹瑞斯的每次刺击感觉就像一个普通战士的两次，或三次，或四次...');

-- --------------------------------------------------------

--
-- 表的结构 `user_center`
--

CREATE TABLE `user_center` (
  `idtable1` int(11) NOT NULL,
  `user_uname` varchar(45) DEFAULT NULL,
  `user_upwd` varchar(45) DEFAULT NULL,
  `user_email` varchar(32) DEFAULT NULL,
  `user_phone` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `game_new`
--
ALTER TABLE `game_new`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `goods_detail`
--
ALTER TABLE `goods_detail`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `goods_detail_style`
--
ALTER TABLE `goods_detail_style`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `goods_style`
--
ALTER TABLE `goods_style`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `heroes_data`
--
ALTER TABLE `heroes_data`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `hero_dower`
--
ALTER TABLE `hero_dower`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `hero_equipment`
--
ALTER TABLE `hero_equipment`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `hero_intro`
--
ALTER TABLE `hero_intro`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `hero_location`
--
ALTER TABLE `hero_location`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `hero_match`
--
ALTER TABLE `hero_match`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `hero_pic`
--
ALTER TABLE `hero_pic`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `hero_property`
--
ALTER TABLE `hero_property`
  ADD PRIMARY KEY (`hid`,`hero_id`);

--
-- Indexes for table `hero_punctuate`
--
ALTER TABLE `hero_punctuate`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `hero_skill`
--
ALTER TABLE `hero_skill`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `user_center`
--
ALTER TABLE `user_center`
  ADD PRIMARY KEY (`idtable1`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `game_new`
--
ALTER TABLE `game_new`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `goods_detail`
--
ALTER TABLE `goods_detail`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
--
-- 使用表AUTO_INCREMENT `goods_detail_style`
--
ALTER TABLE `goods_detail_style`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
--
-- 使用表AUTO_INCREMENT `goods_style`
--
ALTER TABLE `goods_style`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
--
-- 使用表AUTO_INCREMENT `heroes_data`
--
ALTER TABLE `heroes_data`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- 使用表AUTO_INCREMENT `hero_dower`
--
ALTER TABLE `hero_dower`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- 使用表AUTO_INCREMENT `hero_equipment`
--
ALTER TABLE `hero_equipment`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- 使用表AUTO_INCREMENT `hero_intro`
--
ALTER TABLE `hero_intro`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- 使用表AUTO_INCREMENT `hero_location`
--
ALTER TABLE `hero_location`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- 使用表AUTO_INCREMENT `hero_match`
--
ALTER TABLE `hero_match`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- 使用表AUTO_INCREMENT `hero_pic`
--
ALTER TABLE `hero_pic`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- 使用表AUTO_INCREMENT `hero_property`
--
ALTER TABLE `hero_property`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- 使用表AUTO_INCREMENT `hero_punctuate`
--
ALTER TABLE `hero_punctuate`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- 使用表AUTO_INCREMENT `hero_skill`
--
ALTER TABLE `hero_skill`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- 使用表AUTO_INCREMENT `user_center`
--
ALTER TABLE `user_center`
  MODIFY `idtable1` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
