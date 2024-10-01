DROP TABLE IF EXISTS `auditoria_usuarios`;

CREATE TABLE `auditoria_usuarios` (
	`operacion` VARCHAR(80),
	`direccion_anterior` VARCHAR(80),
	`direccion_nueva` VARCHAR(80),
	`telefono_anterior` VARCHAR(80),
	`telefono_nuevo` VARCHAR(80),
	`email_anterior` VARCHAR(50),
	`email_nuevo` VARCHAR(50),
	`fecha` TIMESTAMP
);