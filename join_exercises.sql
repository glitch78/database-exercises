use employees;

select * from employees;

select deptName.dept_name as 'Department Name', concat(employee.first_name, ' ', employee.last_name) as 'Department Manager'
from dept_manager
         join departments deptName on dept_manager.dept_no = deptName.dept_no
         join employees employee on dept_manager.emp_no = employee.emp_no
where to_date > curdate()
order by deptName.dept_name;