--Drop table if exists. 
DROP TABLE salaries;
DROP TABLE employees;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE departments;
DROP TABLE titles;


--Create new salaries table
CREATE TABLE salaries (
	emp_no INT PRIMARY KEY NOT NULL,
	salary INT,
	from_date DATE,
	to_date DATE
	);
	
--Import salaries.csv file
--Check to see if table is populated correctly
SELECT * FROM salaries;

--Create new employees table
CREATE TABLE employees (
	emp_no INT PRIMARY KEY NOT NULL,
	birth_date DATE,
	first_name VARCHAR(40),
	last_name VARCHAR(40),
	gender VARCHAR(1),
	hire_date DATE
	);
	
--Import salaries.csv file	
--Check to see if tbale is populated correctly
SELECT * FROM employees LIMIT 10;

--Create new dept_emp table
CREATE TABLE dept_emp (
	emp_no INT, 
	dept_no VARCHAR,
	from_date DATE,
	to_date DATE	
	);

--Import dept_emp.csv file	
--Check to see if table is populated correctly
SELECT * FROM dept_emp LIMIT 10;

--Create new dept_manager table
CREATE TABLE dept_manager (
		dept_no VARCHAR,
		emp_no INT,
		from_date DATE,
		to_date DATE
		);
		
--Import dept_manager.csv file	
--Check to see if table is populated correctly
SELECT * FROM dept_manager LIMIT 10;

--Create new departments table
CREATE TABLE departments (
		dept_no VARCHAR,
		dept_name VARCHAR
		);
		
--Import departments.csv file	
--Check to see if table is populated correctly
SELECT * FROM departments;


--Create new titles table
CREATE TABLE titles (
		emp_no INT,
		title VARCHAR,
		from_date DATE,
		to_date DATE
		);
		
--Import titles.csv file	
--Check to see if table is populated correctly
SELECT * FROM titles;



