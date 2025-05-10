SELECT p.product_category_name, COUNT(o.order_id) AS order_count
FROM products AS p
JOIN order_item AS o 
ON p.product_id = o.product_id
JOIN order_payment AS op 
ON o.order_id = op.order_id
WHERE op.payment_type = "credit_card"
GROUP BY p.product_category_name
ORDER BY order_count DESC
LIMIT 10;