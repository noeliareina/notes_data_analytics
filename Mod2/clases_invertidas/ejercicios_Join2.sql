USE bbdd_empleadas_join;
/* Queremos ver todas las empleadas, aunque algunas no 
tengan proyectos asignados. Queremos ver coincidencias (LEFT JOIN). Nos muestra todas
las filas de la tabla de la izquierda y solo las coincidencias de la derecha.
(¡RIGHT JOIN funciona de manera opuesta pero igual!*/
SELECT empleadas.nombre, empleadas.apellido, empleadas_en_proyectos.id_proyecto
FROM empleadas
LEFT JOIN empleadas_en_proyectos
ON empleadas.id_empleada = empleadas_en_proyectos.id_empleada;

SELECT empleadas.nombre, empleadas.apellido, empleadas_en_proyectos.id_proyecto   
FROM empleadas RIGHT JOIN empleadas_en_proyectos  
ON empleadas.id_empleada = empleadas_en_proyectos.id_empleada;  


SELECT empleadas.id_empleada, empleadas.nombre, empleadas.apellido, empleadas_en_proyectos.id_proyecto
FROM empleadas
LEFT JOIN empleadas_en_proyectos
ON empleadas.id_empleada = empleadas_en_proyectos.id_empleada

UNION

SELECT empleadas.id_empleada, empleadas.nombre, empleadas.apellido, empleadas_en_proyectos.id_proyecto
FROM empleadas
RIGHT JOIN empleadas_en_proyectos
ON empleadas.id_empleada = empleadas_en_proyectos.id_empleada;