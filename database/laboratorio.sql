-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220530.a2456aa9a3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-09-2023 a las 19:47:52
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laboratorio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instrumentos`
--

CREATE TABLE `instrumentos` (
  `nro_inv` int(8) NOT NULL,
  `cod_rec` varchar(10) NOT NULL,
  `tipo` enum('multimetro','osciloscopio','osciloscopio_digital','fuente_dc','fuente_multifuncion','analizador_espectro','contador_universal','frecuencimetro','generador_funciones','generador_pulsos','adaptador_q','medidor_lcr','capacimetro','termometro','transformador_intensidad','ami_meter','inductancia_variable','resistencia_variable','capacitor_variable','vatimetro_banco','amperimetro_banco','voltimetro_banco','cosenofimetro','analizador_logico','kit_fibra_optica','kit_guia_ondas','vatimetro','kit_lab_volt','antena','medidor_ondas','kit_digitales') NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `modelo` varchar(20) NOT NULL,
  `sn` varchar(20) NOT NULL,
  `ab_rango` varchar(256) NOT NULL,
  `cod_manual` varchar(8) NOT NULL,
  `especificaciones` varchar(500) NOT NULL,
  `estado` enum('Fun_D','Fun_ND','Rep','Baja_B','PATRON') NOT NULL,
  `ubicacion` varchar(20) NOT NULL,
  `adicionales` varchar(500) NOT NULL,
  `fecha_ingreso` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `instrumentos`
--

INSERT INTO `instrumentos` (`nro_inv`, `cod_rec`, `tipo`, `descripcion`, `marca`, `modelo`, `sn`, `ab_rango`, `cod_manual`, `especificaciones`, `estado`, `ubicacion`, `adicionales`, `fecha_ingreso`) VALUES
(336, 'FRG12V-01', 'fuente_dc', 'Fuente Alimentacion Fija Modular', 'Power Control System', 'M218-X/2 MV 6002-1', '0336', '-12V/+12V // +5V // +30V', '', 'IFX. 1.3A', '', 'P4_11', '', '0000-00-00'),
(357, 'LV1', 'kit_fibra_optica', '', 'LAB VOLT', '91025-20', '0091000-47 01EE0001', '', '', 'Unidad base o funcionamiento independiente\r\nInterfaz con el módulo de microprocesador de 32 bits\r\nConexiones ST\r\nCable multimodo de 62,5/125 cm\r\nTransmisor de alta velocidad de 820 nm\r\nFotodiodo PIN integrado y receptor de transimpedancia\r\nCanales de comun', '', 'P4_12', '', NULL),
(500, 'FRG12V-02', 'fuente_dc', 'Fuente Alimentacion Fija Modular', 'Power Control System', 'M218-X/2 MV 6002-1', '0237', '-12V/+12V // +5V // +30V\r\n', '', 'IFX. 1.3A', '', 'P4_11', '', '0000-00-00'),
(6989, 'O2CHLE-05', 'osciloscopio', 'Osciloscopio Analógico de Banco', 'LEADER', '8041', '0057502', '40MHz', 'O_02', 'Sensibilidad: 1mV/div-5V/div. \r\nFrecuencia minima: 10Hz. \r\nFrecuencia maxima: 10MHz (1mV/div-2mV-div) o 40MHz (5mV/div-5V/div). \r\nRise time: 35ns(1mV/div-2mV-div) o 17.5(5mV/div-5V/div).\r\nImpedancia de entrada: 1Mohm.\r\nVertical modes: CH1, CH2, CHOP/ALT, A', '', 'L7_06', '', '0000-00-00'),
(6990, 'O2CHLE-04', 'osciloscopio', 'Osciloscopio Analógico de Banco', 'LEADER', '8041', '0057506', '40MHz', 'O_02', 'Sensibilidad: 1mV/div-5V/div. \r\nFrecuencia minima: 10Hz. \r\nFrecuencia maxima: 10MHz (1mV/div-2mV-div) o 40MHz (5mV/div-5V/div). \r\nRise time: 35ns(1mV/div-2mV-div) o 17.5(5mV/div-5V/div).\r\nImpedancia de entrada: 1Mohm.\r\nVertical modes: CH1, CH2, CHOP/ALT, A', '', 'L9_06', '', '0000-00-00'),
(6991, 'FMT30V-02', 'fuente_multifuncion', 'Fuente Multifunción de Banco', 'METEX', 'MS-9140', '9303814', '', 'O-06', 'Generador de funciones. 1Hz/10MHz. 1Vpp/10Vpp. Formas de onda (seno, cuadrada, triangular, seno sesgado).\r\nFuente DC. Salida superior (5V fixed, 2A). Salida del medio (15V fixed, 1A). Salida inferior (0/30V, 0/3A)\r\nMultímetro digital. Terminal de entrada 2', '', 'L7_09', '', '0000-00-00'),
(6992, 'FMT30V-08', 'fuente_multifuncion', 'Fuente Multifunción de Banco', 'METEX', 'MS-9140', '9303274', '', 'O-06', 'Generador de funciones. 1Hz/10MHz. 1Vpp/10Vpp. Formas de onda (seno, cuadrada, triangular, seno sesgado).\r\nFuente DC. Salida superior (5V fixed, 2A). Salida del medio (15V fixed, 1A). Salida inferior (0/30V, 0/3A)\r\nMultímetro digital. Terminal de entrada 2', '', 'L9_06', '', '0000-00-00'),
(6993, 'FMT30V-03', 'fuente_multifuncion', 'Fuente Multifunción de Banco', 'METEX', 'MS-9140', '9303800', '', 'O-06', 'Generador de funciones. 1Hz/10MHz. 1Vpp/10Vpp. Formas de onda (seno, cuadrada, triangular, seno sesgado).\r\nFuente DC. Salida superior (5V fixed, 2A). Salida del medio (15V fixed, 1A). Salida inferior (0/30V, 0/3A)\r\nMultímetro digital. Terminal de entrada 2', '', 'L7_06', '', '0000-00-00'),
(6994, 'FMT30V-04', 'fuente_multifuncion', 'Fuente Multifunción de Banco', 'METEX', 'MS-9140', '9303802', '', 'O-06', 'Generador de funciones. 1Hz/10MHz. 1Vpp/10Vpp. Formas de onda (seno, cuadrada, triangular, seno sesgado).\r\nFuente DC. Salida superior (5V fixed, 2A). Salida del medio (15V fixed, 1A). Salida inferior (0/30V, 0/3A)\r\nMultímetro digital. Terminal de entrada 2', '', 'L7_08', '', '0000-00-00'),
(7082, 'LABCARD1', 'analizador_logico', '', 'PC-LabCard', 'PCL-512', '9105162', '100MHz', '', '32 canales.\r\nHasta 32 timing/state data channels, 2045 bits/channel.\r\nSample rate hasta 100 MHz async, 25MHz sync.\r\nDisparo por rising/falling/both edge de la combinacion logica de 2 canales de reloj externos.\r\nLimites valores de entrada. TTL +1.5V ECL -1.', '', 'P4_12', 'LC001 (3) cables puerto serie, LC002 plaqueta, LC003 discos para instalación , LC004 manual, LC005 (3) analizador lógico, LC006 interfaz para conectar a pc.', '0000-00-00'),
(7111, 'O2CHLE-01', 'osciloscopio', 'Osciloscopio Analógico de Banco', 'LEADER', '8041', '0057516', '40MHz', 'O_02', 'Sensibilidad: 1mV/div-5V/div. \r\nFrecuencia minima: 10Hz. \r\nFrecuencia maxima: 10MHz (1mV/div-2mV-div) o 40MHz (5mV/div-5V/div). \r\nRise time: 35ns(1mV/div-2mV-div) o 17.5(5mV/div-5V/div).\r\nImpedancia de entrada: 1Mohm.\r\nVertical modes: CH1, CH2, CHOP/ALT, A', '', 'L9_03', '', '0000-00-00'),
(7113, 'O2CHLE-06', 'osciloscopio', 'Osciloscopio Analógico de Banco', 'LEADER', '8041', '0057489', '40MHz', 'O_02', 'Sensibilidad: 1mV/div-5V/div. \r\nFrecuencia minima: 10Hz. \r\nFrecuencia maxima: 10MHz (1mV/div-2mV-div) o 40MHz (5mV/div-5V/div). \r\nRise time: 35ns(1mV/div-2mV-div) o 17.5(5mV/div-5V/div).\r\nImpedancia de entrada: 1Mohm.\r\nVertical modes: CH1, CH2, CHOP/ALT, A', '', 'L9_02', '', '0000-00-00'),
(7114, 'FMT30V-01', 'fuente_multifuncion', 'Fuente Multifunción de Banco', 'METEX', 'MS-9140', '9303569', '', 'O-06', 'Generador de funciones. 1Hz/10MHz. 1Vpp/10Vpp. Formas de onda (seno, cuadrada, triangular, seno sesgado).\r\nFuente DC. Salida superior (5V fixed, 2A). Salida del medio (15V fixed, 1A). Salida inferior (0/30V, 0/3A)\r\nMultímetro digital. Terminal de entrada 2', '', 'L9_08', '', '0000-00-00'),
(7115, 'FMT30V-05', 'fuente_multifuncion', 'Fuente Multifunción de Banco', 'METEX', 'MS-9140', '9303214', '', 'O-06', 'Generador de funciones. 1Hz/10MHz. 1Vpp/10Vpp. Formas de onda (seno, cuadrada, triangular, seno sesgado).\r\nFuente DC. Salida superior (5V fixed, 2A). Salida del medio (15V fixed, 1A). Salida inferior (0/30V, 0/3A)\r\nMultímetro digital. Terminal de entrada 2', '', 'L9_02', '', '0000-00-00'),
(7116, 'FMT30V-06', 'fuente_multifuncion', 'Fuente Multifunción de Banco', 'METEX', 'MS-9140', '9303485', '', 'O-06', 'Generador de funciones. 1Hz/10MHz. 1Vpp/10Vpp. Formas de onda (seno, cuadrada, triangular, seno sesgado).\r\nFuente DC. Salida superior (5V fixed, 2A). Salida del medio (15V fixed, 1A). Salida inferior (0/30V, 0/3A)\r\nMultímetro digital. Terminal de entrada 2', '', 'L9_01', '', '0000-00-00'),
(7117, 'FMT30V-07', 'fuente_multifuncion', 'Fuente Multifunción de Banco', 'METEX', 'MS-9140', '9303734', '', 'O-06', 'Generador de funciones. 1Hz/10MHz. 1Vpp/10Vpp. Formas de onda (seno, cuadrada, triangular, seno sesgado).\r\nFuente DC. Salida superior (5V fixed, 2A). Salida del medio (15V fixed, 1A). Salida inferior (0/30V, 0/3A)\r\nMultímetro digital. Terminal de entrada 2', '', 'L9_03', '', '0000-00-00'),
(7141, 'O2CHLE-02', 'osciloscopio', 'Osciloscopio Analógico de Banco', 'LEADER', '8041', '0057493', '40MHz', 'O_02', 'Sensibilidad: 1mV/div-5V/div. \r\nFrecuencia minima: 10Hz. \r\nFrecuencia maxima: 10MHz (1mV/div-2mV-div) o 40MHz (5mV/div-5V/div). \r\nRise time: 35ns(1mV/div-2mV-div) o 17.5(5mV/div-5V/div).\r\nImpedancia de entrada: 1Mohm.\r\nVertical modes: CH1, CH2, CHOP/ALT, A', '', 'L9_01', '', '0000-00-00'),
(7142, 'O2CHLE-03', 'osciloscopio', 'Osciloscopio Analógico de Banco', 'LEADER', '8041', '0057479', '40MHz', 'O_02', 'Sensibilidad: 1mV/div-5V/div. \r\nFrecuencia minima: 10Hz. \r\nFrecuencia maxima: 10MHz (1mV/div-2mV-div) o 40MHz (5mV/div-5V/div). \r\nRise time: 35ns(1mV/div-2mV-div) o 17.5(5mV/div-5V/div).\r\nImpedancia de entrada: 1Mohm.\r\nVertical modes: CH1, CH2, CHOP/ALT, A', '', 'L9_08', '', '0000-00-00'),
(7143, 'FRDBES-01', 'frecuencimetro', 'Frecuencímetro Digital de Banco', 'ESCORT', 'EFC_3201', '20617049', '100 MHz', 'O-12', '', '', 'P4_10', '', '0000-00-00'),
(7146, 'MLCRES-01', 'medidor_lcr', 'Medidor LCR Portátil', 'ESCORT', 'ELC-130', '21014158', '', 'O-11', '', '', 'P4_02', '', '0000-00-00'),
(7147, 'CDMPES-01', 'capacimetro', 'Capacímetro Digital Rango Manual Portátil', 'ESCORT', 'EDC-110R', '', '20pf/20mf', '', '', '', 'P4_02', '', '0000-00-00'),
(7148, 'MDP3GD-01', 'multimetro', 'Multimetro digital, 3 y 1/2 digitos, Portátil', 'GoldStar', 'DM-7333', '9100051', 'Voltaje DC 200mV-1000V;Voltaje AC 200mV-750V;\r\nCorriente DC 2mA-10A; Corriente AC 2mA-10A:\r\nResistencia 200 Ω-20M Ω\r\nCapacitancia 2000pF-20uF\r\nFrecuencia 20kHz-200kHz', 'M-00054-', 'Bateria de 9 V', 'Fun_D', 'P4_02', '2 puntas de tester', '0000-00-00'),
(7149, 'MDP3GD-02', 'multimetro', 'Multimetro digital, 3 y 1/2 digitos, Portátil', 'GoldStar', 'DM-7333', '9100057', 'Voltaje DC 200mV-1000V;Voltaje AC 200mV-750V;\r\nCorriente DC 2mA-10A; Corriente AC 2mA-10A:\r\nResistencia 200 Ω-20M Ω\r\nCapacitancia 2000pF-20uF\r\nFrecuencia 20kHz-200kHz', 'M-00054-', 'Bateria de 9 V', 'Fun_D', 'P4_02', '2 puntas de tester', '0000-00-00'),
(7150, 'MDP3GD-03', 'multimetro', 'Multimetro digital, 3 y 1/2 digitos, Portátil', 'GoldStar', 'DM-7333', '9100054', 'Voltaje DC 200mV-1000V;Voltaje AC 200mV-750V;\r\nCorriente DC 2mA-10A; Corriente AC 2mA-10A:\r\nResistencia 200 Ω-20M Ω\r\nCapacitancia 2000pF-20uF\r\nFrecuencia 20kHz-200kHz', 'M-00054-', 'Bateria de 9 V', 'Fun_D', 'P4_02', '2 puntas de tester', '0000-00-00'),
(7151, 'MDP3GD-04', 'multimetro', 'Multimetro digital, 3 y 1/2 digitos', 'Multimetro digital, ', 'DM-7333', 'N/D', 'Voltaje DC 200mV-1000V;Voltaje AC 200mV-750V;\r\nCorriente DC 2mA-10A; Corriente AC 2mA-10A:\r\nResistencia 200 Ω-20M Ω\r\nCapacitancia 2000pF-20uF\r\nFrecuencia 20kHz-200kHz', 'M-00054-', 'Bateria de 9 V', 'Rep', 'P4_02', '2 puntas de tester', '0000-00-00'),
(7153, 'GFBBES-01', 'generador_funciones', 'Generador de funciones de Barrido de Banco', 'ESCORT', 'EGC_3230', '30204183', '2 MHz', 'G-00058-', '0,2 Hz a 2 MHz. Formas de onda: Pulso senoidal, cuadrada, triangular y TTL/CMOS. Simetría Variable. Compensación de CC variable. Contador de frecuencia de 10 MHz de 6 dígitos', '', 'P4_10', '', '0000-00-00'),
(7154, 'MDP3ES-01', 'multimetro', 'Generador de funciones de Barrido de Banco', 'Escort', 'EDM82B', '30109075', 'Voltaje DC 400mV-1000V;Voltaje AC 400mV-750V;\r\nCorriente DC 400uA-10A; Corriente AC 400uA-10A:\r\nResistencia 400 Ω-40M Ω\r\nCapacitancia 4nF-40uF\r\nFrecuencia 4kHz-4MHz\r\nDeteccion de temperatura -20ºC-1000ºC', 'M-00055-', 'Bateria de 9 V', 'Fun_D', 'P4_02', '2 puntas de tester', '0000-00-00'),
(12387, 'MDP3GD-05', 'multimetro', 'Multimetro digital, 3 y 1/2 digitos, Portátil', 'GoldStar', 'DM-311', '311060632', 'Voltaje DC 200mV-1000V;Voltaje AC 200mV-750V;\r\nCorriente DC 200uA-10A; Corriente AC 200uA-10A:\r\nResistencia 200 Ω-20M Ω\r\nTesteo de Baterias 1.5V y 9V', 'M-00056-', 'Bateria de 9 V', 'Fun_D', 'P4_02', '2 puntas de tester', '0000-00-00'),
(12388, 'MDP3GD-06', 'multimetro', 'Multimetro digital, 3 y 1/2 digitos, Portátil', 'GoldStar', 'DM-311', '311060646', 'Voltaje DC 200mV-1000V;Voltaje AC 200mV-750V;\r\nCorriente DC 200uA-10A; Corriente AC 200uA-10A:\r\nResistencia 200 Ω-20M Ω\r\nTesteo de Baterias 1.5V y 9V', 'M-00056-', 'Bateria de 9 V', 'Fun_D', 'P4_02', '2 puntas de tester', '0000-00-00'),
(12389, 'MDP3GD-07', 'multimetro', 'Multimetro digital, 3 y 1/2 digitos, Portátil', 'GoldStar', 'DM-311', '311060637', 'Voltaje DC 200mV-1000V;Voltaje AC 200mV-750V;\r\nCorriente DC 200uA-10A; Corriente AC 200uA-10A:\r\nResistencia 200 Ω-20M Ω\r\nTesteo de Baterias 1.5V y 9V', 'M-00056-', 'Bateria de 9 V', 'Fun_D', 'P4_02', '2 puntas de tester', '0000-00-00'),
(12390, 'MDP3GD-08', 'multimetro', 'Multimetro digital, 3 y 1/2 digitos, Portátil', 'GoldStar', 'DM-311', '311060634', 'Voltaje DC 200mV-1000V;Voltaje AC 200mV-750V;\r\nCorriente DC 200uA-10A; Corriente AC 200uA-10A:\r\nResistencia 200 Ω-20M Ω\r\nTesteo de Baterias 1.5V y 9V', 'M-00056-', 'Bateria de 9 V', 'Fun_D', 'P4_02', '2 puntas de tester', '0000-00-00'),
(12391, 'MDP3GD-09', 'multimetro', 'Multimetro digital, 3 y 1/2 digitos, Portátil', 'GoldStar', 'DM-311', '311060639', 'Voltaje DC 200mV-1000V;Voltaje AC 200mV-750V;\r\nCorriente DC 200uA-10A; Corriente AC 200uA-10A:\r\nResistencia 200 Ω-20M Ω\r\nTesteo de Baterias 1.5V y 9V', 'M-00056-', 'Bateria de 9 V', 'Fun_D', 'P4_02', '2 puntas de tester', '0000-00-00'),
(12392, 'MDP3GD-10', 'multimetro', 'Multimetro digital, 3 y 1/2 digitos, Portátil', 'GoldStar', 'DM-311', '311060642', 'Voltaje DC 200mV-1000V;Voltaje AC 200mV-750V;\r\nCorriente DC 200uA-10A; Corriente AC 200uA-10A:\r\nResistencia 200 Ω-20M Ω\r\nTesteo de Baterias 1.5V y 9V', 'M-00056-', 'Bateria de 9 V', 'Fun_D', 'P4_02', '2 puntas de tester', '0000-00-00'),
(12393, 'MDP3GD-11', 'multimetro', 'Multimetro digital, 3 y 1/2 digitos, Portátil', 'GoldStar', 'DM-311', '311060628', 'Voltaje DC 200mV-1000V;Voltaje AC 200mV-750V;\r\nCorriente DC 200uA-10A; Corriente AC 200uA-10A:\r\nResistencia 200 Ω-20M Ω\r\nTesteo de Baterias 1.5V y 9V', 'M-00056-', 'Bateria de 9 V', 'Fun_D', 'P4_02', '2 puntas de tester', '0000-00-00'),
(12394, 'MDP3GD-12', 'multimetro', 'Multimetro digital, 3 y 1/2 digitos, Portátil', 'GoldStar', 'DM-311', '311060635', 'Voltaje DC 200mV-1000V;Voltaje AC 200mV-750V;\r\nCorriente DC 200uA-10A; Corriente AC 200uA-10A:\r\nResistencia 200 Ω-20M Ω\r\nTesteo de Baterias 1.5V y 9V', 'M-00056-', 'Bateria de 9 V', 'Fun_D', 'P4_02', '2 puntas de tester', '0000-00-00'),
(12395, 'MDP3GD-13', 'multimetro', 'Multimetro digital, 3 y 1/2 digitos, Portátil', 'GoldStar', 'DM-311', '311060631', 'Voltaje DC 200mV-1000V;Voltaje AC 200mV-750V;\r\nCorriente DC 200uA-10A; Corriente AC 200uA-10A:\r\nResistencia 200 Ω-20M Ω\r\nTesteo de Baterias 1.5V y 9V', 'M-00056-', 'Bateria de 9 V', 'Fun_D', 'P4_02', '2 puntas de tester', '0000-00-00'),
(12396, 'MDP3GD-14', 'multimetro', 'Multimetro digital, 3 y 1/2 digitos, Portátil', 'GoldStar', 'DM-311', '311060629', 'Voltaje DC 200mV-1000V;Voltaje AC 200mV-750V;\r\nCorriente DC 200uA-10A; Corriente AC 200uA-10A:\r\nResistencia 200 Ω-20M Ω\r\nTesteo de Baterias 1.5V y 9V', 'M-00056-', 'Bateria de 9 V', 'Fun_D', 'P4_02', '2 puntas de tester', '0000-00-00'),
(12611, 'GFBBTK-01', 'generador_funciones', 'Generador de funciones de Banco', 'TEKTRONIX', 'CFG250', 'CFG-250TW51789', '2 MHz', 'G-00059-', '2MHz. Forma de onda: senoidal, triangular, cuadrada.', '', 'P4_04', '', '0000-00-00'),
(12612, 'GFBBTK-02', 'generador_funciones', 'Generador de funciones de Banco', 'TEKTRONIX', 'CFG250', 'CFG-250TW51786', '2 MHz', 'G-00059-', '2MHz. Forma de onda: senoidal, triangular, cuadrada.', '', 'L6_09', '', '0000-00-00'),
(12613, 'GFBBTK-03', 'generador_funciones', 'Generador de funciones de Banco', 'TEKTRONIX', 'CFG250', 'CFG-250TW51788', '2 MHz', 'G-00059-', '2MHz. Forma de onda: senoidal, triangular, cuadrada.', '', 'L6_07', '', '0000-00-00'),
(12614, 'GFBBTK-04', 'generador_funciones', 'Generador de funciones de Banco', 'TEKTRONIX', 'CFG250', 'CFG-250TW51787', '2 MHz', 'G-00059-', '2MHz. Forma de onda: senoidal, triangular, cuadrada.', '', 'P4_04', '', '0000-00-00'),
(12615, 'GFBBTK-05', 'generador_funciones', 'Generador de funciones de Banco', 'TEKTRONIX', 'CFG250', 'CFG-250TW51785', '2 MHz', 'G-00059-', '2MHz. Forma de onda: senoidal, triangular, cuadrada.', '', 'P4_04', '', '0000-00-00'),
(12623, 'AEDBHP-01', 'analizador_espectro', 'Analizador de Espectro Digital de Banco', 'HP', '8591E', '3624A053747', '9KHz/1.8GHz', 'V-00023-', '', '', 'L6_01', '', '0000-00-00'),
(12624, 'ALDBHP-01', 'analizador_logico', 'Analizador Lógico de Banco', 'HP', '1664A', 'US35240504', '', '', '34 canales\r\nEstado de 50 MHz, análisis de tiempo de 500 MHz\r\nMemoria de estado de 4K por canal, 8K en modos de medio canal.\r\nTemporización convencional: 250 MHz todos los canales, 500 MHz, medios canales.\r\nTemporización de transición: 125 MHz todos los can', '', 'P4_13', 'Acc 001: ficha conector. Acc 002: tornillos(4),separador(2). Acc 003: tornillo(2). Acc 004: cable alimentación. Acc 005: conector. Acc 006 (3): conectores dupont macho-hembra (5). Acc 007:  Micro Grabber Clips (20). Acc 008: POD 2 DATA + J CLOCK. Acc 009: Manual + disket instalación. Acc 010: POD1 DATA + J CLOCK. Acc 011: mouse', '0000-00-00'),
(13342, 'FHP25V-08', 'fuente_dc', 'Fuente Alimentación Reg de Banco', 'HP', 'E3631A', 'KR61602013', '-25V/+25V', 'F-00002-', 'Triple Salida 1A', '', 'P4_11', '', '0000-00-00'),
(13343, 'FHP25V-01', 'fuente_dc', 'Fuente Alimentación Reg de Banco', 'HP', 'E3631A', 'KR61601836', '-25V/+25V', 'F-00002-', 'Triple Salida 1A', '', 'L7_04', '', '0000-00-00'),
(13344, 'FHP25V-04', 'fuente_dc', 'Fuente Alimentación Reg de Banco', 'HP', 'E3631A', 'KR61601831', '-25V/+25V', 'F-00002-', 'Triple Salida 1A', '', 'L6_11', '', '0000-00-00'),
(13345, 'FHP25V-03', 'fuente_dc', 'Fuente Alimentación Reg de Banco', 'HP', 'E3631A', 'KR61601829', '-25V/+25V', 'F-00002-', 'Triple Salida 1A', '', 'L6_09', '', '0000-00-00'),
(13346, 'FHP25V-10', 'fuente_dc', 'Fuente Alimentación Reg de Banco', 'HP', 'E3631A', 'KR61601830', '-25V/+25V', 'F-00002-', 'Triple Salida 1A', '', 'P4_11', '', '0000-00-00'),
(13486, 'O2CHHP-06', 'osciloscopio', 'Osciloscopio Digital de Banco', 'HP', '54603B', 'US36181170', '60MHz', 'O-00005-', 'Ancho de banda de 60 MHz. 2 canales. Velocidades de barrido de 5 s/div a 2 ns/div. Tiempo de subida <3,5 ns. Tasa de actualización de pantalla de hasta 1,5 millones de puntos por segundo. Tasa de muestreo máx. - disparo único - 20 MSa/s; repetitivo - 10 GS', 'PATRON', 'P4_17', '', '0000-00-00'),
(13487, 'O2CHHP-02', 'osciloscopio', 'Osciloscopio Digital de Banco', 'HP', '54603B', 'US36181168', '60MHz', 'O-00005-', 'Ancho de banda de 60 MHz. 2 canales. Velocidades de barrido de 5 s/div a 2 ns/div. Tiempo de subida <3,5 ns. Tasa de actualización de pantalla de hasta 1,5 millones de puntos por segundo. Tasa de muestreo máx. - disparo único - 20 MSa/s; repetitivo - 10 GS', '', 'L7_04', '', '0000-00-00'),
(13488, 'O2CHHP-03', 'osciloscopio', 'Osciloscopio Digital de Banco', 'HP', '54603B', 'US36181177', '60MHz', 'O-00005-', 'Ancho de banda de 60 MHz. 2 canales. Velocidades de barrido de 5 s/div a 2 ns/div. Tiempo de subida <3,5 ns. Tasa de actualización de pantalla de hasta 1,5 millones de puntos por segundo. Tasa de muestreo máx. - disparo único - 20 MSa/s; repetitivo - 10 GS', '', 'L7_08', '', '0000-00-00'),
(13489, 'O2CHHP-04', 'osciloscopio', 'Osciloscopio Digital de Banco', 'HP', '54603B', 'US36181164', '60MHz', 'O-00005-', 'Ancho de banda de 60 MHz. 2 canales. Velocidades de barrido de 5 s/div a 2 ns/div. Tiempo de subida <3,5 ns. Tasa de actualización de pantalla de hasta 1,5 millones de puntos por segundo. Tasa de muestreo máx. - disparo único - 20 MSa/s; repetitivo - 10 GS', '', 'L7_09', '', '0000-00-00'),
(13490, 'O2CHHP-05', 'osciloscopio', 'Osciloscopio Digital de BancoOsciloscopio Digital ', 'HP', '54603B', 'US36181172', '60MHz', 'O-00005-', 'Ancho de banda de 60 MHz. 2 canales. Velocidades de barrido de 5 s/div a 2 ns/div. Tiempo de subida <3,5 ns. Tasa de actualización de pantalla de hasta 1,5 millones de puntos por segundo. Tasa de muestreo máx. - disparo único - 20 MSa/s; repetitivo - 10 GS', '', 'L7_02', '', '0000-00-00'),
(13506, 'CUFBHP-04', 'contador_universal', 'Contador Universal Frecuencímetro de Banco', 'HP', '53131A', '3546A13638', '225 MHz', 'C-00007-', 'Resolución de frecuencia de 10 dígitos por segundo. Resolución de intervalo de tiempo de 500 ps. Funciones de prueba y análisis. Velocidad de medición GPIB de hasta 200 mediciones por segundo. HP-IB estándar y RS-232 de solo conversación.', '', 'P4_10', '', '0000-00-00'),
(13507, 'CUFBHP-05', 'contador_universal', 'Contador Universal Frecuencímetro de Banco', 'HP', '53131A', '3546A13641', '225 MHz', 'C-00007-', 'Resolución de frecuencia de 10 dígitos por segundo. Resolución de intervalo de tiempo de 500 ps. Funciones de prueba y análisis. Velocidad de medición GPIB de hasta 200 mediciones por segundo. HP-IB estándar y RS-232 de solo conversación.', '', 'P4_10', '', '0000-00-00'),
(13508, 'CUFBHP-06', 'contador_universal', 'Contador Universal Frecuencímetro de Banco', 'HP', '53131A', '3546A13639', '225 MHz', 'C-00007-', 'Resolución de frecuencia de 10 dígitos por segundo. Resolución de intervalo de tiempo de 500 ps. Funciones de prueba y análisis. Velocidad de medición GPIB de hasta 200 mediciones por segundo. HP-IB estándar y RS-232 de solo conversación.', '', 'P4_10', '', '0000-00-00'),
(15705, 'O2CHTK-01', 'osciloscopio', 'Osciloscopio Digital de Banco', 'TEKTRONIK', 'TDS220', 'B027748', '100MHz', 'O-00052-', '100MHz. 1GSa/S. 2 Canales', '', 'L6_11', '', '0000-00-00'),
(15706, 'O2CHTK-02', 'osciloscopio', 'Osciloscopio Digital de Banco', 'TEKTRONIK', 'TDS220', 'B027754', '100MHz', 'O-00052-', '100MHz. 1GSa/S. 2 Canales', '', 'L6_03', '', '0000-00-00'),
(15707, 'O2CHTK-03', 'osciloscopio', 'Osciloscopio Digital de Banco', 'TEKTRONIK', 'TDS220', 'B027756', '100MHz', 'O-00052-', '100MHz. 1GSa/S. 2 Canales', '', 'L6_05', '', '0000-00-00'),
(15708, 'O2CHTK-04', 'osciloscopio', 'Osciloscopio Digital de Banco', 'TEKTRONIX', 'TDS220', 'B027757', '100MHz', 'O-00052-', '100MHz. 1GSa/S. 2 Canales', '', 'L6_09', '', '0000-00-00'),
(15709, 'O2CHTK-05', 'osciloscopio', 'Osciloscopio Digital de Banco', 'TEKTRONIK', 'TDS220', 'B027766', '100MHz', 'O-00052-', '100MHz. 1GSa/S. 2 Canales', '', 'L6_07', '', '0000-00-00'),
(15723, 'LRL1', 'kit_guia_ondas', '', 'LRL', 'LRL 510A', '1-800-358-8378', '', '', 'Modelo 510A. SOLID STATE. Fuente Klystron ', '', 'P4_13', '', '0000-00-00'),
(15724, 'LRL2', 'kit_guia_ondas', '', 'LRL', 'LRL 550', '659', '', '', 'Accesorios cajon 1: bolsas de tornillos, \r\n LRL504, LRL512, LRL513B, LRL513A, LRL515, LRL506(2)\r\nAccesorios cajon 2: LRL502(2), LRL516, LRL508, LRL507, LRL511, LRL531(2), LRL518, LRL517, LRL505, LRL521, LRL532 \r\nAccesorios cajon 3: LRL514(2), LRL523(4), LR', '', 'P4_13', '', '0000-00-00'),
(15784, 'GFBBTK-06', 'generador_funciones', 'Generador de funciones de Banco', 'TEKTRONIX', 'CFG253', 'CFG-253TW53700', '3 MHz', 'G-00060-', '3MHz. Forma de onda: senoidal, triangular, cuadrada.', '', 'L6_03', '', '0000-00-00'),
(15785, 'GFBBTK-07', 'generador_funciones', 'Generador de funciones de Banco', 'TEKTRONIX', 'CFG253', 'CFG-253TW53697', '3 MHz', 'G-00060-', '3MHz. Forma de onda: senoidal, triangular, cuadrada.', '', 'L7_02', '', '0000-00-00'),
(15786, 'GFBBTK-08', 'generador_funciones', 'Generador de funciones de Banco', 'TEKTRONIX', 'CFG253', 'CFG-253TW53698', '3 MHz', 'G-00060-', '3MHz. Forma de onda: senoidal, triangular, cuadrada.', '', 'L7_04', '', '0000-00-00'),
(15787, 'GFBBTK-09', 'generador_funciones', 'Generador de funciones de Banco', 'TEKTRONIX', 'CFG253', 'CFG-253TW53696', '3 MHz', 'G-00060-', '3MHz. Forma de onda: senoidal, triangular, cuadrada.', '', 'L6_05', '', '0000-00-00'),
(15788, 'GFBBTK-10', 'generador_funciones', 'Generador de funciones de Banco', 'TEKTRONIX', 'CFG253', 'CFG-253TW53699', '3 MHz', 'G-00060-', '3MHz. Forma de onda: senoidal, triangular, cuadrada.', '', 'L6_11', '', '0000-00-00'),
(15789, 'O2CHTK-06', 'osciloscopio', 'Osciloscopio Digital de Banco', 'TEKTRONIK', 'TDS360', 'B018624', '200MHz', 'O-00053-', '200MHz. 1GSa/S. 2 canales', '', 'P4_03', '', '0000-00-00'),
(15862, 'MDB6HP-02', 'multimetro', 'Multimetro digital, 6 y 1/2 digitos de Banco', 'HP', '34401A', 'US36048329', '1000V-3A', '', '6.5 dígitos de resolución. 10 funciones de medición: tensión CC/CA, corriente CC/CA, resistencia de 2 y 4 hilos, diodo, continuidad, frecuencia, período. Precisión básica: 0.0035 % CC, 0.06 % CA. Voltaje de entrada máximo de 1000 V, corriente de entrada máxima de 3 A.', 'PATRON', 'P4_17', '', NULL),
(15863, 'MDB6HP-01', 'multimetro', 'Multimetro digital, 6 y 1/2 digitos de Banco', 'HP', '34401A', 'US36048424', '1000V-3A', '', '6.5 dígitos de resolución. 10 funciones de medición: tensión CC/CA, corriente CC/CA, resistencia de 2 y 4 hilos, diodo, continuidad, frecuencia, período. Precisión básica: 0.0035 % CC, 0.06 % CA. Voltaje de entrada máximo de 1000 V, corriente de entrada máxima de 3 A.', '', 'P4_02', '', NULL),
(15864, 'FHP20V-01', 'fuente_dc', 'Fuente Alimentación Reg de Banco', 'HP', '6652A', 'US36400104', '0/+20V', '', 'IFX. Salida 25A', '', 'P4_11', '', '0000-00-00'),
(15865, 'MLCRHP-02', 'medidor_lcr', 'Medidor LCR de Banco', 'HP', '4285A', '3041J02300', '25KHz/30MHz', 'V-00019-', '75 kHz a 30 MHz, 100 Hz solucion\r\nFunciones matematicas: La desviación y el porcentaje de desviación de\r\nvalores de medición a partir de un valor de referencia programable.\r\nEquivalent measurement circuit: Parallel and series\r\nRanging: Auto and manual (hol', '', 'P4_10', '', '0000-00-00'),
(15866, 'MLCRHP-01', 'medidor_lcr', 'Medidor LCR de Banco', 'HP', '4284A', '2940J09414', '20KHz/1MHz', 'V-00019-', 'Funciones matematicas: La desviación y el porcentaje de desviación de\r\nvalores de medición a partir de un valor de referencia programable.\r\nEquivalent measurement circuit: Parallel and series\r\nRanging: Auto and manual (hold/up/down)\r\nTrigger: Internal, ext', '', 'P4_10', '', '0000-00-00'),
(15867, 'GPUBHP-01', 'generador_pulsos', 'Generador de Pulsos de Banco', 'HP', '8110A', 'DE35103971', '150 MHz', 'G-00034-', '150 MHz. Genera todos los pulsos estándar, patrones digitales y formas de onda multinivel para probar CMOS y otros diseños digitales.\r\nComandos de programación SCPI.\r\nLa alta integridad de pulso con resolución de tiempo 10 ps y hasta 20 ps RMS jitter con e', '', 'P4_10', 'G-00037-00 Guía oper', '0000-00-00'),
(15868, 'CUFBHP-07', 'contador_universal', 'Contador Universal Frecuencímetro de Banco', 'HP', '53131A', '3736A20066', '225 MHz', 'C-00007-', 'Resolución de frecuencia de 10 dígitos por segundo. Resolución de intervalo de tiempo de 500 ps. Funciones de prueba y análisis. Velocidad de medición GPIB de hasta 200 mediciones por segundo. HP-IB estándar y RS-232 de solo conversación.', '', 'P4_10', '', '0000-00-00'),
(15869, 'CUFBHP-01', 'contador_universal', 'Contador Universal Frecuencímetro de Banco', 'HP', '53131A', '3736A20151', '225 MHz', 'C-00007-', 'Resolución de frecuencia de 10 dígitos por segundo. Resolución de intervalo de tiempo de 500 ps. Funciones de prueba y análisis. Velocidad de medición GPIB de hasta 200 mediciones por segundo. HP-IB estándar y RS-232 de solo conversación.', '', 'P4_10', '', '0000-00-00'),
(15870, 'CUFHP', 'contador_universal', 'Contador Universal Frecuencímetro de Banco', 'HP', '53131A', '3546A13638', '225 MHz', 'C-00007-', 'Resolución de frecuencia de 10 dígitos por segundo. Resolución de intervalo de tiempo de 500 ps. Funciones de prueba y análisis. Velocidad de medición GPIB de hasta 200 mediciones por segundo. HP-IB estándar y RS-232 de solo conversación.', 'PATRON', 'P4_17', '', '0000-00-00'),
(15871, 'CUFBHP-02', 'contador_universal', 'Contador Universal Frecuencímetro de Banco', 'HP', '53131A', '3736A19948', '225 MHz', 'C-00007-', 'Resolución de frecuencia de 10 dígitos por segundo. Resolución de intervalo de tiempo de 500 ps. Funciones de prueba y análisis. Velocidad de medición GPIB de hasta 200 mediciones por segundo. HP-IB estándar y RS-232 de solo conversación.', '', 'P4_10', '', '0000-00-00'),
(15872, 'CUFBHP-03', 'contador_universal', 'Contador Universal Frecuencímetro de Banco', 'HP', '53131A', '3736A19951', '225 MHz', 'C-00007-', 'Resolución de frecuencia de 10 dígitos por segundo. Resolución de intervalo de tiempo de 500 ps. Funciones de prueba y análisis. Velocidad de medición GPIB de hasta 200 mediciones por segundo. HP-IB estándar y RS-232 de solo conversación.', '', 'P4_10', '', '0000-00-00'),
(15873, 'FHP25V-02', 'fuente_dc', 'Fuente Alimentación Reg de Banco', 'HP', 'E3631A', 'KR75311143', '-25V/+25V', 'F-00002-', 'Triple salida 1A', '', 'L6_07', '', '0000-00-00'),
(15874, 'FHP25V-05', 'fuente_dc', 'Fuente Alimentación Reg de Banco', 'HP', 'E3631A', 'KR75311155', '-25V/+25V', 'F-00002-', 'Triple Salida 1A', '', 'L6_03', '', '0000-00-00'),
(15875, 'FHP25V-07', 'fuente_dc', 'Fuente Alimentación Reg de Banco', 'HP', 'E3631A', 'KR75311138', '-25V/+25V', 'F-00002-', 'Triple Salida 1A', '', 'L6_05', '', '0000-00-00'),
(15876, 'FHP25V-06', 'fuente_dc', 'Fuente Alimentación Reg de Banco', 'HP', 'E3631A', 'KR75311153', '-25V/+25V', 'F-00002-', 'Triple Salida 1A', '', 'L7_02', '', '0000-00-00'),
(15877, 'FHP25V-09', 'fuente_dc', 'Fuente Alimentación Reg de Banco', 'HP', 'E3631A', 'KR75311144', '-25V/+25V', 'F-00002-', 'Triple Salida 1A', '', 'P4_11', '', '0000-00-00'),
(15878, 'FHP35V-02', 'fuente_dc', 'Fuente Alimentación Reg de Banco', 'HP', '6643A', 'US36400195', '0/+35V', '', 'IFX. Salida 6A', '', 'P4_11', '', '0000-00-00'),
(15879, 'FHP35V-03', 'fuente_dc', 'Fuente Alimentación Reg de Banco', 'HP', '6643A', 'US36400199', '0/+35V', '', 'IFX. Salida 6A', '', 'P4_11', '', '0000-00-00'),
(15880, 'FHP35V-01', 'fuente_dc', 'Fuente Alimentación Reg de Banco', 'HP', '6643A', 'US36400198', '0/+35V', '', 'IFX. Salida 6A', '', 'P4_11', '', '0000-00-00'),
(15881, 'GSBBHP-01', 'generador_funciones', 'Generador de señales RF de Banco', 'HP', '8647A', '3349A04368', '250 kHz-1000 MHz\r\n', 'G-00036-', 'Resolución Configurable 1Hz. Pantalla: 10 Hz. Precisión: típicamente ±3x10–6 x frecuencia portadora (Hz). Velocidad de conmutación (típica): <120 ms.', '', 'L6_01', 'G-00035-00 Guía oper', '0000-00-00'),
(16088, 'WARFBD-01', 'vatimetro', 'Vatímetro Analógico Multirango RF', 'Bird', '4410A', '11641', '300mW-10kW', '', 'Impedancia 50 ohms\r\nPresicion 5%\r\nRango: 300 mW a 1 kW o 2 W a 10 kW. Escala seleccionable\r\nFrecuencia de trabajo: 200 kHz a 2.3 GHz\r\nAlimentacion: bateria de 9V\r\n', '', 'P4_04', '', '0000-00-00'),
(16090, 'WARFBDX01', 'vatimetro', 'Accesorio Vatímetro Analógico Multirango RF', 'Bird', '4275-020', '', '20MHz-1000MHz', '', 'Accesorio Vatimetro 4410A\r\nMuestreador de señal\r\nRango de atenuación de 35 a 80 dB por debajo de la potencia principal. \r\nProduce una muestra no direccional no rectificada en el puerto BNC que es ajustable. Una vez ajustada, la configuración se puede bloqu', '', 'P4_04', '', '0000-00-00'),
(30106, 'FHK400-03', 'fuente_dc', 'Fuente Alimentación Reg de Banco', 'HEATHKIT', 'IP 17 SER', '53915A/702', '400V', '', '0/400V.\r\n100mA cont. 125 mA max.', '', 'P4_11', '', '0000-00-00'),
(30107, 'FHK400-02', 'fuente_dc', 'Fuente Alimentación Reg de Banco', 'HEATHKIT', 'IP 17 SER', '53915A/698', '400V', '', '0/400V.\r\n100mA cont. 125 mA max.', '', 'P4_11', '', '0000-00-00'),
(30108, 'FRT15V-01', 'fuente_dc', 'Fuente Alimentacion Fija Regulada', 'ORT', 'RT 5-15 SER 605', '03360212111830300006', '+-5V/+-15V', '', '\"Doble salida -/5V 1A\",\"Doble salida -/15V 1A\"', '', 'P4_11', '', '0000-00-00'),
(30109, 'FRT15V-01', 'fuente_dc', 'Fuente Alimentacion Fija Regulada', 'ORT', 'RT 5-15 SER 605', '03360212111830300006', '+-5V/+-15V', '', '\"Doble salida -/5V 1A\",\"Doble salida -/15V 1A\"', '', 'P4_11', '', '0000-00-00'),
(30110, 'GO1', 'transformador_intensidad', '', 'GOERZ', 'GE 4461', '92354', '', '', '5VA - 50Hz', '', 'P4_04', '', '0000-00-00'),
(30111, 'GO2', 'transformador_intensidad', '', 'GOERZ', 'GE 4461', '92386', '', '', '5VA - 50Hz', '', 'P4_04', '', '0000-00-00'),
(30112, 'GO3', 'transformador_intensidad', '', 'GOERZ', 'GE 4461', '94126', '', '', '5VA - 50Hz', '', 'P4_04', '', '0000-00-00'),
(30113, 'GO4', 'transformador_intensidad', '', 'GOERZ', 'GE 4461', '94151', '', '', '5VA - 50Hz', '', 'P4_04', '', '0000-00-00'),
(30115, 'GPUBHP-02', 'generador_pulsos', 'Generador de Pulsos de Banco', 'HP', '8011A', '1452A12042', '20 MHz', 'G-00034-', '20MHz. Trigger externo o manual. Amplitud de pulso hasta 16v. Ancho de pulso desde 25ns a 100ms o del 50% seleccionando la opcion SQUARE WAVE. Polaridad positiva, negativa o simetrica. ', '', 'P4_10', '', '0000-00-00'),
(30554, 'MDP3GI-01', 'multimetro', 'Multimetro digital, 3 y 3/4 digitos, Portátil', 'GW Instek', 'GDM-394', 'UG170506', 'Voltaje DC 400mV-1000V;Voltaje AC 4V-750V;\r\nCorriente DC 400uA-10A; Corriente AC 400uA-10A:\r\nResistencia 400 Ω-40M Ω\r\nCapacitancia 40nF-100uF\r\nFrecuencia 10Hz-10MHz\r\nMide continuidad\r\nTestea diodos\r\nDeteccion de temperatura -40ºC-1000ºC\r\n', 'M-00057-', 'Bateria de 9 V', 'Fun_D', 'P4_02', '2 puntas de tester', '0000-00-00'),
(30555, 'MDP3GI-02', 'multimetro', 'Multimetro digital, 3 y 3/4 digitos, Portátil', 'GW Instek', 'GDM-394', 'UG170504', 'Voltaje DC 400mV-1000V;Voltaje AC 4V-750V;\r\nCorriente DC 400uA-10A; Corriente AC 400uA-10A:\r\nResistencia 400 Ω-40M Ω\r\nCapacitancia 40nF-100uF\r\nFrecuencia 10Hz-10MHz\r\nMide continuidad\r\nTestea diodos\r\nDeteccion de temperatura -40ºC-1000ºC\r\n', 'M-00057-', 'Bateria de 9 V', 'Fun_D', 'P4_02', '2 puntas de tester', '0000-00-00'),
(30556, 'MDP3GI-03', 'multimetro', 'Multimetro digital, 3 y 3/4 digitos, Portátil', 'GW Instek', 'GDM-394', 'UG170508', 'Voltaje DC 400mV-1000V;Voltaje AC 4V-750V;\r\nCorriente DC 400uA-10A; Corriente AC 400uA-10A:\r\nResistencia 400 Ω-40M Ω\r\nCapacitancia 40nF-100uF\r\nFrecuencia 10Hz-10MHz\r\nMide continuidad\r\nTestea diodos\r\nDeteccion de temperatura -40ºC-1000ºC\r\n', 'M-00057-', 'Bateria de 9 V', 'Fun_D', 'P4_02', '2 puntas de tester', '0000-00-00'),
(30557, 'MDP3GI-04', 'multimetro', 'Multimetro digital, 3 y 3/4 digitos, Portátil', 'GW Instek', 'GDM-394', 'UG170502', 'Voltaje DC 400mV-1000V;Voltaje AC 4V-750V;\r\nCorriente DC 400uA-10A; Corriente AC 400uA-10A:\r\nResistencia 400 Ω-40M Ω\r\nCapacitancia 40nF-100uF\r\nFrecuencia 10Hz-10MHz\r\nMide continuidad\r\nTestea diodos\r\nDeteccion de temperatura -40ºC-1000ºC\r\n', 'M-00057-', 'Bateria de 9 V', 'Fun_D', 'P4_02', '2 puntas de tester', '0000-00-00'),
(30558, 'MDP3GI-05', 'multimetro', 'Multimetro digital, 3 y 3/4 digitos, Portátil', 'GW Instek', 'GDM-394', 'UG170924', 'Voltaje DC 400mV-1000V;Voltaje AC 4V-750V;\r\nCorriente DC 400uA-10A; Corriente AC 400uA-10A:\r\nResistencia 400 Ω-40M Ω\r\nCapacitancia 40nF-100uF\r\nFrecuencia 10Hz-10MHz\r\nMide continuidad\r\nTestea diodos\r\nDeteccion de temperatura -40ºC-1000ºC\r\n', 'M-00057-', 'Bateria de 9 V', 'Fun_D', 'P4_02', '2 puntas de tester', '0000-00-00'),
(30559, 'MDP3GI-06', 'multimetro', 'Multimetro digital, 3 y 3/4 digitos, Portátil', 'GW Instek', 'GDM-394', 'UG170925', 'Voltaje DC 400mV-1000V;Voltaje AC 4V-750V;\r\nCorriente DC 400uA-10A; Corriente AC 400uA-10A:\r\nResistencia 400 Ω-40M Ω\r\nCapacitancia 40nF-100uF\r\nFrecuencia 10Hz-10MHz\r\nMide continuidad\r\nTestea diodos\r\nDeteccion de temperatura -40ºC-1000ºC\r\n', 'M-00057-', 'Bateria de 9 V', 'Fun_D', 'P4_02', '2 puntas de tester', '0000-00-00'),
(30560, 'MDP3GI-07', 'multimetro', 'Multimetro digital, 3 y 3/4 digitos, Portátil', 'GW Instek', 'GDM-394', 'UG170507', 'Voltaje DC 400mV-1000V;Voltaje AC 4V-750V;\r\nCorriente DC 400uA-10A; Corriente AC 400uA-10A:\r\nResistencia 400 Ω-40M Ω\r\nCapacitancia 40nF-100uF\r\nFrecuencia 10Hz-10MHz\r\nMide continuidad\r\nTestea diodos\r\nDeteccion de temperatura -40ºC-1000ºC\r\n', 'M-00057-', 'Bateria de 9 V', 'Fun_D', 'P4_02', '2 puntas de tester', '0000-00-00'),
(30561, 'MDP3GI-09', 'multimetro', 'Multimetro digital, 3 y 3/4 digitos, Portátil', 'GW Instek', 'GDM-394', 'UG170505', 'Voltaje DC 400mV-1000V;Voltaje AC 4V-750V;\r\nCorriente DC 400uA-10A; Corriente AC 400uA-10A:\r\nResistencia 400 Ω-40M Ω\r\nCapacitancia 40nF-100uF\r\nFrecuencia 10Hz-10MHz\r\nMide continuidad\r\nTestea diodos\r\nDeteccion de temperatura -40ºC-1000ºC\r\n', 'M-00057-', 'Bateria de 9 V', 'Fun_D', 'P4_02', '2 puntas de tester', '0000-00-00'),
(30563, 'MDP3GI-08', 'multimetro', 'Multimetro digital, 3 y 3/4 digitos, Portátil', 'GW Instek', 'GDM-394', 'UG170501', 'Voltaje DC 400mV-1000V;Voltaje AC 4V-750V;\r\nCorriente DC 400uA-10A; Corriente AC 400uA-10A:\r\nResistencia 400 Ω-40M Ω\r\nCapacitancia 40nF-100uF\r\nFrecuencia 10Hz-10MHz\r\nMide continuidad\r\nTestea diodos\r\nDeteccion de temperatura -40ºC-1000ºC\r\n', 'M-00057-', 'Bateria de 9 V', 'Fun_D', 'P4_02', '2 puntas de tester', '0000-00-00'),
(30564, 'MDP3GI-10', 'multimetro', 'Multimetro digital, 3 y 3/4 digitos, Portátil', 'GW Instek', 'GDM-394', 'UG170510', 'Voltaje DC 400mV-1000V;Voltaje AC 4V-750V;\r\nCorriente DC 400uA-10A; Corriente AC 400uA-10A:\r\nResistencia 400 Ω-40M Ω\r\nCapacitancia 40nF-100uF\r\nFrecuencia 10Hz-10MHz\r\nMide continuidad\r\nTestea diodos\r\nDeteccion de temperatura -40ºC-1000ºC\r\n', 'M-00057-', 'Bateria de 9 V', 'Fun_D', 'P4_02', '2 puntas de tester', '0000-00-00'),
(30565, 'MDP3GI-11', 'multimetro', 'Multimetro digital, 3 y 3/4 digitos, Portátil', 'GW Instek', 'GDM-394', 'UG170926', 'Voltaje DC 400mV-1000V;Voltaje AC 4V-750V;\r\nCorriente DC 400uA-10A; Corriente AC 400uA-10A:\r\nResistencia 400 Ω-40M Ω\r\nCapacitancia 40nF-100uF\r\nFrecuencia 10Hz-10MHz\r\nMide continuidad\r\nTestea diodos\r\nDeteccion de temperatura -40ºC-1000ºC\r\n', 'M-00057-', 'Bateria de 9 V', 'Fun_D', 'P4_02', '2 puntas de tester', '0000-00-00'),
(37921, 'O4CHRG-01', 'osciloscopio', 'Osciloscopio Digital de Banco', 'RIGOL', 'DS1104B', 'DS1BC130700017', '100 MHz', '', '100MHz. 2GSa/S. 4 Canales', '', 'P4_03', '', '0000-00-00'),
(37922, 'GOBBGI-01', 'generador_funciones', 'Generador de forma de onda arbitraria de Banco', 'GW Instek', 'AFG-3051', 'EL121765', '50 MHz', 'G-00061-', '50MHz.\r\nResolución de alta frecuencia de 1 μHz mantenida en rango completo. Estabilidad de frecuencia de 1 ppm. Capacidad de forma de onda arbitraria de función completa. Frecuencia de muestreo de 200 MSa/s. Tasa de repetición de 100 MSa/s. Resolución de a', '', 'P4_03', '', '0000-00-00'),
(37923, 'O2CHRG-01', 'osciloscopio', 'Osciloscopio Digital de Banco', 'RIGOL', 'DS1302CA', 'DS1AA125200276', '300 MHz', '', '300 MHz. 2GSa/s. 2 Canales', '', 'P4_03', '', '0000-00-00'),
(40230, 'FMX30V-01', 'fuente_dc', 'Fuente Alimentación Reg de Banco', 'MATRIX', 'MPS-3005D', 'D001011WX', '0/+30V', 'F-00067-', 'Salida 5V 1A.\r\nSalida 0/30V 5A.', '', 'P4_11', '', '0000-00-00'),
(40231, 'FMX30V-02', 'fuente_dc', 'Fuente Alimentación Reg de Banco', 'MATRIX', 'MPS-3005D', 'D001031WX', '0/+30V', 'F-00067-', 'Salida 5V 1A.\r\nSalida 0/30V 5A.', '', 'P4_11', '', '0000-00-00'),
(40232, 'FMX30V-03', 'fuente_dc', 'Fuente Alimentación Reg de Banco', 'MATRIX', 'MPS-3005D', 'D001077WX', '0/+30V', 'F-00067-', 'Salida 5V 1A.\r\nSalida 0/30V 5A.', '', 'P4_11', '', '0000-00-00'),
(40233, 'ALZP', 'analizador_logico', '', 'ZEROPLUS', 'LAP C Series - 32200', '11082Z-3026', '32 canales', '', 'Alimentacion 5V - 500 mA.\r\n32 canales.\r\n64 Mbits de memoria.\r\nCuenta con protocol packet trigger.', '', 'P4_02', 'Cable USB.\r\nPulse width trigger module.\r\nCables duppont conexion.\r\nManual - CD instalacion.', NULL),
(40447, 'MRNIND-01', 'medidor_ondas', 'Medidor de Ondas de Radio No Ionizantes', 'NARDA', 'NBM-550', 'E-0065', '100 KHz - 3GHz', '', 'NBM-550\r\nLa interfaz de sonda inteligente detecta los parámetros de la sonda\r\nAjuste del punto cero automático\r\nMemoria para guardar hasta 5000 resultados de medición\r\nSoftware de PC \r\nGrabación de voz para comentarios\r\nRegistro condicional: valor medido g', '', 'P4_12', 'N001: llave(2). N002: cd. N003:cable. N004: fuente alimentacion 9V. N005:correa, pilas AA(4\r\n0. N006:EF 0391. N007(2):certificado calibracion.', '0000-00-00'),
(69948, 'O4CHTK-01', 'osciloscopio', 'Osciloscopio Digital de Banco', 'TEKTRONIX', 'TBS1104', 'DS1BC130700017', '100 MHz', 'O-00064-', '100MHz. 1GSa/S. 4 Canales', '', 'P4_03', '', '0000-00-00'),
(71586, 'FVA30V-01', 'fuente_dc', 'Fuente Alimentación Reg de Banco', 'V&A', 'HY3003D-S', '', '0/+30V', '', 'Voltaje DC ajustable 0/+30V (0/+60V con canales en serie)\r\nCorriente DC ajustable 0/3A (0/6A con canales en paralelo)', '', 'P4_11', '', '0000-00-00'),
(73273, 'GOBBRG-01', 'generador_funciones', 'Generador de forma de onda arbitraria de Banco', 'RIGOL', 'DG1022', 'DG1D183404704', '20 MHz', 'G-00062-', '20MHz. 100MSa/s, permite editar formas de onda arbitrarias con 14 bits, 4k puntos. 2 canales. Admite acoplamiento de canales, copia de canales. Formas de onda: seno, cuadrada, rampa, pulso, ruido, arbitraria.', '', 'P4_03', '', '0000-00-00'),
(158658, 'AQPBHP-01', 'adaptador_q', 'Adaptador Q de Presición de Banco', 'HP', '42851A', '3550J00364', '5-900', 'V-00030-', 'Parámetros medidos: Q-L, Q-C. Rango de medición Q: 5,00 a 899,99 Precisión Q básica: 5 % Tiempo de medición: 75 ms a 1,5 s. Interfaz: personalizada, directamente controlable.', '', 'P4_10', '', '0000-00-00'),
(99000000, 'O2CHRG-02', 'osciloscopio', 'Osciloscopio Digital de Banco', 'RIGOL', 'DS1102D', 'DS1EA123900910', '100 MHz', '', '100 MHz. 1GSa/s. 2 canales', '', 'P4_03', '', '0000-00-00'),
(99000001, 'FRG05V-01', 'fuente_dc', 'Fuente Alimentación Fija KIT', 'Casera', '', '', '-5V/+5V', '', 'IFX', '', 'P4_11', '', '0000-00-00'),
(99000002, 'FRG05V-02', 'fuente_dc', 'Fuente Alimentación Fija KIT', 'Casera', '', '', '-5V/+5V', '', 'IFX', '', 'P4_11', '', '0000-00-00'),
(99000003, 'FC1', 'fuente_dc', '', 'Casera', '', '', '-5V/+5V', '', 'IFX', '', 'P4_11', '', '0000-00-00'),
(99000004, 'FC2', 'fuente_dc', '', 'Casera', '', '', '-5V/+5V', '', 'IFX', '', 'P4_11', '', '0000-00-00'),
(99000005, 'FC3', 'fuente_dc', '', 'Casera', '', '', '-5V/+5V', '', 'IFX', '', 'P4_11', '', '0000-00-00'),
(99000006, 'FC4', 'fuente_dc', '', 'Casera', '', '', '-12V/+12V', '', 'IFX', '', 'P4_11', '', '0000-00-00'),
(99000007, 'FC5', 'fuente_dc', '', 'Casera', '', '', '-12V/+12V', '', 'IFX', '', 'P4_11', '', '0000-00-00'),
(99000008, 'FC6', 'fuente_dc', '', 'Casera', '', '', '-12V/+12V', '', 'IFX', '', 'P4_11', '', '0000-00-00'),
(99000009, 'FC7', 'fuente_dc', '', 'Casera', '', '', '-12V/+12V', '', 'IFX', '', 'P4_11', '', '0000-00-00'),
(99000010, 'FC8', 'fuente_dc', '', 'Casera', '', '', '-12V/+12V', '', 'IFX', '', 'P4_11', '', '0000-00-00'),
(99000011, 'FC9', 'fuente_dc', '', 'Casera', '', '', '-12V/+12V', '', 'IFX', '', 'P4_11', '', '0000-00-00'),
(99000012, 'CENTER1', 'termometro', '', 'CENTER', '301', '090806086', '-200/+1370', 'G-00063-', 'Tipo K. Rango de temperatura -200 grados C/1370 grados C. Resolucion 0.1 grados C. Simultaneamente mide MAX AVG MIN. Dual display, 2 entradas de sensor.', '', 'P4_02', '', '0000-00-00'),
(99000013, 'CENTER2', 'termometro', '', 'CENTER', '301', '090806089', '-200/+1370', 'G-00063-', 'Tipo K. Rango de temperatura -200 grados C/1370 grados C. Resolucion 0.1 grados C. Simultaneamente mide MAX AVG MIN. Dual display, 2 entradas de sensor.', '', 'P4_02', '', '0000-00-00'),
(99000014, 'MREDHO-01', 'ami_meter', 'Medidor Residencial de Energía Respuesta a la Dema', 'HONEYWELL', 'gREX', '17691426', '', '', '220V. 50Hz. \r\n5(80)A, CI. 1\r\n1000imp/kWh\r\nUimp: 6kV\r\nUC2\r\nLAN_id 010-17691426', '', 'P4_04', '', '0000-00-00'),
(99000015, 'MREDHO-02', 'ami_meter', 'Medidor Residencial de Energía Respuesta a la Dema', 'HONEYWELL', 'gREX', '17691428', '', '', '220V. 50Hz. \r\n5(80)A, CI. 1\r\n1000imp/kWh\r\nUimp: 6kV\r\nUC2\r\nLAN_id 010-17691428', '', 'P4_04', '', '0000-00-00'),
(99000016, 'SE1', 'inductancia_variable', '', 'SENNHEISER', 'LD1', '70323', '83mH-150mH', '', '(1mH x): 150,107,121,75,87,85,90,75,80,80,83', '', 'P4_04', '', '0000-00-00'),
(99000017, 'SE2', 'inductancia_variable', '', 'SENNHEISER', 'LD2', '68859', '480mH-270mH', '', '(10mH x): 48,34,38,24,27,27,28,24,25,25,27', '', 'P4_04', '', '0000-00-00'),
(99000018, 'SE3', 'inductancia_variable', '', 'SENNHEISER', 'LD2', '70502', '480mH-270mH', '', '(10mH x): 48,34,38,24,27,27,28,24,25,25,27', '', 'P4_04', '', '0000-00-00'),
(99000019, 'SE4', 'inductancia_variable', '', 'SENNHEISER', 'LD2', '70500', '480mH-270mH', '', '(10mH x): 48,34,38,24,27,27,28,24,25,25,27', '', 'P4_04', '', '0000-00-00'),
(99000020, 'SE5', 'inductancia_variable', '', 'SENNHEISER', 'LD2', '70505', '480mH-270mH', '', '(10mH x): 48,34,38,24,27,27,28,24,25,25,27', '', 'P4_04', '', '0000-00-00'),
(99000021, 'SE6', 'inductancia_variable', '', 'SENNHEISER', 'LD3', '70379', '1500mH-850mH', '', '(100mH x): 15,10.5,12,7.5,8.5,8.5,9,7.5,8,8,8.5', '', 'P4_04', '', '0000-00-00'),
(99000022, 'SE7', 'inductancia_variable', '', 'SENNHEISER', 'LD3', '70362', '1500mH-850mH', '', '(100mH x): 15,10.5,12,7.5,8.5,8.5,9,7.5,8,8,8.5', '', 'P4_04', '', '0000-00-00'),
(99000023, 'SE8', 'inductancia_variable', '', 'SENNHEISER', 'LD3', '70374', '1500mH-850mH', '', '(100mH x): 15,10.5,12,7.5,8.5,8.5,9,7.5,8,8,8.5', '', 'P4_04', '', '0000-00-00'),
(99000024, 'SE9', 'inductancia_variable', '', 'SENNHEISER', 'LD3', '70377', '1500mH-850mH', '', '(100mH x): 15,10.5,12,7.5,8.5,8.5,9,7.5,8,8,8.5', '', 'P4_04', '', '0000-00-00'),
(99000025, 'HK1', 'resistencia_variable', '', 'HEATHKIT', 'IN-17', '0064471', '0-1M', '', '', '', 'P4_04', '', '0000-00-00'),
(99000026, 'HK2', 'resistencia_variable', '', 'HEATHKIT', 'IN-17', '0033033', '0-1M', '', '', '', 'P4_04', '', '0000-00-00'),
(99000028, 'HK3', 'resistencia_variable', '', 'HEATHKIT', 'IN-17', '0064471', '0-1M', '', '', '', 'P4_04', '', '0000-00-00'),
(99000029, 'HK4', 'resistencia_variable', '', 'HEATHKIT', 'IN-17', '0064471', '0-1M', '', '', '', 'P4_04', '', '0000-00-00'),
(99000030, 'HK5', 'resistencia_variable', '', 'HEATHKIT', 'IN-17', '0064471', '0-1M', '', '', '', 'P4_04', '', '0000-00-00'),
(99000031, 'HK6', 'capacitor_variable', '', 'HEATHKIT', 'IN-27', '0064471', '1n-111n', '', '', '', 'P4_04', '', '0000-00-00'),
(99000032, 'HK7', 'capacitor_variable', '', 'HEATHKIT', 'IN-27', '0064471', '1n-111n', '', '', '', 'P4_04', '', '0000-00-00'),
(99000033, 'HK8', 'capacitor_variable', '', 'HEATHKIT', 'IN-27', '0064471', '1n-111n', '', '', '', 'P4_04', '', '0000-00-00'),
(99000034, 'HK9', 'capacitor_variable', '', 'HEATHKIT', 'IN-27', '0064471', '1n-111n', '', '', '', 'P4_04', '', '0000-00-00'),
(99000035, 'HK10', 'capacitor_variable', '', 'HEATHKIT', 'IN-27', '0064471', '1n-111n', '', '', '', 'P4_04', '', '0000-00-00'),
(99000036, 'HK11', 'capacitor_variable', '', 'HEATHKIT', 'IN-27', '0064471', '1n-111n', '', '', '', 'P4_04', '', '0000-00-00'),
(99000037, 'HK12', 'capacitor_variable', '', 'HEATHKIT', 'IN-27', '0064471', '1n-111n', '', '', '', 'P4_04', '', '0000-00-00'),
(99000038, 'HK13', 'capacitor_variable', '', 'HEATHKIT', 'IN-3127', '', '1n-111n', '', '', '', 'P4_04', '', '0000-00-00'),
(99000039, 'SE10', 'inductancia_variable', '', 'SENNHEISER', 'LD1', '68247', '83mH-150mH', '', '(1mH x): 150,107,121,75,87,85,90,75,80,80,83', '', 'P4_04', '', '0000-00-00'),
(99000040, 'SE11', 'inductancia_variable', '', 'SENNHEISER', 'LD1', '70329', '83mH-150mH', '', '(1mH x): 150,107,121,75,87,85,90,75,80,80,83', '', 'P4_04', '', '0000-00-00'),
(99000041, 'GO5', '', '', 'GOERZ', '524721', '357837', '60W', '', 'Instrumento electrodinamico encerrado en hierro.\r\nInstrumento trifasico  con dos sistemas de medida.\r\nClase 0,5.\r\nPosicion horizontal.\r\nTension de ensayo 2kV.\r\nFrecuencia de trabajo: 15 a 60Hz', '', 'P4_04', '', '0000-00-00'),
(99000042, 'GO6', '', '', 'GOERZ', '524721', '357843', '60W', '', 'Instrumento electrodinamico encerrado en hierro.\r\nInstrumento trifasico  con dos sistemas de medida.\r\nClase 0,5.\r\nPosicion horizontal.\r\nTension de ensayo 2kV.\r\nFrecuencia de trabajo: 15 a 60Hz', '', 'P4_04', '', '0000-00-00'),
(99000043, 'GO7', '', '', 'GOERZ', '524721', '357845', '60W', '', 'Instrumento electrodinamico encerrado en hierro.\r\nInstrumento trifasico con dos sistemas de medida.\r\nClase 0,5.\r\nPosicion horizontal.\r\nTension de ensayo 2kV.\r\nFrecuencia de trabajo: 15 a 60Hz', '', 'P4_04', '', '0000-00-00'),
(99000044, 'GO8', '', '', 'GOERZ', '524713', '357829', '520V - 5A', '', 'Instrumento electrodinamico encerrado en hierro.\r\nCorriente alterna(CA).\r\nClase 0,5.\r\nPosicion horizontal.\r\nTension de ensayo 2kV.\r\nFrecuencia de trabajo: 15 a 60Hz\r\n\r\n\r\n\r\n', '', 'P4_04', '', '0000-00-00'),
(99000046, 'ACCAGZ-01', 'amperimetro_banco', 'Amperímetro CC/CA de Banco ', 'GOERZ', '324763', '389902', '12A', '', 'Instrumento de hierro giratorio.\r\nCorriente alterna(CA), Corriente continua(CC).\r\nClase 0,5. Clase 1.\r\nPosicion horizontal.\r\nTension de ensayo 2kV.\r\nFrecuencia de trabajo: 45 a 65Hz', '', 'P4_04', '', '0000-00-00'),
(99000047, 'ACCAGZ-02', 'amperimetro_banco', 'Amperímetro CC/CA de Banco ', 'GOERZ', '324763', '389917', '12A', '', 'Instrumento de hierro giratorio.\r\nCorriente alterna(CA), Corriente continua(CC).\r\nClase 0,5. Clase 1.\r\nPosicion horizontal.\r\nTension de ensayo 2kV.\r\nFrecuencia de trabajo: 45 a 65Hz', '', 'P4_04', '', '0000-00-00'),
(99000048, 'GO12', 'voltimetro_banco', '', 'GOERZ', '324774', '389611', '600V', '', 'Instrumento de hierro giratorio.\r\nCorriente alterna(CA), Corriente continua(CC).\r\nClase 0,5. Clase 1.\r\nPosicion horizontal.\r\nTension de ensayo 2kV.\r\nFrecuencia de trabajo: 45 a 65Hz\r\n\r\n150V/12mA\r\n600V/7mA', '', 'P4_04', '', '0000-00-00'),
(99000049, 'GO13', 'voltimetro_banco', '', 'GOERZ', '324774', '390019', '600V', '', 'Instrumento de hierro giratorio.\r\nCorriente alterna(CA), Corriente continua(CC).\r\nClase 0,5. Clase 1.\r\nPosicion horizontal.\r\nTension de ensayo 2kV.\r\nFrecuencia de trabajo: 45 a 65Hz\r\n\r\n150V/12mA\r\n600V/7mA', '', 'P4_04', '', '0000-00-00'),
(99000050, 'GO14', '', '', 'GOERZ', '524713', '357988', '520V - 5A', '', 'Instrumento electrodinamico encerrado en hierro.\r\nCorriente alterna(CA).\r\nClase 0,5.\r\nPosicion horizontal.\r\nTension de ensayo 2kV.\r\nFrecuencia de trabajo: 15 a 60Hz', '', 'P4_04', '', '0000-00-00'),
(99000051, 'GO15', '', '', 'GOERZ', '524713', '358078', '520V - 5A', '', 'Instrumento electrodinamico encerrado en hierro.\r\nCorriente alterna(CA).\r\nClase 0,5.\r\nPosicion horizontal.\r\nTension de ensayo 2kV.\r\nFrecuencia de trabajo: 15 a 60Hz', '', 'P4_04', '', '0000-00-00'),
(99000052, 'GO16', 'voltimetro_banco', '', 'GOERZ', '324774', '389610', '600V', '', 'Instrumento de hierro giratorio.\r\nCorriente alterna(CA), Corriente continua(CC).\r\nClase 0,5. Clase 1.\r\nPosicion horizontal.\r\nTension de ensayo 2kV.\r\nFrecuencia de trabajo: 45 a 65Hz\r\n\r\n150V/12mA\r\n600V/7mA', '', 'P4_04', '', '0000-00-00'),
(99000053, 'GO17', 'voltimetro_banco', '', 'GOERZ', '324774', '389628', '600V', '', 'Instrumento de hierro giratorio.\r\nCorriente alterna(CA), Corriente continua(CC).\r\nClase 0,5. Clase 1.\r\nPosicion horizontal.\r\nTension de ensayo 2kV.\r\nFrecuencia de trabajo: 45 a 65Hz\r\n\r\n150V/12mA\r\n600V/7mA', '', 'P4_04', '', '0000-00-00'),
(99000054, 'ACCAGZ-03', 'amperimetro_banco', 'Amperímetro CC/CA de Banco ', 'GOERZ', '324763', '389919', '12A', '', 'Instrumento de hierro giratorio.\r\nCorriente alterna(CA), Corriente continua(CC).\r\nClase 0,5. Clase 1.\r\nPosicion horizontal.\r\nTension de ensayo 2kV.\r\nFrecuencia de trabajo: 45 a 65Hz', '', 'P4_04', '', '0000-00-00');
INSERT INTO `instrumentos` (`nro_inv`, `cod_rec`, `tipo`, `descripcion`, `marca`, `modelo`, `sn`, `ab_rango`, `cod_manual`, `especificaciones`, `estado`, `ubicacion`, `adicionales`, `fecha_ingreso`) VALUES
(99000055, 'GO19', 'voltimetro_banco', '', 'GOERZ', '324774', '390263', '600V', '', 'Instrumento de hierro giratorio.\r\nCorriente alterna(CA), Corriente continua(CC).\r\nClase 0,5. Clase 1.\r\nPosicion horizontal.\r\nTension de ensayo 2kV.\r\nFrecuencia de trabajo: 45 a 65Hz\r\n\r\n150V/12mA\r\n600V/7mA', '', 'P4_04', '', '0000-00-00'),
(99000056, 'GO20', 'voltimetro_banco', '', 'GOERZ', '324771', '390014', '60V', '', 'Instrumento de hierro giratorio.\r\nCorriente alterna(CA), Corriente continua(CC).\r\nClase 0,5. Clase 1.\r\nPosicion horizontal.\r\nTension de ensayo 2kV.\r\nFrecuencia de trabajo: 45 a 65Hz\r\n\r\n150V/12mA\r\n600V/7mA', '', 'P4_04', '', '0000-00-00'),
(99000057, 'GO21', '', '', 'GOERZ', '524713', '358022', '520V - 5A', '', 'Instrumento electrodinamico encerrado en hierro.\r\nCorriente alterna(CA).\r\nClase 0,5.\r\nPosicion horizontal.\r\nTension de ensayo 2kV.\r\nFrecuencia de trabajo: 15 a 60Hz\r\n\r\n\r\n\r\n', 'Baja_B', 'P4_04', '', '0000-00-00'),
(99000058, 'GO22', '', '', 'GOERZ', '444392', '377581', '5A - 110V', '', 'Clase 1.\r\nPosicion horizontal.\r\nTension de ensayo 3kV.\r\nFrecuencia trabajo CA: 50 Hz\r\nFrecuencia trabajo trifasica: 15-60 Hz', '', 'P4_04', '', '0000-00-00'),
(99000059, 'GO23', '', '', 'GOERZ', '444393', '327157', '5A - 380V', '', 'Clase 1.\r\nPosicion horizontal.\r\nTension de ensayo 3kV.\r\nFrecuencia trabajo trifasica: 15-60 Hz', '', 'P4_04', '', '0000-00-00'),
(99000060, 'GO24', '', '', 'GOERZ', '444392', '377577', '5A - 110V', '', 'Clase 1.\r\nPosicion horizontal.\r\nTension de ensayo 3kV.\r\nFrecuencia trabajo CA: 50 Hz\r\nFrecuencia trabajo trifasica: 15-60 Hz', '', 'P4_04', '', '0000-00-00'),
(99000061, 'X595', 'kit_lab_volt', '', 'LAB VOLT', '9594-10', 'C-22410', '', '', 'Cables y accesorios.\r\nA001 (3). BELDEN-E 83242 M17/158-00001. Distintos largos.\r\nA002. Cable puerto paralelo.\r\nA003. Cable BD15 hembra-hembra.\r\nA004. Cable conector amp 206434-1-amp 206434-1.\r\nA005 (2).BELDEN 8240.\r\nA006. Cable banana-M87893,elastico. Incluye adicional cocodrilo metalico suelto.\r\nA006\r\n', '', 'L6_21', '', NULL),
(99000062, 'X608', 'antena', '', 'LAB VOLT', '', 'D16908', '', '', 'YAGUI', '', 'L6_21', '(1) Antena\r\n(1) Placa M1Q SN 628909', NULL),
(99000063, 'X596', 'antena', '', 'LAB VOLT', '', 'D-17013', '', '', 'HELICAL LEFT ANTENA', '', 'L6_21', '', NULL),
(99000064, 'X598', 'antena', '', 'LAB VOLT', '', 'D-16758', '', '', 'HORN ANTENA L/GAIN', '', 'L6_21', '', NULL),
(99000065, 'X605', 'antena', '', 'LAB VOLT', '', 'D-16962', '', '', 'WAVEGUIDE ANTENA', '', 'L6_21', '', NULL),
(99000066, 'X600', 'antena', '', 'LAB VOLT', '', 'D-17044', '', '', 'HELICAL RGHT ANTENA', '', 'L6_21', '', NULL),
(99000067, 'X602', 'antena', '', 'LAB VOLT', '', 'D-17036', '', '', 'HELICAL RGHT ANTENA', '', 'L6_21', '', NULL),
(99000068, 'X603', 'antena', '', 'LAB VOLT', '', 'D-16918', '', '', 'HORN ANTENA H/GAIN', '', 'L6_21', '', NULL),
(99000069, 'X601', 'antena', '', 'LAB VOLT', '', 'D-14710', '', '', 'HORN ANTENA H/GAIN', '', 'L6_21', '', NULL),
(99000070, 'X604', 'antena', '', 'LAB VOLT', '', 'D-16995', '', '', 'SLOT ANTENA', '', 'L6_21', '', NULL),
(99000071, 'X599', 'antena', '', 'LAB VOLT', '', 'D-17124', '', '', 'WAVEGUIDE ACCESS', '', 'L6_21', '(1) cinta de cobre 3M. (2) guia de onda rectangular. (10) piezas blancas', NULL),
(99000072, 'x606', 'antena', '', 'LAB VOLT', '', 'D-17066', '', '', 'PATCH ANTENAS', '', 'L6_21', '(3)Patchs. Items 31111, 31111-01, 31111-02. Item 31059. Plano que indica las piezas.', NULL),
(99000073, 'X594', 'antena', '', 'LAB VOLT', '8092', '', '', '', 'WIRE ANTENA 1GHz', '', 'L6_21', 'Manual.\r\nPlano armado y listado de partes.\r\n31032 base. \r\n31045, 31050, 31050-01, 31050-02. Cano bloque-BNC.\r\n31043, 31043-01, 31043-02, 31043-03. Dipolo cuadrado, rombo, circular, ovalado.\r\n31039. (5) recta con clip, (7) recto - distintos largos (4) tipo L.\r\n31037. (5) canos gris ocuro (2) cano plateado.\r\n(2) piezas cilindricas chicas plateado.', NULL),
(99000074, 'X607', 'kit_lab_volt', '', 'LAB VOLT', '9505-05', 'B-68076', '', '', 'El generador de RF contiene dos generadores independientes capaces de producir una señal de RF modulada en CW o AM de onda cuadrada de 1 kHz a 915 MHz y 10,5 GHz.\r\nEl oscilador en el generador de 915 MHz se puede sintonizar de 800 a 1200 MHz a través de una entrada de voltaje de sintonización externa.', '', 'L6_21', '', NULL),
(99000075, 'X597', 'kit_lab_volt', '', 'LAB VOLT', '', 'A-56332', '', '', '', '', 'L6_21', 'Base plateada', NULL),
(99000076, '', 'multimetro', 'Multimetro digital, 3 y 1/2 digitos, Portátil', 'UNIT-T', 'M890G', '180048533', '', '', 'Tensión CC: 200mV/ 2V /20V / 200V / 1000V\r\nTensión CA: 2V / 20V / 200V / 750V\r\nCorriente CC: 2mA / 20mA / 200mA / 20A\r\nCorriente CA: 20mA / 20A\r\nResistencias: 200Ω / 2K/ 20K / 200KΩ / 2M / 20MΩ\r\nCapacitores: 2000pF / 20nF / 200nF / 2uF / 20uF\r\nFrecuencia: 20KHz\r\nTemperatura: -20°C - 1000°C', 'Fun_D', 'P4_02', 'Puntas multimetro, termocupla', NULL),
(99000077, '', 'multimetro', 'Milivoltimetro de banco', 'CT', 'B3--38', '2971', '300 mV', '', '', 'Fun_D', '', 'Manual, Cable BNC-Coco', NULL),
(99000078, '', 'kit_digitales', 'DSP', 'Texas Instruments', 'TMS320C54X DSK PLUS', 'D600364-6001', '', '', 'Kit básico TMS320C5416 DSP (DSK).\r\nSoporte JTAG integrado a través de USB.\r\nCódec estéreo de 16/20 bits de alta calidad.\r\nCuatro conectores de audio de 3,5 mm para micrófono, entrada de línea, altavoz y salida de línea.\r\n256.000 palabras de Flash y 64.000 palabras de RAM.\r\nConector de puerto de expansión para módulos enchufables.\r\nInterfaz JTAG estándar integrada.\r\nFuente de alimentación universal de +5V.', 'Fun_D', 'P4_13', '', NULL),
(99000079, '', 'kit_digitales', 'DSP', 'Texas Instruments', 'TMDS30501', 'D600057-6001', '', '', 'XDS WORKSTATION POWER SUPPLY PACKAGE', 'Fun_D', 'P4_13', '', NULL),
(99000080, '', 'kit_digitales', 'DSP', 'NXP', 'LPC4337 Kit', 'A45570389', '', '', 'LPC4337 Kit', 'Fun_D', 'P4_13', '', NULL),
(99000081, '', 'kit_digitales', 'DSP', 'NXP', 'LPC4337 Kit', 'A45570393', '', '', 'LPC4337 Kit', 'Fun_D', 'P4_13', '', NULL),
(99000082, '', 'kit_digitales', 'DSP', 'NXP', 'LPC4337 Kit', 'A45570387', '', '', 'LPC4337 Kit', 'Fun_D', 'P4_13', '', NULL),
(99000083, '', 'kit_digitales', 'DSP', 'NXP', 'LPC4337 Kit', 'A45570391', '', '', 'LPC4337 Kit', 'Fun_D', 'P4_13', '', NULL),
(99000084, '', 'kit_digitales', 'DSP Servo Motor Controller', 'ANALOG DEVICES', 'ADMC300 - ADVEVALKIT', 'A45570391', '', '', 'DSP Servo Motor Controller\r\nManual', 'Fun_D', 'P4_13', '', NULL),
(99000085, '', 'kit_digitales', 'KIT RSPOD 1', 'ELECTROCOMPONENTES', 'KIT RSPOD 1', 'E5080', '', '', 'HCS12(X) Microcontroller', 'Fun_D', 'P4_13', '', NULL),
(99000086, '', 'kit_digitales', 'PLUGIN_AP', 'EduDevices', 'EDUKIT08', 'E8094LC', '', '', 'El sistema cuenta con todo el hardware necesario para realizar numerosas prácticas delos módulos típicos de los HC908 / HC9S08 como display LCD inteligente, display de 4dígitos LED 7 segmentos, sensor de temperatura, puertos UARTs (RS-232C / RS-485),puerto Infrarrojo (IRDA), pulsadores, leds de uso general, led de potencia para PWM, etc.También incorpora un circuito que permite Emulación en Tiempo Real por medio de unaPC y un entorno integrado de trabajo (IDE) como el WinIDE y el CodeWarrior.', 'Fun_D', 'P4_13', '', NULL),
(99000087, '', 'kit_digitales', 'KIT RSPOD 2', 'ELECTROCOMPONENTES', 'KIT RSPOD 2', 'E5081', '', '', '', 'Fun_D', 'P4_13', '', NULL),
(99000088, '', 'kit_digitales', 'KIT FLASH_POD', 'ELECTROCOMPONENTES', 'KIT FLASH_POD', 'E4638-4637-4636', '', '', 'E4638 MOTHER 4\r\nE4637 HEADER BOARD\r\nE4636 FLASH POD', 'Fun_D', 'P4_13', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` varchar(8) NOT NULL,
  `descripcion` text NOT NULL,
  `idioma` text NOT NULL,
  `tipo` text NOT NULL,
  `ubicacion` text NOT NULL,
  `instrumento_asociado` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `descripcion`, `idioma`, `tipo`, `ubicacion`, `instrumento_asociado`) VALUES
