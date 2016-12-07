CREATE TABLE `OfficeHours` (
	`FacultyID`	INTEGER,
	`Weekday`	TEXT,
	`WeekdayID`	INTEGER,
	`StartTime`	INTEGER,
	`EndTime`	INTEGER,
	`StartTime_Str`	TEXT,
	`EndTime_Str` 	TEXT,
	FOREIGN KEY(`FacultyID`) REFERENCES Faculty(FacultyID)
);

INSERT INTO OfficeHours VALUES (2, "Tuesday", 2, 800, 950, "8:00 AM", "9:50 AM");
INSERT INTO OfficeHours VALUES (2, "Thursday", 4, 800, 950, "8:00 AM", "9:50 AM");
INSERT INTO OfficeHours VALUES (2, "Tuesday", 2, 1300, 1450, "1:00 PM", "2:50 PM");
INSERT INTO OfficeHours VALUES (2, "Thursday", 4, 1300, 1450, "1:00 PM", "2:50 PM");
INSERT INTO OfficeHours VALUES (4, "Wednesday", 3, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (4, "Friday", 5, 900, 1100, "9:00 AM", "11:00 AM");
INSERT INTO OfficeHours VALUES (5, "Monday", 1, 900, 1100, "9:00 AM", "11:00 AM");
INSERT INTO OfficeHours VALUES (7, "Monday", 1, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (7, "Wednesday", 3, 1100, 1200, "11:00 AM", "12:00 AM");
INSERT INTO OfficeHours VALUES (7, "Friday", 5, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (8, "Monday", 1, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (8, "Tuesday", 2, 800, 950, "8:00 AM", "9:50 AM");
INSERT INTO OfficeHours VALUES (8, "Wednesday", 3, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (8, "Friday", 5, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (9, "Tuesday", 2, 1000, 1200, "10:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (9, "Thursday", 4, 1000, 1200, "10:00 AM", "12:00 PM");
