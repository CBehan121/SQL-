SELECT SUM(f.quantityOrdered), p.productName, p.productDescription 
FROM orderdetails f, products p
WHERE f.productCode = p.productCode
GROUP BY f.productCode