USE SilcareDW;
GO

IF OBJECT_ID('dbo.vw_Report_Monthly_Sales', 'V') IS NOT NULL
    DROP VIEW dbo.vw_Report_Monthly_Sales;
GO

CREATE VIEW dbo.vw_Report_Monthly_Sales
AS
SELECT
    d.Year,
    d.Month,
    d.MonthName,
    COUNT(f.SalesID)        AS TransactionsCount,
    SUM(f.Quantity)         AS TotalQuantity,
    SUM(f.NetValue)         AS TotalSalesValue,
    AVG(f.NetValue)         AS AvgTransactionValue
FROM dbo.FactSales f
JOIN dbo.DimDate d
    ON f.DateID = d.DateID
GROUP BY
    d.Year,
    d.Month,
    d.MonthName;
GO
