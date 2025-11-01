-- Crear la base de datos 'bbdd_alumnas' si no existe
CREATE DATABASE IF NOT EXISTS bbdd_alumnas;

-- Usar la base de datos 'bbdd_alumnas'
USE bbdd_alumnas;

-- Crear la tabla 'alumnas'
CREATE TABLE IF NOT EXISTS alumnas (
    id_alumna INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefono VARCHAR(15),
    direccion VARCHAR(255),
    ciudad VARCHAR(100),
    pais VARCHAR(100),
    PRIMARY KEY (id_alumna)
);

-- Insertar los datos en la tabla 'alumnas'
INSERT INTO alumnas (nombre, apellido, email, telefono, direccion, ciudad, pais) VALUES
('Ana', 'González', 'ana@adalab.es', '654785214', 'Calle Alumna 1', 'Madrid', 'España'),
('Maria', 'López', 'maria@adalab.es', '689656322', 'Calle Alumna 2', 'Barcelona', 'España'),
('Lucía', 'Ramos', 'lucia@adalab.es', '674459123', 'Calle Alumna 3', 'Valencia', 'España'),
('Elena', 'Bueno', 'elena@adalab.es', '628546577', 'Calle Alumna 4', 'Bilbao', 'España'),
('Rocío', 'García', 'rocio@adalab.es', '616365624', 'Calle Alumna 5', 'Paris', 'Francia');

SELECT *  -- Usando un asterisco le decimos que queremos todas las columnas
FROM alumnas;

SELECT nombre, apellido  
FROM alumnas  
WHERE pais = 'Francia'; 

SELECT telefono, direccion  
FROM alumnas  
WHERE pais = 'Francia'  
AND apellido = 'García';  

SELECT telefono, direccion   
FROM alumnas  
WHERE NOT pais = 'España';

SELECT ciudad, pais  
FROM alumnas  
WHERE telefono <> 674459123;  

SELECT nombre, apellido, email   
FROM alumnas   
WHERE ciudad IS NULL;   

SELECT DISTINCT nombre, apellido  
FROM alumnas;  

SELECT *
FROM alumnas
LIMIT 2

SELECT nombre, apellido, email  
FROM alumnas 
ORDER BY apellido DESC    
LIMIT 3;  

SELECT nombre, apellido
FROM alumnas  
ORDER BY apellido DESC    
LIMIT 2    
OFFSET 2;     

SELECT nombre, apellido   
FROM alumnas   
WHERE id_alumna BETWEEN 3 AND 5;   

SELECT nombre, apellido 
FROM alumnas 
WHERE Ciudad IN ('Madrid', 'Valencia', 'Barcelona'); 

SELECT nombre AS Name, apellido AS Surname  
FROM alumnas AS Students;

