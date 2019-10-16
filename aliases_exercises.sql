USE employees;

# Return 10 employees in a result set named 'full_name' in the format of 'last name, first name' for each employee.


SELECT CONCAT(emp_no, ' - ', last_name, ', ', first_name) AS 'full_name', birth_date AS 'DOB'
FROM employees
LIMIT 10;

DESCRIBE dept_emp;
SHOW CREATE TABLE employees;

# # example table using unique
# CREATE TABLE user(
#     id INT unsigned not null  auto_increment,
#     username varchar(50) not null,
#     email_address varchar(100) not null,
#     unique(email_address)
# );


