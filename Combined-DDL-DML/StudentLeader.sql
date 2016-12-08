CREATE TABLE "StudentLeader" (
  `StudentID`	INTEGER,
  `FSGID`	INTEGER,
  FOREIGN KEY(`StudentID`) REFERENCES `Student`(`StudentID`),
  FOREIGN KEY(`FSGID`) REFERENCES `FSG`(`FSGID`)
);

INSERT INTO StudentLeader VALUES (3, 1);
INSERT INTO StudentLeader VALUES (3, 2);
INSERT INTO StudentLeader VALUES (2, 3);
INSERT INTO StudentLeader VALUES (2, 7);
INSERT INTO StudentLeader VALUES (2, 8);
INSERT INTO StudentLeader VALUES (4, 4);
INSERT INTO StudentLeader VALUES (5, 5);
INSERT INTO StudentLeader VALUES (6, 6);
