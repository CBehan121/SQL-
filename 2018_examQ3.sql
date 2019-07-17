SELECT p.name, p.population, b.name ,((p.Population / b.Population) * 100) as pop,b.LifeExpectancy
FROM City p LEFT JOIN Country b
ON p.CountryCode = b.Code
WHERE b.LifeExpectancy < 70 AND b.LifeExpectancy > 50
ORDER BY pop DESC; 
