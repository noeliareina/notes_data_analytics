USE tienda;

SELECT *
FROM products;

SELECT MIN(buy_price) AS minimo, MAX(buy_price) AS maximo, ROUND(AVG(quantity_in_stock), 1) -- n de decimales)
	FROM PRODUCTS;
    
SELECT DISTINCT (product_line)
	FROM products;
    
SELECT *
FROM products;
    
SELECT product_line, ROUND(AVG(buy_price), 2)
	FROM products
	GROUP BY producy_line; -- -------------- ?????????
    
SELECT  product_line, COUNT(quantity_in_stock), SUM (quantity_in_stock), ROUND(AVG (buy_price), 2)
	FROM products
	GROUP BY producy_line;
    
SELECT product_line, ROUND(AVG (buy_price), 2)
	FROM products
	GROUP BY producy_line;

SELECT product_line, COUNT(*)
	FROM products
	GROUP BY producy_line;

SELECT *
	FROM customers;
    
SELECT country, COUNT(country)
	FROM customers
    GROUP BY country;
SELECT country, COUNT(country)
	FROM customers
    WHERE country IN ("USA", "UK")
    GROUP BY country;
SELECT country, COUNT(country)
	FROM customers
    GROUP BY country
    HAVING country IN ("USA", "UK");
SELECT country, COUNT(country)
FROM customers
GROUP BY country
HAVING COUNT (country) > 10;

SELECT product_line, ROUND(AVG(buy_price), 2) AS media
	FROM products
	WHERE quantity_in_stock >1000
	GROUP BY product_line
	HAVING COUNT(*) > 10;

SELECT product_line, ROUND(AVG(buy_price), 2) AS media, MAX(buy_price)
	FROM products
	WHERE quantity_in_stock >1000
	GROUP BY product_line
	-- PRIMERO HACER SIN HAVING Y VER LA FUNCIÓN DE AGREGACIÓN POR COLUMNS
	HAVING MAX(buy_price) > 100;

SELECT MAX(buy_price), product_line
	FROM products
	GROUP BY product_line;

SELECT product_name, buy price
	FROM products
    WHERE buy_price = 103.42 AND product_lines="Classic Cars";
SELECT *
	FROM products;
SELECT product_name, buy_price,
	CASE
    WHEN buy_price < 50
		THEN "barato"
	ELSE "caro"
    END AS Cat
FROM products;
-- 3 columnas, eso crea una etiqueta caro/barato
--  en función del precio
-- podemos utilizar el case para poner 
-- condiciones variables en base al valor de la fila
SELECT product_name, buy_price, product_line
	FROM products
    WHERE buy_price = CASE
						WHEN product_line = "Classic Cars" THEN 103.42
                        WHEN product_line = "Classic Cars" THEN 91.02
                        ELSE 150 END; -- para parar esta condicion dinamica
                        
-- CREAR ETIQUETA: KEY EN SELECT
-- CREAR CONDICION: KEY EN WHERE