CREATE TABLE "Student" (
	`StudentID`	INTEGER,
	`FName`	TEXT,
	`LName`	TEXT,
	`MajorID`	TEXT,
	PRIMARY KEY(`StudentID`),
	FOREIGN KEY(`MajorID`) REFERENCES Major(MajorID)
);

INSERT INTO Student VALUES (1, "George", "Lucas", "BSCE");
INSERT INTO Student VALUES (2, "Bobby", "Laughlin", "BCOS");
INSERT INTO Student VALUES (3, "Julie", "Medeiros", "BSCN");
INSERT INTO Student VALUES (4, "David", "Lee", "BSME");
INSERT INTO Student VALUES (5, "Anthony", "A", "BCOS");
INSERT INTO Student VALUES (6, "Bachar", "Al Hardy", "BELM");
INSERT INTO Student VALUES (7, "Gregory", "Butterworth", "BSEE");
INSERT INTO Student VALUES (8, "Daniel", "Calderon", "BCOS");
INSERT INTO Student VALUES (9, "Stephen", "Campion", "BCOS");
INSERT INTO Student VALUES (10, "Nick", "Chase", "BSME");
INSERT INTO Student VALUES (11, "Shubh", "Chokshi", "BSEE");
INSERT INTO Student VALUES (12, "Bethy", "Diakabana", "BCOS");
INSERT INTO Student VALUES (13, "Bret", "Glendye", "BSME");
INSERT INTO Student VALUES (14, "Lyn", "Carswell", "BSEE");
INSERT INTO Student VALUES (15, "Jojo", "J", "BSEE");
INSERT INTO Student VALUES (16, "Abbey", "Jean", "BSAM");
INSERT INTO Student VALUES (17, "Luis Jose", "Bechara Romero", "BCOS");
INSERT INTO Student VALUES (18, "Jacob", "Jones", "BCOS");
