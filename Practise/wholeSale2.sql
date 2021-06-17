
--------------------------------------------------------------
-- Database creation Script

-- Auto-Generated by QSEE-SuperLite (c) 2001-2004 QSEE-Technologies Ltd.

-- Verbose generation: ON

-- note: spaces within table/column names have been replaced by underscores (_)

-- Target DB: SQL2

-- Entity Model :Entity Relationship Diagram

-- To drop the tables generated by this script run -
--   'D:\British\Oracle\Practise\wholeSale2_drop.sql'

--------------------------------------------------------------



--------------------------------------------------------------
-- Table Creation --

-- Each entity on the model is represented by a table that needs to be created within the Database.
-- Within SQL new tables are created using the CREATE TABLE command.
-- When a table is created its name and its attributes are defined.
-- The values of which are derived from those specified on the model.
-- Certain constraints are sometimes also specified, such as identification of primary keys.

-- Create a Database table to represent the "sales" entity.
CREATE TABLE sales(
	furniture_id	INTEGER NOT NULL UNIQUE,
	location_id	INTEGER NOT NULL UNIQUE,
	time_id	INTEGER NOT NULL UNIQUE,
	customer_id	INTEGER NOT NULL UNIQUE,
	type_id	INTEGER NOT NULL UNIQUE,
	material_id	INTEGER NOT NULL UNIQUE,
	category_id	INTEGER NOT NULL UNIQUE,
	quantity	NUMERIC(8,2) NOT NULL,
	income	NUMERIC(8,2) NOT NULL,
	discount	NUMERIC(8,2) NOT NULL,
	fk1_location_id	INTEGER NOT NULL,
	fk2_furnitur_id	INTEGER NOT NULL,
	fk3_time_id	INTEGER NOT NULL,
	fk4_customer_id	INTEGER NOT NULL,
	fk5_type_id	INTEGER NOT NULL,
	fk6_material_id	INTEGER NOT NULL,
	fk7_category_id	INTEGER NOT NULL
);

-- Create a Database table to represent the "dim_time" entity.
CREATE TABLE dim_time(
	time_id	INTEGER NOT NULL,
	day	TIMESTAMP(8) NOT NULL,
	month	TIMESTAMP(8) NOT NULL,
	year	TIMESTAMP(8) NOT NULL,
	-- Specify the PRIMARY KEY constraint for table "dim_time".
	-- This indicates which attribute(s) uniquely identify each row of data.
	CONSTRAINT	pk_dim_time PRIMARY KEY (time_id)
);

-- Create a Database table to represent the "dim_customer" entity.
CREATE TABLE dim_customer(
	customer_id	INTEGER NOT NULL,
	first_name	VARCHAR(50),
	last_name	VARCHAR(50),
	gender	VARCHAR(50),
	age	NUMERIC(8,2),
	-- Specify the PRIMARY KEY constraint for table "dim_customer".
	-- This indicates which attribute(s) uniquely identify each row of data.
	CONSTRAINT	pk_dim_customer PRIMARY KEY (customer_id)
);

-- Create a Database table to represent the "dim_location" entity.
CREATE TABLE dim_location(
	location_id	INTEGER NOT NULL,
	city	VARCHAR(100),
	region	VARCHAR(100),
	state	VARCHAR(100),
	-- Specify the PRIMARY KEY constraint for table "dim_location".
	-- This indicates which attribute(s) uniquely identify each row of data.
	CONSTRAINT	pk_dim_location PRIMARY KEY (location_id)
);

-- Create a Database table to represent the "dim_furniture" entity.
CREATE TABLE dim_furniture(
	furnitur_id	INTEGER NOT NULL,
	furniture_name	VARCHAR(50),
	-- Specify the PRIMARY KEY constraint for table "dim_furniture".
	-- This indicates which attribute(s) uniquely identify each row of data.
	CONSTRAINT	pk_dim_furniture PRIMARY KEY (furnitur_id)
);

