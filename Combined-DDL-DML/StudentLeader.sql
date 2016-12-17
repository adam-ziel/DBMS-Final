CREATE TABLE "StudentLeader" (
  `StudentID`	INTEGER,
  `FSGID`	INTEGER,
  FOREIGN KEY(`StudentID`) REFERENCES `Student`(`StudentID`),
  FOREIGN KEY(`FSGID`) REFERENCES `FSG`(`FSGID`)
);

-- BSCE
INSERT INTO StudentLeader VALUES (1, 7);
INSERT INTO StudentLeader VALUES (5, 5);
INSERT INTO StudentLeader VALUES (19, 8);
INSERT INTO StudentLeader VALUES (19, 9);

-- BCOS
INSERT INTO StudentLeader VALUES (2, 3);
INSERT INTO StudentLeader VALUES (3, 1);
INSERT INTO StudentLeader VALUES (3, 2);

-- BSME
INSERT INTO StudentLeader VALUES (4, 4);

-- BSEE
INSERT INTO StudentLeader VALUES (6, 6);
