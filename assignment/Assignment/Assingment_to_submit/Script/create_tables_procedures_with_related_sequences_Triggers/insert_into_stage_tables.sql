-- procedure for stage_flight table
create or replace procedure pr_stage_flight as
begin

merge into STAGE_FLIGHT d
using FLIGHT_2017 s
on (s.flight_number = d.flight_number and d.DB_SOURCE='FLIGHT_2017')
when matched then
    update  set
        TAIL_NUMBER = s.tail_number,
        CANCELLED	= s.cancelled,
        DIVERTED	= s.diverted,	
		ORIGIN_AIRPORT	= s.origin_airport,	
		DESTINATION_AIRPORT	= s.destination_airport,
        CUSTOMER_ID = s.FK_CUSTOMER_ID,
        THE_YEAR = s.year
when not matched then
    insert (FLIGHT_NUMBER, TAIL_NUMBER, CANCELLED, DIVERTED, ORIGIN_AIRPORT, DESTINATION_AIRPORT, CUSTOMER_ID, THE_YEAR, THE_MONTH, THE_DAY, DB_SOURCE) 
    values (s.flight_number, s.tail_number,  s.cancelled, s.diverted, s.origin_airport, s.destination_airport,s.FK_CUSTOMER_ID, s.year, null, null, 'FLIGHT_2017');

merge into STAGE_FLIGHT d
using FLIGHT_2018 s
on (s.flight_number = d.flight_number and d.DB_SOURCE='FLIGHT_2018')
when matched then
    update  set
        TAIL_NUMBER = s.tail_number,
        CANCELLED	= s.cancelled,
        DIVERTED	= s.diverted,	
		ORIGIN_AIRPORT	= s.origin_airport,	
		DESTINATION_AIRPORT	= s.destination_airport,
        CUSTOMER_ID = s.FK_CUSTOMER_ID,
        THE_YEAR = s.year,
        THE_MONTH = s.month,
        THE_DAY = s.day
when not matched then
    insert (FLIGHT_NUMBER, TAIL_NUMBER, CANCELLED, DIVERTED, ORIGIN_AIRPORT, DESTINATION_AIRPORT, CUSTOMER_ID, THE_YEAR, THE_MONTH, THE_DAY, DB_SOURCE) 
    values (s.flight_number, s.tail_number,  s.cancelled, s.diverted, s.origin_airport, s.destination_airport, s.FK_CUSTOMER_ID, s.year, s.month, s.day, 'FLIGHT_2018');

merge into STAGE_FLIGHT d
using FLYU_FLIGHTS s
on (s.flight_number = d.flight_number and d.DB_SOURCE='FLYU_FLIGHTS')
when matched then
    update  set
        TAIL_NUMBER = s.tail_number,
        CANCELLED	= s.cancelled,
        DIVERTED	= s.diverted,	
		ORIGIN_AIRPORT	= s.origin_airport,	
		DESTINATION_AIRPORT	= s.destination_airport,
        CUSTOMER_ID = s.FK_CUSTOMER_ID,
        THE_YEAR = s.flight_the_year,
        THE_MONTH = s.the_month,
        THE_DAY = s.the_day
when not matched then
    insert (FLIGHT_NUMBER, TAIL_NUMBER, CANCELLED, DIVERTED, ORIGIN_AIRPORT, DESTINATION_AIRPORT, CUSTOMER_ID, THE_YEAR, THE_MONTH, THE_DAY, DB_SOURCE) 
    values (s.flight_number, s.tail_number,  s.cancelled, s.diverted, s.origin_airport, s.destination_airport, s.FK_CUSTOMER_ID, s.flight_the_year,
     s.the_month, s.the_day, 'FLYU_FLIGHTS');
end;
/

-- procedure for stage_cutomer table
create or replace procedure pr_stage_customer as
begin
merge into stage_customer d
using customer cu
on (cu.customer_id = d.customer_id)
when matched then
    update  set
        CUSTOMER_TYPE = cu.customer_type,
        CUSTOMER_ZIP_CODE	= cu.customer_zip_code,
        BUSINESS	= cu.business,	
		CUSTOMER_MILES	= cu.customer_miles,	
		DB_SOURCE = 'customer'
when not matched then
    insert (CUSTOMER_ID, CUSTOMER_TYPE, CUSTOMER_ZIP_CODE, BUSINESS, CUSTOMER_MILES, DB_SOURCE) 
    values (cu.customer_id, cu.customer_type, cu.customer_zip_code,  cu.business, cu.customer_miles, 'customer');
end;
/

-- procedure for stage_complaint table
create or replace procedure pr_stage_complaint as
begin
merge into stage_complaint d
using COMPLAINT cmt
on (cmt.COMPLAINT_ID = d.COMPLAINT_ID)
when matched then
    update  set
        COMPLAINT_TYPE = cmt.complaint_type,
        COMPLAINT_DESCRIPTION	= cmt.complaint_description,
        COMPLAINT_STATUS	= cmt.complaint_status,	
		COMPENSATION_AMNT	= cmt.compensation_amnt,
        ALLOCATED_TO = cmt.allocated_to,
        CUSTOMER_ID = cmt.CUSTOMER_ID,
        FLIGHT_NUMBER = cmt.FLIGHT_ID_NO,
        THE_YEAR = cmt.THE_YEAR,
        THE_MONTH = cmt.THE_MONTH,
        THE_DAY = cmt.THE_DAY,
		DB_SOURCE = 'COMPLAINT'
when not matched then
    insert (COMPLAINT_ID, COMPLAINT_TYPE, COMPLAINT_DESCRIPTION, COMPLAINT_STATUS, COMPENSATION_AMNT, ALLOCATED_TO, CUSTOMER_ID, FLIGHT_NUMBER,
     THE_YEAR, THE_MONTH, THE_DAY,  DB_SOURCE) 
    values (cmt.complaint_id, cmt.complaint_type, cmt.complaint_description, cmt.complaint_status, cmt.compensation_amnt, cmt.allocated_to,
     cmt.CUSTOMER_ID, cmt.FLIGHT_ID_NO, cmt.THE_YEAR, cmt.THE_MONTH, cmt.THE_DAY, 'COMPLAINT');
end;
