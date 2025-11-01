USE Tienda;
/*EJERCICIO 1
Selecciona el ID, nombre, apellidos de las empleadas y el ID de cada cliente asociado a ellas, usando CROSS JOIN.*/

SELECT *
FROM customers;

SELECT e.employee_number, e.first_name, e.last_name, c.customer_name, c.sales_rep_employee_number
	FROM employees AS e -- creamos un alias 
    CROSS JOIN customers AS c
-- falta el where 
	WHERE c.sales_rep_employee_number = e.employee_number;
-- sin el where nos coge a todos los clientes
-- CROSS JOIN + WHERE  es como INNER JOIN

SELECT e.employee_number, e.first_name, e.last_name, c.customer_name, c.sales_rep_employee_number
	FROM employees AS e
    INNER JOIN customers AS c
    ON c.sales_rep_employee_number = e.employee_number;
-- 2. /*EJERCICIO 2
-- Selecciona el ID, nombre, apellidos de las empleadas, para aquellas con más de 8 clientes, usando CROSS JOIN.*/

SELECT e.employee_number, e.first_name, e.last_name, COUNT(c.customer_name) AS customer_number
	FROM employees AS e
    CROSS JOIN customers AS c
    WHERE c.sales_rep_employee_number =  e.employee_number
    GROUP BY e.employee_number, e.first_name, e.last_name
    HAVING customer_number > 8;
    
/*EJERCICIO 5
Selecciona el ID, nombre, apellidos de las empleadas, 
para aquellas con más de 8 clientes, usando INNER JOIN.*/
	
-- paso 2 ver tabla clientes
SELECT *
FROM customers;

-- paso 3 busco columna de union y uno tablas
SELECT e.employee_number, e.first_name, e.last_name, c.customer_name, c.sales_rep_employee_number 
	FROM employee AS e
	INNER JOIN customers AS c
	ON e.employee_number = c.sales_rep_employee_number;

-- somos analistas, necesitamos mirar y entender outputs
-- paso 4 necesito agrupar por employee_number y hacer un conteo de customer_name
SELECT e.employee_number, e.first_name, e.last_name, COUNT(c.customer_name) AS customer_number
	FROM employees AS e
	INNER JOIN customers AS c
	ON e.employee_number = c.sales_rep_employee_number
	GROUP BY e.employee_number
	HAVING customer_number > 8;
-- 7 pasos hemos hecho
		
/*EJERCICIO EXTRA
Selecciona el ID, nombre, apellidos de las empleadas, 
para aquellas con más de 8 clientes, usando NATURAL JOIN.*/

SELECT e.employee_number, e.first_name, e.last_name, c.customer_name AS customer_number
	FROM employees AS e
	NATURAL JOIN customers AS -- en este caso NO podemos usar NATURAL JOIN porque las columnas tienen diferentes nombres
    GROUP BY e.employee_number
    HAVING COUNT(customer_number) > 8;
    
-- UNIONES SIN RELACIÓN:
SELECT *
	FROM payments;
SELECT *
	FROM customers;
SELECT *
	FROM customers AS c
    INNER JOIN payments AS p
    ON c.customer_number = p.customer_number;
    
    