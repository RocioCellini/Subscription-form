-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 16-05-2022 a las 18:22:51
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bekeu-subscription`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `state`
--

DROP TABLE IF EXISTS `state`;
CREATE TABLE IF NOT EXISTS `state` (
  `id_state` int(11) NOT NULL AUTO_INCREMENT,
  `code` text NOT NULL,
  `name` text NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL,
  PRIMARY KEY (`id_state`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `state`
--

INSERT INTO `state` (`id_state`, `code`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'AK', 'Alaska', '2021-08-01', '2021-08-01'),
(2, 'AL', 'Alabama', '2021-08-01', '2021-08-01'),
(3, 'HI', 'Hawaii', '2021-08-01', '2021-08-01'),
(4, 'AZ', 'Arizona', '2021-08-01', '2021-08-01'),
(5, 'CA', 'California', '2021-08-01', '2021-08-01'),
(6, 'AR', 'Arkansas', '2021-08-01', '2021-08-01'),
(7, 'ID', 'Idaho', '2021-08-01', '2021-08-01'),
(8, 'GA', 'Georgia', '2021-08-01', '2021-08-01'),
(9, 'CO', 'Colorado', '2021-08-01', '2021-08-01'),
(10, 'DE', 'Delaware', '2021-08-01', '2021-08-01'),
(11, 'CT', 'Connecticut', '2021-08-01', '2021-08-01'),
(12, 'FL', 'Florida', '2021-08-01', '2021-08-01'),
(13, 'IL', 'Illinois', '2021-08-01', '2021-08-01'),
(14, 'IA', 'Iowa', '2021-08-01', '2021-08-01'),
(15, 'IN', 'Indiana', '2021-08-01', '2021-08-01'),
(16, 'KS', 'Kansas', '2021-08-01', '2021-08-01'),
(17, 'KY', 'Kentucky', '2021-08-01', '2021-08-01'),
(18, 'LA', 'Louisiana', '2021-08-01', '2021-08-01'),
(19, 'ME', 'Maine', '2021-08-01', '2021-08-01'),
(20, 'MD', 'Maryland', '2021-08-01', '2021-08-01'),
(21, 'MA', 'Massachusetts', '2021-08-01', '2021-08-01'),
(22, 'MI', 'Michigan', '2021-08-01', '2021-08-01'),
(23, 'MN', 'Minnesota', '2021-08-01', '2021-08-01'),
(24, 'MS', 'Mississippi', '2021-08-01', '2021-08-01'),
(25, 'MO', 'Missouri', '2021-08-01', '2021-08-01'),
(26, 'NE', 'Nebraska', '2021-08-01', '2021-08-01'),
(27, 'MT', 'Montana', '2021-08-01', '2021-08-01'),
(28, 'NV', 'Nevada', '2021-08-01', '2021-08-01'),
(29, 'NH', 'New', '2021-08-01', '2021-08-01'),
(30, 'NJ', 'New', '2021-08-01', '2021-08-01'),
(31, 'NM', 'New', '2021-08-01', '2021-08-01'),
(32, 'NY', 'New', '2021-08-01', '2021-08-01'),
(33, 'NC', 'North', '2021-08-01', '2021-08-01'),
(34, 'ND', 'North', '2021-08-01', '2021-08-01'),
(35, 'OK', 'Oklahoma', '2021-08-01', '2021-08-01'),
(36, 'OH', 'Ohio', '2021-08-01', '2021-08-01'),
(37, 'OR', 'Oregon', '2021-08-01', '2021-08-01'),
(38, 'PA', 'Pennsylvania', '2021-08-01', '2021-08-01'),
(39, 'RI', 'Rhode', '2021-08-01', '2021-08-01'),
(40, 'SC', 'South', '2021-08-01', '2021-08-01'),
(41, 'SD', 'South', '2021-08-01', '2021-08-01'),
(42, 'TN', 'Tennessee', '2021-08-01', '2021-08-01'),
(43, 'TX', 'Texas', '2021-08-01', '2021-08-01'),
(44, 'UT', 'Utah', '2021-08-01', '2021-08-01'),
(45, 'VT', 'Vermont', '2021-08-01', '2021-08-01'),
(46, 'VA', 'Virginia', '2021-08-01', '2021-08-01'),
(47, 'WA', 'Washington', '2021-08-01', '2021-08-01'),
(48, 'WV', 'West', '2021-08-01', '2021-08-01'),
(49, 'WI', 'Wisconsin', '2021-08-01', '2021-08-01'),
(50, 'WY', 'Wyoming', '2021-08-01', '2021-08-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subscription`
--

DROP TABLE IF EXISTS `subscription`;
CREATE TABLE IF NOT EXISTS `subscription` (
  `id_subscription` int(11) NOT NULL AUTO_INCREMENT,
  `id_state` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id_subscription`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `subscription`
--

INSERT INTO `subscription` (`id_subscription`, `id_state`, `email`) VALUES
(1, 4, 'rocio@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
