CREATE TABLE "FSG" (
	`FSGID`	INTEGER,
	`Weekday`	TEXT,
	`WeekdayId`	INTEGER,
	`StartTime`	INTEGER,
	`EndTime`	INTEGER,
	`StartTime_Str`	TEXT,
	`EndTime_Str`	TEXT,
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

INSERT INTO FSG VALUES (1, "Wednesday", 3, 1800, 2000, "6:00 PM", "8:00 PM", "Wentworth Hall", 214, 44, 3, "COMP-1000");
INSERT INTO FSG VALUES (2, "Thursday", 4, 1800, 2000, "6:00 PM", "8:00 PM", "Wentworth Hall", 214, 44, 3, "COMP-1000");
INSERT INTO FSG VALUES (3, "Monday", 1, 1800, 2000, "6:00 PM", "8:00 PM", "Ira Allen", 203, 44, 2, "COMP-1100");
INSERT INTO FSG VALUES (4, "Tuesday", 2, 1800, 2000, "6:00 PM", "8:00 PM", "Ira Allen", 203, 10, 4, "MECH-3100");
INSERT INTO FSG VALUES (5, "Friday", 5, 1800, 2000, "6:00 PM", "8:00 PM", "Ira Allen", 203, 30, 1, "CIVE-3000");
INSERT INTO FSG VALUES (6, "Monday", 1, 1800, 2000, "6:00 PM", "8:00 PM", "Ira Allen", 203, 8, 6, "ELEC-2299");
INSERT INTO FSG VALUES (7, "Tuesday", 2, 1500, 1700, "3:00 PM", "5:00 PM", "Wentworth Hall", 214, 31, 1, "CIVE-2200");
INSERT INTO FSG VALUES (8, "Wednesday", 3, 1500, 1700, "3:00 PM", "5:00 PM","Wentworth Hall", 214, 30, 19, "CIVE-8200");
INSERT INTO FSG VALUES (9, "Monday", 1, 1300, 1400, "1:00 PM" , "2:00 PM", "Ira Allen", 200, 15, 19, "CIVE-2000");
