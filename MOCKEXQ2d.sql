SELECT cc.Name, COUNT(cl.Language) as amount
FROM Country cc 
JOIN CountryLanguage cl on cc.Code = cl.CountryCode
WHERE cc.Name in
(SELECT c.Name
FROM Country c JOIN City cty ON cty.CountryCode = c.Code
WHERE cty.population > 8000000)



group by cc.Name
order by amount