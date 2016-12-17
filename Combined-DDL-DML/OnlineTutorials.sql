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
INSERT INTO OnlineTutorial VALUES(23,"https://www.lynda.com/MATLAB-tutorials/Understanding-MATLAB-interface/124067/138167-4.html","Understanding the MATLAB interface","Lynda","ENGR-1800");
INSERT INTO OnlineTutorial VALUES(24,"https://www.lynda.com/MATLAB-tutorials/Working-MATLAB-variables/124067/138168-4.html","Working with MATLAB variables","Lynda","ENGR-1800");
INSERT INTO OnlineTutorial VALUES(25,"https://www.lynda.com/MATLAB-tutorials/Everything-matrix/124067/138169-4.html","Everything is a matrix","Lynda","ENGR-1800");
INSERT INTO OnlineTutorial VALUES(26,"https://www.lynda.com/MATLAB-tutorials/Understanding-data-structures/124067/138170-4.html","Understanding data structures","Lynda","ENGR-1800");
INSERT INTO OnlineTutorial VALUES(27,"https://www.lynda.com/MATLAB-tutorials/Basic-commands/124067/138172-4.html","Basic commands","Lynda","ENGR-1800");
INSERT INTO OnlineTutorial VALUES(28,"https://www.lynda.com/MATLAB-tutorials/Using-built-functions-variables/124067/138173-4.html","Using built-in functions and variables","Lynda","ENGR-1800");
INSERT INTO OnlineTutorial VALUES(29,"https://www.lynda.com/MATLAB-tutorials/Working-matrix-scalar-operations/124067/138174-4.html","Working with matrix and scalar operations","Lynda","ENGR-1800");
INSERT INTO OnlineTutorial VALUES(30,"https://www.lynda.com/MATLAB-tutorials/Control-flow/124067/138175-4.html","Control flow","Lynda","ENGR-1800");
INSERT INTO OnlineTutorial VALUES(31,"https://www.lynda.com/MATLAB-tutorials/Understanding-data-types/124067/138176-4.html","Understanding data types","Lynda","ENGR-1800");
INSERT INTO OnlineTutorial VALUES(32,"https://www.lynda.com/Developer-Programming-Foundations-tutorials/What-data-structure/149042/177101-4.html?srchtrk=index%3a0%0alinktypeid%3a2%0aq%3adata+structures%0apage%3a1%0as%3arelevance%0asa%3atrue%0aproducttypeid%3a2","What is a data structure?","Lynda","COMP-2000");
INSERT INTO OnlineTutorial VALUES(33,"https://www.lynda.com/Developer-Programming-Foundations-tutorials/Describing-simple-data-structures/149042/177102-4.html?srchtrk=index%3a0%0alinktypeid%3a2%0aq%3adata+structures%0apage%3a1%0as%3arelevance%0asa%3atrue%0aproducttypeid%3a2","Describing simple data structures","Lynda","COMP-2000");
INSERT INTO OnlineTutorial VALUES(34,"https://www.lynda.com/Developer-Programming-Foundations-tutorials/Using-C-style-structs/149042/177103-4.html?srchtrk=index%3a0%0alinktypeid%3a2%0aq%3adata+structures%0apage%3a1%0as%3arelevance%0asa%3atrue%0aproducttypeid%3a2","Using C-style structs","Lynda","COMP-2000");
INSERT INTO OnlineTutorial VALUES(35,"https://www.lynda.com/Developer-Programming-Foundations-tutorials/Basic-arrays/149042/177104-4.html?srchtrk=index%3a0%0alinktypeid%3a2%0aq%3adata+structures%0apage%3a1%0as%3arelevance%0asa%3atrue%0aproducttypeid%3a2","Basic Arrays","Lynda","COMP-2000");
INSERT INTO OnlineTutorial VALUES(36,"https://www.lynda.com/Developer-Programming-Foundations-tutorials/Multidimensional-arrays/149042/177105-4.html?srchtrk=index%3a0%0alinktypeid%3a2%0aq%3adata+structures%0apage%3a1%0as%3arelevance%0asa%3atrue%0aproducttypeid%3a2","Multidimensional arrays","Lynda","COMP-2000");
INSERT INTO OnlineTutorial VALUES(37,"https://www.lynda.com/Developer-Programming-Foundations-tutorials/Jagged-arrays/149042/177106-4.html?srchtrk=index%3a0%0alinktypeid%3a2%0aq%3adata+structures%0apage%3a1%0as%3arelevance%0asa%3atrue%0aproducttypeid%3a2","Jagged arrays","Lynda","COMP-2000");
INSERT INTO OnlineTutorial VALUES(38,"https://www.lynda.com/SQL-tutorials/Using-basic-SELECT-statement/139988/166255-4.html?srchtrk=index%3a0%0alinktypeid%3a2%0aq%3asql+lite%0apage%3a1%0as%3arelevance%0asa%3atrue%0aproducttypeid%3a2","Using the basic SELECT statement","Lynda","COMP-2670");
INSERT INTO OnlineTutorial VALUES(39,"https://www.lynda.com/SQL-tutorials/Selecting-rows/139988/166256-4.html?srchtrk=index%3a0%0alinktypeid%3a2%0aq%3asql+lite%0apage%3a1%0as%3arelevance%0asa%3atrue%0aproducttypeid%3a2","Selecting rows","Lynda","COMP-2670");
