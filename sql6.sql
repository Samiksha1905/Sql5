use Assignment

Create table Employ
(Id int,Name Varchar(255),age int,gender varchar(255),salary int,department varchar(255),City varchar(255))

select * from Employ

insert into Employ values(1, 'Amit', 23, 'Male', 25000, 'IT', 'Delhi'),
(2, 'Riya', 30, 'Female', 30000, 'HR', 'Mumbai'),
(3,'Shreya', 40, 'Female', 25000, 'Accounts', 'Pune'),
(4, 'Raj', 33, 'Male', 45000, 'Marketing', 'Surat'),
(5, 'Tanuj', 30, 'Male', 36000, 'IT', 'Chandigarh'),
(6, 'Ashish', 29, 'Male', 45000, 'HR', 'Chennai'),
(7, 'Upasana', 56, 'Female', 90000, 'IT', 'Delhi');
select * from Employ

CREATE VIEW HighEarners AS
SELECT e.name AS employee_name,
       d.name AS department_name,
       e.salary
FROM Employ e
JOIN Department d ON e.department = d.name
WHERE e.salary > (
    SELECT AVG(salary) FROM Employ WHERE department = e.department
);

CREATE VIEW PublicEmploy AS
SELECT name, department
FROM Employ;

