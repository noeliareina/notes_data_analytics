USE Tienda;

SELECT *
	FROM products
    LIMIT 5;

SELECT *
	FROM products
    WHERE product_line = "Motorcycles"
    LIMIT 5;

SELECT product_name AS nombre, buy_price AS precio , product_line AS categoria
	FROM products
    WHERE product_line = "Motorcycles"
    LIMIT 5
    OFFSET 3;

SELECT product_name AS nombre, buy_price AS precio , product_line AS categoria
	FROM products
    LIMIT 110
    OFFSET 3;
    
SELECT product_name AS nombre, buy_price AS precio , product_line AS categoria
	FROM products
    WHERE product_line = "Motorcycles" OR product_line = "Classic Cars";
    
SELECT product_name AS nombre, buy_price AS precio , product_line AS categoria
	FROM products
    WHERE product_line IN ("Motorcycles", "Classic Cars", "Trucks and Buses");
SELECT *
FROM products
WHERE product_line IN ("Motorcycles", "Classic Cars", "Trucks and Buses")
	AND product_vendor = "Second Gear Diecast";
SELECT *
	FROM products;
SELECT *
	FROM products
    WHERE quantity_in_stock > 3000;
-- obtener los 5 productos que más stock tienen con un precio unitario mayor que 80
SELECT *
	FROM products
    WHERE buy_price > 80
    ORDER BY quantity_in_stock DESC
    LIMIT 5;
    
SELECT DISTINCT product_line
	FROM products;
    
SELECT product_line
	FROM products;  -- no
    
## Ejercicio 5: Busca registros de la tabla customers que correspondan 
## a clientes de USA pero que no tengan un valor guardado para el campo 
## state. # Resolver problema 1: en qué paises tenemos clientes
SELECT *
	FROM customers
    WHERE country = "USA";
    
SELECT *
	FROM customers
    WHERE country = "USA" AND state IS NULL;
    
SELECT *
	FROM customers
    WHERE country = "USA" AND address_line2 IS NULL;
    
    -- Selecciona productos con precio entre 50 y 70
SELECT *
FROM products
WHERE buy_price BETWEEN 50 AND 60;

    

    
    