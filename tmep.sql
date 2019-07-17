SELECT employ.firstName, employ.lastname, (SELECT COUNT(DISTINCT salesRepEmployeeNumber) FROM customers GROUP BY salesRepEmployeeNumber) AS sales
FROM employees employ LEFT JOIN customers cust
ON employ.employeeNumber = employ.employeeNumber
GROUP BY employ.employeeNumber