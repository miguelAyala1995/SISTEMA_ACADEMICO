-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-12-2022 a las 15:03:35
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_academico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE `calificaciones` (
  `id` int(11) NOT NULL,
  `id_matricula` int(11) NOT NULL,
  `nro_calificacion` int(2) NOT NULL,
  `calificacion` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) COLLATE utf32_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`id`, `descripcion`) VALUES
(2, 'SECRETARIO'),
(3, 'DIRECTOR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `condicion`
--

CREATE TABLE `condicion` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) COLLATE utf32_spanish2_ci NOT NULL,
  `codigo` varchar(10) COLLATE utf32_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

--
-- Volcado de datos para la tabla `condicion`
--

INSERT INTO `condicion` (`id`, `descripcion`, `codigo`) VALUES
(1, 'Regular', '1'),
(2, 'Irregular', '2'),
(3, 'OTRO', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_institucionales`
--

CREATE TABLE `datos_institucionales` (
  `cod_modular` varchar(10) COLLATE utf32_spanish2_ci NOT NULL,
  `ruc` int(13) NOT NULL,
  `nombre_institucion` varchar(200) COLLATE utf32_spanish2_ci NOT NULL,
  `departamento` varchar(100) COLLATE utf32_spanish2_ci NOT NULL,
  `provincia` varchar(100) COLLATE utf32_spanish2_ci NOT NULL,
  `distrito` varchar(100) COLLATE utf32_spanish2_ci NOT NULL,
  `direccion` varchar(200) COLLATE utf32_spanish2_ci NOT NULL,
  `telofono` varchar(15) COLLATE utf32_spanish2_ci NOT NULL,
  `correo` varchar(200) COLLATE utf32_spanish2_ci NOT NULL,
  `nro_resolucion` varchar(50) COLLATE utf32_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

--
-- Volcado de datos para la tabla `datos_institucionales`
--

INSERT INTO `datos_institucionales` (`cod_modular`, `ruc`, `nombre_institucion`, `departamento`, `provincia`, `distrito`, `direccion`, `telofono`, `correo`, `nro_resolucion`) VALUES
('0671107', 2044951932, 'INSTITUTO DE EDUCACIÓN SUPERIOR TECNOLÓGICO PÚBLICO HUANTA', 'AYACUCHO', 'HUANTA', 'HUANTA', 'JR. CORDOVA NRO. 650', '066322296', 'iestphuanta@gmail.com', 'RD. 095-85');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `id` int(11) NOT NULL,
  `dni` int(8) NOT NULL,
  `apellidos_nombres` varchar(130) COLLATE utf32_spanish2_ci NOT NULL,
  `fecha_nac` date NOT NULL,
  `direccion` varchar(150) COLLATE utf32_spanish2_ci NOT NULL,
  `correo` varchar(100) COLLATE utf32_spanish2_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf32_spanish2_ci NOT NULL,
  `id_genero` int(11) NOT NULL,
  `nivel_educacion` varchar(200) COLLATE utf32_spanish2_ci NOT NULL,
  `cond_laboral` varchar(50) COLLATE utf32_spanish2_ci NOT NULL,
  `id_cargo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`id`, `dni`, `apellidos_nombres`, `fecha_nac`, `direccion`, `correo`, `telefono`, `id_genero`, `nivel_educacion`, `cond_laboral`, `id_cargo`) VALUES
(12, 72160573, 'Miguel Angel Ayala Marcelo', '1995-03-16', 'Jr.  Raazuhillca S/N', 'ayala.15.12.1995@gmail.com', '990334882', 1, 'TECNICO', 'CONTRATADO', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `id` int(11) NOT NULL,
  `dni` int(8) NOT NULL,
  `apellidos_nombres` varchar(130) COLLATE utf32_spanish2_ci NOT NULL,
  `id_genero` int(11) NOT NULL,
  `fecha_nac` date NOT NULL,
  `direccion` varchar(200) COLLATE utf32_spanish2_ci NOT NULL,
  `correo` varchar(100) COLLATE utf32_spanish2_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf32_spanish2_ci NOT NULL,
  `anio_ingreso` date NOT NULL,
  `id_programa_estudios` int(11) NOT NULL,
  `id_semestre` int(11) NOT NULL,
  `seccion` varchar(1) COLLATE utf32_spanish2_ci NOT NULL,
  `turno` varchar(20) COLLATE utf32_spanish2_ci NOT NULL,
  `id_condicion` int(11) NOT NULL,
  `discapacidad` varchar(2) COLLATE utf32_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id` int(11) NOT NULL,
  `genero` varchar(50) COLLATE utf32_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id`, `genero`) VALUES
