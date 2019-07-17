SELECT DISTINCT b.title, p.category_id, x.name
FROM film b, film_category p, category x
WHERE p.category_id = x.category_id
GROUP BY




