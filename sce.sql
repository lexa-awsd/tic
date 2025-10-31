-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-10-2025 a las 17:09:52
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `NumControl` varchar(10) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellidos` varchar(50) NOT NULL,
  `Semestre` int(11) DEFAULT NULL,
  `ID_Carrera` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`NumControl`, `Nombre`, `Apellidos`, `Semestre`, `ID_Carrera`) VALUES
('A001', 'Juan', 'Pérez López', 3, 1),
('A002', 'María', 'Gómez Díaz', 2, 1),
('A003', 'Luis', 'Sánchez Torres', 4, 2),
('A004', 'Ana', 'Martínez Ruiz', 5, 3),
('A005', 'Pedro', 'Castillo López', 1, 4),
('A006', 'Lucía', 'Cruz Pérez', 6, 1),
('A007', 'Carlos', 'Jiménez Lara', 7, 2),
('A008', 'Paola', 'Vargas León', 2, 1),
('A009', 'Jorge', 'Mendoza Torres', 3, 3),
('A010', 'Sofía', 'Rojas Ortega', 1, 4),
('A011', 'Hugo', 'Zamora Medina', 5, 2),
('A012', 'Natalia', 'Salazar Gómez', 4, 1),
('A013', 'Raúl', 'Mendoza Pérez', 8, 3),
('A014', 'Fernanda', 'García Soto', 7, 2),
('A015', 'Diego', 'Hernández Cano', 2, 4),
('A016', 'Claudia', 'Flores López', 3, 1),
('A017', 'Ricardo', 'Domínguez Lara', 6, 2),
('A018', 'Andrea', 'Quintero Ruiz', 4, 4),
('A019', 'Santiago', 'Reyes Pérez', 5, 3),
('A020', 'Valeria', 'Aguilar Díaz', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `ID_Carrera` int(11) NOT NULL,
  `NombreCarrera` varchar(100) DEFAULT NULL,
  `Siglas` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`ID_Carrera`, `NombreCarrera`, `Siglas`) VALUES
(1, 'Ingeniería en Tecnologías de la Información y Comu', 'ITIC'),
(2, 'Ingeniería en Sistemas Computacionales', 'ISC'),
(3, 'Ingeniería en Mecatrónica', 'IMEC'),
(4, 'Licenciatura en Gestión Empresarial', 'LGE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripciones`
--

CREATE TABLE `inscripciones` (
  `ID_Inscripcion` int(11) NOT NULL,
  `NumControl` varchar(10) DEFAULT NULL,
  `ClaveMateria` varchar(15) DEFAULT NULL,
  `Calificacion` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inscripciones`
--

INSERT INTO `inscripciones` (`ID_Inscripcion`, `NumControl`, `ClaveMateria`, `Calificacion`) VALUES
(1, 'A001', 'PROG101', 88.50),
(2, 'A002', 'MAT101', 91.00),
(3, 'A003', 'BD101', NULL),
(4, 'A004', 'RED101', 76.80),
(5, 'A005', 'EMP101', NULL),
(6, 'A006', 'WEB101', 89.40),
(7, 'A007', 'SIS101', 95.00),
(8, 'A008', 'IA101', NULL),
(9, 'A009', 'MEC101', 82.75),
(10, 'A010', 'CON101', 87.00),
(11, 'A011', 'PROG102', NULL),
(12, 'A012', 'ING101', 90.20),
(13, 'A013', 'ROB101', 92.10),
(14, 'A014', 'SEG101', NULL),
(15, 'A015', 'MER101', 78.50),
(16, 'A016', 'SOF101', 85.60),
(17, 'A017', 'ANA101', 89.75),
(18, 'A018', 'EMP101', NULL),
(19, 'A019', 'RED101', 94.10),
(20, 'A020', 'MAT102', 88.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `ClaveMateria` varchar(15) NOT NULL,
  `NombreMateria` varchar(100) NOT NULL,
  `Creditos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`ClaveMateria`, `NombreMateria`, `Creditos`) VALUES
('ANA101', 'Análisis Numérico', 5),
('BD101', 'Bases de Datos', 6),
('CON101', 'Contabilidad General', 4),
('ELEC101', 'Electrónica Básica', 5),
('EMP101', 'Administración Empresarial', 4),
('HUM101', 'Comunicación Efectiva', 3),
('IA101', 'Inteligencia Artificial', 5),
('ING101', 'Inglés Técnico', 4),
('MAT101', 'Cálculo Diferencial', 5),
('MAT102', 'Cálculo Integral', 5),
('MEC101', 'Mecatrónica I', 5),
('MER101', 'Mercadotecnia', 4),
('PROG101', 'Programación I', 6),
('PROG102', 'Programación II', 6),
('RED101', 'Redes de Computadoras', 5),
('ROB101', 'Robótica Avanzada', 6),
('SEG101', 'Seguridad Informática', 5),
('SIS101', 'Sistemas Operativos', 5),
('SOF101', 'Ingeniería de Software', 6),
('WEB101', 'Desarrollo Web', 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`NumControl`),
  ADD KEY `ID_Carrera` (`ID_Carrera`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`ID_Carrera`);

--
-- Indices de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD PRIMARY KEY (`ID_Inscripcion`),
  ADD KEY `NumControl` (`NumControl`),
  ADD KEY `ClaveMateria` (`ClaveMateria`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`ClaveMateria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `ID_Carrera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  MODIFY `ID_Inscripcion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`ID_Carrera`) REFERENCES `carreras` (`ID_Carrera`);

--
-- Filtros para la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD CONSTRAINT `inscripciones_ibfk_1` FOREIGN KEY (`NumControl`) REFERENCES `alumnos` (`NumControl`),
  ADD CONSTRAINT `inscripciones_ibfk_2` FOREIGN KEY (`ClaveMateria`) REFERENCES `materias` (`ClaveMateria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
