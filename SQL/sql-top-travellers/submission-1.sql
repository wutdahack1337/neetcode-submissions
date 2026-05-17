-- Write your query below

SELECT name, 
CASE
    WHEN SUM(distance) IS NULL THEN 0
    ELSE SUM(distance)
END as travelled_distance
FROM users
LEFT JOIN rides ON rides.user_id = users.id
GROUP BY user_id, name
ORDER BY travelled_distance DESC, name

-- SELECT *
-- FROM users
-- LEFT JOIN rides ON rides.user_id = users.id