-- transformation table for flight
create table trans_flight as select *from stage_flight where 1=0;

-- transformation table for complaint
create table trans_complaint as select *from stage_complaint where 1=0;

-- transformation table for customer 
create table trans_customer as select *from stage_customer where 1=0;
