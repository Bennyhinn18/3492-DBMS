
### EX: NO: 1 CREATION OF TABLES (DDL COMMANDS)

**AIM:**
To execute and verify the Data Definition Language commands.

**SQL Command Categories**
SQL commands are grouped into four major categories depending on their functionality. They are as follows:
- Data Definition Language (DDL): These SQL commands are used for creating, modifying, and dropping the structure of database objects. The commands are CREATE, ALTER, DROP, RENAME, and TRUNCATE.
- Data Manipulation Language (DML): These SQL commands are used for storing, retrieving, modifying, and deleting data. These commands are SELECT, INSERT, UPDATE, and DELETE.
- Transaction Control Language (TCL): These SQL commands are used for managing changes affecting the data. These commands are COMMIT, ROLLBACK, and SAVEPOINT.
- Data Control Language (DCL): These SQL commands are used for providing security to database objects. These commands are GRANT and REVOKE.

**DDL (DATA DEFINITION LANGUAGE)**
- CREATE
- ALTER
- DROP
- TRUNCATE
- RENAME

**PROCEDURE**
1. Start
2. Create the table with its essential attributes.
3. Execute different Commands and extract information from the table.
4. Stop

**SQL COMMANDS**

1. **COMMAND NAME: CREATE**
   - COMMAND DESCRIPTION: CREATE command is used to create objects in the database.
   - Syntax: 
     ```sql
     CREATE <OBJ.TYPE> <OBJ.NAME> (COLUMN NAME.1<DATATYPE>(SIZE), COLUMN NAME.1 <DATATYPE>(SIZE)……………………………);
     ```
   - Syntax for creating a new table from an existing table with all fields:
     ```sql
     CREATE TABLE <TARGET TABLE NAME> AS SELECT * FROM <SOURCE TABLE NAME>;
     ```

2. **COMMAND NAME: DROP**
   - COMMAND DESCRIPTION: DROP command is used to delete the object from the database.
   - Syntax for dropping a new column:
     ```sql
     ALTER TABLE <TABLE NAME> DROP COLUMN <COLUMN NAME>;
     ```
   - Syntax for dropping a table:
     ```sql
     DROP TABLE <tablename>;
     ```

3. **COMMAND NAME: TRUNCATE**
   - COMMAND DESCRIPTION: TRUNCATE command is used to remove all the records from the table.
   - Syntax: 
     ```sql
     TRUNCATE TABLE <tablename>;
     ```

4. **COMMAND NAME: ALTER**
   - COMMAND DESCRIPTION: ALTER command is used to alter the structure of the database.
   - Syntax for altering table with multiple columns:
     ```sql
     ALTER <TABLE NAME> MODIFY <COLUMN NAME1> <DATATYPE>(SIZE), MODIFY <COLUMN NAME2> <DATATYPE>(SIZE)…….;
     ```
   - Syntax for adding a new column:
     ```sql
     ALTER TABLE <TABLE NAME> ADD (<COLUMN NAME1> <DATATYPE> <SIZE>, <COLUMN NAME2> <DATATYPE> <SIZE>,…………………………);
     ```

5. **COMMAND NAME: RENAME**
   - COMMAND DESCRIPTION: RENAME command is used to rename the objects.
   - Syntax for renaming a table:
     ```sql
     RENAME TABLE <oldname> TO <newname>;
     ```
   - Syntax for renaming a column:
     ```sql
     ALTER TABLE <tablename> RENAME COLUMN <old column name> TO <new column name>;
     ```

**DATABASE COMMANDS**
- Create database: `CREATE DATABASE <databasename>;`
- Show database: `SHOW DATABASES;`
- Use: `USE <databasename>;`
- Show table: `SHOW TABLES;`
- Description of a table: `DESC <tablename>;`

