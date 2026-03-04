SELECT 
    dc.CompanyName,
    
    COUNT(fs.SalesID) AS AllTransactions,
    
    COUNT(CASE 
            WHEN fs.NetValue > 2000 
            THEN fs.SalesID 
          END) AS TransactionsAbove2000,
    
    COALESCE(SUM(CASE 
                    WHEN fs.NetValue > 2000 
                    THEN fs.NetValue 
                 END), 0) AS TotalNetValueAbove2000

FROM dbo.DimCompany dc
LEFT JOIN dbo.FactSales fs
    ON dc.CompanyID = fs.CompanyID

GROUP BY dc.CompanyName
ORDER BY TotalNetValueAbove2000 DESC;