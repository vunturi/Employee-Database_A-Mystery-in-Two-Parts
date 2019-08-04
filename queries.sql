--Data Analysis
--1. List the following details of each employee: employee number, last name, first name, gender, and salary.
-- Join employees table with salary table

SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM salaries as s
INNER JOIN employees as e ON
e.emp_no = s.emp_no;


--2. List employees who were hired in 1986.

SELECT * FROM employees
WHERE
      hire_date >= '1986-01-01'
  AND hire_date <  '1986-12-31';
  
--3. List the manager of each department with the following information: department number, department name,
--the manager's employee number, last name, first name, and start and end employment dates.


