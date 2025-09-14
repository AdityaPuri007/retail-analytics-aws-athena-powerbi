SELECT Country,
       SUM(revenue) AS revenue
FROM retaildb.v_clean_retail
GROUP BY Country
ORDER BY revenue DESC;
