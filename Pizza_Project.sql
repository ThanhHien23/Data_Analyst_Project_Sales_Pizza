Select * From pizza_sales;

Select SUM(total_price) as Total_Revenue From pizza_sales;

Select SUM(Total_Price) / Count(Distinct order_id) as Average_Order_Value From pizza_sales;

Select SUM(Quantity) as Total_Pizza_Sold From pizza_sales;

Select Count(Distinct order_id) as Total_Order_ID From pizza_sales;

Select Cast(CAST(SUM(quantity) as decimal(10,2)) / 
Cast(Count(Distinct order_id) as Decimal(10,2)) as Decimal(10,2)) as Average_Per_Order From pizza_sales;

Select DATENAME(DW, Order_date) as Order_Date, Count(Distinct Order_id) as Total_Order
From pizza_sales
Group by DATENAME(DW, Order_date);

Select DATENAME(Month, Order_date) as Month_Name, Count(Distinct Order_Id) as Total_Order
From pizza_sales
Group by DATENAME(Month, Order_date)
Order by Total_Order DESC;

Select pizza_category, SUM(total_Price) as Total_Sale, SUM(total_Price) * 100 / (Select Sum(Total_price) From pizza_sales) As Total_Revenue
From pizza_sales
Where MONTH(order_date) = 1
Group by  pizza_category;

Select pizza_size, SUM(total_Price) as Total_Sale, SUM(total_Price) * 100 / (Select Sum(Total_price) From pizza_sales) As Total_Revenue
From pizza_sales
Group by  pizza_size
Order by total_revenue DESC;

SELECT pizza_category, SUM(quantity) as Total_Quantity_Sold
FROM pizza_sales
WHERE MONTH(order_date) = 2
GROUP BY pizza_category
ORDER BY Total_Quantity_Sold DESC;

SELECT Top 5 pizza_name, SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC;

SELECT Top 5 pizza_name, SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue ASC;

SELECT Top 5 pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold DESC;

SELECT TOP 5 pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold ASC;

SELECT Top 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders DESC;

SELECT Top 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders ASC;

