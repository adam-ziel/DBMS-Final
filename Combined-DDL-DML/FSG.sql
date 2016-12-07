CREATE TABLE "FSG" (
	`FSGID`	INTEGER,
	`Weekday`	TEXT,
	`StartTime`	INTEGER,
	`EndTime`	INTEGER,
	`Building`	TEXT,
	`RoomNumber`	INTEGER,
	`FacultyID`	TEXT,
	`StudentLeader`	TEXT,
	`ClassID`	TEXT,
	PRIMARY KEY(`FSGID`),
	FOREIGN KEY(`FacultyID`) REFERENCES Faculty(FacultyID),
	FOREIGN KEY(`StudentLeader`) REFERENCES `Student`(`StudentID`),
	FOREIGN KEY(`ClassID`) REFERENCES `Class`(`ClassID`)
);

INSERT INTO FSG VALUES (1, "Wednesday", 1800, 2000, "Wentworth Hall", 214, 4, 3, "COMP-1000");
INSERT INTO FSG VALUES (2, "Thursday", 1800, 2000, "Wentworth Hall", 214, 4, 3, "COMP-1000");