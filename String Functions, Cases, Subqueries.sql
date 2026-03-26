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

