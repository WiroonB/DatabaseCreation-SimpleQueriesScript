/*
CEX-11 DATA usstrikecommand Database
IS664 DATABASE PROGRAMMING
CREATED BY Gene Locklear
*/

SELECT 'Transferring to Data Population Script' AS MSG;

USE usstrikecommand;

INSERT INTO USBomber (Designation, InService) VALUES('B1B',100);
INSERT INTO USBomber (Designation, InService) VALUES('B2',20);

INSERT INTO bomber_general (Bomber, UnitCost, Description) VALUES('B1B',400000000,'is a supersonic variable-sweep wing, heavy bomber used by the United States Air Force');
INSERT INTO bomber_general (Bomber, UnitCost, Description) VALUES('B2',737000000,'is a subsonic flying-wing, heavy bomber used by the United States Air Force');

INSERT INTO bomber_units VALUES('Ellsworth','B1B',24);
INSERT INTO bomber_units VALUES('MT Home','B1B',6);
INSERT INTO bomber_units VALUES('McConnell','B1B',8);
INSERT INTO bomber_units VALUES('Dyess','B1B',30);
INSERT INTO bomber_units VALUES('Robins','B1B',8);
INSERT INTO bomber_units VALUES('Whiteman','B2',20);

INSERT INTO bomber_inventory VALUES('B1-001','B1B');
INSERT INTO bomber_inventory VALUES('B1-002','B1B');
INSERT INTO bomber_inventory VALUES('B1-003','B1B');
INSERT INTO bomber_inventory VALUES('B1-004','B1B');
INSERT INTO bomber_inventory VALUES('B1-005','B1B');
INSERT INTO bomber_inventory VALUES('B1-006','B1B');
INSERT INTO bomber_inventory VALUES('B1-007','B1B');

INSERT INTO bomber_inventory VALUES('B1-011','B1B');
INSERT INTO bomber_inventory VALUES('B1-012','B1B');
INSERT INTO bomber_inventory VALUES('B1-013','B1B');
INSERT INTO bomber_inventory VALUES('B1-014','B1B');
INSERT INTO bomber_inventory VALUES('B1-015','B1B');
INSERT INTO bomber_inventory VALUES('B1-016','B1B');
INSERT INTO bomber_inventory VALUES('B1-017','B1B');

INSERT INTO bomber_inventory VALUES('B1-021','B1B');
INSERT INTO bomber_inventory VALUES('B1-022','B1B');
INSERT INTO bomber_inventory VALUES('B1-023','B1B');
INSERT INTO bomber_inventory VALUES('B1-024','B1B');
INSERT INTO bomber_inventory VALUES('B1-025','B1B');
INSERT INTO bomber_inventory VALUES('B1-026','B1B');
INSERT INTO bomber_inventory VALUES('B1-027','B1B');

INSERT INTO bomber_inventory VALUES('B1-031','B1B');
INSERT INTO bomber_inventory VALUES('B1-032','B1B');
INSERT INTO bomber_inventory VALUES('B1-033','B1B');
INSERT INTO bomber_inventory VALUES('B1-034','B1B');
INSERT INTO bomber_inventory VALUES('B1-035','B1B');
INSERT INTO bomber_inventory VALUES('B1-036','B1B');
INSERT INTO bomber_inventory VALUES('B1-037','B1B');

INSERT INTO bomber_inventory VALUES('B1-041','B1B');
INSERT INTO bomber_inventory VALUES('B1-042','B1B');
INSERT INTO bomber_inventory VALUES('B1-043','B1B');
INSERT INTO bomber_inventory VALUES('B1-044','B1B');
INSERT INTO bomber_inventory VALUES('B1-045','B1B');
INSERT INTO bomber_inventory VALUES('B1-046','B1B');
INSERT INTO bomber_inventory VALUES('B1-047','B1B');

INSERT INTO bomber_inventory VALUES('B1-051','B1B');
INSERT INTO bomber_inventory VALUES('B1-052','B1B');
INSERT INTO bomber_inventory VALUES('B1-053','B1B');
INSERT INTO bomber_inventory VALUES('B1-054','B1B');
INSERT INTO bomber_inventory VALUES('B1-055','B1B');
INSERT INTO bomber_inventory VALUES('B1-056','B1B');
INSERT INTO bomber_inventory VALUES('B1-057','B1B');

INSERT INTO bomber_inventory VALUES('B2-001','B2');
INSERT INTO bomber_inventory VALUES('B2-002','B2');
INSERT INTO bomber_inventory VALUES('B2-003','B2');
INSERT INTO bomber_inventory VALUES('B2-004','B2');
INSERT INTO bomber_inventory VALUES('B2-005','B2');
INSERT INTO bomber_inventory VALUES('B2-006','B2');
INSERT INTO bomber_inventory VALUES('B2-007','B2');
INSERT INTO bomber_inventory VALUES('B2-008','B2');
INSERT INTO bomber_inventory VALUES('B2-009','B2');
INSERT INTO bomber_inventory VALUES('B2-010','B2');

INSERT INTO bomber_inventory VALUES('B2-011','B2');
INSERT INTO bomber_inventory VALUES('B2-012','B2');
INSERT INTO bomber_inventory VALUES('B2-013','B2');
INSERT INTO bomber_inventory VALUES('B2-014','B2');
INSERT INTO bomber_inventory VALUES('B2-015','B2');
INSERT INTO bomber_inventory VALUES('B2-016','B2');
INSERT INTO bomber_inventory VALUES('B2-017','B2');
INSERT INTO bomber_inventory VALUES('B2-018','B2');
INSERT INTO bomber_inventory VALUES('B2-019','B2');
INSERT INTO bomber_inventory VALUES('B2-020','B2');


INSERT INTO performance VALUES('B1B',830,5100,2993,60000,5678);
INSERT INTO performance VALUES('B2',630,6900,3200,50000,3600);

INSERT INTO armament (Bmbr,Hardpoints) VALUES('B1B',6);
INSERT INTO armament (Bmbr,Hardpoints) VALUES('B2',2);

INSERT INTO avionics VALUES('B1B','ANALQ161','ANAPQ164','ANALQ184','ANAAQ33');
INSERT INTO avionics VALUES('B2','ANALQ181','ANAPQ164','ANALQ184','ANAAQ33');

INSERT INTO characteristics (B_Type,Payload,Length,WingSpan,Height) VALUES('B1B',125000,44.5,42.0,10.4);
INSERT INTO characteristics (B_Type,Payload,Length,WingSpan,Height) VALUES('B2',40000,69.0,172,17.0);

INSERT INTO powerplant (B_Type,EngineType,MaxThrust) VALUES('B1B','F101 TURBOFANS',30780);
INSERT INTO powerplant (B_Type,EngineType,MaxThrust) VALUES('B2','F118 TURBOFANS',34600);

SELECT 'DATA POPULATION COMPLETED' AS 'FINAL SCRIPT MSG';





