CREATE SCHEMA promo_49;
USE promo_49;
-- Resumen de sintaxis:

/*
CREATE TABLE nombre tabla (
	nombre_col1 tipo_de_dato restricciones,
    nombre_col2 tipo_de_dato,
    nombre_col3 tipo_de_dato);
*/

-- CREATE TABLE alumnas (id_alumna INT auto_increment

CREATE TABLE alumnas (
	id_alumna INT AUTO_INCREMENT,
    nombre VARCHAR (20),
    PRIMARY KEY(id_alumna));
    
-- Pasos:
/*
1. tener una BBDD -> esquema (lo podemos crear o usar uno que ya tenemos)
2. definimos la estructura de la BBDD
3. nos "conectamos" (USE nombre_schema) al esquema
4. escribimos nuestro código de creación de tablas

*/
/*
Ejercicio 3: Crea las tabla Empleadas y empleadas_en_proyectos, definiendo claves primarias, 
claves foránea, tipos de datos, etc. Haz que 
cuando se elimine una Empleada, se eliminen todas 
las entradas en empleadas_en_proyectos asociadas.

*/
CREATE TABLE empleadas(
	id_empleada INT AUTO_INCREMENT,
    salario FLOAT NOT NULL,
    nombre VARCHAR(15),
    
    PRIMARY KEY(id_empleada));
    -- Cada proyecto sólo puede tener 1 empleada
    -- Con una PK compuesta nos permite tener +1 dato 
CREATE TABLE emp_proyectos(
	id_proyecto INT,
    empleada_id INT, -- FK apunta a referenciar otra tabla
    PRIMARY KEY(id_proyecto, empleada_id),
    -- integridad referencial
    -- ¿cómo es esa sintaxis para la FK?
    -- CONSTRAINT alias a FK para establecer la restricción
    CONSTRAINT fk_patata -- siempre q introd. FK
		FOREIGN KEY (empleada_id) -- ¿donde apunta?:
        REFERENCES empleadas(id_empleada),

)
		/*,
	CONSTRAINT fk_brocoli 
		FOREIGN KEY (proyecto_id) -- ¿donde apunta?:
        REFERENCES proyectos(id_proyecto) ; 
        <ES PONER UN IDENTIFICADOR A LA RESTRICCIÓN> */
	
        
        
    
    
    
    
    PRIMARY KEY(id_proyecto, empleada_id)