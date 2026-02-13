SELECT dc.CompanyName
FROM dbo.DimCompany dc
LEFT JOIN dbo.FactSales fs
    ON dc.CompanyID = fs.CompanyID
WHERE fs.SalesID IS NULL;
