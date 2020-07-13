-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 07-07-2020 a las 14:11:54
-- Versión del servidor: 5.7.30
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `horarios_HorariosLavalle`
--
CREATE DATABASE IF NOT EXISTS `horarios_HorariosLavalle` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `horarios_HorariosLavalle`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `californiaidasaturday`
--

CREATE TABLE `californiaidasaturday` (
  `idcaliforniaidaweek` int(11) NOT NULL,
  `3portena` time DEFAULT NULL,
  `central` time DEFAULT NULL,
  `william` time DEFAULT NULL,
  `california` time DEFAULT NULL,
  `costa` time DEFAULT NULL,
  `additional` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `californiaidasaturday`
--

INSERT INTO `californiaidasaturday` (`idcaliforniaidaweek`, `3portena`, `central`, `william`, `california`, `costa`, `additional`) VALUES
(1, '07:00:00', '07:10:00', NULL, '07:20:00', '07:40:00', NULL),
(2, NULL, NULL, NULL, '10:10:00', '10:30:00', NULL),
(3, '16:40:00', '16:50:00', NULL, '17:00:00', '17:20:00', NULL),
(4, NULL, NULL, NULL, '18:50:00', '19:10:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `californiaidasunday`
--

CREATE TABLE `californiaidasunday` (
  `idcaliforniaidaweek` int(11) NOT NULL,
  `3portena` time DEFAULT NULL,
  `central` time DEFAULT NULL,
  `california` time DEFAULT NULL,
  `costa` time DEFAULT NULL,
  `additional` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `californiaidasunday`
--

INSERT INTO `californiaidasunday` (`idcaliforniaidaweek`, `3portena`, `central`, `california`, `costa`, `additional`) VALUES
(1, '07:00:00', '07:10:00', '07:20:00', '07:40:00', NULL),
(2, NULL, NULL, '10:10:00', '10:30:00', NULL),
(3, '16:40:00', '16:50:00', '17:00:00', '17:20:00', NULL),
(4, NULL, NULL, '18:50:00', '19:10:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `californiaidaweek`
--

CREATE TABLE `californiaidaweek` (
  `idcaliforniaidaweek` int(11) NOT NULL,
  `3portena` time DEFAULT NULL,
  `central` time DEFAULT NULL,
  `william` time DEFAULT NULL,
  `california` time DEFAULT NULL,
  `costa` time DEFAULT NULL,
  `additional` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `californiaidaweek`
--

INSERT INTO `californiaidaweek` (`idcaliforniaidaweek`, `3portena`, `central`, `william`, `california`, `costa`, `additional`) VALUES
(1, '06:00:00', '06:10:00', NULL, '06:20:00', '06:40:00', NULL),
(2, NULL, NULL, NULL, '10:10:00', '10:30:00', NULL),
(3, NULL, NULL, NULL, '12:30:00', '12:50:00', NULL),
(4, NULL, NULL, NULL, '15:50:00', '16:10:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `californiavueltasaturday`
--

CREATE TABLE `californiavueltasaturday` (
  `idcaliforniavueltasaturday` int(11) NOT NULL,
  `costa` time DEFAULT NULL,
  `california` time DEFAULT NULL,
  `william` time DEFAULT NULL,
  `central` time DEFAULT NULL,
  `3portena` time DEFAULT NULL,
  `additional` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `californiavueltasaturday`
--

INSERT INTO `californiavueltasaturday` (`idcaliforniavueltasaturday`, `costa`, `california`, `william`, `central`, `3portena`, `additional`) VALUES
(1, '09:20:00', '09:40:00', NULL, NULL, NULL, NULL),
(2, '10:30:00', '10:50:00', NULL, '11:00:00', '11:10:00', NULL),
(3, '18:20:00', '18:40:00', NULL, NULL, NULL, NULL),
(4, '20:00:00', '20:20:00', NULL, '20:30:00', '20:40:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `californiavueltasunday`
--

CREATE TABLE `californiavueltasunday` (
  `idcaliforniavueltasaturday` int(11) NOT NULL,
  `costa` time DEFAULT NULL,
  `california` time DEFAULT NULL,
  `central` time DEFAULT NULL,
  `3portena` time DEFAULT NULL,
  `additional` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `californiavueltasunday`
--

INSERT INTO `californiavueltasunday` (`idcaliforniavueltasaturday`, `costa`, `california`, `central`, `3portena`, `additional`) VALUES
(1, '09:20:00', '09:40:00', NULL, NULL, NULL),
(2, '10:30:00', '10:50:00', '11:00:00', '11:10:00', NULL),
(3, '18:20:00', '18:40:00', NULL, NULL, NULL),
(4, '20:00:00', '20:20:00', '20:30:00', '20:40:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `californiavueltaweek`
--

CREATE TABLE `californiavueltaweek` (
  `idcaliforniavueltaweek` int(11) NOT NULL,
  `costa` time DEFAULT NULL,
  `california` time DEFAULT NULL,
  `william` time DEFAULT NULL,
  `central` time DEFAULT NULL,
  `3portena` time DEFAULT NULL,
  `additional` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `californiavueltaweek`
--

INSERT INTO `californiavueltaweek` (`idcaliforniavueltaweek`, `costa`, `california`, `william`, `central`, `3portena`, `additional`) VALUES
(1, '09:40:00', '10:00:00', NULL, NULL, NULL, NULL),
(2, '12:00:00', '12:20:00', NULL, NULL, NULL, NULL),
(3, '15:10:00', '15:30:00', NULL, NULL, NULL, NULL),
(4, '20:00:00', '20:20:00', NULL, '20:30:00', '20:40:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `internocostaidasaturday`
--

CREATE TABLE `internocostaidasaturday` (
  `idinternocostaidasaturday` int(11) NOT NULL,
  `lapega` time DEFAULT NULL,
  `lasvioletas` time DEFAULT NULL,
  `elvergel` time DEFAULT NULL,
  `paramillo` time DEFAULT NULL,
  `lavalle` time DEFAULT NULL,
  `labajada` time DEFAULT NULL,
  `california` time DEFAULT NULL,
  `mendoza` time DEFAULT NULL,
  `costaDeAraujo` time DEFAULT NULL,
  `additional` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `internocostaidasaturday`
--

INSERT INTO `internocostaidasaturday` (`idinternocostaidasaturday`, `lapega`, `lasvioletas`, `elvergel`, `paramillo`, `lavalle`, `labajada`, `california`, `mendoza`, `costaDeAraujo`, `additional`) VALUES
(1, NULL, NULL, NULL, '09:00:00', '09:20:00', NULL, NULL, NULL, NULL, NULL),
(2, '09:50:00', NULL, '10:00:00', NULL, '10:10:00', NULL, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, '10:10:00', NULL, NULL, NULL, '10:50:00', 'Por La Palmera'),
(5, NULL, NULL, NULL, '18:00:00', '18:20:00', NULL, NULL, NULL, NULL, NULL),
(6, '18:50:00', '18:40:00', '19:00:00', NULL, '19:10:00', NULL, NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL, '19:10:00', NULL, NULL, NULL, '19:50:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `internocostaidasunday`
--

CREATE TABLE `internocostaidasunday` (
  `idinternocostaidasunday` int(11) NOT NULL,
  `lasvioletas` time DEFAULT NULL,
  `lapega` time DEFAULT NULL,
  `elvergel` time DEFAULT NULL,
  `paramillo` time DEFAULT NULL,
  `lavalle` time DEFAULT NULL,
  `costaDeAraujo` time DEFAULT NULL,
  `additional` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `internocostaidasunday`
--

INSERT INTO `internocostaidasunday` (`idinternocostaidasunday`, `lasvioletas`, `lapega`, `elvergel`, `paramillo`, `lavalle`, `costaDeAraujo`, `additional`) VALUES
(1, NULL, NULL, NULL, '09:00:00', '09:20:00', NULL, NULL),
(2, NULL, '09:50:00', '10:00:00', NULL, '10:10:00', NULL, NULL),
(3, NULL, NULL, NULL, NULL, '10:10:00', '10:50:00', 'Por PALMERA'),
(4, NULL, NULL, NULL, '18:00:00', '18:20:00', NULL, NULL),
(5, '18:40:00', '18:50:00', '19:00:00', NULL, '19:10:00', NULL, NULL),
(6, NULL, NULL, NULL, NULL, '19:10:00', '19:50:00', 'Por PALMERA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `internocostaidaweek`
--

CREATE TABLE `internocostaidaweek` (
  `idinternocostaidaweek` int(11) NOT NULL,
  `lapega` time DEFAULT NULL,
  `lasvioletas` time DEFAULT NULL,
  `elvergel` time DEFAULT NULL,
  `paramillo` time DEFAULT NULL,
  `california` time DEFAULT NULL,
  `labajada` time DEFAULT NULL,
  `mendoza` time DEFAULT NULL,
  `lavalle` time DEFAULT NULL,
  `costaDeAraujo` time DEFAULT NULL,
  `additional` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `internocostaidaweek`
--

INSERT INTO `internocostaidaweek` (`idinternocostaidaweek`, `lapega`, `lasvioletas`, `elvergel`, `paramillo`, `california`, `labajada`, `mendoza`, `lavalle`, `costaDeAraujo`, `additional`) VALUES
(6, NULL, '12:20:00', '12:30:00', NULL, NULL, NULL, NULL, '12:40:00', NULL, NULL),
(5, NULL, NULL, NULL, NULL, NULL, NULL, '10:00:00', '11:00:00', NULL, NULL),
(4, NULL, NULL, NULL, NULL, '10:10:00', NULL, NULL, NULL, '10:30:00', NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08:40:00', '09:20:00', 'Por El Carmen'),
(2, NULL, NULL, NULL, '08:10:00', NULL, NULL, NULL, '08:30:00', NULL, NULL),
(1, NULL, '07:20:00', '07:30:00', NULL, NULL, NULL, NULL, '07:40:00', NULL, NULL),
(7, NULL, NULL, NULL, '13:10:00', NULL, NULL, NULL, '13:30:00', NULL, NULL),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13:40:00', '14:20:00', 'Por La Merced'),
(9, '17:30:00', NULL, '17:40:00', NULL, NULL, NULL, NULL, '17:50:00', NULL, NULL),
(10, NULL, NULL, NULL, NULL, NULL, NULL, '18:00:00', '19:00:00', NULL, NULL),
(11, NULL, NULL, NULL, '18:20:00', NULL, NULL, NULL, '18:40:00', NULL, NULL),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '19:10:00', '19:30:00', NULL),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '19:20:00', '20:00:00', 'Por La Merced');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `internocostavueltasaturday`
--

CREATE TABLE `internocostavueltasaturday` (
  `idinternocostavueltasaturday` int(11) NOT NULL,
  `costaDeAraujo` time DEFAULT NULL,
  `mendoza` time DEFAULT NULL,
  `california` time DEFAULT NULL,
  `labajada` time DEFAULT NULL,
  `lavalle` time DEFAULT NULL,
  `paramillo` time DEFAULT NULL,
  `elvergel` time DEFAULT NULL,
  `lasvioletas` time DEFAULT NULL,
  `lapega` time DEFAULT NULL,
  `additional` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `internocostavueltasaturday`
--

INSERT INTO `internocostavueltasaturday` (`idinternocostavueltasaturday`, `costaDeAraujo`, `mendoza`, `california`, `labajada`, `lavalle`, `paramillo`, `elvergel`, `lasvioletas`, `lapega`, `additional`) VALUES
(1, '08:00:00', NULL, NULL, NULL, '08:40:00', NULL, NULL, NULL, NULL, 'Por La Palmera'),
(2, NULL, NULL, NULL, NULL, '08:40:00', '09:00:00', NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, '09:20:00', NULL, '09:30:00', '09:40:00', '09:50:00', NULL),
(5, '17:00:00', NULL, NULL, NULL, '17:40:00', NULL, NULL, NULL, NULL, 'Por La Palmera'),
(6, NULL, NULL, NULL, NULL, '17:40:00', '18:00:00', NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL, '18:20:00', NULL, '18:30:00', '18:40:00', '18:50:00', NULL),
(8, '20:30:00', NULL, NULL, '20:40:00', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `internocostavueltasunday`
--

CREATE TABLE `internocostavueltasunday` (
  `idinternocostavueltasunday` int(11) NOT NULL,
  `costaDeAraujo` time DEFAULT NULL,
  `labajada` time DEFAULT NULL,
  `lavalle` time DEFAULT NULL,
  `paramillo` time DEFAULT NULL,
  `elvergel` time DEFAULT NULL,
  `lasvioletas` time DEFAULT NULL,
  `lapega` time DEFAULT NULL,
  `additional` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `internocostavueltasunday`
--

INSERT INTO `internocostavueltasunday` (`idinternocostavueltasunday`, `costaDeAraujo`, `labajada`, `lavalle`, `paramillo`, `elvergel`, `lasvioletas`, `lapega`, `additional`) VALUES
(1, '08:00:00', NULL, '08:40:00', NULL, NULL, NULL, NULL, 'Por La Palmera'),
(2, NULL, NULL, '08:40:00', '09:00:00', NULL, NULL, NULL, NULL),
(3, NULL, NULL, '09:20:00', NULL, '09:30:00', '09:40:00', '09:50:00', NULL),
(4, '17:00:00', NULL, '17:40:00', NULL, NULL, NULL, NULL, 'Por La Palmera'),
(5, NULL, NULL, '17:40:00', '18:00:00', NULL, NULL, NULL, NULL),
(6, NULL, NULL, '18:20:00', NULL, '18:30:00', '18:40:00', '18:50:00', NULL),
(7, '20:30:00', '20:40:00', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `internocostavueltaweek`
--

CREATE TABLE `internocostavueltaweek` (
  `idinternocostavueltaweek` int(11) NOT NULL,
  `costaDeAraujo` time DEFAULT NULL,
  `lavalle` time DEFAULT NULL,
  `mendoza` time DEFAULT NULL,
  `labajada` time DEFAULT NULL,
  `california` time DEFAULT NULL,
  `paramillo` time DEFAULT NULL,
  `elvergel` time DEFAULT NULL,
  `lasvioletas` time DEFAULT NULL,
  `lapega` time DEFAULT NULL,
  `additional` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `internocostavueltaweek`
--

INSERT INTO `internocostavueltaweek` (`idinternocostavueltaweek`, `costaDeAraujo`, `lavalle`, `mendoza`, `labajada`, `california`, `paramillo`, `elvergel`, `lasvioletas`, `lapega`, `additional`) VALUES
(6, '11:00:00', '11:40:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Por Arenales'),
(5, '09:40:00', NULL, NULL, NULL, '10:00:00', NULL, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, '07:50:00', NULL, NULL, NULL, '08:10:00', NULL, NULL, NULL, NULL),
(2, NULL, '06:50:00', NULL, NULL, NULL, NULL, '07:00:00', '07:20:00', '07:10:00', NULL),
(1, '06:00:00', '06:40:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Por La Merced'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, '12:00:00', NULL, NULL, NULL, NULL, '12:10:00', '12:20:00', NULL, NULL),
(9, NULL, '12:50:00', NULL, NULL, NULL, '13:10:00', NULL, NULL, NULL, NULL),
(10, '15:00:00', '15:40:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Por Arenales'),
(11, NULL, '16:00:00', '17:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '20:30:00', NULL, NULL, '20:40:00', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `internolavalleidasaturday`
--

CREATE TABLE `internolavalleidasaturday` (
  `idinternolavalleidasaturday` int(11) NOT NULL,
  `paramillo` time DEFAULT NULL,
  `lapega` time DEFAULT NULL,
  `lasvioletas` time DEFAULT NULL,
  `elvergel` time DEFAULT NULL,
  `mendoza` time DEFAULT NULL,
  `lavalle` time DEFAULT NULL,
  `additional` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `internolavalleidasunday`
--

CREATE TABLE `internolavalleidasunday` (
  `idinternolavalleidasunday` int(11) NOT NULL,
  `paramillo` time DEFAULT NULL,
  `lapega` time DEFAULT NULL,
  `lasvioletas` time DEFAULT NULL,
  `elvergel` time DEFAULT NULL,
  `mendoza` time DEFAULT NULL,
  `lavalle` time DEFAULT NULL,
  `additional` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `internolavalleidaweek`
--

CREATE TABLE `internolavalleidaweek` (
  `idinternolavalleidaweek` int(11) NOT NULL,
  `paramillo` time DEFAULT NULL,
  `lapega` time DEFAULT NULL,
  `lasvioletas` time DEFAULT NULL,
  `elvergel` time DEFAULT NULL,
  `btupac` time DEFAULT NULL,
  `blacolmena` time DEFAULT NULL,
  `lavalle` time DEFAULT NULL,
  `additional` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `internolavallevueltasaturday`
--

CREATE TABLE `internolavallevueltasaturday` (
  `idinternolavallevueltasaturday` int(11) NOT NULL,
  `lavalle` time DEFAULT NULL,
  `mendoza` time DEFAULT NULL,
  `elvergel` time DEFAULT NULL,
  `lasvioletas` time DEFAULT NULL,
  `lapega` time DEFAULT NULL,
  `paramillo` time DEFAULT NULL,
  `additional` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `internolavallevueltasunday`
--

CREATE TABLE `internolavallevueltasunday` (
  `idinternolavallevueltasunday` int(11) NOT NULL,
  `lavalle` time DEFAULT NULL,
  `mendoza` time DEFAULT NULL,
  `elvergel` time DEFAULT NULL,
  `lasvioletas` time DEFAULT NULL,
  `lapega` time DEFAULT NULL,
  `paramillo` time DEFAULT NULL,
  `additional` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `internolavallevueltaweek`
--

CREATE TABLE `internolavallevueltaweek` (
  `idinternolavallevueltaweek` int(11) NOT NULL,
  `lavalle` time DEFAULT NULL,
  `blacolmena` time DEFAULT NULL,
  `btupac` time DEFAULT NULL,
  `elvergel` time DEFAULT NULL,
  `lasvioletas` time DEFAULT NULL,
  `lapega` time DEFAULT NULL,
  `paramillo` time DEFAULT NULL,
  `additional` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta24idasaturday`
--

CREATE TABLE `ruta24idasaturday` (
  `idruta24idasaturday` int(11) NOT NULL,
  `asuncion` time DEFAULT NULL,
  `el15` time DEFAULT NULL,
  `gustavoAndre` time DEFAULT NULL,
  `costaDeAraujo` time DEFAULT NULL,
  `lavalle` time DEFAULT NULL,
  `mendoza` time DEFAULT NULL,
  `additional` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ruta24idasaturday`
--

INSERT INTO `ruta24idasaturday` (`idruta24idasaturday`, `asuncion`, `el15`, `gustavoAndre`, `costaDeAraujo`, `lavalle`, `mendoza`, `additional`) VALUES
(1, NULL, NULL, NULL, NULL, '05:20:00', '06:20:00', NULL),
(2, NULL, NULL, '05:40:00', '06:00:00', '06:20:00', '07:20:00', NULL),
(3, '07:05:00', '07:15:00', '07:20:00', '07:40:00', '08:00:00', '09:00:00', NULL),
(4, NULL, '08:15:00', '08:20:00', '08:40:00', '09:00:00', '10:00:00', NULL),
(5, NULL, NULL, NULL, '09:40:00', '10:00:00', '11:00:00', NULL),
(6, NULL, NULL, '10:30:00', '10:50:00', '11:10:00', '12:10:00', NULL),
(7, NULL, NULL, '11:30:00', '11:50:00', '12:10:00', '13:10:00', NULL),
(8, NULL, NULL, NULL, '13:00:00', '13:20:00', '14:20:00', NULL),
(9, NULL, NULL, '13:50:00', '14:10:00', '14:30:00', '15:30:00', NULL),
(10, NULL, NULL, NULL, '15:20:00', '15:40:00', '16:40:00', NULL),
(11, NULL, NULL, '16:15:00', '16:35:00', '16:55:00', '17:55:00', NULL),
(12, '17:05:00', '17:15:00', '17:20:00', '17:40:00', '18:00:00', '19:00:00', NULL),
(13, NULL, NULL, NULL, '18:30:00', '18:50:00', '19:50:00', NULL),
(14, NULL, '19:05:00', '19:10:00', '19:30:00', '19:50:00', '20:50:00', NULL),
(15, NULL, NULL, NULL, '20:30:00', '20:50:00', '21:50:00', NULL),
(16, NULL, NULL, '21:10:00', '21:30:00', '21:50:00', '22:50:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta24idasunday`
--

CREATE TABLE `ruta24idasunday` (
  `idruta24idasunday` int(11) NOT NULL,
  `asuncion` time DEFAULT NULL,
  `el15` time DEFAULT NULL,
  `gustavoAndre` time DEFAULT NULL,
  `costaDeAraujo` time DEFAULT NULL,
  `lavalle` time DEFAULT NULL,
  `mendoza` time DEFAULT NULL,
  `additional` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ruta24idasunday`
--

INSERT INTO `ruta24idasunday` (`idruta24idasunday`, `asuncion`, `el15`, `gustavoAndre`, `costaDeAraujo`, `lavalle`, `mendoza`, `additional`) VALUES
(1, NULL, NULL, NULL, NULL, '05:20:00', '06:20:00', NULL),
(2, NULL, NULL, '05:40:00', '06:00:00', '06:20:00', '07:20:00', NULL),
(3, '07:05:00', '07:15:00', '07:20:00', '07:40:00', '08:00:00', '09:00:00', NULL),
(4, NULL, '08:15:00', '08:20:00', '08:40:00', '09:00:00', '10:00:00', NULL),
(5, NULL, NULL, NULL, '09:40:00', '10:00:00', '11:00:00', NULL),
(6, NULL, NULL, '10:30:00', '10:50:00', '11:10:00', '12:10:00', NULL),
(7, NULL, NULL, '11:30:00', '11:50:00', '12:10:00', '13:10:00', NULL),
(8, NULL, NULL, NULL, '13:00:00', '13:20:00', '14:20:00', NULL),
(9, NULL, NULL, '13:50:00', '14:10:00', '14:30:00', '15:30:00', NULL),
(10, NULL, NULL, NULL, '15:20:00', '15:40:00', '16:40:00', NULL),
(11, NULL, NULL, '16:15:00', '16:35:00', '16:55:00', '17:55:00', NULL),
(12, '17:05:00', '17:15:00', '17:20:00', '17:40:00', '18:00:00', '19:00:00', NULL),
(13, NULL, NULL, NULL, '18:30:00', '18:50:00', '19:50:00', NULL),
(14, NULL, '19:05:00', '19:10:00', '19:30:00', '19:50:00', '20:50:00', NULL),
(15, NULL, NULL, NULL, '20:30:00', '20:50:00', '21:50:00', NULL),
(16, NULL, NULL, '21:10:00', '21:30:00', '21:50:00', '22:50:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta24idaweek`
--

CREATE TABLE `ruta24idaweek` (
  `idruta24idaweek` int(11) NOT NULL,
  `asuncion` time DEFAULT NULL,
  `el15` time DEFAULT NULL,
  `gustavoAndre` time DEFAULT NULL,
  `costaDeAraujo` time DEFAULT NULL,
  `lavalle` time DEFAULT NULL,
  `mendoza` time DEFAULT NULL,
  `additional` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ruta24idaweek`
--

INSERT INTO `ruta24idaweek` (`idruta24idaweek`, `asuncion`, `el15`, `gustavoAndre`, `costaDeAraujo`, `lavalle`, `mendoza`, `additional`) VALUES
(1, NULL, NULL, NULL, NULL, '05:20:00', '06:20:00', NULL),
(2, NULL, NULL, '05:40:00', '06:00:00', '06:20:00', '07:20:00', NULL),
(3, NULL, NULL, '06:20:00', '06:40:00', '07:00:00', '08:00:00', NULL),
(4, '06:45:00', '06:55:00', '07:00:00', '07:20:00', '07:40:00', '08:40:00', 'Lunes Miercoles Viernes Servicio Asunción'),
(5, NULL, NULL, '07:30:00', '07:50:00', '08:10:00', '09:10:00', NULL),
(6, NULL, '07:55:00', '08:00:00', '08:20:00', '08:40:00', '09:40:00', NULL),
(7, NULL, NULL, '08:40:00', '09:00:00', '09:20:00', '10:20:00', NULL),
(8, NULL, NULL, '09:30:00', '09:50:00', '10:10:00', '11:10:00', NULL),
(9, NULL, NULL, NULL, '10:40:00', '11:00:00', '12:00:00', NULL),
(10, NULL, NULL, '11:10:00', '11:30:00', '11:50:00', '12:50:00', NULL),
(11, NULL, NULL, NULL, '12:30:00', '12:50:00', '13:50:00', NULL),
(12, NULL, NULL, '13:10:00', '13:30:00', '13:50:00', '14:50:00', NULL),
(13, NULL, NULL, NULL, '14:00:00', '14:20:00', '15:20:00', NULL),
(14, NULL, NULL, '14:20:00', '14:40:00', '15:00:00', '16:00:00', NULL),
(15, NULL, NULL, NULL, '15:20:00', '15:40:00', '16:40:00', NULL),
(16, NULL, NULL, '16:00:00', '16:20:00', '16:40:00', '17:40:00', NULL),
(17, '16:55:00', '17:05:00', '17:10:00', '17:30:00', '17:50:00', '18:50:00', 'Lunes Miercoles Viernes Servicio Asunción'),
(18, NULL, NULL, NULL, '18:30:00', '18:50:00', '19:50:00', NULL),
(19, NULL, NULL, '18:30:00', '18:50:00', '19:10:00', NULL, NULL),
(20, NULL, NULL, '19:50:00', '20:10:00', '20:30:00', '21:30:00', NULL),
(21, NULL, NULL, NULL, '21:30:00', '21:50:00', '22:40:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta24vueltasaturday`
--

CREATE TABLE `ruta24vueltasaturday` (
  `idruta24vueltasaturday` int(11) NOT NULL,
  `mendoza` time DEFAULT NULL,
  `lavalle` time DEFAULT NULL,
  `costaDeAraujo` time DEFAULT NULL,
  `gustavoAndre` time DEFAULT NULL,
  `el15` time DEFAULT NULL,
  `asuncion` time DEFAULT NULL,
  `additional` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ruta24vueltasaturday`
--

INSERT INTO `ruta24vueltasaturday` (`idruta24vueltasaturday`, `mendoza`, `lavalle`, `costaDeAraujo`, `gustavoAndre`, `el15`, `asuncion`, `additional`) VALUES
(1, '06:20:00', '07:20:00', '07:40:00', '08:00:00', '08:05:00', NULL, NULL),
(2, '07:40:00', '08:40:00', '09:00:00', NULL, NULL, NULL, NULL),
(3, '08:50:00', '09:50:00', '10:10:00', '10:30:00', NULL, NULL, NULL),
(4, '09:40:00', '10:40:00', '11:00:00', '11:20:00', NULL, NULL, NULL),
(5, '10:50:00', '11:50:00', '12:10:00', NULL, NULL, NULL, NULL),
(6, '11:50:00', '12:50:00', '13:10:00', '13:30:00', NULL, NULL, NULL),
(7, '12:50:00', '13:50:00', '14:10:00', NULL, NULL, NULL, NULL),
(8, '14:00:00', '15:00:00', '15:20:00', '15:40:00', NULL, NULL, NULL),
(9, '15:10:00', '16:10:00', '16:30:00', '16:50:00', '16:55:00', '17:05:00', NULL),
(10, '16:20:00', '17:20:00', '17:40:00', NULL, NULL, NULL, NULL),
(11, '17:20:00', '18:20:00', '18:40:00', '19:00:00', '19:05:00', NULL, NULL),
(12, '18:30:00', '19:30:00', '19:50:00', NULL, NULL, NULL, NULL),
(13, '19:30:00', '20:30:00', '20:50:00', '21:10:00', NULL, NULL, NULL),
(14, '20:30:00', '21:30:00', '21:50:00', NULL, NULL, NULL, NULL),
(15, '21:30:00', '22:30:00', '22:43:00', NULL, NULL, NULL, NULL),
(16, '22:30:00', '23:30:00', '23:50:00', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta24vueltasunday`
--

CREATE TABLE `ruta24vueltasunday` (
  `idruta24vueltasunday` int(11) NOT NULL,
  `mendoza` time DEFAULT NULL,
  `lavalle` time DEFAULT NULL,
  `costaDeAraujo` time DEFAULT NULL,
  `gustavoAndre` time DEFAULT NULL,
  `el15` time DEFAULT NULL,
  `asuncion` time DEFAULT NULL,
  `additional` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ruta24vueltasunday`
--

INSERT INTO `ruta24vueltasunday` (`idruta24vueltasunday`, `mendoza`, `lavalle`, `costaDeAraujo`, `gustavoAndre`, `el15`, `asuncion`, `additional`) VALUES
(1, '06:20:00', '07:20:00', '07:40:00', '08:00:00', '08:05:00', NULL, NULL),
(2, '07:40:00', '08:40:00', '09:00:00', NULL, NULL, NULL, NULL),
(3, '08:50:00', '09:50:00', '10:10:00', '10:30:00', NULL, NULL, NULL),
(4, '09:40:00', '10:40:00', '11:00:00', '11:20:00', NULL, NULL, NULL),
(5, '10:50:00', '11:50:00', '12:10:00', NULL, NULL, NULL, NULL),
(6, '11:50:00', '12:50:00', '13:10:00', '13:30:00', NULL, NULL, NULL),
(7, '12:50:00', '13:50:00', '14:10:00', NULL, NULL, NULL, NULL),
(8, '14:00:00', '15:00:00', '15:20:00', '15:40:00', NULL, NULL, NULL),
(9, '15:10:00', '16:10:00', '16:30:00', '16:50:00', '16:55:00', '17:05:00', NULL),
(10, '16:20:00', '17:20:00', '17:40:00', NULL, NULL, NULL, NULL),
(11, '17:20:00', '18:20:00', '18:40:00', '19:00:00', '19:05:00', NULL, NULL),
(12, '18:30:00', '19:30:00', '19:50:00', NULL, NULL, NULL, NULL),
(13, '19:30:00', '20:30:00', '20:50:00', '21:10:00', NULL, NULL, NULL),
(14, '20:30:00', '21:30:00', '21:50:00', NULL, NULL, NULL, NULL),
(15, '21:30:00', '22:30:00', '22:43:00', NULL, NULL, NULL, NULL),
(16, '22:30:00', '23:30:00', '23:50:00', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta24vueltaweek`
--

CREATE TABLE `ruta24vueltaweek` (
  `idruta24vueltaweek` int(11) NOT NULL,
  `mendoza` time DEFAULT NULL,
  `lavalle` time DEFAULT NULL,
  `costaDeAraujo` time DEFAULT NULL,
  `gustavoAndre` time DEFAULT NULL,
  `el15` time DEFAULT NULL,
  `asuncion` time DEFAULT NULL,
  `additional` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ruta24vueltaweek`
--

INSERT INTO `ruta24vueltaweek` (`idruta24vueltaweek`, `mendoza`, `lavalle`, `costaDeAraujo`, `gustavoAndre`, `el15`, `asuncion`, `additional`) VALUES
(1, '05:50:00', '06:40:00', '07:00:00', '07:20:00', NULL, NULL, NULL),
(2, '06:50:00', '07:50:00', '08:10:00', '08:30:00', NULL, NULL, NULL),
(3, '07:50:00', '08:50:00', '09:10:00', '09:30:00', NULL, NULL, NULL),
(4, '08:50:00', '09:50:00', '10:10:00', NULL, NULL, NULL, NULL),
(5, '09:30:00', '10:40:00', '10:50:00', '11:10:00', NULL, NULL, NULL),
(6, '10:30:00', '11:30:00', '11:50:00', NULL, NULL, NULL, NULL),
(7, '11:20:00', '12:20:00', '12:40:00', '13:00:00', NULL, NULL, NULL),
(8, '12:00:00', '13:00:00', '13:20:00', NULL, NULL, NULL, NULL),
(9, '12:40:00', '13:40:00', '14:00:00', '14:20:00', NULL, NULL, NULL),
(10, '13:20:00', '14:20:00', '14:40:00', NULL, NULL, NULL, NULL),
(11, '14:10:00', '15:10:00', '15:30:00', '15:50:00', NULL, NULL, NULL),
(12, '15:00:00', '16:00:00', '16:20:00', '16:40:00', '16:45:00', '16:55:00', 'Lunes Miercoles Viernes Servicio Asunción'),
(13, '15:50:00', '16:50:00', '17:10:00', NULL, NULL, NULL, NULL),
(14, '16:30:00', '17:30:00', '17:50:00', '18:10:00', NULL, NULL, NULL),
(15, '17:10:00', '18:10:00', '18:30:00', '18:50:00', NULL, NULL, NULL),
(16, '17:50:00', '18:50:00', '19:10:00', '19:30:00', NULL, NULL, NULL),
(17, '18:30:00', '19:30:00', '19:50:00', '20:10:00', '20:15:00', NULL, NULL),
(18, '19:40:00', '20:40:00', '21:00:00', NULL, NULL, NULL, NULL),
(19, '21:00:00', '21:50:00', '22:10:00', NULL, NULL, NULL, NULL),
(20, '22:30:00', '23:20:00', '23:40:00', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta40idasaturday`
--

CREATE TABLE `ruta40idasaturday` (
  `idruta40idasaturday` int(11) NOT NULL,
  `km56` time DEFAULT NULL,
  `km47Esc` time DEFAULT NULL,
  `jocoli` time DEFAULT NULL,
  `oscarMendoza` time DEFAULT NULL,
  `andacollo` time DEFAULT NULL,
  `croco` time DEFAULT NULL,
  `sguazini` time DEFAULT NULL,
  `3DeMayo` time DEFAULT NULL,
  `sanFrancisco` time DEFAULT NULL,
  `calleItalia` time DEFAULT NULL,
  `barrioLaColmena` time DEFAULT NULL,
  `salvatierra` time DEFAULT NULL,
  `paramillo` time DEFAULT NULL,
  `lavalle` time DEFAULT NULL,
  `verjel` time DEFAULT NULL,
  `cruce` time DEFAULT NULL,
  `pastal` time DEFAULT NULL,
  `borbollon` time DEFAULT NULL,
  `mendoza` time DEFAULT NULL,
  `additional` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ruta40idasaturday`
--

INSERT INTO `ruta40idasaturday` (`idruta40idasaturday`, `km56`, `km47Esc`, `jocoli`, `oscarMendoza`, `andacollo`, `croco`, `sguazini`, `3DeMayo`, `sanFrancisco`, `calleItalia`, `barrioLaColmena`, `salvatierra`, `paramillo`, `lavalle`, `verjel`, `cruce`, `pastal`, `borbollon`, `mendoza`, `additional`) VALUES
(1, NULL, NULL, '05:00:00', NULL, NULL, '05:10:00', '05:15:00', '05:25:00', NULL, NULL, NULL, '05:35:00', NULL, '05:45:00', NULL, '05:58:00', NULL, '06:15:00', '06:45:00', NULL),
(2, '06:40:00', '06:45:00', '06:50:00', NULL, '07:00:00', NULL, NULL, '07:10:00', NULL, NULL, NULL, '07:20:00', NULL, '07:30:00', NULL, '07:43:00', NULL, '08:00:00', '08:30:00', NULL),
(3, NULL, NULL, '08:05:00', NULL, NULL, '08:15:00', '08:20:00', '08:30:00', NULL, NULL, NULL, '08:40:00', NULL, '08:50:00', NULL, '09:03:00', NULL, '09:20:00', '09:50:00', NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08:30:00', '08:50:00', NULL, '09:00:00', NULL, '09:20:00', NULL, '09:30:00', '09:40:00', '10:00:00', '10:30:00', 'Por Pastal'),
(5, '10:10:00', '10:15:00', '10:20:00', NULL, '10:30:00', NULL, NULL, '10:40:00', NULL, NULL, NULL, '10:50:00', NULL, '11:00:00', NULL, '11:13:00', NULL, '11:30:00', '12:00:00', NULL),
(6, NULL, NULL, '11:15:00', NULL, NULL, '11:25:00', '11:30:00', '11:40:00', NULL, NULL, NULL, '11:50:00', NULL, '12:00:00', NULL, '12:10:00', '12:20:00', '12:40:00', '13:10:00', 'Por Pastal'),
(7, NULL, NULL, '12:20:00', NULL, '12:30:00', NULL, NULL, '12:40:00', NULL, NULL, NULL, '12:50:00', NULL, '13:00:00', NULL, '13:13:00', NULL, '13:30:00', '14:00:00', NULL),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13:50:00', '14:10:00', NULL, '14:20:00', NULL, '14:30:00', NULL, '14:40:00', '14:50:00', '15:10:00', '15:40:00', 'Por Pastal'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, '15:10:00', '15:20:00', NULL, NULL, NULL, '15:30:00', NULL, '15:40:00', NULL, '15:53:00', NULL, '16:10:00', '16:40:00', NULL),
(10, NULL, NULL, '16:05:00', NULL, NULL, '16:15:00', '16:20:00', '16:30:00', NULL, NULL, NULL, '16:40:00', NULL, '16:50:00', NULL, '17:00:00', '17:10:00', '17:30:00', '18:00:00', 'Por Pastal'),
(11, NULL, NULL, '17:20:00', NULL, '17:30:00', NULL, NULL, '17:40:00', NULL, NULL, NULL, '17:50:00', NULL, '18:00:00', NULL, '18:13:00', NULL, '18:30:00', '19:00:00', NULL),
(12, '18:25:00', '18:30:00', '18:35:00', NULL, NULL, '18:45:00', '18:50:00', '19:00:00', NULL, NULL, NULL, '19:10:00', NULL, '19:20:00', NULL, '19:33:00', NULL, '19:50:00', '20:20:00', NULL),
(13, NULL, NULL, '19:35:00', NULL, NULL, '19:45:00', '19:50:00', '20:00:00', NULL, NULL, NULL, '20:10:00', NULL, '20:20:00', NULL, '20:33:00', NULL, '20:50:00', '21:20:00', NULL),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20:30:00', NULL, NULL, '20:40:00', NULL, '20:50:00', NULL, '21:00:00', '21:10:00', '21:30:00', '22:00:00', 'Por Pastal'),
(15, NULL, NULL, NULL, NULL, '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22:00:00', NULL, '22:13:00', NULL, '22:30:00', '23:00:00', NULL),
(16, '21:40:00', '21:45:00', '21:50:00', NULL, NULL, '22:00:00', '22:05:00', '22:15:00', NULL, NULL, NULL, '22:25:00', NULL, '22:35:00', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta40idasunday`
--

CREATE TABLE `ruta40idasunday` (
  `idruta40idasunday` int(11) NOT NULL,
  `km56` time DEFAULT NULL,
  `km47Esc` time DEFAULT NULL,
  `jocoli` time DEFAULT NULL,
  `oscarMendoza` time DEFAULT NULL,
  `andacollo` time DEFAULT NULL,
  `croco` time DEFAULT NULL,
  `sguazini` time DEFAULT NULL,
  `3DeMayo` time DEFAULT NULL,
  `sanFrancisco` time DEFAULT NULL,
  `calleItalia` time DEFAULT NULL,
  `barrioLaColmena` time DEFAULT NULL,
  `salvatierra` time DEFAULT NULL,
  `paramillo` time DEFAULT NULL,
  `lavalle` time DEFAULT NULL,
  `verjel` time DEFAULT NULL,
  `cruce` time DEFAULT NULL,
  `pastal` time DEFAULT NULL,
  `borbollon` time DEFAULT NULL,
  `mendoza` time DEFAULT NULL,
  `additional` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ruta40idasunday`
--

INSERT INTO `ruta40idasunday` (`idruta40idasunday`, `km56`, `km47Esc`, `jocoli`, `oscarMendoza`, `andacollo`, `croco`, `sguazini`, `3DeMayo`, `sanFrancisco`, `calleItalia`, `barrioLaColmena`, `salvatierra`, `paramillo`, `lavalle`, `verjel`, `cruce`, `pastal`, `borbollon`, `mendoza`, `additional`) VALUES
(1, NULL, NULL, '05:00:00', NULL, NULL, '05:10:00', '05:15:00', '05:25:00', NULL, NULL, NULL, '05:35:00', NULL, '05:45:00', NULL, '05:58:00', NULL, '06:15:00', '06:45:00', NULL),
(2, '06:40:00', '06:45:00', '06:50:00', NULL, '07:00:00', NULL, NULL, '07:10:00', NULL, NULL, NULL, '07:20:00', NULL, '07:30:00', NULL, '07:43:00', NULL, '08:00:00', '08:30:00', NULL),
(3, NULL, NULL, '08:05:00', NULL, NULL, '08:15:00', '08:20:00', '08:30:00', NULL, NULL, NULL, '08:40:00', NULL, '08:50:00', NULL, '09:03:00', NULL, '09:20:00', '09:50:00', NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08:30:00', '08:50:00', NULL, '09:00:00', NULL, '09:20:00', NULL, '09:30:00', '09:40:00', '10:00:00', '10:30:00', 'Por Pastal'),
(5, '10:10:00', '10:15:00', '10:20:00', NULL, '10:30:00', NULL, NULL, '10:40:00', NULL, NULL, NULL, '10:50:00', NULL, '11:00:00', NULL, '11:13:00', NULL, '11:30:00', '12:00:00', NULL),
(6, NULL, NULL, '11:15:00', NULL, NULL, '11:25:00', '11:30:00', '11:40:00', NULL, NULL, NULL, '11:50:00', NULL, '12:00:00', NULL, '12:10:00', '12:20:00', '12:40:00', '13:10:00', 'Por Pastal'),
(7, NULL, NULL, '12:20:00', NULL, '12:30:00', NULL, NULL, '12:40:00', NULL, NULL, NULL, '12:50:00', NULL, '13:00:00', NULL, '13:13:00', NULL, '13:30:00', '14:00:00', NULL),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13:50:00', '14:10:00', NULL, '14:20:00', NULL, '14:30:00', NULL, '14:40:00', '14:50:00', '15:10:00', '15:40:00', 'Por Pastal'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, '15:10:00', '15:20:00', NULL, NULL, NULL, '15:30:00', NULL, '15:40:00', NULL, '15:53:00', NULL, '16:10:00', '16:40:00', NULL),
(10, NULL, NULL, '16:05:00', NULL, NULL, '16:15:00', '16:20:00', '16:30:00', NULL, NULL, NULL, '16:40:00', NULL, '16:50:00', NULL, '17:00:00', '17:10:00', '17:30:00', '18:00:00', 'Por Pastal'),
(11, NULL, NULL, '17:20:00', NULL, '17:30:00', NULL, NULL, '17:40:00', NULL, NULL, NULL, '17:50:00', NULL, '18:00:00', NULL, '18:13:00', NULL, '18:30:00', '19:00:00', NULL),
(12, '18:25:00', '18:30:00', '18:35:00', NULL, NULL, '18:45:00', '18:50:00', '19:00:00', NULL, NULL, NULL, '19:10:00', NULL, '19:20:00', NULL, '19:33:00', NULL, '19:50:00', '20:20:00', NULL),
(13, NULL, NULL, '19:35:00', NULL, NULL, '19:45:00', '19:50:00', '20:00:00', NULL, NULL, NULL, '20:10:00', NULL, '20:20:00', NULL, '20:33:00', NULL, '20:50:00', '21:20:00', NULL),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20:30:00', NULL, NULL, '20:40:00', NULL, '20:50:00', NULL, '21:00:00', '21:10:00', '21:30:00', '22:00:00', 'Por Pastal'),
(15, NULL, NULL, NULL, NULL, '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22:00:00', NULL, '22:13:00', NULL, '22:30:00', '23:00:00', NULL),
(16, '21:40:00', '21:45:00', '21:50:00', NULL, NULL, '22:00:00', '22:05:00', '22:15:00', NULL, NULL, NULL, '22:25:00', NULL, '22:35:00', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta40idaweek`
--

CREATE TABLE `ruta40idaweek` (
  `idruta40idaweek` int(11) NOT NULL,
  `km56` time DEFAULT NULL,
  `km47Esc` time DEFAULT NULL,
  `jocoli` time DEFAULT NULL,
  `oscarMendoza` time DEFAULT NULL,
  `andacollo` time DEFAULT NULL,
  `croco` time DEFAULT NULL,
  `sguazini` time DEFAULT NULL,
  `3DeMayo` time DEFAULT NULL,
  `sanFrancisco` time DEFAULT NULL,
  `calleItalia` time DEFAULT NULL,
  `barrioLaColmena` time DEFAULT NULL,
  `salvatierra` time DEFAULT NULL,
  `paramillo` time DEFAULT NULL,
  `lavalle` time DEFAULT NULL,
  `verjel` time DEFAULT NULL,
  `cruce` time DEFAULT NULL,
  `pastal` time DEFAULT NULL,
  `borbollon` time DEFAULT NULL,
  `mendoza` time DEFAULT NULL,
  `additional` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ruta40idaweek`
--

INSERT INTO `ruta40idaweek` (`idruta40idaweek`, `km56`, `km47Esc`, `jocoli`, `oscarMendoza`, `andacollo`, `croco`, `sguazini`, `3DeMayo`, `sanFrancisco`, `calleItalia`, `barrioLaColmena`, `salvatierra`, `paramillo`, `lavalle`, `verjel`, `cruce`, `pastal`, `borbollon`, `mendoza`, `additional`) VALUES
(1, NULL, NULL, '05:00:00', NULL, NULL, '05:10:00', '05:15:00', '05:25:00', NULL, NULL, NULL, '05:35:00', NULL, '05:45:00', NULL, '05:58:00', NULL, '06:15:00', '06:45:00', NULL),
(2, NULL, NULL, '05:45:00', NULL, NULL, '05:55:00', '06:00:00', '06:10:00', NULL, NULL, NULL, '06:20:00', NULL, '06:30:00', NULL, '06:43:00', NULL, '07:00:00', '07:30:00', NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06:40:00', NULL, NULL, NULL, '06:50:00', NULL, '07:00:00', NULL, '07:10:00', '07:20:00', '07:40:00', '08:10:00', 'Por Pastal'),
(4, '06:40:00', '06:45:00', '06:50:00', NULL, '07:00:00', NULL, NULL, '07:10:00', NULL, NULL, NULL, '07:20:00', NULL, '07:30:00', NULL, '07:43:00', NULL, '08:00:00', '08:30:00', NULL),
(5, NULL, NULL, '07:45:00', NULL, NULL, '07:55:00', '08:00:00', '08:10:00', NULL, NULL, NULL, '08:20:00', NULL, '08:30:00', NULL, '08:43:00', NULL, '09:00:00', '09:30:00', NULL),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08:10:00', '08:30:00', NULL, '08:40:00', NULL, '08:50:00', NULL, '09:00:00', '09:10:00', '09:30:00', '10:00:00', 'Por Pastal'),
(7, NULL, NULL, '08:35:00', NULL, NULL, '08:45:00', '08:50:00', '09:00:00', NULL, NULL, NULL, '09:10:00', NULL, '09:20:00', NULL, '09:33:00', NULL, '09:50:00', '10:20:00', NULL),
(8, NULL, NULL, '09:25:00', NULL, NULL, '09:35:00', '09:40:00', '09:50:00', NULL, NULL, NULL, '10:00:00', NULL, '10:10:00', NULL, '10:23:00', NULL, '10:40:00', '11:10:00', NULL),
(9, '10:10:00', '10:15:00', '10:20:00', NULL, '10:30:00', NULL, NULL, '10:40:00', NULL, NULL, NULL, '10:50:00', NULL, '11:00:00', NULL, '11:10:00', '11:20:00', '11:40:00', '12:10:00', 'Por Pastal'),
(10, NULL, NULL, '11:05:00', NULL, NULL, '11:15:00', '11:20:00', '11:30:00', NULL, NULL, NULL, '11:40:00', NULL, '11:50:00', NULL, '12:03:00', NULL, '12:20:00', '12:50:00', NULL),
(11, NULL, NULL, '11:55:00', NULL, NULL, '12:05:00', '12:10:00', '12:20:00', NULL, NULL, NULL, '12:30:00', NULL, '12:40:00', NULL, '12:53:00', NULL, '13:10:00', '13:40:00', NULL),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12:50:00', '13:10:00', NULL, '13:20:00', NULL, '13:30:00', NULL, '13:40:00', '13:50:00', '14:10:00', '14:40:00', 'Por Pastal'),
(13, NULL, NULL, '13:40:00', NULL, '13:50:00', NULL, NULL, '14:00:00', NULL, NULL, NULL, '14:10:00', NULL, '14:20:00', NULL, '14:33:00', NULL, '14:50:00', '15:20:00', NULL),
(14, NULL, NULL, '14:25:00', NULL, NULL, '14:35:00', '14:40:00', '14:50:00', NULL, NULL, NULL, NULL, NULL, '15:10:00', NULL, '15:23:00', NULL, '15:40:00', '16:10:00', NULL),
(15, NULL, NULL, '15:25:00', NULL, NULL, '15:35:00', '15:40:00', '15:50:00', NULL, NULL, NULL, '16:00:00', NULL, '16:10:00', NULL, '16:23:00', NULL, '16:40:00', '17:10:00', NULL),
(16, NULL, NULL, '16:30:00', NULL, '16:40:00', NULL, NULL, '16:50:00', NULL, NULL, NULL, '17:00:00', NULL, '17:10:00', NULL, '17:20:00', '17:30:00', '17:50:00', '18:20:00', 'Por Pastal'),
(17, NULL, NULL, '17:35:00', NULL, NULL, '17:45:00', '17:50:00', '18:00:00', NULL, NULL, NULL, '18:10:00', NULL, '18:20:00', NULL, '18:33:00', NULL, '18:50:00', '19:20:00', NULL),
(18, '18:50:00', '18:55:00', '19:00:00', NULL, '19:10:00', NULL, NULL, '19:20:00', NULL, NULL, NULL, '19:30:00', NULL, '19:40:00', NULL, '19:53:00', NULL, '20:10:00', '20:40:00', NULL),
(19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20:30:00', NULL, NULL, '20:40:00', NULL, '20:50:00', NULL, '21:00:00', '21:10:00', '21:30:00', '22:00:00', 'Por Pastal'),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21:53:00', NULL, '22:10:00', '22:40:00', NULL),
(21, NULL, NULL, '21:20:00', NULL, NULL, NULL, '21:35:00', '21:45:00', NULL, NULL, NULL, '21:55:00', NULL, '22:05:00', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta40vueltasaturday`
--

CREATE TABLE `ruta40vueltasaturday` (
  `idruta40vueltasaturday` int(11) NOT NULL,
  `mendoza` time DEFAULT NULL,
  `borbollon` time DEFAULT NULL,
  `pastal` time DEFAULT NULL,
  `cruce` time DEFAULT NULL,
  `lavalle` time DEFAULT NULL,
  `paramillo` time DEFAULT NULL,
  `verjel` time DEFAULT NULL,
  `salvatierra` time DEFAULT NULL,
  `barrioLaColmena` time DEFAULT NULL,
  `calleItalia` time DEFAULT NULL,
  `sanFrancisco` time DEFAULT NULL,
  `3DeMayo` time DEFAULT NULL,
  `sguazini` time DEFAULT NULL,
  `croco` time DEFAULT NULL,
  `andacollo` time DEFAULT NULL,
  `oscarMendoza` time DEFAULT NULL,
  `jocoli` time DEFAULT NULL,
  `km47Esc` time DEFAULT NULL,
  `km56` time DEFAULT NULL,
  `additional` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ruta40vueltasaturday`
--

INSERT INTO `ruta40vueltasaturday` (`idruta40vueltasaturday`, `mendoza`, `borbollon`, `pastal`, `cruce`, `lavalle`, `paramillo`, `verjel`, `salvatierra`, `barrioLaColmena`, `calleItalia`, `sanFrancisco`, `3DeMayo`, `sguazini`, `croco`, `andacollo`, `oscarMendoza`, `jocoli`, `km47Esc`, `km56`, `additional`) VALUES
(1, '06:30:00', '07:00:00', NULL, '07:17:00', '07:30:00', NULL, NULL, '07:40:00', NULL, '07:50:00', '08:10:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '08:00:00', '08:30:00', '08:50:00', '09:00:00', '09:10:00', NULL, NULL, '09:20:00', NULL, NULL, NULL, '09:30:00', '09:40:00', '09:45:00', NULL, NULL, '09:55:00', '10:00:00', '10:05:00', 'Por Pastal'),
(3, '09:30:00', '10:00:00', NULL, '10:17:00', '10:30:00', NULL, NULL, '10:40:00', NULL, NULL, NULL, '10:50:00', NULL, NULL, '11:00:00', NULL, '11:10:00', NULL, NULL, NULL),
(4, '10:40:00', '11:10:00', NULL, '11:27:00', '11:40:00', NULL, NULL, '11:50:00', NULL, NULL, NULL, '12:00:00', NULL, NULL, '12:10:00', NULL, '12:20:00', NULL, NULL, NULL),
(5, '11:50:00', '12:20:00', '12:40:00', '12:50:00', '13:00:00', NULL, NULL, '13:10:00', NULL, '13:20:00', '13:40:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Por Pastal'),
(6, '13:00:00', '13:30:00', NULL, '13:47:00', '14:00:00', NULL, NULL, '14:10:00', NULL, NULL, NULL, '14:20:00', '14:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '14:10:00', '14:40:00', NULL, '14:57:00', '15:10:00', NULL, NULL, '15:20:00', NULL, NULL, NULL, '15:30:00', '15:40:00', '15:45:00', NULL, NULL, '15:55:00', NULL, NULL, NULL),
(8, '15:20:00', '15:50:00', NULL, '16:07:00', '16:20:00', NULL, NULL, '16:30:00', NULL, NULL, NULL, '16:40:00', NULL, NULL, '16:50:00', NULL, '17:00:00', NULL, NULL, NULL),
(9, '16:30:00', '17:00:00', NULL, '17:17:00', '17:30:00', NULL, NULL, '17:40:00', NULL, NULL, NULL, '17:50:00', '18:00:00', '18:05:00', NULL, NULL, '18:15:00', '18:20:00', '18:25:00', NULL),
(10, '17:40:00', '18:10:00', '18:30:00', '18:40:00', '18:50:00', NULL, NULL, '19:00:00', NULL, NULL, NULL, '19:10:00', '19:20:00', '19:25:00', NULL, NULL, '19:35:00', NULL, NULL, 'Por Pastal'),
(11, '18:50:00', '19:20:00', NULL, '19:37:00', '19:50:00', NULL, NULL, '20:00:00', NULL, '20:10:00', '20:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '19:50:00', '20:20:00', NULL, '20:37:00', '20:50:00', NULL, NULL, '21:00:00', NULL, NULL, NULL, '21:10:00', NULL, NULL, '21:20:00', NULL, '21:30:00', '21:35:00', '21:40:00', NULL),
(13, '20:50:00', '21:20:00', NULL, '21:37:00', '21:50:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '21:50:00', '22:20:00', '22:40:00', '22:50:00', '23:00:00', NULL, NULL, '23:10:00', NULL, NULL, NULL, '23:20:00', '23:30:00', '23:35:00', NULL, NULL, '23:45:00', NULL, NULL, 'Por Pastal'),
(15, '22:50:00', '23:20:00', NULL, '23:37:00', '23:50:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta40vueltasunday`
--

CREATE TABLE `ruta40vueltasunday` (
  `idruta40vueltasunday` int(11) NOT NULL,
  `mendoza` time DEFAULT NULL,
  `borbollon` time DEFAULT NULL,
  `pastal` time DEFAULT NULL,
  `cruce` time DEFAULT NULL,
  `lavalle` time DEFAULT NULL,
  `paramillo` time DEFAULT NULL,
  `verjel` time DEFAULT NULL,
  `salvatierra` time DEFAULT NULL,
  `barrioLaColmena` time DEFAULT NULL,
  `calleItalia` time DEFAULT NULL,
  `sanFrancisco` time DEFAULT NULL,
  `3DeMayo` time DEFAULT NULL,
  `sguazini` time DEFAULT NULL,
  `croco` time DEFAULT NULL,
  `andacollo` time DEFAULT NULL,
  `oscarMendoza` time DEFAULT NULL,
  `jocoli` time DEFAULT NULL,
  `km47Esc` time DEFAULT NULL,
  `km56` time DEFAULT NULL,
  `additional` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ruta40vueltasunday`
--

INSERT INTO `ruta40vueltasunday` (`idruta40vueltasunday`, `mendoza`, `borbollon`, `pastal`, `cruce`, `lavalle`, `paramillo`, `verjel`, `salvatierra`, `barrioLaColmena`, `calleItalia`, `sanFrancisco`, `3DeMayo`, `sguazini`, `croco`, `andacollo`, `oscarMendoza`, `jocoli`, `km47Esc`, `km56`, `additional`) VALUES
(1, '06:30:00', '07:00:00', NULL, '07:17:00', '07:30:00', NULL, NULL, '07:40:00', NULL, '07:50:00', '08:10:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(2, '08:00:00', '08:30:00', '08:50:00', '09:00:00', '09:10:00', NULL, NULL, '09:20:00', NULL, NULL, NULL, '09:30:00', '09:40:00', '09:45:00', NULL, NULL, '09:55:00', '10:00:00', '10:05:00', 'Por Pastal'),
(3, '09:30:00', '10:00:00', NULL, '10:17:00', '10:30:00', NULL, NULL, '10:40:00', NULL, NULL, NULL, '10:50:00', NULL, NULL, '11:00:00', NULL, '11:10:00', NULL, NULL, ''),
(4, '10:40:00', '11:10:00', NULL, '11:27:00', '11:40:00', NULL, NULL, '11:50:00', NULL, NULL, NULL, '12:00:00', NULL, NULL, '12:10:00', NULL, '12:20:00', NULL, NULL, ''),
(5, '11:50:00', '12:20:00', '12:40:00', '12:50:00', '13:00:00', NULL, NULL, '13:10:00', NULL, '13:20:00', '13:40:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Por Pastal'),
(6, '13:00:00', '13:30:00', NULL, '13:47:00', '14:00:00', NULL, NULL, '14:10:00', NULL, NULL, NULL, '14:20:00', '14:30:00', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(7, '14:10:00', '14:40:00', NULL, '14:57:00', '15:10:00', NULL, NULL, '15:20:00', NULL, NULL, NULL, '15:30:00', '15:40:00', '15:45:00', NULL, NULL, '15:55:00', NULL, NULL, ''),
(8, '15:20:00', '15:50:00', NULL, '16:07:00', '16:20:00', NULL, NULL, '16:30:00', NULL, NULL, NULL, '16:40:00', NULL, NULL, '16:50:00', NULL, '17:00:00', NULL, NULL, ''),
(9, '16:30:00', '17:00:00', NULL, '17:17:00', '17:30:00', NULL, NULL, '17:40:00', NULL, NULL, NULL, '17:50:00', '18:00:00', '18:05:00', NULL, NULL, '18:15:00', '18:20:00', '18:25:00', ''),
(10, '17:40:00', '18:10:00', '18:30:00', '18:40:00', '18:50:00', NULL, NULL, '19:00:00', NULL, NULL, NULL, '19:10:00', '19:20:00', '19:25:00', NULL, NULL, '19:35:00', NULL, NULL, 'Por Pastal'),
(11, '18:50:00', '19:20:00', NULL, '19:37:00', '19:50:00', NULL, NULL, '20:00:00', NULL, '20:10:00', '20:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(12, '19:50:00', '20:20:00', NULL, '20:37:00', '20:50:00', NULL, NULL, '21:00:00', NULL, NULL, NULL, '21:10:00', NULL, NULL, '21:20:00', NULL, '21:30:00', '21:35:00', '21:40:00', ''),
(13, '20:50:00', '21:20:00', NULL, '21:37:00', '21:50:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(14, '21:50:00', '22:20:00', '22:40:00', '22:50:00', '23:00:00', NULL, NULL, '23:10:00', NULL, NULL, NULL, '23:20:00', '23:30:00', '23:35:00', NULL, NULL, '23:45:00', NULL, NULL, 'Por Pastal'),
(15, '22:50:00', '23:20:00', NULL, '23:37:00', '23:50:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta40vueltaweek`
--

CREATE TABLE `ruta40vueltaweek` (
  `idruta40vueltaweek` int(11) NOT NULL,
  `mendoza` time DEFAULT NULL,
  `borbollon` time DEFAULT NULL,
  `pastal` time DEFAULT NULL,
  `cruce` time DEFAULT NULL,
  `lavalle` time DEFAULT NULL,
  `paramillo` time DEFAULT NULL,
  `verjel` time DEFAULT NULL,
  `salvatierra` time DEFAULT NULL,
  `barrioLaColmena` time DEFAULT NULL,
  `calleItalia` time DEFAULT NULL,
  `sanFrancisco` time DEFAULT NULL,
  `3DeMayo` time DEFAULT NULL,
  `sguazini` time DEFAULT NULL,
  `croco` time DEFAULT NULL,
  `andacollo` time DEFAULT NULL,
  `oscarMendoza` time DEFAULT NULL,
  `jocoli` time DEFAULT NULL,
  `km47Esc` time DEFAULT NULL,
  `km56` time DEFAULT NULL,
  `additional` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ruta40vueltaweek`
--

INSERT INTO `ruta40vueltaweek` (`idruta40vueltaweek`, `mendoza`, `borbollon`, `pastal`, `cruce`, `lavalle`, `paramillo`, `verjel`, `salvatierra`, `barrioLaColmena`, `calleItalia`, `sanFrancisco`, `3DeMayo`, `sguazini`, `croco`, `andacollo`, `oscarMendoza`, `jocoli`, `km47Esc`, `km56`, `additional`) VALUES
(1, '06:20:00', '06:50:00', NULL, '07:07:00', '07:20:00', NULL, NULL, '07:30:00', NULL, NULL, '07:50:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '07:10:00', '07:40:00', '08:00:00', '08:10:00', '08:20:00', NULL, NULL, '08:30:00', NULL, NULL, NULL, '08:40:00', '08:50:00', '08:55:00', NULL, NULL, '09:05:00', NULL, NULL, 'Por Pastal'),
(3, '08:10:00', '08:40:00', NULL, '08:57:00', '09:10:00', NULL, NULL, '09:20:00', NULL, NULL, NULL, '09:30:00', NULL, NULL, '09:40:00', NULL, '09:50:00', '09:55:00', '10:00:00', NULL),
(4, '09:10:00', '09:40:00', NULL, '09:57:00', '10:10:00', NULL, NULL, '10:20:00', NULL, NULL, NULL, '10:30:00', '10:40:00', '10:45:00', NULL, NULL, '10:55:00', NULL, NULL, NULL),
(5, '10:10:00', '10:40:00', NULL, '10:57:00', '11:10:00', NULL, NULL, '11:20:00', NULL, NULL, NULL, '11:30:00', NULL, NULL, '11:40:00', NULL, '11:50:00', NULL, NULL, NULL),
(6, '11:00:00', '11:30:00', '11:50:00', '12:00:00', '12:10:00', NULL, NULL, '12:20:00', NULL, '12:30:00', '12:50:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Por Pastal'),
(7, '11:50:00', '12:20:00', NULL, '12:37:00', '12:50:00', NULL, NULL, '13:00:00', NULL, NULL, NULL, '13:10:00', '13:20:00', '13:25:00', NULL, NULL, '13:35:00', NULL, NULL, NULL),
(8, '12:30:00', '13:00:00', NULL, '13:17:00', '13:30:00', NULL, NULL, '13:40:00', NULL, NULL, NULL, '13:50:00', NULL, NULL, '14:00:00', NULL, '14:10:00', NULL, NULL, NULL),
(9, '13:00:00', '13:30:00', '13:50:00', '14:00:00', '14:10:00', NULL, NULL, '14:20:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Por Pastal'),
(10, '13:30:00', '14:00:00', NULL, '14:17:00', '14:30:00', NULL, NULL, '14:40:00', NULL, NULL, NULL, '14:50:00', '15:00:00', '15:05:00', NULL, NULL, '15:15:00', NULL, NULL, NULL),
(11, '14:00:00', '14:30:00', NULL, '14:43:00', '15:00:00', NULL, NULL, '15:10:00', NULL, NULL, NULL, '15:20:00', NULL, NULL, '15:30:00', NULL, '15:40:00', NULL, NULL, NULL),
(12, '14:50:00', '15:20:00', '15:40:00', '15:50:00', '16:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Por Pastal'),
(13, '15:40:00', '16:10:00', NULL, '16:27:00', '16:40:00', NULL, NULL, '16:50:00', NULL, NULL, NULL, '17:00:00', '17:10:00', '17:15:00', NULL, NULL, '17:25:00', NULL, NULL, NULL),
(14, '16:30:00', '17:00:00', NULL, '17:17:00', '17:30:00', NULL, NULL, '17:40:00', NULL, NULL, NULL, '17:50:00', NULL, NULL, '18:00:00', NULL, '18:10:00', '18:15:00', '18:20:00', NULL),
(15, '17:20:00', '17:50:00', '18:10:00', '18:20:00', '18:30:00', NULL, NULL, '18:40:00', NULL, NULL, NULL, '18:50:00', '19:00:00', '19:05:00', NULL, NULL, '19:15:00', NULL, NULL, 'Por Pastal'),
(16, '18:10:00', '18:40:00', NULL, '18:57:00', '19:10:00', NULL, NULL, '19:20:00', NULL, '19:30:00', '19:50:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '19:00:00', '19:30:00', NULL, '19:47:00', '20:00:00', NULL, NULL, '20:10:00', NULL, NULL, NULL, '20:20:00', '20:30:00', '20:35:00', NULL, NULL, '20:45:00', NULL, NULL, NULL),
(18, '20:10:00', '20:40:00', NULL, '20:57:00', '21:10:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '21:20:00', '21:50:00', '22:10:00', '22:20:00', '22:30:00', NULL, NULL, '22:40:00', NULL, NULL, NULL, '22:50:00', NULL, NULL, '23:00:00', NULL, '23:10:00', NULL, NULL, 'Por Pastal'),
(20, '22:30:00', '23:00:00', NULL, '23:15:00', '23:25:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taxi`
--

CREATE TABLE `taxi` (
  `idTaxi` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `taxiNumber` varchar(45) DEFAULT NULL,
  `domain` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `user` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`iduser`, `user`, `password`) VALUES
(4, 'admin', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `californiaidasaturday`
--
ALTER TABLE `californiaidasaturday`
  ADD PRIMARY KEY (`idcaliforniaidaweek`);

--
-- Indices de la tabla `californiaidasunday`
--
ALTER TABLE `californiaidasunday`
  ADD PRIMARY KEY (`idcaliforniaidaweek`);

--
-- Indices de la tabla `californiaidaweek`
--
ALTER TABLE `californiaidaweek`
  ADD PRIMARY KEY (`idcaliforniaidaweek`);

--
-- Indices de la tabla `californiavueltasaturday`
--
ALTER TABLE `californiavueltasaturday`
  ADD PRIMARY KEY (`idcaliforniavueltasaturday`);

--
-- Indices de la tabla `californiavueltasunday`
--
ALTER TABLE `californiavueltasunday`
  ADD PRIMARY KEY (`idcaliforniavueltasaturday`);

--
-- Indices de la tabla `californiavueltaweek`
--
ALTER TABLE `californiavueltaweek`
  ADD PRIMARY KEY (`idcaliforniavueltaweek`);

--
-- Indices de la tabla `internocostaidasaturday`
--
ALTER TABLE `internocostaidasaturday`
  ADD PRIMARY KEY (`idinternocostaidasaturday`);

--
-- Indices de la tabla `internocostaidasunday`
--
ALTER TABLE `internocostaidasunday`
  ADD PRIMARY KEY (`idinternocostaidasunday`);

--
-- Indices de la tabla `internocostaidaweek`
--
ALTER TABLE `internocostaidaweek`
  ADD PRIMARY KEY (`idinternocostaidaweek`);

--
-- Indices de la tabla `internocostavueltasaturday`
--
ALTER TABLE `internocostavueltasaturday`
  ADD PRIMARY KEY (`idinternocostavueltasaturday`);

--
-- Indices de la tabla `internocostavueltasunday`
--
ALTER TABLE `internocostavueltasunday`
  ADD PRIMARY KEY (`idinternocostavueltasunday`);

--
-- Indices de la tabla `internocostavueltaweek`
--
ALTER TABLE `internocostavueltaweek`
  ADD PRIMARY KEY (`idinternocostavueltaweek`);

--
-- Indices de la tabla `internolavalleidasaturday`
--
ALTER TABLE `internolavalleidasaturday`
  ADD PRIMARY KEY (`idinternolavalleidasaturday`);

--
-- Indices de la tabla `internolavalleidasunday`
--
ALTER TABLE `internolavalleidasunday`
  ADD PRIMARY KEY (`idinternolavalleidasunday`);

--
-- Indices de la tabla `internolavalleidaweek`
--
ALTER TABLE `internolavalleidaweek`
  ADD PRIMARY KEY (`idinternolavalleidaweek`);

--
-- Indices de la tabla `internolavallevueltasaturday`
--
ALTER TABLE `internolavallevueltasaturday`
  ADD PRIMARY KEY (`idinternolavallevueltasaturday`);

--
-- Indices de la tabla `internolavallevueltasunday`
--
ALTER TABLE `internolavallevueltasunday`
  ADD PRIMARY KEY (`idinternolavallevueltasunday`);

--
-- Indices de la tabla `internolavallevueltaweek`
--
ALTER TABLE `internolavallevueltaweek`
  ADD PRIMARY KEY (`idinternolavallevueltaweek`);

--
-- Indices de la tabla `ruta24idasaturday`
--
ALTER TABLE `ruta24idasaturday`
  ADD PRIMARY KEY (`idruta24idasaturday`);

--
-- Indices de la tabla `ruta24idasunday`
--
ALTER TABLE `ruta24idasunday`
  ADD PRIMARY KEY (`idruta24idasunday`);

--
-- Indices de la tabla `ruta24idaweek`
--
ALTER TABLE `ruta24idaweek`
  ADD PRIMARY KEY (`idruta24idaweek`);

--
-- Indices de la tabla `ruta24vueltasaturday`
--
ALTER TABLE `ruta24vueltasaturday`
  ADD PRIMARY KEY (`idruta24vueltasaturday`);

--
-- Indices de la tabla `ruta24vueltasunday`
--
ALTER TABLE `ruta24vueltasunday`
  ADD PRIMARY KEY (`idruta24vueltasunday`);

--
-- Indices de la tabla `ruta24vueltaweek`
--
ALTER TABLE `ruta24vueltaweek`
  ADD PRIMARY KEY (`idruta24vueltaweek`);

--
-- Indices de la tabla `ruta40idasaturday`
--
ALTER TABLE `ruta40idasaturday`
  ADD PRIMARY KEY (`idruta40idasaturday`);

--
-- Indices de la tabla `ruta40idasunday`
--
ALTER TABLE `ruta40idasunday`
  ADD PRIMARY KEY (`idruta40idasunday`);

--
-- Indices de la tabla `ruta40idaweek`
--
ALTER TABLE `ruta40idaweek`
  ADD PRIMARY KEY (`idruta40idaweek`);

--
-- Indices de la tabla `ruta40vueltasaturday`
--
ALTER TABLE `ruta40vueltasaturday`
  ADD PRIMARY KEY (`idruta40vueltasaturday`);

--
-- Indices de la tabla `ruta40vueltasunday`
--
ALTER TABLE `ruta40vueltasunday`
  ADD PRIMARY KEY (`idruta40vueltasunday`);

--
-- Indices de la tabla `ruta40vueltaweek`
--
ALTER TABLE `ruta40vueltaweek`
  ADD PRIMARY KEY (`idruta40vueltaweek`);

--
-- Indices de la tabla `taxi`
--
ALTER TABLE `taxi`
  ADD PRIMARY KEY (`idTaxi`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `californiaidasaturday`
--
ALTER TABLE `californiaidasaturday`
  MODIFY `idcaliforniaidaweek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `californiaidasunday`
--
ALTER TABLE `californiaidasunday`
  MODIFY `idcaliforniaidaweek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `californiaidaweek`
--
ALTER TABLE `californiaidaweek`
  MODIFY `idcaliforniaidaweek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `californiavueltasaturday`
--
ALTER TABLE `californiavueltasaturday`
  MODIFY `idcaliforniavueltasaturday` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `californiavueltasunday`
--
ALTER TABLE `californiavueltasunday`
  MODIFY `idcaliforniavueltasaturday` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `californiavueltaweek`
--
ALTER TABLE `californiavueltaweek`
  MODIFY `idcaliforniavueltaweek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `internocostaidasaturday`
--
ALTER TABLE `internocostaidasaturday`
  MODIFY `idinternocostaidasaturday` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `internocostaidasunday`
--
ALTER TABLE `internocostaidasunday`
  MODIFY `idinternocostaidasunday` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `internocostaidaweek`
--
ALTER TABLE `internocostaidaweek`
  MODIFY `idinternocostaidaweek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `internocostavueltasaturday`
--
ALTER TABLE `internocostavueltasaturday`
  MODIFY `idinternocostavueltasaturday` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `internocostavueltasunday`
--
ALTER TABLE `internocostavueltasunday`
  MODIFY `idinternocostavueltasunday` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `internocostavueltaweek`
--
ALTER TABLE `internocostavueltaweek`
  MODIFY `idinternocostavueltaweek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `internolavalleidasaturday`
--
ALTER TABLE `internolavalleidasaturday`
  MODIFY `idinternolavalleidasaturday` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `internolavalleidasunday`
--
ALTER TABLE `internolavalleidasunday`
  MODIFY `idinternolavalleidasunday` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `internolavalleidaweek`
--
ALTER TABLE `internolavalleidaweek`
  MODIFY `idinternolavalleidaweek` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `internolavallevueltasaturday`
--
ALTER TABLE `internolavallevueltasaturday`
  MODIFY `idinternolavallevueltasaturday` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `internolavallevueltasunday`
--
ALTER TABLE `internolavallevueltasunday`
  MODIFY `idinternolavallevueltasunday` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `internolavallevueltaweek`
--
ALTER TABLE `internolavallevueltaweek`
  MODIFY `idinternolavallevueltaweek` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `taxi`
--
ALTER TABLE `taxi`
  MODIFY `idTaxi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
