#QUESTION 1 
create table employee (
	emp_no int,
 	first_name VARCHAR (5000000) NOT NULL,
	last_name VARCHAR (500000) NOT NULL,
	gender VARCHAR (500000) NOT NULL,
	hire_date DATE
);

SELECT* FROM employee

CREATE TABLE salaries (
	emp_no int,
	salary int,
	from_date DATE,
	to_date date
	);
	
SELECT* FROM salaries

Alter table employee
ADD PRIMARY KEY (emp_no)

Alter table salaries
ADD PRIMARY KEY (emp_no)

SELECT employee.emp_no, employee.first_name, employee.last_name, employee.gender, salaries.salary
FROM employee
INNER JOIN salaries on
employee.emp_no=salaries.emp_no

#2
SELECT first_name, last_name, hire_date
FROM employees
WHERE (hire_date >= '1986-01-01' AND hire_date <= '1986-12-31');


#3
CREATE TABLE Departments (
	dept_no int,
	dept_name VARCHAR (5000000) NOT NULL,
);

#4
CREATE TABLE Departments (
	dept_no VARCHAR (250) NOT NULL,
	dept_name VARCHAR (5000000) NOT NULL);
	
ALTER TABLE Departments
ADD PRIMARY KEY (dept_no)
ALTER TABLE employee
ADD FOREIGN KEY (dept_no)

#5
SELECT first_name, last_name
FROM employee
WHERE first_name = 'hurcules', last_name = 'B'

#6
CREATE TABLE titles(
	emp_no int,
	title VARCHAR (5000000) NOT NULL,
	from_date DATE,
	to_date date
);

SELECT employee.emp_no, employee.first_name, employee.last_name, titles.title
FROM employee
INNER JOIN titles on
employee.emp_no=titles.emp_no

Select emp_no, first_name, last_name,titles
from employee
WHERE title = 'sales'

#7
SELECT e.emp_no, last_name, first_name, all_employees.dept_name
FROM employees as e
JOIN all_employees ON e.emp_no = all_employees.emp_no
WHERE all_employees.dept_name in ('Sales', 'Development')

#8
SELECT last_name, count(last_name)
FROM employees
GROUP BY last_name 
ORDER BY count(last_name) desc;