(1, 'Masculino'),
(2, 'Femenino'),
(3, 'Binario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matricula`
--

CREATE TABLE `matricula` (
  `id` int(11) NOT NULL,
  `id_periodo_acad` int(11) NOT NULL,
  `id_programa_estudio` int(11) NOT NULL,
  `id_semestre` int(11) NOT NULL,
  `id_programacion_ud` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `fecha_reg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo_profesional`
--

CREATE TABLE `modulo_profesional` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(200) COLLATE utf32_spanish2_ci NOT NULL,
  `nro_modulo` int(2) NOT NULL,
  `id_programa_estudio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

--
-- Volcado de datos para la tabla `modulo_profesional`
--

INSERT INTO `modulo_profesional` (`id`, `descripcion`, `nro_modulo`, `id_programa_estudio`) VALUES
(1, 'ANALISIS Y DISEÑO DE SISTEMAS WEB', 1, 1),
(2, 'DESARROLLO DE APLICACIONES WEB', 2, 1),
(3, 'ANALISIS Y DISEÑO DE SISTEMAS WEB', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo_academico`
--

CREATE TABLE `periodo_academico` (
  `id` int(11) NOT NULL,
  `nombre` varchar(10) COLLATE utf32_spanish2_ci NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `id_director` int(11) NOT NULL,
  `fecha_actas` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

--
-- Volcado de datos para la tabla `periodo_academico`
--

INSERT INTO `periodo_academico` (`id`, `nombre`, `fecha_inicio`, `fecha_fin`, `id_director`, `fecha_actas`) VALUES
(5, '2022-II', '2022-11-09', '2022-11-16', 12, '2022-11-09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presente_periodo_acad`
--

CREATE TABLE `presente_periodo_acad` (
  `id` int(11) NOT NULL,
  `id_periodo_acad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

--
-- Volcado de datos para la tabla `presente_periodo_acad`
--

INSERT INTO `presente_periodo_acad` (`id`, `id_periodo_acad`) VALUES
(1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programacion_unidad_didactica`
--

CREATE TABLE `programacion_unidad_didactica` (
  `id` int(11) NOT NULL,
  `id_unidad_didactica` int(11) NOT NULL,
  `id_docente` int(11) NOT NULL,
  `id_periodo_acad` int(11) NOT NULL,
  `id_programa_estudio` int(11) NOT NULL,
  `id_semestre` int(11) NOT NULL,
  `cant_calificacion` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa_estudios`
--

CREATE TABLE `programa_estudios` (
  `id` int(11) NOT NULL,
  `codigo` varchar(10) COLLATE utf32_spanish2_ci NOT NULL,
  `tipo` varchar(30) COLLATE utf32_spanish2_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf32_spanish2_ci NOT NULL,
  `resolucion` varchar(30) COLLATE utf32_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

--
-- Volcado de datos para la tabla `programa_estudios`
--

INSERT INTO `programa_estudios` (`id`, `codigo`, `tipo`, `nombre`, `resolucion`) VALUES
(1, 'DPWEB', 'Modular', 'Diseño y programación', 'RD. 095-85');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte`
--

CREATE TABLE `reporte` (
  `id` int(11) NOT NULL,
  `id_usuario_docente` int(11) NOT NULL,
  `id_tipo_reporte` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `fecha_reg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semestre`
--

CREATE TABLE `semestre` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(3) COLLATE utf32_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

--
-- Volcado de datos para la tabla `semestre`
--

INSERT INTO `semestre` (`id`, `descripcion`) VALUES
(1, 'I'),
(2, 'II'),
(3, 'III'),
(4, 'IV');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_reporte`
--

CREATE TABLE `tipo_reporte` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) COLLATE utf32_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_didactica`
--

CREATE TABLE `unidad_didactica` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) COLLATE utf32_spanish2_ci NOT NULL,
  `id_programa_estudio` int(11) NOT NULL,
  `id_modulo` int(11) NOT NULL,
  `id_semestre` int(11) NOT NULL,
  `creditos` int(2) NOT NULL,
  `horas` int(2) NOT NULL,
  `tipo` varchar(100) COLLATE utf32_spanish2_ci NOT NULL,
  `orden` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_docentes`
--

CREATE TABLE `usuarios_docentes` (
  `id` int(11) NOT NULL,
  `id_docente` int(11) NOT NULL,
  `usuario` varchar(50) COLLATE utf32_spanish2_ci NOT NULL,
  `password` varchar(1000) COLLATE utf32_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios_docentes`
--

INSERT INTO `usuarios_docentes` (`id`, `id_docente`, `usuario`, `password`) VALUES
(15, 12, '40566377', '$2y$10$pQljlucbHj0YXByRV2KFte1./mtSdjduQFn1zC6rHSctXNox6pcHS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_estudiante`
--

CREATE TABLE `usuarios_estudiante` (
  `id` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `usuario` varchar(50) COLLATE utf32_spanish2_ci NOT NULL,
  `password` varchar(1000) COLLATE utf32_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_matricula` (`id_matricula`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `condicion`
--
ALTER TABLE `condicion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_genero` (`id_genero`),
  ADD KEY `id_cargo` (`id_cargo`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_genero` (`id_genero`),
  ADD KEY `id_programa_estudios` (`id_programa_estudios`),
  ADD KEY `id_semestre` (`id_semestre`),
  ADD KEY `id_condicion` (`id_condicion`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_periodo_acad` (`id_periodo_acad`),
  ADD KEY `id_programa_estudio` (`id_programa_estudio`),
  ADD KEY `id_semestre` (`id_semestre`),
  ADD KEY `id_programacion_ud` (`id_programacion_ud`),
  ADD KEY `id_estudiante` (`id_estudiante`);

--
-- Indices de la tabla `modulo_profesional`
--
ALTER TABLE `modulo_profesional`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_programa_estudio` (`id_programa_estudio`);

--
-- Indices de la tabla `periodo_academico`
--
ALTER TABLE `periodo_academico`
  ADD PRIMARY KEY (`id`),
  ADD KEY `director` (`id_director`);

--
-- Indices de la tabla `presente_periodo_acad`
--
ALTER TABLE `presente_periodo_acad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_periodo_acad` (`id_periodo_acad`);

--
-- Indices de la tabla `programacion_unidad_didactica`
--
ALTER TABLE `programacion_unidad_didactica`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_unidad_didactica` (`id_unidad_didactica`),
  ADD KEY `id_docente` (`id_docente`),
  ADD KEY `id_periodo_acad` (`id_periodo_acad`),
  ADD KEY `id_programa_estudio` (`id_programa_estudio`),
  ADD KEY `id_semestre` (`id_semestre`);

--
-- Indices de la tabla `programa_estudios`
--
ALTER TABLE `programa_estudios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reporte`
--
ALTER TABLE `reporte`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario_docente` (`id_usuario_docente`),
  ADD KEY `id_tipo_reporte` (`id_tipo_reporte`);

--
-- Indices de la tabla `semestre`
--
ALTER TABLE `semestre`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_reporte`
--
ALTER TABLE `tipo_reporte`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `unidad_didactica`
--
ALTER TABLE `unidad_didactica`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_programa_estudio` (`id_programa_estudio`),
  ADD KEY `id_modulo` (`id_modulo`),
  ADD KEY `id_semestre` (`id_semestre`);

--
-- Indices de la tabla `usuarios_docentes`
--
ALTER TABLE `usuarios_docentes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_docente` (`id_docente`);

--
-- Indices de la tabla `usuarios_estudiante`
--
ALTER TABLE `usuarios_estudiante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_estudiante` (`id_estudiante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `condicion`
--
ALTER TABLE `condicion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `matricula`
--
ALTER TABLE `matricula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modulo_profesional`
--
ALTER TABLE `modulo_profesional`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `periodo_academico`
--
ALTER TABLE `periodo_academico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `presente_periodo_acad`
--
ALTER TABLE `presente_periodo_acad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `programacion_unidad_didactica`
--
ALTER TABLE `programacion_unidad_didactica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `programa_estudios`
--
ALTER TABLE `programa_estudios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `reporte`
--
ALTER TABLE `reporte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `semestre`
--
ALTER TABLE `semestre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipo_reporte`
--
ALTER TABLE `tipo_reporte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `unidad_didactica`
--
ALTER TABLE `unidad_didactica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `usuarios_docentes`
--
ALTER TABLE `usuarios_docentes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `usuarios_estudiante`
--
ALTER TABLE `usuarios_estudiante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD CONSTRAINT `calificaciones_ibfk_1` FOREIGN KEY (`id_matricula`) REFERENCES `matricula` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `docente`
--
ALTER TABLE `docente`
  ADD CONSTRAINT `docente_ibfk_1` FOREIGN KEY (`id_cargo`) REFERENCES `cargo` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `docente_ibfk_2` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `estudiante_ibfk_1` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `estudiante_ibfk_2` FOREIGN KEY (`id_programa_estudios`) REFERENCES `programa_estudios` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `estudiante_ibfk_3` FOREIGN KEY (`id_semestre`) REFERENCES `semestre` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `estudiante_ibfk_4` FOREIGN KEY (`id_condicion`) REFERENCES `condicion` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `matricula_ibfk_1` FOREIGN KEY (`id_periodo_acad`) REFERENCES `periodo_academico` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `matricula_ibfk_2` FOREIGN KEY (`id_programa_estudio`) REFERENCES `programa_estudios` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `matricula_ibfk_3` FOREIGN KEY (`id_semestre`) REFERENCES `semestre` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `matricula_ibfk_4` FOREIGN KEY (`id_programacion_ud`) REFERENCES `programacion_unidad_didactica` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `matricula_ibfk_5` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `modulo_profesional`
--
ALTER TABLE `modulo_profesional`
  ADD CONSTRAINT `modulo_profesional_ibfk_1` FOREIGN KEY (`id_programa_estudio`) REFERENCES `programa_estudios` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `periodo_academico`
--
ALTER TABLE `periodo_academico`
  ADD CONSTRAINT `periodo_academico_ibfk_1` FOREIGN KEY (`id_director`) REFERENCES `docente` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `presente_periodo_acad`
--
ALTER TABLE `presente_periodo_acad`
  ADD CONSTRAINT `presente_periodo_acad_ibfk_1` FOREIGN KEY (`id_periodo_acad`) REFERENCES `periodo_academico` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `programacion_unidad_didactica`
--
ALTER TABLE `programacion_unidad_didactica`
  ADD CONSTRAINT `programacion_unidad_didactica_ibfk_1` FOREIGN KEY (`id_semestre`) REFERENCES `semestre` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `programacion_unidad_didactica_ibfk_2` FOREIGN KEY (`id_periodo_acad`) REFERENCES `periodo_academico` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `programacion_unidad_didactica_ibfk_3` FOREIGN KEY (`id_unidad_didactica`) REFERENCES `unidad_didactica` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `programacion_unidad_didactica_ibfk_4` FOREIGN KEY (`id_docente`) REFERENCES `docente` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `programacion_unidad_didactica_ibfk_5` FOREIGN KEY (`id_programa_estudio`) REFERENCES `programa_estudios` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `reporte`
--
ALTER TABLE `reporte`
  ADD CONSTRAINT `reporte_ibfk_1` FOREIGN KEY (`id_usuario_docente`) REFERENCES `usuarios_docentes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `reporte_ibfk_2` FOREIGN KEY (`id_tipo_reporte`) REFERENCES `tipo_reporte` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `unidad_didactica`
--
ALTER TABLE `unidad_didactica`
  ADD CONSTRAINT `unidad_didactica_ibfk_1` FOREIGN KEY (`id_semestre`) REFERENCES `semestre` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `unidad_didactica_ibfk_2` FOREIGN KEY (`id_programa_estudio`) REFERENCES `programa_estudios` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `unidad_didactica_ibfk_3` FOREIGN KEY (`id_modulo`) REFERENCES `modulo_profesional` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios_docentes`
--
ALTER TABLE `usuarios_docentes`
  ADD CONSTRAINT `usuarios_docentes_ibfk_1` FOREIGN KEY (`id_docente`) REFERENCES `docente` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios_estudiante`
--
ALTER TABLE `usuarios_estudiante`
  ADD CONSTRAINT `usuarios_estudiante_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
