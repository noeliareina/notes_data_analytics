USE tienda;
CREATE TABLE customers (
customer_number INT PRIMARY KEY,
customer_name VARCHAR(30),
contact_last_name VARCHAR(30),
phone VARCHAR(9),
address_line1 VARCHAR(30),
address_line2 VARCHAR(30),
city VARCHAR(15),
state VARCHAR(30),
postal_code VARCHAR (10),
country VARCHAR(30),
sales_rep_employee_number INT,
credit_limit FLOAT
);

-- 1. Realiza una consulta SELECT que obtenga 
-- el número identificativo de cliente más bajo 
-- de la base de datos.

-- 2. Selecciona el limite de crédito medio para los clientes 
-- de España.

-- 3. Selecciona el numero de clientes en Francia.

-- 4. Selecciona el máximo de crédito que tiene cualquiera 
-- de los clientes del empleado con número 1323.

-- 5. ¿Cuál es el número máximo de empleado de la tabla customers?

-- 6. Realiza una consulta SELECT que seleccione el número de cada 
-- empleado de ventas, así como el numero de clientes distintos que
--  tiene cada uno.

-- 7. Selecciona el número de cada empleado de ventas que tenga más de
-- 7 clientes distintos.

-- BONUS
-- 8. Selecciona el número de cada empleado de ventas, así como el 
-- numero de clientes distintos que tiene cada uno. Asigna una etiqueta 
-- de "AltoRendimiento" a aquellos empleados con mas de 7 clientes distintos.

-- 9. Selecciona el número de clientes en cada país. 

-- 10. Selecciona aquellos países que tienen clientes de más de
-- 3 ciudades diferentes.