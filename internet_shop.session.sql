SELECT client.client_name, COUNT(orders.id) AS order_count
FROM orders
JOIN client ON orders.client_id = client.id
GROUP BY client.client_name
ORDER BY order_count DESC
LIMIT 1;