SELECT
d.dept_name,
ee.gender,
dm.emp_no,
dm.from_date,
dm.to_date,
e.calender_year,
CASE
WHEN YEAR(dm.to_date)>= e.calender_year AND YEAR(dm.from_date) <= e.calender_year THEN 1
ELSE 0
END AS active

FROM
(SELECT 
YEAR(hire_date) AS calender_year
from
t_employees
group by calender_year) e
cross join
t_dept_manager dm
join
t_departments d on dm.dept_no = d.dept_no
join
t_employees ee on dm.emp_no = ee.emp_no
order by dm.emp_no, calender_year;
select
*
FROM
(SELECT 
YEAR(hire_date) AS calender_year
from
t_employees
group by calender_year) e
cross join
t_dept_manager dm
join
t_departments d on dm.dept_no = d.dept_no
join
t_employees ee on dm.emp_no = ee.emp_no
order by dm.emp_no, calender_year;

