/*
 Navicat Premium Data Transfer

 Source Server         : PruebaP
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : bluzbksekyxeep752rnd-mysql.services.clever-cloud.com:3306
 Source Schema         : bluzbksekyxeep752rnd

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 10/05/2022 22:00:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Cliente
-- ----------------------------
DROP TABLE IF EXISTS `Cliente`;
CREATE TABLE `Cliente`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Apellido` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Direccion` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Telefono` int(10) NULL DEFAULT NULL,
  `Cedula` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Fecha_Nacimiento` date NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Cliente
-- ----------------------------
INSERT INTO `Cliente` VALUES (32, 'Norvin', 'Gutierrez', 'De la bomba el calvario 1 Cuadra y media al oeste', 58678964, '161-160601-1003J', '2001-06-16');
INSERT INTO `Cliente` VALUES (33, 'Saul', 'Artola', 'De la Gsolinera UNO 1C al Sur y media al oeste', 82226571, '441-180599-1001R', '1999-05-18');

-- ----------------------------
-- Table structure for Departamentos
-- ----------------------------
DROP TABLE IF EXISTS `Departamentos`;
CREATE TABLE `Departamentos`  (
  `Departamento` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Departamentos
-- ----------------------------
INSERT INTO `Departamentos` VALUES ('Boaco', 1);
INSERT INTO `Departamentos` VALUES ('Carazo', 2);
INSERT INTO `Departamentos` VALUES ('Chinandega', 3);
INSERT INTO `Departamentos` VALUES ('Chontales', 4);
INSERT INTO `Departamentos` VALUES ('Estelí', 5);
INSERT INTO `Departamentos` VALUES ('Granada', 6);
INSERT INTO `Departamentos` VALUES ('Jinotega', 7);
INSERT INTO `Departamentos` VALUES ('León', 8);
INSERT INTO `Departamentos` VALUES ('Madriz', 9);
INSERT INTO `Departamentos` VALUES ('Managua', 10);
INSERT INTO `Departamentos` VALUES ('Masaya', 11);
INSERT INTO `Departamentos` VALUES ('Matagalpa', 12);
INSERT INTO `Departamentos` VALUES ('Nueva Segovia', 13);
INSERT INTO `Departamentos` VALUES ('Río san Juan', 14);

-- ----------------------------
-- Table structure for Sucursales
-- ----------------------------
DROP TABLE IF EXISTS `Sucursales`;
CREATE TABLE `Sucursales`  (
  `id_Sucursal` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Sucursal` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Departamento` int(11) NULL DEFAULT NULL,
  `direccion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_Sucursal`) USING BTREE,
  INDEX `fk_departamento_sucursal`(`Departamento`) USING BTREE,
  CONSTRAINT `fk_departamento_sucursal` FOREIGN KEY (`Departamento`) REFERENCES `Departamentos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Sucursales
-- ----------------------------
INSERT INTO `Sucursales` VALUES (1, 'Jamens Pollos Estelí', 5, 'De repuestos cristo rey, 1 cuadra y media al oeste.');
INSERT INTO `Sucursales` VALUES (3, 'Jamens Pollos Dimitro', 10, 'De la UNI IES 2 cuadras al sureste 2 al norte');
INSERT INTO `Sucursales` VALUES (4, 'Jamens Pollos Estanzuela', 5, 'Salto de la Estanzuela 1C al Norte');
INSERT INTO `Sucursales` VALUES (5, 'Jamens Pollos Plaza inter', 10, 'Modulo 1 Plaza inter');
INSERT INTO `Sucursales` VALUES (6, 'Jamens Pollo Ciudad Dario                                       ', 12, 'De gasolinera panteoncito, 1 c al sur y 1/2 al oeste. Ciudad Dario.');
INSERT INTO `Sucursales` VALUES (9, 'Jamens Pollos Sebaco', 12, 'Frente a BAC');
INSERT INTO `Sucursales` VALUES (11, 'Jamens Pollo Matagalpa', 12, 'Frente al parque Morazan, costado norte de la iglesia');
INSERT INTO `Sucursales` VALUES (12, ' Jamens Pollo Cuidad Dario                     ', 12, 'alla por donde esta hechado el perro');

-- ----------------------------
-- Table structure for bitacora_Login
-- ----------------------------
DROP TABLE IF EXISTS `bitacora_Login`;
CREATE TABLE `bitacora_Login`  (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NULL DEFAULT NULL,
  `fecha_Inicio_Sesion` date NULL DEFAULT NULL,
  `hora_Inicio_Sesion` time(0) NULL DEFAULT NULL,
  `fecha_Cierre_Sesion` date NULL DEFAULT NULL,
  `hora_Cierre_Sesion` time(0) NULL DEFAULT NULL,
  `ip_Maquina` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_registro`) USING BTREE,
  INDEX `fk_id_user_bitacora_ususario`(`id_user`) USING BTREE,
  CONSTRAINT `fk_id_user_bitacora_ususario` FOREIGN KEY (`id_user`) REFERENCES `usuarios` (`iduser`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 411 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bitacora_Login
-- ----------------------------
INSERT INTO `bitacora_Login` VALUES (308, 1, '2022-04-18', '20:25:25', '2022-04-18', '20:38:30', '2C6FC9286101');
INSERT INTO `bitacora_Login` VALUES (309, 1, '2022-04-18', '21:10:08', '2022-04-18', '21:30:08', '2C6FC9286101');
INSERT INTO `bitacora_Login` VALUES (310, 1, '2022-04-18', '23:48:02', '2022-04-18', '23:52:08', '00FF4DFD79B4');
INSERT INTO `bitacora_Login` VALUES (311, 1, '2022-04-19', '00:25:14', NULL, NULL, 'D0DF9A5B593B');
INSERT INTO `bitacora_Login` VALUES (312, 1, '2022-04-19', '14:33:49', NULL, NULL, '2C6FC9286101');
INSERT INTO `bitacora_Login` VALUES (313, 2, '2022-04-19', '14:50:54', '2022-04-19', '14:51:21', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (314, 2, '2022-04-19', '15:31:31', '2022-04-19', '15:32:03', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (315, 2, '2022-04-19', '15:34:57', '2022-04-19', '15:35:33', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (316, 2, '2022-04-19', '15:47:21', '2022-04-19', '15:48:53', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (317, 1, '2022-04-19', '15:47:20', '2022-04-19', '15:49:57', '80D21DE8912B');
INSERT INTO `bitacora_Login` VALUES (318, 2, '2022-04-19', '16:21:45', '2022-04-19', '16:22:04', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (319, 2, '2022-04-19', '16:22:47', '2022-04-19', '16:22:58', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (320, 17, '2022-04-19', '16:23:12', '2022-04-19', '16:23:26', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (321, 17, '2022-04-19', '16:24:49', '2022-04-19', '16:25:36', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (322, 1, '2022-04-19', '16:25:36', '2022-04-19', '16:28:23', '80D21DE8912B');
INSERT INTO `bitacora_Login` VALUES (323, 4, '2022-04-19', '16:28:41', '2022-04-19', '16:28:59', '80D21DE8912B');
INSERT INTO `bitacora_Login` VALUES (324, 2, '2022-04-19', '16:30:27', '2022-04-19', '16:30:58', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (325, 2, '2022-04-19', '16:44:36', '2022-04-19', '16:52:36', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (326, 2, '2022-04-19', '16:55:24', '2022-04-19', '16:56:32', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (327, 2, '2022-04-19', '16:58:01', '2022-04-19', '16:58:25', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (328, 2, '2022-04-19', '17:02:19', NULL, NULL, '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (329, 2, '2022-04-19', '17:04:53', '2022-04-19', '17:05:59', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (330, 1, '2022-04-19', '17:07:08', '2022-04-19', '17:15:41', '80D21DE8912B');
INSERT INTO `bitacora_Login` VALUES (331, 2, '2022-04-19', '17:12:11', '2022-04-19', '17:12:33', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (332, 2, '2022-04-19', '17:15:25', '2022-04-19', '17:15:41', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (333, 2, '2022-04-19', '17:28:15', '2022-04-19', '17:29:02', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (334, 2, '2022-04-19', '17:29:43', '2022-04-19', '17:30:57', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (335, 2, '2022-04-19', '23:09:45', NULL, NULL, '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (336, 2, '2022-04-19', '23:28:33', '2022-04-19', '23:29:14', '80D21DE8912B');
INSERT INTO `bitacora_Login` VALUES (337, 2, '2022-04-19', '23:33:48', '2022-04-19', '23:34:23', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (338, 2, '2022-04-19', '23:38:11', '2022-04-19', '23:44:06', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (339, 2, '2022-04-19', '23:45:59', '2022-04-19', '23:46:12', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (340, 2, '2022-04-19', '23:46:43', '2022-04-19', '23:46:52', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (341, 2, '2022-04-20', '00:14:38', '2022-04-20', '00:15:14', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (342, 2, '2022-04-20', '00:15:49', NULL, NULL, '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (343, 2, '2022-04-20', '00:17:05', '2022-04-20', '00:20:37', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (344, 2, '2022-04-20', '00:24:55', '2022-04-20', '00:27:59', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (345, 1, '2022-04-20', '00:29:12', '2022-04-20', '00:29:38', '80D21DE8912B');
INSERT INTO `bitacora_Login` VALUES (346, 1, '2022-04-20', '00:30:44', '2022-04-20', '00:31:23', '80D21DE8912B');
INSERT INTO `bitacora_Login` VALUES (347, 2, '2022-04-20', '00:45:57', '2022-04-20', '00:46:43', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (348, 2, '2022-04-20', '00:49:05', '2022-04-20', '00:49:24', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (349, 2, '2022-04-20', '00:54:32', '2022-04-20', '00:55:18', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (350, 2, '2022-04-20', '00:58:48', '2022-04-20', '01:00:42', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (351, 2, '2022-04-20', '01:01:31', '2022-04-20', '01:04:05', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (352, 2, '2022-04-20', '01:05:13', '2022-04-20', '01:06:38', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (353, 2, '2022-04-20', '01:20:09', '2022-04-20', '01:35:26', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (354, 4, '2022-04-20', '10:02:48', '2022-04-20', '10:03:09', '80D21DE8912B');
INSERT INTO `bitacora_Login` VALUES (355, 1, '2022-04-20', '12:00:48', '2022-04-20', '13:53:00', '2C6FC9286101');
INSERT INTO `bitacora_Login` VALUES (356, 2, '2022-04-20', '12:00:54', '2022-04-20', '12:01:13', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (357, 2, '2022-04-20', '12:05:13', '2022-04-20', '12:05:35', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (358, 1, '2022-04-20', '13:59:22', '2022-04-20', '15:05:11', '2C6FC9286101');
INSERT INTO `bitacora_Login` VALUES (359, 1, '2022-04-20', '15:05:24', NULL, NULL, '2C6FC9286101');
INSERT INTO `bitacora_Login` VALUES (360, 2, '2022-04-20', '15:32:44', NULL, NULL, '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (361, 2, '2022-04-20', '15:47:40', NULL, NULL, '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (362, 2, '2022-04-20', '15:50:36', NULL, NULL, '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (363, 2, '2022-04-20', '16:01:56', NULL, NULL, '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (364, 2, '2022-04-20', '16:20:19', NULL, NULL, '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (365, 1, '2022-04-20', '16:31:27', '2022-04-20', '19:19:32', '2C6FC9286101');
INSERT INTO `bitacora_Login` VALUES (366, 2, '2022-04-20', '16:34:14', '2022-04-20', '16:35:26', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (367, 2, '2022-04-20', '17:16:26', '2022-04-20', '17:20:29', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (368, 2, '2022-04-20', '17:44:20', '2022-04-20', '17:52:44', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (369, 2, '2022-04-20', '17:55:46', NULL, NULL, '80D21DE8912B');
INSERT INTO `bitacora_Login` VALUES (370, 2, '2022-04-20', '17:56:30', NULL, NULL, '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (371, 2, '2022-04-20', '18:00:49', '2022-04-20', '18:03:19', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (372, 2, '2022-04-20', '18:04:16', '2022-04-20', '18:30:46', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (373, 2, '2022-04-20', '19:03:49', '2022-04-20', '19:05:43', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (374, 2, '2022-04-20', '19:16:48', '2022-04-20', '19:17:35', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (375, 2, '2022-04-20', '19:39:00', '2022-04-20', '19:39:53', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (376, 2, '2022-04-20', '21:03:53', '2022-04-20', '21:39:46', 'A497B1F41751');
INSERT INTO `bitacora_Login` VALUES (377, 2, '2022-04-20', '21:40:14', '2022-04-20', '21:46:36', '80D21DE8912B');
INSERT INTO `bitacora_Login` VALUES (378, 2, '2022-04-20', '21:47:53', '2022-04-20', '21:53:11', '80D21DE8912B');
INSERT INTO `bitacora_Login` VALUES (379, 1, '2022-04-20', '22:03:48', '2022-04-20', '22:43:43', '80D21DE8912B');
INSERT INTO `bitacora_Login` VALUES (380, 4, '2022-04-20', '22:43:52', '2022-04-20', '22:44:05', '80D21DE8912B');
INSERT INTO `bitacora_Login` VALUES (381, 1, '2022-04-20', '22:50:56', '2022-04-20', '23:45:03', 'D0DF9A5B593B');
INSERT INTO `bitacora_Login` VALUES (382, 2, '2022-04-21', '02:46:38', '2022-04-21', '02:47:40', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (383, 2, '2022-04-21', '03:20:02', '2022-04-21', '03:21:45', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (384, 2, '2022-04-21', '03:24:22', '2022-04-21', '03:25:35', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (385, 2, '2022-04-21', '03:26:48', NULL, NULL, '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (386, 2, '2022-04-21', '03:29:31', '2022-04-21', '03:30:39', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (387, 2, '2022-04-21', '03:34:39', '2022-04-21', '03:35:29', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (388, 2, '2022-04-21', '03:36:22', '2022-04-21', '03:37:01', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (389, 2, '2022-04-21', '04:01:00', '2022-04-21', '04:03:02', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (390, 2, '2022-04-21', '04:09:32', '2022-04-21', '04:09:40', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (391, 2, '2022-04-21', '09:29:43', '2022-04-21', '09:30:10', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (392, 1, '2022-04-21', '09:30:19', '2022-04-21', '09:30:56', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (393, 2, '2022-04-21', '09:31:12', '2022-04-21', '09:31:39', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (394, 1, '2022-04-21', '09:31:26', '2022-04-21', '09:32:22', '80D21DE8912B');
INSERT INTO `bitacora_Login` VALUES (395, 17, '2022-04-21', '09:31:50', '2022-04-21', '09:32:22', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (396, 1, '2022-04-21', '09:32:29', '2022-04-21', '09:34:25', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (397, 2, '2022-04-21', '09:32:46', '2022-04-21', '09:37:20', '80D21DE8912B');
INSERT INTO `bitacora_Login` VALUES (398, 19, '2022-04-21', '09:36:31', '2022-04-21', '09:37:07', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (399, 2, '2022-04-21', '09:37:27', '2022-04-21', '09:47:33', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (400, 1, '2022-04-21', '09:37:41', '2022-04-21', '09:47:45', '80D21DE8912B');
INSERT INTO `bitacora_Login` VALUES (401, 2, '2022-04-23', '15:28:53', '2022-04-23', '15:31:19', 'A497B1F41751');
INSERT INTO `bitacora_Login` VALUES (402, 1, '2022-04-23', '15:32:54', '2022-04-23', '15:38:38', 'A497B1F41751');
INSERT INTO `bitacora_Login` VALUES (403, 18, '2022-04-23', '15:38:57', '2022-04-23', '15:39:08', 'A497B1F41751');
INSERT INTO `bitacora_Login` VALUES (404, 2, '2022-04-23', '15:39:52', '2022-04-23', '15:40:51', 'A497B1F41751');
INSERT INTO `bitacora_Login` VALUES (405, 1, '2022-04-23', '15:41:22', NULL, NULL, 'A497B1F41751');
INSERT INTO `bitacora_Login` VALUES (406, 3, '2022-04-23', '15:49:01', NULL, NULL, 'A497B1F41751');
INSERT INTO `bitacora_Login` VALUES (407, 2, '2022-04-23', '16:02:51', '2022-04-23', '16:09:18', 'A497B1F41751');
INSERT INTO `bitacora_Login` VALUES (408, 2, '2022-04-23', '16:09:29', '2022-04-23', '16:09:37', 'A497B1F41751');
INSERT INTO `bitacora_Login` VALUES (409, 1, '2022-05-03', '21:01:03', '2022-05-03', '21:07:33', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (410, 1, '2022-05-03', '22:19:25', '2022-05-03', '22:20:29', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (411, 1, '2022-05-10', '20:51:54', '2022-05-10', '21:01:44', '0A0027000012');
INSERT INTO `bitacora_Login` VALUES (412, 3, '2022-05-10', '20:53:18', '2022-05-10', '20:57:15', '80D21DE8912B');

-- ----------------------------
-- Table structure for clasificacion_producto
-- ----------------------------
DROP TABLE IF EXISTS `clasificacion_producto`;
CREATE TABLE `clasificacion_producto`  (
  `Id_Clasificacion` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id_Clasificacion`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of clasificacion_producto
-- ----------------------------
INSERT INTO `clasificacion_producto` VALUES (1, 'Materia prima');
INSERT INTO `clasificacion_producto` VALUES (2, 'Otros');

-- ----------------------------
-- Table structure for combos
-- ----------------------------
DROP TABLE IF EXISTS `combos`;
CREATE TABLE `combos`  (
  `Id_Combo` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Combo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Precio` decimal(10, 2) NULL DEFAULT NULL,
  `urlImagen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id_sucursal` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`Id_Combo`) USING BTREE,
  INDEX `fk_idsucursal_combos`(`id_sucursal`) USING BTREE,
  CONSTRAINT `fk_idsucursal_combos` FOREIGN KEY (`id_sucursal`) REFERENCES `Sucursales` (`id_Sucursal`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of combos
-- ----------------------------

-- ----------------------------
-- Table structure for compra
-- ----------------------------
DROP TABLE IF EXISTS `compra`;
CREATE TABLE `compra`  (
  `Id_Compra` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Id_Usuario` int(11) NULL DEFAULT NULL,
  `Id_Proveedor` int(11) NULL DEFAULT NULL,
  `Contado` decimal(10, 2) NULL DEFAULT NULL,
  `Credito` decimal(10, 2) NULL DEFAULT NULL,
  `Total` decimal(10, 2) NULL DEFAULT NULL,
  `nFactura` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id_estado_compra` int(11) NULL DEFAULT NULL,
  `id_sucursal` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`Id_Compra`) USING BTREE,
  INDEX `fkIdusu`(`Id_Usuario`) USING BTREE,
  INDEX `dadada`(`Id_Proveedor`) USING BTREE,
  INDEX `sdfsdfsf`(`id_estado_compra`) USING BTREE,
  INDEX `fk_idsucursal_compra`(`id_sucursal`) USING BTREE,
  CONSTRAINT `dadada` FOREIGN KEY (`Id_Proveedor`) REFERENCES `proveedor` (`IdP`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fkIdusu` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`iduser`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_idsucursal_compra` FOREIGN KEY (`id_sucursal`) REFERENCES `Sucursales` (`id_Sucursal`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sdfsdfsf` FOREIGN KEY (`id_estado_compra`) REFERENCES `estados_compras` (`id_Estado`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of compra
-- ----------------------------
INSERT INTO `compra` VALUES (63, '2022-04-20', 2, 2, 100.00, 0.00, 100.00, '250', 1, 1);

-- ----------------------------
-- Table structure for compra_productomp
-- ----------------------------
DROP TABLE IF EXISTS `compra_productomp`;
CREATE TABLE `compra_productomp`  (
  `Id_Compra` int(11) NOT NULL AUTO_INCREMENT,
  `Id_producto` int(11) NOT NULL,
  `Cantidad` decimal(10, 2) NULL DEFAULT NULL,
  `precioUnitario` decimal(10, 2) NULL DEFAULT NULL,
  `FechaVencimieto` date NULL DEFAULT NULL,
  `regalias` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`Id_Compra`, `Id_producto`) USING BTREE,
  INDEX `fkIdp`(`Id_producto`) USING BTREE,
  CONSTRAINT `fkIdp` FOREIGN KEY (`Id_producto`) REFERENCES `producto` (`Id_Producto`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fkidCom` FOREIGN KEY (`Id_Compra`) REFERENCES `compra` (`Id_Compra`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of compra_productomp
-- ----------------------------
INSERT INTO `compra_productomp` VALUES (63, 1, 10.00, 20.00, '2022-09-22', 10.00);

-- ----------------------------
-- Table structure for compras_credito
-- ----------------------------
DROP TABLE IF EXISTS `compras_credito`;
CREATE TABLE `compras_credito`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_compra` int(255) NULL DEFAULT NULL,
  `fecha_cancelar` date NULL DEFAULT NULL,
  `cancelacion` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_compra_credito`(`id_compra`) USING BTREE,
  CONSTRAINT `fk_compra_credito` FOREIGN KEY (`id_compra`) REFERENCES `compra` (`Id_Compra`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of compras_credito
-- ----------------------------
INSERT INTO `compras_credito` VALUES (1, 63, '2022-04-30', 'False');

-- ----------------------------
-- Table structure for desecho_combo
-- ----------------------------
DROP TABLE IF EXISTS `desecho_combo`;
CREATE TABLE `desecho_combo`  (
  `id_Desecho` int(11) NOT NULL AUTO_INCREMENT,
  `id_Combo` int(11) NULL DEFAULT NULL,
  `Cantidad` int(11) NULL DEFAULT NULL,
  `Fecha` date NULL DEFAULT NULL,
  PRIMARY KEY (`id_Desecho`) USING BTREE,
  INDEX `sghdgdgdg`(`id_Combo`) USING BTREE,
  CONSTRAINT `sghdgdgdg` FOREIGN KEY (`id_Combo`) REFERENCES `combos` (`Id_Combo`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of desecho_combo
-- ----------------------------

-- ----------------------------
-- Table structure for devolucion
-- ----------------------------
DROP TABLE IF EXISTS `devolucion`;
CREATE TABLE `devolucion`  (
  `id_Devolucion` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Compra` int(11) NULL DEFAULT NULL,
  `Id_Producto` int(11) NULL DEFAULT NULL,
  `Cantidad` decimal(10, 0) NULL DEFAULT NULL,
  `Motivo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Fecha` date NULL DEFAULT NULL,
  PRIMARY KEY (`id_Devolucion`) USING BTREE,
  INDEX `fdsfsgds`(`Id_Compra`) USING BTREE,
  INDEX `hcxhbm`(`Id_Producto`) USING BTREE,
  CONSTRAINT `fdsfsgds` FOREIGN KEY (`Id_Compra`) REFERENCES `compra` (`Id_Compra`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `hcxhbm` FOREIGN KEY (`Id_Producto`) REFERENCES `producto` (`Id_Producto`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of devolucion
-- ----------------------------

-- ----------------------------
-- Table structure for estado_productomp
-- ----------------------------
DROP TABLE IF EXISTS `estado_productomp`;
CREATE TABLE `estado_productomp`  (
  `Id_Estado` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id_Estado`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of estado_productomp
-- ----------------------------
INSERT INTO `estado_productomp` VALUES (1, 'Disponible');
INSERT INTO `estado_productomp` VALUES (2, 'No Disponible');

-- ----------------------------
-- Table structure for estados_compras
-- ----------------------------
DROP TABLE IF EXISTS `estados_compras`;
CREATE TABLE `estados_compras`  (
  `id_Estado` int(11) NOT NULL,
  `Descripcion` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_Estado`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of estados_compras
-- ----------------------------
INSERT INTO `estados_compras` VALUES (1, 'Activo');
INSERT INTO `estados_compras` VALUES (2, 'Inactivo');

-- ----------------------------
-- Table structure for inv_product_materia_prima
-- ----------------------------
DROP TABLE IF EXISTS `inv_product_materia_prima`;
CREATE TABLE `inv_product_materia_prima`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Producto` int(11) NULL DEFAULT NULL,
  `Cantidad` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `fkidPro`(`Id_Producto`) USING BTREE,
  CONSTRAINT `fkidPro` FOREIGN KEY (`Id_Producto`) REFERENCES `producto` (`Id_Producto`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of inv_product_materia_prima
-- ----------------------------
INSERT INTO `inv_product_materia_prima` VALUES (17, 29, 0.00);

-- ----------------------------
-- Table structure for inv_producto_extra
-- ----------------------------
DROP TABLE IF EXISTS `inv_producto_extra`;
CREATE TABLE `inv_producto_extra`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Producto` int(11) NULL DEFAULT NULL,
  `Cantidad` decimal(10, 2) NULL DEFAULT NULL,
  `Precio` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `fkEtra`(`Id_Producto`) USING BTREE,
  CONSTRAINT `fkEtra` FOREIGN KEY (`Id_Producto`) REFERENCES `producto` (`Id_Producto`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of inv_producto_extra
-- ----------------------------
INSERT INTO `inv_producto_extra` VALUES (14, 30, 0.00, 15.00);

-- ----------------------------
-- Table structure for inventario_combo
-- ----------------------------
DROP TABLE IF EXISTS `inventario_combo`;
CREATE TABLE `inventario_combo`  (
  `Id_Combo` int(11) NOT NULL,
  `Cantidad` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`Id_Combo`) USING BTREE,
  CONSTRAINT `idComb` FOREIGN KEY (`Id_Combo`) REFERENCES `combos` (`Id_Combo`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of inventario_combo
-- ----------------------------

-- ----------------------------
-- Table structure for lotes
-- ----------------------------
DROP TABLE IF EXISTS `lotes`;
CREATE TABLE `lotes`  (
  `id_lote` int(11) NOT NULL AUTO_INCREMENT,
  `id_factura_lote` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Fecha_Ingreso` date NULL DEFAULT NULL,
  `id_compra` int(11) NULL DEFAULT NULL,
  `Posibilidad_Devolución` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_lote`) USING BTREE,
  INDEX `fk_compra_lote`(`id_compra`) USING BTREE,
  CONSTRAINT `fk_compra_lote` FOREIGN KEY (`id_compra`) REFERENCES `compra` (`Id_Compra`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lotes
-- ----------------------------
INSERT INTO `lotes` VALUES (1, '425L', '2022-04-20', 63, 'True');

-- ----------------------------
-- Table structure for lotes_producto
-- ----------------------------
DROP TABLE IF EXISTS `lotes_producto`;
CREATE TABLE `lotes_producto`  (
  `id_lote` int(255) NOT NULL,
  `id_producto` int(255) NOT NULL,
  `Cantidad` int(255) NULL DEFAULT NULL,
  `Fecha_Vencimiento` date NULL DEFAULT NULL,
  PRIMARY KEY (`id_lote`, `id_producto`) USING BTREE,
  INDEX `fk_producto_Intermedio`(`id_producto`) USING BTREE,
  CONSTRAINT `fk_loteintermedio` FOREIGN KEY (`id_lote`) REFERENCES `lotes` (`id_lote`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_producto_Intermedio` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`Id_Producto`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lotes_producto
-- ----------------------------
INSERT INTO `lotes_producto` VALUES (1, 1, 20, '2022-09-25');

-- ----------------------------
-- Table structure for metodo_pago
-- ----------------------------
DROP TABLE IF EXISTS `metodo_pago`;
CREATE TABLE `metodo_pago`  (
  `Id_Metodo_Pago` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id_Metodo_Pago`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of metodo_pago
-- ----------------------------
INSERT INTO `metodo_pago` VALUES (1, 'Efectivo');
INSERT INTO `metodo_pago` VALUES (2, 'Credito');

-- ----------------------------
-- Table structure for prod_desechable
-- ----------------------------
DROP TABLE IF EXISTS `prod_desechable`;
CREATE TABLE `prod_desechable`  (
  `id_clasificacion` int(11) NOT NULL,
  `Clasificacion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_clasificacion`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of prod_desechable
-- ----------------------------
INSERT INTO `prod_desechable` VALUES (1, 'Desechable');
INSERT INTO `prod_desechable` VALUES (2, 'No Desechable');

-- ----------------------------
-- Table structure for producto
-- ----------------------------
DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto`  (
  `Id_Producto` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Id_Estado` int(11) NULL DEFAULT NULL,
  `Id_Clasificacion` int(11) NULL DEFAULT NULL,
  `Id_Tipo_Producto` int(11) NULL DEFAULT NULL,
  `id_desechable` int(11) NULL DEFAULT NULL,
  `id_unidad` int(11) NULL DEFAULT NULL,
  `id_sucursal` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`Id_Producto`) USING BTREE,
  INDEX `fkEstado`(`Id_Estado`) USING BTREE,
  INDEX `fk`(`Id_Clasificacion`) USING BTREE,
  INDEX `fkIdTipo`(`Id_Tipo_Producto`) USING BTREE,
  INDEX `ffff`(`id_desechable`) USING BTREE,
  INDEX `dsdssasd`(`id_unidad`) USING BTREE,
  INDEX `fk_idsucursal_producto`(`id_sucursal`) USING BTREE,
  CONSTRAINT `dsdssasd` FOREIGN KEY (`id_unidad`) REFERENCES `unidadesm` (`id_unidad_medida`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ffff` FOREIGN KEY (`id_desechable`) REFERENCES `prod_desechable` (`id_clasificacion`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk` FOREIGN KEY (`Id_Clasificacion`) REFERENCES `clasificacion_producto` (`Id_Clasificacion`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fkEstado` FOREIGN KEY (`Id_Estado`) REFERENCES `estado_productomp` (`Id_Estado`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fkIdTipo` FOREIGN KEY (`Id_Tipo_Producto`) REFERENCES `tipo_producto` (`Id_Tipo_producto`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_idsucursal_producto` FOREIGN KEY (`id_sucursal`) REFERENCES `Sucursales` (`id_Sucursal`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of producto
-- ----------------------------
INSERT INTO `producto` VALUES (1, 'Pechuga sin alas', 1, 1, 1, 1, 2, 1);
INSERT INTO `producto` VALUES (2, 'Coca cola 1 litro', 1, 2, 2, 2, 1, 1);
INSERT INTO `producto` VALUES (3, 'Conos', 1, 1, 1, 1, 2, 1);
INSERT INTO `producto` VALUES (4, 'Pepsi 500ml', 1, 2, 2, 2, 1, 1);
INSERT INTO `producto` VALUES (5, 'Muslo', 1, 1, 1, 1, 2, 1);
INSERT INTO `producto` VALUES (7, 'Big Cola', 1, 2, 2, 2, 1, 1);
INSERT INTO `producto` VALUES (8, 'Agua Fuente Pura', 1, 2, 2, 2, 1, 1);
INSERT INTO `producto` VALUES (9, 'Agua Pronto', 1, 2, 2, 2, 1, 1);
INSERT INTO `producto` VALUES (10, 'Cuadril de Pollo', 1, 1, 1, 1, 2, 1);
INSERT INTO `producto` VALUES (11, 'Papitas', 1, 2, 1, 1, 2, 1);
INSERT INTO `producto` VALUES (12, 'Tajadas de Plátano Verde', 1, 1, 1, 1, 2, 1);
INSERT INTO `producto` VALUES (13, 'Deditos de Pollo', 1, 1, 1, 1, 2, 1);
INSERT INTO `producto` VALUES (14, 'Prix Cola', 1, 2, 2, 2, 1, 1);
INSERT INTO `producto` VALUES (15, 'Milka', 1, 2, 2, 2, 1, 1);
INSERT INTO `producto` VALUES (16, 'Chunks', 1, 1, 1, 1, 1, 1);
INSERT INTO `producto` VALUES (17, '7UP', 1, 2, 2, 2, 1, 1);
INSERT INTO `producto` VALUES (18, 'Alas de Pollo', 1, 2, 1, 1, 1, 1);
INSERT INTO `producto` VALUES (19, 'Pierna', 1, 1, 1, 1, 1, 1);
INSERT INTO `producto` VALUES (20, 'Papas Precocidas', 1, 1, 1, 1, 2, 1);
INSERT INTO `producto` VALUES (21, 'Ensalada fria', 1, 2, 1, 1, 1, 1);
INSERT INTO `producto` VALUES (22, 'Filete de Res', 1, 1, 1, 1, 2, 1);
INSERT INTO `producto` VALUES (23, 'Papas campesinas', 1, 1, 1, 1, 2, 1);
INSERT INTO `producto` VALUES (24, 'Patas de Pollos ', 1, 1, 1, 1, 2, 1);
INSERT INTO `producto` VALUES (25, 'Nuggis', 1, 1, 1, 1, 1, 1);
INSERT INTO `producto` VALUES (26, 'Chorizo Argentino', 1, 2, 1, 1, 1, 1);
INSERT INTO `producto` VALUES (27, 'Pechuga sin ala', 1, 1, 1, 1, 1, 4);
INSERT INTO `producto` VALUES (28, 'Coca Cola 1 Litro', 1, 2, 2, 2, 1, 4);
INSERT INTO `producto` VALUES (29, 'Rabadilla', 1, 1, 1, 1, 1, 1);
INSERT INTO `producto` VALUES (30, 'coca', 1, 2, 2, 2, 1, 1);

-- ----------------------------
-- Table structure for productos_combo
-- ----------------------------
DROP TABLE IF EXISTS `productos_combo`;
CREATE TABLE `productos_combo`  (
  `Id_Combo` int(11) NOT NULL,
  `Id_Producto` int(11) NOT NULL,
  `Cantidad_Unidad` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`Id_Combo`, `Id_Producto`) USING BTREE,
  INDEX `idPro`(`Id_Producto`) USING BTREE,
  CONSTRAINT `idCom` FOREIGN KEY (`Id_Combo`) REFERENCES `combos` (`Id_Combo`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `idPro` FOREIGN KEY (`Id_Producto`) REFERENCES `producto` (`Id_Producto`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of productos_combo
-- ----------------------------

-- ----------------------------
-- Table structure for proveedor
-- ----------------------------
DROP TABLE IF EXISTS `proveedor`;
CREATE TABLE `proveedor`  (
  `Ruc` int(11) NULL DEFAULT NULL,
  `Nombre` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Telefono` int(11) NULL DEFAULT NULL,
  `IdP` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`IdP`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of proveedor
-- ----------------------------
INSERT INTO `proveedor` VALUES (1022, 'Pedro', 27723664, 1);
INSERT INTO `proveedor` VALUES (1023, 'Lucas', 27142199, 2);
INSERT INTO `proveedor` VALUES (4020, 'Juana', 27142199, 3);
INSERT INTO `proveedor` VALUES (3625, 'saul', 27132199, 4);
INSERT INTO `proveedor` VALUES (2350, 'Pollo Estrella', 27142198, 5);
INSERT INTO `proveedor` VALUES (18411, 'Pollo Tip Top', 27142199, 6);
INSERT INTO `proveedor` VALUES (3698, 'SUKarne', 27142199, 7);
INSERT INTO `proveedor` VALUES (1524, 'kevin', 85896325, 8);
INSERT INTO `proveedor` VALUES (58, 'Juan', 27142199, 27);
INSERT INTO `proveedor` VALUES (1203, 'Pollo Estrella', 27142198, 28);
INSERT INTO `proveedor` VALUES (10250, 'Juan', 27142199, 29);
INSERT INTO `proveedor` VALUES (2563, 'Norvin', 78199045, 30);

-- ----------------------------
-- Table structure for tipo_producto
-- ----------------------------
DROP TABLE IF EXISTS `tipo_producto`;
CREATE TABLE `tipo_producto`  (
  `Id_Tipo_producto` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id_Tipo_producto`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tipo_producto
-- ----------------------------
INSERT INTO `tipo_producto` VALUES (1, 'Comida');
INSERT INTO `tipo_producto` VALUES (2, 'Bebida');

-- ----------------------------
-- Table structure for unidadesm
-- ----------------------------
DROP TABLE IF EXISTS `unidadesm`;
CREATE TABLE `unidadesm`  (
  `id_unidad_medida` int(11) NOT NULL AUTO_INCREMENT,
  `unidad_medida` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_unidad_medida`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of unidadesm
-- ----------------------------
INSERT INTO `unidadesm` VALUES (1, 'Unidad');
INSERT INTO `unidadesm` VALUES (2, 'Libra');

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios`  (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `rol` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `NombreUsuario` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ApellidoUsuario` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `LogueoU` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id_sucursales` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`iduser`) USING BTREE,
  INDEX `kf_sucursal_usuarios`(`id_sucursales`) USING BTREE,
  CONSTRAINT `kf_sucursal_usuarios` FOREIGN KEY (`id_sucursales`) REFERENCES `Sucursales` (`id_Sucursal`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES (1, 'Saul', 'Artola', 'True', 'Administrador', 'Saul', 'Artola', 'False', 1);
INSERT INTO `usuarios` VALUES (2, 'Norvin', 'San', 'True', 'Administrador', 'Norvin', 'Gutierrez', 'False', 1);
INSERT INTO `usuarios` VALUES (3, 'Axel', '5BABYS', 'True', 'Administrador', 'Axel', 'Talavera', 'False', 1);
INSERT INTO `usuarios` VALUES (4, 'SA123', '123', 'True', 'Trabajador', 'Samuel', 'Poveda', 'False', 1);
INSERT INTO `usuarios` VALUES (5, 'Aura', 'esteli1970', 'False', 'Administrador', 'Aura', 'Nidia', 'False', 1);
INSERT INTO `usuarios` VALUES (6, 'Destro32', 'Destro32YT', 'True', 'Trabajador', 'Rosalio', 'Camas', 'False', 4);
INSERT INTO `usuarios` VALUES (8, 'Zeyran', 'Panda', 'False', 'Trabajador', 'Danny', 'Tercero', 'False', 1);
INSERT INTO `usuarios` VALUES (17, 'Danny', 'Panda', 'True', 'Trabajador', 'Zeyran', 'Tercero', 'False', 4);
INSERT INTO `usuarios` VALUES (18, 'Juanito', '1234', 'True', 'Trabajador', 'Juan', 'Perez', 'False', 3);
INSERT INTO `usuarios` VALUES (19, 'MoncadaSS', 'MONCADA4512', 'True', 'Trabajador', 'Suleymi ', 'Moncada', 'False', 9);

-- ----------------------------
-- Table structure for venta
-- ----------------------------
DROP TABLE IF EXISTS `venta`;
CREATE TABLE `venta`  (
  `Id_Venta` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(11) NULL DEFAULT NULL,
  `Fecha_Venta` date NULL DEFAULT NULL,
  `Metodo_Pago` int(11) NULL DEFAULT NULL,
  `NFactura` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Monto` decimal(10, 2) NULL DEFAULT NULL,
  `Id_Cliente` int(11) NULL DEFAULT NULL,
  `id_sucursal` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`Id_Venta`) USING BTREE,
  INDEX `Fkn`(`Id_Usuario`) USING BTREE,
  INDEX `f`(`Metodo_Pago`) USING BTREE,
  INDEX `idCliente`(`Id_Cliente`) USING BTREE,
  INDEX `fk_idsucursal_idVenta`(`id_sucursal`) USING BTREE,
  CONSTRAINT `Fkn` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`iduser`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `f` FOREIGN KEY (`Metodo_Pago`) REFERENCES `metodo_pago` (`Id_Metodo_Pago`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_idsucursal_idVenta` FOREIGN KEY (`id_sucursal`) REFERENCES `Sucursales` (`id_Sucursal`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `idCliente` FOREIGN KEY (`Id_Cliente`) REFERENCES `Cliente` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of venta
-- ----------------------------
INSERT INTO `venta` VALUES (2, 1, '2021-11-10', 1, '15000S', 10.00, NULL, NULL);
INSERT INTO `venta` VALUES (3, 1, '2021-11-10', 1, '14000S', 100.00, NULL, NULL);
INSERT INTO `venta` VALUES (4, 2, '2021-11-11', 1, '65222X', 150.00, NULL, NULL);
INSERT INTO `venta` VALUES (13, 1, '2021-12-10', 1, '166655C', 200.00, NULL, NULL);
INSERT INTO `venta` VALUES (14, 1, '2021-12-10', 1, '2555111X', 140.00, NULL, NULL);
INSERT INTO `venta` VALUES (16, 2, '2021-12-10', 1, '221444E', 150.00, NULL, NULL);
INSERT INTO `venta` VALUES (17, 2, '2021-12-10', 1, '1123311D', 160.00, NULL, NULL);
INSERT INTO `venta` VALUES (18, 1, '2021-12-11', 2, '221111R', 120.00, NULL, NULL);
INSERT INTO `venta` VALUES (19, 1, '2021-12-20', 1, '12220L', 20.00, NULL, NULL);
INSERT INTO `venta` VALUES (20, 1, '2021-12-20', 1, '155488A', 50.00, NULL, NULL);
INSERT INTO `venta` VALUES (21, 1, '2021-12-20', 1, '7888554P', 180.00, NULL, NULL);
INSERT INTO `venta` VALUES (22, 1, '2021-12-20', 1, '118822F', 50.00, NULL, NULL);
INSERT INTO `venta` VALUES (23, 5, '2021-12-21', 1, '54111k', 515.00, NULL, NULL);
INSERT INTO `venta` VALUES (24, 2, '2021-12-21', 2, '1145ata', 640.00, NULL, NULL);
INSERT INTO `venta` VALUES (25, 2, '2021-12-21', 1, '122220', 20.00, NULL, NULL);
INSERT INTO `venta` VALUES (26, 2, '2021-12-21', 1, '11145at', 20.00, NULL, NULL);
INSERT INTO `venta` VALUES (27, 1, '2021-12-24', 2, '15644648', 170.00, NULL, NULL);
INSERT INTO `venta` VALUES (28, 1, '2022-02-24', 1, '12', 320.00, NULL, NULL);
INSERT INTO `venta` VALUES (29, 1, '2022-03-17', 1, '1055', 600.00, NULL, NULL);

-- ----------------------------
-- Table structure for venta_combos
-- ----------------------------
DROP TABLE IF EXISTS `venta_combos`;
CREATE TABLE `venta_combos`  (
  `Id_Venta` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Combo` int(11) NOT NULL,
  `Precio_Actual` decimal(10, 0) NULL DEFAULT NULL,
  `Cantidad` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`Id_Venta`, `Id_Combo`) USING BTREE,
  INDEX `fkCo`(`Id_Combo`) USING BTREE,
  CONSTRAINT `fkCo` FOREIGN KEY (`Id_Combo`) REFERENCES `combos` (`Id_Combo`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fknV` FOREIGN KEY (`Id_Venta`) REFERENCES `venta` (`Id_Venta`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of venta_combos
-- ----------------------------

-- ----------------------------
-- Table structure for venta_extra
-- ----------------------------
DROP TABLE IF EXISTS `venta_extra`;
CREATE TABLE `venta_extra`  (
  `Id_Venta` int(11) NOT NULL,
  `ID_Producto` int(11) NOT NULL AUTO_INCREMENT,
  `Precio_Actual` decimal(10, 0) NULL DEFAULT NULL,
  `Cantidad` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_Producto`, `Id_Venta`) USING BTREE,
  INDEX `fVenta`(`Id_Venta`) USING BTREE,
  CONSTRAINT `fVenta` FOREIGN KEY (`Id_Venta`) REFERENCES `venta` (`Id_Venta`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fdfdsf` FOREIGN KEY (`ID_Producto`) REFERENCES `producto` (`Id_Producto`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of venta_extra
-- ----------------------------

-- ----------------------------
-- View structure for cproducto
-- ----------------------------
DROP VIEW IF EXISTS `cproducto`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `cproducto` AS select `producto`.`Id_Producto` AS `Id`,`producto`.`Nombre` AS `Nombre`,`estado_productomp`.`Descripcion` AS `Estado`,`clasificacion_producto`.`Descripcion` AS `Clasificacion`,`tipo_producto`.`Descripcion` AS `Descripcion`,`prod_desechable`.`Clasificacion` AS `Tipo producto`,`producto`.`id_sucursal` AS `Sucursal`,`producto`.`id_unidad` AS `Unidad`,`unidadesm`.`unidad_medida` AS `UnidadMedida` from (((((`producto` join `estado_productomp` on((`producto`.`Id_Estado` = `estado_productomp`.`Id_Estado`))) join `clasificacion_producto` on((`producto`.`Id_Clasificacion` = `clasificacion_producto`.`Id_Clasificacion`))) join `tipo_producto` on((`producto`.`Id_Tipo_Producto` = `tipo_producto`.`Id_Tipo_producto`))) join `prod_desechable` on((`producto`.`id_desechable` = `prod_desechable`.`id_clasificacion`))) join `unidadesm` on((`producto`.`id_unidad` = `unidadesm`.`id_unidad_medida`)));

-- ----------------------------
-- View structure for datosventageneral
-- ----------------------------
DROP VIEW IF EXISTS `datosventageneral`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `datosventageneral` AS select `venta`.`Id_Venta` AS `Id_Venta`,`usuarios`.`NombreUsuario` AS `NombreUsuario`,`venta`.`Fecha_Venta` AS `Fecha_Venta`,`metodo_pago`.`Descripcion` AS `Descripcion`,`venta`.`NFactura` AS `NFactura`,`venta`.`Monto` AS `Monto` from ((`venta` join `usuarios` on((`venta`.`Id_Usuario` = `usuarios`.`iduser`))) join `metodo_pago` on((`venta`.`Metodo_Pago` = `metodo_pago`.`Id_Metodo_Pago`)));

-- ----------------------------
-- View structure for editarcombos
-- ----------------------------
DROP VIEW IF EXISTS `editarcombos`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `editarcombos` AS select `combos`.`Id_Combo` AS `IDC`,`combos`.`Nombre_Combo` AS `Combo`,`combos`.`Precio` AS `Precio`,`combos`.`urlImagen` AS `Imagen`,`combos`.`Descripcion` AS `Descripcion`,`producto`.`Id_Producto` AS `IDP`,`producto`.`Nombre` AS `Nombre`,`productos_combo`.`Cantidad_Unidad` AS `Cantidad`,`producto`.`id_unidad` AS `Unidad` from ((`combos` join `productos_combo` on((`combos`.`Id_Combo` = `productos_combo`.`Id_Combo`))) join `producto` on((`productos_combo`.`Id_Producto` = `producto`.`Id_Producto`)));

-- ----------------------------
-- View structure for historialcompra
-- ----------------------------
DROP VIEW IF EXISTS `historialcompra`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `historialcompra` AS select `compra`.`Id_Compra` AS `ID`,`producto`.`Nombre` AS `Producto`,`compra_productomp`.`Cantidad` AS `Cantidad`,`usuarios`.`NombreUsuario` AS `Usuario`,`compra`.`Fecha` AS `Fecha`,`compra_productomp`.`precioUnitario` AS `Total`,`compra_productomp`.`FechaVencimieto` AS `Caducidad`,`producto`.`Id_Producto` AS `IDP`,`producto`.`Id_Clasificacion` AS `IDCLA`,`producto`.`id_unidad` AS `Unidad` from (((`compra_productomp` join `compra` on((`compra_productomp`.`Id_Compra` = `compra`.`Id_Compra`))) join `usuarios` on((`compra`.`Id_Usuario` = `usuarios`.`iduser`))) join `producto` on((`compra_productomp`.`Id_producto` = `producto`.`Id_Producto`)));

-- ----------------------------
-- View structure for kevin
-- ----------------------------
DROP VIEW IF EXISTS `kevin`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `kevin` AS select `combos`.`Id_Combo` AS `Id_Combo`,`combos`.`Nombre_Combo` AS `Nombre_Combo`,`combos`.`Descripcion` AS `Descripcion`,`combos`.`Precio` AS `Precio`,`combos`.`urlImagen` AS `urlImagen`,`inventario_combo`.`Cantidad` AS `Cantidad` from (`combos` join `inventario_combo` on((`combos`.`Id_Combo` = `inventario_combo`.`Id_Combo`)));

-- ----------------------------
-- View structure for mostrarinventarioex
-- ----------------------------
DROP VIEW IF EXISTS `mostrarinventarioex`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `mostrarinventarioex` AS select `inv_producto_extra`.`Id` AS `Id`,`producto`.`Nombre` AS `Nombre`,`inv_producto_extra`.`Cantidad` AS `Cantidad` from (`producto` join `inv_producto_extra` on((`producto`.`Id_Producto` = `inv_producto_extra`.`Id_Producto`)));

-- ----------------------------
-- View structure for prodclas
-- ----------------------------
DROP VIEW IF EXISTS `prodclas`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `prodclas` AS select `productos_combo`.`Id_Combo` AS `Id_Combo`,`productos_combo`.`Id_Producto` AS `Id_Producto`,`producto`.`Id_Clasificacion` AS `Id_Clasificacion`,`producto`.`id_desechable` AS `id_desechable` from (`producto` join `productos_combo` on((`producto`.`Id_Producto` = `productos_combo`.`Id_Producto`)));

-- ----------------------------
-- View structure for productosingre
-- ----------------------------
DROP VIEW IF EXISTS `productosingre`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `productosingre` AS select `combos`.`Id_Combo` AS `ID`,`productos_combo`.`Id_Producto` AS `Producto`,`productos_combo`.`Cantidad_Unidad` AS `Cantidad` from (`combos` join `productos_combo` on((`combos`.`Id_Combo` = `productos_combo`.`Id_Combo`)));

-- ----------------------------
-- View structure for saul
-- ----------------------------
DROP VIEW IF EXISTS `saul`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `saul` AS select `producto`.`Id_Producto` AS `Id_Producto`,`producto`.`Nombre` AS `Nombre`,`inv_producto_extra`.`Precio` AS `Precio`,`inv_producto_extra`.`Cantidad` AS `Cantidad`,`producto`.`Id_Estado` AS `Id_Estado` from (`producto` join `inv_producto_extra` on((`producto`.`Id_Producto` = `inv_producto_extra`.`Id_Producto`)));

-- ----------------------------
-- View structure for usuarioscompra
-- ----------------------------
DROP VIEW IF EXISTS `usuarioscompra`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `usuarioscompra` AS select `usuarios`.`iduser` AS `ID`,`usuarios`.`NombreUsuario` AS `Nombre`,`usuarios`.`status` AS `Estado` from `usuarios`;

-- ----------------------------
-- View structure for ventaproductoscombo
-- ----------------------------
DROP VIEW IF EXISTS `ventaproductoscombo`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `ventaproductoscombo` AS select `venta_combos`.`Id_Venta` AS `IDVenta`,`combos`.`Nombre_Combo` AS `Combo`,`venta_combos`.`Cantidad` AS `Cantidad`,`venta_combos`.`Precio_Actual` AS `PrecioVenta` from ((`venta` join `venta_combos` on((`venta`.`Id_Venta` = `venta_combos`.`Id_Venta`))) join `combos` on((`venta_combos`.`Id_Combo` = `combos`.`Id_Combo`)));

-- ----------------------------
-- View structure for verdesechos
-- ----------------------------
DROP VIEW IF EXISTS `verdesechos`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `verdesechos` AS select `combos`.`Nombre_Combo` AS `Combo`,`desecho_combo`.`Cantidad` AS `Cantidad`,`desecho_combo`.`Fecha` AS `Fecha` from (`desecho_combo` join `combos` on((`desecho_combo`.`id_Combo` = `combos`.`Id_Combo`)));

-- ----------------------------
-- View structure for verdevolucion
-- ----------------------------
DROP VIEW IF EXISTS `verdevolucion`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `verdevolucion` AS select `producto`.`Nombre` AS `Producto`,`compra`.`nFactura` AS `Factura`,`devolucion`.`Cantidad` AS `Cantidad`,`devolucion`.`Fecha` AS `Fecha`,`devolucion`.`Motivo` AS `Motivo` from ((`devolucion` join `producto` on((`devolucion`.`Id_Producto` = `producto`.`Id_Producto`))) join `compra` on((`devolucion`.`Id_Compra` = `compra`.`Id_Compra`)));

-- ----------------------------
-- View structure for verinventariocombos
-- ----------------------------
DROP VIEW IF EXISTS `verinventariocombos`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `verinventariocombos` AS select `inventario_combo`.`Id_Combo` AS `ID`,`combos`.`Nombre_Combo` AS `Combo`,`inventario_combo`.`Cantidad` AS `Existencia` from (`inventario_combo` join `combos` on((`inventario_combo`.`Id_Combo` = `combos`.`Id_Combo`)));

-- ----------------------------
-- View structure for verinventariomp
-- ----------------------------
DROP VIEW IF EXISTS `verinventariomp`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `verinventariomp` AS select `producto`.`Nombre` AS `Nombre`,`producto`.`Id_Producto` AS `Id_Producto`,`inv_product_materia_prima`.`Cantidad` AS `Cantidad` from (`inv_product_materia_prima` join `producto` on((`inv_product_materia_prima`.`Id_Producto` = `producto`.`Id_Producto`)));

-- ----------------------------
-- View structure for verproductos
-- ----------------------------
DROP VIEW IF EXISTS `verproductos`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `verproductos` AS select `producto`.`Id_Producto` AS `ID`,`producto`.`Nombre` AS `Nombre`,`producto`.`Id_Estado` AS `Estado`,`producto`.`Id_Clasificacion` AS `Tipo`,`producto`.`id_unidad` AS `UnidadM`,`producto`.`id_sucursal` AS `IDSucursal` from `producto`;

-- ----------------------------
-- View structure for verventascombos
-- ----------------------------
DROP VIEW IF EXISTS `verventascombos`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `verventascombos` AS select `venta`.`Id_Venta` AS `Id_Venta`,`usuarios`.`NombreUsuario` AS `NombreUsuario`,`venta`.`Fecha_Venta` AS `Fecha_Venta`,`combos`.`Nombre_Combo` AS `Nombre_Combo`,`venta_combos`.`Cantidad` AS `Cantidad`,`venta`.`Metodo_Pago` AS `Metodo_Pago`,`metodo_pago`.`Descripcion` AS `Descripcion`,`venta`.`NFactura` AS `Factura` from ((((`venta` join `venta_combos` on((`venta`.`Id_Venta` = `venta_combos`.`Id_Venta`))) join `usuarios` on((`venta`.`Id_Usuario` = `usuarios`.`iduser`))) join `combos` on((`venta_combos`.`Id_Combo` = `combos`.`Id_Combo`))) join `metodo_pago` on((`venta`.`Metodo_Pago` = `metodo_pago`.`Id_Metodo_Pago`)));

-- ----------------------------
-- View structure for verventasextras
-- ----------------------------
DROP VIEW IF EXISTS `verventasextras`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `verventasextras` AS select `venta`.`Id_Venta` AS `Id_Venta`,`usuarios`.`NombreUsuario` AS `NombreUsuario`,`venta`.`Fecha_Venta` AS `Fecha_Venta`,`producto`.`Nombre` AS `Nombre`,`venta_extra`.`Cantidad` AS `Cantidad`,`metodo_pago`.`Descripcion` AS `Descripcion`,`venta`.`NFactura` AS `Factura` from ((((`venta` join `venta_extra` on((`venta`.`Id_Venta` = `venta_extra`.`Id_Venta`))) join `producto` on((`venta_extra`.`ID_Producto` = `producto`.`Id_Producto`))) join `usuarios` on((`venta`.`Id_Usuario` = `usuarios`.`iduser`))) join `metodo_pago` on((`venta`.`Metodo_Pago` = `metodo_pago`.`Id_Metodo_Pago`)));

-- ----------------------------
-- View structure for verventasproductosextras
-- ----------------------------
DROP VIEW IF EXISTS `verventasproductosextras`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `verventasproductosextras` AS select `venta`.`Id_Venta` AS `IDVenta`,`producto`.`Nombre` AS `Nombre`,`venta_extra`.`Cantidad` AS `Cantidad`,`venta_extra`.`Precio_Actual` AS `Precio` from ((`producto` join `venta_extra` on((`producto`.`Id_Producto` = `venta_extra`.`ID_Producto`))) join `venta` on((`venta`.`Id_Venta` = `venta_extra`.`Id_Venta`)));

-- ----------------------------
-- View structure for visprov
-- ----------------------------
DROP VIEW IF EXISTS `visprov`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `visprov` AS select `proveedor`.`Ruc` AS `Ruc`,`proveedor`.`Nombre` AS `Nombre`,`proveedor`.`Telefono` AS `Telefono`,`proveedor`.`IdP` AS `IdP` from `proveedor`;

-- ----------------------------
-- View structure for vistaBitacoraLogin
-- ----------------------------
DROP VIEW IF EXISTS `vistaBitacoraLogin`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vistaBitacoraLogin` AS select `usuarios`.`username` AS `Usuario`,`bitacora_Login`.`fecha_Inicio_Sesion` AS `Fecha Inicio de Sesión`,`bitacora_Login`.`hora_Inicio_Sesion` AS `Hora Inicio de Sesión`,`bitacora_Login`.`fecha_Cierre_Sesion` AS `Fecha cierre de Sesión`,`bitacora_Login`.`hora_Cierre_Sesion` AS `Hora Cierre de sesión`,`bitacora_Login`.`ip_Maquina` AS `Dirección Mac de la Máquina` from (`usuarios` join `bitacora_Login` on((`usuarios`.`iduser` = `bitacora_Login`.`id_user`)));

-- ----------------------------
-- View structure for vistagodex
-- ----------------------------
DROP VIEW IF EXISTS `vistagodex`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vistagodex` AS select `producto`.`Id_Clasificacion` AS `IDCL`,`productos_combo`.`Id_Combo` AS `IDC`,`productos_combo`.`Id_Producto` AS `IDP`,`productos_combo`.`Cantidad_Unidad` AS `CU`,`inv_producto_extra`.`Cantidad` AS `CA`,`producto`.`id_desechable` AS `IDDes` from (((`combos` join `productos_combo` on((`combos`.`Id_Combo` = `productos_combo`.`Id_Combo`))) join `producto` on((`producto`.`Id_Producto` = `productos_combo`.`Id_Producto`))) join `inv_producto_extra` on((`producto`.`Id_Producto` = `inv_producto_extra`.`Id_Producto`)));

-- ----------------------------
-- View structure for vistagodmp
-- ----------------------------
DROP VIEW IF EXISTS `vistagodmp`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vistagodmp` AS select `productos_combo`.`Id_Combo` AS `IDC`,`productos_combo`.`Id_Producto` AS `IDP`,`productos_combo`.`Cantidad_Unidad` AS `CU`,`producto`.`Id_Clasificacion` AS `IDCL`,`inv_product_materia_prima`.`Cantidad` AS `CA`,`producto`.`id_desechable` AS `IDDes` from (((`combos` join `productos_combo` on((`combos`.`Id_Combo` = `productos_combo`.`Id_Combo`))) join `producto` on((`productos_combo`.`Id_Producto` = `producto`.`Id_Producto`))) join `inv_product_materia_prima` on((`producto`.`Id_Producto` = `inv_product_materia_prima`.`Id_Producto`)));

-- ----------------------------
-- View structure for vistaprecio
-- ----------------------------
DROP VIEW IF EXISTS `vistaprecio`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vistaprecio` AS select `producto`.`Id_Producto` AS `Id`,`inv_producto_extra`.`Precio` AS `Precio` from (`inv_producto_extra` join `producto` on((`inv_producto_extra`.`Id_Producto` = `producto`.`Id_Producto`)));

-- ----------------------------
-- Procedure structure for AgregarCliente
-- ----------------------------
DROP PROCEDURE IF EXISTS `AgregarCliente`;
delimiter ;;
CREATE PROCEDURE `AgregarCliente`(IN `pNombre` varchar(30),IN `pApellido` VARCHAR(30), pDireccion VARCHAR(50),pTelefono int,IN `pCedula` VARCHAR(16),IN pFecha_Nacimiento date ,OUT `pMsj` int)
BEGIN
	
	
	Start TRANSACTION;
	

insert into Cliente(Nombre,apellido,Direccion,Telefono,Cedula, Fecha_Nacimiento) Values(pNombre,pApellido,pDireccion,pTelefono,pCedula, pFecha_Nacimiento);
	
	SELECT MAX(Id) into pMsj from Cliente;
	
	
	COMMIT;
	

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for AgregarCombo
-- ----------------------------
DROP PROCEDURE IF EXISTS `AgregarCombo`;
delimiter ;;
CREATE PROCEDURE `AgregarCombo`(IN `pNombre` varchar(30),IN `pDescripcion` varchar(255),IN `pPrecio` double,IN `urlImagen` varchar(255),OUT `pMsj` int)
BEGIN
	
	Declare X int;
	
	SELECT COUNT(*) into X from combos
	where combos.Nombre_Combo = pNombre;
	If x =0 then
	Start TRANSACTION;
	
	insert into combos(Nombre_Combo, Descripcion, Precio, urlImagen)Values (pNombre, pDescripcion, pPrecio, urlImagen);
	
	SELECT MAX(Id_Combo) into pMsj from combos;
	
	Commit;
	else

	set pMsj = -1;
	END if;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for AgregarCompoIngredientes
-- ----------------------------
DROP PROCEDURE IF EXISTS `AgregarCompoIngredientes`;
delimiter ;;
CREATE PROCEDURE `AgregarCompoIngredientes`(IN `pId_Combo` int,IN `pId_Producto` int,IN `pCantidad_Unidad` Double,OUT `pMsj` int)
BEGIN
	#Routine body goes here...
Start TRANSACTION;
Insert into productos_combo(Id_Combo, Id_Producto, Cantidad_Unidad)Values (pId_Combo, pId_Producto, pCantidad_Unidad);
set pMsj = 1;


COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for AgregarCompraEspecifica
-- ----------------------------
DROP PROCEDURE IF EXISTS `AgregarCompraEspecifica`;
delimiter ;;
CREATE PROCEDURE `AgregarCompraEspecifica`(IN `pId_Compra` int,IN `pId_Producto` int,IN `pCantidad` double,pPrecioUnitario double,pFechaVen date,IN pRegalias double,OUT `pMsj` int)
BEGIN
	#Routine body goes here...
	Start TRANSACTION;
	
	INSERT into compra_productomp(Id_Compra, Id_producto, Cantidad, precioUnitario, FechaVencimieto, regalias)Values (pId_Compra,pId_Producto,pCantidad, pPrecioUnitario, pFechaVen, pRegalias);
	set pMsj =1;
	Commit;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for AgregarCompraGeneral
-- ----------------------------
DROP PROCEDURE IF EXISTS `AgregarCompraGeneral`;
delimiter ;;
CREATE PROCEDURE `AgregarCompraGeneral`(IN `pFecha` date,IN `pid_Usuario` int,IN pId_Proveedor int,IN pContado double,IN pCredito double, pTotal double, IN pNFactura varchar(30),IN pIdSucursal int,OUT `pMsj` int)
BEGIN
	#Routine body goes here...
	Declare Validacion int;
	Select COUNT(*) into validacion from compra where UPPER(pNFactura) = UPPER(compra.nFactura) and pIdSucursal = compra.id_sucursal and id_estado_compra = 1;
If validacion = 0 then 
Insert into compra(Fecha, Id_Usuario, Id_Proveedor, Contado, Credito, Total, nFactura, id_estado_compra, id_sucursal)Values (pFecha, pid_Usuario, pId_Proveedor,pContado,  pCredito, pTotal, pNFactura, 1, pIdSucursal);

Select Max(Id_Compra) into pMsj from compra;

else
set pMsj = -1;
end if;

Commit;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for AgregarComprasCredito
-- ----------------------------
DROP PROCEDURE IF EXISTS `AgregarComprasCredito`;
delimiter ;;
CREATE PROCEDURE `AgregarComprasCredito`(IN `pId_compra` int,IN `pFechaCancelar` date,OUT `pMsj` int)
BEGIN

Start TRANSACTION;
Insert into compras_credito(id_compra, fecha_cancelar, cancelacion) Values(pId_compra, pFechaCancelar,"True");
set pMsj = 1;
Commit;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for AgregarInicioBitacora
-- ----------------------------
DROP PROCEDURE IF EXISTS `AgregarInicioBitacora`;
delimiter ;;
CREATE PROCEDURE `AgregarInicioBitacora`(IN `pid` int,IN `pFechaInicio` date,IN `pHoraInicio` time,IN `pIpDispositivo` varchar(40), OUT pMsg int)
BEGIN
	start TRANSACTION;
	
	Insert into bitacora_Login(id_user, fecha_Inicio_Sesion, hora_Inicio_Sesion, ip_Maquina) VALUES(pid, pFechaInicio, pHoraInicio, pIpDispositivo);
	set pMsg = 1;
	commit;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for AgregarLoteEspecifico
-- ----------------------------
DROP PROCEDURE IF EXISTS `AgregarLoteEspecifico`;
delimiter ;;
CREATE PROCEDURE `AgregarLoteEspecifico`(IN `pId_Lote` int,IN `pId_Producto` int,IN `pCantidad` double,IN `pFecha_Vencimiento` date,OUT `pMsj` int)
BEGIN
	Start TRANSACTION;
	
	Insert Into lotes_producto(lotes_producto.id_lote, lotes_producto.id_producto, lotes_producto.Cantidad, lotes_producto.Fecha_Vencimiento) Values(pId_Lote,pId_Producto, pCantidad,pFecha_Vencimiento );
	set pMsj =1;
	
	Commit;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for AgregarLoteGeneral
-- ----------------------------
DROP PROCEDURE IF EXISTS `AgregarLoteGeneral`;
delimiter ;;
CREATE PROCEDURE `AgregarLoteGeneral`(IN `pId_Lote_Factura` varchar(255),IN `pFecha_Ingreso` date,IN `pid_compra` int,Out pMsj int)
BEGIN
Declare estancia int;
Select Count(*) into estancia from lotes where lotes.id_factura_lote = pId_Lote_Factura;

If estancia = 0 then
Start TRANSACTION;
Insert into lotes(id_factura_lote, Fecha_Ingreso, id_compra, Posibilidad_Devolución	) Values(pId_Lote_Factura, pFecha_Ingreso, pid_compra, "True");
Set pMsj = 1;
Commit;

else

set pMsj = -1;
end if;


END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for AgregarProductoMP
-- ----------------------------
DROP PROCEDURE IF EXISTS `AgregarProductoMP`;
delimiter ;;
CREATE PROCEDURE `AgregarProductoMP`(IN `pNombre` varchar(30),IN `pIdEstado` int,IN `pIdClasificacion` int,IN `pIdTipoP` int,IN `pDesechable` int, pUnidad int,in pidSucursal int,OUT `pMsj` int)
BEGIN

Declare estancia int;
Select COUNT(*) into estancia from producto where UPPER(pNombre) = UPPER(producto.Nombre) and pidSucursal = id_sucursal;




if(estancia = 0) then
Start TRANSACTION;
Insert into producto(Nombre, Id_Estado, Id_Clasificacion, Id_Tipo_Producto,id_desechable, producto.id_unidad, producto.id_sucursal)Values (pNombre,pIdEstado, pIdClasificacion, pIdTipoP,pDesechable, pUnidad, pidSucursal);

Select Max(Id_Producto) into pMsj From producto;
COMMIT;
else 
set pmsj = -2;
end if;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for AgregarProveedor
-- ----------------------------
DROP PROCEDURE IF EXISTS `AgregarProveedor`;
delimiter ;;
CREATE PROCEDURE `AgregarProveedor`(IN `pRuc` int,IN `pNombre` varchar (20),IN `pTelefono` int,OUT `pMsj` int)
BEGIN
	#Routine body goes here...
	Start TRANSACTION;
	
	INSERT into proveedor(Ruc, Nombre, Telefono)Values (pRuc, pNombre, pTelefono);
	set pMsj =1;
	Commit;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for AgregarSalidaBitacora
-- ----------------------------
DROP PROCEDURE IF EXISTS `AgregarSalidaBitacora`;
delimiter ;;
CREATE PROCEDURE `AgregarSalidaBitacora`(IN `pid` int,IN `pHoraCierreSesion` time,IN `pFechaCierreSesion` date,OUT `pMsj` int)
BEGIN
	DECLARE X int;
	Select max(bitacora_Login.id_registro) into X from bitacora_Login where bitacora_Login.id_user = pid; 
	if X>1 then
	
	set pMsj = X;
	
	UPDATE bitacora_Login set hora_Cierre_Sesion = pHoraCierreSesion where bitacora_Login.id_registro = X;
	Update bitacora_Login set fecha_Cierre_Sesion = pFechaCierreSesion where bitacora_Login.id_registro = X;
	else 
	
set pMsj = 0;
	
	end if;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for AgregarSucursales
-- ----------------------------
DROP PROCEDURE IF EXISTS `AgregarSucursales`;
delimiter ;;
CREATE PROCEDURE `AgregarSucursales`(IN `pNombreSucursal` varchar(255),IN `pDireccion` VARCHAR(255),IN `pDepartamento` int,OUT `pMsj` int)
BEGIN
	
	Declare X int;
	Select COUNT(*) into X from Sucursales where UPPER(pNombreSucursal ) = UPPER(Sucursales.Nombre_Sucursal);

	
	If X = 1 then
	set pMsj = 0;
	
	else
	START TRANSACTION;
	INSERT into Sucursales(Nombre_Sucursal, Departamento, direccion) VALUES(pNombreSucursal, pDepartamento,pDireccion);
	set pMsj = 1;
	COMMIT;
	end if;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for AgregarUsuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `AgregarUsuario`;
delimiter ;;
CREATE PROCEDURE `AgregarUsuario`(IN `pUser` varchar(30),IN `pPasw` varchar(30),IN `pStatus` varchar(30),IN `pRol` varchar(30),IN `pNombre` varchar(30),IN `pApellido` varchar(30),IN `pid_sucursal` int , OUT `pMsj` varchar(30))
BEGIN
	
	DECLARE x INT;
	
	SELECT COUNT(*) INTO x FROM usuarios WHERE username = pUser;
	
	if x = 0 then 
	
	INSERT INTO usuarios(username, `password`, `status`, rol, NombreUsuario, ApellidoUsuario, usuarios.id_sucursales, usuarios.LogueoU) VALUES (pUser, pPasw, pStatus, pRol, pNombre, pApellido, pid_sucursal, "False");
	
	set pMsj = 'Insertado'; -- Ingreso un registro a la BD
	
	ELSEIF X > 0 THEN
	
	set pMsj = 'Repetido'; -- No inserto nada, porque ya existe
	
	end if;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for AgregarVentaEspecifica
-- ----------------------------
DROP PROCEDURE IF EXISTS `AgregarVentaEspecifica`;
delimiter ;;
CREATE PROCEDURE `AgregarVentaEspecifica`(IN `pId_Venta` int,IN `pId_Combo` int,IN `pPrecioActual` decimal,IN `pCantidad` int,OUT `pMsj` int)
BEGIN
	
	Start TRANSACTION;
	
		insert into venta_combos(Id_Venta, Id_Combo, Precio_Actual, Cantidad) Values(pId_Venta, pId_Combo, pPrecioActual,pCantidad);
		
	Set pMsj=1;
	Commit;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for AgregarVentaEspecificaExtra
-- ----------------------------
DROP PROCEDURE IF EXISTS `AgregarVentaEspecificaExtra`;
delimiter ;;
CREATE PROCEDURE `AgregarVentaEspecificaExtra`(IN `pId_Venta` int,IN `pId_Producto` int,IN `pPrecioActual` decimal,IN `pCantidad` int, OUT `pMsj` int)
BEGIN
	
	Start TRANSACTION;
	
		insert into venta_extra(Id_Venta, ID_Producto, Precio_Actual, Cantidad) Values(pId_Venta, pId_Producto, pPrecioActual,pCantidad);
	set pMsj = 4;
	Commit;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for AgregarVentaGeneral
-- ----------------------------
DROP PROCEDURE IF EXISTS `AgregarVentaGeneral`;
delimiter ;;
CREATE PROCEDURE `AgregarVentaGeneral`(IN `Nususario` varchar(20),IN `pFecha_Venta` date,IN `pMetodo_Pago` int, pNFactura VARCHAR(30),pMonto DOUBLE,IN `pId_Cliente` int,OUT `pMsj` int)
BEGIN
	
	Declare X int;
	Start TRANSACTION;
	
	Select iduser into X from usuarios where usuarios.NombreUsuario = Nususario;
	
insert into venta(venta.Id_Usuario, Fecha_Venta, metodo_pago, NFactura, Monto,id_Cliente) Values( X, pFecha_Venta, pMetodo_Pago,pNFactura, pMonto,pId_Cliente);
	
	SELECT MAX(Id_Venta) into pMsj from venta;
	
	
	COMMIT;
	

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Agregar_Desecho
-- ----------------------------
DROP PROCEDURE IF EXISTS `Agregar_Desecho`;
delimiter ;;
CREATE PROCEDURE `Agregar_Desecho`(IN `pId_Combo` int,IN `pCantidad` int,IN `pFecha` date,OUT `pMsj` int)
BEGIN
	
	Start TRANSACTION; 
	
		Insert into desecho_combo(desecho_combo.id_Combo, desecho_combo.Cantidad, desecho_combo.Fecha) VALUES(pId_Combo, pCantidad, pFecha);
		
	SET pMsj = 1;
	Commit;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Agregar_Devolucion
-- ----------------------------
DROP PROCEDURE IF EXISTS `Agregar_Devolucion`;
delimiter ;;
CREATE PROCEDURE `Agregar_Devolucion`(IN `pId_Compra` int,IN `pId_Producto` int,IN `pCantidad` Double,IN `pMotivo` varchar(255),pFecha date,OUT `pMsj` int)
BEGIN
	#Routine body goes here...
	
	Declare X int;
	
	START TRANSACTION;
	SELECT COUNT(*) into X from devolucion where devolucion.Id_Compra = pId_Compra and devolucion.Id_Producto = pId_Producto; 
	
	If X = 0 then
	INSERT into devolucion(Id_Compra,Id_Producto, Cantidad, Motivo, Fecha) Values(pId_Compra, pId_Producto, pCantidad,pMotivo, pFecha );
	
	Set pMsj = 1;
	
	Else
	set pMsj =0;
	End if;
	Commit;
	

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for CambiarEstadoUsuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `CambiarEstadoUsuario`;
delimiter ;;
CREATE PROCEDURE `CambiarEstadoUsuario`(IN `pId` int,IN `pAccion` varchar(30),OUT `pMsj` varchar(30))
BEGIN
		
if pAccion = 'Activar' then 
	update usuarios
	set status = 'True'
	
	where iduser = pId;
	
	set pMsj = 'Habilitado'; -- Ingreso un registro a la BD

ELSEIF pAccion = 'Desactivar' then
	
	update usuarios
	set status = 'False'
	where iduser = pId;
		
	set pMsj = 'Deshabilitado'; -- No inserto nada, porque ya existe
	
	end if;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for CantidadVentasContado
-- ----------------------------
DROP PROCEDURE IF EXISTS `CantidadVentasContado`;
delimiter ;;
CREATE PROCEDURE `CantidadVentasContado`(OUT `pMsj` int)
BEGIN
	#Routine body goes here...
	
	Select Count(*) into pMsj from venta where venta.metodo_pago = 1;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ComprobarDevolucion
-- ----------------------------
DROP PROCEDURE IF EXISTS `ComprobarDevolucion`;
delimiter ;;
CREATE PROCEDURE `ComprobarDevolucion`(IN `pId_Compra` int,IN `pId_Producto` int,OUT `pMsj` int)
BEGIN
	#Routine body goes here...
	
	Declare X int;
 Select Count(*) into pMsj from devolucion where devolucion.Id_Compra = pId_Compra and devolucion.Id_Producto = pId_Producto;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ComprobarEstancia
-- ----------------------------
DROP PROCEDURE IF EXISTS `ComprobarEstancia`;
delimiter ;;
CREATE PROCEDURE `ComprobarEstancia`(IN `pID` int,OUT `pMsj` int)
BEGIN
	
	Select Id_Clasificacion into pMsj from producto where Id_Producto = pID;
	

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for EditarProductos
-- ----------------------------
DROP PROCEDURE IF EXISTS `EditarProductos`;
delimiter ;;
CREATE PROCEDURE `EditarProductos`(IN `pid_Producto` int,IN `pNombre` varchar(30),IN `pId_tipo_producto` int,IN `pId_desechable` int,IN `pId_Unidad` int, IN pidsucursal int, OUT pMsj int)
BEGIN

Declare estancia int;
Select COUNT(*) into estancia from producto where UPPER(pNombre) = UPPER(producto.Nombre) and pidSucursal = id_sucursal;

if estancia =0 then
Start TRANSACTION;

Update producto set producto.Nombre = pNombre,producto.Id_Tipo_Producto = pId_tipo_producto, producto.id_desechable = pId_desechable, producto.id_unidad = pId_Unidad where producto.id_sucursal = pidsucursal and producto.Id_Producto = pid_Producto;

set pMsj = 1;

commit;
else

set pMsj = 0;
end if;


END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for EditarProveedor
-- ----------------------------
DROP PROCEDURE IF EXISTS `EditarProveedor`;
delimiter ;;
CREATE PROCEDURE `EditarProveedor`(in pId int,IN `pRuc` int,IN pEdicion int,OUT `pMsj` int)
BEGIN
Declare N int;
Declare D int;

if pEdicion = 1 then
Select COUNT(*) into N from proveedor where UPPER(pRuc ) = UPPER(proveedor.Ruc);

else



SEt N = 0;
end if;


If N = 1 then

set pMsj = 0;

else 
Start TRANSACTION;
UPDATE proveedor set proveedor.Ruc = pRuc where proveedor.IdP = pId;
Set pMsj = 1;
Commit;

end if;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for EditarSucursales
-- ----------------------------
DROP PROCEDURE IF EXISTS `EditarSucursales`;
delimiter ;;
CREATE PROCEDURE `EditarSucursales`(in pIdSucursal int,IN `pNombreSucursal` varchar(255),IN `pDepartamento` int,IN `pDireccion` varchar(255),IN pEdicion int,OUT `pMsj` int)
BEGIN
Declare N int;
Declare D int;

if pEdicion = 1 then
Select COUNT(*) into N from Sucursales where UPPER(pNombreSucursal ) = UPPER(Sucursales.Nombre_Sucursal);

else



SEt N = 0;
end if;


If N = 1 then

set pMsj = 0;

else 
Start TRANSACTION;
UPDATE Sucursales set Sucursales.Nombre_Sucursal = pNombreSucursal, Sucursales.direccion = pDireccion, Sucursales.Departamento = pDepartamento where Sucursales.id_Sucursal = pIdSucursal;
Set pMsj = 1;
Commit;

end if;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for EditarUsuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `EditarUsuario`;
delimiter ;;
CREATE PROCEDURE `EditarUsuario`(IN `pId` int, IN `pUser` varchar(30),IN `pPasw` varchar(30),IN `pRol` varchar(30),IN `pNombre` varchar(30),IN `pApellido` varchar(30),IN `pid_sucursal` INT, OUT `pMsj` varchar(30))
BEGIN
	UPDATE usuarios
	SET username = pUser,
	`password` = pPasw,
rol = pRol,
NombreUsuario = pNombre,
ApellidoUsuario = pApellido,
usuarios.id_sucursales = pid_sucursal
WHERE iduser = pId;
set pMsj = 'Realizado'; 

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for InstanciaInventarioExtras
-- ----------------------------
DROP PROCEDURE IF EXISTS `InstanciaInventarioExtras`;
delimiter ;;
CREATE PROCEDURE `InstanciaInventarioExtras`(IN `pIdProducto` int,IN `pCantidad` int,IN `pPrecio` double,OUT `pMsj` int)
BEGIN
	#Routine body goes here...

Start TRANSACTION;
insert into inv_producto_extra(Id_Producto, Cantidad, Precio) Values(pIdProducto, pCantidad, pPrecio);
set pMsj =1;

Commit;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for InstanciarInventarioMP
-- ----------------------------
DROP PROCEDURE IF EXISTS `InstanciarInventarioMP`;
delimiter ;;
CREATE PROCEDURE `InstanciarInventarioMP`(IN `pId_Producto` int,IN `pCantidad` int,OUT `pMsj` int)
BEGIN
	#Routine body goes here...

Start TRANSACTION;
insert into inv_product_materia_prima(Id_Producto, Cantidad) Values (pId_Producto,pCantidad);
Set pMsj = 1;
Commit;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for IntanciarInventarioCombo
-- ----------------------------
DROP PROCEDURE IF EXISTS `IntanciarInventarioCombo`;
delimiter ;;
CREATE PROCEDURE `IntanciarInventarioCombo`(IN `pId_Combo` int,IN `pCantidad` int, OUT `pMsj` int)
BEGIN

Start TRANSACTION;
Insert into inventario_combo(Id_Combo, Cantidad)Values (pId_Combo,pCantidad);
set pMsj = 1;
Commit;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for LlamarIdYCompra
-- ----------------------------
DROP PROCEDURE IF EXISTS `LlamarIdYCompra`;
delimiter ;;
CREATE PROCEDURE `LlamarIdYCompra`(IN `pNFactura` varchar(20),OUT `pMsj` int)
BEGIN
	#Routine body goes here...
 Declare X int;
 Select Count(*) into X from compra where compra.nFactura = pNFactura and compra.id_estado_compra = 1;
 
 
 IF X =1 then
 
 Select compra.Id_Compra into pMsj from compra where compra.nFactura = pNFactura and compra.id_estado_compra = 1;
 
 else
 
 set pMsj = -1;
 
 end if;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for LogUnico
-- ----------------------------
DROP PROCEDURE IF EXISTS `LogUnico`;
delimiter ;;
CREATE PROCEDURE `LogUnico`(IN `pId` int,IN `pLogueo` varchar(30),OUT `pMsj` varchar(30))
BEGIN
		
if pLogueo = 'Activado' then 
	update usuarios
	set LogueoU = 'True'
	
	where iduser = pId;
	
	set pMsj = 'Activo'; -- Se indica que hay una sesión activa

ELSEIF pLogueo = 'Desactivado' then
	
	update usuarios
	set LogueoU = 'False'
	where iduser = pId;
		
	set pMsj = 'Descativo'; -- Proceso para cerrar la sesión actual
	
	end if;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ValidarUsuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `ValidarUsuario`;
delimiter ;;
CREATE PROCEDURE `ValidarUsuario`(IN `pUsername` varchar(30),IN `pPassword` varchar(30))
BEGIN
	Select * from usuarios where BINARY `username` = pUsername and BINARY `password` = pPassword  and status = 'True';

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for VerificarLoteFactura
-- ----------------------------
DROP PROCEDURE IF EXISTS `VerificarLoteFactura`;
delimiter ;;
CREATE PROCEDURE `VerificarLoteFactura`(IN `pNLote` varchar(255),IN `pNFactura` varchar(255), OUT pMsj int)
BEGIN
	Declare Validacion int;
	Declare estancia int;
	Select COUNT(*) into validacion from compra where UPPER(pNFactura) = UPPER(compra.nFactura);
	Select Count(*) into estancia from lotes where UPPER(lotes.id_factura_lote) = UPPER(pNLote);

	if validacion = 1 or estancia = 1 then
	set pMsj = 1;
	
	else
	set pMsj = 0;

END if;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
