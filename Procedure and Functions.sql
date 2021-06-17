Procedures / Funtions / cursors/ TRigger / Sequence 

Declare 

begin 
	exception 
end 

directly execute -50 places 

SHARABLE CODE  - 1 PLACE AND CAN BE EXECUTE FROM DIFFERNT PLACES 


PROCEDURES / FUNCTIONS 

 PL BLOCK / ANANOMUS BLOCK 


--Procedure with no agrgument 

CREATE OR REPLACE PROCEDURE PR_INCREASE_SALARY   IS 
    v_exp  number(2);
    v_hike number(5,2);
begin
    select  floor((sysdate-hiredate) / 365 ) into v_exp
    from EMP
    where EMPNO = 7869;
    
    v_hike := 1.05;
    
    case 
      when  v_exp > 10 then
            v_hike := 1.20;
      when  v_exp > 5  then
            v_hike := 1.10;
    end case;
    
    update EMP set SAL = SAL * v_hike 
    where EMPNO = 7869;
end;    


begin 
  PR_INCREASE_SALARY ;
end;

---With ARgument Procedure 

1 IN 


CREATE OR REPLACE PROCEDURE PR_INCREASE_SALARY_IN (P_empno IN float)  IS 
    v_exp  number(2);
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
    
    update EMP set SAL = SAL * v_hike 
    where EMPNO = P_empno;
end;    


begin 
  PR_INCREASE_SALARY (7698);
end;

2 OUT 

CREATE OR REPLACE PROCEDURE PR_INCREASE_SALARY_IN_OUT (P_empno IN float, v_sal OUT number, v_increased_sal OUT number)  IS 
    v_exp  number(2);
    v_hike number(5,2);

	
begin
    select  floor((sysdate-hiredate) / 365 ), sal into v_exp, v_Sal
    from EMP
    where EMPNO = P_empno;
    
    v_hike := 1.05;
    
    case 
      when  v_exp > 10 then
            v_hike := 1.20;
      when  v_exp > 5  then
            v_hike := 1.10;
    end case;
    


    update EMP set SAL = SAL * v_hike 
    where EMPNO = P_empno
	returning sal into v_increased_sal;
end;    

declare 
vinc_sal number(10,2);
v_sal1 number (10,2);
begin 
  PR_INCREASE_SALARY_IN_OUT (7698, v_sal1, vinc_sal);
  
  dbms_output.put_line (' Incresed Salary is : '||vinc_sal|| '  Original Salary is :' ||v_sal1);
end;


3 IN OUT 


CREATE OR REPLACE PROCEDURE PR_INCREASE_SALARY_INOUT (P_empno IN OUT float, Pname in varchar2, vmode in varchar2)  IS 
 vmax number(5);
	
begin
   
   if vmode  = 'INSERT' then
   
   select max(empno)+ 1 into vmax from emp;
   
   insert into emp (empno, ename)  values (vmax, 'dibya') ;
   
   elsif vmode = 'UPDATE' then
     update emp 
	 set ename = Pname
	 where empno = p_empno;
	 
	 elsif vmode = 'DELETE' then
	 delete from emp where empno = P_empno;
	 end if;
	 
end;



declare 
vemp float;
vmode varchar2(10) := 'INSERT' ;

begin 
  PR_INCREASE_SALARY_INOUT (vemp , vmode );

dbms_output.put_line ( vmode ||' : '||  vemp );
  
  end;
  
  
  declare 
vemp float := 7839;
vmode varchar2(10) := 'UPDATE' ;

begin 
  PR_INCREASE_SALARY_INOUT (vemp , vmode );

dbms_output.put_line ( vmode ||' : '||  vemp );
  
  end;
  
  
declare 
vemp float := 7935;
vmode varchar2(10) := 'DELETE' ;

begin 
  PR_INCREASE_SALARY_INOUT (vemp , vmode );

dbms_output.put_line ( vmode ||' : '||  vemp );
  
  end;
  
  --------------------
   : 
  FUNCTIONS
  
  
 
CREATE OR REPLACE FUNCTION FN_GET_EMPNAME RETURN VARCHAR2 IS 

VENAME VARCHAR2(20);

BEGIN 

SELECT ENAME INTO vename FROM EMP WHERE EMPNO = 7839;
RETURN (vename);

END;

Method of executions

1 . by using select statement 

select FN_GET_EMPNAME from dept 

2 .
declare 

vnm varchar2(20);

begin 
vnm :=FN_GET_EMPNAME;
dbms_output.put_line (' employee name is : '||vnm);
end;

-------------

CREATE OR REPLACE FUNCTION FN_GET_EMPNAME_IN (P_Empno in float) RETURN VARCHAR2 IS 

VENAME VARCHAR2(20);

BEGIN 

SELECT ENAME INTO vename FROM EMP WHERE EMPNO = P_Empno;
RETURN (vename);

END;


Method of executions

1 . by using select statement 


SELECT D.* ,FN_GET_EMPNAME_in (MGR) MANAGERNAME  FROM DEPT D

2 .
declare 

vnm varchar2(20);

begin 
vnm :=FN_GET_EMPNAME;
dbms_output.put_line (' employee name is : '||vnm);
end;

----------------------

cursor 

--DECLAREATION OF SELECT STATMENT 

-- 1 DATA SELECT
-- 2 DATA STORED IN ORACLE MEMORY BUFFER 
-- 3 IT EXECUTE DATA ONE BY ONE 


tyPES OF eXECUTION 

1. BY USING FOR LOOP
2. CURSOR DECLARE - > CURSOR OPEN -> CURSOR VALUE FETCH -> CURSOR CLOSE.


9.	Display 5th and 10th employees in Employees table. 


declare

     cursor empcur is
        select EMPNO, ENAME 
        from EMP;
        
begin
     for emprec in empcur loop
         if empcur%rowcount > 4 then
              dbms_output.put_line( emprec.ENAME);
              exit  when   empcur%rowcount > 10;
         end if;
     end loop;
     
end;


----------

declare

     cursor empcur is
        select EMPNO, ENAME  
        from EMP;
      
vEMPNO emp.empno%TYPE;
vENAME emp.ename%TYPE;
	  
begin


OPEN empcur;
     loop
	 
	 FETCH EMPCUR INTO vEMPNO, vENAME  ;
	 
         if empcur%rowcount > 4 then
              dbms_output.put_line( vENAME);
              exit  when   empcur%rowcount > 10;
         end if;
     end loop;
	 
	 close empcur;
	 
     
end;

-------------------

declare

     cursor empcur is
        select EMPNO, ENAME ,hiredate ---500 columns 
        from EMP;
      

vrec empcur%ROWTYPE;

	  
begin


OPEN empcur;
     loop
	 
	 FETCH EMPCUR INTO vrec  ;
	 
         if empcur%rowcount > 4 then
              dbms_output.put_line(vrec.ENAME);
			   dbms_output.put_line(vrec.hiredate);
			    dbms_output.put_line(vrec.empno);
              exit  when   empcur%rowcount > 10;
         end if;
     end loop;
	 
	 close empcur;
	 
     
end;






