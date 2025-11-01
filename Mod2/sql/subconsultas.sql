USE bbdd_empleadas_subconsultas;
SELECT *
FROM empleadas;
SELECT *
FROM empleadas_en_proyectos;

SELECT id_empleada, nombre  
FROM empleadas  
WHERE id_empleada IN (
    SELECT id_empleada  
    FROM empleadas_en_proyectos  
    WHERE id_proyecto=2);  
    
SELECT id_empleada, nombre  
FROM empleadas  
WHERE id_empleada IN (1,3);

SELECT id_empleada  
    FROM empleadas_en_proyectos  
    WHERE id_proyecto=2;
    
SELECT id_empleada, nombre  
FROM empleadas  
WHERE id_empleada IN (
    SELECT id_empleada  
    FROM empleadas_en_proyectos  
    WHERE id_proyecto=2); 
    
SELECT id_empleada, nombre  
FROM empleadas
WHERE id_empleada IN (
    SELECT id_empleada  
    FROM empleadas_en_proyectos);  
    
SELECT id_empleada, nombre  
FROM empleadas
WHERE id_empleada NOT IN (
    SELECT id_empleada  
    FROM empleadas_en_proyectos);  
    
    
SELECT id_empleada, nombre, salario
FROM empleadas AS E1
WHERE E1.salario > ANY (
    SELECT salario
    FROM empleadas AS E2
    WHERE E2.pais = E1.pais
);


SELECT id_empleada, nombre, salario
FROM empleadas AS E1
WHERE EXISTS (
    SELECT *
    FROM empleadas AS E2
    WHERE E2.pais = E1.pais
        AND E2.id_empleada <> E1.id_empleada
);


    
    