SELECT s.seller_city, COUNT(o.order_id) AS order_count
FROM sellers AS s
JOIN order_item AS o 
ON s.seller_id = o.seller_id
GROUP BY s.seller_city
ORDER BY order_count DESC
LIMIT 10;