-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-04-2024 a las 17:50:02
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
-- Base de datos: `bd_ofertas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` int(3) NOT NULL,
  `razon_social` varchar(128) NOT NULL DEFAULT '',
  `ruc` varchar(11) NOT NULL DEFAULT '',
  `correo` varchar(64) NOT NULL DEFAULT '',
  `direccion` varchar(128) NOT NULL DEFAULT '',
  `telofono` varchar(10) NOT NULL DEFAULT '',
  `descripcion` varchar(500) NOT NULL DEFAULT '',
  `rublo` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ofertas`
--

CREATE TABLE `ofertas` (
  `id` int(5) NOT NULL,
  `titulo` varchar(128) NOT NULL DEFAULT '',
  `id_empresa` int(5) DEFAULT NULL,
  `pago` varchar(10) NOT NULL DEFAULT '',
  `horario` varchar(100) NOT NULL DEFAULT '',
  `Especialidad` varchar(128) DEFAULT '',
  `modalidad` varchar(64) NOT NULL DEFAULT '',
  `fecha_publicacion` datetime(6) DEFAULT NULL,
  `fecha_cierre` datetime(6) DEFAULT NULL,
  `maximo_postulantes` varchar(5) NOT NULL,
  `cantidad_postulantes` int(5) NOT NULL,
  `estado` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postulaciones`
--

CREATE TABLE `postulaciones` (
  `id` int(5) NOT NULL,
  `id_postulante` int(5) DEFAULT NULL,
  `id_oferta` int(4) DEFAULT NULL,
  `fecha_postulacion` varchar(16) NOT NULL DEFAULT '',
  `estado` varchar(16) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postulantes`
--

CREATE TABLE `postulantes` (
  `id` int(5) NOT NULL,
  `dni` varchar(8) NOT NULL DEFAULT '',
  `nombres` varchar(32) NOT NULL DEFAULT '',
  `apellidos` varchar(64) NOT NULL DEFAULT '',
  `correo` varchar(64) NOT NULL DEFAULT '',
  `telofono` varchar(9) NOT NULL DEFAULT '',
  `direccion` varchar(64) NOT NULL DEFAULT '',
  `estado_civil` varchar(32) NOT NULL DEFAULT '',
  `especialidad` varchar(128) NOT NULL DEFAULT '',
  `archivo_cv` varchar(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ofertas`
--
ALTER TABLE `ofertas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `postulaciones`
--
ALTER TABLE `postulaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `postulantes`
--
ALTER TABLE `postulantes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ofertas`
--
ALTER TABLE `ofertas`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `postulaciones`
--
ALTER TABLE `postulaciones`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `postulantes`
--
ALTER TABLE `postulantes`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
