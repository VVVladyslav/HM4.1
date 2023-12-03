-- H2 2.2.224;
;             
CREATE USER IF NOT EXISTS "SA" SALT '6001a149e03805a2' HASH '74c783ab8df2c4a61b6fdd650326babdff6a8fb3e5438675dc31e4bb29e32ccb' ADMIN;         
CREATE CACHED TABLE "PUBLIC"."PROJECT"(
    "PROJECT_ID" INTEGER NOT NULL,
    "PROJECT_NAME" CHARACTER VARYING(255),
    "DURATION_MONTHS" INTEGER
);    
ALTER TABLE "PUBLIC"."PROJECT" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_1" PRIMARY KEY("PROJECT_ID");              
-- 2 +/- SELECT COUNT(*) FROM PUBLIC.PROJECT; 
INSERT INTO "PUBLIC"."PROJECT" VALUES
(1, 'Project A', 17),
(2, 'Project B', 10);           
CREATE CACHED TABLE "PUBLIC"."EMPLOYEE"(
    "EMPLOYEE_ID" INTEGER NOT NULL,
    "PROJECT_ID" INTEGER,
    "EMPLOYEE_NAME" CHARACTER VARYING(255),
    "SALARY" DECIMAL(10, 2)
);        
ALTER TABLE "PUBLIC"."EMPLOYEE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_7" PRIMARY KEY("EMPLOYEE_ID");            
-- 4 +/- SELECT COUNT(*) FROM PUBLIC.EMPLOYEE;
INSERT INTO "PUBLIC"."EMPLOYEE" VALUES
(1, 1, 'Max', 1000.00),
(2, 1, 'Joe', 1500.00),
(3, 2, 'Alice', 1200.00),
(4, 2, 'Bob', 1800.00);  
ALTER TABLE "PUBLIC"."EMPLOYEE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_75" FOREIGN KEY("PROJECT_ID") REFERENCES "PUBLIC"."PROJECT"("PROJECT_ID") NOCHECK;        
