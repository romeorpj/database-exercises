USE employees;

# SELECT  dpts.dept_name AS 'Department Name',CONCAT(emp.first_name, ' ', emp.last_name) AS 'Department Manager'
# FROM employees AS Emp
# JOIN dept_manager AS dm
# ON Emp.emp_no = dm.emp_no
# JOIN departments AS dpts
# ON dm.dept_no = dpts.dept_no
# WHERE dm.to_date = '9999-01-01'
# ORDER BY dpts.dept_name
# ;

# SELECT  dpts.dept_name AS 'Department Name',CONCAT(emp.first_name, ' ', emp.last_name) AS 'Department Manager'
# FROM employees AS emp
# JOIN dept_manager AS dm
# ON emp.emp_no = dm.emp_no
# JOIN departments AS dpts
# ON dm.dept_no = dpts.dept_no
# WHERE dm.to_date = '9999-01-01'AND emp.gender = 'f'
# ;

# SELECT  tt.title AS 'title',  COUNT(tt.title) AS 'Total'
# FROM employees AS emp
# JOIN titles AS tt
# ON emp.emp_no = tt.emp_no
# JOIN dept_emp AS demp
# ON emp.emp_no = demp.emp_no
# WHERE tt.to_date = '9999-01-01' AND demp.dept_no = 'd009'
# GROUP BY tt.title
# ;

SELECT  dpts.dept_name AS 'Department Name',CONCAT(emp.first_name, ' ', emp.last_name) AS 'Department Manager', sal
    .salary AS Salary
FROM employees AS Emp
JOIN dept_manager AS dm
ON Emp.emp_no = dm.emp_no
JOIN salaries AS sal
ON Emp.emp_no = sal.emp_no
JOIN departments AS dpts
ON dm.dept_no = dpts.dept_no
WHERE dm.to_date = '9999-01-01'
GROUP BY dpts.dept_name
ORDER BY dpts.dept_name



;