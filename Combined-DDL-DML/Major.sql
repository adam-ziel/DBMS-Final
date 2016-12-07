CREATE TABLE "Major" (
	`MajorID`	TEXT,
	`Name`	TEXT UNIQUE,
	PRIMARY KEY(`MajorID`)
);

INSERT INTO Major VALUES ("BSCE", "Civil Engineering");
INSERT INTO Major VALUES ("BCOS", "Computer Science");
INSERT INTO Major VALUES ("BSCN", "Computer Networking");
INSERT INTO Major VALUES ("BMED", "Biomedical Engineering");
INSERT INTO Major VALUES ("BSME", "Mechanical Engineering");
INSERT INTO Major VALUES ("BSEE", "Electrical Engineering");
INSERT INTO Major VALUES ("BSCO", "Computer Engineering");
INSERT INTO Major VALUES ("BELM", "Electromechanical Engineering");
INSERT INTO Major VALUES ("BSAM", "Applied Mathematics");
