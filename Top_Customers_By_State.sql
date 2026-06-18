USE Sqll;

-- WITH Customer_State_Spend AS (

-- SELECT State,
-- `Customer Name`,
-- ROUND(SUM(Sales),2) AS Total_Spend,
-- ROW_NUMBER() OVER(partition by State ORDER BY SUM(Sales) DESC) AS Customer_Rank
-- FROM Superstore
-- GROUP BY State,`Customer Name`
-- )

SELECT State,
`Customer Name`,
Total_Spend
FROM Customer_State_Spend
WHERE Customer_Rank <=3
ORDER BY State ASC, Customer_Rank ASC