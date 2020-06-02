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

#Exercise 6: the most common birthday
SELECT birth_date, COUNT(birth_date) AS Results
FROM employees
GROUP BY birth_date
ORDER BY Results DESC
LIMIT 1;

#Exercise 7:  the most common female birthday
SELECT birth_date, COUNT(birth_date) AS Results
FROM employees
WHERE gender = 'F'
GROUP BY birth_date
ORDER BY Results DESC
LIMIT 1;

# the most common male birthday
SELECT birth_date, COUNT(birth_date) AS Results
FROM employees
WHERE gender = 'M'
GROUP BY birth_date
ORDER BY Results DESC
LIMIT 1;

#Exercise 8: the most common hire date for female employees
SELECT hire_date, COUNT(hire_date) AS Results
from employees
WHERE gender = 'F'
GROUP BY hire_date
ORDER BY Results DESC
LIMIT 1;

# the most common hire date for male employees
SELECT hire_date, COUNT(hire_date) AS Results
from employees
WHERE gender = 'M'
GROUP BY hire_date
ORDER BY Results DESC
LIMIT 1;

#Exercise 9: the longest last name(s) of someone born on March 8, 1952?
SELECT last_name, MAX(LENGTH(last_name)) AS 'Length of last name'
FROM employees
WHERE birth_date = '1952-03-08'
GROUP BY last_name
ORDER BY `Length of last name` DESC
LIMIT 4;
