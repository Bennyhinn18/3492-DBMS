-- Create table 'employee'
CREATE TABLE employee (
  EMPNO INT(4),
  ENAME VARCHAR(10),
  DESIGNATION VARCHAR(10),
  SALARY FLOAT(8,2)
);

-- View table structure
DESC employee;

-- Create table 'emp1' as a copy of 'employee' with all fields
CREATE TABLE emp1 AS SELECT * FROM employee;

-- Create table 'emp2' with selected fields from 'employee'
CREATE TABLE emp2 AS SELECT EMPNO, ENAME FROM employee;

-- Alter table 'employee' - modify EMPNO and ENAME columns
ALTER TABLE employee
  MODIFY EMPNO INT(7),
  MODIFY ENAME VARCHAR(12);

-- Add a new column 'QUALIFICATION' to 'employee'
ALTER TABLE employee ADD QUALIFICATION VARCHAR2(6);

-- Add multiple columns 'DOB' and 'DOJ' (date) to 'employee'
ALTER TABLE employee ADD (DOB DATE, DOJ DATE);

-- Rename table 'employee' to 'employees'
RENAME TABLE employee TO employees;

-- Rename column 'EMPNO' to 'ENO' in 'employees' table
ALTER TABLE employees RENAME COLUMN EMPNO TO ENO;

-- Drop column 'DOJ' from 'employees' table
ALTER TABLE employees DROP COLUMN DOJ;

-- Truncate table 'employees' (removes all data, keeps structure)
TRUNCATE TABLE employees;

-- Drop table 'employees'
DROP TABLE employees;
CREATE TABLE employees;
-- DML Commands (commented for reference)
-- INSERT: Add new employee records (uncomment and modify values)
INSERT INTO employees VALUES(101, 'NAGARAJAN', 'LECTURER', 15000);
INSERT INTO employees VALUES(102, 'SARAVANAN', 'LECTURER', 15000);
INSERT INTO employees VALUES(103, 'PANNERSELVAM', 'ASST. PROF', 20000);
INSERT INTO employees VALUES(104, 'CHINNI HOD', 'PROF', 45000);
SELECT: Display all employee records (uncomment to view data)
SELECT * FROM employees;
UPDATE: Update salary of employee with ENO 101 (uncomment and modify values)
UPDATE employees SET SALARY = 16000 WHERE ENO = 101;
DELETE: Delete employee record with ENO 103 (uncomment to delete data)
DELETE FROM employees WHERE ENO = 103;
