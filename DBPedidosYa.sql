-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-12-2023 a las 11:04:03
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pedidosya`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id_producto` int(11) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `monto` float NOT NULL,
  `usuario_id_usuario` int(11) NOT NULL,
  `producto_id_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id_producto`, `usuario`, `cantidad`, `monto`, `usuario_id_usuario`, `producto_id_producto`) VALUES
(1, 'Mateo Darío', 6, 6000, 5, 1),
(2, 'Aldana Elena', 2, 5000, 6, 3),
(3, 'Mónica', 4, 12000, 1, 4),
(4, 'Mirta Noemí', 10, 50000, 3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `descripción` varchar(500) NOT NULL,
  `proveedor` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `descripción`, `proveedor`) VALUES
(1, 'Postre de frutillas, jalea y base bizcochuelo vainilla', 'Soto & asociados'),
(2, 'Tortilla de papas a la española, con sabores de la casa', 'El mundo de las tortillas S.A.'),
(3, 'Pollo frito con guarnición a elegir', 'El rey del pollo'),
(4, 'Pastas con salsas a elección', 'La pasta de la abuela');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(45) NOT NULL,
  `contraseña` varchar(45) NOT NULL,
  `dirección` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre_usuario`, `contraseña`, `dirección`) VALUES
(1, 'Mónica', '123', 'Alvear 4536, Isidro Casanova'),
(2, 'Sebastián', '456', 'Monte Negro 876, Bahía Blanca'),
(3, 'Mirta Noemí', '789', 'Cordero 456, Rafael Castillo'),
(4, 'Bruno Ernesto', '987', 'Bartolomé de la s Casa 345, San Justo'),
(5, 'Mateo Darío', '654', 'Lannín 1122, Villa Luzuriaga'),
(6, 'Aldana Elena', '321', 'Rondeau 689, Caba');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
