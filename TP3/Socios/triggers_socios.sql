DELIMITER //

CREATE TRIGGER `socios_insert`
AFTER INSERT ON `socios`
FOR EACH ROW
BEGIN
	INSERT INTO `auditoria_socios` (`operacion`, `fInscripcion_nueva`,`fRenovacion_nueva`,`fBaja_nueva`,`emmac_nueva`,`activo_nuevo`, `fecha`)
	VALUES ( 'INSERT', NEW.`fInscripcion`, NEW.`fRenovacion`,NEW.`fBaja`, NEW.`emmac`,NEW.`activo`, NOW());
END;

//

CREATE TRIGGER `socios_update`
BEFORE UPDATE ON `socios`
FOR EACH ROW
BEGIN
	INSERT INTO `auditoria_socios` (`operacion`, `fInscripcion_nueva`,`fInscripcion_anterior` ,`fRenovacion_nueva`,`fRenovacion_anterior` ,`fBaja_nueva`,`fBaja_anterior` ,`emmac_nueva`,`emmac_anterior`, `activo_nuevo`, `activo_anterior`, `fecha`)
	VALUES ( 'UPDATE', NEW.`fInscripcion`, OLD.`fInscripcion`, NEW.`fRenovacion`, OLD.`fRenovacion`, NEW.`fBaja`, OLD.`fBaja`, NEW.`emmac`, OLD.`emmac`, NEW.`activo`, OLD.`activo`, NOW());
END;

//
