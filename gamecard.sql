-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-05-2022 a las 05:04:58
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gamecard`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `card`
--

CREATE TABLE `card` (
  `id_card` int(3) NOT NULL,
  `NAME` varchar(37) DEFAULT NULL,
  `TEAM` varchar(18) DEFAULT NULL,
  `TEAM_ABBR` varchar(10) DEFAULT NULL,
  `SECTION` varchar(24) DEFAULT NULL,
  `POSITION` varchar(29) DEFAULT NULL,
  `DEFENSE` varchar(3) DEFAULT NULL,
  `CONTROL` varchar(3) DEFAULT NULL,
  `ATTACK` varchar(3) DEFAULT NULL,
  `SUM` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `card`
--

INSERT INTO `card` (`id_card`, `NAME`, `TEAM`, `TEAM_ABBR`, `SECTION`, `POSITION`, `DEFENSE`, `CONTROL`, `ATTACK`, `SUM`) VALUES
(2, 'Pacheco', 'Alavés', 'ALA', 'Base card', 'Goalkeeper', '82', '81', '49', 212),
(3, 'Sivera', 'Alavés', 'ALA', 'Base card', 'Goalkeeper', '78', '75', '49', 202),
(5, 'Laguardia', 'Alavés', 'ALA', 'Base card', 'Defender', '80', '80', '56', 216),
(6, 'Rodrigo Ely', 'Alavés', 'ALA', 'Base card', 'Defender', '77', '77', '59', 213),
(7, 'Lejeune', 'Alavés', 'ALA', 'Base card', 'Defender', '78', '78', '58', 214),
(8, 'Rubén Duarte', 'Alavés', 'ALA', 'Base card', 'Defender', '75', '77', '62', 214),
(9, 'Battaglia', 'Alavés', 'ALA', 'Base card', 'Midfielder', '78', '78', '60', 216),
(10, 'Pina', 'Alavés', 'ALA', 'Base card', 'Midfielder', '77', '77', '57', 211),
(11, 'Pere Pons', 'Alavés', 'ALA', 'Base card', 'Midfielder', '74', '76', '68', 218),
(12, 'Manu García', 'Alavés', 'ALA', 'Base card', 'Midfielder', '75', '76', '58', 209),
(13, 'Edgar', 'Alavés', 'ALA', 'Base card', 'Midfielder', '59', '76', '75', 210),
(14, 'Luis Rioja', 'Alavés', 'ALA', 'Base card', 'Midfielder', '61', '76', '74', 211),
(15, 'Jota Peleteiro', 'Alavés', 'ALA', 'Base card', 'Midfielder', '59', '77', '77', 213),
(16, 'Lucas Pérez', 'Alavés', 'ALA', 'Base card', 'Forward', '62', '82', '81', 225),
(17, 'Joselu', 'Alavés', 'ALA', 'Base card', 'Forward', '60', '79', '80', 219),
(18, 'Deyverson', 'Alavés', 'ALA', 'Base card', 'Forward', '61', '76', '77', 214),
(20, 'Unai Simón', 'Athletic Club', 'ATH', 'Base card', 'Goalkeeper', '83', '81', '49', 213),
(21, 'Ezkieta', 'Athletic Club', 'ATH', 'Base card', 'Goalkeeper', '76', '74', '51', 201),
(22, 'Capa', 'Athletic Club', 'ATH', 'Base card', 'Defender', '77', '78', '67', 222),
(23, 'De Marcos', 'Athletic Club', 'ATH', 'Base card', 'Defender', '76', '76', '67', 219),
(24, 'Yeray', 'Athletic Club', 'ATH', 'Base card', 'Defender', '80', '78', '59', 217),
(25, 'Íñigo Martínez', 'Athletic Club', 'ATH', 'Base card', 'Defender', '83', '82', '63', 228),
(26, 'Núñez', 'Athletic Club', 'ATH', 'Base card', 'Defender', '79', '77', '57', 213),
(27, 'Yuri', 'Athletic Club', 'ATH', 'Base card', 'Defender', '77', '78', '67', 222),
(28, 'Dani García', 'Athletic Club', 'ATH', 'Base card', 'Midfielder', '78', '79', '58', 215),
(29, 'Vesga', 'Athletic Club', 'ATH', 'Base card', 'Midfielder', '76', '76', '59', 211),
(30, 'Unai López', 'Athletic Club', 'ATH', 'Base card', 'Midfielder', '61', '79', '77', 217),
(31, 'Sancet', 'Athletic Club', 'ATH', 'Base card', 'Midfielder', '60', '77', '76', 213),
(32, 'Muniain', 'Athletic Club', 'ATH', 'Base card', 'Midfielder', '63', '81', '81', 225),
(33, 'Raúl García', 'Athletic Club', 'ATH', 'Base card', 'Midfielder', '67', '81', '81', 229),
(34, 'Williams', 'Athletic Club', 'ATH', 'Base card', 'Forward', '59', '82', '83', 224),
(35, 'Villalibre', 'Athletic Club', 'ATH', 'Base card', 'Forward', '61', '76', '77', 214),
(36, 'Berenguer', 'Athletic Club', 'ATH', 'Base card', 'Forward', '60', '78', '78', 216),
(38, 'Oblak', 'Atlético Madrid', 'ATM', 'Base card', 'Goalkeeper', '89', '85', '50', 224),
(39, 'Grbic', 'Atlético Madrid', 'ATM', 'Base card', 'Goalkeeper', '77', '74', '50', 201),
(41, 'Giménez', 'Atlético Madrid', 'ATM', 'Base card', 'Defender', '82', '79', '64', 225),
(42, 'Savic', 'Atlético Madrid', 'ATM', 'Base card', 'Defender', '82', '80', '57', 219),
(43, 'Felipe', 'Atlético Madrid', 'ATM', 'Base card', 'Defender', '82', '80', '58', 220),
(44, 'Lodi', 'Atlético Madrid', 'ATM', 'Base card', 'Defender', '76', '79', '71', 226),
(45, 'Kondogbia', 'Atlético Madrid', 'ATM', 'Base card', 'Midfielder', '80', '79', '66', 225),
(46, 'Torreira', 'Atlético Madrid', 'ATM', 'Base card', 'Midfielder', '78', '78', '62', 218),
(47, 'Saúl', 'Atlético Madrid', 'ATM', 'Base card', 'Midfielder', '77', '83', '78', 238),
(48, 'Koke', 'Atlético Madrid', 'ATM', 'Base card', 'Midfielder', '80', '81', '76', 237),
(49, 'Llorente', 'Atlético Madrid', 'ATM', 'Base card', 'Midfielder', '68', '80', '79', 227),
(50, 'Carrasco', 'Atlético Madrid', 'ATM', 'Base card', 'Midfielder', '60', '79', '80', 219),
(51, 'Joao Félix', 'Atlético Madrid', 'ATM', 'Base card', 'Midfielder', '58', '85', '85', 228),
(52, 'Correa', 'Atlético Madrid', 'ATM', 'Base card', 'Forward', '58', '78', '82', 218),
(53, 'Luis Suárez', 'Atlético Madrid', 'ATM', 'Base card', 'Forward', '62', '84', '86', 232),
(54, 'Diego Costa', 'Atlético Madrid', 'ATM', 'Base card', 'Forward', '64', '80', '82', 226),
(56, 'Ter Stegen', 'F.C. Barcelona', 'BAR', 'Base card', 'Goalkeeper', '86', '85', '55', 226),
(57, 'Neto', 'F.C. Barcelona', 'BAR', 'Base card', 'Goalkeeper', '80', '76', '51', 207),
(58, 'Sergi Roberto', 'F.C. Barcelona', 'BAR', 'Base card', 'Defender', '77', '78', '71', 226),
(59, 'Dest', 'F.C. Barcelona', 'BAR', 'Base card', 'Defender', '76', '76', '72', 224),
(60, 'Piqué', 'F.C. Barcelona', 'BAR', 'Base card', 'Defender', '87', '84', '66', 237),
(61, 'Lenglet', 'F.C. Barcelona', 'BAR', 'Base card', 'Defender', '83', '82', '59', 224),
(62, 'Jordi Alba', 'F.C. Barcelona', 'BAR', 'Base card', 'Defender', '78', '81', '74', 233),
(63, 'Busquets', 'F.C. Barcelona', 'BAR', 'Base card', 'Midfielder', '83', '82', '59', 224),
(64, 'Pjanic', 'F.C. Barcelona', 'BAR', 'Base card', 'Midfielder', '76', '79', '71', 226),
(65, 'De Jong', 'F.C. Barcelona', 'BAR', 'Base card', 'Midfielder', '74', '82', '77', 233),
(66, 'Pedri', 'F.C. Barcelona', 'BAR', 'Base card', 'Midfielder', '66', '80', '77', 223),
(67, 'Coutinho', 'F.C. Barcelona', 'BAR', 'Base card', 'Midfielder', '63', '81', '80', 224),
(68, 'Trincao', 'F.C. Barcelona', 'BAR', 'Base card', 'Forward', '61', '79', '80', 220),
(69, 'Griezmann', 'F.C. Barcelona', 'BAR', 'Base card', 'Forward', '57', '82', '85', 224),
(70, 'Messi', 'F.C. Barcelona', 'BAR', 'Base card', 'Forward', '59', '90', '90', 239),
(71, 'Ansu Fati', 'F.C. Barcelona', 'BAR', 'Base card', 'Forward', '59', '82', '85', 226),
(72, 'Dembélé', 'F.C. Barcelona', 'BAR', 'Base card', 'Forward', '56', '78', '80', 214),
(74, 'Bravo', 'Real Betis', 'BET', 'Base card', 'Goalkeeper', '82', '79', '50', 211),
(75, 'Joel', 'Real Betis', 'BET', 'Base card', 'Goalkeeper', '78', '77', '49', 204),
(76, 'Emerson', 'Real Betis', 'BET', 'Base card', 'Defender', '75', '78', '68', 221),
(77, 'Mandi', 'Real Betis', 'BET', 'Base card', 'Defender', '79', '79', '60', 218),
(78, 'Bartra', 'Real Betis', 'BET', 'Base card', 'Defender', '80', '79', '63', 222),
(79, 'Sidnei', 'Real Betis', 'BET', 'Base card', 'Defender', '78', '77', '60', 215),
(80, 'Álex Moreno', 'Real Betis', 'BET', 'Base card', 'Defender', '73', '78', '68', 219),
(81, 'Guido Rodríguez', 'Real Betis', 'BET', 'Base card', 'Midfielder', '78', '78', '60', 216),
(82, 'William Carvalho', 'Real Betis', 'BET', 'Base card', 'Midfielder', '77', '78', '64', 219),
(83, 'Guardado', 'Real Betis', 'BET', 'Base card', 'Midfielder', '59', '79', '77', 215),
(84, 'Joaquín', 'Real Betis', 'BET', 'Base card', 'Midfielder', '58', '82', '81', 221),
(85, 'Canales', 'Real Betis', 'BET', 'Base card', 'Midfielder', '60', '83', '82', 225),
(86, 'Fekir', 'Real Betis', 'BET', 'Base card', 'Midfielder', '59', '81', '81', 221),
(87, 'Tello', 'Real Betis', 'BET', 'Base card', 'Forward', '57', '78', '78', 213),
(88, 'Borja Iglesias', 'Real Betis', 'BET', 'Base card', 'Forward', '59', '78', '80', 217),
(89, 'Loren', 'Real Betis', 'BET', 'Base card', 'Forward', '57', '78', '79', 214),
(90, 'Sanabria', 'Real Betis', 'BET', 'Base card', 'Forward', '61', '79', '80', 220),
(92, 'Ledesma', 'Cádiz C.F.', 'CAD', 'Base card', 'Goalkeeper', '82', '80', '51', 213),
(93, 'David Gil', 'Cádiz C.F.', 'CAD', 'Base card', 'Goalkeeper', '76', '76', '50', 202),
(94, 'Carcelén', 'Cádiz C.F.', 'CAD', 'Base card', 'Defender', '75', '76', '59', 210),
(95, 'Cala', 'Cádiz C.F.', 'CAD', 'Base card', 'Defender', '78', '77', '59', 214),
(96, 'Fali', 'Cádiz C.F.', 'CAD', 'Base card', 'Defender', '76', '76', '58', 210),
(97, 'Marcos Mauro', 'Cádiz C.F.', 'CAD', 'Base card', 'Defender', '75', '75', '57', 207),
(98, 'Espino', 'Cádiz C.F.', 'CAD', 'Base card', 'Defender', '76', '77', '58', 211),
(99, 'Jose Mari', 'Cádiz C.F.', 'CAD', 'Base card', 'Midfielder', '73', '77', '61', 211),
(100, 'Jonsson', 'Cádiz C.F.', 'CAD', 'Base card', 'Midfielder', '75', '78', '60', 213),
(101, 'Augusto Fernández', 'Cádiz C.F.', 'CAD', 'Base card', 'Midfielder', '60', '76', '73', 209),
(102, 'Álex Fernández', 'Cádiz C.F.', 'CAD', 'Base card', 'Midfielder', '59', '79', '77', 215),
(103, 'Pombo', 'Cádiz C.F.', 'CAD', 'Base card', 'Midfielder', '58', '77', '75', 210),
(104, 'Perea', 'Cádiz C.F.', 'CAD', 'Base card', 'Midfielder', '59', '75', '74', 208),
(105, 'Salvi', 'Cádiz C.F.', 'CAD', 'Base card', 'Forward', '58', '78', '78', 214),
(106, 'Lozano', 'Cádiz C.F.', 'CAD', 'Base card', 'Forward', '60', '77', '77', 214),
(107, 'Negredo', 'Cádiz C.F.', 'CAD', 'Base card', 'Forward', '61', '79', '81', 221),
(108, 'Álvaro Giménez', 'Cádiz C.F.', 'CAD', 'Base card', 'Forward', '58', '76', '75', 209),
(110, 'Rubén', 'R.C. Celta', 'CEL', 'Base card', 'Goalkeeper', '80', '79', '49', 208),
(111, 'Iván Villar', 'R.C. Celta', 'CEL', 'Base card', 'Goalkeeper', '77', '76', '50', 203),
(112, 'Hugo Mallo', 'R.C. Celta', 'CEL', 'Base card', 'Defender', '78', '79', '68', 225),
(113, 'Aidoo', 'R.C. Celta', 'CEL', 'Base card', 'Defender', '78', '77', '58', 213),
(114, 'Murillo', 'R.C. Celta', 'CEL', 'Base card', 'Defender', '80', '78', '59', 217),
(115, 'Araújo', 'R.C. Celta', 'CEL', 'Base card', 'Defender', '78', '77', '59', 214),
(116, 'Olaza     ', 'R.C. Celta', 'CEL', 'Base card', 'Defender', '76', '78', '64', 218),
(117, 'Tapia', 'R.C. Celta', 'CEL', 'Base card', 'Midfielder', '77', '78', '59', 214),
(118, 'Okay', 'R.C. Celta', 'CEL', 'Base card', 'Midfielder', '75', '76', '60', 211),
(119, 'Fran Beltrán', 'R.C. Celta', 'CEL', 'Base card', 'Midfielder', '70', '77', '73', 220),
(120, 'Baeza', 'R.C. Celta', 'CEL', 'Base card', 'Midfielder', '59', '76', '76', 211),
(121, 'Brais ', 'R.C. Celta', 'CEL', 'Base card', 'Midfielder', '60', '77', '76', 213),
(122, 'Denis Suárez     ', 'R.C. Celta', 'CEL', 'Base card', 'Midfielder', '57', '79', '78', 214),
(123, 'Nolito', 'R.C. Celta', 'CEL', 'Base card', 'Forward', '58', '78', '79', 215),
(124, 'Iago Aspas', 'R.C. Celta', 'CEL', 'Base card', 'Forward', '61', '84', '84', 229),
(125, 'Santi Mina', 'R.C. Celta', 'CEL', 'Base card', 'Forward', '62', '77', '77', 216),
(126, 'Emre Mor', 'R.C. Celta', 'CEL', 'Base card', 'Forward', '59', '77', '77', 213),
(128, 'Dmitrovic', 'S.D. Eibar', 'EIB', 'Base card', 'Goalkeeper', '84', '82', '50', 216),
(129, 'Yoel', 'S.D. Eibar', 'EIB', 'Base card', 'Goalkeeper', '77', '74', '51', 202),
(130, 'Arbilla', 'S.D. Eibar', 'EIB', 'Base card', 'Defender', '77', '77', '63', 217),
(131, 'Oliveira', 'S.D. Eibar', 'EIB', 'Base card', 'Defender', '76', '76', '61', 213),
(132, 'Bigas', 'S.D. Eibar', 'EIB', 'Base card', 'Defender', '76', '75', '61', 212),
(133, 'Burgos', 'S.D. Eibar', 'EIB', 'Base card', 'Defender', '77', '77', '60', 214),
(134, 'Kevin Rodrigues', 'S.D. Eibar', 'EIB', 'Base card', 'Defender', '73', '76', '67', 216),
(135, 'Diop', 'S.D. Eibar', 'EIB', 'Base card', 'Midfielder', '75', '77', '58', 210),
(136, 'Edu Expósito', 'S.D. Eibar', 'EIB', 'Base card', 'Midfielder', '63', '77', '74', 214),
(137, 'Pozo', 'S.D. Eibar', 'EIB', 'Base card', 'Midfielder', '64', '76', '75', 215),
(138, 'Pedro León', 'S.D. Eibar', 'EIB', 'Base card', 'Midfielder', '56', '78', '77', 211),
(139, 'Inui', 'S.D. Eibar', 'EIB', 'Base card', 'Midfielder', '59', '79', '78', 216),
(140, 'Kadzior', 'S.D. Eibar', 'EIB', 'Base card', 'Midfielder', '62', '76', '75', 213),
(141, 'Bryan Gil', 'S.D. Eibar', 'EIB', 'Base card', 'Forward', '58', '77', '78', 213),
(142, 'Sergi Enrich', 'S.D. Eibar', 'EIB', 'Base card', 'Forward', '60', '77', '77', 214),
(143, 'Muto', 'S.D. Eibar', 'EIB', 'Base card', 'Forward', '60', '78', '79', 217),
(144, 'Kike García', 'S.D. Eibar', 'EIB', 'Base card', 'Forward', '63', '77', '78', 218),
(146, 'Badía', 'Elche C.F.', 'ELC', 'Base card', 'Goalkeeper', '80', '80', '50', 210),
(147, 'Diego Rodríguez', 'Elche C.F.', 'ELC', 'Base card', 'Goalkeeper', '77', '76', '51', 204),
(148, 'Barragán', 'Elche C.F.', 'ELC', 'Base card', 'Defender', '76', '76', '61', 213),
(149, 'Verdú', 'Elche C.F.', 'ELC', 'Base card', 'Defender', '76', '77', '58', 211),
(150, 'Josema', 'Elche C.F.', 'ELC', 'Base card', 'Defender', '77', '77', '59', 213),
(151, 'Dani Calvo', 'Elche C.F.', 'ELC', 'Base card', 'Defender', '75', '75', '57', 207),
(152, 'Sánchez Miño', 'Elche C.F.', 'ELC', 'Base card', 'Defender', '74', '75', '61', 210),
(153, 'Marcone', 'Elche C.F.', 'ELC', 'Base card', 'Midfielder', '72', '78', '66', 216),
(154, 'Raúl Guti', 'Elche C.F.', 'ELC', 'Base card', 'Midfielder', '72', '77', '63', 212),
(155, 'Josán', 'Elche C.F.', 'ELC', 'Base card', 'Midfielder', '62', '76', '75', 213),
(156, 'Morente', 'Elche C.F.', 'ELC', 'Base card', 'Midfielder', '59', '78', '78', 215),
(157, 'Fidel', 'Elche C.F.', 'ELC', 'Base card', 'Midfielder', '60', '77', '76', 213),
(158, 'Rigoni', 'Elche C.F.', 'ELC', 'Base card', 'Midfielder', '58', '76', '75', 209),
(159, 'Pere Milla', 'Elche C.F.', 'ELC', 'Base card', 'Forward', '59', '78', '77', 214),
(160, 'Boyé', 'Elche C.F.', 'ELC', 'Base card', 'Forward', '61', '76', '76', 213),
(161, 'Carrillo', 'Elche C.F.', 'ELC', 'Base card', 'Forward', '57', '77', '78', 212),
(162, 'Nino', 'Elche C.F.', 'ELC', 'Base card', 'Forward', '59', '76', '77', 212),
(164, 'David Soria', 'Getafe C.F.', 'GET', 'Base card', 'Goalkeeper', '81', '80', '50', 211),
(165, 'Yáñez', 'Getafe C.F.', 'GET', 'Base card', 'Goalkeeper', '76', '74', '50', 200),
(166, 'Damián Suárez', 'Getafe C.F.', 'GET', 'Base card', 'Defender', '80', '78', '56', 214),
(167, 'Nyom.', 'Getafe C.F.', 'GET', 'Base card', 'Defender', '76', '77', '66', 219),
(168, 'Djené', 'Getafe C.F.', 'GET', 'Base card', 'Defender', '83', '82', '58', 223),
(169, 'Etxeita', 'Getafe C.F.', 'GET', 'Base card', 'Defender', '76', '76', '60', 212),
(170, 'Cabaco', 'Getafe C.F.', 'GET', 'Base card', 'Defender', '77', '77', '58', 212),
(171, 'Olivera', 'Getafe C.F.', 'GET', 'Base card', 'Defender', '78', '78', '59', 215),
(172, 'Arambarri', 'Getafe C.F.', 'GET', 'Base card', 'Midfielder', '78', '79', '60', 217),
(173, 'Maksimovic', 'Getafe C.F.', 'GET', 'Base card', 'Midfielder', '77', '79', '66', 222),
(174, 'Timor', 'Getafe C.F.', 'GET', 'Base card', 'Midfielder', '76', '76', '58', 210),
(175, 'Mollejo', 'Getafe C.F.', 'GET', 'Base card', 'Midfielder', '59', '76', '77', 212),
(176, 'Cucurella', 'Getafe C.F.', 'GET', 'Base card', 'Midfielder', '68', '80', '76', 224),
(177, 'Cucho Hernández', 'Getafe C.F.', 'GET', 'Base card', 'Forward', '61', '79', '80', 220),
(178, 'Ángel', 'Getafe C.F.', 'GET', 'Base card', 'Forward', '58', '78', '80', 216),
(179, 'Mata', 'Getafe C.F.', 'GET', 'Base card', 'Forward', '64', '80', '81', 225),
(180, 'Ünal', 'Getafe C.F.', 'GET', 'Base card', 'Forward', '59', '77', '78', 214),
(182, 'Rui Silva', 'Granada C.F.', 'GRA', 'Base card', 'Goalkeeper', '81', '81', '50', 212),
(183, 'Aarón', 'Granada C.F.', 'GRA', 'Base card', 'Goalkeeper', '77', '75', '50', 202),
(184, 'Foulquier', 'Granada C.F.', 'GRA', 'Base card', 'Defender', '74', '77', '65', 216),
(185, 'Víctor Díaz', 'Granada C.F.', 'GRA', 'Base card', 'Defender', '76', '76', '56', 208),
(186, 'Germán', 'Granada C.F.', 'GRA', 'Base card', 'Defender', '76', '78', '58', 212),
(187, 'Domingos Duarte', 'Granada C.F.', 'GRA', 'Base card', 'Defender', '80', '78', '59', 217),
(188, 'Neva', 'Granada C.F.', 'GRA', 'Base card', 'Defender', '74', '77', '63', 214),
(189, 'Kennedy', 'Granada C.F.', 'GRA', 'Base card', 'Defender', '73', '76', '70', 219),
(190, 'Gonalons', 'Granada C.F.', 'GRA', 'Base card', 'Midfielder', '74', '76', '66', 216),
(191, 'Montoro', 'Granada C.F.', 'GRA', 'Base card', 'Midfielder', '73', '78', '65', 216),
(192, 'Yangel Herrera', 'Granada C.F.', 'GRA', 'Base card', 'Midfielder', '73', '78', '66', 217),
(193, 'Milla', 'Granada C.F.', 'GRA', 'Base card', 'Midfielder', '67', '80', '75', 222),
(194, 'Machís', 'Granada C.F.', 'GRA', 'Base card', 'Midfielder', '58', '79', '79', 216),
(195, 'Puertas', 'Granada C.F.', 'GRA', 'Base card', 'Forward', '58', '79', '78', 215),
(196, 'Soldado', 'Granada C.F.', 'GRA', 'Base card', 'Forward', '61', '79', '80', 220),
(197, 'Jorge Molina', 'Granada C.F.', 'GRA', 'Base card', 'Forward', '57', '78', '79', 214),
(198, 'Luis Suárez', 'Granada C.F.', 'GRA', 'Base card', 'Forward', '60', '77', '78', 215),
(200, 'Andrés Fernández', 'S.D. Huesca', 'HUE', 'Base card', 'Goalkeeper', '79', '79', '51', 209),
(201, 'Álvaro Fernández', 'S.D. Huesca', 'HUE', 'Base card', 'Goalkeeper', '77', '76', '50', 203),
(202, 'Maffeo', 'S.D. Huesca', 'HUE', 'Base card', 'Defender', '74', '76', '62', 212),
(203, 'Pulido', 'S.D. Huesca', 'HUE', 'Base card', 'Defender', '77', '78', '56', 211),
(204, 'Insúa', 'S.D. Huesca', 'HUE', 'Base card', 'Defender', '75', '75', '59', 209),
(205, 'Siovas', 'S.D. Huesca', 'HUE', 'Base card', 'Defender', '79', '79', '58', 216),
(206, 'Gastón Silva', 'S.D. Huesca', 'HUE', 'Base card', 'Defender', '75', '74', '58', 207),
(207, 'Galán', 'S.D. Huesca', 'HUE', 'Base card', 'Defender', '74', '75', '62', 211),
(208, 'Mikel Rico', 'S.D. Huesca', 'HUE', 'Base card', 'Midfielder', '76', '78', '60', 214),
(209, 'Mosquera', 'S.D. Huesca', 'HUE', 'Base card', 'Midfielder', '62', '76', '74', 212),
(210, 'Juan Carlos', 'S.D. Huesca', 'HUE', 'Base card', 'Midfielder', '59', '75', '73', 207),
(211, 'Borja García', 'S.D. Huesca', 'HUE', 'Base card', 'Midfielder', '60', '77', '76', 213),
(212, 'Ferreiro', 'S.D. Huesca', 'HUE', 'Base card', 'Midfielder', '60', '77', '75', 212),
(213, 'Ontiveros', 'S.D. Huesca', 'HUE', 'Base card', 'Midfielder', '56', '78', '77', 211),
(214, 'Rafa Mir', 'S.D. Huesca', 'HUE', 'Base card', 'Forward', '59', '78', '79', 216),
(215, 'Okazaki', 'S.D. Huesca', 'HUE', 'Base card', 'Forward', '60', '78', '77', 215),
(216, 'Sandro', 'S.D. Huesca', 'HUE', 'Base card', 'Forward', '57', '77', '77', 211),
(218, 'Aitor Fernández', 'Levante U.D.', 'LEV', 'Base card', 'Goalkeeper', '84', '81', '48', 213),
(219, 'Kiko', 'Levante U.D.', 'LEV', 'Base card', 'Goalkeeper', '76', '75', '50', 201),
(220, 'Miramón', 'Levante U.D.', 'LEV', 'Base card', 'Defender', '76', '76', '58', 210),
(221, 'Postigo', 'Levante U.D.', 'LEV', 'Base card', 'Defender', '77', '77', '57', 211),
(222, 'Vezo', 'Levante U.D.', 'LEV', 'Base card', 'Defender', '79', '79', '61', 219),
(223, 'Rober Pier', 'Levante U.D.', 'LEV', 'Base card', 'Defender', '76', '76', '60', 212),
(224, 'Clerc', 'Levante U.D.', 'LEV', 'Base card', 'Defender', '75', '77', '63', 215),
(225, 'Radoja', 'Levante U.D.', 'LEV', 'Base card', 'Midfielder', '76', '77', '63', 216),
(226, 'Malsa', 'Levante U.D.', 'LEV', 'Base card', 'Midfielder', '75', '76', '59', 210),
(227, 'Campaña', 'Levante U.D.', 'LEV', 'Base card', 'Midfielder', '63', '81', '78', 222),
(228, 'Melero', 'Levante U.D.', 'LEV', 'Base card', 'Midfielder', '59', '78', '76', 213),
(229, 'Rochina', 'Levante U.D.', 'LEV', 'Base card', 'Midfielder', '60', '77', '77', 214),
(230, 'Bardhi', 'Levante U.D.', 'LEV', 'Base card', 'Midfielder', '58', '79', '78', 215),
(231, 'De Frutos', 'Levante U.D.', 'LEV', 'Base card', 'Forward', '61', '76', '75', 212),
(232, 'Morales', 'Levante U.D.', 'LEV', 'Base card', 'Forward', '65', '82', '81', 228),
(233, 'Roger', 'Levante U.D.', 'LEV', 'Base card', 'Forward', '58', '78', '80', 216),
(234, 'Dani Gómez', 'Levante U.D.', 'LEV', 'Base card', 'Forward', '61', '76', '76', 213),
(236, 'Courtois', 'Real Madrid', 'MAD', 'Base card', 'Goalkeeper', '85', '83', '50', 218),
(237, 'Lunin', 'Real Madrid', 'MAD', 'Base card', 'Defender', '78', '74', '50', 202),
(238, 'Carvajal', 'Real Madrid', 'MAD', 'Base card', 'Defender', '80', '79', '69', 228),
(239, 'Varane', 'Real Madrid', 'MAD', 'Base card', 'Defender', '81', '81', '63', 225),
(240, 'Sergio Ramos', 'Real Madrid', 'MAD', 'Base card', 'Defender', '88', '85', '73', 246),
(241, 'Mendy', 'Real Madrid', 'MAD', 'Base card', 'Defender', '81', '77', '61', 219),
(242, 'Marcelo', 'Real Madrid', 'MAD', 'Base card', 'Defender', '74', '76', '73', 223),
(243, 'Casemiro', 'Real Madrid', 'MAD', 'Base card', 'Midfielder', '84', '82', '62', 228),
(244, 'Kroos', 'Real Madrid', 'MAD', 'Base card', 'Midfielder', '72', '82', '78', 232),
(245, 'Fede Valverde', 'Real Madrid', 'MAD', 'Base card', 'Midfielder', '72', '78', '74', 224),
(246, 'Modric', 'Real Madrid', 'MAD', 'Base card', 'Midfielder', '64', '82', '81', 227),
(247, 'Odegaard', 'Real Madrid', 'MAD', 'Base card', 'Midfielder', '60', '80', '82', 222),
(248, 'Marco Asensio', 'Real Madrid', 'MAD', 'Base card', 'Midfielder', '59', '79', '80', 218),
(249, 'Rodrygo', 'Real Madrid', 'MAD', 'Base card', 'Forward', '58', '78', '81', 217),
(250, 'Hazard', 'Real Madrid', 'MAD', 'Base card', 'Forward', '60', '82', '84', 226),
(251, 'Benzema', 'Real Madrid', 'MAD', 'Base card', 'Forward', '59', '86', '87', 232),
(252, 'Vinícius', 'Real Madrid', 'MAD', 'Base card', 'Forward', '60', '80', '83', 223),
(254, 'Sergio Herrera', 'C.A. Osasuna', 'OSA', 'Base card', 'Goalkeeper', '79', '77', '50', 206),
(255, 'Rubén', 'C.A. Osasuna', 'OSA', 'Base card', 'Goalkeeper', '78', '76', '49', 203),
(256, 'Vidal', 'C.A. Osasuna', 'OSA', 'Base card', 'Defender', '74', '76', '60', 210),
(257, 'Aridane', 'C.A. Osasuna', 'OSA', 'Base card', 'Defender', '79', '78', '60', 217),
(258, 'David García', 'C.A. Osasuna', 'OSA', 'Base card', 'Defender', '78', '78', '59', 215),
(259, 'Roncaglia', 'C.A. Osasuna', 'OSA', 'Base card', 'Defender', '77', '77', '59', 213),
(260, 'Juan Cruz', 'C.A. Osasuna', 'OSA', 'Base card', 'Defender', '76', '77', '60', 213),
(261, 'Oier', 'C.A. Osasuna', 'OSA', 'Base card', 'Midfielder', '76', '78', '60', 214),
(262, 'Torró', 'C.A. Osasuna', 'OSA', 'Base card', 'Midfielder', '75', '77', '64', 216),
(263, 'Brasanac', 'C.A. Osasuna', 'OSA', 'Base card', 'Midfielder', '74', '76', '64', 214),
(264, 'Moncayola', 'C.A. Osasuna', 'OSA', 'Base card', 'Midfielder', '73', '77', '65', 215),
(265, 'Roberto Torres ', 'C.A. Osasuna', 'OSA', 'Base card', 'Midfielder', '59', '81', '78', 218),
(266, 'Rubén García', 'C.A. Osasuna', 'OSA', 'Base card', 'Midfielder', '59', '78', '78', 215),
(267, 'Jony', 'C.A. Osasuna', 'OSA', 'Base card', 'Forward', '58', '79', '78', 215),
(268, 'Budimir', 'C.A. Osasuna', 'OSA', 'Base card', 'Forward', '60', '78', '79', 217),
(269, 'Calleri', 'C.A. Osasuna', 'OSA', 'Base card', 'Forward', '61', '77', '78', 216),
(270, 'Chimy Ávila', 'C.A. Osasuna', 'OSA', 'Base card', 'Forward', '64', '80', '80', 224),
(272, 'Remiro', 'Real Sociedad', 'RSO', 'Base card', 'Goalkeeper', '80', '78', '50', 208),
(273, 'Moyà', 'Real Sociedad', 'RSO', 'Base card', 'Goalkeeper', '78', '76', '49', 203),
(274, 'Zaldúa', 'Real Sociedad', 'RSO', 'Base card', 'Defender', '77', '76', '59', 212),
(275, 'Gorosabel', 'Real Sociedad', 'RSO', 'Base card', 'Defender', '75', '76', '65', 216),
(276, 'Aritz Elustondo', 'Real Sociedad', 'RSO', 'Base card', 'Defender', '79', '78', '58', 215),
(277, 'Le Normand', 'Real Sociedad', 'RSO', 'Base card', 'Defender', '79', '78', '60', 217),
(278, 'Monreal', 'Real Sociedad', 'RSO', 'Base card', 'Defender', '80', '78', '62', 220),
(279, 'Zubeldia', 'Real Sociedad', 'RSO', 'Base card', 'Midfielder', '77', '78', '61', 216),
(280, 'Mikel Merino', 'Real Sociedad', 'RSO', 'Base card', 'Midfielder', '70', '80', '77', 227),
(281, 'Zubimendi', 'Real Sociedad', 'RSO', 'Base card', 'Midfielder', '74', '77', '61', 212),
(282, 'Silva', 'Real Sociedad', 'RSO', 'Base card', 'Midfielder', '60', '83', '83', 226),
(283, 'Oyarzabal', 'Real Sociedad', 'RSO', 'Base card', 'Midfielder', '62', '84', '84', 230),
(284, 'Portu', 'Real Sociedad', 'RSO', 'Base card', 'Forward', '63', '78', '80', 221),
(285, 'Barrenetxea', 'Real Sociedad', 'RSO', 'Base card', 'Forward', '58', '76', '77', 211),
(286, 'Willian José', 'Real Sociedad', 'RSO', 'Base card', 'Forward', '59', '81', '82', 222),
(287, 'Isak', 'Real Sociedad', 'RSO', 'Base card', 'Forward', '57', '80', '81', 218),
(288, 'Januzaj', 'Real Sociedad', 'RSO', 'Base card', 'Forward', '56', '77', '79', 212),
(290, 'Bounou', 'Sevilla F.C.', 'SEV', 'Base card', 'Goalkeeper', '79', '79', '50', 208),
(291, 'Vacklik', 'Sevilla F.C.', 'SEV', 'Base card', 'Goalkeeper', '79', '78', '50', 207),
(292, 'Jesús Navas', 'Sevilla F.C.', 'SEV', 'Base card', 'Defender', '72', '83', '74', 229),
(293, 'Koundé', 'Sevilla F.C.', 'SEV', 'Base card', 'Defender', '83', '82', '59', 224),
(294, 'Diego Carlos', 'Sevilla F.C.', 'SEV', 'Base card', 'Defender', '83', '82', '58', 223),
(295, 'Rekik', 'Sevilla F.C.', 'SEV', 'Base card', 'Defender', '77', '76', '61', 214),
(296, 'Acuña', 'Sevilla F.C.', 'SEV', 'Base card', 'Defender', '78', '78', '64', 220),
(297, 'Fernando', 'Sevilla F.C.', 'SEV', 'Base card', 'Midfielder', '82', '82', '61', 225),
(298, 'Jordán', 'Sevilla F.C.', 'SEV', 'Base card', 'Midfielder', '69', '78', '77', 224),
(299, 'Rakitic', 'Sevilla F.C.', 'SEV', 'Base card', 'Midfielder', '71', '80', '77', 228),
(300, 'Óliver', 'Sevilla F.C.', 'SEV', 'Base card', 'Midfielder', '59', '76', '77', 212),
(301, 'Óscar Rodríguez', 'Sevilla F.C.', 'SEV', 'Base card', 'Midfielder', '58', '77', '78', 213),
(302, 'Suso', 'Sevilla F.C.', 'SEV', 'Base card', 'Forward', '58', '79', '80', 217),
(303, 'Ocampos', 'Sevilla F.C.', 'SEV', 'Base card', 'Forward', '63', '83', '83', 229),
(304, 'De Jong', 'Sevilla F.C.', 'SEV', 'Base card', 'Forward', '59', '78', '79', 216),
(305, 'En Nesyri', 'Sevilla F.C.', 'SEV', 'Base card', 'Forward', '62', '77', '78', 217),
(306, 'Munir', 'Sevilla F.C.', 'SEV', 'Base card', 'Forward', '60', '77', '79', 216),
(308, 'Jaume', 'Valencia C.F.', 'VAL', 'Base card', 'Goalkeeper', '81', '78', '52', 211),
(309, 'Cillessen', 'Valencia C.F.', 'VAL', 'Base card', 'Goalkeeper', '81', '78', '52', 211),
(310, 'Correia', 'Valencia C.F.', 'VAL', 'Base card', 'Defender', '76', '76', '64', 216),
(311, 'Gabriel', 'Valencia C.F.', 'VAL', 'Base card', 'Defender', '83', '81', '58', 222),
(312, 'Diakhaby', 'Valencia C.F.', 'VAL', 'Base card', 'Defender', '78', '79', '58', 215),
(313, 'Guillamón', 'Valencia C.F.', 'VAL', 'Base card', 'Defender', '77', '76', '63', 216),
(314, 'Gayà', 'Valencia C.F.', 'VAL', 'Base card', 'Defender', '78', '80', '71', 229),
(315, 'Racic', 'Valencia C.F.', 'VAL', 'Base card', 'Midfielder', '76', '76', '59', 211),
(316, 'Wass', 'Valencia C.F.', 'VAL', 'Base card', 'Midfielder', '75', '79', '68', 222),
(317, 'Carlos Soler', 'Valencia C.F.', 'VAL', 'Base card', 'Midfielder', '69', '79', '76', 224),
(318, 'Jason', 'Valencia C.F.', 'VAL', 'Base card', 'Midfielder', '63', '76', '74', 213),
(319, 'Cheryshev       ', 'Valencia C.F.', 'VAL', 'Base card', 'Midfielder', '59', '77', '76', 212),
(320, 'Kang-In Lee', 'Valencia C.F.', 'VAL', 'Base card', 'Midfielder', '60', '77', '77', 214),
(321, 'Guedes', 'Valencia C.F.', 'VAL', 'Base card', 'Forward', '59', '80', '81', 220),
(322, 'Gameiro', 'Valencia C.F.', 'VAL', 'Base card', 'Forward', '58', '77', '80', 215),
(323, 'Maxi Gómez', 'Valencia C.F.', 'VAL', 'Base card', 'Forward', '62', '81', '82', 225),
(324, 'Manu Vallejo', 'Valencia C.F.', 'VAL', 'Base card', 'Forward', '59', '76', '78', 213),
(326, 'Roberto', 'Real Valladolid', 'VAD', 'Base card', 'Goalkeeper', '79', '78', '50', 207),
(327, 'Masip', 'Real Valladolid', 'VAD', 'Base card', 'Goalkeeper', '79', '78', '49', 206),
(328, 'Luis Pérez', 'Real Valladolid', 'VAD', 'Base card', 'Defender', '75', '76', '59', 210),
(329, 'Javi Sánchez', 'Real Valladolid', 'VAD', 'Base card', 'Defender', '76', '75', '59', 210),
(330, 'El Yamiq', 'Real Valladolid', 'VAD', 'Base card', 'Defender', '76', '76', '57', 209),
(331, 'Joaquín', 'Real Valladolid', 'VAD', 'Base card', 'Defender', '77', '77', '59', 213),
(332, 'Nacho', 'Real Valladolid', 'VAD', 'Base card', 'Defender', '74', '76', '65', 215),
(333, 'Rubén Alcaraz', 'Real Valladolid', 'VAD', 'Base card', 'Midfielder', '68', '77', '72', 217),
(334, 'Roque', 'Real Valladolid', 'VAD', 'Base card', 'Midfielder', '73', '76', '62', 211),
(335, 'San Emeterio', 'Real Valladolid', 'VAD', 'Base card', 'Midfielder', '71', '75', '61', 207),
(336, 'Kike', 'Real Valladolid', 'VAD', 'Base card', 'Midfielder', '61', '77', '76', 214),
(337, 'Óscar Plano', 'Real Valladolid', 'VAD', 'Base card', 'Midfielder', '60', '78', '77', 215),
(338, 'Toni Villa', 'Real Valladolid', 'VAD', 'Base card', 'Midfielder', '61', '77', '76', 214),
(339, 'Orellana', 'Real Valladolid', 'VAD', 'Base card', 'Forward', '58', '79', '80', 217),
(340, 'Sergi Guardiola', 'Real Valladolid', 'VAD', 'Base card', 'Forward', '60', '78', '79', 217),
(341, 'Marcos André', 'Real Valladolid', 'VAD', 'Base card', 'Forward', '63', '76', '77', 216),
(342, 'Weissman', 'Real Valladolid', 'VAD', 'Base card', 'Forward', '59', '77', '77', 213),
(344, 'Sergio Asenjo', 'Villarreal C.F.', 'VIL', 'Base card', 'Goalkeeper', '81', '80', '48', 209),
(345, 'Rulli', 'Villarreal C.F.', 'VIL', 'Base card', 'Defender', '78', '76', '52', 206),
(346, 'Mario', 'Villarreal C.F.', 'VIL', 'Base card', 'Defender', '77', '78', '63', 218),
(347, 'Albiol', 'Villarreal C.F.', 'VIL', 'Base card', 'Defender', '81', '80', '58', 219),
(348, 'Pau Torres', 'Villarreal C.F.', 'VIL', 'Base card', 'Defender', '83', '81', '60', 224),
(349, 'Foyth', 'Villarreal C.F.', 'VIL', 'Base card', 'Defender', '78', '77', '60', 215),
(350, 'Estupiñán ', 'Villarreal C.F.', 'VIL', 'Base card', 'Defender', '72', '78', '69', 219),
(351, 'Alberto Moreno', 'Villarreal C.F.', 'VIL', 'Base card', 'Defender', '75', '76', '65', 216),
(352, 'Coquelín', 'Villarreal C.F.', 'VIL', 'Base card', 'Midfielder', '80', '79', '61', 220),
(353, 'Iborra', 'Villarreal C.F.', 'VIL', 'Base card', 'Midfielder', '76', '78', '66', 220),
(354, 'Manu Trigueros', 'Villarreal C.F.', 'VIL', 'Base card', 'Midfielder', '75', '77', '65', 217),
(355, 'Parejo', 'Villarreal C.F.', 'VIL', 'Base card', 'Midfielder', '65', '83', '81', 229),
(356, 'Kubo', 'Villarreal C.F.', 'VIL', 'Base card', 'Midfielder', '58', '79', '80', 217),
(357, 'Chukwueze', 'Villarreal C.F.', 'VIL', 'Base card', 'Forward', '59', '78', '79', 216),
(358, 'Gerard Moreno  ', 'Villarreal C.F.', 'VIL', 'Base card', 'Forward', '61', '82', '84', 227),
(359, 'Alcácer', 'Villarreal C.F.', 'VIL', 'Base card', 'Forward', '59', '82', '83', 224),
(360, 'Bacca ', 'Villarreal C.F.', 'VIL', 'Base card', 'Forward', '58', '78', '79', 215),
(361, 'Laguardia', 'Alavés', 'ALA', 'Idolo', 'Defender', '86', '86', '62', 234),
(362, 'Battaglia', 'Alavés', 'ALA', 'Idolo', 'Midfielder', '84', '84', '66', 234),
(363, 'Unai López', 'Athletic Club', 'ATH', 'Idolo', 'Midfielder', '67', '85', '83', 235),
(364, 'Berenguer', 'Athletic Club', 'ATH', 'Idolo', 'Forward', '66', '84', '84', 234),
(365, 'Llorente', 'Atlético de Madrid', 'ATM', 'Idolo', 'Midfielder', '74', '86', '85', 245),
(366, 'Sergio Busquets', 'F.C. Barcelona', 'BAR', 'Idolo', 'Midfielder', '89', '88', '65', 242),
(367, 'Guido Rodríguez', 'Real Betis', 'BET', 'Idolo', 'Midfielder', '84', '84', '66', 234),
(368, 'Joaquín', 'Real Betis', 'BET', 'Idolo', 'Midfielder', '64', '88', '87', 239),
(369, 'Ledesma', 'Cádiz C.F.', 'CAD', 'Idolo', 'Goalkeeper', '88', '86', '57', 231),
(370, 'Álex Fernández', 'Cádiz C.F.', 'CAD', 'Idolo', 'Midfielder', '65', '85', '83', 233),
(371, 'Murillo', 'R.C. Celta', 'CEL', 'Idolo', 'Defender', '86', '84', '65', 235),
(372, 'Tapia', 'R.C. Celta', 'CEL', 'Idolo', 'Defender', '83', '84', '65', 232),
(373, 'Inui', 'S.D. Eibar', 'EIB', 'Idolo', 'Midfielder', '65', '85', '84', 234),
(374, 'Muto', 'S.D. Eibar', 'EIB', 'Idolo', 'Forward', '66', '84', '85', 235),
(375, 'Edgar Badía', 'Elche C.F.', 'ELC', 'Idolo', 'Goalkeeper', '86', '86', '56', 228),
(376, 'Nino', 'Elche C.F.', 'ELC', 'Idolo', 'Forward', '65', '82', '83', 230),
(377, 'Arambarri', 'Getafe C.F.', 'GET', 'Idolo', 'Midfielder', '84', '85', '66', 235),
(378, 'Maksimovic', 'Getafe C.F.', 'GET', 'Idolo', 'Midfielder', '83', '85', '72', 240),
(379, 'Domingos Duarte', 'Granada C.F.', 'GRA', 'Idolo', 'Defender', '86', '84', '65', 235),
(380, 'Luis Suárez', 'Granada C.F.', 'GRA', 'Idolo', 'Forward', '66', '83', '84', 233),
(381, 'Mikel Rico', 'S.D. Huesca', 'HUE', 'Idolo', 'Midfielder', '82', '84', '66', 232),
(382, 'Okazaki', 'S.D. Huesca', 'HUE', 'Idolo', 'Forward', '66', '84', '83', 233),
(383, 'Bardhi', 'Levante U.D.', 'LEV', 'Idolo', 'Midfielder', '64', '85', '84', 233),
(384, 'Morales', 'Levante U.D.', 'LEV', 'Idolo', 'Forward', '71', '88', '87', 246),
(385, 'Carvajal', 'Real Madrid', 'MAD', 'Idolo', 'Defender', '86', '85', '75', 246),
(386, 'Jony', 'C.A. Osasuna', 'OSA', 'Idolo', 'Forward', '64', '85', '84', 233),
(387, 'Chimy Ávila', 'C.A. Osasuna', 'OSA', 'Idolo', 'Forward', '70', '86', '86', 242),
(388, 'Le Normand', 'Real Sociedad', 'RSO', 'Idolo', 'Defender', '85', '84', '66', 235),
(389, 'Portu', 'Real Sociedad', 'RSO', 'Idolo', 'Forward', '69', '84', '86', 239),
(390, 'Suso', 'Sevilla F.C.', 'SEV', 'Idolo', 'Forward', '64', '85', '86', 235),
(391, 'Carlos Soler', 'Valencia C.F.', 'VAL', 'Idolo', 'Midfielder', '75', '85', '82', 242),
(392, 'Guedes', 'Valencia C.F.', 'VAL', 'Idolo', 'Forward', '65', '86', '87', 238),
(393, 'Rubén Alcaraz', 'Real Valladolid', 'VAD', 'Idolo', 'Midfielder', '74', '83', '78', 235),
(394, 'Orellana', 'Real Valladolid', 'VAD', 'Idolo', 'Forward', '64', '85', '86', 235),
(395, 'Estupiñán', 'Villarreal C.F.', 'VIL', 'Idolo', 'Defender', '78', '84', '75', 237),
(396, 'Iborra', 'Villarreal C.F.', 'VIL', 'Idolo', 'Midfielder', '82', '84', '72', 238),
(397, 'Unai Simón', 'Athletic Club', 'ATH', 'Guante de Oro', 'Goalkeeper', '91', '81', '49', 221),
(398, 'Bravo', 'Real Betis', 'BET', 'Guante de Oro', 'Goalkeeper', '90', '79', '50', 219),
(399, 'Dmtrovic', 'S.D. Eibar', 'EIB', 'Guante de Oro', 'Goalkeeper', '92', '82', '50', 224),
(400, 'Aitor Fernández', 'Levante U.D.', 'LEV', 'Guante de Oro', 'Goalkeeper', '92', '81', '48', 221),
(401, 'Kondogbia', 'Atlético de Madrid', 'ATM', 'Titán', 'Midfielder', '88', '82', '66', 236),
(402, 'Djené', 'Getafe C.F.', 'GET', 'Titán', 'Defender', '91', '85', '58', 234),
(403, 'Casemiro', 'Real Madrid', 'MAD', 'Titán', 'Midfielder', '92', '85', '62', 239),
(404, 'Aridane', 'C.A. Osasuna', 'OSA', 'Titán', 'Defender', '87', '81', '60', 228),
(405, 'Gabriel', 'Valencia C.F.', 'VAL', 'Titán', 'Defender', '91', '84', '58', 233),
(406, 'Sancet', 'Athletic Club', 'ATH', 'Diamante', 'Midfielder', '60', '86', '76', 222),
(407, 'Dest', 'F.C. Barcelona', 'BAR', 'Diamante', 'Defender', '85', '76', '72', 233),
(408, 'Pedri', 'F.C. Barcelona', 'BAR', 'Diamante', 'Midfielder', '66', '89', '77', 232),
(409, 'Riqui Puig', 'F.C. Barcelona', 'BAR', 'Diamante', 'Midfielder', '58', '86', '75', 219),
(410, 'Trincao', 'F.C. Barcelona', 'BAR', 'Diamante', 'Forward', '61', '79', '89', 229),
(411, 'Fran Beltrán', 'R.C. Celta', 'CEL', 'Diamante', 'Midfielder', '70', '86', '73', 229),
(412, 'Bryan Gil', 'S.D. Eibar', 'EIB', 'Diamante', 'Forward', '58', '77', '87', 222),
(413, 'Cucurella', 'Getafe C.F.', 'GET', 'Diamante', 'Midfielder', '68', '89', '76', 233),
(414, 'Cucho Hernández', 'Getafe C.F.', 'GET', 'Diamante', 'Forward', '61', '79', '89', 229),
(415, 'Rafa Mir', 'S.D. Huesca', 'HUE', 'Diamante', 'Forward', '59', '78', '88', 225),
(416, 'Fede Valverde', 'Real Madrid', 'MAD', 'Diamante', 'Midfielder', '72', '87', '74', 233),
(417, 'Rodrygo', 'Real Madrid', 'MAD', 'Diamante', 'Forward', '58', '78', '90', 226),
(418, 'Moncayola', 'C.A. Osasuna', 'OSA', 'Diamante', 'Midfielder', '73', '86', '65', 224),
(419, 'Isak', 'Real Sociedad', 'RSO', 'Diamante', 'Forward', '57', '80', '90', 227),
(420, 'Óscar Rodríguez', 'Sevilla F.C.', 'SEV', 'Diamante', 'Midfielder', '58', '77', '87', 222),
(421, 'Guillamón', 'Valencia C.F.', 'VAL', 'Diamante', 'Defender', '86', '76', '63', 225),
(422, 'Kang-In Lee', 'Valencia C.F.', 'VAL', 'Diamante', 'Midfielder', '60', '77', '86', 223),
(423, 'Kubo', 'Villarreal C.F.', 'VIL', 'Diamante', 'Midfielder', '58', '79', '89', 226),
(424, 'Lucas Pérez', 'Alavés', 'ALA', 'Factor Gol', 'Forward', '62', '85', '90', 237),
(425, 'Diego Costa', 'Atlético de Madrid', 'ATM', 'Factor Gol', 'Forward', '64', '83', '91', 238),
(426, 'Negredo', 'Cádiz C.F.', 'CAD', 'Factor Gol', 'Forward', '61', '82', '90', 233),
(427, 'Ángel', 'Getafe C.F.', 'GET', 'Factor Gol', 'Forward', '58', '81', '89', 228),
(428, 'Mata', 'Getafe C.F.', 'GET', 'Factor Gol', 'Forward', '64', '83', '90', 237),
(429, 'Soldado', 'Granada C.F.', 'GRA', 'Factor Gol', 'Forward', '61', '82', '89', 232),
(430, 'Jorge Molina', 'Granada C.F.', 'GRA', 'Factor Gol', 'Forward', '57', '81', '88', 226),
(431, 'Roger', 'Levante U.D.', 'LEV', 'Factor Gol', 'Forward', '58', '81', '89', 228),
(432, 'Alcácer', 'Villarreal C.F.', 'VIL', 'Factor Gol', 'Forward', '59', '85', '92', 236),
(433, 'Yeray-Íñigo Martínez-Núñez ¡COLOSOS!', 'Athletic Club', 'ATH', 'Super Héroes', 'Defender', '93', '82', '63', 238),
(434, 'Llorente-Joao Félix-Correa ¡TURBOMAN!', 'Atlético de Madrid', 'ATM', 'Super Héroes', 'Forward', '68', '85', '95', 248),
(435, 'Ansu-Pedri-Trincao ¡WONDER BOYS!', 'F.C. Barcelona', 'BAR', 'Super Héroes', 'Forward', '66', '82', '95', 243),
(436, 'Kroos-Modric-Odegaard ¡MAESTROS!', 'Real Madrid', 'MAD', 'Super Héroes', 'Midfielder', '72', '82', '92', 246),
(437, 'Ocampos-De Jong-En Nesiry ¡CAÑONEROS!', 'Sevilla F.C.', 'SEV', 'Super Héroes', 'Forward', '63', '83', '93', 239),
(438, 'Coquelín-Parejo-Iborra ¡COMANDANTES!', 'Villarreal C.F.', 'VIL', 'Super Héroes', 'Midfielder', '80', '93', '81', 254),
(439, 'Íñigo Martínez', 'Athletic Club', 'ATH', 'Super Crack', 'Defender', '93', '92', '73', 258),
(440, 'Koke', 'Atlético de Madrid', 'ATM', 'Super Crack', 'Midfielder', '90', '91', '86', 267),
(441, 'Saúl', 'Atlético de Madrid', 'ATM', 'Super Crack', 'Midfielder', '87', '93', '88', 268),
(442, 'Piqué', 'F.C. Barcelona', 'BAR', 'Super Crack', 'Defender', '97', '94', '76', 267),
(443, 'De Jong', 'F.C. Barcelona', 'BAR', 'Super Crack', 'Midfielder', '84', '92', '87', 263),
(444, 'Pjanic', 'F.C. Barcelona', 'BAR', 'Super Crack', 'Midfielder', '86', '89', '81', 256),
(445, 'Ansu Fati', 'F.C. Barcelona', 'BAR', 'Super Crack', 'Forward', '69', '92', '95', 256),
(446, 'Canales', 'Real Betis', 'BET', 'Super Crack', 'Midfielder', '70', '93', '92', 255),
(447, 'Campaña', 'Levante U.D.', 'LEV', 'Super Crack', 'Midfielder', '73', '91', '88', 252),
(448, 'Courtois', 'Real Madrid', 'MAD', 'Super Crack', 'Goalkeeper', '95', '93', '60', 248),
(449, 'Kroos', 'Real Madrid', 'MAD', 'Super Crack', 'Midfielder', '82', '92', '88', 262),
(450, 'Modric', 'Real Madrid', 'MAD', 'Super Crack', 'Midfielder', '74', '92', '91', 257),
(451, 'Vinícius', 'Real Madrid', 'MAD', 'Super Crack', 'Forward', '70', '90', '93', 253),
(452, 'Mikel Merino', 'Real Sociedad', 'RSO', 'Super Crack', 'Midfielder', '80', '90', '87', 257),
(453, 'Silva', 'Real Sociedad', 'RSO', 'Super Crack', 'Midfielder', '70', '93', '93', 256),
(454, 'Jesús Navas', 'Sevilla F.C.', 'SEV', 'Super Crack', 'Defender', '82', '93', '84', 259),
(455, 'Koundé', 'Sevilla F.C.', 'SEV', 'Super Crack', 'Defender', '93', '92', '69', 254),
(456, 'Ocampos', 'Sevilla F.C.', 'SEV', 'Super Crack', 'Forward', '73', '93', '93', 259),
(457, 'Maxi Gómez', 'Valencia C.F.', 'VAL', 'Super Crack', 'Forward', '72', '91', '92', 255),
(458, 'Pau Torres', 'Villarreal C.F.', 'VIL', 'Super Crack', 'Defender', '93', '91', '70', 254),
(459, 'Gerard Moreno', 'Villarreal C.F.', 'VIL', 'Super Crack', 'Forward', '71', '92', '94', 257),
(460, 'Joao Félix', 'Atlético de Madrid', 'ATM', 'Super Crack Plus', 'Midfielder', '68', '95', '96', 259),
(461, 'Joao Félix', 'Atlético de Madrid', 'ATM', 'Super Crack Plus', 'Midfielder', '68', '96', '95', 259),
(462, 'Oyarzabal', 'Real Sociedad', 'RSO', 'Super Crack Plus', 'Midfielder', '72', '94', '95', 261),
(463, 'Oyarzabal', 'Real Sociedad', 'RSO', 'Super Crack Plus', 'Midfielder', '72', '95', '94', 261),
(464, 'Oblak', 'Atlético de Madrid', 'ATM', 'Balón de Oro', 'Goalkeeper', '100', '100', '100', 300),
(465, 'Luis Suárez', 'Atlético de Madrid', 'ATM', 'Balón de Oro', 'Forward', '100', '100', '100', 300),
(466, 'Messi', 'F.C. Barcelona', 'BAR', 'Balón de Oro', 'Forward', '100', '100', '100', 300),
(467, 'Sergio Ramos', 'Real Madrid', 'MAD', 'Balón de Oro', 'Defender', '100', '100', '100', 300),
(468, 'Benzema', 'Real Madrid', 'MAD', 'Balón de Oro', 'Forward', '100', '100', '100', 300),
(469, 'Messi', 'F.C. Barcelona', 'BAR', 'Balón de Oro Excellence ', 'Forward', '59', '101', '101', 261),
(470, 'Card Invencible', 'INVENCIBLE', 'INVENCIBLE', 'Invencible', 'Defender, Midfielder, Forward', '101', '101', '101', 303),
(514, 'Williams', 'Athletic Club', 'ATH', 'Edición Limitada', 'Forward', '69', '92', '93', 254),
(515, 'Carrasco', 'Atlético de Madrid', 'ATM', 'Edición Limitada', 'Midfielder', '70', '89', '90', 249),
(516, 'Ter Stegen', 'F.C. Barcelona', 'BAR', 'Edición Limitada', 'Goalkeeper', '96', '95', '65', 256),
(517, 'Ter Stegen Firma', 'F.C. Barcelona', 'BAR', 'Edición Limitada', 'Goalkeeper', '96', '95', '65', 256),
(518, 'Jordi Alba', 'F.C. Barcelona', 'BAR', 'Edición Limitada', 'Defender', '88', '91', '84', 263),
(519, 'Coutinho', 'F.C. Barcelona', 'BAR', 'Edición Limitada', 'Midfielder', '73', '91', '90', 254),
(520, 'Griezmann', 'F.C. Barcelona', 'BAR', 'Edición Limitada', 'Forward', '67', '92', '95', 254),
(521, 'Griezmann Firma', 'F.C. Barcelona', 'BAR', 'Edición Limitada', 'Forward', '67', '92', '95', 254),
(522, 'Fekir', 'Real Betis', 'BET', 'Edición Limitada', 'Midfielder', '69', '91', '91', 251),
(523, 'Iago Aspas', 'R.C. Celta', 'CEL', 'Edición Limitada', 'Forward', '71', '94', '94', 259),
(524, 'Odegaard', 'Real Madrid', 'MAD', 'Edición Limitada', 'Midfielder', '70', '90', '92', 252),
(525, 'Odegaard Firma', 'Real Madrid', 'MAD', 'Edición Limitada', 'Midfielder', '70', '90', '92', 252),
(526, 'Hazard', 'Real Madrid', 'MAD', 'Edición Limitada', 'Forward', '70', '92', '94', 256),
(527, 'Diego Carlos', 'Sevilla F.C.', 'SEV', 'Edición Limitada', 'Defender', '93', '92', '68', 253),
(528, 'Rakitic', 'Sevilla F.C.', 'SEV', 'Edición Limitada', 'Midfielder', '81', '90', '87', 258),
(529, 'Gayà', 'Valencia C.F.', 'VAL', 'Edición Limitada', 'Defender', '88', '90', '81', 259),
(530, 'Parejo', 'Villarreal C.F.', 'VIL', 'Edición Limitada', 'Midfielder', '75', '93', '91', 259),
(531, 'Parejo Firma', 'Villarreal C.F.', 'VIL', 'Edición Limitada', 'Midfielder', '75', '93', '91', 259),
(532, 'Pedri', 'F.C. Barcelona', 'BAR', 'Edición Limitada', 'Midfielder', '71', '85', '82', 238),
(533, 'Raúl Guti', 'Elche C.F.', 'ELC', 'Edición Limitada', 'Midfielder', '77', '82', '68', 227),
(534, 'Milla', 'Granada C.F.', 'GRA', 'Edición Limitada', 'Midfielder', '72', '85', '80', 237),
(535, 'Musah', 'Valencia C.F.', 'VAL', 'Edición Limitada', 'Midfielder', '64', '82', '82', 228),
(536, 'Merino-Silva-Oyarzabal ¡FUORICLASE!', 'Real Sociedad', 'RSO', 'Edición Limitada', 'Midfielder', '70', '84', '94', 248),
(537, 'Saúl', 'Atlético de Madrid', 'ATM', 'Edición Limitada', 'Midfielder', '77', '100', '78', 255),
(538, 'Sergio Ramos', 'Real Madrid', 'MAD', 'Edición Limitada', 'Defender', '88', '100', '73', 261),
(539, 'Gerard Moreno', 'Villarreal C.F.', 'VIL', 'Edición Limitada', 'Forward', '61', '100', '84', 245),
(540, 'Joaquín', 'Real Betis', 'BET', 'Edición Limitada', 'Midfielder', '58', '101', '81', 240);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deck`
--

