USE SQLL;

WITH Yearly_Sales AS (

Select Year(str_to_date(`Order Date`, '%d-%m-%Y')) AS Sales_Year,
ROUND(SUM(Sales),2) AS Current_Year_Sales
FROM Superstore
GROUP BY Year(str_to_date(`Order Date`, '%d-%m-%Y'))
)
Select Sales_Year,
Current_Year_Sales,
LAG(Current_Year_Sales,1) OVER(Order By Sales_Year) AS Previous_Year_Sales,
ROUND(
((Current_Year_Sales-LAG(Current_Year_Sales,1) OVER (Order by Sales_Year))
/LAG(Current_Year_Sales,1) OVER (Order by Sales_Year))*100,2) AS Yoy_Growth_Percentage

FROM Yearly_Sales
ORDER BY Sales_Year