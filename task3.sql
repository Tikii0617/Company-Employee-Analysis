SELECT
e.gender, d.dept_name, round(avg(s.salary),2) as salary, year(s.from_date) as calendar_year
from
t_salaries s
join
t_employees e on e.emp_no = s.emp_no
JOIN
t_dept_emp de on de.emp_no = e.emp_no
JOIN
t_departments d on d.dept_no = de.dept_no 

GROUP BY d.dept_no, e.gender, calendar_year
HAVING calendar_year <= 2002
order by d.dept_no;