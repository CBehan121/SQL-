SELECT l.Name, l.Population, ( SELECT h.Name FROM Country h WHERE h.Code = l.CountryCode)
FROM City l 

WHERE EXISTS( SELECT f.Name
				FROM Country f
                WHERE f.Code = l.CountryCode AND l.Population > ((l.Population / f.Population) * 100))
					 