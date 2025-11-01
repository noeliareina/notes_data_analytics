-- 2. Modifica la base de datos
-- Modifica la columna email de la tabla **clientes**.
-- Ahora queremos que tenga más capacidad de caracteres 
-- y que no acepte nulos.
-- Modifica la columna estado en la tabla **alquileres**. 
-- Queremos que siga aceptando solo los valores ‘pendiente’ 
-- y ‘devuelto’, pero que por  defecto el valor sea ‘pendiente’.

ALTER TABLE clientes;
ALTER TABLE clientes MODIFY COLUMN email VARCHAR(100) NOT NULL;

UPDATE clientes
SET email = 'no_disponible@example.com'
WHERE email IS NULL;

ALTER TABLE alquileres
MODIFY COLUMN estado ENUM ('PENDIENTE', 'DEVUELTO') DEFAULT ('PENDIENTE');
-- ALTER TABLE alquileres 
-- MODIFY COLUMN fecha_devolucion DATE NULL;

ALTER TABLE clientes
MODIFY COLUMN email VARCHAR(50) NOT NULL;                    
-- ALTER TABLE alquileres COLUMN fecha_devolucion_ RENAME fecha_devolucion;

-- CREATE TABLE clientes_act LIKE clientes;
-- ## 3. Añade datos a la base de datos. Ahora añade los siguientes
-- valores a las tablas. ¡¡IMPORTANTE!! Si hay  alguna columna 
-- señalada como `AUTO_INCREMENT` se rellenará sola y  no 
-- que pasarle datos.

INSERT INTO generos (nombre_genero, descripcion)
VALUES 
('Acción', 'Películas llenas de emoción y aventuras'),
('Comedia', 'Películas para reír y disfrutar'),
('Drama', 'Películas emocionales y profundas'),
('Ciencia Ficción', 'Películas con elementos futuristas o tecnológicos');

INSERT INTO peliculas (nombre, duracion, direccion, id_genero, fecha_estreno)
VALUES
('Misión Rescate', 130, 'Ridley Scott', 4, '2015-10-02'),
('La Gran Aventura', 120, 'Chris Columbus', 1, '2001-06-22'),
('Reír o Llorar', 95, 'John Smith', 2, '2020-11-12'),
('Crisis Total', 110, 'Jane Doe', 3, '2019-05-15');

INSERT INTO clientes (nombre_cliente, apellido_cliente, direccion_cliente, telefono, email, fecha_registro)
VALUES
('Carlos', 'García', 'Av. Principal 123', '555-1234', 'carlos@example.com',  '2023-01-15'),
('Lucía', 'Pérez', 'Calle Secundaria 45', '555-5678', 'lucia@example.com',  '2023-02-20'),
('Miguel', 'Lopez', 'Av. Tercera 789', '555-9876', 'miguel@example.com', '2023-03-10');

SELECT * FROM clientes WHERE id_cliente IN (1, 2, 3);
SELECT * FROM peliculas WHERE id_pelicula IN (1, 2, 4);

INSERT INTO alquileres (id_cliente, id_pelicula, fecha_alquiler, fecha_devolucion_, estado)
(1, 1, '2025-01-01', NULL, 'pendiente'),
(2, 2, '2025-01-03', '2025-01-07', 'devuelto'),
(3, 4, '2025-01-05', NULL, 'pendiente');