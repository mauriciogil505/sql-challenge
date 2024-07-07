-- queries.sql

-- Query 1: List the employee number, last name, first name, sex, and salary of each employee.
SELECT emp_no, last_name, first_name, sex, salary 
FROM employees 
JOIN salaries USING (emp_no);

-- Query 2: List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date 
FROM employees 
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- Query 3: List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name 
FROM department_managers dm
JOIN departments d ON dm.dept_no = d.dept_no
JOIN employees e ON dm.emp_no = e.emp_no;

-- Query 4: List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
JOIN employees e ON de.emp_no = e.emp_no
JOIN departments d ON de.dept_no = d.dept_no;

-- Query 5: List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex 
FROM employees 
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%';

-- Query 6: List each employee in the Sales department, including their employee number, last name, and first name.
SELECT e.emp_no, e.last_name, e.first_name 
FROM employees e 
JOIN dept_emp de ON e.emp_no = de.emp_no 
JOIN departments d ON de.dept_no = d.dept_no 
WHERE d.dept_name = 'Sales';

-- Query 7: List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employees e 
JOIN dept_emp de ON e.emp_no = de.emp_no 
JOIN departments d ON de.dept_no = d.dept_no 
WHERE d.dept_name IN ('Sales', 'Development');

-- Query 8: List the frequency counts, in descending order, of all the employee last names.
SELECT last_name, COUNT(*) as frequency 
FROM employees 
GROUP BY last_name 
ORDER BY frequency DESC;
