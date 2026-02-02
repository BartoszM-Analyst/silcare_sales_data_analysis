USE SilcareDW;
GO

/* =====================================
   LOAD FACT TABLE: SALES
   ===================================== */

INSERT INTO dbo.FactSales (
    CompanyID,
    ProductID,
    DateID,
    Quantity,
    UnitPrice,
    Discount,
    NetValue
)
SELECT
    c.CompanyID,
    p.ProductID,
    d.DateID,
    s.Quantity,
    s.UnitPrice,
    s.Discount,
    s.Quantity * s.UnitPrice * (1 - ISNULL(s.Discount, 0)) AS NetValue
FROM dbo.StgSales s
JOIN dbo.DimCompany c
    ON s.CompanyName = c.CompanyName
JOIN dbo.DimProduct p
    ON s.ProductName = p.ProductName
JOIN dbo.DimDate d
    ON s.InvoiceDate = d.[Date]
WHERE NOT EXISTS (
    SELECT 1
    FROM dbo.FactSales f
    WHERE f.CompanyID = c.CompanyID
      AND f.ProductID = p.ProductID
      AND f.DateID = d.DateID
      AND f.Quantity = s.Quantity
      AND f.UnitPrice = s.UnitPrice
);
GO


/* =====================================
   DATA QUALITY CHECKS
   ===================================== */

-- Compare staging vs facts
SELECT COUNT(*) AS StagingRows
FROM dbo.StgSales;

SELECT COUNT(*) AS FactRows
FROM dbo.FactSales;
GO
