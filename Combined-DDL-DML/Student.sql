CREATE TABLE "Student" (
	`StudentID`	INTEGER,
	`FName`	TEXT,
	`LName`	TEXT,
	`MajorID`	TEXT,
	PRIMARY KEY(`StudentID`),
	FOREIGN KEY(`MajorID`) REFERENCES Major(MajorID)
);

INSERT INTO Student VALUES (1, "George", "Lucas", "CIVE");
INSERT INTO Student VALUES (2, "Bobby", "Laughlin", "CS");
INSERT INTO Student VALUES (3, "Julie", "Medeiros", "CN");
INSERT INTO Student VALUES (4, "David", "Lee", "ME");
INSERT INTO Student VALUES (5, "Anthony", "A", "CS");
INSERT INTO Student VALUES (6, "Bachar", "Al Hardy", "EM");
INSERT INTO Student VALUES (7, "Gregory", "Butterworth", "EE");
INSERT INTO Student VALUES (8, "Daniel", "Calderon", "CS");
INSERT INTO Student VALUES (9, "Stephen", "Campion", "CS");
INSERT INTO Student VALUES (10, "Nick", "Chase", "ME");
INSERT INTO Student VALUES (11, "Shubh", "Chokshi", "EE");
INSERT INTO Student VALUES (12, "Bethy", "Diakabana", "CS");
INSERT INTO Student VALUES (13, "Bret", "Glendye", "ME");
INSERT INTO Student VALUES (14, "Lyn", "Carswell", "EE");
INSERT INTO Student VALUES (15, "Jojo", "J", "EE");
INSERT INTO Student VALUES (16, "Abbey", "Jean", "AM");
INSERT INTO Student VALUES (17, "Luis Jose", "Bechara Romero", "CS");
INSERT INTO Student VALUES (18, "Jacob", "Jones", "CS");