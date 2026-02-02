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
**Dataset:** `pizza_sales.csv`

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
