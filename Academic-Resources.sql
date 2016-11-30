BEGIN TRANSACTION;
CREATE TABLE `TutorHours` (
	`StudentID`	INTEGER,
	`Weekday`	TEXT,
	`StartTime`	INTEGER,
	`EndTime`	INTEGER,
	PRIMARY KEY(`StudentID`)
);
CREATE TABLE "Tutor" (
	`StudentID`	INTEGER,
	`ClassID`	TEXT,
	PRIMARY KEY(`StudentID`),
	FOREIGN KEY(`StudentID`) REFERENCES `Student`(`StudentID`),
	FOREIGN KEY(`ClassID`) REFERENCES `Class`(`ClassID`)
);
CREATE TABLE "Textbook" (
	`ISBN`	INTEGER,
	`Name`	TEXT,
	`LibraryAvailability`	TEXT,
	`ClassID`	TEXT,
	PRIMARY KEY(`ISBN`),
	FOREIGN KEY(`ClassID`) REFERENCES Class(ClassID)
);
CREATE TABLE "StudentLeader" (
	`StudentID`	INTEGER UNIQUE,
	`FSGID`	INTEGER UNIQUE,
	FOREIGN KEY(`StudentID`) REFERENCES `Student`(`StudentID`),
	FOREIGN KEY(`FSGID`) REFERENCES FSG(FSGID)
);
CREATE TABLE "Student" (
	`StudentID`	INTEGER,
	`FName`	TEXT,
	`LName`	TEXT,
	`MajorID`	TEXT,
	PRIMARY KEY(`StudentID`),
	FOREIGN KEY(`MajorID`) REFERENCES Major(MajorID)
);
CREATE TABLE "Software" (
	`SoftwareID`	INTEGER,
	`URL`	TEXT UNIQUE,
	`Name`	TEXT,
	`ClassID`	TEXT,
	PRIMARY KEY(`SoftwareID`),
	FOREIGN KEY(`ClassID`) REFERENCES Class(ClassID)
);
CREATE TABLE "OnlineTutorial" (
	`TutorialID`	INTEGER,
	`URL`	TEXT UNIQUE,
	`Title`	TEXT,
	`ParentSite`	TEXT,
	`ClassID`	TEXT,
	PRIMARY KEY(`TutorialID`),
	FOREIGN KEY(`ClassID`) REFERENCES Class(ClassID)
);
CREATE TABLE "OfficeHours" (
	`FacultyID`	INTEGER,
	`Weekday`	TEXT,
	`StartTime`	INTEGER,
	`Field4`	INTEGER,
	PRIMARY KEY(`FacultyID`),
	FOREIGN KEY(`FacultyID`) REFERENCES Faculty(FacultyID)
);

CREATE TABLE "Major" (
	`MajorID`	TEXT,
	`Name`	TEXT UNIQUE,
	PRIMARY KEY(`MajorID`)
);
INSERT INTO `Major` VALUES ('BSCE','Civil Engineering');
INSERT INTO `Major` VALUES ('BCOS','Computer Science');
INSERT INTO `Major` VALUES ('BSCN','Computer Networking');
INSERT INTO `Major` VALUES ('BMED','Biomedical Engineering');
INSERT INTO `Major` VALUES ('BSME','Mechanical Engineering');
INSERT INTO `Major` VALUES ('BSEE','Electrical Engineering');
INSERT INTO `Major` VALUES ('BSCO','Computer Engineering');
INSERT INTO `Major` VALUES ('BELM','Electromechanical Engineering');

CREATE TABLE "Faculty" (
	`FacultyID`	INTEGER,
	`FName`	TEXT,
	`LName`	TEXT,
	`DepartmentID`	INTEGER,
	`Building`	TEXT,
	`RoomNumber`	INTEGER,
	`Rating`	INTEGER,
	FOREIGN KEY(`RoomNumber`) REFERENCES Department(DepartmentID)
);
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
CREATE TABLE "Ebook" (
	`ISBN`	INTEGER,
	`URL`	TEXT UNIQUE,
	`Name`	TEXT,
	`ClassID`	TEXT,
	PRIMARY KEY(`ISBN`),
	FOREIGN KEY(`ClassID`) REFERENCES Class(ClassID)
);
CREATE TABLE "Department" (
	`DepartmentID`	INTEGER,
	`DepartmentName`	TEXT UNIQUE,
	`MajorID`	TEXT,
	PRIMARY KEY(`DepartmentID`)
);
CREATE TABLE "Class" (
	`ClasID`	TEXT,
	`ClassName`	TEXT,
	`Semester`	TEXT,
	`Year`	INTEGER,
	`DepartmentID`	INTEGER,
	`FacultyID`	INTEGER,
	PRIMARY KEY(`ClasID`),
	FOREIGN KEY(`DepartmentID`) REFERENCES `Department`(`DepartmentID`),
	FOREIGN KEY(`FacultyID`) REFERENCES `Faculty`(`FacultyID`)
);
COMMIT;
