use employees;

select concat_ws(' ', first_name, last_name) AS 'full_name' from employees where last_name like 'e%' AND last_name like '%e';

select *, datediff(curdate(), hire_date) AS 'days with the company'
from employees
where hire_date like '199%' AND birth_date like '%12-25'
order by birth_date ASC, hire_date DESC;
