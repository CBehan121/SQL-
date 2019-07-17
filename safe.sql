SELECT employ.firstName, employ.lastname, COUNT(cust.salesRepEmployeeNumber) as sales
FROM employees employ, customers cust
WHERE cust.salesRepEmployeeNumber = employ.employeeNumber
GROUP BY employ.EmployeeNumber
