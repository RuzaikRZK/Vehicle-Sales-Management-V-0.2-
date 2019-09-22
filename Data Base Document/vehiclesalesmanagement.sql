/*
Navicat MySQL Data Transfer

Source Server         : RZKTechnologyD
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : vehiclesalesmanagement

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-08-11 14:35:26
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `accessrices`
-- ----------------------------
DROP TABLE IF EXISTS `accessrices`;
CREATE TABLE `accessrices` (
  `ac_id` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) NOT NULL,
  `discript` varchar(200) NOT NULL,
  PRIMARY KEY (`ac_id`),
  KEY `fk_accessrices` (`bid`),
  CONSTRAINT `fk_accessrices` FOREIGN KEY (`bid`) REFERENCES `body_parts` (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of accessrices
-- ----------------------------
INSERT INTO `accessrices` VALUES ('3', '17', 'Carava Rooyal hood racks ,Stanless steel');
INSERT INTO `accessrices` VALUES ('4', '18', 'Hilux engine pum');

-- ----------------------------
-- Table structure for `alloywheel`
-- ----------------------------
DROP TABLE IF EXISTS `alloywheel`;
CREATE TABLE `alloywheel` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) NOT NULL,
  `size` varchar(30) NOT NULL,
  `rimMaterial` varchar(40) NOT NULL,
  PRIMARY KEY (`a_id`),
  KEY `fk_alloyWheel` (`bid`),
  CONSTRAINT `fk_alloyWheel` FOREIGN KEY (`bid`) REFERENCES `body_parts` (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of alloywheel
-- ----------------------------
INSERT INTO `alloywheel` VALUES ('7', '13', '12x6', 'Aluminium');
INSERT INTO `alloywheel` VALUES ('8', '14', '12x9', 'Aluminium');

-- ----------------------------
-- Table structure for `body_parts`
-- ----------------------------
DROP TABLE IF EXISTS `body_parts`;
CREATE TABLE `body_parts` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(40) NOT NULL,
  `modeNum` varchar(50) NOT NULL,
  `colour` char(20) NOT NULL,
  `model` varchar(40) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of body_parts
-- ----------------------------
INSERT INTO `body_parts` VALUES ('13', 'MAK', 'MH7366', 'Silver Red', 'MAK ICONA AUDI', '5', '25000');
INSERT INTO `body_parts` VALUES ('14', 'OZ Racing', 'MH467', 'Silver Blue', 'OZ Racing LEGGERA HLT', '6', '24500');
INSERT INTO `body_parts` VALUES ('15', 'JVC', 'MH9867', 'silver', 'RCUKHD706', '2', '15000');
INSERT INTO `body_parts` VALUES ('16', 'Kenwood', 'MH4365', 'black', 'RoadEntertainmentBundle', '8', '17560');
INSERT INTO `body_parts` VALUES ('17', 'Caravan', 'MH7389', 'Silver', 'Caravan Royal Hood', '3', '12000');
INSERT INTO `body_parts` VALUES ('18', 'Toyota', 'MH4564', 'Silver', 'Hilux 2KD KUN 15', '1', '45000');

-- ----------------------------
-- Table structure for `bodymodel`
-- ----------------------------
DROP TABLE IF EXISTS `bodymodel`;
CREATE TABLE `bodymodel` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) NOT NULL,
  `mName` varchar(40) NOT NULL,
  `barcode` varchar(100) NOT NULL,
  PRIMARY KEY (`m_id`),
  KEY `fk_bodyModel` (`bid`),
  CONSTRAINT `fk_bodyModel` FOREIGN KEY (`bid`) REFERENCES `bodypartbrand` (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bodymodel
-- ----------------------------
INSERT INTO `bodymodel` VALUES ('16', '17', 'RCUKHD706', '9995880');
INSERT INTO `bodymodel` VALUES ('17', '18', 'RoadEntertainmentBundle', '9765232');
INSERT INTO `bodymodel` VALUES ('18', '19', 'Advent OE-Styled', '4565298');
INSERT INTO `bodymodel` VALUES ('19', '20', 'Pyle 7 AUX setup', '8895880');
INSERT INTO `bodymodel` VALUES ('20', '21', 'Sony XAV-70BT', '9765298');
INSERT INTO `bodymodel` VALUES ('21', '22', 'OZ Racing LEGGERA HLT', '9005880');
INSERT INTO `bodymodel` VALUES ('22', '23', 'MAK ICONA AUDI', '4567898');
INSERT INTO `bodymodel` VALUES ('23', '24', 'Caravan Royal Hood', '9005000');
INSERT INTO `bodymodel` VALUES ('24', '25', 'Hilux 2KD KUN 15', '9765236');

-- ----------------------------
-- Table structure for `bodypartbrand`
-- ----------------------------
DROP TABLE IF EXISTS `bodypartbrand`;
CREATE TABLE `bodypartbrand` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(40) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bodypartbrand
-- ----------------------------
INSERT INTO `bodypartbrand` VALUES ('17', 'JVC', 'Multimedia');
INSERT INTO `bodypartbrand` VALUES ('18', 'Kenwood', 'Multimedia');
INSERT INTO `bodypartbrand` VALUES ('19', 'Advent', 'Multimedia');
INSERT INTO `bodypartbrand` VALUES ('20', 'Pyle', 'Multimedia');
INSERT INTO `bodypartbrand` VALUES ('21', 'Sony', 'Multimedia');
INSERT INTO `bodypartbrand` VALUES ('22', 'OZ Racing', 'AlloyWheel');
INSERT INTO `bodypartbrand` VALUES ('23', 'MAK', 'AlloyWheel');
INSERT INTO `bodypartbrand` VALUES ('24', 'Caravan', 'Accessories');
INSERT INTO `bodypartbrand` VALUES ('25', 'Toyota', 'Accessories');

-- ----------------------------
-- Table structure for `brand`
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `bid` int(100) NOT NULL AUTO_INCREMENT,
  `Brand_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES ('1', 'Toyota');
INSERT INTO `brand` VALUES ('2', 'Audi');
INSERT INTO `brand` VALUES ('3', 'Mazda');
INSERT INTO `brand` VALUES ('4', 'Nissan');
INSERT INTO `brand` VALUES ('6', 'Mithusbishi');

-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `did` int(11) DEFAULT NULL,
  `NIC` char(20) NOT NULL,
  `phone` char(15) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `pk_customer` (`did`),
  CONSTRAINT `pk_customer` FOREIGN KEY (`did`) REFERENCES `discount` (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', '1', '9427505660V', '0776787665', 'thiserra@gmail.com');
INSERT INTO `customer` VALUES ('2', '2', '963200790V', '0774475726', 'ruzaikmohomad@gmail.com');
INSERT INTO `customer` VALUES ('3', '4', '9409717721V', '0784328880', 'thilina.wickramasinghe.sl@gmail.com');

-- ----------------------------
-- Table structure for `discount`
-- ----------------------------
DROP TABLE IF EXISTS `discount`;
CREATE TABLE `discount` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(40) NOT NULL,
  `barcodeId` varchar(40) NOT NULL,
  `rate` char(20) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of discount
-- ----------------------------
INSERT INTO `discount` VALUES ('1', 'silver', '98679848', '6');
INSERT INTO `discount` VALUES ('2', 'gold', '76890847', '10');
INSERT INTO `discount` VALUES ('3', 'normal', 'null', '0');
INSERT INTO `discount` VALUES ('4', 'patinum', '98675694', '12');

-- ----------------------------
-- Table structure for `exchangeveh`
-- ----------------------------
DROP TABLE IF EXISTS `exchangeveh`;
CREATE TABLE `exchangeveh` (
  `e_id` int(11) NOT NULL AUTO_INCREMENT,
  `eBrand` varchar(25) NOT NULL,
  `gBrand` varchar(25) NOT NULL,
  `eModel` varchar(25) NOT NULL,
  `gModel` varchar(25) NOT NULL,
  `exchangeDate` char(15) NOT NULL,
  `balance` double NOT NULL,
  `ePrice` double NOT NULL,
  `gPrice` double NOT NULL,
  `eType` varchar(25) NOT NULL,
  `gType` varchar(25) NOT NULL,
  `book_Image` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of exchangeveh
-- ----------------------------

-- ----------------------------
-- Table structure for `login`
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT,
  `uName` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('1', 'ruzaik', '123', 'ruzaikmohomad@gmail.com');

-- ----------------------------
-- Table structure for `model`
-- ----------------------------
DROP TABLE IF EXISTS `model`;
CREATE TABLE `model` (
  `mId` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) NOT NULL,
  `model` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`mId`),
  KEY `fk_Model` (`bid`),
  CONSTRAINT `fk_Model` FOREIGN KEY (`bid`) REFERENCES `brand` (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of model
-- ----------------------------
INSERT INTO `model` VALUES ('1', '1', 'Aqua');
INSERT INTO `model` VALUES ('2', '3', 'RX8');
INSERT INTO `model` VALUES ('3', '4', 'GTR');
INSERT INTO `model` VALUES ('4', '1', 'Prius');
INSERT INTO `model` VALUES ('5', '2', 'A8');
INSERT INTO `model` VALUES ('6', '2', 'A6');
INSERT INTO `model` VALUES ('7', '6', 'Intercooler');
INSERT INTO `model` VALUES ('8', '3', 'axela');
INSERT INTO `model` VALUES ('9', '3', 'axela');
INSERT INTO `model` VALUES ('10', '3', 'Axela');
INSERT INTO `model` VALUES ('11', '6', 'Lancer');
INSERT INTO `model` VALUES ('12', '1', 'Hiace');

-- ----------------------------
-- Table structure for `multimedia`
-- ----------------------------
DROP TABLE IF EXISTS `multimedia`;
CREATE TABLE `multimedia` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) NOT NULL,
  `amphere` varchar(40) NOT NULL,
  `hrtz` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`m_id`),
  KEY `fk_multimedia` (`bid`),
  CONSTRAINT `fk_multimedia` FOREIGN KEY (`bid`) REFERENCES `body_parts` (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of multimedia
-- ----------------------------
INSERT INTO `multimedia` VALUES ('3', '15', '8', '2400');
INSERT INTO `multimedia` VALUES ('4', '16', '8', '2700');

-- ----------------------------
-- Table structure for `remove_bodyparts`
-- ----------------------------
DROP TABLE IF EXISTS `remove_bodyparts`;
CREATE TABLE `remove_bodyparts` (
  `rbid` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(40) NOT NULL,
  `modeNum` varchar(40) NOT NULL,
  `model` varchar(40) NOT NULL,
  `status` varchar(40) NOT NULL,
  `price` varchar(40) NOT NULL,
  `size` varchar(40) DEFAULT NULL,
  `rimMaterial` varchar(40) DEFAULT NULL,
  `discript` varchar(300) DEFAULT NULL,
  `amphere` varchar(40) DEFAULT NULL,
  `hrtz` char(20) DEFAULT NULL,
  PRIMARY KEY (`rbid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of remove_bodyparts
-- ----------------------------
INSERT INTO `remove_bodyparts` VALUES ('1', 'rere', 'bgb', 'nbnb', 'bnbn', 'bnbn', 'gggg', 'ngg', 'hghh', 'hghg', 'ghg');
INSERT INTO `remove_bodyparts` VALUES ('2', 'ENKEI', 'mn78675', 'Commander Truck', 'AlloyWheel', '50000', '16x60', 'aluminium', 'null', 'null', 'null');
INSERT INTO `remove_bodyparts` VALUES ('3', 'ENKEI', 'mn78675', 'Commander Truck', 'AlloyWheel', '50000', '16x60', 'aluminium', 'null', 'null', 'null');
INSERT INTO `remove_bodyparts` VALUES ('4', 'ENKEI', 'mn78675', 'Commander Truck', 'AlloyWheel', '50000', '16x60', 'aluminium', 'null', 'null', 'null');
INSERT INTO `remove_bodyparts` VALUES ('5', 'Kenwood', 'ui87657', 'Kenwood X2sx ', 'Multimedia', '35000', 'null', 'null', 'null', '45000A', '400Hz');
INSERT INTO `remove_bodyparts` VALUES ('6', 'TRD', '56yhy76', 'TRD-pro', 'Accessories', '400', 'null', 'null', '56yhy76', 'null', 'null');

-- ----------------------------
-- Table structure for `removevehi`
-- ----------------------------
DROP TABLE IF EXISTS `removevehi`;
CREATE TABLE `removevehi` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` char(20) NOT NULL,
  `brand` varchar(40) NOT NULL,
  `modelYear` char(10) NOT NULL,
  `model` varchar(25) NOT NULL,
  `engNum` varchar(30) NOT NULL,
  `engCap` varchar(30) NOT NULL,
  `mileage` varchar(30) DEFAULT NULL,
  `chassisNum` varchar(30) NOT NULL,
  `sPrice` double NOT NULL,
  `vImage` varchar(300) NOT NULL,
  `discription` varchar(300) DEFAULT NULL,
  `type` char(30) NOT NULL,
  `regNum` char(15) DEFAULT NULL,
  `vBoolImg` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of removevehi
-- ----------------------------

-- ----------------------------
-- Table structure for `sale`
-- ----------------------------
DROP TABLE IF EXISTS `sale`;
CREATE TABLE `sale` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(40) NOT NULL,
  `c_id` int(11) NOT NULL,
  `selling_price` double NOT NULL,
  `givenPrice` double NOT NULL,
  `amount` double NOT NULL,
  `profit` double NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sale
-- ----------------------------

-- ----------------------------
-- Table structure for `veh_sale`
-- ----------------------------
DROP TABLE IF EXISTS `veh_sale`;
CREATE TABLE `veh_sale` (
  `vsId` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `modelYear` varchar(25) NOT NULL,
  `chassisNum` varchar(25) NOT NULL,
  `regNum` char(15) DEFAULT NULL,
  `status` char(15) NOT NULL,
  PRIMARY KEY (`vsId`),
  KEY `fk_veh_sale` (`sid`),
  CONSTRAINT `fk_veh_sale` FOREIGN KEY (`sid`) REFERENCES `sale` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of veh_sale
-- ----------------------------

-- ----------------------------
-- Table structure for `vehicle`
-- ----------------------------
DROP TABLE IF EXISTS `vehicle`;
CREATE TABLE `vehicle` (
  `v_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(40) NOT NULL,
  `modelYear` char(10) NOT NULL,
  `model` varchar(25) NOT NULL,
  `engNum` varchar(30) NOT NULL,
  `engCap` varchar(30) NOT NULL,
  `mileage` varchar(30) DEFAULT NULL,
  `chassisNum` varchar(30) NOT NULL,
  `sPrice` double NOT NULL,
  `vImage` varchar(300) NOT NULL,
  `discription` varchar(150) DEFAULT NULL,
  `type` char(15) DEFAULT NULL,
  `regNum` char(15) DEFAULT NULL,
  `vBoolImg` varchar(300) NOT NULL,
  `c_id` int(11) NOT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`v_id`),
  KEY `fk_Vehicle` (`c_id`),
  KEY `engNum` (`engNum`) USING BTREE,
  KEY `chassisNum` (`chassisNum`) USING BTREE,
  KEY `regNum` (`regNum`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of vehicle
-- ----------------------------
INSERT INTO `vehicle` VALUES ('1', 'Toyota', '2017', 'Aqua', 'EN123', '3000', '100', 'CH123', '6500000', 'G:/OneDrive/Pictures/Vehicle Photos/cc_2018NIC060001_01_640_QM1.jpg', 'Ac/SRS Air Bag/DVD', 'Car', 'RN123', 'null', '0', 'Registerd');
INSERT INTO `vehicle` VALUES ('2', 'Audi', '2014', 'A6', 'EN321', '4000', '100', 'CH321', '9500000', 'G:/OneDrive/Pictures/Vehicle Photos/audi-a6_320x160.png', 'Ac/SRS Air Bag/DVD', 'Car', 'RN321', 'null', '0', 'Registerd');
INSERT INTO `vehicle` VALUES ('3', 'Nissan', '2017', 'GTR', 'ebn566', '5000', '10', 'Ch786', '10000000', 'G:/OneDrive/Pictures/Vehicle Photos/15139736545a3d6796968627.37828943.jpg', 'AC/Sportsmodel/condunser/DVD/Fully loaded', 'Car', 'null', 'null', '0', 'Unregistered');
INSERT INTO `vehicle` VALUES ('4', 'Mazda', '2016', 'RX8', 'en356', '4000', '120', 'ch456', '5600000', 'G:/OneDrive/Pictures/Vehicle Photos/mitsubishi-shogun.jpg', 'ac/air bag/sports model', 'Car', 'null', 'null', '0', 'Unregistered');
INSERT INTO `vehicle` VALUES ('5', 'Nissan', '2017', 'GTR', 'en76763', '1000', '1000', 'ch355563', '6500000', 'G:/OneDrive/Pictures/Vehicle Photos/2018-nissan-370z.jpg', 'ac/air bagb', 'Car', 'rn367673', 'null', '0', 'Registerd');
