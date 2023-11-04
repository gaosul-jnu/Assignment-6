SELECT c.customer_id, c.name, COUNT(o.order_id) AS total_orders
FROM Customers AS c
LEFT JOIN Orders AS o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_orders DESC;
