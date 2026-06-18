USE SQLL;

Select `Product Name`,
Category,
`Sub-Category`,
ROUND(SUM(Sales),2) AS Total_Sales,
ROUND(SUM(Profit),2) AS Total_Profit
FROM Superstore
GROUP BY `Product Name`,Category,`Sub-Category`
ORDER BY Total_Profit ASC
LIMIT 5;