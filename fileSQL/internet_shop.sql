скрипт 1

SELECT COUNT(DISTINCT product_model.id) AS model_count, product_brand.brand_name AS brand_name
FROM product_model
JOIN product_brand ON product_model.brand_id = product_brand.id
GROUP BY brand_id, product_brand.brand_name;
---------------------
скрипт 2

SELECT SUM(quantity) AS total_all_products
FROM storage;
---------------------ґ
скрипт 3

SELECT client.client_name, COUNT(orders.id) AS order_count
FROM orders
JOIN client ON orders.client_id = client.id
GROUP BY client.client_name
ORDER BY order_count DESC
LIMIT 1;
----------------------
скрипт 4

SELECT client.client_name, MAX(product.price) AS bigest_order_value
FROM client
JOIN orders ON client.id = orders.client_id
JOIN orders_product ON orders.id = orders_product.order_id
JOIN product ON orders_product.product_id = product.id
GROUP BY client.client_name
ORDER BY bigest_order_value DESC
LIMIT 1;
