SELECT Description,
       SUM(revenue) AS revenue
FROM retaildb.v_clean_retail
GROUP BY Description
ORDER BY revenue DESC
LIMIT 10;
