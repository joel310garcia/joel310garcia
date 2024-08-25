-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-08-2024 a las 06:25:24
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_five`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barrio`
--

CREATE TABLE `barrio` (
  `id` int(11) NOT NULL,
  `id_municipio` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `barrio`
--

INSERT INTO `barrio` (`id`, `id_municipio`, `nombre`) VALUES
(1, 40, 'Boris Vega'),
(2, 40, 'Alfredo Lazo'),
(3, 40, 'Justo Flores'),
(4, 40, 'Las Calabazas'),
(5, 40, 'Juan Alberto Blandón'),
(6, 40, 'Juno Rodríguez'),
(7, 40, 'Héroes y Mártires'),
(8, 40, 'Oscar Benavides'),
(9, 40, 'Filemón Rivera'),
(10, 40, 'El Calvario'),
(11, 40, 'William Fonseca'),
(12, 40, 'Virginia Quintero'),
(13, 40, 'Linda Vista'),
(14, 40, 'Miguel Alonso'),
(15, 40, 'Orlando Ochoa'),
(16, 40, 'Milenia Hernández'),
(17, 40, 'Igor Ubeda'),
(18, 40, 'Rene Barrantes'),
(19, 40, 'Paula Ubeda'),
(20, 40, 'Hermanos Carcamo'),
(21, 40, 'Omar Torrijos'),
(22, 40, 'Elías Moncada'),
(23, 40, 'Jaime Ubeda'),
(24, 40, 'Camilo Segundo'),
(25, 40, 'Juana Elena Mendoza'),
(26, 40, 'Aristeo Benavides'),
(27, 40, 'Centenario'),
(28, 40, 'Oscar Turcios'),
(29, 40, 'Michiguiste'),
(30, 40, 'Primero de Mayo'),
(31, 40, 'Villa Esperanza'),
(32, 40, 'José Benito Escobar'),
(33, 40, 'Ronaldo Aráuz'),
(34, 40, 'Sandino'),
(35, 40, 'Los Angeles'),
(36, 40, 'José Santos Zelaya'),
(37, 40, 'Boanerges López'),
(38, 40, '16 de Julio'),
(39, 40, 'Arlen Síu'),
(40, 40, 'Carlos Nuñez'),
(41, 40, 'Aldea Emaús'),
(42, 40, 'Estelí Heroico'),
(43, 40, 'Oscar Arnulfo R'),
(44, 40, 'El Rosario'),
(45, 40, '14 de Abril'),
(46, 40, 'Oscar Gámez Nº 2'),
(47, 40, 'La Comuna'),
(48, 40, 'Oscar Gámez Nº 1'),
(49, 40, '29 de Octubre'),
(50, 40, 'Panamá Soberana'),
(51, 40, 'La Unión'),
(52, 40, 'Leonel Rugama'),
(53, 40, 'Nuevo Amanecer'),
(54, 40, 'Noel Gámez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `cartid` int(11) NOT NULL,
  `sid` varchar(250) NOT NULL,
  `proid` int(11) NOT NULL,
  `proname` varchar(30) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`) VALUES
(1, 'Mobile'),
(2, 'Audio'),
(3, 'Tv'),
(4, 'Wearables'),
(5, 'Electronic'),
(6, 'Household'),
(7, 'Kitchen'),
(8, 'Computer'),
(9, 'Seguridad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad_municipio`
--

CREATE TABLE `ciudad_municipio` (
  `id` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ciudad_municipio`
--

INSERT INTO `ciudad_municipio` (`id`, `id_departamento`, `nombre`) VALUES
(1, 1, 'San José de los Remates'),
(2, 1, 'Boaco'),
(3, 1, 'Camoapa'),
(4, 1, 'Santa Lucía'),
(5, 1, 'Teustepe'),
(6, 1, 'San Lorenzo'),
(7, 2, 'San Marcos'),
(8, 2, 'Jinotepe'),
(9, 2, 'Dolores'),
(10, 2, 'Diriamba'),
(11, 2, 'El Rosario'),
(12, 2, 'La Paz de Carazo'),
(13, 2, 'Santa Teresa'),
(14, 2, ' La Conquista'),
(15, 3, 'San Pedro del Norte'),
(16, 3, 'San Francisco del Norte'),
(17, 3, 'Cinco Pinos'),
(18, 3, 'Santo Tomás del Norte'),
(19, 3, 'El Viejo'),
(20, 3, 'Pto. Morazán'),
(21, 3, 'Somotillo'),
(22, 3, 'Villanueva'),
(23, 3, 'Chinandega'),
(24, 3, 'El Realejo'),
(25, 3, 'Corinto'),
(26, 3, 'Chichigalpa'),
(27, 3, 'Posoltega'),
(28, 4, 'Comalapa'),
(29, 4, 'San Francisco Cuapa'),
(30, 4, 'Juigalpa'),
(31, 4, 'La Libertad'),
(32, 4, 'Santo Domingo'),
(33, 4, 'Santo Tomás'),
(34, 4, 'San Pedro de Lóvago'),
(35, 4, 'Acoyapa'),
(36, 4, 'Villa Sandino'),
(37, 4, 'El Coral'),
(38, 5, 'Pueblo Nuevo'),
(39, 5, 'Condega'),
(40, 5, 'Estelí'),
(41, 5, 'San Juan de Limay'),
(42, 5, 'La Trinidad'),
(43, 5, 'San Nicolás'),
(44, 6, 'Diriá'),
(45, 6, 'Diriomo'),
(46, 6, 'Granada'),
(47, 6, 'Nandaime'),
(48, 7, 'Wiwilí'),
(49, 7, 'Cuá-Bocay'),
(50, 7, 'San José de Bocay'),
(51, 7, 'Sta. María de Pantasma'),
(52, 7, 'San Rafael del Norte'),
(53, 7, 'San Sebastián de Yalí'),
(54, 7, 'La Concordia'),
(55, 7, 'Jinotega'),
(56, 8, 'Achuapa'),
(57, 8, 'El Sauce'),
(58, 8, 'Santa Rosa del Peñón'),
(59, 8, 'El Jicaral'),
(60, 8, 'Larreynaga'),
(61, 8, 'Telica'),
(62, 8, ' Quezalguaque'),
(63, 8, 'León'),
(64, 8, 'La Paz Centro'),
(65, 8, 'Nagarote'),
(66, 9, 'Somoto'),
(67, 9, 'Totogalpa'),
(68, 9, 'Telpaneca'),
(69, 9, 'San Juan de Río Coco'),
(70, 9, 'Palacagüina'),
(71, 9, 'Yalagüina'),
(72, 9, 'San Lucas'),
(73, 9, 'Las Sabanas'),
(74, 9, 'San José de Cusmapa'),
(75, 10, 'San Francisco Libre'),
(76, 10, 'Tipitapa'),
(77, 10, 'Mateare'),
(78, 10, 'Villa Carlos Fonseca'),
(79, 10, 'Francisco Javier (C.Sandino)'),
(80, 10, 'Managua'),
(81, 10, 'Ticuantepe'),
(82, 10, 'El Crucero'),
(83, 10, 'San Rafael del Sur'),
(84, 11, 'Nindirí'),
(85, 11, 'Masaya'),
(86, 11, 'Tisma'),
(87, 11, 'La Concepción'),
(88, 11, 'Masatepe'),
(89, 11, 'Nandasmo'),
(90, 11, 'Catarina'),
(91, 11, 'San Juan de Oriente'),
(92, 11, 'Niquinohomo'),
(93, 12, 'Rancho Grande'),
(94, 12, 'Río Blanco'),
(95, 12, 'El Tuma - La Dalia'),
(96, 12, 'San Isidro'),
(97, 12, 'Sébaco'),
(98, 12, 'Matagalpa'),
(99, 12, 'San Ramón'),
(100, 12, 'Matiguás'),
(101, 12, 'Muy Muy'),
(102, 12, 'Esquipulas'),
(103, 12, 'San Dionisio'),
(104, 12, 'Terrabona'),
(105, 12, 'Ciudad Darío'),
(106, 13, 'Jalapa'),
(107, 13, 'Murra'),
(108, 13, 'El Jícaro'),
(109, 13, 'San Fernando'),
(110, 13, 'Mozonte'),
(111, 13, 'Dipilto'),
(112, 13, 'Macuelizo'),
(113, 13, 'Santa María'),
(114, 13, 'Ocotal'),
(115, 13, 'Ciudad Antigua'),
(116, 13, 'Quilalí'),
(117, 13, 'Wiwili de Nueva Segovia'),
(118, 14, 'Waspán'),
(119, 14, 'Puerto Cabezas'),
(120, 14, 'Rosita'),
(121, 14, 'Bonanza'),
(122, 14, 'Waslala'),
(123, 14, 'Mulukukú'),
(124, 14, 'Siuna'),
(125, 14, 'Prinzapolka'),
(126, 15, 'Paiwas'),
(127, 15, 'La Cruz de Río Grande'),
(128, 15, 'Desembocadura de Río Grande'),
(129, 15, 'Laguna de Perlas'),
(130, 15, 'El Tortuguero'),
(131, 15, 'Rama'),
(132, 15, 'El Ayote'),
(133, 15, 'Muelle de los Bueyes'),
(134, 15, 'Kukra - Hill'),
(135, 15, 'Corn Island'),
(136, 15, 'Bluefields'),
(137, 15, 'Nueva Guinea'),
(138, 16, 'Morrito'),
(139, 16, 'El Almendro'),
(140, 16, 'San Miguelito'),
(141, 16, 'San Carlos'),
(142, 16, 'El Castillo'),
(143, 16, 'San Juan del Norte'),
(144, 17, 'Tola'),
(145, 17, 'Belén'),
(146, 17, 'Potosí'),
(147, 17, 'Buenos Aires'),
(148, 17, 'Moyogalpa'),
(149, 17, 'Altagracia'),
(150, 17, 'San Jorge'),
(151, 17, 'Rivas'),
(152, 17, 'San Juan del Sur'),
(153, 17, 'Cárdenas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `userid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `pass` varchar(225) NOT NULL,
  `date` date NOT NULL,
  `zip` varchar(10) NOT NULL,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colores`
--

CREATE TABLE `colores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(10) NOT NULL,
  `name` varchar(10) NOT NULL,
  `etiqueta` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `colores`
--

INSERT INTO `colores` (`id`, `nombre`, `name`, `etiqueta`) VALUES
(1, 'Rojo', 'Red', 'red'),
(2, 'Celeste', 'Aqua', 'aqua'),
(3, 'Gris', 'Gray', 'gray'),
(4, 'Negro', 'Black', 'black'),
(5, 'Azul Cielo', 'Skyblue', 'skyblue'),
(6, 'Amarillo', 'Yellow', 'yellow'),
(7, 'Azul', 'Blue', 'blue'),
(8, 'Rosado', 'Pink', 'pink'),
(9, 'Blanco', 'White', 'white');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id` int(11) NOT NULL,
  `id_transaccion` varchar(30) NOT NULL,
  `fecha` datetime NOT NULL,
  `status` varchar(20) NOT NULL,
  `email` varchar(60) NOT NULL,
  `id_cliente` varchar(20) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `cat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos_provincias`
--

CREATE TABLE `departamentos_provincias` (
  `id` int(11) NOT NULL,
  `id_pais` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamentos_provincias`
--

INSERT INTO `departamentos_provincias` (`id`, `id_pais`, `nombre`) VALUES
(1, 3, 'Boaco'),
(2, 3, 'Carazo'),
(3, 3, 'Chinandega'),
(4, 3, 'Chontales'),
(5, 3, 'Esteli'),
(6, 3, 'Granada'),
(7, 3, 'Jinotega'),
(8, 3, 'Leon'),
(9, 3, 'Madriz'),
(10, 3, 'Managua'),
(11, 3, 'Masaya'),
(12, 3, 'Matagalpa'),
(13, 3, 'Nueva Segovia'),
(14, 3, 'RAAN'),
(15, 3, 'RAAS'),
(16, 3, 'Rios San Juan'),
(17, 3, 'Rivas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compra`
--

CREATE TABLE `detalle_compra` (
  `id` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_pais` int(11) NOT NULL,
  `id_departamentos_provincias` int(11) NOT NULL,
  `id_ciudad_municipio` int(11) NOT NULL,
  `id_barrio` int(11) NOT NULL,
  `referencia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `direccion`
--

INSERT INTO `direccion` (`id`, `id_usuario`, `id_pais`, `id_departamentos_provincias`, `id_ciudad_municipio`, `id_barrio`, `referencia`) VALUES
(1, 1, 3, 5, 40, 27, 'Costado Sur de Shell Esquipulas 1/2 C al Este');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas_de_envios`
--

CREATE TABLE `empresas_de_envios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `logo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresas_de_envios`
--

INSERT INTO `empresas_de_envios` (`id`, `nombre`, `logo`) VALUES
(1, 'FEDEX', ''),
(2, 'DHL', ''),
(3, 'UPS', ''),
(4, 'USPS', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id`, `nombre`) VALUES
(1, 'Disponible'),
(2, 'No disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_del_pedido`
--

CREATE TABLE `estado_del_pedido` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `description` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado_del_pedido`
--

INSERT INTO `estado_del_pedido` (`id`, `nombre`, `description`) VALUES
(1, 'Procesando', ''),
(2, 'Enviado', ''),
(3, 'Entregado', ''),
(4, 'Devuellto', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id` int(11) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `img` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id`, `nombre`, `img`) VALUES
(1, 'Sony', ''),
(2, 'Apple', ''),
(3, 'Avalon', ''),
(4, 'Samsung', ''),
(5, 'Sony', ''),
(6, 'Xiaomi', ''),
(7, 'Cacazy', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id`, `nombre`) VALUES
(1, 'Panamá'),
(2, 'Costa Rica'),
(3, 'Nicaragua'),
(4, 'Honduras'),
(5, 'El Salvador'),
(6, 'Guatemala'),
(7, 'Belice');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id_perfil` int(11) NOT NULL,
  `nombre_apellido` varchar(150) NOT NULL,
  `idioma` varchar(255) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `codigo_postal` varchar(100) NOT NULL,
  `expectativa` varchar(100) NOT NULL,
  `ocupacion` varchar(50) NOT NULL,
  `correo` varchar(64) NOT NULL,
  `telefono` int(20) NOT NULL,
  `salario` varchar(10) NOT NULL,
  `logo_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id_perfil`, `nombre_apellido`, `idioma`, `ciudad`, `codigo_postal`, `expectativa`, `ocupacion`, `correo`, `telefono`, `salario`, `logo_url`) VALUES
(1, 'Michael Joel Garcia Lopez', 'Español-Ingles', 'Cincinnati', '45237', 'Ser muy responsable', 'Programador Software, Diseñador grafico, Productor', 'joelfubu30@gmail.com', 1, '$1200', 'img/1703847843_red juvenil 3.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precios_de_envios`
--

CREATE TABLE `precios_de_envios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `id_empresa` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `precios_de_envios`
--

INSERT INTO `precios_de_envios` (`id`, `nombre`, `precio`, `id_empresa`) VALUES
(1, 'Standar', 7, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `SKU` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `Availability` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `descuento` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `productFeatures` varchar(100) DEFAULT NULL,
  `id_estado` int(11) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  `id_variante` int(11) DEFAULT NULL,
  `id_marca` int(11) DEFAULT NULL,
  `id_vendedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `name`, `SKU`, `model`, `Availability`, `price`, `descuento`, `description`, `fecha`, `productFeatures`, `id_estado`, `id_category`, `id_variante`, `id_marca`, `id_vendedor`) VALUES
(2, 'Bombilla de cámara inalámbrica 360', 'CAM-0.3-WHI-IK6', 'IK600', 100, 39.99, '5', '5G OEM seguimiento automático WiFi vigilancia CCTV seguridad interior inalámbrico Monitor de vídeo b', NULL, '\"Sensor: CMOS, Cámara domo estilo: cámara PTZ,  VISIÓN NOCTURNA, Detección de movimiento, Sirena inc', 1, 9, NULL, 3, 1),
(3, 'Speaker BTS06', 'BTS-0.1-IND-BTS', 'BTS06', 2, 9.99, '0', '\"Mini altavoz portátil para ducha con Bluetooth, altavoz inalámbrico resistente al agua con ventosa\"', NULL, '\"Resistente al agua IPX, Fuerte succión adecuada para baño, Se puede utilizar como soporte para pega', 1, 2, NULL, 5, NULL),
(4, 'Cámara bombillo fisheye lens wireless XY-007', 'HIK-Ycc365-A10-5MP', 'XY-007', 0, 24.99, '0', 'Wifi Panorama HD Cámara Lámpara de seguridad Bombilla panorámica Vídeo CCTV Cámara IP inalámbrica Cá', NULL, '\"Seguimiento de movimiento humano, VISIÓN NOCTURNA, Detección de movimiento, Detección de sonido, Si', 1, NULL, NULL, NULL, NULL),
(5, 'Fregadero de cocina Voriva KS-2081', '', 'KS-2081', 10, 0, '0', 'Fregadero de cocina inteligente multifunción modelo de nueva tecnología ss 304 Nano negro doble lava', NULL, '\"Estilo de diseño moderno, Tazón individual estilo fregadero, Tratamiento superficial cepillado, For', 1, NULL, NULL, NULL, NULL),
(6, 'Fregadero de cocina OTKS680', '', '', 0, 5.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(7, 'Fregadero de cocina K-2208023', '', '', 0, 5.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(8, 'Grifo de cocina ajustable', '', 'KF-0004', 0, 85.99, '0', '\"Grifo pulverizador de 360 grados para cocina, hogar  de doble uso  de agua ajustable, fregadero mez', NULL, '\"Acero inoxidable, Tratamiento superficial ennegrecido, Tipo de instalación Montado en cubierta, Mat', 1, NULL, NULL, NULL, NULL),
(9, 'Fregadero de cocina EZON-66', '', '', 0, 59.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(10, 'Camera solar outdoor ES-SC118UG', '', '', 0, 194.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(11, 'Micrófono de solapa K-9', '', '', 0, 19.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(12, 'Micrófono de solapa de largo alcance GS8M', '', '', 0, 599.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(13, 'Micrófono de podcast Maono PD-100', '', '', 0, 149.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(14, 'Kit de creación de vlogs de vídeo AY-49', '', '', 0, 23.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(15, 'micrófono inalámbrico para cámara Fifine C8', '', '', 0, 0, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(16, 'Cortadora de pelo ajustable PR-3012', '', '', 0, 0, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(17, 'Cortadora de pelo portátil T9', '', '', 0, 9.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(18, 'Timbre inalámbrico ADA con cámara V-D2', '', '', 0, 78.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(19, 'Timbre inalámbrico ring AP-M2', '', '', 0, 184.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(20, 'Audífonos inalámbricos T-12', '', '', 0, 24.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(21, 'Audífonos inalámbricos HAT-607', '', '', 0, 94.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(22, 'Audífonos para personas mayores tqwinner', 'AUD-VOH-BAO-VHP', 'VHP-1305', 100, 48.99, '0', 'Mini audífono para personas con discapacidad auditiva. Audición digital portátil', NULL, '\"Rango de frecuencia: 280Hz - 3200Hz, Tensión de trabajo: CC 3.7 V, Corriente de trabajo: ≤ 1,5A, OS', 1, NULL, NULL, NULL, NULL),
(23, 'Audífonos inalámbricos T27', '', 'VHP-1305', 0, 28.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(24, 'Audífonos inalámbricos F9-5C', '', '', 0, 12.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(25, 'Audífonos inalámbricos BT-8023', '', '', 0, 21.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(26, 'Audífonos inalámbricos ANC-808', '', '', 0, 19.99, '0', '\"Audífonos Bluetooth inalámbricos con cancelación activa de ruido, 10 horas de funcionamiento para v', NULL, '', 1, NULL, NULL, NULL, NULL),
(27, 'Bombillo led BW-7', '', '', 0, 1.49, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(28, 'Ventilador de techo Wildcat con iluminación', '', 'DLL16503', 100, 54.99, '0', '\"Wildcat Ventilador de Techo con Iluminación, LED Moderno y Silencioso con Control Remoto Temporizad', NULL, '\"Fuente de luz LED, Servicio de soluciones de iluminación Diseño de iluminación y circuitos, Tempera', 1, NULL, NULL, NULL, NULL),
(29, 'ventilador de techo de luz con aspas ocultas', '', 'LCL-001', 100, 79.99, '0', 'Ventilador de techo con hoja Invisible de 220v con luz Led con Control remoto', NULL, '\"Tipo de interruptor Mando a distancia, Fuente de luz LED, Soporta Dimmer, Voltaje de entrada (V) 22', 1, NULL, NULL, NULL, NULL),
(30, 'Bombillo led YUES-LB17', '', '', 0, 1.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(31, 'Lámpara de led inteligente para el hogar', '', '5206', 100, 58.99, '0', '\"HUIQI, iluminación policromática de diseño contemporáneo, luz de techo elegante opcional de alto br', NULL, '\"Fuente de luz LED, Lámpara de tamaño medio, Temperatura de color (CCT) 2700-6000K, Voltaje de entra', 1, NULL, NULL, NULL, NULL),
(32, 'Lámpara de noche para bebés y niños LJC-180', '', 'LJC-180', 100, 16.99, '0', '\"Lámpara Led portátil de noche con forma de conejito y conejo para niños, luz nocturna de silicona p', NULL, '\"Temperatura de color (CCT) 2700K (Blanco cálido suave), Voltaje de entrada (V) DC 5V, Eficiencia lu', 1, NULL, NULL, NULL, NULL),
(33, 'Lámpara de Luna 3D ZC-0207023', '', 'CC-M001', 100, 18.99, '0', '\"Lámpara de noche táctil de 16 colores, luces Led de Noche De Luna 3D con control remoto para sala d', NULL, '\"Estilo de diseño Contemporáneo, Forma de la pantalla Redonda, Fuente de luz LED, Modo de control Co', 1, NULL, NULL, NULL, NULL),
(34, 'Sistema de alarma para coche G-05', '', 'K9G01', 100, 42.99, '0', 'Sistema de alarmas antirrobo para automóviles', NULL, '\"Sistema de alarma antirrobo con función antisecuestro, Función Control remoto de alarma antirrobo, ', 1, NULL, NULL, NULL, NULL),
(35, 'Navegación gps para coche 7p DWGPS-703', '', '', 0, 164.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(36, 'Lámparas de pared LED Luna QF-BHD', '', '', 0, 89.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(37, 'Cámara de seguridad 5G inalámbrica A-7', '', '', 0, 44.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(38, 'chrome cast google APCM-', '', '', 0, 25.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(39, 'cerradura inteligente Digital R-8', '', '', 0, 174.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(40, 'Cerraduras de puerta electrónicas EBKN KF-6628M', '', '', 0, 138.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(41, 'Rastreador gps para motocicleta Gf-07', '', '', 0, 19.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(42, 'Cerradura de puerta con tarjeta RFID', '', '', 0, 58.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(43, 'PHILIPS micro sd GB-64', '', '', 0, 23.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(44, 'Reloj inteligente PRO MAX PLUS-W26', '', '', 0, 19.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(45, 'HUB Adapter Type C 11 in 1 VL-MST11', '', '', 0, 48.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(46, 'cámara de coche grabadora de vídeo espejo retrovisor H-07', '', '', 0, 32.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(47, 'Telefono Xiaomi Redmi 5X', '', '', 0, 174.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(48, 'Telefono Apple iPhone-6', '', '', 0, 330, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(49, 'Telefono Apple iphone-X', '', '', 0, 399.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(50, 'Telefoo Samsung A-57', '', '', 0, 155.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(51, 'Tablet Samsung Tab A7 lite', '', '', 0, 194.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(52, 'Mochila escolar FASHION-587', '', '', 0, 15.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(53, 'Mochila escolar NKLW-791', '', '', 0, 9.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(54, 'Juego de ducha tipo lluvia para baño SH23', '', '', 100, 5.99, '0', '', NULL, '', 1, NULL, NULL, NULL, NULL),
(55, 'Alfombra de baño de diatomita', '\"ALF-1,8-GRA-BDM\"', 'BM02', 100, 12.99, '0', 'Alfombra de baño de tierra de diatomeas absorbente antideslizante tallada hecha de piedra alfombra d', NULL, '', 1, NULL, NULL, NULL, NULL),
(56, 'Paquete de equipos de podcast', '', 'PD100', 100, 148.99, '0', '\"MAONO PD100 XLR micrófono dinámico de Podcast resistente y estable, paquete de equipo de Podcast, s', NULL, '\"Estilo Micrófono de diadema, Micrófono de mano, Micrófono de cuello de cisne, Otros, Micrófono de s', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_review`
--

CREATE TABLE `product_review` (
  `revid` int(11) NOT NULL,
  `cmrid` int(11) NOT NULL,
  `proid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `review` text NOT NULL,
  `rate` int(11) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `product_review`
--

INSERT INTO `product_review` (`revid`, `cmrid`, `proid`, `name`, `email`, `phone`, `review`, `rate`, `date`) VALUES
(1, 1, 10, 'Tushar Khan', 'tushar@gmail.com', '+8801962837564', 'Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.', 3, '2017-09-14'),
(2, 1, 4, 'Tushar Khan', 'tushar.khan0122@gmail.com', '+8801962837564', 'Test Rewiew', 3, '2017-09-27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puestos`
--

CREATE TABLE `puestos` (
  `id` int(11) NOT NULL,
  `puesto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `puestos`
--

INSERT INTO `puestos` (`id`, `puesto`) VALUES
(1, 'CEO'),
(2, 'Desarrollador Web'),
(3, 'Contabilidad y finanzas'),
(4, 'Gestión de Proyectos'),
(5, 'Tecnología de la Información'),
(6, 'Recursos Humanos '),
(7, 'Marketing '),
(8, 'Logística'),
(9, 'Negocios Internacionales'),
(10, 'Comportamiento Organizacional; entre otros.'),
(11, 'Analista financiero'),
(12, 'Gerente de ventas'),
(13, 'Asesor empresarial'),
(14, 'Analista de investigación de mercados'),
(15, 'Recursos humanos'),
(16, 'Gerente de sucursal'),
(17, 'Recepcionista'),
(18, 'Asistente administrativa'),
(19, 'Ayudante general'),
(20, 'Auxiliar administrativo'),
(21, 'Auxiliar de contabilidad'),
(22, 'Comprador'),
(23, 'Analista de calidad'),
(24, 'Ejecutivo telefónico'),
(25, 'Capturista'),
(26, 'Becario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `icono` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`, `icono`) VALUES
(1, 'Administrador', ''),
(2, 'Vendedor', ''),
(3, 'Cliente', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `social_media`
--

CREATE TABLE `social_media` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `link` text NOT NULL,
  `icon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `social_media`
--

INSERT INTO `social_media` (`id`, `name`, `link`, `icon`) VALUES
(1, 'Facebook', '#', 'fa-facebook'),
(2, 'Twitter', '#', 'fa-twitter');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  `1nombre` varchar(100) NOT NULL,
  `2nombre` varchar(100) NOT NULL,
  `1apellido` varchar(100) NOT NULL,
  `2apellido` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `fecha` date NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `id_direccion` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `empresa`, `1nombre`, `2nombre`, `1apellido`, `2apellido`, `email`, `foto`, `password`, `fecha`, `telefono`, `id_direccion`, `id_rol`) VALUES
(1, NULL, 'Michael', 'Joel', 'Garcia', 'Lopez', 'joelfubu30@gmail.com', 'uploads/7845bb8e52.jpg', '141196', '1996-11-14', '+1(614) 636-8300', 1, 3),
(2, 'ELECSHOP', 'Jhon', 'Vendedor', 'Doe', 'L', 'mipais@gmail.com', 'akdhdked//', '141196', '1994-08-23', '123456789', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `variante`
--

CREATE TABLE `variante` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_color` int(11) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
  `sku` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `barrio`
--
ALTER TABLE `barrio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_municipio` (`id_municipio`);

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciudad_municipio`
--
ALTER TABLE `ciudad_municipio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_departamento` (`id_departamento`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`userid`);

--
-- Indices de la tabla `colores`
--
ALTER TABLE `colores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departamentos_provincias`
--
ALTER TABLE `departamentos_provincias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pais` (`id_pais`);

--
-- Indices de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `direccion_ibfk_1` (`id_pais`),
  ADD KEY `direccion_ibfk_2` (`id_departamentos_provincias`),
  ADD KEY `direccion_ibfk_3` (`id_ciudad_municipio`),
  ADD KEY `direccion_ibfk_4` (`id_barrio`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `empresas_de_envios`
--
ALTER TABLE `empresas_de_envios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estado_del_pedido`
--
ALTER TABLE `estado_del_pedido`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `precios_de_envios`
--
ALTER TABLE `precios_de_envios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_ibfk_1` (`id_estado`),
  ADD KEY `producto_ibfk_3` (`id_category`),
  ADD KEY `producto_ibfk_4` (`id_marca`),
  ADD KEY `producto_ibfk_5` (`id_variante`),
  ADD KEY `id_usuarios` (`id_vendedor`);

--
-- Indices de la tabla `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`revid`);

--
-- Indices de la tabla `puestos`
--
ALTER TABLE `puestos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `id_direccion` (`id_direccion`);

--
-- Indices de la tabla `variante`
--
ALTER TABLE `variante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variante_ibfk_1` (`id_producto`),
  ADD KEY `variante_ibfk_2` (`id_color`),
  ADD KEY `id_marca` (`id_marca`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `barrio`
--
ALTER TABLE `barrio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `ciudad_municipio`
--
ALTER TABLE `ciudad_municipio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `colores`
--
ALTER TABLE `colores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `departamentos_provincias`
--
ALTER TABLE `departamentos_provincias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `direccion`
--
ALTER TABLE `direccion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `empresas_de_envios`
--
ALTER TABLE `empresas_de_envios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estado_del_pedido`
--
ALTER TABLE `estado_del_pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id_perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `precios_de_envios`
--
ALTER TABLE `precios_de_envios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `product_review`
--
ALTER TABLE `product_review`
  MODIFY `revid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `puestos`
--
ALTER TABLE `puestos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `variante`
--
ALTER TABLE `variante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `barrio`
--
ALTER TABLE `barrio`
  ADD CONSTRAINT `barrio_ibfk_1` FOREIGN KEY (`id_municipio`) REFERENCES `ciudad_municipio` (`id`);

--
-- Filtros para la tabla `ciudad_municipio`
--
ALTER TABLE `ciudad_municipio`
  ADD CONSTRAINT `ciudad_municipio_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamentos_provincias` (`id`);

--
-- Filtros para la tabla `departamentos_provincias`
--
ALTER TABLE `departamentos_provincias`
  ADD CONSTRAINT `departamentos_provincias_ibfk_1` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id`);

--
-- Filtros para la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD CONSTRAINT `direccion_ibfk_1` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `direccion_ibfk_2` FOREIGN KEY (`id_departamentos_provincias`) REFERENCES `departamentos_provincias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `direccion_ibfk_3` FOREIGN KEY (`id_ciudad_municipio`) REFERENCES `ciudad_municipio` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `direccion_ibfk_4` FOREIGN KEY (`id_barrio`) REFERENCES `barrio` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `direccion_ibfk_5` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_ibfk_3` FOREIGN KEY (`id_category`) REFERENCES `categoria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_ibfk_4` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_direccion`) REFERENCES `direccion` (`id`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `variante`
--
ALTER TABLE `variante`
  ADD CONSTRAINT `variante_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `variante_ibfk_2` FOREIGN KEY (`id_color`) REFERENCES `colores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `variante_ibfk_3` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

DESCRIBE producto;