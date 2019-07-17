SELECT f.title, f.release_year, d.description 
FROM film f, film_text d
WHERE f.rating = "PG"