# Retail Sales Analytics with AWS Athena & Power BI

**Author:** Aditya Puri  
**Project goal:** Build an end-to-end analytics workflow using AWS (S3 + Athena) to analyze retail transactions and present business insights via Power BI.
This project analyzes real-world e-commerce transactions using AWS Athena and visualizes insights in Power BI.
The goal is to demonstrate cloud data querying, analytics, and visualization skills for business decision-making.

---

## Architecture
`S3 (raw CSV)` → `Amazon Athena (SQL queries)` → `Export CSV results` → `Power BI (dashboard)`.

AWS Athena → Queried and transformed the data using SQL.

Power BI → Created an interactive dashboard for business KPIs.

GitHub → Documentation & portfolio showcase.

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
- <img width="1918" height="1017" alt="Power BI Dashboard" src="https://github.com/user-attachments/assets/a1028eb6-5346-4a96-b85b-f0138d251d32" />

📊 Key Business Questions Answered

✔ Top 10 countries by sales volume
✔ Monthly sales trends
✔ Top 10 customers by revenue
✔ Total revenue & Average Order Value (AOV)

📂 Repository Structure
├── queries/                 # Athena SQL queries
│   ├── 01_top_countries.sql
│   ├── 02_monthly_sales.sql
│   ├── 03_top_customers.sql
│   └── 04_revenue_aov.sql
│
├── results/                 # Athena query outputs (CSV/Excel)
│   ├── top_countries.csv
│   ├── monthly_sales.csv
│   ├── top_customers.csv
│   └── revenue_aov.csv
│
├── dashboard/               # BI Visuals
│   ├── Retail_Dashboard.pbix
│   └── dashboard_screenshot.png
│
└── README.md                # Project documentation


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
- **Total Revenue:** ~£9.8M across all transactions  
- **Average Order Value (AOV):** ~£377 per invoice  
- **Top Country:** United Kingdom contributes ~84% of total revenue  
- **Customer Behavior:** A small set of high-value customers drive a large share of sales  
- **Product Insights:** The top 10 products account for a significant portion of revenue, showing a strong “bestseller” effect   
<img width="437" height="361" alt="Screenshot 2025-09-20 185854" src="https://github.com/user-attachments/assets/9b5b5a75-5404-40ed-ba80-f5ede04304ce" />


---

🔑 Key Learnings

How to query large datasets stored in Amazon S3 using Athena.
How to analyze real retail data to extract meaningful KPIs.
Building Power BI dashboards from cloud query results.
End-to-end workflow from raw data → insights → visualization.

🛠️ Technologies Used

- Amazon S3
- AWS Athena (SQL)
- Power BI
- Excel (for intermediate analysis)

  ### 📌 What this shows
- Businesses can identify their **key revenue drivers** (products/customers/countries).  
- Seasonal and monthly trends are visible, helping with **demand forecasting**.  
- Average order size provides a baseline to measure **customer value over time**. 



---

## License
MIT

