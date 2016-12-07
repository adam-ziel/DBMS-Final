CREATE TABLE `Faculty` (
	`FacultyID`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`FName`	TEXT,
	`LName`	TEXT,
	`DepartmentID`	INTEGER,
	`Building`	TEXT,
	`RoomNumber`	INTEGER,
	`Rating`	INTEGER,
	FOREIGN KEY(`DepartmentID`) REFERENCES `Department`(`DepartmentID`)
);

INSERT INTO Faculty VALUES (8, "Joseph", "Martel-Foley", 4, "Ira Allen", 310, 3.9);
INSERT INTO Faculty VALUES (9, "Ali", "Moazed", 4, "Kingman", 206, 3.5);
INSERT INTO Faculty VALUES (10, "Douglas", "Sondak", 4, "Kingman", 210, NULL);
INSERT INTO Faculty VALUES (11, "Jenny", "Song", 5,"Dobbs", 220, 4.8);
INSERT INTO Faculty VALUES (12, "Aaron", "Carpenter", 5, "Dobbs", 206, 5.0);
INSERT INTO Faculty VALUES (13, "Yugu", "Yang-Keathly", 5, "Dobbs", 210, 2.4);
INSERT INTO Faculty VALUES (14, "Douglas", "Dow", 5, "Ira Allen", 114, 3.5);
INSERT INTO Faculty VALUES (15, "Ali", "Khabari", 5,"Dobbs", 205, 4.3);
INSERT INTO Faculty VALUES (16, "David", "Birkett", 5, "Dobbs", NULL, 2.4);
INSERT INTO Faculty VALUES (17, "Wayne", "Bynoe", 5, "Dobbs", 216, 1.0);
INSERT INTO Faculty VALUES (18, "Siben", "Dasgupta", 5, "Dobbs", 208, 3.6);
INSERT INTO Faculty VALUES (19, "Scott", "Grenquist", 5, "Dobbs", 207, 4.6);
INSERT INTO Faculty VALUES (20, "Rabeeh", "Majidi", 5, "Dobbs", 220, 3.8);
INSERT INTO Faculty VALUES (21, "James", "McCusker", 5, "Dobbs", 209, 4.3);
INSERT INTO Faculty VALUES (22, "Joseph", "Santacroce", 5, "Dobbs", 218, 4.0);
INSERT INTO Faculty VALUES (26, "Leonard", "Anderson", 3,"Annex South", 101, 1.6);
INSERT INTO Faculty VALUES (27, "Tugba", "Arsava", 3,"Annex Central", 304, NULL);
INSERT INTO Faculty VALUES (28, "Abigail", "Charest", 3, NULL, NULL, 2.1);
INSERT INTO Faculty VALUES (29, "Gautham", "Das", 3, "Annex Central", 312, 4.0);
INSERT INTO Faculty VALUES (30, "Michael", "Davidson", 3, "Annex South", 101, 4.3);
INSERT INTO Faculty VALUES (31, "Jerry", "Hopcroft", 3, "Annex South", 101, NULL);
INSERT INTO Faculty VALUES (32, "Anuja", "Kama", 3, "Annex Central", 304, 1.5);
INSERT INTO Faculty VALUES (33, "Jim", "Lambrechts", 3, "Annex South", 101, NULL);
INSERT INTO Faculty VALUES (34, "Henderson", "Pritchard", 3, "Annex Central", 309, 3.4);
INSERT INTO Faculty VALUES (36, "Leonidas", "Deligiannidis", 2, "Dobbs", 145, 3.5);
INSERT INTO Faculty VALUES (37, "Joseph", "Lawrance", 2, "Dobbs", 133, 3.8);
INSERT INTO Faculty VALUES (38, "Durga", "Suresh", 2, "Dobbs", 143, 10.0);
INSERT INTO Faculty VALUES (39, "Charles", "Wiseman", 2, "Dobbs", 142, 4.9);
INSERT INTO Faculty VALUES (40, "Hong-Sheng", "Wu", 2, "Dobbs", 133, 4.2);
INSERT INTO Faculty VALUES (41, "Mira", "Yun", 2, "Dobbs", 133, 3.5);

INSERT INTO Faculty VALUES (42, "Magdy", "Ellabidy", 2, "Dobbs", 139, 3.9);
INSERT INTO Faculty VALUES (43, "Karina", "Assiter", 2, "Dobbs", 141, 1.9);
INSERT INTO Faculty VALUES (44, "Nate", "Derbinsky", 2, "Dobbs", 144, 5);
INSERT INTO Faculty VALUES (45, "Jones", "Yu", 2, "Dobbs", 135, 4.8);


INSERT INTO Faculty VALUES (46, "Francis", "Hopcroft", 3, "Annex Central", 308, 3.3);
INSERT INTO Faculty VALUES (47, "Vitaliy", "Saykin", 3, "Annex South", 101, 2.7);
INSERT INTO Faculty VALUES (48, "Alborz", "Nakisa", 3, NULL, NULL, 4.0);
INSERT INTO Faculty VALUES (49, "Ostertog", "Heather", 3, NULL, NULL, NULL);

