USE SilcareDW;
GO

/* ============================
   FACT TABLE: SALES
   ============================ */
IF OBJECT_ID('dbo.FactSales', 'U') IS NOT NULL
    DROP TABLE dbo.FactSales;
GO

CREATE TABLE dbo.FactSales (
    SalesID   INT IDENTITY(1,1) PRIMARY KEY,

    CompanyID INT NOT NULL,
    ProductID INT NOT NULL,
    DateID    INT NOT NULL,

    Quantity  INT,
    UnitPrice DECIMAL(10,2),
    Discount  DECIMAL(5,2),
    NetValue  DECIMAL(12,2),

    CONSTRAINT FK_FactSales_Company
        FOREIGN KEY (CompanyID)
        REFERENCES dbo.DimCompany(CompanyID),

    CONSTRAINT FK_FactSales_Product
        FOREIGN KEY (ProductID)
        REFERENCES dbo.DimProduct(ProductID),

    CONSTRAINT FK_FactSales_Date
        FOREIGN KEY (DateID)
        REFERENCES dbo.DimDate(DateID)
);
GO
