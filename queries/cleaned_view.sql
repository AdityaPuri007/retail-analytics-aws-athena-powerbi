CREATE OR REPLACE VIEW retaildb.v_clean_retail AS
SELECT
  InvoiceNo,
  StockCode,
  Description,
  CAST(Quantity AS bigint) AS Quantity,
  InvoiceDate,
  UnitPrice,
  CustomerID,
  Country,
  (Quantity * UnitPrice) AS revenue
FROM retaildb.online_retail
WHERE Quantity > 0
  AND UnitPrice > 0
  AND CustomerID IS NOT NULL
  AND Description IS NOT NULL;
