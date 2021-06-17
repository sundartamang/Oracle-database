PLSQL 

SHARABLE CODE (PROCEDURE , FUNCTION ,PACKAGES )
TRIGGER, CURSOR, SEQUENCE


--forcefully execute 
procedure without argument 

create procedure pr_increse_Salary  is 

    v_exp  number(2);
    v_hike number(5,2);
begin
    select  floor((sysdate-hiredate) / 365 ) into v_exp
    from EMP
    where EMPNO = 7839;
    
    v_hike := 1.05;
	
	
    case 
      when  v_exp > 10 then
            v_hike := 1.20;
      when  v_exp > 5  then
            v_hike := 1.10;
    end case;
    
    update EMP set SAL = (SAL * v_hike )
    where EMPNO = 7839;
end;    


Execution method:

begin 
  pr_increse_Salary;
end;

or  

exec pr_increse_Salary;

------------

creating procedure with arguments :

1. IN 
2. OUT 
3. IN OUT


procedurte creation with in argument 



create procedure pr_increase_Salary_IN (P_empno in float, v_exp in number ) is 

    --v_exp  number(2);
    v_hike number(5,2);
begin
   -- select  floor((sysdate-hiredate) / 365 ) into v_exp
   -- from EMP
   -- where EMPNO = P_empno;
    
    v_hike := 1.05;
	
	
    case 
      when  v_exp > 10 then
            v_hike := 1.20;
      when  v_exp > 5  then
            v_hike := 1.10;
    end case;
    
    update EMP set SAL = (SAL * v_hike )
    where EMPNO = P_empno;
end;    

Execution method:
begin 
  pr_increase_Salary_in (7788, 3) ;
end;


------------

create or replace procedure pr_increase_Salary_IN_OUT  (P_empno in float, v_exp OUT number, v_sal out number ) is  


    v_hike number(5,2);
begin
    select  floor((sysdate-hiredate) / 365 ) into v_exp
    from EMP
    where EMPNO = P_empno;
    
    v_hike := 1.05;
	
	
    case 
      when  v_exp > 10 then
            v_hike := 1.20;
      when  v_exp > 5  then
            v_hike := 1.10;
    end case;
    
    update EMP set SAL = (SAL * v_hike )
    where EMPNO = P_empno
	returning sal into v_sal;
end;

Execution method:


declare 
p_experience number(10,2);
p_eid number(5):=7788;
P_new_salary number(10,2);


begin 
  pr_increase_Salary_in_out (p_eid, p_experience, P_new_salary ) ;
  
  dbms_output.put_line( 'employee id : ' ||p_eid ||'. His experience in an organization is : '||p_experience ||' years. His new salary is : '||P_new_salary  );
end;

---------------------



create or replace procedure pr_emp_INOUT  (P_empno in out float, P_NAME IN VARCHAR2, P_JOB IN VARCHAR2, p_mode in varchar2) is  

begin

if p_mode = 'INSERT' then

--select max(empno) +1 into vemp  from emp;

 insert into emp (empno, ename, job) values ( seq_empnumber.nextval , P_NAME, P_JOB) returning empno into p_empno;
 
elsif p_mode = 'UPDATE' then
	update emp
	set ename = P_NAME	,
	job = p_job
	where empno = p_empno;


elsif p_mode = 'DELETE' then
delete from emp where empno = p_empno;
 

end if;

   
end;


declare 

vemployeenumber float ;

begin

pr_emp_INOUT  (vemployeenumber, 'INSERT');

dbms_output.put_line( 'employee_number is ' ||vemployeenumber ||' mode is INSERT');

end;


declare 

vemployeenumber float : = 7566;

begin

pr_emp_INOUT  (vemployeenumber, 'UPDATE');

dbms_output.put_line( 'employee_number is ' ||vemployeenumber ||' mode is UPDATE');

end;


------------------------