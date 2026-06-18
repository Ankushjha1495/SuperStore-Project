USE SQLL;

Select `Customer Name`,
COUNT(DISTINCT `Order ID`) AS Total_Order,
ROUND(SUM(Sales),2) AS Total_Spend,
ROUND(SUM(Profit),2) AS Total_Profit_Contribution,
ROUND((SUM(Profit)/SUM(Sales)*100),2) AS Profit_Margin_Contribution_Percentage
FROM Superstore
GROUP BY `Customer Name`
ORDER BY Total_Spend DESC
LIMIT 5;