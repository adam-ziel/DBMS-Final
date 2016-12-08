BEGIN TRANSACTION;
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
INSERT INTO `TutorHours` VALUES (5,'Tuesday','2',1430,1530,'2:30 PM','3:30 PM');
INSERT INTO `TutorHours` VALUES (5,'Friday','5',1000,1100,'10:00 AM','11:00 AM');
INSERT INTO `TutorHours` VALUES (5,'Monday','1',1330,1530,'1:30 AM','3:30 PM');
INSERT INTO `TutorHours` VALUES (5,'Tuesday','2',1400,1500,'2:00 PM','3:00 PM');
INSERT INTO `TutorHours` VALUES (5,'Friday','5',1000,1200,'10:00 AM','12:00 PM');
INSERT INTO `TutorHours` VALUES (6,'Thursday','4',930,1000,'9:30 AM','10:00 AM');
INSERT INTO `TutorHours` VALUES (7,'Tuesday','2',1400,1530,'2:00 PM','3:30 PM');
INSERT INTO `TutorHours` VALUES (7,'Thursday','4',1300,1400,'1:00 PM','2:00 PM');
INSERT INTO `TutorHours` VALUES (7,'Friday','5',1100,1230,'11:00 AM','12:30 PM');
INSERT INTO `TutorHours` VALUES (8,'Monday','1',1130,1230,'11:30 AM','12:30 PM');
INSERT INTO `TutorHours` VALUES (8,'Tuesday','2',1130,1230,'11:30 AM','12:30 PM');
INSERT INTO `TutorHours` VALUES (8,'Thursday','4',1130,1230,'11:30 AM','12:30 PM');
INSERT INTO `TutorHours` VALUES (8,'Friday','5',1200,1430,'12:00 PM','2:30 PM');
INSERT INTO `TutorHours` VALUES (9,'Thursday','4',1830,1900,'6:30 PM','7:00 PM');
INSERT INTO `TutorHours` VALUES (9,'Monday','1',1300,1500,'1:00 PM','3:00 PM');
INSERT INTO `TutorHours` VALUES (9,'Tuesday','2',1400,1500,'2:00 PM','3:00 PM');
INSERT INTO `TutorHours` VALUES (10,'Monday','1',1630,1800,'4:30 PM','6:00 PM');
INSERT INTO `TutorHours` VALUES (10,'Tuesday','2',1300,1600,'1:00 PM','4:00 PM');
INSERT INTO `TutorHours` VALUES (11,'Tuesday','2',1800,2000,'4:00 PM','8:00 PM');
INSERT INTO `TutorHours` VALUES (11,'Wednesday','3',1400,1700,'2:00 PM','5:00 PM');
INSERT INTO `TutorHours` VALUES (11,'Thursday','4',1700,2000,'5:00 PM','8:00 PM');
INSERT INTO `TutorHours` VALUES (11,'Monday','1',1000,1130,'10:00 AM','11:30 AM');
INSERT INTO `TutorHours` VALUES (12,'Tuesday','2',1730,1800,'5:30 PM','6:00 PM');
INSERT INTO `TutorHours` VALUES (12,'Wednesday','3',1700,2000,'5:00 PM','8:00 PM');
INSERT INTO `TutorHours` VALUES (12,'Thursday','4',1700,2000,'5:00 PM','8:00 PM');
INSERT INTO `TutorHours` VALUES (13,'Tuesday','2',1430,2000,'2:30 PM','8:00 PM');
INSERT INTO `TutorHours` VALUES (13,'Wednesday','3',1700,1900,'5:00 PM','7:00 PM');
INSERT INTO `TutorHours` VALUES (14,'Tuesday','2',1000,1130,'10:00 AM','11:30 AM');
INSERT INTO `TutorHours` VALUES (15,'Thursday','4',1500,1530,'3:00 PM','3:30 PM');
CREATE TABLE "Tutor" (
	`StudentID`	INTEGER,
	`ClassID`	TEXT,
	FOREIGN KEY(`StudentID`) REFERENCES `Student`(`StudentID`),
	FOREIGN KEY(`ClassID`) REFERENCES `Class`(`ClassID`)
);
INSERT INTO `Tutor` VALUES (3,'COMP-1000');
INSERT INTO `Tutor` VALUES (5,'ENGL-1050');
INSERT INTO `Tutor` VALUES (6,'ELEC-2799');
INSERT INTO `Tutor` VALUES (5,'ENGL-1050');
INSERT INTO `Tutor` VALUES (5,'ENGL-1100');
INSERT INTO `Tutor` VALUES (5,'ENGL-2200');
INSERT INTO `Tutor` VALUES (6,'ELEC-2799');
INSERT INTO `Tutor` VALUES (6,'MECH-2250');
INSERT INTO `Tutor` VALUES (6,'ENGR-1000');
INSERT INTO `Tutor` VALUES (6,'MECH-2500');
INSERT INTO `Tutor` VALUES (7,'ELEC-3250');
INSERT INTO `Tutor` VALUES (7,'ELEC-1500');
INSERT INTO `Tutor` VALUES (7,'COMP-1000');
INSERT INTO `Tutor` VALUES (7,'ELEC-2275');
INSERT INTO `Tutor` VALUES (7,'COMP-2650');
INSERT INTO `Tutor` VALUES (7,'COMP-3071');
INSERT INTO `Tutor` VALUES (7,'MATH-2860');
INSERT INTO `Tutor` VALUES (7,'COMP-3670');
INSERT INTO `Tutor` VALUES (8,'MATH-2500');
INSERT INTO `Tutor` VALUES (8,'MATH-1750');
INSERT INTO `Tutor` VALUES (8,'MATH-1850');
INSERT INTO `Tutor` VALUES (8,'PHYS-1250');
INSERT INTO `Tutor` VALUES (8,'MATH-1775');
INSERT INTO `Tutor` VALUES (8,'COMP-2650');
INSERT INTO `Tutor` VALUES (8,'COMP-3071');
INSERT INTO `Tutor` VALUES (8,'MATH-2860');
INSERT INTO `Tutor` VALUES (8,'COMP-3670');
INSERT INTO `Tutor` VALUES (9,'MATH-0900');
INSERT INTO `Tutor` VALUES (9,'MATH-1800');
INSERT INTO `Tutor` VALUES (9,'MATH-2000');
INSERT INTO `Tutor` VALUES (9,'ELEC-2799');
INSERT INTO `Tutor` VALUES (9,'MATH-0900');
INSERT INTO `Tutor` VALUES (10,'MATH-1750');
INSERT INTO `Tutor` VALUES (10,'PHYS-1250');
INSERT INTO `Tutor` VALUES (10,'PHYS-1750');
INSERT INTO `Tutor` VALUES (10,'COMP-2650');
INSERT INTO `Tutor` VALUES (10,'COMP-3071');
INSERT INTO `Tutor` VALUES (10,'MATH-2860');
INSERT INTO `Tutor` VALUES (10,'COMP-3670');
INSERT INTO `Tutor` VALUES (11,'PHYS-1250');
INSERT INTO `Tutor` VALUES (11,'PHYS-1750');
INSERT INTO `Tutor` VALUES (11,'MATH-2025');
INSERT INTO `Tutor` VALUES (11,'PHYS-1005');
INSERT INTO `Tutor` VALUES (11,'PHYS-1035');
INSERT INTO `Tutor` VALUES (12,'COMP-2000');
INSERT INTO `Tutor` VALUES (12,'COMP-3071');
INSERT INTO `Tutor` VALUES (13,'ELEC-3250');
INSERT INTO `Tutor` VALUES (13,'MATH-0900');
INSERT INTO `Tutor` VALUES (13,'MATH-1005');
INSERT INTO `Tutor` VALUES (13,'MATH-1035');
INSERT INTO `Tutor` VALUES (13,'MATH-1065');
INSERT INTO `Tutor` VALUES (14,'MATH-2025');
INSERT INTO `Tutor` VALUES (14,'COMP-2650');
INSERT INTO `Tutor` VALUES (14,'COMP-3071');
INSERT INTO `Tutor` VALUES (14,'MATH-2860');
INSERT INTO `Tutor` VALUES (14,'COMP-3670');
INSERT INTO `Tutor` VALUES (15,'ENGL-1050');
INSERT INTO `Tutor` VALUES (15,'ENGL-1100');
INSERT INTO `Tutor` VALUES (15,'ENGL-2200');
INSERT INTO `Tutor` VALUES (15,'ENGL-0900');
INSERT INTO `Tutor` VALUES (15,'ENGL-0700');
CREATE TABLE "Textbook" (
	`ISBN`	INTEGER,
	`Name`	TEXT,
	`LibraryAvailability`	TEXT,
	`ClassID`	TEXT,
	PRIMARY KEY(`ISBN`),
	FOREIGN KEY(`ClassID`) REFERENCES Class(ClassID)
);
INSERT INTO `Textbook` VALUES (9780133451603,'Statics and Mechanics of Materials, 4th edition','Available','CIVE-2000');
INSERT INTO `Textbook` VALUES (9780133451604,NULL,NULL,'CIVE-3800');
INSERT INTO `Textbook` VALUES (9781587133169,'Introduction To Networks Companion Guide','Available','COMP-1100');
CREATE TABLE StudentLeader (
  StudentID INTEGER,
  FSGID INTEGER,
  Foreign key(StudentID) References Student(StudentID),
  Foreign key(FSGID) References FSG(FSGID)
  );
