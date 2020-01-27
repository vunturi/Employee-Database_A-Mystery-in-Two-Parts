--Data Analysis

--1. List the following details of each employee: employee number, last name, first name, gender, and salary.
-- Join employees table with salary table
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM salaries as s
INNER JOIN employees as e ON
e.emp_no = s.emp_no;


--2. List employees who were hired in 1986.
SELECT * FROM employees
WHERE hire_date >= '1986-01-01'
  AND hire_date <=  '1986-12-31'
  ORDER BY hire_date;
  
--3. List the manager of each department with the following information: department number, department name,
--the manager's employee number, last name, first name, and start and end employment dates.
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
FROM employees AS e
JOIN dept_manager AS dm ON 
dm.emp_no = e.emp_no
JOIN departments AS d on 
dm.dept_no = d.dept_no

--4.List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
join dept_emp de ON e.emp_no = de.emp_no
join departments d ON d.dept_no = de.dept_no;

--5. List all employees whose first name is "Hercules" and last names begin with "B." 
SELECT first_name, last_name
FROM employees
	WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%'
	ORDER BY last_name;
	
	
--6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT DISTINCT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp as de ON e.emp_no = de.emp_no
JOIN departments AS d ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales';


--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT DISTINCT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp as de ON e.emp_no = de.emp_no
JOIN departments AS d ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';


--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name
SELECT COUNT(last_name), last_name
FROM employees
GROUP BY last_name;






    

