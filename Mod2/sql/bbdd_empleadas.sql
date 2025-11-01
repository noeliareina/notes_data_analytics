-- Crear el esquema solo si no existe
CREATE SCHEMA IF NOT EXISTS bbdd_empleadas;
USE bbdd_empleadas;

-- Crear la tabla 'empleadas' si no existe
CREATE TABLE IF NOT EXISTS empleadas (
    id INT AUTO_INCREMENT PRIMARY KEY,      
    salario FLOAT,      
    nombre VARCHAR(50) NOT NULL,          
    apellido VARCHAR(50),        
    email VARCHAR(100) UNIQUE,  
    telefono VARCHAR(15),        
    ciudad VARCHAR(50),         
    pais VARCHAR(50)             
);

-- Insertar datos en la tabla 'empleadas'
INSERT INTO empleadas (salario, nombre, apellido, email, telefono, ciudad, pais) VALUES
(2500, 'Ana', 'González', 'ana@adalab.es', '654785214', 'Madrid', 'España'),
(4000, 'Maria', 'López', 'maria@adalab.es', '689656322', 'Barcelona', 'España'),
(3000, 'Lucía', 'Ramos', 'lucia@gmail.com', '674459123', 'Valencia', 'España'),
(5000, 'Elena', 'Bueno', 'elena@adalab.es', '628546577', 'Bilbao', 'España'),
(1500, 'Rocío', 'García', 'rocio@gmail.com', '616365624', 'París', 'Francia');
