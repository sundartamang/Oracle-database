--------------------------------------------------------------
-- Database creation Script

-- Auto-Generated by QSEE-SuperLite (c) 2001-2004 QSEE-Technologies Ltd.

-- Verbose generation: ON

-- note: spaces within table/column names have been replaced by underscores (_)

-- Target DB: SQL2

-- Entity Model :Entity Relationship Diagram

-- To drop the tables generated by this script run -
--   'C:\Users\lazare01\Desktop\SSweek7_drop.sql'

--------------------------------------------------------------

-- Drop tables --

DROP TABLE dept_dim cascade constraints;

DROP TABLE time_dim cascade constraints;

DROP TABLE FACT_emp cascade constraints;


--------------------------------------------------------------
-- Table Creation --

-- Each entity on the model is represented by a table that needs to be created within the Database.
-- Within SQL new tables are created using the CREATE TABLE command.
-- When a table is created its name and its attributes are defined.
-- The values of which are derived from those specified on the model.
-- Certain constraints are sometimes also specified, such as identification of primary keys.

-- Create a Database table to represent the "dept_dim" entity.
CREATE TABLE dept_dim(
	d_id	INTEGER NOT NULL,
	deptno	INTEGER,
	dept_desc	VARCHAR(14),
	effective_date	DATE,
	-- Specify the PRIMARY KEY constraint for table "dept_dim".
	-- This indicates which attribute(s) uniquely identify each row of data.
	CONSTRAINT	pk_dept_dim PRIMARY KEY (d_id)
);

-- Create a Database table to represent the "time_dim" entity.
CREATE TABLE time_dim(
	time_id	INTEGER NOT NULL,
	time_period	INTEGER,
	-- Specify the PRIMARY KEY constraint for table "time_dim".
	-- This indicates which attribute(s) uniquely identify each row of data.
	CONSTRAINT	pk_time_dim PRIMARY KEY (time_id)
);

-- Create a Database table to represent the "FACT_emp" entity.
CREATE TABLE FACT_emp(
	fact_id	INTEGER NOT NULL,
	fk1_time_id	INTEGER NOT NULL,
	fk2_d_id	INTEGER NOT NULL,
    no_employees	INTEGER,
	-- Specify the PRIMARY KEY constraint for table "FACT_emp".
	-- This indicates which attribute(s) uniquely identify each row of data.
	CONSTRAINT	pk_FACT_emp PRIMARY KEY (fact_id)
);


--------------------------------------------------------------
-- Alter Tables to add fk constraints --

-- Now all the tables have been created the ALTER TABLE command is used to define some additional
-- constraints.  These typically constrain values of foreign keys to be associated in some way
-- with the primary keys of related tables.  Foreign key constraints can actually be specified
-- when each table is created, but doing so can lead to dependency problems within the script
-- i.e. tables may be referenced before they have been created.  This method is therefore safer.

-- Alter table to add new constraints required to implement the "FACT_emp_time_dim" relationship

-- This constraint ensures that the foreign key of table "FACT_emp"
-- correctly references the primary key of table "time_dim"

ALTER TABLE FACT_emp ADD CONSTRAINT fk1_FACT_emp_to_time_dim FOREIGN KEY(fk1_time_id) REFERENCES time_dim(time_id);

-- Alter table to add new constraints required to implement the "FACT_emp_dept_dim" relationship

-- This constraint ensures that the foreign key of table "FACT_emp"
-- correctly references the primary key of table "dept_dim"

ALTER TABLE FACT_emp ADD CONSTRAINT fk2_FACT_emp_to_dept_dim FOREIGN KEY(fk2_d_id) REFERENCES dept_dim(d_id);


--------------------------------------------------------------
-- End of DDL file auto-generation
--------------------------------------------------------------
drop sequence time_seq;
create sequence time_seq;

drop sequence fact_seq;
create sequence fact_seq;

drop sequence dept_seq;
create sequence dept_seq;







