USE tienda;

SELECT *
	FROM products
	LIMIT 5;

SELECT *
	FROM products
    WHERE product_line = "Motorcycles"
    LIMIT 5;

SELECT product_name, buy_price
	FROM products
	WHERE produc_line = "Motorcycles"
	LIMIT 5;

SELECT product_name AS nombre, buy_price AS precio, product_line AS categoria
	FROM products
	WHERE product_line = "Motorcycles"
	LIMIT 5;
    
SELECT *
	FROM products;

SELECT product_name AS nombre, buy_price AS precio, product_line AS categoria
	FROM products
	WHERE product_line = "Motorcycles"
	LIMIT 5
    OFFSET 3; 
    -- ignora 3 primeros datos
    
SELECT product_name AS nombre, buy_price AS precio, product_line AS categoria
	FROM products
	WHERE product_line = "Motorcycles" OR product_line = "Classic Cars" OR product_line = "Trucks and Buses";
    -- Forma de simplificar:
SELECT product_name AS nombre, buy_price AS precio, product_line AS categoria
	FROM products
	WHERE product_line IN ("Motorcycles", "Classic Cars" ,"Trucks and Buses"); 
    
SELECT *
	FROM products;

SELECT product_name AS nombre, buy_price AS precio, product_line AS categoria
	FROM products
	WHERE product_line = "classic cars" OR product_vendor = "Second Gear Diecast";

SELECT product_name AS nombre, buy_price AS precio, product_line AS categoria
	FROM products
	WHERE product_line IN ("Motorcycles", "Classic Cars" ,"Trucks and Buses") -- Lista de valores, True en 1 de ellas
    AND product_vendor = "Second Gear Diecast";

SELECT *
FROM products
WHERE buy_price > 80
ORDER BY quantity_in_stock DESC
LIMIT 5;

SELECT DISTINCT product_line
	FROM products;

SELECT *
	FROM customers
	WHERE country = "USA" AND state IS NULL;
    
SELECT *
	FROM products;
    
SELECT *
	FROM products
	WHERE buy_price BETWEEN 50 AND 70;
