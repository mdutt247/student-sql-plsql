--Create table Dept
CREATE TABLE dept (
    dept_no     NUMBER(3) PRIMARY KEY,
    dept_name   VARCHAR2(20) NOT NULL,
    dept_loc    VARCHAR2(50) NOT NULL
);

--Create table Emp

CREATE TABLE emp (
    emp_id           NUMBER(6) PRIMARY KEY,
    emp_name         VARCHAR2(50) NOT NULL,
    emp_city         VARCHAR2(50) NOT NULL,
    emp_job          VARCHAR2(20) NOT NULL,
    emp_salary       NUMBER(10,2) NOT NULL,
    emp_join_date    DATE NOT NULL,
    emp_commission   NUMBER(8,2) DEFAULT 0,
    emp_dept_no      NUMBER(3) NOT NULL
        REFERENCES dept ( dept_no )
);

--Insert data in Dept table

INSERT INTO "MADHAV"."DEPT" (
    dept_no,
    dept_name,
    dept_loc
) VALUES (
    '10',
    'IT',
    'Mumbai'
);

INSERT INTO "MADHAV"."DEPT" (
    dept_no,
    dept_name,
    dept_loc
) VALUES (
    '15',
    'HR',
    'Surat'
);

INSERT INTO "MADHAV"."DEPT" (
    dept_no,
    dept_name,
    dept_loc
) VALUES (
    '20',
    'Marketing',
    'Mumbai'
);

INSERT INTO "MADHAV"."DEPT" (
    dept_no,
    dept_name,
    dept_loc
) VALUES (
    '25',
    'Sales',
    'Surat'
);

INSERT INTO "MADHAV"."DEPT" (
    dept_no,
    dept_name,
    dept_loc
) VALUES (
    '30',
    'Finance',
    'Mumbai'
);

--Insert into Emp table

INSERT INTO "MADHAV"."EMP" (
    emp_id,
    emp_name,
    emp_city,
    emp_job,
    emp_salary,
    emp_join_date,
    emp_commission,
    emp_dept_no
) VALUES (
    '1',
    'Madhav',
    'Ballia',
    'Manager',
    '1234456.25',
    TO_DATE('2016-02-01 09:59:19','YYYY-MM-DD HH24:MI:SS'),
    '12345',
    '10'
);

INSERT INTO "MADHAV"."EMP" (
    emp_id,
    emp_name,
    emp_city,
    emp_job,
    emp_salary,
    emp_join_date,
    emp_commission,
    emp_dept_no
) VALUES (
    '2',
    'Sdhav',
    'Mumbai',
    'Manager',
    '123.23',
    TO_DATE('2016-05-26 10:00:01','YYYY-MM-DD HH24:MI:SS'),
    '123456',
    '15'
);

INSERT INTO "MADHAV"."EMP" (
    emp_id,
    emp_name,
    emp_city,
    emp_job,
    emp_salary,
    emp_join_date,
    emp_commission,
    emp_dept_no
) VALUES (
    '3',
    'Raghav',
    'Surat',
    'GM',
    '12345678.99',
    TO_DATE('2014-03-03 10:01:16','YYYY-MM-DD HH24:MI:SS'),
    '1',
    '10'
);

INSERT INTO "MADHAV"."EMP" (
    emp_id,
    emp_name,
    emp_city,
    emp_job,
    emp_salary,
    emp_join_date,
    emp_dept_no
) VALUES (
    '4',
    'Ibsar',
    'Mumbai',
    'Junior Manager',
    '123456',
    TO_DATE('2016-02-03 10:27:19','YYYY-MM-DD HH24:MI:SS'),
    '10'
);

INSERT INTO "MADHAV"."EMP" (
    emp_id,
    emp_name,
    emp_city,
    emp_job,
    emp_salary,
    emp_join_date,
    emp_commission,
    emp_dept_no
) VALUES (
    '5',
    'Gangadhar',
    'Mumbai',
    'Manager',
    '1234564',
    TO_DATE('2015-06-08 10:28:22','YYYY-MM-DD HH24:MI:SS'),
    '2',
    '15'
);

--Q1. Name of employee who is working as Manager and Salary > 8000

SELECT
    emp_name
FROM
    emp
WHERE
    emp_salary > 8000
    AND   emp_job LIKE 'Manager';
    
--Q2. Display in which month Madhav joined

SELECT
    TO_CHAR(emp_join_date,'Month')
FROM
    emp
WHERE
    emp_name LIKE 'Madhav';
    
--Q3. Display jobs of employee (eliminate duplicate)

SELECT UNIQUE
    ( emp_job )
FROM
    emp;

--Q4. Display name of employee getting lower salary

SELECT
    MIN(emp_salary)
FROM
    emp;

--Q5. Display no of employees working in department no 15

SELECT
    COUNT(emp_dept_no) AS noofempindeptno15
FROM
    emp
WHERE
    emp_dept_no = 15;

--Q6. List the details of employee joined in year 2016

SELECT
    *
FROM
    emp
WHERE
    TO_CHAR(emp_join_date,'YYYY') LIKE 2016;