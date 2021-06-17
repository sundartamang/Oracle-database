-- DWA set up script
-- emp1 and emp2 represent new data for the DW
-- the DW tables are dept_dim, time_dim and fact_emp
-- set up all the tables for the ETL
Drop table emp1; 
Drop table emp2;
Drop table clean_emp1; 
Drop table clean_emp2;
Drop table transform_emp1; 
Drop table transform_emp2;
Drop table tmp_load1;
Drop table tmp_load2;

Create table emp1 as select * from  scott.emp; 
Create table emp2 as select * from emp1; 
Create table clean_emp1 as select * from emp1; 
Create table clean_emp2 as select * from emp1; 
Create table transform_emp1 as select * from emp1; 
Create table transform_emp2 as select * from emp1; 

DELETE FROM emp2;

-- all the tables below are temporary tables to hold data through the transformations
DELETE FROM clean_emp1;
DELETE FROM clean_emp2;
DELETE FROM transform_emp1;
DELETE FROM transform_emp2;

CREATE TABLE tmp_load1 (empno NUMBER(4), deptno NUMBER(4), which_year NUMBER(4));
CREATE TABLE tmp_load2 (year NUMBER(4), deptno NUMBER(4), no_of_emps NUMBER(4));

-- heres the different data for emp2
INSERT INTO emp2(
SELECT DI_SEQ.nextval, ename, job, mgr, hiredate, '20000', '100', 2 FROM emp1 WHERE DEPTNO = '20');
INSERT INTO emp2(
SELECT DI_SEQ.nextval, ename, job, mgr, hiredate,'20000', '100', 3 FROM emp1 WHERE DEPTNO = '30');
INSERT INTO emp2(
SELECT DI_SEQ.nextval, ename, job, mgr, hiredate,'20000', '100', 1 FROM emp1 WHERE DEPTNO = '10');

UPDATE emp2 SET ename = NULL WHERE deptno = 2;

-- these are the DW - star schema tables
DROP table FACT_emp CASCADE CONSTRAINTs;
DROP table dept_dim CASCADE CONSTRAINTs;
DROP table time_dim CASCADE CONSTRAINTs;

CREATE TABLE FACT_emp(
fact_id INTEGER NOT NULL,
deptno INTEGER,
time_id INTEGER,
no_employees INTEGER,
-- Specify the PRIMARY KEY constraint for table "FACT_emp".
-- This indicates which attribute(s) uniquely identify each row of data.
PRIMARY KEY (fact_id)
);

CREATE TABLE dept_dim(
deptno INTEGER NOT NULL,
dept_desc VARCHAR(13),
-- Specify the PRIMARY KEY constraint for table "dept_dim".
-- This indicates which attribute(s) uniquely identify each row of data.
PRIMARY KEY (deptno)
);

CREATE TABLE time_dim(
time_id INTEGER NOT NULL,
time_period INTEGER,
-- Specify the PRIMARY KEY constraint for table "time_dim".
-- This indicates which attribute(s) uniquely identify each row of data.
PRIMARY KEY (time_id)
);

--put some existing data into the dim tables
INSERT INTO dept_dim (deptno, dept_desc) SELECT deptno, dname FROM dept;
INSERT INTO time_dim VALUES (1, 1978);
INSERT INTO time_dim VALUES (2, 1979);
INSERT INTO time_dim VALUES (3, 1980);
INSERT INTO time_dim VALUES (4, 1981);

-- and fact
DROP sequence FACT_SEQ;
create sequence FACT_SEQ
start with 1
increment by 1
maxvalue 10000
minvalue 1;

INSERT INTO fact_emp VALUES (fact_seq.nextval, 10, 1, 3);
INSERT INTO fact_emp VALUES (fact_seq.nextval, 20, 1, 1);
INSERT INTO fact_emp VALUES (fact_seq.nextval, 30, 1, 4);
INSERT INTO fact_emp VALUES (fact_seq.nextval, 10, 2, 6);
INSERT INTO fact_emp VALUES (fact_seq.nextval, 20, 2, 4);
INSERT INTO fact_emp VALUES (fact_seq.nextval, 30, 2, 2);
INSERT INTO fact_emp VALUES (fact_seq.nextval, 40, 2, 6);

-- set up tables log the data errors
DROP TABLE Data_Quality_Errors;
CREATE TABLE Data_Quality_Errors
(error_id integer NOT NULL, 
empno NUMBER(4), 
error_desc VARCHAR(50), 
status VARCHAR(10));

DROP sequence DQ_SEQ;
create sequence DQ_SEQ
start with 1
increment by 1
maxvalue 10000
minvalue 1;

-- and a table to record the transformations
DROP table Data_transformations;
CREATE TABLE Data_Transformations
(transform_id NUMBER(4) NOT NULL, 
table_name VARCHAR2(30), 
row_id NUMBER(4),
data_error_code NUMBER(4), 
transform_desc VARCHAR(50), 
transform_date DATE,
transform_status VARCHAR(10),
status_update_date DATE);

DROP sequence DI_SEQ;
Create sequence DI_SEQ MINVALUE 50 MAXVALUE 9999999 INCREMENT BY 1 START WITH 50;
 
--Set up trigger to record transformations
DROP trigger trg_transform_emp ;
create or replace trigger trg_transform_emp
  after update on transform_emp2              
  for each row
begin  
  INSERT INTO data_transformations
  (transform_id,  table_name,  row_id, data_error_code,  transform_desc,  transform_date, transform_status, status_update_date)
   VALUES
  (DI_SEQ.nextval, 'clean_emp2', :OLD.empno, '0', 'transform deptno 1-2-3 to 10-20-30', SYSDATE, 'completed', SYSDATE);
end;
