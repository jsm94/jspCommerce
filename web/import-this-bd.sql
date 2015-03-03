-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 03-03-2015 a las 23:36:25
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `Productos`
--

INSERT INTO `Productos` (`idProducto`, `descripcion`, `precio`, `nombre`, `imagen`) VALUES
(1, 'No es pionero en ese mundo que se sitúa a mitad de camino entre los todocaminos y los coupés (el primero fue el SsangYong Actyon), pero sí el que mejor lo hace.\nNi su línea ni su respuesta dinámica dejan a nadie indiferente. Resulta impresionante sentir su comportamiento en curva. Tan ágil y aplomado como un coupé, te hace olvidar que mide 1,7 metros de alto. Precisamente los más altos son los más perjudicados en el interior, porque el pronunciado perfil coupé limita la habitabilidad y la cota de altura trasera, aunque sin llegar a ser preocupante.', 59569.99, 'BMW X6', 'bmw-x6.jpg'),
(2, 'Más completo si cabe que el antiguo, presenta un gran número de equipamientos* siempre al precio asequible de la gama Dacia, como el regulador-limitador de velocidad, el radar de proximidad trasera, el elevalunas eléctrico impulsional o el indicador de temperatura externa. El sistema multimedia integrado MEDIA NAV, compuesto por una pantalla táctil de 7'''' (18 cm), te permite acceder de forma sencilla a las distintas funciones del menú:navegación, teléfono, radio, multimedia.', 6599.00, 'Dacia Duster', 'dacia-duster.jpg'),
(3, 'En el 911, el diseño y la tecnología forman una unidad. Esto también lo muestra su perfil. Su amplia batalla asegura una alta estabilidad de marcha y dinámica en curvas. Los voladizos son cortos y el 911 tiene un aspecto compacto y ágil.\r\nUna impresión global más deportiva que se confirma también con la reducida altura del vehículo, así como con el amplio ancho de vía delante. En los modelos de tracción total 911 Carrera, la parte trasera de la carrocería es 44 mm más ancha. ¿Qué aporta todo esto? Más tracción y agilidad, por ejemplo.', 103955.99, 'Porsche 911', 'porsche-911.jpg'),
(4, 'La disposición del motor es central trasera por primera vez en la historia de Audi. Uno de los modelos que se usó como inspiración a la hora de analizar en este R8 fue el Auto Union Tipo C. De esta forma, con un motor central se logra una distribución del peso casi perfecta, con el 44% en el morro y el 56% en la cola.\n\nLa carrocería del R8 está construida completamente en aluminio. Las tomas de aire no sólo son un elemento estilístico, sino que también ayudan a mejorar la aerodinámica y a refrigerar el motor.', 138600.90, 'Audi R8', 'audi-r8.jpg'),
(5, 'El modelo actual es producido desde el año 2005. Desde 1972 fue introducido como una versión de alto rendimiento de Aston Martin, en el caso de 1972 fue del DBS, con el tiempo fue evolucionando conforme los modelos de Aston Martin lo hacían.\r\n\r\nTiene chasis de aluminio, metal y magnesio. La versión base tiene un motor gasolina atmosférico V8 de 4.7 L con 32 válvulas que produce 420 CV de potencia máxima. Tiene una aceleración de 0 a 100 km/h en 4,7 s y una velocidad máxima de 290 km/h. Se ofrece con caja de cambios secuencial o manual de seis velocidades.', 132600.00, 'Aston Martin Vantage', 'aston-martin-vantage.jpg'),
(6, 'El S60 de segunda generación se presentó como prototipo en el Salón del Automóvil de Detroit de 2009. La versión de producción se mostró por primera vez en el Salón del Automóvil de Ginebra de 2010, y se puso a la venta en el tercer trimestre de ese año. Usa la misma plataforma del Ford Mondeo, el Volvo XC60, el S80 y el V70 actuales.\n\nLos motores gasolina son un cuatro cilindros de 1.6 litros y 150 ó 180 CV, un cuatro cilindros de 2.0 litros y 203 ó 240 CV, y un seis cilindros de 3 litros y 304 CV. Asimismo, los diésel son un 1.6 litros de 115 CV, un cinco cilindros de 2.0 litros y 163 CV. ', 32500.80, 'Volvo S60', 'volvo-s60.jpg'),
(7, 'Cuenta con un motor de 12 cilindros en V de 6,5 litros de cilindrada, que envía la potencia de forma permanente a las 4 ruedas (es un tracción integral como norma en la casa) a través de la transmisión ISR de 7 velocidades. Este modelo se basa en el Lamborghini Aventador, con la única diferencia es la carrocería con una aerodinámica específica que lo hace más efectivo. De hecho, el alerón posterior tiene una regulación de tres posiciones que lo hacen ideal para pilotarlo en circuito. Aunque también esta homologado para circular por vías urbanas.', 3200000.00, 'Lamborghini Veneno', 'lambo-veneno.jpg'),
(8, 'El GT es similar en apariencia al coche original Ford GT40, pero más largo, más ancho y 76 mm (3 pulgadas) más alto que el original de 100 cm (40 pulgadas), y como resultado, entre los nombres posibles fue el de GT43. Aunque los coches son aparentemente relacionados estructuralmente, no existe ninguna similitud salvo la apariencia entre el modelo GT moderno y el modelo de 1960, el GT40 del cual fue la inspiración. En todo caso, ambos comparten en su origen el objetivo de superar en prestaciones un conducción a los ferrari comparables de sus épocas.', 220220.22, 'Ford GT', 'ford-gt.jpg'),
(9, 'Ha tenido dos generaciones de motores, 2009 - 2011 Motores atmosféricos de 6 Cilindros en línea de inyección directa entre las que estuvo disponible en versiones sdrive 23, sdrive 30, sdrive 35i, sdrive 35is. En el 2012 esta disponible la mejora de motorizaciones gracias al desarrollo e implementación de la tecnología twin power turbo en la que las versiones sdrive 20i, y sdrive 28i equipan el nuevo propulsor 2.0 de 4 cilindros en línea con turbo cargador twinscroll que entrega 184 y 240 hp respectivamente y un generoso torque disponible desde las 1200 rpm de 270 Nm y 350 Nm.', 38500.00, 'BMW Z4', 'bmw-z4.jpg'),
(10, 'Lo más asombroso del nuevo C4 Cactus es que prácticamente calcado al concept. Tanto, que incluso incorpora los Airbump, una suerte de protectores de la carrocería y los paragolpes patentados por Citroën. También sorprende que el interior del Citroën C4 Cactus sea prácticamente idéntico al concept, con sus asientos delanteros y traseros en forma de sofá, la pantalla táctil de 7'''' que permite acceder, según versiones de acabado, a la climatización, sistemas multimedia, navegación o al portal Citroën Multicity Connect.', 14950.00, 'Citroen C4 Cactus', 'citroen-c4-cactus.jpg'),
(11, 'El Ferrari 458 Italia es más que un digno sucesor del Ferrari F430, un biplaza con tracción trasera y motor central atmosférico de 8 cilindros en V y 578 CV que ha sido diseñado por Pininfarina. Va asociado a una caja de cambios automática de doble embrague de siete velocidades con un muy buen resultado, ya que realiza los saltos de marcha de forma muy rápida y eficaz.', 220450.00, 'Ferrari 458 Italia', 'ferrari-458.jpg'),
(12, 'Formas esculpidas y volúmenes definidos: el diseño del Ghibli cautiva miradas con el énfasis en la deportividad y, al igual que el primer Ghibli de 1967, conquista con su personalidad. El frontal está dominado por la típica calandra de Maserati, cuyas aletas cóncavas se inspiran en el GranTurismo y en un icono del pasado como la berlinetta A6 GCS.\r\nLa gama mecánica arranca con el V6 biturbo de 3.0 litros que rinde una potencia de 330 CV.', 70800.00, 'Maserati Ghibli', 'maserati-ghibli.jpg'),
(13, 'Los cambios afectan únicamente a la estética, con detalles exclusivos que aumentan el ya de por sí atractivo de este deportivo. Tres son los principales detalles que marcan la diferencia en el exterior. El primero es el labio frontal y el paragolpes trasero, tomados directamente del Camaro más radical de esta quinta generación: el Camaro ZL1. Otro de los elementos que cobran mucha importancia en el Chevrolet Camaro Commemorative Edition son las nuevas llantas de 20 pulgadas, de cinco palos y exclusivas para este modelo.', 41300.00, 'Chevrolet Camaro', 'chevrolet-camaro.jpg'),
(14, 'Que la firma japonesa ha obtenido un éxito arrollador con el Nissan Qashqai es algo que todos sabemos. La segunda generación del SUV japonés crece en todas sus dimensiones (sobre todo en longitud), aumenta la practicidad del interior (el maletero llega a 430 litros) y, se ofertará con cuatro opciones mecánicas diferentes. ', 22290.00, 'Nissan Qashqai', 'nissan-qashqai.jpg'),
(15, 'El Peugeot RCZ toma el camino de la deportividad dentro de la gama francesa. Se trata de un coupé de poco más de 4,2 metros de longitud con un razonable maletero de 321 litros. Presentado oficialmente en el Salón de Frankfurt del 2009 y puesto al dia en Paris 2012, sigue apostando por el equilibrio estético y moderno junto con la deportividad y exclusividad.', 35620.00, 'Peugeot RCZ', 'peugeot-rcz.jpg'),
(16, 'Su motor, aunque sí es cierto que lo vimos ya en el del Giulietta más potente, ha sufrido tantos cambios que ya no parece el mismo (y aquí va otro dato jugoso: probablemente lo veremos en el resto de modelos próximamente). Es un cuatro cilindros de aluminio sobrealimentado, de inyección directa y una potencia de 240 CV. En cuanto su turbo Garret (de geometría fija) sopla, otorga una entrega de par de 350 Nm constantes hasta más de 4.000 rpm.', 52899.00, 'Alfa Romeo 4C', 'alfa-romeo-4c.jpg');

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
(0, 'Sherlock Holmes', 'Baker St. 221'),
(1, 'Lester Nygaard', 'Minnesota'),
(2, 'Lorne Malvo', 'Minnesota'),
(3, 'Jim Moriarty', 'London'),
(4, 'Juan Antonio Seco', 'Ca Ro 1');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Volcado de datos para la tabla `VentasProductos`
--

