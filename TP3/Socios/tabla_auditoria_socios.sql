DROP TABLE IF EXISTS `auditoria_socios`;

CREATE TABLE `auditoria_socios` (
	`operacion` VARCHAR (80),
	`fInscripcion_anterior` DATE,
	`fInscripcion_nueva` DATE,
	`fRenovacion_anterior` DATE,
	`fRenovacion_nueva` DATE,
	`fBaja_anterior` DATE,
	`fBaja_nueva` DATE,
	`emmac_anterior` DATE,
	`emmac_nueva` DATE,
	`activo_anterior` INT(11) NOT NULL DEFAULT '1',
	`activo_nuevo` INT(11) NOT NULL DEFAULT '1',
	`fecha` TIMESTAMP
);