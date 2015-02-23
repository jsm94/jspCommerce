-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 20-02-2015 a las 13:42:03
-- Versión del servidor: 5.5.41-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `jspCommerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Productos`
--

CREATE TABLE IF NOT EXISTS `Productos` (
  `idProducto` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(40) NOT NULL,
  `precio` decimal(6,2) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `imagen` varchar(120) NOT NULL,
  PRIMARY KEY (`idProducto`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `Productos`
--

INSERT INTO `Productos` (`idProducto`, `descripcion`, `precio`, `nombre`, `imagen`) VALUES
(1, 'Coche de alta gama', 9999.99, 'BMW X6', 'bmw-x6.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Ventas`
--

CREATE TABLE IF NOT EXISTS `Ventas` (
  `idVenta` int(11) NOT NULL AUTO_INCREMENT,
  `nombreCliente` varchar(40) NOT NULL,
  `direccionCliente` varchar(40) NOT NULL,
  PRIMARY KEY (`idVenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `VentasProductos`
--

CREATE TABLE IF NOT EXISTS `VentasProductos` (
  `idVenta` int(11) NOT NULL,
  `lineaVenta` int(11) NOT NULL AUTO_INCREMENT,
  `idProducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `subtotal` decimal(6,2) NOT NULL,
  PRIMARY KEY (`lineaVenta`),
  KEY `idVenta` (`idVenta`,`idProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
