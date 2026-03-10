SELECT TOP (1000) [Age]
      ,[Gender]
      ,[AnnualIncome]
      ,[NumberOfPurchases]
      ,[ProductCategory]
      ,[TimeSpentOnWebsite]
      ,[LoyaltyProgram]
      ,[DiscountsAvailed]
      ,[PurchaseStatus]
  FROM [SalesAnalysis].[dbo].[customer_purchase_data]
  SELECT AVG(AnnualIncome) AS Average_Income
FROM customer_purchase_data;
SELECT Gender,
AVG(NumberOfPurchases) AS Avg_Purchases
FROM customer_purchase_data
GROUP BY Gender;
SELECT ProductCategory,
COUNT(*) AS Total_Customers
FROM customer_purchase_data
GROUP BY ProductCategory
ORDER BY Total_Customers DESC;
SELECT LoyaltyProgram,
AVG(NumberOfPurchases) AS Avg_Purchases
FROM customer_purchase_data
GROUP BY LoyaltyProgram;
SELECT 
    ProductCategory,
    AVG(AnnualIncome) AS Avg_Income,
    AVG(NumberOfPurchases) AS Avg_Purchases
FROM customer_purchase_data
GROUP BY ProductCategory
ORDER BY Avg_Purchases DESC;