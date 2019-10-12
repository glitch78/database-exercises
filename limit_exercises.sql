USE employees;


SELECT DISTINCT last_name from employees order by last_name DESC limit 10;
#Find your query for employees born on Christmas and hired in the 90s from order_by_exercises.sql.
# Update it to find just the first 5 employees. Their names should be:

select * from employees where hire_date like '199%' AND birth_date like '%12-25' limit 5;

select * from employees
where hire_date like '199%' AND birth_date like '%12-25'
order by birth_date ASC, hire_date DESC limit 5 offset 45;

