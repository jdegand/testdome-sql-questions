/* https://stackoverflow.com/questions/5231712/sql-not-in-not-working */

SELECT employees.name
FROM employees 
WHERE employees.id NOT IN (
  SELECT employees.managerId
  FROM employees WHERE employees.managerId IS NOT NULL
);