1. Insert bulk data with create table statement

create table emp_new 
as
select * from emp;


2. Insert bulk data by using insert statement 

insert into emp_new 
(select * from emp);


3.  Insert bulk data by using insert statement / create table statement with alias

create table emp_new 
as
select emp_no employee_number,
ename employee_name,
job job_desc 
sal salary
hiredate date_of_join
from emp;


insert into emp_new 
as
select emp_no employee_number,
ename employee_name,
job job_desc 
sal salary
hiredate date_of_join
from emp;

4.  Insert bulk data by using insert statement/ create table statement with required columns


create table emp_new 
as
select emp_no employee_number,
ename employee_name,
job job_desc 
sal salary
hiredate date_of_join
from emp;


insert into emp_new 
as
select emp_no employee_number,
ename employee_name,
job job_desc 
sal salary
hiredate date_of_join
from emp;


5.  Insert bulk data by using insert statement/create table  statement by using join condition 


create table emp_new 
as
select emp_no employee_number,
ename employee_name,
job job_desc 
sal salary
hiredate date_of_join
dname department_name
from emp e, dept d
where e.d;eptno = d.deptno


insert into emp_new 
as
select emp_no employee_number,
ename employee_name,
job job_desc 
sal salary
hiredate date_of_join
from emp;


6. Merge Statement

select * from emp_new;

delete from emp_new where job = 'CLERK'
TRUNCATE TABLE emp_merge
select * from emp_merge

MERGE INTO emp_merge dest
  USING emp_new  source
  ON (dest.empno = source.empno)
  WHEN MATCHED THEN
    UPDATE SET 
    dest.ENAME = source.ename,
    dest.JOB = source.job,
    dest.MGR = source.mgr,
    dest.HIREDATE = source.hiredate,
    dest.SAL = source.SAL,
    dest.COMM = source.comm,
    dest.DEPTNO	=source.deptno
  WHEN NOT MATCHED THEN
    INSERT VALUES (source.empno,source.ENAME,source.JOB,source.MGR,source.HIREDATE,source.SAL,source.COMM,source.DEPTNO	);

 
7. PL/SQL statement