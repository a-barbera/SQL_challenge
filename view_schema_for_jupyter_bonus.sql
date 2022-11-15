
create view avg_salaries as
select t.title, s.salary
from employees as e
inner join titles as t
on t.title_id = e.emp_title_id
inner join salaries as s
on s.emp_no = e.emp_no;

select * from avg_salaries