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
INSERT INTO OfficeHours VALUES (17, "Tuesday", 2, 1000, 1200, "10:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (17, "Thursday", 4, 1000, 1200, "10:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (18, "Tuesday", 2, 800, 950, "8:00 AM", "9:50 AM");
INSERT INTO OfficeHours VALUES (18, "Thursday", 4, 800, 950, "8:00 AM", "9:50 AM");
INSERT INTO OfficeHours VALUES (18, "Tuesday", 2, 1300, 1450, "1:00 PM", "2:50 PM");
INSERT INTO OfficeHours VALUES (18, "Thursday", 4, 1300, 1450, "1:00 PM", "2:50 PM");
INSERT INTO OfficeHours VALUES (19, "Wednesday", 3, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (19, "Friday", 5, 900, 1100, "9:00 AM", "11:00 AM");
INSERT INTO OfficeHours VALUES (19, "Monday", 1, 900, 1100, "9:00 AM", "11:00 AM");
INSERT INTO OfficeHours VALUES (20, "Tuesday", 2, 1000, 1200, "10:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (20, "Thursday", 4, 1000, 1200, "10:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (21, "Monday", 1, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (21, "Tuesday", 2, 800, 950, "8:00 AM", "9:50 AM");
INSERT INTO OfficeHours VALUES (21, "Wednesday", 3, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (22, "Monday", 1, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (22, "Tuesday", 2, 800, 950, "8:00 AM", "9:50 AM");
INSERT INTO OfficeHours VALUES (22, "Wednesday", 3, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (22, "Friday", 5, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (26, "Tuesday", 2, 1000, 1200, "10:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (26, "Thursday", 4, 1000, 1200, "10:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (27, "Monday", 1, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (27, "Tuesday", 2, 800, 950, "8:00 AM", "9:50 AM");
INSERT INTO OfficeHours VALUES (27, "Wednesday", 3, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (27, "Friday", 5, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (29, "Tuesday", 2, 800, 950, "8:00 AM", "9:50 AM");
INSERT INTO OfficeHours VALUES (29, "Thursday", 4, 800, 950, "8:00 AM", "9:50 AM");
INSERT INTO OfficeHours VALUES (29, "Tuesday", 2, 1300, 1450, "1:00 PM", "2:50 PM");
INSERT INTO OfficeHours VALUES (29, "Thursday", 4, 1300, 1450, "1:00 PM", "2:50 PM");
INSERT INTO OfficeHours VALUES (30, "Monday", 1, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (30, "Tuesday", 2, 800, 950, "8:00 AM", "9:50 AM");
INSERT INTO OfficeHours VALUES (30, "Wednesday", 3, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (30, "Friday", 5, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (31, "Tuesday", 2, 1000, 1200, "10:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (31, "Thursday", 4, 1000, 1200, "10:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (32, "Tuesday", 2, 800, 950, "8:00 AM", "9:50 AM");
INSERT INTO OfficeHours VALUES (32, "Thursday", 4, 800, 950, "8:00 AM", "9:50 AM");
INSERT INTO OfficeHours VALUES (32, "Tuesday", 2, 1300, 1450, "1:00 PM", "2:50 PM");
INSERT INTO OfficeHours VALUES (32, "Thursday", 4, 1300, 1450, "1:00 PM", "2:50 PM");
INSERT INTO OfficeHours VALUES (33, "Wednesday", 3, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (33, "Friday", 5, 900, 1100, "9:00 AM", "11:00 AM");
INSERT INTO OfficeHours VALUES (33, "Monday", 1, 900, 1100, "9:00 AM", "11:00 AM");
INSERT INTO OfficeHours VALUES (34, "Monday", 1, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (34, "Wednesday", 3, 1100, 1200, "11:00 AM", "12:00 AM");
INSERT INTO OfficeHours VALUES (34, "Friday", 5, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (36, "Monday", 1, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (36, "Tuesday", 2, 800, 950, "8:00 AM", "9:50 AM");
INSERT INTO OfficeHours VALUES (36, "Wednesday", 3, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (36, "Friday", 5, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (37, "Tuesday", 2, 1000, 1200, "10:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (37, "Thursday", 4, 1000, 1200, "10:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (38, "Monday", 1, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (38, "Tuesday", 2, 800, 950, "8:00 AM", "9:50 AM");
INSERT INTO OfficeHours VALUES (38, "Wednesday", 3, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (39, "Monday", 1, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (39, "Tuesday", 2, 800, 950, "8:00 AM", "9:50 AM");
INSERT INTO OfficeHours VALUES (39, "Wednesday", 3, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (39, "Friday", 5, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (40, "Tuesday", 2, 1000, 1200, "10:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (40, "Thursday", 4, 1000, 1200, "10:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (41, "Monday", 1, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (42, "Tuesday", 2, 800, 950, "8:00 AM", "9:50 AM");
INSERT INTO OfficeHours VALUES (42, "Wednesday", 3, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (43, "Monday", 1, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (43, "Tuesday", 2, 800, 950, "8:00 AM", "9:50 AM");
INSERT INTO OfficeHours VALUES (43, "Wednesday", 3, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (43, "Friday", 5, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (44, "Tuesday", 2, 1000, 1200, "10:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (44, "Thursday", 4, 1000, 1200, "10:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (45, "Tuesday", 2, 800, 950, "8:00 AM", "9:50 AM");
INSERT INTO OfficeHours VALUES (45, "Thursday", 4, 800, 950, "8:00 AM", "9:50 AM");
INSERT INTO OfficeHours VALUES (45, "Tuesday", 2, 1300, 1450, "1:00 PM", "2:50 PM");
INSERT INTO OfficeHours VALUES (45, "Thursday", 4, 1300, 1450, "1:00 PM", "2:50 PM");
INSERT INTO OfficeHours VALUES (46, "Wednesday", 3, 1100, 1200, "11:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (46, "Friday", 5, 900, 1100, "9:00 AM", "11:00 AM");
INSERT INTO OfficeHours VALUES (46, "Monday", 1, 900, 1100, "9:00 AM", "11:00 AM");
INSERT INTO OfficeHours VALUES (47, "Tuesday", 2, 1000, 1200, "10:00 AM", "12:00 PM");
INSERT INTO OfficeHours VALUES (47, "Thursday", 4, 1000, 1200, "10:00 AM", "12:00 PM");

