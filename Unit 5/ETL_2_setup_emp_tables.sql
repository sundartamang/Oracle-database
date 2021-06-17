drop table bad_data_emp;
Drop table emp1; 
Drop table emp2;

create table bad_data_emp as select * from scott.emp;
Create table emp1 as select * from scott.emp;
Create table emp2 as select * from scott.emp;

--- just adding some data errors :-)
UPDATE bad_data_emp
SET ename = 'smith' WHERE empno = '7369';
UPDATE bad_data_emp
SET ename = 'scott' WHERE empno = '7788';
UPDATE bad_data_emp
SET job = '' WHERE empno IN ('7566', '7844');
UPDATE bad_data_emp
SET empno = '7499' WHERE ename = 'ALLEN';
UPDATE bad_data_emp
SET sal = 15000 WHERE empno = '7698';
UPDATE bad_data_emp
SET hiredate = '02/02/2020' WHERE empno = '7698';

DELETE FROM emp2;

DROP SEQUENCE DI_SEQ;

create sequence DI_SEQ
start with 1
increment by 1
maxvalue 10000
minvalue 1;

-- heres the different data
INSERT INTO emp2(
SELECT DI_SEQ.nextval, ename, job, mgr, hiredate, '20000', '100', 2 FROM emp1 WHERE DEPTNO = '20');
INSERT INTO emp2(
SELECT DI_SEQ.nextval, ename, job, mgr, hiredate,'20000', '100', 3 FROM emp1 WHERE DEPTNO = '30');
INSERT INTO emp2(
SELECT DI_SEQ.nextval, ename, job, mgr, hiredate,'20000', '100', 1 FROM emp1 WHERE DEPTNO = '10');

--Now we have three tables: emp1, emp2 and bad_data_emp.
--We will do data quality checks on bad_data_emp – and fix them
--We will do transformations  on emp1 and emp2.
