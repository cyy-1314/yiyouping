-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2017-02-21 12:33:47
-- 服务器版本： 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `item`
--

-- --------------------------------------------------------

--
-- 表的结构 `car`
--

CREATE TABLE `car` (
  `carId` int(255) NOT NULL,
  `delect` int(255) NOT NULL DEFAULT '0',
  `smallImg` varchar(255) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `currentPrice` int(255) NOT NULL,
  `fanxian` int(255) NOT NULL,
  `shuliang` int(255) NOT NULL,
  `sum` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `car`
--

INSERT INTO `car` (`carId`, `delect`, `smallImg`, `productName`, `currentPrice`, `fanxian`, `shuliang`, `sum`) VALUES
(20, 0, 'img/20131024222837.jpg', '保护套iphone6 Plus手机壳 超薄5.5寸 苹果6 plus手机壳 硅胶透明套TPU外壳 iphone6 Plus手机壳 ', 3, 0, 8, 3),
(25, 0, 'img/ef589603d88842d4b64dbd3c663cfdd3.jpg', '保护套iphone5 手机壳 超薄5.5寸 苹果5 plus手机壳 硅胶透明套TPU外壳 ', 4, 0, 11, 4),
(26, 0, 'img/2013722214455.jpg', '保护套iphone5 手机壳 超薄5.5寸 苹果5 plus手机壳 硅胶透明套TPU外壳 ', 6, 0, 1, 6);

-- --------------------------------------------------------

--
-- 表的结构 `cheap`
--

CREATE TABLE `cheap` (
  `cheapId` int(255) NOT NULL COMMENT '设置主键自增',
  `productName` varchar(255) NOT NULL COMMENT '产品名称',
  `productImg` varchar(255) NOT NULL COMMENT '产品图片',
  `oriPrice` int(50) NOT NULL COMMENT '原价',
  `saleNum` int(50) NOT NULL COMMENT '销售量',
  `currentPrice` int(250) NOT NULL COMMENT '现价',
  `NO` varchar(250) NOT NULL COMMENT '产品编号',
  `fitPhone` varchar(250) NOT NULL COMMENT '适合手机',
  `type` varchar(255) NOT NULL COMMENT '产品类型是手机壳还是什么',
  `material` varchar(255) NOT NULL COMMENT '材料',
  `priceFiled` varchar(255) NOT NULL COMMENT '价格区间',
  `brand` varchar(255) NOT NULL COMMENT '品牌',
  `productPlace` varchar(255) NOT NULL COMMENT '产地',
  `color` varchar(255) NOT NULL,
  `page` int(255) NOT NULL,
  `shuliang` int(255) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cheap`
--

INSERT INTO `cheap` (`cheapId`, `productName`, `productImg`, `oriPrice`, `saleNum`, `currentPrice`, `NO`, `fitPhone`, `type`, `material`, `priceFiled`, `brand`, `productPlace`, `color`, `page`, `shuliang`) VALUES
(20, '保护套iphone6 Plus手机壳 超薄5.5寸 苹果6 plus手机壳 硅胶透明套TPU外壳 iphone6 Plus手机壳 ', 'img/20131024222837.jpg', 123, 3, 3, '23231', '诺基亚、inphone5s', '手机壳', '塑料', '23~123', '拉是', '中国', '灰色', 0, 1),
(25, '保护套iphone5 手机壳 超薄5.5寸 苹果5 plus手机壳 硅胶透明套TPU外壳 ', 'img/ef589603d88842d4b64dbd3c663cfdd3.jpg', 21, 93, 4, '23x1xx', '诺基亚、inphone5s', '手机壳', '塑料', '23~103', '四时天下', '中国', '粉色', 1, 1),
(26, '保护套iphone5 手机壳 超薄5.5寸 苹果5 plus手机壳 硅胶透明套TPU外壳 ', 'img/2013722214455.jpg', 98, 193, 6, 'aa23x1xx', '诺基亚、inphone5s、三星', '手机壳', '硅胶', '43~123', '四时天下', '中国', '蓝色', 2, 1),
(27, '保护套iphone5 手机壳 超薄5.5寸 苹果5 plus手机壳 硅胶透明套TPU外壳 ', 'img/20131014215551.jpg', 168, 313, 8, 'aa213', '诺基亚、inphone5s、三星', '手机壳', '硅胶', '62~123', 'aad', '中国', '紫色', 3, 1),
(28, '保护套iphone5 手机壳 超薄515寸 苹果5a plus手机壳 硅胶透明套TPU外壳 ', 'img/20121122214100.jpg', 168, 312, 2, 'aa21adfd', '诺基亚、inphone5s、三星、华为', '手机壳', '硅胶', '62~98', '飒飒', '中国', '黑色', 4, 1);

-- --------------------------------------------------------

--
-- 表的结构 `color`
--

CREATE TABLE `color` (
  `moreId` int(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `smallImg` varchar(255) NOT NULL,
  `bigImg` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `page` int(255) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `currentPrice` int(255) NOT NULL,
  `oriPrice` int(255) NOT NULL,
  `saleNum` int(255) NOT NULL,
  `NO` varchar(255) NOT NULL,
  `fitPhone` varchar(255) NOT NULL,
  `materia` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `productPlace` varchar(255) NOT NULL,
  `priceFiled` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `color`
--

INSERT INTO `color` (`moreId`, `type`, `smallImg`, `bigImg`, `color`, `page`, `productName`, `currentPrice`, `oriPrice`, `saleNum`, `NO`, `fitPhone`, `materia`, `brand`, `productPlace`, `priceFiled`) VALUES
(1, '苹果', 'img/20141016172145.jpg', 'img/20141016170054.jpg', '灰色', 0, '保护套iphone6 Plus手机壳 超薄5.5寸 苹果6 plus手机壳 硅胶透明套TPU外壳 iphone6 Plus手机壳', 9, 22, 2222, '2332', '诺基亚、inphone5s', '塑料', '苹果', '美国', '23-123'),
(2, '苹果', 'img/20141016170634.jpg', 'img/20141016170634.jpg', '透明', 1, '保护套iphone6 Plus手机壳 超薄5.5寸 苹果6 plus手机壳 硅胶透明套TPU外壳 iphone6 Plus手机壳', 9, 22, 2222, '2332', '诺基亚、inphone5s', '塑料', '苹果', '美国', '23-123'),
(3, '苹果', 'img/20141016170906.jpg', 'img/20141016170906fen.jpg', '粉红', 2, '保护套iphone6 Plus手机壳 超薄5.5寸 苹果6 plus手机壳 硅胶透明套TPU外壳 iphone6 Plus手机壳', 9, 22, 2222, '2332', '诺基亚、inphone5s', '塑料', '苹果', '美国', '23-123'),
(4, '苹果', 'img/20141016170750.jpg', 'img/20141016170750zi.jpg', '紫色', 3, '保护套iphone6 Plus手机壳 超薄5.5寸 苹果6 plus手机壳 硅胶透明套TPU外壳 iphone6 Plus手机壳', 9, 25, 2222, '2332', '诺基亚、inphone5s', '塑料', '苹果', '美国', '23-123'),
(5, '苹果', 'img/20141016170713.jpg', 'img/20141016170713lan.jpg', '蓝色', 4, '保护套iphone6 Plus手机壳 超薄5.5寸 苹果6 plus手机壳 硅胶透明套TPU外壳 iphone6 Plus手机壳', 9, 26, 2222, '2332', '诺基亚、inphone5s', '塑料', '苹果', '美国', '23-123'),
(6, '苹果', 'img/20141016170831.jpg', 'img/20141016170831huang.jpg', '草绿色', 5, '保护套iphone6 Plus手机壳 超薄5.5寸 苹果6 plus手机壳 硅胶透明套TPU外壳 iphone6 Plus手机壳', 9, 28, 2222, '2332', '诺基亚、inphone5s', '塑料', '苹果', '美国', '23-123'),
(7, '苹果', 'img/20141016171011.jpg', 'img/20141016171011.jpg', '枚红色', 6, '保护套iphone6 Plus手机壳 超薄5.5寸 苹果6 plus手机壳 硅胶透明套TPU外壳 iphone6 Plus手机壳', 9, 34, 2222, '2332', '诺基亚、inphone5s', '塑料', '苹果', '美国', '23-123'),
(8, '苹果', 'img/20141016170713.jpg', 'img/20141016170713.jpg', '海蓝', 7, '保护套iphone6 Plus手机壳 超薄5.5寸 苹果6 plus手机壳 硅胶透明套TPU外壳 iphone6 Plus手机壳', 9, 31, 2222, '2332', '诺基亚、inphone5s', '塑料', '苹果', '美国', '23-123'),
(9, '三星', 'img/2013715214603.jpg', 'img/2013715214603.jpg', '宝蓝', 0, '捷波朗Jabra BT2046 /BT2045 蓝牙耳机 国行现货 一拖二 三星 苹果 索尼 等通用蓝牙耳机手机配件-BT2046', 12, 44, 3434, '345453', '三星', '塑料', '三星', '中国', '455'),
(10, '三星', 'img/2013715212300.jpg', 'img/2013715212300.jpg', '宝蓝', 1, '捷波朗Jabra BT2046 /BT2045 蓝牙耳机 国行现货 一拖二 三星 苹果 索尼 等通用蓝牙耳机手机配件-BT2046', 12, 44, 3434, '4353', '三星', '塑料', '三星', '中国', '456'),
(11, '三星', 'img/2013715214122.jpg', 'img/2013715214122.jpg', '橙色', 2, '捷波朗Jabra BT2046 /BT2045 蓝牙耳机 国行现货 一拖二 三星 苹果 索尼 等通用蓝牙耳机手机配件-BT2046', 12, 44, 3434, '54354', '三星', '塑料', '三星', '中国', '456'),
(12, '三星', 'img/2013715212858.jpg', 'img/2013715212858.jpg', '经典枚红色', 3, '捷波朗Jabra BT2046 /BT2045 蓝牙耳机 国行现货 一拖二 三星 苹果 索尼 等通用蓝牙耳机手机配件-BT2046', 12, 44, 3434, '43546', '三星', '塑料', '三星', '中国', '5465'),
(13, '三星', 'img/2013715212816.jpg', 'img/2013715212816.jpg', '经典薄荷绿', 4, '捷波朗Jabra BT2046 /BT2045 蓝牙耳机 国行现货 一拖二 三星 苹果 索尼 等通用蓝牙耳机手机配件-BT2046', 12, 44, 3434, '43546', '三星', '塑料', '三星', '中国', '436'),
(14, '三星', 'img/2013715212526.jpg', 'img/2013715212526.jpg', '经典黄色', 5, '捷波朗Jabra BT2046 /BT2045 蓝牙耳机 国行现货 一拖二 三星 苹果 索尼 等通用蓝牙耳机手机配件-BT2046', 12, 44, 3434, '3454', '三星', '塑料', '三星', '中国', '4354'),
(15, '三星', 'img/2013715212410.jpg', 'img/2013715212410.jpg', '经典白色', 6, '捷波朗Jabra BT2046 /BT2045 蓝牙耳机 国行现货 一拖二 三星 苹果 索尼 等通用蓝牙耳机手机配件-BT2046', 12, 44, 65657, '346', '三星', '塑料', '三星', '中国', '4365'),
(16, '苹果5C', 'img/20131014215939.jpg', 'img/20131014215939.jpg', '绿色', 0, '', 0, 0, 0, '', '', '', '', '', ''),
(17, '苹果5C', 'img/20131014215903.jpg', 'img/20131014215903.jpg', '蓝色', 1, '', 0, 0, 0, '', '', '', '', '', ''),
(18, '苹果5C', 'img/20131014215826.jpg', 'img/20131014215826.jpg', '黄色', 2, '', 0, 0, 0, '', '', '', '', '', ''),
(19, '苹果5C', 'img/20131014215759.jpg', 'img/20131014215759.jpg', '红色', 3, '', 0, 0, 0, '', '', '', '', '', ''),
(20, '苹果5C', 'img/20131014215711.jpg', 'img/20131014215711.jpg', '黑色', 4, '', 0, 0, 0, '', '', '', '', '', ''),
(21, '苹果5C', 'img/20131014215551.jpg', 'img/20131014215551.jpg', '白色', 5, '', 0, 0, 0, '', '', '', '', '', ''),
(22, '华为', 'img/20131014215551.jpg', 'img/20131014215551.jpg', '白色', 0, '', 0, 0, 0, '', '', '', '', '', ''),
(23, '华为', 'img/20131014215711.jpg', 'img/20131014215711.jpg', '黑色', 1, '', 0, 0, 0, '', '', '', '', '', ''),
(24, '华为', 'img/20131014215903.jpg', 'img/20131014215903.jpg', '蓝色', 2, '', 0, 0, 0, '', '', '', '', '', ''),
(25, '华为', 'img/20141016172821.jpg', 'img/20141016172821.jpg', '透明', 3, '', 0, 0, 0, '', '', '', '', '', ''),
(26, '华为', 'img/2013715214603.jpg', 'img/2013715214603.jpg', '宝蓝', 4, '', 0, 0, 0, '', '', '', '', '', ''),
(27, 'OPPO', 'img/2013715212816.jpg', 'img/2013715212816.jpg', '经典薄荷绿', 0, '', 0, 0, 0, '', '', '', '', '', ''),
(28, 'OPPO', 'img/20141016172821.jpg', 'img/20141016172821.jpg', '透明', 1, '', 0, 0, 0, '', '', '', '', '', ''),
(29, 'OPPO', 'img/20141016172420.jpg', 'img/20141016172420.jpg', '紫色', 2, '', 0, 0, 0, '', '', '', '', '', ''),
(30, '索尼', 'img/20141016170713.jpg', 'img/20141016170713.jpg', '海蓝', 0, '', 0, 0, 0, '', '', '', '', '', ''),
(31, '索尼', 'img/2013715212300.jpg', 'img/2013715212300.jpg', '宝蓝', 1, '', 0, 0, 0, '', '', '', '', '', ''),
(32, '索尼', 'img/20131014215826.jpg', 'img/20131014215826.jpg', '黄色', 2, '', 0, 0, 0, '', '', '', '', '', ''),
(33, '索尼', 'img/2013715212816.jpg', 'img/2013715212816.jpg', '经典薄荷绿', 3, '', 0, 0, 0, '', '', '', '', '', ''),
(34, '索尼', 'img/2013715212300.jpg', 'img/2013715212300.jpg', '宝蓝', 4, '', 0, 0, 0, '', '', '', '', '', ''),
(35, 'HTC', 'img/20141016172821.jpg', 'img/20141016172821.jpg', '透明', 0, '', 0, 0, 0, '', '', '', '', '', ''),
(36, 'HTC', 'img/20131014215711.jpg', 'img/20131014215711.jpg', '黑色', 1, '', 0, 0, 0, '', '', '', '', '', ''),
(37, 'HTC', 'img/20141016172643.jpg', 'img/20141016172643.jpg', '蓝色', 2, '', 0, 0, 0, '', '', '', '', '', ''),
(38, 'HTC', 'img/2013715212410.jpg', 'img/2013715212410.jpg', '经典白色', 3, '', 0, 0, 0, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `floorBigPic`
--

CREATE TABLE `floorBigPic` (
  `floorBigPicId` int(121) NOT NULL,
  `pic` varchar(223) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `floorBigPic`
--

INSERT INTO `floorBigPic` (`floorBigPicId`, `pic`) VALUES
(1, 'img/mod_ad12.jpg'),
(2, 'img/mod_ad12.jpg'),
(3, 'img/mod_ad12.jpg'),
(4, 'img/mod_ad12.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `floorTitle`
--

CREATE TABLE `floorTitle` (
  `floorId` int(123) NOT NULL,
  `title` varchar(233) NOT NULL,
  `floorBigPic` varchar(223) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `floorTitle`
--

INSERT INTO `floorTitle` (`floorId`, `title`, `floorBigPic`) VALUES
(10, '1F 苹果iphone、ipad保护壳', 'img/mod_ad12.jpg'),
(11, '2F 三星手机保护壳专区', 'img/mod_ad10.jpg'),
(12, '3F 智能手机保护壳系列', 'img/mod_ad15.jpg'),
(13, '4F 户外旅行必备配件', 'img/mod_ad14.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `fourf`
--

CREATE TABLE `fourf` (
  `productName` varchar(255) NOT NULL COMMENT '产品名称',
  `productImg` varchar(255) NOT NULL COMMENT '产品图片',
  `oriPrice` int(50) NOT NULL COMMENT '原价',
  `saleNum` int(50) NOT NULL COMMENT '销售量',
  `currentPrice` int(250) NOT NULL COMMENT '现价',
  `NO` varchar(250) NOT NULL COMMENT '产品编号',
  `fitPhone` varchar(250) NOT NULL COMMENT '适合手机',
  `type` varchar(255) NOT NULL COMMENT '产品类型是手机壳还是什么',
  `material` varchar(255) NOT NULL COMMENT '材料',
  `priceFiled` varchar(255) NOT NULL COMMENT '价格区间',
  `brand` varchar(255) NOT NULL COMMENT '品牌',
  `productPlace` varchar(255) NOT NULL COMMENT '原产地',
  `fourid` int(11) NOT NULL,
  `floorId` int(123) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fourf`
--

INSERT INTO `fourf` (`productName`, `productImg`, `oriPrice`, `saleNum`, `currentPrice`, `NO`, `fitPhone`, `type`, `material`, `priceFiled`, `brand`, `productPlace`, `fourid`, `floorId`) VALUES
('睿量正品 先锋6000毫安移动电源 6000mah充电宝器 聚合物电池芯手机配件-图片色', 'img/649f51f8f06a42a394b7e37b0a01d082.jpg', 91, 90, 34, '091045', 'remax', '移动电源', '', '', 'remax', '中国', 1, 13),
('捷波朗Jabra BT2046 /BT2045 蓝牙耳机 国行现货 一拖二 三星 苹果 索尼 等通用蓝牙耳机手机配件-BT2046', 'img/201339120926.jpg', 91, 90, 66, '091045', 'remax', '移动电源', '', '', 'remax', '中国', 2, 13),
('苹果耳机 iphone5s耳机ipad4/ipadmini耳机 EarPods iphone4S ipad3 touch5耳机盒装手机配件-奶白', 'img/2013422100508.jpg', 32, 90, 23, '091045', 'remax', '移动电源', '', '', 'remax', '中国', 3, 13),
('三星S4 i9500 i9505原配 note2N7100i9300i9220i9100原装线控耳机手机配件-白色', 'img/2013724220719.jpg', 168, 90, 98, '091045', '三星/Samsung', '移动电源', '', '50-99', 'remax', '中国', 4, 13),
('MEL魅力正品5200mAh移动电源支持iphone ipad ipod htc 三星 诺基亚 摩托随身充三色可选手机配件-5200毫安黑色', 'img/201275110543.jpg', 338, 90, 138, '091045', '苹果/Apple 三星', '移动电源', '', '', 'remax', '中国', 5, 13);

-- --------------------------------------------------------

--
-- 表的结构 `freego`
--

CREATE TABLE `freego` (
  `productName` varchar(255) NOT NULL COMMENT '产品名称',
  `productImg` varchar(255) NOT NULL COMMENT '产品图片',
  `oriPrice` varchar(50) NOT NULL COMMENT '原价',
  `saleNum` int(50) NOT NULL COMMENT '销售量',
  `currentPrice` varchar(250) NOT NULL COMMENT '现价',
  `NO` varchar(250) NOT NULL COMMENT '产品编号',
  `fitPhone` varchar(250) NOT NULL COMMENT '适合手机',
  `type` varchar(255) NOT NULL COMMENT '产品类型是手机壳还是什么',
  `material` varchar(255) NOT NULL COMMENT '材料',
  `priceFiled` varchar(255) NOT NULL COMMENT '价格区间',
  `brand` varchar(255) NOT NULL COMMENT '品牌',
  `productPlace` varchar(255) NOT NULL COMMENT '产地',
  `freeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `freego`
--

INSERT INTO `freego` (`productName`, `productImg`, `oriPrice`, `saleNum`, `currentPrice`, `NO`, `fitPhone`, `type`, `material`, `priceFiled`, `brand`, `productPlace`, `freeId`) VALUES
('爆款 镂空圆孔 苹果5C手机壳 iPhone5c iphone5', 'img/20131014215939.jpg', '286', 106, '70.00', '100028', 'iPhone5c iphone5/5s', '手机壳/保护套', '', '', '', '中国', 1),
('iphone4土豪金贴膜 土豪金贴膜 土豪金贴纸 贴膜 iphone4S贴膜手机配件-iphone4/4s土豪金', 'img/20131024222837.jpg', '39', 667, '6.00', '100026', '苹果/Apple', '贴膜', 'PC塑料/ABS', '1-49', '', '中国', 2),
('苹果iphone4s手机壳iphone4手机套韩国happymori硅胶tpu保护套潮保护套卡通可爱外壳手机配件-粉色笑脸', 'img/20121116210411.jpg', '68', 1157, '9.00', '100029', '苹果/Apple', '保护壳/保护套', 'TPU材质', '', '', '中国', 4),
('iphone4保护套iphone4s手机壳韩国可爱卡通kitty猫蝴蝶结边框苹果手机外壳手机配件-白色', 'img/201233141136.jpg', '168', 645, '19.00', '10025', '苹果/Apple', '保护壳/保护套', 'PC塑料/ABS', '', '', '中国', 5),
('iPhone5土豪金贴膜 苹果5S全边框贴纸 金色贴膜变身土豪金5S[活动期0元]手机配件-土豪金', 'img/201233141136.jpg', '39', 906, '9.00', '100030', '苹果/Apple', '贴膜', 'PC塑料/ABS', '1-49', '', '中国', 6),
('小米2s手机保护壳 小米2手机壳 TPU硅胶软壳 自带防尘塞外壳手机配件-海蓝色', 'img/201397155543.jpg', '49', 0, '15.00', '100024', '小米/MIUI', '保护壳/保护套', '硅胶材质 TPU材质', '', '', '中国', 7);

-- --------------------------------------------------------

--
-- 表的结构 `onef`
--

CREATE TABLE `onef` (
  `productName` varchar(255) NOT NULL COMMENT '产品名称',
  `productImg` varchar(255) NOT NULL COMMENT '产品图片',
  `oriPrice` varchar(250) NOT NULL COMMENT '原价',
  `saleNum` int(250) NOT NULL COMMENT '销售量',
  `currentPrice` varchar(250) NOT NULL COMMENT '现价',
  `NO` varchar(250) NOT NULL COMMENT '产品编号',
  `fitPhone` varchar(250) NOT NULL COMMENT '适合手机',
  `type` varchar(255) NOT NULL COMMENT '产品类型是手机壳还是什么',
  `material` varchar(255) NOT NULL COMMENT '材料',
  `priceFiled` varchar(255) NOT NULL COMMENT '价格区间',
  `brand` varchar(255) NOT NULL COMMENT '品牌',
  `productPlace` varchar(255) NOT NULL COMMENT '原产地',
  `oneid` int(11) NOT NULL,
  `onefid` int(11) NOT NULL,
  `floorId` int(233) NOT NULL,
  `productFather` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `onef`
--

INSERT INTO `onef` (`productName`, `productImg`, `oriPrice`, `saleNum`, `currentPrice`, `NO`, `fitPhone`, `type`, `material`, `priceFiled`, `brand`, `productPlace`, `oneid`, `onefid`, `floorId`, `productFather`) VALUES
('iPhone5土豪金贴膜 苹果5S全边框贴纸 金色贴膜变身土豪金5S[活动期0元]手机配件-土豪金', 'img/2013109112914.jpg', '39', 906, '9.00', '2414904', '苹果/Apple', '贴膜', 'PC塑料/ABS', '1-49', '', '中国', 1, 0, 10, 'iphone6'),
('迪沃iphone 5C保护壳 苹果iphone5C 苹果5c蝉翼磨砂保护壳手机配件-图片色', 'img/ef589603d88842d4b64dbd3c663cfdd3.jpg', '78', 15, '38.00', '6421031', '', '保护壳/保护套', '', '', '', '中国', 2, 0, 10, 'iphone6s'),
('卡来登 ipad4保护套ipad2保护壳new ipad3皮套苹果三折支架平板套冰晶外壳手机配件-闪金', 'img/2013722214455.jpg', '168', 57, '88.00', '38503', '苹果/Apple', '保护壳/保护套', '卡来登', '', '', '中国', 3, 0, 10, 'iphone7'),
('爆款 镂空圆孔 苹果5C手机壳 iPhone5c iphone5/5s可用保护套 硅胶手机壳保护壳原装正品手机配件-绿色', 'img/2013722214455.jpg', '168', 57, '88.00', '38503', '苹果/Apple', '保护壳/保护套', '卡来登', '', '', '中国', 4, 0, 10, 'ipad'),
('iphone4s皮套苹果4手机壳真皮质感手机套卡来登英伦左右开翻盖保护套皮夹保护外壳手机配件-棕色', 'img/20121122214100.jpg', '88', 57, '45.00', '38503', '苹果/Apple', '保护壳/保护套', '卡来登', '', '', '中国', 5, 0, 10, 'iphone5');

-- --------------------------------------------------------

--
-- 表的结构 `order`
--

CREATE TABLE `order` (
  `ordernumber` varchar(255) NOT NULL COMMENT '订单号',
  `receiver` varchar(255) NOT NULL COMMENT '收货人',
  `totalprice` varchar(255) NOT NULL COMMENT '总价',
  `ordertime` varchar(255) NOT NULL COMMENT '下单时间',
  `orderstatu` varchar(255) NOT NULL COMMENT '订单状态',
  `operation` varchar(250) NOT NULL COMMENT '产品编号',
  `shopid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pagetwo`
--

CREATE TABLE `pagetwo` (
  `pageId` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `person` int(255) NOT NULL,
  `imgs` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pagetwo`
--

INSERT INTO `pagetwo` (`pageId`, `title`, `person`, `imgs`) VALUES
(1, '超级0元购 一优品持续约惠活动', 888, 'pageTwoImg/lr4.jpg'),
(2, 'iphone4/4s精品特辑', 15638, 'pageTwoImg/iphone4s_hd.jpg'),
(3, '蓝牙耳机/接收器/音响应有尽有', 7302, 'pageTwoImg/lr1.jpg'),
(4, '三星I9500/s4精品汇', 7510, 'pageTwoImg/s41.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE `product` (
  `oneId` int(255) NOT NULL COMMENT '设置外键',
  `twoId` int(255) NOT NULL COMMENT '设置外键',
  `fourId` int(255) NOT NULL COMMENT '设置外键',
  `threeId` int(255) NOT NULL COMMENT '设置外键',
  `cheapId` int(255) NOT NULL COMMENT '设置外键',
  `colorNum` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `productName` varchar(255) NOT NULL COMMENT '产品名称',
  `bigImg` varchar(255) NOT NULL,
  `productImg` varchar(255) NOT NULL COMMENT '产品图片',
  `oriPrice` int(50) NOT NULL COMMENT '原价',
  `saleNum` int(50) NOT NULL COMMENT '销售量',
  `currentPrice` int(250) NOT NULL COMMENT '现价',
  `NO` varchar(250) NOT NULL COMMENT '产品编号',
  `fitPhone` varchar(250) NOT NULL COMMENT '适合手机',
  `type` varchar(255) NOT NULL COMMENT '产品类型是手机壳还是什么',
  `material` varchar(255) NOT NULL COMMENT '材料',
  `priceFiled` varchar(255) NOT NULL COMMENT '价格区间',
  `brand` varchar(255) NOT NULL COMMENT '品牌',
  `productPlace` varchar(255) NOT NULL COMMENT '产地',
  `color` varchar(255) NOT NULL COMMENT '颜色',
  `page` varchar(255) NOT NULL COMMENT '页数',
  `duobiao` int(222) NOT NULL,
  `floorId` int(222) NOT NULL,
  `freeId` int(232) NOT NULL,
  `paoductId` int(223) NOT NULL,
  `productFather` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`oneId`, `twoId`, `fourId`, `threeId`, `cheapId`, `colorNum`, `name`, `productName`, `bigImg`, `productImg`, `oriPrice`, `saleNum`, `currentPrice`, `NO`, `fitPhone`, `type`, `material`, `priceFiled`, `brand`, `productPlace`, `color`, `page`, `duobiao`, `floorId`, `freeId`, `paoductId`, `productFather`) VALUES
(0, 0, 0, 0, 20, 4, '苹果', '保护套iphone6 Plus手机壳 超薄5.5寸 苹果6 plus手机壳 硅胶透明套TPU外壳 iphone6 Plus手机壳 ', 'img/20141016170634.jpg', 'img/20131024222837.jpg', 123, 123, 34, '23231', '诺基亚、inphone5s', '手机壳', '塑料', '23~123', '拉是', '中国', '透明', '0', 0, 0, 0, 1, 'iphone6'),
(0, 0, 0, 0, 25, 5, '苹果', '保护套iphone5 手机壳 超薄5.5寸 苹果5 plus手机壳 硅胶透明套TPU外壳 ', 'img/20141016170906fen.jpg', 'img/ef589603d88842d4b64dbd3c663cfdd3.jpg', 21, 93, 34, '23x1xx', '诺基亚、inphone5s', '手机壳', '塑料', '23~103', '四时天下', '中国', '粉色', '1', 0, 0, 0, 2, 'iphone7'),
(0, 0, 0, 0, 26, 6, '苹果', '保护套iphone5 手机壳 超薄5.5寸 苹果5 plus手机壳 硅胶透明套TPU外壳 ', 'img/20141016170713lan.jpg', 'img/2013722214455.jpg', 98, 193, 32365, 'aa23x1xx', '诺基亚、inphone5s、三星', '手机壳', '硅胶', '43~123', '四时天下', '中国', '蓝色', '2', 0, 0, 0, 3, 'iphone6s'),
(0, 0, 0, 0, 27, 2, '苹果', '保护套iphone5 手机壳 超薄5.5寸 苹果5 plus手机壳 硅胶透明套TPU外壳 ', 'img/20141016170634.jpg', 'img/20131014215551.jpg', 168, 313, 103, 'aa213', '诺基亚、inphone5s、三星', '手机壳', '硅胶', '62~123', 'aad', '中国', '透明', '3', 0, 0, 0, 4, 'iphone5s'),
(0, 0, 0, 0, 28, 3, '苹果', '保护套iphone5 手机壳 超薄515寸 苹果5a plus手机壳 硅胶透明套TPU外壳 ', 'img/20141016170054.jpg', 'img/20121122214100.jpg', 168, 312, 65, 'aa21adfd', '诺基亚、inphone5s、三星、华为', '手机壳', '硅胶', '62~98', '飒飒', '中国', '灰色', '4', 0, 0, 0, 5, 'iphone5'),
(0, 0, 1, 0, 1, 3, '三星', '睿量正品 先锋6000毫安移动电源 6000mah充电宝器 聚合物电池芯手机配件-图片色', 'img/20141016170831big.jpg', 'img/649f51f8f06a42a394b7e37b0a01d082.jpg', 91, 90, 34, '091045', 'remax', '移动电源', '', '', 'remax', '中国', '蓝色', '5', 0, 13, 0, 6, '三星'),
(0, 0, 2, 0, 2, 5, '三星', '捷波朗Jabra BT2046 /BT2045 蓝牙耳机 国行现货 一拖二 三星 苹果 索尼 等通用蓝牙耳机手机配件-BT2046', 'img/20141016170831big.jpg', 'img/201339120926.jpg', 91, 90, 66, '091045', 'remax', '移动电源', '', '', 'remax', '中国', '粉色', '6', 0, 13, 0, 7, ''),
(0, 0, 3, 0, 3, 4, '三星', '苹果耳机 iphone5s耳机ipad4/ipadmini耳机 EarPods iphone4S ipad3 touch5耳机盒装手机配件-奶白', 'img/20141016170831big.jpg', 'img/2013422100508.jpg', 32, 90, 23, '091045', 'remax', '移动电源', '', '', 'remax', '中国', '红色', '7', 0, 13, 0, 8, ''),
(0, 0, 4, 0, 4, 3, '三星', '三星S4 i9500 i9505原配 note2N7100i9300i9220i9100原装线控耳机手机配件-白色', 'img/20141016170831big.jpg', 'img/2013724220719.jpg', 168, 90, 98, '091045', '三星/Samsung', '移动电源', '', '50-99', 'remax', '中国', '绿色', '8', 0, 13, 0, 9, ''),
(0, 0, 5, 0, 5, 6, '三星', 'MEL魅力正品5200mAh移动电源支持iphone ipad ipod htc 三星 诺基亚 摩托随身充三色可选手机配件-5200毫安黑色', 'img/20141016170831big.jpg', 'img/201275110543.jpg', 338, 90, 138, '091045', '苹果/Apple 三星', '移动电源', '', '', 'remax', '中国', '黑色', '9', 0, 13, 0, 10, ''),
(1, 0, 0, 0, 6, 5, '苹果5C', 'iPhone5土豪金贴膜 苹果5S全边框贴纸 金色贴膜变身土豪金5S[活动期0元]手机配件-土豪金', '', 'img/2013109112914.jpg', 39, 906, 9, '2414904', '苹果/Apple', '贴膜', 'PC塑料/ABS', '1-49', '', '中国', '', '', 0, 10, 0, 11, ''),
(2, 0, 0, 0, 0, 5, '苹果5C', '迪沃iphone 5C保护壳 苹果iphone5C 苹果5c蝉翼磨砂保护壳手机配件-图片色', '', 'img/ef589603d88842d4b64dbd3c663cfdd3.jpg', 78, 15, 38, '6421031', '', '保护壳/保护套', '', '', '', '中国', '', '', 0, 10, 0, 12, ''),
(3, 0, 0, 0, 0, 6, '苹果5C', '卡来登 ipad4保护套ipad2保护壳new ipad3皮套苹果三折支架平板套冰晶外壳手机配件-闪金', '', 'img/2013722214455.jpg', 168, 57, 88, '38503', '苹果/Apple', '保护壳/保护套', '卡来登', '', '', '中国', '', '', 0, 10, 0, 13, ''),
(4, 0, 0, 0, 0, 5, '苹果5C', '爆款 镂空圆孔 苹果5C手机壳 iPhone5c iphone5/5s可用保护套 硅胶手机壳保护壳原装正品手机配件-绿色', '', 'img/2013722214455.jpg', 168, 57, 88, '38503', '苹果/Apple', '保护壳/保护套', '卡来登', '', '', '中国', '', '', 0, 10, 0, 14, ''),
(5, 0, 0, 0, 0, 4, '苹果5C', 'iphone4s皮套苹果4手机壳真皮质感手机套卡来登英伦左右开翻盖保护套皮夹保护外壳手机配件-棕色', '', 'img/20121122214100.jpg', 88, 57, 45, '38503', '苹果/Apple', '保护壳/保护套', '卡来登', '', '', '中国', '', '', 0, 10, 0, 15, ''),
(0, 0, 0, 1, 0, 4, 'HTC', 'HTC ONE手机套M7手机壳卡来登唯斜纹侧翻M7皮套one保护套左右开外壳手机配件-粉色', '', 'img/2013423111042.jpg', 118, 46, 67, '2456543', 'HTC', '保护壳/保护套', 'PU皮/真皮', '50-99', 'M7', '中国', '', '', 0, 12, 0, 16, ''),
(0, 0, 0, 2, 0, 4, '索尼', '倍思正品 索尼L36i手机丝壳Sony Xperia Z保护壳L36h手机套c6603手机壳保护套超薄透明手机配件-白色', '', 'img/2013524190558.jpg', 118, 67, 67, '2456346', 'HTC', '保护壳/保护套', 'PU皮/真皮', '50-99', 'M7', '中国', '', '', 0, 12, 0, 17, ''),
(0, 0, 0, 3, 0, 3, '华为', '卡来登 华为P6手机皮套 华为P6手机套 P6保护套P6皮套p6手机壳 英伦 左右开翻盖 外壳 正品手机配件-棕色', '', 'img/2013711154913.jpg', 118, 673, 56, '2456346', 'HTC', '保护壳/保护套', 'PU皮/真皮', '50-99', 'M7', '中国', '', '', 0, 12, 0, 18, ''),
(0, 0, 0, 4, 0, 3, 'OPPO', 'OPPO X909手机皮套 ROCK 洛克 Find 5手机套x909手机壳保护套大都市侧翻系列手机配件保护壳原装正品手机配件-深蓝', '', 'img/2013329160905.jpg', 118, 4632, 50, '24562', 'HTC', '保护壳/保护套', 'PU皮/真皮', '50-99', '', '中国', '', '', 0, 12, 0, 19, ''),
(0, 0, 0, 5, 0, 4, '华为', '卡来登 华为p6手机壳 电信版 华为p6手机套p6皮套保护套 冰晶 正品保护壳手机配件-黑色', '', 'img/2013722211823.jpg', 345, 354, 70, '2456234', 'HTC', '保护壳/保护套', 'PU皮/真皮', '50-99', 'M7', '中国', '', '', 0, 12, 0, 20, ''),
(0, 1, 0, 0, 0, 6, '三星', '三星i9500原装皮套 i959皮套 S4手机套 三星i9502手机壳 i9508保护套正品手机配件-宝蓝', '', 'img/2013715214603.jpg', 268, 154, 150, '1344656', '三星/Samsung', '保护壳/保护套', 'PU皮/真皮', '200-300', '三星', '中国', '', '', 0, 11, 0, 21, ''),
(0, 2, 0, 0, 0, 4, '三星', '三星i9500原装皮套 i959皮套 S4手机套 三星i9502手机壳 i9508保护套正品手机配件-开窗橙色', '', 'img/2013715220107.jpg', 432, 199, 150, '1344423', '三星/Samsung', '保护壳/保护套', 'PU皮/真皮', '200-300', '三星', '中国', '', '', 0, 11, 0, 22, ''),
(0, 3, 0, 0, 0, 3, '三星', '三星N7100手机套N7102皮套N7108手机壳Note2保护套 卡来登冰晶N719左右开翻盖保护壳正品手机配件-闪金', '', 'img/2013619134931.jpg', 98, 94, 46, '1344435', '三星/Samsung', '保护壳/保护套', 'PU皮/真皮', '200-300', '三星', '中国', '', '', 0, 11, 0, 23, ''),
(0, 4, 0, 0, 0, 5, '三星', '三星i9300手机套Galaxy S3皮套卡来登唯系列左右开翻盖i9308手机壳韩潮手机套外壳手机配件-橙色', '', 'img/20121225105601.jpg', 88, 230, 44, '134456', '三星/Samsung', '保护壳/保护套', 'PU皮/真皮', '100-580', '三星', '中国', '', '', 0, 11, 0, 24, ''),
(0, 5, 0, 0, 0, 6, '三星', '三星I9082手机套I9080手机壳 REMAX 超薄磨砂保护套布丁软套送贴膜手机配件-蓝色', '', 'img/2013715220107.jpg', 34, 56, 17, '13445456', '三星/Samsung', '保护壳/保护套', 'PU皮/真皮', '100-580', '三星', '中国', '', '', 0, 11, 0, 25, ''),
(0, 0, 0, 0, 0, 0, '', '爆款 镂空圆孔 苹果5C手机壳 iPhone5c iphone5', '', 'img/20131014215939.jpg', 286, 106, 70, '100028', 'iPhone5c iphone5/5s', '手机壳/保护套', '', '', '', '中国', '', '', 0, 0, 1, 26, ''),
(0, 0, 0, 0, 0, 0, '', 'iphone4土豪金贴膜 土豪金贴膜 土豪金贴纸 贴膜 iphone4S贴膜手机配件-iphone4/4s土豪金', '', 'img/20131024222837.jpg', 39, 667, 6, '100026', '苹果/Apple', '贴膜', 'PC塑料/ABS', '1-49', '', '中国', '', '', 0, 0, 2, 27, ''),
(0, 0, 0, 0, 0, 0, '', '苹果iphone4s手机壳iphone4手机套韩国happymori硅胶tpu保护套潮保护套卡通可爱外壳手机配件-粉色笑脸', '', 'img/20121116210411.jpg', 68, 1157, 9, '100029', '苹果/Apple', '保护壳/保护套', 'TPU材质', '', '', '中国', '', '', 0, 0, 4, 28, ''),
(0, 0, 0, 0, 0, 0, '', 'iphone4保护套iphone4s手机壳韩国可爱卡通kitty猫蝴蝶结边框苹果手机外壳手机配件-白色', '', 'img/201233141136.jpg', 168, 645, 19, '10025', '苹果/Apple', '保护壳/保护套', 'PC塑料/ABS', '', '', '中国', '', '', 0, 0, 5, 29, ''),
(0, 0, 0, 0, 0, 0, '', 'iPhone5土豪金贴膜 苹果5S全边框贴纸 金色贴膜变身土豪金5S[活动期0元]手机配件-土豪金', '', 'img/201233141136.jpg', 39, 906, 9, '100030', '苹果/Apple', '贴膜', 'PC塑料/ABS', '1-49', '', '中国', '', '', 0, 0, 6, 30, ''),
(0, 0, 0, 0, 0, 0, '', '小米2s手机保护壳 小米2手机壳 TPU硅胶软壳 自带防尘塞外壳手机配件-海蓝色', '', 'img/201397155543.jpg', 49, 0, 15, '100024', '小米/MIUI', '保护壳/保护套', '硅胶材质 TPU材质', '', '', '中国', '', '', 0, 0, 7, 31, '');

-- --------------------------------------------------------

--
-- 表的结构 `selectCheap`
--

CREATE TABLE `selectCheap` (
  `selectCheapId` int(255) NOT NULL COMMENT '设置主键自增',
  `cheapId` int(255) NOT NULL COMMENT '产品id',
  `color` varchar(255) NOT NULL COMMENT '颜色',
  `pic` int(50) NOT NULL COMMENT '图片'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `selectCheap`
--

INSERT INTO `selectCheap` (`selectCheapId`, `cheapId`, `color`, `pic`) VALUES
(1, 25, '312', 4124);

-- --------------------------------------------------------

--
-- 表的结构 `selectImg`
--

CREATE TABLE `selectImg` (
  `selectId` int(255) NOT NULL COMMENT '图片主键',
  `smallImg` varchar(255) NOT NULL,
  `page` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `selectImg`
--

INSERT INTO `selectImg` (`selectId`, `smallImg`, `page`) VALUES
(1, 'img/xiangqingImg/20141016172821.jpg', 0),
(2, 'img/xiangqingImg/20141016172420.jpg', 1),
(3, 'img/xiangqingImg/20141016172643.jpg', 2),
(4, 'img/xiangqingImg/20141016172726.jpg', 3),
(5, 'img/xiangqingImg/20141016172145.jpg', 4);

-- --------------------------------------------------------

--
-- 表的结构 `threef`
--

CREATE TABLE `threef` (
  `productName` varchar(255) NOT NULL COMMENT '产品名称',
  `productImg` varchar(255) NOT NULL COMMENT '产品图片',
  `oriPrice` int(50) NOT NULL COMMENT '原价',
  `saleNum` int(50) NOT NULL COMMENT '销售量',
  `currentPrice` int(250) NOT NULL COMMENT '现价',
  `NO` varchar(250) NOT NULL COMMENT '产品编号',
  `fitPhone` varchar(250) NOT NULL COMMENT '适合手机',
  `type` varchar(255) NOT NULL COMMENT '产品类型是手机壳还是什么',
  `material` varchar(255) NOT NULL COMMENT '材料',
  `priceFiled` varchar(255) NOT NULL COMMENT '价格区间',
  `brand` varchar(255) NOT NULL COMMENT '品牌',
  `productPlace` varchar(255) NOT NULL COMMENT '原产地',
  `threeid` int(255) NOT NULL,
  `floorId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `threef`
--

INSERT INTO `threef` (`productName`, `productImg`, `oriPrice`, `saleNum`, `currentPrice`, `NO`, `fitPhone`, `type`, `material`, `priceFiled`, `brand`, `productPlace`, `threeid`, `floorId`) VALUES
('HTC ONE手机套M7手机壳卡来登唯斜纹侧翻M7皮套one保护套左右开外壳手机配件-粉色', 'img/2013423111042.jpg', 118, 46, 67, '2456543', 'HTC', '保护壳/保护套', 'PU皮/真皮', '50-99', 'M7', '中国', 1, 12),
('倍思正品 索尼L36i手机丝壳Sony Xperia Z保护壳L36h手机套c6603手机壳保护套超薄透明手机配件-白色', 'img/2013524190558.jpg', 118, 67, 67, '2456346', 'HTC', '保护壳/保护套', 'PU皮/真皮', '50-99', 'M7', '中国', 2, 12),
('卡来登 华为P6手机皮套 华为P6手机套 P6保护套P6皮套p6手机壳 英伦 左右开翻盖 外壳 正品手机配件-棕色', 'img/2013711154913.jpg', 118, 673, 56, '2456346', 'HTC', '保护壳/保护套', 'PU皮/真皮', '50-99', 'M7', '中国', 3, 12),
('OPPO X909手机皮套 ROCK 洛克 Find 5手机套x909手机壳保护套大都市侧翻系列手机配件保护壳原装正品手机配件-深蓝', 'img/2013329160905.jpg', 118, 4632, 50, '24562', 'HTC', '保护壳/保护套', 'PU皮/真皮', '50-99', '', '中国', 4, 12),
('卡来登 华为p6手机壳 电信版 华为p6手机套p6皮套保护套 冰晶 正品保护壳手机配件-黑色', 'img/2013722211823.jpg', 345, 354, 70, '2456234', 'HTC', '保护壳/保护套', 'PU皮/真皮', '50-99', 'M7', '中国', 5, 12);

-- --------------------------------------------------------

--
-- 表的结构 `twof`
--

CREATE TABLE `twof` (
  `productName` varchar(255) NOT NULL COMMENT '产品名称',
  `productImg` varchar(255) NOT NULL COMMENT '产品图片',
  `oriPrice` int(50) NOT NULL COMMENT '原价',
  `saleNum` int(50) NOT NULL COMMENT '销售量',
  `currentPrice` int(250) NOT NULL COMMENT '现价',
  `NO` varchar(250) NOT NULL COMMENT '产品编号',
  `fitPhone` varchar(250) NOT NULL COMMENT '适合手机',
  `type` varchar(255) NOT NULL COMMENT '产品类型是手机壳还是什么',
  `material` varchar(255) NOT NULL COMMENT '材料',
  `priceFiled` varchar(255) NOT NULL COMMENT '价格区间',
  `brand` varchar(255) NOT NULL COMMENT '品牌',
  `productPlace` varchar(255) NOT NULL COMMENT '原产地',
  `twoid` int(255) NOT NULL,
  `floorId` int(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `twof`
--

INSERT INTO `twof` (`productName`, `productImg`, `oriPrice`, `saleNum`, `currentPrice`, `NO`, `fitPhone`, `type`, `material`, `priceFiled`, `brand`, `productPlace`, `twoid`, `floorId`) VALUES
('三星i9500原装皮套 i959皮套 S4手机套 三星i9502手机壳 i9508保护套正品手机配件-宝蓝', 'img/2013715214603.jpg', 268, 154, 150, '1344656', '三星/Samsung', '保护壳/保护套', 'PU皮/真皮', '200-300', '三星', '中国', 1, 11),
('三星i9500原装皮套 i959皮套 S4手机套 三星i9502手机壳 i9508保护套正品手机配件-开窗橙色', 'img/2013715220107.jpg', 432, 199, 150, '1344423', '三星/Samsung', '保护壳/保护套', 'PU皮/真皮', '200-300', '三星', '中国', 2, 11),
('三星N7100手机套N7102皮套N7108手机壳Note2保护套 卡来登冰晶N719左右开翻盖保护壳正品手机配件-闪金', 'img/2013619134931.jpg', 98, 94, 46, '1344435', '三星/Samsung', '保护壳/保护套', 'PU皮/真皮', '200-300', '三星', '中国', 3, 11),
('三星i9300手机套Galaxy S3皮套卡来登唯系列左右开翻盖i9308手机壳韩潮手机套外壳手机配件-橙色', 'img/20121225105601.jpg', 88, 230, 44, '134456', '三星/Samsung', '保护壳/保护套', 'PU皮/真皮', '100-580', '三星', '中国', 4, 11),
('三星I9082手机套I9080手机壳 REMAX 超薄磨砂保护套布丁软套送贴膜手机配件-蓝色', 'img/2013715220107.jpg', 34, 56, 17, '13445456', '三星/Samsung', '保护壳/保护套', 'PU皮/真皮', '100-580', '三星', '中国', 5, 11);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `userId` int(255) NOT NULL COMMENT '主键',
  `pwd` varchar(255) NOT NULL COMMENT '密码',
  `rePwd` varchar(255) NOT NULL COMMENT '确认密码',
  `name` varchar(250) NOT NULL COMMENT '姓名',
  `address` varchar(250) NOT NULL COMMENT '地址',
  `street` varchar(250) NOT NULL COMMENT '街道',
  `phone` varchar(250) NOT NULL COMMENT '手机号',
  `email` varchar(255) NOT NULL,
  `cancelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`userId`, `pwd`, `rePwd`, `name`, `address`, `street`, `phone`, `email`, `cancelId`) VALUES
(3, '123321', '123321', '笑笑', '安徽省-宿州市-砀山县', '白帽镇', '18895737070', '3050311755@qq.com', 0),
(11, '11111', '11111', '娜娜', '北京-北京市-东城区', '11', '1233445', '11111@qq.com', 0),
(12, '123456', '123456', '', '', '', '', '123456@qq.com', 0),
(13, '222', '222', '余蕾', '安徽安庆', '岳西', '18895738040', '2997278963@qq.com', 0);

-- --------------------------------------------------------

--
-- 表的结构 `zerobuy`
--

CREATE TABLE `zerobuy` (
  `productName` varchar(255) NOT NULL COMMENT '产品名称',
  `productImg` varchar(255) NOT NULL COMMENT '产品图片',
  `oriPrice` varchar(50) NOT NULL COMMENT '原价',
  `saleNum` int(50) NOT NULL COMMENT '销售量',
  `currentPrice` varchar(250) NOT NULL COMMENT '现价',
  `NO` varchar(250) NOT NULL COMMENT '产品编号',
  `fitPhone` varchar(250) NOT NULL COMMENT '适合手机',
  `type` varchar(255) NOT NULL COMMENT '产品类型是手机壳还是什么',
  `material` varchar(255) NOT NULL COMMENT '材料',
  `priceFiled` varchar(255) NOT NULL COMMENT '价格区间',
  `brand` varchar(255) NOT NULL COMMENT '品牌',
  `productPlace` varchar(255) NOT NULL COMMENT '产地',
  `freeId` int(11) NOT NULL,
  `duobiao` int(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zerobuy`
--

INSERT INTO `zerobuy` (`productName`, `productImg`, `oriPrice`, `saleNum`, `currentPrice`, `NO`, `fitPhone`, `type`, `material`, `priceFiled`, `brand`, `productPlace`, `freeId`, `duobiao`) VALUES
('爆款 镂空圆孔 苹果5C手机壳 iPhone5c iphone5', 'img/20131014215939.jpg', '286', 106, '70.00', '100028', 'iPhone5c iphone5/5s', '手机壳/保护套', '', '', '', '中国', 1, 0),
('iphone4土豪金贴膜 土豪金贴膜 土豪金贴纸 贴膜 iphone4S贴膜手机配件-iphone4/4s土豪金', 'img/20131024222837.jpg', '39', 667, '6.00', '100026', '苹果/Apple', '贴膜', 'PC塑料/ABS', '1-49', '', '中国', 2, 0),
('苹果iphone4s手机壳iphone4手机套韩国happymori硅胶tpu保护套潮保护套卡通可爱外壳手机配件-粉色笑脸', 'img/20121116210411.jpg', '68', 1157, '9.00', '100029', '苹果/Apple', '保护壳/保护套', 'TPU材质', '', '', '中国', 4, 0),
('iphone4保护套iphone4s手机壳韩国可爱卡通kitty猫蝴蝶结边框苹果手机外壳手机配件-白色', 'img/201233141136.jpg', '168', 645, '19.00', '10025', '苹果/Apple', '保护壳/保护套', 'PC塑料/ABS', '', '', '中国', 5, 0),
('iPhone5土豪金贴膜 苹果5S全边框贴纸 金色贴膜变身土豪金5S[活动期0元]手机配件-土豪金', 'img/201233141136.jpg', '39', 906, '9.00', '100030', '苹果/Apple', '贴膜', 'PC塑料/ABS', '1-49', '', '中国', 6, 0),
('小米2s手机保护壳 小米2手机壳 TPU硅胶软壳 自带防尘塞外壳手机配件-海蓝色', 'img/201397155543.jpg', '49', 0, '15.00', '100024', '小米/MIUI', '保护壳/保护套', '硅胶材质 TPU材质', '', '', '中国', 7, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`carId`);

--
-- Indexes for table `cheap`
--
ALTER TABLE `cheap`
  ADD PRIMARY KEY (`cheapId`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`moreId`);

--
-- Indexes for table `floorBigPic`
--
ALTER TABLE `floorBigPic`
  ADD PRIMARY KEY (`floorBigPicId`);

--
-- Indexes for table `floorTitle`
--
ALTER TABLE `floorTitle`
  ADD PRIMARY KEY (`floorId`);

--
-- Indexes for table `fourf`
--
ALTER TABLE `fourf`
  ADD PRIMARY KEY (`fourid`);

--
-- Indexes for table `freego`
--
ALTER TABLE `freego`
  ADD PRIMARY KEY (`freeId`);

--
-- Indexes for table `onef`
--
ALTER TABLE `onef`
  ADD PRIMARY KEY (`oneid`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`shopid`);

--
-- Indexes for table `pagetwo`
--
ALTER TABLE `pagetwo`
  ADD PRIMARY KEY (`pageId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`paoductId`);

--
-- Indexes for table `selectCheap`
--
ALTER TABLE `selectCheap`
  ADD PRIMARY KEY (`selectCheapId`);

--
-- Indexes for table `selectImg`
--
ALTER TABLE `selectImg`
  ADD PRIMARY KEY (`selectId`);

--
-- Indexes for table `threef`
--
ALTER TABLE `threef`
  ADD PRIMARY KEY (`threeid`);

--
-- Indexes for table `twof`
--
ALTER TABLE `twof`
  ADD PRIMARY KEY (`twoid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `zerobuy`
--
ALTER TABLE `zerobuy`
  ADD PRIMARY KEY (`freeId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `carId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100183;
--
-- AUTO_INCREMENT for table `cheap`
--
ALTER TABLE `cheap`
  MODIFY `cheapId` int(255) NOT NULL AUTO_INCREMENT COMMENT '设置主键自增', AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `moreId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `floorBigPic`
--
ALTER TABLE `floorBigPic`
  MODIFY `floorBigPicId` int(121) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `floorTitle`
--
ALTER TABLE `floorTitle`
  MODIFY `floorId` int(123) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `fourf`
--
ALTER TABLE `fourf`
  MODIFY `fourid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `freego`
--
ALTER TABLE `freego`
  MODIFY `freeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `onef`
--
ALTER TABLE `onef`
  MODIFY `oneid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `shopid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `paoductId` int(223) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `selectCheap`
--
ALTER TABLE `selectCheap`
  MODIFY `selectCheapId` int(255) NOT NULL AUTO_INCREMENT COMMENT '设置主键自增', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `selectImg`
--
ALTER TABLE `selectImg`
  MODIFY `selectId` int(255) NOT NULL AUTO_INCREMENT COMMENT '图片主键', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `threef`
--
ALTER TABLE `threef`
  MODIFY `threeid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `twof`
--
ALTER TABLE `twof`
  MODIFY `twoid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(255) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `zerobuy`
--
ALTER TABLE `zerobuy`
  MODIFY `freeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
