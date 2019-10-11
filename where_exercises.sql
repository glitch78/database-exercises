USE employees;

#  Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).

select * from employees where first_name in ('Irena', 'Vidya','Maya');

# Find all employees whose last name starts with 'E' — 7,330 rows.

select * from employees where last_name like 'e%';