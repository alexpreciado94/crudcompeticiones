-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-03-2022 a las 23:27:35
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `juego_alberto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `idAlumno` smallint(5) UNSIGNED NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `idClase` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`idAlumno`, `nombre`, `idClase`) VALUES
(1, 'Alfonso Correa Fernandez', 1),
(2, 'Carmen Jaramillo Romero', 1),
(3, 'Jose Antonio Cisnero Moreno', 1),
(4, 'Carla Marquez Cid', 1),
(5, 'Alba Martínez Olivera', 1),
(6, 'Marcos Romero Díaz', 2),
(7, 'Jose Manuel Torrado Gonzalez', 2),
(8, 'María Gil Nuñez', 2),
(9, 'Mar Bonito Preciado', 2),
(10, 'Carlos Gonzalez Lebrijo', 2),
(11, 'Manuel Solis Delgado', 3),
(12, 'Mateo Espinosa Albarran', 3),
(13, 'Lola Rodríguez Gomez', 3),
(14, 'Marta Gonzalez Salas', 3),
(15, 'Paola López Correa', 3),
(16, 'Esperanza Rodríguez Espinosa', 4),
(17, 'Álvaro Romero Antúnez', 4),
(18, 'Jose Alejandro Preciado Senero', 4),
(19, 'Juan Manuel Toscano Reyes', 4),
(20, 'Pablo Ceballos Benitez', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_equipo_competicion`
--

CREATE TABLE `alumno_equipo_competicion` (
  `idAlumno` smallint(5) UNSIGNED NOT NULL,
  `idEquipo` smallint(5) UNSIGNED NOT NULL,
  `idCompeticion` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase`
--

CREATE TABLE `clase` (
  `idClase` smallint(5) UNSIGNED NOT NULL,
  `nombreClase` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clase`
--

INSERT INTO `clase` (`idClase`, `nombreClase`) VALUES
(1, '1SMR'),
(2, '2SMR'),
(3, '1DAW'),
(4, '2DAW');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `competicion`
--

CREATE TABLE `competicion` (
  `idCompeticion` smallint(5) UNSIGNED NOT NULL,
  `nombreCompeticion` varchar(20) NOT NULL,
  `descripcion` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `competicion`
--

INSERT INTO `competicion` (`idCompeticion`, `nombreCompeticion`, `descripcion`) VALUES
(1, 'Cometición de fútbol', 'Competición entre los alumnos de la clase de 1SMR de fútbol'),
(2, 'Cometición de balonc', 'Competición entre los alumnos de la clase de 2SMR de balonce'),
(3, 'Cometición de cosasi', 'caca caca caca'),
(4, 'Cometición de tenis ', 'Competición entre los alumnos de la clase de 2DAW de tenis'),
(17, 'prueba', 'fashion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `idEquipo` smallint(5) UNSIGNED NOT NULL,
  `puntos` tinyint(4) NOT NULL,
  `idCompeticion` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`idEquipo`, `puntos`, `idCompeticion`) VALUES
(39, 8, 17),
(40, 8, 17),
(41, 8, 17),
(42, 8, 17),
(43, 8, 17),
(44, 8, 17),
(45, 8, 17),
(46, 8, 17),
(47, 8, 17),
(48, 8, 17),
(49, 8, 17),
(50, 8, 17),
(51, 8, 17),
(52, 8, 17),
(53, 8, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partida`
--

CREATE TABLE `partida` (
  `idPartida` int(10) UNSIGNED NOT NULL,
  `equipo1` smallint(5) UNSIGNED NOT NULL,
  `equipo2` smallint(5) UNSIGNED NOT NULL,
  `resultado` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`idAlumno`),
  ADD KEY `FK_idClase` (`idClase`);

--
-- Indices de la tabla `alumno_equipo_competicion`
--
ALTER TABLE `alumno_equipo_competicion`
  ADD PRIMARY KEY (`idAlumno`,`idEquipo`,`idCompeticion`);

--
-- Indices de la tabla `clase`
--
ALTER TABLE `clase`
  ADD PRIMARY KEY (`idClase`);

--
-- Indices de la tabla `competicion`
--
ALTER TABLE `competicion`
  ADD PRIMARY KEY (`idCompeticion`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`idEquipo`),
  ADD KEY `FK_idCompeticion` (`idCompeticion`);

--
-- Indices de la tabla `partida`
--
ALTER TABLE `partida`
  ADD PRIMARY KEY (`idPartida`),
  ADD KEY `FK_equipo1` (`equipo1`),
  ADD KEY `FK_equipo2` (`equipo2`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `idAlumno` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `clase`
--
ALTER TABLE `clase`
  MODIFY `idClase` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `competicion`
--
ALTER TABLE `competicion`
  MODIFY `idCompeticion` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `idEquipo` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `partida`
--
ALTER TABLE `partida`
  MODIFY `idPartida` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `FK_idClase` FOREIGN KEY (`idClase`) REFERENCES `clase` (`idClase`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `alumno_equipo_competicion`
--
ALTER TABLE `alumno_equipo_competicion`
  ADD CONSTRAINT `FK_idAlumno` FOREIGN KEY (`idAlumno`) REFERENCES `alumno` (`idAlumno`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_idCompeticion2` FOREIGN KEY (`idCompeticion`) REFERENCES `competicion` (`idCompeticion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_idEquipo` FOREIGN KEY (`idEquipo`) REFERENCES `equipos` (`idEquipo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD CONSTRAINT `FK_idCompeticion` FOREIGN KEY (`idCompeticion`) REFERENCES `competicion` (`idCompeticion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `partida`
--
ALTER TABLE `partida`
  ADD CONSTRAINT `FK_equipo1` FOREIGN KEY (`equipo1`) REFERENCES `equipos` (`idEquipo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_equipo2` FOREIGN KEY (`equipo2`) REFERENCES `equipos` (`idEquipo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
