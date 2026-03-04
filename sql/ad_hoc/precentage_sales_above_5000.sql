SELECT    
    dc.CompanyName, 
    
    COUNT(fs.SalesID) AS SalesCount,
    
    COUNT(CASE 
            WHEN fs.NetValue > 5000 
            THEN fs.SalesID 
         END) AS TransactionsAbove5000,
    
    COALESCE(SUM(CASE 
                    WHEN fs.NetValue > 5000 
                    THEN fs.NetValue 
                 END), 0) AS TotalNetValueAbove5000,
    
    CASE 
        WHEN COUNT(fs.SalesID) = 0 
        THEN 0
        ELSE 
            COUNT(CASE 
                    WHEN fs.NetValue > 5000 
                    THEN fs.SalesID 
                 END) * 100.0 
            / COUNT(fs.SalesID)
    END AS PercentageAbove5000

FROM dbo.DimCompany dc 
LEFT JOIN dbo.FactSales fs 
    ON fs.CompanyID = dc.CompanyID

GROUP BY dc.CompanyName;