CREATE TABLE `deck` (
  `id_deck` int(6) NOT NULL,
  `id_user` int(6) NOT NULL,
  `cardEncoded` varchar(255) NOT NULL,
  `fecha` datetime NOT NULL,
  `nombre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `deck`
--

INSERT INTO `deck` (`id_deck`, `id_user`, `cardEncoded`, `fecha`, `nombre`) VALUES
(11, 21, '[\"469\",\"470\",\"467\",\"466\",\"468\",\"464\",\"519\",\"524\",\"520\",\"525\",\"517\",\"522\",\"516\",\"521\",\"530\",\"535\",\"532\",\"527\",\"540\",\"536\",\"526\",\"529\"]', '2022-05-19 01:41:09', 'limitado'),
(12, 22, '[\"422\",\"452\",\"451\",\"450\",\"449\",\"448\",\"453\",\"454\",\"455\",\"456\",\"457\",\"459\",\"414\",\"419\",\"421\",\"405\",\"406\",\"407\",\"395\",\"393\",\"392\",\"408\"]', '2022-05-19 01:43:48', 'fight'),
(13, 23, '[\"2\",\"3\",\"5\",\"10\",\"6\",\"11\",\"7\",\"12\",\"9\",\"8\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"20\",\"21\",\"25\",\"24\",\"26\",\"27\"]', '2022-05-19 03:49:03', 'invencible'),
(14, 23, '[\"2\",\"3\",\"5\",\"10\",\"6\",\"11\",\"7\",\"12\",\"9\",\"8\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"20\",\"21\",\"25\",\"24\",\"26\",\"27\"]', '2022-05-19 03:49:36', 'ataque-control');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingame`
--

CREATE TABLE `ingame` (
  `idGame` int(11) NOT NULL,
  `player` int(11) NOT NULL,
  `card` int(11) NOT NULL,
  `position` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ingame`
--

INSERT INTO `ingame` (`idGame`, `player`, `card`, `position`) VALUES
(0, 0, 0, ''),
(0, 0, 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidas`
--

CREATE TABLE `partidas` (
  `id` int(11) NOT NULL,
  `master` int(11) NOT NULL,
  `player2` int(11) DEFAULT NULL,
  `time` datetime NOT NULL,
  `ready` tinyint(1) NOT NULL,
  `firstTurn` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ranking`
--

CREATE TABLE `ranking` (
  `id_user` int(11) NOT NULL,
  `mmr` int(11) DEFAULT NULL,
  `games` int(11) NOT NULL,
  `win` int(11) DEFAULT NULL,
  `lose` int(11) DEFAULT NULL,
  `draw` int(11) DEFAULT NULL,
  `lastGame` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ranking`
--

INSERT INTO `ranking` (`id_user`, `mmr`, `games`, `win`, `lose`, `draw`, `lastGame`) VALUES
(21, 1100, 2, 2, 0, 0, '2022-05-19 05:44:44'),
(22, 900, 2, 0, 2, 0, '2022-05-19 05:44:44'),
(23, 1050, 1, 1, 0, 0, '2022-05-20 12:51:17'),
(24, 950, 1, 0, 1, 0, '2022-05-20 12:51:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id_user` int(6) NOT NULL,
  `user` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `apellido` varchar(180) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `email` varchar(120) NOT NULL,
  `fechaRegistro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id_user`, `user`, `password`, `nombre`, `apellido`, `fechaNacimiento`, `email`, `fechaRegistro`) VALUES
(21, 'aaa', '$2y$10$/IvXpGaIgL9T9YVFUN4smuNN81yLp5Qh9TATWApr9UXIPjVDx0MBG', 'abc', 'abc', '2022-05-19', 'aaa@prueba.es', '2022-05-19 12:09:50'),
(22, 'bbb', '$2y$10$Jp7PcZh3LkYFppjEEHSoTOBen1CJx7uSgWGr4Y9ZjvVcYBgp9rUP6', 'abc', 'abc', '2022-05-19', 'bbb@prueba.es', '2022-05-19 12:10:37'),
(23, 'admin', '$2y$10$CPp/T5s4ZumP3LIHMp3OMOG15kO5g9rmXu.9CskEC6Zne/fom5bue', 'admin', 'admin', '2022-05-19', 'admin@admin', '2022-05-19 03:23:41'),
(24, 'root', '$2y$10$DcriS5XZpxd29iV5az0La.slS7PxcdjyTcyAWq2tzwxwoR2Ra26Vm', 'root', 'root', '2025-01-01', 'root', '2022-05-20 12:49:39');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id_card`);

--
-- Indices de la tabla `deck`
--
ALTER TABLE `deck`
  ADD PRIMARY KEY (`id_deck`);

--
-- Indices de la tabla `partidas`
--
ALTER TABLE `partidas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `partidas_master_UNIQUE` (`master`);

--
-- Indices de la tabla `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`id_user`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `user` (`user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `deck`
--
ALTER TABLE `deck`
  MODIFY `id_deck` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `partidas`
--
ALTER TABLE `partidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ranking`
--
ALTER TABLE `ranking`
  ADD CONSTRAINT `ranking_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
