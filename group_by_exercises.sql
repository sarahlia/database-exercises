use employees;

show tables;

describe titles;

# Exercise 2
SELECT DISTINCT title
    FROM titles;

# Exercise 3
SELECT last_name
    FROM employees
    WHERE (last_name LIKE 'E%' AND last_name LIKE '%E')
GROUP BY last_name;

# Exercise 4
SELECT first_name, last_name
FROM employees
WHERE (last_name LIKE 'E%' AND last_name LIKE '%E')
GROUP BY first_name, last_name;

# Exercise 5
SELECT last_name
FROM employees
WHERE (last_name LIKE '%q%')
    AND (last_name NOT LIKE '%qu%')
GROUP BY last_name;

# Exercise 6
SELECT last_name, COUNT(last_name)
FROM employees
WHERE (last_name LIKE '%q%')
  AND (last_name NOT LIKE '%qu%')
GROUP BY last_name
ORDER BY COUNT(last_name);

# Exercise 7
SELECT COUNT(*), gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;