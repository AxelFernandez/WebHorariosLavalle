-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 30-12-2019 a las 12:24:05
-- Versión del servidor: 5.7.28
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `HorariosLavalle`
--
CREATE DATABASE IF NOT EXISTS `HorariosLavalle` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `HorariosLavalle`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `californiaidasaturday`
--

INSERT INTO `californiaidasaturday` (`idcaliforniaidaweek`, `3portena`, `central`, `william`, `california`, `costa`, `additional`) VALUES
(1, '06:00:00', '06:10:00', NULL, '06:20:00', '06:40:00', NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, '08:20:00', '08:40:00', NULL),
(4, NULL, NULL, NULL, '10:30:00', '10:50:00', NULL),
(5, NULL, NULL, NULL, '13:10:00', '13:30:00', NULL),
(6, NULL, NULL, '14:50:00', NULL, '15:20:00', NULL),
(7, NULL, NULL, NULL, '18:20:00', '18:40:00', NULL),
(8, NULL, NULL, NULL, '20:00:00', '20:20:00', NULL),
(9, NULL, NULL, '20:50:00', NULL, '21:20:00', NULL),
(10, NULL, NULL, NULL, '22:40:00', '23:00:00', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `californiaidasunday`
--

INSERT INTO `californiaidasunday` (`idcaliforniaidaweek`, `3portena`, `central`, `california`, `costa`, `additional`) VALUES
(1, '06:00:00', '06:10:00', '06:20:00', '06:40:00', NULL),
(2, NULL, NULL, '08:20:00', '08:40:00', NULL),
(3, NULL, NULL, '10:30:00', '10:50:00', NULL),
(4, NULL, NULL, '13:10:00', '13:30:00', NULL),
(5, NULL, NULL, '18:20:00', '18:40:00', NULL),
(6, NULL, NULL, '20:00:00', '20:20:00', NULL),
(7, NULL, NULL, '22:40:00', '23:00:00', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `californiaidaweek`
--

INSERT INTO `californiaidaweek` (`idcaliforniaidaweek`, `3portena`, `central`, `william`, `california`, `costa`, `additional`) VALUES
(1, '05:40:00', '05:50:00', NULL, '06:00:00', '06:20:00', 'C. Chico'),
(2, NULL, NULL, '08:10:00', '08:30:00', '08:40:00', NULL),
(3, NULL, NULL, NULL, '10:00:00', '10:20:00', NULL),
(4, NULL, NULL, NULL, '11:40:00', '12:00:00', NULL),
(5, NULL, NULL, '13:00:00', '13:20:00', '13:30:00', NULL),
(6, NULL, NULL, NULL, '18:00:00', '18:20:00', NULL),
(7, NULL, NULL, NULL, '20:00:00', '20:20:00', NULL),
(8, NULL, NULL, NULL, '21:20:00', '21:40:00', NULL),
(9, NULL, NULL, NULL, '22:20:00', '22:40:00', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `californiavueltasaturday`
--

INSERT INTO `californiavueltasaturday` (`idcaliforniavueltasaturday`, `costa`, `california`, `william`, `central`, `3portena`, `additional`) VALUES
(1, '07:40:00', '08:00:00', NULL, NULL, NULL, NULL),
(2, '09:20:00', '09:40:00', NULL, NULL, NULL, NULL),
(3, '12:30:00', '12:50:00', NULL, NULL, NULL, NULL),
(4, '14:10:00', NULL, '14:50:00', NULL, NULL, NULL),
(5, '17:20:00', '17:40:00', NULL, NULL, NULL, NULL),
(6, '19:20:00', '19:40:00', NULL, NULL, NULL, NULL),
(7, '20:30:00', NULL, '20:50:00', NULL, NULL, NULL),
(8, '22:20:00', '22:40:00', NULL, NULL, NULL, NULL),
(9, '23:50:00', '00:10:00', NULL, '00:20:00', '00:30:00', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `californiavueltasunday`
--

INSERT INTO `californiavueltasunday` (`idcaliforniavueltasaturday`, `costa`, `california`, `central`, `3portena`, `additional`) VALUES
(1, '07:40:00', '08:00:00', NULL, NULL, NULL),
(2, '09:20:00', '09:40:00', NULL, NULL, NULL),
(3, '12:30:00', '12:50:00', NULL, NULL, NULL),
(4, '17:20:00', '17:40:00', NULL, NULL, NULL),
(5, '19:20:00', '19:40:00', NULL, NULL, NULL),
(6, '22:20:00', '22:40:00', NULL, NULL, NULL),
(7, '23:50:00', '00:10:00', NULL, '00:20:00', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `californiavueltaweek`
--

INSERT INTO `californiavueltaweek` (`idcaliforniavueltaweek`, `costa`, `california`, `william`, `central`, `3portena`, `additional`) VALUES
(1, '07:20:00', '07:40:00', '08:10:00', NULL, NULL, NULL),
(2, '09:20:00', '09:40:00', NULL, NULL, NULL, NULL),
(3, '11:00:00', '11:20:00', NULL, NULL, NULL, NULL),
(4, '12:20:00', '12:30:00', '13:00:00', NULL, NULL, 'Por Chimba'),
(5, '17:20:00', '17:40:00', NULL, NULL, NULL, NULL),
(6, '19:20:00', '19:40:00', NULL, NULL, NULL, NULL),
(7, '21:00:00', '21:20:00', NULL, NULL, NULL, NULL),
(8, '22:00:00', '22:20:00', NULL, NULL, NULL, NULL),
(9, '23:30:00', NULL, NULL, '23:50:00', '00:00:00', 'C. Chico');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `internocostaidasaturday`
--

INSERT INTO `internocostaidasaturday` (`idinternocostaidasaturday`, `lapega`, `lasvioletas`, `elvergel`, `paramillo`, `lavalle`, `labajada`, `california`, `mendoza`, `costaDeAraujo`, `additional`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, '05:40:00', NULL, NULL, '05:50:00', NULL),
(2, NULL, NULL, NULL, NULL, '07:00:00', NULL, NULL, NULL, '07:35:00', 'Por El Carmen'),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11:00:00', '12:23:00', NULL),
(4, NULL, NULL, NULL, NULL, '13:45:00', NULL, NULL, NULL, '14:20:00', 'Por La Merced'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, '16:20:00', NULL, '16:40:00', NULL),
(6, '18:15:00', '18:00:00', '18:25:00', NULL, '18:35:00', NULL, NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, '19:10:00', '19:30:00', NULL, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL, '19:30:00', NULL, NULL, NULL, '20:10:00', 'Por Arenales'),
(9, NULL, '21:25:00', '21:40:00', NULL, '21:45:00', NULL, NULL, NULL, NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `internocostaidasunday`
--

INSERT INTO `internocostaidasunday` (`idinternocostaidasunday`, `lasvioletas`, `lapega`, `elvergel`, `paramillo`, `lavalle`, `costaDeAraujo`, `additional`) VALUES
(1, NULL, NULL, NULL, '09:00:00', '09:20:00', NULL, '\r'),
(2, NULL, '09:50:00', '10:00:00', NULL, '10:10:00', NULL, '\r'),
(3, NULL, NULL, NULL, NULL, '10:10:00', '10:50:00', 'X PALMERA'),
(4, NULL, NULL, NULL, '18:00:00', '18:20:00', NULL, '\r'),
(5, '18:40:00', '18:50:00', '19:00:00', NULL, '19:10:00', NULL, '\r'),
(6, NULL, NULL, NULL, NULL, '19:10:00', '19:50:00', 'X PALMERA');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `internocostaidaweek`
--

INSERT INTO `internocostaidaweek` (`idinternocostaidaweek`, `lapega`, `lasvioletas`, `elvergel`, `paramillo`, `california`, `labajada`, `mendoza`, `lavalle`, `costaDeAraujo`, `additional`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, '05:40:00', NULL, NULL, '05:50:00', NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07:00:00', '07:30:00', 'Por El Carmen'),
(3, NULL, NULL, NULL, NULL, NULL, NULL, '10:50:00', '11:50:00', '12:13:00', NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13:40:00', '14:10:00', 'Por La Palmera'),
(5, NULL, NULL, NULL, NULL, '16:20:00', NULL, NULL, NULL, '16:40:00', NULL),
(6, '18:15:00', '18:00:00', '18:25:00', NULL, NULL, NULL, NULL, '18:35:00', NULL, NULL),
(7, NULL, NULL, NULL, '19:05:00', NULL, NULL, NULL, '19:30:00', NULL, NULL),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '19:30:00', '20:10:00', 'Por La Palmera'),
(9, NULL, '21:20:00', '21:30:00', NULL, NULL, NULL, NULL, '21:40:00', NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `internocostavueltasaturday`
--

INSERT INTO `internocostavueltasaturday` (`idinternocostavueltasaturday`, `costaDeAraujo`, `mendoza`, `california`, `labajada`, `lavalle`, `paramillo`, `elvergel`, `lasvioletas`, `lapega`, `additional`) VALUES
(1, '05:30:00', NULL, NULL, '05:40:00', NULL, NULL, NULL, NULL, NULL, 'Por Calle Roca'),
(2, '06:00:00', NULL, NULL, NULL, '06:35:00', NULL, NULL, NULL, NULL, 'Por la Merced'),
(3, '08:07:00', '09:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(4, '13:00:00', NULL, NULL, NULL, '13:30:00', NULL, NULL, NULL, NULL, 'Por el Carmen'),
(5, '15:20:00', NULL, '15:40:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '17:00:00', NULL, NULL, NULL, '17:35:00', NULL, NULL, NULL, NULL, 'Por Arenales'),
(7, NULL, NULL, NULL, NULL, '17:40:00', NULL, '17:50:00', '18:00:00', '18:15:00', NULL),
(8, NULL, NULL, NULL, NULL, '18:50:00', '19:10:00', NULL, NULL, NULL, NULL),
(9, '20:30:00', NULL, NULL, '20:40:00', NULL, NULL, NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL, '21:00:00', NULL, '21:10:00', '21:20:00', NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `internocostavueltasunday`
--

INSERT INTO `internocostavueltasunday` (`idinternocostavueltasunday`, `costaDeAraujo`, `labajada`, `lavalle`, `paramillo`, `elvergel`, `lasvioletas`, `lapega`, `additional`) VALUES
(1, '08:00:00', NULL, '08:40:00', NULL, NULL, NULL, NULL, 'Por La Palmera'),
(2, NULL, NULL, '08:40:00', '09:00:00', NULL, NULL, NULL, '\r'),
(3, NULL, NULL, '09:20:00', NULL, '09:30:00', '09:40:00', '09:50:00', NULL),
(4, '17:00:00', NULL, '17:40:00', NULL, NULL, NULL, NULL, 'Por La Palmera'),
(5, NULL, NULL, '17:40:00', '18:00:00', NULL, NULL, NULL, '\r'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `internocostavueltaweek`
--

INSERT INTO `internocostavueltaweek` (`idinternocostavueltaweek`, `costaDeAraujo`, `lavalle`, `mendoza`, `labajada`, `california`, `paramillo`, `elvergel`, `lasvioletas`, `lapega`, `additional`) VALUES
(1, '05:30:00', NULL, NULL, '05:40:00', NULL, NULL, NULL, NULL, NULL, NULL),
(2, '06:00:00', '06:40:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Por La Palmera'),
(3, '07:57:00', '08:20:00', '09:20:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '13:00:00', '13:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Por El Carmen'),
(5, '15:20:00', NULL, NULL, NULL, '15:40:00', NULL, NULL, NULL, NULL, NULL),
(6, '17:00:00', '17:40:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Por La Palmera'),
(7, NULL, '17:40:00', NULL, NULL, NULL, NULL, '17:50:00', '18:00:00', '18:15:00', NULL),
(8, NULL, '18:45:00', NULL, NULL, NULL, '19:05:00', NULL, NULL, NULL, NULL),
(9, '20:30:00', NULL, NULL, '20:40:00', NULL, NULL, NULL, NULL, NULL, NULL),
(10, NULL, '21:00:00', NULL, NULL, NULL, NULL, '21:10:00', '21:20:00', NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `internolavalleidasaturday`
--

INSERT INTO `internolavalleidasaturday` (`idinternolavalleidasaturday`, `paramillo`, `lapega`, `lasvioletas`, `elvergel`, `mendoza`, `lavalle`, `additional`) VALUES
(1, NULL, '06:10:00', '06:20:00', '06:30:00', NULL, '06:40:00', NULL),
(2, '07:20:00', NULL, NULL, NULL, NULL, '07:40:00', NULL),
(3, NULL, NULL, NULL, NULL, '11:20:00', '12:20:00', NULL),
(4, NULL, NULL, '13:00:00', '13:10:00', NULL, '13:20:00', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `internolavalleidaweek`
--

INSERT INTO `internolavalleidaweek` (`idinternolavalleidaweek`, `paramillo`, `lapega`, `lasvioletas`, `elvergel`, `btupac`, `blacolmena`, `lavalle`, `additional`) VALUES
(1, NULL, '06:10:00', '06:20:00', '06:30:00', NULL, NULL, '06:40:00', NULL),
(2, '07:30:00', NULL, NULL, NULL, '07:45:00', NULL, '07:50:00', NULL),
(3, NULL, NULL, NULL, NULL, '08:20:00', NULL, '08:30:00', NULL),
(4, NULL, NULL, NULL, NULL, NULL, '09:45:00', '10:00:00', NULL),
(5, NULL, NULL, '10:50:00', '11:00:00', NULL, NULL, '11:10:00', NULL),
(6, NULL, NULL, NULL, NULL, '12:20:00', NULL, '12:30:00', NULL),
(7, NULL, NULL, '13:00:00', '13:10:00', NULL, NULL, '13:20:00', NULL),
(8, '14:10:00', NULL, NULL, NULL, NULL, NULL, '14:30:00', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `internolavallevueltasaturday`
--

INSERT INTO `internolavallevueltasaturday` (`idinternolavallevueltasaturday`, `lavalle`, `mendoza`, `elvergel`, `lasvioletas`, `lapega`, `paramillo`, `additional`) VALUES
(1, '05:50:00', NULL, '06:00:00', '06:10:00', '06:20:00', NULL, NULL),
(2, '07:00:00', NULL, NULL, NULL, NULL, '07:20:00', NULL),
(3, '08:30:00', '09:40:00', NULL, NULL, NULL, NULL, NULL),
(4, '12:40:00', NULL, '12:50:00', NULL, '13:00:00', NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `internolavallevueltaweek`
--

INSERT INTO `internolavallevueltaweek` (`idinternolavallevueltaweek`, `lavalle`, `blacolmena`, `btupac`, `elvergel`, `lasvioletas`, `lapega`, `paramillo`, `additional`) VALUES
(1, '05:50:00', NULL, NULL, '06:00:00', '06:20:00', '06:10:00', NULL, NULL),
(2, '07:00:00', NULL, NULL, NULL, NULL, NULL, '07:30:00', NULL),
(3, '08:10:00', NULL, '08:20:00', NULL, NULL, NULL, NULL, NULL),
(4, '09:30:00', '09:45:00', NULL, NULL, NULL, NULL, NULL, NULL),
(5, '10:30:00', NULL, NULL, '10:40:00', '10:50:00', NULL, NULL, NULL),
(6, '12:00:00', NULL, '12:10:00', NULL, NULL, NULL, NULL, NULL),
(7, '12:40:00', NULL, NULL, '12:50:00', '13:00:00', NULL, NULL, NULL),
(8, '13:40:00', NULL, '13:45:00', NULL, NULL, NULL, '14:10:00', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ruta24idasaturday`
--

INSERT INTO `ruta24idasaturday` (`idruta24idasaturday`, `asuncion`, `el15`, `gustavoAndre`, `costaDeAraujo`, `lavalle`, `mendoza`, `additional`) VALUES
(1, NULL, NULL, NULL, NULL, '05:10:00', '06:05:00', 'B Solares'),
(2, NULL, NULL, NULL, '05:10:00', '05:30:00', '06:30:00', NULL),
(3, NULL, '05:25:00', '05:30:00', '05:47:00', '06:10:00', '07:10:00', NULL),
(4, NULL, NULL, NULL, '06:17:00', '06:40:00', '07:40:00', NULL),
(5, '06:17:00', '06:22:00', '06:27:00', '06:47:00', '07:10:00', '08:10:00', NULL),
(6, NULL, NULL, '06:57:00', '07:17:00', '07:40:00', '08:40:00', NULL),
(7, NULL, NULL, '07:27:00', '07:47:00', '08:10:00', '09:10:00', NULL),
(8, NULL, NULL, NULL, '08:07:00', '08:30:00', '09:30:00', NULL),
(9, NULL, '08:12:00', '08:17:00', '08:37:00', '09:00:00', '10:00:00', NULL),
(10, NULL, NULL, '08:57:00', '09:17:00', '09:40:00', '10:40:00', NULL),
(11, NULL, NULL, '09:47:00', '10:07:00', '10:30:00', '11:30:00', NULL),
(12, NULL, NULL, '10:37:00', '10:57:00', '11:20:00', '12:20:00', NULL),
(13, NULL, NULL, NULL, '11:37:00', '12:00:00', '13:00:00', NULL),
(14, NULL, NULL, '11:57:00', '12:17:00', '12:40:00', '13:40:00', NULL),
(15, NULL, NULL, NULL, '12:57:00', '13:20:00', '14:20:00', NULL),
(16, NULL, '13:02:00', '13:07:00', '13:27:00', '13:50:00', '14:50:00', NULL),
(17, NULL, NULL, '13:37:00', '13:57:00', '14:20:00', '15:20:00', NULL),
(18, NULL, NULL, '14:07:00', '14:27:00', '14:50:00', '15:50:00', NULL),
(19, NULL, NULL, '14:47:00', '15:07:00', '15:30:00', '16:30:00', NULL),
(20, NULL, NULL, '15:27:00', '15:47:00', '16:10:00', '17:10:00', NULL),
(21, NULL, NULL, '15:57:00', '16:17:00', '16:40:00', '17:40:00', NULL),
(22, NULL, NULL, '16:27:00', '16:47:00', '17:10:00', '18:10:00', NULL),
(23, NULL, NULL, NULL, '17:17:00', '17:40:00', '18:40:00', NULL),
(24, '17:12:00', '17:22:00', '17:27:00', '17:47:00', '18:10:00', '19:10:00', NULL),
(25, NULL, NULL, '18:02:00', '18:22:00', '18:45:00', '19:45:00', NULL),
(26, NULL, NULL, '18:37:00', '18:57:00', '19:20:00', '20:20:00', NULL),
(27, NULL, NULL, NULL, '19:27:00', '19:50:00', '20:50:00', NULL),
(28, NULL, NULL, '19:40:00', '19:57:00', '20:20:00', '21:20:00', NULL),
(29, NULL, NULL, '20:10:00', '20:27:00', '20:50:00', '21:50:00', NULL),
(30, NULL, NULL, NULL, '20:57:00', '21:20:00', '22:20:00', NULL),
(31, NULL, NULL, '21:27:00', '21:47:00', NULL, NULL, NULL),
(32, NULL, NULL, '21:57:00', '22:17:00', '22:40:00', '23:40:00', NULL),
(33, NULL, NULL, '22:30:00', '22:47:00', '23:10:00', '00:00:00', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ruta24idasunday`
--

INSERT INTO `ruta24idasunday` (`idruta24idasunday`, `asuncion`, `el15`, `gustavoAndre`, `costaDeAraujo`, `lavalle`, `mendoza`, `additional`) VALUES
(1, NULL, NULL, NULL, NULL, '05:20:00', '06:10:00', NULL),
(2, NULL, NULL, '05:37:00', '05:57:00', '06:20:00', '07:20:00', NULL),
(3, NULL, NULL, '06:17:00', '06:37:00', '07:00:00', '08:00:00', NULL),
(4, NULL, '07:12:00', '07:17:00', '07:37:00', '08:00:00', '09:00:00', NULL),
(5, NULL, NULL, NULL, '08:37:00', '09:00:00', '10:00:00', NULL),
(6, NULL, NULL, NULL, NULL, '09:50:00', '10:50:00', NULL),
(7, NULL, '09:32:00', '09:37:00', '09:57:00', '10:20:00', '11:20:00', NULL),
(8, NULL, NULL, '10:27:00', '10:47:00', '11:10:00', '12:10:00', NULL),
(9, NULL, NULL, '11:17:00', '11:37:00', '12:00:00', '13:00:00', NULL),
(10, NULL, NULL, NULL, '12:27:00', '12:50:00', '13:50:00', NULL),
(11, NULL, NULL, NULL, '13:17:00', '13:40:00', '14:40:00', NULL),
(12, NULL, NULL, NULL, '14:07:00', '14:30:00', '15:30:00', NULL),
(13, NULL, NULL, '14:37:00', '14:57:00', '15:20:00', '16:20:00', NULL),
(14, NULL, NULL, '15:27:00', '15:47:00', '16:10:00', '17:10:00', NULL),
(15, NULL, NULL, '16:17:00', '16:37:00', '17:00:00', '18:00:00', NULL),
(16, NULL, '16:52:00', '16:57:00', '17:17:00', '17:40:00', '18:40:00', NULL),
(17, NULL, NULL, '17:47:00', '18:07:00', '18:30:00', '19:30:00', NULL),
(18, NULL, '18:32:00', '18:37:00', '18:57:00', '19:20:00', '20:20:00', NULL),
(19, NULL, NULL, '19:17:00', '19:37:00', '20:00:00', '21:00:00', NULL),
(20, NULL, NULL, NULL, '20:17:00', '20:40:00', '21:40:00', NULL),
(21, NULL, NULL, '20:47:00', '21:07:00', '21:30:00', '22:30:00', NULL),
(22, NULL, NULL, NULL, '21:57:00', '22:20:00', '23:10:00', NULL),
(23, NULL, NULL, NULL, '22:50:00', '23:10:00', '00:00:00', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ruta24idaweek`
--

INSERT INTO `ruta24idaweek` (`idruta24idaweek`, `asuncion`, `el15`, `gustavoAndre`, `costaDeAraujo`, `lavalle`, `mendoza`, `additional`) VALUES
(1, NULL, NULL, NULL, NULL, '05:00:00', '05:50:00', NULL),
(2, NULL, NULL, '04:40:00', '04:57:00', '05:20:00', '06:20:00', 'H Notti'),
(3, NULL, '05:12:00', '05:17:00', '05:37:00', '06:00:00', '06:50:00', NULL),
(4, NULL, NULL, NULL, '06:07:00', '06:30:00', '07:30:00', NULL),
(5, '06:02:00', '06:12:00', '06:17:00', '06:37:00', '07:00:00', '08:00:00', NULL),
(6, NULL, NULL, NULL, '06:37:00', '07:00:00', '07:50:00', 'Por Tirasso'),
(7, NULL, '06:32:00', '06:37:00', '06:57:00', '07:20:00', '08:20:00', NULL),
(8, NULL, NULL, '06:57:00', '07:17:00', '07:40:00', '08:40:00', NULL),
(9, NULL, NULL, NULL, '07:37:00', '08:00:00', '09:00:00', NULL),
(10, NULL, NULL, NULL, '07:57:00', '08:20:00', '09:20:00', NULL),
(11, NULL, '07:42:00', '07:47:00', '08:07:00', '08:30:00', '09:30:00', NULL),
(12, NULL, NULL, NULL, '08:27:00', '08:50:00', '09:50:00', NULL),
(13, NULL, NULL, '08:37:00', '08:57:00', '09:20:00', '10:20:00', NULL),
(14, NULL, NULL, NULL, '09:37:00', '10:00:00', '11:00:00', NULL),
(15, NULL, NULL, '09:47:00', '10:07:00', '10:30:00', '11:30:00', NULL),
(16, NULL, NULL, NULL, '10:37:00', '11:00:00', '12:00:00', NULL),
(17, NULL, NULL, '10:47:00', '11:07:00', '11:30:00', '12:30:00', NULL),
(18, NULL, NULL, NULL, '11:37:00', '12:00:00', '13:00:00', NULL),
(19, NULL, '11:42:00', '11:47:00', '12:07:00', '12:30:00', '13:30:00', NULL),
(20, NULL, NULL, '12:17:00', '12:37:00', '13:00:00', '14:00:00', NULL),
(21, NULL, NULL, '12:57:00', '13:17:00', '13:40:00', '14:40:00', NULL),
(22, NULL, NULL, '13:37:00', '13:57:00', '14:20:00', '15:20:00', NULL),
(23, NULL, NULL, NULL, '14:27:00', '14:50:00', '15:50:00', NULL),
(24, NULL, NULL, '14:37:00', '14:57:00', '15:20:00', '16:20:00', NULL),
(25, NULL, NULL, NULL, '15:27:00', '15:50:00', '16:50:00', NULL),
(26, NULL, NULL, '15:37:00', '15:57:00', '16:20:00', '17:20:00', NULL),
(27, NULL, NULL, '16:07:00', '16:27:00', '16:50:00', '17:50:00', NULL),
(28, NULL, NULL, NULL, '16:57:00', '17:20:00', '18:20:00', NULL),
(29, '16:52:00', '17:02:00', '17:07:00', '17:27:00', '17:50:00', '18:50:00', NULL),
(30, NULL, NULL, NULL, '18:02:00', '18:25:00', '19:25:00', NULL),
(31, NULL, NULL, '18:17:00', '18:37:00', '19:00:00', '20:00:00', NULL),
(32, NULL, NULL, '18:47:00', '19:07:00', '19:30:00', '20:30:00', NULL),
(33, NULL, NULL, NULL, '19:37:00', '20:00:00', '21:00:00', NULL),
(34, NULL, NULL, '19:47:00', '20:07:00', '20:30:00', '21:30:00', NULL),
(35, NULL, NULL, NULL, '20:37:00', '21:00:00', '22:00:00', NULL),
(36, NULL, NULL, '20:47:00', '21:07:00', '21:30:00', '22:30:00', NULL),
(37, NULL, NULL, '21:17:00', '21:37:00', '22:00:00', '23:00:00', NULL),
(38, NULL, NULL, NULL, '22:17:00', '22:40:00', '23:40:00', NULL),
(39, NULL, NULL, '22:27:00', '22:47:00', '23:10:00', '00:00:00', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ruta24vueltasaturday`
--

INSERT INTO `ruta24vueltasaturday` (`idruta24vueltasaturday`, `mendoza`, `lavalle`, `costaDeAraujo`, `gustavoAndre`, `el15`, `asuncion`, `additional`) VALUES
(1, '05:50:00', '06:40:00', '07:00:00', '07:07:00', NULL, NULL, NULL),
(2, '06:20:00', '07:10:00', '07:33:00', '07:50:00', '07:55:00', NULL, NULL),
(3, '07:00:00', '08:00:00', '08:23:00', '08:43:00', NULL, NULL, NULL),
(4, '08:00:00', '09:00:00', '09:23:00', '09:43:00', NULL, NULL, NULL),
(5, '08:50:00', '09:50:00', '10:13:00', '10:33:00', NULL, NULL, NULL),
(6, '09:30:00', '10:30:00', '10:53:00', NULL, NULL, NULL, NULL),
(7, '10:10:00', '11:10:00', '11:33:00', '11:53:00', NULL, NULL, NULL),
(8, '10:40:00', '11:40:00', '12:03:00', '12:23:00', '12:28:00', NULL, NULL),
(9, '11:00:00', '12:00:00', '12:23:00', NULL, NULL, NULL, NULL),
(10, '11:30:00', '12:30:00', '12:53:00', '13:13:00', NULL, NULL, NULL),
(11, '12:00:00', '13:00:00', '13:23:00', '13:43:00', NULL, NULL, NULL),
(12, '12:30:00', '13:30:00', '13:53:00', '14:13:00', NULL, NULL, NULL),
(13, '13:00:00', '14:00:00', '14:23:00', '14:43:00', NULL, NULL, NULL),
(14, '13:30:00', '14:30:00', '14:53:00', '15:13:00', NULL, NULL, NULL),
(15, '14:00:00', '15:00:00', '15:23:00', '15:43:00', NULL, NULL, NULL),
(16, '14:40:00', '15:40:00', '16:03:00', '16:23:00', '16:28:00', '16:38:00', NULL),
(17, '15:20:00', '16:20:00', '16:43:00', NULL, NULL, NULL, NULL),
(18, '16:00:00', '17:00:00', '17:23:00', '17:43:00', NULL, NULL, NULL),
(19, '16:40:00', '17:40:00', '18:03:00', '18:23:00', NULL, NULL, NULL),
(20, '17:20:00', '18:20:00', '18:43:00', NULL, NULL, NULL, NULL),
(21, '18:00:00', '19:00:00', '19:23:00', '19:40:00', NULL, NULL, NULL),
(22, '18:30:00', '19:30:00', '19:53:00', '20:10:00', NULL, NULL, NULL),
(23, '19:00:00', '20:00:00', '20:23:00', NULL, NULL, NULL, NULL),
(24, '19:30:00', '20:30:00', '20:53:00', '21:13:00', NULL, NULL, NULL),
(25, '20:00:00', '21:00:00', '21:23:00', '21:43:00', NULL, NULL, NULL),
(26, '20:30:00', '21:30:00', '21:53:00', '22:13:00', NULL, NULL, NULL),
(27, '21:00:00', '22:00:00', '22:23:00', '22:43:00', '22:48:00', '22:58:00', NULL),
(28, '21:40:00', '22:40:00', '23:03:00', '23:23:00', NULL, NULL, NULL),
(29, '22:10:00', '23:10:00', '23:30:00', NULL, NULL, NULL, NULL),
(30, '22:50:00', '23:50:00', '00:10:00', NULL, NULL, NULL, NULL),
(31, '23:30:00', '00:30:00', NULL, NULL, NULL, NULL, NULL),
(32, '00:30:00', '01:20:00', '01:35:00', NULL, NULL, NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ruta24vueltasunday`
--

INSERT INTO `ruta24vueltasunday` (`idruta24vueltasunday`, `mendoza`, `lavalle`, `costaDeAraujo`, `gustavoAndre`, `el15`, `asuncion`, `additional`) VALUES
(1, '06:20:00', '07:10:00', '07:30:00', NULL, NULL, NULL, NULL),
(2, '07:00:00', '08:00:00', '08:23:00', '08:43:00', '08:48:00', NULL, NULL),
(3, '08:00:00', '09:00:00', '09:23:00', '09:43:00', NULL, NULL, NULL),
(4, '08:40:00', '09:40:00', NULL, NULL, NULL, NULL, NULL),
(5, '09:30:00', '10:30:00', '10:53:00', '11:13:00', NULL, NULL, NULL),
(6, '10:30:00', '11:30:00', '11:53:00', NULL, NULL, NULL, NULL),
(7, '11:20:00', '12:20:00', '12:43:00', '13:03:00', NULL, NULL, NULL),
(8, '12:10:00', '13:10:00', '13:33:00', NULL, NULL, NULL, NULL),
(9, '13:00:00', '14:00:00', '14:23:00', '14:43:00', NULL, NULL, NULL),
(10, '14:00:00', '15:00:00', '15:23:00', '15:43:00', NULL, NULL, NULL),
(11, '14:50:00', '15:50:00', '16:13:00', '16:33:00', '16:38:00', NULL, NULL),
(12, '15:40:00', '16:40:00', '17:03:00', '17:23:00', NULL, NULL, NULL),
(13, '16:30:00', '17:30:00', '17:53:00', '18:13:00', '18:18:00', NULL, NULL),
(14, '17:20:00', '18:20:00', '18:43:00', '19:03:00', NULL, NULL, NULL),
(15, '18:10:00', '19:10:00', '19:33:00', NULL, NULL, NULL, NULL),
(16, '19:00:00', '20:00:00', '20:23:00', '20:43:00', NULL, NULL, NULL),
(17, '19:40:00', '20:40:00', '21:03:00', NULL, NULL, NULL, NULL),
(18, '20:20:00', '21:20:00', '21:43:00', '22:03:00', '22:08:00', NULL, NULL),
(19, '21:00:00', '22:00:00', '22:23:00', NULL, NULL, NULL, NULL),
(20, '21:40:00', '22:40:00', '23:00:00', '23:20:00', NULL, NULL, NULL),
(21, '22:20:00', '23:20:00', '23:40:00', NULL, NULL, NULL, NULL),
(22, '23:10:00', '00:00:00', NULL, NULL, NULL, NULL, NULL),
(23, '00:30:00', '01:20:00', '01:35:00', NULL, NULL, NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ruta24vueltaweek`
--

INSERT INTO `ruta24vueltaweek` (`idruta24vueltaweek`, `mendoza`, `lavalle`, `costaDeAraujo`, `gustavoAndre`, `el15`, `asuncion`, `additional`) VALUES
(1, '05:30:00', '06:20:00', '06:40:00', '07:00:00', '07:05:00', NULL, NULL),
(2, '06:10:00', '07:10:00', '07:30:00', '07:50:00', NULL, NULL, NULL),
(3, '06:40:00', '07:40:00', '08:03:00', NULL, NULL, NULL, NULL),
(4, '07:10:00', '08:10:00', '08:33:00', NULL, NULL, NULL, NULL),
(5, '07:40:00', '08:40:00', '09:03:00', '09:23:00', NULL, NULL, NULL),
(6, '08:20:00', '09:20:00', '09:43:00', NULL, NULL, NULL, NULL),
(7, '08:50:00', '09:50:00', '10:13:00', '10:33:00', NULL, NULL, NULL),
(8, '09:20:00', '10:20:00', '10:43:00', NULL, NULL, NULL, NULL),
(9, '09:50:00', '10:50:00', '11:13:00', '11:33:00', '11:38:00', NULL, NULL),
(10, '10:20:00', '11:20:00', '11:43:00', '12:03:00', NULL, NULL, NULL),
(11, '10:50:00', '11:50:00', '12:13:00', '12:33:00', NULL, NULL, NULL),
(12, '11:20:00', '12:20:00', '12:43:00', NULL, NULL, NULL, NULL),
(13, '11:40:00', '12:40:00', '13:03:00', '13:23:00', NULL, NULL, NULL),
(14, '12:00:00', '13:00:00', '13:23:00', NULL, NULL, NULL, NULL),
(15, '12:20:00', '13:20:00', '13:43:00', '14:03:00', NULL, NULL, NULL),
(16, '12:40:00', '13:40:00', '14:03:00', NULL, NULL, NULL, NULL),
(17, '13:00:00', '14:00:00', '14:23:00', '14:43:00', NULL, NULL, NULL),
(18, '13:30:00', '14:30:00', '14:53:00', '15:13:00', NULL, NULL, NULL),
(19, '14:00:00', '15:00:00', '15:23:00', NULL, NULL, NULL, NULL),
(20, '14:30:00', '15:30:00', '15:53:00', '16:13:00', '16:18:00', '16:28:00', NULL),
(21, '15:00:00', '16:00:00', '16:23:00', NULL, NULL, NULL, NULL),
(22, '15:40:00', '16:40:00', '17:03:00', '17:23:00', NULL, NULL, NULL),
(23, '16:20:00', '17:20:00', '17:43:00', '18:03:00', NULL, NULL, NULL),
(24, '17:00:00', '18:00:00', '18:23:00', NULL, NULL, NULL, NULL),
(25, '17:30:00', '18:30:00', '18:53:00', '19:13:00', NULL, NULL, NULL),
(26, '18:00:00', '19:00:00', '19:23:00', NULL, NULL, NULL, NULL),
(27, '18:30:00', '19:30:00', '19:53:00', '20:13:00', NULL, NULL, NULL),
(28, '19:00:00', '20:00:00', '20:23:00', '20:43:00', NULL, NULL, NULL),
(29, '19:30:00', '20:30:00', '20:53:00', '21:13:00', NULL, NULL, NULL),
(30, '20:00:00', '21:00:00', '21:23:00', '21:43:00', NULL, NULL, NULL),
(31, '20:20:00', '21:20:00', '21:43:00', '22:03:00', '22:08:00', '22:18:00', NULL),
(32, '20:40:00', '21:40:00', '22:03:00', NULL, NULL, NULL, NULL),
(33, '21:00:00', '22:00:00', '22:23:00', '22:43:00', NULL, NULL, NULL),
(34, '21:30:00', '22:30:00', '22:53:00', '23:13:00', NULL, NULL, NULL),
(35, '22:00:00', '23:00:00', '23:23:00', '23:43:00', NULL, NULL, NULL),
(36, '22:30:00', '23:30:00', '23:50:00', NULL, NULL, NULL, NULL),
(37, '23:00:00', '00:00:00', '00:20:00', NULL, NULL, NULL, NULL),
(38, '23:30:00', '00:20:00', NULL, NULL, NULL, NULL, NULL),
(39, '00:30:00', '01:20:00', '01:35:00', NULL, NULL, NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ruta40idasaturday`
--

INSERT INTO `ruta40idasaturday` (`idruta40idasaturday`, `km56`, `km47Esc`, `jocoli`, `oscarMendoza`, `andacollo`, `croco`, `sguazini`, `3DeMayo`, `sanFrancisco`, `calleItalia`, `barrioLaColmena`, `salvatierra`, `paramillo`, `lavalle`, `verjel`, `cruce`, `pastal`, `borbollon`, `mendoza`, `additional`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05:00:00', NULL, '05:10:00', NULL, '05:25:00', '05:50:00', NULL),
(2, NULL, NULL, '05:00:00', NULL, NULL, '05:10:00', '05:15:00', '05:25:00', NULL, NULL, NULL, '05:35:00', NULL, '05:45:00', NULL, '05:55:00', NULL, '06:10:00', '06:35:00', NULL),
(3, NULL, NULL, '06:10:00', NULL, '06:20:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06:30:00', NULL, '06:50:00', '07:20:00', NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06:00:00', NULL, '06:10:00', '06:20:00', '06:40:00', '07:10:00', 'Por Pastal'),
(5, '05:50:00', '05:55:00', '06:00:00', NULL, NULL, '06:10:00', '06:15:00', '06:25:00', NULL, NULL, NULL, '06:35:00', NULL, '06:45:00', NULL, '07:03:00', NULL, '07:20:00', '07:50:00', NULL),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07:10:00', NULL, NULL, '07:20:00', NULL, '07:30:00', NULL, '07:43:00', NULL, '08:00:00', '08:30:00', NULL),
(7, NULL, NULL, '07:20:00', NULL, '07:30:00', NULL, NULL, '07:40:00', NULL, NULL, NULL, '07:50:00', NULL, '08:00:00', NULL, '08:13:00', NULL, '08:30:00', '09:00:00', NULL),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08:30:00', NULL, '08:40:00', '08:50:00', '09:10:00', '09:40:00', 'Por Pastal'),
(9, NULL, NULL, '08:15:00', NULL, NULL, '08:25:00', '08:30:00', '08:40:00', NULL, NULL, NULL, '08:50:00', NULL, '09:00:00', NULL, '09:13:00', NULL, '09:30:00', '10:00:00', NULL),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '09:10:00', NULL, NULL, NULL, '09:20:00', NULL, '09:30:00', NULL, '09:43:00', NULL, '10:00:00', '10:30:00', NULL),
(11, '09:10:00', '09:15:00', '09:20:00', NULL, '09:30:00', NULL, NULL, '09:40:00', NULL, NULL, NULL, '09:50:00', NULL, '10:00:00', NULL, '10:13:00', NULL, '10:30:00', '11:00:00', NULL),
(12, NULL, NULL, '10:20:00', NULL, NULL, '10:30:00', '10:35:00', '10:45:00', NULL, NULL, NULL, '10:55:00', NULL, '11:05:00', NULL, '11:18:00', NULL, '11:35:00', '12:05:00', NULL),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11:20:00', NULL, NULL, '11:30:00', NULL, '11:40:00', NULL, '11:53:00', NULL, '12:10:00', '12:40:00', NULL),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12:10:00', NULL, '12:23:00', NULL, '12:40:00', '13:10:00', NULL),
(15, '11:55:00', '12:00:00', '12:05:00', NULL, NULL, '12:15:00', '12:20:00', '12:30:00', NULL, NULL, NULL, '12:40:00', NULL, '12:50:00', NULL, '13:03:00', NULL, '13:20:00', '13:50:00', NULL),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13:20:00', NULL, '13:30:00', '13:40:00', '14:00:00', '14:30:00', 'Por Pastal'),
(17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14:00:00', NULL, '14:13:00', NULL, '14:30:00', '15:00:00', NULL),
(18, '13:50:00', '13:55:00', '14:00:00', NULL, '14:10:00', NULL, NULL, '14:20:00', NULL, NULL, NULL, '14:30:00', NULL, '14:40:00', NULL, '14:53:00', NULL, '15:10:00', '15:40:00', NULL),
(19, NULL, NULL, '14:25:00', NULL, NULL, '14:35:00', '14:40:00', '14:50:00', NULL, NULL, NULL, '15:00:00', NULL, '15:20:00', NULL, '15:33:00', NULL, '15:50:00', '16:20:00', NULL),
(20, NULL, NULL, NULL, '15:30:00', NULL, NULL, NULL, NULL, '15:10:00', '15:50:00', NULL, '16:00:00', NULL, '16:10:00', NULL, NULL, NULL, NULL, NULL, NULL),
(21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '16:40:00', '17:00:00', NULL, '17:33:00', NULL, '17:50:00', '18:20:00', NULL),
(22, '15:05:00', '15:10:00', '15:15:00', NULL, NULL, '15:25:00', '15:30:00', '15:40:00', NULL, NULL, NULL, '15:50:00', NULL, '16:00:00', NULL, '16:13:00', NULL, '16:30:00', '17:00:00', NULL),
(23, NULL, NULL, '16:00:00', NULL, '16:10:00', NULL, NULL, '16:20:00', NULL, NULL, NULL, '16:30:00', NULL, '16:40:00', NULL, '16:53:00', NULL, '17:10:00', '17:40:00', NULL),
(24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17:30:00', NULL, NULL, NULL, '17:40:00', NULL, '17:50:00', NULL, '18:00:00', '18:10:00', '18:30:00', '19:00:00', 'Por Pastal'),
(25, NULL, NULL, '17:45:00', NULL, NULL, '17:55:00', '18:00:00', '18:10:00', NULL, NULL, NULL, '18:20:00', NULL, '18:30:00', NULL, '18:43:00', NULL, '19:00:00', '19:30:00', NULL),
(26, NULL, NULL, '18:20:00', NULL, '18:30:00', NULL, NULL, '18:40:00', NULL, NULL, NULL, '18:50:00', NULL, '19:00:00', NULL, '19:10:00', '19:20:00', '19:40:00', '20:10:00', 'Por Pastal'),
(27, NULL, NULL, '18:45:00', NULL, NULL, '18:55:00', '19:00:00', '19:10:00', NULL, NULL, NULL, '19:20:00', NULL, '19:30:00', NULL, '19:43:00', NULL, '20:00:00', '20:30:00', NULL),
(28, NULL, NULL, '19:15:00', NULL, NULL, '19:25:00', '19:30:00', '19:40:00', NULL, NULL, NULL, '19:50:00', NULL, '20:00:00', NULL, '20:13:00', NULL, '20:30:00', '21:00:00', NULL),
(29, NULL, NULL, '19:50:00', NULL, '20:00:00', NULL, NULL, '20:10:00', NULL, NULL, NULL, '20:20:00', NULL, '20:30:00', NULL, '20:43:00', NULL, '21:00:00', '21:30:00', NULL),
(30, NULL, NULL, '20:35:00', NULL, NULL, '20:45:00', '20:50:00', '21:00:00', NULL, NULL, NULL, '21:10:00', NULL, '21:20:00', NULL, '21:33:00', NULL, '21:50:00', '22:20:00', NULL),
(31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21:10:00', NULL, NULL, '21:20:00', NULL, '21:30:00', NULL, '22:30:00', '22:40:00', '23:00:00', '23:30:00', 'Por Pastal'),
(32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21:50:00', '22:10:00', NULL, NULL, NULL, NULL, NULL, NULL),
(33, '21:55:00', '22:00:00', '22:05:00', NULL, NULL, '22:15:00', '22:20:00', '22:30:00', NULL, NULL, NULL, '22:40:00', NULL, '22:50:00', NULL, NULL, NULL, NULL, NULL, NULL),
(34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '23:00:00', NULL, '23:13:00', NULL, '23:30:00', '00:00:00', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ruta40idasunday`
--

INSERT INTO `ruta40idasunday` (`idruta40idasunday`, `km56`, `km47Esc`, `jocoli`, `oscarMendoza`, `andacollo`, `croco`, `sguazini`, `3DeMayo`, `sanFrancisco`, `calleItalia`, `barrioLaColmena`, `salvatierra`, `paramillo`, `lavalle`, `verjel`, `cruce`, `pastal`, `borbollon`, `mendoza`, `additional`) VALUES
(1, NULL, NULL, '05:00:00', NULL, NULL, '05:10:00', '05:15:00', '05:25:00', NULL, NULL, NULL, '05:35:00', NULL, '05:45:00', NULL, '05:58:00', NULL, '06:15:00', '06:45:00', NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06:50:00', NULL, '07:00:00', '07:10:00', '07:20:00', '08:00:00', 'Por Pastal'),
(3, '06:55:00', '07:00:00', '07:05:00', NULL, NULL, '07:15:00', '07:20:00', '07:30:00', NULL, NULL, NULL, '07:40:00', NULL, '07:50:00', NULL, '08:03:00', NULL, '08:20:00', '08:50:00', NULL),
(4, NULL, NULL, '08:05:00', NULL, NULL, '08:15:00', '08:20:00', '08:30:00', NULL, NULL, NULL, '08:40:00', NULL, '08:50:00', NULL, '09:03:00', NULL, '09:20:00', '09:50:00', NULL),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08:30:00', NULL, NULL, '08:40:00', NULL, '09:20:00', NULL, '09:30:00', '09:40:00', '10:00:00', '10:30:00', 'Por Pastal'),
(6, '09:40:00', '09:45:00', '09:50:00', NULL, '10:10:00', NULL, NULL, '10:10:00', NULL, NULL, NULL, '10:20:00', NULL, '10:30:00', NULL, '10:43:00', NULL, '11:00:00', '11:30:00', NULL),
(7, NULL, NULL, NULL, NULL, NULL, NULL, '10:30:00', '10:40:00', NULL, NULL, NULL, '10:50:00', NULL, '11:00:00', NULL, '11:13:00', NULL, '11:30:00', '12:00:00', NULL),
(8, NULL, NULL, '11:20:00', NULL, NULL, '11:30:00', '11:35:00', '11:45:00', NULL, NULL, NULL, '11:55:00', NULL, '12:05:00', NULL, '12:18:00', NULL, '12:35:00', '13:05:00', NULL),
(9, NULL, NULL, NULL, NULL, NULL, NULL, '12:30:00', '12:40:00', NULL, NULL, NULL, '12:50:00', NULL, '13:00:00', NULL, '13:10:00', '13:20:00', '13:40:00', '14:10:00', 'Por Pastal'),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13:30:00', NULL, NULL, '13:40:00', NULL, '13:50:00', NULL, '14:03:00', NULL, '14:20:00', '14:50:00', NULL),
(11, NULL, NULL, '14:05:00', NULL, NULL, '14:15:00', '14:20:00', '14:30:00', NULL, NULL, NULL, '14:40:00', NULL, '14:50:00', NULL, '15:03:00', NULL, '15:20:00', '15:50:00', NULL),
(12, NULL, NULL, '15:00:00', NULL, '15:10:00', NULL, NULL, '15:20:00', NULL, NULL, NULL, '15:30:00', NULL, '15:40:00', NULL, '15:53:00', NULL, '16:10:00', '16:40:00', NULL),
(13, NULL, NULL, NULL, NULL, NULL, NULL, '16:00:00', '16:10:00', NULL, NULL, NULL, '16:20:00', NULL, '16:30:00', NULL, '16:43:00', NULL, '17:00:00', '17:30:00', NULL),
(14, NULL, NULL, '17:00:00', NULL, NULL, '17:10:00', '17:15:00', '17:25:00', NULL, NULL, NULL, '17:35:00', NULL, '17:45:00', NULL, '17:55:00', '18:05:00', '18:25:00', '18:55:00', 'Por Pastal'),
(15, '18:05:00', '18:10:00', '18:15:00', NULL, NULL, '18:25:00', '18:30:00', '18:40:00', NULL, NULL, NULL, '18:50:00', NULL, '19:00:00', NULL, '19:13:00', NULL, '19:30:00', '20:00:00', NULL),
(16, NULL, NULL, NULL, NULL, NULL, NULL, '19:00:00', '19:10:00', NULL, NULL, NULL, '19:20:00', NULL, '19:30:00', NULL, '19:43:00', NULL, '20:00:00', '20:30:00', NULL),
(17, NULL, NULL, '19:30:00', NULL, '19:40:00', NULL, NULL, '19:50:00', NULL, NULL, NULL, '20:00:00', NULL, '20:10:00', NULL, '20:23:00', NULL, '20:40:00', '21:10:00', NULL),
(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20:20:00', NULL, NULL, '20:30:00', NULL, '20:40:00', NULL, '20:50:00', '21:00:00', '21:20:00', '21:50:00', 'Por Pastal'),
(19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21:40:00', NULL, '21:53:00', NULL, '22:10:00', '22:40:00', NULL),
(20, '21:40:00', '21:45:00', '21:50:00', NULL, NULL, '22:00:00', '22:05:00', '22:15:00', NULL, NULL, NULL, '22:25:00', NULL, '22:40:00', NULL, '22:53:00', NULL, '23:10:00', '23:40:00', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ruta40idaweek`
--

INSERT INTO `ruta40idaweek` (`idruta40idaweek`, `km56`, `km47Esc`, `jocoli`, `oscarMendoza`, `andacollo`, `croco`, `sguazini`, `3DeMayo`, `sanFrancisco`, `calleItalia`, `barrioLaColmena`, `salvatierra`, `paramillo`, `lavalle`, `verjel`, `cruce`, `pastal`, `borbollon`, `mendoza`, `additional`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05:00:00', NULL, '05:13:00', NULL, '05:20:00', '05:50:00', 'H. Notti y Carrillo'),
(2, NULL, NULL, '04:50:00', NULL, NULL, '05:00:00', '05:05:00', '05:15:00', NULL, NULL, NULL, '05:25:00', NULL, '05:35:00', NULL, '00:24:00', NULL, '00:25:00', '00:27:00', NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06:00:00', NULL, '06:10:00', '06:20:00', '06:40:00', '07:10:00', 'B Solares/ Pastal'),
(4, NULL, NULL, '05:45:00', '05:55:00', NULL, NULL, NULL, NULL, '06:05:00', '06:30:00', NULL, '06:40:00', NULL, '06:50:00', NULL, '07:03:00', NULL, '07:20:00', '07:50:00', NULL),
(5, NULL, NULL, '06:10:00', NULL, NULL, '06:20:00', '06:25:00', '06:35:00', NULL, NULL, NULL, '06:45:00', NULL, '07:00:00', NULL, '07:13:00', NULL, '07:30:00', '08:00:00', NULL),
(6, '05:50:00', '05:55:00', '06:00:00', NULL, '06:10:00', NULL, NULL, NULL, NULL, NULL, '06:15:00', NULL, NULL, NULL, NULL, '06:23:00', NULL, '06:40:00', '07:10:00', NULL),
(7, NULL, '06:30:00', '06:35:00', NULL, '06:50:00', NULL, NULL, '07:00:00', NULL, NULL, NULL, '07:10:00', NULL, '07:20:00', NULL, '07:33:00', NULL, '07:50:00', '08:20:00', NULL),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07:00:00', '07:20:00', NULL, '07:30:00', NULL, '07:40:00', NULL, '07:53:00', NULL, '08:10:00', '08:40:00', 'Por Moyano'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07:50:00', NULL, NULL, NULL, '08:00:00', NULL, '08:10:00', NULL, '08:20:00', '08:30:00', '08:50:00', '09:20:00', 'Por Pastal'),
(10, NULL, NULL, '07:55:00', NULL, NULL, '08:05:00', '08:10:00', '08:20:00', NULL, NULL, NULL, '08:30:00', NULL, '08:40:00', NULL, '08:53:00', NULL, '09:10:00', '09:40:00', NULL),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '09:00:00', NULL, '09:13:00', NULL, '14:00:00', '10:00:00', NULL),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '09:30:00', NULL, '09:43:00', NULL, '10:00:00', '10:30:00', NULL),
(13, '09:05:00', '09:10:00', '09:15:00', NULL, '09:30:00', NULL, NULL, '09:40:00', NULL, NULL, NULL, '09:50:00', NULL, '10:00:00', NULL, '10:13:00', NULL, '10:30:00', '11:00:00', NULL),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '09:45:00', NULL, NULL, '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, NULL, NULL, NULL, '10:30:00', '10:40:00', NULL, NULL, NULL, '10:50:00', NULL, '11:00:00', NULL, '11:13:00', NULL, '11:30:00', '12:00:00', NULL),
(16, NULL, NULL, '10:55:00', NULL, '11:10:00', NULL, NULL, '11:20:00', NULL, NULL, NULL, '11:30:00', NULL, '11:40:00', NULL, '11:53:00', NULL, '12:10:00', '12:40:00', NULL),
(17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12:30:00', NULL, '12:40:00', '12:50:00', '13:10:00', '13:40:00', 'Por Pastal'),
(18, NULL, NULL, '12:25:00', NULL, NULL, '12:35:00', '12:40:00', '12:50:00', NULL, NULL, NULL, '13:00:00', NULL, '13:10:00', NULL, '13:23:00', NULL, '13:40:00', '14:10:00', NULL),
(19, NULL, NULL, NULL, '12:20:00', NULL, NULL, NULL, NULL, '12:10:00', NULL, NULL, '12:30:00', NULL, '12:40:00', NULL, '12:53:00', NULL, '13:10:00', '13:40:00', NULL),
(20, NULL, NULL, '12:55:00', NULL, '13:10:00', NULL, NULL, '13:20:00', NULL, NULL, NULL, '13:30:00', NULL, '13:40:00', NULL, '13:53:00', NULL, '14:10:00', '14:40:00', NULL),
(21, '13:45:00', '13:50:00', '13:55:00', NULL, NULL, '14:05:00', '14:10:00', '14:20:00', NULL, NULL, NULL, '14:30:00', NULL, '14:40:00', NULL, '14:53:00', NULL, '15:10:00', '15:40:00', NULL),
(22, NULL, NULL, '14:25:00', NULL, '14:40:00', NULL, NULL, '14:50:00', NULL, NULL, NULL, '15:00:00', NULL, '15:10:00', NULL, '15:23:00', NULL, '15:40:00', '16:10:00', NULL),
(23, NULL, NULL, '14:55:00', NULL, NULL, '15:05:00', '15:10:00', '15:20:00', NULL, NULL, NULL, '15:30:00', NULL, '15:40:00', NULL, '15:50:00', '16:00:00', '16:20:00', '16:50:00', 'Por Pastal'),
(24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15:40:00', NULL, NULL, '15:50:00', NULL, '16:00:00', NULL, '16:13:00', NULL, '16:30:00', '17:00:00', NULL),
(25, '15:35:00', '15:40:00', '15:45:00', NULL, NULL, '15:55:00', '16:00:00', '16:10:00', NULL, NULL, NULL, '16:20:00', NULL, '16:30:00', NULL, '16:43:00', NULL, '17:00:00', '17:30:00', NULL),
(26, NULL, NULL, '16:20:00', NULL, '16:30:00', NULL, NULL, '16:40:00', NULL, NULL, NULL, '16:50:00', NULL, '17:00:00', NULL, '17:10:00', '17:20:00', '17:40:00', '18:10:00', 'Por Pastal'),
(27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17:20:00', NULL, '17:33:00', NULL, '17:50:00', '18:20:00', NULL),
(28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17:20:00', NULL, '17:30:00', NULL, '17:40:00', NULL, '17:53:00', NULL, '18:10:00', '18:40:00', NULL),
(29, NULL, NULL, '17:15:00', NULL, NULL, '17:25:00', '17:30:00', '17:40:00', NULL, NULL, NULL, '17:50:00', NULL, '18:00:00', NULL, '18:13:00', NULL, '18:30:00', '19:00:00', NULL),
(30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '18:30:00', NULL, '18:40:00', '18:50:00', '19:10:00', '19:40:00', 'Por Pastal'),
(31, NULL, NULL, '18:15:00', NULL, NULL, '18:25:00', '18:30:00', '18:40:00', NULL, NULL, NULL, '18:50:00', NULL, '19:00:00', NULL, '19:13:00', NULL, '19:30:00', '20:00:00', NULL),
(32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '19:30:00', NULL, '19:43:00', NULL, '20:00:00', '20:30:00', NULL),
(33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '19:55:00', NULL, '20:05:00', '20:15:00', '20:35:00', '21:05:00', 'Por Pastal'),
(34, NULL, '19:15:00', '19:20:00', NULL, '19:30:00', NULL, NULL, '19:40:00', NULL, NULL, NULL, '19:50:00', NULL, '20:10:00', NULL, '20:23:00', NULL, '20:40:00', '21:10:00', NULL),
(35, NULL, NULL, NULL, NULL, NULL, NULL, '20:10:00', '20:20:00', NULL, NULL, NULL, '20:30:00', NULL, '20:40:00', NULL, '20:53:00', NULL, '21:10:00', '21:40:00', NULL),
(36, NULL, NULL, NULL, '21:10:00', NULL, NULL, NULL, NULL, '21:00:00', NULL, NULL, '21:20:00', NULL, '21:30:00', NULL, NULL, NULL, NULL, NULL, NULL),
(37, NULL, NULL, '21:05:00', NULL, '21:15:00', NULL, NULL, '21:25:00', NULL, NULL, NULL, '21:35:00', NULL, '21:45:00', NULL, '21:58:00', NULL, '22:15:00', '22:50:00', NULL),
(38, NULL, NULL, '21:55:00', NULL, NULL, '22:05:00', '22:10:00', '22:20:00', NULL, NULL, NULL, '22:30:00', NULL, '22:40:00', NULL, '22:50:00', '23:00:00', '23:20:00', '23:50:00', 'Por Pastal'),
(39, '21:35:00', '21:40:00', '21:45:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ruta40vueltasaturday`
--

INSERT INTO `ruta40vueltasaturday` (`idruta40vueltasaturday`, `mendoza`, `borbollon`, `pastal`, `cruce`, `lavalle`, `paramillo`, `verjel`, `salvatierra`, `barrioLaColmena`, `calleItalia`, `sanFrancisco`, `3DeMayo`, `sguazini`, `croco`, `andacollo`, `oscarMendoza`, `jocoli`, `km47Esc`, `km56`, `additional`) VALUES
(1, '05:35:00', '06:00:00', '06:20:00', '06:30:00', '06:40:00', NULL, NULL, '06:50:00', NULL, NULL, '07:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Por Pastal'),
(2, '06:05:00', '06:35:00', NULL, '06:52:00', '07:05:00', NULL, NULL, '07:15:00', NULL, NULL, NULL, '07:25:00', '07:35:00', '07:40:00', NULL, NULL, '07:50:00', NULL, NULL, NULL),
(3, '06:45:00', '07:15:00', NULL, '07:32:00', '07:45:00', NULL, NULL, '07:55:00', NULL, NULL, NULL, '08:05:00', NULL, NULL, '08:15:00', NULL, '08:25:00', '08:27:00', '08:30:00', NULL),
(4, '07:25:00', '07:55:00', '08:15:00', '08:25:00', '08:35:00', NULL, NULL, '08:45:00', NULL, NULL, NULL, '08:55:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Por Pastal'),
(5, '08:00:00', '08:30:00', NULL, '08:47:00', '09:00:00', NULL, NULL, '09:10:00', NULL, NULL, NULL, '09:20:00', '09:30:00', '09:35:00', NULL, NULL, '09:45:00', NULL, NULL, NULL),
(6, '08:50:00', '09:20:00', NULL, '09:37:00', '09:50:00', NULL, NULL, '10:00:00', NULL, NULL, NULL, '11:10:00', NULL, NULL, '11:20:00', NULL, '11:30:00', '11:35:00', '11:40:00', NULL),
(7, '09:40:00', '10:10:00', '10:30:00', '10:40:00', '10:50:00', NULL, NULL, '11:00:00', NULL, NULL, '11:10:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Por Pastal'),
(8, '10:30:00', '11:00:00', NULL, '11:17:00', '11:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '11:00:00', '11:30:00', NULL, '11:47:00', '12:00:00', NULL, NULL, '12:10:00', NULL, NULL, NULL, '12:20:00', '12:30:00', '12:35:00', NULL, NULL, '12:45:00', '12:50:00', '12:55:00', NULL),
(10, '11:20:00', '11:50:00', NULL, '12:07:00', '12:20:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '12:00:00', '12:30:00', '12:50:00', '13:00:00', '13:10:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Por Pastal'),
(12, '12:30:00', '13:00:00', NULL, '13:17:00', '13:30:00', NULL, NULL, '13:40:00', NULL, NULL, NULL, '13:50:00', NULL, NULL, '14:00:00', NULL, '14:10:00', NULL, NULL, NULL),
(13, '13:00:00', '13:30:00', NULL, '13:47:00', '14:00:00', NULL, NULL, '14:10:00', NULL, NULL, NULL, '14:20:00', '14:30:00', '14:35:00', NULL, NULL, '14:45:00', '14:50:00', '14:55:00', NULL),
(14, '13:30:00', '14:00:00', '14:20:00', '14:30:00', '14:40:00', NULL, NULL, '14:50:00', NULL, NULL, '15:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Por Pastal'),
(15, '14:00:00', '14:30:00', NULL, '14:47:00', '15:00:00', NULL, NULL, '15:10:00', NULL, NULL, NULL, '15:20:00', '15:30:00', '15:35:00', NULL, NULL, '15:45:00', NULL, NULL, NULL),
(16, '15:00:00', '15:30:00', NULL, '15:47:00', '16:00:00', NULL, NULL, '16:10:00', NULL, NULL, NULL, '16:20:00', '16:30:00', '16:35:00', NULL, NULL, '16:45:00', NULL, NULL, NULL),
(17, '15:30:00', '16:00:00', NULL, '16:17:00', '16:30:00', NULL, NULL, '16:40:00', NULL, NULL, NULL, '16:50:00', NULL, NULL, '17:00:00', NULL, '17:15:00', NULL, NULL, NULL),
(18, '16:00:00', '16:30:00', '16:50:00', '17:00:00', '17:10:00', NULL, NULL, '17:20:00', NULL, NULL, NULL, '17:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Por Pastal'),
(19, '16:40:00', '17:10:00', NULL, '17:27:00', '17:40:00', NULL, NULL, '17:50:00', NULL, NULL, NULL, '18:00:00', '18:10:00', '18:15:00', NULL, NULL, '18:25:00', NULL, NULL, NULL),
(20, NULL, NULL, NULL, NULL, '16:20:00', '16:40:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '17:20:00', '17:50:00', NULL, '18:07:00', '18:20:00', NULL, NULL, '18:30:00', NULL, NULL, NULL, '18:40:00', NULL, NULL, '18:50:00', NULL, '19:00:00', NULL, NULL, NULL),
(22, '18:00:00', '18:30:00', NULL, '18:47:00', '19:00:00', NULL, NULL, '19:10:00', NULL, NULL, NULL, '19:20:00', '19:30:00', '19:35:00', NULL, NULL, '19:45:00', NULL, NULL, NULL),
(23, '18:40:00', '19:10:00', NULL, '19:27:00', '19:40:00', NULL, NULL, '19:50:00', NULL, NULL, NULL, '20:00:00', NULL, NULL, '20:10:00', NULL, '20:20:00', NULL, NULL, NULL),
(24, '19:10:00', '19:40:00', NULL, '19:57:00', '20:10:00', NULL, NULL, '20:20:00', NULL, '20:40:00', '21:10:00', NULL, NULL, NULL, NULL, '21:00:00', NULL, NULL, NULL, NULL),
(25, '19:40:00', '20:10:00', '20:30:00', '20:40:00', '20:50:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Por Pastal'),
(26, NULL, NULL, NULL, NULL, '21:30:00', '21:50:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '20:00:00', '20:30:00', NULL, '20:47:00', '21:00:00', NULL, NULL, '21:10:00', NULL, NULL, NULL, '21:20:00', '21:30:00', '21:35:00', NULL, NULL, '21:45:00', '21:50:00', '21:55:00', NULL),
(28, '20:30:00', '21:00:00', '21:20:00', '21:30:00', '21:40:00', NULL, NULL, '21:50:00', NULL, NULL, NULL, '22:00:00', '22:10:00', '22:15:00', NULL, NULL, '22:25:00', NULL, NULL, 'Por Pastal'),
(29, '21:00:00', '21:30:00', NULL, '21:47:00', '22:00:00', NULL, NULL, '22:10:00', NULL, NULL, NULL, '22:20:00', NULL, NULL, '22:30:00', NULL, '22:40:00', NULL, NULL, NULL),
(30, '21:40:00', '22:10:00', NULL, '22:27:00', '22:40:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, '22:30:00', '23:00:00', NULL, '23:17:00', '23:30:00', NULL, NULL, '23:40:00', NULL, NULL, NULL, '23:50:00', '00:00:00', '00:05:00', NULL, NULL, '00:15:00', NULL, NULL, NULL),
(32, '23:20:00', '23:50:00', NULL, '00:07:00', '00:20:00', NULL, NULL, '00:25:00', NULL, NULL, NULL, '00:35:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '00:20:00', '00:50:00', NULL, '01:05:00', '01:15:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ruta40vueltasunday`
--

INSERT INTO `ruta40vueltasunday` (`idruta40vueltasunday`, `mendoza`, `borbollon`, `pastal`, `cruce`, `lavalle`, `paramillo`, `verjel`, `salvatierra`, `barrioLaColmena`, `calleItalia`, `sanFrancisco`, `3DeMayo`, `sguazini`, `croco`, `andacollo`, `oscarMendoza`, `jocoli`, `km47Esc`, `km56`, `additional`) VALUES
(1, '06:30:00', '07:00:00', NULL, '07:17:00', '07:30:00', NULL, NULL, '07:40:00', NULL, NULL, '07:50:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '07:30:00', '08:00:00', '08:20:00', '08:30:00', '08:40:00', NULL, NULL, '08:50:00', NULL, NULL, NULL, '09:00:00', '09:10:00', '09:15:00', NULL, NULL, '09:25:00', '09:30:00', '09:35:00', 'Por Pastal'),
(3, '08:30:00', '09:00:00', NULL, '09:17:00', '09:30:00', NULL, NULL, '09:40:00', NULL, NULL, NULL, '09:50:00', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '09:30:00', '10:00:00', '10:20:00', '10:30:00', '10:40:00', NULL, NULL, '10:50:00', NULL, NULL, NULL, '11:00:00', NULL, NULL, '11:10:00', NULL, '11:20:00', NULL, NULL, 'Por Pastal'),
(5, '10:30:00', '11:00:00', NULL, '11:17:00', '11:30:00', NULL, NULL, '11:40:00', NULL, NULL, NULL, '11:50:00', '12:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '11:20:00', '11:50:00', '12:10:00', '12:20:00', '12:30:00', NULL, NULL, '12:40:00', NULL, NULL, '12:50:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Por Pastal'),
(7, '12:10:00', '12:40:00', NULL, '12:57:00', '13:10:00', NULL, NULL, '13:20:00', NULL, NULL, NULL, '13:30:00', '13:40:00', '13:45:00', NULL, NULL, '13:55:00', NULL, NULL, NULL),
(8, '13:00:00', '13:30:00', NULL, '13:47:00', '14:00:00', NULL, NULL, '14:10:00', NULL, NULL, NULL, '14:20:00', NULL, NULL, '14:30:00', NULL, '14:40:00', NULL, NULL, NULL),
(9, '14:00:00', '14:30:00', NULL, '14:47:00', '15:00:00', NULL, NULL, '15:10:00', NULL, NULL, NULL, '15:20:00', '15:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '15:00:00', '15:30:00', NULL, '15:47:00', '16:00:00', NULL, NULL, '16:10:00', NULL, NULL, NULL, '16:20:00', '16:30:00', '16:35:00', NULL, NULL, '16:45:00', NULL, NULL, NULL),
(11, '16:00:00', '16:30:00', '16:50:00', '17:00:00', '17:10:00', NULL, NULL, '17:20:00', NULL, NULL, NULL, '17:30:00', '17:40:00', '17:45:00', NULL, NULL, '17:55:00', '18:00:00', '18:05:00', 'Por Pastal'),
(12, '16:50:00', '17:20:00', NULL, '17:37:00', '17:50:00', NULL, NULL, '18:00:00', NULL, NULL, NULL, '18:10:00', '18:20:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '17:40:00', '18:10:00', NULL, '18:27:00', '18:40:00', NULL, NULL, '18:50:00', NULL, NULL, NULL, '19:00:00', '19:10:00', '19:15:00', NULL, NULL, '19:25:00', NULL, NULL, NULL),
(14, '18:30:00', '19:00:00', NULL, '19:17:00', '19:30:00', NULL, NULL, '19:40:00', NULL, NULL, '19:50:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '19:30:00', '20:00:00', '20:20:00', '20:30:00', '20:40:00', NULL, NULL, '20:50:00', NULL, NULL, NULL, '21:00:00', NULL, NULL, '21:10:00', NULL, '21:20:00', '21:25:00', '21:30:00', 'Por Pastal'),
(16, '20:20:00', '20:50:00', NULL, '21:07:00', '21:20:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '21:10:00', '21:40:00', NULL, '21:57:00', '22:10:00', NULL, NULL, '22:20:00', NULL, NULL, NULL, '22:30:00', '22:40:00', '22:45:00', NULL, NULL, '22:55:00', NULL, NULL, NULL),
(18, '21:50:00', '22:20:00', NULL, '22:37:00', '22:50:00', NULL, NULL, '23:00:00', NULL, NULL, NULL, '23:10:00', '23:20:00', '23:25:00', NULL, NULL, '23:35:00', NULL, NULL, NULL),
(19, '22:30:00', '23:00:00', NULL, '23:17:00', '23:30:00', NULL, NULL, '23:40:00', NULL, NULL, NULL, '23:50:00', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '00:20:00', '00:50:00', NULL, '01:05:00', '01:15:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ruta40vueltaweek`
--

INSERT INTO `ruta40vueltaweek` (`idruta40vueltaweek`, `mendoza`, `borbollon`, `pastal`, `cruce`, `lavalle`, `paramillo`, `verjel`, `salvatierra`, `barrioLaColmena`, `calleItalia`, `sanFrancisco`, `3DeMayo`, `sguazini`, `croco`, `andacollo`, `oscarMendoza`, `jocoli`, `km47Esc`, `km56`, `additional`) VALUES
(1, '05:40:00', '06:10:00', NULL, '06:27:00', '06:40:00', NULL, NULL, NULL, NULL, NULL, '07:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, '06:30:00', '06:50:00', '07:00:00', '07:10:00', NULL, NULL, NULL, NULL, NULL, NULL, '07:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Por Pastal'),
(3, '06:20:00', '06:50:00', NULL, '07:10:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07:20:00', NULL, '07:30:00', NULL, NULL, NULL),
(4, '06:40:00', '07:10:00', NULL, '07:27:00', '07:40:00', NULL, NULL, NULL, NULL, NULL, NULL, '08:00:00', NULL, NULL, '08:10:00', NULL, '08:25:00', '08:30:00', '08:35:00', NULL),
(5, '07:20:00', '07:50:00', '08:10:00', '08:20:00', '08:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Por Pastal'),
(6, '08:00:00', '08:30:00', NULL, '08:47:00', '09:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '08:35:00', '09:05:00', NULL, '09:25:00', '09:35:00', NULL, NULL, NULL, NULL, NULL, NULL, '09:55:00', '10:05:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL, '09:30:00', NULL, NULL, NULL, '09:45:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '09:05:00', '09:35:00', NULL, '09:55:00', NULL, NULL, NULL, NULL, '10:00:00', NULL, NULL, NULL, NULL, NULL, '10:05:00', NULL, '10:20:00', NULL, NULL, NULL),
(10, '09:35:00', '10:05:00', NULL, '10:22:00', '10:35:00', NULL, NULL, NULL, NULL, NULL, NULL, '10:55:00', '11:05:00', '11:10:00', NULL, NULL, '11:20:00', NULL, NULL, NULL),
(11, '10:10:00', '10:40:00', NULL, '10:57:00', '11:10:00', NULL, NULL, NULL, NULL, '11:30:00', '11:50:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '10:30:00', '11:00:00', '11:20:00', '11:30:00', '11:40:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Por Pastal'),
(13, '11:05:00', '11:35:00', NULL, '11:52:00', '12:05:00', NULL, NULL, NULL, NULL, NULL, NULL, '12:25:00', NULL, NULL, '12:35:00', NULL, '12:50:00', NULL, NULL, NULL),
(14, '11:35:00', '12:05:00', NULL, '12:22:00', '12:35:00', NULL, NULL, NULL, NULL, NULL, NULL, '12:55:00', '13:05:00', '13:10:00', NULL, NULL, '13:20:00', '13:25:00', '13:30:00', NULL),
(15, '12:05:00', '12:35:00', '12:55:00', '13:05:00', '13:15:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Por Pastal'),
(16, NULL, NULL, NULL, NULL, '13:40:00', NULL, NULL, NULL, NULL, '14:00:00', '14:20:00', NULL, NULL, NULL, NULL, '14:30:00', '14:40:00', NULL, NULL, NULL),
(17, '12:40:00', '13:10:00', NULL, '13:27:00', '13:40:00', NULL, NULL, NULL, NULL, NULL, NULL, '14:00:00', NULL, NULL, '14:10:00', NULL, '14:25:00', NULL, NULL, NULL),
(18, '13:10:00', '13:40:00', NULL, '13:57:00', '14:10:00', NULL, NULL, NULL, NULL, NULL, NULL, '14:30:00', '14:40:00', '14:45:00', NULL, NULL, '14:55:00', '15:00:00', '15:05:00', NULL),
(19, '13:45:00', '14:15:00', NULL, '14:32:00', '14:45:00', NULL, NULL, NULL, NULL, NULL, '15:05:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '14:15:00', '14:45:00', '15:05:00', '15:15:00', '15:25:00', NULL, NULL, NULL, NULL, NULL, NULL, '15:45:00', NULL, NULL, '15:55:00', NULL, '16:10:00', NULL, NULL, 'Por Pastal'),
(21, '14:30:00', '15:00:00', NULL, '15:17:00', '15:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '15:15:00', '15:45:00', NULL, '16:02:00', '16:15:00', NULL, NULL, NULL, NULL, NULL, NULL, '16:35:00', '16:45:00', '16:50:00', NULL, NULL, '17:00:00', NULL, NULL, NULL),
(23, '15:45:00', '16:15:00', NULL, '16:32:00', '16:45:00', NULL, NULL, NULL, NULL, '17:05:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '16:15:00', '16:45:00', NULL, '17:02:00', '17:15:00', NULL, NULL, NULL, NULL, NULL, NULL, '17:35:00', NULL, NULL, '17:45:00', NULL, '18:00:00', NULL, NULL, NULL),
(25, '16:45:00', '17:15:00', NULL, '17:32:00', '17:45:00', NULL, NULL, NULL, NULL, NULL, NULL, '18:05:00', '18:15:00', '18:20:00', NULL, NULL, '18:30:00', '18:35:00', NULL, NULL),
(26, '17:15:00', '17:45:00', '18:05:00', '18:15:00', '18:25:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Por Pastal'),
(27, '17:45:00', '18:15:00', NULL, '18:32:00', '18:45:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '18:15:00', '18:45:00', NULL, '19:02:00', '19:15:00', NULL, NULL, NULL, NULL, NULL, NULL, '19:35:00', '19:45:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '18:30:00', '19:00:00', '19:20:00', '21:00:00', '19:40:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Por Pastal'),
(30, '18:45:00', '19:15:00', NULL, '19:32:00', '19:45:00', NULL, NULL, NULL, NULL, NULL, NULL, '20:05:00', '20:15:00', '20:20:00', NULL, NULL, '20:30:00', NULL, NULL, NULL),
(31, '19:15:00', '19:45:00', NULL, '20:02:00', '20:15:00', NULL, NULL, NULL, NULL, '20:35:00', '20:55:00', NULL, NULL, NULL, NULL, '21:10:00', NULL, NULL, NULL, NULL),
(32, '19:45:00', '20:05:00', NULL, '20:23:00', '20:40:00', NULL, NULL, NULL, NULL, NULL, NULL, '21:00:00', '21:10:00', '21:15:00', NULL, NULL, '21:25:00', '21:30:00', '21:35:00', 'Expreso'),
(33, '20:15:00', '20:45:00', '21:05:00', '21:15:00', '21:25:00', NULL, NULL, NULL, NULL, NULL, NULL, '21:45:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Por Pastal'),
(34, '20:45:00', '21:15:00', NULL, '21:35:00', NULL, NULL, NULL, NULL, '21:40:00', NULL, NULL, NULL, NULL, NULL, '21:45:00', NULL, '21:55:00', NULL, NULL, NULL),
(35, '21:00:00', '21:30:00', NULL, '21:47:00', '22:00:00', NULL, NULL, NULL, NULL, NULL, NULL, '22:20:00', '22:30:00', '22:35:00', NULL, NULL, '22:45:00', NULL, NULL, NULL),
(36, '21:30:00', '22:00:00', '22:20:00', '22:30:00', '22:40:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Por Pastal'),
(37, '21:55:00', '22:25:00', NULL, '22:42:00', '22:55:00', NULL, NULL, NULL, NULL, NULL, NULL, '23:15:00', NULL, NULL, '23:25:00', NULL, '23:35:00', NULL, NULL, NULL),
(38, '22:30:00', '23:00:00', NULL, '23:17:00', '23:30:00', NULL, NULL, NULL, NULL, NULL, NULL, '23:50:00', '00:00:00', '00:05:00', NULL, NULL, '00:15:00', NULL, NULL, NULL),
(39, '00:15:00', '00:45:00', NULL, '00:52:00', '01:05:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taxi`
--

CREATE TABLE `taxi` (
  `idTaxi` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `taxi`
--

INSERT INTO `taxi` (`idTaxi`, `name`, `phone`) VALUES
(3, 'Luis Gonzales', 2147483647),
(4, 'Axel', 226165462),
(5, 'Gustavo', 123456),
(8, 'David', 26145678);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `user` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  MODIFY `idcaliforniaidaweek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `californiaidasunday`
--
ALTER TABLE `californiaidasunday`
  MODIFY `idcaliforniaidaweek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `californiaidaweek`
--
ALTER TABLE `californiaidaweek`
  MODIFY `idcaliforniaidaweek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `californiavueltasaturday`
--
ALTER TABLE `californiavueltasaturday`
  MODIFY `idcaliforniavueltasaturday` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `californiavueltasunday`
--
ALTER TABLE `californiavueltasunday`
  MODIFY `idcaliforniavueltasaturday` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `californiavueltaweek`
--
ALTER TABLE `californiavueltaweek`
  MODIFY `idcaliforniavueltaweek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `internocostaidasaturday`
--
ALTER TABLE `internocostaidasaturday`
  MODIFY `idinternocostaidasaturday` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `internocostaidasunday`
--
ALTER TABLE `internocostaidasunday`
  MODIFY `idinternocostaidasunday` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `internocostaidaweek`
--
ALTER TABLE `internocostaidaweek`
  MODIFY `idinternocostaidaweek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `internocostavueltasaturday`
--
ALTER TABLE `internocostavueltasaturday`
  MODIFY `idinternocostavueltasaturday` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `internocostavueltasunday`
--
ALTER TABLE `internocostavueltasunday`
  MODIFY `idinternocostavueltasunday` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `internocostavueltaweek`
--
ALTER TABLE `internocostavueltaweek`
  MODIFY `idinternocostavueltaweek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `internolavalleidasaturday`
--
ALTER TABLE `internolavalleidasaturday`
  MODIFY `idinternolavalleidasaturday` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `internolavalleidasunday`
--
ALTER TABLE `internolavalleidasunday`
  MODIFY `idinternolavalleidasunday` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `internolavalleidaweek`
--
ALTER TABLE `internolavalleidaweek`
  MODIFY `idinternolavalleidaweek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `internolavallevueltasaturday`
--
ALTER TABLE `internolavallevueltasaturday`
  MODIFY `idinternolavallevueltasaturday` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `internolavallevueltasunday`
--
ALTER TABLE `internolavallevueltasunday`
  MODIFY `idinternolavallevueltasunday` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `internolavallevueltaweek`
--
ALTER TABLE `internolavallevueltaweek`
  MODIFY `idinternolavallevueltaweek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
