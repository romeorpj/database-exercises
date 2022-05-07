USE employees;

# SELECT  dpts.dept_name AS 'Department Name',CONCAT(emp.first_name, ' ', emp.last_name) AS 'Department Manager'
# FROM employees AS Emp
# JOIN dept_manager AS dm
# ON Emp.emp_no = dm.emp_no
# JOIN departments AS dpts
# ON dm.dept_no = dpts.dept_no
# WHERE dm.to_date = '9999-01-01'
# ;

# SELECT  dpts.dept_name AS 'Department Name',CONCAT(emp.first_name, ' ', emp.last_name) AS 'Department Manager'
# FROM employees AS emp
# JOIN dept_manager AS dm
# ON emp.emp_no = dm.emp_no
# JOIN departments AS dpts
# ON dm.dept_no = dpts.dept_no
# WHERE dm.to_date = '9999-01-01'AND emp.gender = 'f'
# ;

SELECT  tt.title AS 'title',  COUNT(tt.title) AS 'Total'
FROM employees AS emp
JOIN titles AS tt
ON emp.emp_no = tt.emp_no
JOIN dept_emp AS demp
ON emp.emp_no = demp.emp_no
WHERE tt.to_date = '9999-01-01' AND demp.dept_no = 'd009'
GROUP BY tt.title
;