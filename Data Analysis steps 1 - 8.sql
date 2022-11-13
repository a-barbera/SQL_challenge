-- select * from employees;
-- select * from salaries;

-- select * 
-- from employees
-- inner join salaries on 
-- employees.emp_no = salaries.emp_no;
---------------------------------------------------------------------------
-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
select employees.emp_no, employees.last_name, employees.first_name,
employees.sex, salaries.salary
from employees
inner join salaries on 
employees.emp_no = salaries.emp_no;
---------------------------------------------------------------------------
-- 2. List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where DATE_PART('year',hire_date)= '1986';
---------------------------------------------------------------------------
-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
select dept_manager.dept_no, dept_manager.emp_no, departments.dept_name, employees.last_name, employees.first_name
from dept_manager
inner join employees on
dept_manager.emp_no = employees.emp_no
inner join departments on
dept_manager.dept_no = departments.dept_no;
---------------------------------------------------------------------------
-- 4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
inner join employees on
dept_emp.emp_no = employees.emp_no
inner join departments on
dept_emp.dept_no = departments.dept_no;
---------------------------------------------------------------------------
-- 5.List first name, last name, and sex for employees whose 
-- first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees
where first_name = 'Hercules'
and last_name like 'B%';
---------------------------------------------------------------------------
-- 6. List each employee in the Sales department (d007), 
-- including their employee number, last name, and first name.
select employees.emp_no, employees.last_name, employees.first_name
from employees
inner join dept_emp on 
employees.emp_no = dept_emp.emp_no
where dept_emp.dept_no = 'd007';
---------------------------------------------------------------------------
--7.List each employee in the Sales and Development departments,
-- including their employee number, last name, first name, and department name.
-- select * from departments (d007 = Sales, d005 = Dev)
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
inner join dept_emp on
employees.emp_no = dept_emp.emp_no
inner join departments on
dept_emp.dept_no = departments.dept_no
where departments.dept_no in('d007', 'd005');
---------------------------------------------------------------------------
-- 8. List the frequency counts, in descending order, of all the employee last names 
-- (that is, how many employees share each last name).
-- select last_name from employees
-- start to count rows, good practice to count using a key value column
select count(emp_no) as "name counts", last_name
from employees
group by last_name
order by count(last_name) desc;