-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-02-2016 a las 10:49:38
-- Versión del servidor: 5.5.47-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- BBDD: `laAlvaroteca`
--

-- --------------------------------------------------------

--
-- Access TABLE
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` varchar(36) COLLATE utf8_spanish_ci NOT NULL,
  `name` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(254) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telephone` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `is_employee` BOOL  DEFAULT FALSE NOT NULL,
  `is_admin` BOOL  DEFAULT FALSE NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `Acceso`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `telephone`, `is_employee`, `is_admin`) VALUES
('1', 'Admin', 'admin', NULL, NULL, TRUE, TRUE),
('2', 'Alvaro', 'alvaro', 'alvaro@laalvaroteca.com', '666555999', TRUE, TRUE),
('3', 'camarero1', 'camarero1', 'camarero@camarero.com', '654987123', TRUE, TRUE),
('4', 'Usuario', 'usuario', 'usuario@usuario.com', '666666666', TRUE, TRUE);

-- --------------------------------------------------------

--
-- menu_section TABLE
--

CREATE TABLE IF NOT EXISTS `menu_section` (
  `id` varchar(36),
  `section` varchar(254) COLLATE utf8_spanish_ci DEFAULT NULL,
   `position` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;

--
-- menu_section data
--

INSERT INTO `menu_section` (`id`, `section`, `position`) VALUES
(1, 'Para empezar...', 1),
(2, 'Ensaladas...', 2),
(3, 'Seguimos...', 3),
(4, 'Arroces...', 4),
(5, 'Pescados...', 5),
(6, 'Carnes...', 6),
(7, 'Postres...', 7),
(8, 'Prueba de tipo de plato', 8),
(14, 'Prueba de tipo plato 1' ,9);

--
-- MENU TABLE
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` varchar(36) NOT NULL,
  `name` varchar(254) NOT NULL,
  `description` blob,
  `allergens` blob,
  `price` decimal(5,2),
  `menu_section` varchar(36) NOT NULL,
  `image` varchar(255)   DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;

--
-- MENU DATA
--

INSERT INTO `menu` (`id`, `name`, `price`, `menu_section`, `image`) VALUES
(6, 'Udon con verduritas y mini frijoles al aceite de chili (MUY HOT).', 7.45, 3, 'udon.jpg'),
(7, 'Huevos rotos con jamón y guernikas', 7.95, 3, 'huevosrotos.jpg'),
(8, 'Arroz negro con masago verde, alioli, flores y hebras de chili.', 8.95, 4, 'arroznegro.jpg'),
(9, 'Risotto de setas, langostinos, trufa y atun "en movimiento".', 8.95, 4, 'rissoto.jpg'),
(11, 'Espinacas, crujientes con pollo en Panko.', 8.95, 2, 'espinacas.jpg'),
(12, 'Tartár de atún rojo con aguacate, cebolla y tomate kumato.', 9.95, 5, 'tartar.jpg'),
(13, 'Pulpo con Cremoso de patatas, hebras de chile y perlas de Oro de Bailén', 12.95, 5, 'arroz.jpg'),
(14, 'Rulo de carrillada  ibérica con  ahonesa de su jugo y Ras al nout.', 9.95, 6, 'rulo.jpg'),
(15, 'Quesadilla de costillar de cerdo confitado en Coca Cola.', 9.95, 6, 'quesadilla.jpg'),
(16, 'Hamburguesa rellena de queso', 7.95, 6, 'hamburguesaqueso.jpg'),
(17, 'Hamburguesa de salchichón de Málaga en honor a mi amigo Antonio García-Agua Juli.', 7.95, 6, 'hamburguesasalchichon.jpg'),
(26, 'Milhojas de foie manzana y queso.', 9.95, 1, 'milhoja.jpg'),
(27, 'Prueba de plato 1', 5.00, 8, ''),
(29, 'Prueba tipo plato 3', 12.50, 8, NULL),
(30, 'Prueba tipo plato 4', 14.80, 8, NULL),
(31, 'Prueba tipo plato 5', 8.95, 8, NULL),
(32, 'Prueba tipo plato 6', 4.95, 8, NULL);

-- --------------------------------------------------------

--
-- set_menu TABLE
--

CREATE TABLE IF NOT EXISTS `set_menu` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` blob,
  `allergens` blob,
  `type` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;

--
-- set_menu DATA
--

INSERT INTO `set_menu` (`id`, `name`, `type`) VALUES
(1, 'Pulpo con cremoso de patatas y espuma de', '1'),
(3, 'Pulpo con cremoso de patatas y espuma de pimenton.', '1'),
(5, 'Huevos rotos con jamón.', '1'),
(6, 'Revuelto de salmón y verduritas.', '1'),
(8, 'Croquetas de camarones.', '1'),
(9, 'Codillo asado.', '2'),
(10, 'Bacalao en tempura negra con espaguetis.', '2'),
(11, 'Ñoquis con salsa de setas y cabrales.', '2'),
(12, 'Udon con verduritas, mini frijoles y chile.', '2'),
(13, 'Lasaña boloñesa.', '2'),
(14, 'Pulpo con cremoso de patatas y espuma de pimenton.', '1'),
(15, 'Pulpo con cremoso de batatas y espuma de pimenton.', '2'),
(273, 'plato nuevo prueba 5', '2'),
(282, 'plato nuevo', '2'),
(286, 'Ensa queso de cabra.', '2'),
(303, 'Prueba 888', '1');


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Reservas`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `id` varchar(36),
`created` varchar(50) COLLATE utf8_spanish_ci,
  `name` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `telephone` varchar(15) COLLATE utf8_spanish_ci,
  `email` varchar(40) COLLATE utf8_spanish_ci,
  `date` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `time` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `shift` varchar(40) COLLATE utf8_spanish_ci,
  `pax` int(10) NOT NULL,
  `observation` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;

--
-- booking DATA
--

INSERT INTO `booking` (`id`, `name`, `telephone`, `email`, `date`, `time`, `pax`, `observation`) VALUES
(30, 'Alfonso', '636058953', 'alfonsoplgu@gmail.com', '02/12/2016', '13:30', 11, 'Comentario Adicional sobre mi reserva'),
(36, 'Alfonso', '636058953', 'alfonsoplgu@gmail.com', '02/18/2016', '14:15', 5, 'Aquí va mi comentario adicional'),
(56, 'Alfonso', '654789321', 'alfonsoplgu@gmail.com', '02/05/2016', '13:30', 4, 'Comentario'),
(57, 'Alfonso', '654789321', 'alfonsoplgu@gmail.com', '02/05/2016', '14:15', 6, 'Comentario'),
(58, 'Alfonso', '654789321', 'alfonsoplgu@gmail.com', '02/05/2016', '14:30', 2, 'Comentario'),
(59, 'Alfonso', '654789321', 'alfonsoplgu@gmail.com', '02/05/2016', '21:15', 8, 'Comentario'),
(60, 'Alfonso', '654789321', 'alfonsoplgu@gmail.com', '02/05/2016', '20:45', 4, 'Comentario'),
(62, 'Alfonso ', '636058953', 'alfonsoplgu@gmail.com', '02/12/2016', '13:30', 13, 'Comentario Adicional sobre mi reserva'),
(63, 'Alfonso ', '636058953', 'alfonsoplgu@gmail.com', '02/12/2016', '20:30', 13, 'Comentario Adicional sobre mi reserva'),
(66, 'Alfonso  ', '636058953', 'alfonsoplgu@gmail.com', '02/12/2016', '13:30', 5, 'Comentario Adicional sobre mi reserva'),
(67, 'Alfonso ', '636058953', 'alfonsoplgu@gmail.com', '02/12/2016', '20:30', 13, 'Comentario Adicional sobre mi reserva'),
(68, 'Alfonso  ', '636058953', 'alfonsoplgu@gmail.com', '02/12/2016', '20:30', 8, 'Comentario Adicional sobre mi reserva'),
(69, 'Alfonso ', '636058953', 'alfonsoplgu@gmail.com', '02/12/2016', '13:30', 13, 'Comentario Adicional sobre mi reserva');

-- --------------------------------------------------------


