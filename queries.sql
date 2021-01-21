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




CREATE TABLE "Departments" ("Id" SERIAL PRIMARY KEY, "Departmen
 tName" text, "Building" text);



 ALTER TABLE "Employees" ADD COLUMN "DepartmentId" INTEGER NULL
 REFERENCES "Departments" ("Id");



 CREATE TABLE "Products" ("Id" SERIAL PRIMARY KEY, "Price" MONEY
 , "Name" TEXT, "Description" TEXT, "QuantityInStock" INT);



 CREATE TABLE "Orders" ("Id" SERIAL PRIMARY KEY, "OrderNumber" T
 EXT, "DatePlaced" TIMESTAMP, "Email" TEXT);



 CREATE TABLE "ProductOrders" ("Id" SERIAL PRIMARY KEY, "Product
 Id" INTEGER NULL REFERENCES "Products" ("Id"), "OrderId" INTEGER NULL REFERENCE
 S "Orders" ("Id"), "OrderQuantity" INT);



 INSERT INTO "Departments" ("DepartmentName", "Building") VALUES
 ('Development', 'Main'), ('Marketing', 'North');



 INSERT INTO "Employees" ("FullName", "SALARY", "JobPosition", "
 PhoneExtension", "IsPartTime", "DepartmentId") VALUES ('Tim Smith', 40000, 'Pro
 grammer', 123, false, 1), ('Barbara Ramsey', '80000', 'Manager', 234, false, 1)
 , ('Tom Jones', 32000, 'Admin', 456, true, 2);




 INSERT INTO "Products" ("Price", "Name", "Description", "Quanti
 tyInStock") VALUES (12.45, 'Widget', 'The Original Widget', 100), (99.99, 'Flow
 bee', 'Perfect for haircuts', 3);



INSERT INTO "Orders" ("OrderNumber", "DatePlaced", "Email") VAL
 UES ('X529', '2020-01-01 16:55:00', 'person@example.com');



 INSERT INTO "ProductOrders" ("OrderQuantity", "ProductId", "Ord
 erId") VALUES (3, 1, 1), (2, 2, 1);



SELECT * FROM "Employees" JOIN "Departments" ON "Employees"."De
 partmentId" = "Departments"."Id" WHERE "Departments"."Building" = 'North Side';



SELECT * FROM "Employees" JOIN "Departments" ON "Employees"."De
 partmentId" = "Departments"."Id" WHERE "Departments"."Building" = 'East Side';



SELECT * FROM "Employees" JOIN "Departments" ON "Employees"."De
 partmentId" = "Departments"."Id" WHERE "Departments"."Building" = 'Main';



SELECT * FROM "Orders" JOIN "ProductOrders" ON "ProductOrders"."OrderId" = "Orders"."Id"
 JOIN "Products" ON "Products"."Id" = "ProductOrders"."ProductId" WHERE "ProductOrders"."OrderQuantity" = 2;



SELECT "ProductOrders"."OrderQuantity" FROM "Orders" JOIN "Prod
 uctOrders" ON "ProductOrders"."OrderId" = "Orders"."Id"
 JOIN "Products" ON "Products"."Id" = "ProductOrders"."ProductId" WHERE "Product
 s"."Name" = 'Flowbee' AND "Orders"."OrderNumber" = 'X529';
