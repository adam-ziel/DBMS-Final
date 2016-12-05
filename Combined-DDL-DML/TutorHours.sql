CREATE TABLE `TutorHours` (
	`StudentID`	INTEGER,
	`Weekday`	TEXT,
	`WeekdayID`	TEXT,
	`StartTime`	INTEGER,
	`EndTime`	INTEGER,
	FOREIGN KEY(`StudentID`) REFERENCES Tutor(StudentID)
);

INSERT INTO TutorHours VALUES (5, "Tuesday", 2, 1430, 1530);
INSERT INTO TutorHours VALUES (5, "Friday", 5, 1000, 1100);
INSERT INTO TutorHours VALUES (5, "Monday", 1, 1330, 1530);
INSERT INTO TutorHours VALUES (5, "Tuesday", 2, 1400, 1500);
INSERT INTO TutorHours VALUES (5, "Friday", 5, 1000, 1200);
INSERT INTO TutorHours VALUES (6, "Thursday", 4, 0930, 1000);
INSERT INTO TutorHours VALUES (7, "Tuesday", 2, 1400, 1530);
INSERT INTO TutorHours VALUES (7, "Thursday", 4, 1300, 1400);
INSERT INTO TutorHours VALUES (7, "Friday", 5, 1100, 1230);
INSERT INTO TutorHours VALUES (8, "Monday", 1, 1130, 1230);
INSERT INTO TutorHours VALUES (8, "Tuesday", 2, 1130, 1230);
INSERT INTO TutorHours VALUES (8, "Thursday", 4, 1130, 1230);
INSERT INTO TutorHours VALUES (8, "Friday", 5, 1200, 1430);
INSERT INTO TutorHours VALUES (9, "Thursday", 4, 1830, 1900);
INSERT INTO TutorHours VALUES (9, "Monday", 1, 1300, 1500);
INSERT INTO TutorHours VALUES (9, "Tuesday", 2, 1400, 1500);
INSERT INTO TutorHours VALUES (10, "Monday", 1, 1630, 1800);
INSERT INTO TutorHours VALUES (10, "Tuesday", 2, 1300, 1600);
INSERT INTO TutorHours VALUES (11, "Tuesday", 2, 1800, 2000);
INSERT INTO TutorHours VALUES (11, "Wednesday", 3, 1400, 1700);
INSERT INTO TutorHours VALUES (11, "Thursday", 4, 1700, 2000);
INSERT INTO TutorHours VALUES (11, "Monday", 1, 1000, 1130);
INSERT INTO TutorHours VALUES (12, "Tuesday", 2, 1730, 1800);
INSERT INTO TutorHours VALUES (12, "Wednesday", 3 ,1700, 2000);
INSERT INTO TutorHours VALUES (12, "Thursday", 4, 1700, 2000);
INSERT INTO TutorHours VALUES (13, "Tuesday", 2, 1430, 2000);
INSERT INTO TutorHours VALUES (13, "Wednesday", 3, 1700, 1900);
INSERT INTO TutorHours VALUES (14, "Tuesday", 2, 1000, 1130);
INSERT INTO TutorHours VALUES (15, "Thursday", 4, 1500, 1530);