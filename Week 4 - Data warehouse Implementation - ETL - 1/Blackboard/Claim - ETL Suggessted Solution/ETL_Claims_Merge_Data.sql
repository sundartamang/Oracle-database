-- Extract just the data we need for report no_of_claims per year per location

-- explore
DESC S0_DATASET1
SELECT CUSTOMER, STATE, EFFECTIVE_TO_DATE, TOTAL_CLAIM_AMOUNT FROM S0_DATASET1;

DESC S0_DATASET2;
SELECT CUSTOMER, STATE, EFFECTIVE_TO_DATE, TOTAL_CLAIM_AMOUNT FROM S0_DATASET2;

-- put all into one table
-- the data columns are related so we can stack the data on top of each other
-- sometimes we would put it alongside - so many column, or bring over separate datasets
DROP TABLE S1_STAGEAREA;
CREATE TABLE S1_STAGEAREA AS SELECT CUSTOMER, STATE, EFFECTIVE_TO_DATE, TOTAL_CLAIM_AMOUNT FROM S0_DATASET1;

-- I'm going to add a column to show where the data has come from
ALTER TABLE S1_STAGEAREA 
ADD DATASOURCE VARCHAR2(5);
UPDATE S1_STAGEAREA SET DATASOURCE = 'DS1';

INSERT INTO  S1_STAGEAREA (SELECT CUSTOMER, STATE, EFFECTIVE_TO_DATE, TOTAL_CLAIM_AMOUNT, 'DS2' FROM S0_DATASET2);
