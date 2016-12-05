CREATE TABLE `Ebook` (
	`Name`	TEXT,
	`URL`	TEXT,
	`ClassID`	TEXT,
	PRIMARY KEY(`URL`),
	FOREIGN KEY(`ClassID`) REFERENCES `Class`(`ClassID`)
);

INSERT INTO Ebook VALUES("Notes on Data Structures and Programming", "http://www.cs.yale.edu/homes/aspnes/classes/223/notes.pdf", "COMP-2000");
INSERT INTO Ebook VALUES("Purely Functional Data Structures", "http://www.cs.cmu.edu/~rwh/theses/okasaki.pdf", "COMP-2000");
INSERT INTO Ebook VALUES("Elementary Algorithms", "https://github.com/liuxinyu95/AlgoXY/releases/download/v0.618033/elementary-algorithms.pdf", "COMP-2000");
INSERT INTO Ebook VALUES("The Second Internet: Reinventing Computer Networking with IPv6", "http://www.freetechbooks.com/the-second-internet-reinventing-computer-networking-with-ipv6-t1234.html", "COMP-1100");
INSERT INTO Ebook VALUES("Introduction to Networking: How the Internet Works", "http://www.freetechbooks.com/introduction-to-networking-how-the-internet-works-t1235.html", "COMP-1100");	
