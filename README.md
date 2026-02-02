# 🍕 Pizza Sales Analysis

## 📌 Project Overview
The Pizza Sales Analysis project focuses on analyzing transactional sales data from a pizza store to uncover key business insights, trends, and performance metrics.  
The analysis supports data-driven decision-making for sales, marketing, and operations using **SQL, Python, and Power BI**.

---

## 🎯 Business Objectives
- Identify total revenue, total pizzas sold, and total number of orders
- Analyze sales distribution by pizza category, size, and type
- Understand time-based trends (daily, monthly, hourly)
- Identify best-selling and least-selling pizzas
- Analyze customer purchasing behavior using KPIs such as:
  - Average Order Value (AOV)
  - Average Pizzas per Order
- Provide interactive dashboards and visual insights for management

---

## 🗂 Data Source
**Dataset:** <https://github.com/Amanshreewastav01/Pizza-Sales-Analysis/blob/main/pizza_sales.csv>

### Key Fields:
- `order_id` – Unique order identifier  
- `pizza_id` – Unique pizza identifier  
- `pizza_name` – Name of the pizza  
- `quantity` – Number of pizzas sold  
- `total_price` – Revenue per transaction  
- `order_date`, `order_time` – Time-based analysis  
- `pizza_category`, `pizza_size` – Classification attributes  

📁 Dataset location: `Data/`

---

## 🛠 Tools & Technologies Used
- **SQL (MySQL)** – Data cleaning, aggregation, and KPI calculations
- **Python (Pandas, Matplotlib, Seaborn)** – Data analysis and visualizations
- **Power BI** – Interactive dashboards and reporting
- **Excel** – Initial data exploration

---

## 📊 Key Performance Indicators (KPIs)
- **Total Revenue** = Sum of total_price  
- **Total Pizzas Sold** = Sum of quantity  
- **Total Orders** = Count of unique order_id  
- **Average Order Value (AOV)** = Total Revenue ÷ Total Orders  
- **Average Pizzas per Order** = Total Pizzas Sold ÷ Total Orders  

---

## 🧮 SQL Analysis
SQL was used to:
- Clean and format date & time fields
- Calculate KPIs
- Identify top and bottom performing pizzas
- Analyze trends by day and month

📁 SQL Queries Location:  


👉 *Paste all SQL queries inside this `.sql` file*  
(Optional: add comments above each query explaining the logic)

---

## 🐍 Python Analysis
Python was used for:
- Data preprocessing and feature extraction
- Exploratory Data Analysis (EDA)
- Visualization of trends and distributions

### Visualizations include:
- Daily sales trend
- Monthly sales trend
- Sales % by category
- Heatmap of pizza size vs category
- Ingredient frequency analysis

📁 Python Notebook Location:  

👉 *Paste all Python syntax, analysis, and charts inside this Jupyter Notebook*

---

## 📈 Power BI Dashboard
Power BI was used to create an interactive dashboard with:
- KPIs (Revenue, Orders, Quantity)
- Filters by category and size
- Sales trends over time
- Top & bottom selling pizzas

📁 Power BI Files Location:

### 📸 Dashboard Screenshot
Paste dashboard screenshots here 👇

```markdown
## 📸 Power BI Dashboard Preview
![Dashboard](PowerBI/dashboard_preview.png)
pizza-sales-analysis/
│
├── Data/
│   └── pizza_sales.csv
│
├── SQL/
│   └── pizza_sales_analysis.sql
│
├── Python/
│   └── pizza_sales_analysis.ipynb
│
├── PowerBI/
│   ├── pizza_sales_dashboard.pbix
│   └── dashboard_preview.png
│
├── PPT/
│   └── pizza_sales_summary.pptx
│
├── README.md
└── LICENSE

---

# 📜 MIT License (LICENSE file)

Create a file named **LICENSE** and paste this:

```text
MIT License

Copyright (c) 2025 Aman Kumar Shrivastav

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.