**QUERIES**
1. Write a query to create a table employee with empno, ename, designation, and salary.
   ```sql
   CREATE TABLE EMP (EMPNO INT(4), ENAME VARCHAR(10), DESIGNATION VARCHAR(10), SALARY FLOAT(8,2));
   

2. Write a query to display the column name and datatype of the table employee.
   ```sql
   DESC EMP;
   ```

3. Write a query to create a new table from an existing table with all the fields.
   ```sql
   CREATE TABLE EMP1 AS SELECT * FROM EMP;
   ```

4. Write a query to create a table from an existing table with selected fields.
   ```sql
   CREATE TABLE EMP2 AS SELECT EMPNO, ENAME FROM EMP;
   ```

**ALTER & MODIFICATION ON TABLE**

6. Write a Query to Alter the column EMPNO NUMBER (4) TO EMPNO NUMBER(6).
   ```sql
   ALTER TABLE EMP MODIFY EMPNO NUMBER(6);
   ```

7. Write a Query to Alter the table employee with multiple columns (EMPNO, ENAME).
   ```sql
   ALTER TABLE EMP MODIFY EMPNO INT(7), MODIFY ENAME VARCHAR(12);
   ```

8. Write a query to add a new column into employee.
   ```sql
   ALTER TABLE EMP ADD QUALIFICATION VARCHAR2(6);
   ```

9. Write a query to add multiple columns into employee.
   ```sql
   ALTER TABLE EMP ADD (DOB DATE, DOJ DATE);
   ```

10. Write the query to change the table name emp as employee.
    ```sql
    RENAME TABLE emp TO employee;
    ```

11. Write the query to change the column name empno to eno of the table employee.
    ```sql
    ALTER TABLE employee RENAME COLUMN EMPNO TO ENO;
    ```

**REMOVE / DROP**

12. Write a query to drop a column from an existing table employee.
    ```sql
    ALTER TABLE EMPLOYEE DROP COLUMN DOJ;
    ```

13. Write a query to truncate table employee.
    ```sql
    TRUNCATE TABLE employee;
    ```

14. Write a query to drop table employee.
    ```sql
    DROP TABLE employee;
    ```

### DML COMMANDS

**Data Manipulation Language (DML)**
These SQL commands are used for storing, retrieving, modifying, and deleting data. These commands are SELECT, INSERT, UPDATE, and DELETE.

**DML (DATA MANIPULATION LANGUAGE)**
- SELECT: It is used to retrieve information from the table. It is generally referred to as querying the table.
- INSERT: This is used to add one or more rows to a table.
- DELETE: After inserting rows in a table, we can also delete them if required.
- UPDATE: It is used to alter the column values in a table.

**PROCEDURE:**
1. Start.
2. Create the table with its essential attributes.
3. Insert the record into the table.
4. Update the existing records into the table.
5. Delete the records into the table.

**SQL

 COMMANDS**

1. **COMMAND NAME: INSERT**
   - COMMAND DESCRIPTION: INSERT command is used to Insert objects in the database.

2. **COMMAND NAME: SELECT**
   - COMMAND DESCRIPTION: SELECT command is used to SELECT the object from the database.

3. **COMMAND NAME: UPDATE**
   - COMMAND DESCRIPTION: UPDATE command is used to UPDATE the records from the table.

4. **COMMAND NAME: DELETE**
   - COMMAND DESCRIPTION: DELETE command is used to DELETE the Records from the table.

**INSERT**
- Write a query to insert the records into employee.
  ```sql
  INSERT INTO EMP VALUES(101, 'NAGARAJAN', 'LECTURER', 15000);
  INSERT INTO EMP VALUES(102, 'SARAVANAN', 'LECTURER', 15000);
  INSERT INTO EMP VALUES(103, 'PANNERSELVAM', 'ASST. PROF', 20000);
  INSERT INTO EMP VALUES(104, 'CHINNI HOD', 'PROF', 45000);
  ```

**SELECT**
- Write a query to display the records from employee.
  ```sql
  SELECT * FROM EMP;
  ```

**UPDATE**
- Write a query to update the records from employee.
  ```sql
  UPDATE EMP SET SALARY = 16000 WHERE EMPNO = 101;
  ```

**DELETE**
- Write a query to delete records from employee.
  ```sql
  DELETE FROM EMP WHERE EMPNO = 103;
  ```

**Result:**
Thus the DDL, DML commands are executed in MySQL and verified successfully.
```
This Markdown representation should help organize and present the content clearly. Let me know if you need further assistance!t
