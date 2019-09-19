/*
 Navicat Premium Data Transfer

 Source Server         : burtoncloud.com
 Source Server Type    : MySQL
 Source Server Version : 50641
 Source Host           : burtoncloud.com:3306
 Source Schema         : burtoncl_droom

 Target Server Type    : MySQL
 Target Server Version : 50641
 File Encoding         : 65001

 Date: 17/09/2019 20:30:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cliente
-- ----------------------------
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente`  (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `cedulaCliente` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nombreCliente` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `emailCliente` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `direccionCliente` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telefonoCliente` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idCliente`, `cedulaCliente`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cliente
-- ----------------------------
INSERT INTO `cliente` VALUES (1, '0019567535', 'Frank Montagne', 'frank@burtonservers.com', 'Ecuador', '0979046196');

-- ----------------------------
-- Table structure for comentarios
-- ----------------------------
DROP TABLE IF EXISTS `comentarios`;
CREATE TABLE `comentarios`  (
  `idComentario` int(255) NOT NULL AUTO_INCREMENT,
  `idCliente` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `idUsuario` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `fechaComentario` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `textoComentario` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `statusComentario` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idComentario`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comentarios
-- ----------------------------
INSERT INTO `comentarios` VALUES (1, '14', '2', '2017-08-28', 'Cliente no tiene comentarios', 'ACTIVE');
INSERT INTO `comentarios` VALUES (2, '14', '2', '2017-08-28', 'Cliente no tiene comentarios2', 'ACTIVE');
INSERT INTO `comentarios` VALUES (3, '14', '2', '2017-08-28', 'Cliente no tiene comentarios3', 'ACTIVE');
INSERT INTO `comentarios` VALUES (4, '14', '2', '2017-08-28', 'Primer coemntario', 'ACTIVE');
INSERT INTO `comentarios` VALUES (5, '14', '2', '2017-08-28', 'Segundo Comentario', 'ACTIVE');
INSERT INTO `comentarios` VALUES (6, '14', '2', '2017-08-28', 'Tercer coemntario', 'ACTIVE');
INSERT INTO `comentarios` VALUES (7, '14', '2', '2017-08-28', 'Cuearto coemtnatario', 'ACTIVE');
INSERT INTO `comentarios` VALUES (8, '14', '2', '2017-08-28', 'El cliente es muy agradable', 'ACTIVE');
INSERT INTO `comentarios` VALUES (9, '14', '2', '2017-08-28', 'Buen cliente', 'ACTIVE');
INSERT INTO `comentarios` VALUES (10, '5', '', '2017-08-29', 'Buen cliente', 'ACTIVE');
INSERT INTO `comentarios` VALUES (11, '5', '', '2017-08-29', 'Comentario de prueba', 'ACTIVE');
INSERT INTO `comentarios` VALUES (12, '11', '2', '2017-08-29', 'Comentario de prueba', 'ACTIVE');
INSERT INTO `comentarios` VALUES (13, '14', '2', '2017-08-29', 'Buen cliente', 'ACTIVE');
INSERT INTO `comentarios` VALUES (14, '16', '2', '2017-09-18', '123123123', 'ACTIVE');
INSERT INTO `comentarios` VALUES (15, '16', '2', '2017-09-18', 'comentario', 'ACTIVE');
INSERT INTO `comentarios` VALUES (16, '15', '2', '2017-10-10', 'Buen cliente', 'ACTIVE');
INSERT INTO `comentarios` VALUES (17, '15', '2', '2017-10-10', 'Buen cliente', 'ACTIVE');
INSERT INTO `comentarios` VALUES (18, '14', '3', '2018-01-02', 'Mal cliente', 'ACTIVE');
INSERT INTO `comentarios` VALUES (19, '14', '3', '2018-01-08', 'asdfsdc', 'ACTIVE');
INSERT INTO `comentarios` VALUES (20, '15', '2', '2018-01-11', '', 'ACTIVE');
INSERT INTO `comentarios` VALUES (21, '15', '2', '2018-01-11', 'awdawd', 'ACTIVE');
INSERT INTO `comentarios` VALUES (22, '15', '2', '2018-01-16', 'nuevo comentario', 'ACTIVE');
INSERT INTO `comentarios` VALUES (23, '14', '3', '2018-02-23', 'esta molesto poar queno hdas', 'ACTIVE');
INSERT INTO `comentarios` VALUES (24, '14', '2', '2018-03-09', 'fgdfgdfgdfgdfgdgssdfs', 'ACTIVE');
INSERT INTO `comentarios` VALUES (25, '5', '2', '2018-03-20', 'jhhkhjo', 'ACTIVE');
INSERT INTO `comentarios` VALUES (26, '15', '3', '2018-07-13', 'cliente grosero', 'ACTIVE');
INSERT INTO `comentarios` VALUES (27, '15', '3', '2018-07-13', 'cliente alwdawd', 'ACTIVE');
INSERT INTO `comentarios` VALUES (28, '15', '1', '2019-05-26', 'Buen Cliente', 'ACTIVE');
INSERT INTO `comentarios` VALUES (29, '15', '1', '2019-06-12', 'maleducado', 'ACTIVE');

-- ----------------------------
-- Table structure for establecimiento
-- ----------------------------
DROP TABLE IF EXISTS `establecimiento`;
CREATE TABLE `establecimiento`  (
  `idEstablecimiento` int(11) NOT NULL AUTO_INCREMENT,
  `nombreEstablecimiento` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `direccionEstablecimiento` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ciudadEstablecimiento` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telefonoEstablecimiento` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sectorEstablecimiento` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idEstablecimiento`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of establecimiento
-- ----------------------------
INSERT INTO `establecimiento` VALUES (1, 'Restaurant Av Principal', 'Av. Cardenal de la Torre S13-70 y Psje. S13D', 'Ciudad', '3020911', 'Restaurant');
INSERT INTO `establecimiento` VALUES (2, 'Restaurant Centro Comercial', 'Rodrigo de Chávez y Av. 5 de Junio', 'Ciudad', '2649827', 'Restaurant');
INSERT INTO `establecimiento` VALUES (3, 'Restaurant Aeropuerto', 'Gualaquiza N61-41 y Av. del Maestro', 'Ciudad', '2530815', 'Restaurant');

-- ----------------------------
-- Table structure for factura
-- ----------------------------
DROP TABLE IF EXISTS `factura`;
CREATE TABLE `factura`  (
  `idFactura` int(11) NOT NULL AUTO_INCREMENT,
  `idPedido` int(11) NULL DEFAULT NULL,
  `idCliente` int(11) NULL DEFAULT NULL,
  `idEstablecimiento` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idTurno` int(11) NULL DEFAULT NULL,
  `fechaFactura` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `horaFactura` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subtotalFactura` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `descuentoFactura` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ivaFactura` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `totalFactura` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `formadepagoFactura` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tdc_voucherFactura` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cheque_nrochequeFactura` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `vueltoentregadoFactura` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `efectivoFactura` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tdcFactura` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chequeFactura` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `statusFactura` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tipoEntrega` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idFactura`) USING BTREE,
  INDEX `idPedido`(`idPedido`) USING BTREE,
  INDEX `idCliente`(`idCliente`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of factura
-- ----------------------------
INSERT INTO `factura` VALUES (1, 3, 1, '1', 12, '2019-09-13', '21:07:33', '25.00', '0.00', '3.00', '28.00', 'EFECTIVO', '', '', '2', '30', '0', '0', 'ACTIVE', 'Mesa');
INSERT INTO `factura` VALUES (2, 4, 1, '1', 12, '2019-09-15', '15:53:13', '25.00', '0.00', '3.00', '28.00', 'EFECTIVO', '', '', '2', '30', '0', '0', 'ACTIVE', 'Mesa');

-- ----------------------------
-- Table structure for ingrediente
-- ----------------------------
DROP TABLE IF EXISTS `ingrediente`;
CREATE TABLE `ingrediente`  (
  `idIngrediente` int(11) NOT NULL AUTO_INCREMENT,
  `nombreIngrediente` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cantidad1` int(11) NULL DEFAULT NULL,
  `codigoIngrediente` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `barcodeIngrediente` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unidadIngrediente` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tipoIngrediente` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ccIngrediente` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detalleIngrediente` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bodegaIngrediente` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `minIngrediente` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maxIngrediente` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `precioIngrediente` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `compraIngrediente` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editadoIngredinete` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `estadoIngrediente` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idIngrediente`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ingrediente
-- ----------------------------
INSERT INTO `ingrediente` VALUES (1, 'Ingrediente de Prueba', 100, '0987', '123', NULL, 'G', NULL, 'Det', 'Bodega 1', '1', NULL, '10', '5', '2019-09-13', '1');

-- ----------------------------
-- Table structure for ingresos
-- ----------------------------
DROP TABLE IF EXISTS `ingresos`;
CREATE TABLE `ingresos`  (
  `idIngreso` int(11) NOT NULL AUTO_INCREMENT,
  `asientoIngreso` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `coopIngreso` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `placaIngreso` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rutaIngreso` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `horaIngreso` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `precioIngreso` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cedulaIngreso` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nombreIngreso` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telefonoIngreso` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `emailIngreso` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `statusIngreso` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idIngreso`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ingresos
-- ----------------------------
INSERT INTO `ingresos` VALUES (1, '6', '1', 'MBB-1301', 'Guayaquil', '02/28/2018 4:17 AM', '10', '123123123', 'Frank Montagne', '123453512345324', 'frank@frank.com', 'nuevo');
INSERT INTO `ingresos` VALUES (2, '2', '1', 'MBB-1301', 'Guayaquil', '02/28/2018 4:17 AM', '10', '123123123', 'Frank Montagne', '123453512345324', 'frank@frank.com', 'nuevo');
INSERT INTO `ingresos` VALUES (3, '4', '1', 'MBB-1301', 'Guayaquil', '02/28/2018 4:17 AM', '5', '123123123', 'Frank Montagne', '123453512345324', 'frank@frank.com', 'nuevo');
INSERT INTO `ingresos` VALUES (4, '6', '1', 'MBB-1301', 'Guayaquil', '02/28/2018 4:17 AM', '10', '123123123', 'Frank Montagne', '123453512345324', 'frank@frank.com', 'nuevo');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `idMenu` int(11) NOT NULL AUTO_INCREMENT,
  `nombreMenu` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `estadoMenu` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idMenu`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 'Pizzas', 'ACTIVO');
INSERT INTO `menu` VALUES (2, 'Bebidas', 'ACTIVO');

-- ----------------------------
-- Table structure for mesa
-- ----------------------------
DROP TABLE IF EXISTS `mesa`;
CREATE TABLE `mesa`  (
  `idMesa` int(11) NOT NULL AUTO_INCREMENT,
  `idEstablecimiento` int(11) NULL DEFAULT NULL,
  `numeroMesa` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `estadoMesa` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nivelMesa` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `textoMesa` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idMesa`) USING BTREE,
  INDEX `idEstablecimiento`(`idEstablecimiento`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mesa
-- ----------------------------
INSERT INTO `mesa` VALUES (1, 1, 'Mesa 1', 'HABILITADA', 'Planta Baja', 'Desc');
INSERT INTO `mesa` VALUES (2, 1, 'Mesa 2', 'HABILITADA', 'Planta Baja', 'Desc');
INSERT INTO `mesa` VALUES (3, 1, 'Mesa 3', 'HABILITADA', 'Terraza', 'Mesa de la terraza');

-- ----------------------------
-- Table structure for pedido
-- ----------------------------
DROP TABLE IF EXISTS `pedido`;
CREATE TABLE `pedido`  (
  `idPedido` int(11) NOT NULL AUTO_INCREMENT,
  `idMesa` int(11) NULL DEFAULT NULL,
  `idUsuario` int(11) NULL DEFAULT NULL,
  `estadoPedido` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `estadopagoPedido` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idPedido`) USING BTREE,
  INDEX `idMesa`(`idMesa`) USING BTREE,
  INDEX `idUsuario`(`idUsuario`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pedido
-- ----------------------------
INSERT INTO `pedido` VALUES (3, 2, 1, 'ENTREGADO', 'PAGADO');
INSERT INTO `pedido` VALUES (4, 1, 3, 'ENTREGADO', 'PAGADO');

-- ----------------------------
-- Table structure for pedido_repartidor
-- ----------------------------
DROP TABLE IF EXISTS `pedido_repartidor`;
CREATE TABLE `pedido_repartidor`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_repartidor` int(255) NOT NULL,
  `id_pedido` int(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pedido_repartidor
-- ----------------------------
INSERT INTO `pedido_repartidor` VALUES (1, 1, 1);
INSERT INTO `pedido_repartidor` VALUES (2, 1, 1);
INSERT INTO `pedido_repartidor` VALUES (3, 1, 373);
INSERT INTO `pedido_repartidor` VALUES (4, 1, 374);
INSERT INTO `pedido_repartidor` VALUES (5, 1, 376);
INSERT INTO `pedido_repartidor` VALUES (6, 1, 378);
INSERT INTO `pedido_repartidor` VALUES (7, 1, 380);
INSERT INTO `pedido_repartidor` VALUES (8, 1, 383);
INSERT INTO `pedido_repartidor` VALUES (9, 1, 384);
INSERT INTO `pedido_repartidor` VALUES (10, 1, 389);
INSERT INTO `pedido_repartidor` VALUES (11, 1, 437);
INSERT INTO `pedido_repartidor` VALUES (12, 1, 441);

-- ----------------------------
-- Table structure for pedidoproducto
-- ----------------------------
DROP TABLE IF EXISTS `pedidoproducto`;
CREATE TABLE `pedidoproducto`  (
  `idPedidoproducto` int(11) NOT NULL AUTO_INCREMENT,
  `idPedido` int(11) NULL DEFAULT NULL,
  `idProducto` int(11) NULL DEFAULT NULL,
  `descripcionPedidoproducto` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cantidadPedidoproducto` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `observacionPedidoproducto` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `precioPedidoProducto` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ingsPedidoProducto` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `estadoPedidoproducto` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idPedidoproducto`) USING BTREE,
  INDEX `idPedido`(`idPedido`) USING BTREE,
  INDEX `idProducto`(`idProducto`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1045 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pedidoproducto
-- ----------------------------
INSERT INTO `pedidoproducto` VALUES (406, 233, 127, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (409, 234, 127, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (410, 234, 99, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (411, 233, 94, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (412, 233, 18, 'Combinada 1/4', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (413, 233, 14, 'Combinada 1/4', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (414, 235, 145, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (415, 235, 133, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (416, 236, 85, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (420, 234, 85, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (421, 237, 13, 'Combinada 1/2', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (422, 237, 26, 'Combinada 1/2', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (423, 237, 72, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (424, 238, 97, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (425, 239, 111, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (426, 240, 20, 'Combinada 1/2', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (427, 241, 9, 'Combinada 1/2', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (428, 241, 85, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (429, 262, 71, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (430, 263, 71, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (431, 264, 90, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (432, 264, 97, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (433, 264, 99, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (434, 264, 105, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (435, 264, 109, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (436, 264, 8, 'Personalizada', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (437, 265, 71, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (438, 265, 74, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (439, 265, 83, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (440, 265, 116, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (441, 265, 126, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (442, 265, 126, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (443, 265, 128, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (444, 266, 72, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (445, 267, 82, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (446, 267, 82, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (447, 267, 82, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (448, 267, 84, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (449, 267, 80, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (450, 267, 79, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (451, 267, 76, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (452, 267, 90, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (453, 267, 105, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (454, 267, 108, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (455, 269, 15, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (456, 269, 19, 'Personalizada', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (457, 269, 43, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (458, 269, 43, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (459, 270, 97, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (460, 271, 71, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (463, 270, 78, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (464, 272, 12, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (465, 272, 47, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (466, 272, 31, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (467, 272, 8, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (468, 272, 23, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (469, 272, 55, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (470, 272, 67, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (471, 272, 35, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (472, 273, 23, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (473, 273, 39, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (474, 273, 8, 'Combinada 1/2', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (475, 273, 4, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (476, 273, 35, 'Combinada 1/4', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (477, 274, 4, 'Personalizada', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (478, 275, 79, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (479, 275, 80, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (480, 275, 83, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (481, 275, 84, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (482, 275, 82, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (483, 275, 81, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (484, 275, 74, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (485, 275, 121, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (486, 275, 122, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (487, 275, 126, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (488, 275, 128, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (489, 275, 127, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (490, 275, 125, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (491, 276, 111, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (492, 276, 112, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (493, 276, 113, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (494, 276, 114, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (495, 276, 115, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (496, 276, 116, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (497, 276, 110, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (498, 277, 80, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (499, 277, 4, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (500, 277, 128, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (501, 277, 115, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (503, 278, 71, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (504, 279, 71, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (505, 280, 79, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (506, 280, 74, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (507, 281, 93, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (508, 281, 81, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (509, 282, 9, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (510, 283, 14, 'Combinada 1/4', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (511, 283, 97, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (512, 282, 93, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (514, 285, 10, 'Combinada 1/2', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (515, 285, 93, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (516, 286, 71, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (517, 286, 74, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (518, 286, 80, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (519, 286, 90, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (520, 286, 111, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (521, 286, 113, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (522, 286, 15, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (523, 286, 63, 'Combinada 1/4', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (524, 286, 123, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (525, 286, 126, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (526, 286, 128, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (527, 286, 136, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (528, 286, 129, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (529, 286, 145, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (530, 286, 150, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (531, 286, 166, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (532, 290, 73, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (533, 291, 68, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (534, 291, 80, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (535, 291, 92, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (536, 291, 111, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (537, 291, 125, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (538, 292, 91, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (539, 292, 105, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (540, 293, 73, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (541, 293, 80, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (542, 293, 85, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (543, 293, 76, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (544, 293, 97, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (545, 294, 71, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (546, 294, 111, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (547, 294, 114, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (548, 295, 110, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (550, 295, 116, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (551, 296, 121, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (552, 296, 126, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (553, 296, 85, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (554, 296, 111, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (555, 297, 3, 'Combinada 1/4', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (556, 297, 57, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (557, 297, 110, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (558, 298, 71, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (559, 298, 92, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (560, 298, 112, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (561, 298, 47, 'Combinada 1/2', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (562, 298, 123, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (563, 298, 122, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (564, 298, 131, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (565, 298, 146, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (566, 298, 150, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (567, 298, 164, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (568, 299, 68, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (569, 299, 79, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (570, 299, 94, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (571, 299, 111, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (572, 299, 5, 'Combinada 1/2', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (573, 299, 127, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (574, 299, 129, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (575, 299, 157, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (576, 299, 147, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (577, 299, 145, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (578, 300, 101, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (579, 300, 142, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (580, 301, 122, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (581, 301, 123, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (582, 302, 122, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (583, 302, 123, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (584, 303, 122, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (585, 303, 123, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (586, 303, 124, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (587, 304, 101, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (588, 304, 51, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (589, 305, 101, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (590, 306, 51, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (591, 307, 51, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (592, 307, 43, 'Personalizada', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (593, 307, 112, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (594, 308, 60, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (595, 309, 51, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (596, 310, 27, 'Combinada 1/4', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (597, 310, 47, 'Combinada 1/2', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (598, 311, 51, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (599, 311, 132, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (600, 311, 104, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (601, 312, 35, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (602, 313, 4, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (603, 313, 12, 'Combinada 1/2', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (604, 314, 4, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (605, 314, 12, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (606, 314, 15, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (607, 315, 4, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (608, 315, 35, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (609, 316, 4, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (610, 317, 4, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (611, 318, 1, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (612, 319, 4, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (613, 319, 12, 'Combinada 1/2', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (614, 319, 19, 'Combinada 1/4', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (615, 319, 51, 'Personalizada', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (616, 320, 4, 'Personalizada', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (617, 320, 85, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (618, 320, 132, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (619, 321, 68, 'Unitario', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (620, 322, 23, 'entera', NULL, NULL, NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (621, 346, 68, 'Unitario', '2', '2', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (622, 347, 93, 'Unitario', '2', 'lasaña', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (623, 347, 15, 'Personalizada', '4', 'lasaña', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (624, 348, 97, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (625, 348, 9, 'Combinada 1/2', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (626, 349, 116, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (627, 349, 113, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (628, 349, 138, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (629, 349, 144, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (630, 350, 71, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (631, 350, 1, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (632, 351, 13, 'Combinada 1/2', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (633, 351, 60, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (634, 352, 66, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (635, 353, 13, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (636, 354, 64, 'entera', '1', 'Que este caliente la pizza', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (637, 354, 64, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (638, 355, 13, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (639, 356, 45, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (640, 356, 130, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (641, 356, 124, 'Unitario', '1', 'Helado de vainilla', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (642, 357, 121, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (643, 357, 150, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (644, 358, 15, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (645, 358, 153, 'Unitario', '2', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (646, 358, 75, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (647, 358, 12, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (648, 359, 110, 'Unitario', '1', '+salsa BBQ ', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (649, 359, 125, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (650, 360, 11, 'Combinada 1/2', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (651, 360, 75, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (652, 360, 133, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (653, 360, 129, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (654, 361, 96, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (655, 361, 60, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (656, 361, 90, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (657, 361, 116, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (658, 361, 131, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (659, 362, 15, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (660, 362, 134, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (661, 363, 4, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (662, 363, 140, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (663, 363, 110, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (664, 364, 110, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (665, 365, 114, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (666, 365, 95, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (667, 365, 137, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (668, 365, 129, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (669, 365, 76, 'Unitario', '1', '3cortecia', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (670, 365, 79, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (671, 366, 1, 'entera', '2', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (672, 366, 140, 'Unitario', '2', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (673, 366, 121, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (674, 366, 96, 'Unitario', '2', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (676, 367, 64, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (677, 368, 65, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (680, 373, 64, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (681, 374, 64, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (682, 375, 68, 'Unitario', '2', 'Mayonesa', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (683, 375, 8, 'Personalizada', '2', 'Mayonesa', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (684, 376, 64, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (685, 377, 61, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (686, 377, 134, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (687, 377, 125, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (688, 378, 9, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (689, 379, 96, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (690, 380, 8, 'entera', '2', 'prueba', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (691, 381, 1, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (692, 382, 12, 'Personalizada', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (693, 383, 5, 'entera', '1', 'Pizza camaron', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (694, 384, 12, 'entera', '4', 'Pizza de carnes de Janpaul', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (695, 385, 15, 'entera', '8', 'Pizza 4 est', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (696, 386, 5, 'entera', '4', 'pizza camaron sabrosa', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (697, 387, 15, 'Personalizada', '5', 'awdawda', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (698, 388, 19, 'Personalizada', '4', 'con cocacola', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (700, 389, 111, 'Unitario', '4', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (701, 389, 12, 'Personalizada', '4', 'personalizada pizza', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (704, 388, 72, 'Unitario', '5', 'Con queso', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (705, 390, 8, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (706, 391, 4, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (707, 391, 136, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (708, 391, 143, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (709, 392, 4, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (710, 393, 106, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (711, 394, 16, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (712, 395, 66, 'Combinada 1/2', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (713, 395, 66, 'Combinada 1/2', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (714, 396, 106, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (715, 397, 11, 'Combinada 1/2', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (716, 398, 15, 'Personalizada', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (717, 399, 1, 'Personalizada', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (718, 400, 40, 'Combinada 1/4', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (719, 401, 157, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (720, 402, 125, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (721, 402, 129, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (722, 402, 15, 'Combinada 1/2', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (723, 402, 68, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (724, 403, 75, 'Unitario', '1', 'Cortesia', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (725, 403, 95, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (726, 403, 15, 'Combinada 1/2', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (727, 403, 131, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (733, 351, 71, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (734, 351, 111, 'Unitario', '13', 'Bien cocidas', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (736, 405, 111, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (737, 405, 12, 'Personalizada', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (738, 355, 94, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (739, 355, 11, 'Combinada 1/2', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (740, 355, 17, 'Combinada 1/2', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (741, 406, 5, 'Combinada 1/2', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (742, 407, 12, 'Combinada 1/2', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (743, 407, 160, 'Unitario', '3', 'Frío', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (744, 407, 68, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (745, 408, 120, 'Unitario', '1', 'No ensaladas ', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (746, 408, 128, 'Unitario', '1', 'No crema no grajeas ', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (747, 408, 122, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (748, 408, 1, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (749, 409, 15, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (750, 410, 9, 'Combinada 1/4', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (751, 411, 63, 'Combinada 1/2', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (752, 411, 140, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (753, 412, 49, 'Combinada 1/2', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (756, 413, 121, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (757, 413, 121, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (758, 413, 126, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (777, 419, 111, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (778, 419, 10, 'Combinada 1/2', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (779, 419, 121, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (780, 420, 15, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (781, 421, 44, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (782, 422, 143, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (783, 422, 111, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (784, 422, 142, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (787, 424, 135, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (789, 425, 164, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (790, 425, 112, 'Unitario', '2', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (791, 425, 137, 'Unitario', '2', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (792, 425, 103, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (793, 425, 139, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (794, 426, 93, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (796, 426, 158, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (797, 427, 2, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (798, 427, 75, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (799, 427, 114, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (800, 427, 131, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (801, 428, 110, 'Unitario', '1', 'Papás fritas', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (802, 429, 134, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (804, 429, 95, 'Unitario', '2', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (805, 429, 110, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (806, 429, 69, 'Unitario', '1', 'Media', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (807, 429, 69, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (809, 423, 101, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (813, 432, 121, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (814, 432, 143, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (815, 433, 121, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (818, 434, 128, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (819, 435, 112, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (820, 435, 112, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (821, 436, 66, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (822, 437, 70, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (823, 438, 111, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (824, 439, 9, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (825, 440, 10, 'Combinada 1/2', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (826, 441, 97, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (827, 441, 97, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (829, 443, 146, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (830, 443, 143, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (831, 443, 161, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (832, 443, 117, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (833, 443, 133, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (834, 443, 69, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (835, 443, 12, 'Personalizada', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (836, 444, 96, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (837, 445, 12, 'Combinada 1/2', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (838, 446, 86, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (839, 446, 91, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (840, 446, 114, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (841, 446, 14, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (842, 446, 124, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (843, 446, 151, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (844, 447, 14, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (845, 447, 47, 'Personalizada', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (846, 447, 14, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (847, 447, 72, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (848, 447, 98, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (849, 447, 114, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (850, 447, 119, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (851, 447, 150, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (853, 448, 148, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (859, 448, 97, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (860, 448, 31, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (861, 448, 31, 'Personalizada', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (862, 448, 142, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (863, 448, 97, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (864, 448, 15, 'Personalizada', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (866, 449, 51, 'Combinada 1/4', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (867, 449, 80, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (868, 428, 152, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (874, 451, 129, 'Unitario', '3', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (875, 452, 143, 'Unitario', '4', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (876, 453, 136, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (877, 454, 68, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (878, 454, 91, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (879, 454, 112, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (880, 454, 15, 'Personalizada', '5', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (881, 454, 19, 'entera', '5', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (882, 432, 99, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (883, 432, 68, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (884, 455, 19, 'Personalizada', '3', 'cometario de la pizza', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (885, 426, 96, 'Unitario', '2', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (887, 456, 13, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (888, 457, 87, 'Unitario', '1', 'Este bien cocinado.', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (890, 459, 93, 'Unitario', '4', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (891, 460, 23, 'Combinada 1/2', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (894, 459, 96, 'Unitario', '4', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (895, 459, 141, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (901, 467, 79, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (902, 467, 71, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (903, 467, 94, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (904, 467, 131, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (905, 467, 162, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (906, 468, 71, 'Unitario', '2', 'Que no tenga anchoas soy alergico', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (907, 468, 130, 'Unitario', '1', '\nque este dulce ', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (908, 469, 99, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (909, 470, 68, 'Unitario', '1', 'Sin sal', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (910, 471, 106, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (914, 473, 5, 'entera', '1', 'Borde de Queso', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (915, 473, 137, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (916, 474, 87, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (917, 474, 154, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (918, 475, 87, 'Unitario', '1', 'Con sal', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (919, 475, 135, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (920, 476, 3, 'entera', '1', 'SIN CEBOLLA', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (921, 476, 137, 'Unitario', '1', 'ZERO', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (922, 476, 98, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (923, 477, 15, 'entera', '2', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (924, 478, 14, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (925, 478, 144, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (926, 479, 4, 'entera', '1', 'EXTRA QUESO', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (927, 479, 137, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (928, 479, 93, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (929, 480, 87, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (930, 481, 9, 'entera', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (931, 482, 9, 'Combinada 1/2', '1', 'extra queso', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (932, 482, 149, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (933, 483, 97, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (934, 483, 142, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (935, 484, 68, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (936, 484, 133, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (937, 485, 71, 'Unitario', '4', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (939, 450, 18, 'Combinada 1/2', '5', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (942, 450, 128, 'Unitario', '6', ' chocolate vainilla mora\n', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (943, 486, 12, 'Personalizada', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (944, 450, 88, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (945, 487, 86, 'Unitario', '1', '', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (946, 522, 3, 'Normal ', '1', 'Con aceite de Oliva || ', '15.23', '85,84,87,68,95', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (947, 522, 2, 'Normal ', '1', 'Con Queso || ', '4.52', '98,78,68,86,95', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (948, 526, 3, 'Normal ', '1', 'Con aceite de Oliva || ', '15.23', '85,84,87,68,95', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (949, 526, 2, 'Normal ', '1', 'Con Queso || ', '4.52', '98,78,68,86,95', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (950, 526, 3, 'Normal ', '1', 'Con aceite de Oliva || ', '15.23', '85,84,87,68,95', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (951, 526, 2, 'Normal ', '1', 'Con Queso || ', '4.52', '98,78,68,86,95', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (952, 527, 1, 'Normal ', '1', 'Regular || ', '12.55', '3', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (953, 527, 2, 'Normal ', '1', 'Con Queso || ', '4.52', '98,78,68,86,95', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (954, 527, 3, 'Normal ', '1', 'Con aceite de Oliva || ', '15.23', '85,84,87,68,95', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (955, 530, 3, 'Normal ', '1', 'Con aceite de Oliva || ', '15.23', '85,84,87,68,95', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (956, 531, 1, 'Normal ', '1', 'Regular || ', '12.55', '3', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (957, 531, 13, 'Normal ', '1', 'Con aceite de Oliva || ', '6.00', '58,74,15,85', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (958, 532, 1, 'Normal ', '1', 'Regular || ', '12.55', '3', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (960, 534, 2, 'Normal ', '1', 'Con Queso || ', '4.52', '98,78,68,86,95', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (961, 537, 1, 'Normal ', '1', 'Regular || ', '12.55', '3', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (962, 537, 2, 'Normal ', '1', 'Con Queso || ', '4.52', '98,78,68,86,95', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (963, 537, 3, 'Normal ', '1', 'Con aceite de Oliva || ', '15.23', '85,84,87,68,95', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (964, 538, 1, 'Normal ', '1', 'Regular || ', '12.55', '3', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (965, 538, 2, 'Normal ', '1', 'Con Queso || ', '4.52', '98,78,68,86,95', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (966, 538, 3, 'Normal ', '1', 'Con aceite de Oliva || ', '15.23', '85,84,87,68,95', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (972, 541, 14, 'Normal ', '1', 'Con papas Fritas || ', '7.00', '98,78,68,86,95', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (973, 542, 1, 'Normal ', '1', 'Regular || ', '12.55', '3', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (974, 542, 2, 'Normal ', '1', 'Con Queso || ', '4.52', '98,78,68,86,95', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (975, 542, 6, 'Normal ', '3', 'Con Lechuga || ', '6.00', '98,78,68,86,95', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (978, 544, 1, 'Normal ', '1', 'Regular || ', '12.55', '3', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (979, 544, 2, 'Normal ', '1', 'Con Queso || ', '4.52', '98,78,68,86,95', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (980, 544, 3, 'Normal ', '1', 'Con aceite de Oliva || ', '15.23', '85,84,87,68,95', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (986, 549, 1, 'Unitario', '1', 'Regular || ', NULL, NULL, 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (987, 550, 2, 'Normal ', '1', 'Con Queso || ', '4.52', '98,78,68,86,95', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (989, 551, 18, 'Normal ', '1', 'Regular || ', '22.45', '3,15,18', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (993, 553, 7, 'Mediana ', '3', 'Con Pan || Con jamon', '67.50', '68,84,87,95,110,11,9', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (994, 554, 10, 'Normal ', '1', 'Pan INtegral || ', '14.00', '98,78,68,86,95', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (995, 557, 3, 'Normal ', '1', 'Con aceite de Oliva || ', '15.23', '85,84,87,68,95', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (996, 558, 19, 'Normal ', '1', 'Regular || ', '11.00', '3,104', 'SOLICITADO');
INSERT INTO `pedidoproducto` VALUES (999, 560, 4, 'Grande ', '3', 'Con Papas asadas || Comentario', '49.95', '15,39,45,109,6,18', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (1001, 562, 3, 'Normal ', '1', 'Con aceite de Oliva || ', '15.23', '85,84,87,68,95', 'SOLICITADO');
INSERT INTO `pedidoproducto` VALUES (1002, 564, 9, 'Normal ', '1', 'Con papas Fritas || ', '11.00', '58,74,15,85', 'SOLICITADO');
INSERT INTO `pedidoproducto` VALUES (1003, 565, 7, 'Normal ', '1', 'Con Queso || ', '17.50', '85,84,87,68,95', 'SOLICITADO');
INSERT INTO `pedidoproducto` VALUES (1004, 566, 10, 'Normal ', '4', 'Pan INtegral || ', '56.00', '98,78,68,86,95', 'SOLICITADO');
INSERT INTO `pedidoproducto` VALUES (1005, 567, 10, 'Normal ', '5', 'Pan INtegral || ', '70.00', '68,95,98,21,17,12', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (1009, 559, 11, 'Normal ', '1', 'Con Lechuga || ', '22.00', '85,84,87,68,95', 'SOLICITADO');
INSERT INTO `pedidoproducto` VALUES (1010, 559, 2, 'Normal ', '1', 'Con Queso || ', '4.52', '98,78,68,86,95', 'SOLICITADO');
INSERT INTO `pedidoproducto` VALUES (1011, 568, 2, 'Normal ', '1', 'Con Queso || ', '4.52', '1,68', 'SOLICITADO');
INSERT INTO `pedidoproducto` VALUES (1012, 568, 18, 'Normal ', '1', 'Regular || ', '22.45', '3,15,18', 'SOLICITADO');
INSERT INTO `pedidoproducto` VALUES (1013, 569, 6, 'Normal ', '2', 'Con Lechuga || ', '4.00', '68,1,11', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (1014, 569, 11, 'Grande ', '1', 'Con Lechuga || ', '30.00', '68,84,87,1', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (1015, 569, 12, 'Normal ', '1', 'Con Queso || agregame salsa de soya', '18.00', '15,45,85,39,79', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (1016, 570, 1, 'Normal ', '1', 'Regular || ', '12.55', '1,3', 'SOLICITADO');
INSERT INTO `pedidoproducto` VALUES (1017, 570, 13, 'Normal ', '1', 'Con aceite de Oliva || ', '6.00', '58,74,15,85', 'SOLICITADO');
INSERT INTO `pedidoproducto` VALUES (1018, 570, 12, 'Normal ', '1', 'Con Pan || Con mitad margarita', '18.00', '15,45,85,39,79', 'EN PROCESO');
INSERT INTO `pedidoproducto` VALUES (1023, 571, 1, 'Normal ', '1', 'Regular || ', '12.55', '1,3', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (1024, 571, 2, 'Normal ', '1', 'Con Queso || ', '4.52', '1,68', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (1025, 571, 3, 'Normal ', '1', 'Con aceite de Oliva || ', '15.23', '85,84,87,68,95', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (1026, 572, 1, 'Grande ', '1', 'Regular || ', '16.55', '1,3', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (1027, 572, 7, 'Grande ', '1', 'Con Pan || ', '25.50', '85,84,87,68,95', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (1028, 573, 1, 'Normal ', '1', 'Regular || ', '12.55', '1,3', 'SOLICITADO');
INSERT INTO `pedidoproducto` VALUES (1029, 574, 10, 'Grande ', '1', 'Pan INtegral || ', '22.00', '68,1', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (1030, 575, 1, 'Normal ', '1', 'Regular || ', '12.55', '1,3', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (1031, 576, 2, 'Normal ', '1', 'Con Queso || ', '4.52', '1,68', 'SOLICITADO');
INSERT INTO `pedidoproducto` VALUES (1034, 577, 13, 'Normal ', '1', 'Con aceite de Oliva || ', '6.00', '58,74,15,85', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (1035, 577, 4, 'Normal ', '1', 'Con papas Fritas || ', '8.65', '15,45,85,39,79', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (1036, 577, 19, 'Normal ', '1', 'Regular || ', '11.00', '3,104', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (1041, 3, 1, 'Normal ', '1', 'Regular || ', '25.00', '1', 'ENTREGADO');
INSERT INTO `pedidoproducto` VALUES (1044, 4, 1, 'Normal ', '1', 'Regular || ', '25.00', '1', 'ENTREGADO');

-- ----------------------------
-- Table structure for pedidoproductocombinado
-- ----------------------------
DROP TABLE IF EXISTS `pedidoproductocombinado`;
CREATE TABLE `pedidoproductocombinado`  (
  `idPedidoproductocombinado` int(11) NOT NULL AUTO_INCREMENT,
  `idPedidoproducto` int(11) NULL DEFAULT NULL,
  `idProducto` int(11) NULL DEFAULT NULL,
  `descripcionPedidoproducto` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `estadoPedidoproducto` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idPedidoproductocombinado`) USING BTREE,
  INDEX `idPedidoproducto`(`idPedidoproducto`) USING BTREE,
  INDEX `idProducto`(`idProducto`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 324 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pedidoproductocombinado
-- ----------------------------
INSERT INTO `pedidoproductocombinado` VALUES (213, 404, 11, 'Combinada 1/4', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (214, 412, 7, 'Combinada 1/4', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (215, 413, 18, 'Combinada 1/4', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (216, 421, 21, 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (217, 422, 14, 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (218, 426, 1, 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (219, 427, 5, 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (220, 436, 4, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (221, 436, 51, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (222, 436, 59, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (223, 456, 4, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (224, 456, 35, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (225, 456, 59, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (226, 474, 23, 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (227, 476, 23, 'Combinada 1/4', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (228, 477, 15, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (229, 477, 43, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (230, 477, 55, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (231, 510, 7, 'Combinada 1/4', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (232, 514, 6, 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (233, 523, 4, 'Combinada 1/4', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (234, 555, 14, 'Combinada 1/4', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (235, 561, 19, 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (236, 572, 24, 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (237, 592, 12, 'Personalizada', 'DOMICILIO');
INSERT INTO `pedidoproductocombinado` VALUES (238, 592, 4, 'Personalizada', 'DOMICILIO');
INSERT INTO `pedidoproductocombinado` VALUES (239, 592, 27, 'Personalizada', 'DOMICILIO');
INSERT INTO `pedidoproductocombinado` VALUES (240, 596, 23, 'Combinada 1/4', 'DOMICILIO');
INSERT INTO `pedidoproductocombinado` VALUES (241, 597, 31, 'Combinada 1/2', 'DOMICILIO');
INSERT INTO `pedidoproductocombinado` VALUES (242, 603, 23, 'Combinada 1/2', 'DOMICILIO');
INSERT INTO `pedidoproductocombinado` VALUES (243, 613, 8, 'Combinada 1/2', 'DOMICILIO');
INSERT INTO `pedidoproductocombinado` VALUES (244, 614, 12, 'Combinada 1/4', 'DOMICILIO');
INSERT INTO `pedidoproductocombinado` VALUES (245, 615, 15, 'Personalizada', 'DOMICILIO');
INSERT INTO `pedidoproductocombinado` VALUES (246, 615, 4, 'Personalizada', 'DOMICILIO');
INSERT INTO `pedidoproductocombinado` VALUES (247, 615, 35, 'Personalizada', 'DOMICILIO');
INSERT INTO `pedidoproductocombinado` VALUES (248, 616, 8, 'Personalizada', 'DOMICILIO');
INSERT INTO `pedidoproductocombinado` VALUES (249, 616, 12, 'Personalizada', 'DOMICILIO');
INSERT INTO `pedidoproductocombinado` VALUES (250, 616, 15, 'Personalizada', 'DOMICILIO');
INSERT INTO `pedidoproductocombinado` VALUES (251, 623, 4, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (252, 623, 8, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (253, 623, 12, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (254, 625, 20, 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (255, 632, 29, 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (256, 650, 26, 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (257, 683, 15, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (258, 683, 59, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (259, 683, 47, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (260, 692, 4, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (261, 692, 8, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (262, 692, 12, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (263, 697, 8, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (264, 697, 19, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (265, 697, 23, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (266, 698, 12, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (267, 698, 19, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (268, 698, 8, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (269, 701, 19, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (270, 701, 39, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (271, 701, 55, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (272, 712, 11, 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (273, 713, 7, 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (274, 715, 22, 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (275, 716, 19, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (276, 716, 23, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (277, 716, 23, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (278, 717, 20, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (279, 717, 20, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (280, 717, 44, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (281, 718, 16, 'Combinada 1/4', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (282, 722, 12, 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (283, 726, 8, 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (284, 737, 27, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (285, 737, 27, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (286, 737, 19, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (287, 739, 22, 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (288, 740, 13, 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (289, 741, 1, 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (290, 742, 23, 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (291, 750, 36, 'Combinada 1/4', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (292, 751, 63, 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (293, 753, 21, 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (297, 778, 6, 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (298, 825, 17, 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (299, 835, 19, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (300, 835, 27, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (301, 835, 31, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (302, 837, 4, 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (303, 845, 67, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (304, 845, 43, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (305, 845, 23, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (306, 861, 15, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (307, 861, 67, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (308, 861, 47, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (309, 864, 4, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (310, 864, 67, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (311, 864, 51, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (312, 866, 23, 'Combinada 1/4', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (313, 880, 15, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (314, 880, 15, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (315, 880, 19, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (316, 884, 4, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (317, 884, 8, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (318, 884, 12, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (319, 891, 27, 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (320, 931, 16, 'Combinada 1/2', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (321, 943, 51, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (322, 943, 39, 'Personalizada', 'SOLICITADO');
INSERT INTO `pedidoproductocombinado` VALUES (323, 943, 19, 'Personalizada', 'SOLICITADO');

-- ----------------------------
-- Table structure for pedprod_ing
-- ----------------------------
DROP TABLE IF EXISTS `pedprod_ing`;
CREATE TABLE `pedprod_ing`  (
  `idPedprod_ing` int(11) NOT NULL AUTO_INCREMENT,
  `idIngrediente` int(11) NULL DEFAULT NULL,
  `idPedidoproducto` int(11) NULL DEFAULT NULL,
  `opPedprod_ing` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cantidadPedProd_ing` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idPedprod_ing`) USING BTREE,
  INDEX `idIngrediente`(`idIngrediente`) USING BTREE,
  INDEX `idPedidoproducto`(`idPedidoproducto`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 671 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pedprod_ing
-- ----------------------------
INSERT INTO `pedprod_ing` VALUES (450, 72, 405, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (451, 98, 405, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (452, 98, 406, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (453, 99, 406, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (454, 99, 409, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (455, 6, 413, 'agrega', 3);
INSERT INTO `pedprod_ing` VALUES (456, 27, 413, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (459, 63, 420, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (460, 8, 421, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (461, 8, 427, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (462, 1, 427, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (463, 6, 428, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (464, 99, 442, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (465, 75, 442, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (466, 94, 443, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (467, 22, 455, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (468, 18, 460, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (469, 24, 510, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (470, 6, 510, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (471, 22, 514, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (472, 1, 514, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (473, 12, 523, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (474, 22, 523, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (475, 22, 555, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (476, 8, 555, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (477, 21, 555, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (478, 8, 556, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (479, 6, 557, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (480, 8, 559, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (481, 6, 560, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (482, 3, 560, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (483, 22, 561, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (484, 8, 568, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (485, 56, 568, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (486, 6, 569, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (487, 18, 569, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (488, 51, 570, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (489, 41, 570, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (490, 68, 571, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (491, 22, 572, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (492, 99, 573, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (493, 18, 593, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (494, 6, 593, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (495, 22, 595, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (496, 18, 595, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (497, 8, 610, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (498, 22, 610, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (499, 5, 610, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (500, 21, 610, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (501, 8, 611, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (502, 22, 611, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (503, 22, 612, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (504, 6, 613, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (505, 1, 613, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (506, 12, 614, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (507, 8, 614, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (508, 1, 614, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (509, 18, 614, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (510, 22, 615, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (511, 12, 616, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (512, 22, 616, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (513, 1, 616, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (514, 63, 617, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (515, 6, 617, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (516, 18, 619, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (517, 6, 619, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (518, 22, 620, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (519, 8, 624, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (520, 68, 624, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (521, 53, 624, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (522, 54, 624, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (523, 40, 624, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (524, 33, 631, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (525, 1, 631, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (526, 8, 631, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (527, 21, 631, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (528, 12, 633, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (529, 8, 633, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (530, 22, 633, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (531, 6, 633, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (532, 8, 634, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (533, 2, 655, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (534, 33, 655, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (535, 106, 664, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (536, 107, 665, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (537, 10, 674, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (538, 6, 682, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (539, 56, 682, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (540, 2, 685, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (541, 5, 685, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (542, 8, 690, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (543, 22, 693, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (544, 6, 693, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (545, 24, 694, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (546, 12, 695, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (547, 8, 695, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (548, 8, 696, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (549, 18, 697, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (551, 6, 700, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (554, 18, 704, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (555, 64, 704, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (556, 1, 705, 'agrega', 5);
INSERT INTO `pedprod_ing` VALUES (557, 1, 709, 'agrega', 4);
INSERT INTO `pedprod_ing` VALUES (558, 22, 712, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (559, 12, 715, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (560, 8, 717, 'agrega', 2);
INSERT INTO `pedprod_ing` VALUES (561, 22, 718, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (562, 6, 718, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (563, 20, 718, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (566, 9, 733, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (567, 104, 734, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (568, 107, 734, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (569, 104, 736, 'agrega', 2);
INSERT INTO `pedprod_ing` VALUES (570, 6, 736, 'agrega', 3);
INSERT INTO `pedprod_ing` VALUES (571, 107, 736, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (572, 8, 737, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (573, 5, 737, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (574, 8, 738, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (575, 54, 738, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (576, 22, 740, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (577, 63, 744, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (578, 6, 744, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (579, 56, 744, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (580, 14, 744, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (581, 97, 745, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (582, 97, 746, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (583, 94, 746, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (584, 93, 746, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (585, 22, 750, 'agrega', 2);
INSERT INTO `pedprod_ing` VALUES (586, 6, 753, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (587, 98, 757, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (588, 99, 758, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (589, 98, 758, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (605, 12, 777, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (606, 104, 777, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (607, 18, 777, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (608, 107, 777, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (609, 63, 807, 'agrega', 2);
INSERT INTO `pedprod_ing` VALUES (614, 72, 818, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (615, 98, 818, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (616, 75, 818, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (617, 8, 824, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (618, 1, 824, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (619, 5, 824, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (620, 8, 825, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (621, 12, 838, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (622, 2, 840, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (623, 98, 842, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (624, 90, 848, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (625, 2, 849, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (626, 70, 850, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (629, 6, 867, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (632, 8, 881, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (633, 22, 881, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (634, 10, 882, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (638, 8, 891, 'agrega', 1);
INSERT INTO `pedprod_ing` VALUES (639, 1, 891, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (640, 29, 891, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (641, 30, 891, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (642, 20, 891, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (643, 21, 891, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (648, 44, 894, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (650, 59, 902, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (651, 9, 902, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (652, 89, 903, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (653, 43, 903, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (654, 58, 906, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (655, 9, 906, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (656, 56, 906, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (657, 2, 909, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (658, 15, 909, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (659, 18, 909, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (665, 1, 916, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (666, 2, 916, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (667, 1, 929, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (668, 8, 933, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (669, 10, 933, 'quita', 1);
INSERT INTO `pedprod_ing` VALUES (670, 9, 937, 'quita', 1);

-- ----------------------------
-- Table structure for perfil
-- ----------------------------
DROP TABLE IF EXISTS `perfil`;
CREATE TABLE `perfil`  (
  `idPerfil` int(11) NOT NULL AUTO_INCREMENT,
  `nombrePerfil` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idPerfil`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of perfil
-- ----------------------------
INSERT INTO `perfil` VALUES (1, 'ADMINISTRADOR DE LOCALES / ESTABLECIMIENTOS');
INSERT INTO `perfil` VALUES (2, 'SALONERO');
INSERT INTO `perfil` VALUES (3, 'CAJERO CERTIFICADO');
INSERT INTO `perfil` VALUES (4, 'MENSAJERO / REPARTIDOR');
INSERT INTO `perfil` VALUES (5, 'CONSERJE');
INSERT INTO `perfil` VALUES (6, 'GERENTE / AFINES');
INSERT INTO `perfil` VALUES (7, 'SOPORTE TECNICO');

-- ----------------------------
-- Table structure for producto
-- ----------------------------
DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto`  (
  `idProducto` int(11) NOT NULL AUTO_INCREMENT,
  `idSubmenu` int(11) NULL DEFAULT NULL,
  `nombreProducto` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `precioProducto` decimal(15, 2) NULL DEFAULT NULL,
  `cantidadProducto` int(11) NULL DEFAULT NULL,
  `tipoProducto` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `codProducto` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idProducto`) USING BTREE,
  INDEX `idSubmenu`(`idSubmenu`) USING BTREE,
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`idSubmenu`) REFERENCES `submenu` (`idSubmenu`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 167 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of producto
-- ----------------------------
INSERT INTO `producto` VALUES (1, 11, 'Pizza Personal', 8.00, 10, 'ACTIVO', '011');
INSERT INTO `producto` VALUES (2, 11, 'Pizza Mini', 13.49, 10, 'ACTIVO', '012');
INSERT INTO `producto` VALUES (3, 11, 'Pizza Mediana', 16.79, 10, 'ACTIVO', '013');
INSERT INTO `producto` VALUES (4, 11, 'Pizza Familiar', 21.38, 10, 'ACTIVO', '014');
INSERT INTO `producto` VALUES (5, 12, 'Pizza Personal', 8.00, 10, 'ACTIVO', '056');
INSERT INTO `producto` VALUES (6, 12, 'Pizza Mini', 13.49, 10, 'ACTIVO', '057');
INSERT INTO `producto` VALUES (7, 12, 'Pizza Mediana', 16.79, 10, 'ACTIVO', '058');
INSERT INTO `producto` VALUES (8, 12, 'Pizza Familiar', 21.38, 10, 'ACTIVO', '059');
INSERT INTO `producto` VALUES (9, 13, 'Pizza Personal', 7.00, 10, 'ACTIVO', '021');
INSERT INTO `producto` VALUES (10, 13, 'Pizza Mini', 13.23, 10, 'ACTIVO', '022');
INSERT INTO `producto` VALUES (11, 13, 'Pizza Mediana', 16.29, 10, 'ACTIVO', '023');
INSERT INTO `producto` VALUES (12, 13, 'Pizza Familiar', 20.36, 10, 'ACTIVO', '024');
INSERT INTO `producto` VALUES (13, 14, 'Pizza Mini', 12.52, 10, 'ACTIVO', '032');
INSERT INTO `producto` VALUES (14, 14, 'Pizza Mediana', 15.37, 10, 'ACTIVO', '033');
INSERT INTO `producto` VALUES (15, 14, 'Pizza Familiar', 20.15, 10, 'ACTIVO', '034');
INSERT INTO `producto` VALUES (16, 15, 'Pizza Personal', 6.21, 10, 'ACTIVO', '041');
INSERT INTO `producto` VALUES (17, 15, 'Pizza Mini', 12.47, 10, 'ACTIVO', '042');
INSERT INTO `producto` VALUES (18, 15, 'Pizza Mediana', 14.66, 10, 'ACTIVO', '043');
INSERT INTO `producto` VALUES (19, 15, 'Pizza Familiar', 18.12, 10, 'ACTIVO', '044');
INSERT INTO `producto` VALUES (20, 16, 'Pizza Personal', 6.21, 10, 'ACTIVO', '091');
INSERT INTO `producto` VALUES (21, 16, 'Pizza Mini', 12.47, 10, 'ACTIVO', '092');
INSERT INTO `producto` VALUES (22, 16, 'Pizza Mediana', 14.66, 10, 'ACTIVO', '093');
INSERT INTO `producto` VALUES (23, 16, 'Pizza Familiar', 18.12, 10, 'ACTIVO', '094');
INSERT INTO `producto` VALUES (24, 17, 'Pizza Personal', 6.62, 10, 'ACTIVO', '025');
INSERT INTO `producto` VALUES (25, 17, 'Pizza Mini', 12.72, 10, 'ACTIVO', '027');
INSERT INTO `producto` VALUES (26, 17, 'Pizza Mediana', 15.27, 10, 'ACTIVO', '028');
INSERT INTO `producto` VALUES (27, 17, 'Pizza Familiar', 19.75, 10, 'ACTIVO', '029');
INSERT INTO `producto` VALUES (28, 18, 'Pizza Personal', 6.62, 10, 'ACTIVO', '016');
INSERT INTO `producto` VALUES (29, 18, 'Pizza Mini', 12.72, 10, 'ACTIVO', '017');
INSERT INTO `producto` VALUES (30, 18, 'Pizza Mediana', 15.27, 10, 'ACTIVO', '018');
INSERT INTO `producto` VALUES (31, 18, 'Pizza Familiar', 19.75, 10, 'ACTIVO', '019');
INSERT INTO `producto` VALUES (32, 19, 'Pizza Personal', 6.61, 10, 'ACTIVO', '061');
INSERT INTO `producto` VALUES (33, 19, 'Pizza Mini', 12.72, 10, 'ACTIVO', '062');
INSERT INTO `producto` VALUES (34, 19, 'Pizza Mediana', 15.27, 10, 'ACTIVO', '063');
INSERT INTO `producto` VALUES (35, 19, 'Pizza Familiar', 19.75, 10, 'ACTIVO', '064');
INSERT INTO `producto` VALUES (36, 20, 'Pizza Personal', 6.61, 10, 'ACTIVO', '046');
INSERT INTO `producto` VALUES (37, 20, 'Pizza Mini', 12.72, 10, 'ACTIVO', '047');
INSERT INTO `producto` VALUES (38, 20, 'Pizza Mediana', 15.27, 10, 'ACTIVO', '048');
INSERT INTO `producto` VALUES (39, 20, 'Pizza Familiar', 19.75, 10, 'ACTIVO', '049');
INSERT INTO `producto` VALUES (40, 21, 'Pizza Personal', 6.61, 10, 'ACTIVO', '071');
INSERT INTO `producto` VALUES (41, 21, 'Pizza Mini', 12.72, 10, 'ACTIVO', '072');
INSERT INTO `producto` VALUES (42, 21, 'Pizza Mediana', 15.27, 10, 'ACTIVO', '073');
INSERT INTO `producto` VALUES (43, 21, 'Pizza Familiar', 19.75, 10, 'ACTIVO', '074');
INSERT INTO `producto` VALUES (44, 22, 'Pizza Personal', 6.61, 10, 'ACTIVO', '036');
INSERT INTO `producto` VALUES (45, 22, 'Pizza Mini', 12.72, 10, 'ACTIVO', '037');
INSERT INTO `producto` VALUES (46, 22, 'Pizza Mediana', 15.27, 10, 'ACTIVO', '038');
INSERT INTO `producto` VALUES (47, 22, 'Pizza Familiar', 19.75, 10, 'ACTIVO', '039');
INSERT INTO `producto` VALUES (48, 23, 'Pizza Personal', 6.51, 10, 'ACTIVO', '051');
INSERT INTO `producto` VALUES (49, 23, 'Pizza Mini', 12.52, 10, 'ACTIVO', '052');
INSERT INTO `producto` VALUES (50, 23, 'Pizza Mediana', 14.86, 10, 'ACTIVO', '053');
INSERT INTO `producto` VALUES (51, 23, 'Pizza Familiar', 18.75, 10, 'ACTIVO', '054');
INSERT INTO `producto` VALUES (52, 24, 'Pizza Personal', 6.51, 10, 'ACTIVO', '081');
INSERT INTO `producto` VALUES (53, 24, 'Pizza Mini', 12.52, 10, 'ACTIVO', '082');
INSERT INTO `producto` VALUES (54, 24, 'Pizza Mediana', 14.86, 10, 'ACTIVO', '083');
INSERT INTO `producto` VALUES (55, 24, 'Pizza Familiar', 18.75, 10, 'ACTIVO', '084');
INSERT INTO `producto` VALUES (56, 25, 'Pizza Personal', 6.51, 10, 'ACTIVO', '101');
INSERT INTO `producto` VALUES (57, 25, 'Pizza Mini', 12.52, 10, 'ACTIVO', '102');
INSERT INTO `producto` VALUES (58, 25, 'Pizza Mediana', 14.86, 10, 'ACTIVO', '103');
INSERT INTO `producto` VALUES (59, 25, 'Pizza Familiar', 18.75, 10, 'ACTIVO', '104');
INSERT INTO `producto` VALUES (60, 26, 'Pizza Personal', 5.60, 10, 'ACTIVO', '111');
INSERT INTO `producto` VALUES (61, 26, 'Pizza Mini', 11.71, 10, 'ACTIVO', '112');
INSERT INTO `producto` VALUES (62, 26, 'Pizza Mediana', 14.50, 10, 'ACTIVO', '113');
INSERT INTO `producto` VALUES (63, 26, 'Pizza Familiar', 17.81, 10, 'ACTIVO', '114');
INSERT INTO `producto` VALUES (64, 27, 'Pizza Personal', 4.58, 10, 'ACTIVO', '121');
INSERT INTO `producto` VALUES (65, 27, 'Pizza Mini', 10.38, 10, 'ACTIVO', '122');
INSERT INTO `producto` VALUES (66, 27, 'Pizza Mediana', 13.23, 10, 'ACTIVO', '123');
INSERT INTO `producto` VALUES (67, 27, 'Pizza Familiar', 15.06, 10, 'ACTIVO', '124');
INSERT INTO `producto` VALUES (68, 1, 'Di Rulo', 8.14, 10, 'ACTIVO', '400');
INSERT INTO `producto` VALUES (69, 1, 'Verde', 5.09, 10, 'ACTIVO', '161');
INSERT INTO `producto` VALUES (70, 1, 'Verde especial', 6.21, 10, 'ACTIVO', '162');
INSERT INTO `producto` VALUES (71, 1, 'Cesar con pollo', 8.13, 10, 'ACTIVO', '163');
INSERT INTO `producto` VALUES (72, 1, 'Ensalada Rusa', 5.70, 10, 'ACTIVO', '164');
INSERT INTO `producto` VALUES (73, 1, 'Ensalada Capri', 7.13, 10, 'ACTIVO', '165');
INSERT INTO `producto` VALUES (74, 2, 'Empanadas Colombianas', 1.73, 10, 'ACTIVO', '174');
INSERT INTO `producto` VALUES (75, 2, 'Pan de ajo Di Rulo tradicional', 1.94, 10, 'ACTIVO', '171');
INSERT INTO `producto` VALUES (76, 2, 'Pan de ajo Di Rulo con queso La Merced', 2.24, 10, 'ACTIVO', '172');
INSERT INTO `producto` VALUES (77, 2, 'Porción de papas fritas', 2.85, 10, 'ACTIVO', '181');
INSERT INTO `producto` VALUES (78, 2, 'Nuggets Dirulo', 5.50, 10, 'ACTIVO', '179');
INSERT INTO `producto` VALUES (79, 2, 'Exquisito Chorizo Colombiano', 5.50, 10, 'ACTIVO', '175');
INSERT INTO `producto` VALUES (80, 2, 'Hamburguesa Dirulo sencilla', 6.16, 10, 'ACTIVO', '177');
INSERT INTO `producto` VALUES (81, 2, 'Hamburguesa Dirulo doble', 6.82, 10, 'ACTIVO', '178');
INSERT INTO `producto` VALUES (82, 2, 'Picadita', 9.77, 10, 'ACTIVO', '173');
INSERT INTO `producto` VALUES (83, 2, 'Sanduches de pernil ahumado', 3.56, 10, 'ACTIVO', '401');
INSERT INTO `producto` VALUES (84, 2, 'Sanduches de Jamón', 3.05, 10, 'ACTIVO', '402');
INSERT INTO `producto` VALUES (85, 3, 'Sopa del día', 6.21, 10, 'ACTIVO', '403');
INSERT INTO `producto` VALUES (86, 4, 'Crema del día', 8.13, 10, 'ACTIVO', '404');
INSERT INTO `producto` VALUES (87, 5, 'Alfredo', 7.38, 10, 'ACTIVO', '151');
INSERT INTO `producto` VALUES (88, 5, 'Carbonara', 7.38, 10, 'ACTIVO', '153');
INSERT INTO `producto` VALUES (89, 5, 'Bolognesa', 7.38, 10, 'ACTIVO', '152');
INSERT INTO `producto` VALUES (90, 5, 'Camarón', 9.36, 10, 'ACTIVO', '154');
INSERT INTO `producto` VALUES (91, 5, 'Al Pesto', 7.02, 10, 'ACTIVO', '156');
INSERT INTO `producto` VALUES (92, 5, 'Vegetariano', 7.02, 10, 'ACTIVO', '155');
INSERT INTO `producto` VALUES (93, 6, 'Lasaña Pollo', 7.38, 10, 'ACTIVO', '141');
INSERT INTO `producto` VALUES (94, 6, 'Lasaña Carne', 7.38, 10, 'ACTIVO', '142');
INSERT INTO `producto` VALUES (95, 6, 'Lasaña Mixta', 7.53, 10, 'ACTIVO', '143');
INSERT INTO `producto` VALUES (96, 6, 'Lasaña de Camarones', 9.36, 10, 'ACTIVO', '144');
INSERT INTO `producto` VALUES (97, 6, 'Lasaña Vegetariana', 7.02, 10, 'ACTIVO', '145');
INSERT INTO `producto` VALUES (98, 7, 'Canelón de Carne', 6.84, 10, 'ACTIVO', '405');
INSERT INTO `producto` VALUES (99, 7, 'Canelón de Pollo', 6.84, 10, 'ACTIVO', '406');
INSERT INTO `producto` VALUES (100, 7, 'Canelón Mixto', 7.13, 10, 'ACTIVO', '407');
INSERT INTO `producto` VALUES (101, 7, 'Canelón de Camarón', 9.11, 10, 'ACTIVO', '408');
INSERT INTO `producto` VALUES (103, 8, 'Raviolis rellenos de Carne', 7.13, 10, 'ACTIVO', '409');
INSERT INTO `producto` VALUES (104, 8, 'Raviolis Ricotta', 7.13, 10, 'ACTIVO', '410');
INSERT INTO `producto` VALUES (105, 8, 'Raviolis de Hongos', 7.13, 10, 'ACTIVO', '411');
INSERT INTO `producto` VALUES (106, 9, 'Fetuccini de Carne', 7.63, 10, 'ACTIVO', '412');
INSERT INTO `producto` VALUES (107, 9, 'Fetuccini Vegetariano', 7.63, 10, 'ACTIVO', '413');
INSERT INTO `producto` VALUES (108, 9, 'Fetuccini Al Pesto', 7.38, 10, 'ACTIVO', '414');
INSERT INTO `producto` VALUES (109, 9, 'Fetuccini Carbonara', 7.38, 10, 'ACTIVO', '415');
INSERT INTO `producto` VALUES (110, 10, 'Alitas BBQ', 7.02, 10, 'ACTIVO', '176');
INSERT INTO `producto` VALUES (111, 10, 'Costillas BBQ', 12.21, 10, 'ACTIVO', '180');
INSERT INTO `producto` VALUES (112, 10, 'Pernil de cerdo al horno', 8.14, 10, 'ACTIVO', '416');
INSERT INTO `producto` VALUES (113, 10, 'Medallones de Pollo', 10.19, 10, 'ACTIVO', '170');
INSERT INTO `producto` VALUES (114, 10, 'Piernitas BBQ', 8.04, 10, 'ACTIVO', '417');
INSERT INTO `producto` VALUES (115, 10, 'Costillas ahumadas', 17.30, 10, 'ACTIVO', '418');
INSERT INTO `producto` VALUES (116, 10, 'Chuletas de cerdo', 9.16, 10, 'ACTIVO', '419');
INSERT INTO `producto` VALUES (117, 28, 'Crepes dulce con helado', 8.30, 10, 'ACTIVO', '185');
INSERT INTO `producto` VALUES (118, 28, 'Crepes vegetariano', 6.41, 10, 'ACTIVO', '186');
INSERT INTO `producto` VALUES (119, 28, 'Crepes de casa (champiñon)', 7.13, 10, 'ACTIVO', '187');
INSERT INTO `producto` VALUES (120, 28, 'Crepes de Camarón', 9.36, 10, 'ACTIVO', '188');
INSERT INTO `producto` VALUES (121, 29, 'Durazno con Crema', 8.30, 10, 'ACTIVO', '190');
INSERT INTO `producto` VALUES (122, 29, 'Frutillas con Crema', 6.41, 10, 'ACTIVO', '191');
INSERT INTO `producto` VALUES (123, 30, 'Ensalada de Frutas', 4.48, 10, 'ACTIVO', '193');
INSERT INTO `producto` VALUES (124, 30, 'Ensalada de Frutas con Helado', 5.14, 10, 'ACTIVO', '194');
INSERT INTO `producto` VALUES (125, 30, 'Ensalada de Frutas con Queso', 5.14, 10, 'ACTIVO', '195');
INSERT INTO `producto` VALUES (126, 29, 'Banana Split', 6.16, 10, 'ACTIVO', '192');
INSERT INTO `producto` VALUES (127, 31, 'Copa 2 sabores', 4.99, 10, 'ACTIVO', '196');
INSERT INTO `producto` VALUES (128, 31, 'Copa 3 sabores', 5.50, 10, 'ACTIVO', '197');
INSERT INTO `producto` VALUES (129, 32, 'Limonada vaso', 1.27, 10, 'ACTIVO', '208');
INSERT INTO `producto` VALUES (130, 32, '1/2 Jarra de limonada vaso', 2.80, 10, 'ACTIVO', '209');
INSERT INTO `producto` VALUES (131, 32, 'Jarra de limonada', 4.68, 10, 'ACTIVO', '210');
INSERT INTO `producto` VALUES (132, 33, 'Té Botella', 1.28, 10, 'ACTIVO', '420');
INSERT INTO `producto` VALUES (133, 33, 'Té hélado vaso', 1.22, 10, 'ACTIVO', '211');
INSERT INTO `producto` VALUES (134, 33, '1/2 Jarra de Té', 2.95, 10, 'ACTIVO', '212');
INSERT INTO `producto` VALUES (135, 33, 'Jarra de Té', 4.99, 10, 'ACTIVO', '213');
INSERT INTO `producto` VALUES (136, 34, 'Milkshake', 2.75, 10, 'ACTIVO', '223');
INSERT INTO `producto` VALUES (137, 35, 'Gaseosa pequeña', 1.12, 10, 'ACTIVO', '421');
INSERT INTO `producto` VALUES (138, 35, 'Gaseosa 1/2 lts.', 1.43, 10, 'ACTIVO', '422');
INSERT INTO `producto` VALUES (139, 35, 'Gaseosa 1/2 lts. diet', 1.53, 10, 'ACTIVO', '423');
INSERT INTO `producto` VALUES (140, 35, 'Gaseosa 1.5 lts.', 2.39, 10, 'ACTIVO', '424');
INSERT INTO `producto` VALUES (141, 35, 'Gaseosa 2.5 lts.', 2.95, 10, 'ACTIVO', '425');
INSERT INTO `producto` VALUES (142, 36, 'Agua sin gas', 0.81, 10, 'ACTIVO', '426');
INSERT INTO `producto` VALUES (143, 36, 'Agua con gas', 0.92, 10, 'ACTIVO', '427');
INSERT INTO `producto` VALUES (144, 37, 'Cerveza pequeña', 1.83, 10, 'ACTIVO', '428');
INSERT INTO `producto` VALUES (145, 37, 'Cerveza grande', 2.85, 10, 'ACTIVO', '429');
INSERT INTO `producto` VALUES (146, 38, 'Agua Aromática', 1.12, 10, 'ACTIVO', '230');
INSERT INTO `producto` VALUES (147, 39, 'Café', 1.43, 10, 'ACTIVO', '227');
INSERT INTO `producto` VALUES (148, 39, 'Café con leche', 1.53, 10, 'ACTIVO', '229');
INSERT INTO `producto` VALUES (149, 39, 'Capuchino', 2.39, 10, 'ACTIVO', '228');
INSERT INTO `producto` VALUES (150, 40, 'Chocolate con queso', 2.95, 10, 'ACTIVO', '231');
INSERT INTO `producto` VALUES (151, 41, 'Vaso de jugo', 1.83, 10, 'ACTIVO', '205');
INSERT INTO `producto` VALUES (152, 41, '1/2 Jarra de jugo', 3.05, 10, 'ACTIVO', '206');
INSERT INTO `producto` VALUES (153, 41, 'Jarra de jugo', 5.09, 10, 'ACTIVO', '207');
INSERT INTO `producto` VALUES (154, 42, 'Batido vaso', 2.54, 10, 'ACTIVO', '214');
INSERT INTO `producto` VALUES (155, 42, 'Batido 1/2 Jarra', 3.56, 10, 'ACTIVO', '215');
INSERT INTO `producto` VALUES (156, 42, 'Batido Jarra', 6.11, 10, 'ACTIVO', '216');
INSERT INTO `producto` VALUES (157, 43, 'Sangría Jarra', 13.94, 10, 'ACTIVO', '241');
INSERT INTO `producto` VALUES (158, 43, 'Sangría 1/2 Jarra', 7.53, 10, 'ACTIVO', '242');
INSERT INTO `producto` VALUES (159, 43, 'Champaña', 13.84, 10, 'ACTIVO', '430');
INSERT INTO `producto` VALUES (160, 43, 'Vino', 23.21, 10, 'ACTIVO', '431');
INSERT INTO `producto` VALUES (161, 43, '1/2 Vino', 13.84, 10, 'ACTIVO', '432');
INSERT INTO `producto` VALUES (162, 43, '1/4 Vino', 9.16, 10, 'ACTIVO', '433');
INSERT INTO `producto` VALUES (163, 43, 'Descorche', 5.70, 10, 'ACTIVO', '434');
INSERT INTO `producto` VALUES (164, 44, 'Vaso de jugo', 2.04, 10, 'ACTIVO', '435');
INSERT INTO `producto` VALUES (165, 44, '1/2 Jarra de jugo', 3.56, 10, 'ACTIVO', '436');
INSERT INTO `producto` VALUES (166, 44, 'Jarra de jugo', 6.11, 10, 'ACTIVO', '437');

-- ----------------------------
-- Table structure for productoingrediente
-- ----------------------------
DROP TABLE IF EXISTS `productoingrediente`;
CREATE TABLE `productoingrediente`  (
  `idProductoingrediente` int(11) NOT NULL AUTO_INCREMENT,
  `idProducto` int(11) NULL DEFAULT NULL,
  `idIngrediente` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idProductoingrediente`) USING BTREE,
  INDEX `idProducto`(`idProducto`) USING BTREE,
  INDEX `idIngrediente`(`idIngrediente`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 477 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of productoingrediente
-- ----------------------------
INSERT INTO `productoingrediente` VALUES (1, 1, 1);
INSERT INTO `productoingrediente` VALUES (2, 1, 2);
INSERT INTO `productoingrediente` VALUES (3, 1, 5);
INSERT INTO `productoingrediente` VALUES (4, 1, 8);
INSERT INTO `productoingrediente` VALUES (5, 1, 17);
INSERT INTO `productoingrediente` VALUES (6, 1, 20);
INSERT INTO `productoingrediente` VALUES (7, 1, 21);
INSERT INTO `productoingrediente` VALUES (8, 2, 1);
INSERT INTO `productoingrediente` VALUES (9, 2, 2);
INSERT INTO `productoingrediente` VALUES (10, 2, 5);
INSERT INTO `productoingrediente` VALUES (11, 2, 8);
INSERT INTO `productoingrediente` VALUES (12, 2, 17);
INSERT INTO `productoingrediente` VALUES (13, 2, 20);
INSERT INTO `productoingrediente` VALUES (14, 2, 21);
INSERT INTO `productoingrediente` VALUES (15, 3, 1);
INSERT INTO `productoingrediente` VALUES (16, 3, 2);
INSERT INTO `productoingrediente` VALUES (17, 3, 5);
INSERT INTO `productoingrediente` VALUES (18, 3, 8);
INSERT INTO `productoingrediente` VALUES (19, 3, 17);
INSERT INTO `productoingrediente` VALUES (20, 3, 20);
INSERT INTO `productoingrediente` VALUES (21, 3, 21);
INSERT INTO `productoingrediente` VALUES (22, 4, 1);
INSERT INTO `productoingrediente` VALUES (23, 4, 2);
INSERT INTO `productoingrediente` VALUES (24, 4, 5);
INSERT INTO `productoingrediente` VALUES (25, 4, 8);
INSERT INTO `productoingrediente` VALUES (26, 4, 17);
INSERT INTO `productoingrediente` VALUES (27, 4, 20);
INSERT INTO `productoingrediente` VALUES (28, 4, 21);
INSERT INTO `productoingrediente` VALUES (29, 5, 17);
INSERT INTO `productoingrediente` VALUES (30, 5, 18);
INSERT INTO `productoingrediente` VALUES (31, 5, 20);
INSERT INTO `productoingrediente` VALUES (32, 5, 22);
INSERT INTO `productoingrediente` VALUES (33, 6, 17);
INSERT INTO `productoingrediente` VALUES (34, 6, 18);
INSERT INTO `productoingrediente` VALUES (35, 6, 20);
INSERT INTO `productoingrediente` VALUES (36, 6, 22);
INSERT INTO `productoingrediente` VALUES (37, 7, 17);
INSERT INTO `productoingrediente` VALUES (38, 7, 18);
INSERT INTO `productoingrediente` VALUES (39, 7, 20);
INSERT INTO `productoingrediente` VALUES (40, 7, 22);
INSERT INTO `productoingrediente` VALUES (41, 8, 17);
INSERT INTO `productoingrediente` VALUES (42, 8, 18);
INSERT INTO `productoingrediente` VALUES (43, 8, 20);
INSERT INTO `productoingrediente` VALUES (44, 8, 22);
INSERT INTO `productoingrediente` VALUES (45, 9, 20);
INSERT INTO `productoingrediente` VALUES (46, 9, 1);
INSERT INTO `productoingrediente` VALUES (47, 9, 5);
INSERT INTO `productoingrediente` VALUES (48, 9, 23);
INSERT INTO `productoingrediente` VALUES (49, 9, 24);
INSERT INTO `productoingrediente` VALUES (50, 10, 20);
INSERT INTO `productoingrediente` VALUES (51, 10, 1);
INSERT INTO `productoingrediente` VALUES (52, 10, 5);
INSERT INTO `productoingrediente` VALUES (53, 10, 23);
INSERT INTO `productoingrediente` VALUES (54, 10, 24);
INSERT INTO `productoingrediente` VALUES (55, 11, 20);
INSERT INTO `productoingrediente` VALUES (56, 11, 1);
INSERT INTO `productoingrediente` VALUES (57, 11, 5);
INSERT INTO `productoingrediente` VALUES (58, 11, 23);
INSERT INTO `productoingrediente` VALUES (59, 11, 24);
INSERT INTO `productoingrediente` VALUES (60, 12, 20);
INSERT INTO `productoingrediente` VALUES (61, 12, 1);
INSERT INTO `productoingrediente` VALUES (62, 12, 5);
INSERT INTO `productoingrediente` VALUES (63, 12, 23);
INSERT INTO `productoingrediente` VALUES (64, 12, 24);
INSERT INTO `productoingrediente` VALUES (65, 13, 20);
INSERT INTO `productoingrediente` VALUES (66, 13, 25);
INSERT INTO `productoingrediente` VALUES (67, 13, 26);
INSERT INTO `productoingrediente` VALUES (68, 13, 27);
INSERT INTO `productoingrediente` VALUES (69, 13, 6);
INSERT INTO `productoingrediente` VALUES (70, 14, 20);
INSERT INTO `productoingrediente` VALUES (71, 14, 25);
INSERT INTO `productoingrediente` VALUES (72, 14, 26);
INSERT INTO `productoingrediente` VALUES (73, 14, 27);
INSERT INTO `productoingrediente` VALUES (74, 14, 6);
INSERT INTO `productoingrediente` VALUES (75, 15, 20);
INSERT INTO `productoingrediente` VALUES (76, 15, 25);
INSERT INTO `productoingrediente` VALUES (77, 15, 26);
INSERT INTO `productoingrediente` VALUES (78, 15, 27);
INSERT INTO `productoingrediente` VALUES (79, 15, 6);
INSERT INTO `productoingrediente` VALUES (80, 16, 1);
INSERT INTO `productoingrediente` VALUES (81, 16, 5);
INSERT INTO `productoingrediente` VALUES (82, 16, 18);
INSERT INTO `productoingrediente` VALUES (83, 16, 20);
INSERT INTO `productoingrediente` VALUES (84, 16, 21);
INSERT INTO `productoingrediente` VALUES (85, 17, 1);
INSERT INTO `productoingrediente` VALUES (86, 17, 5);
INSERT INTO `productoingrediente` VALUES (87, 17, 18);
INSERT INTO `productoingrediente` VALUES (88, 17, 20);
INSERT INTO `productoingrediente` VALUES (89, 17, 21);
INSERT INTO `productoingrediente` VALUES (90, 18, 1);
INSERT INTO `productoingrediente` VALUES (91, 18, 5);
INSERT INTO `productoingrediente` VALUES (92, 18, 18);
INSERT INTO `productoingrediente` VALUES (93, 18, 20);
INSERT INTO `productoingrediente` VALUES (94, 18, 21);
INSERT INTO `productoingrediente` VALUES (95, 19, 1);
INSERT INTO `productoingrediente` VALUES (96, 19, 5);
INSERT INTO `productoingrediente` VALUES (97, 19, 18);
INSERT INTO `productoingrediente` VALUES (98, 19, 20);
INSERT INTO `productoingrediente` VALUES (99, 19, 21);
INSERT INTO `productoingrediente` VALUES (100, 20, 1);
INSERT INTO `productoingrediente` VALUES (101, 20, 29);
INSERT INTO `productoingrediente` VALUES (102, 20, 30);
INSERT INTO `productoingrediente` VALUES (103, 20, 20);
INSERT INTO `productoingrediente` VALUES (104, 20, 21);
INSERT INTO `productoingrediente` VALUES (105, 21, 1);
INSERT INTO `productoingrediente` VALUES (106, 21, 29);
INSERT INTO `productoingrediente` VALUES (107, 21, 30);
INSERT INTO `productoingrediente` VALUES (108, 21, 20);
INSERT INTO `productoingrediente` VALUES (109, 21, 21);
INSERT INTO `productoingrediente` VALUES (110, 22, 1);
INSERT INTO `productoingrediente` VALUES (111, 22, 29);
INSERT INTO `productoingrediente` VALUES (112, 22, 30);
INSERT INTO `productoingrediente` VALUES (113, 22, 20);
INSERT INTO `productoingrediente` VALUES (114, 22, 21);
INSERT INTO `productoingrediente` VALUES (115, 23, 1);
INSERT INTO `productoingrediente` VALUES (116, 23, 29);
INSERT INTO `productoingrediente` VALUES (117, 23, 30);
INSERT INTO `productoingrediente` VALUES (118, 23, 20);
INSERT INTO `productoingrediente` VALUES (119, 23, 21);
INSERT INTO `productoingrediente` VALUES (120, 24, 1);
INSERT INTO `productoingrediente` VALUES (121, 24, 20);
INSERT INTO `productoingrediente` VALUES (122, 24, 29);
INSERT INTO `productoingrediente` VALUES (123, 24, 31);
INSERT INTO `productoingrediente` VALUES (124, 24, 32);
INSERT INTO `productoingrediente` VALUES (125, 25, 1);
INSERT INTO `productoingrediente` VALUES (126, 25, 20);
INSERT INTO `productoingrediente` VALUES (127, 25, 29);
INSERT INTO `productoingrediente` VALUES (128, 25, 31);
INSERT INTO `productoingrediente` VALUES (129, 25, 32);
INSERT INTO `productoingrediente` VALUES (130, 26, 1);
INSERT INTO `productoingrediente` VALUES (131, 26, 20);
INSERT INTO `productoingrediente` VALUES (132, 26, 29);
INSERT INTO `productoingrediente` VALUES (133, 26, 31);
INSERT INTO `productoingrediente` VALUES (134, 26, 32);
INSERT INTO `productoingrediente` VALUES (135, 27, 1);
INSERT INTO `productoingrediente` VALUES (136, 27, 20);
INSERT INTO `productoingrediente` VALUES (137, 27, 29);
INSERT INTO `productoingrediente` VALUES (138, 27, 31);
INSERT INTO `productoingrediente` VALUES (139, 27, 32);
INSERT INTO `productoingrediente` VALUES (140, 28, 33);
INSERT INTO `productoingrediente` VALUES (141, 28, 20);
INSERT INTO `productoingrediente` VALUES (142, 28, 15);
INSERT INTO `productoingrediente` VALUES (143, 28, 32);
INSERT INTO `productoingrediente` VALUES (144, 29, 33);
INSERT INTO `productoingrediente` VALUES (145, 29, 20);
INSERT INTO `productoingrediente` VALUES (146, 29, 15);
INSERT INTO `productoingrediente` VALUES (147, 29, 32);
INSERT INTO `productoingrediente` VALUES (148, 30, 33);
INSERT INTO `productoingrediente` VALUES (149, 30, 20);
INSERT INTO `productoingrediente` VALUES (150, 30, 15);
INSERT INTO `productoingrediente` VALUES (151, 30, 32);
INSERT INTO `productoingrediente` VALUES (152, 31, 33);
INSERT INTO `productoingrediente` VALUES (153, 31, 20);
INSERT INTO `productoingrediente` VALUES (154, 31, 15);
INSERT INTO `productoingrediente` VALUES (155, 31, 32);
INSERT INTO `productoingrediente` VALUES (156, 32, 26);
INSERT INTO `productoingrediente` VALUES (157, 32, 17);
INSERT INTO `productoingrediente` VALUES (158, 32, 2);
INSERT INTO `productoingrediente` VALUES (159, 32, 20);
INSERT INTO `productoingrediente` VALUES (160, 32, 32);
INSERT INTO `productoingrediente` VALUES (161, 33, 26);
INSERT INTO `productoingrediente` VALUES (162, 33, 17);
INSERT INTO `productoingrediente` VALUES (163, 33, 2);
INSERT INTO `productoingrediente` VALUES (164, 33, 20);
INSERT INTO `productoingrediente` VALUES (165, 33, 32);
INSERT INTO `productoingrediente` VALUES (166, 34, 26);
INSERT INTO `productoingrediente` VALUES (167, 34, 17);
INSERT INTO `productoingrediente` VALUES (168, 34, 2);
INSERT INTO `productoingrediente` VALUES (169, 34, 20);
INSERT INTO `productoingrediente` VALUES (170, 34, 32);
INSERT INTO `productoingrediente` VALUES (171, 35, 26);
INSERT INTO `productoingrediente` VALUES (172, 35, 17);
INSERT INTO `productoingrediente` VALUES (173, 35, 2);
INSERT INTO `productoingrediente` VALUES (174, 35, 20);
INSERT INTO `productoingrediente` VALUES (175, 35, 32);
INSERT INTO `productoingrediente` VALUES (176, 36, 15);
INSERT INTO `productoingrediente` VALUES (177, 36, 20);
INSERT INTO `productoingrediente` VALUES (178, 36, 32);
INSERT INTO `productoingrediente` VALUES (179, 36, 34);
INSERT INTO `productoingrediente` VALUES (180, 37, 15);
INSERT INTO `productoingrediente` VALUES (181, 37, 20);
INSERT INTO `productoingrediente` VALUES (182, 37, 32);
INSERT INTO `productoingrediente` VALUES (183, 37, 34);
INSERT INTO `productoingrediente` VALUES (184, 38, 15);
INSERT INTO `productoingrediente` VALUES (185, 38, 20);
INSERT INTO `productoingrediente` VALUES (186, 38, 32);
INSERT INTO `productoingrediente` VALUES (187, 38, 34);
INSERT INTO `productoingrediente` VALUES (188, 39, 15);
INSERT INTO `productoingrediente` VALUES (189, 39, 20);
INSERT INTO `productoingrediente` VALUES (190, 39, 32);
INSERT INTO `productoingrediente` VALUES (191, 39, 34);
INSERT INTO `productoingrediente` VALUES (192, 40, 2);
INSERT INTO `productoingrediente` VALUES (193, 40, 18);
INSERT INTO `productoingrediente` VALUES (194, 40, 20);
INSERT INTO `productoingrediente` VALUES (195, 40, 35);
INSERT INTO `productoingrediente` VALUES (196, 40, 32);
INSERT INTO `productoingrediente` VALUES (197, 41, 2);
INSERT INTO `productoingrediente` VALUES (198, 41, 18);
INSERT INTO `productoingrediente` VALUES (199, 41, 20);
INSERT INTO `productoingrediente` VALUES (200, 41, 35);
INSERT INTO `productoingrediente` VALUES (201, 41, 32);
INSERT INTO `productoingrediente` VALUES (202, 42, 2);
INSERT INTO `productoingrediente` VALUES (203, 42, 18);
INSERT INTO `productoingrediente` VALUES (204, 42, 20);
INSERT INTO `productoingrediente` VALUES (205, 42, 35);
INSERT INTO `productoingrediente` VALUES (206, 42, 32);
INSERT INTO `productoingrediente` VALUES (207, 43, 2);
INSERT INTO `productoingrediente` VALUES (208, 43, 18);
INSERT INTO `productoingrediente` VALUES (209, 43, 20);
INSERT INTO `productoingrediente` VALUES (210, 43, 35);
INSERT INTO `productoingrediente` VALUES (211, 43, 32);
INSERT INTO `productoingrediente` VALUES (212, 44, 2);
INSERT INTO `productoingrediente` VALUES (213, 44, 20);
INSERT INTO `productoingrediente` VALUES (214, 44, 32);
INSERT INTO `productoingrediente` VALUES (215, 44, 34);
INSERT INTO `productoingrediente` VALUES (216, 45, 2);
INSERT INTO `productoingrediente` VALUES (217, 45, 20);
INSERT INTO `productoingrediente` VALUES (218, 45, 32);
INSERT INTO `productoingrediente` VALUES (219, 45, 34);
INSERT INTO `productoingrediente` VALUES (220, 46, 2);
INSERT INTO `productoingrediente` VALUES (221, 46, 20);
INSERT INTO `productoingrediente` VALUES (222, 46, 32);
INSERT INTO `productoingrediente` VALUES (223, 46, 34);
INSERT INTO `productoingrediente` VALUES (224, 47, 2);
INSERT INTO `productoingrediente` VALUES (225, 47, 20);
INSERT INTO `productoingrediente` VALUES (226, 47, 32);
INSERT INTO `productoingrediente` VALUES (227, 47, 34);
INSERT INTO `productoingrediente` VALUES (228, 48, 2);
INSERT INTO `productoingrediente` VALUES (229, 48, 17);
INSERT INTO `productoingrediente` VALUES (230, 48, 18);
INSERT INTO `productoingrediente` VALUES (231, 48, 20);
INSERT INTO `productoingrediente` VALUES (232, 48, 32);
INSERT INTO `productoingrediente` VALUES (233, 48, 8);
INSERT INTO `productoingrediente` VALUES (234, 49, 2);
INSERT INTO `productoingrediente` VALUES (235, 49, 17);
INSERT INTO `productoingrediente` VALUES (236, 49, 18);
INSERT INTO `productoingrediente` VALUES (237, 49, 20);
INSERT INTO `productoingrediente` VALUES (238, 49, 32);
INSERT INTO `productoingrediente` VALUES (239, 49, 8);
INSERT INTO `productoingrediente` VALUES (240, 50, 2);
INSERT INTO `productoingrediente` VALUES (241, 50, 17);
INSERT INTO `productoingrediente` VALUES (242, 50, 18);
INSERT INTO `productoingrediente` VALUES (243, 50, 20);
INSERT INTO `productoingrediente` VALUES (244, 50, 32);
INSERT INTO `productoingrediente` VALUES (245, 50, 8);
INSERT INTO `productoingrediente` VALUES (246, 51, 2);
INSERT INTO `productoingrediente` VALUES (247, 51, 17);
INSERT INTO `productoingrediente` VALUES (248, 51, 18);
INSERT INTO `productoingrediente` VALUES (249, 51, 20);
INSERT INTO `productoingrediente` VALUES (250, 51, 32);
INSERT INTO `productoingrediente` VALUES (251, 51, 8);
INSERT INTO `productoingrediente` VALUES (252, 52, 20);
INSERT INTO `productoingrediente` VALUES (253, 52, 29);
INSERT INTO `productoingrediente` VALUES (254, 52, 30);
INSERT INTO `productoingrediente` VALUES (255, 52, 31);
INSERT INTO `productoingrediente` VALUES (256, 52, 32);
INSERT INTO `productoingrediente` VALUES (257, 53, 20);
INSERT INTO `productoingrediente` VALUES (258, 53, 29);
INSERT INTO `productoingrediente` VALUES (259, 53, 30);
INSERT INTO `productoingrediente` VALUES (260, 53, 31);
INSERT INTO `productoingrediente` VALUES (261, 53, 32);
INSERT INTO `productoingrediente` VALUES (262, 55, 20);
INSERT INTO `productoingrediente` VALUES (263, 55, 29);
INSERT INTO `productoingrediente` VALUES (264, 55, 30);
INSERT INTO `productoingrediente` VALUES (265, 55, 31);
INSERT INTO `productoingrediente` VALUES (266, 55, 32);
INSERT INTO `productoingrediente` VALUES (267, 56, 1);
INSERT INTO `productoingrediente` VALUES (268, 56, 20);
INSERT INTO `productoingrediente` VALUES (269, 56, 3);
INSERT INTO `productoingrediente` VALUES (270, 56, 32);
INSERT INTO `productoingrediente` VALUES (271, 57, 1);
INSERT INTO `productoingrediente` VALUES (272, 57, 20);
INSERT INTO `productoingrediente` VALUES (273, 57, 3);
INSERT INTO `productoingrediente` VALUES (274, 57, 32);
INSERT INTO `productoingrediente` VALUES (275, 58, 1);
INSERT INTO `productoingrediente` VALUES (276, 58, 20);
INSERT INTO `productoingrediente` VALUES (277, 58, 3);
INSERT INTO `productoingrediente` VALUES (278, 58, 32);
INSERT INTO `productoingrediente` VALUES (279, 59, 1);
INSERT INTO `productoingrediente` VALUES (280, 59, 20);
INSERT INTO `productoingrediente` VALUES (281, 59, 3);
INSERT INTO `productoingrediente` VALUES (282, 59, 32);
INSERT INTO `productoingrediente` VALUES (291, 64, 20);
INSERT INTO `productoingrediente` VALUES (292, 64, 32);
INSERT INTO `productoingrediente` VALUES (293, 65, 20);
INSERT INTO `productoingrediente` VALUES (294, 65, 32);
INSERT INTO `productoingrediente` VALUES (295, 66, 20);
INSERT INTO `productoingrediente` VALUES (296, 66, 32);
INSERT INTO `productoingrediente` VALUES (297, 67, 20);
INSERT INTO `productoingrediente` VALUES (298, 67, 32);
INSERT INTO `productoingrediente` VALUES (299, 68, 56);
INSERT INTO `productoingrediente` VALUES (300, 68, 14);
INSERT INTO `productoingrediente` VALUES (301, 68, 2);
INSERT INTO `productoingrediente` VALUES (302, 68, 15);
INSERT INTO `productoingrediente` VALUES (303, 68, 16);
INSERT INTO `productoingrediente` VALUES (304, 68, 18);
INSERT INTO `productoingrediente` VALUES (305, 68, 57);
INSERT INTO `productoingrediente` VALUES (306, 69, 56);
INSERT INTO `productoingrediente` VALUES (307, 69, 3);
INSERT INTO `productoingrediente` VALUES (308, 69, 17);
INSERT INTO `productoingrediente` VALUES (309, 69, 18);
INSERT INTO `productoingrediente` VALUES (310, 69, 57);
INSERT INTO `productoingrediente` VALUES (311, 70, 2);
INSERT INTO `productoingrediente` VALUES (312, 70, 1);
INSERT INTO `productoingrediente` VALUES (313, 70, 84);
INSERT INTO `productoingrediente` VALUES (314, 70, 56);
INSERT INTO `productoingrediente` VALUES (315, 70, 3);
INSERT INTO `productoingrediente` VALUES (316, 70, 57);
INSERT INTO `productoingrediente` VALUES (317, 70, 17);
INSERT INTO `productoingrediente` VALUES (318, 70, 18);
INSERT INTO `productoingrediente` VALUES (319, 71, 58);
INSERT INTO `productoingrediente` VALUES (320, 71, 59);
INSERT INTO `productoingrediente` VALUES (321, 71, 9);
INSERT INTO `productoingrediente` VALUES (322, 71, 56);
INSERT INTO `productoingrediente` VALUES (323, 71, 60);
INSERT INTO `productoingrediente` VALUES (324, 72, 61);
INSERT INTO `productoingrediente` VALUES (325, 72, 62);
INSERT INTO `productoingrediente` VALUES (326, 72, 63);
INSERT INTO `productoingrediente` VALUES (327, 72, 64);
INSERT INTO `productoingrediente` VALUES (328, 72, 65);
INSERT INTO `productoingrediente` VALUES (329, 73, 56);
INSERT INTO `productoingrediente` VALUES (330, 73, 18);
INSERT INTO `productoingrediente` VALUES (331, 73, 59);
INSERT INTO `productoingrediente` VALUES (332, 73, 44);
INSERT INTO `productoingrediente` VALUES (333, 73, 66);
INSERT INTO `productoingrediente` VALUES (334, 74, 62);
INSERT INTO `productoingrediente` VALUES (335, 74, 6);
INSERT INTO `productoingrediente` VALUES (336, 78, 68);
INSERT INTO `productoingrediente` VALUES (337, 80, 68);
INSERT INTO `productoingrediente` VALUES (338, 81, 68);
INSERT INTO `productoingrediente` VALUES (339, 83, 56);
INSERT INTO `productoingrediente` VALUES (340, 70, 3);
INSERT INTO `productoingrediente` VALUES (341, 83, 69);
INSERT INTO `productoingrediente` VALUES (342, 84, 56);
INSERT INTO `productoingrediente` VALUES (343, 84, 1);
INSERT INTO `productoingrediente` VALUES (344, 84, 3);
INSERT INTO `productoingrediente` VALUES (345, 84, 39);
INSERT INTO `productoingrediente` VALUES (346, 84, 87);
INSERT INTO `productoingrediente` VALUES (347, 84, 88);
INSERT INTO `productoingrediente` VALUES (348, 87, 56);
INSERT INTO `productoingrediente` VALUES (349, 87, 1);
INSERT INTO `productoingrediente` VALUES (350, 87, 2);
INSERT INTO `productoingrediente` VALUES (351, 87, 3);
INSERT INTO `productoingrediente` VALUES (352, 87, 39);
INSERT INTO `productoingrediente` VALUES (353, 87, 87);
INSERT INTO `productoingrediente` VALUES (354, 87, 10);
INSERT INTO `productoingrediente` VALUES (355, 88, 37);
INSERT INTO `productoingrediente` VALUES (356, 88, 3);
INSERT INTO `productoingrediente` VALUES (357, 88, 4);
INSERT INTO `productoingrediente` VALUES (358, 88, 10);
INSERT INTO `productoingrediente` VALUES (359, 89, 37);
INSERT INTO `productoingrediente` VALUES (360, 89, 6);
INSERT INTO `productoingrediente` VALUES (361, 89, 5);
INSERT INTO `productoingrediente` VALUES (362, 89, 3);
INSERT INTO `productoingrediente` VALUES (363, 89, 4);
INSERT INTO `productoingrediente` VALUES (364, 89, 10);
INSERT INTO `productoingrediente` VALUES (365, 90, 39);
INSERT INTO `productoingrediente` VALUES (366, 90, 40);
INSERT INTO `productoingrediente` VALUES (367, 90, 3);
INSERT INTO `productoingrediente` VALUES (368, 90, 17);
INSERT INTO `productoingrediente` VALUES (369, 90, 10);
INSERT INTO `productoingrediente` VALUES (370, 91, 11);
INSERT INTO `productoingrediente` VALUES (371, 91, 12);
INSERT INTO `productoingrediente` VALUES (372, 91, 3);
INSERT INTO `productoingrediente` VALUES (373, 91, 10);
INSERT INTO `productoingrediente` VALUES (374, 92, 39);
INSERT INTO `productoingrediente` VALUES (375, 92, 2);
INSERT INTO `productoingrediente` VALUES (376, 92, 18);
INSERT INTO `productoingrediente` VALUES (377, 92, 3);
INSERT INTO `productoingrediente` VALUES (378, 92, 17);
INSERT INTO `productoingrediente` VALUES (379, 92, 10);
INSERT INTO `productoingrediente` VALUES (380, 93, 41);
INSERT INTO `productoingrediente` VALUES (381, 93, 42);
INSERT INTO `productoingrediente` VALUES (382, 93, 43);
INSERT INTO `productoingrediente` VALUES (383, 93, 44);
INSERT INTO `productoingrediente` VALUES (384, 93, 9);
INSERT INTO `productoingrediente` VALUES (385, 93, 10);
INSERT INTO `productoingrediente` VALUES (386, 94, 41);
INSERT INTO `productoingrediente` VALUES (387, 94, 89);
INSERT INTO `productoingrediente` VALUES (388, 94, 43);
INSERT INTO `productoingrediente` VALUES (389, 94, 44);
INSERT INTO `productoingrediente` VALUES (390, 94, 9);
INSERT INTO `productoingrediente` VALUES (391, 94, 10);
INSERT INTO `productoingrediente` VALUES (392, 95, 41);
INSERT INTO `productoingrediente` VALUES (393, 95, 42);
INSERT INTO `productoingrediente` VALUES (394, 95, 89);
INSERT INTO `productoingrediente` VALUES (395, 95, 43);
INSERT INTO `productoingrediente` VALUES (396, 95, 44);
INSERT INTO `productoingrediente` VALUES (397, 95, 9);
INSERT INTO `productoingrediente` VALUES (398, 95, 10);
INSERT INTO `productoingrediente` VALUES (399, 96, 41);
INSERT INTO `productoingrediente` VALUES (400, 96, 8);
INSERT INTO `productoingrediente` VALUES (401, 96, 90);
INSERT INTO `productoingrediente` VALUES (402, 96, 43);
INSERT INTO `productoingrediente` VALUES (403, 96, 44);
INSERT INTO `productoingrediente` VALUES (404, 96, 9);
INSERT INTO `productoingrediente` VALUES (405, 96, 10);
INSERT INTO `productoingrediente` VALUES (406, 97, 41);
INSERT INTO `productoingrediente` VALUES (407, 97, 8);
INSERT INTO `productoingrediente` VALUES (408, 97, 2);
INSERT INTO `productoingrediente` VALUES (409, 97, 18);
INSERT INTO `productoingrediente` VALUES (410, 97, 17);
INSERT INTO `productoingrediente` VALUES (411, 97, 91);
INSERT INTO `productoingrediente` VALUES (412, 97, 41);
INSERT INTO `productoingrediente` VALUES (413, 97, 44);
INSERT INTO `productoingrediente` VALUES (414, 97, 10);
INSERT INTO `productoingrediente` VALUES (415, 98, 45);
INSERT INTO `productoingrediente` VALUES (416, 99, 92);
INSERT INTO `productoingrediente` VALUES (417, 100, 45);
INSERT INTO `productoingrediente` VALUES (418, 100, 92);
INSERT INTO `productoingrediente` VALUES (419, 101, 47);
INSERT INTO `productoingrediente` VALUES (420, 103, 48);
INSERT INTO `productoingrediente` VALUES (421, 103, 49);
INSERT INTO `productoingrediente` VALUES (422, 103, 10);
INSERT INTO `productoingrediente` VALUES (423, 104, 50);
INSERT INTO `productoingrediente` VALUES (424, 104, 51);
INSERT INTO `productoingrediente` VALUES (425, 104, 10);
INSERT INTO `productoingrediente` VALUES (426, 105, 52);
INSERT INTO `productoingrediente` VALUES (427, 105, 52);
INSERT INTO `productoingrediente` VALUES (428, 105, 10);
INSERT INTO `productoingrediente` VALUES (429, 106, 54);
INSERT INTO `productoingrediente` VALUES (430, 107, 2);
INSERT INTO `productoingrediente` VALUES (431, 107, 18);
INSERT INTO `productoingrediente` VALUES (432, 107, 17);
INSERT INTO `productoingrediente` VALUES (433, 107, 8);
INSERT INTO `productoingrediente` VALUES (434, 107, 48);
INSERT INTO `productoingrediente` VALUES (435, 107, 49);
INSERT INTO `productoingrediente` VALUES (436, 108, 11);
INSERT INTO `productoingrediente` VALUES (437, 108, 12);
INSERT INTO `productoingrediente` VALUES (438, 109, 39);
INSERT INTO `productoingrediente` VALUES (439, 109, 33);
INSERT INTO `productoingrediente` VALUES (440, 117, 70);
INSERT INTO `productoingrediente` VALUES (441, 117, 71);
INSERT INTO `productoingrediente` VALUES (442, 117, 72);
INSERT INTO `productoingrediente` VALUES (443, 118, 8);
INSERT INTO `productoingrediente` VALUES (444, 118, 17);
INSERT INTO `productoingrediente` VALUES (445, 118, 2);
INSERT INTO `productoingrediente` VALUES (446, 118, 18);
INSERT INTO `productoingrediente` VALUES (447, 118, 73);
INSERT INTO `productoingrediente` VALUES (448, 119, 74);
INSERT INTO `productoingrediente` VALUES (449, 119, 73);
INSERT INTO `productoingrediente` VALUES (450, 120, 75);
INSERT INTO `productoingrediente` VALUES (451, 120, 76);
INSERT INTO `productoingrediente` VALUES (452, 120, 73);
INSERT INTO `productoingrediente` VALUES (453, 123, 93);
INSERT INTO `productoingrediente` VALUES (454, 123, 94);
INSERT INTO `productoingrediente` VALUES (455, 123, 95);
INSERT INTO `productoingrediente` VALUES (456, 123, 96);
INSERT INTO `productoingrediente` VALUES (457, 123, 97);
INSERT INTO `productoingrediente` VALUES (458, 123, 98);
INSERT INTO `productoingrediente` VALUES (459, 123, 99);
INSERT INTO `productoingrediente` VALUES (460, 110, 68);
INSERT INTO `productoingrediente` VALUES (461, 110, 106);
INSERT INTO `productoingrediente` VALUES (462, 111, 68);
INSERT INTO `productoingrediente` VALUES (463, 111, 107);
INSERT INTO `productoingrediente` VALUES (464, 112, 68);
INSERT INTO `productoingrediente` VALUES (465, 112, 108);
INSERT INTO `productoingrediente` VALUES (466, 112, 3);
INSERT INTO `productoingrediente` VALUES (467, 112, 102);
INSERT INTO `productoingrediente` VALUES (468, 113, 103);
INSERT INTO `productoingrediente` VALUES (469, 114, 68);
INSERT INTO `productoingrediente` VALUES (470, 114, 107);
INSERT INTO `productoingrediente` VALUES (471, 115, 68);
INSERT INTO `productoingrediente` VALUES (472, 115, 106);
INSERT INTO `productoingrediente` VALUES (473, 115, 104);
INSERT INTO `productoingrediente` VALUES (474, 116, 106);
INSERT INTO `productoingrediente` VALUES (475, 116, 105);
INSERT INTO `productoingrediente` VALUES (476, 116, 68);

-- ----------------------------
-- Table structure for productos
-- ----------------------------
DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos`  (
  `idProducto` int(11) NOT NULL AUTO_INCREMENT,
  `idMenu` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nombreProducto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `descProducto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `precioProducto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `estadoProducto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `skuProducto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `imgProducto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `varsProducto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ingsProducto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tamProducto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idProducto`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of productos
-- ----------------------------
INSERT INTO `productos` VALUES (1, '1', 'Producto de Prueba', 'Desc', '25', 'ACTIVO', '123', '01', 'Regular,Especial', '1', '{\"Normal\":\"0\"}');
INSERT INTO `productos` VALUES (2, '1', 'Producto de Prueba 2', 'Desc', '123', 'ACTIVO', '123', '01', 'Regular,Light', '1', '{\"Normal\":\"0\"}');
INSERT INTO `productos` VALUES (3, '2', 'Bebida', 'Desc', '10', 'ACTIVO', '123', '01', 'Regular,Con hielo', '1', '{\"Normal\":\"0\"}');

-- ----------------------------
-- Table structure for relaciones
-- ----------------------------
DROP TABLE IF EXISTS `relaciones`;
CREATE TABLE `relaciones`  (
  `idRel` int(11) NOT NULL AUTO_INCREMENT,
  `idIngrediente` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `idProducto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nombreRel` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `valRel` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idRel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of relaciones
-- ----------------------------
INSERT INTO `relaciones` VALUES (7, '1', '1', NULL, '0.100');
INSERT INTO `relaciones` VALUES (8, '1', '2', NULL, '120');

-- ----------------------------
-- Table structure for repartidores
-- ----------------------------
DROP TABLE IF EXISTS `repartidores`;
CREATE TABLE `repartidores`  (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for submenu
-- ----------------------------
DROP TABLE IF EXISTS `submenu`;
CREATE TABLE `submenu`  (
  `idSubmenu` int(11) NOT NULL AUTO_INCREMENT,
  `idMenu` int(11) NULL DEFAULT NULL,
  `nombreSubmenu` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `estadoSubmenu` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idSubmenu`) USING BTREE,
  INDEX `idMenu`(`idMenu`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of submenu
-- ----------------------------
INSERT INTO `submenu` VALUES (1, 1, 'Ensaladas', 'ACTIVO');
INSERT INTO `submenu` VALUES (2, 1, 'Bocaditos', 'ACTIVO');
INSERT INTO `submenu` VALUES (3, 1, 'Sopa del día', 'ACTIVO');
INSERT INTO `submenu` VALUES (4, 1, 'Crema del día', 'ACTIVO');
INSERT INTO `submenu` VALUES (5, 2, 'Espagueti', 'ACTIVO');
INSERT INTO `submenu` VALUES (6, 2, 'Lasañas', 'ACTIVO');
INSERT INTO `submenu` VALUES (7, 2, 'Canelones', 'ACTIVO');
INSERT INTO `submenu` VALUES (8, 2, 'Raviolis', 'ACTIVO');
INSERT INTO `submenu` VALUES (9, 2, 'Fetuccini', 'ACTIVO');
INSERT INTO `submenu` VALUES (10, 3, 'Carnes', 'ACTIVO');
INSERT INTO `submenu` VALUES (11, 4, 'Di Rulo', 'ACTIVO');
INSERT INTO `submenu` VALUES (12, 4, 'Camarón', 'ACTIVO');
INSERT INTO `submenu` VALUES (13, 4, 'Carnes', 'ACTIVO');
INSERT INTO `submenu` VALUES (14, 4, '4 Estaciones', 'ACTIVO');
INSERT INTO `submenu` VALUES (15, 4, 'Casera', 'ACTIVO');
INSERT INTO `submenu` VALUES (16, 4, 'Hawaiana', 'ACTIVO');
INSERT INTO `submenu` VALUES (17, 4, 'Tropical', 'ACTIVO');
INSERT INTO `submenu` VALUES (18, 4, 'Tradicional', 'ACTIVO');
INSERT INTO `submenu` VALUES (19, 4, 'Chorizo', 'ACTIVO');
INSERT INTO `submenu` VALUES (20, 4, 'Campestre', 'ACTIVO');
INSERT INTO `submenu` VALUES (21, 4, 'Tocino', 'ACTIVO');
INSERT INTO `submenu` VALUES (22, 4, 'Longaniza', 'ACTIVO');
INSERT INTO `submenu` VALUES (23, 4, 'Vegetariana', 'ACTIVO');
INSERT INTO `submenu` VALUES (24, 4, 'Frutas', 'ACTIVO');
INSERT INTO `submenu` VALUES (25, 4, 'Napolitana', 'ACTIVO');
INSERT INTO `submenu` VALUES (26, 4, '2 Ingredientes', 'ACTIVO');
INSERT INTO `submenu` VALUES (27, 4, 'Básica', 'ACTIVO');
INSERT INTO `submenu` VALUES (28, 5, 'Crepes', 'ACTIVO');
INSERT INTO `submenu` VALUES (29, 5, 'Postres', 'ACTIVO');
INSERT INTO `submenu` VALUES (30, 5, 'Ensaladas de Frutas', 'ACTIVO');
INSERT INTO `submenu` VALUES (31, 5, 'Copa', 'ACTIVO');
INSERT INTO `submenu` VALUES (32, 6, 'Limonada', 'ACTIVO');
INSERT INTO `submenu` VALUES (33, 6, 'Té', 'ACTIVO');
INSERT INTO `submenu` VALUES (34, 6, 'Milkshake', 'ACTIVO');
INSERT INTO `submenu` VALUES (35, 6, 'Gaseosa', 'ACTIVO');
INSERT INTO `submenu` VALUES (36, 6, 'Agua', 'ACTIVO');
INSERT INTO `submenu` VALUES (37, 6, 'Cerveza', 'ACTIVO');
INSERT INTO `submenu` VALUES (38, 6, 'Agua Aromática', 'ACTIVO');
INSERT INTO `submenu` VALUES (39, 6, 'Café', 'ACTIVO');
INSERT INTO `submenu` VALUES (40, 6, 'Chocolate', 'ACTIVO');
INSERT INTO `submenu` VALUES (41, 6, 'Jugo', 'ACTIVO');
INSERT INTO `submenu` VALUES (42, 6, 'Batido', 'ACTIVO');
INSERT INTO `submenu` VALUES (43, 6, 'Vino', 'ACTIVO');
INSERT INTO `submenu` VALUES (44, 6, 'Jugo de Naranja', 'ACTIVO');

-- ----------------------------
-- Table structure for transactions
-- ----------------------------
DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions`  (
  `idTrans` int(255) NOT NULL AUTO_INCREMENT,
  `userTrans` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `codIngTrans` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `dateTrans` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `prevStockTrans` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `valTrans` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `typeTrans` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sucursalTrans` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nomIngTrans` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idTrans`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of transactions
-- ----------------------------
INSERT INTO `transactions` VALUES (1, 'frank', '00001', '2018-04-28 04:01:45', '50', '2', 'AGREGAR', 'Cotocollao', 'Jamon');
INSERT INTO `transactions` VALUES (2, 'frank', '00001', '2018-04-28 04:02:16', '52', '2', 'AGREGAR', 'Cotocollao', 'Jamon');
INSERT INTO `transactions` VALUES (3, 'frank', '00002', '2018-04-28 04:02:16', '83', '3', 'EXTRAER', 'Cotocollao', 'Jamon');
INSERT INTO `transactions` VALUES (4, 'frank', '00001', '2018-04-28 04:06:21', '58', '2', 'AGREGAR', 'Cotocollao', 'Jamón');
INSERT INTO `transactions` VALUES (5, 'frank', '00002', '2018-04-28 04:06:21', '80', '3', 'EXTRAER', 'Cotocollao', 'Champiñoness');
INSERT INTO `transactions` VALUES (6, 'frank', '00001', '2018-04-28 04:06:44', '60', '2', 'AGREGAR', 'Cotocollao', 'Jamón');
INSERT INTO `transactions` VALUES (7, 'frank', '00003', '2018-04-28 04:06:45', '26', '4', 'AGREGAR', 'Cotocollao', 'Tomate');
INSERT INTO `transactions` VALUES (8, 'frank', '00005', '2018-04-28 04:06:45', '73', '6', 'AGREGAR', 'Cotocollao', 'Pollo');
INSERT INTO `transactions` VALUES (9, 'frank', '00007', '2018-04-28 04:06:45', '44', '8', 'AGREGAR', 'Cotocollao', 'Aceitunas');
INSERT INTO `transactions` VALUES (10, 'frank', '00002', '2018-04-28 04:06:45', '77', '3', 'EXTRAER', 'Cotocollao', 'Champiñoness');
INSERT INTO `transactions` VALUES (11, 'frank', '00004', '2018-04-28 04:06:46', '39', '5', 'EXTRAER', 'Cotocollao', 'Perejil');
INSERT INTO `transactions` VALUES (12, 'frank', '00006', '2018-04-28 04:06:46', '75', '7', 'EXTRAER', 'Cotocollao', 'Carne');
INSERT INTO `transactions` VALUES (13, 'frank', '00008', '2018-04-28 04:06:46', '40', '9', 'EXTRAER', 'Cotocollao', 'Parmesano');
INSERT INTO `transactions` VALUES (14, 'frank', '00001', '2018-04-28 04:36:16', '62', '12', 'AGREGAR', 'Cotocollao', 'Jamón');
INSERT INTO `transactions` VALUES (15, 'frank', '00003', '2018-04-28 04:36:16', '30', '32', 'AGREGAR', 'Cotocollao', 'Tomate');
INSERT INTO `transactions` VALUES (16, 'frank', '00005', '2018-04-28 04:36:16', '79', '21', 'AGREGAR', 'Cotocollao', 'Pollo');
INSERT INTO `transactions` VALUES (17, 'frank', '00032', '2018-04-28 04:36:16', '12', '21', 'AGREGAR', 'Cotocollao', 'Salsa de tocino');
INSERT INTO `transactions` VALUES (18, 'frank', '00034', '2018-04-28 04:36:17', '48', '32', 'AGREGAR', 'Cotocollao', 'Salsa blanca');
INSERT INTO `transactions` VALUES (19, 'frank', '00036', '2018-04-28 04:36:17', '40', '12', 'AGREGAR', 'Cotocollao', 'Pasta de lasaña');
INSERT INTO `transactions` VALUES (20, 'frank', '00038', '2018-04-28 04:36:17', '73', '12', 'AGREGAR', 'Cotocollao', 'Pasta de tomate');
INSERT INTO `transactions` VALUES (21, 'frank', '00055', '2018-04-28 04:36:17', '84', '12', 'AGREGAR', 'Cotocollao', 'Choclo');
INSERT INTO `transactions` VALUES (22, 'frank', '00057', '2018-04-28 04:36:17', '68', '12', 'AGREGAR', 'Cotocollao', 'Alberja');
INSERT INTO `transactions` VALUES (23, 'frank', '00059', '2018-04-28 04:36:18', '27', '12', 'AGREGAR', 'Cotocollao', 'Mayonesa');
INSERT INTO `transactions` VALUES (24, 'frank', '00002', '2018-04-28 04:36:18', '74', '23', 'EXTRAER', 'Cotocollao', 'Champiñoness');
INSERT INTO `transactions` VALUES (25, 'frank', '00004', '2018-04-28 04:36:18', '34', '43', 'EXTRAER', 'Cotocollao', 'Perejil');
INSERT INTO `transactions` VALUES (26, 'frank', '00006', '2018-04-28 04:36:18', '68', '12', 'EXTRAER', 'Cotocollao', 'Carne');
INSERT INTO `transactions` VALUES (27, 'frank', '00033', '2018-04-28 04:36:18', '57', '23', 'EXTRAER', 'Cotocollao', 'Pasta de tomate');
INSERT INTO `transactions` VALUES (28, 'frank', '00035', '2018-04-28 04:36:19', '9', '12', 'EXTRAER', 'Cotocollao', 'Camarón adobado con cebolla');
INSERT INTO `transactions` VALUES (29, 'frank', '00037', '2018-04-28 04:36:19', '15', '12', 'EXTRAER', 'Cotocollao', 'Pollo en salsa bechamel');
INSERT INTO `transactions` VALUES (30, 'frank', '00056', '2018-04-28 04:36:19', '31', '12', 'EXTRAER', 'Cotocollao', 'Papa');
INSERT INTO `transactions` VALUES (31, 'frank', '00058', '2018-04-28 04:36:19', '53', '12', 'EXTRAER', 'Cotocollao', 'Zanahoria');
INSERT INTO `transactions` VALUES (32, 'frank', '00060', '2018-04-28 04:36:19', '88', '12', 'EXTRAER', 'Cotocollao', 'Rollitos de mortadela');
INSERT INTO `transactions` VALUES (33, 'frank', '00001', '2018-04-28 04:37:01', '79', '50', 'EXTRAER', 'Cotocollao', 'Jamón');
INSERT INTO `transactions` VALUES (34, 'frank', '00001', '2018-04-28 04:37:40', '29', '12', 'EXTRAER', 'Cotocollao', 'Jamón');
INSERT INTO `transactions` VALUES (35, 'frank', '00001', '2018-04-28 04:39:50', '74', '2', 'EXTRAER', '1', 'Jamón');
INSERT INTO `transactions` VALUES (36, 'frank', '00002', '2018-04-28 04:39:50', '51', '2', 'EXTRAER', '1', 'Champiñoness');
INSERT INTO `transactions` VALUES (37, 'frank', '00003', '2018-04-28 04:39:51', '62', '3', 'EXTRAER', '1', 'Tomate');
INSERT INTO `transactions` VALUES (38, 'frank', '00001', '2018-04-28 04:41:52', '17', '2', 'AGREGAR', '', 'Jamón');
INSERT INTO `transactions` VALUES (39, 'frank', '00003', '2018-04-28 04:41:52', '7', '4', 'AGREGAR', '', 'Tomate');
INSERT INTO `transactions` VALUES (40, 'frank', '00002', '2018-04-28 04:41:53', '63', '3', 'EXTRAER', '', 'Champiñoness');
INSERT INTO `transactions` VALUES (41, 'frank', '00001', '2018-04-28 04:42:30', '79', '2', 'AGREGAR', 'Villaflora', 'Jamón');
INSERT INTO `transactions` VALUES (42, 'frank', '00003', '2018-04-28 04:42:31', '79', '4', 'AGREGAR', 'Villaflora', 'Tomate');
INSERT INTO `transactions` VALUES (43, 'frank', '00002', '2018-04-28 04:42:31', '30', '3', 'EXTRAER', 'Villaflora', 'Champiñoness');
INSERT INTO `transactions` VALUES (44, 'frank', '00001', '2018-04-28 04:45:58', '72', '10', 'AGREGAR', 'Quito Sur', 'Jamón');
INSERT INTO `transactions` VALUES (45, 'frank', '00001', '2018-04-28 04:46:12', '82', '10', 'EXTRAER', 'Cotocollao', 'Jamón');
INSERT INTO `transactions` VALUES (46, 'frank', '00072', '2018-04-28 04:46:46', '68', '10', 'AGREGAR', 'Quito Sur', 'Pan Dirulo');
INSERT INTO `transactions` VALUES (47, 'frank', '00088', '2018-04-28 04:46:46', '14', '20', 'AGREGAR', 'Quito Sur', 'Brocoli');
INSERT INTO `transactions` VALUES (48, 'frank', '00001', '2018-04-28 04:47:03', '72', '10', 'AGREGAR', 'Quito Sur', 'Jamón');
INSERT INTO `transactions` VALUES (49, 'frank', '00001', '2018-04-28 04:47:27', '19', '10', 'AGREGAR', 'Cotocollao', 'Jamón');
INSERT INTO `transactions` VALUES (50, 'frank', '00001', '2018-04-28 04:50:16', '82', '10', 'AGREGAR', 'Quito Sur', 'Jamón');
INSERT INTO `transactions` VALUES (51, 'frank', '00003', '2018-04-28 04:50:17', '59', '10', 'AGREGAR', 'Quito Sur', 'Tomate');
INSERT INTO `transactions` VALUES (52, 'frank', '00005', '2018-04-28 04:50:17', '100', '10', 'AGREGAR', 'Quito Sur', 'Pollo');
INSERT INTO `transactions` VALUES (53, 'frank', '00041', '2018-04-28 04:50:17', '68', '10', 'AGREGAR', 'Quito Sur', 'Rollitos de pasta relleno de salsa de tomate, camarón y queso La Merced');
INSERT INTO `transactions` VALUES (54, 'frank', '00043', '2018-04-28 04:50:17', '25', '10', 'AGREGAR', 'Quito Sur', 'Queso parmesano La Merced');
INSERT INTO `transactions` VALUES (55, 'frank', '00002', '2018-04-28 04:50:17', '49', '10', 'EXTRAER', 'Cotocollao', 'Champiñoness');
INSERT INTO `transactions` VALUES (56, 'frank', '00004', '2018-04-28 04:50:18', '-9', '10', 'EXTRAER', 'Cotocollao', 'Perejil');
INSERT INTO `transactions` VALUES (57, 'frank', '00042', '2018-04-28 04:50:18', '36', '10', 'EXTRAER', 'Cotocollao', 'Salsa napolitana');
INSERT INTO `transactions` VALUES (58, 'frank', '00044', '2018-04-28 04:50:18', '47', '10', 'EXTRAER', 'Cotocollao', 'Relleno de queso ricota');
INSERT INTO `transactions` VALUES (59, 'burton', '00004', '2018-05-30 18:01:53', '-19', '10', 'AGREGAR', 'Quito Sur', 'Perejil');
INSERT INTO `transactions` VALUES (60, 'burton', '00001', '2018-07-12 22:38:55', '92', '10', 'AGREGAR', 'Quito Sur', 'Jamón');
INSERT INTO `transactions` VALUES (61, 'Burton', '00001', '2019-01-27 05:51:10', '96', '10', 'EXTRAER', 'Cotocollao', 'Jamón');
INSERT INTO `transactions` VALUES (62, 'Burton', '00001', '2019-01-27 05:51:20', '96', '10', 'EXTRAER', 'Cotocollao', 'Jamón');
INSERT INTO `transactions` VALUES (63, 'Burton', '00001', '2019-01-27 05:51:56', '96', '5', 'AGREGAR', 'Quito Sur', 'Jamón');
INSERT INTO `transactions` VALUES (64, 'Burton', '00001', '2019-01-27 05:52:17', '101', '26', 'EXTRAER', 'Cotocollao', 'Jamón');
INSERT INTO `transactions` VALUES (65, 'Burton', '00001', '2019-03-23 05:22:15', '75', '20', 'EXTRAER', 'Cotocollao', 'Jamón');
INSERT INTO `transactions` VALUES (66, 'burton', '00001', '2019-04-30 01:47:54', '55', '5', 'AGREGAR', 'Quito Sur', 'Jamón');
INSERT INTO `transactions` VALUES (67, 'burton', '00001', '2019-05-25 17:54:22', '60', '11', 'AGREGAR', 'Quito Sur', 'Jamón');
INSERT INTO `transactions` VALUES (68, 'burton', '00001', '2019-05-26 20:07:37', '71', '20', 'EXTRAER', 'Cotocollao', 'Jamón');
INSERT INTO `transactions` VALUES (69, 'burton', '00001', '2019-05-26 23:45:38', '51', '9', 'AGREGAR', 'Quito Sur', 'Jamón');
INSERT INTO `transactions` VALUES (70, 'burton', '00001', '2019-05-28 02:17:56', '57', '15', 'AGREGAR', 'Quito Sur', 'Jamón');
INSERT INTO `transactions` VALUES (71, 'burton', '00001', '2019-05-28 02:18:12', '72', '20', 'EXTRAER', 'Cotocollao', 'Jamón');
INSERT INTO `transactions` VALUES (72, 'burton', '00001', '2019-06-12 04:31:19', '48', '10', 'AGREGAR', 'Quito Sur', 'Jamón');
INSERT INTO `transactions` VALUES (73, 'burton', '00001', '2019-06-12 04:33:51', '58', '12', 'AGREGAR', 'Quito Sur', 'Jamón');

-- ----------------------------
-- Table structure for turnos
-- ----------------------------
DROP TABLE IF EXISTS `turnos`;
CREATE TABLE `turnos`  (
  `idTurno` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `fechaTurno` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tipoTurno` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `saldoTurno` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `msgTurno` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `fechaModif` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `finalTurno` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idTurno`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of turnos
-- ----------------------------
INSERT INTO `turnos` VALUES (1, '1', '2017-07-10 22:51:08', 'cierre', '1000', NULL, NULL, NULL);
INSERT INTO `turnos` VALUES (2, '1', '2019-05-28 22:47:57', 'cierre', '100', '.', '2019-05-28 23:26:45', '50');
INSERT INTO `turnos` VALUES (3, '1', '2019-05-28 23:27:45', 'cierre', '150', '.', '2019-05-28 23:28:07', '50');
INSERT INTO `turnos` VALUES (4, '1', '2019-05-28 23:28:23', 'cierre', '150', '.', '2019-05-28 23:33:40', '160');
INSERT INTO `turnos` VALUES (5, '1', '2019-05-28 23:40:26', 'cierre', '100', '.', '2019-05-29 00:43:11', '200');
INSERT INTO `turnos` VALUES (6, '1', '2019-05-29 00:44:04', 'cierre', '500', '.', '2019-05-29 01:32:48', '800');
INSERT INTO `turnos` VALUES (7, '1', '2019-05-29 19:13:56', 'cierre', '20000', 'Apertura de Prueba', '2019-05-29 19:24:54', '21000');
INSERT INTO `turnos` VALUES (8, '1', '2019-05-29 19:32:17', 'cierre', '20.000', 'APERTURA DE PRUEBA GERARDO', '2019-05-29 20:04:15', '21000');
INSERT INTO `turnos` VALUES (9, '1', '2019-05-29 20:08:21', 'cierre', '1', '1', '2019-06-04 16:49:55', '12451254');
INSERT INTO `turnos` VALUES (10, '1', '2019-06-04 16:50:48', 'cierre', '5142512', 'Turno matutino', '2019-06-11 22:55:18', '31243876576');
INSERT INTO `turnos` VALUES (11, '1', '2019-06-11 22:57:29', 'cierre', '50', 'hjm', '2019-09-13 16:05:51', '123');
INSERT INTO `turnos` VALUES (12, '1', '2019-09-13 16:06:17', 'cierre', '123', 'Hola', '2019-09-15 15:44:59', '12345678');

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario`  (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `passwordUsuario` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nombreUsuario` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idPerfil` int(11) NULL DEFAULT NULL,
  `cedulaUsuario` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fechaingresoUsuario` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nombresUsuario` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `apellidosUsuario` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idEstablecimiento` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `statusUsuario` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `temaUsuario` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lastLogin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sidebar` int(1) UNSIGNED ZEROFILL NULL DEFAULT 0,
  `fullwidth` int(1) UNSIGNED ZEROFILL NULL DEFAULT 0,
  PRIMARY KEY (`idUsuario`) USING BTREE,
  INDEX `idPerfil`(`idPerfil`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES (3, 'burton', 'burton', 7, '1928374545', '2019-09-14', 'Frank', 'Montagne', '1', '1', 'dark', '2019-09-17 00:36:19', 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
