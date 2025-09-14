retail-analytics-aws-athena-powerbi/
│
├── data/
│   └── sample_retail_500.csv    # optional small sample (or leave empty & link to Kaggle)
├── queries/
│   ├── create_table.sql
│   ├── cleaned_view.sql
│   ├── total_revenue.sql
│   ├── top10_products.sql
│   ├── revenue_by_country.sql
│   ├── monthly_revenue.sql
│   └── avg_order_value.sql
├── results/
│   ├── total_revenue.csv
│   ├── top10_products.csv
│   ├── revenue_by_country.csv
│   └── monthly_revenue.csv
├── dashboard/
│   ├── retail_dashboard.pbix    # if <100MB
│   └── dashboard_screenshot.png
├── README.md
└── LICENSE

# Retail Sales Analytics with AWS Athena & Power BI

**Author:** Aditya Puri  
**Project goal:** Build an end-to-end analytics workflow using AWS (S3 + Athena) to analyze retail transactions and present business insights via Power BI.

---

## Architecture
`S3 (raw CSV)` → `Amazon Athena (SQL queries)` → `Export CSV results` → `Power BI (dashboard)`.

---

## Dataset
- **Source:** [Online Retail Dataset (Kaggle / UCI)](https://www.kaggle.com/datasets/vijayuv/onlineretail)  
- **Fields:** InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerID, Country  
- **Note:** Full dataset is large; I included a small sample in `/data/`. Full dataset link above.

---

## What I built
- Cleaned data (filtered returns and null customers) using Athena view.
- SQL queries to compute: total revenue, top 10 products, revenue by country, monthly revenue, and average order value.
- A Power BI dashboard showing KPIs and visuals (bar, pie, line).

---

## How to reproduce (quick)
1. Upload `OnlineRetail.csv` to your S3 bucket (e.g., `s3://retail-analytics-aditya/`).
2. Set Athena query result location (e.g., `s3://retail-analytics-aditya/athena-results/`).
3. Run the SQL files in `/queries/` in Athena (run `create_table.sql`, then `cleaned_view.sql`, then each analysis query).
4. Download results CSVs and import to Power BI. Build visuals or open `dashboard/retail_dashboard.pbix`.

---

## Queries (sample)
See `/queries/` for the exact SQL used. Key queries:
- `top10_products.sql` — Top 10 products by revenue
- `revenue_by_country.sql` — Revenue by country
- `monthly_revenue.sql` — Monthly sales trend
- `avg_order_value.sql` — Average order value per invoice

---

## Insights (summary)
- **Total revenue:** 9.75M  
- **Average Order Value:** 376.36  
- **Observation:** United Kingdom contributes ~84% of revenue; a small set of products drive a large share of sales.
---<img width="1918" height="1017" alt="Power BI Dashboard" src="https://github.com/user-attachments/assets/c128891b-7736-44f1-9a5e-311cb0225c8c" />


## Files included
- `queries/` — Athena SQL files  
- `results/` — CSV outputs from Athena  
- `dashboard/` — Power BI file and screenshot

---

## License
MIT

