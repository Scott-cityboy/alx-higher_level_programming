SELECT State, MAX(temperature) AS max_temperature
FROM your_table_name
GROUP BY State
ORDER BY State;

