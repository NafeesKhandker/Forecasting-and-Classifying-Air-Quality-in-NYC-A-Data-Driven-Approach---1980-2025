DROP TABLE IF EXISTS DAILYAQI;
CREATE TABLE DAILYAQI(
	State_Name VARCHAR(50),
    County_Name VARCHAR(50),
    State_Code VARCHAR(50), 
    County_Code VARCHAR(50),
    Obs_Date DATE,
    AQI VARCHAR(50),
    Category VARCHAR(50),
    Defining_Parameter VARCHAR(50), 
    Defining_Site VARCHAR(50), 
    No_of_Sites_Reporting INT
    );

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/daily_aqi_by_county_2025.csv'
INTO TABLE DAILYAQI
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;