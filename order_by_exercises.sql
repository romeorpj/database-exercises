USE employees;

# SELECT * FROM employees
# WHERE first_name IN('Irena', 'Vidya', 'Maya')
# ORDER BY last_name, first_name;

# SELECT * FROM employees
# WHERE first_name IN('Irena', 'Vidya', 'Maya')
# ORDER BY last_name, first_name DESC;

SELECT * FROM employees
WHERE first_name IN('Irena', 'Vidya', 'Maya')
AND last_name LIKE '%e%'
ORDER BY emp_no;

SELECT * FROM employees
WHERE first_name IN('Irena', 'Vidya', 'Maya')
  AND last_name LIKE '%e%'
ORDER BY emp_no DESC;