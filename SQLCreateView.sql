USE [AdvancedBankDB]
GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_Branch_Performance_Data] AS
SELECT 
    b.BranchName AS [BranchName],
    b.City AS [City],
    d.MonthName AS [MonthName],
    SUM(f.Amount_USD) AS [Amount_USD],
    AVG(CAST(f.CSAT AS DECIMAL(5,2))) AS [ CSAT],
    AVG(CAST(f.NPS AS DECIMAL(5,2))) AS [ NPS],
    AVG(CAST(f.Risk_Score AS DECIMAL(5,2))) AS [Risk_Score],
    (SUM(CAST(f.Churned AS DECIMAL(5,2))) / COUNT(f.FactKey)) * 100 AS [معدل مغادرة العملاء Churn %]
FROM FactBankOperations f
INNER JOIN DimBranch b ON f.BranchKey = b.BranchKey
INNER JOIN DimDate d ON f.DateKey = d.DateKey
GROUP BY b.BranchName, b.City, d.MonthName
GO


