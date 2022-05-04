USE employees;

-- # SELECT * FROM employees
-- # WHERE first_name IN('Irena', 'Vidya', 'Maya')
-- # ORDER BY last_name, first_name;

-- # SELECT * FROM employees
-- # WHERE first_name IN('Irena', 'Vidya', 'Maya')
-- # ORDER BY last_name, first_name DESC;

-- SELECT * FROM employees
-- WHERE first_name IN('Irena', 'Vidya', 'Maya')
-- AND last_name LIKE '%e%'
-- ORDER BY emp_no;



-- SELECT * FROM employees
-- WHERE first_name IN('Irena', 'Vidya', 'Maya')
--   AND last_name LIKE '%e%'
-- ORDER BY emp_no DESC;

# FUNCTIONS***
# SELECT CONCAT(first_name,' ',last_name) FROM employees
# WHERE first_name IN('Irena', 'Vidya', 'Maya')
#   AND last_name LIKE '%e%'
# ORDER BY emp_no;
#
# SELECT *
# FROM employees
# WHERE month(birth_date) = 12
#   AND day(birth_date) = 25;

# SELECT *
# FROM employees
# WHERE year(hire_date) BETWEEN 1990 AND 1999
#   AND month(birth_date) = 12
#   AND day(birth_date) = 25
# ORDER BY birth_date, hire_date DESC;

SELECT DATEDIFF(CURDATE(),hire_date) AS 'DAYS since hired'
FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25
ORDER BY hire_date;