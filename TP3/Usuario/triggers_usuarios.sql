DELIMITER //

CREATE TRIGGER `usuario_insert`
AFTER INSERT ON `usuarios`
FOR EACH ROW
BEGIN
	INSERT INTO `auditoria_usuarios` (`operacion`, `direccion_nueva`,`telefono_nuevo`, `email_nuevo`, `fecha`)
	VALUES ('INSERT', NEW.`direccion`, NEW.`telefono`, NEW.`email`, NOW());
END;
//

CREATE TRIGGER `usuario_update`
BEFORE UPDATE ON `usuarios`
FOR EACH ROW
BEGIN
	INSERT INTO `auditoria_usuarios` (`operacion`, `direccion_anterior`, `direccion_nueva`, `telefono_anterior`, `telefono_nuevo`, `email_anterior`, `email_nuevo`, `fecha`)
	VALUES ('UPDATE', OLD.`direccion`, NEW.`direccion`, OLD.`telefono`, NEW.`telefono`, OLD.`email`, NEW.`email`, NOW());
END;
//

DELIMITER ;
