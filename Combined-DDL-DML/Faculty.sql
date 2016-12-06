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

INSERT INTO Faculty VALUES (NULL, "Magdy", "Ellabidy", 2, "Dobbs", 139, 3.9);
INSERT INTO Faculty VALUES (NULL, "Karina", "Assiter", 2, "Dobbs", 141, 1.9);
INSERT INTO Faculty VALUES (NULL, "Nate", "Derbinsky", 2, "Dobbs", 144, 5);
INSERT INTO Faculty VALUES (NULL, "Jones", "Yu", 2, "Dobbs", 135, 4.8);
INSERT INTO Faculty VALUES (NULL, "Leonidas", "Deligiannidis", 2, "Dobbs", 145, 3.5);
INSERT INTO Faculty VALUES (NULL, "Joseph", "Lawrance", 2, "Dobbs", 133, 3.8);
INSERT INTO Faculty VALUES (NULL, "Durga", "Suresh", 2, "Dobbs", 143, 10.0);
INSERT INTO Faculty VALUES (NULL, "Charles", "Wiseman", 2, "Dobbs", 142, 4.9);
INSERT INTO Faculty VALUES (NULL, "Hong-Sheng", "Wu", 2, "Dobbs", 133, 4.2);
INSERT INTO Faculty VALUES (NULL, "Mira", "Yun", 2, "Dobbs", 133, 3.5);

INSERT INTO Faculty VALUES (NULL, "Francis", "Hopcroft", 3, "Annex Central", 308, 3.3);
INSERT INTO Faculty VALUES (NULL, "Vitaliy", "Saykin", 3, "Annex South", 101, 2.7);
INSERT INTO Faculty VALUES (NULL,"Leonard","Anderson",3,"Annex South",101,1.6);
INSERT INTO Faculty VALUES (NULL,"Tugba","Arsava",3,"Annex Central",304,NULL);
INSERT INTO Faculty VALUES (NULL,"Abigail","Charest",3,NULL,NULL,2.1);
INSERT INTO Faculty VALUES (NULL,"Gautham","Das",3,"Annex Central",312,4.0);
INSERT INTO Faculty VALUES (NULL,"Michael","Davidson",3,"Annex South",101,4.3);
INSERT INTO Faculty VALUES (NULL,"Jerry","Hopcroft",3,"Annex South",101,NULL);
INSERT INTO Faculty VALUES (NULL,"Anuja","Kama",3,"Annex Central",304,1.5);
INSERT INTO Faculty VALUES (NULL,"Jim","Lambrechts",3,"Annex South",101,NULL);
INSERT INTO Faculty VALUES (NULL,"Henderson","Pritchard",3,"Annex Central",309,3.4);

INSERT INTO Faculty VALUES (NULL, "Joseph", "Martel-Foley", 4, "Ira Allen", 310, 3.9);
INSERT INTO Faculty VALUES (NULL, "Ali", "Moazed", 4, "Kingman", 206, 3.5);
INSERT INTO Faculty VALUES (NULL, "Douglas", "Sondak", 4, "Kingman", 210, NULL);

INSERT INTO Faculty VALUES (NULL, "Jenny", "Song", 5,"Dobbs", 220, 4.8);
INSERT INTO Faculty VALUES (NULL, "Aaron", "Carpenter", 5, "Dobbs", 206, 5.0);
INSERT INTO Faculty VALUES (NULL, "Yugu", "Yang-Keathly", 5, "Dobbs", 210, 2.4);
INSERT INTO Faculty VALUES (NULL, "Douglas", "Dow", 5, "Ira Allen", 114, 3.5);
INSERT INTO Faculty VALUES (NULL, "Ali", "Khabari", 5,"Dobbs", 205, 4.3);
INSERT INTO Faculty VALUES (NULL, "David", "Birkett", 5, "Dobbs", NULL, 2.4);
INSERT INTO Faculty VALUES (NULL, "Wayne", "Bynoe", 5, "Dobbs", 216, 1.0);
INSERT INTO Faculty VALUES (NULL, "Siben", "Dasgupta", 5, "Dobbs", 208, 3.6);
INSERT INTO Faculty VALUES (NULL, "Scott", "Grenquist", 5, "Dobbs", 207, 4.6);
INSERT INTO Faculty VALUES (NULL, "Rabeeh", "Majidi", 5, "Dobbs", 220, 3.8);
INSERT INTO Faculty VALUES (NULL, "James", "McCusker", 5, "Dobbs", 209, 4.3);
INSERT INTO Faculty VALUES (NULL, "Joseph", "Santacroce", 5, "Dobbs", 218, 4.0);

