-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-01-2023 a las 23:26:15
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ves_asset`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `code_activo` int(4) UNSIGNED ZEROFILL NOT NULL,
  `comment` varchar(2555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `code_activo`, `comment`) VALUES
(1, 0112, 'Cargador  nuevo ya fue transportado y lo esta usando la persona a la que le corresponde  cargador malo serial CT:WHGRE0CVKF4HBK '),
(2, 0087, 'Se le asigno temporalmente el 0027'),
(3, 0115, 'se le asigno temporalmente 0084'),
(4, 0100, 'se le asigno temporalmente 0027'),
(5, 0070, 'va a ser llevado a soporte después de la 1:30 para verificar cargador\r\n'),
(6, 0070, 'Cambio de cargador proximamente\r\n'),
(7, 0076, 'fue reportado como Extraviado y perdido'),
(8, 0057, 'Tenia las pilas al revez '),
(9, 0102, 'mouse se le Daño el sensor  Cambio de rueda de desplazamiento'),
(10, 0070, 'CT:WHGRE0CVKF4HHF  CARGADOR MALO NUEVO CARGADOR PARA 0070 CT:WHGRE0CNJGVBPB'),
(11, 0022, 'Mantenimiento Preventivo ASINADO 0084'),
(12, 0077, 'MANTENIMIENTO PREVENTIVO ASIGNADO 0027\r\n'),
(13, 0063, 'mantenimiento preventivo asignado temporalmente 0119\r\n'),
(14, 0124, 'SOPORTE TERMINADO DISPOSITIVO EN BUEN ESTADO\r\n'),
(15, 0123, 'CAMBIO DE PLACA BASE SOPORTE TERMINADO'),
(16, 0032, 'The Recycle Bin on C:/is corrupted. Do you want to empty the Recycle Bin For this drive'),
(17, 0123, 'Juan morales lo usa temporalmente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impresora`
--

