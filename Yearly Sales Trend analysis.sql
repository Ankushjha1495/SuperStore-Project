USE SQLL;

SELECT year(str_to_date(`Order Date`,'%d-%m-%Y')) AS Sales_Year,
ROUND(SUM(Sales),2) AS Total_Sales,
round(SUM(Profit),2) AS Total_Profit,
ROUND((SUM(Profit)/SUM(sales)*100),2) AS Profit_Margin_Percentage
FROM Superstore
GROUP BY YEAR(str_to_date(`Order Date`, '%d-%m-%Y')) 
ORDER BY Sales_Year ASC
