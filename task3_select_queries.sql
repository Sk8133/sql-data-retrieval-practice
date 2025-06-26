-- Create a sample table: Employees
CREATE TABLE Employees (
    id INTEGER PRIMARY KEY,
    name TEXT,
    department TEXT,
    salary INTEGER,
    joining_date TEXT
);

-- Insert sample data
INSERT INTO Employees (id, name, department, salary, joining_date) VALUES
(1, 'Aman Khan', 'HR', 45000, '2021-03-12'),
(2, 'Priya Sharma', 'Finance', 60000, '2022-07-19'),
(3, 'Ravi Verma', 'Engineering', 75000, '2020-01-03'),
(4, 'Neha Singh', 'Engineering', 72000, '2019-11-25'),
(5, 'John Doe', 'HR', 47000, '2023-02-10');

-- Task Queries:

-- 1. Select all data from Employees
SELECT * FROM Employees;

-- 2. Select specific columns
SELECT name, salary FROM Employees;

-- 3. Use WHERE to filter: HR department
SELECT * FROM Employees WHERE department = 'HR';

-- 4. Use AND to combine conditions
SELECT * FROM Employees WHERE department = 'Engineering' AND salary > 73000;

-- 5. Use OR to combine filters
SELECT * FROM Employees WHERE department = 'Finance' OR salary > 70000;

-- 6. Use LIKE to find names starting with 'P'
SELECT * FROM Employees WHERE name LIKE 'P%';

-- 7. Use BETWEEN to find salaries in a range
SELECT * FROM Employees WHERE salary BETWEEN 45000 AND 70000;

-- 8. Use ORDER BY to sort by name ascending
SELECT * FROM Employees ORDER BY name;

-- 9. Use ORDER BY to sort by salary descending
SELECT * FROM Employees ORDER BY salary DESC;

-- 10. Use LIMIT to show top 3 highest earners
SELECT * FROM Employees ORDER BY salary DESC LIMIT 3;

-- 11. Use aliasing
SELECT name AS Employee_Name, department AS Dept FROM Employees;

-- 12. Use DISTINCT to find unique departments
SELECT DISTINCT department FROM Employees;
