-- drop table if it exists:
-- drop table if exists departments;

-- create new table:
create table departments(
dept_id SERIAL PRIMARY KEY,
dept_no varchar(50),
dept_name varchar(50)
);

select * from departments

-- drop table if it exists:
-- drop table if exists dept_emp;

-- create new table:
create table dept_emp(
dept_id SERIAL PRIMARY KEY,
emp_no integer,
dept_no varchar(50)
);

select * from dept_emp

-- drop table if it exists:
-- drop table if exists dept_emp;

-- create new table:
create table dept_emp(
dept_id SERIAL PRIMARY KEY,
emp_no integer,
dept_no varchar(50)
);

select * from dept_emp

-- drop table if it exists:
-- drop table if exists dept_manager;

-- create new table:
create table dept_manager(
dept_id SERIAL PRIMARY KEY,
dept_no varchar(50),
emp_no integer
);

select * from dept_manager


-- drop table if it exists:
drop table if exists employees;

-- create new table:
create table employees(
dept_id SERIAL PRIMARY KEY,
emp_no integer,
emp_title_id varchar(50),
birth_date date,
first_name varchar(50),
last_name varchar(50),
sex varchar(10),
hire_date date
);

select * from employees

-- drop table if it exists:
drop table if exists salaries;

-- create new table:
create table salaries(
dept_id SERIAL PRIMARY KEY,
emp_no integer,
salary integer
);
select * from salaries

-- drop table if it exists:
drop table if exists titles;

-- create new table:
create table titles(
dept_id SERIAL PRIMARY KEY,
title_id varchar(50),
title varchar(50)
);
select * from titles