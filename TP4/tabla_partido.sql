DROP TABLE `Partido`;
CREATE TABLE `Partido` (
	`nro` INT(10) NOT NULL,
	`cod_local` VARCHAR(4),
	`gol_local` INT(8) NULL DEFAULT NULL,
	`cod_visitante` VARCHAR(4),
	`gol_visitante` INT(8) NULL DEFAULT NULL,
	PRIMARY KEY (`nro`)
)ENGINE=InnoDB;
