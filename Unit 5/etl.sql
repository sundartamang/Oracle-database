
--------------------------------------------------------------
-- Database creation Script

-- Auto-Generated by QSEE-SuperLite (c) 2001-2004 QSEE-Technologies Ltd.

-- Verbose generation: ON

-- note: spaces within table/column names have been replaced by underscores (_)

-- Target DB: SQL2

-- Entity Model :Entity Relationship Diagram

-- To drop the tables generated by this script run -
--   'C:\Users\lazare01\Desktop\etl_drop.sql'

--------------------------------------------------------------



--------------------------------------------------------------
-- Table Creation --

-- Each entity on the model is represented by a table that needs to be created within the Database.
-- Within SQL new tables are created using the CREATE TABLE command.
-- When a table is created its name and its attributes are defined.
-- The values of which are derived from those specified on the model.
-- Certain constraints are sometimes also specified, such as identification of primary keys.

-- Create a Database table to represent the "dept_dim" entity.
CREATE TABLE dept_dim(
	did	INTEGER NOT NULL,
	dname	INTEGER,
	-- Specify the PRIMARY KEY constraint for table "dept_dim".
	-- This indicates which attribute(s) uniquely identify each row of data.
	CONSTRAINT	pk_dept_dim PRIMARY KEY (did)
);

-- Create a Database table to represent the "fact_dim" entity.
CREATE TABLE fact_dim(
	id	INTEGER NOT NULL,
	fk1_did	INTEGER NOT NULL,
	fk2_id	INTEGER NOT NULL,
	noemp	INTEGER,
	-- Specify the PRIMARY KEY constraint for table "fact_dim".
	-- This indicates which attribute(s) uniquely identify each row of data.
	CONSTRAINT	pk_fact_dim PRIMARY KEY (id)
);

-- Create a Database table to represent the "time_dim" entity.
CREATE TABLE time_dim(
	id	INTEGER NOT NULL,
	-- Specify the PRIMARY KEY constraint for table "time_dim".
	-- This indicates which attribute(s) uniquely identify each row of data.
	CONSTRAINT	pk_time_dim PRIMARY KEY (id)
);


--------------------------------------------------------------
-- Alter Tables to add fk constraints --

-- Now all the tables have been created the ALTER TABLE command is used to define some additional
-- constraints.  These typically constrain values of foreign keys to be associated in some way
-- with the primary keys of related tables.  Foreign key constraints can actually be specified
-- when each table is created, but doing so can lead to dependency problems within the script
-- i.e. tables may be referenced before they have been created.  This method is therefore safer.

-- Alter table to add new constraints required to implement the "fact_dim_dept_dim" relationship

-- This constraint ensures that the foreign key of table "fact_dim"
-- correctly references the primary key of table "dept_dim"

ALTER TABLE fact_dim ADD CONSTRAINT fk1_fact_dim_to_dept_dim FOREIGN KEY(fk1_did) REFERENCES dept_dim(did) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- Alter table to add new constraints required to implement the "fact_dim_time_dim" relationship

-- This constraint ensures that the foreign key of table "fact_dim"
-- correctly references the primary key of table "time_dim"

ALTER TABLE fact_dim ADD CONSTRAINT fk2_fact_dim_to_time_dim FOREIGN KEY(fk2_id) REFERENCES time_dim(id) ON DELETE RESTRICT ON UPDATE RESTRICT;


--------------------------------------------------------------
-- End of DDL file auto-generation
--------------------------------------------------------------
