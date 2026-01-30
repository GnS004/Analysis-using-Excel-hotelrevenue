
WITH consolidated_bookings As (
SELECT * FROM dbo.['2018$'] 
UNION
SELECT * FROM dbo.['2019$'] 
UNION
SELECT * FROM dbo.['2020$'] )

SELECT * 
FROM consolidated_bookings
LEFT JOIN market_segment$ 
	ON consolidated_bookings.market_segment = market_segment$.market_segment
LEFT JOIN meal_cost$
	ON consolidated_bookings.meal = meal_cost$.meal