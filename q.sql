SELECT c.contactLastName, c.city, c.phone, COUNT(o.customerNumber) as orders
FROM customers c JOIN orders o on c.customerNumber = o.customerNumber
GROUP BY o.customerNumber
HAVING COUNT(o.customerNumber) >= 5
ORDER BY orders DESC
LIMIT 5;


