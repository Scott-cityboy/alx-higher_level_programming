SELECT city, MAX(temperature) AS max_temperature
FROM your_table_name
WHERE MONTH(date) IN (7, 8)
GROUP BY city
ORDER BY max_temperature DESC
LIMIT 3;

