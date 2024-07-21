# Employee SQL Analysis
Project Overview
- This project involves creating and analyzing a relational database for employee data using PostgreSQL. The tasks include defining table schemas, importing CSV data into SQL tables, and performing various SQL queries to extract insights about the employees and departments.

## Project Objectives
Create table schemas for each CSV file.
Import CSV data into the corresponding SQL tables.
Perform data analysis through various SQL queries.
Visualize the query results.
Project Data Sources
The project uses the following CSV files as data sources:

departments.csv
employees.csv
salaries.csv
titles.csv
dept_emp.csv
dept_manager.csv

### Table Schemas

#### Departments
dept_no: varchar(4) PK
dept_name: varchar(50) UNIQUE

#### Employees
emp_no: int PK
emp_title_id: varchar(5)
birth_date: date
first_name: varchar(50)
last_name: varchar(50)
sex: varchar(1)
hire_date: date

#### Salaries
emp_no: int PK FK
salary: int

#### Titles
title_id: varchar(5) PK
title: varchar(50)

#### Dept_emp
emp_no: int PK FK
dept_no: varchar(4) PK FK

#### Dept_manager
dept_no: varchar(4) PK FK
emp_no: int PK FK

## Next:

### Step 1: Create Tables
Define the table schemas using SQL CREATE TABLE statements with appropriate data types, primary keys, foreign keys, and constraints.

### Step 2: Import Data
Use the \copy command in PostgreSQL to import data from CSV files into the corresponding tables:

sh
Copy code
\copy departments(dept_no, dept_name) FROM '/path/to/departments.csv' DELIMITER ',' CSV HEADER;
\copy employees(emp_no, emp_title_id, birth_date, first_name, last_name, sex, hire_date) FROM '/path/to/employees.csv' DELIMITER ',' CSV HEADER;
\copy salaries(emp_no, salary) FROM '/path/to/salaries.csv' DELIMITER ',' CSV HEADER;
\copy titles(emp_no, title) FROM '/path/to/titles.csv' DELIMITER ',' CSV HEADER;
\copy dept_emp(emp_no, dept_no) FROM '/path/to/dept_emp.csv' DELIMITER ',' CSV HEADER;
\copy dept_manager(dept_no, emp_no) FROM '/path/to/dept_manager.csv' DELIMITER ',' CSV HEADER;

### Step 3: Data Analysis
Perform SQL queries to answer these questions:

- List the employee number, last name, first name, sex, and salary of each employee.
- List the first name, last name, and hire date for employees hired in 1986.
- List the manager of each department with their details.
- List the department number for each employee with their details.
- List employees named Hercules whose last name begins with B.
- List employees in the Sales department.
- List employees in the Sales and Development departments.
- List the frequency of employee last names.

## Instructions
To run the project, follow these steps:

Clone the repository to your local machine.
Open the terminal and navigate to the project directory.
Start PostgreSQL and create the new database
Connect to the database using psql.
Create the tables using the provided SQL schema.
Import the CSV data using the \copy commands.
Run the provided SQL queries to perform data analysis.

### Credits
Class Notes
Peer Discussions
PostgreSQL videos
XPert Learning Assistant
Stack Overflow
