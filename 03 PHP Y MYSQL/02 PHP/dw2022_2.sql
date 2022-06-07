-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-06-2022 a las 04:23:19
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
-- Base de datos: `dw2022_2`
--
CREATE DATABASE IF NOT EXISTS `dw2022_2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dw2022_2`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actores`
--

DROP TABLE IF EXISTS `actores`;
CREATE TABLE `actores` (
  `act_id` int(10) UNSIGNED NOT NULL,
  `act_nombres` varchar(100) NOT NULL,
  `act_apellidos` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actores`
--

INSERT INTO `actores` (`act_id`, `act_nombres`, `act_apellidos`) VALUES
(1, 'Tom', 'Holland'),
(2, 'Zendaya', 'Colleman'),
(3, 'Benedict', 'Cumberbach'),
(4, 'Elizabeth', 'Olsen'),
(5, 'keanu', 'Reeves'),
(6, 'Carrie-Anne', 'Moss'),
(7, 'Jack', 'Nicolson'),
(8, 'Shelly', 'Duvall'),
(9, 'Leonardo', 'DiCaprio'),
(10, 'Kate', 'Winslet');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directores`
--

DROP TABLE IF EXISTS `directores`;
CREATE TABLE `directores` (
  `dire_id` int(10) UNSIGNED NOT NULL,
  `dire_nombres` varchar(50) NOT NULL,
  `dire_apellidos` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `directores`
--

INSERT INTO `directores` (`dire_id`, `dire_nombres`, `dire_apellidos`) VALUES
(1, 'Jon', 'Wats'),
(2, 'Sam', 'Raimi'),
(3, 'Lana', 'Wachowski'),
(4, 'Christopher', 'Nolan'),
(5, 'Stanly', 'Kubric');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

DROP TABLE IF EXISTS `peliculas`;
CREATE TABLE `peliculas` (
  `peli_id` int(10) UNSIGNED NOT NULL,
  `peli_nombre` varchar(255) NOT NULL COMMENT 'aqui va el nombre de la  pelicula',
  `peli_genero` varchar(100) NOT NULL,
  `peli_fecha_estreno` date NOT NULL,
  `peli_restricciones` varchar(20) NOT NULL COMMENT 'ejem PG = publico en general',
  `peli_dire_id` int(10) UNSIGNED DEFAULT NULL,
  `peli_img` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`peli_id`, `peli_nombre`, `peli_genero`, `peli_fecha_estreno`, `peli_restricciones`, `peli_dire_id`, `peli_img`) VALUES
(1, 'Spiderman: No Way Home', 'Ciencia Ficción', '2021-12-15', 'PG-13', 1, 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/poster-spider-man-no-way-home-1637136793.jpg'),
(2, 'Dr. Strange: En el multiverso de la locura', 'acción', '2022-05-05', 'PG-16', 2, 'https://dam.smashmexico.com.mx/wp-content/uploads/2022/02/doctor-strange-nuevo-poster.jpg'),
(3, 'Matrix', 'ciencia ficcion', '1999-12-24', 'PG-13', 3, 'https://es.web.img3.acsta.net/medias/nmedia/18/72/16/76/20065616.jpg'),
(5, 'Interestellar', 'Drama', '2014-10-08', 'PG-18', 4, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

DROP TABLE IF EXISTS `personajes`;
CREATE TABLE `personajes` (
  `per_act_id` int(11) NOT NULL,
  `per_peli_id` int(11) NOT NULL,
  `per_nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`per_act_id`, `per_peli_id`, `per_nombre`) VALUES
(1, 1, 'spiderman'),
(2, 1, 'MJ'),
(3, 2, 'Dr. Strange'),
(4, 2, 'La bruja Escarlata'),
(7, 6, 'Jack Torrance'),
(8, 6, 'Wendy Torrance'),
(9, 7, 'Jack'),
(10, 7, 'Rose'),
(0, 0, 'Batman'),
(0, 0, 'Superman'),
(0, 0, 'Capitan america');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

DROP TABLE IF EXISTS `personas`;
CREATE TABLE `personas` (
  `per_id` int(10) UNSIGNED NOT NULL,
  `per_nombres` varchar(100) NOT NULL,
  `per_apellidos` varchar(100) NOT NULL,
  `per_genero` char(1) NOT NULL,
  `per_dni` char(8) NOT NULL,
  `per_fecha_nac` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`per_id`, `per_nombres`, `per_apellidos`, `per_genero`, `per_dni`, `per_fecha_nac`) VALUES
(1, 'Juan', 'Quispe', 'M', '12345678', '2000-12-12');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `directores`
--
ALTER TABLE `directores`
  ADD PRIMARY KEY (`dire_id`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`peli_id`),
  ADD KEY `fk_direId` (`peli_dire_id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`per_id`),
  ADD UNIQUE KEY `per_dni` (`per_dni`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `directores`
--
ALTER TABLE `directores`
  MODIFY `dire_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `peli_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `per_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD CONSTRAINT `fk_direId` FOREIGN KEY (`peli_dire_id`) REFERENCES `directores` (`dire_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
