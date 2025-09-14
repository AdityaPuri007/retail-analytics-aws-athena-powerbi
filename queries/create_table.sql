CREATE DATABASE IF NOT EXISTS retaildb;

-- External table pointing to the CSV in your bucket
CREATE EXTERNAL TABLE IF NOT EXISTS retaildb.online_retail (
  InvoiceNo string,
  StockCode string,
  Description string,
  Quantity int,
  InvoiceDate string,
  UnitPrice double,
  CustomerID string,
  Country string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES ("separatorChar" = ",", "quoteChar" = "\"")
LOCATION 's3://retail-analytics-aditya/'
TBLPROPERTIES ('skip.header.line.count'='1');
