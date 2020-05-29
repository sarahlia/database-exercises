use employees;

# Exercise 1
# SELECT hire_date FROM employees WHERE emp_no = '101010';
SELECT CONCAT(first_name, ' ', last_name) AS 'Results'
FROM employees
WHERE hire_date IN(
    SELECT hire_date FROM employees WHERE emp_no = '101010'
);

# Exercise 2
# SELECT emp_no FROM employees WHERE first_name = 'aamod' (total titles);
SELECT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no FROM employees WHERE first_name = 'aamod'
);

# SELECT emp_no FROM employees WHERE first_name = 'aamod' (distinct titles);
SELECT DISTINCT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no FROM employees WHERE first_name = 'aamod'
);

# Exercise 3
SELECT first_name, last_name
FROM employees
WHERE last_name IN (
           SELECT e.first_name, e.last_name
           FROM employees AS e
                    JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
                    JOIN departments AS d ON d.dept_no = dm.dept_no
           WHERE (e.gender = 'F' AND dm.to_date = '9999-01-01')
);

# Exercise 4
# SELECT emp_no
# FROM dept_manager
# WHERE to_date = '9999-01-01';
SELECT first_name, last_name
FROM employees
where emp_no IN (
    SELECT emp_no
                 FROM dept_manager
                 WHERE to_date = '9999-01-01'
    )

    AND gender = 'F';

