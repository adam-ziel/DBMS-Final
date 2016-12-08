CREATE TABLE `TutorHours` (
	`StudentID`	INTEGER,
	`Weekday`	TEXT,
	`WeekdayID`	TEXT,
	`StartTime`	INTEGER,
	`EndTime`	INTEGER,
	`StartTime_Str`	TEXT,
	`EndTime_Str` 	TEXT,
	FOREIGN KEY(`StudentID`) REFERENCES Tutor(StudentID)
);

INSERT INTO TutorHours VALUES (5, "Tuesday", 2, 1430, 1530, "2:30 PM", "3:30 PM");
INSERT INTO TutorHours VALUES (5, "Friday", 5, 1000, 1100, "10:00 AM", "11:00 AM");
INSERT INTO TutorHours VALUES (5, "Monday", 1, 1330, 1530, "1:30 PM", "3:30 PM");
INSERT INTO TutorHours VALUES (6, "Thursday", 4, 0930, 1000, "9:30 AM", "10:00 AM");
INSERT INTO TutorHours VALUES (7, "Tuesday", 2, 1400, 1530, "2:00 PM", "3:30 PM");
INSERT INTO TutorHours VALUES (7, "Thursday", 4, 1300, 1400, "1:00 PM", "2:00 PM");
INSERT INTO TutorHours VALUES (7, "Friday", 5, 1100, 1230, "11:00 AM", "12:30 PM");
INSERT INTO TutorHours VALUES (8, "Monday", 1, 1130, 1230, "11:30 AM", "12:30 PM");
INSERT INTO TutorHours VALUES (8, "Tuesday", 2, 1130, 1230, "11:30 AM", "12:30 PM");
INSERT INTO TutorHours VALUES (8, "Thursday", 4, 1130, 1230, "11:30 AM", "12:30 PM");
INSERT INTO TutorHours VALUES (8, "Friday", 5, 1200, 1430, "12:00 PM", "2:30 PM");
INSERT INTO TutorHours VALUES (9, "Thursday", 4, 1830, 1900, "6:30 PM", "7:00 PM");
INSERT INTO TutorHours VALUES (9, "Monday", 1, 1300, 1500, "1:00 PM", "3:00 PM");
INSERT INTO TutorHours VALUES (9, "Tuesday", 2, 1400, 1500, "2:00 PM", "3:00 PM");
INSERT INTO TutorHours VALUES (10, "Monday", 1, 1630, 1800, "4:30 PM", "6:00 PM");
INSERT INTO TutorHours VALUES (10, "Tuesday", 2, 1300, 1600, "1:00 PM", "4:00 PM");
INSERT INTO TutorHours VALUES (11, "Tuesday", 2, 1800, 2000, "4:00 PM", "8:00 PM");
INSERT INTO TutorHours VALUES (11, "Wednesday", 3, 1400, 1700, "2:00 PM", "5:00 PM");
INSERT INTO TutorHours VALUES (11, "Thursday", 4, 1700, 2000, "5:00 PM", "8:00 PM");
INSERT INTO TutorHours VALUES (11, "Monday", 1, 1000, 1130, "10:00 AM", "11:30 AM");
INSERT INTO TutorHours VALUES (12, "Tuesday", 2, 1730, 1800, "5:30 PM", "6:00 PM");
INSERT INTO TutorHours VALUES (12, "Wednesday", 3 ,1700, 2000, "5:00 PM", "8:00 PM");
INSERT INTO TutorHours VALUES (12, "Thursday", 4, 1700, 2000, "5:00 PM", "8:00 PM");
INSERT INTO TutorHours VALUES (13, "Tuesday", 2, 1430, 2000, "2:30 PM", "8:00 PM");
INSERT INTO TutorHours VALUES (13, "Wednesday", 3, 1700, 1900, "5:00 PM", "7:00 PM");
INSERT INTO TutorHours VALUES (14, "Tuesday", 2, 1000, 1130, "10:00 AM", "11:30 AM");
INSERT INTO TutorHours VALUES (15, "Thursday", 4, 1500, 1530, "3:00 PM", "3:30 PM");
