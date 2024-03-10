-- Data Analysis
-- 1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, salaries.salary
FROM employees AS e
INNER JOIN salaries ON
	salaries.emp_no = e.emp_no;
	
-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT e.emp_no, e.last_name, e.first_name, e.hire_date
FROM employees AS e
WHERE e.hire_date LIKE '%1986';

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager AS dm
JOIN departments AS d ON dm.dept_no = d.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no;

-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
JOIN departments AS d ON de.dept_no = d.dept_no
JOIN employees AS e ON de.emp_no = e.emp_no;

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT e.first_name, e.last_name, e.sex
FROM employees AS e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%'

-- 6. List each employee in the Sales department, including their employee number, last name, and first name.
SELECT e.emp_no, e.last_name, e.first_name
FROM employees AS e
WHERE emp_no IN
(
	SELECT e.emp_no
	FROM dept_emp AS de
	WHERE de.dept_no IN
	(
		SELECT de.dept_no
		FROM departments AS d
		WHERE d.dept_name = 'Sales'
	)
);

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments d ON d.dept_no = de.dept_no
WHERE e.emp_no IN
(
	SELECT e.emp_no
	FROM dept_emp de
	WHERE de.dept_no IN
	(
		SELECT d.dept_no
		FROM departments AS d
		WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'
	)
);
-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT e.last_name, COUNT(e.last_name) AS last_name_count
FROM employees AS e
GROUP BY e.last_name
ORDER BY last_name_count DESC
