-- Write your query below

SELECT seller_name
FROM seller
LEFT JOIN orders ON EXTRACT(YEAR FROM sale_date) = 2020 AND seller.seller_id = orders.seller_id
WHERE orders.order_id IS NULL
ORDER BY seller_name