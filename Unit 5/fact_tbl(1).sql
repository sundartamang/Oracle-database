﻿-- Database creation Script
-- Database creation Script

-- Auto-Generated by QSEE-SuperLite (c) 2001-2004 QSEE-Technologies Ltd.

-- Verbose generation: ON

-- note: spaces within table/column names have been replaced by underscores (_)

-- Target DB: SQL2

-- Entity Model :Entity Relationship Diagram

-- To drop the tables generated by this script run -
--   'D:\ADMa_2012-13\ADMa_2012-13 assignment\ss_script_drop.sql'

--------------------------------------------------------------
-- Drop tables --

DROP TABLE FACT_sales;

DROP TABLE dim_product;

DROP TABLE dim_time;

DROP TABLE dim_customer;

DROP SEQUENCE fact_report_seq; --Drop sequence as this is the initialisation of the DW

DROP SEQUENCE dim_time_seq; --Drop sequence as this is the initialisation of the DW




--------------------------------------------------------------
-- Table Creation --

-- Each entity on the model is represented by a table that needs to be created within the Database.
-- Within SQL new tables are created using the CREATE TABLE command.
-- When a table is created its name and its attributes are defined.
-- The values of which are derived from those specified on the model.
-- Certain constraints are sometimes also specified, such as identification of primary keys.

-- Create a Database table to represent the "FACT_sales" entity.
CREATE TABLE FACT_sales(
    report_id    INTEGER NOT NULL,
    no_of_sales    INTEGER,
    top_location    VARCHAR(20),
    time_id    INTEGER NOT NULL,
    product_id    VARCHAR2(10) NOT NULL,
    customer_id    INTEGER NOT NULL,
    -- Specify the PRIMARY KEY constraint for table "FACT_sales".
    -- This indicates which attribute(s) uniquely identify each row of data.
    CONSTRAINT    pk_FACT_sales PRIMARY KEY (report_id)
);

-- Create a Database table to represent the "dim_product" entity.
CREATE TABLE dim_product(
    product_id    VARCHAR2(10) NOT NULL,
    product_desc    VARCHAR(255),
    product_type    VARCHAR(255),
    -- Specify the PRIMARY KEY constraint for table "dim_product".
    -- This indicates which attribute(s) uniquely identify each row of data.
    CONSTRAINT    pk_dim_product PRIMARY KEY (product_id)
);

-- Create a Database table to represent the "dim_time" entity.
CREATE TABLE dim_time(
    time_id    INTEGER NOT NULL,
    year    INTEGER,
    month    INTEGER,
    -- Specify the PRIMARY KEY constraint for table "dim_time".
    -- This indicates which attribute(s) uniquely identify each row of data.
    CONSTRAINT    pk_dim_time PRIMARY KEY (time_id)
);

-- Create a Database table to represent the "dim_customer" entity.
CREATE TABLE dim_customer(
    customer_id    INTEGER NOT NULL,
    customer_name    VARCHAR(255),
    customer_loc    VARCHAR(255),
    -- Specify the PRIMARY KEY constraint for table "dim_customer".
    -- This indicates which attribute(s) uniquely identify each row of data.
    CONSTRAINT    pk_dim_customer PRIMARY KEY (customer_id)
);


--------------------------------------------------------------
-- Alter Tables to add fk constraints --

-- Now all the tables have been created the ALTER TABLE command is used to define some additional
-- constraints.  These typically constrain values of foreign keys to be associated in some way
-- with the primary keys of related tables.  Foreign key constraints can actually be specified
-- when each table is created, but doing so can lead to dependency problems within the script
-- i.e. tables may be referenced before they have been created.  This method is therefore safer.

-- Alter table to add new constraints required to implement the "FACT_sales_dim_time" relationship

-- This constraint ensures that the foreign key of table "FACT_sales"
-- correctly references the primary key of table "dim_time"

ALTER TABLE FACT_sales ADD CONSTRAINT fk1_FACT_sales_to_dim_time FOREIGN KEY(time_id) REFERENCES dim_time(time_id) ;

-- Alter table to add new constraints required to implement the "FACT_sales_dim_product" relationship

-- This constraint ensures that the foreign key of table "FACT_sales"
-- correctly references the primary key of table "dim_product"

ALTER TABLE FACT_sales ADD CONSTRAINT fk2_FACT_sales_to_dim_product FOREIGN KEY(product_id) REFERENCES dim_product(product_id) ;

-- Alter table to add new constraints required to implement the "FACT_sales_dim_customer" relationship

-- This constraint ensures that the foreign key of table "FACT_sales"
-- correctly references the primary key of table "dim_customer"

ALTER TABLE FACT_sales ADD CONSTRAINT fk3_FACT_sales_to_dim_customer FOREIGN KEY(customer_id) REFERENCES dim_customer(customer_id) ;

create sequence fact_report_seq
start with 1
increment by 1
nocache;

create sequence dim_time_seq
start with 1
increment by 1
nocache;



--------------------------------------------------------------
-- End of DDL file auto-generation
--------------------------------------------------------------

insert into dim_customer
    (SELECT customer_ID, concat(First_Name, concat(' ', Last_Name)) as customer_name, country
     FROM Customer
     WHERE concat(First_Name, concat(' ', Last_Name)) not in (select customer_name from dim_customer));

