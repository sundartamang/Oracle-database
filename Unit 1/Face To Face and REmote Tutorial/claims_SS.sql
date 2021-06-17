DROP table FACT_CLAIM cascade constraints;
DROP table time_dim cascade constraints;
DROP table location_dim cascade constraints;

-- Create a Database table to represent the "FACT_CLAIM" entity.
CREATE TABLE FACT_CLAIM(
	report_id	INTEGER NOT NULL,
	fk1_time_id	INTEGER NOT NULL,
	fk2_location_id	INTEGER NOT NULL,
	total_claim_location	INTEGER,
	-- Specify the PRIMARY KEY constraint for table "FACT_CLAIM".
	-- This indicates which attribute(s) uniquely identify each row of data.
	CONSTRAINT	pk_FACT_CLAIM PRIMARY KEY (report_id)
);

-- Create a Database table to represent the "time_dim" entity.
CREATE TABLE time_dim(
	time_id	INTEGER NOT NULL,
	the_year	INTEGER,
	-- Specify the PRIMARY KEY constraint for table "time_dim".
	-- This indicates which attribute(s) uniquely identify each row of data.
	CONSTRAINT	pk_time_dim PRIMARY KEY (time_id)
);

-- Create a Database table to represent the "location_dim" entity.
CREATE TABLE location_dim(
	location_id	INTEGER NOT NULL,
	state	VARCHAR(25),
	-- Specify the PRIMARY KEY constraint for table "location_dim".
	-- This indicates which attribute(s) uniquely identify each row of data.
	CONSTRAINT	pk_location_dim PRIMARY KEY (location_id)
);

INSERT INTO time_dim VALUES( 1, '2011');
INSERT INTO time_dim VALUES( 2, '2010');
INSERT INTO time_dim VALUES( 3, '2012');
INSERT INTO time_dim VALUES( 4, '1960');

INSERT INTO location_dim VALUES (1, 'Nevada');
INSERT INTO location_dim VALUES (2, 'California');
INSERT INTO location_dim VALUES (3, 'Oregon');
INSERT INTO location_dim VALUES (4, 'Arizona');
INSERT INTO location_dim VALUES (5, 'Not Known');
INSERT INTO location_dim VALUES (6, 'Washington');

INSERT INTO FACT_CLAIM VALUES ('14','3','1','566' );
INSERT INTO FACT_CLAIM VALUES ('15','1','1','385637' );
INSERT INTO FACT_CLAIM VALUES ('16','2','2','1891' );
INSERT INTO FACT_CLAIM VALUES ('17','1','2','1376732' );
INSERT INTO FACT_CLAIM VALUES ('18','2','3','792' );
INSERT INTO FACT_CLAIM VALUES ('19','4','3','309' );
INSERT INTO FACT_CLAIM VALUES ('20','1','3','1125165' );
INSERT INTO FACT_CLAIM VALUES ('21','1','4','720832' );
INSERT INTO FACT_CLAIM VALUES ('22','2','4','996' );
INSERT INTO FACT_CLAIM VALUES ('23','1','5','898' );
INSERT INTO FACT_CLAIM VALUES ('24','1','6','31486' );
INSERT INTO FACT_CLAIM VALUES ('1','2','1','1549' );
INSERT INTO FACT_CLAIM VALUES ('2','3','1','1133' );
INSERT INTO FACT_CLAIM VALUES ('3','1','1','771274' );
INSERT INTO FACT_CLAIM VALUES ('4','2','2','3781' );
INSERT INTO FACT_CLAIM VALUES ('5','1','2','2753464' );
INSERT INTO FACT_CLAIM VALUES ('6','2','3','1584' );
INSERT INTO FACT_CLAIM VALUES ('7','4','3','618' );
INSERT INTO FACT_CLAIM VALUES ('8','1','3','2250329' );
INSERT INTO FACT_CLAIM VALUES ('9','1','5','898' );
INSERT INTO FACT_CLAIM VALUES ('10','1','6','33345' );
