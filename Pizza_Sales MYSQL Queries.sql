Create Database Pizza_DB;

Use Pizza_DB;

Select * From Pizza_Sales;

Select Count(*) From Pizza_Sales;

Describe Pizza_Sales;

Set Sql_Safe_Updates = 0;

/* Transaction Date Update */

Update Pizza_Sales
Set Order_Date = str_to_date(Order_Date,'%d-%m-%Y')

Alter Table Pizza_Sales
Modify Order_Date Date;

Update Pizza_Sales
Set Order_Time = str_to_date(Order_Time, '%H:%i:%S')

ALter Table Pizza_Sales
Modify Order_Time Time;

/* Problem Statement */
-- KPI's Requirement --

-- 1 Total Revenue
Select round(Sum(Total_Price),0) As Total_Revenue From Pizza_Sales;

-- 2 Average Order Value (AOV)
Select Round(Sum(Total_Price)/Count(Distinct Order_id),0) As AOV From Pizza_Sales;

-- 3 Total Pizza Sold
Select Round(Sum(quantity),0) As Total_Pizza_Sold From Pizza_Sales;

-- 4 Total Orders
Select Count(Distinct Order_id) As Total_Orders From Pizza_Sales;

-- 5 Average Pizza Per Order
Select Round(Sum(quantity) / Count(Distinct Order_id),1) As Avg_Pizza_Per_Order From Pizza_Sales;

-- Charts Requirement --

-- 1 Daily Trend For Total Orders

Select Dayname(Order_Date) As Order_Day, Count(Distinct Order_ID) As Total_Orders
From Pizza_Sales
Group By Order_Day
Order By Order_Day;  -- ❌

Select Dayofweek(Order_Date) As Day_No,
Dayname(Order_Date) As Order_Day,
Count(Distinct Order_ID) As Total_Orders
From Pizza_Sales
Group By Day_No, Order_Day
Order By Day_No; -- ☑️

-- 2 Monthly Trend For Total Orders

Select Dayofmonth(Order_Date) As Month_No,
Monthname(Order_Date) As Month_Name,
Count(Distinct Order_ID) As Total_Orders
From Pizza_Sales
Group By Month_No, Month_Name
Order By Month_No; -- ❌

Select Month(Order_Date) As Month_No,
Monthname(Order_Date) As Month_Name,
Count(Distinct Order_ID) As Total_Orders
From Pizza_Sales
Group By Month_No, Month_Name
Order By Month_No; -- ☑️

-- 3 Percentage Of Sales By Pizza Category

Select Pizza_Category,
Sum(Total_Price)/(Select Sum(Total_Price) From Pizza_Sales) * 100 As POS
From Pizza_Sales
Group By Pizza_Category
Order By POS Desc; -- Without Round_Off & % Symbol

Select Pizza_Category,
Concat(Round(Sum(Total_Price)/(Select Sum(Total_Price) From Pizza_Sales) * 100,2),'%') As POS
From Pizza_Sales
Group By Pizza_Category
Order By POS Desc; -- With Round_Off & % Symbol

Select Pizza_Category,
Round(Sum(Total_Price),2) As Total_Sales,
Concat(Round(Sum(Total_Price)/(Select Sum(Total_Price) From Pizza_Sales Where Month(Order_Date) = 2) * 100,2),'%') As POS
From Pizza_Sales
Where Month(Order_Date) = 2
Group By Pizza_Category
Order By POS Desc; -- With Round_Off & % Symbol Including Date Filter and Sales

-- 4 Percentage of Sales By Pizza Size

Select Pizza_Size,
Round(Sum(Total_Price),2) As Total_Sales,
Concat(Round(Sum(Total_Price)/(Select Sum(Total_Price) From Pizza_Sales Where Quarter(Order_Date) = 2) * 100,2),'%') As POS
From Pizza_Sales
Where Quarter(Order_Date) = 2
Group By Pizza_Size
Order By POS Desc;

-- 5 Top 5 Best Seller By Total ( Revenue, Quantity & Orders)

(Select 'Top 5 By Revenue' As Metric,
Pizza_Name,
Round(Sum(Unit_Price * Quantity),2) As Value
From Pizza_Sales
Group By Pizza_Name
Order By Sum(Unit_Price * Quantity) Desc
Limit 5)
Union All
(Select 'Top 5 By Quantity' As Metric,
Pizza_Name,
Sum(Quantity) As Value
From Pizza_Sales
Group By Pizza_Name
Order By Sum(Quantity) Desc
Limit 5)
Union All
(Select 'Top 5 By Orders' As Metric,
Pizza_Name,
Count(Order_ID) As Value
From Pizza_Sales
Group By Pizza_Name
Order By Count(Order_ID) Desc
Limit 5); -- ❌

(Select * From
             (Select 'Top 2 By Revenue' As Metric,
             Pizza_Name,
             Total_Revenue As Value
             From 
                 (Select Pizza_Name,
                 Round(Sum(Total_Price),2) As Total_Revenue
                 From Pizza_Sales
                 Group By Pizza_Name
                 Order By Total_Revenue Desc
                 Limit 2) a ) b
Union All
Select * From 
             (Select 'Top 2 By Quantity' As Metric,
             Pizza_Name,
             Total_Quantity As Value
             From
                 (Select Pizza_Name,
                 Sum(Quantity) As Total_Quantity
                 From Pizza_Sales
                 Group By Pizza_name
                 Order By Total_Quantity Desc
                 Limit 2) c ) d
Union All
Select * From
             (Select 'Top 2 By Orders' As Metric,
             Pizza_Name,
             Total_Orders As Value
             From
                 (Select Pizza_Name,
                 Count(Order_Id) As Total_Orders
                 From Pizza_Sales
                 Group By Pizza_Name
                 Order By Total_Orders Desc
                 Limit 2) e ) f); -- ☑️
                 


















