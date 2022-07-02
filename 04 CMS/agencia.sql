-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-07-2022 a las 04:47:34
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agencia`
--
CREATE DATABASE IF NOT EXISTS `agencia` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `agencia`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `header`
--

DROP TABLE IF EXISTS `header`;
CREATE TABLE `header` (
  `hea_logo_name` varchar(50) NOT NULL,
  `hea_subtitulo` varchar(100) NOT NULL,
  `hea_titulo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `header`
--

INSERT INTO `header` (`hea_logo_name`, `hea_subtitulo`, `hea_titulo`) VALUES
('Julián Gomez', 'Bienvenido a esta paginita', 'Es grato conocerte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `portafolio`
--

DROP TABLE IF EXISTS `portafolio`;
CREATE TABLE `portafolio` (
  `port_id` int(10) UNSIGNED NOT NULL,
  `port_titulo` varchar(20) NOT NULL,
  `port_subtitulo` varchar(20) NOT NULL,
  `port_img` text NOT NULL,
  `port_contenido` text NOT NULL,
  `port_fecha` date NOT NULL,
  `port_user_id` int(11) NOT NULL,
  `port_status` varchar(20) DEFAULT NULL,
  `port_vistas` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `portafolio`
--

INSERT INTO `portafolio` (`port_id`, `port_titulo`, `port_subtitulo`, `port_img`, `port_contenido`, `port_fecha`, `port_user_id`, `port_status`, `port_vistas`) VALUES
(1, 'Threads', 'Illustration', '6ffe4e608e45f09972f428ee6e2f42d4.jpg', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Assumenda eius optio repellendus quos saepe maxime ducimus quasi placeat earum sed odit, minus consequatur dolorum tenetur. Doloremque vitae expedita voluptates nulla!', '2022-06-20', 2, 'publicado', 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_nombres` varchar(255) NOT NULL,
  `user_apellidos` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_img` text DEFAULT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_token` text DEFAULT NULL,
  `user_status` tinyint(4) DEFAULT 0 COMMENT 'status 0: ususario no activado, status 1: usuario activado',
  `user_rol` varchar(50) NOT NULL DEFAULT 'suscriptor'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`user_id`, `user_nombres`, `user_apellidos`, `user_email`, `user_img`, `user_pass`, `user_token`, `user_status`, `user_rol`) VALUES
(2, 'eduardo', 'arroyo', 'eduardo@gmail.com', NULL, '$2y$12$3mCorDXUaYgb7aERcMStBOd1sumQ7XZHW9m0/cT5M3zzhhemtGFzO', '', 1, 'admin'),
(4, 'sofia', 'casas', 'sofia@gmail.com', NULL, '$2y$12$GfrGXb9cDtZpwkMvRGRWPutl7iCAd.3t1uL227AxMtvG1E27GF0by', '', 1, 'suscriptor');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `portafolio`
--
ALTER TABLE `portafolio`
  ADD PRIMARY KEY (`port_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `portafolio`
--
ALTER TABLE `portafolio`
  MODIFY `port_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
