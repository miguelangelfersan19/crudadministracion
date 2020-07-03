-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-07-2020 a las 18:57:18
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbservicios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_registro`
--

CREATE TABLE `tbl_registro` (
  `id_registro` int(11) NOT NULL,
  `tipo_peticion` varchar(20) DEFAULT NULL,
  `asunto` varchar(60) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fecha_limite` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_registro`
--

INSERT INTO `tbl_registro` (`id_registro`, `tipo_peticion`, `asunto`, `estado`, `fecha_creacion`, `fecha_limite`) VALUES
(2, 'Peticiòn', 'mal servicio', 'Cerrado', '2020-07-03 16:31:52', '2020-07-07'),
(3, 'Peticiòn', 'trabajando', 'En Ejecuciòn', '2020-07-03 16:33:01', '2020-07-04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuario`
--

CREATE TABLE `tbl_usuario` (
  `id` int(11) NOT NULL,
  `usuario` varchar(25) NOT NULL,
  `pass` blob DEFAULT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_usuario`
--

INSERT INTO `tbl_usuario` (`id`, `usuario`, `pass`, `nombre`) VALUES
(3, 'admin', 0x31323334, 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_registro`
--
ALTER TABLE `tbl_registro`
  ADD PRIMARY KEY (`id_registro`);

--
-- Indices de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_registro`
--
ALTER TABLE `tbl_registro`
  MODIFY `id_registro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
