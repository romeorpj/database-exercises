USE employees;

#     Select DISTINCT title
# FROM titles;

# SELECT last_name AS lasty
# FROM employees
# WHERE last_name LIKE 'e%'
# AND last_name LIKE '%e'
# GROUP BY last_name
# ORDER BY lasty;

# SELECT last_name AS lasty
# FROM employees
# WHERE last_name LIKE 'e%'
#   AND last_name LIKE '%e'
# GROUP BY last_name
# ORDER BY lasty;

# SELECT DISTINCT first_name, last_name
# FROM employees
# WHERE last_name LIKE 'e%'
#   AND last_name LIKE '%e';

# SELECT COUNT(last_name) AS county, last_name
# FROM employees
# WHERE last_name LIKE '%q%'
#   AND last_name NOT LIKE '%qu%'
# GROUP BY last_name
# ORDER BY county;

SELECT COUNT(*), gender FROM employees
WHERE first_name IN('Irena', 'Vidya', 'Maya')
GROUP BY gender;