INSERT INTO `StudentLeader` VALUES (3,1);
INSERT INTO `StudentLeader` VALUES (3,2);
INSERT INTO `StudentLeader` VALUES (2,3);
INSERT INTO `StudentLeader` VALUES (2,7);
INSERT INTO `StudentLeader` VALUES (2,8);
INSERT INTO `StudentLeader` VALUES (4,4);
INSERT INTO `StudentLeader` VALUES (5,5);
INSERT INTO `StudentLeader` VALUES (6,6);
CREATE TABLE "Student" (
	`StudentID`	INTEGER,
	`FName`	TEXT,
	`LName`	TEXT,
	`MajorID`	TEXT,
	PRIMARY KEY(`StudentID`),
	FOREIGN KEY(`MajorID`) REFERENCES Major(MajorID)
);
INSERT INTO `Student` VALUES (1,'George','Lucas','CIVE');
INSERT INTO `Student` VALUES (2,'Bobby','Laughlin','CS');
INSERT INTO `Student` VALUES (3,'Julie','Medeiros','CN');
INSERT INTO `Student` VALUES (4,'David','Lee','ME');
INSERT INTO `Student` VALUES (5,'Anthony','A','CS');
INSERT INTO `Student` VALUES (6,'Bachar','Al Hardy','EM');
INSERT INTO `Student` VALUES (7,'Gregory','Butterworth','EE');
INSERT INTO `Student` VALUES (8,'Daniel','Calderon','CS');
INSERT INTO `Student` VALUES (9,'Stephen','Campion','CS');
INSERT INTO `Student` VALUES (10,'Nick','Chase','ME');
INSERT INTO `Student` VALUES (11,'Shubh','Chokshi','EE');
INSERT INTO `Student` VALUES (12,'Bethy','Diakabana','CS');
INSERT INTO `Student` VALUES (13,'Bret','Glendye','ME');
INSERT INTO `Student` VALUES (14,'Lyn','Carswell','EE');
INSERT INTO `Student` VALUES (15,'Jojo','J','EE');
INSERT INTO `Student` VALUES (16,'Abbey','Jean','AM');
INSERT INTO `Student` VALUES (17,'Luis Jose','Bechara Romero','CS');
INSERT INTO `Student` VALUES (18,'Jacob','Jones','CS');
CREATE TABLE "Software" (
	`SoftwareID`	INTEGER,
	`URL`	TEXT,
	`Name`	TEXT,
	`ClassID`	TEXT,
	PRIMARY KEY(`SoftwareID`),
	FOREIGN KEY(`ClassID`) REFERENCES `Class`(`ClassID`)
);
INSERT INTO `Software` VALUES (1,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Adobe Reader DC','COMP-1000');
INSERT INTO `Software` VALUES (2,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Adobe Reader DC','COMP-1100');
INSERT INTO `Software` VALUES (3,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Adobe Reader DC','COMP-2500');
INSERT INTO `Software` VALUES (4,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Adobe Reader DC','COMP-2000');
INSERT INTO `Software` VALUES (5,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Adobe Reader DC','COMP-3071');
INSERT INTO `Software` VALUES (6,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Adobe Reader DC','COMP-3071');
INSERT INTO `Software` VALUES (9,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Apache Tomcat','COMP-1000');
INSERT INTO `Software` VALUES (10,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Apache Tomcat','COMP-1100');
INSERT INTO `Software` VALUES (11,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Apache Tomcat','COMP-2500');
INSERT INTO `Software` VALUES (12,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Apache Tomcat','COMP-2000');
INSERT INTO `Software` VALUES (13,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Apache Tomcat','COMP-3071');
INSERT INTO `Software` VALUES (16,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Bonjour','COMP-1000');
INSERT INTO `Software` VALUES (17,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Bonjour','COMP-1100');
INSERT INTO `Software` VALUES (18,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Bonjour','COMP-2500');
INSERT INTO `Software` VALUES (19,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Bonjour','COMP-2000');
INSERT INTO `Software` VALUES (20,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Bonjour','COMP-3071');
INSERT INTO `Software` VALUES (23,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','TASM','COMP-1000');
INSERT INTO `Software` VALUES (24,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','TASM','COMP-1100');
INSERT INTO `Software` VALUES (25,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','TASM','COMP-2500');
INSERT INTO `Software` VALUES (26,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','TASM','COMP-2000');
INSERT INTO `Software` VALUES (27,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','TASM','COMP-3071');
INSERT INTO `Software` VALUES (28,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Eclipse','COMP-1000');
INSERT INTO `Software` VALUES (29,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Eclipse','COMP-1100');
INSERT INTO `Software` VALUES (30,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Eclipse','COMP-2500');
INSERT INTO `Software` VALUES (31,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Eclipse','COMP-2000');
INSERT INTO `Software` VALUES (32,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Eclipse','COMP-3071');
INSERT INTO `Software` VALUES (33,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Kexi FileMaker Pro','COMP-1000');
INSERT INTO `Software` VALUES (34,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Kexi FileMaker Pro','COMP-1100');
INSERT INTO `Software` VALUES (35,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Kexi FileMaker Pro','COMP-2500');
INSERT INTO `Software` VALUES (36,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Kexi FileMaker Pro','COMP-2000');
INSERT INTO `Software` VALUES (37,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Kexi FileMaker Pro','COMP-3071');
INSERT INTO `Software` VALUES (38,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','MATLAB','COMP-1000');
INSERT INTO `Software` VALUES (39,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','MATLAB','COMP-1100');
INSERT INTO `Software` VALUES (40,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','MATLAB','COMP-2500');
INSERT INTO `Software` VALUES (41,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','MATLAB','COMP-2000');
INSERT INTO `Software` VALUES (42,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','MATLAB','COMP-3071');
INSERT INTO `Software` VALUES (43,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Symbolic Math Tool Box','COMP-1000');
INSERT INTO `Software` VALUES (44,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Symbolic Math Tool Box','COMP-1100');
INSERT INTO `Software` VALUES (45,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Symbolic Math Tool Box','COMP-2500');
INSERT INTO `Software` VALUES (46,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Symbolic Math Tool Box','COMP-2000');
INSERT INTO `Software` VALUES (47,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Symbolic Math Tool Box','COMP-3071');
INSERT INTO `Software` VALUES (48,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Database Tool Box','COMP-1000');
INSERT INTO `Software` VALUES (49,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Database Tool Box','COMP-1100');
INSERT INTO `Software` VALUES (50,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Database Tool Box','COMP-2500');
INSERT INTO `Software` VALUES (51,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Database Tool Box','COMP-2000');
INSERT INTO `Software` VALUES (52,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Database Tool Box','COMP-3071');
INSERT INTO `Software` VALUES (53,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Computational Biology','COMP-1000');
INSERT INTO `Software` VALUES (54,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Computational Biology','COMP-1100');
INSERT INTO `Software` VALUES (55,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Computational Biology','COMP-2500');
INSERT INTO `Software` VALUES (56,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Computational Biology','COMP-2000');
INSERT INTO `Software` VALUES (57,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Computational Biology','COMP-3071');
INSERT INTO `Software` VALUES (58,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Bioinformatics Tool Box','COMP-1000');
INSERT INTO `Software` VALUES (59,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Bioinformatics Tool Box','COMP-1100');
INSERT INTO `Software` VALUES (60,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Bioinformatics Tool Box','COMP-2500');
INSERT INTO `Software` VALUES (61,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Bioinformatics Tool Box','COMP-2000');
INSERT INTO `Software` VALUES (62,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Bioinformatics Tool Box','COMP-3071');
INSERT INTO `Software` VALUES (63,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Sim-Biology','COMP-1000');
INSERT INTO `Software` VALUES (64,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Sim-Biology','COMP-1100');
INSERT INTO `Software` VALUES (65,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Sim-Biology','COMP-2500');
INSERT INTO `Software` VALUES (66,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Sim-Biology','COMP-2000');
INSERT INTO `Software` VALUES (67,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Sim-Biology','COMP-3071');
INSERT INTO `Software` VALUES (68,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','CutePDF','COMP-1000');
INSERT INTO `Software` VALUES (69,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','CutePDF','COMP-1100');
INSERT INTO `Software` VALUES (70,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','CutePDF','COMP-2500');
INSERT INTO `Software` VALUES (71,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','CutePDF','COMP-2000');
INSERT INTO `Software` VALUES (72,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','CutePDF','COMP-3071');
INSERT INTO `Software` VALUES (73,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Java DB','COMP-1000');
INSERT INTO `Software` VALUES (74,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Java DB','COMP-1100');
INSERT INTO `Software` VALUES (75,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Java DB','COMP-2500');
INSERT INTO `Software` VALUES (76,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Java DB','COMP-2000');
INSERT INTO `Software` VALUES (77,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Java DB','COMP-3071');
INSERT INTO `Software` VALUES (78,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Java (TM)SE Development Kit','COMP-1000');
INSERT INTO `Software` VALUES (79,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Java (TM)SE Development Kit','COMP-1100');
INSERT INTO `Software` VALUES (80,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Java (TM)SE Development Kit','COMP-2500');
INSERT INTO `Software` VALUES (81,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Java (TM)SE Development Kit','COMP-2000');
INSERT INTO `Software` VALUES (82,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Java (TM)SE Development Kit','COMP-3071');
INSERT INTO `Software` VALUES (83,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Java Runtime Environment','COMP-1000');
INSERT INTO `Software` VALUES (84,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Java Runtime Environment','COMP-1100');
INSERT INTO `Software` VALUES (85,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Java Runtime Environment','COMP-2500');
INSERT INTO `Software` VALUES (86,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Java Runtime Environment','COMP-2000');
INSERT INTO `Software` VALUES (87,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Java Runtime Environment','COMP-3071');
INSERT INTO `Software` VALUES (88,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Java SDK','COMP-1000');
INSERT INTO `Software` VALUES (89,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Java SDK','COMP-1100');
INSERT INTO `Software` VALUES (90,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Java SDK','COMP-2500');
INSERT INTO `Software` VALUES (92,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Java SDK','COMP-2000');
INSERT INTO `Software` VALUES (93,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Java SDK','COMP-3071');
INSERT INTO `Software` VALUES (94,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Java Production Kit','COMP-1000');
INSERT INTO `Software` VALUES (95,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Java Production Kit','COMP-1100');
INSERT INTO `Software` VALUES (96,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Java Production Kit','COMP-2500');
INSERT INTO `Software` VALUES (97,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Java Production Kit','COMP-2000');
INSERT INTO `Software` VALUES (98,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Java Production Kit','COMP-3071');
INSERT INTO `Software` VALUES (99,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Windows Internet Explorer','COMP-1000');
INSERT INTO `Software` VALUES (100,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Windows Internet Explorer','COMP-1100');
INSERT INTO `Software` VALUES (101,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Windows Internet Explorer','COMP-2500');
INSERT INTO `Software` VALUES (102,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Windows Internet Explorer','COMP-2000');
INSERT INTO `Software` VALUES (103,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Windows Internet Explorer','COMP-3071');
INSERT INTO `Software` VALUES (104,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Office Suite Professional','COMP-1000');
INSERT INTO `Software` VALUES (105,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Office Suite Professional','COMP-1100');
INSERT INTO `Software` VALUES (106,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Office Suite Professional','COMP-2500');
INSERT INTO `Software` VALUES (107,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Office Suite Professional','COMP-2000');
INSERT INTO `Software` VALUES (108,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Office Suite Professional','COMP-3071');
INSERT INTO `Software` VALUES (109,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Office Project Professional','COMP-1000');
INSERT INTO `Software` VALUES (110,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Office Project Professional','COMP-1100');
INSERT INTO `Software` VALUES (111,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Office Project Professional','COMP-2500');
INSERT INTO `Software` VALUES (112,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Office Project Professional','COMP-2000');
INSERT INTO `Software` VALUES (113,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Office Project Professional','COMP-3071');
INSERT INTO `Software` VALUES (114,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Office Publisher Professional','COMP-1000');
INSERT INTO `Software` VALUES (115,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Office Publisher Professional','COMP-1100');
INSERT INTO `Software` VALUES (116,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Office Publisher Professional','COMP-2500');
INSERT INTO `Software` VALUES (117,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Office Publisher Professional','COMP-2000');
INSERT INTO `Software` VALUES (118,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Office Publisher Professional','COMP-3071');
INSERT INTO `Software` VALUES (119,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Office Visio Professional','COMP-1000');
INSERT INTO `Software` VALUES (120,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Office Visio Professional','COMP-1100');
INSERT INTO `Software` VALUES (121,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Office Visio Professional','COMP-2500');
INSERT INTO `Software` VALUES (122,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Office Visio Professional','COMP-2000');
INSERT INTO `Software` VALUES (123,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Office Visio Professional','COMP-3071');
INSERT INTO `Software` VALUES (124,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Visual Studio Professional Edition','COMP-1000');
INSERT INTO `Software` VALUES (125,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Visual Studio Professional Edition','COMP-1100');
INSERT INTO `Software` VALUES (126,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Visual Studio Professional Edition','COMP-2500');
INSERT INTO `Software` VALUES (127,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Visual Studio Professional Edition','COMP-2000');
INSERT INTO `Software` VALUES (128,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Visual Studio Professional Edition','COMP-3071');
CREATE TABLE `OnlineTutorial` (
	`TutorialID`	INTEGER,
	`URL`	TEXT UNIQUE,
	`Title`	TEXT,
	`ParentSite`	TEXT,
	`ClassID`	TEXT,
	PRIMARY KEY(`TutorialID`),
	FOREIGN KEY(`ClassID`) REFERENCES Class(ClassID)
);
INSERT INTO `OnlineTutorial` VALUES (1,'https://www.lynda.com/Developer-Programming-Foundations-tutorials/Welcome/149042/177098-4.html','Foundations of Programming: Data Structures','Lynda','COMP-2000');
INSERT INTO `OnlineTutorial` VALUES (2,'https://www.khanacademy.org/computing/computer-science/algorithms/graph-representation/a/representing-graphs','Representing Graphs','Khan Academy','COMP-2000');
INSERT INTO `OnlineTutorial` VALUES (3,'https://www.lynda.com/Developer-Programming-Foundations-tutorials/Understanding-binary-search-trees-BST/149042/177133-4.htm','Understanding binary search trees (BST)','Lynda','COMP-2000');
INSERT INTO `OnlineTutorial` VALUES (4,'https://www.lynda.com/HTML-tutorials/HTML-Structured-Data/363686-2.html?srchtrk=index%3a2%0alinktypeid%3a2%0aq%3adata+structures%0apage%3a1%0as%3arelevance%0asa%3atrue%0aproducttypeid%3a2','HTML: Structured Data','Lynda','COMP-2000');
INSERT INTO `OnlineTutorial` VALUES (5,'https://www.khanacademy.org/computing/computer-science/algorithms/intro-to-algorithms/v/what-are-algorithms','What is an algorithm?','Khan Academy','COMP-1000');
INSERT INTO `OnlineTutorial` VALUES (6,'https://www.lynda.com/Java-tutorials/Computer-Science-Principles-Lab-Java/508647-2.html','Computer Science Principles Lab: Java','Lynda','COMP-1000');
INSERT INTO `OnlineTutorial` VALUES (7,'https://www.lynda.com/Java-tutorials/Learn-Java-Concepts-Example/497779-2.html?srchtrk=index%3a1%0alinktypeid%3a2%0aq%3ajava%0apage%3a1%0as%3arelevance%0asa%3atrue%0aproducttypeid%3a2','Learn Java Concepts By Example','Lynda','COMP-1000');
INSERT INTO `OnlineTutorial` VALUES (8,'https://www.lynda.com/Java-tutorials/Java-Essential-Training/377484-2.html?srchtrk=index%3a1%0alinktypeid%3a2%0aq%3ajava%0apage%3a1%0as%3arelevance%0asa%3atrue%0aproducttypeid%3a2','Java Essential Training','Lynda','COMP-1000');
INSERT INTO `OnlineTutorial` VALUES (9,'https://www.lynda.com/CISSP-tutorials/Security-models/516600/556405-4.html','Security Models','Lynda','COMP-2500');
INSERT INTO `OnlineTutorial` VALUES (10,'https://www.lynda.com/Cloud-Computing-tutorials/Security-requirements/508619/546877-4.html','Security Requirements','Lynda','COMP-2500');
INSERT INTO `OnlineTutorial` VALUES (11,'https://www.lynda.com/Ruby-Rails-tutorials/Secure-passwords/500551/540480-4.html','Secure Passwords','Lynda','COMP-2500');
INSERT INTO `OnlineTutorial` VALUES (12,'https://www.lynda.com/Windows-Server-tutorials/Physical-security/503999/539136-4.html','Physical security','Lynda','COMP-2500');
INSERT INTO `OnlineTutorial` VALUES (13,'https://www.lynda.com/-tutorials/Physical-security/497309/513391-4.html','Physical security','Lynda','COMP-2500');
INSERT INTO `OnlineTutorial` VALUES (14,'https://www.lynda.com/-tutorials/Passwords-authentication/497309/513392-4.html','Passwords and authentication','Lynda','COMP-2500');
INSERT INTO `OnlineTutorial` VALUES (15,'https://www.lynda.com/-tutorials/Protecting-against-snoops/497309/513393-4.html','Protecting against snoops','Lynda','COMP-2500');
INSERT INTO `OnlineTutorial` VALUES (16,'https://www.lynda.com/-tutorials/Malware/497309/513394-4.html','Malware','Lynda','COMP-2500');
INSERT INTO `OnlineTutorial` VALUES (17,'https://www.lynda.com/-tutorials/Anti-malware-applications/497309/513395-4.html','Anti-malware applications','Lynda','COMP-2500');
INSERT INTO `OnlineTutorial` VALUES (18,'https://www.lynda.com/-tutorials/Anti-malware-practices/497309/513396-4.html','Anti-malware practices','Lynda','COMP-2500');
INSERT INTO `OnlineTutorial` VALUES (19,'https://www.lynda.com/-tutorials/Hardware-firewalls/497309/513397-4.html','Hardware firewalls','Lynda','COMP-2500');
INSERT INTO `OnlineTutorial` VALUES (20,'https://www.lynda.com/-tutorials/Software-firewalls/497309/513398-4.html','Software firewalls','Lynda','COMP-2500');
INSERT INTO `OnlineTutorial` VALUES (21,'https://www.lynda.com/-tutorials/Data-destruction/497309/513399-4.html','Data destruction','Lynda','COMP-2500');
INSERT INTO `OnlineTutorial` VALUES (22,'https://www.lynda.com/-tutorials/Incident-response/497309/513400-4.html','Incident response','Lynda','COMP-2500');
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
INSERT INTO `OfficeHours` VALUES (2,'Tuesday',2,800,950,'8:00 AM','9:50 AM');
INSERT INTO `OfficeHours` VALUES (2,'Thursday',4,800,950,'8:00 AM','9:50 AM');
INSERT INTO `OfficeHours` VALUES (2,'Tuesday',2,1300,1450,'1:00 PM','2:50 PM');
INSERT INTO `OfficeHours` VALUES (2,'Thursday',4,1300,1450,'1:00 PM','2:50 PM');
INSERT INTO `OfficeHours` VALUES (4,'Wednesday',3,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (4,'Friday',5,900,1100,'9:00 AM','11:00 AM');
INSERT INTO `OfficeHours` VALUES (5,'Monday',1,900,1100,'9:00 AM','11:00 AM');
INSERT INTO `OfficeHours` VALUES (7,'Monday',1,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (7,'Wednesday',3,1100,1200,'11:00 AM','12:00 AM');
INSERT INTO `OfficeHours` VALUES (7,'Friday',5,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (8,'Monday',1,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (8,'Tuesday',2,800,950,'8:00 AM','9:50 AM');
INSERT INTO `OfficeHours` VALUES (8,'Wednesday',3,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (8,'Friday',5,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (9,'Tuesday',2,1000,1200,'10:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (9,'Thursday',4,1000,1200,'10:00 AM','12:00 PM');
CREATE TABLE "Major" (
	`MajorID`	TEXT,
	`Name`	TEXT UNIQUE,
	`DepartmentID`	INTEGER,
	PRIMARY KEY(`MajorID`),
	FOREIGN KEY(`DepartmentID`) REFERENCES `Department`(`DepartmentID`)
);
INSERT INTO `Major` VALUES ('BSCE','Civil Engineering',3);
INSERT INTO `Major` VALUES ('BCOS','Computer Science',2);
INSERT INTO `Major` VALUES ('BSCN','Computer Networking',2);
INSERT INTO `Major` VALUES ('BMED','Biomedical Engineering',6);
INSERT INTO `Major` VALUES ('BSME','Mechanical Engineering',4);
INSERT INTO `Major` VALUES ('BSEE','Electrical Engineering',1);
INSERT INTO `Major` VALUES ('BSCO','Computer Engineering',1);
INSERT INTO `Major` VALUES ('BELM','Electromechanical Engineering',5);
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
INSERT INTO `Faculty` VALUES (8,'Joseph','Martel-Foley',4,'Ira Allen',310,3.9);
INSERT INTO `Faculty` VALUES (9,'Ali','Moazed',4,'Kingman',206,3.5);
INSERT INTO `Faculty` VALUES (10,'Douglas','Sondak',4,'Kingman',210,NULL);
INSERT INTO `Faculty` VALUES (11,'Jenny','Song',5,'Dobbs',220,4.8);
INSERT INTO `Faculty` VALUES (12,'Aaron','Carpenter',5,'Dobbs',206,5);
INSERT INTO `Faculty` VALUES (13,'Yugu','Yang-Keathly',5,'Dobbs',210,2.4);
INSERT INTO `Faculty` VALUES (14,'Douglas','Dow',5,'Ira Allen',114,3.5);
INSERT INTO `Faculty` VALUES (15,'Ali','Khabari',5,'Dobbs',205,4.3);
INSERT INTO `Faculty` VALUES (16,'David','Birkett',5,'Dobbs',NULL,2.4);
INSERT INTO `Faculty` VALUES (17,'Wayne','Bynoe',5,'Dobbs',216,1);
INSERT INTO `Faculty` VALUES (18,'Siben','Dasgupta',5,'Dobbs',208,3.6);
INSERT INTO `Faculty` VALUES (19,'Scott','Grenquist',5,'Dobbs',207,4.6);
INSERT INTO `Faculty` VALUES (20,'Rabeeh','Majidi',5,'Dobbs',220,3.8);
INSERT INTO `Faculty` VALUES (21,'James','McCusker',5,'Dobbs',209,4.3);
INSERT INTO `Faculty` VALUES (22,'Joseph','Santacroce',5,'Dobbs',218,4);
INSERT INTO `Faculty` VALUES (26,'Leonard','Anderson',3,'Annex South',101,1.6);
INSERT INTO `Faculty` VALUES (27,'Tugba','Arsava',3,'Annex Central',304,NULL);
INSERT INTO `Faculty` VALUES (28,'Abigail','Charest',3,NULL,NULL,2.1);
INSERT INTO `Faculty` VALUES (29,'Gautham','Das',3,'Annex Central',312,4);
INSERT INTO `Faculty` VALUES (30,'Michael','Davidson',3,'Annex South',101,4.3);
INSERT INTO `Faculty` VALUES (31,'Jerry','Hopcroft',3,'Annex South',101,NULL);
INSERT INTO `Faculty` VALUES (32,'Anuja','Kama',3,'Annex Central',304,1.5);
INSERT INTO `Faculty` VALUES (33,'Jim','Lambrechts',3,'Annex South',101,NULL);
INSERT INTO `Faculty` VALUES (34,'Henderson','Pritchard',3,'Annex Central',309,3.4);
INSERT INTO `Faculty` VALUES (36,'Leonidas','Deligiannidis',2,'Dobbs',145,3.5);
INSERT INTO `Faculty` VALUES (37,'Joseph','Lawrance',2,'Dobbs',133,3.8);
INSERT INTO `Faculty` VALUES (38,'Durga','Suresh',2,'Dobbs',143,10);
INSERT INTO `Faculty` VALUES (39,'Charles','Wiseman',2,'Dobbs',142,4.9);
INSERT INTO `Faculty` VALUES (40,'Hong-Sheng','Wu',2,'Dobbs',133,4.2);
INSERT INTO `Faculty` VALUES (41,'Mira','Yun',2,'Dobbs',133,3.5);
INSERT INTO `Faculty` VALUES (42,'Magdy','Ellabidy',2,'Dobbs',139,3.9);
INSERT INTO `Faculty` VALUES (43,'Karina','Assiter',2,'Dobbs',141,1.9);
INSERT INTO `Faculty` VALUES (44,'Nate','Derbinsky',2,'Dobbs',144,5);
INSERT INTO `Faculty` VALUES (45,'Jones','Yu',2,'Dobbs',135,4.8);
INSERT INTO `Faculty` VALUES (46,'Francis','Hopcroft',3,'Annex Central',308,3.3);
INSERT INTO `Faculty` VALUES (47,'Vitaliy','Saykin',3,'Annex South',101,2.7);
INSERT INTO `Faculty` VALUES (48,'Alborz','Nakisa',3,NULL,NULL,4);
INSERT INTO `Faculty` VALUES (49,'Ostertog','Heather',3,NULL,NULL,NULL);
CREATE TABLE "FSG" (
	`FSGID`	INTEGER,
	`Weekday`	TEXT,
	`WeekdayId`	INTEGER,
	`StartTime`	INTEGER,
	`EndTime`	INTEGER,
	`StartTime_Str`	TEXT,
	`EndTime_Str`	TEXT,
	`Building`	TEXT,
	`RoomNumber`	INTEGER,
	`FacultyID`	INTEGER,
	`StudentLeader`	INTEGER,
	`ClassID`	TEXT,
	PRIMARY KEY(`FSGID`),
	FOREIGN KEY(`FacultyID`) REFERENCES `Faculty`(`FacultyID`),
	FOREIGN KEY(`StudentLeader`) REFERENCES `Student`(`StudentID`),
	FOREIGN KEY(`ClassID`) REFERENCES `Class`(`ClassID`)
);
INSERT INTO `FSG` VALUES (1,'Wednesday',3,1800,2000,'6:00 PM','8:00 PM','Wentworth Hall',214,4,3,'COMP-1000');
INSERT INTO `FSG` VALUES (2,'Thursday',4,1800,2000,'6:00 PM','8:00 PM','Wentworth Hall',214,4,3,'COMP-1000');
INSERT INTO `FSG` VALUES (3,'Monday',1,1800,2000,'6:00 PM','8:00 PM','Ira Allen',203,5,2,'COMP-1100');
INSERT INTO `FSG` VALUES (4,'Tuesday',2,1800,2000,'6:00 PM','8:00 PM','Ira Allen',203,4,4,'MECH-3100');
INSERT INTO `FSG` VALUES (5,'Friday',5,1800,2000,'6:00 PM','8:00 PM','Ira Allen',203,20,5,'CIVE-3000');
INSERT INTO `FSG` VALUES (6,'Monday',1,1800,2000,'6:00 PM','8:00 PM','Ira Allen',203,8,6,'ELEC-2299');
INSERT INTO `FSG` VALUES (7,'Tuesday',2,1500,1700,'3:00 PM','5:00 PM','Wentworth Hall',214,13,2,'CIVE-2200');
INSERT INTO `FSG` VALUES (8,'Wednesday',3,1500,1700,'3:00 PM','5:00 PM','Wentworth Hall',214,15,2,'CIVE-8200');
CREATE TABLE `Ebook` (
	`ISBN`	TEXT,
	`URL`	TEXT,
	`Name`	TEXT,
	`ClassID`	TEXT,
	PRIMARY KEY(`ISBN`),
	FOREIGN KEY(`ClassID`) REFERENCES `Class`(`ClassID`)
);
INSERT INTO `Ebook` VALUES ('9780131212486','https://app.knovel.com/web/toc.v/cid:kpMHEGMH13/viewerType:toc/root_slug:machinerys-handbook-28th/url_slug:machinerys-handbook-28th/','Machinery''s Handbook 28th ed.','MANF-2000');
INSERT INTO `Ebook` VALUES ('9780133900699','http://docs.oracle.com/javase/specs/jls/se8/jls8.pdf','The Java Lanaguage Specification Java SE 8 Edition','COMP-1000');
INSERT INTO `Ebook` VALUES ('9780134034089','http://www.oracle.com/technetwork/java/javase/java-tutorial-downloads-2005894.html','The Java Tutorials','COMP-1000');
INSERT INTO `Ebook` VALUES ('9781441419200','http://greenteapress.com/thinkapjava/thinkapjava.pdf','Think Java (How to Think Like a Computer Scientist','COMP-1000');
INSERT INTO `Ebook` VALUES ('9780131872486','http://www.mindview.net/Books/TIJ','Thinking in Java (3rd edition)','COMP-1000');
INSERT INTO `Ebook` VALUES ('9780789749031','https://www.amazon.com/Networking-Essentials-3rd-Jeffrey-Beasley/dp/0789749033/ref=sr_1_4?s=books&ie=UTF8&qid=1480993019&sr=1-4&keywords=networking','Networking Essentials (3rd Edition)','COMP-1100');
INSERT INTO `Ebook` VALUES ('9781511654944','https://www.amazon.com/Introduction-Networking-How-Internet-Works/dp/1511654945/ref=sr_1_3?s=books&ie=UTF8&qid=1480993102&sr=1-3&keywords=computer+networking','Introduction To Networking: How the Internet Works','COMP-1100');
INSERT INTO `Ebook` VALUES ('9781119154723','https://www.amazon.com/Networking-All-One-Dummies-Doug/dp/1119154723/ref=sr_1_4?s=books&ie=UTF8&qid=1480993186&sr=1-4&keywords=computer+networking','Networking All-in-One For Dummies','COMP-1100');
INSERT INTO `Ebook` VALUES ('9780132856201','https://www.amazon.com/Computer-Networking-Top-Down-Approach-6th/dp/0132856204/ref=sr_1_5?s=books&ie=UTF8&qid=1480993186&sr=1-5&keywords=computer+networking','Computer Networking: A Top-Down Approach (6th Edition)','COMP-1100');
INSERT INTO `Ebook` VALUES ('9780071812245','https://www.amazon.com/Networking-Beginners-Guide-Bruce-Hallberg/dp/0071812245/ref=sr_1_6?s=books&ie=UTF8&qid=1480993186&sr=1-6&keywords=computer+networking','Networking: A Beginner''s Guide, Sixth Edition','COMP-1100');
INSERT INTO `Ebook` VALUES ('9781587201011','https://www.amazon.com/Computer-Networking-First-Step-Wendell-Odom/dp/1587201011/ref=sr_1_14?s=books&ie=UTF8&qid=1480993450&sr=1-14&keywords=computer+networking','Computer Networking First-Step','COMP-1100');
INSERT INTO `Ebook` VALUES ('9781285448367','https://www.amazon.com/Principles-Information-Security-Michael-Whitman/dp/1285448367/ref=sr_1_1?s=books&ie=UTF8&qid=1480993747&sr=1-1&keywords=security+textbook','Principle of Information Security 5th Edition','COMP-2500');
INSERT INTO `Ebook` VALUES ('9781305501256','https://www.amazon.com/Management-Information-Security-Michael-Whitman/dp/130550125X/ref=sr_1_2?s=books&ie=UTF8&qid=1480993747&sr=1-2&keywords=security+textbook','Management of Information Security','COMP-2500');
INSERT INTO `Ebook` VALUES ('9781783263745','https://www.amazon.com/Analysis-Network-Cyber-Security-Niall-Adams/dp/1783263741/ref=sr_1_10?s=books&ie=UTF8&qid=1480994007&sr=1-10&keywords=network+security+textbook','Data Analysis for Network Cyber-Security','COMP-2500');
INSERT INTO `Ebook` VALUES ('9781587052460','https://www.amazon.com/Security-Technologies-Solutions-Professional-Development/dp/1587052466/ref=sr_1_6?s=books&ie=UTF8&qid=1480994119&sr=1-6&keywords=network+security+textbook','Network Security Technologies and Solutions (CCIE Professional Development Series)','COMP-2500');
INSERT INTO `Ebook` VALUES ('9788193245279','https://www.amazon.com/Data-Structures-Algorithms-Made-Easy/dp/819324527X/ref=sr_1_1?s=books&ie=UTF8&qid=1480994510&sr=1-1&keywords=data+structures','Data Structures and Algorithms Made Easy: Data Structures and Algorithmic Puzzles, Fifth Edition','COMP-2000');
INSERT INTO `Ebook` VALUES ('9780672324536','https://www.amazon.com/Data-Structures-Algorithms-Java-2nd/dp/0672324539/ref=sr_1_3?s=books&ie=UTF8&qid=1480994510&sr=1-3&keywords=data+structures','Data Structures and Algorithms in Java (2nd Edition)','COMP-2000');
INSERT INTO `Ebook` VALUES ('9788192107592','https://www.amazon.com/Data-Structure-Algorithmic-Thinking-Python/dp/8192107590/ref=sr_1_5?s=books&ie=UTF8&qid=1480994510&sr=1-5&keywords=data+structures','Data Structure and Algorithmic Thinking with Python: Data Structure and Algorithmic Puzzles','COMP-2000');
INSERT INTO `Ebook` VALUES ('9781468101270','https://www.amazon.com/Data-Structures-Algorithms-Made-Easy/dp/1468101277/ref=sr_1_6?s=books&ie=UTF8&qid=1480994510&sr=1-6&keywords=data+structures','Data Structures and Algorithm Made Easy in Java: Data Structure and Algorithmic Puzzles, Second Edition','COMP-2000');
INSERT INTO `Ebook` VALUES ('9780201000238','https://www.amazon.com/Data-Structures-Algorithms-Alfred-Aho/dp/0201000237/ref=sr_1_7?s=books&ie=UTF8&qid=1480994510&sr=1-7&keywords=data+structures','Data Structures and Algorithms','COMP-2000');
INSERT INTO `Ebook` VALUES ('9780132847377','https://www.amazon.com/Data-Structures-Algorithm-Analysis-C/dp/013284737X/ref=sr_1_11?s=books&ie=UTF8&qid=1480994510&sr=1-11&keywords=data+structures','Data Structures & Algorithm Analysis in C++','COMP-2000');
INSERT INTO `Ebook` VALUES ('9780470128701','https://www.amazon.com/Data-Structures-Abstraction-Design-Using/dp/0470128704/ref=sr_1_12?s=books&ie=UTF8&qid=1480994510&sr=1-12&keywords=data+structures','Data Structures: Abstraction and Design Using Java','COMP-2000');
INSERT INTO `Ebook` VALUES ('9780124104099','https://www.amazon.com/Programming-Language-Pragmatics-Fourth-Michael/dp/0124104096/ref=sr_1_1?s=books&ie=UTF8&qid=1480995459&sr=1-1&keywords=programming+languages','Programming Language Pragmatics, Fourth Edition','COMP-3071');
INSERT INTO `Ebook` VALUES ('9780133943023','https://www.amazon.com/Concepts-Programming-Languages-Robert-Sebesta/dp/013394302X/ref=sr_1_2?s=books&ie=UTF8&qid=1480995459&sr=1-2&keywords=programming+languages','Concepts of Programming Languages (11th Edition)','COMP-3071');
INSERT INTO `Ebook` VALUES ('9781107029576','https://www.amazon.com/Practical-Foundations-Programming-Languages-Professor/dp/1107029570/ref=sr_1_4?s=books&ie=UTF8&qid=1480995459&sr=1-4&keywords=programming+languages','Practical Foundations for Programming Languages','COMP-3071');
INSERT INTO `Ebook` VALUES ('9788131516683','https://www.amazon.com/Programming-Languages-Principles-Practices-3rd/dp/8131516687/ref=sr_1_5?s=books&ie=UTF8&qid=1480995459&sr=1-5&keywords=programming+languages','Programming Languages: Principles & Practices: 3rd Edition','COMP-3071');
INSERT INTO `Ebook` VALUES ('9780471434467','https://www.amazon.com/Statics-Mechanics-Materials-Integrated-Approach/dp/0471434469/ref=sr_1_1?s=books&ie=UTF8&qid=1480995924&sr=1-1&keywords=statics+and+mechanics+of+materials','Statics and Mechanics of Materials: An Integrated Approach','CIVE-2000');
INSERT INTO `Ebook` VALUES ('9780133451603','https://www.amazon.com/Statics-Mechanics-Materials-Russell-Hibbeler/dp/0133451607/ref=sr_1_2?s=books&ie=UTF8&qid=1480996016&sr=1-2&keywords=statics+and+mechanics+of+materials','Statics and Mechanics of Materials (4th Edition)','CIVE-2000');
INSERT INTO `Ebook` VALUES ('9780134382593','https://www.amazon.com/Statics-Mechanics-Materials-Russell-Hibbeler/dp/0134382595/ref=sr_1_3?s=books&ie=UTF8&qid=1480996016&sr=1-3&keywords=statics+and+mechanics+of+materials','Statics and Mechanics of Materials (5th Edition)','CIVE-2000');
INSERT INTO `Ebook` VALUES ('9780073380155','https://www.amazon.com/Statics-Mechanics-Materials-Ferdinand-Beer/dp/0073380156/ref=sr_1_4?s=books&ie=UTF8&qid=1480996016&sr=1-4&keywords=statics+and+mechanics+of+materials','Statics and Mechanics of Materials','CIVE-2000');
INSERT INTO `Ebook` VALUES ('9780073398167','https://www.amazon.com/Statics-Mechanics-Materials-Ferdinand-Beer/dp/0073398160/ref=sr_1_5?s=books&ie=UTF8&qid=1480996016&sr=1-5&keywords=statics+and+mechanics+of+materials','Statics and Mechanics of Materials (2nd Edition)','CIVE-2000');
INSERT INTO `Ebook` VALUES ('9780470942734','https://www.amazon.com/Mechanics-Materials-Dummies-James-Allen/dp/0470942738/ref=sr_1_7?s=books&ie=UTF8&qid=1480996016&sr=1-7&keywords=statics+and+mechanics+of+materials','Mechanics of Materials for Dummies','CIVE-2000');
INSERT INTO `Ebook` VALUES ('9780333554838','https://www.amazon.com/Electrical-Circuit-Analysis-Design-Morris/dp/0333554833/ref=sr_1_1?s=books&ie=UTF8&qid=1480996727&sr=1-1&keywords=electrical+circuit+analysis+and+design','Electrical Circuit Analysis and Design','ELEC-2299');
INSERT INTO `Ebook` VALUES ('9780072460537','https://www.amazon.com/Digital-Integrated-Circuits-Analysis-Design/dp/0072460539/ref=sr_1_2?s=books&ie=UTF8&qid=1480996876&sr=1-2&keywords=electrical+circuit+analysis+and+design','CMOS Digital Integrated Circuits Analysis & Design','ELEC-2299');
INSERT INTO `Ebook` VALUES ('9780471321682','https://www.amazon.com/Analysis-Design-Analog-Integrated-Circuits/dp/0471321680/ref=sr_1_3?s=books&ie=UTF8&qid=1480996876&sr=1-3&keywords=electrical+circuit+analysis+and+design','Analysis and Design of Analog Integrated Circuits (4th Edition)','ELEC-2299');
INSERT INTO `Ebook` VALUES ('9780442008741','https://www.amazon.com/Introduction-Analysis-Building-Electrical-Engineering/dp/0442008740/ref=sr_1_11?s=books&ie=UTF8&qid=1480996876&sr=1-11&keywords=electrical+circuit+analysis+and+design','Introduction to the Design and Analysis of Building Electrical Systems (Electrical Engineering)','ELEC-2299');
INSERT INTO `Ebook` VALUES ('9781118164297','https://www.amazon.com/Engineering-Fluid-Mechanics-Donald-Elger/dp/1118164296/ref=sr_1_1?s=books&ie=UTF8&qid=1480997268&sr=1-1&keywords=engineering+fluid+mechanics','Engineering Fluid Mechanics','MECH-3100');
INSERT INTO `Ebook` VALUES ('9780470259771','https://www.amazon.com/Engineering-Fluid-Mechanics-Clayton-Crowe/dp/0470259779/ref=sr_1_3?s=books&ie=UTF8&qid=1480997350&sr=1-3&keywords=engineering+fluid+mechanics','Engineering Fluid Mechanics','MECH-3100');
INSERT INTO `Ebook` VALUES ('9780486683560','https://www.amazon.com/Fluid-Mechanics-Dover-Books-Physics/dp/0486683567/ref=sr_1_6?s=books&ie=UTF8&qid=1480997350&sr=1-6&keywords=engineering+fluid+mechanics','Fluid Mechanics (Dover Books on Physics)','MECH-3100');
INSERT INTO `Ebook` VALUES ('9780073398174','https://www.amazon.com/Thermodynamics-Engineering-Approach-Yunus-Cengel/dp/0073398179/ref=sr_1_1?s=books&ie=UTF8&qid=1480997676&sr=1-1&keywords=engineering+thermodynamics','Thermodynamics: An Engineering Approach','MECH-2250');
INSERT INTO `Ebook` VALUES ('9780077366742','https://www.amazon.com/Thermodynamics-Engineering-Approach-Student-Resources/dp/0077366743/ref=sr_1_2?s=books&ie=UTF8&qid=1480997676&sr=1-2&keywords=engineering+thermodynamics','Thermodynamics: An Engineering Approach with Student Resources DVD (7th Edition)','MECH-2250');
INSERT INTO `Ebook` VALUES ('9780471787358','https://www.amazon.com/Fundamentals-Engineering-Thermodynamics-Michael-Moran/dp/0471787353/ref=sr_1_3?s=books&ie=UTF8&qid=1480997676&sr=1-3&keywords=engineering+thermodynamics','Fundamentals of Engineering Thermodynamics','MECH-2250');
INSERT INTO `Ebook` VALUES ('9780071257718','https://www.amazon.com/Thermodynamics-Engineering-Approach-Sixth-Units/dp/0071257713/ref=sr_1_6?s=books&ie=UTF8&qid=1480997676&sr=1-6&keywords=engineering+thermodynamics','Thermodynamics: An Engineering Approach Sixth Edition (SI Units)','MECH-2250');
INSERT INTO `Ebook` VALUES ('9780133770018','https://www.amazon.com/Introduction-MATLAB-3rd-Delores-Etter/dp/013377001X/ref=sr_1_1?s=books&ie=UTF8&qid=1480998200&sr=1-1&keywords=Introduction+to+matlab','Introduction to MATLAB (3rd Edition)','ENGR-1800');
INSERT INTO `Ebook` VALUES ('9780073534879','https://www.amazon.com/Introduction-MATLAB-Engineers-William-Palm/dp/0073534870/ref=sr_1_2?s=books&ie=UTF8&qid=1480998200&sr=1-2&keywords=Introduction+to+matlab','Introduction to MATLAB for Engineers','ENGR-1800');
INSERT INTO `Ebook` VALUES ('9780124058767','https://www.amazon.com/Matlab-Practical-Introduction-Programming-Problem/dp/0124058760/ref=sr_1_3?s=books&ie=UTF8&qid=1480998200&sr=1-3&keywords=Introduction+to+matlab','Matlab: A Practical Introduction to Programming and Problem Solving','ENGR-1800');
INSERT INTO `Ebook` VALUES ('9780124202283','https://www.amazon.com/Introduction-MATLAB-Programming-Numerical-Engineers/dp/0124202284/ref=sr_1_4?s=books&ie=UTF8&qid=1480998200&sr=1-4&keywords=Introduction+to+matlab','An Introduction to MATLAB Programming and Numerical Methods for Engineers','ENGR-1800');
CREATE TABLE "Department" (
	`DepartmentID`	INTEGER,
	`DepartmentName`	TEXT UNIQUE,
	PRIMARY KEY(`DepartmentID`)
);
INSERT INTO `Department` VALUES (1,'Electrical Engineering and Technology');
INSERT INTO `Department` VALUES (2,'Computer Science and Computer Networking');
INSERT INTO `Department` VALUES (3,'Civil Engineering and Technology');
INSERT INTO `Department` VALUES (4,'Mechanical Engineering and Technology');
INSERT INTO `Department` VALUES (5,'Interdisciplinary Engineering');
INSERT INTO `Department` VALUES (6,'Biomedical Engineering');
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
INSERT INTO `Class` VALUES ('COMP-1000','Computer Science I','Fall',2016,2,4);
INSERT INTO `Class` VALUES ('COMP-1100','Intro To Networks','Fall',2016,2,2);
INSERT INTO `Class` VALUES ('COMP-2500','Security Principles','Fall',2016,2,3);
INSERT INTO `Class` VALUES ('COMP-2000','Data Structures','Fall',2016,2,3);
INSERT INTO `Class` VALUES ('COMP-3071','Intro To Programming Languages','Fall',2016,2,3);
INSERT INTO `Class` VALUES ('CIVE-2000','Statics and Mechanics of Materials 1','Fall',2016,3,7);
INSERT INTO `Class` VALUES ('CIVE-3800','EPIC Projects in Civil Engineering 1','Fall',2016,3,6);
INSERT INTO `Class` VALUES ('CIVE-2200','Intro to Geomatics','Fall',2016,3,13);
INSERT INTO `Class` VALUES ('CIVE-3000','Fluid Mechanics','Fall',2016,3,13);
INSERT INTO `Class` VALUES ('CIVE-3000L','Fluid Mechanics - Lab','Fall',2016,3,15);
INSERT INTO `Class` VALUES ('CIVE-3100','Environmental Engineering','Fall',2016,3,16);
INSERT INTO `Class` VALUES ('CIVE-3200','Structural Analysis','Fall',2016,3,17);
INSERT INTO `Class` VALUES ('CIVE-3200L','Structural Analysis - Lab','Fall',2016,3,17);
INSERT INTO `Class` VALUES ('CIVE-3300','Soil Mechanics','Fall',2016,3,20);
INSERT INTO `Class` VALUES ('CIVE-3300L','Soil Mechanics - Lab','Fall',2016,3,20);
INSERT INTO `Class` VALUES ('CIVE-3500','Design Studios Lab','Fall',2016,3,19);
INSERT INTO `Class` VALUES ('CIVE-8000','Project Management Principles & Practices','Fall',2016,3,37);
INSERT INTO `Class` VALUES ('CIVE-8200','Environmental Systems','Fall',2016,3,15);
INSERT INTO `Class` VALUES ('CIVE-8400','Highway Design & Transportation Planning','Fall',2016,3,38);
INSERT INTO `Class` VALUES ('CIVE-8500','Geotech Engineering for Infrastructure','Fall',2016,3,20);
INSERT INTO `Class` VALUES ('CIVE-8550','Site Planning and Development','Fall',2016,3,18);
INSERT INTO `Class` VALUES ('ELEC-2299','Electrical Circuit Analysis and Design','Fall',2016,5,8);
INSERT INTO `Class` VALUES ('MECH-3100','Engineering Fluid Mechanics','Fall',2016,4,10);
INSERT INTO `Class` VALUES ('MECH-2250','Engineering Thermodynamics I','Fall',2016,4,10);
INSERT INTO `Class` VALUES ('ENGR-1800','Introduction to MATLAB','Fall',2016,4,10);
COMMIT;
