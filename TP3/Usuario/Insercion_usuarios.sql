-- Inserción de usuarios: 
INSERT INTO `usuarios` (
    `nombre`, `apellido`, `dni`, `clave`, `activo`, 
    `pais`, `provincia`, `localidad`, `direccion`, 
    `telefono`, `sexo`, `fNacimiento`, `email`, `imagen`
)
VALUES (
    'Juan', 'Perez', 4, 'password', 1, 
    'Argentina', 'Buenos Aires', 'CABA', 'Calle Falsa 123', 
    '123456789', 'hombre', '1990-01-01', 'juan@example.com', 'imagen.jpg'
);

