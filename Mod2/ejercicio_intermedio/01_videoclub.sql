--  Crea un SCHEMA llamado `videoclub`

-- En ese esquema crea diferentes tablas y dale a cada columna 
-- el tipo de valor y restricciones que veas más lógicas:
-- Una tabla llamada **películas** que tenga las columnas:
CREATE SCHEMA IF NOT EXISTS vialquileresalquileresdeoclub;
CREATE SCHEMA videoclub;
USE videoclub;
-- Una tabla llamada **películas** que tenga las columnas:
-- `id_pelicula`, `nombre`, `duracion`, `direccion`, `id_genero`, 
-- `fecha_estreno`. -- Una de las columnas es una `foreign key`, 
--  primary key?
-- - Otra tabla llamada **géneros*** que tenga las columnas:
--  ``id_genero``, ``nombre_genero`` y ``descripción``.
-- CON FOREIGN KEYS VAN DESPUES

CREATE TABLE generos (
	id_genero INT AUTO_INCREMENT PRIMARY KEY,
	nombre_genero VARCHAR (50) NOT NULL,
    descripcion TEXT
);
    
CREATE TABLE peliculas (
	id_pelicula INT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR (100) NOT NULL,
	duracion INT NOT NULL,
	direccion VARCHAR (100) NOT NULL,
	id_genero INT NOT NULL,
	fecha_estreno DATE NOT NULL,
    CONSTRAINT fk_id_genero
		FOREIGN KEY (id_genero)
        REFERENCES generos (id_genero)
);

-- - Una tabla llamada **clientes** con: `id_cliente`,`nombre`, `apellido`,  `direccion`, `telefono`, `email`, `fecha_registro`
CREATE TABLE clientes (
	id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR (50) NOT NULL,
    apellido VARCHAR (50) NOT NULL,
    direccion VARCHAR (100),
    telefono VARCHAR (15),
    email VARCHAR (100),
    fecha_registro DATE NOT NULL
    );
--  Una tabla llamada **alquileres** con `id_alquiler`, `id_cliente`,  `id_pelicula`, `fecha_alquiler`, `fecha_devolucion`, `estado` 
-- (que  puede ser solo “pendiente” o “devuelto”). Recuerda de dónde vienen las primary key `id_cliente` y `id_pelicula` 
-- y cómo señalar  en esta tabla que son `foreign keys`.
CREATE TABLE alquileres (
	id_alquiler INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_pelicula INT NOT NULL,
    fecha_alquiler DATE NOT NULL,
    fecha_devolucion DATE,
    estado ENUM('pendiente', 'devuelto') NOT NULL,
    FOREIGN KEY (id_cliente)
        REFERENCES clientes (id_cliente)
			ON DELETE CASCADE  
            ON UPDATE CASCADE,
-- ON DELETE SET NULL
	FOREIGN KEY (id_pelicula)
        REFERENCES peliculas (id_pelicula) 
			ON DELETE CASCADE
			ON UPDATE CASCADE
);
peliculas
