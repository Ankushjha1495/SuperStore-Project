USE SQLL;

SELECT State AS State_Name,
ROUND(SUM(Sales),2) AS Total_Sales,
ROUND(SUM(Profit),2) AS Total_Profit,
ROUND((SUM(Profit)/SUM(Sales)*100),2) AS Margin_Percentage
FROM Superstore
GROUP BY State
ORDER BY Total_Profit DESC