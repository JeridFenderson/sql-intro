CREATE TABLE "Employees"("FullName" VARCHAR(23),
 "SALARY" INT,
 "JobPosition" TEXT,
 "PhoneExtension" INT,
 "IsPartTime" bool);



INSERT INTO "Employees" ("FullName", "SALARY", "JobPosition",
 "PhoneExtension", "IsPartTime") VALUES ('Lazy Larry', 300, 'Mid-level Developer
 ', 2662, true);

INSERT INTO "Employees" ("FullName", "SALARY", "JobPosition",
  "PhoneExtension", "IsPartTime") VALUES ('Wendy Redchef', 325, 'cook', 1234, false);

INSERT INTO "Employees" ("FullName", "SALARY", "JobPosition",
  "PhoneExtension", "IsPartTime") VALUES ('Ronald McDonald', 325, 'cook', 1235,
 false);

INSERT INTO "Employees" ("FullName", "SALARY", "JobPosition",
  "PhoneExtension", "IsPartTime") VALUES ('Bowser Koopa', 600, 'CEO', 0,
  false);



SELECT * FROM "Employees";



SELECT "FullName", "PhoneExtension" FROM "Employees" WHERE "IsP
 artTime" = false;



INSERT INTO "Employees" ("FullName", "SALARY", "JobPosition",
 "PhoneExtension", "IsPartTime") VALUES ('Magic Mike', 450, 'Software Developer
 ', 7890, true);



UPDATE "Employees" SET "SALARY" = 500  WHERE "JobPosition" = 'c
 ook';



DELETE FROM "Employees" WHERE "FullName" = 'Lazy Larry';



ALTER TABLE "Employees" ADD COLUMN "ParkingSpot" VARCHAR(10);



ALTER TABLE "Employees" ADD COLUMN "Id" SERIAL PRIMARY KEY;