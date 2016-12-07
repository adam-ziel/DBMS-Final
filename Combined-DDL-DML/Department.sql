CREATE TABLE "Department" (
	`DepartmentID`	INTEGER,
	`DepartmentName`	TEXT UNIQUE,
	`MajorID`	TEXT,
	PRIMARY KEY(`DepartmentID`)
);

INSERT INTO Department VALUES (3, "Civil Engineering and Technology", "BSCE");
INSERT INTO Department VALUES (2, "Computer Science and Computer Networking", "BCOS");
INSERT INTO Department VALUES (4, "Mechanical Engineering and Technology", "BSME");
INSERT INTO Department VALUES (5, "Electrical Engineering and Technology", "BSEE");
INSERT INTO Department VALUES (6, "Biomedical Engineering", "BMED");
INSERT INTO Department VALUES (7, "Computer Science and Computer Networking", "BSCN");
INSERT INTO Department VALUES (8, "Interdisciplinary Engineering", "BELM");