INSERT INTO `VentasProductos` (`idVenta`, `lineaVenta`, `idProducto`, `cantidad`, `subtotal`) VALUES
(0, 10, 1, 6, 357419.94),
(0, 11, 2, 2, 13198.00),
(0, 12, 4, 4, 554403.60),
(0, 13, 3, 1, 103955.99),
(1, 14, 1, 1, 59569.99),
(2, 15, 2, 1, 6599.00),
(2, 16, 3, 1, 103955.99),
(2, 17, 4, 1, 138600.90),
(3, 18, 1, 1, 59569.99),
(3, 19, 2, 3, 19797.00),
(3, 20, 3, 1, 103955.99),
(3, 21, 4, 1, 138600.90),
(3, 22, 8, 2, 440440.44),
(3, 23, 7, 3, 9600000.00),
(3, 24, 6, 1, 32500.80),
(3, 25, 5, 1, 132600.00),
(4, 26, 16, 2, 105798.00),
(4, 27, 11, 3, 661350.00),
(4, 28, 4, 2, 277201.80),
(4, 29, 8, 4, 880880.88),
(4, 30, 7, 4, 12800000.00),
(4, 31, 3, 1, 103955.99),
(4, 32, 2, 1, 6599.00),
(4, 33, 1, 1, 59569.99),
(4, 34, 5, 1, 132600.00),
(4, 35, 6, 2, 65001.60),
(4, 36, 10, 1, 14950.00),
(4, 37, 12, 1, 70800.00),
(4, 38, 9, 2, 77000.00),
(4, 39, 15, 1, 35620.00),
(4, 40, 14, 1, 22290.00),
(4, 41, 13, 1, 41300.00);

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
