SELECT c.Name, c.Population,c.Continent, (SELECT (SUM(c.Population) / COUNT(c.Name)) as Average)
FROM Country c

 
	