-- Create a Database table to represent the "dim_type" entity.
CREATE TABLE dim_type(
	type_id	INTEGER NOT NULL,
	type_name	VARCHAR(50),
	-- Specify the PRIMARY KEY constraint for table "dim_type".
	-- This indicates which attribute(s) uniquely identify each row of data.
	CONSTRAINT	pk_dim_type PRIMARY KEY (type_id)
);

-- Create a Database table to represent the "dim_material" entity.
CREATE TABLE dim_material(
	material_id	INTEGER NOT NULL,
	material_name	VARCHAR(50),
	-- Specify the PRIMARY KEY constraint for table "dim_material".
	-- This indicates which attribute(s) uniquely identify each row of data.
	CONSTRAINT	pk_dim_material PRIMARY KEY (material_id)
);

-- Create a Database table to represent the "dim_category" entity.
CREATE TABLE dim_category(
	category_id	INTEGER NOT NULL,
	category_name	VARCHAR(50),
	-- Specify the PRIMARY KEY constraint for table "dim_category".
	-- This indicates which attribute(s) uniquely identify each row of data.
	CONSTRAINT	pk_dim_category PRIMARY KEY (category_id)
);


--------------------------------------------------------------
-- Alter Tables to add fk constraints --

-- Now all the tables have been created the ALTER TABLE command is used to define some additional
-- constraints.  These typically constrain values of foreign keys to be associated in some way
-- with the primary keys of related tables.  Foreign key constraints can actually be specified
-- when each table is created, but doing so can lead to dependency problems within the script
-- i.e. tables may be referenced before they have been created.  This method is therefore safer.

-- Alter table to add new constraints required to implement the "location_fk" relationship

-- This constraint ensures that the foreign key of table "sales"
-- correctly references the primary key of table "dim_location"

ALTER TABLE sales ADD CONSTRAINT fk1_sales_to_dim_location FOREIGN KEY(fk1_location_id) REFERENCES dim_location(location_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- Alter table to add new constraints required to implement the "furniture_fk" relationship

-- This constraint ensures that the foreign key of table "sales"
-- correctly references the primary key of table "dim_furniture"

ALTER TABLE sales ADD CONSTRAINT fk2_sales_to_dim_furniture FOREIGN KEY(fk2_furnitur_id) REFERENCES dim_furniture(furnitur_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- Alter table to add new constraints required to implement the "time_fk" relationship

-- This constraint ensures that the foreign key of table "sales"
-- correctly references the primary key of table "dim_time"

ALTER TABLE sales ADD CONSTRAINT fk3_sales_to_dim_time FOREIGN KEY(fk3_time_id) REFERENCES dim_time(time_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- Alter table to add new constraints required to implement the "customer_fk" relationship

-- This constraint ensures that the foreign key of table "sales"
-- correctly references the primary key of table "dim_customer"

ALTER TABLE sales ADD CONSTRAINT fk4_sales_to_dim_customer FOREIGN KEY(fk4_customer_id) REFERENCES dim_customer(customer_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- Alter table to add new constraints required to implement the "type_fk" relationship

-- This constraint ensures that the foreign key of table "sales"
-- correctly references the primary key of table "dim_type"

ALTER TABLE sales ADD CONSTRAINT fk5_sales_to_dim_type FOREIGN KEY(fk5_type_id) REFERENCES dim_type(type_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- Alter table to add new constraints required to implement the "material_fk" relationship

-- This constraint ensures that the foreign key of table "sales"
-- correctly references the primary key of table "dim_material"

ALTER TABLE sales ADD CONSTRAINT fk6_sales_to_dim_material FOREIGN KEY(fk6_material_id) REFERENCES dim_material(material_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- Alter table to add new constraints required to implement the "category_fk" relationship

-- This constraint ensures that the foreign key of table "sales"
-- correctly references the primary key of table "dim_category"

ALTER TABLE sales ADD CONSTRAINT fk7_sales_to_dim_category FOREIGN KEY(fk7_category_id) REFERENCES dim_category(category_id) ON DELETE RESTRICT ON UPDATE RESTRICT;


--------------------------------------------------------------
-- End of DDL file auto-generation
--------------------------------------------------------------
