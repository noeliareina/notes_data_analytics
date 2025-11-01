CREATE SCHEMA instituto;

USE instituto;
-- -------------------------------------------------
-- Table 'mydb' 'Profes' 
-- -------------------------------------------------
CREATE TABLE profes(
	dni VARCHAR(9) PRIMARY KEY, -- ya es un identificador único y no nulo)
    nombre VARCHAR(100),
    direccion VARCHAR(100),
    telefono VARCHAR(15)
    );

-- ----------------------------------------------------
-- Table 'mydb' 'Modulos' 
-- -------------------------------------------------
    
CREATE TABLE modulos(
  codigo VARCHAR(10),
  nombre_modulo VARCHAR(30) NOT NULL,
  dni_profe VARCHAR(9),
  PRIMARY KEY (codigo),
  CONSTRAINT `fk_modulos_profe` -- alias de la restriccion 
	FOREIGN KEY (dni_profe) -- pq? Esta llamando a dni de tabla profes
    REFERENCES profes (dni));

-- ----------------------------------------------------
-- Table 'mydb' 'Alumno' 
-- -------------------------------------------------
  
CREATE TABLE alumnos (
	num_expediente INT PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL,
    apellidos VARCHAR(45) NOT NULL,
    fecha_nacimiento DATE );
  
-- ----------------------------------------------------
-- Table 'mydb' 'Alumno_has_Modulos' 
-- -------------------------------------------------
CREATE TABLE Alumno_has_Modulos (
 num_expediente INT,
 codigo VARCHAR(10),
  PRIMARY KEY (num_expediente , codigo), -- 1 PK COMPUESTA
  CONSTRAINT `fk_Alumno_has_Modulos_Alumno`
	FOREIGN KEY (num_expediente)
    REFERENCES alumnos (num_expediente),
CONSTRAINT `fk_Alumno_has_Modulos_Modulos1`
    FOREIGN KEY (codigo)
    REFERENCES modulos (codigo));
    
    
-- INSERCION DE DATOS

INSERT INTO profes (dni, nombre, direccion, telefono) VALUES
('12345678A', 'Juan Pérez', 'Calle Mayor, 10', '600123456'),
('87654321B', 'María López', 'Avenida Sol, 45', '600654321'),
('45678912C', 'Carlos Gómez', 'Plaza Luna, 7', '600789123');

INSERT INTO modulos (codigo, nombre_modulo, dni_profe) VALUES
('MOD101', 'Matemáticas', '12345678A'),
('MOD102', 'Física', '87654321B'),
('MOD103', 'Química', '45678912C'),
('MOD104', 'Biología', '12345678A'),
('MOD105', 'Historia', '87654321B');

INSERT INTO alumnos (num_expediente, nombre, apellidos, fecha_nacimiento) VALUES
(1001, 'Ana Martínez', 'Martínez', '2005-03-15'),
(1002, 'Luis Fernández', 'Fernández', '2004-11-22'),
(1003, 'Clara Ruiz', 'Ruiz', '2006-01-10'),
(1004, 'Pedro Sánchez', 'Sánchez', '2005-07-08'),
(1005, 'Lucía Torres', 'Torres', '2004-09-18');

INSERT INTO Alumno_has_Modulos (num_expediente, codigo) VALUES
(1001, 'MOD101'),
(1001, 'MOD102'),
(1002, 'MOD101'),
(1002, 'MOD103'),
(1003, 'MOD104'),
(1004, 'MOD105'),
(1005, 'MOD102'),
(1005, 'MOD104');

-- QUERY EJEMPLO
-- Buscar un profesor por su DNI (12345678A)
SELECT *
FROM profes
WHERE dni = "12345678A";

SELECT *
FROM alumno_has_modulos;

SELECT *
FROM alumnos;

SELECT *
FROM modulos

