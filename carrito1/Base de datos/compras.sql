-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-10-2021 a las 09:08:58
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `carritocompras`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `numeroventa` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `precio` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` text COLLATE utf8_spanish_ci NOT NULL,
  `subtotal` text COLLATE utf8_spanish_ci NOT NULL,
  `IDusuario` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `numeroventa`, `nombre`, `imagen`, `precio`, `cantidad`, `subtotal`, `IDusuario`) VALUES
(1, 0, 'TAKIS', 'takis_original.png', '700', '2', '700', 2),
(2, 10, 'Takis fueo\r\nwapas\r\nkarameladas pop', '', '1550', '1000', '1690', 2),
(3, 11, 'Chips Sal ', 'chipssal.jpg', '7.3', '19', '138.7', 2),
(4, 11, 'Chipotles', 'chipotles.jpg', '6.9', '6', '41.4', 2),
(5, 11, 'Chips Jalapeño', 'chipsjalapeno.jpg', '7.3', '2', '14.6', 2),
(6, 12, 'Chips Sal ', 'chipssal.jpg', '7.3', '1', '7.3', 2),
(7, 13, 'Chips Sal ', 'chipssal.jpg', '7.3', '1', '7.3', 2),
(8, 14, 'Chips Sal ', 'chipssal.jpg', '7.3', '1', '7.3', 2),
(9, 15, 'Chips Sal ', 'chipssal.jpg', '7.3', '3', '21.9', 2),
(10, 15, 'Chipotles', 'chipotles.jpg', '6.9', '1', '6.9', 2),
(11, 16, 'Chips Sal ', 'chipssal.jpg', '7.3', '3', '21.9', 2),
(12, 16, 'Chipotles', 'chipotles.jpg', '6.9', '1', '6.9', 2),
(13, 17, 'Chips Sal ', 'chipssal.jpg', '7.3', '3', '21.9', 2),
(14, 17, 'Chipotles', 'chipotles.jpg', '6.9', '2', '13.8', 2),
(15, 18, 'Chips Sal ', 'chipssal.jpg', '7.3', '3', '21.9', 2),
(16, 18, 'Chipotles', 'chipotles.jpg', '6.9', '2', '13.8', 2),
(17, 19, 'Chips Sal ', 'chipssal.jpg', '7.3', '3', '21.9', 5),
(18, 19, 'Chipotles', 'chipotles.jpg', '6.9', '4', '27.6', 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
