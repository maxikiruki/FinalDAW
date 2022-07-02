-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 12-06-2020 a las 17:48:24
-- Versión del servidor: 10.3.22-MariaDB-0+deb10u1
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `riegoautomatico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `sector_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `start_humidity` int(11) NOT NULL,
  `final_humidity` int(11) NOT NULL,
  `total_liters` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `history`
--

INSERT INTO `history` (`id`, `sector_id`, `date`, `start_time`, `end_time`, `start_humidity`, `final_humidity`, `total_liters`) VALUES
(1, 1, '2020-05-24', '18:24:00', '18:30:00', 10, 75, 80),
(2, 1, '2020-05-24', '18:24:00', '18:30:00', 10, 75, 80),
(3, 1, '2020-06-01', '19:40:00', '19:45:00', 5, 10, 20),
(4, 1, '2020-06-01', '19:40:00', '19:45:00', 5, 10, 20),
(5, 1, '2020-06-01', '19:40:00', '19:45:00', 5, 10, 21),
(6, 1, '2020-06-02', '16:30:00', '16:31:00', 2, 4, 1),
(7, 1, '2020-06-02', '17:57:00', '17:57:00', 1, 3, 0),
(8, 1, '2020-06-02', '17:57:00', '17:57:00', 1, 3, 0),
(9, 1, '2020-06-02', '18:54:00', '18:54:00', 6, 5, 0),
(10, 1, '2020-06-02', '18:54:00', '18:54:00', 6, 5, 0),
(11, 1, '2020-06-02', '20:44:00', '20:46:00', 4, 5, 0),
(12, 1, '2020-06-02', '20:44:00', '20:46:00', 4, 5, 0),
(13, 1, '2020-06-02', '21:14:00', '21:31:00', 3, 6, 0),
(14, 1, '2020-06-02', '21:14:00', '21:31:00', 3, 6, 0),
(15, 1, '2020-06-02', '21:34:00', '21:36:00', 1, 9, 0),
(16, 1, '2020-06-02', '21:34:00', '21:36:00', 1, 9, 0),
(17, 1, '2020-06-02', '21:41:00', '22:29:00', 1, 2, 0),
(18, 1, '2020-06-02', '21:41:00', '22:29:00', 1, 2, 0),
(19, 1, '2020-06-02', '22:29:00', '22:29:00', 0, 2, 0),
(20, 1, '2020-06-02', '22:29:00', '22:29:00', 0, 2, 0),
(21, 1, '2020-06-02', '22:42:00', '22:43:00', 0, 2, 0),
(22, 1, '2020-06-02', '22:42:00', '22:43:00', 0, 2, 0),
(23, 1, '2020-06-02', '23:05:00', '23:10:00', 1, 2, 0),
(24, 1, '2020-06-02', '23:05:00', '23:10:00', 1, 2, 0),
(25, 1, '2020-06-11', '21:56:00', '21:56:00', 5, 4, 0),
(26, 1, '2020-06-11', '21:58:00', '21:58:00', 1, 4, 0),
(27, 1, '2000-01-01', '00:23:00', '00:00:00', 0, 1, -12125),
(28, 1, '2020-06-12', '16:00:00', '16:01:00', 0, 1, 24805);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time_morning` time DEFAULT NULL,
  `end_time_morning` time DEFAULT NULL,
  `start_time_afternoon` time DEFAULT NULL,
  `end_time_afternoon` time DEFAULT NULL,
  `visible` tinyint(1) NOT NULL,
  `monday` tinyint(1) DEFAULT NULL,
  `tuesday` tinyint(1) DEFAULT NULL,
  `wednesday` tinyint(1) DEFAULT NULL,
  `thursday` tinyint(1) DEFAULT NULL,
  `friday` tinyint(1) DEFAULT NULL,
  `saturday` tinyint(1) DEFAULT NULL,
  `sunday` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `schedule`
--

INSERT INTO `schedule` (`id`, `name`, `description`, `start_time_morning`, `end_time_morning`, `start_time_afternoon`, `end_time_afternoon`, `visible`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `sunday`) VALUES
(1, 'L-X-V', 'Sin aprobar', '12:34:00', '12:51:00', NULL, NULL, 0, 1, 0, 1, 0, 1, 0, 0),
(3, 'Martes 23:05-23:10', NULL, '23:05:00', '23:10:00', NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sector`
--

CREATE TABLE `sector` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `schedule_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valve` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `humedity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flowmeter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_schedule_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sector`
--

INSERT INTO `sector` (`id`, `owner_id`, `schedule_id`, `name`, `valve`, `humedity`, `flowmeter`, `last_schedule_id`) VALUES
(1, 2, 3, 'Tomates', 'D9', 'A0', 'D2', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `sector_id` int(11) NOT NULL,
  `on_off` tinyint(1) NOT NULL,
  `programmed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `state`
--

INSERT INTO `state` (`id`, `sector_id`, `on_off`, `programmed`) VALUES
(1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `phone`, `email`, `password`) VALUES
(1, 'administrador', '[\"ROLE_ADMIN\"]', 665146384, 'facilriego@gmail.com', 'Jaime123'),
(2, 'jaime', '[\"ROLE_USER\"]', 665146384, 'jaimenavarrol97@gmail.com', 'Jaime123'),
(4, 'docente', '[\"ROLE_USER\"]', 665146384, '', 'Docente123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_27BA704BDE95C867` (`sector_id`);

--
-- Indices de la tabla `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sector`
--
ALTER TABLE `sector`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4BA3D9E8E43DBDD9` (`last_schedule_id`),
  ADD KEY `IDX_4BA3D9E87E3C61F9` (`owner_id`),
  ADD KEY `IDX_4BA3D9E8A40BC2D5` (`schedule_id`);

--
-- Indices de la tabla `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_A393D2FBDE95C867` (`sector_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `sector`
--
ALTER TABLE `sector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `FK_27BA704BDE95C867` FOREIGN KEY (`sector_id`) REFERENCES `sector` (`id`);

--
-- Filtros para la tabla `sector`
--
ALTER TABLE `sector`
  ADD CONSTRAINT `FK_4BA3D9E87E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_4BA3D9E8A40BC2D5` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`),
  ADD CONSTRAINT `FK_4BA3D9E8E43DBDD9` FOREIGN KEY (`last_schedule_id`) REFERENCES `schedule` (`id`);

--
-- Filtros para la tabla `state`
--
ALTER TABLE `state`
  ADD CONSTRAINT `FK_A393D2FBDE95C867` FOREIGN KEY (`sector_id`) REFERENCES `sector` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
