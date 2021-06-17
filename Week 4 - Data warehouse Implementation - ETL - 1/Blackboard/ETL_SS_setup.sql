--Script to set up Fact and dim tables:
--------------------------------------------------------------
-- Database creation Script

-- Auto-Generated by QSEE-SuperLite (c) 2001-2004 QSEE-Technologies Ltd.

--------------------------------------------------------------
-- Table Creation --

-- Each entity on the model is represented by a table that needs to be created within the Database.
-- Within SQL new tables are created using the CREATE TABLE command.
-- When a table is created its name and its attributes are defined.
-- The values of which are derived from those specified on the model.
-- Certain constraints are sometimes also specified, such as identification of primary keys.

DROP table dept_dim CASCADE CONSTRAINTs;
DROP table time_dim CASCADE CONSTRAINTs;
DROP table fact_emp CASCADE CONSTRAINTs;


-- Create a Database table to represent the "dept_dim" entity.
CREATE TABLE dept_dim(
deptno INTEGER NOT NULL,
dept_desc VARCHAR(10),
Date_effective DATE,   -- to support SCD type 3
-- Specify the PRIMARY KEY constraint for table "dept_dim".
-- This indicates which attribute(s) uniquely identify each row of data.
PRIMARY KEY (deptno)
);

-- Create a Database table to represent the "time_dim" entity.
CREATE TABLE time_dim(
time_id INTEGER NOT NULL,
time_period INTEGER,
-- Specify the PRIMARY KEY constraint for table "time_dim".
-- This indicates which attribute(s) uniquely identify each row of data.
PRIMARY KEY (time_id)
);
CREATE TABLE fact_emp(
fact_id INTEGER NOT NULL,
Deptno INTEGER NOT NULL,
time_id INTEGER NOT NULL,
no_employees INTEGER,
PRIMARY KEY (fact_id));

--------------------------------------------------------------
-- Alter Tables to add fk constraints --

-- Now all the tables have been created the ALTER TABLE command is used to define some additional
-- constraints. These typically constrain values of foreign keys to be associated in some way
-- with the primary keys of related tables. Foreign key constraints can actually be specified
-- when each table is created, but doing so can lead to dependency problems within the script
-- i.e. tables may be referenced before they have been created. This method is therefore safer.

-- Alter table to add new constraints required to implement the "relates_to" relationship

-- This constraint ensures that the foreign key of table "FACT_emp"
-- correctly references the primary key of table "dept_dim"

ALTER TABLE FACT_emp ADD CONSTRAINT fk1_FACT_emp_to_dept_dim FOREIGN KEY(deptno) REFERENCES dept_dim(deptno) ;

-- Alter table to add new constraints required to implement the "relates_to" relationship

-- This constraint ensures that the foreign key of table "FACT_emp"
-- correctly references the primary key of table "time_dim"

ALTER TABLE FACT_emp ADD CONSTRAINT fk2_FACT_emp_to_time_dim FOREIGN KEY(time_id) REFERENCES time_dim(time_id) ;
--------------------------------------------------------------
-- End of DDL file auto-generation
--------------------------------------------------------------