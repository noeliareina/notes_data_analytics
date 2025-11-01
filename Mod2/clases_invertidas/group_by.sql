USE tienda;

SELECT *
	FROM products;
    
SELECT MIN(buy_price) AS minimo, MAX(buy_price) AS maximo, ROUND(AVG(quantity_in_stock), 1)
	FROM products;
    
SELECT DISTINCT(product_line)
	FROM products;
    
SELECT product_line, COUNT(quantity_in_stock), SUM(quantity_in_stock), ROUND(AVG(buy_price), 2)
	FROM products
    GROUP BY product_line;
    
SELECT AVG(buy_price)
	FROM products
    WHERE product_line = "Motorcycles";
    
SELECT product_line,  ROUND(AVG(buy_price), 2)
	FROM products
    GROUP BY product_line;
    
SELECT product_line,  COUNT(*)
	FROM products
    GROUP BY product_line;
    
SELECT  AVG(buy_price), COUNT(*)
	FROM products
    GROUP BY product_line;
    
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
    HAVING COUNT(country) > 10;
    
SELECT product_line, ROUND(AVG(bugenerosy_price), 2) AS media, MAX(buy_price)
	FROM products
    WHERE quantity_in_stock >1000
    GROUP BY product_line
    HAVING COUNT(*) > 10;
    
    
SELECT product_line, ROUND(AVG(buy_price), 2) AS media, MAX(buy_price)
	FROM products
    WHERE quantity_in_stock >1000
    GROUP BY product_line
    HAVING MAX(buy_price) > 100;
    
SELECT MAX(buy_price), product_line
	FROM products
    GROUP BY product_line;
    
SELECT product_name, buy_price
	FROM products
	WHERE buy_price = 103.42 AND product_line="Classic Cars";
    
SELECT MAX(buy_price)
	FROM products;
    
SELECT *
	FROM products;
    
SELECT product_name, buy_price, 
		CASE 
        WHEN buy_price < 50 
			THEN "barato"
		ELSE "caro"
        END AS Categoria_precio
        
	FROM products;
    

SELECT MAX(buy_price), product_line
	FROM products
    GROUP BY product_line;
    
SELECT product_name, buy_price
	FROM products
	WHERE buy_price = 103.42 AND product_line="Classic Cars";
    
SELECT product_name, buy_price, product_line
	FROM products
    WHERE buy_price = CASE
						WHEN product_line = "Classic Cars" THEN 103.42
                        WHEN product_line = "Motorcycles" THEN 91.02
                        END;