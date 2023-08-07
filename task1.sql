select emp_no, from_date
from
t_dept_emp;
select distinct
emp_no, from_date, to_date

from
t_dept_emp;

select
year(d.from_date) as calendar_year,
e.gender,
count(e.emp_no) as num_of_employees
from
t_employees e
join t_dept_emp d on d.emp_no = e.emp_no
group by calendar_year, e.gender
having calendar_year >= 1990;





