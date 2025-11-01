SELECT *
	FROM products;

SELECT ROUND(AVG(buy_price), 2)
	FROM products;  -- = 54.40       
    
SELECT *
	FROM products
    WHERE buy_price > 54.40;
    
SELECT *
	FROM products
    WHERE buy_price > (SELECT ROUND(AVG(buy_price), 2)
						FROM products);
                        
SELECT *
	FROM employees
    WHERE office_code IN (4, 5);
    
SELECT office_code
	FROM offices
    WHERE country IN ("France", "Japan"); -- = (4,5)
    
SELECT *
	FROM employees
    WHERE office_code IN (SELECT office_code
							FROM offices
							WHERE country IN ("France", "Japan") 
                            
						AND last_name = "Bondur");
                            
/*EJERCICIO 1:
Calcula el numero de clientes por cada ciudad.
*/

SELECT *
	FROM customers;
    
SELECT city, COUNT(customer_number)
	FROM customers
    GROUP BY city;
    
/*EJERCICIO 2:
Usando la consulta anterior como subconsulta, selecciona la ciudad con el mayor numero de clientes.
*/

SELECT city
	FROM customers
    GROUP BY city
    HAVING COUNT(customer_number) >= ALL(1,1,1,2,2,3,4,4,4,4,5,5,5); -- ESTO NO FUNCIONA, ES PARA ENTENDER CÓMO FUNCIONA EL all
    
 SELECT c.city
	FROM customers AS c
    GROUP BY city
    HAVING COUNT(customer_number) >= ALL(SELECT COUNT(customer_number)
											FROM customers
											GROUP BY city) -- esta subconsulta viene del ejercicio 1
	;  
                                            
/*EJERCICIO 3:
Por último, usa todas las consultas anteriores para seleccionar el customerNumber, nombre y apellido
 de las clientas asignadas a la ciudad con mayor numero de clientas.
*/

SELECT customer_number,contact_first_name,contact_last_name,city
	FROM customers
    WHERE city IN ("NYC", "Madrid");
    
SELECT customer_number,contact_first_name,contact_last_name,city
	FROM customers
    WHERE city IN (SELECT c.city
	FROM customers AS c
    GROUP BY city
    HAVING COUNT(customer_number) >= ALL(SELECT COUNT(customer_number)
											FROM customers
											GROUP BY city));
                                            
SELECT customer_number,contact_first_name,contact_last_name
	FROM customers
	WHERE city IN (SELECT c.city
						FROM customers AS c
						GROUP BY city
						HAVING COUNT(customer_number) >= ALL(SELECT COUNT(customer_number)
																FROM customers
																GROUP BY city)); -- toda esta subconsulta viene del ejercicio 2
                                                                
SELECT *
	FROM products;

SELECT *
	FROM order_details;
    
-- necesitamos obtener todos los order details que tengan un producto de la categoría "Motorcycles"

SELECT od.order_number, od.product_code, od.quantity_ordered, od.price_each
	FROM order_details AS od
    INNER JOIN products AS p
    USING (product_code)
    WHERE product_line = "Motorcycles"	;
    
SELECT product_code, product_line
	FROM products
    WHERE product_line = "Motorcycles"; -- = "S10_1678", "S10_2016", "S10_4698", ...
    
SELECT *
	FROM order_details
    WHERE product_code IN ("S10_1678", "S10_2016", "S10_4698");
    
SELECT *
	FROM order_details
    WHERE product_code IN (SELECT product_code
								FROM products
								WHERE product_line = "Motorcycles");
                                
-- subconsultas correlacionadas

-- queremos los productos de la categoría motorcycles que tienen un precio superior a la media de precio de los productos de su categoría 

SELECT AVG(buy_price)
	FROM products
    WHERE product_line = "Motorcycles"; -- = 50.68

SELECT *
	FROM products
    WHERE product_line = "Motorcycles"
		AND buy_price > 50.68;
        
SELECT *
	FROM products
    WHERE product_line = "Motorcycles"
		AND buy_price > (SELECT AVG(buy_price)
							FROM products
							WHERE product_line = "Motorcycles");
        
SELECT AVG(buy_price), product_line
	FROM products
    GROUP BY product_line ;
    
SELECT *
	FROM products AS p
    WHERE buy_price > (SELECT AVG(buy_price)
							FROM products
                            WHERE product_line = p.product_line);
                            
-- EXISTS

SELECT *
	FROM products
    WHERE product_code IN (SELECT product_code
								FROM order_details);
                                
SELECT *
	FROM order_details
    WHERE product_code = "S10_2016";
    
SELECT *
	FROM products AS p
    WHERE EXISTS (SELECT *
					FROM order_details
					WHERE product_code = p.product_code);