-- Cleaned Dim_DateTable --
Select [FullDateAlternateKey] AS Date, 
[EnglishDayNameOfWeek] AS Day, 
[EnglishMonthName] AS Month, 
[MonthNumberOfYear] AS MonthNo, 
Left([EnglishMonthName], 3) AS MonthShort, 
[CalendarQuarter] AS Quarter, 
[CalendarYear] AS Year 
FROM 
  [AdventureWorksDW2022].[dbo].[DimDate] 
WHERE 
  CalendarYear >= (
    (
      YEAR(
        GETDATE()
      ) -2
    )
  )


