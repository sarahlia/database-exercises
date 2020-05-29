use employees;

# Exercise 2
SELECT d.dept_name AS 'Department Name', CONCAT_WS(' ', e.first_name, e.last_name) AS 'Department Manager'
FROM employees as e
JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
JOIN departments AS d on d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY `Department Name`;

# Exercise 3
SELECT d.dept_name AS 'Department Name', CONCAT_WS(' ', e.first_name, e.last_name) AS 'Manager Name'
FROM employees AS e
JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE (e.gender = 'F' AND dm.to_date = '9999-01-01')
ORDER BY `Department Name`;

# Exercise 4
SELECT t.title AS 'Title', COUNT(t.emp_no) AS 'Count'
FROM titles AS t
JOIN dept_emp AS de ON de.emp_no = t.emp_no
JOIN departments AS d ON d.dept_no = de.dept_no
WHERE (d.dept_name = 'Customer Service' AND t.to_date = '9999-01-01' AND de.to_date = '9999-01-01')
GROUP BY Title;