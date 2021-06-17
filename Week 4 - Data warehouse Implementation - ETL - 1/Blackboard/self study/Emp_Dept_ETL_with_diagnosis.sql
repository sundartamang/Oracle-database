-- ETL 1 - code to ETL from dept, emp, and emps_data (tables representing the original data sources)
-- To support the report - count the number of employeers per year per department
-- first run the SS set up (to create tables time_dim, dept_dim and fact_emp)
-- OR of they are set up DELETE the data from them
-- This code takes data from emp and dept and populates the SS tables.
-- Thsi code is Extract and Load (not full ETL)

-- The pseudo code is:
-- -- Populate time_dim
-- -- Populate dept_dim
-- -- Populate fact_emp

-- use the pseudo code to document the code
-- populate from emp db (emp and dept table)

-- -- Populate time_dim
INSERT INTO time_dim VALUES (1, 1980);
INSERT INTO time_dim VALUES (2, 1981);
INSERT INTO time_dim VALUES (3, 1982);
INSERT INTO time_dim VALUES (4, 1987);

-- better to use a sequence for above and maybe include an 'all'
INSERT INTO time_dim VALUES (5, -1);
-- check
SELECT * FROM time_dim;

-- -- Populate dept_dim
INSERT INTO dept_dim (deptno, dept_desc) SELECT deptno, dname FROM dept;
-- check
SELECT * FROM dept_dim;

-- -- Populate fact_emp
-- -- Populate fact_emp from emp_data
-- -- this requires planning, I have broken it down into steps.
--  Start by simplifying - I start by listing the employees, their departmnet and the year they started.
-- create this by playing around with the SELECT
-- the results of this are useful, so I'm putting them into a temporary table (here tmp_emp1)

DROP table tmp_emp1;
CREATE TABLE tmp_emp1 AS
SELECT empno, deptno, to_number(to_char(emp.hiredate,'YYYY')) as which_year FROM emp;

-- Lets see whats in tmp_emp1
-- this looks like a table we can now count the number of employeers per dpartment per year
SELECT * FROM tmp_emp1;

DROP table tmp_emp2;
CREATE TABLE tmp_emp2 AS
SELECT which_year, deptno, COUNT(*) no_of_emps FROM tmp_emp1 GROUP by which_year, deptno;

-- look at results, not this is pretty much the report we want - no of employees per year per department
SELECT * FROM tmp_emp2;

-- now we would like a report_id, a surrogate PK on the fact table - so use a sequence
DROP sequence fact_seq;
create sequence FACT_SEQ
start with 1
increment by 1
maxvalue 10000
minvalue 1;

INSERT INTO FACT_emp (fact_id, deptno, time_id, no_employees)
SELECT fact_seq.nextval, deptno, time_dim.time_id, no_of_emps FROM tmp_emp2, time_dim  WHERE tmp_emp2.which_year = time_dim.time_period;

-- check the results
SELECT * FROM fact_emp;
