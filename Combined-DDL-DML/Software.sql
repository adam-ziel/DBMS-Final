CREATE TABLE "Software" (
	`SoftwareID`	INTEGER,
	`URL`	TEXT,
	`Name`	TEXT,
	`ClassID`	TEXT,
	PRIMARY KEY(`SoftwareID`),
	FOREIGN KEY(`ClassID`) REFERENCES Class(ClassID)
);

INSERT INTO Software VALUES (1, "https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf","Adobe Reader DC", "COMP-1000");
INSERT INTO Software VALUES (10, "https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf" , "Apache Tomcat", "COMP-1100");
INSERT INTO Software VALUES (17, "https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf" , "Bonjour", "COMP-1100");
INSERT INTO Software VALUES (25, "https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf" , "TASM", "COMP-2500");
INSERT INTO Software VALUES (28, "https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf" , "Eclipse", "COMP-1000");
INSERT INTO Software VALUES (29, "https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf" , "Eclipse", "COMP-1100");
INSERT INTO Software VALUES (30, "https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf" , "Eclipse", "COMP-2500");
INSERT INTO Software VALUES (31, "https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf" , "Eclipse", "COMP-2000");
INSERT INTO Software VALUES (32, "https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf" , "Eclipse", "COMP-3071");
INSERT INTO Software VALUES (37, "https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf" , "Kexi FileMaker Pro", "COMP-3071");
INSERT INTO Software VALUES (41, "https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf" , "MATLAB", "COMP-2000");
INSERT INTO Software VALUES (44, "https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf" , "Symbolic Math Tool Box", "COMP-1100");
INSERT INTO Software VALUES (50, "https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf" , "Database Tool Box", "COMP-2500");
INSERT INTO Software VALUES (57, "https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf" , "Computational Biology", "COMP-3071");
INSERT INTO Software VALUES (62, "https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf" , "Bioinformatics Tool Box", "COMP-3071");
INSERT INTO Software VALUES (67, "https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf" , "Sim-Biology", "COMP-3071");
INSERT INTO Software VALUES (68, "https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf" , "CutePDF", "COMP-1000");
INSERT INTO Software VALUES (69, "https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf" , "CutePDF", "COMP-1100");
INSERT INTO Software VALUES (74, "https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf" , "Java DB", "COMP-1100");
INSERT INTO Software VALUES (79, "https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf" , "Java (TM)SE Development Kit", "COMP-1100");
INSERT INTO Software VALUES (84, "https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf" , "Java Runtime Environment", "COMP-1100");
INSERT INTO Software VALUES (89, "https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf" , "Java SDK", "COMP-1100");
INSERT INTO Software VALUES (95, "https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf" , "Java Production Kit", "COMP-1100");
INSERT INTO Software VALUES (119, "https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf" , "Office Visio Professional", "COMP-1000");
INSERT INTO Software VALUES (120, "https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf" , "Office Visio Professional", "COMP-1100");
INSERT INTO Software VALUES (127, "https://www.wit.edu/sites/default/files/technology-services/pdfs/CSS-Software%202015.pdf" , "Visual Studio Professional Edition", "COMP-2000");
INSERT INTO Software VALUES (129, "https://www.mathworks.com/programs/trials/trial_request.html" , "Matlab", "ENGR-1800");
INSERT INTO Software VALUES (130, "https://lumen.ni.com/nicif/us/academicevalmultisim/content.xhtml" , "Multisim", "ELEC-2299");
INSERT INTO Software VALUES (131, "http://www.keysight.com/en/pd-1476554-pn-W4000D/vee-pro-932?cc=US&lc=eng","Agilent VEE","ELEC-2299");
INSERT INTO Software VALUES (132,"http://www.solidworks.com/sw/products/3d-cad/packages.htm","Solidworks","MECH-3100");
INSERT INTO Software VALUES (133,"https://bridgecontest.org/resources/download/","West Point Bridge Designer", "MECH-2250");
INSERT INTO Software VALUES (134,"https://www.oracle.com/applications/primavera/products/project-management.html","Primavera P6 Professional","CIVE-2000"
INSERT INTO Software VALUES (135,"http://www.design-simulation.com/ip/","Interactive Physics","CIVE-2000");
INSERT INTO Software VALUES (136,"http://www.design-simulation.com/ip/","Interactive Physics","CIVE-3800");
INSERT INTO Software VALUES (137,"http://www.design-simulation.com/ip/","Interactive Physics","CIVE-2200");
INSERT INTO Software VALUES (138,"http://www.design-simulation.com/ip/","Interactive Physics","CIVE-3000");
INSERT INTO Software VALUES (139,"http://www.design-simulation.com/ip/","Interactive Physics","CIVE-3300");
INSERT INTO Software VALUES (140,"http://www.design-simulation.com/ip/","Interactive Physics","CIVE-3500");
INSERT INTO Software VALUES (141,"http://www.autodesk.com/products/autocad-civil-3d/overview","Civil 3D","CIVE-8500");
INSERT INTO Software VALUES (142,"http://www.autodesk.com/products/autocad-civil-3d/overview","Civil 3D","CIVE-8550");
INSERT INTO Software VALUES (143,"http://www.sage.com/us/sage-construction/sage-estimating","Sage Timberline Estimating Extended","CIVE-3200");			     
			     
