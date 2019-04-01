/*
Navicat MariaDB Data Transfer

Source Server         : Droom
Source Server Version : 100023
Source Host           : droom.burt:3306
Source Database       : droom

Target Server Type    : MariaDB
Target Server Version : 100023
File Encoding         : 65001

Date: 2019-03-30 10:27:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cliente
-- ----------------------------
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `cedulaCliente` varchar(13) NOT NULL,
  `nombreCliente` varchar(100) DEFAULT NULL,
  `emailCliente` varchar(100) DEFAULT NULL,
  `direccionCliente` varchar(500) DEFAULT NULL,
  `telefonoCliente` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idCliente`,`cedulaCliente`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of cliente
-- ----------------------------
INSERT INTO `cliente` VALUES ('5', '1234567890', 'Sebastian Ballesteros Armero', 'sebas@gmail.com', 'Pedro Carbo y Armero', '0999955523');
INSERT INTO `cliente` VALUES ('6', '9999999999', 'Consumidor Final', 'No Aplica', 'No Aplica', '9999999999');
INSERT INTO `cliente` VALUES ('8', '1231231231', 'Cliente', 'asd@asd.com', 'hola', '123123123');
INSERT INTO `cliente` VALUES ('10', '1750169798', 'Jessica Contacte', 'jessy@hotmail.com', 'la casa', '2251010');
INSERT INTO `cliente` VALUES ('11', '2222222222', 'Nombre', 'Email@awdaw.com', 'Direcicon', '969028795');
INSERT INTO `cliente` VALUES ('13', '', '222', '2222', '22222', '222');
INSERT INTO `cliente` VALUES ('14', '1721340055001', 'Janpaul Sanchez', 'janpaul@bit-store.ec', 'El calzado', '0999012981');
INSERT INTO `cliente` VALUES ('15', '19567535001', 'Frank Montagne', 'montagnefrank@gmail.com', 'Av 6 de Diciembre\nN24-399 y Luis cordero', '0969028799');
INSERT INTO `cliente` VALUES ('16', '9876555555', 'Nombre', 'mail@mail.com', 'Direccion', '2232323232');
INSERT INTO `cliente` VALUES ('17', '1725636987', 'pedro peres', 'pedro@gmail.com', 'quito pichincha', '0960236589');
INSERT INTO `cliente` VALUES ('18', '1500497843', 'Carlos Marin', 'cmarin@gmail.com', 'Av. del Maestro y la Prensa', '0987558586');
INSERT INTO `cliente` VALUES ('19', '0000000000', 'Alejandro Martínez', 'alejandromartinezdefaria@gmail.com', 'Urb. Carialinda', '0414440293');
INSERT INTO `cliente` VALUES ('20', '7810969831', 'Miguel', 'maular22@gmail.com', 'Quito', '321543586');
INSERT INTO `cliente` VALUES ('21', '1846833489', 'Gerardo Rovero', 'gerardo.rovero@gmail.com', 'Camino El Venado 1800', '956745760');
INSERT INTO `cliente` VALUES ('22', '0139567552', 'carolina figueroa', 'carola.figueroau33@gmail.com', 'san martin 544', '996607136');

-- ----------------------------
-- Table structure for comentarios
-- ----------------------------
DROP TABLE IF EXISTS `comentarios`;
CREATE TABLE `comentarios` (
  `idComentario` int(255) NOT NULL AUTO_INCREMENT,
  `idCliente` varchar(255) DEFAULT NULL,
  `idUsuario` varchar(255) DEFAULT NULL,
  `fechaComentario` varchar(255) DEFAULT NULL,
  `textoComentario` varchar(255) DEFAULT NULL,
  `statusComentario` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idComentario`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of comentarios
-- ----------------------------
INSERT INTO `comentarios` VALUES ('1', '14', '2', '2017-08-28', 'Cliente no tiene comentarios', 'ACTIVE');
INSERT INTO `comentarios` VALUES ('2', '14', '2', '2017-08-28', 'Cliente no tiene comentarios2', 'ACTIVE');
INSERT INTO `comentarios` VALUES ('3', '14', '2', '2017-08-28', 'Cliente no tiene comentarios3', 'ACTIVE');
INSERT INTO `comentarios` VALUES ('4', '14', '2', '2017-08-28', 'Primer coemntario', 'ACTIVE');
INSERT INTO `comentarios` VALUES ('5', '14', '2', '2017-08-28', 'Segundo Comentario', 'ACTIVE');
INSERT INTO `comentarios` VALUES ('6', '14', '2', '2017-08-28', 'Tercer coemntario', 'ACTIVE');
INSERT INTO `comentarios` VALUES ('7', '14', '2', '2017-08-28', 'Cuearto coemtnatario', 'ACTIVE');
INSERT INTO `comentarios` VALUES ('8', '14', '2', '2017-08-28', 'El cliente es muy agradable', 'ACTIVE');
INSERT INTO `comentarios` VALUES ('9', '14', '2', '2017-08-28', 'Buen cliente', 'ACTIVE');
INSERT INTO `comentarios` VALUES ('10', '5', '', '2017-08-29', 'Buen cliente', 'ACTIVE');
INSERT INTO `comentarios` VALUES ('11', '5', '', '2017-08-29', 'Comentario de prueba', 'ACTIVE');
INSERT INTO `comentarios` VALUES ('12', '11', '2', '2017-08-29', 'Comentario de prueba', 'ACTIVE');
INSERT INTO `comentarios` VALUES ('13', '14', '2', '2017-08-29', 'Buen cliente', 'ACTIVE');
INSERT INTO `comentarios` VALUES ('14', '16', '2', '2017-09-18', '123123123', 'ACTIVE');
INSERT INTO `comentarios` VALUES ('15', '16', '2', '2017-09-18', 'comentario', 'ACTIVE');
INSERT INTO `comentarios` VALUES ('16', '15', '2', '2017-10-10', 'Buen cliente', 'ACTIVE');
INSERT INTO `comentarios` VALUES ('17', '15', '2', '2017-10-10', 'Buen cliente', 'ACTIVE');
INSERT INTO `comentarios` VALUES ('18', '14', '3', '2018-01-02', 'Mal cliente', 'ACTIVE');
INSERT INTO `comentarios` VALUES ('19', '14', '3', '2018-01-08', 'asdfsdc', 'ACTIVE');
INSERT INTO `comentarios` VALUES ('20', '15', '2', '2018-01-11', '', 'ACTIVE');
INSERT INTO `comentarios` VALUES ('21', '15', '2', '2018-01-11', 'awdawd', 'ACTIVE');
INSERT INTO `comentarios` VALUES ('22', '15', '2', '2018-01-16', 'nuevo comentario', 'ACTIVE');
INSERT INTO `comentarios` VALUES ('23', '14', '3', '2018-02-23', 'esta molesto poar queno hdas', 'ACTIVE');
INSERT INTO `comentarios` VALUES ('24', '14', '2', '2018-03-09', 'fgdfgdfgdfgdfgdgssdfs', 'ACTIVE');
INSERT INTO `comentarios` VALUES ('25', '5', '2', '2018-03-20', 'jhhkhjo', 'ACTIVE');
INSERT INTO `comentarios` VALUES ('26', '15', '3', '2018-07-13', 'cliente grosero', 'ACTIVE');
INSERT INTO `comentarios` VALUES ('27', '15', '3', '2018-07-13', 'cliente alwdawd', 'ACTIVE');

-- ----------------------------
-- Table structure for establecimiento
-- ----------------------------
DROP TABLE IF EXISTS `establecimiento`;
CREATE TABLE `establecimiento` (
  `idEstablecimiento` int(11) NOT NULL AUTO_INCREMENT,
  `nombreEstablecimiento` varchar(100) DEFAULT NULL,
  `direccionEstablecimiento` varchar(100) DEFAULT NULL,
  `ciudadEstablecimiento` varchar(100) DEFAULT NULL,
  `telefonoEstablecimiento` varchar(100) DEFAULT NULL,
  `sectorEstablecimiento` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idEstablecimiento`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of establecimiento
-- ----------------------------
INSERT INTO `establecimiento` VALUES ('1', 'Restaurant Av Principal', 'Av. Cardenal de la Torre S13-70 y Psje. S13D', 'Quito', '3020911', 'Quito Sur');
INSERT INTO `establecimiento` VALUES ('2', 'Restaurant Centro Comercial', 'Rodrigo de Chávez y Av. 5 de Junio', 'Quito', '2649827', 'Villaflora');
INSERT INTO `establecimiento` VALUES ('3', 'Restaurant Aeropuerto', 'Gualaquiza N61-41 y Av. del Maestro', 'Quito', '2530815', 'Cotocollao');

-- ----------------------------
-- Table structure for factura
-- ----------------------------
DROP TABLE IF EXISTS `factura`;
CREATE TABLE `factura` (
  `idFactura` int(11) NOT NULL AUTO_INCREMENT,
  `idPedido` int(11) DEFAULT NULL,
  `idCliente` int(11) DEFAULT NULL,
  `idEstablecimiento` varchar(255) DEFAULT NULL,
  `fechaFactura` varchar(255) DEFAULT NULL,
  `horaFactura` varchar(255) DEFAULT NULL,
  `subtotalFactura` varchar(100) DEFAULT NULL,
  `descuentoFactura` varchar(255) DEFAULT NULL,
  `ivaFactura` varchar(500) DEFAULT NULL,
  `totalFactura` varchar(10) DEFAULT NULL,
  `formadepagoFactura` varchar(255) DEFAULT NULL,
  `tdc_voucherFactura` varchar(255) DEFAULT NULL,
  `cheque_nrochequeFactura` varchar(255) DEFAULT NULL,
  `vueltoentregadoFactura` varchar(255) DEFAULT NULL,
  `efectivoFactura` varchar(255) DEFAULT NULL,
  `tdcFactura` varchar(255) DEFAULT NULL,
  `chequeFactura` varchar(255) DEFAULT NULL,
  `statusFactura` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idFactura`) USING BTREE,
  KEY `idPedido` (`idPedido`) USING BTREE,
  KEY `idCliente` (`idCliente`) USING BTREE,
  CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`idPedido`),
  CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of factura
-- ----------------------------
INSERT INTO `factura` VALUES ('39', '232', '11', '2', '2017-07-10', '22:51:08', '35.88', '0.00', '4.31', '40.19', 'EFECTIVO', '', '', '181.81', '222', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('40', '233', '11', '2', '2017-07-10', '22:54:48', '42.40', '11', '3.77', '35.17', 'EFECTIVO', '', '', '75.83', '111', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('41', '233', '11', '2', '2017-07-10', '22:56:06', '42.40', '21', '2.57', '23.97', 'EFECTIVO', '', '', '99.03', '123', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('42', '232', '11', '2', '2017-07-10', '22:56:31', '35.88', '0.00', '4.31', '40.19', 'EFECTIVO', '', '', '82.81', '123', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('43', '232', '11', '2', '2017-07-10', '22:57:02', '35.88', '33', '0.35', '3.23', 'EFECTIVO', '', '', '119.77', '123', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('44', '233', '11', '2', '2017-07-10', '22:57:49', '42.40', '2', '4.85', '45.25', 'EFECTIVO', '', '', '176.75', '222', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('45', '232', '11', '2', '2017-07-26', '22:58:39', '35.88', '22', '1.67', '15.55', 'EFECTIVO', '', '', '107.45', '123', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('46', '233', '11', '2', '2017-07-26', '22:59:41', '42.40', '22', '2.45', '22.85', 'EFECTIVO', '', '', '100.15', '123', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('47', '232', '11', '2', '2017-07-26', '23:07:11', '35.88', '22', '1.67', '15.55', 'EFECTIVO', '', '', '107.45', '123', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('48', '233', '11', '2', '2017-07-26', '23:11:54', '42.40', '21', '2.57', '23.97', 'EFECTIVO', '', '', '99.03', '123', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('49', '234', '5', '2', '2017-07-26', '23:13:13', '18.04', '0.00', '2.16', '20.20', 'EFECTIVO|VISA|CHEQUE', '123 | 123 ', '123 ', '359.8', '123', '35', '222', 'ACTIVE');
INSERT INTO `factura` VALUES ('50', '235', '8', '2', '2017-07-26', '23:13:40', '4.07', '1', '0.37', '3.44', 'EFECTIVO', '', '', '18.56', '22', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('51', '240', '11', '2', '2017-07-26', '23:20:50', '6.21', '2', '0.51', '4.72', 'EFECTIVO', '', '', '17.28', '22', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('52', '236', '11', '2', '2017-07-26', '23:32:56', '6.21', '0.00', '0.75', '6.96', 'EFECTIVO', '', '', '15.04', '22', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('53', '237', '11', '2', '2017-07-27', '20:49:56', '33.49', '22', '1.38', '12.87', 'EFECTIVO', '', '', '209.13', '222', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('54', '238', '5', '2', '2017-07-27', '20:50:29', '7.02', '0.00', '0.84', '7.86', 'EFECTIVO', '', '', '115.14', '123', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('55', '239', '5', '2', '2017-07-27', '20:56:59', '12.21', '12', '0.03', '0.24', 'EFECTIVO', '', '', '221.76', '222', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('56', '241', '5', '2', '2017-07-27', '21:00:59', '13.21', '0.00', '1.59', '14.80', 'EFECTIVO', '', '', '108.2', '123', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('57', '262', '11', '2', '2017-07-27', '21:52:44', '8.13', '0.00', '0.98', '9.11', 'EFECTIVO', '', '', '113.89', '123', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('58', '263', '11', '2', '2017-07-27', '21:55:41', '8.13', '0.00', '0.98', '9.11', 'EFECTIVO', '', '', '212.89', '222', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('59', '264', '8', '2', '2017-07-27', '22:34:54', '59.11', '44', '1.81', '16.92', 'EFECTIVO', '', '', '106.08', '123', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('60', '265', '8', '2', '2017-07-28', '01:59:33', '40.40', '22', '2.21', '20.61', 'EFECTIVO', '', '', '102.39', '123', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('61', '266', '5', '2', '2017-07-28', '16:16:20', '5.70', '0.00', '0.68', '6.38', 'EFECTIVO', '', '', '116.62', '123', '0', '0', 'ANULADA');
INSERT INTO `factura` VALUES ('62', '267', '5', '2', '2017-07-28', '16:26:30', '70.13', '0.00', '8.42', '78.55', 'EFECTIVO', '', '', '44.45', '123', '0', '0', 'ANULADA');
INSERT INTO `factura` VALUES ('63', '269', '5', '2', '2017-07-31', '20:01:47', '77.77', '0.00', '9.33', '87.10', 'EFECTIVO', '', '', '35.9', '123', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('64', '270', '5', '2', '2017-08-01', '21:57:11', '12.52', '0.00', '1.50', '14.02', 'EFECTIVO', '', '', '318.98', '333', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('65', '271', '5', '2', '2017-08-01', '22:08:45', '8.13', '0.00', '0.98', '9.11', 'EFECTIVO', '', '', '434.89', '444', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('66', '272', '11', '2', '2017-08-01', '22:09:04', '152.92', '0.00', '18.35', '171.27', 'EFECTIVO', '', '', '383.73', '555', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('67', '273', '11', '2', '2017-08-02', '22:28:19', '100.38', '0.00', '12.05', '112.43', 'EFECTIVO', '', '', '121.57', '234', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('68', '274', '5', '2', '2017-08-02', '22:57:25', '21.38', '10', '1.37', '12.75', 'EFECTIVO|VISA', '234235234234 ', '', '220.25', '111', '122', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('69', '275', '5', '2', '2017-08-03', '00:04:51', '73.09', '0.00', '8.77', '81.86', 'EFECTIVO', '', '', '29.14', '111', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('70', '276', '11', '2', '2017-08-03', '00:05:08', '72.06', '0.00', '8.65', '80.71', 'EFECTIVO', '', '', '141.29', '222', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('71', '277', '14', '2', '2017-08-03', '00:17:18', '50.34', '5', '5.44', '50.78', 'EFECTIVO|VISA', '145214521452 ', '', '39.22', '70', '20', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('72', '279', '14', '2', '2017-08-02', '20:34:50', '8.13', '0.00', '0.98', '9.11', 'EFECTIVO|VISA|CHEQUE', '123123 ', '324534 ', '137.89', '123', '11', '13', 'ACTIVE');
INSERT INTO `factura` VALUES ('73', '280', '14', '2', '2017-08-02', '21:41:18', '7.23', '0.00', '0.87', '8.10', 'EFECTIVO', '', '', '1.9', '10', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('74', '283', '6', '2', '2017-08-28', '21:43:20', '22.39', '0.00', '2.69', '25.08', 'EFECTIVO', '', '', '85.92', '111', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('75', '281', '5', '2', '2017-08-29', '17:43:21', '14.20', '0.00', '1.70', '15.90', 'VISA', '11 | 22 | 33 | 44 | 55 | 66 ', '', '0', '0', '15.9', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('76', '285', '14', '2', '2017-08-29', '19:51:37', '20.61', '0.00', '2.47', '23.08', 'EFECTIVO', '', '', '87.92', '111', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('77', '290', '14', '2', '2017-08-29', '21:43:45', '7.13', '0.00', '0.86', '7.99', 'EFECTIVO', '', '', '103.01', '111', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('78', '286', '14', '2', '2017-08-29', '22:55:08', '117.81', '0.00', '14.14', '131.95', 'EFECTIVO', '', '', '90.05', '222', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('79', '292', '14', '2', '2017-08-31', '00:00:40', '14.15', '0.00', '1.70', '15.85', 'EFECTIVO', '', '', '95.15', '111', '0', '0', 'ANULADA');
INSERT INTO `factura` VALUES ('80', '282', '14', '2', '2017-08-31', '00:30:31', '14.38', '0.00', '1.73', '16.11', 'EFECTIVO|VISA|CHEQUE', '1212 | 121212 ', '12121 ', '118.89', '111', '12', '12', 'ACTIVE');
INSERT INTO `factura` VALUES ('81', '297', '14', '2', '2017-08-31', '21:18:15', '36.33', '0.00', '4.36', '40.69', 'EFECTIVO', '', '', '70.31', '111', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('82', '296', '14', '2', '2017-08-31', '21:18:35', '32.88', '0.00', '3.95', '36.83', 'EFECTIVO', '', '', '74.17', '111', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('83', '291', '14', '2', '2017-10-02', '16:59:11', '38.67', '0.00', '4.64', '43.31', 'EFECTIVO', '', '', '67.69', '111', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('84', '293', '14', '2', '2017-10-02', '21:33:06', '28.76', '0.00', '3.45', '32.21', 'EFECTIVO', '', '', '78.79', '111', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('85', '294', '14', '2', '2017-10-03', '00:43:31', '28.38', '0.00', '3.41', '31.79', 'EFECTIVO', '', '', '79.21', '111', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('86', '300', '14', '2', '2017-10-03', '00:44:43', '9.92', '0.00', '1.19', '11.11', 'EFECTIVO', '', '', '99.89', '111', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('91', '308', '14', '2', '2017-10-04', '23:10:05', '5.60', '', '0.67', '6.27', 'undefinedEFECTIVO|', '', '', '', '111', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('92', '309', '14', '2', '2017-10-04', '23:16:33', '18.75', '0.00', '2.25', '21.00', 'EFECTIVO|VISA|CHEQUE|', '11 | 22 ', '33 ', '579', '100', '200', '300', 'ACTIVE');
INSERT INTO `factura` VALUES ('93', '310', '14', '2', '2017-10-04', '23:18:23', '39.50', '0.00', '4.74', '44.24', 'EFECTIVO|', '', '', '66.76', '111', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('94', '311', '15', '2', '2017-10-10', '15:41:54', '27.16', '10', '2.06', '19.22', 'EFECTIVO|', '', '', '91.78', '111', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('95', '301', '15', '2', '2017-10-12', '18:15:26', '10.89', '0.00', '1.31', '12.20', 'EFECTIVO', '', '', '98.8', '111', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('96', '302', '15', '2', '2017-10-12', '18:32:50', '10.89', '0.00', '1.31', '12.20', 'EFECTIVO', '', '', '98.8', '111', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('97', '303', '15', '2', '2017-10-12', '18:57:29', '16.03', '0.00', '1.92', '17.95', 'EFECTIVO', '', '', '2.05', '20', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('98', '304', '15', '2', '2017-10-12', '18:57:54', '27.86', '0.00', '3.34', '31.20', 'EFECTIVO', '', '', '8.8', '40', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('99', '305', '15', '2', '2017-10-12', '18:58:15', '9.11', '0.00', '1.09', '10.20', 'EFECTIVO', '', '', '9.8', '20', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('100', '306', '15', '2', '2017-10-12', '18:59:00', '18.75', '0.00', '2.25', '21.00', 'EFECTIVO', '', '', '9', '30', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('101', '307', '15', '2', '2017-10-12', '18:59:41', '46.64', '0.00', '5.60', '52.24', 'EFECTIVO', '', '', '58.76', '111', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('102', '312', '15', '2', '2017-10-12', '19:00:25', '19.75', '0.00', '2.37', '22.12', 'EFECTIVO', '', '', '27.88', '50', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('103', '313', '15', '2', '2017-10-12', '19:03:57', '41.74', '0.00', '5.01', '46.75', 'EFECTIVO', '', '', '3.25', '50', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('104', '352', '14', '2', '2018-01-12', '10:26:31', '13.23', '0.00', '1.59', '14.82', 'EFECTIVO|', '', '', '5.18', '20', '0', '0', 'DELIVER');
INSERT INTO `factura` VALUES ('105', '353', '14', '2', '2018-01-12', '10:38:21', '12.52', '0.00', '1.50', '14.02', 'EFECTIVO|', '', '', '5.98', '20', '0', '0', 'DELIVER');
INSERT INTO `factura` VALUES ('106', '346', '14', '2', '2018-01-12', '10:44:37', '16.28', '0.00', '1.95', '18.23', 'EFECTIVO', '', '', '1.77', '20', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('107', '299', '14', '2', '2018-01-13', '00:05:11', '0.00', '0.00', '0.00', '0.00', 'EFECTIVO', '', '', '12', '12', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('108', '367', '14', '2', '2018-01-15', '09:59:59', '4.58', '0.00', '0.55', '5.13', 'EFECTIVO|', '', '', '0.87', '6', '0', '0', 'DELIVER');
INSERT INTO `factura` VALUES ('109', '368', '14', '2', '2018-01-15', '15:17:44', '10.38', '0.00', '1.25', '11.63', 'EFECTIVO|', '', '', '3.37', '15', '0', '0', 'DELIVER');
INSERT INTO `factura` VALUES ('112', '373', '14', '2', '2018-01-15', '16:58:22', '4.58', '0.00', '0.55', '5.13', 'EFECTIVO|', '', '', '14.87', '20', '0', '0', 'DELIVER');
INSERT INTO `factura` VALUES ('113', '374', '14', '2', '2018-01-16', '09:37:29', '4.58', '0.00', '0.55', '5.13', 'EFECTIVO|', '', '', '14.87', '20', '0', '0', 'DELIVER');
INSERT INTO `factura` VALUES ('114', '376', '14', '2', '2018-01-17', '17:48:13', '4.58', '0.00', '0.55', '5.13', 'EFECTIVO|', '', '', '14.87', '20', '0', '0', 'DELIVER');
INSERT INTO `factura` VALUES ('115', '378', '10', '2', '2018-02-09', '10:04:49', '7.00', '0.00', '0.84', '7.84', 'EFECTIVO|', '', '', '2.16', '10', '0', '0', 'DELIVER');
INSERT INTO `factura` VALUES ('116', '380', '14', '2', '2018-02-19', '21:49:42', '42.76', '0.00', '5.13', '47.89', 'EFECTIVO|', '', '', '75.11', '123', '0', '0', 'DELIVER');
INSERT INTO `factura` VALUES ('117', '381', '14', '2', '2018-02-19', '22:32:47', '8.00', '0.00', '0.96', '8.96', 'EFECTIVO|', '', '', '91.04', '100', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('118', '382', '14', '2', '2018-02-19', '22:37:43', '20.36', '0.00', '2.44', '22.80', 'EFECTIVO|', '', '', '77.2', '100', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('119', '383', '14', '2', '2018-02-21', '15:28:59', '8.00', '0.00', '0.96', '8.96', 'EFECTIVO|', '', '', '41.04', '50', '0', '0', 'DELIVER');
INSERT INTO `factura` VALUES ('120', '384', '14', '2', '2018-02-21', '15:31:09', '81.44', '0.00', '9.77', '91.21', 'EFECTIVO|', '', '', '88.79', '180', '0', '0', 'DELIVER');
INSERT INTO `factura` VALUES ('121', '385', '14', '2', '2018-02-21', '15:36:08', '161.20', '0.00', '19.34', '180.54', 'EFECTIVO|', '', '', '19.46', '200', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('122', '386', '14', '2', '2018-02-21', '15:39:36', '32.00', '0.00', '3.84', '35.84', 'EFECTIVO|', '', '', '14.16', '50', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('123', '389', '14', '2', '2018-02-21', '15:56:01', '48.84', '0.00', '5.86', '54.70', 'EFECTIVO|', '', '', '5.3', '60', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('124', '389', '14', '2', '2018-02-21', '16:05:55', '130.28', '0.00', '15.63', '145.91', 'EFECTIVO', '', '', '854.09', '1000', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('125', '390', '14', '2', '2018-02-21', '18:15:34', '21.38', '0.00', '2.57', '23.95', 'EFECTIVO', '', '', '56.05', '80', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('126', '391', '14', '2', '2018-02-21', '18:17:15', '25.05', '0.00', '3.01', '28.06', 'EFECTIVO', '', '', '94.94', '123', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('127', '393', '14', '2', '2018-02-21', '22:50:04', '7.63', '0.00', '0.92', '8.55', 'EFECTIVO|', '', '', '114.45', '123', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('128', '395', '8', '2', '2018-02-23', '16:06:55', '26.46', '0.00', '3.18', '29.64', 'EFECTIVO|VISA|', '874 | 884 ', '', '80.36', '100', '10', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('129', '396', '14', '2', '2018-02-23', '21:32:06', '7.63', '0.00', '0.92', '8.55', 'EFECTIVO|', '', '', '146.45', '155', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('130', '348', '14', '2', '2018-02-28', '18:32:55', '14.02', '0.00', '1.68', '15.70', 'EFECTIVO', '', '', '14.3', '30', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('131', '347', '14', '2', '2018-03-02', '16:26:30', '95.36', '0.00', '11.44', '106.80', 'EFECTIVO|VISA', '565 | sd | 324 | 4324 | 234 | 234 ', '', '48.2', '20', '135', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('132', '388', '14', '2', '2018-03-06', '12:13:27', '100.98', '0.00', '12.12', '113.10', 'EFECTIVO|VISA', '246465 | 153 | 563135 | 4532 ', '', '106.9', '20', '200', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('133', '406', '14', '2', '2018-03-09', '20:58:40', '8.00', '0.00', '0.96', '8.96', 'EFECTIVO', '', '', '1.04', '10', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('134', '405', '10', '2', '2018-03-19', '18:26:54', '32.57', '0.00', '3.91', '36.48', 'EFECTIVO', '', '', '3.52', '40', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('135', '419', '10', '2', '2018-03-20', '13:13:07', '33.74', '0.00', '4.05', '37.79', 'EFECTIVO|VISA', '123555 | 4 ', '', '1.21', '25', '14', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('136', '421', '14', '2', '2018-03-20', '14:01:55', '6.61', '0.00', '0.79', '7.40', 'EFECTIVO', '', '', '0.6', '8', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('137', '420', '5', '2', '2018-03-20', '15:53:16', '20.15', '0.00', '2.42', '22.57', 'EFECTIVO', '', '', '0.03', '22.6', '0', '0', 'ANULADA');
INSERT INTO `factura` VALUES ('138', '422', '14', '2', '2018-03-20', '18:45:45', '13.94', '0.00', '1.67', '15.61', 'EFECTIVO', '', '', '0.04', '15.65', '0', '0', 'ANULADA');
INSERT INTO `factura` VALUES ('139', '433', '17', '2', '2018-03-22', '11:56:10', '8.30', '0.00', '1.00', '9.30', 'EFECTIVO', '', '', '0', '9.3', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('140', '435', '5', '2', '2018-03-23', '19:18:17', '16.28', '0.00', '1.95', '18.23', 'EFECTIVO|', '', '', '24.77', '43', '0', '0', 'DELIVER');
INSERT INTO `factura` VALUES ('141', '436', '14', '2', '2018-03-23', '19:20:08', '13.23', '0.00', '1.59', '14.82', 'EFECTIVO|', '', '', '108.18', '123', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('142', '437', '5', '2', '2018-03-23', '19:35:42', '6.21', '0.00', '0.75', '6.96', 'EFECTIVO|', '', '', '0.04', '7', '0', '0', 'DELIVER');
INSERT INTO `factura` VALUES ('143', '438', '8', '2', '2018-03-23', '19:36:26', '12.21', '0.00', '1.47', '13.68', 'EFECTIVO|', '', '', '0', '13.68', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('144', '439', '15', '2', '2018-03-26', '20:49:36', '7.00', '0.00', '0.84', '7.84', 'EFECTIVO', '', '', '17.16', '25', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('145', '441', '14', '2', '2018-03-26', '23:24:14', '14.04', '0.00', '1.68', '15.72', 'EFECTIVO|', '', '', '84.28', '100', '0', '0', 'DELIVER');
INSERT INTO `factura` VALUES ('146', '451', '14', '2', '2018-04-03', '23:26:09', '3.81', '0.00', '0.46', '4.27', 'EFECTIVO|', '', '', '118.73', '123', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('147', '452', '14', '2', '2018-04-03', '23:28:04', '3.68', '0.00', '0.44', '4.12', 'EFECTIVO|', '', '', '45.88', '50', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('148', '453', '10', '2', '2018-04-04', '17:05:01', '2.75', '0.00', '0.33', '3.08', 'EFECTIVO|', '', '', '116.92', '120', '0', '0', 'DELIVER');
INSERT INTO `factura` VALUES ('149', '423', '14', '2', '2018-04-04', '17:17:09', '9.11', '9', '0.01', '0.12', 'EFECTIVO', '', '', '188.88', '189', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('150', '456', '15', '2', '2018-06-11', '17:17:51', '12.52', '0.00', '1.50', '14.02', 'EFECTIVO|', '', '', '5.98', '20', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('151', '457', '19', '2', '2018-06-25', '14:35:58', '7.38', '0.00', '0.89', '8.27', 'EFECTIVO|', '', '', '91.73', '100', '0', '0', 'ANULADA');
INSERT INTO `factura` VALUES ('152', '455', '19', '2', '2018-06-25', '14:55:29', '54.36', '0.00', '6.52', '60.88', 'EFECTIVO', '', '', '39.12', '100', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('153', '432', '15', '2', '2018-06-25', '14:55:48', '24.20', '0.00', '2.90', '27.10', 'EFECTIVO', '', '', '72.9', '100', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('154', '457', '19', '2', '2018-06-25', '15:01:26', '7.38', '0.00', '0.89', '8.27', 'EFECTIVO', '', '', '91.73', '100', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('155', '444', '19', '2', '2018-06-25', '16:49:12', '9.36', '0.00', '1.12', '10.48', 'EFECTIVO', '', '', '89.52', '100', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('156', '447', '19', '2', '2018-06-26', '17:14:20', '81.15', '0.00', '9.74', '90.89', 'EFECTIVO', '', '', '9.11', '100', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('157', '454', '15', '2', '2018-07-13', '00:15:30', '214.65', '40', '20.96', '195.61', 'EFECTIVO', '', '', '104.39', '300', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('158', '445', '15', '2', '2019-01-27', '05:40:55', '20.36', '0.00', '2.44', '22.80', 'EFECTIVO', '', '', '77.2', '100', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('159', '443', '15', '2', '2019-01-27', '05:41:39', '50.85', '0.00', '6.10', '56.95', 'EFECTIVO', '', '', '943.05', '1000', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('160', '446', '15', '2', '2019-01-27', '05:42:38', '45.53', '0.00', '5.46', '50.99', 'VISA', '00000 | 00 ', '', '0', '0', '50.99', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('161', '453', '10', '2', '2019-01-27', '05:43:02', '2.75', '0.00', '0.33', '3.08', 'EFECTIVO', '', '', '996.92', '1000', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('163', '467', '20', '2', '2019-01-28', '15:32:33', '34.85', '0.00', '4.18', '39.03', 'EFECTIVO', '', '', '10.97', '50', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('164', '468', '21', '2', '2019-01-29', '01:32:04', '19.06', '0.00', '2.29', '21.35', 'EFECTIVO', '', '', '28.65', '50', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('165', '469', '21', '2', '2019-01-29', '01:52:45', '6.84', '0.00', '0.82', '7.66', 'EFECTIVO|', '', '', '2.34', '10', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('166', '470', '21', '2', '2019-01-29', '23:19:09', '8.14', '0.00', '0.98', '9.12', 'VISA', 'pago | 1 ', '', '0', '0', '9.12', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('167', '459', '15', '2', '2019-02-11', '16:47:03', '69.91', '0.00', '8.39', '78.30', 'EFECTIVO', '', '', '21.7', '100', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('168', '471', '21', '2', '2019-02-11', '18:51:06', '7.63', '0.00', '0.92', '8.55', 'EFECTIVO', '', '', '1.45', '10', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('169', '474', '21', '2', '2019-02-13', '02:42:43', '9.92', '0.00', '1.19', '11.11', 'EFECTIVO', '', '', '0', '11.11', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('170', '460', '21', '2', '2019-02-13', '14:32:21', '18.12', '0.00', '2.17', '20.29', 'EFECTIVO', '', '', '0', '20.29', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('171', '476', '21', '2', '2019-03-19', '13:26:26', '24.75', '0.00', '2.97', '27.72', 'EFECTIVO', '', '', '0', '27.72', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('172', '477', '21', '2', '2019-03-19', '13:45:55', '40.30', '0.00', '4.84', '45.14', 'EFECTIVO|', '', '', '4.86', '50', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('173', '478', '21', '2', '2019-03-19', '13:57:21', '17.20', '0.00', '2.06', '19.26', 'EFECTIVO', '', '', '0', '19.26', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('174', '479', '21', '2', '2019-03-19', '17:12:03', '29.88', '0.00', '3.59', '33.47', 'EFECTIVO', '', '', '0', '33.47', '0', '0', 'ACTIVE');
INSERT INTO `factura` VALUES ('175', '480', '21', '2', '2019-03-19', '17:16:59', '7.38', '0.00', '0.89', '8.27', 'EFECTIVO|', '', '', '0', '8.27', '0', '0', 'ACTIVE');

-- ----------------------------
-- Table structure for ingrediente
-- ----------------------------
DROP TABLE IF EXISTS `ingrediente`;
CREATE TABLE `ingrediente` (
  `idIngrediente` int(11) NOT NULL AUTO_INCREMENT,
  `nombreIngrediente` varchar(100) DEFAULT NULL,
  `cantidad1` int(11) DEFAULT NULL,
  `cantidad2` varchar(255) DEFAULT NULL,
  `cantidad3` varchar(255) DEFAULT NULL,
  `codigoIngrediente` varchar(255) DEFAULT NULL,
  `barcodeIngrediente` varchar(255) DEFAULT NULL,
  `unidadIngrediente` varchar(255) DEFAULT NULL,
  `tipoIngrediente` varchar(100) DEFAULT NULL,
  `ccIngrediente` varchar(255) DEFAULT NULL,
  `detalleIngrediente` varchar(255) DEFAULT NULL,
  `bodegaIngrediente` varchar(255) DEFAULT NULL,
  `minIngrediente` varchar(255) DEFAULT NULL,
  `maxIngrediente` varchar(255) DEFAULT NULL,
  `precioIngrediente` varchar(255) DEFAULT NULL,
  `compraIngrediente` varchar(255) DEFAULT NULL,
  `editadoIngredinete` varchar(255) DEFAULT NULL,
  `estadoIngrediente` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idIngrediente`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ingrediente
-- ----------------------------
INSERT INTO `ingrediente` VALUES ('1', 'Jamón', '55', '81', '29', '00001', '000001254', '2', '2', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-04-19', '0');
INSERT INTO `ingrediente` VALUES ('2', 'Champiñoness', '39', '27', '60', '00002', '000001254', '1', '1', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-06-25', '0');
INSERT INTO `ingrediente` VALUES ('3', 'Tomate', '69', '83', '11', '00003', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-04-13', '1');
INSERT INTO `ingrediente` VALUES ('4', 'Perejil', '11', '63', '49', '00004', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('5', 'Pollo', '110', '7', '74', '00005', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('6', 'Carne', '56', '49', '45', '00006', '000001254', '2', '2', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-04-18', '1');
INSERT INTO `ingrediente` VALUES ('8', 'Aceitunas', '51', '74', '57', '00007', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('9', 'Parmesano', '30', '45', '56', '00008', '000001254', '3', '3', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-04-13', '1');
INSERT INTO `ingrediente` VALUES ('10', 'Pan de ajo Di Rulo', '52', '57', '91', '00009', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('11', 'Salsa de albaca', '56', '56', '18', '00010', '000001254', '3', '3', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-04-19', '1');
INSERT INTO `ingrediente` VALUES ('12', 'Aceite de oliva', '87', '91', '91', '00011', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('14', 'Pollo desmechado', '17', '18', '18', '00012', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('15', 'Choclo tierno', '15', '18', '18', '00013', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('16', 'Queso rayado', '41', '42', '42', '00014', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('17', 'Pimiento', '6', '15', '15', '00015', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('18', 'Cebolla', '30', '39', '39', '00016', '000001254', '1', '2', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2019-03-20', '1');
INSERT INTO `ingrediente` VALUES ('20', 'Mezcla de dos quesos La Merced', '-27', '19', '19', '00017', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('21', 'Peperoni', '33', '45', '63', '00018', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('22', 'Camarón', '57', '63', '7', '00019', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('23', 'Salami', '8', '14', '49', '00020', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('24', 'Carne molida de res', '26', '32', '74', '00021', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('25', 'Napolitana', '24', '34', '45', '00022', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('26', 'Chorizo', '38', '48', '57', '00023', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('27', 'Frutas', '71', '81', '56', '00024', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('29', 'Piña', '53', '59', '91', '00025', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('30', 'Pasas', '12', '18', '18', '00026', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('31', 'coca cola 350 ml', '43', '43', '18', '00027', '000001254', '1', '2', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2019-03-20', '0');
INSERT INTO `ingrediente` VALUES ('32', 'Orégano', '69', '83', '83', '00028', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('33', 'Tocino', '53', '55', '55', '00029', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('34', 'Longaniza', '62', '64', '64', '00030', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('35', 'Lonjas de tocino', '23', '23', '23', '00031', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('37', 'Salsa de tocino', '33', '12', '12', '00032', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('38', 'Pasta de tomate', '34', '57', '57', '00033', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('39', 'Salsa blanca', '80', '48', '48', '00034', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('40', 'Camarón adobado con cebolla', '-3', '9', '9', '00035', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('41', 'Pasta de lasaña', '51', '45', '45', '00036', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('42', 'Pollo en salsa bechamel', '2', '17', '17', '00037', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('43', 'Pasta de tomate', '84', '78', '78', '00038', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('44', 'Mozarrella', '23', '29', '29', '00039', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('45', 'Rollitos de pasta relleno de salsa de tomate, carne y queso La Merced', '85', '85', '85', '00040', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('47', 'Rollitos de pasta relleno de salsa de tomate, camarón y queso La Merced', '68', '69', '69', '00041', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('48', 'Salsa napolitana', '36', '36', '36', '00042', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('49', 'Queso parmesano La Merced', '25', '25', '25', '00043', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('50', 'Relleno de queso ricota', '47', '47', '47', '00044', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('51', 'Espinaca', '68', '68', '68', '00045', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('52', 'Relleno de alcachofa', '23', '23', '23', '00046', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('53', '4 variedades de quesos', '90', '90', '90', '00047', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('54', 'Albóndigas de carne en salsa boloñesa', '49', '52', '52', '00048', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('55', 'Tocino en salsa blanca', '67', '67', '67', '00049', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('56', 'Lechuga', '36', '37', '63', '00050', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('57', 'Pepinillo', '49', '50', '7', '00051', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('58', 'Pechuga de pollo', '19', '19', '49', '00052', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('59', 'Tomate cherry', '37', '37', '74', '00053', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('60', 'Tostaditas de pan', '15', '15', '45', '00054', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('61', 'Choclo', '96', '84', '57', '00055', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('62', 'Papa', '19', '31', '56', '00056', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('63', 'Alberja', '80', '68', '91', '00057', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('64', 'Zanahoria', '41', '53', '18', '00058', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('65', 'Mayonesa', '39', '27', '18', '00059', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('66', 'Rollitos de mortadela', '76', '88', '42', '00060', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('68', 'Papas fritas', '46', '51', '15', '00061', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('69', 'Pernil ahumado en Pan Dirulo', '35', '35', '39', '00062', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('70', 'Masas suaves rellenas de helado', '45', '45', '19', '00063', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('71', 'Salsa de mora', '25', '25', '45', '00064', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('72', 'Crema', '67', '67', '63', '00065', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('73', 'Queso gratinado La Merced', '94', '94', '14', '00066', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('74', 'Pollo envuelto en crepes en salsa de champiñones', '76', '76', '32', '00067', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('75', 'Masas suaves rellenas de camarón salteado con cebolla', '82', '82', '34', '00068', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('76', 'Salsa bechamel', '54', '54', '48', '00069', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('84', 'Queso', '24', '24', '81', '00070', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('87', 'Queso la Merced', '55', '55', '59', '00071', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('88', 'Pan Dirulo', '78', '68', '68', '00072', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('89', 'Carne en salsa bechamel', '85', '87', '87', '00073', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('90', 'Camarones en salsa bechamel', '75', '77', '77', '00074', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('91', 'Salsa bechamel', '33', '33', '33', '00075', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('92', 'Rollitos de pasta relleno de salsa de tomate, pollo y queso La Merced', '59', '63', '63', '00076', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('93', 'Trozos de Platano', '22', '22', '7', '00077', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('94', 'Trozos de Papaya', '14', '14', '49', '00078', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('95', 'Trozos de Manzana', '94', '94', '74', '00079', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('96', 'Trozos de melón', '56', '56', '45', '00080', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('97', 'Trozos de kiwi', '43', '43', '57', '00081', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('98', 'Crema de leche', '22', '22', '56', '00082', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('99', 'Grageas', '33', '33', '91', '00083', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('100', 'Pernil ahumado', '96', '96', '18', '00084', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('101', 'Papas cocidas en salsa tartara', '47', '47', '18', '00085', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('102', 'Especias', '87', '87', '42', '00086', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('103', 'Papas al horno rellenas de queso mozarella La Merced', '40', '40', '15', '00087', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('104', 'Brocoli', '34', '15', '39', '00088', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('105', 'Ensalada de verduras cocidas', '65', '65', '19', '00089', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('106', 'Papas al horno', '96', '96', '45', '00090', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('107', 'Papas cocidas', '49', '50', '63', '00091', '000001254', '2', '4', 'Cuenta contable', 'detalle Ingrediente', 'Bodega Principal', '10', '100', '1', '12', '2018-02-21-10:00', '1');
INSERT INTO `ingrediente` VALUES ('108', 'parpica ', null, '2', null, 'pprica', '12445678', '1', '1', '12345667', 'paprica para aderesos', '1', '5', '20', '2', '0.5', '2018-04-30', '1');
INSERT INTO `ingrediente` VALUES ('109', 'Carne Asada', '800', null, null, '1232535', '1232535', '2', '2', '2000', 'Carne al Carbon', 'invetario1', '100', '50000', '10', '8', '2019-01-28', '1');
INSERT INTO `ingrediente` VALUES ('110', 'Salchi papas', '100', null, null, '12345679', '12345678', '1', '3', '122528', 'salchichas alemanas', 'lote 1', '5', '1000', '5', '3', '2019-01-29', '1');

-- ----------------------------
-- Table structure for ingresos
-- ----------------------------
DROP TABLE IF EXISTS `ingresos`;
CREATE TABLE `ingresos` (
  `idIngreso` int(11) NOT NULL AUTO_INCREMENT,
  `asientoIngreso` varchar(255) DEFAULT NULL,
  `coopIngreso` varchar(255) DEFAULT NULL,
  `placaIngreso` varchar(255) DEFAULT NULL,
  `rutaIngreso` varchar(255) DEFAULT NULL,
  `horaIngreso` varchar(255) DEFAULT NULL,
  `precioIngreso` varchar(255) DEFAULT NULL,
  `cedulaIngreso` varchar(255) DEFAULT NULL,
  `nombreIngreso` varchar(255) DEFAULT NULL,
  `telefonoIngreso` varchar(255) DEFAULT NULL,
  `emailIngreso` varchar(255) DEFAULT NULL,
  `statusIngreso` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idIngreso`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ingresos
-- ----------------------------
INSERT INTO `ingresos` VALUES ('1', '6', '1', 'MBB-1301', 'Guayaquil', '02/28/2018 4:17 AM', '10', '123123123', 'Frank Montagne', '123453512345324', 'frank@frank.com', 'nuevo');
INSERT INTO `ingresos` VALUES ('2', '2', '1', 'MBB-1301', 'Guayaquil', '02/28/2018 4:17 AM', '10', '123123123', 'Frank Montagne', '123453512345324', 'frank@frank.com', 'nuevo');
INSERT INTO `ingresos` VALUES ('3', '4', '1', 'MBB-1301', 'Guayaquil', '02/28/2018 4:17 AM', '5', '123123123', 'Frank Montagne', '123453512345324', 'frank@frank.com', 'nuevo');
INSERT INTO `ingresos` VALUES ('4', '6', '1', 'MBB-1301', 'Guayaquil', '02/28/2018 4:17 AM', '10', '123123123', 'Frank Montagne', '123453512345324', 'frank@frank.com', 'nuevo');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `idMenu` int(11) NOT NULL AUTO_INCREMENT,
  `nombreMenu` varchar(100) DEFAULT NULL,
  `estadoMenu` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idMenu`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', 'Ensaladas y Bocaditos', 'ACTIVO');
INSERT INTO `menu` VALUES ('2', 'Pastas', 'ACTIVO');
INSERT INTO `menu` VALUES ('3', 'Carnes', 'ACTIVO');
INSERT INTO `menu` VALUES ('4', 'Pizzas', 'ACTIVO');
INSERT INTO `menu` VALUES ('5', 'Crepes y Postres', 'ACTIVO');
INSERT INTO `menu` VALUES ('6', 'Bebidas', 'ACTIVO');

-- ----------------------------
-- Table structure for mesa
-- ----------------------------
DROP TABLE IF EXISTS `mesa`;
CREATE TABLE `mesa` (
  `idMesa` int(11) NOT NULL AUTO_INCREMENT,
  `idEstablecimiento` int(11) DEFAULT NULL,
  `numeroMesa` int(11) DEFAULT NULL,
  `estadoMesa` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idMesa`) USING BTREE,
  KEY `idEstablecimiento` (`idEstablecimiento`) USING BTREE,
  CONSTRAINT `mesa_ibfk_1` FOREIGN KEY (`idEstablecimiento`) REFERENCES `establecimiento` (`idEstablecimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of mesa
-- ----------------------------
INSERT INTO `mesa` VALUES ('1', '1', '1', 'HABILITADA');
INSERT INTO `mesa` VALUES ('2', '1', '2', 'HABILITADA');
INSERT INTO `mesa` VALUES ('3', '1', '3', 'HABILITADA');
INSERT INTO `mesa` VALUES ('4', '1', '4', 'HABILITADA');
INSERT INTO `mesa` VALUES ('5', '1', '5', 'HABILITADA');
INSERT INTO `mesa` VALUES ('6', '1', '6', 'HABILITADA');
INSERT INTO `mesa` VALUES ('7', '1', '7', 'HABILITADA');
INSERT INTO `mesa` VALUES ('8', '1', '8', 'HABILITADA');
INSERT INTO `mesa` VALUES ('9', '1', '9', 'HABILITADA');
INSERT INTO `mesa` VALUES ('10', '1', '10', 'OCUPADA');
INSERT INTO `mesa` VALUES ('11', '1', '11', 'HABILITADA');
INSERT INTO `mesa` VALUES ('12', '1', '12', 'HABILITADA');
INSERT INTO `mesa` VALUES ('13', '1', '13', 'HABILITADA');
INSERT INTO `mesa` VALUES ('14', '1', '14', 'HABILITADA');
INSERT INTO `mesa` VALUES ('15', '1', '15', 'HABILITADA');
INSERT INTO `mesa` VALUES ('16', '1', '16', 'HABILITADA');
INSERT INTO `mesa` VALUES ('17', '1', '17', 'HABILITADA');
INSERT INTO `mesa` VALUES ('18', '1', '18', 'HABILITADA');
INSERT INTO `mesa` VALUES ('19', '1', '19', 'HABILITADA');
INSERT INTO `mesa` VALUES ('20', '1', '20', 'HABILITADA');
INSERT INTO `mesa` VALUES ('21', '1', '21', 'HABILITADA');
INSERT INTO `mesa` VALUES ('22', '1', '22', 'HABILITADA');
INSERT INTO `mesa` VALUES ('23', '1', '23', 'HABILITADA');
INSERT INTO `mesa` VALUES ('24', '1', '24', 'HABILITADA');
INSERT INTO `mesa` VALUES ('25', '1', '25', 'HABILITADA');
INSERT INTO `mesa` VALUES ('26', '1', '26', 'HABILITADA');
INSERT INTO `mesa` VALUES ('27', '1', '27', 'HABILITADA');
INSERT INTO `mesa` VALUES ('28', '1', '28', 'HABILITADA');
INSERT INTO `mesa` VALUES ('29', '1', '29', 'HABILITADA');
INSERT INTO `mesa` VALUES ('30', '1', '30', 'HABILITADA');
INSERT INTO `mesa` VALUES ('31', '1', '31', 'HABILITADA');
INSERT INTO `mesa` VALUES ('32', '1', '32', 'HABILITADA');
INSERT INTO `mesa` VALUES ('33', '1', '33', 'HABILITADA');
INSERT INTO `mesa` VALUES ('34', '1', '34', 'HABILITADA');
INSERT INTO `mesa` VALUES ('35', '1', '35', 'HABILITADA');
INSERT INTO `mesa` VALUES ('36', '1', '36', 'HABILITADA');
INSERT INTO `mesa` VALUES ('37', '1', '37', 'HABILITADA');
INSERT INTO `mesa` VALUES ('38', '1', '38', 'HABILITADA');
INSERT INTO `mesa` VALUES ('39', '1', '39', 'HABILITADA');
INSERT INTO `mesa` VALUES ('40', '1', '40', 'HABILITADA');
INSERT INTO `mesa` VALUES ('41', '2', '1', 'OCUPADA');
INSERT INTO `mesa` VALUES ('42', '2', '2', 'OCUPADA');
INSERT INTO `mesa` VALUES ('43', '2', '3', 'HABILITADA');
INSERT INTO `mesa` VALUES ('44', '2', '4', 'HABILITADA');
INSERT INTO `mesa` VALUES ('45', '2', '5', 'HABILITADA');
INSERT INTO `mesa` VALUES ('46', '2', '6', 'HABILITADA');
INSERT INTO `mesa` VALUES ('47', '2', '7', 'HABILITADA');
INSERT INTO `mesa` VALUES ('48', '2', '8', 'OCUPADA');
INSERT INTO `mesa` VALUES ('49', '2', '9', 'OCUPADA');
INSERT INTO `mesa` VALUES ('50', '2', '10', 'HABILITADA');
INSERT INTO `mesa` VALUES ('51', '2', '11', 'HABILITADA');
INSERT INTO `mesa` VALUES ('52', '2', '12', 'HABILITADA');
INSERT INTO `mesa` VALUES ('53', '2', '13', 'OCUPADA');
INSERT INTO `mesa` VALUES ('54', '2', '14', 'HABILITADA');
INSERT INTO `mesa` VALUES ('55', '2', '15', 'HABILITADA');
INSERT INTO `mesa` VALUES ('56', '2', '16', 'HABILITADA');
INSERT INTO `mesa` VALUES ('57', '2', '17', 'OCUPADA');
INSERT INTO `mesa` VALUES ('58', '2', '18', 'OCUPADA');
INSERT INTO `mesa` VALUES ('59', '2', '19', 'HABILITADA');
INSERT INTO `mesa` VALUES ('60', '2', '20', 'HABILITADA');
INSERT INTO `mesa` VALUES ('61', '2', '21', 'HABILITADA');
INSERT INTO `mesa` VALUES ('62', '2', '22', 'HABILITADA');
INSERT INTO `mesa` VALUES ('63', '2', '23', 'HABILITADA');
INSERT INTO `mesa` VALUES ('64', '2', '24', 'HABILITADA');
INSERT INTO `mesa` VALUES ('65', '2', '25', 'HABILITADA');
INSERT INTO `mesa` VALUES ('66', '2', '26', 'OCUPADA');
INSERT INTO `mesa` VALUES ('67', '2', '27', 'HABILITADA');
INSERT INTO `mesa` VALUES ('68', '2', '28', 'HABILITADA');
INSERT INTO `mesa` VALUES ('69', '2', '29', 'HABILITADA');
INSERT INTO `mesa` VALUES ('70', '2', '30', 'HABILITADA');
INSERT INTO `mesa` VALUES ('71', '2', '31', 'HABILITADA');
INSERT INTO `mesa` VALUES ('72', '2', '32', 'HABILITADA');
INSERT INTO `mesa` VALUES ('73', '2', '33', 'HABILITADA');
INSERT INTO `mesa` VALUES ('74', '2', '34', 'HABILITADA');
INSERT INTO `mesa` VALUES ('75', '2', '35', 'HABILITADA');
INSERT INTO `mesa` VALUES ('76', '2', '36', 'HABILITADA');
INSERT INTO `mesa` VALUES ('77', '2', '37', 'HABILITADA');
INSERT INTO `mesa` VALUES ('78', '2', '38', 'HABILITADA');
INSERT INTO `mesa` VALUES ('79', '2', '39', 'HABILITADA');
INSERT INTO `mesa` VALUES ('80', '2', '40', 'HABILITADA');
INSERT INTO `mesa` VALUES ('81', '3', '1', 'HABILITADA');
INSERT INTO `mesa` VALUES ('82', '3', '2', 'OCUPADA');
INSERT INTO `mesa` VALUES ('83', '3', '3', 'HABILITADA');
INSERT INTO `mesa` VALUES ('84', '3', '4', 'HABILITADA');
INSERT INTO `mesa` VALUES ('85', '3', '5', 'OCUPADA');
INSERT INTO `mesa` VALUES ('86', '3', '6', 'OCUPADA');
INSERT INTO `mesa` VALUES ('87', '3', '7', 'HABILITADA');
INSERT INTO `mesa` VALUES ('88', '3', '8', 'HABILITADA');
INSERT INTO `mesa` VALUES ('89', '3', '9', 'OCUPADA');
INSERT INTO `mesa` VALUES ('90', '3', '10', 'HABILITADA');
INSERT INTO `mesa` VALUES ('91', '3', '11', 'HABILITADA');
INSERT INTO `mesa` VALUES ('92', '3', '12', 'HABILITADA');
INSERT INTO `mesa` VALUES ('93', '3', '13', 'OCUPADA');
INSERT INTO `mesa` VALUES ('94', '3', '14', 'HABILITADA');
INSERT INTO `mesa` VALUES ('95', '3', '15', 'HABILITADA');
INSERT INTO `mesa` VALUES ('96', '3', '16', 'HABILITADA');
INSERT INTO `mesa` VALUES ('97', '3', '17', 'HABILITADA');
INSERT INTO `mesa` VALUES ('98', '3', '18', 'HABILITADA');
INSERT INTO `mesa` VALUES ('99', '3', '19', 'HABILITADA');
INSERT INTO `mesa` VALUES ('100', '3', '20', 'HABILITADA');
INSERT INTO `mesa` VALUES ('101', '3', '21', 'HABILITADA');
INSERT INTO `mesa` VALUES ('102', '3', '22', 'HABILITADA');
INSERT INTO `mesa` VALUES ('103', '3', '23', 'HABILITADA');
INSERT INTO `mesa` VALUES ('104', '3', '24', 'HABILITADA');
INSERT INTO `mesa` VALUES ('105', '3', '25', 'HABILITADA');
INSERT INTO `mesa` VALUES ('106', '3', '26', 'HABILITADA');
INSERT INTO `mesa` VALUES ('107', '3', '27', 'HABILITADA');
INSERT INTO `mesa` VALUES ('108', '3', '28', 'HABILITADA');
INSERT INTO `mesa` VALUES ('109', '3', '29', 'HABILITADA');
INSERT INTO `mesa` VALUES ('110', '3', '30', 'HABILITADA');
INSERT INTO `mesa` VALUES ('111', '3', '31', 'HABILITADA');
INSERT INTO `mesa` VALUES ('112', '3', '32', 'HABILITADA');
INSERT INTO `mesa` VALUES ('113', '3', '33', 'HABILITADA');
INSERT INTO `mesa` VALUES ('114', '3', '34', 'HABILITADA');
INSERT INTO `mesa` VALUES ('115', '3', '35', 'HABILITADA');
INSERT INTO `mesa` VALUES ('116', '3', '36', 'HABILITADA');
INSERT INTO `mesa` VALUES ('117', '3', '37', 'HABILITADA');
INSERT INTO `mesa` VALUES ('118', '3', '38', 'HABILITADA');
INSERT INTO `mesa` VALUES ('119', '3', '39', 'HABILITADA');
INSERT INTO `mesa` VALUES ('120', '3', '40', 'HABILITADA');
INSERT INTO `mesa` VALUES ('992', '2', '999', 'DOMICILIO');
INSERT INTO `mesa` VALUES ('993', '3', '999', 'HABILITADA');
INSERT INTO `mesa` VALUES ('994', '2', '999', 'PARA LLEVAR');
INSERT INTO `mesa` VALUES ('995', '3', '999', 'PARA LLEVAR');
INSERT INTO `mesa` VALUES ('996', '1', '999', 'PARA LLEVAR');
INSERT INTO `mesa` VALUES ('999', '1', '999', 'DOMICILIO');

-- ----------------------------
-- Table structure for pedido
-- ----------------------------
DROP TABLE IF EXISTS `pedido`;
CREATE TABLE `pedido` (
  `idPedido` int(11) NOT NULL AUTO_INCREMENT,
  `idMesa` int(11) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `estadoPedido` varchar(50) DEFAULT NULL,
  `estadopagoPedido` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idPedido`) USING BTREE,
  KEY `idMesa` (`idMesa`) USING BTREE,
  KEY `idUsuario` (`idUsuario`) USING BTREE,
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`idMesa`) REFERENCES `mesa` (`idMesa`),
  CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=486 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of pedido
-- ----------------------------
INSERT INTO `pedido` VALUES ('232', '3', '1', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('233', '5', '1', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('234', '7', '1', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('235', '4', '1', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('236', '8', '1', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('237', '16', '3', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('238', '11', '3', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('239', '17', '3', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('240', '18', '3', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('241', '12', '4', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('262', '1', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('263', '1', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('264', '2', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('265', '12', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('266', '1', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('267', '20', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('269', '1', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('270', '8', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('271', '12', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('272', '16', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('273', '2', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('274', '11', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('275', '12', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('276', '17', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('277', '15', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('278', '6', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('279', '9', '3', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('280', '13', '3', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('281', '7', '4', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('282', '2', '4', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('283', '10', '4', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('285', '3', '4', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('286', '1', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('290', '14', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('291', '1', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('292', '5', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('293', '4', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('294', '6', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('295', '9', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('296', '10', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('297', '16', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('298', '7', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('299', '1', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('300', '6', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('301', '999', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('302', '999', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('303', '999', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('304', '999', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('305', '999', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('306', '999', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('307', '999', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('308', '999', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('309', '999', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('310', '999', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('311', '999', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('312', '999', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('313', '999', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('314', '999', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('315', '999', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('316', '999', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('317', '999', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('318', '999', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('319', '999', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('320', '999', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('321', '999', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('322', '999', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('323', '56', '22', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('324', '53', '22', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('325', '68', '22', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('326', '69', '22', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('327', '89', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('328', '83', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('329', '84', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('330', '4', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('331', '2', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('332', '10', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('333', '43', '23', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('334', '54', '17', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('335', '49', '23', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('336', '41', '23', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('337', '55', '27', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('338', '51', '27', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('339', '48', '27', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('340', '62', '27', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('341', '63', '27', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('342', '87', '4', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('343', '91', '3', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('344', '85', '3', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('345', '42', '3', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('346', '44', '3', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('347', '81', '3', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('348', '47', '3', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('349', '8', '19', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('350', '6', '19', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('351', '45', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('352', '992', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('353', '992', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('354', '82', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('355', '86', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('356', '5', '13', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('357', '11', '13', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('358', '12', '13', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('359', '13', '13', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('360', '15', '13', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('361', '16', '13', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('362', '17', '13', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('363', '18', '13', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('364', '19', '13', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('365', '20', '13', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('366', '66', '22', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('367', '993', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('368', '999', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('369', '999', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('370', '999', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('371', '999', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('372', '999', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('373', '999', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('374', '993', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('375', '60', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('376', '993', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('377', '1', '13', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('378', '992', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('379', '46', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('380', '993', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('381', '993', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('382', '993', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('383', '992', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('384', '992', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('385', '994', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('386', '994', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('387', '50', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('388', '44', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('389', '992', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('390', '52', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('391', '52', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('392', '52', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('393', '994', '3', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('394', '74', '3', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('395', '994', '3', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('396', '995', '3', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('397', '61', '4', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('398', '73', '3', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('399', '97', '3', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('400', '101', '3', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('401', '58', '6', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('402', '59', '6', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('403', '57', '6', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('405', '88', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('406', '96', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('407', '65', '23', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('408', '78', '23', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('409', '79', '23', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('410', '98', '3', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('411', '44', '22', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('412', '99', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('413', '92', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('419', '81', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('420', '82', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('421', '83', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('422', '83', '2', 'SOLICITADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('423', '81', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('424', '53', '22', 'SOLICITADO', 'SIN PAGAR');
INSERT INTO `pedido` VALUES ('425', '56', '22', 'SOLICITADO', 'SIN PAGAR');
INSERT INTO `pedido` VALUES ('426', '66', '22', 'SOLICITADO', 'SIN PAGAR');
INSERT INTO `pedido` VALUES ('427', '52', '22', 'SOLICITADO', 'SIN PAGAR');
INSERT INTO `pedido` VALUES ('428', '58', '22', 'SOLICITADO', 'SIN PAGAR');
INSERT INTO `pedido` VALUES ('429', '49', '22', 'SOLICITADO', 'SIN PAGAR');
INSERT INTO `pedido` VALUES ('432', '91', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('433', '3', '7', 'SOLICITADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('434', '2', '14', 'SOLICITADO', 'SIN PAGAR');
INSERT INTO `pedido` VALUES ('435', '992', '2', 'SOLICITADO', 'SIN PAGAR');
INSERT INTO `pedido` VALUES ('436', '994', '2', 'SOLICITADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('437', '992', '2', 'SOLICITADO', 'SIN PAGAR');
INSERT INTO `pedido` VALUES ('438', '994', '2', 'SOLICITADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('439', '82', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('440', '42', '3', 'SOLICITADO', 'SIN PAGAR');
INSERT INTO `pedido` VALUES ('441', '992', '3', 'SOLICITADO', 'SIN PAGAR');
INSERT INTO `pedido` VALUES ('443', '94', '1', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('444', '87', '1', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('445', '90', '1', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('446', '95', '1', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('447', '15', '1', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('448', '57', '1', 'SOLICITADO', 'SIN PAGAR');
INSERT INTO `pedido` VALUES ('449', '48', '1', 'SOLICITADO', 'SIN PAGAR');
INSERT INTO `pedido` VALUES ('450', '10', '1', 'EN PROCESO', 'SIN PAGAR');
INSERT INTO `pedido` VALUES ('451', '994', '1', 'SOLICITADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('452', '994', '1', 'SOLICITADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('453', '993', '2', 'SOLICITADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('454', '83', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('455', '81', '2', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('456', '995', '3', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('457', '993', '3', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('459', '81', '1', 'SOLICITADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('460', '84', '1', 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('467', '87', '33', 'SOLICITADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('468', '88', '33', 'SOLICITADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('469', '995', '33', 'SOLICITADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('470', '1', '34', 'SOLICITADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('471', '82', '33', 'SOLICITADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('473', '41', '33', 'SOLICITADO', 'SIN PAGAR');
INSERT INTO `pedido` VALUES ('474', '81', '33', 'SOLICITADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('475', '42', '33', 'SOLICITADO', 'SIN PAGAR');
INSERT INTO `pedido` VALUES ('476', '81', '33', 'SOLICITADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('477', '995', '33', 'SOLICITADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('478', '82', '33', 'SOLICITADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('479', '82', '33', 'SOLICITADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('480', '995', '33', 'SOLICITADO', 'PAGADO');
INSERT INTO `pedido` VALUES ('481', '82', '33', 'SOLICITADO', 'SIN PAGAR');
INSERT INTO `pedido` VALUES ('482', '93', '33', 'SOLICITADO', 'SIN PAGAR');
INSERT INTO `pedido` VALUES ('483', '89', '33', 'SOLICITADO', 'SIN PAGAR');
INSERT INTO `pedido` VALUES ('484', '85', '33', 'SOLICITADO', 'SIN PAGAR');
INSERT INTO `pedido` VALUES ('485', '86', '1', 'SOLICITADO', 'SIN PAGAR');

-- ----------------------------
-- Table structure for pedido_repartidor
-- ----------------------------
DROP TABLE IF EXISTS `pedido_repartidor`;
CREATE TABLE `pedido_repartidor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_repartidor` int(255) NOT NULL,
  `id_pedido` int(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of pedido_repartidor
-- ----------------------------
INSERT INTO `pedido_repartidor` VALUES ('1', '1', '1');
INSERT INTO `pedido_repartidor` VALUES ('2', '1', '1');
INSERT INTO `pedido_repartidor` VALUES ('3', '1', '373');
INSERT INTO `pedido_repartidor` VALUES ('4', '1', '374');
INSERT INTO `pedido_repartidor` VALUES ('5', '1', '376');
INSERT INTO `pedido_repartidor` VALUES ('6', '1', '378');
INSERT INTO `pedido_repartidor` VALUES ('7', '1', '380');
INSERT INTO `pedido_repartidor` VALUES ('8', '1', '383');
INSERT INTO `pedido_repartidor` VALUES ('9', '1', '384');
INSERT INTO `pedido_repartidor` VALUES ('10', '1', '389');
INSERT INTO `pedido_repartidor` VALUES ('11', '1', '437');
INSERT INTO `pedido_repartidor` VALUES ('12', '1', '441');

-- ----------------------------
-- Table structure for pedidoproducto
-- ----------------------------
DROP TABLE IF EXISTS `pedidoproducto`;
CREATE TABLE `pedidoproducto` (
  `idPedidoproducto` int(11) NOT NULL AUTO_INCREMENT,
  `idPedido` int(11) DEFAULT NULL,
  `idProducto` int(11) DEFAULT NULL,
  `descripcionPedidoproducto` varchar(10000) DEFAULT NULL,
  `estadoPedidoproducto` varchar(50) DEFAULT NULL,
  `cantidadPedidoproducto` varchar(255) DEFAULT NULL,
  `observacionPedidoproducto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idPedidoproducto`) USING BTREE,
  KEY `idPedido` (`idPedido`) USING BTREE,
  KEY `idProducto` (`idProducto`) USING BTREE,
  CONSTRAINT `pedidoproducto_ibfk_1` FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`idPedido`),
  CONSTRAINT `pedidoproducto_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=938 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of pedidoproducto
-- ----------------------------
INSERT INTO `pedidoproducto` VALUES ('404', '232', '14', 'Combinada 1/4', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('405', '232', '121', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('406', '233', '127', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('409', '234', '127', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('410', '234', '99', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('411', '233', '94', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('412', '233', '18', 'Combinada 1/4', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('413', '233', '14', 'Combinada 1/4', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('414', '235', '145', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('415', '235', '133', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('416', '236', '85', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('417', '232', '111', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('420', '234', '85', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('421', '237', '13', 'Combinada 1/2', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('422', '237', '26', 'Combinada 1/2', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('423', '237', '72', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('424', '238', '97', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('425', '239', '111', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('426', '240', '20', 'Combinada 1/2', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('427', '241', '9', 'Combinada 1/2', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('428', '241', '85', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('429', '262', '71', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('430', '263', '71', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('431', '264', '90', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('432', '264', '97', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('433', '264', '99', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('434', '264', '105', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('435', '264', '109', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('436', '264', '8', 'Personalizada', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('437', '265', '71', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('438', '265', '74', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('439', '265', '83', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('440', '265', '116', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('441', '265', '126', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('442', '265', '126', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('443', '265', '128', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('444', '266', '72', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('445', '267', '82', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('446', '267', '82', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('447', '267', '82', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('448', '267', '84', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('449', '267', '80', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('450', '267', '79', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('451', '267', '76', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('452', '267', '90', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('453', '267', '105', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('454', '267', '108', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('455', '269', '15', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('456', '269', '19', 'Personalizada', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('457', '269', '43', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('458', '269', '43', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('459', '270', '97', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('460', '271', '71', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('463', '270', '78', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('464', '272', '12', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('465', '272', '47', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('466', '272', '31', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('467', '272', '8', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('468', '272', '23', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('469', '272', '55', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('470', '272', '67', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('471', '272', '35', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('472', '273', '23', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('473', '273', '39', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('474', '273', '8', 'Combinada 1/2', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('475', '273', '4', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('476', '273', '35', 'Combinada 1/4', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('477', '274', '4', 'Personalizada', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('478', '275', '79', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('479', '275', '80', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('480', '275', '83', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('481', '275', '84', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('482', '275', '82', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('483', '275', '81', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('484', '275', '74', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('485', '275', '121', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('486', '275', '122', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('487', '275', '126', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('488', '275', '128', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('489', '275', '127', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('490', '275', '125', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('491', '276', '111', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('492', '276', '112', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('493', '276', '113', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('494', '276', '114', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('495', '276', '115', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('496', '276', '116', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('497', '276', '110', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('498', '277', '80', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('499', '277', '4', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('500', '277', '128', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('501', '277', '115', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('503', '278', '71', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('504', '279', '71', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('505', '280', '79', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('506', '280', '74', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('507', '281', '93', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('508', '281', '81', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('509', '282', '9', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('510', '283', '14', 'Combinada 1/4', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('511', '283', '97', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('512', '282', '93', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('514', '285', '10', 'Combinada 1/2', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('515', '285', '93', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('516', '286', '71', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('517', '286', '74', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('518', '286', '80', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('519', '286', '90', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('520', '286', '111', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('521', '286', '113', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('522', '286', '15', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('523', '286', '63', 'Combinada 1/4', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('524', '286', '123', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('525', '286', '126', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('526', '286', '128', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('527', '286', '136', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('528', '286', '129', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('529', '286', '145', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('530', '286', '150', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('531', '286', '166', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('532', '290', '73', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('533', '291', '68', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('534', '291', '80', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('535', '291', '92', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('536', '291', '111', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('537', '291', '125', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('538', '292', '91', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('539', '292', '105', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('540', '293', '73', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('541', '293', '80', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('542', '293', '85', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('543', '293', '76', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('544', '293', '97', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('545', '294', '71', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('546', '294', '111', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('547', '294', '114', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('548', '295', '110', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('550', '295', '116', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('551', '296', '121', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('552', '296', '126', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('553', '296', '85', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('554', '296', '111', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('555', '297', '3', 'Combinada 1/4', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('556', '297', '57', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('557', '297', '110', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('558', '298', '71', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('559', '298', '92', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('560', '298', '112', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('561', '298', '47', 'Combinada 1/2', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('562', '298', '123', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('563', '298', '122', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('564', '298', '131', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('565', '298', '146', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('566', '298', '150', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('567', '298', '164', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('568', '299', '68', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('569', '299', '79', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('570', '299', '94', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('571', '299', '111', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('572', '299', '5', 'Combinada 1/2', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('573', '299', '127', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('574', '299', '129', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('575', '299', '157', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('576', '299', '147', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('577', '299', '145', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('578', '300', '101', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('579', '300', '142', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('580', '301', '122', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('581', '301', '123', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('582', '302', '122', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('583', '302', '123', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('584', '303', '122', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('585', '303', '123', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('586', '303', '124', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('587', '304', '101', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('588', '304', '51', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('589', '305', '101', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('590', '306', '51', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('591', '307', '51', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('592', '307', '43', 'Personalizada', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('593', '307', '112', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('594', '308', '60', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('595', '309', '51', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('596', '310', '27', 'Combinada 1/4', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('597', '310', '47', 'Combinada 1/2', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('598', '311', '51', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('599', '311', '132', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('600', '311', '104', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('601', '312', '35', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('602', '313', '4', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('603', '313', '12', 'Combinada 1/2', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('604', '314', '4', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('605', '314', '12', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('606', '314', '15', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('607', '315', '4', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('608', '315', '35', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('609', '316', '4', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('610', '317', '4', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('611', '318', '1', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('612', '319', '4', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('613', '319', '12', 'Combinada 1/2', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('614', '319', '19', 'Combinada 1/4', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('615', '319', '51', 'Personalizada', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('616', '320', '4', 'Personalizada', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('617', '320', '85', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('618', '320', '132', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('619', '321', '68', 'Unitario', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('620', '322', '23', 'entera', 'ENTREGADO', null, null);
INSERT INTO `pedidoproducto` VALUES ('621', '346', '68', 'Unitario', 'ENTREGADO', '2', '2');
INSERT INTO `pedidoproducto` VALUES ('622', '347', '93', 'Unitario', 'ENTREGADO', '2', 'lasaña');
INSERT INTO `pedidoproducto` VALUES ('623', '347', '15', 'Personalizada', 'ENTREGADO', '4', 'lasaña');
INSERT INTO `pedidoproducto` VALUES ('624', '348', '97', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('625', '348', '9', 'Combinada 1/2', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('626', '349', '116', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('627', '349', '113', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('628', '349', '138', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('629', '349', '144', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('630', '350', '71', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('631', '350', '1', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('632', '351', '13', 'Combinada 1/2', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('633', '351', '60', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('634', '352', '66', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('635', '353', '13', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('636', '354', '64', 'entera', 'ENTREGADO', '1', 'Que este caliente la pizza');
INSERT INTO `pedidoproducto` VALUES ('637', '354', '64', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('638', '355', '13', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('639', '356', '45', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('640', '356', '130', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('641', '356', '124', 'Unitario', 'ENTREGADO', '1', 'Helado de vainilla');
INSERT INTO `pedidoproducto` VALUES ('642', '357', '121', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('643', '357', '150', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('644', '358', '15', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('645', '358', '153', 'Unitario', 'ENTREGADO', '2', '');
INSERT INTO `pedidoproducto` VALUES ('646', '358', '75', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('647', '358', '12', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('648', '359', '110', 'Unitario', 'ENTREGADO', '1', '+salsa BBQ ');
INSERT INTO `pedidoproducto` VALUES ('649', '359', '125', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('650', '360', '11', 'Combinada 1/2', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('651', '360', '75', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('652', '360', '133', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('653', '360', '129', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('654', '361', '96', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('655', '361', '60', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('656', '361', '90', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('657', '361', '116', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('658', '361', '131', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('659', '362', '15', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('660', '362', '134', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('661', '363', '4', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('662', '363', '140', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('663', '363', '110', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('664', '364', '110', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('665', '365', '114', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('666', '365', '95', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('667', '365', '137', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('668', '365', '129', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('669', '365', '76', 'Unitario', 'ENTREGADO', '1', '3cortecia');
INSERT INTO `pedidoproducto` VALUES ('670', '365', '79', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('671', '366', '1', 'entera', 'ENTREGADO', '2', '');
INSERT INTO `pedidoproducto` VALUES ('672', '366', '140', 'Unitario', 'ENTREGADO', '2', '');
INSERT INTO `pedidoproducto` VALUES ('673', '366', '121', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('674', '366', '96', 'Unitario', 'ENTREGADO', '2', '');
INSERT INTO `pedidoproducto` VALUES ('676', '367', '64', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('677', '368', '65', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('680', '373', '64', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('681', '374', '64', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('682', '375', '68', 'Unitario', 'ENTREGADO', '2', 'Mayonesa');
INSERT INTO `pedidoproducto` VALUES ('683', '375', '8', 'Personalizada', 'ENTREGADO', '2', 'Mayonesa');
INSERT INTO `pedidoproducto` VALUES ('684', '376', '64', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('685', '377', '61', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('686', '377', '134', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('687', '377', '125', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('688', '378', '9', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('689', '379', '96', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('690', '380', '8', 'entera', 'ENTREGADO', '2', 'prueba');
INSERT INTO `pedidoproducto` VALUES ('691', '381', '1', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('692', '382', '12', 'Personalizada', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('693', '383', '5', 'entera', 'ENTREGADO', '1', 'Pizza camaron');
INSERT INTO `pedidoproducto` VALUES ('694', '384', '12', 'entera', 'ENTREGADO', '4', 'Pizza de carnes de Janpaul');
INSERT INTO `pedidoproducto` VALUES ('695', '385', '15', 'entera', 'ENTREGADO', '8', 'Pizza 4 est');
INSERT INTO `pedidoproducto` VALUES ('696', '386', '5', 'entera', 'ENTREGADO', '4', 'pizza camaron sabrosa');
INSERT INTO `pedidoproducto` VALUES ('697', '387', '15', 'Personalizada', 'ENTREGADO', '5', 'awdawda');
INSERT INTO `pedidoproducto` VALUES ('698', '388', '19', 'Personalizada', 'ENTREGADO', '4', 'con cocacola');
INSERT INTO `pedidoproducto` VALUES ('700', '389', '111', 'Unitario', 'ENTREGADO', '4', '');
INSERT INTO `pedidoproducto` VALUES ('701', '389', '12', 'Personalizada', 'ENTREGADO', '4', 'personalizada pizza');
INSERT INTO `pedidoproducto` VALUES ('704', '388', '72', 'Unitario', 'ENTREGADO', '5', 'Con queso');
INSERT INTO `pedidoproducto` VALUES ('705', '390', '8', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('706', '391', '4', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('707', '391', '136', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('708', '391', '143', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('709', '392', '4', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('710', '393', '106', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('711', '394', '16', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('712', '395', '66', 'Combinada 1/2', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('713', '395', '66', 'Combinada 1/2', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('714', '396', '106', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('715', '397', '11', 'Combinada 1/2', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('716', '398', '15', 'Personalizada', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('717', '399', '1', 'Personalizada', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('718', '400', '40', 'Combinada 1/4', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('719', '401', '157', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('720', '402', '125', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('721', '402', '129', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('722', '402', '15', 'Combinada 1/2', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('723', '402', '68', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('724', '403', '75', 'Unitario', 'ENTREGADO', '1', 'Cortesia');
INSERT INTO `pedidoproducto` VALUES ('725', '403', '95', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('726', '403', '15', 'Combinada 1/2', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('727', '403', '131', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('733', '351', '71', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('734', '351', '111', 'Unitario', 'ENTREGADO', '13', 'Bien cocidas');
INSERT INTO `pedidoproducto` VALUES ('736', '405', '111', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('737', '405', '12', 'Personalizada', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('738', '355', '94', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('739', '355', '11', 'Combinada 1/2', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('740', '355', '17', 'Combinada 1/2', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('741', '406', '5', 'Combinada 1/2', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('742', '407', '12', 'Combinada 1/2', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('743', '407', '160', 'Unitario', 'ENTREGADO', '3', 'Frío');
INSERT INTO `pedidoproducto` VALUES ('744', '407', '68', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('745', '408', '120', 'Unitario', 'ENTREGADO', '1', 'No ensaladas ');
INSERT INTO `pedidoproducto` VALUES ('746', '408', '128', 'Unitario', 'ENTREGADO', '1', 'No crema no grajeas ');
INSERT INTO `pedidoproducto` VALUES ('747', '408', '122', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('748', '408', '1', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('749', '409', '15', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('750', '410', '9', 'Combinada 1/4', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('751', '411', '63', 'Combinada 1/2', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('752', '411', '140', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('753', '412', '49', 'Combinada 1/2', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('756', '413', '121', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('757', '413', '121', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('758', '413', '126', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('777', '419', '111', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('778', '419', '10', 'Combinada 1/2', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('779', '419', '121', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('780', '420', '15', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('781', '421', '44', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('782', '422', '143', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('783', '422', '111', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('784', '422', '142', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('787', '424', '135', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('789', '425', '164', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('790', '425', '112', 'Unitario', 'SOLICITADO', '2', '');
INSERT INTO `pedidoproducto` VALUES ('791', '425', '137', 'Unitario', 'ENTREGADO', '2', '');
INSERT INTO `pedidoproducto` VALUES ('792', '425', '103', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('793', '425', '139', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('794', '426', '93', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('796', '426', '158', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('797', '427', '2', 'entera', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('798', '427', '75', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('799', '427', '114', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('800', '427', '131', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('801', '428', '110', 'Unitario', 'SOLICITADO', '1', 'Papás fritas');
INSERT INTO `pedidoproducto` VALUES ('802', '429', '134', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('804', '429', '95', 'Unitario', 'SOLICITADO', '2', '');
INSERT INTO `pedidoproducto` VALUES ('805', '429', '110', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('806', '429', '69', 'Unitario', 'SOLICITADO', '1', 'Media');
INSERT INTO `pedidoproducto` VALUES ('807', '429', '69', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('809', '423', '101', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('813', '432', '121', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('814', '432', '143', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('815', '433', '121', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('818', '434', '128', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('819', '435', '112', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('820', '435', '112', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('821', '436', '66', 'entera', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('822', '437', '70', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('823', '438', '111', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('824', '439', '9', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('825', '440', '10', 'Combinada 1/2', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('826', '441', '97', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('827', '441', '97', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('829', '443', '146', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('830', '443', '143', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('831', '443', '161', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('832', '443', '117', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('833', '443', '133', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('834', '443', '69', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('835', '443', '12', 'Personalizada', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('836', '444', '96', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('837', '445', '12', 'Combinada 1/2', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('838', '446', '86', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('839', '446', '91', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('840', '446', '114', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('841', '446', '14', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('842', '446', '124', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('843', '446', '151', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('844', '447', '14', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('845', '447', '47', 'Personalizada', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('846', '447', '14', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('847', '447', '72', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('848', '447', '98', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('849', '447', '114', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('850', '447', '119', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('851', '447', '150', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('853', '448', '148', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('859', '448', '97', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('860', '448', '31', 'entera', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('861', '448', '31', 'Personalizada', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('862', '448', '142', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('863', '448', '97', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('864', '448', '15', 'Personalizada', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('866', '449', '51', 'Combinada 1/4', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('867', '449', '80', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('868', '428', '152', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('869', '450', '75', 'Unitario', 'EN PROCESO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('870', '450', '106', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('871', '450', '138', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('872', '450', '18', 'entera', 'EN PROCESO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('873', '450', '128', 'Unitario', 'EN PROCESO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('874', '451', '129', 'Unitario', 'ENTREGADO', '3', '');
INSERT INTO `pedidoproducto` VALUES ('875', '452', '143', 'Unitario', 'ENTREGADO', '4', '');
INSERT INTO `pedidoproducto` VALUES ('876', '453', '136', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('877', '454', '68', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('878', '454', '91', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('879', '454', '112', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('880', '454', '15', 'Personalizada', 'ENTREGADO', '5', '');
INSERT INTO `pedidoproducto` VALUES ('881', '454', '19', 'entera', 'ENTREGADO', '5', '');
INSERT INTO `pedidoproducto` VALUES ('882', '432', '99', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('883', '432', '68', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('884', '455', '19', 'Personalizada', 'ENTREGADO', '3', 'cometario de la pizza');
INSERT INTO `pedidoproducto` VALUES ('885', '426', '96', 'Unitario', 'SOLICITADO', '2', '');
INSERT INTO `pedidoproducto` VALUES ('887', '456', '13', 'entera', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('888', '457', '87', 'Unitario', 'ENTREGADO', '1', 'Este bien cocinado.');
INSERT INTO `pedidoproducto` VALUES ('890', '459', '93', 'Unitario', 'ENTREGADO', '4', '');
INSERT INTO `pedidoproducto` VALUES ('891', '460', '23', 'Combinada 1/2', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('894', '459', '96', 'Unitario', 'ENTREGADO', '4', '');
INSERT INTO `pedidoproducto` VALUES ('895', '459', '141', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('901', '467', '79', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('902', '467', '71', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('903', '467', '94', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('904', '467', '131', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('905', '467', '162', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('906', '468', '71', 'Unitario', 'SOLICITADO', '2', 'Que no tenga anchoas soy alergico');
INSERT INTO `pedidoproducto` VALUES ('907', '468', '130', 'Unitario', 'ENTREGADO', '1', '\nque este dulce ');
INSERT INTO `pedidoproducto` VALUES ('908', '469', '99', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('909', '470', '68', 'Unitario', 'SOLICITADO', '1', 'Sin sal');
INSERT INTO `pedidoproducto` VALUES ('910', '471', '106', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('914', '473', '5', 'entera', 'SOLICITADO', '1', 'Borde de Queso');
INSERT INTO `pedidoproducto` VALUES ('915', '473', '137', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('916', '474', '87', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('917', '474', '154', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('918', '475', '87', 'Unitario', 'SOLICITADO', '1', 'Con sal');
INSERT INTO `pedidoproducto` VALUES ('919', '475', '135', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('920', '476', '3', 'entera', 'SOLICITADO', '1', 'SIN CEBOLLA');
INSERT INTO `pedidoproducto` VALUES ('921', '476', '137', 'Unitario', 'ENTREGADO', '1', 'ZERO');
INSERT INTO `pedidoproducto` VALUES ('922', '476', '98', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('923', '477', '15', 'entera', 'SOLICITADO', '2', '');
INSERT INTO `pedidoproducto` VALUES ('924', '478', '14', 'entera', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('925', '478', '144', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('926', '479', '4', 'entera', 'SOLICITADO', '1', 'EXTRA QUESO');
INSERT INTO `pedidoproducto` VALUES ('927', '479', '137', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('928', '479', '93', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('929', '480', '87', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('930', '481', '9', 'entera', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('931', '482', '9', 'Combinada 1/2', 'SOLICITADO', '1', 'extra queso');
INSERT INTO `pedidoproducto` VALUES ('932', '482', '149', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('933', '483', '97', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('934', '483', '142', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('935', '484', '68', 'Unitario', 'SOLICITADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('936', '484', '133', 'Unitario', 'ENTREGADO', '1', '');
INSERT INTO `pedidoproducto` VALUES ('937', '485', '71', 'Unitario', 'SOLICITADO', '4', '');

-- ----------------------------
-- Table structure for pedidoproductocombinado
-- ----------------------------
DROP TABLE IF EXISTS `pedidoproductocombinado`;
CREATE TABLE `pedidoproductocombinado` (
  `idPedidoproductocombinado` int(11) NOT NULL AUTO_INCREMENT,
  `idPedidoproducto` int(11) DEFAULT NULL,
  `idProducto` int(11) DEFAULT NULL,
  `descripcionPedidoproducto` varchar(10000) DEFAULT NULL,
  `estadoPedidoproducto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idPedidoproductocombinado`) USING BTREE,
  KEY `idPedidoproducto` (`idPedidoproducto`) USING BTREE,
  KEY `idProducto` (`idProducto`) USING BTREE,
  CONSTRAINT `pedidoproductocombinado_ibfk_1` FOREIGN KEY (`idPedidoproducto`) REFERENCES `pedidoproducto` (`idPedidoproducto`),
  CONSTRAINT `pedidoproductocombinado_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of pedidoproductocombinado
-- ----------------------------
INSERT INTO `pedidoproductocombinado` VALUES ('213', '404', '11', 'Combinada 1/4', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('214', '412', '7', 'Combinada 1/4', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('215', '413', '18', 'Combinada 1/4', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('216', '421', '21', 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('217', '422', '14', 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('218', '426', '1', 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('219', '427', '5', 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('220', '436', '4', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('221', '436', '51', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('222', '436', '59', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('223', '456', '4', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('224', '456', '35', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('225', '456', '59', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('226', '474', '23', 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('227', '476', '23', 'Combinada 1/4', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('228', '477', '15', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('229', '477', '43', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('230', '477', '55', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('231', '510', '7', 'Combinada 1/4', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('232', '514', '6', 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('233', '523', '4', 'Combinada 1/4', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('234', '555', '14', 'Combinada 1/4', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('235', '561', '19', 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('236', '572', '24', 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('237', '592', '12', 'Personalizada', 'DOMICILIO');
INSERT INTO `pedidoproductocombinado` VALUES ('238', '592', '4', 'Personalizada', 'DOMICILIO');
INSERT INTO `pedidoproductocombinado` VALUES ('239', '592', '27', 'Personalizada', 'DOMICILIO');
INSERT INTO `pedidoproductocombinado` VALUES ('240', '596', '23', 'Combinada 1/4', 'DOMICILIO');
INSERT INTO `pedidoproductocombinado` VALUES ('241', '597', '31', 'Combinada 1/2', 'DOMICILIO');
INSERT INTO `pedidoproductocombinado` VALUES ('242', '603', '23', 'Combinada 1/2', 'DOMICILIO');
INSERT INTO `pedidoproductocombinado` VALUES ('243', '613', '8', 'Combinada 1/2', 'DOMICILIO');
INSERT INTO `pedidoproductocombinado` VALUES ('244', '614', '12', 'Combinada 1/4', 'DOMICILIO');
INSERT INTO `pedidoproductocombinado` VALUES ('245', '615', '15', 'Personalizada', 'DOMICILIO');
INSERT INTO `pedidoproductocombinado` VALUES ('246', '615', '4', 'Personalizada', 'DOMICILIO');
INSERT INTO `pedidoproductocombinado` VALUES ('247', '615', '35', 'Personalizada', 'DOMICILIO');
INSERT INTO `pedidoproductocombinado` VALUES ('248', '616', '8', 'Personalizada', 'DOMICILIO');
INSERT INTO `pedidoproductocombinado` VALUES ('249', '616', '12', 'Personalizada', 'DOMICILIO');
INSERT INTO `pedidoproductocombinado` VALUES ('250', '616', '15', 'Personalizada', 'DOMICILIO');
INSERT INTO `pedidoproductocombinado` VALUES ('251', '623', '4', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('252', '623', '8', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('253', '623', '12', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('254', '625', '20', 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('255', '632', '29', 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('256', '650', '26', 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('257', '683', '15', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('258', '683', '59', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('259', '683', '47', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('260', '692', '4', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('261', '692', '8', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('262', '692', '12', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('263', '697', '8', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('264', '697', '19', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('265', '697', '23', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('266', '698', '12', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('267', '698', '19', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('268', '698', '8', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('269', '701', '19', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('270', '701', '39', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('271', '701', '55', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('272', '712', '11', 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('273', '713', '7', 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('274', '715', '22', 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('275', '716', '19', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('276', '716', '23', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('277', '716', '23', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('278', '717', '20', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('279', '717', '20', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('280', '717', '44', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('281', '718', '16', 'Combinada 1/4', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('282', '722', '12', 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('283', '726', '8', 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('284', '737', '27', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('285', '737', '27', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('286', '737', '19', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('287', '739', '22', 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('288', '740', '13', 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('289', '741', '1', 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('290', '742', '23', 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('291', '750', '36', 'Combinada 1/4', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('292', '751', '63', 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('293', '753', '21', 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('297', '778', '6', 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('298', '825', '17', 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('299', '835', '19', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('300', '835', '27', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('301', '835', '31', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('302', '837', '4', 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('303', '845', '67', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('304', '845', '43', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('305', '845', '23', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('306', '861', '15', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('307', '861', '67', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('308', '861', '47', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('309', '864', '4', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('310', '864', '67', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('311', '864', '51', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('312', '866', '23', 'Combinada 1/4', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('313', '880', '15', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('314', '880', '15', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('315', '880', '19', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('316', '884', '4', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('317', '884', '8', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('318', '884', '12', 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('319', '891', '27', 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES ('320', '931', '16', 'Combinada 1/2', 'SOLICITADO');

-- ----------------------------
-- Table structure for pedprod_ing
-- ----------------------------
DROP TABLE IF EXISTS `pedprod_ing`;
CREATE TABLE `pedprod_ing` (
  `idPedprod_ing` int(11) NOT NULL AUTO_INCREMENT,
  `idIngrediente` int(11) DEFAULT NULL,
  `idPedidoproducto` int(11) DEFAULT NULL,
  `opPedprod_ing` varchar(10) DEFAULT NULL,
  `cantidadPedProd_ing` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPedprod_ing`) USING BTREE,
  KEY `idIngrediente` (`idIngrediente`) USING BTREE,
  KEY `idPedidoproducto` (`idPedidoproducto`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=671 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of pedprod_ing
-- ----------------------------
INSERT INTO `pedprod_ing` VALUES ('450', '72', '405', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('451', '98', '405', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('452', '98', '406', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('453', '99', '406', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('454', '99', '409', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('455', '6', '413', 'agrega', '3');
INSERT INTO `pedprod_ing` VALUES ('456', '27', '413', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('459', '63', '420', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('460', '8', '421', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('461', '8', '427', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('462', '1', '427', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('463', '6', '428', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('464', '99', '442', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('465', '75', '442', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('466', '94', '443', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('467', '22', '455', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('468', '18', '460', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('469', '24', '510', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('470', '6', '510', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('471', '22', '514', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('472', '1', '514', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('473', '12', '523', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('474', '22', '523', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('475', '22', '555', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('476', '8', '555', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('477', '21', '555', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('478', '8', '556', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('479', '6', '557', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('480', '8', '559', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('481', '6', '560', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('482', '3', '560', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('483', '22', '561', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('484', '8', '568', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('485', '56', '568', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('486', '6', '569', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('487', '18', '569', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('488', '51', '570', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('489', '41', '570', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('490', '68', '571', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('491', '22', '572', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('492', '99', '573', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('493', '18', '593', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('494', '6', '593', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('495', '22', '595', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('496', '18', '595', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('497', '8', '610', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('498', '22', '610', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('499', '5', '610', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('500', '21', '610', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('501', '8', '611', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('502', '22', '611', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('503', '22', '612', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('504', '6', '613', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('505', '1', '613', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('506', '12', '614', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('507', '8', '614', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('508', '1', '614', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('509', '18', '614', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('510', '22', '615', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('511', '12', '616', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('512', '22', '616', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('513', '1', '616', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('514', '63', '617', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('515', '6', '617', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('516', '18', '619', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('517', '6', '619', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('518', '22', '620', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('519', '8', '624', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('520', '68', '624', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('521', '53', '624', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('522', '54', '624', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('523', '40', '624', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('524', '33', '631', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('525', '1', '631', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('526', '8', '631', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('527', '21', '631', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('528', '12', '633', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('529', '8', '633', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('530', '22', '633', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('531', '6', '633', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('532', '8', '634', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('533', '2', '655', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('534', '33', '655', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('535', '106', '664', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('536', '107', '665', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('537', '10', '674', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('538', '6', '682', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('539', '56', '682', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('540', '2', '685', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('541', '5', '685', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('542', '8', '690', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('543', '22', '693', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('544', '6', '693', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('545', '24', '694', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('546', '12', '695', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('547', '8', '695', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('548', '8', '696', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('549', '18', '697', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('551', '6', '700', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('554', '18', '704', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('555', '64', '704', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('556', '1', '705', 'agrega', '5');
INSERT INTO `pedprod_ing` VALUES ('557', '1', '709', 'agrega', '4');
INSERT INTO `pedprod_ing` VALUES ('558', '22', '712', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('559', '12', '715', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('560', '8', '717', 'agrega', '2');
INSERT INTO `pedprod_ing` VALUES ('561', '22', '718', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('562', '6', '718', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('563', '20', '718', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('566', '9', '733', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('567', '104', '734', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('568', '107', '734', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('569', '104', '736', 'agrega', '2');
INSERT INTO `pedprod_ing` VALUES ('570', '6', '736', 'agrega', '3');
INSERT INTO `pedprod_ing` VALUES ('571', '107', '736', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('572', '8', '737', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('573', '5', '737', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('574', '8', '738', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('575', '54', '738', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('576', '22', '740', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('577', '63', '744', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('578', '6', '744', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('579', '56', '744', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('580', '14', '744', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('581', '97', '745', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('582', '97', '746', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('583', '94', '746', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('584', '93', '746', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('585', '22', '750', 'agrega', '2');
INSERT INTO `pedprod_ing` VALUES ('586', '6', '753', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('587', '98', '757', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('588', '99', '758', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('589', '98', '758', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('605', '12', '777', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('606', '104', '777', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('607', '18', '777', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('608', '107', '777', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('609', '63', '807', 'agrega', '2');
INSERT INTO `pedprod_ing` VALUES ('614', '72', '818', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('615', '98', '818', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('616', '75', '818', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('617', '8', '824', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('618', '1', '824', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('619', '5', '824', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('620', '8', '825', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('621', '12', '838', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('622', '2', '840', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('623', '98', '842', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('624', '90', '848', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('625', '2', '849', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('626', '70', '850', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('629', '6', '867', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('630', '53', '870', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('631', '98', '873', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('632', '8', '881', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('633', '22', '881', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('634', '10', '882', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('638', '8', '891', 'agrega', '1');
INSERT INTO `pedprod_ing` VALUES ('639', '1', '891', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('640', '29', '891', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('641', '30', '891', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('642', '20', '891', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('643', '21', '891', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('648', '44', '894', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('650', '59', '902', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('651', '9', '902', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('652', '89', '903', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('653', '43', '903', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('654', '58', '906', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('655', '9', '906', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('656', '56', '906', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('657', '2', '909', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('658', '15', '909', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('659', '18', '909', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('665', '1', '916', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('666', '2', '916', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('667', '1', '929', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('668', '8', '933', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('669', '10', '933', 'quita', '1');
INSERT INTO `pedprod_ing` VALUES ('670', '9', '937', 'quita', '1');

-- ----------------------------
-- Table structure for pedprodcomb_ing
-- ----------------------------
DROP TABLE IF EXISTS `pedprodcomb_ing`;
CREATE TABLE `pedprodcomb_ing` (
  `idPedprodcomb_ing` int(11) NOT NULL AUTO_INCREMENT,
  `idIngrediente` int(11) DEFAULT NULL,
  `idPedidoproductocombinado` int(11) DEFAULT NULL,
  `opPedprodcomb_ing` varchar(10) DEFAULT NULL,
  `cantidadPedProdcomb_ing` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPedprodcomb_ing`) USING BTREE,
  KEY `idIngrediente` (`idIngrediente`) USING BTREE,
  KEY `idPedidoproductocombinado` (`idPedidoproductocombinado`) USING BTREE,
  CONSTRAINT `pedprodcomb_ingadi_ibfk_1` FOREIGN KEY (`idIngrediente`) REFERENCES `ingrediente` (`idIngrediente`),
  CONSTRAINT `pedprodcomb_ingadi_ibfk_2` FOREIGN KEY (`idPedidoproductocombinado`) REFERENCES `pedidoproductocombinado` (`idPedidoproductocombinado`)
) ENGINE=InnoDB AUTO_INCREMENT=375 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of pedprodcomb_ing
-- ----------------------------
INSERT INTO `pedprodcomb_ing` VALUES ('333', '8', '215', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('334', '12', '215', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('335', '6', '234', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('336', '18', '236', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('337', '6', '241', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('338', '12', '243', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('339', '8', '243', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('340', '18', '243', 'quita', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('341', '8', '244', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('342', '12', '244', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('343', '24', '244', 'quita', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('344', '8', '245', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('345', '22', '245', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('346', '6', '245', 'quita', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('347', '24', '246', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('348', '12', '246', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('349', '1', '246', 'quita', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('350', '18', '247', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('351', '12', '247', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('352', '2', '247', 'quita', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('353', '12', '248', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('354', '8', '248', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('355', '12', '249', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('356', '18', '249', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('357', '6', '250', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('358', '22', '250', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('359', '26', '250', 'quita', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('360', '8', '254', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('361', '8', '255', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('362', '8', '277', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('363', '6', '277', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('364', '12', '289', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('365', '12', '291', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('366', '20', '292', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('367', '1', '292', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('368', '22', '298', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('369', '63', '319', 'agrega', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('370', '1', '319', 'quita', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('371', '20', '319', 'quita', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('372', '29', '319', 'quita', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('373', '31', '319', 'quita', '1');
INSERT INTO `pedprodcomb_ing` VALUES ('374', '32', '319', 'quita', '1');

-- ----------------------------
-- Table structure for perfil
-- ----------------------------
DROP TABLE IF EXISTS `perfil`;
CREATE TABLE `perfil` (
  `idPerfil` int(11) NOT NULL AUTO_INCREMENT,
  `nombrePerfil` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idPerfil`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of perfil
-- ----------------------------
INSERT INTO `perfil` VALUES ('1', 'ADMINISTRADOR DE LOCALES / ESTABLECIMIENTOS');
INSERT INTO `perfil` VALUES ('2', 'SALONERO');
INSERT INTO `perfil` VALUES ('3', 'CAJERO CERTIFICADO');
INSERT INTO `perfil` VALUES ('4', 'MENSAJERO / REPARTIDOR');
INSERT INTO `perfil` VALUES ('5', 'CONSERJE');
INSERT INTO `perfil` VALUES ('6', 'GERENTE / AFINES');
INSERT INTO `perfil` VALUES ('7', 'SOPORTE TECNICO');

-- ----------------------------
-- Table structure for producto
-- ----------------------------
DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto` (
  `idProducto` int(11) NOT NULL AUTO_INCREMENT,
  `idSubmenu` int(11) DEFAULT NULL,
  `nombreProducto` varchar(100) DEFAULT NULL,
  `precioProducto` decimal(15,2) DEFAULT NULL,
  `cantidadProducto` int(11) DEFAULT NULL,
  `tipoProducto` varchar(100) DEFAULT NULL,
  `codProducto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idProducto`) USING BTREE,
  KEY `idSubmenu` (`idSubmenu`) USING BTREE,
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`idSubmenu`) REFERENCES `submenu` (`idSubmenu`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of producto
-- ----------------------------
INSERT INTO `producto` VALUES ('1', '11', 'Pizza Personal', '8.00', '10', null, '011');
INSERT INTO `producto` VALUES ('2', '11', 'Pizza Mini', '13.49', '10', null, '012');
INSERT INTO `producto` VALUES ('3', '11', 'Pizza Mediana', '16.79', '10', null, '013');
INSERT INTO `producto` VALUES ('4', '11', 'Pizza Familiar', '21.38', '10', null, '014');
INSERT INTO `producto` VALUES ('5', '12', 'Pizza Personal', '8.00', '10', null, '056');
INSERT INTO `producto` VALUES ('6', '12', 'Pizza Mini', '13.49', '10', null, '057');
INSERT INTO `producto` VALUES ('7', '12', 'Pizza Mediana', '16.79', '10', null, '058');
INSERT INTO `producto` VALUES ('8', '12', 'Pizza Familiar', '21.38', '10', null, '059');
INSERT INTO `producto` VALUES ('9', '13', 'Pizza Personal', '7.00', '10', null, '021');
INSERT INTO `producto` VALUES ('10', '13', 'Pizza Mini', '13.23', '10', null, '022');
INSERT INTO `producto` VALUES ('11', '13', 'Pizza Mediana', '16.29', '10', null, '023');
INSERT INTO `producto` VALUES ('12', '13', 'Pizza Familiar', '20.36', '10', null, '024');
INSERT INTO `producto` VALUES ('13', '14', 'Pizza Mini', '12.52', '10', null, '032');
INSERT INTO `producto` VALUES ('14', '14', 'Pizza Mediana', '15.37', '10', null, '033');
INSERT INTO `producto` VALUES ('15', '14', 'Pizza Familiar', '20.15', '10', null, '034');
INSERT INTO `producto` VALUES ('16', '15', 'Pizza Personal', '6.21', '10', null, '041');
INSERT INTO `producto` VALUES ('17', '15', 'Pizza Mini', '12.47', '10', null, '042');
INSERT INTO `producto` VALUES ('18', '15', 'Pizza Mediana', '14.66', '10', null, '043');
INSERT INTO `producto` VALUES ('19', '15', 'Pizza Familiar', '18.12', '10', null, '044');
INSERT INTO `producto` VALUES ('20', '16', 'Pizza Personal', '6.21', '10', null, '091');
INSERT INTO `producto` VALUES ('21', '16', 'Pizza Mini', '12.47', '10', null, '092');
INSERT INTO `producto` VALUES ('22', '16', 'Pizza Mediana', '14.66', '10', null, '093');
INSERT INTO `producto` VALUES ('23', '16', 'Pizza Familiar', '18.12', '10', null, '094');
INSERT INTO `producto` VALUES ('24', '17', 'Pizza Personal', '6.62', '10', null, '025');
INSERT INTO `producto` VALUES ('25', '17', 'Pizza Mini', '12.72', '10', null, '027');
INSERT INTO `producto` VALUES ('26', '17', 'Pizza Mediana', '15.27', '10', null, '028');
INSERT INTO `producto` VALUES ('27', '17', 'Pizza Familiar', '19.75', '10', null, '029');
INSERT INTO `producto` VALUES ('28', '18', 'Pizza Personal', '6.62', '10', null, '016');
INSERT INTO `producto` VALUES ('29', '18', 'Pizza Mini', '12.72', '10', null, '017');
INSERT INTO `producto` VALUES ('30', '18', 'Pizza Mediana', '15.27', '10', null, '018');
INSERT INTO `producto` VALUES ('31', '18', 'Pizza Familiar', '19.75', '10', null, '019');
INSERT INTO `producto` VALUES ('32', '19', 'Pizza Personal', '6.61', '10', null, '061');
INSERT INTO `producto` VALUES ('33', '19', 'Pizza Mini', '12.72', '10', null, '062');
INSERT INTO `producto` VALUES ('34', '19', 'Pizza Mediana', '15.27', '10', null, '063');
INSERT INTO `producto` VALUES ('35', '19', 'Pizza Familiar', '19.75', '10', null, '064');
INSERT INTO `producto` VALUES ('36', '20', 'Pizza Personal', '6.61', '10', null, '046');
INSERT INTO `producto` VALUES ('37', '20', 'Pizza Mini', '12.72', '10', null, '047');
INSERT INTO `producto` VALUES ('38', '20', 'Pizza Mediana', '15.27', '10', null, '048');
INSERT INTO `producto` VALUES ('39', '20', 'Pizza Familiar', '19.75', '10', null, '049');
INSERT INTO `producto` VALUES ('40', '21', 'Pizza Personal', '6.61', '10', null, '071');
INSERT INTO `producto` VALUES ('41', '21', 'Pizza Mini', '12.72', '10', null, '072');
INSERT INTO `producto` VALUES ('42', '21', 'Pizza Mediana', '15.27', '10', null, '073');
INSERT INTO `producto` VALUES ('43', '21', 'Pizza Familiar', '19.75', '10', null, '074');
INSERT INTO `producto` VALUES ('44', '22', 'Pizza Personal', '6.61', '10', null, '036');
INSERT INTO `producto` VALUES ('45', '22', 'Pizza Mini', '12.72', '10', null, '037');
INSERT INTO `producto` VALUES ('46', '22', 'Pizza Mediana', '15.27', '10', null, '038');
INSERT INTO `producto` VALUES ('47', '22', 'Pizza Familiar', '19.75', '10', null, '039');
INSERT INTO `producto` VALUES ('48', '23', 'Pizza Personal', '6.51', '10', null, '051');
INSERT INTO `producto` VALUES ('49', '23', 'Pizza Mini', '12.52', '10', null, '052');
INSERT INTO `producto` VALUES ('50', '23', 'Pizza Mediana', '14.86', '10', null, '053');
INSERT INTO `producto` VALUES ('51', '23', 'Pizza Familiar', '18.75', '10', null, '054');
INSERT INTO `producto` VALUES ('52', '24', 'Pizza Personal', '6.51', '10', null, '081');
INSERT INTO `producto` VALUES ('53', '24', 'Pizza Mini', '12.52', '10', null, '082');
INSERT INTO `producto` VALUES ('54', '24', 'Pizza Mediana', '14.86', '10', null, '083');
INSERT INTO `producto` VALUES ('55', '24', 'Pizza Familiar', '18.75', '10', null, '084');
INSERT INTO `producto` VALUES ('56', '25', 'Pizza Personal', '6.51', '10', null, '101');
INSERT INTO `producto` VALUES ('57', '25', 'Pizza Mini', '12.52', '10', null, '102');
INSERT INTO `producto` VALUES ('58', '25', 'Pizza Mediana', '14.86', '10', null, '103');
INSERT INTO `producto` VALUES ('59', '25', 'Pizza Familiar', '18.75', '10', null, '104');
INSERT INTO `producto` VALUES ('60', '26', 'Pizza Personal', '5.60', '10', null, '111');
INSERT INTO `producto` VALUES ('61', '26', 'Pizza Mini', '11.71', '10', null, '112');
INSERT INTO `producto` VALUES ('62', '26', 'Pizza Mediana', '14.50', '10', null, '113');
INSERT INTO `producto` VALUES ('63', '26', 'Pizza Familiar', '17.81', '10', null, '114');
INSERT INTO `producto` VALUES ('64', '27', 'Pizza Personal', '4.58', '10', null, '121');
INSERT INTO `producto` VALUES ('65', '27', 'Pizza Mini', '10.38', '10', null, '122');
INSERT INTO `producto` VALUES ('66', '27', 'Pizza Mediana', '13.23', '10', null, '123');
INSERT INTO `producto` VALUES ('67', '27', 'Pizza Familiar', '15.06', '10', null, '124');
INSERT INTO `producto` VALUES ('68', '1', 'Di Rulo', '8.14', '10', null, '400');
INSERT INTO `producto` VALUES ('69', '1', 'Verde', '5.09', '10', null, '161');
INSERT INTO `producto` VALUES ('70', '1', 'Verde especial', '6.21', '10', null, '162');
INSERT INTO `producto` VALUES ('71', '1', 'Cesar con pollo', '8.13', '10', null, '163');
INSERT INTO `producto` VALUES ('72', '1', 'Ensalada Rusa', '5.70', '10', null, '164');
INSERT INTO `producto` VALUES ('73', '1', 'Ensalada Capri', '7.13', '10', null, '165');
INSERT INTO `producto` VALUES ('74', '2', 'Empanadas Colombianas', '1.73', '10', null, '174');
INSERT INTO `producto` VALUES ('75', '2', 'Pan de ajo Di Rulo tradicional', '1.94', '10', null, '171');
INSERT INTO `producto` VALUES ('76', '2', 'Pan de ajo Di Rulo con queso La Merced', '2.24', '10', null, '172');
INSERT INTO `producto` VALUES ('77', '2', 'Porción de papas fritas', '2.85', '10', null, '181');
INSERT INTO `producto` VALUES ('78', '2', 'Nuggets Dirulo', '5.50', '10', null, '179');
INSERT INTO `producto` VALUES ('79', '2', 'Exquisito Chorizo Colombiano', '5.50', '10', null, '175');
INSERT INTO `producto` VALUES ('80', '2', 'Hamburguesa Dirulo sencilla', '6.16', '10', null, '177');
INSERT INTO `producto` VALUES ('81', '2', 'Hamburguesa Dirulo doble', '6.82', '10', null, '178');
INSERT INTO `producto` VALUES ('82', '2', 'Picadita', '9.77', '10', null, '173');
INSERT INTO `producto` VALUES ('83', '2', 'Sanduches de pernil ahumado', '3.56', '10', null, '401');
INSERT INTO `producto` VALUES ('84', '2', 'Sanduches de Jamón', '3.05', '10', null, '402');
INSERT INTO `producto` VALUES ('85', '3', 'Sopa del día', '6.21', '10', null, '403');
INSERT INTO `producto` VALUES ('86', '4', 'Crema del día', '8.13', '10', null, '404');
INSERT INTO `producto` VALUES ('87', '5', 'Alfredo', '7.38', '10', null, '151');
INSERT INTO `producto` VALUES ('88', '5', 'Carbonara', '7.38', '10', null, '153');
INSERT INTO `producto` VALUES ('89', '5', 'Bolognesa', '7.38', '10', null, '152');
INSERT INTO `producto` VALUES ('90', '5', 'Camarón', '9.36', '10', null, '154');
INSERT INTO `producto` VALUES ('91', '5', 'Al Pesto', '7.02', '10', null, '156');
INSERT INTO `producto` VALUES ('92', '5', 'Vegetariano', '7.02', '10', null, '155');
INSERT INTO `producto` VALUES ('93', '6', 'Lasaña Pollo', '7.38', '10', null, '141');
INSERT INTO `producto` VALUES ('94', '6', 'Lasaña Carne', '7.38', '10', null, '142');
INSERT INTO `producto` VALUES ('95', '6', 'Lasaña Mixta', '7.53', '10', null, '143');
INSERT INTO `producto` VALUES ('96', '6', 'Lasaña de Camarones', '9.36', '10', null, '144');
INSERT INTO `producto` VALUES ('97', '6', 'Lasaña Vegetariana', '7.02', '10', null, '145');
INSERT INTO `producto` VALUES ('98', '7', 'Canelón de Carne', '6.84', '10', null, '405');
INSERT INTO `producto` VALUES ('99', '7', 'Canelón de Pollo', '6.84', '10', null, '406');
INSERT INTO `producto` VALUES ('100', '7', 'Canelón Mixto', '7.13', '10', null, '407');
INSERT INTO `producto` VALUES ('101', '7', 'Canelón de Camarón', '9.11', '10', null, '408');
INSERT INTO `producto` VALUES ('103', '8', 'Raviolis rellenos de Carne', '7.13', '10', null, '409');
INSERT INTO `producto` VALUES ('104', '8', 'Raviolis Ricotta', '7.13', '10', null, '410');
INSERT INTO `producto` VALUES ('105', '8', 'Raviolis de Hongos', '7.13', '10', null, '411');
INSERT INTO `producto` VALUES ('106', '9', 'Fetuccini de Carne', '7.63', '10', null, '412');
INSERT INTO `producto` VALUES ('107', '9', 'Fetuccini Vegetariano', '7.63', '10', null, '413');
INSERT INTO `producto` VALUES ('108', '9', 'Fetuccini Al Pesto', '7.38', '10', null, '414');
INSERT INTO `producto` VALUES ('109', '9', 'Fetuccini Carbonara', '7.38', '10', null, '415');
INSERT INTO `producto` VALUES ('110', '10', 'Alitas BBQ', '7.02', '10', null, '176');
INSERT INTO `producto` VALUES ('111', '10', 'Costillas BBQ', '12.21', '10', null, '180');
INSERT INTO `producto` VALUES ('112', '10', 'Pernil de cerdo al horno', '8.14', '10', null, '416');
INSERT INTO `producto` VALUES ('113', '10', 'Medallones de Pollo', '10.19', '10', null, '170');
INSERT INTO `producto` VALUES ('114', '10', 'Piernitas BBQ', '8.04', '10', null, '417');
INSERT INTO `producto` VALUES ('115', '10', 'Costillas ahumadas', '17.30', '10', null, '418');
INSERT INTO `producto` VALUES ('116', '10', 'Chuletas de cerdo', '9.16', '10', null, '419');
INSERT INTO `producto` VALUES ('117', '28', 'Crepes dulce con helado', '8.30', '10', null, '185');
INSERT INTO `producto` VALUES ('118', '28', 'Crepes vegetariano', '6.41', '10', null, '186');
INSERT INTO `producto` VALUES ('119', '28', 'Crepes de casa (champiñon)', '7.13', '10', null, '187');
INSERT INTO `producto` VALUES ('120', '28', 'Crepes de Camarón', '9.36', '10', null, '188');
INSERT INTO `producto` VALUES ('121', '29', 'Durazno con Crema', '8.30', '10', null, '190');
INSERT INTO `producto` VALUES ('122', '29', 'Frutillas con Crema', '6.41', '10', null, '191');
INSERT INTO `producto` VALUES ('123', '30', 'Ensalada de Frutas', '4.48', '10', null, '193');
INSERT INTO `producto` VALUES ('124', '30', 'Ensalada de Frutas con Helado', '5.14', '10', null, '194');
INSERT INTO `producto` VALUES ('125', '30', 'Ensalada de Frutas con Queso', '5.14', '10', null, '195');
INSERT INTO `producto` VALUES ('126', '29', 'Banana Split', '6.16', '10', null, '192');
INSERT INTO `producto` VALUES ('127', '31', 'Copa 2 sabores', '4.99', '10', null, '196');
INSERT INTO `producto` VALUES ('128', '31', 'Copa 3 sabores', '5.50', '10', null, '197');
INSERT INTO `producto` VALUES ('129', '32', 'Limonada vaso', '1.27', '10', null, '208');
INSERT INTO `producto` VALUES ('130', '32', '1/2 Jarra de limonada vaso', '2.80', '10', null, '209');
INSERT INTO `producto` VALUES ('131', '32', 'Jarra de limonada', '4.68', '10', null, '210');
INSERT INTO `producto` VALUES ('132', '33', 'Té Botella', '1.28', '10', null, '420');
INSERT INTO `producto` VALUES ('133', '33', 'Té hélado vaso', '1.22', '10', null, '211');
INSERT INTO `producto` VALUES ('134', '33', '1/2 Jarra de Té', '2.95', '10', null, '212');
INSERT INTO `producto` VALUES ('135', '33', 'Jarra de Té', '4.99', '10', null, '213');
INSERT INTO `producto` VALUES ('136', '34', 'Milkshake', '2.75', '10', null, '223');
INSERT INTO `producto` VALUES ('137', '35', 'Gaseosa pequeña', '1.12', '10', null, '421');
INSERT INTO `producto` VALUES ('138', '35', 'Gaseosa 1/2 lts.', '1.43', '10', null, '422');
INSERT INTO `producto` VALUES ('139', '35', 'Gaseosa 1/2 lts. diet', '1.53', '10', null, '423');
INSERT INTO `producto` VALUES ('140', '35', 'Gaseosa 1.5 lts.', '2.39', '10', null, '424');
INSERT INTO `producto` VALUES ('141', '35', 'Gaseosa 2.5 lts.', '2.95', '10', null, '425');
INSERT INTO `producto` VALUES ('142', '36', 'Agua sin gas', '0.81', '10', null, '426');
INSERT INTO `producto` VALUES ('143', '36', 'Agua con gas', '0.92', '10', null, '427');
INSERT INTO `producto` VALUES ('144', '37', 'Cerveza pequeña', '1.83', '10', null, '428');
INSERT INTO `producto` VALUES ('145', '37', 'Cerveza grande', '2.85', '10', null, '429');
INSERT INTO `producto` VALUES ('146', '38', 'Agua Aromática', '1.12', '10', null, '230');
INSERT INTO `producto` VALUES ('147', '39', 'Café', '1.43', '10', null, '227');
INSERT INTO `producto` VALUES ('148', '39', 'Café con leche', '1.53', '10', null, '229');
INSERT INTO `producto` VALUES ('149', '39', 'Capuchino', '2.39', '10', null, '228');
INSERT INTO `producto` VALUES ('150', '40', 'Chocolate con queso', '2.95', '10', null, '231');
INSERT INTO `producto` VALUES ('151', '41', 'Vaso de jugo', '1.83', '10', null, '205');
INSERT INTO `producto` VALUES ('152', '41', '1/2 Jarra de jugo', '3.05', '10', null, '206');
INSERT INTO `producto` VALUES ('153', '41', 'Jarra de jugo', '5.09', '10', null, '207');
INSERT INTO `producto` VALUES ('154', '42', 'Batido vaso', '2.54', '10', null, '214');
INSERT INTO `producto` VALUES ('155', '42', 'Batido 1/2 Jarra', '3.56', '10', null, '215');
INSERT INTO `producto` VALUES ('156', '42', 'Batido Jarra', '6.11', '10', null, '216');
INSERT INTO `producto` VALUES ('157', '43', 'Sangría Jarra', '13.94', '10', null, '241');
INSERT INTO `producto` VALUES ('158', '43', 'Sangría 1/2 Jarra', '7.53', '10', null, '242');
INSERT INTO `producto` VALUES ('159', '43', 'Champaña', '13.84', '10', null, '430');
INSERT INTO `producto` VALUES ('160', '43', 'Vino', '23.21', '10', null, '431');
INSERT INTO `producto` VALUES ('161', '43', '1/2 Vino', '13.84', '10', null, '432');
INSERT INTO `producto` VALUES ('162', '43', '1/4 Vino', '9.16', '10', null, '433');
INSERT INTO `producto` VALUES ('163', '43', 'Descorche', '5.70', '10', null, '434');
INSERT INTO `producto` VALUES ('164', '44', 'Vaso de jugo', '2.04', '10', null, '435');
INSERT INTO `producto` VALUES ('165', '44', '1/2 Jarra de jugo', '3.56', '10', null, '436');
INSERT INTO `producto` VALUES ('166', '44', 'Jarra de jugo', '6.11', '10', null, '437');

-- ----------------------------
-- Table structure for productoingrediente
-- ----------------------------
DROP TABLE IF EXISTS `productoingrediente`;
CREATE TABLE `productoingrediente` (
  `idProductoingrediente` int(11) NOT NULL AUTO_INCREMENT,
  `idProducto` int(11) DEFAULT NULL,
  `idIngrediente` int(11) DEFAULT NULL,
  PRIMARY KEY (`idProductoingrediente`) USING BTREE,
  KEY `idProducto` (`idProducto`) USING BTREE,
  KEY `idIngrediente` (`idIngrediente`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=477 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of productoingrediente
-- ----------------------------
INSERT INTO `productoingrediente` VALUES ('1', '1', '1');
INSERT INTO `productoingrediente` VALUES ('2', '1', '2');
INSERT INTO `productoingrediente` VALUES ('3', '1', '5');
INSERT INTO `productoingrediente` VALUES ('4', '1', '8');
INSERT INTO `productoingrediente` VALUES ('5', '1', '17');
INSERT INTO `productoingrediente` VALUES ('6', '1', '20');
INSERT INTO `productoingrediente` VALUES ('7', '1', '21');
INSERT INTO `productoingrediente` VALUES ('8', '2', '1');
INSERT INTO `productoingrediente` VALUES ('9', '2', '2');
INSERT INTO `productoingrediente` VALUES ('10', '2', '5');
INSERT INTO `productoingrediente` VALUES ('11', '2', '8');
INSERT INTO `productoingrediente` VALUES ('12', '2', '17');
INSERT INTO `productoingrediente` VALUES ('13', '2', '20');
INSERT INTO `productoingrediente` VALUES ('14', '2', '21');
INSERT INTO `productoingrediente` VALUES ('15', '3', '1');
INSERT INTO `productoingrediente` VALUES ('16', '3', '2');
INSERT INTO `productoingrediente` VALUES ('17', '3', '5');
INSERT INTO `productoingrediente` VALUES ('18', '3', '8');
INSERT INTO `productoingrediente` VALUES ('19', '3', '17');
INSERT INTO `productoingrediente` VALUES ('20', '3', '20');
INSERT INTO `productoingrediente` VALUES ('21', '3', '21');
INSERT INTO `productoingrediente` VALUES ('22', '4', '1');
INSERT INTO `productoingrediente` VALUES ('23', '4', '2');
INSERT INTO `productoingrediente` VALUES ('24', '4', '5');
INSERT INTO `productoingrediente` VALUES ('25', '4', '8');
INSERT INTO `productoingrediente` VALUES ('26', '4', '17');
INSERT INTO `productoingrediente` VALUES ('27', '4', '20');
INSERT INTO `productoingrediente` VALUES ('28', '4', '21');
INSERT INTO `productoingrediente` VALUES ('29', '5', '17');
INSERT INTO `productoingrediente` VALUES ('30', '5', '18');
INSERT INTO `productoingrediente` VALUES ('31', '5', '20');
INSERT INTO `productoingrediente` VALUES ('32', '5', '22');
INSERT INTO `productoingrediente` VALUES ('33', '6', '17');
INSERT INTO `productoingrediente` VALUES ('34', '6', '18');
INSERT INTO `productoingrediente` VALUES ('35', '6', '20');
INSERT INTO `productoingrediente` VALUES ('36', '6', '22');
INSERT INTO `productoingrediente` VALUES ('37', '7', '17');
INSERT INTO `productoingrediente` VALUES ('38', '7', '18');
INSERT INTO `productoingrediente` VALUES ('39', '7', '20');
INSERT INTO `productoingrediente` VALUES ('40', '7', '22');
INSERT INTO `productoingrediente` VALUES ('41', '8', '17');
INSERT INTO `productoingrediente` VALUES ('42', '8', '18');
INSERT INTO `productoingrediente` VALUES ('43', '8', '20');
INSERT INTO `productoingrediente` VALUES ('44', '8', '22');
INSERT INTO `productoingrediente` VALUES ('45', '9', '20');
INSERT INTO `productoingrediente` VALUES ('46', '9', '1');
INSERT INTO `productoingrediente` VALUES ('47', '9', '5');
INSERT INTO `productoingrediente` VALUES ('48', '9', '23');
INSERT INTO `productoingrediente` VALUES ('49', '9', '24');
INSERT INTO `productoingrediente` VALUES ('50', '10', '20');
INSERT INTO `productoingrediente` VALUES ('51', '10', '1');
INSERT INTO `productoingrediente` VALUES ('52', '10', '5');
INSERT INTO `productoingrediente` VALUES ('53', '10', '23');
INSERT INTO `productoingrediente` VALUES ('54', '10', '24');
INSERT INTO `productoingrediente` VALUES ('55', '11', '20');
INSERT INTO `productoingrediente` VALUES ('56', '11', '1');
INSERT INTO `productoingrediente` VALUES ('57', '11', '5');
INSERT INTO `productoingrediente` VALUES ('58', '11', '23');
INSERT INTO `productoingrediente` VALUES ('59', '11', '24');
INSERT INTO `productoingrediente` VALUES ('60', '12', '20');
INSERT INTO `productoingrediente` VALUES ('61', '12', '1');
INSERT INTO `productoingrediente` VALUES ('62', '12', '5');
INSERT INTO `productoingrediente` VALUES ('63', '12', '23');
INSERT INTO `productoingrediente` VALUES ('64', '12', '24');
INSERT INTO `productoingrediente` VALUES ('65', '13', '20');
INSERT INTO `productoingrediente` VALUES ('66', '13', '25');
INSERT INTO `productoingrediente` VALUES ('67', '13', '26');
INSERT INTO `productoingrediente` VALUES ('68', '13', '27');
INSERT INTO `productoingrediente` VALUES ('69', '13', '6');
INSERT INTO `productoingrediente` VALUES ('70', '14', '20');
INSERT INTO `productoingrediente` VALUES ('71', '14', '25');
INSERT INTO `productoingrediente` VALUES ('72', '14', '26');
INSERT INTO `productoingrediente` VALUES ('73', '14', '27');
INSERT INTO `productoingrediente` VALUES ('74', '14', '6');
INSERT INTO `productoingrediente` VALUES ('75', '15', '20');
INSERT INTO `productoingrediente` VALUES ('76', '15', '25');
INSERT INTO `productoingrediente` VALUES ('77', '15', '26');
INSERT INTO `productoingrediente` VALUES ('78', '15', '27');
INSERT INTO `productoingrediente` VALUES ('79', '15', '6');
INSERT INTO `productoingrediente` VALUES ('80', '16', '1');
INSERT INTO `productoingrediente` VALUES ('81', '16', '5');
INSERT INTO `productoingrediente` VALUES ('82', '16', '18');
INSERT INTO `productoingrediente` VALUES ('83', '16', '20');
INSERT INTO `productoingrediente` VALUES ('84', '16', '21');
INSERT INTO `productoingrediente` VALUES ('85', '17', '1');
INSERT INTO `productoingrediente` VALUES ('86', '17', '5');
INSERT INTO `productoingrediente` VALUES ('87', '17', '18');
INSERT INTO `productoingrediente` VALUES ('88', '17', '20');
INSERT INTO `productoingrediente` VALUES ('89', '17', '21');
INSERT INTO `productoingrediente` VALUES ('90', '18', '1');
INSERT INTO `productoingrediente` VALUES ('91', '18', '5');
INSERT INTO `productoingrediente` VALUES ('92', '18', '18');
INSERT INTO `productoingrediente` VALUES ('93', '18', '20');
INSERT INTO `productoingrediente` VALUES ('94', '18', '21');
INSERT INTO `productoingrediente` VALUES ('95', '19', '1');
INSERT INTO `productoingrediente` VALUES ('96', '19', '5');
INSERT INTO `productoingrediente` VALUES ('97', '19', '18');
INSERT INTO `productoingrediente` VALUES ('98', '19', '20');
INSERT INTO `productoingrediente` VALUES ('99', '19', '21');
INSERT INTO `productoingrediente` VALUES ('100', '20', '1');
INSERT INTO `productoingrediente` VALUES ('101', '20', '29');
INSERT INTO `productoingrediente` VALUES ('102', '20', '30');
INSERT INTO `productoingrediente` VALUES ('103', '20', '20');
INSERT INTO `productoingrediente` VALUES ('104', '20', '21');
INSERT INTO `productoingrediente` VALUES ('105', '21', '1');
INSERT INTO `productoingrediente` VALUES ('106', '21', '29');
INSERT INTO `productoingrediente` VALUES ('107', '21', '30');
INSERT INTO `productoingrediente` VALUES ('108', '21', '20');
INSERT INTO `productoingrediente` VALUES ('109', '21', '21');
INSERT INTO `productoingrediente` VALUES ('110', '22', '1');
INSERT INTO `productoingrediente` VALUES ('111', '22', '29');
INSERT INTO `productoingrediente` VALUES ('112', '22', '30');
INSERT INTO `productoingrediente` VALUES ('113', '22', '20');
INSERT INTO `productoingrediente` VALUES ('114', '22', '21');
INSERT INTO `productoingrediente` VALUES ('115', '23', '1');
INSERT INTO `productoingrediente` VALUES ('116', '23', '29');
INSERT INTO `productoingrediente` VALUES ('117', '23', '30');
INSERT INTO `productoingrediente` VALUES ('118', '23', '20');
INSERT INTO `productoingrediente` VALUES ('119', '23', '21');
INSERT INTO `productoingrediente` VALUES ('120', '24', '1');
INSERT INTO `productoingrediente` VALUES ('121', '24', '20');
INSERT INTO `productoingrediente` VALUES ('122', '24', '29');
INSERT INTO `productoingrediente` VALUES ('123', '24', '31');
INSERT INTO `productoingrediente` VALUES ('124', '24', '32');
INSERT INTO `productoingrediente` VALUES ('125', '25', '1');
INSERT INTO `productoingrediente` VALUES ('126', '25', '20');
INSERT INTO `productoingrediente` VALUES ('127', '25', '29');
INSERT INTO `productoingrediente` VALUES ('128', '25', '31');
INSERT INTO `productoingrediente` VALUES ('129', '25', '32');
INSERT INTO `productoingrediente` VALUES ('130', '26', '1');
INSERT INTO `productoingrediente` VALUES ('131', '26', '20');
INSERT INTO `productoingrediente` VALUES ('132', '26', '29');
INSERT INTO `productoingrediente` VALUES ('133', '26', '31');
INSERT INTO `productoingrediente` VALUES ('134', '26', '32');
INSERT INTO `productoingrediente` VALUES ('135', '27', '1');
INSERT INTO `productoingrediente` VALUES ('136', '27', '20');
INSERT INTO `productoingrediente` VALUES ('137', '27', '29');
INSERT INTO `productoingrediente` VALUES ('138', '27', '31');
INSERT INTO `productoingrediente` VALUES ('139', '27', '32');
INSERT INTO `productoingrediente` VALUES ('140', '28', '33');
INSERT INTO `productoingrediente` VALUES ('141', '28', '20');
INSERT INTO `productoingrediente` VALUES ('142', '28', '15');
INSERT INTO `productoingrediente` VALUES ('143', '28', '32');
INSERT INTO `productoingrediente` VALUES ('144', '29', '33');
INSERT INTO `productoingrediente` VALUES ('145', '29', '20');
INSERT INTO `productoingrediente` VALUES ('146', '29', '15');
INSERT INTO `productoingrediente` VALUES ('147', '29', '32');
INSERT INTO `productoingrediente` VALUES ('148', '30', '33');
INSERT INTO `productoingrediente` VALUES ('149', '30', '20');
INSERT INTO `productoingrediente` VALUES ('150', '30', '15');
INSERT INTO `productoingrediente` VALUES ('151', '30', '32');
INSERT INTO `productoingrediente` VALUES ('152', '31', '33');
INSERT INTO `productoingrediente` VALUES ('153', '31', '20');
INSERT INTO `productoingrediente` VALUES ('154', '31', '15');
INSERT INTO `productoingrediente` VALUES ('155', '31', '32');
INSERT INTO `productoingrediente` VALUES ('156', '32', '26');
INSERT INTO `productoingrediente` VALUES ('157', '32', '17');
INSERT INTO `productoingrediente` VALUES ('158', '32', '2');
INSERT INTO `productoingrediente` VALUES ('159', '32', '20');
INSERT INTO `productoingrediente` VALUES ('160', '32', '32');
INSERT INTO `productoingrediente` VALUES ('161', '33', '26');
INSERT INTO `productoingrediente` VALUES ('162', '33', '17');
INSERT INTO `productoingrediente` VALUES ('163', '33', '2');
INSERT INTO `productoingrediente` VALUES ('164', '33', '20');
INSERT INTO `productoingrediente` VALUES ('165', '33', '32');
INSERT INTO `productoingrediente` VALUES ('166', '34', '26');
INSERT INTO `productoingrediente` VALUES ('167', '34', '17');
INSERT INTO `productoingrediente` VALUES ('168', '34', '2');
INSERT INTO `productoingrediente` VALUES ('169', '34', '20');
INSERT INTO `productoingrediente` VALUES ('170', '34', '32');
INSERT INTO `productoingrediente` VALUES ('171', '35', '26');
INSERT INTO `productoingrediente` VALUES ('172', '35', '17');
INSERT INTO `productoingrediente` VALUES ('173', '35', '2');
INSERT INTO `productoingrediente` VALUES ('174', '35', '20');
INSERT INTO `productoingrediente` VALUES ('175', '35', '32');
INSERT INTO `productoingrediente` VALUES ('176', '36', '15');
INSERT INTO `productoingrediente` VALUES ('177', '36', '20');
INSERT INTO `productoingrediente` VALUES ('178', '36', '32');
INSERT INTO `productoingrediente` VALUES ('179', '36', '34');
INSERT INTO `productoingrediente` VALUES ('180', '37', '15');
INSERT INTO `productoingrediente` VALUES ('181', '37', '20');
INSERT INTO `productoingrediente` VALUES ('182', '37', '32');
INSERT INTO `productoingrediente` VALUES ('183', '37', '34');
INSERT INTO `productoingrediente` VALUES ('184', '38', '15');
INSERT INTO `productoingrediente` VALUES ('185', '38', '20');
INSERT INTO `productoingrediente` VALUES ('186', '38', '32');
INSERT INTO `productoingrediente` VALUES ('187', '38', '34');
INSERT INTO `productoingrediente` VALUES ('188', '39', '15');
INSERT INTO `productoingrediente` VALUES ('189', '39', '20');
INSERT INTO `productoingrediente` VALUES ('190', '39', '32');
INSERT INTO `productoingrediente` VALUES ('191', '39', '34');
INSERT INTO `productoingrediente` VALUES ('192', '40', '2');
INSERT INTO `productoingrediente` VALUES ('193', '40', '18');
INSERT INTO `productoingrediente` VALUES ('194', '40', '20');
INSERT INTO `productoingrediente` VALUES ('195', '40', '35');
INSERT INTO `productoingrediente` VALUES ('196', '40', '32');
INSERT INTO `productoingrediente` VALUES ('197', '41', '2');
INSERT INTO `productoingrediente` VALUES ('198', '41', '18');
INSERT INTO `productoingrediente` VALUES ('199', '41', '20');
INSERT INTO `productoingrediente` VALUES ('200', '41', '35');
INSERT INTO `productoingrediente` VALUES ('201', '41', '32');
INSERT INTO `productoingrediente` VALUES ('202', '42', '2');
INSERT INTO `productoingrediente` VALUES ('203', '42', '18');
INSERT INTO `productoingrediente` VALUES ('204', '42', '20');
INSERT INTO `productoingrediente` VALUES ('205', '42', '35');
INSERT INTO `productoingrediente` VALUES ('206', '42', '32');
INSERT INTO `productoingrediente` VALUES ('207', '43', '2');
INSERT INTO `productoingrediente` VALUES ('208', '43', '18');
INSERT INTO `productoingrediente` VALUES ('209', '43', '20');
INSERT INTO `productoingrediente` VALUES ('210', '43', '35');
INSERT INTO `productoingrediente` VALUES ('211', '43', '32');
INSERT INTO `productoingrediente` VALUES ('212', '44', '2');
INSERT INTO `productoingrediente` VALUES ('213', '44', '20');
INSERT INTO `productoingrediente` VALUES ('214', '44', '32');
INSERT INTO `productoingrediente` VALUES ('215', '44', '34');
INSERT INTO `productoingrediente` VALUES ('216', '45', '2');
INSERT INTO `productoingrediente` VALUES ('217', '45', '20');
INSERT INTO `productoingrediente` VALUES ('218', '45', '32');
INSERT INTO `productoingrediente` VALUES ('219', '45', '34');
INSERT INTO `productoingrediente` VALUES ('220', '46', '2');
INSERT INTO `productoingrediente` VALUES ('221', '46', '20');
INSERT INTO `productoingrediente` VALUES ('222', '46', '32');
INSERT INTO `productoingrediente` VALUES ('223', '46', '34');
INSERT INTO `productoingrediente` VALUES ('224', '47', '2');
INSERT INTO `productoingrediente` VALUES ('225', '47', '20');
INSERT INTO `productoingrediente` VALUES ('226', '47', '32');
INSERT INTO `productoingrediente` VALUES ('227', '47', '34');
INSERT INTO `productoingrediente` VALUES ('228', '48', '2');
INSERT INTO `productoingrediente` VALUES ('229', '48', '17');
INSERT INTO `productoingrediente` VALUES ('230', '48', '18');
INSERT INTO `productoingrediente` VALUES ('231', '48', '20');
INSERT INTO `productoingrediente` VALUES ('232', '48', '32');
INSERT INTO `productoingrediente` VALUES ('233', '48', '8');
INSERT INTO `productoingrediente` VALUES ('234', '49', '2');
INSERT INTO `productoingrediente` VALUES ('235', '49', '17');
INSERT INTO `productoingrediente` VALUES ('236', '49', '18');
INSERT INTO `productoingrediente` VALUES ('237', '49', '20');
INSERT INTO `productoingrediente` VALUES ('238', '49', '32');
INSERT INTO `productoingrediente` VALUES ('239', '49', '8');
INSERT INTO `productoingrediente` VALUES ('240', '50', '2');
INSERT INTO `productoingrediente` VALUES ('241', '50', '17');
INSERT INTO `productoingrediente` VALUES ('242', '50', '18');
INSERT INTO `productoingrediente` VALUES ('243', '50', '20');
INSERT INTO `productoingrediente` VALUES ('244', '50', '32');
INSERT INTO `productoingrediente` VALUES ('245', '50', '8');
INSERT INTO `productoingrediente` VALUES ('246', '51', '2');
INSERT INTO `productoingrediente` VALUES ('247', '51', '17');
INSERT INTO `productoingrediente` VALUES ('248', '51', '18');
INSERT INTO `productoingrediente` VALUES ('249', '51', '20');
INSERT INTO `productoingrediente` VALUES ('250', '51', '32');
INSERT INTO `productoingrediente` VALUES ('251', '51', '8');
INSERT INTO `productoingrediente` VALUES ('252', '52', '20');
INSERT INTO `productoingrediente` VALUES ('253', '52', '29');
INSERT INTO `productoingrediente` VALUES ('254', '52', '30');
INSERT INTO `productoingrediente` VALUES ('255', '52', '31');
INSERT INTO `productoingrediente` VALUES ('256', '52', '32');
INSERT INTO `productoingrediente` VALUES ('257', '53', '20');
INSERT INTO `productoingrediente` VALUES ('258', '53', '29');
INSERT INTO `productoingrediente` VALUES ('259', '53', '30');
INSERT INTO `productoingrediente` VALUES ('260', '53', '31');
INSERT INTO `productoingrediente` VALUES ('261', '53', '32');
INSERT INTO `productoingrediente` VALUES ('262', '55', '20');
INSERT INTO `productoingrediente` VALUES ('263', '55', '29');
INSERT INTO `productoingrediente` VALUES ('264', '55', '30');
INSERT INTO `productoingrediente` VALUES ('265', '55', '31');
INSERT INTO `productoingrediente` VALUES ('266', '55', '32');
INSERT INTO `productoingrediente` VALUES ('267', '56', '1');
INSERT INTO `productoingrediente` VALUES ('268', '56', '20');
INSERT INTO `productoingrediente` VALUES ('269', '56', '3');
INSERT INTO `productoingrediente` VALUES ('270', '56', '32');
INSERT INTO `productoingrediente` VALUES ('271', '57', '1');
INSERT INTO `productoingrediente` VALUES ('272', '57', '20');
INSERT INTO `productoingrediente` VALUES ('273', '57', '3');
INSERT INTO `productoingrediente` VALUES ('274', '57', '32');
INSERT INTO `productoingrediente` VALUES ('275', '58', '1');
INSERT INTO `productoingrediente` VALUES ('276', '58', '20');
INSERT INTO `productoingrediente` VALUES ('277', '58', '3');
INSERT INTO `productoingrediente` VALUES ('278', '58', '32');
INSERT INTO `productoingrediente` VALUES ('279', '59', '1');
INSERT INTO `productoingrediente` VALUES ('280', '59', '20');
INSERT INTO `productoingrediente` VALUES ('281', '59', '3');
INSERT INTO `productoingrediente` VALUES ('282', '59', '32');
INSERT INTO `productoingrediente` VALUES ('291', '64', '20');
INSERT INTO `productoingrediente` VALUES ('292', '64', '32');
INSERT INTO `productoingrediente` VALUES ('293', '65', '20');
INSERT INTO `productoingrediente` VALUES ('294', '65', '32');
INSERT INTO `productoingrediente` VALUES ('295', '66', '20');
INSERT INTO `productoingrediente` VALUES ('296', '66', '32');
INSERT INTO `productoingrediente` VALUES ('297', '67', '20');
INSERT INTO `productoingrediente` VALUES ('298', '67', '32');
INSERT INTO `productoingrediente` VALUES ('299', '68', '56');
INSERT INTO `productoingrediente` VALUES ('300', '68', '14');
INSERT INTO `productoingrediente` VALUES ('301', '68', '2');
INSERT INTO `productoingrediente` VALUES ('302', '68', '15');
INSERT INTO `productoingrediente` VALUES ('303', '68', '16');
INSERT INTO `productoingrediente` VALUES ('304', '68', '18');
INSERT INTO `productoingrediente` VALUES ('305', '68', '57');
INSERT INTO `productoingrediente` VALUES ('306', '69', '56');
INSERT INTO `productoingrediente` VALUES ('307', '69', '3');
INSERT INTO `productoingrediente` VALUES ('308', '69', '17');
INSERT INTO `productoingrediente` VALUES ('309', '69', '18');
INSERT INTO `productoingrediente` VALUES ('310', '69', '57');
INSERT INTO `productoingrediente` VALUES ('311', '70', '2');
INSERT INTO `productoingrediente` VALUES ('312', '70', '1');
INSERT INTO `productoingrediente` VALUES ('313', '70', '84');
INSERT INTO `productoingrediente` VALUES ('314', '70', '56');
INSERT INTO `productoingrediente` VALUES ('315', '70', '3');
INSERT INTO `productoingrediente` VALUES ('316', '70', '57');
INSERT INTO `productoingrediente` VALUES ('317', '70', '17');
INSERT INTO `productoingrediente` VALUES ('318', '70', '18');
INSERT INTO `productoingrediente` VALUES ('319', '71', '58');
INSERT INTO `productoingrediente` VALUES ('320', '71', '59');
INSERT INTO `productoingrediente` VALUES ('321', '71', '9');
INSERT INTO `productoingrediente` VALUES ('322', '71', '56');
INSERT INTO `productoingrediente` VALUES ('323', '71', '60');
INSERT INTO `productoingrediente` VALUES ('324', '72', '61');
INSERT INTO `productoingrediente` VALUES ('325', '72', '62');
INSERT INTO `productoingrediente` VALUES ('326', '72', '63');
INSERT INTO `productoingrediente` VALUES ('327', '72', '64');
INSERT INTO `productoingrediente` VALUES ('328', '72', '65');
INSERT INTO `productoingrediente` VALUES ('329', '73', '56');
INSERT INTO `productoingrediente` VALUES ('330', '73', '18');
INSERT INTO `productoingrediente` VALUES ('331', '73', '59');
INSERT INTO `productoingrediente` VALUES ('332', '73', '44');
INSERT INTO `productoingrediente` VALUES ('333', '73', '66');
INSERT INTO `productoingrediente` VALUES ('334', '74', '62');
INSERT INTO `productoingrediente` VALUES ('335', '74', '6');
INSERT INTO `productoingrediente` VALUES ('336', '78', '68');
INSERT INTO `productoingrediente` VALUES ('337', '80', '68');
INSERT INTO `productoingrediente` VALUES ('338', '81', '68');
INSERT INTO `productoingrediente` VALUES ('339', '83', '56');
INSERT INTO `productoingrediente` VALUES ('340', '70', '3');
INSERT INTO `productoingrediente` VALUES ('341', '83', '69');
INSERT INTO `productoingrediente` VALUES ('342', '84', '56');
INSERT INTO `productoingrediente` VALUES ('343', '84', '1');
INSERT INTO `productoingrediente` VALUES ('344', '84', '3');
INSERT INTO `productoingrediente` VALUES ('345', '84', '39');
INSERT INTO `productoingrediente` VALUES ('346', '84', '87');
INSERT INTO `productoingrediente` VALUES ('347', '84', '88');
INSERT INTO `productoingrediente` VALUES ('348', '87', '56');
INSERT INTO `productoingrediente` VALUES ('349', '87', '1');
INSERT INTO `productoingrediente` VALUES ('350', '87', '2');
INSERT INTO `productoingrediente` VALUES ('351', '87', '3');
INSERT INTO `productoingrediente` VALUES ('352', '87', '39');
INSERT INTO `productoingrediente` VALUES ('353', '87', '87');
INSERT INTO `productoingrediente` VALUES ('354', '87', '10');
INSERT INTO `productoingrediente` VALUES ('355', '88', '37');
INSERT INTO `productoingrediente` VALUES ('356', '88', '3');
INSERT INTO `productoingrediente` VALUES ('357', '88', '4');
INSERT INTO `productoingrediente` VALUES ('358', '88', '10');
INSERT INTO `productoingrediente` VALUES ('359', '89', '37');
INSERT INTO `productoingrediente` VALUES ('360', '89', '6');
INSERT INTO `productoingrediente` VALUES ('361', '89', '5');
INSERT INTO `productoingrediente` VALUES ('362', '89', '3');
INSERT INTO `productoingrediente` VALUES ('363', '89', '4');
INSERT INTO `productoingrediente` VALUES ('364', '89', '10');
INSERT INTO `productoingrediente` VALUES ('365', '90', '39');
INSERT INTO `productoingrediente` VALUES ('366', '90', '40');
INSERT INTO `productoingrediente` VALUES ('367', '90', '3');
INSERT INTO `productoingrediente` VALUES ('368', '90', '17');
INSERT INTO `productoingrediente` VALUES ('369', '90', '10');
INSERT INTO `productoingrediente` VALUES ('370', '91', '11');
INSERT INTO `productoingrediente` VALUES ('371', '91', '12');
INSERT INTO `productoingrediente` VALUES ('372', '91', '3');
INSERT INTO `productoingrediente` VALUES ('373', '91', '10');
INSERT INTO `productoingrediente` VALUES ('374', '92', '39');
INSERT INTO `productoingrediente` VALUES ('375', '92', '2');
INSERT INTO `productoingrediente` VALUES ('376', '92', '18');
INSERT INTO `productoingrediente` VALUES ('377', '92', '3');
INSERT INTO `productoingrediente` VALUES ('378', '92', '17');
INSERT INTO `productoingrediente` VALUES ('379', '92', '10');
INSERT INTO `productoingrediente` VALUES ('380', '93', '41');
INSERT INTO `productoingrediente` VALUES ('381', '93', '42');
INSERT INTO `productoingrediente` VALUES ('382', '93', '43');
INSERT INTO `productoingrediente` VALUES ('383', '93', '44');
INSERT INTO `productoingrediente` VALUES ('384', '93', '9');
INSERT INTO `productoingrediente` VALUES ('385', '93', '10');
INSERT INTO `productoingrediente` VALUES ('386', '94', '41');
INSERT INTO `productoingrediente` VALUES ('387', '94', '89');
INSERT INTO `productoingrediente` VALUES ('388', '94', '43');
INSERT INTO `productoingrediente` VALUES ('389', '94', '44');
INSERT INTO `productoingrediente` VALUES ('390', '94', '9');
INSERT INTO `productoingrediente` VALUES ('391', '94', '10');
INSERT INTO `productoingrediente` VALUES ('392', '95', '41');
INSERT INTO `productoingrediente` VALUES ('393', '95', '42');
INSERT INTO `productoingrediente` VALUES ('394', '95', '89');
INSERT INTO `productoingrediente` VALUES ('395', '95', '43');
INSERT INTO `productoingrediente` VALUES ('396', '95', '44');
INSERT INTO `productoingrediente` VALUES ('397', '95', '9');
INSERT INTO `productoingrediente` VALUES ('398', '95', '10');
INSERT INTO `productoingrediente` VALUES ('399', '96', '41');
INSERT INTO `productoingrediente` VALUES ('400', '96', '8');
INSERT INTO `productoingrediente` VALUES ('401', '96', '90');
INSERT INTO `productoingrediente` VALUES ('402', '96', '43');
INSERT INTO `productoingrediente` VALUES ('403', '96', '44');
INSERT INTO `productoingrediente` VALUES ('404', '96', '9');
INSERT INTO `productoingrediente` VALUES ('405', '96', '10');
INSERT INTO `productoingrediente` VALUES ('406', '97', '41');
INSERT INTO `productoingrediente` VALUES ('407', '97', '8');
INSERT INTO `productoingrediente` VALUES ('408', '97', '2');
INSERT INTO `productoingrediente` VALUES ('409', '97', '18');
INSERT INTO `productoingrediente` VALUES ('410', '97', '17');
INSERT INTO `productoingrediente` VALUES ('411', '97', '91');
INSERT INTO `productoingrediente` VALUES ('412', '97', '41');
INSERT INTO `productoingrediente` VALUES ('413', '97', '44');
INSERT INTO `productoingrediente` VALUES ('414', '97', '10');
INSERT INTO `productoingrediente` VALUES ('415', '98', '45');
INSERT INTO `productoingrediente` VALUES ('416', '99', '92');
INSERT INTO `productoingrediente` VALUES ('417', '100', '45');
INSERT INTO `productoingrediente` VALUES ('418', '100', '92');
INSERT INTO `productoingrediente` VALUES ('419', '101', '47');
INSERT INTO `productoingrediente` VALUES ('420', '103', '48');
INSERT INTO `productoingrediente` VALUES ('421', '103', '49');
INSERT INTO `productoingrediente` VALUES ('422', '103', '10');
INSERT INTO `productoingrediente` VALUES ('423', '104', '50');
INSERT INTO `productoingrediente` VALUES ('424', '104', '51');
INSERT INTO `productoingrediente` VALUES ('425', '104', '10');
INSERT INTO `productoingrediente` VALUES ('426', '105', '52');
INSERT INTO `productoingrediente` VALUES ('427', '105', '52');
INSERT INTO `productoingrediente` VALUES ('428', '105', '10');
INSERT INTO `productoingrediente` VALUES ('429', '106', '54');
INSERT INTO `productoingrediente` VALUES ('430', '107', '2');
INSERT INTO `productoingrediente` VALUES ('431', '107', '18');
INSERT INTO `productoingrediente` VALUES ('432', '107', '17');
INSERT INTO `productoingrediente` VALUES ('433', '107', '8');
INSERT INTO `productoingrediente` VALUES ('434', '107', '48');
INSERT INTO `productoingrediente` VALUES ('435', '107', '49');
INSERT INTO `productoingrediente` VALUES ('436', '108', '11');
INSERT INTO `productoingrediente` VALUES ('437', '108', '12');
INSERT INTO `productoingrediente` VALUES ('438', '109', '39');
INSERT INTO `productoingrediente` VALUES ('439', '109', '33');
INSERT INTO `productoingrediente` VALUES ('440', '117', '70');
INSERT INTO `productoingrediente` VALUES ('441', '117', '71');
INSERT INTO `productoingrediente` VALUES ('442', '117', '72');
INSERT INTO `productoingrediente` VALUES ('443', '118', '8');
INSERT INTO `productoingrediente` VALUES ('444', '118', '17');
INSERT INTO `productoingrediente` VALUES ('445', '118', '2');
INSERT INTO `productoingrediente` VALUES ('446', '118', '18');
INSERT INTO `productoingrediente` VALUES ('447', '118', '73');
INSERT INTO `productoingrediente` VALUES ('448', '119', '74');
INSERT INTO `productoingrediente` VALUES ('449', '119', '73');
INSERT INTO `productoingrediente` VALUES ('450', '120', '75');
INSERT INTO `productoingrediente` VALUES ('451', '120', '76');
INSERT INTO `productoingrediente` VALUES ('452', '120', '73');
INSERT INTO `productoingrediente` VALUES ('453', '123', '93');
INSERT INTO `productoingrediente` VALUES ('454', '123', '94');
INSERT INTO `productoingrediente` VALUES ('455', '123', '95');
INSERT INTO `productoingrediente` VALUES ('456', '123', '96');
INSERT INTO `productoingrediente` VALUES ('457', '123', '97');
INSERT INTO `productoingrediente` VALUES ('458', '123', '98');
INSERT INTO `productoingrediente` VALUES ('459', '123', '99');
INSERT INTO `productoingrediente` VALUES ('460', '110', '68');
INSERT INTO `productoingrediente` VALUES ('461', '110', '106');
INSERT INTO `productoingrediente` VALUES ('462', '111', '68');
INSERT INTO `productoingrediente` VALUES ('463', '111', '107');
INSERT INTO `productoingrediente` VALUES ('464', '112', '68');
INSERT INTO `productoingrediente` VALUES ('465', '112', '108');
INSERT INTO `productoingrediente` VALUES ('466', '112', '3');
INSERT INTO `productoingrediente` VALUES ('467', '112', '102');
INSERT INTO `productoingrediente` VALUES ('468', '113', '103');
INSERT INTO `productoingrediente` VALUES ('469', '114', '68');
INSERT INTO `productoingrediente` VALUES ('470', '114', '107');
INSERT INTO `productoingrediente` VALUES ('471', '115', '68');
INSERT INTO `productoingrediente` VALUES ('472', '115', '106');
INSERT INTO `productoingrediente` VALUES ('473', '115', '104');
INSERT INTO `productoingrediente` VALUES ('474', '116', '106');
INSERT INTO `productoingrediente` VALUES ('475', '116', '105');
INSERT INTO `productoingrediente` VALUES ('476', '116', '68');

-- ----------------------------
-- Table structure for repartidores
-- ----------------------------
DROP TABLE IF EXISTS `repartidores`;
CREATE TABLE `repartidores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of repartidores
-- ----------------------------

-- ----------------------------
-- Table structure for submenu
-- ----------------------------
DROP TABLE IF EXISTS `submenu`;
CREATE TABLE `submenu` (
  `idSubmenu` int(11) NOT NULL AUTO_INCREMENT,
  `idMenu` int(11) DEFAULT NULL,
  `nombreSubmenu` varchar(100) DEFAULT NULL,
  `estadoSubmenu` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idSubmenu`) USING BTREE,
  KEY `idMenu` (`idMenu`) USING BTREE,
  CONSTRAINT `submenu_ibfk_1` FOREIGN KEY (`idMenu`) REFERENCES `menu` (`idMenu`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of submenu
-- ----------------------------
INSERT INTO `submenu` VALUES ('1', '1', 'Ensaladas', 'ACTIVO');
INSERT INTO `submenu` VALUES ('2', '1', 'Bocaditos', 'ACTIVO');
INSERT INTO `submenu` VALUES ('3', '1', 'Sopa del día', 'ACTIVO');
INSERT INTO `submenu` VALUES ('4', '1', 'Crema del día', 'ACTIVO');
INSERT INTO `submenu` VALUES ('5', '2', 'Espagueti', 'ACTIVO');
INSERT INTO `submenu` VALUES ('6', '2', 'Lasañas', 'ACTIVO');
INSERT INTO `submenu` VALUES ('7', '2', 'Canelones', 'ACTIVO');
INSERT INTO `submenu` VALUES ('8', '2', 'Raviolis', 'ACTIVO');
INSERT INTO `submenu` VALUES ('9', '2', 'Fetuccini', 'ACTIVO');
INSERT INTO `submenu` VALUES ('10', '3', 'Carnes', 'ACTIVO');
INSERT INTO `submenu` VALUES ('11', '4', 'Di Rulo', 'ACTIVO');
INSERT INTO `submenu` VALUES ('12', '4', 'Camarón', 'ACTIVO');
INSERT INTO `submenu` VALUES ('13', '4', 'Carnes', 'ACTIVO');
INSERT INTO `submenu` VALUES ('14', '4', '4 Estaciones', 'ACTIVO');
INSERT INTO `submenu` VALUES ('15', '4', 'Casera', 'ACTIVO');
INSERT INTO `submenu` VALUES ('16', '4', 'Hawaiana', 'ACTIVO');
INSERT INTO `submenu` VALUES ('17', '4', 'Tropical', 'ACTIVO');
INSERT INTO `submenu` VALUES ('18', '4', 'Tradicional', 'ACTIVO');
INSERT INTO `submenu` VALUES ('19', '4', 'Chorizo', 'ACTIVO');
INSERT INTO `submenu` VALUES ('20', '4', 'Campestre', 'ACTIVO');
INSERT INTO `submenu` VALUES ('21', '4', 'Tocino', 'ACTIVO');
INSERT INTO `submenu` VALUES ('22', '4', 'Longaniza', 'ACTIVO');
INSERT INTO `submenu` VALUES ('23', '4', 'Vegetariana', 'ACTIVO');
INSERT INTO `submenu` VALUES ('24', '4', 'Frutas', 'ACTIVO');
INSERT INTO `submenu` VALUES ('25', '4', 'Napolitana', 'ACTIVO');
INSERT INTO `submenu` VALUES ('26', '4', '2 Ingredientes', 'ACTIVO');
INSERT INTO `submenu` VALUES ('27', '4', 'Básica', 'ACTIVO');
INSERT INTO `submenu` VALUES ('28', '5', 'Crepes', 'ACTIVO');
INSERT INTO `submenu` VALUES ('29', '5', 'Postres', 'ACTIVO');
INSERT INTO `submenu` VALUES ('30', '5', 'Ensaladas de Frutas', 'ACTIVO');
INSERT INTO `submenu` VALUES ('31', '5', 'Copa', 'ACTIVO');
INSERT INTO `submenu` VALUES ('32', '6', 'Limonada', 'ACTIVO');
INSERT INTO `submenu` VALUES ('33', '6', 'Té', 'ACTIVO');
INSERT INTO `submenu` VALUES ('34', '6', 'Milkshake', 'ACTIVO');
INSERT INTO `submenu` VALUES ('35', '6', 'Gaseosa', 'ACTIVO');
INSERT INTO `submenu` VALUES ('36', '6', 'Agua', 'ACTIVO');
INSERT INTO `submenu` VALUES ('37', '6', 'Cerveza', 'ACTIVO');
INSERT INTO `submenu` VALUES ('38', '6', 'Agua Aromática', 'ACTIVO');
INSERT INTO `submenu` VALUES ('39', '6', 'Café', 'ACTIVO');
INSERT INTO `submenu` VALUES ('40', '6', 'Chocolate', 'ACTIVO');
INSERT INTO `submenu` VALUES ('41', '6', 'Jugo', 'ACTIVO');
INSERT INTO `submenu` VALUES ('42', '6', 'Batido', 'ACTIVO');
INSERT INTO `submenu` VALUES ('43', '6', 'Vino', 'ACTIVO');
INSERT INTO `submenu` VALUES ('44', '6', 'Jugo de Naranja', 'ACTIVO');

-- ----------------------------
-- Table structure for transactions
-- ----------------------------
DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions` (
  `idTrans` int(255) NOT NULL AUTO_INCREMENT,
  `userTrans` varchar(255) DEFAULT NULL,
  `codIngTrans` varchar(255) DEFAULT NULL,
  `dateTrans` varchar(255) DEFAULT NULL,
  `prevStockTrans` varchar(255) DEFAULT NULL,
  `valTrans` varchar(255) DEFAULT NULL,
  `typeTrans` varchar(255) DEFAULT NULL,
  `sucursalTrans` varchar(255) DEFAULT NULL,
  `nomIngTrans` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idTrans`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of transactions
-- ----------------------------
INSERT INTO `transactions` VALUES ('1', 'frank', '00001', '2018-04-28 04:01:45', '50', '2', 'AGREGAR', 'Cotocollao', 'Jamon');
INSERT INTO `transactions` VALUES ('2', 'frank', '00001', '2018-04-28 04:02:16', '52', '2', 'AGREGAR', 'Cotocollao', 'Jamon');
INSERT INTO `transactions` VALUES ('3', 'frank', '00002', '2018-04-28 04:02:16', '83', '3', 'EXTRAER', 'Cotocollao', 'Jamon');
INSERT INTO `transactions` VALUES ('4', 'frank', '00001', '2018-04-28 04:06:21', '58', '2', 'AGREGAR', 'Cotocollao', 'Jamón');
INSERT INTO `transactions` VALUES ('5', 'frank', '00002', '2018-04-28 04:06:21', '80', '3', 'EXTRAER', 'Cotocollao', 'Champiñoness');
INSERT INTO `transactions` VALUES ('6', 'frank', '00001', '2018-04-28 04:06:44', '60', '2', 'AGREGAR', 'Cotocollao', 'Jamón');
INSERT INTO `transactions` VALUES ('7', 'frank', '00003', '2018-04-28 04:06:45', '26', '4', 'AGREGAR', 'Cotocollao', 'Tomate');
INSERT INTO `transactions` VALUES ('8', 'frank', '00005', '2018-04-28 04:06:45', '73', '6', 'AGREGAR', 'Cotocollao', 'Pollo');
INSERT INTO `transactions` VALUES ('9', 'frank', '00007', '2018-04-28 04:06:45', '44', '8', 'AGREGAR', 'Cotocollao', 'Aceitunas');
INSERT INTO `transactions` VALUES ('10', 'frank', '00002', '2018-04-28 04:06:45', '77', '3', 'EXTRAER', 'Cotocollao', 'Champiñoness');
INSERT INTO `transactions` VALUES ('11', 'frank', '00004', '2018-04-28 04:06:46', '39', '5', 'EXTRAER', 'Cotocollao', 'Perejil');
INSERT INTO `transactions` VALUES ('12', 'frank', '00006', '2018-04-28 04:06:46', '75', '7', 'EXTRAER', 'Cotocollao', 'Carne');
INSERT INTO `transactions` VALUES ('13', 'frank', '00008', '2018-04-28 04:06:46', '40', '9', 'EXTRAER', 'Cotocollao', 'Parmesano');
INSERT INTO `transactions` VALUES ('14', 'frank', '00001', '2018-04-28 04:36:16', '62', '12', 'AGREGAR', 'Cotocollao', 'Jamón');
INSERT INTO `transactions` VALUES ('15', 'frank', '00003', '2018-04-28 04:36:16', '30', '32', 'AGREGAR', 'Cotocollao', 'Tomate');
INSERT INTO `transactions` VALUES ('16', 'frank', '00005', '2018-04-28 04:36:16', '79', '21', 'AGREGAR', 'Cotocollao', 'Pollo');
INSERT INTO `transactions` VALUES ('17', 'frank', '00032', '2018-04-28 04:36:16', '12', '21', 'AGREGAR', 'Cotocollao', 'Salsa de tocino');
INSERT INTO `transactions` VALUES ('18', 'frank', '00034', '2018-04-28 04:36:17', '48', '32', 'AGREGAR', 'Cotocollao', 'Salsa blanca');
INSERT INTO `transactions` VALUES ('19', 'frank', '00036', '2018-04-28 04:36:17', '40', '12', 'AGREGAR', 'Cotocollao', 'Pasta de lasaña');
INSERT INTO `transactions` VALUES ('20', 'frank', '00038', '2018-04-28 04:36:17', '73', '12', 'AGREGAR', 'Cotocollao', 'Pasta de tomate');
INSERT INTO `transactions` VALUES ('21', 'frank', '00055', '2018-04-28 04:36:17', '84', '12', 'AGREGAR', 'Cotocollao', 'Choclo');
INSERT INTO `transactions` VALUES ('22', 'frank', '00057', '2018-04-28 04:36:17', '68', '12', 'AGREGAR', 'Cotocollao', 'Alberja');
INSERT INTO `transactions` VALUES ('23', 'frank', '00059', '2018-04-28 04:36:18', '27', '12', 'AGREGAR', 'Cotocollao', 'Mayonesa');
INSERT INTO `transactions` VALUES ('24', 'frank', '00002', '2018-04-28 04:36:18', '74', '23', 'EXTRAER', 'Cotocollao', 'Champiñoness');
INSERT INTO `transactions` VALUES ('25', 'frank', '00004', '2018-04-28 04:36:18', '34', '43', 'EXTRAER', 'Cotocollao', 'Perejil');
INSERT INTO `transactions` VALUES ('26', 'frank', '00006', '2018-04-28 04:36:18', '68', '12', 'EXTRAER', 'Cotocollao', 'Carne');
INSERT INTO `transactions` VALUES ('27', 'frank', '00033', '2018-04-28 04:36:18', '57', '23', 'EXTRAER', 'Cotocollao', 'Pasta de tomate');
INSERT INTO `transactions` VALUES ('28', 'frank', '00035', '2018-04-28 04:36:19', '9', '12', 'EXTRAER', 'Cotocollao', 'Camarón adobado con cebolla');
INSERT INTO `transactions` VALUES ('29', 'frank', '00037', '2018-04-28 04:36:19', '15', '12', 'EXTRAER', 'Cotocollao', 'Pollo en salsa bechamel');
INSERT INTO `transactions` VALUES ('30', 'frank', '00056', '2018-04-28 04:36:19', '31', '12', 'EXTRAER', 'Cotocollao', 'Papa');
INSERT INTO `transactions` VALUES ('31', 'frank', '00058', '2018-04-28 04:36:19', '53', '12', 'EXTRAER', 'Cotocollao', 'Zanahoria');
INSERT INTO `transactions` VALUES ('32', 'frank', '00060', '2018-04-28 04:36:19', '88', '12', 'EXTRAER', 'Cotocollao', 'Rollitos de mortadela');
INSERT INTO `transactions` VALUES ('33', 'frank', '00001', '2018-04-28 04:37:01', '79', '50', 'EXTRAER', 'Cotocollao', 'Jamón');
INSERT INTO `transactions` VALUES ('34', 'frank', '00001', '2018-04-28 04:37:40', '29', '12', 'EXTRAER', 'Cotocollao', 'Jamón');
INSERT INTO `transactions` VALUES ('35', 'frank', '00001', '2018-04-28 04:39:50', '74', '2', 'EXTRAER', '1', 'Jamón');
INSERT INTO `transactions` VALUES ('36', 'frank', '00002', '2018-04-28 04:39:50', '51', '2', 'EXTRAER', '1', 'Champiñoness');
INSERT INTO `transactions` VALUES ('37', 'frank', '00003', '2018-04-28 04:39:51', '62', '3', 'EXTRAER', '1', 'Tomate');
INSERT INTO `transactions` VALUES ('38', 'frank', '00001', '2018-04-28 04:41:52', '17', '2', 'AGREGAR', '', 'Jamón');
INSERT INTO `transactions` VALUES ('39', 'frank', '00003', '2018-04-28 04:41:52', '7', '4', 'AGREGAR', '', 'Tomate');
INSERT INTO `transactions` VALUES ('40', 'frank', '00002', '2018-04-28 04:41:53', '63', '3', 'EXTRAER', '', 'Champiñoness');
INSERT INTO `transactions` VALUES ('41', 'frank', '00001', '2018-04-28 04:42:30', '79', '2', 'AGREGAR', 'Villaflora', 'Jamón');
INSERT INTO `transactions` VALUES ('42', 'frank', '00003', '2018-04-28 04:42:31', '79', '4', 'AGREGAR', 'Villaflora', 'Tomate');
INSERT INTO `transactions` VALUES ('43', 'frank', '00002', '2018-04-28 04:42:31', '30', '3', 'EXTRAER', 'Villaflora', 'Champiñoness');
INSERT INTO `transactions` VALUES ('44', 'frank', '00001', '2018-04-28 04:45:58', '72', '10', 'AGREGAR', 'Quito Sur', 'Jamón');
INSERT INTO `transactions` VALUES ('45', 'frank', '00001', '2018-04-28 04:46:12', '82', '10', 'EXTRAER', 'Cotocollao', 'Jamón');
INSERT INTO `transactions` VALUES ('46', 'frank', '00072', '2018-04-28 04:46:46', '68', '10', 'AGREGAR', 'Quito Sur', 'Pan Dirulo');
INSERT INTO `transactions` VALUES ('47', 'frank', '00088', '2018-04-28 04:46:46', '14', '20', 'AGREGAR', 'Quito Sur', 'Brocoli');
INSERT INTO `transactions` VALUES ('48', 'frank', '00001', '2018-04-28 04:47:03', '72', '10', 'AGREGAR', 'Quito Sur', 'Jamón');
INSERT INTO `transactions` VALUES ('49', 'frank', '00001', '2018-04-28 04:47:27', '19', '10', 'AGREGAR', 'Cotocollao', 'Jamón');
INSERT INTO `transactions` VALUES ('50', 'frank', '00001', '2018-04-28 04:50:16', '82', '10', 'AGREGAR', 'Quito Sur', 'Jamón');
INSERT INTO `transactions` VALUES ('51', 'frank', '00003', '2018-04-28 04:50:17', '59', '10', 'AGREGAR', 'Quito Sur', 'Tomate');
INSERT INTO `transactions` VALUES ('52', 'frank', '00005', '2018-04-28 04:50:17', '100', '10', 'AGREGAR', 'Quito Sur', 'Pollo');
INSERT INTO `transactions` VALUES ('53', 'frank', '00041', '2018-04-28 04:50:17', '68', '', 'AGREGAR', 'Quito Sur', 'Rollitos de pasta relleno de salsa de tomate, camarón y queso La Merced');
INSERT INTO `transactions` VALUES ('54', 'frank', '00043', '2018-04-28 04:50:17', '25', '', 'AGREGAR', 'Quito Sur', 'Queso parmesano La Merced');
INSERT INTO `transactions` VALUES ('55', 'frank', '00002', '2018-04-28 04:50:17', '49', '10', 'EXTRAER', 'Cotocollao', 'Champiñoness');
INSERT INTO `transactions` VALUES ('56', 'frank', '00004', '2018-04-28 04:50:18', '-9', '10', 'EXTRAER', 'Cotocollao', 'Perejil');
INSERT INTO `transactions` VALUES ('57', 'frank', '00042', '2018-04-28 04:50:18', '36', '', 'EXTRAER', 'Cotocollao', 'Salsa napolitana');
INSERT INTO `transactions` VALUES ('58', 'frank', '00044', '2018-04-28 04:50:18', '47', '', 'EXTRAER', 'Cotocollao', 'Relleno de queso ricota');
INSERT INTO `transactions` VALUES ('59', 'burton', '00004', '2018-05-30 18:01:53', '-19', '30', 'AGREGAR', 'Quito Sur', 'Perejil');
INSERT INTO `transactions` VALUES ('60', 'burton', '00001', '2018-07-12 22:38:55', '92', '4', 'AGREGAR', 'Quito Sur', 'Jamón');
INSERT INTO `transactions` VALUES ('61', 'Burton', '00001', '2019-01-27 05:51:10', '96', '', 'EXTRAER', 'Cotocollao', 'Jamón');
INSERT INTO `transactions` VALUES ('62', 'Burton', '00001', '2019-01-27 05:51:20', '96', '', 'EXTRAER', 'Cotocollao', 'Jamón');
INSERT INTO `transactions` VALUES ('63', 'Burton', '00001', '2019-01-27 05:51:56', '96', '5', 'AGREGAR', 'Quito Sur', 'Jamón');
INSERT INTO `transactions` VALUES ('64', 'Burton', '00001', '2019-01-27 05:52:17', '101', '26', 'EXTRAER', 'Cotocollao', 'Jamón');
INSERT INTO `transactions` VALUES ('65', 'Burton', '00001', '2019-03-23 05:22:15', '75', '20', 'EXTRAER', 'Cotocollao', 'Jamón');

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `passwordUsuario` varchar(100) DEFAULT NULL,
  `nombreUsuario` varchar(100) DEFAULT NULL,
  `idPerfil` int(11) DEFAULT NULL,
  `cedulaUsuario` varchar(255) DEFAULT NULL,
  `fechaingresoUsuario` varchar(255) DEFAULT NULL,
  `nombresUsuario` varchar(255) DEFAULT NULL,
  `apellidosUsuario` varchar(255) DEFAULT NULL,
  `idEstablecimiento` varchar(255) DEFAULT NULL,
  `statusUsuario` varchar(255) DEFAULT NULL,
  `temaUsuario` varchar(255) DEFAULT NULL,
  `lastLogin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`) USING BTREE,
  KEY `idPerfil` (`idPerfil`) USING BTREE,
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idPerfil`) REFERENCES `perfil` (`idPerfil`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES ('1', 'burton', 'Burton', '7', '154789', '2017-02-01', 'Frank', 'Cargua', '2', '1', 'green', null);
INSERT INTO `usuario` VALUES ('2', 'Frank1234@', 'frank', '7', '1547896548', '2017-02-01', 'Burton', 'Burton', '3', '1', 'dark', null);
INSERT INTO `usuario` VALUES ('3', 'burton', 'burton', '7', '1547896548', '2017-02-01', 'Burton', 'Burton', '3', '1', 'red', null);
INSERT INTO `usuario` VALUES ('4', 'Luist1234@', 'luist', '1', '1547896548', '2017-02-01', 'Burton', 'Burton', '2', '1', 'dark', null);
INSERT INTO `usuario` VALUES ('6', 'Suschi1234@', 'suschi', '3', '1312855537', '2017-02-01', 'SUSANA ROCIO', 'CHINGA PONCE', '1', '1', 'dark', null);
INSERT INTO `usuario` VALUES ('7', 'Joscor1234@', 'joscor', '5', '0705670123', '2015-01-19', 'JOSE LUIS', 'CORDOVA CALERO', '1', '1', 'dark', null);
INSERT INTO `usuario` VALUES ('8', 'Marflo1234@', 'marflo', '3', '0502799356', '2017-01-30', 'MARINA VERONICA', 'FLORES PUCUJI', '3', '1', 'dark', null);
INSERT INTO `usuario` VALUES ('9', 'Adrher1234@', 'adrher', '2', '6102426159', '2016-07-18', 'ADRIANA MARIA ', 'HERNANDEZ GOZALES', '3', '1', 'dark', null);
INSERT INTO `usuario` VALUES ('10', 'Jefgao1234@', 'jefgao', '2', '1104107592', '2016-09-01', 'JEFFERSON DAVID', 'GAONA ALVAREZ', null, '1', 'dark', null);
INSERT INTO `usuario` VALUES ('11', 'Oscgri1234@', 'oscgri', '2', '6102425870', '2016-07-18', 'OSCAR JULIAN  ', 'GRISALES SANCHEZ ', null, '1', 'dark', null);
INSERT INTO `usuario` VALUES ('13', 'Pathor1234@', 'pathor', '3', '1727011940', '2011-11-01', 'PATRICIA VIVIANA', 'HORTA SANGACHA', '1', '1', 'dark', null);
INSERT INTO `usuario` VALUES ('14', 'Luzmar1234@', 'luzmar', '6', '1709472102', '2007-02-01', 'LUZ MERY', 'MARTINEZ RODRIGUEZ', '1', '1', 'dark', null);
INSERT INTO `usuario` VALUES ('15', 'Milpuc1234@', 'milpuc', '4', '1720722576', '2017-04-01', 'MILTON IVAN', 'PUCHA DIAZ', '3', '1', 'dark', null);
INSERT INTO `usuario` VALUES ('17', 'Marsan1234@', 'marsan', '2', '1725848913', '2011-04-11', 'MARIA ALTAGRACIA', 'SANTANA PIO', '2', '1', 'dark', null);
INSERT INTO `usuario` VALUES ('18', 'Cartor1234@', 'cartor', '1', '1712918406', '2009-02-1', 'CARLOS ALBERTO', 'TORRES MARTINEZ', '3', '1', 'dark', null);
INSERT INTO `usuario` VALUES ('19', 'Luitor1234@', 'luitor', '1', '1714444013', '2011-07-01', 'LUIS ALFONSO', 'TORRES MARTINEZ', '1', '1', 'dark', null);
INSERT INTO `usuario` VALUES ('20', 'Martor1234@', 'martor', '1', '1716855901', '2009-02-01', 'MARCELA LILIANA', 'TORRES MARTINEZ ', null, '1', 'dark', null);
INSERT INTO `usuario` VALUES ('22', 'Martub1234@', 'martub', '2', '1721183968', '2009-01-30', 'MARIA CATALINA', 'TUBAY BRAVO', '2', '1', 'dark', null);
INSERT INTO `usuario` VALUES ('23', 'Leiver1234@', 'leiver', '3', '1315673788', '2016-05-05', 'LEIDY IRENE', 'VERA LUZARDO', '2', '1', 'dark', null);
INSERT INTO `usuario` VALUES ('24', 'Sulvin1234@', 'sulvin', '2', '1709042616', '2012-04-12', 'SULMIRA FLORIDALBA', 'VINUEZA ALCIVAR', null, '1', 'dark', null);
INSERT INTO `usuario` VALUES ('25', 'Andzuñ1234@', 'andzuñ', '2', '0925236770', '2016-06-01', 'ANDREA CAROLINA ', 'ZUÑIGA SANCHEZ ', null, '1', 'dark', null);
INSERT INTO `usuario` VALUES ('26', 'Galzam1234@', 'galzam', '4', '0705422517', '2013-05-01', 'GALO JULIAN', 'ZAMORA CARDONA', '3', '1', 'dark', null);
INSERT INTO `usuario` VALUES ('27', 'Floavi1234@', 'floavi', '2', '2017', '2017-02-13', 'FLORA ANGELICA', 'AVILA JIMENEZ ', '2', '1', 'dark', null);
INSERT INTO `usuario` VALUES ('28', 'Pauqui1234@', 'pauqui', '4', '2017', '2017-02-01', 'PAUL MAXIMILIANO', 'QUIJIJE QUINTANA', null, '1', 'dark', null);
INSERT INTO `usuario` VALUES ('29', 'Ronrey1234@', 'ronrey', '2', '2017', '2017-05-17', 'RONNY SEBASTIAN', 'REYES SANTAMARIA', null, '1', 'dark', null);
INSERT INTO `usuario` VALUES ('30', 'Danriv1234@', 'danriv', '2', '2017', '2017-02-17', 'DANNY JAVIER', 'RIVERA LOOR ', null, '1', 'dark', null);
INSERT INTO `usuario` VALUES ('32', 'Blaale1234@', 'blaale', '2', '1757157977', '2015-03-16', 'BLANDON HENAO', 'NUBIA ALEXANDRA', '1', '1', 'dark', null);
INSERT INTO `usuario` VALUES ('33', 'dirulo1234', 'maular', '7', '12333', '2019-01-28', 'Miguel ', 'Aular', '3', '1', 'dark', null);
INSERT INTO `usuario` VALUES ('34', '123456789', 'gerardo', '7', '1846833425', '2019-01-29', 'Gerardo', 'Rovero', '1', '1', 'dark', null);
