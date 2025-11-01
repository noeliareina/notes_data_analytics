USE tienda_adalab;
/*quieres hacer una lista de todos los países en los que
se están desarrollando proyectos, ya sean de clientes o internos.*/

SELECT pais
FROM clientes
UNION
SELECT pais
FROM proyectos;

/*queremos ver los países de nuestros clientes y proyectos incluyendo repetidos*/
SELECT pais
FROM clientes
UNION ALL
SELECT pais
FROM proyectos;

/* Podemos combinar ORDER BY y LIMIT con UNION ALL para ordenar
 los resultados y limitar cuántos queremos ver. Eso sí, recuerda
 que estas cláusulas deben ir al final de toda la consulta */
SELECT pais
FROM clientes
UNION ALL
SELECT pais
FROM proyectos
ORDER BY pais
LIMIT 6;
/* queremos ver a nuestros clientes que están
 en España, Francia y Portugal*/
SELECT *
FROM clientes
WHERE pais IN ('España', 'Francia', 'Portugal');

/* clientes que NO están en España, Francia o Portugal. */
SELECT *
FROM clientes
WHERE pais NOT IN ('España', 'Francia', 'Portugal');

USE bbdd_empleadas;
/* Nombres que comienzan con 'E' y tienen al menos 2 caracteres*/
SELECT *  
FROM empleadas  
WHERE nombre LIKE 'E_%';  

/*Buscar nombres que contengan la letra 'L'*/
SELECT *  
FROM empleadas  
WHERE nombre LIKE '%l%';  

/*si queremos hacer lo contrario y excluir los nombres que contienen la letra 'L', usamos NOT LIKE*/
SELECT *  
FROM empleadas  
WHERE nombre NOT LIKE '%l%';  

/*
\0: Carácter nulo de ASCII (X'00').

\': Carácter de comilla simple (').

\": Carácter de comilla doble (").

\n: Carácter de nueva línea.

\\: Carácter de barra invertida () character.

\%: El símbolo de porcentaje (%).

\_: El carácter de guion bajo (_).*/

/* Buscar empleadas cuyo nombre contenga la letra 'a'*/
SELECT *
FROM empleadas
WHERE nombre REGEXP 'n';
/* Buscar empleadas cuyos correos sean de Gmail:*/
SELECT *
FROM empleadas
WHERE email REGEXP '@gmail\\.com';

/* Filtrar empleadas cuyo teléfono contiene solo números*/

SELECT *
FROM empleadas
WHERE telefono REGEXP '^[0-9]+$';

