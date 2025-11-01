## Cross Join
USE bbdd_empleadas_join;

SELECT empleadas.id_empleada, empleadas.salario, empleadas_en_proyectos.id_empleada
FROM empleadas, empleadas_en_proyectos
WHERE empleadas.id_empleada =  empleadas_en_proyectos.id_empleada;

## NATURAL JOIN
SELECT id_empleada, salario, nombre   
FROM empleadas NATURAL JOIN empleadas_en_proyectos; 

SELECT nombre, apellido, id_proyecto   
FROM empleadas NATURAL JOIN empleadas_en_proyectos;  

-- INNER JOIN
SELECT columna1, columna2, tabla2.columna1   
FROM tabla1
INNER JOIN tabla2
ON tabla1.columna1 = tabla2.columna1; 

SELECT nombre, apellido, empleadas_en_proyectos.id_proyecto   
FROM empleadas INNER JOIN empleadas_en_proyectos  
ON empleadas.id_empleada = empleadas_en_proyectos.id_empleada;  