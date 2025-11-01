-- MySQL Workbench Forward Engineering


CREATE SCHEMA IF NOT EXISTS videoclub;
USE videoclub;


CREATE TABLE generos (
  id_genero INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre_genero VARCHAR(45) NOT NULL,
  descripcion TEXT );
  
CREATE TABLE peliculas (
  id_pelicula INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(45) NOT NULL,
  duracion INT NOT NULL,
  direccion VARCHAR(45) NOT NULL,
  id_genero INT NOT NULL,
  fecha_estreno DATE NOT NULL,
  CONSTRAINT fk_id_genero
		FOREIGN KEY (id_genero)
        REFERENCES generos(id_genero) );

CREATE TABLE clientes (
  id_cliente INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(45) NOT NULL,
  apellido VARCHAR(45) NOT NULL,
  direccion VARCHAR(45) NULL,
  telefono VARCHAR(15),
  email VARCHAR(45),
  fecha_registro DATE NOT NULL );

CREATE TABLE alquileres (
  id_alquileres INT AUTO_INCREMENT PRIMARY KEY,
  id_cliente INT NOT NULL,
  id_pelicula INT NOT NULL,
  fecha_alquiler DATE NOT NULL,
  fecha_devolucion DATE,
  estado ENUM('pendiente', 'devuelto') NOT NULL,
  CONSTRAINT fk_id_cliente
    FOREIGN KEY (id_cliente)
		REFERENCES clientes (id_cliente)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
  CONSTRAINT fk_id_pelicula
    FOREIGN KEY (id_pelicula)
		REFERENCES peliculas (id_pelicula)
		ON DELETE CASCADE
		ON UPDATE CASCADE );