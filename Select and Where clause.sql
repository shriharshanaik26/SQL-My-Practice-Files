Hello World!

--  Select statement

Select 'Hello World!';

-- Outputs everything from the employee_demographics table
Select * from employee_demographics;

-- Outputs everything from the employee_salary table
Select * from employee_salary;

-- Outputs only the first_name, last_name, and birth_date columns from the employee_demographics table
Select first_name, last_name, birth_date from employee_demographics;

-- Outputs the first_name, last_name, birth_date, age, and age in 10 years (age + 10) from the employee_demographics table
Select first_name, last_name, birth_date, age, age +10 as age_in_10_years from employee_demographics;

-- SQL follows PEMDAS (Parentheses, Exponents, Multiplication and Division, Addition and Subtraction)
Select first_name, last_name, birth_date, age, (age + 10) * 10 from employee_demographics;

-- Distinct keyword outputs only unique values
Select distinct first_name, gender from employee_demographics;

-- Where clause

-- Outputs all employees with the first name 'Andy' from the employee_demographics table
Select * from employee_demographics
Where first_name = 'Andy';

-- Outputs all employees with salary greater than 50000 from the employee_salary table
Select * from employee_salary
Where salary > 50000;

-- Outputs all female employees
Select * from employee_demographics
Where gender = 'Female';

-- Outputs male employees born after January 1, 1985 
Select * from employee_demographics
Where birth_date > '1985-01-01' and gender = 'Male';

-- Outputs male employees or employees born after January 1, 1985 
Select * from employee_demographics
Where birth_date > '1985-01-01' or gender = 'Male';

-- Outputs employees with the first name 'Leslie' and age 44, or employees older than 50
Select * from employee_demographics
Where (first_name  = 'Leslie' and age = 44) or age > 50;

-- Like operator

-- Outputs employees with the first name starting with 'jer'
Select * from employee_demographics
Where first_name like 'Jer%';
-- % is a wildcard character that matches any sequence of characters. So 'Jer%' matches any first name that starts with 'Jer', such as 'Jeremy', 'Jerome', etc.

-- The underscore (_) is a wildcard character that matches exactly one character. So 'A__' matches any first name that starts with 'A' and has exactly three characters, such as 'Amy', 'Ann', etc.
Select * from employee_demographics
Where first_name like 'A__';

-- Outputs employees with the first name starting with 'A' and having at least 4 characters
Select * from employee_demographics
Where first_name like 'A__%';