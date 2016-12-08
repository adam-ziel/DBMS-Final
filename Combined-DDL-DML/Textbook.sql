CREATE TABLE "Textbook" (
	`ISBN`	INTEGER,
	`Name`	TEXT,
	`LibraryAvailability`	TEXT,
	`ClassID`	TEXT,
	PRIMARY KEY(`ISBN`),
	FOREIGN KEY(`ClassID`) REFERENCES Class(ClassID)
);

INSERT INTO Textbook VALUES (9780133451603, "Statics and Mechanics of Materials, 4th edition", "Available", "CIVE-2000");
INSERT INTO Textbook VALUES (9781587133169, "Introduction To Networks Companion Guide", "Available", "COMP-1100");
INSERT INTO Textbook VALUES (9780133085044, "A Practical Guide to Linux Commands, Editors, and Shell Programming, 2E", "Available", "COMP-1100");
INSERT INTO Textbook VALUES (9781305093911, "Security+ Guide to Network Security Fundamentals, 5e, Boston, MA. Course Technology", "Available", "COMP-2500");
INSERT INTO Textbook VALUES (9780132370455, "Data Structures and Abstractions with Java, 2nd Edition", "Available" , "COMP-2000");
INSERT INTO Textbook VALUES (9780133943023, "Concepts of Programming Languages, 11th Edition, Addison-Wesley, 2013", "Available" , "COMP-1000");
INSERT INTO Textbook VALUES (9780133775983, "Programming to World Wide Web, 8th Edition, Pearson, 2014.", "Available", "COMP-3670");
INSERT INTO Textbook VALUES (9781118539293, "Basic Engineering Circuit Analysis, 11th Edition", "Available", "ELEC-2299");
INSERT INTO Textbook VALUES (9781118399712, "Fundamentals of Fluid Mechanics", "Available", "MECH-3100");
INSERT INTO Textbook VALUES (9781118974865, "Fundamentals of Engineering Thermodynamics, 8th ed.", "Available", "MECH-2250");
INSERT INTO Textbook VALUES (9780133128741, "Manufacturing Engineering & Technology (7th Edition)", "Available", "MANF-2000");
INSERT INTO Textbook VALUES (9789339221638, "Shigley's Mechnical Engineering Design, 10th ed.", "Available", "MECH-3000");
INSERT INTO Textbook VALUES (9780128045251, "Matlab, Fourth Edition: A Practical Introduction to Programming and Problem Solving", "Available", "ENGR-1800");
