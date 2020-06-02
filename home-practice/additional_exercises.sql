use employees;

#Exercise 1: Top 3 most common job titles
SELECT title, COUNT(title) AS 'Results'
FROM titles
GROUP BY title
ORDER BY Results DESC
LIMIT 3;

#Exercise 2: lowest employee number for the first senior engineers in the company
SELECT emp_no
FROM titles
WHERE title = 'Senior Engineer'
ORDER BY emp_no
LIMIT 1;

#alternatively, we can use MIN for Exercise 2:
SELECT MIN(emp_no) AS 'Lowest employee number for a Senior Engineer'
from titles
WHERE title = 'Senior Engineer';

#Exercise 3: the most common 'from date' for job titles?
SELECT from_date, COUNT(from_date) AS 'Results'
FROM titles
GROUP BY from_date
ORDER BY Results DESC
LIMIT 1;

#the most common 'from date' for staff only?
SELECT from_date, COUNT(from_date) AS Results
FROM titles
WHERE title = 'Staff'
GROUP BY from_date
ORDER BY Results DESC
LIMIT 1;

#Exercise 4: the highest employee number for an engineer
SELECT MAX(emp_no) AS Highest_employee_number_for_an_Engineer
FROM titles
WHERE title = 'Engineer';

#Exercise 5:  names of the 10 most recently hired females in the company?
SELECT CONCAT(first_name, ' ', last_name) AS full_name, hire_date
FROM employees
WHERE gender = 'F'
ORDER BY hire_date DESC
LIMIT 10;

#the names of the first 10 females hired?
SELECT CONCAT(first_name, ' ', last_name) AS full_name, hire_date
FROM employees
WHERE gender = 'F'
ORDER BY hire_date
LIMIT 10;



