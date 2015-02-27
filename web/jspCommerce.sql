-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 27-02-2015 a las 19:15:28
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
  `descripcion` varchar(600) NOT NULL,
  `precio` decimal(9,2) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `imagen` varchar(120) NOT NULL,
  PRIMARY KEY (`idProducto`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `Productos`
--

INSERT INTO `Productos` (`idProducto`, `descripcion`, `precio`, `nombre`, `imagen`) VALUES
(1, 'No es pionero en ese mundo que se sitúa a mitad de camino entre los todocaminos y los coupés (el primero fue el SsangYong Actyon), pero sí el que mejor lo hace.\nNi su línea ni su respuesta dinámica dejan a nadie indiferente. Resulta impresionante sentir su comportamiento en curva. Tan ágil y aplomado como un coupé, te hace olvidar que mide 1,7 metros de alto. Precisamente los más altos son los más perjudicados en el interior, porque el pronunciado perfil coupé limita la habitabilidad y la cota de altura trasera, aunque sin llegar a ser preocupante.', 59569.99, 'BMW X6', 'bmw-x6.jpg'),
(2, 'Más completo si cabe que el antiguo, presenta un gran número de equipamientos* siempre al precio asequible de la gama Dacia, como el regulador-limitador de velocidad, el radar de proximidad trasera, el elevalunas eléctrico impulsional o el indicador de temperatura externa. El sistema multimedia integrado MEDIA NAV, compuesto por una pantalla táctil de 7'''' (18 cm), te permite acceder de forma sencilla a las distintas funciones del menú:navegación, teléfono, radio, multimedia.', 6599.00, 'Dacia Duster', 'dacia-duster.jpg'),
(3, 'En el 911, el diseño y la tecnología forman una unidad. Esto también lo muestra su perfil. Su amplia batalla asegura una alta estabilidad de marcha y dinámica en curvas. Los voladizos son cortos y el 911 tiene un aspecto compacto y ágil.\r\nUna impresión global más deportiva que se confirma también con la reducida altura del vehículo, así como con el amplio ancho de vía delante. En los modelos de tracción total 911 Carrera, la parte trasera de la carrocería es 44 mm más ancha. ¿Qué aporta todo esto? Más tracción y agilidad, por ejemplo.', 103955.99, 'Porsche 911', 'porsche-911.jpg'),
(4, 'La disposición del motor es central trasera por primera vez en la historia de Audi. Uno de los modelos que se usó como inspiración a la hora de analizar en este R8 fue el Auto Union Tipo C. De esta forma, con un motor central se logra una distribución del peso casi perfecta, con el 44% en el morro y el 56% en la cola.\n\nLa carrocería del R8 está construida completamente en aluminio. Las tomas de aire no sólo son un elemento estilístico, sino que también ayudan a mejorar la aerodinámica y a refrigerar el motor.', 138600.90, 'Audi R8', 'audi-r8.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Ventas`
--

CREATE TABLE IF NOT EXISTS `Ventas` (
  `idVenta` int(11) NOT NULL,
  `nombreCliente` varchar(40) NOT NULL,
  `direccionCliente` varchar(40) NOT NULL,
  PRIMARY KEY (`idVenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Ventas`
--

INSERT INTO `Ventas` (`idVenta`, `nombreCliente`, `direccionCliente`) VALUES
(0, 'Sherlock Holmes', 'Baker St. 221');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `VentasProductos`
--

CREATE TABLE IF NOT EXISTS `VentasProductos` (
  `idVenta` int(11) NOT NULL,
  `lineaVenta` int(11) NOT NULL AUTO_INCREMENT,
  `idProducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `subtotal` decimal(20,2) NOT NULL,
  PRIMARY KEY (`lineaVenta`),
  KEY `idVenta` (`idVenta`,`idProducto`),
  KEY `idProducto` (`idProducto`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `VentasProductos`
--

INSERT INTO `VentasProductos` (`idVenta`, `lineaVenta`, `idProducto`, `cantidad`, `subtotal`) VALUES
(0, 10, 1, 6, 357419.94),
(0, 11, 2, 2, 13198.00),
(0, 12, 4, 4, 554403.60),
(0, 13, 3, 1, 103955.99);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `VentasProductos`
--
ALTER TABLE `VentasProductos`
  ADD CONSTRAINT `VentasProductos_ibfk_1` FOREIGN KEY (`idVenta`) REFERENCES `Ventas` (`idVenta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `VentasProductos_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `Productos` (`idProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
