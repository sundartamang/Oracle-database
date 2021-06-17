-- Data Quality checks and transformation on S1_STAGEAREA

-- Quality Check example -	Update the data, maybe set it to ‘not known’, or maybe delete it?
-- This is the code we want to do - don't run it just yet
UPDATE S1_STAGEAREA
SET state = 'not known' 
WHERE 
state IS NULL
OR state = ''
OR state = '-';

Consider the use of a table to log the changes made to the data,
Should we log the changes we have made? We have a data dictionary.
If so we could use a trigger and a ‘ETL_log’ table.

Solution:
-- log ETL changes
DROP table etl_log cascade constraints;

CREATE TABLE etl_log
(issue_id NUMBER(5) NOT NULL, 
table_name VARCHAR2(20),
data_error_code NUMBER(5),
issue_desc VARCHAR2(50),
issue_date DATE, 
issue_status VARCHAR2(20),
status_update_date DATE);

drop sequence EL_SEQ;
create sequence EL_SEQ
start with 1
increment by 1
maxvalue 10000
minvalue 1;

-- Now as part of the ETL - T for transformation, we will do data quality checks and log them in a data issues table
-- we have decided to update S1_STAGEAREA directly. 


DROP TRIGGER S1_stagearea.trg_quality_chk ;
-- START of data transformations
CREATE or REPLACE trigger trg_quality_chk 
  before update on S1_STAGEAREA            
  for each row 
begin  
  INSERT INTO ETL_log
  (issue_id,  table_name,  data_error_code,  issue_desc,  issue_date, issue_status, status_update_date)
   VALUES
  (EL_SEQ.nextval, 'S1_STAGEAREA', '0', 'Quality checks', SYSDATE, 'completed', SYSDATE);
end;

-- Quality Check
UPDATE S1_STAGEAREA SET state = 'NOT KNOWN' WHERE state IS NULL;

-- Transformation (or Quality Check?)
UPDATE S1_STAGEAREA SET state = 'Washington' WHERE state ='WA';

-- the dates are a mess
DELETE FROM S1_STAGEAREA WHERE effective_to_date IS NULL;
-- we only want the years so (this is not entirely correct but will do for now)
-- Transform dates into just the year
DROP TABLE S2_STAGEAREA;
CREATE TABLE S2_STAGEAREA AS SELECT CUSTOMER, STATE, EFFECTIVE_TO_DATE, TOTAL_CLAIM_AMOUNT, DATASOURCE FROM S1_STAGEAREA;
DELETE FROM S2_STAGEAREA;
INSERT INTO S2_STAGEAREA (SELECT CUSTOMER, STATE, '2011', TOTAL_CLAIM_AMOUNT, DATASOURCE FROM S1_STAGEAREA WHERE effective_to_date LIKE '%11');
INSERT INTO S2_STAGEAREA (SELECT CUSTOMER, STATE, '2012', TOTAL_CLAIM_AMOUNT, DATASOURCE FROM S1_STAGEAREA WHERE effective_to_date LIKE '%12');
INSERT INTO S2_STAGEAREA (SELECT CUSTOMER, STATE, '2010', TOTAL_CLAIM_AMOUNT, DATASOURCE FROM S1_STAGEAREA WHERE effective_to_date LIKE '%10');
INSERT INTO S2_STAGEAREA (SELECT CUSTOMER, STATE, '1960', TOTAL_CLAIM_AMOUNT, DATASOURCE FROM S1_STAGEAREA WHERE effective_to_date LIKE '%60');

SELECT * FROM S2_STAGEAREA
SELECT * FROM etl_log;
