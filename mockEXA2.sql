SELECT l.customerName, l.city, l.phone, count(s.customerNumber ) as pop
FROM customers l left join orders s
ON s.customerNumber = l.customerNumber
where count(s.customerNumber) > 5
GROUP BY l.customerNumber



