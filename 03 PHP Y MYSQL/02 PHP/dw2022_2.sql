-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2022 a las 21:38:11
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.28

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
(5, 'Stanly', 'Kubric'),
(6, 'James', 'cameron');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

DROP TABLE IF EXISTS `peliculas`;
CREATE TABLE `peliculas` (
  `peli_id` int(10) UNSIGNED NOT NULL,
  `peli_nombre` varchar(255) NOT NULL COMMENT 'aqui va el nombre de la  pelicula',
  `peli_img` text DEFAULT NULL,
  `peli_genero` varchar(100) NOT NULL,
  `peli_fecha_estreno` date NOT NULL,
  `peli_restricciones` varchar(20) NOT NULL COMMENT 'ejem PG = publico en general',
  `peli_dire_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`peli_id`, `peli_nombre`, `peli_img`, `peli_genero`, `peli_fecha_estreno`, `peli_restricciones`, `peli_dire_id`) VALUES
(1, 'Spiderman: No way home', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/poster-spider-man-no-way-home-1637136793.jpg', 'ciencia ficción', '2021-12-15', 'PG-13', 1),
(2, 'Dr. Strange: En el multiverso de la locura', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/poster-spider-man-no-way-home-1637136793.jpg', 'acción', '2022-05-05', 'PG-16', 2),
(3, 'Matrix', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/poster-spider-man-no-way-home-1637136793.jpg', 'ciencia ficcion', '1999-12-24', 'PG-13', 3),
(4, 'Avenger', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/poster-spider-man-no-way-home-1637136793.jpg', 'accion', '2012-05-14', 'PG-13', NULL),
(5, 'Interestellar', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/poster-spider-man-no-way-home-1637136793.jpg', 'Drama', '2014-10-08', 'PG-18', 4),
(6, 'El resplandor', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/poster-spider-man-no-way-home-1637136793.jpg', 'terror', '1980-10-09', 'PG-18', 5),
(7, 'Titanic', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/poster-spider-man-no-way-home-1637136793.jpg', 'Drama romantico', '1997-07-07', 'PG', 6),
(8, 'El codigo enigma', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/poster-spider-man-no-way-home-1637136793.jpg', 'bélica', '2017-08-19', 'PG-16', NULL),
(9, 'Avatar', 'https://asturscore.com/wp-content/uploads/2010/09/Avatar.jpg', 'ciencia ficción', '2020-02-05', 'PG-13', 6),
(10, 'asdsad', 'https://media.revistagq.com/photos/5f08145242f91a64e56904be/4:3/w_1440,h_1080,c_limit/avatar_aang.jpg', 'sadsad', '2022-05-31', 'asdsad', 4),
(11, 'asdsad', 'https://media.revistagq.com/photos/5f08145242f91a64e56904be/4:3/w_1440,h_1080,c_limit/avatar_aang.jpg', 'sadsad', '2022-05-31', 'asdsad', 4),
(12, 'asdsad', 'https://media.revistagq.com/photos/5f08145242f91a64e56904be/4:3/w_1440,h_1080,c_limit/avatar_aang.jpg', 'sadsad', '2022-05-31', 'asdsad', 4),
(13, 'asdsad', 'https://media.revistagq.com/photos/5f08145242f91a64e56904be/4:3/w_1440,h_1080,c_limit/avatar_aang.jpg', 'sadsad', '2022-05-31', 'asdsad', 4),
(14, '', '', '', '0000-00-00', '', 3),
(15, '', '', '', '0000-00-00', '', 3);

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
-- Indices de la tabla `actores`
--
ALTER TABLE `actores`
  ADD PRIMARY KEY (`act_id`);

--
-- Indices de la tabla `directores`
--
ALTER TABLE `directores`
  ADD PRIMARY KEY (`dire_id`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`peli_id`);

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
-- AUTO_INCREMENT de la tabla `actores`
--
ALTER TABLE `actores`
  MODIFY `act_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `directores`
--
ALTER TABLE `directores`
  MODIFY `dire_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `peli_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `per_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
