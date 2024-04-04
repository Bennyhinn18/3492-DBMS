### EX: NO: 2 CREATION OF TABLES WITH CONSTRAINTS

**AIM:**
To execute and verify the SQL commands for adding constraints.

**MySQL Constraints**
- SQL constraints are used to specify rules for the data in a table.
- Constraints are used to limit the type of data that can go into a table, ensuring accuracy and reliability.
- Constraints can be column level or table level.

**The following constraints are commonly used in SQL:**
- NOT NULL: Ensures that a column cannot have a NULL value.
- UNIQUE: Ensures that all values in a column are different.
- PRIMARY KEY: A combination of NOT NULL and UNIQUE, uniquely identifies each row in a table.
- FOREIGN KEY: Prevents actions that would destroy links between tables.
- CHECK: Ensures that the values in a column satisfy a specific condition.
- DEFAULT: Sets a default value for a column if no value is specified.

**PROCEDURE:**
1. Start.
2. Create the table with its essential attributes.
3. Add the constraint as a column level and table level.
4. Check all the constraints with specified conditions.

**Create table1:**
```sql
CREATE TABLE emp (
  empno INT(3),
  empname VARCHAR(20),
  age INT(3),
  deptno INT(3),
  salary FLOAT(7,2),
  phno INT(5)
);
```

**QUERIES:**
1. Create the department table with the primary key as a table level constraint.
```sql
CREATE TABLE dept(
  deptno INT(3) PRIMARY KEY,
  deptname VARCHAR(10)
);
```

2. Alter the employee table with the primary key as a column level constraint.
```sql
ALTER TABLE emp MODIFY empno INT PRIMARY KEY;
```

3. Add employee name as a not null constraint using alter command.
```sql
ALTER TABLE emp MODIFY empname VARCHAR(10) NOT NULL;
```

4. Add Check Constraint For The Column Age.
```sql
ALTER TABLE emp MODIFY age INT CHECK(age >= 18);
```

5. Set salary column as a default constraint.
```sql
ALTER TABLE emp MODIFY salary FLOAT DEFAULT 1000;
```

6. Create a unique constraint for the column phone number and check the constraint.
```sql
ALTER TABLE emp MODIFY phno INT UNIQUE;
```

7. Add a foreign key constraint.
```sql
ALTER TABLE emp ADD deptno INT(3);
ALTER TABLE emp ADD FOREIGN KEY(deptno) REFERENCES dept(deptno);
```

**Inserting Records and Handling Constraints:**
```sql
INSERT INTO emp VALUES(101,'angel',20,20000,904486322,1);
INSERT INTO dept VALUES(1,'PROJECT');
INSERT INTO dept VALUES(2,'DESIGN');
INSERT INTO dept VALUES(3,'HR');
INSERT INTO dept VALUES(4,'SOFTWARE');
```

**Result:**
Thus the MySQL statements for executing constraints are executed successfully.
