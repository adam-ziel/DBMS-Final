CREATE TABLE `OnlineTutorial` (
	`TutorialID`	INTEGER,
	`URL`	TEXT UNIQUE,
	`Title`	TEXT,
	`ParentSite`	TEXT,
	`ClassID`	TEXT,
	PRIMARY KEY(`TutorialID`),
	FOREIGN KEY(`ClassID`) REFERENCES Class(ClassID)
);

INSERT INTO OnlineTutorial VALUES(1, "https://www.lynda.com/Developer-Programming-Foundations-tutorials/Welcome/149042/177098-4.html", "Foundations of Programming: Data Structures", "Lynda", "COMP-2000");
INSERT INTO OnlineTutorial VALUES(2, "https://www.khanacademy.org/computing/computer-science/algorithms/graph-representation/a/representing-graphs", "Representing Graphs", "Khan Academy", "COMP-2000");
INSERT INTO OnlineTutorial VALUES(3, "https://www.lynda.com/Developer-Programming-Foundations-tutorials/Understanding-binary-search-trees-BST/149042/177133-4.htm", "Understanding binary search trees (BST)", "Lynda", "COMP-2000");
INSERT INTO OnlineTutorial VALUES(4, "https://www.lynda.com/HTML-tutorials/HTML-Structured-Data/363686-2.html?srchtrk=index%3a2%0alinktypeid%3a2%0aq%3adata+structures%0apage%3a1%0as%3arelevance%0asa%3atrue%0aproducttypeid%3a2", "HTML: Structured Data", "Lynda", "COMP-2000");
INSERT INTO OnlineTutorial VALUES(5, "https://www.khanacademy.org/computing/computer-science/algorithms/intro-to-algorithms/v/what-are-algorithms","What is an algorithm?", "Khan Academy", "COMP-1000");
INSERT INTO OnlineTutorial VALUES(6, "https://www.lynda.com/Java-tutorials/Computer-Science-Principles-Lab-Java/508647-2.html", "Computer Science Principles Lab: Java", "Lynda", "COMP-1000");
INSERT INTO OnlineTutorial VALUES(7, "https://www.lynda.com/Java-tutorials/Learn-Java-Concepts-Example/497779-2.html?srchtrk=index%3a1%0alinktypeid%3a2%0aq%3ajava%0apage%3a1%0as%3arelevance%0asa%3atrue%0aproducttypeid%3a2", "Learn Java Concepts By Example", "Lynda", "COMP-1000");
INSERT INTO OnlineTutorial VALUES(8, "https://www.lynda.com/Java-tutorials/Java-Essential-Training/377484-2.html?srchtrk=index%3a1%0alinktypeid%3a2%0aq%3ajava%0apage%3a1%0as%3arelevance%0asa%3atrue%0aproducttypeid%3a2", "Java Essential Training", "Lynda","COMP-1000");
INSERT INTO OnlineTutorial VALUES(9, "https://www.lynda.com/CISSP-tutorials/Security-models/516600/556405-4.html","Security Models", "Lynda", "COMP-2500");
INSERT INTO OnlineTutorial VALUES(10,"https://www.lynda.com/Cloud-Computing-tutorials/Security-requirements/508619/546877-4.html","Security Requirements", "Lynda", "COMP-2500");
INSERT INTO OnlineTutorial VALUES(11,"https://www.lynda.com/Ruby-Rails-tutorials/Secure-passwords/500551/540480-4.html","Secure Passwords","Lynda","COMP-2500");
INSERT INTO OnlineTutorial VALUES(12,"https://www.lynda.com/Windows-Server-tutorials/Physical-security/503999/539136-4.html","Physical security", "Lynda", "COMP-2500");
INSERT INTO OnlineTutorial VALUES(13,"https://www.lynda.com/-tutorials/Physical-security/497309/513391-4.html","Physical security","Lynda","COMP-2500");
INSERT INTO OnlineTutorial VALUES(14,"https://www.lynda.com/-tutorials/Passwords-authentication/497309/513392-4.html","Passwords and authentication","Lynda","COMP-2500");
INSERT INTO OnlineTutorial VALUES(15,"https://www.lynda.com/-tutorials/Protecting-against-snoops/497309/513393-4.html","Protecting against snoops","Lynda","COMP-2500");
INSERT INTO OnlineTutorial VALUES(16,"https://www.lynda.com/-tutorials/Malware/497309/513394-4.html","Malware","Lynda","COMP-2500");
INSERT INTO OnlineTutorial VALUES(17,"https://www.lynda.com/-tutorials/Anti-malware-applications/497309/513395-4.html","Anti-malware applications","Lynda","COMP-2500");
INSERT INTO OnlineTutorial VALUES(18,"https://www.lynda.com/-tutorials/Anti-malware-practices/497309/513396-4.html","Anti-malware practices","Lynda","COMP-2500");
INSERT INTO OnlineTutorial VALUES(19,"https://www.lynda.com/-tutorials/Hardware-firewalls/497309/513397-4.html","Hardware firewalls","Lynda","COMP-2500");
INSERT INTO OnlineTutorial VALUES(20,"https://www.lynda.com/-tutorials/Software-firewalls/497309/513398-4.html","Software firewalls","Lynda","COMP-2500");
INSERT INTO OnlineTutorial VALUES(21,"https://www.lynda.com/-tutorials/Data-destruction/497309/513399-4.html","Data destruction","Lynda","COMP-2500");
INSERT INTO OnlineTutorial VALUES(22,"https://www.lynda.com/-tutorials/Incident-response/497309/513400-4.html","Incident response","Lynda","COMP-2500");
