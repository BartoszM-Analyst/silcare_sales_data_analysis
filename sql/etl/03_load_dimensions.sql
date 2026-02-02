USE SilcareDW;
GO

/* =====================================
   LOAD DIMENSION: COMPANY
   ===================================== */

INSERT INTO dbo.DimCompany (CompanyName, NIP, Country)
SELECT DISTINCT
    s.CompanyName,
    s.NIP,
    s.Country
FROM dbo.StgSales s
WHERE s.CompanyName IS NOT NULL
  AND NOT EXISTS (
      SELECT 1
      FROM dbo.DimCompany d
      WHERE d.CompanyName = s.CompanyName
  );
GO


/* =====================================
   LOAD DIMENSION: PRODUCT
   ===================================== */

INSERT INTO dbo.DimProduct (ProductName, Category)
SELECT DISTINCT
    s.ProductName,
    s.Category
FROM dbo.StgSales s
WHERE s.ProductName IS NOT NULL
  AND NOT EXISTS (
      SELECT 1
      FROM dbo.DimProduct d
      WHERE d.ProductName = s.ProductName
  );
GO


/* =====================================
   DATA QUALITY CHECKS
   ===================================== */

-- Companies count
SELECT COUNT(*) AS CompaniesCount
FROM dbo.DimCompany;

-- Products count
SELECT COUNT(*) AS ProductsCount
FROM dbo.DimProduct;
GO
