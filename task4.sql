DROP procedure IF exists FILTER_SALARY;

DELIMITER $$

CREATE procedure FILTER_SALARY(IN p_min_salary float, in p_max_salary float)
begin



select

e.gender, d.dept_name, avg(s.salary) as salary
from
t_salaries s
join
t_employees e on e.emp_no = s.emp_no
JOIN
t_dept_emp de on de.emp_no = e.emp_no
JOIN
t_departments d on d.dept_no = de.dept_no 
where s.salary between p_min_salary and p_max_salary
GROUP BY d.dept_no, e.gender;

end  $$

DELIMITER ;
call FILTER_SALARY(50000,90000);
