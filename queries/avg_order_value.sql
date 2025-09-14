SELECT AVG(order_total) AS avg_order_value
FROM (
  SELECT InvoiceNo, SUM(revenue) AS order_total
  FROM retaildb.v_clean_retail
  GROUP BY InvoiceNo
);
