-- Drop tables if exists
DROP TABLE IF EXISTS departments CASCADE;
DROP TABLE IF EXISTS dept_emp CASCADE;
DROP TABLE IF EXISTS dept_manager CASCADE;
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS salaries CASCADE;
DROP TABLE IF EXISTS titles CASCADE;

-- Create table departments
CREATE TABLE departments(
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR,
	PRIMARY KEY(dept_no)
);

-- Create table employees
CREATE TABLE employees(
	emp_no INT NOT NULL,
	birth_date VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	gender VARCHAR,
	hire_date VARCHAR,
	PRIMARY KEY(emp_no)
);

-- Create table dept_emp
CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	from_date VARCHAR,
	to_date VARCHAR,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

-- Create table dept_manager
CREATE TABLE dept_manager(
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	from_date VARCHAR,
	to_date VARCHAR,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

-- Create table salaries
CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT,
	from_date VARCHAR,
	to_date VARCHAR,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

-- Create table titles
CREATE TABLE titles(
	emp_no INT NOT NULL,
	title VARCHAR,
	from_date VARCHAR,
	to_date VARCHAR,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);













































