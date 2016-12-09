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
INSERT INTO `TutorHours` VALUES (5,'Monday','1',1330,1530,'1:30 PM','3:30 PM');
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
CREATE TABLE `Tutor` (
	`StudentID`	INTEGER,
	`ClassID`	TEXT,
	FOREIGN KEY(`StudentID`) REFERENCES `Student`(`StudentID`),
	FOREIGN KEY(`ClassID`) REFERENCES `Class`(`ClassID`)
);
INSERT INTO `Tutor` VALUES (3,'COMP-1000');
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
INSERT INTO `Textbook` VALUES (9780128045251,'Matlab, Fourth Edition: A Practical Introduction to Programming and Problem Solving','Available','ENGR-1800');
INSERT INTO `Textbook` VALUES (9780132370455,'Data Structures and Abstractions with Java, 2nd Edition','Available','COMP-2000');
INSERT INTO `Textbook` VALUES (9780133085044,'A Practical Guide to Linux Commands, Editors, and Shell Programming, 2E','Available','COMP-1100');
INSERT INTO `Textbook` VALUES (9780133128741,'Manufacturing Engineering & Technology (7th Edition)','Available','MANF-2000');
INSERT INTO `Textbook` VALUES (9780133451603,'Statics and Mechanics of Materials, 4th edition','Available','CIVE-2000');
INSERT INTO `Textbook` VALUES (9780133775983,'Programming to World Wide Web, 8th Edition, Pearson, 2014.','Available','COMP-3670');
INSERT INTO `Textbook` VALUES (9780133943023,'Concepts of Programming Languages, 11th Edition, Addison-Wesley, 2013','Available','COMP-1000');
INSERT INTO `Textbook` VALUES (9781118399712,'Fundamentals of Fluid Mechanics','Available','MECH-3100');
INSERT INTO `Textbook` VALUES (9781118539293,'Basic Engineering Circuit Analysis, 11th Edition','Available','ELEC-2299');
INSERT INTO `Textbook` VALUES (9781118974865,'Fundamentals of Engineering Thermodynamics, 8th ed.','Available','MECH-2250');
INSERT INTO `Textbook` VALUES (9781305093911,'Security+ Guide to Network Security Fundamentals, 5e, Boston, MA. Course Technology','Available','COMP-2500');
INSERT INTO `Textbook` VALUES (9781587133169,'Introduction To Networks Companion Guide','Available','COMP-1100');
INSERT INTO `Textbook` VALUES (9789339221638,'Shigley''s Mechnical Engineering Design, 10th ed.','Available','MECH-3000');
CREATE TABLE "StudentLeader" (
  `StudentID`	INTEGER,
  `FSGID`	INTEGER,
  FOREIGN KEY(`StudentID`) REFERENCES `Student`(`StudentID`),
  FOREIGN KEY(`FSGID`) REFERENCES `FSG`(`FSGID`)
);
INSERT INTO `StudentLeader` VALUES (1,7);
INSERT INTO `StudentLeader` VALUES (5,5);
INSERT INTO `StudentLeader` VALUES (19,8);
INSERT INTO `StudentLeader` VALUES (19,9);
INSERT INTO `StudentLeader` VALUES (2,3);
INSERT INTO `StudentLeader` VALUES (3,1);
INSERT INTO `StudentLeader` VALUES (3,2);
INSERT INTO `StudentLeader` VALUES (4,4);
INSERT INTO `StudentLeader` VALUES (6,6);
CREATE TABLE `Student` (
	`StudentID`	INTEGER PRIMARY KEY,
	`FName`	TEXT,
	`LName`	TEXT,
	`MajorID`	TEXT,
	FOREIGN KEY(`MajorID`) REFERENCES `Major`(`MajorID`)
);
INSERT INTO `Student` VALUES (1,'George','Lucas','BSCE');
INSERT INTO `Student` VALUES (2,'Bobby','Laughlin','BCOS');
INSERT INTO `Student` VALUES (3,'Anthony','A','BCOS');
INSERT INTO `Student` VALUES (4,'Daniel','Calderon','BCOS');
INSERT INTO `Student` VALUES (5,'Stephen','Campion','BCOS');
INSERT INTO `Student` VALUES (6,'Bethy','Diakabana','BCOS');
INSERT INTO `Student` VALUES (7,'Luis Jose','Bechara Romero','BCOS');
INSERT INTO `Student` VALUES (8,'Jacob','Jones','BCOS');
INSERT INTO `Student` VALUES (9,'Julie','Medeiros','BSCN');
INSERT INTO `Student` VALUES (10,'David','Lee','BSME');
INSERT INTO `Student` VALUES (11,'Nick','Chase','BSME');
INSERT INTO `Student` VALUES (12,'Bret','Glendye','BSME');
INSERT INTO `Student` VALUES (13,'Andy','Cortio','BSCE');
INSERT INTO `Student` VALUES (14,'Bachar','Al Hardy','BELM');
INSERT INTO `Student` VALUES (15,'Gregory','Butterworth','BSEE');
INSERT INTO `Student` VALUES (16,'Shubh','Chokshi','BSEE');
INSERT INTO `Student` VALUES (17,'Lyn','Carswell','BSEE');
INSERT INTO `Student` VALUES (18,'Jojo','J','BSEE');
INSERT INTO `Student` VALUES (19,'Abbey','Jean','BSAM');
CREATE TABLE "Software" (
	`SoftwareID`INTEGER,
	`URL`	TEXT,
	`Name`	TEXT,
	`ClassID`	TEXT,
	PRIMARY KEY(`SoftwareID`),
	FOREIGN KEY(`ClassID`) REFERENCES Class(ClassID)
);
INSERT INTO `Software` VALUES (1,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Adobe Reader DC','COMP-1000');
INSERT INTO `Software` VALUES (10,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Apache Tomcat','COMP-1100');
INSERT INTO `Software` VALUES (17,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Bonjour','COMP-1100');
INSERT INTO `Software` VALUES (25,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','TASM','COMP-2500');
INSERT INTO `Software` VALUES (28,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Eclipse','COMP-1000');
INSERT INTO `Software` VALUES (29,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Eclipse','COMP-1100');
INSERT INTO `Software` VALUES (30,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Eclipse','COMP-2500');
INSERT INTO `Software` VALUES (31,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Eclipse','COMP-2000');
INSERT INTO `Software` VALUES (32,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Eclipse','COMP-3071');
INSERT INTO `Software` VALUES (37,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Kexi FileMaker Pro','COMP-3071');
INSERT INTO `Software` VALUES (41,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','MATLAB','COMP-2000');
INSERT INTO `Software` VALUES (44,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Symbolic Math Tool Box','COMP-1100');
INSERT INTO `Software` VALUES (50,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Database Tool Box','COMP-2500');
INSERT INTO `Software` VALUES (57,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Computational Biology','COMP-3071');
INSERT INTO `Software` VALUES (62,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Bioinformatics Tool Box','COMP-3071');
INSERT INTO `Software` VALUES (67,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Sim-Biology','COMP-3071');
INSERT INTO `Software` VALUES (68,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','CutePDF','COMP-1000');
INSERT INTO `Software` VALUES (69,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','CutePDF','COMP-1100');
INSERT INTO `Software` VALUES (74,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Java DB','COMP-1100');
INSERT INTO `Software` VALUES (79,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Java (TM)SE Development Kit','COMP-1100');
INSERT INTO `Software` VALUES (84,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Java Runtime Environment','COMP-1100');
INSERT INTO `Software` VALUES (89,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Java SDK','COMP-1100');
INSERT INTO `Software` VALUES (95,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Java Production Kit','COMP-1100');
INSERT INTO `Software` VALUES (119,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Office Visio Professional','COMP-1000');
INSERT INTO `Software` VALUES (120,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Office Visio Professional','COMP-1100');
INSERT INTO `Software` VALUES (127,'https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf','Visual Studio Professional Edition','COMP-2000');
INSERT INTO `Software` VALUES (129,'https://www.mathworks.com/programs/trials/trial_request.html','Matlab','ENGR-1800');
INSERT INTO `Software` VALUES (130,'https://lumen.ni.com/nicif/us/academicevalmultisim/content.xhtml','Multisim','ELEC-2299');
INSERT INTO `Software` VALUES (131,'http://www.keysight.com/en/pd-1476554-pn-W4000D/vee-pro-932?cc=US&lc=eng','Agilent VEE','ELEC-2299');
INSERT INTO `Software` VALUES (132,'http://www.solidworks.com/sw/products/3d-cad/packages.htm','Solidworks','MECH-3100');
INSERT INTO `Software` VALUES (133,'https://bridgecontest.org/resources/download/','West Point Bridge Designer','MECH-2250');
INSERT INTO `Software` VALUES (134,'https://www.oracle.com/applications/primavera/products/project-management.html','Primavera P6 Professional','CIVE-2000');
INSERT INTO `Software` VALUES (135,'http://www.design-simulation.com/ip/','Interactive Physics','CIVE-2000');
INSERT INTO `Software` VALUES (136,'http://www.design-simulation.com/ip/','Interactive Physics','CIVE-3800');
INSERT INTO `Software` VALUES (137,'http://www.design-simulation.com/ip/','Interactive Physics','CIVE-2200');
INSERT INTO `Software` VALUES (138,'http://www.design-simulation.com/ip/','Interactive Physics','CIVE-3000');
INSERT INTO `Software` VALUES (139,'http://www.design-simulation.com/ip/','Interactive Physics','CIVE-3300');
INSERT INTO `Software` VALUES (140,'http://www.design-simulation.com/ip/','Interactive Physics','CIVE-3500');
INSERT INTO `Software` VALUES (141,'http://www.autodesk.com/products/autocad-civil-3d/overview','Civil 3D','CIVE-8500');
INSERT INTO `Software` VALUES (142,'http://www.autodesk.com/products/autocad-civil-3d/overview','Civil 3D','CIVE-8550');
INSERT INTO `Software` VALUES (143,'http://www.sage.com/us/sage-construction/sage-estimating','Sage Timberline Estimating Extended','CIVE-3200');
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
INSERT INTO `OnlineTutorial` VALUES (23,'https://www.lynda.com/MATLAB-tutorials/Understanding-MATLAB-interface/124067/138167-4.html','Understanding the MATLAB interface','Lynda','ENGR-1800');
INSERT INTO `OnlineTutorial` VALUES (24,'https://www.lynda.com/MATLAB-tutorials/Working-MATLAB-variables/124067/138168-4.html','Working with MATLAB variables','Lynda','ENGR-1800');
INSERT INTO `OnlineTutorial` VALUES (25,'https://www.lynda.com/MATLAB-tutorials/Everything-matrix/124067/138169-4.html','Everything is a matrix','Lynda','ENGR-1800');
INSERT INTO `OnlineTutorial` VALUES (26,'https://www.lynda.com/MATLAB-tutorials/Understanding-data-structures/124067/138170-4.html','Understanding data structures','Lynda','ENGR-1800');
INSERT INTO `OnlineTutorial` VALUES (27,'https://www.lynda.com/MATLAB-tutorials/Basic-commands/124067/138172-4.html','Basic commands','Lynda','ENGR-1800');
INSERT INTO `OnlineTutorial` VALUES (28,'https://www.lynda.com/MATLAB-tutorials/Using-built-functions-variables/124067/138173-4.html','Using built-in functions and variables','Lynda','ENGR-1800');
INSERT INTO `OnlineTutorial` VALUES (29,'https://www.lynda.com/MATLAB-tutorials/Working-matrix-scalar-operations/124067/138174-4.html','Working with matrix and scalar operations','Lynda','ENGR-1800');
INSERT INTO `OnlineTutorial` VALUES (30,'https://www.lynda.com/MATLAB-tutorials/Control-flow/124067/138175-4.html','Control flow','Lynda','ENGR-1800');
INSERT INTO `OnlineTutorial` VALUES (31,'https://www.lynda.com/MATLAB-tutorials/Understanding-data-types/124067/138176-4.html','Understanding data types','Lynda','ENGR-1800');
INSERT INTO `OnlineTutorial` VALUES (32,'https://www.lynda.com/Developer-Programming-Foundations-tutorials/What-data-structure/149042/177101-4.html?srchtrk=index%3a0%0alinktypeid%3a2%0aq%3adata+structures%0apage%3a1%0as%3arelevance%0asa%3atrue%0aproducttypeid%3a2','What is a data structure?','Lynda','COMP-2000');
INSERT INTO `OnlineTutorial` VALUES (33,'https://www.lynda.com/Developer-Programming-Foundations-tutorials/Describing-simple-data-structures/149042/177102-4.html?srchtrk=index%3a0%0alinktypeid%3a2%0aq%3adata+structures%0apage%3a1%0as%3arelevance%0asa%3atrue%0aproducttypeid%3a2','Describing simple data structures','Lynda','COMP-2000');
INSERT INTO `OnlineTutorial` VALUES (34,'https://www.lynda.com/Developer-Programming-Foundations-tutorials/Using-C-style-structs/149042/177103-4.html?srchtrk=index%3a0%0alinktypeid%3a2%0aq%3adata+structures%0apage%3a1%0as%3arelevance%0asa%3atrue%0aproducttypeid%3a2','Using C-style structs','Lynda','COMP-2000');
INSERT INTO `OnlineTutorial` VALUES (35,'https://www.lynda.com/Developer-Programming-Foundations-tutorials/Basic-arrays/149042/177104-4.html?srchtrk=index%3a0%0alinktypeid%3a2%0aq%3adata+structures%0apage%3a1%0as%3arelevance%0asa%3atrue%0aproducttypeid%3a2','Basic Arrays','Lynda','COMP-2000');
INSERT INTO `OnlineTutorial` VALUES (36,'https://www.lynda.com/Developer-Programming-Foundations-tutorials/Multidimensional-arrays/149042/177105-4.html?srchtrk=index%3a0%0alinktypeid%3a2%0aq%3adata+structures%0apage%3a1%0as%3arelevance%0asa%3atrue%0aproducttypeid%3a2','Multidimensional arrays','Lynda','COMP-2000');
INSERT INTO `OnlineTutorial` VALUES (37,'https://www.lynda.com/Developer-Programming-Foundations-tutorials/Jagged-arrays/149042/177106-4.html?srchtrk=index%3a0%0alinktypeid%3a2%0aq%3adata+structures%0apage%3a1%0as%3arelevance%0asa%3atrue%0aproducttypeid%3a2','Jagged arrays','Lynda','COMP-2000');
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
INSERT INTO `OfficeHours` VALUES (8,'Monday',1,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (8,'Tuesday',2,800,950,'8:00 AM','9:50 AM');
INSERT INTO `OfficeHours` VALUES (8,'Wednesday',3,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (8,'Friday',5,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (9,'Tuesday',2,1000,1200,'10:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (9,'Thursday',4,1000,1200,'10:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (10,'Tuesday',2,800,950,'8:00 AM','9:50 AM');
INSERT INTO `OfficeHours` VALUES (10,'Thursday',4,800,950,'8:00 AM','9:50 AM');
INSERT INTO `OfficeHours` VALUES (10,'Tuesday',2,1300,1450,'1:00 PM','2:50 PM');
INSERT INTO `OfficeHours` VALUES (10,'Thursday',4,1300,1450,'1:00 PM','2:50 PM');
INSERT INTO `OfficeHours` VALUES (11,'Wednesday',3,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (11,'Friday',5,900,1100,'9:00 AM','11:00 AM');
INSERT INTO `OfficeHours` VALUES (11,'Monday',1,900,1100,'9:00 AM','11:00 AM');
INSERT INTO `OfficeHours` VALUES (12,'Monday',1,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (12,'Wednesday',3,1100,1200,'11:00 AM','12:00 AM');
INSERT INTO `OfficeHours` VALUES (12,'Friday',5,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (13,'Monday',1,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (13,'Tuesday',2,800,950,'8:00 AM','9:50 AM');
INSERT INTO `OfficeHours` VALUES (13,'Wednesday',3,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (13,'Friday',5,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (14,'Tuesday',2,1000,1200,'10:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (14,'Thursday',4,1000,1200,'10:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (15,'Monday',1,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (15,'Tuesday',2,800,950,'8:00 AM','9:50 AM');
INSERT INTO `OfficeHours` VALUES (15,'Wednesday',3,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (17,'Tuesday',2,1000,1200,'10:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (17,'Thursday',4,1000,1200,'10:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (18,'Tuesday',2,800,950,'8:00 AM','9:50 AM');
INSERT INTO `OfficeHours` VALUES (18,'Thursday',4,800,950,'8:00 AM','9:50 AM');
INSERT INTO `OfficeHours` VALUES (18,'Tuesday',2,1300,1450,'1:00 PM','2:50 PM');
INSERT INTO `OfficeHours` VALUES (18,'Thursday',4,1300,1450,'1:00 PM','2:50 PM');
INSERT INTO `OfficeHours` VALUES (19,'Wednesday',3,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (19,'Friday',5,900,1100,'9:00 AM','11:00 AM');
INSERT INTO `OfficeHours` VALUES (19,'Monday',1,900,1100,'9:00 AM','11:00 AM');
INSERT INTO `OfficeHours` VALUES (20,'Tuesday',2,1000,1200,'10:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (20,'Thursday',4,1000,1200,'10:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (21,'Monday',1,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (21,'Tuesday',2,800,950,'8:00 AM','9:50 AM');
INSERT INTO `OfficeHours` VALUES (21,'Wednesday',3,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (22,'Monday',1,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (22,'Tuesday',2,800,950,'8:00 AM','9:50 AM');
INSERT INTO `OfficeHours` VALUES (22,'Wednesday',3,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (22,'Friday',5,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (26,'Tuesday',2,1000,1200,'10:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (26,'Thursday',4,1000,1200,'10:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (27,'Monday',1,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (27,'Tuesday',2,800,950,'8:00 AM','9:50 AM');
INSERT INTO `OfficeHours` VALUES (27,'Wednesday',3,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (27,'Friday',5,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (29,'Tuesday',2,800,950,'8:00 AM','9:50 AM');
INSERT INTO `OfficeHours` VALUES (29,'Thursday',4,800,950,'8:00 AM','9:50 AM');
INSERT INTO `OfficeHours` VALUES (29,'Tuesday',2,1300,1450,'1:00 PM','2:50 PM');
INSERT INTO `OfficeHours` VALUES (29,'Thursday',4,1300,1450,'1:00 PM','2:50 PM');
INSERT INTO `OfficeHours` VALUES (30,'Monday',1,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (30,'Tuesday',2,800,950,'8:00 AM','9:50 AM');
INSERT INTO `OfficeHours` VALUES (30,'Wednesday',3,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (30,'Friday',5,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (31,'Tuesday',2,1000,1200,'10:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (31,'Thursday',4,1000,1200,'10:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (32,'Tuesday',2,800,950,'8:00 AM','9:50 AM');
INSERT INTO `OfficeHours` VALUES (32,'Thursday',4,800,950,'8:00 AM','9:50 AM');
INSERT INTO `OfficeHours` VALUES (32,'Tuesday',2,1300,1450,'1:00 PM','2:50 PM');
INSERT INTO `OfficeHours` VALUES (32,'Thursday',4,1300,1450,'1:00 PM','2:50 PM');
INSERT INTO `OfficeHours` VALUES (33,'Wednesday',3,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (33,'Friday',5,900,1100,'9:00 AM','11:00 AM');
INSERT INTO `OfficeHours` VALUES (33,'Monday',1,900,1100,'9:00 AM','11:00 AM');
INSERT INTO `OfficeHours` VALUES (34,'Monday',1,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (34,'Wednesday',3,1100,1200,'11:00 AM','12:00 AM');
INSERT INTO `OfficeHours` VALUES (34,'Friday',5,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (36,'Monday',1,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (36,'Tuesday',2,800,950,'8:00 AM','9:50 AM');
INSERT INTO `OfficeHours` VALUES (36,'Wednesday',3,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (36,'Friday',5,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (37,'Tuesday',2,1000,1200,'10:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (37,'Thursday',4,1000,1200,'10:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (38,'Monday',1,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (38,'Tuesday',2,800,950,'8:00 AM','9:50 AM');
INSERT INTO `OfficeHours` VALUES (38,'Wednesday',3,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (39,'Monday',1,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (39,'Tuesday',2,800,950,'8:00 AM','9:50 AM');
INSERT INTO `OfficeHours` VALUES (39,'Wednesday',3,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (39,'Friday',5,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (40,'Tuesday',2,1000,1200,'10:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (40,'Thursday',4,1000,1200,'10:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (41,'Monday',1,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (42,'Tuesday',2,800,950,'8:00 AM','9:50 AM');
INSERT INTO `OfficeHours` VALUES (42,'Wednesday',3,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (43,'Monday',1,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (43,'Tuesday',2,800,950,'8:00 AM','9:50 AM');
INSERT INTO `OfficeHours` VALUES (43,'Wednesday',3,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (43,'Friday',5,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (44,'Tuesday',2,1000,1200,'10:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (44,'Thursday',4,1000,1200,'10:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (45,'Tuesday',2,800,950,'8:00 AM','9:50 AM');
INSERT INTO `OfficeHours` VALUES (45,'Thursday',4,800,950,'8:00 AM','9:50 AM');
INSERT INTO `OfficeHours` VALUES (45,'Tuesday',2,1300,1450,'1:00 PM','2:50 PM');
INSERT INTO `OfficeHours` VALUES (45,'Thursday',4,1300,1450,'1:00 PM','2:50 PM');
INSERT INTO `OfficeHours` VALUES (46,'Wednesday',3,1100,1200,'11:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (46,'Friday',5,900,1100,'9:00 AM','11:00 AM');
INSERT INTO `OfficeHours` VALUES (46,'Monday',1,900,1100,'9:00 AM','11:00 AM');
INSERT INTO `OfficeHours` VALUES (47,'Tuesday',2,1000,1200,'10:00 AM','12:00 PM');
INSERT INTO `OfficeHours` VALUES (47,'Thursday',4,1000,1200,'10:00 AM','12:00 PM');
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
CREATE TABLE `Faculty` (
	`FacultyID`	INTEGER PRIMARY KEY,
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
INSERT INTO `FSG` VALUES (1,'Wednesday',3,1800,2000,'6:00 PM','8:00 PM','Wentworth Hall',214,44,3,'COMP-1000');
INSERT INTO `FSG` VALUES (2,'Thursday',4,1800,2000,'6:00 PM','8:00 PM','Wentworth Hall',214,44,3,'COMP-1000');
INSERT INTO `FSG` VALUES (3,'Monday',1,1800,2000,'6:00 PM','8:00 PM','Ira Allen',203,44,2,'COMP-1100');
INSERT INTO `FSG` VALUES (4,'Tuesday',2,1800,2000,'6:00 PM','8:00 PM','Ira Allen',203,10,4,'MECH-3100');
INSERT INTO `FSG` VALUES (5,'Friday',5,1800,2000,'6:00 PM','8:00 PM','Ira Allen',203,30,1,'CIVE-3000');
INSERT INTO `FSG` VALUES (6,'Monday',1,1800,2000,'6:00 PM','8:00 PM','Ira Allen',203,12,6,'ELEC-2299');
INSERT INTO `FSG` VALUES (7,'Tuesday',2,1500,1700,'3:00 PM','5:00 PM','Wentworth Hall',214,31,1,'CIVE-2200');
INSERT INTO `FSG` VALUES (8,'Wednesday',3,1500,1700,'3:00 PM','5:00 PM','Wentworth Hall',214,30,19,'CIVE-8200');
INSERT INTO `FSG` VALUES (9,'Monday',1,1300,1400,'1:00 PM','2:00 PM','Ira Allen',200,27,19,'CIVE-2000');
CREATE TABLE `Ebook` (
	'ISBN'	TEXT,
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
	`MajorID`	TEXT,
	PRIMARY KEY(`DepartmentID`)
);
INSERT INTO `Department` VALUES (2,'Computer Science and Computer Networking','BCOS');
INSERT INTO `Department` VALUES (3,'Civil Engineering and Technology','BSCE');
INSERT INTO `Department` VALUES (4,'Mechanical Engineering and Technology','BSME');
INSERT INTO `Department` VALUES (5,'Electrical Engineering and Technology','BSEE');
INSERT INTO `Department` VALUES (6,'Biomedical Engineering','BMED');
INSERT INTO `Department` VALUES (7,'Computer Networking','BSCN');
INSERT INTO `Department` VALUES (8,'Interdisciplinary Engineering','BELM');
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
INSERT INTO `Class` VALUES ('COMP-1000','Computer Science I','Fall',2016,2,44);
INSERT INTO `Class` VALUES ('COMP-1100','Intro To Networks','Fall',2016,2,43);
INSERT INTO `Class` VALUES ('COMP-2500','Security Principles','Fall',2016,2,42);
INSERT INTO `Class` VALUES ('COMP-2000','Data Structures','Fall',2016,2,43);
INSERT INTO `Class` VALUES ('COMP-3071','Intro To Programming Languages','Fall',2016,2,43);
INSERT INTO `Class` VALUES ('CIVE-2000','Statics and Mechanics of Materials 1','Fall',2016,3,47);
INSERT INTO `Class` VALUES ('CIVE-3800','EPIC Projects in Civil Engineering 1','Fall',2016,3,46);
INSERT INTO `Class` VALUES ('CIVE-2200','Intro to Geomatics','Fall',2016,3,27);
INSERT INTO `Class` VALUES ('CIVE-3000','Fluid Mechanics','Fall',2016,3,28);
INSERT INTO `Class` VALUES ('CIVE-3000L','Fluid Mechanics - Lab','Fall',2016,3,30);
INSERT INTO `Class` VALUES ('CIVE-3100','Environmental Engineering','Fall',2016,3,31);
INSERT INTO `Class` VALUES ('CIVE-3200','Structural Analysis','Fall',2016,3,32);
INSERT INTO `Class` VALUES ('CIVE-3200L','Structural Analysis - Lab','Fall',2016,3,33);
INSERT INTO `Class` VALUES ('CIVE-3300','Soil Mechanics','Fall',2016,3,34);
INSERT INTO `Class` VALUES ('CIVE-3300L','Soil Mechanics - Lab','Fall',2016,3,29);
INSERT INTO `Class` VALUES ('CIVE-3500','Design Studios Lab','Fall',2016,3,28);
INSERT INTO `Class` VALUES ('CIVE-8000','Project Management Principles & Practices','Fall',2016,3,26);
INSERT INTO `Class` VALUES ('CIVE-8200','Environmental Systems','Fall',2016,3,48);
INSERT INTO `Class` VALUES ('CIVE-8400','Highway Design & Transportation Planning','Fall',2016,3,49);
INSERT INTO `Class` VALUES ('CIVE-8500','Geotech Engineering for Infrastructure','Fall',2016,3,46);
INSERT INTO `Class` VALUES ('CIVE-8550','Site Planning and Development','Fall',2016,3,47);
INSERT INTO `Class` VALUES ('ELEC-2299','Electrical Circuit Analysis and Design','Fall',2016,5,19);
INSERT INTO `Class` VALUES ('MECH-3100','Engineering Fluid Mechanics','Fall',2016,4,10);
INSERT INTO `Class` VALUES ('MECH-2250','Engineering Thermodynamics I','Fall',2016,4,10);
INSERT INTO `Class` VALUES ('ENGR-1800','Introduction to MATLAB','Fall',2016,4,10);
COMMIT;
