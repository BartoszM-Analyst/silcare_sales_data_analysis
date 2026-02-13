SELECT TOP 5 CompanyName,
Count(*) AS TotalSales,
Sum(NetValue) AS TotalNetValue
FROM dbo.DimCompany dc
INNER JOIN dbo.FactSales fs
ON dc.CompanyID = fs.CompanyID
Group By dc.CompanyID, dc.CompanyName
Order By TotalNetValue DESC

