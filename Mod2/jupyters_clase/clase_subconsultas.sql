USE Tienda;

SELECT *
	FROM products;
    
SELECT ROUND(AVG(buy_price), 2)
FROM products;  -- 54,40

SELECT *
FROM products
WHERE buy_price > 54.40;

SELECT *
FROM products
WHERE buy_price > (SELECT ROUND(AVG(buy_price), 2)
					FROM products);
