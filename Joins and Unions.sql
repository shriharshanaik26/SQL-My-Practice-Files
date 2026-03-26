-- Joins

-- This query retrieves all columns from both the employee_demographics and employee_salary tables
-- where the employee_id matches in both tables.

-- Inner Join
Select * from employee_demographics
inner join employee_salary
on employee_demographics.employee_id = employee_salary.employee_id

-- Aliasing during a join
Select * from employee_demographics as dem
inner join employee_salary as sal
on dem.employee_id = sal.employee_id

Select dem.employee_id, dem.first_name, dem.last_name, sal.salary
from employee_demographics as dem
inner join employee_salary as sal
on dem.employee_id = sal.employee_id;

-- Left outer join
Select * from employee_demographics as dem
left outer join employee_salary as sal
on dem.employee_id = sal.employee_id;

-- Right outer join
Select * from employee_demographics as dem
right outer join employee_salary as sal
on dem.employee_id = sal.employee_id;
-- Ron Swanson is in the employee_salary table but not in the employee_demographics table, so his information will be included in the result of the right outer join but not in the left outer join.

-- Self Join
Select sal1.employee_id, sal1.first_name, sal1.last_name, sal2.employee_id, sal2.first_name, sal2.last_name
from employee_salary as sal1
join employee_salary as sal2
on sal1.employee_id = sal2.employee_id + 1

-- Left anti join
Select * from employee_salary as sal
left join employee_demographics as dem
on sal.employee_id = dem.employee_id
where dem.employee_id is null;


-- Unions
-- The UNION operator is used to combine the result sets of two or more SELECT statements.

Select first_name, last_name from employee_demographics
union
Select first_name, last_name from employee_salary;

-- Union all
-- The UNION ALL operator is used to combine the result sets of two or more SELECT statements, but it does not remove duplicate rows.
Select first_name, last_name from employee_demographics
union all
Select first_name, last_name from employee_salary;

-- Downsizing the result set with a union
Select first_name, last_name, 'Old Man' from employee_demographics
where age > 40 and gender = 'Male'
union
Select first_name, last_name, 'Old Lady' from employee_demographics
where age > 40 and gender = 'Female'
union
Select first_name, last_name, 'High Earner' from employee_salary
where salary > 70000
order by first_name, last_name;

