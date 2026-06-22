USE [AdvancedBankDB]
GO

INSERT INTO DimBranch (BranchName, City) VALUES 
(N'Abu Dhabi HQ', N'Abu Dhabi'),
(N'Dubai Main (Sheikh Zayed Rd)', N'Dubai'),
(N'Sharjah Cultural Square', N'Sharjah'),
(N'Al Ain Town Centre', N'Al Ain'),
(N'Ajman Cornish Branch', N'Ajman'),
(N'Muscat Main (Ruwi)', N'Muscat'),
(N'Sohar Industrial Hub', N'Sohar');

INSERT INTO DimDate (DateKey, FullDate, Year, MonthName) VALUES 
(20260101, '2026-01-01', 2026, 'January'),
(20260201, '2026-02-01', 2026, 'February'),
(20260301, '2026-03-01', 2026, 'March'),
(20260401, '2026-04-01', 2026, 'April');