-- 15) Categorize the content based 
SELECT cast AS actor,
	COUNT(*) AS movie_count
FROM netflix 
WHERE type = 'Movie'
	AND country LIKE '%india%'
    AND cast IS NOT NULL
GROUP BY cast
ORDER BY movie_count DESC
LIMIT 10;