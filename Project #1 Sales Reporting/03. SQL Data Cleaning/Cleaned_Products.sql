SELECT p.[ProductKey]
      ,p.[ProductAlternateKey] AS [Product Item Code]
      ,p.[EnglishProductName] AS [Product Name]
      ,ps.[EnglishProductSubcategoryName] AS [Sub Category]
      ,pc.[EnglishProductCategoryName] AS [Product Category]
      ,p.[Color] AS [Product Color]
      ,p.[Size] AS [Product Size]
      ,p.[ProductLine] AS [Product Line]
      ,p.[ModelName] AS [Product Model]
      ,p.[EnglishDescription] AS [Product Description]
      ,ISNULL(p.[Status],'Outdated') AS [Product Status]
  FROM [AdventureWorksDW2022].[dbo].[DimProduct] as p
  LEFT JOIN DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
  LEFT JOIN DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
  ORDER BY
	p.ProductKey ASC
