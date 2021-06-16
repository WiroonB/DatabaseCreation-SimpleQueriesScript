/*

Complete the exercise by creating a single MySQL script that when executed accomplishes the following tasks:

1. Creates the usstrikecommand database as defined 
   in the schema on Slide 3.
2. Populates the usstrikecommand database using external data file 
   provided.
 
Load all data into tables using ‘source’ command in your scripts…
DO NOT COPY INSERT STATEMENTS INTO YOUR SCRIPT

*/


DROP DATABASE IF EXISTS usstrikecomman;
CREATE DATABASE IF NOT EXISTS usstrikecommand;
USE usstrikecommand;


CREATE TABLE USBomber(
Designation VARCHAR(25),
BRole VARCHAR(25) NOT NULL DEFAULT 'Strategic Bomber',
InService INT NOT NULL,
CONSTRAINT pk_usb PRIMARY KEY(Designation)
);



CREATE TABLE bomber_general(
Bomber VARCHAR(25),
Manufacturer VARCHAR(25) NOT NULL DEFAULT 'Boeing',
UnitCost INT NOT NULL,
Description VARCHAR(300) NOT NULL,
CONSTRAINT pk_bg PRIMARY KEY(Bomber),
CONSTRAINT fk_bg FOREIGN KEY(Bomber) REFERENCES USBomber(Designation)
);


CREATE TABLE bomber_units(
UnitName VARCHAR(25),
B_Type ENUM('B1B','B2','B52H') NOT NULL,
BCount INT NOT NULL,
CONSTRAINT pk_bu PRIMARY KEY(UnitName)
);



CREATE TABLE bomber_inventory(
Bomber_N VARCHAR(25),
B_Type ENUM('B1B','B2','B52H') NOT NULL,
CONSTRAINT pk_bi PRIMARY KEY(Bomber_N)
);



CREATE TABLE performance(
Bmbr VARCHAR(25),
MaxSpeed INT NOT NULL,
OpRange INT NOT NULL,
OpRadius INT NOT NULL,
OpCeiling INT NOT NULL,
ClimbRate INT NOT NULL,
CONSTRAINT pk_prf PRIMARY KEY(Bmbr),
CONSTRAINT fk_prf FOREIGN KEY(Bmbr) REFERENCES USBomber(Designation)
);



CREATE TABLE armament(
Bmbr VARCHAR(25),
InternalBays INT NOT NULL DEFAULT 3,
Hardpoints INT NOT NULL,
CONSTRAINT pk_arm PRIMARY KEY(Bmbr),
CONSTRAINT fk_arm FOREIGN KEY(Bmbr) REFERENCES USBomber(Designation)
);



CREATE TABLE avionics(
Bmbr VARCHAR(25),
Radar VARCHAR(25) NOT NULL,
RadarWarning VARCHAR(25) NOT NULL,
Defense VARCHAR(25) NOT NULL,
Targeting VARCHAR(25) NOT NULL,
CONSTRAINT pk_av PRIMARY KEY(Bmbr),
CONSTRAINT fk_av FOREIGN KEY(Bmbr) REFERENCES USBomber(Designation)
);



CREATE TABLE characteristics(
B_Type VARCHAR(25),
Crew INT NOT NULL DEFAULT 3,
Payload INT NOT NULL,
Length DECIMAL(10,2) NOT NULL,
WingSpan DECIMAL(10,2) NOT NULL,
Height DECIMAL(10,2) NOT NULL,
CONSTRAINT pk_char PRIMARY KEY(B_Type),
CONSTRAINT fk_char FOREIGN KEY(B_Type) REFERENCES bomber_general(Bomber)
);



CREATE TABLE powerplant(
B_Type VARCHAR(25),
Engines INT NOT NULL DEFAULT 2,
EngineType VARCHAR(50) NOT NULL,
MaxThrust INT NOT NULL,
CONSTRAINT pk_pp PRIMARY KEY(B_Type),
CONSTRAINT fk_pp FOREIGN KEY(B_Type) REFERENCES bomber_general(Bomber)
);

-----------------------------------------------------------------------

/*
Q1:  What is the total cost (in millions of dollars) of all 
B1B bombers assigned to the Ellsworth unit.
*/

SELECT BCount INTO @A FROM bomber_units WHERE UnitName = 'Ellsworth';
SELECT UnitCost INTO @B FROM bomber_general WHERE Bomber = 'B1B';
SET @C = (@A * @B) / 1000000;
SELECT CONCAT_WS(' ','The total cost of all B1B bombers at Ellsworth AFB is ', @C,' million dollars') AS 'Query 1';


/*
Q2:  How long does it take a B1B, 
flying at its maximum speed, to reach its operational range.
*/


SELECT OpRange INTO @D FROM performance WHERE Bmbr = 'B1B';
SELECT MaxSpeed INTO @X FROM performance WHERE Bmbr = 'B1B';
SET @F = @D / @X;
SELECT CONCAT_WS(' ','The time required for a B1B to fly to its Operational Range ', @F,' hours') AS 'Query 2';


/*
Q3:  How long does it take a B2, 
flying at half of its maximum speed, to reach a target 2,000 miles away.
*/


SET @G = 2000;
SELECT MaxSpeed INTO @H FROM performance WHERE Bmbr = 'B2';
SET @K = @G / (@H / 2);
SELECT CONCAT_WS(' ','The time required the B2 to fly to a target 2,000 miles away is ', @K,' hours') AS 'Query 3';


/*
Q4:  What is the difference (in millions of dollars) 
between the total cost of all B1B bombers and the total cost of all B2 bombers.
*/


SELECT UnitCost INTO @B1Cost FROM bomber_general WHERE Bomber = 'B1B';
SELECT UnitCost INTO @B2Cost FROM bomber_general WHERE Bomber = 'B2';
SELECT COUNT(*) INTO @B1Count FROM bomber_inventory WHERE B_Type = 'B1B';
SELECT COUNT(*) INTO @B2Count FROM bomber_inventory WHERE B_Type = 'B2';
SET @DIF = (@B1Cost * @B1Count) - (@B2Cost * @B2Count);
SELECT CONCAT_WS(' ','The difference between total B1B and B2 costs is ', @DIF,' dollars') AS 'Query 4';