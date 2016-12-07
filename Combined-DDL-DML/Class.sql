CREATE TABLE `Class` (
	`ClassID`	TEXT,
	`ClassName`	TEXT,
	`Semester`	TEXT,
	`Year`	INTEGER,
	`DepartmentID`	INTEGER,
	`FacultyID`	INTEGER,
	PRIMARY KEY(`ClassID`),
	FOREIGN KEY(`DepartmentID`) REFERENCES `Department`(`DepartmentID`),
	FOREIGN KEY(`FacultyID`) REFERENCES `Faculty`(`FacultyID`)
);

INSERT INTO Class VALUES ("COMP-1000", "Computer Science I" , "Fall", 2016, 2, 4);
INSERT INTO Class VALUES ("COMP-1100", "Intro To Networks", "Fall", 2016, 2, 2);
INSERT INTO Class VALUES ("COMP-2500", "Security Principles", "Fall", 2016, 2, 3);
INSERT INTO Class VALUES ("COMP-2000", "Data Structures", "Fall", 2016, 2, 3);
INSERT INTO Class VALUES ("COMP-3071", "Intro To Programming Languages", "Fall", 2016, 2, 3);
INSERT INTO Class VALUES ("CIVE-2000", "Statics and Mechanics of Materials 1", "Fall", 2016, 3, 7);
INSERT INTO Class VALUES ("CIVE-3800", "EPIC Projects in Civil Engineering 1", "Fall", 2016, 3, 6);
INSERT INTO Class VALUES ("CIVE-2200", "Intro to Geomatics", "Fall", 2016, 3, 13);
INSERT INTO Class VALUES ("CIVE-3000", "Fluid Mechanics", "Fall", 2016, 3, 13);
INSERT INTO Class VALUES ("CIVE-3000L", "Fluid Mechanics - Lab", "Fall", 2016, 3, 15);
INSERT INTO Class VALUES ("CIVE-3100", "Environmental Engineering", "Fall", 2016, 3, 16);
INSERT INTO Class VALUES ("CIVE-3200", "Structural Analysis", "Fall", 2016, 3, 17);
INSERT INTO Class VALUES ("CIVE-3200L", "Structural Analysis - Lab", "Fall", 2016, 3, 17);
INSERT INTO Class VALUES ("CIVE-3300", "Soil Mechanics", "Fall", 2016, 3, 20);
INSERT INTO Class VALUES ("CIVE-3300L", "Soil Mechanics - Lab", "Fall", 2016, 3, 20);
INSERT INTO Class VALUES ("CIVE-3500", "Design Studios Lab", "Fall", 2016, 3, 19);
INSERT INTO Class VALUES ("CIVE-8000", "Project Management Principles & Practices", "Fall", 2016, 3, 37);
INSERT INTO Class VALUES ("CIVE-8200", "Environmental Systems", "Fall", 2016, 3, 15);
INSERT INTO Class VALUES ("CIVE-8400", "Highway Design & Transportation Planning", "Fall", 2016, 3, 38);
INSERT INTO Class VALUES ("CIVE-8500", "Geotech Engineering for Infrastructure", "Fall", 2016, 3, 20);
INSERT INTO Class VALUES ("CIVE-8550", "Site Planning and Development", "Fall", 2016, 3, 18);
INSERT INTO Class VALUES ("ELEC-2299", "Electrical Circuit Analysis and Design", "Fall", 2016, 5, 8);
INSERT INTO Class VALUES ("MECH-3100", "Engineering Fluid Mechanics", "Fall", 2016, 4, 10);
INSERT INTO Class VALUES ("MECH-2250", "Engineering Thermodynamics I", "Fall", 2016, 4, 10);
INSERT INTO Class VALUES ("ENGR-1800", "Introduction to MATLAB", "Fall", 2016, 4,10);