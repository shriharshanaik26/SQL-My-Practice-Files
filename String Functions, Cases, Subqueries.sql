-- String functions
-- String functions are used to manipulate and analyze string data in SQL.
-- They can be used to perform various operations such as concatenation, trimming, and calculating the length of a string.
-- Use case: Phone numbers and other sort od numerical data

Select length('Bwahahahaha') as LengthOfString;

Select first_name, length(first_name) as LengthOfFirstName
from employee_demographics
ORDER BY length(first_name);

-- Upper and Lower case
Select first_name, upper(first_name) as UpperCaseFirstName, lower(first_name) as LowerCaseFirstName
from employee_demographics;


-- Concatenation
Select first_name, last_name, concat(first_name, ' ', last_name) as FullName
from employee_demographics;

-- Trimming
Select trim('   Hello World!   ') as TrimmedString;
Select ltrim('   Hello World!   ') as LeftTrimmedString;
Select rtrim('   Hello World!   ') as RightTrimmedString;

-- Substring, Left and Right
Select first_name, upper(substring(first_name, 1, 3)) as FirstThreeLetters,
upper(left(first_name, 4)) as FirstFourLetters,
upper(right(first_name, 4)) as LastFourLetters
from employee_demographics;

-- Extracting the year from a date by converting it to a string first using substring and to_char
Select first_name, last_name, substring(to_char(birth_date, 'YYYY-MM-DD'), 1, 4) as BirthYear
FROM employee_demographics;

-- We can also use the EXTRACT function to get the year directly from the date
Select first_name, last_name, extract(year from birth_date) as BirthYear
FROM employee_demographics;

-- Replacing characters in a string
Select first_name, replace(first_name, 'a', 'X') as ReplacedFirstName
from employee_demographics;

-- Locating the position of a substring within a string
Select first_name, position('a' in first_name) as PositionOfA
from employee_demographics;


-- Case Statements
-- Case statements are used to perform conditional logic in SQL queries.

-- Categorizing employees based on age using case statements
Select first_name, last_name, age,
Case
    when age < 30 then 'Young'
    when age >= 30 and age < 50 then 'Old'
    else 'At Risk'
end as AgeGroup
from employee_demographics;

-- Salary increase based on current salary using case statements
Select first_name, last_name, salary,
case 
    when salary < 50000 then salary * 1.05
    when salary >= 50000 then salary * 1.07
end as New_Salary,
case 
    when dept_id = 6 then salary * 0.1
end as Bonus
from employee_salary;

-- Subqueries
-- Subqueries are nested queries that are used to perform operations that require multiple steps.

Select first_name, last_name, dept_id from employee_salary;

-- Get the employee_id of employees in department 1 and then use that to get their demographics
Select * from employee_demographics
where employee_id in (select employee_id from employee_salary where dept_id = 1);

Select first_name, last_name, salary, 
(Select round(avg(salary)) from employee_salary) as AverageSalary
from employee_salary;


-- Get the average age of employees in each department and then get the overall average age
Select round(AVG(max_age), 2) as AverageAge from 
(Select gender, avg(age) as average_age, max(age) as max_age, min(age) as min_age
from employee_demographics
GROUP BY gender) as Aggregated_table;