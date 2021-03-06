
--------------------------------------------------------------
-- Database table removal script

-- Auto-Generated by QSEE-SuperLite (c) 2001-2004 QSEE-Technologies Ltd.

-- note: spaces within table names have been replaced by underscores (_)

-- Target DB: SQL2

-- Entity Model :Entity Relationship Diagram

-- Use this script to drop the tables created by -
--   'C:\Users\lazare01\Desktop\etl.sql'

-- Dropping a table has the effect of removing it from the Database.  All existing data is lost
-- as well as the definition of the table itself (stored as meta-data).  Dropping the tables allows
-- them to be re-created within the Database, even if they already exist.


--------------------------------------------------------------

-- Drop tables --

DROP TABLE dept_dim;

DROP TABLE fact_dim;

DROP TABLE time_dim;


--------------------------------------------------------------
-- End of DDL DROP file auto-generation
--------------------------------------------------------------
