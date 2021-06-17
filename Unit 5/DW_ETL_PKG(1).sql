create or replace package DW_ETL_PKG is

procedure Data_quality_check(pv_rows OUT NUMBER);

procedure data_transform(pv_rows OUT NUMBER);
    
procedure data_load(pv_rows OUT NUMBER);
 
END DW_ETL_PKG;
 
create or replace package body DW_ETL_PKG AS
procedure data_quality_check (pv_rows OUT NUMBER)
IS
BEGIN
pv_rows := 0;

INSERT INTO data_quality_errors
SELECT  DQ_SEQ.nextval, emp1.empno, 'null values', 'not fixed'
FROM emp1 WHERE ename IS NULL
OR job IS NULL
OR hiredate IS NULL
OR SAL IS NULL
OR deptno IS NULL;
pv_rows := TO_CHAR(SQL%RowCount);

DELETE FROM clean_emp1;
INSERT INTO clean_emp1 (SELECT * FROM emp1 WHERE
ename IS NOT NULL
AND job IS NOT NULL
AND hiredate IS NOT NULL
AND SAL IS NOT NULL
AND deptno IS NOT NULL);

INSERT INTO data_quality_errors
(SELECT  DQ_SEQ.nextval, emp2.empno, 'null values', 'not fixed'
FROM emp2 WHERE ename IS NULL
OR job IS NULL
OR hiredate IS NULL
OR SAL IS NULL
OR deptno IS NULL);
pv_rows := pv_rows + TO_CHAR(SQL%RowCount);

DELETE FROM clean_emp2;
INSERT INTO clean_emp2 ( SELECT * FROM emp2 WHERE
ename IS NOT NULL
AND job IS NOT NULL
AND hiredate IS NOT NULL
AND SAL IS NOT NULL
AND deptno IS NOT NULL);

END data_quality_check;

PROCEDURE data_transform (pv_rows OUT NUMBER) IS
BEGIN
pv_rows :=0;

DELETE FROM transform_emp1;
DELETE FROM transform_emp2;

INSERT INTO transform_emp1 SELECT * FROM clean_emp1;
INSERT INTO transform_emp2 SELECT * FROM clean_emp2;

UPDATE transform_emp2 SET deptno = 10 WHERE deptno = 1;
pv_rows := TO_CHAR(SQL%RowCount);
UPDATE transform_emp2 SET deptno = 20 WHERE deptno = 2;
pv_rows := pv_rows + TO_CHAR(SQL%RowCount);
UPDATE transform_emp2 SET deptno = 30 WHERE deptno = 3;
pv_rows := pv_rows + TO_CHAR(SQL%RowCount);

END data_transform;

PROCEDURE data_load (pv_rows OUT NUMBER) IS
BEGIN
pv_rows :=0;

INSERT INTO tmp_load1 (SELECT 
empno, deptno, to_number(to_char(transform_emp1.hiredate,'YYYY')) FROM transform_emp1);

INSERT INTO tmp_load2 (SELECT
which_year, deptno, COUNT(*) no_of_emps FROM tmp_load1 GROUP by which_year, deptno);

INSERT INTO FACT_emp (fact_id, deptno, time_id, no_employees)
SELECT fact_seq.nextval, deptno, time_dim.time_id, no_of_emps FROM tmp_load2,time_dim  WHERE tmp_load2.year = time_dim.time_period;

pv_rows := TO_CHAR(SQL%RowCount);

END data_load;

END;
