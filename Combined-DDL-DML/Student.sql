CREATE TABLE `Student` (
	`StudentID`	INTEGER PRIMARY KEY,
	`FName`	TEXT,
	`LName`	TEXT,
	`MajorID`	TEXT,
	FOREIGN KEY(`MajorID`) REFERENCES `Major`(`MajorID`)
);

-- BSCE
INSERT INTO Student VALUES (NULL, "George", "Lucas", "BSCE");

-- BCOS
INSERT INTO Student VALUES (NULL, "Bobby", "Laughlin", "BCOS");
INSERT INTO Student VALUES (NULL, "Anthony", "A", "BCOS");
INSERT INTO Student VALUES (NULL, "Daniel", "Calderon", "BCOS");
INSERT INTO Student VALUES (NULL, "Stephen", "Campion", "BCOS");
INSERT INTO Student VALUES (NULL, "Bethy", "Diakabana", "BCOS");
INSERT INTO Student VALUES (NULL, "Luis Jose", "Bechara Romero", "BCOS");
INSERT INTO Student VALUES (NULL, "Jacob", "Jones", "BCOS");

-- BSCN
INSERT INTO Student VALUES (NULL, "Julie", "Medeiros", "BSCN");

-- BSME
INSERT INTO Student VALUES (NULL, "David", "Lee", "BSME");
INSERT INTO Student VALUES (NULL, "Nick", "Chase", "BSME");
INSERT INTO Student VALUES (NULL, "Bret", "Glendye", "BSME");
INSERT INTO Student VALUES (NUll, "Andy", "Cortio", "BSCE");

-- BELM
INSERT INTO Student VALUES (NULL, "Bachar", "Al Hardy", "BELM");

-- BSEE
INSERT INTO Student VALUES (NULL, "Gregory", "Butterworth", "BSEE");
INSERT INTO Student VALUES (NULL, "Shubh", "Chokshi", "BSEE");
INSERT INTO Student VALUES (NULL, "Lyn", "Carswell", "BSEE");
INSERT INTO Student VALUES (NULL, "Jojo", "J", "BSEE");

-- BSAM
INSERT INTO Student VALUES (NULL, "Abbey", "Jean", "BSAM");
