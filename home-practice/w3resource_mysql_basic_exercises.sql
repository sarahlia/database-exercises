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


