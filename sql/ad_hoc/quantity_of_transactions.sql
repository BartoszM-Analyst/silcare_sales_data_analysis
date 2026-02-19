SELECT 
		dc.CompanyName,
		Count(SalesID) As AllTranasctions,
		Sum(NetValue) As TotalNetValue
FROM dbo.DimCompany dc
Inner Join dbo.FactSales fs
On dc.CompanyID = fs.CompanyID
Where Quantity >= 3 
Group by CompanyName
Having COUNT(SalesID) >= 2
Order by TotalNetValue Desc