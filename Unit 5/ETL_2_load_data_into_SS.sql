-- ETL 2 - code to ETL from dept, emp1, emp2 and bad_emp_data (tables representing the original data sources)
-- into the star schema tables time_dim, dept_dim and fact_emp

-- The pseudo code is:
-- -- Populate time_dim
-- -- Populate dept_dim
-- -- Populate fact_emp

-- use the pseudo code to document the code

-- -- Populate time_dim
INSERT INTO time_dim VALUES (1, 1980);
INSERT INTO time_dim VALUES (2, 1981);
INSERT INTO time_dim VALUES (3, 1980);
INSERT INTO time_dim VALUES (4, 1987);

-- better to use a sequence for above and maybe include an 'all'
INSERT INTO time_dim VALUES (3, all);

-- -- Populate dept_dim
INSERT INTO dept_dim (deptno, dept_desc) SELECT deptno, dname FROM dept;

-- -- Populate fact_emp
-- -- Populate fact_emp from emp1

DROP table tmp_emp1;
CREATE TABLE tmp_emp1 AS
SELECT empno, deptno, to_number(to_char(emp1.hiredate,'YYYY')) as which_year FROM emp1;

DROP table tmp_emp2;
CREATE TABLE tmp_emp2 AS
SELECT which_year, deptno, COUNT(*) no_of_emps FROM tmp_emp1 GROUP by which_year, deptno;

DROP sequence fact_seq;
create sequence FACT_SEQ
start with 1
increment by 1
maxvalue 10000
minvalue 1;

INSERT INTO FACT_emp (fact_id, deptno, time_id, no_employees)
SELECT fact_seq.nextval, deptno, time_dim.time_id, no_of_emps FROM tmp_emp2, time_dim  WHERE tmp_emp2.which_year = time_dim.time_period;


-- -- Populate fact_emp
-- -- Populate fact_emp from emp2 (repeat code as before from emp2)
DROP table tmp_emp3;
CREATE TABLE tmp_emp3 AS
SELECT empno, deptno, to_number(to_char(emp2.hiredate,'YYYY')) as which_year FROM emp2;

DROP table tmp_emp4;
CREATE TABLE tmp_emp4 AS
SELECT which_year, deptno, COUNT(*) no_of_emps FROM tmp_emp3 GROUP by which_year, deptno;

INSERT INTO FACT_emp (fact_id, deptno, time_id, no_employees)
SELECT fact_seq.nextval, deptno, time_dim.time_id, no_of_emps FROM tmp_emp4, time_dim  WHERE tmp_emp4.which_year = time_dim.time_period;

-- when this runs there are errors because the department for emp2 is NOT in the dept_dim
-- which brings us to the Data Quality ETL tutorial ....