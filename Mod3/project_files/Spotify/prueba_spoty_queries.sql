SELECT * FROM musicstream.canciones;

SELECT nombre_artista
FROM artistas INNER JOIN años ON id_artista = id_lustro;

/* . Obtener las canciones más populares
Muestra las 10 canciones con mayor popularidad. */

SELECT cancion, popularidad 
FROM canciones 
ORDER BY popularidad DESC 
LIMIT 10;

/* Géneros más populares
Agrupa las canciones por género y obtiene el promedio de popularidad. */


SELECT genero, AVG(popularidad) AS promedio_popularidad, COUNT(*) AS total_canciones
FROM canciones
GROUP BY genero
ORDER BY promedio_popularidad DESC;


/* 

