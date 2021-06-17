-- To create stagging table for flights
	create table stage_flight
	(
        flight_key number(5),
	    tail_number varchar2(30),
	    flight_number varchar(30),
	    cancelled number(10),
	    diverted number(10),
	    origin_airport varchar2(50),
	    destination_airport varchar2(50),
        customer_id number(10),
        the_year number(4),
        the_month number(2),
        the_day number(2),
	    db_source varchar2(30),
        constraint pk_stagging_flight primary key (flight_key)
	);
	
	
	-- To create stagging table for customer
	create table stage_customer
	(
        customer_key number(5),
        customer_id number(10),
	    customer_type varchar2(50),
	    customer_zip_code varchar2(50),
	    business varchar2(30),
	    customer_miles varchar(100),
	    db_source varchar2(30),
        constraint pk_stagging_customer primary key (customer_key)
	);
	
	
	-- To create stagging table for complaint
	create table stage_complaint
	(
        complaint_key number(5),
        complaint_id number(10),
	    complaint_type varchar2(50),
	    complaint_description  varchar2(100),
	    complaint_status varchar2(50),
	    compensation_amnt varchar2(30),
	    allocated_to varchar(100),
        customer_id number(10),
        flight_number number(10),
        the_year number(4),
        the_month number(2),
        the_day number(2),
	    db_source varchar2(30),
        constraint pk_stagging_complaint primary key (complaint_key)
	);


-- Sequences
create sequence seqe_stageflights start with 1 increment by 1;
create sequence seqe_stagecomplaints start with 1 increment by 1;
create sequence seqe_stagecustomers start with 1 increment by 1;



--Triger for stage tables
CREATE OR REPLACE TRIGGER tri_stage_flight
BEFORE INSERT ON stage_flight
FOR EACH ROW
BEGIN
   :new.flight_key := seqe_stageflights.NEXTVAL;
END;
/


CREATE OR REPLACE TRIGGER tri_complaint
BEFORE INSERT ON stage_complaint
FOR EACH ROW
BEGIN
   :new.complaint_key := seqe_stagecomplaints.NEXTVAL;
END;
/


CREATE OR REPLACE TRIGGER tri_customer
BEFORE INSERT ON stage_customer
FOR EACH ROW
BEGIN
   :new.customer_key := seqe_stagecustomers.NEXTVAL;
END;
/
