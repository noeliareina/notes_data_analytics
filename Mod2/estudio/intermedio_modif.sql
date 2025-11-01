-- ## 2. Modifica la base de datos
/*¡Vaya! Nos hemos equivocado en varias cosas, vamos a tener que hacer 
algunos cambios:

- Modifica la columna email de la tabla **clientes**. Ahora queremos que tenga más capacidad de caracteres y que no acepte nulos.
- Modifica la columna estado en la tabla **alquileres**. Queremos que siga aceptando solo los valores ‘pendiente’ y ‘devuelto’, pero que por  defecto el valor sea ‘pendiente’.'*/

USE videoclub;

ALTER TABLE clientes MODIFY COLUMN email VARCHAR(100) NOT NULL;
UPDATE clientes
SET email = 'no_disponible@example.com'
WHERE email IS NULL;
CREATE TABLE clientes_act LIKE clientes;

ALTER TABLE alquileres MODIFY COLUMN estado ENUM ('PENDIENTE', 'DEVUELTO') DEFAULT 'PENDIENTE';
ALTER TABLE alquileres MODIFY COLUMN fecha_devolucion DATE NULL;

CREATE TABLE alquileres_act LIKE alquileres


-- ## 3. Añade datos a la base de datos . INSERCIÓN
