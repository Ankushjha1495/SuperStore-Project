USE SQLL;

SELECT `Category`,
ROUND(SUM(Sales),2) AS Total_Sales,
ROUND(Sum(Profit),2) AS Total_Profit,
ROUND((sum(Profit)/SUM(Sales))*100) AS Profit_Margin_Percentage
FROM Superstore
GROUP BY `Category`
ORDER BY Profit_Margin_Percentage DESC