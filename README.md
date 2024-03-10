# sql-challenge
UO Data Bootcamp | Module 9 SQL Challenge

-**Data Engineering**

-Used the provided six CSV files to create a table schema. 
-Included the following:
- Specified the data types, primary keys, foreign keys, and other constraints.
-- For the primary keys, verified that the column is unique. 

**Created the tables in the correct order to handle the foreign keys.**

- Data imported in folder "EmployeesSQL > data"
- ERD is file titled "Pewlett_Hackard_Employees_ERD.png"
- Database schema contained in "Pewlett_Hackard_EmployeesDB_Schema.txt"
- SQL File for creation in file titled "ph_db_creation.sql"
    - Following db and table creation, imported each CSV file into its corresponding SQL table via PGAdmin Import/Export tool.

**Data Analysis**

All analysis can be run using queries found in file titled "ph_employee_queries.sql" Queries address the below prompts:

-1.List the employee number, last name, first name, sex, and salary of each employee.
-2.List the first name, last name, and hire date for the employees who were hired in 1986.
-3.List the manager of each department along with their department number, department name, employee number, last name, and first name.
-4.List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
-5.List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
-6.List each employee in the Sales department, including their employee number, last name, and first name.
-7.List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
-8.List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).