insert into dim_customer
    Values('-1', 'no name required', 'no location required');
    
insert into dim_product
    (SELECT concat('s', ID), Product, product_type
     FROM summary 
        WHERE concat('s', summary.ID)not in (select product_id from dim_product) AND product_type not in (select poduct_type from dim_product));

insert into dim_product
    (SELECT concat('p', product_ID), product_desc
     FROM product
     WHERE concat('p', product.product_ID)not in (select product_id from dim_product) AND product_type not in (select poduct_type from dim_product));
        
insert into dim_product
    Values('-1', 'no product required', '');

INSERT INTO dim_time
VALUES (dim_time_seq.nextval, 2003, 01);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 02);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 03);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 04);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 05);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 06);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 07);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 08);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 09);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 10);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 11);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 12);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), '');
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year)+1 from dim_time), 01);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 02);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 03);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 04);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 05);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 06);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 07);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 08);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 09);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 10);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 11);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 12);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), '');
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year)+1 from dim_time), 01);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 02);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 03);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 04);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 05);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 06);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 07);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 08);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 09);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 10);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 11);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 12);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), '');
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year)+1 from dim_time), 01);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 02);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 03);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 04);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 05);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 06);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 07);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 08);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 09);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 10);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 11);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 12);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), '');
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year)+1 from dim_time), 01);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 02);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 03);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 04);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 05);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 06);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 07);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 08);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 09);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 10);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 11);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 12);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), '');
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year)+1 from dim_time), 01);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 02);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 03);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 04);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 05);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 06);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 07);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 08);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 09);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 10);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 11);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 12);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), '');
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year)+1 from dim_time), 01);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 02);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 03);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 04);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 05);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 06);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 07);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 08);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 09);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 10);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 11);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), 12);
INSERT INTO dim_time
VALUES (dim_time_seq.nextval, (select max(year) from dim_time), '');
INSERT INTO dim_time
VALUES ('-1', '0', '0');

The time dimension (dim_time) was populated so that the dates did not need manually inputting.  When future dates are required to be added then the script is already there.
The next step was to pick which reports were desired to be run.  I chose to look at an overview of what had been sold from 2004 to 2008 by looking at the product type, and to look at how the sale of children’s clothes has changed from 2004-2008.
The data input from both spreadsheet table and torch tables was coded in a script. The script was:
--Total sales per year by product type--
INSERT INTO fact_sales
    (SELECT fact_report_seq.nextval,(summary.y0708 + summary.y0607 + summary.y0506 + summary.y0405 + summary.y0304) as total_sales, '', '-1', dim_product.product_ID, '-1' FROM dim_product inner join summary on dim_product.product_desc = summary.product
        where dim_product.product_id like 's%'); 

--Amount of childrens clothes sold each year--
INSERT INTO Fact_sales
    (SELECT fact_report_seq.nextval, total, '', ttime, '-1', '-1' FROM (Select '', sum(summary.y0304) as total, '', avg(dim_time.time_ID) as ttime, '-1', '-1' FROM dim_time, dim_product inner join summary on dim_product.product_desc = summary.product
        where dim_time.year = '2004' AND dim_time.month is null AND dim_product.product_id like 's%' AND summary.product_type like 'Children'));
INSERT INTO Fact_sales
    (SELECT fact_report_seq.nextval, total, '', ttime, '-1', '-1' FROM (Select '', sum(summary.y0405) as total, '', avg(dim_time.time_ID) as ttime, '-1', '-1' FROM dim_time, dim_product inner join summary on dim_product.product_desc = summary.product
        where dim_time.year = '2005' AND dim_time.month is null AND dim_product.product_id like 's%' AND summary.product_type like 'Children'));
INSERT INTO Fact_sales
    (SELECT fact_report_seq.nextval, total, '', ttime, '-1', '-1' FROM (Select '', sum(summary.y0506) as total, '', avg(dim_time.time_ID) as ttime, '-1', '-1' FROM dim_time, dim_product inner join summary on dim_product.product_desc = summary.product
        where dim_time.year = '2006' AND dim_time.month is null AND dim_product.product_id like 's%' AND summary.product_type like 'Children'));
INSERT INTO Fact_sales
    (SELECT fact_report_seq.nextval, total, '', ttime, '-1', '-1' FROM (Select '', sum(summary.y0607) as total, '', avg(dim_time.time_ID) as ttime, '-1', '-1' FROM dim_time, dim_product inner join summary on dim_product.product_desc = summary.product
        where dim_time.year = '2007' AND dim_time.month is null AND dim_product.product_id like 's%' AND summary.product_type like 'Children'));
INSERT INTO Fact_sales
    (SELECT fact_report_seq.nextval, total, '', ttime, '-1', '-1' FROM (Select '', sum(summary.y0708) as total, '', avg(dim_time.time_ID) as ttime, '-1', '-1' FROM dim_time, dim_product inner join summary on dim_product.product_desc = summary.product
        where dim_time.year = '2008' AND dim_time.month is null AND dim_product.product_id like 's%' AND summary.product_type like 'Children'));