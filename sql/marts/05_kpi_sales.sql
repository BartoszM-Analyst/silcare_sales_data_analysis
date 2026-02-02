USE SilcareDW;
GO

/* =====================================
   KPI VIEW: SALES OVERVIEW
   ===================================== */

IF OBJECT_ID('dbo.vw_KPI_Sales_Overview', 'V') IS NOT NULL
    DROP VIEW dbo.vw_KPI_Sales_Overview;
GO

CREATE VIEW dbo.vw_KPI_Sales_Overview
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


/* =====================================
   KPI VIEW: TOP PRODUCTS
   ===================================== */

IF OBJECT_ID('dbo.vw_KPI_Top_Products', 'V') IS NOT NULL
    DROP VIEW dbo.vw_KPI_Top_Products;
GO

CREATE VIEW dbo.vw_KPI_Top_Products
AS
SELECT
    p.ProductName,
    p.Category,
    SUM(f.Quantity)   AS TotalQuantity,
    SUM(f.NetValue)   AS TotalSalesValue
FROM dbo.FactSales f
JOIN dbo.DimProduct p
    ON f.ProductID = p.ProductID
GROUP BY
    p.ProductName,
    p.Category;
GO


/* =====================================
   KPI VIEW: TOP COMPANIES (B2B)
   ===================================== */

IF OBJECT_ID('dbo.vw_KPI_Top_Companies', 'V') IS NOT NULL
    DROP VIEW dbo.vw_KPI_Top_Companies;
GO

CREATE VIEW dbo.vw_KPI_Top_Companies
AS
SELECT
    c.CompanyName,
    c.Country,
    COUNT(f.SalesID)  AS TransactionsCount,
    SUM(f.NetValue)   AS TotalSalesValue
FROM dbo.FactSales f
JOIN dbo.DimCompany c
    ON f.CompanyID = c.CompanyID
GROUP BY
    c.CompanyName,
    c.Country;
GO
