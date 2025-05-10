SELECT o.seller_id, SUM(o.price) AS total_price
FROM order_item AS o
GROUP BY o.seller_id
ORDER BY total_price DESC
LIMIT 5;