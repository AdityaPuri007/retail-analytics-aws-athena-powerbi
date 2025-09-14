🛒 Retail Sales Analytics using AWS Athena & Power BI
📌 Project Overview

This project analyzes real-world e-commerce transactions using AWS Athena and visualizes insights in Power BI.
The goal is to demonstrate cloud data querying, analytics, and visualization skills for business decision-making.

🚀 Architecture

Amazon S3 → Stored raw transactional dataset (OnlineRetail.csv).

AWS Athena → Queried and transformed the data using SQL.

Power BI → Created an interactive dashboard for business KPIs.

GitHub → Documentation & portfolio showcase.

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

📷 Dashboard Preview
<img width="1918" height="1017" alt="Power BI Dashboard" src="https://github.com/user-attachments/assets/026f3396-a92a-4cbf-be68-0b191f1c0d63" />


🔑 Key Learnings

How to query large datasets stored in Amazon S3 using Athena.

How to analyze real retail data to extract meaningful KPIs.

Building Power BI dashboards from cloud query results.

End-to-end workflow from raw data → insights → visualization.

🛠️ Technologies Used

Amazon S3

AWS Athena (SQL)

Power BI

Excel (for intermediate analysis)

📌 How to Reproduce

Upload dataset to Amazon S3.

Set up Athena query outputs in S3.

Run SQL queries (provided in queries/).

Export results to CSV/Excel.

Import into Power BI and apply visuals.
