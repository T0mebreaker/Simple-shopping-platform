/*
Navicat MySQL Data Transfer

Source Server         : whsxt
Source Server Version : 50540
Source Host           : 127.0.0.1:3306
Source Database       : webshopping

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2018-11-22 16:49:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) CHARACTER SET gbk DEFAULT NULL,
  `username` varchar(255) CHARACTER SET gbk DEFAULT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', '123489', 'admin');

-- ----------------------------
-- Table structure for commodityclasses
-- ----------------------------
DROP TABLE IF EXISTS `commodityclasses`;
CREATE TABLE `commodityclasses` (
  `commodityClassId` int(11) NOT NULL AUTO_INCREMENT,
  `commodityClassName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`commodityClassId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commodityclasses
-- ----------------------------
INSERT INTO `commodityclasses` VALUES ('1', '虚拟');
INSERT INTO `commodityclasses` VALUES ('2', '服装');
INSERT INTO `commodityclasses` VALUES ('3', '鞋包配件');
INSERT INTO `commodityclasses` VALUES ('4', '运动户外');
INSERT INTO `commodityclasses` VALUES ('5', '珠宝手表');
INSERT INTO `commodityclasses` VALUES ('6', '数码');
INSERT INTO `commodityclasses` VALUES ('7', '家电');
INSERT INTO `commodityclasses` VALUES ('8', '美容彩妆');
INSERT INTO `commodityclasses` VALUES ('10', '书籍');
INSERT INTO `commodityclasses` VALUES ('13', '电子类');
INSERT INTO `commodityclasses` VALUES ('16', '食品饮料');

-- ----------------------------
-- Table structure for commoditys
-- ----------------------------
DROP TABLE IF EXISTS `commoditys`;
CREATE TABLE `commoditys` (
  `commodityId` int(11) NOT NULL AUTO_INCREMENT,
  `commodityAmount` int(11) DEFAULT NULL,
  `commodityDepict` varchar(255) DEFAULT NULL,
  `commodityLeaveNum` int(11) DEFAULT NULL,
  `commodityName` varchar(255) DEFAULT NULL,
  `commodityPrice` double(10,0) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `webPrice` double(10,0) DEFAULT NULL,
  `commodityClass_commodityClassId` int(11) DEFAULT NULL,
  PRIMARY KEY (`commodityId`),
  KEY `FK4616CEE64542CEEB` (`commodityClass_commodityClassId`),
  CONSTRAINT `FK4616CEE64542CEEB` FOREIGN KEY (`commodityClass_commodityClassId`) REFERENCES `commodityclasses` (`commodityClassId`),
  CONSTRAINT `FKj4tautjpjuo1vbr4b3gpa758i` FOREIGN KEY (`commodityClass_commodityClassId`) REFERENCES `commodityclasses` (`commodityClassId`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commoditys
-- ----------------------------
INSERT INTO `commoditys` VALUES ('1', '60', '品牌：捷易通贝平台<br/>专项卡产品： 捷易通贝自动充值软件<br/>充值类别：全国移动、联通、电信、QQ、Q币Q点、网游游戏点卡等业务', '46', '捷易通贝自动充值软件\r\n', '500', 'jyt.jpg', '捷易通贝', '240', '1');
INSERT INTO `commoditys` VALUES ('2', '50', '店铺类型:：旺铺扶持版<br/>网店装修： 全套装修模版<br/>服务类型： 虚拟物品类', '20', '充值旺铺扶持版\r\n', '70', 'czwp.jpg', '旺铺', '50', '1');
INSERT INTO `commoditys` VALUES ('5', '99', '产品名称：网易魔兽世界30元直充卡<br/>\r\n魔兽世界面值/类型: 30元\r\n<br/>充值方式: 自动充值\r\n<br/>点卡类型: 官方卡\r\n<br/>充值类型: 时间', '97', '魔兽世界点卡', '30', 'wow.jpg', 'wow', '28', '1');
INSERT INTO `commoditys` VALUES ('7', '75', '风格: 通勤<br/>\r\n组合形式: 单件<br/>\r\n裙长: 中长裙(106-125厘米)<br/>\r\n款式: 其他款式<br/>\r\n袖长: 吊带<br/>\r\n领型: V领<br/>\r\n袖型: 公主袖<br/>\r\n腰型: 宽松腰衣<br/>\r\n门襟: 套头<br/>\r\n裙型: 公主裙', '74', '波西米亚沙滩裙', '300', 'qunzi.jpg', '韩版', '190', '2');
INSERT INTO `commoditys` VALUES ('9', '509', '产品名称：Java Web整合开发王者归来<ba/>ISBN编号: 9787302209768<ba/>出版时间: 2010-1-1<ba/>出版社: 清华大学出版社<ba/>页数: 1010版次<ba/>印次: 1<ba/>作者: 刘京华 等编著<ba/>开本: 16装<ba/>帧: 0002<ba/>印数: 1字<ba/>数: 1368000', '479', 'JAVA WEB整合开发王者归来', '90', 'shu.jpg', '清华大学出版社', '89', '10');
INSERT INTO `commoditys` VALUES ('10', '209', '品牌: 阿吉路<br/>鞋头款式: 圆头<br/>闭合方式: 套脚鞋底<br/>材质: 橡胶鞋面<br/>材质: 真皮头层皮<br/>帮面材料: 牛皮皮革<br/>风格: 软面皮<br/>内里材质: 皮质<br/>制作工艺: 胶粘鞋<br/>鞋跟: 平跟<br/>图案: 纯色流行<br/>元素: 金属<br/>风格: 休闲<br/>场合: 日常休闲', '190', '阿吉路男鞋', '456', 'nanxie.jpg', '阿吉路', '300', '3');
INSERT INTO `commoditys` VALUES ('13', '129', '后置摄像头: 800万<br/>操作系统: Android/安卓<br/>高级功能: WIFI上网 GPS导航<br/>宝贝成色: 全新<br/>售后服务: 全国联<br/>保触摸屏: 电容式触摸屏<br/>运行内存RAM: 2G<br/>机身内存ROM: 8G<br/>键盘类型: 虚拟触屏<br/>键盘厚度: 薄(9mm~1cm)<br/>主屏分辨率: 1280×720像素', '118', 'Huawei/华为 mate 高配版', '2500', 'shouji.jpg', '华为', '2399', '6');
INSERT INTO `commoditys` VALUES ('15', '139', '领型: 圆领<br/>\r\n颜色: 黑色<br/>\r\n灰色尺码: 170/90(M) 175/95(L) 180/100(XL) 185/105(XXL) 190/110(XXXL)<br/>\r\n款式细节: 撞色拼接（同料不同色）<br/>\r\n品牌: 自由风度<br/>\r\n袖型: 常规<br/>\r\n袖版型: 修身型<br/>\r\n主材含量: 棉质', '130', '个性公子男士撞色', '200', 'Txu.jpg', '韩版', '149', '2');
INSERT INTO `commoditys` VALUES ('16', '35', '颜色分类: 绿色 桔色<br/>童装衣领款式: 圆领<br/>参考身高: 130cm 140cm 150cm 160cm 165cm<br/>适用性别: 男<br/>货号: tx5040<br/>面料/质地: 纯棉(95%及以上)<br/>童装风格: 休闲童装<br/>图案: 条纹童装<br/>T恤类型: 短袖T恤<br/>是否带帽子: 无', '34', '男童条纹短袖t恤', '90', 'tongzhuang.jpg', '普哆衣', '79', '2');
INSERT INTO `commoditys` VALUES ('19', '119', '鞋跟高度:10厘米<br/> \r\n防水台:4里米<br/>\r\n鞋底材质：复合材质<br/>\r\n面料材质：pu<br/>\r\n尺码标准', '100', '高跟凉鞋（女）', '200', 'nvxie.jpg', '阿玛达', '179', '3');
INSERT INTO `commoditys` VALUES ('21', '99', '产品名称：汉客HANKE箱包 <br/> 尺寸: 20寸 22寸 24寸 28寸<br/>货号: 8039<br/>有无拉杆: 有<br/>是否带锁: 是<br/>滚轮样式: 万向轮<br/>是否配包: 否<br/>品牌: 汉客<br/>质地: 其它质地<br/>性别: 女<br/>硬度: 软箱包<br/>图案: 纯色无图案<br/>颜色分类: 黑色 蓝色 红色 紫色 咖啡色<br/>成色: 全新', '88', '旅行箱包', '385', 'bao.jpg', '汉克', '350', '3');
INSERT INTO `commoditys` VALUES ('25', '299', '品牌: PROJAVA BICYCLES <br/>货号: GRIZZ-27S-D<br/>速别: 27速<br/>制动系统: 双碟<br/>刹车架<br/>类型: 硬车架(无后避震器)', '200', 'JAVA山地车', '2800', 'che.jpg', 'JAVA', '2700', '4');
INSERT INTO `commoditys` VALUES ('27', '199', '主钻分数: 无主钻<br/>副钻分数: 10-29分<br/>款式: 项链<br/>钻石形状: 圆形<br/>钻石净度: 20分以下不分级<br/>钻石颜色: I-J淡白<br/>钻石切工: VG/很好<br/>钻石证书: GIA证书 NGTC证书 其它国内证书<br/>售后服务: 复检后再付款<br/>镶嵌方式: 群镶镶嵌<br/>材质: 黄金/K金镶嵌', '188', '一搏千金 新款18k玫瑰金吊坠', '2600', 'diaoz.jpg', '一搏千金', '2500', '5');
INSERT INTO `commoditys` VALUES ('29', '199', '颜色分类: 黑色<br/>电磁炉炉头: 单炉<br/>功能选择: 爆炒 炒菜 炖奶 蒸煮 煮粥 煲汤 火锅 烧水 煎炸 定时<br/>电磁炉面板类型: 黑色<br/>微晶面板磁炉功率: 2001-3000W<br/>售后服务: 全国联保<br/>操作方式: 按键式<br/>能效等级: 3级<br/>火力档位: 8档', '199', 'Midea/美的 WK2102电磁炉', '289', 'dcl.jpg', '美的', '250', '7');
INSERT INTO `commoditys` VALUES ('32', '309', '颜色分类: 升级版水漾2#自然肤色 升级版水漾1#透亮肤色 升级版润颜2#自然肤色 升级版润颜1#透亮肤色 滋润型-14年3月到期 低价促 清爽型-14年4月到期 低价促 滋润型套装 带小样 老版-滋润型 老版-清爽型<br/>是否防晒: 是<br/>彩妆规格: 正常<br/>规格品牌: Mamonde/梦妆<br/>单品: 多效BB矿物修容霜<br/>化妆品功效: 保湿 美白 防晒 遮瑕 隔离', '300', 'Mamonde/梦妆 BB霜', '88', 'mr.jpg', '梦妆', '69', '8');
INSERT INTO `commoditys` VALUES ('35', '100', '分辨率高', '96', '显示器', '999', '7.jpg', '电子城', '900', '13');
INSERT INTO `commoditys` VALUES ('36', '60', 'CPU类型：intel i7-2670<br/>内存：8G DDR3 1333<br/>硬盘：500G sata<br/>屏幕：14寸', '50', '神舟（HASEE）精盾K470P-i7D2', '4999', 'k470p-i7 D2.jpg', '神舟电子', '4599', '6');
INSERT INTO `commoditys` VALUES ('37', '80', 'CPU系列：酷睿i5 2代系列<br/>\r\nCPU主频：3GHz<br/>三级缓存：6MB<br/>核心数量：四核心', '59', 'Intel 酷睿i5 四核处理器 i5 2320', '1220', 'intel i5 2320.jpg', '英特尔', '1120', '6');
INSERT INTO `commoditys` VALUES ('39', '120', '怕上火喝王老吉，夏天更解暑！', '119', '王老吉凉茶', '8', 'wlj.jpg', '广东广州', '4', '16');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `messageId` int(11) NOT NULL AUTO_INCREMENT,
  `messagetext` varchar(255) DEFAULT NULL,
  `messagetime` varchar(255) DEFAULT NULL,
  `messagetitle` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for orderform
-- ----------------------------
DROP TABLE IF EXISTS `orderform`;
CREATE TABLE `orderform` (
  `orderFormID` int(25) NOT NULL AUTO_INCREMENT,
  `submitTime` varchar(50) DEFAULT NULL,
  `consignmentTime` varchar(50) DEFAULT NULL,
  `totalPrice` int(25) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `isPayoff` varchar(255) DEFAULT NULL,
  `isConsignment` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `orderFormNum` bigint(50) DEFAULT NULL,
  PRIMARY KEY (`orderFormID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderform
-- ----------------------------
INSERT INTO `orderform` VALUES ('44', '2015-04-26 19:59:13', ' ', '500', '无', '是', '否', 'wangyongqang', '201504269493');
INSERT INTO `orderform` VALUES ('47', '2018-11-22 15:06:18', ' ', '1250', '请尽快发货', '否', '否', 'wusong', '201811228580');
INSERT INTO `orderform` VALUES ('48', '2018-11-22 15:10:56', '2018-11-22 15:53:12', '90', '请尽快发货', '是', '是', 'wusong', '201811222579');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `post` varchar(255) DEFAULT NULL,
  `money` double DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('12', 'wangyongqang', 'wang5511217', '73474@qq.com', '太原理工大学', '男', '王永强', '18234089512', '030000', '500');
INSERT INTO `users` VALUES ('13', 'zhouzy', 'zzy23456', '12345@qq.com', '太原理工大学', '男', '周振云', '1234', '1234', '1000');
INSERT INTO `users` VALUES ('14', 'zzr_nike', '123458906', 'zxw@126.com', '武汉市汤逊湖社区', '女', '周晓薇', '15612887645', '4434440', '1000');
INSERT INTO `users` VALUES ('16', 'wusong', '12345890', 'wusong@126.com', '武汉市硚口区香港路', '男', '武二朗', '15627182276', '430012', '1000');
