-- create table schema for titles
CREATE TABLE titles (
    title_id VARCHAR(255) NOT NULL,
    title VARCHAR(255),
    PRIMARY KEY (title_id)
);


-- create a table schema for employees
CREATE TABLE employees (
    emp_no INT NOT NULL,
    emp_title_id VARCHAR(255) NOT NULL,
    birth_date DATE,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    sex VARCHAR(255),
    hire_date DATE,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);


-- create table schema for salaries
CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


-- create table schema for departments
CREATE TABLE departments (
    dept_no VARCHAR(255) NOT NULL,
    dept_name VARCHAR(255),
    PRIMARY KEY (dept_no)
);


-- create table schema for dept_emp
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(255) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);


-- create table schema for dept_manager
CREATE TABLE dept_manager (
    dept_no VARCHAR(255) NOT NULL,
    emp_no INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    PRIMARY KEY (dept_no, emp_no)
);