CREATE TABLE `impresora` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `serial` varchar(255) NOT NULL,
  `cambios` varchar(255) NOT NULL,
  `imagen` longblob NOT NULL,
  `tintas` varchar(2555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventory`
--

CREATE TABLE `inventory` (
  `code_activo` int(4) UNSIGNED ZEROFILL NOT NULL,
  `NOMBRE` varchar(255) NOT NULL,
  `POSITION` varchar(255) NOT NULL,
  `Deparment` varchar(255) NOT NULL,
  `COMPUTER` varchar(255) NOT NULL,
  `MARCA` varchar(255) NOT NULL,
  `MODELO_REFERENCIA` varchar(255) NOT NULL,
  `SERIALES` varchar(255) NOT NULL,
  `PROCESSOR` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `CONTRASEÑA` varchar(255) NOT NULL,
  `PIN` varchar(255) NOT NULL,
  `NOMBRE_EQUIPO` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `CAMBIO` varchar(2555) NOT NULL,
  `RAM` varchar(255) NOT NULL,
  `HARD_DRIVE` varchar(255) NOT NULL,
  `SERIAL_CARGADOR` varchar(255) NOT NULL,
  `NUMERO_PARTE_CARGADOR` varchar(255) NOT NULL,
  `PROVEEDOR` varchar(255) NOT NULL,
  `FECHA_COMPRA` date NOT NULL,
  `COSTO_EQUIPO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `NOMBRE` varchar(255) NOT NULL,
  `CONTRASEÑA` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id`, `NOMBRE`, `CONTRASEÑA`) VALUES
(1, 'admin root', '12345'),
(3, 'yeison', '1818');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mantenimiento`
--

CREATE TABLE `mantenimiento` (
  `id` int(11) NOT NULL,
  `code_activo` int(4) UNSIGNED ZEROFILL NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `falla` varchar(255) NOT NULL,
  `team` varchar(255) NOT NULL,
  `Equipo_owner` varchar(255) NOT NULL,
  `Dia_mantenimiento` date NOT NULL,
  `Equipo_borrowed` varchar(255) NOT NULL,
  `Dia_entregado` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mantenimiento`
--

INSERT INTO `mantenimiento` (`id`, `code_activo`, `nombre`, `falla`, `team`, `Equipo_owner`, `Dia_mantenimiento`, `Equipo_borrowed`, `Dia_entregado`) VALUES
(3, 0104, 'Maria alejandra gomez villa', 'NO hay falla Mantenimiento aplazado para otro momento mas conveniente', 'hotel', '5CD125V6KH', '0000-00-00', 'no aun', '0000-00-00'),
(9, 0022, 'Sergio Andres Gomez Vasquez', 'Laptop presenta retrasos y lleva mucho tiempo sin mantenimiento', 'Lima', '5CD110MMZY', '2022-11-15', '5CD125V5KQ', '0000-00-00'),
(10, 0063, 'Santiago Sierra Monsalve', 'LAPTOP VIEJO mantenimiento para otro momento ', 'Kilo', 'CND1082FR6', '0000-00-00', 'no aun', '0000-00-00'),
(11, 0077, 'Jeison Bedoya Zapata', 'LAPTOP VIEJO', 'Bravo', '5CD110MN04', '2022-11-15', 'CND1102C2Z', '0000-00-00'),
(13, 0060, 'Esthefania Gomez Londoño', 'LAPTOP VIEJO', 'Kilo', 'CND1102BXX', '2022-11-30', 'aplazado por fallo con el servidor ', '0000-00-00'),
(16, 0013, 'mariannie Yiseth Garcia vera', 'LAPTOP VIEJO', 'HH', 'CND1082FQ4', '0000-00-00', 'Pidio que se le aplazara para otro momento por cosas de trabajo', '0000-00-00'),
(17, 0067, 'Angie rangel velasquez', 'LAPTOP VIEJO', 'Foxtrot', 'CND1082DC0', '2022-11-18', 'Pidio que se le aplazara para otro momento por cosas de trabajo', '0000-00-00'),
(19, 0004, 'Melitta Peñaloza Mora', 'LAPTOP VIEJO', 'india', 'NXHZRAL00205102ED47600', '2022-11-29', 'no aun', '0000-00-00'),
(20, 0102, 'Correa Florez Jose Miguel', 'LAPTOP VIEJO', 'india', '5CD115RCQN', '2022-11-29', 'no aun', '0000-00-00'),
(22, 0018, 'Juan Pablo Galvis Mendoza', 'LAPTOP VIEJO', 'Delta', 'NXHZRAL0021040B98B7600', '2022-11-23', 'no aun', '0000-00-00'),
(23, 0019, 'Claudia Alejandra Padilla quevedo', 'LAPTOP VIEJO', 'Delta', '5CD125V5L6', '2022-11-23', 'no aun', '0000-00-00');

--
-- Disparadores `mantenimiento`
--
DELIMITER $$
CREATE TRIGGER `mantenimiento terminado` BEFORE DELETE ON `mantenimiento` FOR EACH ROW INSERT INTO mmt_make (code_activo,nombre,falla,team,Equipo_owner, Dia_mantenimiento,Equipo_borrowed,Dia_entregado) VALUES(OLD.code_activo,OLD.nombre,OLD.falla, OLD.team,OLD.Equipo_owner,OLD.Dia_mantenimiento, OLD.Equipo_borrowed,OLD.Dia_entregado)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mmt_make`
--

CREATE TABLE `mmt_make` (
  `id` int(11) NOT NULL,
  `code_activo` int(4) UNSIGNED ZEROFILL NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `falla` varchar(255) NOT NULL,
  `team` varchar(255) NOT NULL,
  `Equipo_owner` varchar(255) NOT NULL,
  `Dia_mantenimiento` date NOT NULL,
  `Equipo_borrowed` varchar(255) NOT NULL,
  `Dia_entregado` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mmt_make`
--

INSERT INTO `mmt_make` (`id`, `code_activo`, `nombre`, `falla`, `team`, `Equipo_owner`, `Dia_mantenimiento`, `Equipo_borrowed`, `Dia_entregado`) VALUES
(1, 0087, 'Cristian Eduardo Arbelaez Reyes', 'El computador se relantiza bastante al momento de conectarlo a la corriente', 'charlie', 'CND1102C4Z', '2022-11-03', 'CND1102C2Z', '2022-11-03'),
(2, 0115, 'Camilo Cano Giraldo', 'el computador se relantiza bastante al momento de conectarlo a la corriente', 'charlie', 'NXHMDAL02B139186707600', '2022-11-03', '5CD125V5KQ', '2022-11-03'),
(3, 0100, 'Arango Jaramillo Silvanna Isabel', 'funciona muy lento y lleva dos años sin mantenimiento', 'Alpha', 'CND0465TKS', '2022-11-04', 'CND1102C2Z', '2022-11-04'),
(4, 0105, 'Jaree Francmar Garrido Delgado', 'lento, se congela de la nada en el peor de los casos simplemente se apaga con la bateria full', 'Hotel', '5CD1507363', '2022-11-08', 'CND1102C2Z', '2022-11-08'),
(5, 0007, 'Juan Sebastian Galvis Muñoz', 'problemas al reiniciar dese botom', 'india', '5CD150737N', '2022-11-08', '5CD125V5KQ', '2022-11-08'),
(6, 0051, 'Sebastian Pulgarin Manrique', 'Bios Desactualizada Daño de clave de seguridad', 'Lima', '5CD15072WP', '2022-11-08', 'NXHMDAL02B139187717600', '2022-11-08'),
(7, 0090, 'Camilo Arredondo Portillo', 'a veces tarda en arrancar y le faltan algunas pestañas', 'juliet', '5CD125V5KP', '2022-11-10', 'CND1102C2Z', '2022-11-10'),
(8, 0033, 'Mario Enrique Castro Parra', 'LAPTOP VIEJO', 'Charlie', '5CD125V5K6', '2022-11-17', 'CND1102C2Z', '2022-11-17'),
(9, 0098, 'Jaribel Daniela Sanguino Ramos', 'LAPTOP VIEJO', 'Foxtrot', '5CD115RCPQ', '2022-11-18', 'CND1102C2Z', '2022-11-18'),
(10, 0036, 'Natali Guilombo Henao', 'LAPTOP VIEJO', 'Admin', 'NXHZRAL0021040BA137600', '2022-11-18', 'NXHMDAL02B139187717600', '2022-11-18'),
(11, 0103, 'Tobon Alzate Laura', 'LAPTOP VIEJO', 'Sales', 'CND1082FZF', '2022-11-21', '5CD125V5KQ', '2022-11-21'),
(12, 0049, 'santiago lemus osorio', 'LAPTOP VIEJO', 'juliet', 'CND1102C29', '2022-11-22', '5CD125V5KQ', '2022-11-22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `retirados`
--

CREATE TABLE `retirados` (
  `code_activo` int(4) UNSIGNED ZEROFILL NOT NULL,
  `NOMBRE` varchar(255) NOT NULL,
  `POSITION` varchar(255) NOT NULL,
  `Deparment` varchar(255) NOT NULL,
  `COMPUTER` varchar(255) NOT NULL,
  `MARCA` varchar(255) NOT NULL,
  `MODELO_REFERENCIA` varchar(255) NOT NULL,
  `SERIALES` varchar(255) NOT NULL,
  `PROCESSOR` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `CONTRASEÑA` varchar(255) NOT NULL,
  `PIN` varchar(255) NOT NULL,
  `NOMBRE_EQUIPO` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `CAMBIO` varchar(2555) NOT NULL,
  `RAM` varchar(255) NOT NULL,
  `HARD_DRIVE` varchar(255) NOT NULL,
  `SERIAL_CARGADOR` varchar(255) NOT NULL,
  `NUMERO_PARTE_CARGADOR` varchar(255) NOT NULL,
  `PROVEEDOR` varchar(255) NOT NULL,
  `FECHA_COMPRA` date NOT NULL,
  `COSTO_EQUIPO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `soportes`
--

CREATE TABLE `soportes` (
  `code_activo` int(4) UNSIGNED ZEROFILL NOT NULL,
  `FECHA` date NOT NULL,
  `SERIAL` varchar(2555) NOT NULL,
  `NOMBRE_EMPLEADO` varchar(2555) NOT NULL,
  `PROBLEMA` varchar(2555) NOT NULL,
  `Tareas_Realizadas` varchar(2544) NOT NULL,
  `Solucion` varchar(2555) NOT NULL,
  `Numero_Caso` varchar(2555) NOT NULL,
  `Proveedor` varchar(2555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `soportes`
--

INSERT INTO `soportes` (`code_activo`, `FECHA`, `SERIAL`, `NOMBRE_EMPLEADO`, `PROBLEMA`, `Tareas_Realizadas`, `Solucion`, `Numero_Caso`, `Proveedor`) VALUES
(0006, '2022-07-18', '5CD15072WC', 'carolina bejarano', 'puerto usb del pc dañado', 'actualizacion de sistema operativo y otras actualizaciones como firmware', 'actualizacion de sistema en la actualizaciones opciones avanzadas', '', ''),
(0006, '2022-07-26', '5CD15072WC', 'carolina bejarano', 'puerto usb del pc dañado', 'actualizacion de sistema operativo y otras actualizaciones como firmware', 'actualizacion de sistema en la actualizaciones opciones avanzadas', '', ''),
(0092, '2022-07-27', '5CD145KD42', 'NO esta asignado', 'no funciona la letra COMA (,)', 'LLamar directamente a soporte de hp ys seguir el protocolo indicado por el acesor  laptop llevada a lavoratorio hp', 'Cambio De TOP COVER FGB W/KB CBL FPR LTNA', '5089109708', 'KTRONIX'),
(0045, '2022-07-28', '5CD1507396', 'Bibiana Martinez echavarria', 'se recalienta a temperaturas elevadas', 'Actualizacion de sistema operativo actualizacion de la bios y otras actualizaciones como firmware ', 'actualizacion en el sistema', '', ''),
(0001, '2022-07-29', '5CD146LN1N', 'Angelly Natasha', 'la laptop funciona muy lento ', 'actualizaciones de firmware optimizacion del dispositivo', 'optimizacion del dispositivo por medio de la aplicacion hp support', '', ''),
(0107, '2022-08-26', '5CD145KD6C', 'DEBORA ROSARIO MONTES', 'se le esta regando la tinta a la pantalla', 'realizar llamada a soporte hp  indicando a el agente el problema presentado', 'no hay grantia por tratarse de un mal manejo de el equipo', '5090864755', ''),
(0024, '2022-09-27', 'NXHZRAL0021040BA537600', 'Cristian David López', 'Bateria se descarga muy rapido No funciona el bluetooh', 'llamar a soporte de Acer descargar y instalar controladores de bluetooh  calibracion de bateria desde pagin acer.com ', 'descargar y instalar controladores de bluetooh calibrar bateria', '135099LA', ''),
(0017, '2022-09-28', 'CND0465TL2', 'Maria Camila Gutierrez', 'Laptop funciona de forma irregular e inpredecible parece tener un virus', 'instalacion de antivirus para verificar  formatear laptop', '', '', ''),
(0112, '2022-10-21', 'CT:WHGRE0CVKF4HBK', 'Sebastian Fernando Ospina Zapata', 'CARGADOR NO FUNCIONA ', 'Verificar su funcionamiento en diferentes laptos de la misma marca prueba de funcionamiento de componentes del sistema', 'CAMBIO DE ADAPTADOR DE ENERGIA', '5094372416 ', ''),
(0070, '2022-10-21', 'CT:WHGRE0CVKF4HHF', 'LEIDY ALEJANDRA SIERRA CARVAJAL', 'CARGADOR NO FUNCIONA ', 'llamar a soporte hp Cambio de cargador CAMBIAR CARGADOR MALO POR OTRO QUE FUNCIONES', 'en proceso: cargador ya llego hace falta entregarlo al usuario', '  5094751918', ''),
(0124, '2022-10-24', 'GW64HJ3', 'Inspiron 3501', 'Mensaje al encender que dice Alert! TPM device is not detected.', 'llevar laptop a centro de reparación cercano', 'Remplazo placa base', '36773722047', ''),
(0123, '2022-10-26', 'CF26HJ3', 'Karina Quinchia Toro', 'Mensaje al encender que dice Alert! TPM device is not detected.', 'llamar a soporte', 'Remplazo de placa base', '27032042559', 'computadores en linea'),
(0119, '2022-11-02', 'NXHMDAL02B139187717600', 'NO  asignado', 'ninguno', 'mantenimeinto', 'solucionado', '', 'computadores en linea'),
(0051, '2022-11-08', '5CD15072WP', 'Sebastian Pulgarin Manrique', 'Daño de clave de segurida', 'Restaurar valores de fabrica', 'actualizacion de sistema y de la bios', '', ''),
(0032, '2022-11-21', '5CD115RD26', 'Alexander alvin Atwater', 'Mensaje:	The Recycle Bin on C:/is corrupted. Do you want to empty the Recycle Bin For this drive', 'Revision de Equipo', 'en proceso', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tintas`
--

CREATE TABLE `tintas` (
  `id` int(11) NOT NULL,
  `toner_color` varchar(255) NOT NULL,
  `fecha_cambio` date NOT NULL,
  `id_impresora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `impresora`
--
ALTER TABLE `impresora`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`code_activo`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mantenimiento`
--
ALTER TABLE `mantenimiento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mmt_make`
--
ALTER TABLE `mmt_make`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tintas`
--
ALTER TABLE `tintas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_impresora` (`id_impresora`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `impresora`
--
ALTER TABLE `impresora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `inventory`
--
ALTER TABLE `inventory`
  MODIFY `code_activo` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `mantenimiento`
--
ALTER TABLE `mantenimiento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `mmt_make`
--
ALTER TABLE `mmt_make`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tintas`
--
ALTER TABLE `tintas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tintas`
--
ALTER TABLE `tintas`
  ADD CONSTRAINT `tintas_ibfk_1` FOREIGN KEY (`id_impresora`) REFERENCES `impresora` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
