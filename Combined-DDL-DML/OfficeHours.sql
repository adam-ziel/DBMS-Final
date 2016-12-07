CREATE TABLE "OfficeHours" (
	`FacultyID`	INTEGER,
	`Weekday`	TEXT,
	`StartTime`	INTEGER,
	`Field4`	INTEGER,
	PRIMARY KEY(`FacultyID`),
	FOREIGN KEY(`FacultyID`) REFERENCES Faculty(FacultyID)
);

INSERT INTO OfficeHours VALUES (7, "Monday", 1100, 1200);
INSERT INTO OfficeHours VALUES (7, "Wednesday", 1100, 1200);
INSERT INTO OfficeHours VALUES (7, "Friday", 1100, 1200);
INSERT INTO OfficeHours VALUES (2, "Tuesday", 800, 950);
INSERT INTO OfficeHours VALUES (2, "Thursday", 800, 950);
INSERT INTO OfficeHours VALUES (2, "Tuesday", 1300, 1450);
INSERT INTO OfficeHours VALUES (2, "Thursday", 1300, 1450);
INSERT INTO OfficeHours VALUES (3, NULL, NULL, NULL);
INSERT INTO OfficeHours VALUES (4, "Wednesday", 1100, 1200);
INSERT INTO OfficeHours VALUES (4, "Friday", 900, 1100);
INSERT INTO OfficeHours VALUES (5, "Monday", 900, 1100);