-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 07-09-2021 a las 13:49:46
-- Versión del servidor: 5.1.41
-- Versión de PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `carritocompras`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE IF NOT EXISTS `compras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numeroventa` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `precio` text COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` text COLLATE utf8_spanish_ci NOT NULL,
  `subtotal` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=3 ;

--
-- Volcar la base de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `numeroventa`, `nombre`, `imagen`, `precio`, `cantidad`, `subtotal`) VALUES
(1, 0, 'TAKIS', 'takis_original.png', '700', '2', '700'),
(2, 10, 'Takis fueo\r\nwapas\r\nkarameladas pop', '', '1550', '1000', '1690');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `precio` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=38 ;

--
-- Volcar la base de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `Nombre`, `descripcion`, `imagen`, `precio`) VALUES
(25, 'Chipotles', '62 grs 25 pzas por caja', 'chipotles.jpg', 6.9),
(21, 'Chips Sal ', '42gr 30 Pzas x caja', 'chipssal.jpg', 7.3),
(22, 'Chips Jalapeño', '420 grs 30 pzas por Caja', 'chipsjalapeno.jpg', 7.3),
(23, 'Wapas Queso', '30 pzas por caja ', 'wapas.jpg', 7.25),
(24, 'Runners ', '58 grs 60 pzas por caja', 'runners.jpg', 5.7),
(20, 'Chips Fuego', ' 42gr 30 Pzas x caja', 'chipsfuego.jpg', 7.3),
(19, 'Chips Adobadas', ' 42gr 30 pzas por caja ', 'chipsadobadas.jpg', 5.7),
(17, 'Takis Verdes 56gr ', 'Pzas x caja 48', 'takis.jpg', 5.7),
(18, 'Takis Fuego ', '56 gr Pzas x caja', 'takisfuego.jpg', 5.7),
(26, 'POP Karameladas ', '50gr 35 pzas por caja', 'karameladas.jpg', 7),
(27, 'Hot Nuts', '50gr 67 pzas por caja', 'hotnuts.jpg', 6.1),
(28, 'Kranky ', '50gr 70 pzas por caja', 'kranky.jpg', 6.6),
(29, 'Panditas dulces', ' 52.5gr 70 pzas por caja', 'panditas.jpg', 6.6),
(30, 'Panditas enchilados ', '52.5gr 70 pzas por caja ', 'panditasenchilados.jpg', 6.6),
(31, 'Bubulubu mini caja 35gr', 'caja 35gr 12 pzas', 'bubulubumini.jpg', 5.5),
(32, 'Bubulubu caja grande 35gr ', '12 pzas por caja', 'bubulubucaja.jpg', 5.5),
(33, 'King Citrus ', '500ml paquete con 12 pzas.', 'kingcitrus.jpg', 6.1),
(34, 'Señorial lata', ' 355ml 24 Pzas x paq', 'senorial.jpg', 6.9),
(35, 'Manzanita Señorial', ' 600ml 24 Pzas x paq', 'manzanitasenorial.jpg', 8.9),
(36, 'Barrilitos varios sabores ', '500ml 24 Pzas x paq', 'barrilito.jpg', 7.92);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `Apellido` text COLLATE utf8_spanish_ci NOT NULL,
  `Usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `Password` text COLLATE utf8_spanish_ci NOT NULL,
  `Imagen` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=3 ;

--
-- Volcar la base de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id`, `Nombre`, `Apellido`, `Usuario`, `Password`, `Imagen`) VALUES
(2, 'Roberto G.', 'Vanegas Araiza', 'roberto.vavending', 'Vaven', 'imagen.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
