

CREATE TABLE titles (
emp_no INT NOT NULL,
title VARCHAR(25) NOT NULL,
from_date DATE NOT NULL,
to_date DATE,
FOREIGN KEY (emp_no) REFERENCES employee (emp_no),
PRIMARY KEY (title, emp_no, from_date)

);	
	
emp_no INT NOT NULL,
     birth_date DATE NOT NULL,
     first_name VARCHAR NOT NULL,
     last_name VARCHAR NOT NULL,
     gender VARCHAR NOT NULL,
     hire_date DATE NOT NULL,
     PRIMARY KEY (emp_no)
);





-- Creating tables for PH-EmployeeDB



--1) Retrieve the emp_no, 
--first_name, and last_name columns from the Employees table.

SELECT first_name, last_name
FROM employees


--2) Retrieve the title, from_date, and to_date columns from the Titles table.
SELECT from_date BETWEEN to_date
SELECT title
FROM titles

--3 FIXed Create a new table using the INTO clause
SELECT employee.emp_no, first_name, last_name, title, from_date, to_date
INTO retirement_titles
FROM employee
INNER JOIN titles
ON employee.emp_no=titles.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31');




--4 Join both tables on the primary key
SELECT retirement_info.emp_no,
retirement_info.first_name,
retirement_info.last_name,
dept_emp.to_date
FROM retirement_info
LEFT JOIN dept_emp
ON retirement_info.emp_no = dept_emp.emp_no;




 --5 FIXED Filter the data on the birth_date column to retrieve the employees 
 --who were born between 1952 and 1955. Then, order by the employee number.
SELECT first_name, last_name, emp_no
FROM employee
WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31'
ORDER BY emp_no;



--6 DONE Export the Retirement Titles table from the previous step as 
--retirement_titles.csv and save it to your Data folder in the 
--Pewlett-Hackard-Analysis folder.

--7Before you export your table, confirm that it looks like this image:

--8Copy the query from the Employee_Challenge_starter_code.sql 
--and add it to your Employee_Database_challenge.sql file.

9-Retrieve the employee number, first and last name, and title 
--columns from the Retirement Titles table.
--These columns will be in the new table that will hold 
--the most recent title of each employee.

SELECT emp_no, first_name, last_name, title
INTO retirement_info,
FROM retirement_titles

--worked
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;


10-- 

11--
==A query is written and executed to create a Unique Titles 
==table that contains the employee 
==number, first and last name, and most recent title. (15 pt)

CREATE TABLE unique_titles (
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
 	emp_no INT NOT NULL,
	??most recent title
	
--12--Sort the Unique Titles table in ascending order by the employee number and 
	--descending order by the last date (i.e. to_date) of the most recent title.
	
SELECT * FROM employees
ORDER BY employee_no ASC;
???DESC most recent title date
	
--13
--14
	
--??15Write another query in the Employee_Database_challenge.sql file 
--to retrieve the number 
--of employees by their most recent job title who are about to retire.
	
SELECT COUNT (title), title 
INTO retiring_titles
FROM unique_titles
GROUP BY title 
ORDER BY count DESC;




	
--16First, retrieve the number of titles from the Unique Titles table
	
--17 Then, create a Retiring Titles table to hold the required information.
	
--18 Group the table by title, then sort the count column in descending order.
	
	
	
    PRIMARY KEY (emp_no)
    UNIQUE (retirement_titles)	




FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');


);
CREATE TABLE dept_manager (
dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);








-- Number of employees retiring


SELECT first_name, last_name
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');


-- Check the table
SELECT * FROM retirement_info;



-- Number of employees retiring
SELECT COUNT(first_name)
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');


-- Joining departments and dept_manager tables


-- Joining retirement_info and dept_emp tables
SELECT retirement_info.emp_no,
    retirement_info.first_name,
retirement_info.last_name,
    dept_emp.to_date
	




-- Joining departments and dept_manager tables
SELECT departments.dept_name,
     dept_manager.emp_no,
     dept_manager.from_date,
     dept_manager.to_date
FROM departments
INNER JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no;


-- Employee count by department number
SELECT COUNT(ce.emp_no), de.dept_no
FROM current_emp as ce
LEFT JOIN dept_emp as de
ON ce.emp_no = de.emp_no
GROUP BY de.dept_no;

-- Employee count by department number
SELECT COUNT(ce.emp_no), de.dept_no
FROM current_emp as ce
LEFT JOIN dept_emp as de
ON ce.emp_no = de.emp_no




	










