SELECT date_parse(substr(InvoiceDate, 1, 10), '%d/%m/%Y') AS invoice_dt,
       date_format(date_parse(substr(InvoiceDate, 1, 10), '%d/%m/%Y'), '%Y-%m') AS month,
       SUM(revenue) AS revenue
FROM retaildb.v_clean_retail
GROUP BY date_parse(substr(InvoiceDate, 1, 10), '%d/%m/%Y'),
         date_format(date_parse(substr(InvoiceDate, 1, 10), '%d/%m/%Y'), '%Y-%m')
ORDER BY month;