('C-00007', 'Operation Guide HP 53131A 225 MHz Universal Counter', 'ingles', 'guia de operacion', 'P4_01', 'HP 53131A'),
('C-00012', 'Guía de iniciación contador universal HP 53131A/132A 225 MHz', 'espanol', 'guia de inicio', 'P4_01', 'contador universal HP 53131A/132A 225 MHz'),
('DL-00001', 'National Appliccation Specific Analog Products Databook. Audio, automotive, video, special functions', 'ingles', 'manual', 'P4_01', 'Sin instrumento asociado'),
('DL-00002', 'National Operational Amplifiers Databook. Operational amplifiers, buffers, voltage comparators, active matrix/LCD display drivers, special functions, surface mount', 'ingles', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('DL-00003', 'National Discrete DMOS Power MOSFET Products Databook. Discrete Power and Signal Technologies', 'ingles', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('DL-00004', 'National Power ICs Databook. Linear voltage regulators, low dropout voltage regulators, switching voltage regulators, motion control, surface mount', 'ingles', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('DL-00005', 'National data acquisition Databook. Data acquisition systems, analog to digital converters, digital to analog converters, voltage reference, temperature sensors, sample and hold, active filters, analog switches/multiplexers ', 'ingles', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('DL-00006', 'National discrete diode, Bipolar transistor and JFET products Databook. Discrete Power and signal technologies', 'ingles', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('DL-00007', 'Reguladores de tensión', 'espanol', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('DL-00008', 'LS/S/TTL Logic Databook', 'ingles', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('DL-00009', 'National Interface Databook. Bus circuits, data transmition circuits, system design guide', 'ingles', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('DL-00010', 'Circuitos integrados CMOS, series CD4000 - CD4500', 'castellano', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('DL-00011', 'Analog/Interface ICs. Device data. Vol. I', 'ingles', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('DL-00012', 'Motorola high-speed CMOS data', 'ingles', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('DL-00013', 'HC05. MC68HC705KJ1. MC68HLC705KJ1. MC68HRC705KJ1. HCMOS Microcontroller unit. Technical data', 'ingles', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('DL-00014', 'Transistores de Silicio Argentinos - SOT 54 -SOT 32', 'espanol', 'Libro', 'P4_01', 'Sin instrumento asociado'),
('DL-00015', 'embedded control handbook. Vol. 1', 'ingles', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('DL-00016', 'Timing solutions. Over 10 newly released parts!. Low skew fanout buffers, PC clock generators, PLL clock drivers, clock generation circuits ', 'ingles', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('DL-00017', 'Burr-Brown IC Data Book. Linear and mixed signal products', 'ingles', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('DL-00018', 'Motorola semiconductor master selection guide', 'ingles', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('DL-00019', 'Integrated circuits. Dream machine application reference book. Over 50 80C51 Application ideas', 'ingles', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('DL-00020', 'Bipolar Power. Transistor data-Motorola. Rev. 7', 'ingles', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('DL-00021', 'Telecommunications device data - Motorola. Rev. 2', 'ingles', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('DL-00022', 'Introduccion a los sistemas de control: Conceptos, aplicaciones y simulación con Matlab', 'espanol', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('EL-00001', 'Tecnologías avanzadas de Telecomunicaciones', 'espanol', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('EL-00002', 'Máquinas eléctricas y transformadores. Tercera edición', 'espanol', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('EL-00003', 'Sistemas electrónicos de comunicaciones. Segunda edición', 'espanol', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('EL-00004', 'Dibujo técnico', 'espanol', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('EL-00005', 'Geometría para la informática gráfica y CAD', 'espanol', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('EL-00006', 'Electrónica y dispositivos electrónicos', 'espanol', 'Libro', 'P4_01', 'Sin instrumento asociado'),
('EL-00007', 'Electricidad y magnetismo', 'espanol', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('EL-00008', 'Mediciones electrónicas', 'espanol', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('EL-00009', 'Circuitos eléctricos. Análisis de modelos circuitales. Tomo 1. Segunda edición', 'espanol', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('EL-00010', 'Electrónica del vacío', 'espanol', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('EL-00011', 'Circuitos eléctricos. Teoría y 50 problemas resueltos', 'espanol', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('EL-00012', 'Amplificadores de audiofrecuencias', 'espanol', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('EL-00013', 'Electrónica de los circuitos amplificadores', 'espanol', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('EL-00014', 'Circuitos electrónicos. Segunda edición', 'espanol', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('EL-00015', 'Electrónica aplicada', 'espanol', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('EL-00016', 'Circuitos microelectrónicos. Quinta edición', 'espanol', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('EL-00017', 'Radioelectrónica de barcos', 'espanol', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('EL-00018', 'Elementos de electromagnetismo', 'espanol', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('EL-00019', 'Principios fundamentales de electrónica', 'espanol', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('EL-00021', 'Teoría de circuitos - Ejercicios de autoevaluación', 'espanol', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('EL-00022', 'Electrónica de Potencia. Circuitos. Dispositivos y aplicaciones. Tercera edición', 'espanol', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('EL-00024', 'Desiner´s guide to fiber optic transceivers', 'ingles', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('EL-00025', 'Principios de electrónica. Cuarta edición', 'espanol', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('EL-00026', 'Electrónica analógica. Análisis de circuitos. Amplificación. Sistemas de alimentación', 'espanol', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('EL-00027', 'Dibujo y comunicación gráfica. Tercera edición', 'espanol', 'Manual', 'P4_01', 'Sin instrumento asociado'),
('EL-00028', 'Small-Signal. Transistors, FETs and Diodes Device Data-Motorola.Rev. 6 ', 'ingles', 'Libro', 'P4_01', 'Sin instrumento asociado'),
('EL-00029', 'Circuitos eléctricos. Introducción al análisis y diseño. Segunda edición', 'espanol', 'Libro', 'P4_01', 'Sin instrumento asociado'),
('EL-00030', 'Circuitos eléctricos. Introducción al análisis y diseño. Tercera edición', 'espanol', 'Libro', 'P4_01', 'Sin instrumento asociado'),
('EL-00031', 'Sistemas digitales de control de procesos. Tomo I. Edición 2006', 'espanol', 'Libro', 'P4_01', 'Sin instrumento asociado'),
('EL-00032', 'Mediciones de procesos industriales', 'espanol', 'Libro', 'P4_01', 'Sin instrumento asociado'),
('EL-00033', 'Illustrated AUTOCAD', 'ingles', 'Libro', 'P4_01', 'Sin instrumento asociado'),
('F-00001', 'Service Guide HP E3631A Triple Output DC Power Supply', 'ingles', 'guia de servicio', 'P4_01', 'HP E3631A '),
('F-00002', 'Manual de usuario Fuente de alimentación de CC de Salida Triple HP E3631A', 'espanol', 'manual de usuario', 'P4_01', 'HP E3631A '),
('F-00003', 'User`s guide HP E3631A Triple Output DC Power Supply', 'ingles', 'guia de usuario', 'P4_01', 'HP E3631A'),
('F-00067', 'manual de usuario fuente DC de un canal KAISE V7.0  MPS 3005D', 'ingles', 'manual de usuario', 'P4_01', 'fuente DC de un canal KAISE V7.0  MPS 3005D'),
('F-00072', 'manual de operación fuente Metex Universal MS-9140', 'ingles', 'manual de operación', 'P4_01', 'fuente Metex Universal MS-9140'),
('G-00034', 'Guía de usuario Generador de Pulsos HP 8110', 'ingles', 'guia de usuario', 'P4_01', 'hp 8110-generador de pulsos 150 mhz'),
('G-00035', 'Guía de operación generador de de señales HP 8647', 'espanol', 'guia de operacion', 'P4_01', 'hp 8647-generador de señal'),
('G-00036', 'Manual del generador de señales HP 8647A', 'ingles', 'guia de operacion', 'P4_01', 'hp 8647A'),
('G-00037', 'Guía de operador HP 8110', 'espanol', 'guia de operacion', 'P4_01', 'hp 8110-generador de pulsos 150 mhz'),
('G-00058', 'Manual de Escort EGC 3230-2MHz Generador de funcion con frec.', 'ingles', 'Manual de operador', 'P4_01', 'Escort EGC 3230-2MHz Generador de funcion con frec.'),
('G-00059', 'Manual de generador de funciones Tektronix CFG 250', 'ingles', 'Manual de usuario', 'P4_01', 'Generador de funciones Tektronix CFG 250'),
('G-00060', 'Manual de generador de funciones Tektronix CFG 253', 'ingles', 'Manual de usuario', 'P4_01', 'Generador de funciones Tektronix CFG 253'),
('G-00061', 'Manual del generador de función arbitraria GW Instek Serie AFG-3000', 'ingles', 'Manual de usuario', 'P4_01', 'Generador de función arbitraria GW Instek Serie AFG-3000'),
('G-00062', 'Guía rápida Generador de formas de onda arbitrarias Rigol DG1000', 'ingles', 'Guía rápida', 'P4_01', 'Generador de formas de onda arbitrarias Rigol DG1000'),
('G-00063', 'Manual de instrucciones del termómetro tipo K, CENTER 301', 'ingles', 'Manual de instrucciones', 'P4_01', 'Termómetro tipo K, CENTER 301'),
('K-00038', 'Libro de trabajo estudiantes comunicaciones análogas 53-001S', 'ingles', 'cuaderno de estudiantes', 'P4_01', 'sin instrumento asociado'),
('K-00039', 'Libro de trabajo estudiantes comunicaciones digitales 53-002S', 'ingles', 'cuaderno de estudiantes', 'P4_01', 'sin instrumento asociado'),
('K-00040', 'comunicaciones digitales 53-002 Teknikit', 'ingles', 'Teknikit', 'P4_01', 'sin instrumento asociado'),
('K-00041', 'Libro 1 kit 2942 de transductores', 'ingles', 'libro', 'P4_01', 'sin instrumento asociado'),
('K-00042', 'Libro 2 del kit 2942 de transductores', 'ingles', 'libro', 'P4_01', 'sin instrumento asociado'),
('K-00043', 'manual de instructor, Teknikit de comunicaciones digitales 53-002I', 'ingles', 'manual de instructor', 'P4_01', 'sin instrumento asociado'),
('K-00044', 'Teknikit Series Telecommunications 53-001 Analogue', 'ingles', 'curso', 'P4_01', 'sin instrumento asociado'),
('K-00045', 'Teknikit Analogue Communication Instructor`s manual 53-001l', 'ingles', 'manual del instructor', 'P4_01', 'sin instrumento asociado'),
('K-00046', 'Interface for IBM PC MIC926', 'ingles', 'curso', 'P4_01', 'sin instrumento asociado'),
('K-00047', 'Transducers kit 2942 – book 3', 'ingles', 'curso', 'P4_01', 'sin instrumento asociado'),
('K-00048', 'kit lab-volt varios', 'ingles', 'Catalogo', 'P4_01', 'sin instrumento asociado'),
('K-00049', 'no se encuentra la carpeta en el armario', 'ingles', 'catalogo', 'P4_01', 'lab-vlot kit varios'),
('M-00050', 'Service Guide HP 34401A Multimeter', 'ingles', 'guia de servicio', 'P4_01', 'HP 34401A multimeter'),
('M-00051', 'Guia del usuario Multimetro HP 34401A', 'espanol', 'guia de usuario', 'P4_01', 'HP 34401A multimeter'),
('M-00054', 'Manual multímetro Goldstar DM-7333', 'espanol', 'Manual', 'P4_01', 'multímetro Goldstar DM-7333'),
('M-00055', 'Manual multímetro Escort EDM82B', 'ingles', 'Manual', 'P4_01', 'multímetro Escort EDM82B'),
('M-00056', 'Manual multímetro Goldstar DM-311', 'ingles', 'manual de operacion', 'P4_01', 'multímetro Goldstar DM-311'),
('M-00057', 'Manual multímetro Instek GDM-394', 'ingles', 'manual de usuario', 'P4_01', 'multímetro Instek GDM-394'),
('M-00065', 'Referencia rápida Multímetro HP 34401A', 'ingles', 'Referencia rápida', 'P4_01', 'multímetro HP 34401A'),
('M-00073', 'Manual de operación multímetro Goldstar DM 310-341', 'ingles', 'Manual de operación', 'P4_01', 'multímetro Goldstar DM 310-341'),
('O-00052', 'Tektronik TDS 210 y TDS 220 osciloscopios digitales 070-9560-04 ', 'espanol', 'manual de usuario', 'P4_01', 'Tektronik TDS 210 y TDS 220 osciloscopios digitales'),
('O-00053', 'TDS 340A - TDS 360 y TDS 380 osciloscopios digitales de tiempo real Tektronik 070-9433-03', 'espanol', 'manual de usuario', 'P4_01', 'TDS 340A - TDS 360 y TDS 380 osciloscopios digitales de tiempo real Tektronik'),
('O-00064', 'Instrucciones de cumplimiento y seguridad Osciloscopio Digital Tektronix TBS 1000', 'ingles', 'manual de instrucciones', 'P4_01', 'Osciloscopio Digital Tektronix TBS 1000'),
('O-00068', 'hoja con características de punta OCR-LP16BX', 'ingles-chino', 'hoja de datos', 'P4_01', 'OCR-LP16BX'),
('O-00069', 'Manual osciloscopio Leader 40 MHz Modelo 8041 y 8042', 'ingles', 'manual de usuario', 'P4_01', 'osciloscopio Leader 40 MHz Modelo 8041 y 8042'),
('O-00070', 'Hoja con características de punta de Osciloscopio OCR - HP 10071', 'ingles', 'hoja de datos', 'P4_01', 'OCR - HP 10071'),
('V-00004', 'Guia de usuario Analizador de Protocolos Serie J2300', 'espanol', 'Guia de usuario', 'P4_01', 'Analizador de Protocolos Serie J2300'),
('V-00013', 'Mainframe features HP internet advisor', 'ingles', 'Caracteristicas del Mainframe', 'P4_01', 'sin instrumento asociado'),
('V-00014', 'Caracteristicas del Mainframe Asistente de internet HP', 'espanol', 'Caracteristicas del Mainframe', 'P4_01', 'sin instrumento asociado'),
('V-00015', 'User`s guide HP High Speed Internet Advisor ', 'ingles', 'guia de usuario', 'P4_01', 'sin instrumento asociado'),
('V-00016', 'User`s guide Internet Advisor HP - LAN', 'ingles', 'guia de usuario', 'P4_01', 'sin instrumento asociado'),
('V-00017', 'HP Internet Advisor for Ethernet Training Manual', 'ingles', 'Manual de entrenamiento', 'P4_01', 'sin instrumento asociado'),
('V-00018', 'User`s guide HP Low Speed Internet Advisor', 'ingles', 'guia de usuario', 'P4_01', 'sin instrumento asociado'),
('V-00019', 'HP 4284A Precision LCR Meter Operation Manual', 'ingles', 'manual de operacion', 'P4_01', 'hp 4284A LCR meter'),
('V-00020', 'HP 4285A Precision LCR Meter Maintenance Manual', 'ingles', 'manual de mantenimiento', 'P4_01', 'HP 4285A Precision LCR Meter'),
('V-00021', 'HP 4285A Precision LCR Meter Getting Started Guide', 'ingles', 'guia de inicio', 'P4_01', 'HP 4285A Precision LCR Meter'),
('V-00022', 'HP 4285A Precision LCR Meter', 'ingles', 'manual de operacion', 'P4_01', 'HP 4285A Precision LCR Meter'),
('V-00023', 'guia de referencia rapida analizador de espectros serie HP 8590', 'espanol', 'guia rapida', 'P4_01', 'hp 8590 analizador de espectros'),
('V-00024', 'HP 8590 analizador de espectros', 'espanol', 'guia de usuario', 'P4_01', 'HP 8590 analizador de espectros'),
('V-00025', 'HP 8590 series E y L analizador de espectros', 'ingles', 'guia de usuario', 'P4_01', 'HP 8590 analizador de espectros serie E y L'),
('V-00026', 'HP 8590 analizador de espectros series E y HP 8591C guia de cable TV analizador de calibracion ', 'ingles', 'guia de calibracion', 'P4_01', 'hp 8590 analizador de espectros series E'),
('V-00027', 'guia del programador HP 8590 series E y L analizador de espectros y HP 8591C cable TV analizador', 'ingles', 'guia de programacion', 'P4_01', 'HP 8590 series E y L analizador de espectros y HP 8591C cable TV analizador'),
('V-00028', 'Guia de usuario Analizador de espectros HP 8590 Series D y E', 'espanol', 'guia de usuario', 'P4_01', 'Analizador de espectros HP 8590 Series D y E'),
('V-00029', 'guia de referencia rapida Analizador de espectros HP 8590 Series E y L', 'ingles', 'guia rapida', 'P4_01', 'Analizador de espectros HP 8590 Series E y L'),
('V-00030', 'HP 48251A Q adapter Maintenance Manual', 'ingles', 'manual de mantenimiento', 'P4_01', 'HP 48251A Q adapter'),
('V-00031', 'HP 48251A Q adapter Operatrion Manual', 'ingles', 'manual de operacion', 'P4_01', 'HP 48251A Q adapter'),
('V-00032', 'User`s reference HP 1660A series Timing logic analizer', 'ingles', 'referencia de usuario', 'P4_01', 'HP 1660A series Timing logic analizer'),
('V-00033', 'HP 1660A-AS series logic analizer Programmer`s guide', 'ingles', 'guia de programacion', 'P4_01', 'HP 1660A-AS series logic analizer'),
('V-00066', 'manual de usuario del analizador de armónicos FLUKE Modelo 41B', 'ingles', 'manual de usuario', 'P4_01', 'analizador de armónicos FLUKE Modelo 41B'),
('V-00071', 'manual de instrucciones estación desoldadora Goot', 'ingles', 'manual de instrucciones', 'P4_01', 'Desoldadora Goot'),
('V-00074', 'manual de operador Digital LCR Meter', 'ingles', 'manual de operador', 'P4_01', 'Digital LCR Meter'),
('V-00075', 'manual de operador frecuencímetro Escort EFC-3201-100 MHz', 'ingles', 'manual de operador', 'P4_01', 'frecuencímetro Escort EFC-3201-100 MHz'),
('XX-0001', 'plc-512-logic analizer user`s manual', 'ingles', 'manual de usuario', 'P4_01', 'plc-512-logic analizer'),
('XX-0002', 'plc 812 G multilab card user`s manual', 'ingles', 'manual de usuario', 'P4_01', 'plc 812 G multilab card'),
('XX-0003', 'HP vee programming visual set de bibliografia', 'ingles', 'set de bibliografia', 'P4_01', 'sin instrumento asociado'),
('XX-0004', 'siemens simatic ti manual de uso', 'espanol', 'manual de uso', 'P4_01', 'sin instrumento asociado'),
('XX-0005', 'manual de uso wally for windows', 'ingles', 'manual de uso del lenguaje', 'P4_01', 'sin instrumento asociado'),
('XX-0006', 'manual de alumno experimentos con equipo electrico', 'espanol', 'manual de alumno', 'P4_01', 'experimentos con equipo electrico'),
('XX-0010', 'manual de practica alumno curso de comunicaciones de fibra optica – lab volt', 'espanol', 'manual de practica alumno', 'P4_01', 'sin instrumento asociado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notebooks`
--

CREATE TABLE `notebooks` (
  `nro_inv` varchar(8) NOT NULL,
  `cod_rec` varchar(10) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `modelo` varchar(20) NOT NULL,
  `sn` varchar(30) NOT NULL,
  `estado` enum('Fun_D','Fun_ND','Rep','Baja_B','') NOT NULL,
  `ubicacion` varchar(20) NOT NULL,
  `fecha_Ingreso` date DEFAULT NULL,
  `vga` tinyint(1) NOT NULL,
  `hdmi` tinyint(1) NOT NULL,
  `adicionales` varchar(20) NOT NULL,
  `s_op` varchar(10) NOT NULL,
  `lectora_DVD` enum('si','no') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `notebooks`
--

INSERT INTO `notebooks` (`nro_inv`, `cod_rec`, `marca`, `modelo`, `sn`, `estado`, `ubicacion`, `fecha_Ingreso`, `vga`, `hdmi`, `adicionales`, `s_op`, `lectora_DVD`) VALUES
('30356', 'HP1', 'HP', 'NX3325', '', 'Fun_ND', 'P4_00', NULL, 1, 0, 'cargador, la bateria', 'Windows8.1', 'si'),
('60656', 'LENOVO4', 'LENOVO', 'G485_20136', 'MB00267674', 'Rep', 'P4_00', NULL, 1, 0, 'cargador', 'Windows10', 'si'),
('60657', 'LENOVO3', 'LENOVO', 'G485_20136', 'MB00267725', 'Rep', 'P4_00', NULL, 1, 0, 'cargador', 'Windows8', 'si'),
('60658', 'LENOVO1', 'LENOVO', 'G485_20136', 'MB00267723', 'Fun_D', 'P4_00', NULL, 1, 0, 'cargador', 'Windows8', 'si'),
('60659', 'LENOVO2', 'LENOVO', 'G485_20136', 'MB00264152', 'Fun_D', 'P4_00', NULL, 1, 0, 'cargador', 'Windows8', 'si'),
('60661', 'CX2', 'CX', 'CX224xx', '', 'Fun_D', 'P4_00', NULL, 0, 1, 'cargador', 'Windows8', 'si'),
('60662', 'CX1', 'CX', 'CX224xx', '', 'Fun_D', 'P4_00', NULL, 0, 1, 'cargador', 'Windows10', 'si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectores`
--

CREATE TABLE `proyectores` (
  `nro_inv` varchar(8) NOT NULL,
  `cod_rec` varchar(10) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `modelo` varchar(20) NOT NULL,
  `sn` varchar(30) NOT NULL,
  `estado` enum('Fun_D','Fun_ND','REP','Baja_B','PATRON') NOT NULL,
  `ubicacion` varchar(20) NOT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `vga` tinyint(1) NOT NULL,
  `hdmi` tinyint(1) NOT NULL,
  `adicionales` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proyectores`
--

INSERT INTO `proyectores` (`nro_inv`, `cod_rec`, `marca`, `modelo`, `sn`, `estado`, `ubicacion`, `fecha_ingreso`, `vga`, `hdmi`, `adicionales`) VALUES
('64987', 'OPTOMA', 'OPTOMA', 'BR331', 'Q8WQ402AAAAAC1061', 'Fun_D', 'P4_00', '0000-00-00', 1, 1, 'Control remoto'),
('64999', 'BENQ3', 'BENQ', 'MS619ST', 'PDK4E01092000', 'Fun_D', 'P4_00', '0000-00-00', 1, 1, 'Control remoto'),
('65000', 'BENQ4', 'BENQ', 'MS619ST', 'PDK4E01093000', 'Fun_ND', '', '0000-00-00', 1, 1, ''),
('67835', 'VIEW4', 'VIEWSONIC', 'VS15876 (PJD5555W)', 'UET165001205', 'Fun_ND', '', '0000-00-00', 1, 1, ''),
('67836', 'VIEW5', 'VIEWSONIC', 'VS15876 (PJD5555W)', 'UET165001213', 'Fun_D', 'P4_00', '0000-00-00', 1, 1, ''),
('78263', 'VIEW10', 'VIEWSONIC', 'PX701HD', 'VPS241701779', 'Fun_D', 'P4_00', '2022-06-08', 1, 1, 'Control remoto'),
('78264', 'VIEW9', 'VIEWSONIC', 'PX701HD', 'VPS241701771', 'Fun_D', 'P4_00', '2022-06-08', 1, 1, 'Control remoto'),
('78265', 'VIEW7', 'VIEWSONIC', 'PX701HD', 'VPS241701783', 'Fun_D', 'P4_00', '2022-06-08', 1, 1, 'Control remoto'),
('78266', 'VIEW8', 'VIEWSONIC', 'PX701HD', 'VPS241701796', 'Fun_D', 'P4_00', '2022-06-08', 1, 1, 'Control remoto'),
('78267', 'VIEW6', 'VIEWSONIC', 'PX701HD', 'VPS241701800', 'Fun_D', 'P4_00', '2022-06-08', 1, 1, 'Control remoto'),
('99000000', 'VIEW2', 'VIEWSONIC', 'VS12472 (PJD6221)', 'R8K113406795', 'Fun_D', 'P4_00', '0000-00-00', 1, 0, ''),
('99000001', 'BENQ2', 'BENQ', 'MX631ST', 'PDE7G02941000', 'Fun_D', 'P4_00', '0000-00-00', 1, 1, 'Control remoto'),
('99000002', 'VIEW1', 'VIEWSONIC', 'VS12472 (PJD6221)', 'R8K113406796', 'REP', 'P4_00', '0000-00-00', 1, 0, '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `instrumentos`
--
ALTER TABLE `instrumentos`
  ADD PRIMARY KEY (`nro_inv`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notebooks`
--
ALTER TABLE `notebooks`
  ADD PRIMARY KEY (`nro_inv`);

--
-- Indices de la tabla `proyectores`
--
ALTER TABLE `proyectores`
  ADD PRIMARY KEY (`nro_inv`),
  ADD KEY `nro_inv` (`nro_inv`),
  ADD KEY `nro_inv_2` (`nro_inv`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



