use employees;


SELECT DISTINCT title
from titles;

#Find your query for employees whose last names start and end with 'E'.
# Update the query to find just the unique last names that start
# and end with 'E' using GROUP BY.

SELECT last_name
from employees
where last_name like 'e%'
  And last_name like '%e'
group by last_name;

#update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows.
SELECT last_name, first_name
from employees
where last_name like 'e%'
  And last_name like '%e'
group by last_name, first_name;


#Find the unique last names with a 'q' but not 'qu'. Your results should be:

SELECT last_name
from employees
where last_name like '%q%'
  and last_name not like '%qu%'
GROUP BY last_name;
;

#Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.

SELECT COUNT(*), last_name
FROM employees
where last_name like '%q%'
  and last_name not like '%qu%'
GROUP BY last_name
ORDER BY last_name;

#Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*)
# and GROUP BY to find the number of employees for each gender with those names

SELECT COUNT(*), gender
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
group by gender;