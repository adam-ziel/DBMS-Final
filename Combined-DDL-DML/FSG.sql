CREATE TABLE "FSG" (
	`FSGID`	INTEGER,
	`Weekday`	TEXT,
	`StartTime`	INTEGER,
	`EndTime`	INTEGER,
	`Building`	TEXT,
	`RoomNumber`	INTEGER,
	`FacultyID`	INTEGER,
	`StudentLeader`	INTEGER,
	`ClassID`	TEXT,
	PRIMARY KEY(`FSGID`),
	FOREIGN KEY(`FacultyID`) REFERENCES `Faculty`(`FacultyID`),
	FOREIGN KEY(`StudentLeader`) REFERENCES `Student`(`StudentID`),
	FOREIGN KEY(`ClassID`) REFERENCES `Class`(`ClassID`)
);

INSERT INTO FSG VALUES (1, "Wednesday", 1800, 2000, "Wentworth Hall", 214, 4, 3, "COMP-1000");
INSERT INTO FSG VALUES (2, "Thursday", 1800, 2000, "Wentworth Hall", 214, 4, 3, "COMP-1000");
INSERT INTO FSG VALUES (3, "Monday", 1800, 2000, "Ira Allen", 203, 5, 2, "COMP-1100");
INSERT INTO FSG VALUES (4, "Tuesday", 1800, 2000, "Ira Allen", 203, 4, 4, "MECH-3100");
INSERT INTO FSG VALUES (5, "Friday", 1800, 2000, "Ira Allen", 203, 20, 5, "CIVE-3000");
INSERT INTO FSG VALUES (6, "Monday", 1800, 2000, "Ira Allen", 203, 8, 6, "ELEC-2299");
INSERT INTO FSG VALUES (7, "Tuesday", 1500, 1700, "Wentworth Hall", 214, 13, 2, "CIVE-2200");
INSERT INTO FSG VALUES (8, "Wednesday", 1500, 1700, "Wentworth Hall", 214, 15, 2, "CIVE-8200");
