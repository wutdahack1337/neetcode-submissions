-- Write your query below

SELECT name
FROM sales_person as sp
LEFT JOIN orders as o ON sp.sales_id = o.sales_id AND o.com_id = (SELECT com_id FROM company WHERE name = 'CRIMSON')
WHERE com_id is NULL