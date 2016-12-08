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


INSERT INTO OfficeHours VALUES (8, "Monday", 1, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (8, "Tuesday", 2, 800, 950, "8:00 AM", "9:50 AM");
INSERT INTO OfficeHours VALUES (8, "Wednesday", 3, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (8, "Friday", 5, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (9, "Tuesday", 2, 1000, 1200, "10:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (9, "Thursday", 4, 1000, 1200, "10:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (10, "Tuesday", 2, 800, 950, "8:00 AM", "9:50 AM");
INSERT INTO OfficeHours VALUES (10, "Thursday", 4, 800, 950, "8:00 AM", "9:50 AM");
INSERT INTO OfficeHours VALUES (10, "Tuesday", 2, 1300, 1450, "1:00 PM", "2:50 PM");
INSERT INTO OfficeHours VALUES (10, "Thursday", 4, 1300, 1450, "1:00 PM", "2:50 PM");
INSERT INTO OfficeHours VALUES (11, "Wednesday", 3, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (11, "Friday", 5, 900, 1100, "9:00 AM", "11:00 AM");
INSERT INTO OfficeHours VALUES (11, "Monday", 1, 900, 1100, "9:00 AM", "11:00 AM");
INSERT INTO OfficeHours VALUES (12, "Monday", 1, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (12, "Wednesday", 3, 1100, 1200, "11:00 AM", "12:00 AM");
INSERT INTO OfficeHours VALUES (12, "Friday", 5, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (13, "Monday", 1, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (13, "Tuesday", 2, 800, 950, "8:00 AM", "9:50 AM");
INSERT INTO OfficeHours VALUES (13, "Wednesday", 3, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (13, "Friday", 5, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (14, "Tuesday", 2, 1000, 1200, "10:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (14, "Thursday", 4, 1000, 1200, "10:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (15, "Monday", 1, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (15, "Tuesday", 2, 800, 950, "8:00 AM", "9:50 AM");
INSERT INTO OfficeHours VALUES (15, "Wednesday", 3, 1100, 1200, "11:00 AM", "12:00 PM");
