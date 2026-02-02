USE SilcareDW;
GO

/* ============================
   DIMENSION: COMPANY
   ============================ */
IF OBJECT_ID('dbo.DimCompany', 'U') IS NOT NULL
    DROP TABLE dbo.DimCompany;
GO

CREATE TABLE dbo.DimCompany (
    CompanyID   INT IDENTITY(1,1) PRIMARY KEY,
    CompanyName NVARCHAR(255) NOT NULL,
    NIP         NVARCHAR(10)  NULL,
    Country     NVARCHAR(100) NULL
);
GO


/* ============================
   DIMENSION: PRODUCT
   ============================ */
IF OBJECT_ID('dbo.DimProduct', 'U') IS NOT NULL
    DROP TABLE dbo.DimProduct;
GO

CREATE TABLE dbo.DimProduct (
    ProductID   INT IDENTITY(1,1) PRIMARY KEY,
    ProductName NVARCHAR(255) NOT NULL,
    Category    NVARCHAR(100) NULL
);
GO


/* ============================
   DIMENSION: DATE
   ============================ */
IF OBJECT_ID('dbo.DimDate', 'U') IS NOT NULL
    DROP TABLE dbo.DimDate;
GO

CREATE TABLE dbo.DimDate (
    DateID    INT PRIMARY KEY,
    [Date]    DATE NOT NULL,
    [Year]    INT  NOT NULL,
    [Month]   INT  NOT NULL,
    MonthName NVARCHAR(20),
    Quarter   INT
);
GO