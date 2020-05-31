use employees;

#Exercise 1: Top 3 most common job titles
SELECT title, COUNT(title) AS 'Results'
FROM titles
GROUP BY title
ORDER BY Results DESC
LIMIT 3;

#Exercise 2: lowest employee number for the first senior engineers in the company
SELECT emp_no, title
FROM titles
WHERE title = 'Senior Engineer'
ORDER BY emp_no
LIMIT 1;

#Exercise 3: the most common 'from date' for job titles?
SELECT from_date, COUNT(from_date) AS 'Results'
FROM titles
GROUP BY from_date
ORDER BY Results DESC
LIMIT 1;

#the most common 'from date' for staff only?
SELECT from_date, COUNT(from_date) AS 'Results'
FROM titles
WHERE title = 'Staff'
GROUP BY from_date
ORDER BY Results DESC
LIMIT 1;
