-- H2 2.2.224;
;             
CREATE USER IF NOT EXISTS "SA" SALT '6001a149e03805a2' HASH '74c783ab8df2c4a61b6fdd650326babdff6a8fb3e5438675dc31e4bb29e32ccb' ADMIN;         
CREATE CACHED TABLE "PUBLIC"."EMPLOYEES"(
    "ID" INTEGER GENERATED BY DEFAULT AS IDENTITY(START WITH 1 RESTART WITH 11) NOT NULL,
    "NAME" CHARACTER VARYING(50),
    "LEVEL" CHARACTER VARYING(20),
    "SALARY" DECIMAL(10, 2)
);  
ALTER TABLE "PUBLIC"."EMPLOYEES" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_4" PRIMARY KEY("ID");    
-- 10 +/- SELECT COUNT(*) FROM PUBLIC.EMPLOYEES;              
INSERT INTO "PUBLIC"."EMPLOYEES" VALUES
(1, 'Jon', 'Trainee', 800.00),
(2, 'Jamal', 'Junior', 1200.00),
(3, 'Alex', 'Middle', 2500.00),
(4, 'Stas', 'Senior', 6000.00),
(5, 'Sasha', 'Trainee', 900.00),
(6, 'Max', 'Junior', 1100.00),
(7, 'Oleg', 'Middle', 2800.00),
(8, 'Anton', 'Senior', 5500.00),
(9, 'Anastasia', 'Junior', 1300.00),
(10, 'Lera', 'Middle', 3200.00);      
CREATE CACHED TABLE "PUBLIC"."CLIENTS"(
    "ID" INTEGER GENERATED BY DEFAULT AS IDENTITY(START WITH 1 RESTART WITH 6) NOT NULL,
    "NAME" CHARACTER VARYING(50)
);       
ALTER TABLE "PUBLIC"."CLIENTS" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_5" PRIMARY KEY("ID");      
-- 5 +/- SELECT COUNT(*) FROM PUBLIC.CLIENTS; 
INSERT INTO "PUBLIC"."CLIENTS" VALUES
(1, 'Durov'),
(2, 'Ana'),
(3, 'Sam'),
(4, 'Mem'),
(5, 'Kim');      
CREATE CACHED TABLE "PUBLIC"."PROJECTS"(
    "ID" INTEGER GENERATED BY DEFAULT AS IDENTITY(START WITH 1 RESTART WITH 11) NOT NULL,
    "NAME" CHARACTER VARYING(50),
    "START_DATE" DATE,
    "FINISH_DATE" DATE
);    
ALTER TABLE "PUBLIC"."PROJECTS" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_F" PRIMARY KEY("ID");     
-- 10 +/- SELECT COUNT(*) FROM PUBLIC.PROJECTS;               
INSERT INTO "PUBLIC"."PROJECTS" VALUES
(1, 'Project1', DATE '2023-01-11', DATE '2023-05-11'),
(2, 'Project2', DATE '2023-02-11', DATE '2023-06-11'),
(3, 'Project3', DATE '2023-03-11', DATE '2023-07-11'),
(4, 'Project4', DATE '2023-04-11', DATE '2023-08-11'),
(5, 'Project5', DATE '2023-05-11', DATE '2023-09-11'),
(6, 'Project6', DATE '2023-06-11', DATE '2023-10-11'),
(7, 'Project7', DATE '2023-07-11', DATE '2023-11-11'),
(8, 'Project8', DATE '2023-08-11', DATE '2023-12-11'),
(9, 'Project9', DATE '2023-09-11', DATE '2024-01-11'),
(10, 'Project10', DATE '2023-10-11', DATE '2024-02-11');      
CREATE CACHED TABLE "PUBLIC"."PROJECT_ASSIGNMENTS"(
    "ID" INTEGER GENERATED BY DEFAULT AS IDENTITY(START WITH 1 RESTART WITH 61) NOT NULL,
    "PROJECT_ID" INTEGER,
    "EMPLOYEE_ID" INTEGER
);      
ALTER TABLE "PUBLIC"."PROJECT_ASSIGNMENTS" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_B" PRIMARY KEY("ID");          
-- 60 +/- SELECT COUNT(*) FROM PUBLIC.PROJECT_ASSIGNMENTS;    
INSERT INTO "PUBLIC"."PROJECT_ASSIGNMENTS" VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 5),
(6, 3, 6),
(7, 4, 7),
(8, 4, 8),
(9, 5, 9),
(10, 5, 10),
(11, 6, 1),
(12, 6, 2),
(13, 7, 3),
(14, 7, 4),
(15, 8, 5),
(16, 8, 6),
(17, 9, 7),
(18, 9, 8),
(19, 10, 9),
(20, 10, 10),
(21, 1, 1),
(22, 1, 2),
(23, 2, 3),
(24, 2, 4),
(25, 3, 5),
(26, 3, 6),
(27, 4, 7),
(28, 4, 8),
(29, 5, 9),
(30, 5, 10),
(31, 6, 1),
(32, 6, 2),
(33, 7, 3),
(34, 7, 4),
(35, 8, 5),
(36, 8, 6),
(37, 9, 7),
(38, 9, 8),
(39, 10, 9),
(40, 10, 10),
(41, 1, 1),
(42, 1, 2),
(43, 2, 3),
(44, 2, 4),
(45, 3, 5),
(46, 3, 6),
(47, 4, 7),
(48, 4, 8),
(49, 5, 9),
(50, 5, 10),
(51, 6, 1),
(52, 6, 2),
(53, 7, 3),
(54, 7, 4),
(55, 8, 5),
(56, 8, 6),
(57, 9, 7),
(58, 9, 8),
(59, 10, 9),
(60, 10, 10);              
ALTER TABLE "PUBLIC"."PROJECT_ASSIGNMENTS" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_B0" FOREIGN KEY("PROJECT_ID") REFERENCES "PUBLIC"."PROJECTS"("ID") NOCHECK;    
ALTER TABLE "PUBLIC"."PROJECT_ASSIGNMENTS" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_B04" FOREIGN KEY("EMPLOYEE_ID") REFERENCES "PUBLIC"."EMPLOYEES"("ID") NOCHECK; 
