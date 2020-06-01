# From https://www.w3resource.com/mysql-exercises/basic-simple-exercises/
#EXERCISE 1
SELECT FIRST_NAME AS 'First Name', LAST_NAME AS 'Last Name' FROM employees;

#EXERCISE 2
SELECT DISTINCT DEPARTMENT_ID FROM employees;

#EXERCISE 3
SELECT * FROM employees
ORDER BY FIRST_NAME DESC;

#EXERCISE 4
SELECT FIRST_NAME, LAST_NAME, SALARY, (SALARY * 0.15) AS 'PF'
FROM employees;

#EXERCISE 5
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY
FROM employees
ORDER BY SALARY;

#EXERCISE 6
SELECT SUM(SALARY) AS 'Total Salaries Payable'
FROM employees;

#EXERCISE 7
SELECT MAX(SALARY) AS 'Maximum Salary', MIN(SALARY) AS 'Minimum Salary'
FROM employees;

#EXERCISE 8
SELECT AVG(SALARY) AS 'Average Salary', COUNT(EMPLOYEE_ID) AS 'Number of employees'
FROM employees;

#EXERCISE 9
SELECT COUNT(EMPLOYEE_ID) AS 'Number of employees'
FROM employees;

#EXERCISE 10
SELECT COUNT(DISTINCT JOB_ID) AS 'Number of unique jobs'
FROM employees;

#EXERCISE 11
SELECT UPPER(FIRST_NAME)
FROM employees;

#EXERCISE 12: select first 3 characters of first name of all employees. first letter=1, span=3
SELECT SUBSTRING(FIRST_NAME, 1, 3)
FROM employees;

#EXERCISE 13
SELECT ((171 * 214) + 625);

#EXERCISE 14
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Employee Name'
FROM employees;

#EXERCISE 15
SELECT TRIM(FIRST_NAME)
FROM employees;

#EXERCISE 16
SELECT first_name, last_name, LENGTH(first_name) + LENGTH(last_name) AS 'Length of Name'
FROM employees;

#EXERCISE 17: check if FIRST_NAME contains numbers
SELECT *
FROM employees
WHERE FIRST_NAME REGEXP '[0-9]';

#EXERCISE 18
SELECT *
FROM employees
ORDER BY EMPLOYEE_ID
LIMIT 10;

#EXERCISE 19
SELECT FIRST_NAME, LAST_NAME, ROUND(SALARY/12, 2) AS 'Monthly Salary'
FROM employees;




