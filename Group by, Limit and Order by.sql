-- Group by statement is used to group rows that have the same values in specified columns into summary rows, like "find the number of customers in each country".
-- The GROUP BY statement is often used with aggregate functions (COUNT, MAX, MIN, SUM, AVG) to perform operations on each group of data.

-- Example of GROUP BY statement:

Select gender, ROUND(AVG(age)::numeric, 2) from employee_demographics
Group by gender;

Select * from employee_salary;

-- Example of GROUP BY statement with multiple aggregate functions:
Select gender, AVG(age), MAX(age), MIN(age), count(age) from employee_demographics
Group by gender;

-- Order By

-- Order by statement is used to sort the result set in either ascending or descending order.
-- By default, it sorts in ascending order.
-- You can specify the column name and the sorting order (ASC for ascending, DESC for descending).
Select * from employee_demographics
order by gender, age desc;

-- We can also use the column index in the ORDER BY clause instead of the column name.
-- The index is based on the position of the column in the SELECT statement, starting from 1.
-- In this case, the 5th column is age and the 4th column is gender
Select * from employee_demographics
order by 5, 4 desc;
-- NOTE: This is not recommended as it can lead to confusion and errors if the order of columns in the SELECT statement changes.
-- It is better to use column names for clarity and maintainability.

-- Having clause

-- The HAVING clause is used to filter groups based on a specified condition.
-- It is often used in conjunction with the GROUP BY clause to filter the results of aggregate functions.
Select * from employee_demographics
where AVG(age) >40
Group by gender;
-- The above query will result in an error because the WHERE clause cannot be used with aggregate functions. 
-- Instead, we should use the HAVING clause to filter the groups after they have been formed by the GROUP BY clause.
-- Hence we use the HAVING clause.

-- Outputs the average age above 40
Select gender, avg(age) from employee_demographics
GROUP BY gender
HAVING avg(age) > 40;
-- Only male have an average age above 40.

-- Output the average salary of managers above 75000
Select occupation, avg(salary)
from employee_salary
where occupation like '%Manager%'
GROUP BY occupation
having AVG(salary) > 75000

-- Limit and Alias

-- Limit
-- The LIMIT clause is used to specify the number of records to return from a query.
-- It is often used in conjunction with an ORDER BY clause to return a specific subset of records.

Select * from employee_demographics
limit 5;

-- In PostgreSQL, you can also use the OFFSET clause to specify the number of records to skip before starting to return records.
-- For example, to skip the first 5 records and return the next 5 records:
Select * from employee_demographics
order by age desc
limit 5 offset 5;