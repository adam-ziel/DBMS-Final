CREATE TABLE "OnlineTutorial" (
	`TutorialID`	INTEGER,
	`URL`	TEXT UNIQUE,
	`Title`	TEXT,
	`ParentSite`	TEXT,
	`ClassID`	TEXT,
	PRIMARY KEY(`TutorialID`),
	FOREIGN KEY(`ClassID`) REFERENCES Class(ClassID)
);

INSERT INTO OnlineTutorial VALUES(1, "https://www.lynda.com/Developer-Programming-Foundations-tutorials/Welcome/149042/177098-4.html", "Foundations of Programming: Data Structures", "Lynda", "COMP-2000");
INSERT INTO OnlineTutorial VALUES(2,"https://www.khanacademy.org/computing/computer-science/algorithms/graph-representation/a/representing-graphs”, “Representing Graphs”, “Khan Academy”, “COMP-2000");
INSERT INTO OnlineTutorial VALUES(3, "https://www.lynda.com/Developer-Programming-Foundations-tutorials/Understanding-binary-search-trees-BST/149042/177133-4.htm", "Understanding binary search trees (BST)", "Lynda", "COMP-2000");
INSERT INTO OnlineTutorial VALUES(4, "https://www.lynda.com/HTML-tutorials/HTML-Structured-Data/363686-2.html?srchtrk=index%3a2%0alinktypeid%3a2%0aq%3adata+structures%0apage%3a1%0as%3arelevance%0asa%3atrue%0aproducttypeid%3a2", "HTML: Structured Data", "Lynda", "COMP-2000");
INSERT INTO OnlineTutorial VALUES(5, "https://www.khanacademy.org/computing/computer-science/algorithms/intro-to-algorithms/v/what-are-algorithms","What is an algorithm?", "Khan Academy", "COMP-1000");
INSERT INTO OnlineTutorial VALUES(6, "https://www.lynda.com/Java-tutorials/Computer-Science-Principles-Lab-Java/508647-2.html", "Computer Science Principles Lab: Java", "Lynda", "COMP-1000");
INSERT INTO OnlineTutorial VALUES(7, "https://www.lynda.com/Java-tutorials/Learn-Java-Concepts-Example/497779-2.html?srchtrk=index%3a1%0alinktypeid%3a2%0aq%3ajava%0apage%3a1%0as%3arelevance%0asa%3atrue%0aproducttypeid%3a2", "Learn Java Concepts By Example", "Lynda", "COMP-1000");
INSERT INTO OnlineTutorial VALUES(8, "https://www.lynda.com/Java-tutorials/Java-Essential-Training/377484-2.html?srchtrk=index%3a1%0alinktypeid%3a2%0aq%3ajava%0apage%3a1%0as%3arelevance%0asa%3atrue%0aproducttypeid%3a2", "Java Essential Training", "Lynda","COMP-1000");