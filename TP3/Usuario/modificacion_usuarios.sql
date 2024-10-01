
-- Modificación Y ACTUALIZACIÓN de usuarios existentes:

UPDATE `usuarios` SET `nombre` = 'Santina', `apellido` = 'Quesada', `direccion` = 'Nueva Direccion 456', 
							 `email` = 'santinaEjemplo@gmail.com', `telefono` = '987654321' 
						WHERE `id` = 5933;