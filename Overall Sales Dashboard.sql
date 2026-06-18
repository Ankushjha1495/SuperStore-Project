USE SQLL;

SELECT COUNT(DISTINCT `Order Id`) AS Total_Order,
ROUND(SUM(Sales),2) AS Total_Sales,
ROUND(SUM(Profit),2) AS Total_Profit,
ROUND((SUM(Profit)/SUM(Sales)*100),2) AS Profit_Margin_Percentage
FROM Superstore
