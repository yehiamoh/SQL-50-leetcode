SELECT query_name, 
round(AVG(rating/position::decimal),2)as quality,
round(100.0*SUM((rating<3)::int)/COUNT(*),2)as poor_query_percentage
FROM Queries
WHERE query_name IS NOT NULL
GROUP BY query_name;