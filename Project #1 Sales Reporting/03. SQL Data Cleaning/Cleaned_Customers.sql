SELECT c.[CustomerKey] AS CustomerKey
      ,c.[FirstName] AS [First Name]
      ,c.[LastName] AS [Last Name]
      ,CASE c.[Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
      ,c.[DateFirstPurchase] AS DateFirstPurchase
	  ,g.city AS [Customer City]
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer] AS c
	LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey
ORDER BY
	CustomerKey ASC
