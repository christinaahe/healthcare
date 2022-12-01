
CREATE DATABASE healthcare;

CREATE USER 'webapp'@'%' IDENTIFIED BY 'abc123';
GRANT ALL PRIVILEGES ON healthcare.* TO 'webapp'@'%';

FLUSH PRIVILEGES;

-- Move into the database we just created.
-- TODO: If you changed the name of the database above, you need to change it here too
USE healthcare;

-- Put your DDL

CREATE TABLE patient (
    patientID int PRIMARY KEY,
    firstName VARCHAR (15) NOT NULL,
    lastName VARCHAR (20) NOT NULL,
    birthDate VARCHAR (8) NOT NULL,
    sex VARCHAR (2) NOT NULL,
    street VARCHAR (40),
    city VARCHAR (20),
    state VARCHAR (2),
    zip INT
);

INSERT INTO patient
    (patientID, firstName, lastName, birthDate, sex, street, city, state, zip)
VALUES
    (74789,	'Ulberto', 'Harmeston', '9/14/89', 'M', '1 Porter Terrace', 'Tulsa', 'OK', 74103),
    (87140, 'Lucian', 'Merwede', '1/6/69', 'M', '80480 Helena Parkway', 'Tucson', 'AZ', 85743),
    (1355,'Mireielle' ,'Lemmen' ,'3/26/92' ,'F','13 Macpherson Alley North', 'Las Vegas', 'NV', 89087),
    (95401,'Loy', 'Wybron', '3/15/84', 'M', '8 Kensington Street', 'Ashburn', 'VA', 22093),
    (50411,'Row', 'Heining', '4/6/60', 'F', '6123 Erie Point', 'Evansville', 'IN', 47725);


CREATE TABLE record (
    patientID INT NOT NULL,
    recordID INT PRIMARY KEY,
    bloodType VARCHAR (3) NOT NULL,
    height int NOT NULL,
    weight int NOT NULL,
    dateLastUpdated VARCHAR (8),
    FOREIGN KEY (patientID) REFERENCES patient(patientID)
);

INSERT INTO record
    (patientID, recordID, bloodType, height, weight, dateLastUpdated)
VALUES
    (74789, 925, 'B+', 177, 111, '12/17/19'),
    (87140, 5, 'AB+', 154, 249, '5/7/20'),
    (1355, 458, 'B-', 115, 151, '5/29/20'),
    (95401, 386, 'B-', 109, 108, '7/5/22'),
    (50411, 718, 'B-', 112, 179, '3/28/21');


CREATE TABLE patient_condition (
    patientID INT NOT NULL,
    conditionName VARCHAR (100),
    diagnosisDate VARCHAR (10) NOT NULL,
    PRIMARY KEY (patientID, conditionName),
    FOREIGN KEY (patientID) REFERENCES patient(patientID)
);

INSERT INTO patient_condition
    (patientID, conditionName, diagnosisDate)
VALUES
    (74789, 'Nondisp fx of proximal phalanx of unsp finger, init', '4/29/2019'),
    (50411, 'Toxic effect of ketones, assault, initial encounter', '12/1/2018');


CREATE TABLE physician (
    physicianID INT PRIMARY KEY,
    firstName VARCHAR (15) NOT NULL,
    lastName VARCHAR (20) NOT NULL,
    type VARCHAR(30) NOT NULL
);

INSERT INTO physician
    (physicianID, firstName, lastName, type)
VALUES
    (9343, 'Marchelle', 'Geroldi', 'Oncologist'),
    (4991, 'Ronica', 'Guslon', 'Nephrologist'),
    (1195, 'Cam', 'Puve', 'Family Physician'),
    (8146, 'Olive', 'Inchan', 'Neurologist'),
    (5413, 'Cynde', 'Mattingson', 'Neurologist'),
    (4567, 'Claudette', 'Loukes', 'Nephrologist'),
    (1461, 'Delcina', 'Gogie', 'Oncologist');


CREATE TABLE patient_physician (
    patientID INT NOT NULL,
    physicianID INT NOT NULL,
    PRIMARY KEY (patientID, physicianID),
    FOREIGN KEY (patientID) REFERENCES patient(patientID),
    FOREIGN KEY (physicianID) REFERENCES physician(physicianID)
);

INSERT INTO patient_physician
    (patientID, physicianID)
VALUES
    (74789, 9343),
    (87140, 4991),
    (1355, 1195),
    (95401, 8146),
    (50411, 5413);


CREATE TABLE availability (
    physicianID INT NOT NULL,
    availableDate VARCHAR (10),
    location VARCHAR (5),
    PRIMARY KEY (availableDate, location, physicianID),
    FOREIGN KEY (physicianID) REFERENCES physician(physicianID)
);

INSERT INTO availability
    (physicianID, availableDate, location)
VALUES
    (9343, '12/6/2022', 'RM:82'),
    (4991, '5/19/2023', 'RM:64'),
    (4991, '3/15/2023', 'RM:38'),
    (1195, '7/11/2023', 'RM:44');


CREATE TABLE test (
    patientID INT NOT NULL,
    physicianID INT NOT NULL,
    testID INT PRIMARY KEY,
    testType VARCHAR (30) NOT NULL,
    testResult VARCHAR (10),
    testDate VARCHAR (10) NOT NULL,
    FOREIGN KEY (physicianID) REFERENCES physician(physicianID),
    FOREIGN KEY (patientID) REFERENCES patient(patientID)
);

INSERT INTO test
    (patientID, physicianID, testID, testType, testResult, testDate)
VALUES
    (74789, 4567, 819, 'Intravenous pyelogram', 'positive', '2/7/2022'),
    (50411, 1461, 928, 'Thoracentesis', 'negative', '3/9/2021');


CREATE TABLE appointment (
    patientID INT NOT NULL,
    physicianID INT NOT NULL,
    appointmentDate VARCHAR (10) NOT NULL,
    appointmentID INT PRIMARY KEY,
    appointmentType VARCHAR (15) NOT NULL,
    location VARCHAR (5),
    FOREIGN KEY (physicianID) REFERENCES physician(physicianID),
    FOREIGN KEY (patientID) REFERENCES patient(patientID)
);

INSERT INTO appointment
    (patientID, physicianID, appointmentDate, appointmentID, appointmentType, location)
VALUES
    (74789, 8146, '8/16/2023', 8736, 'Office Visit', 'RM:59'),
    (50411, 9343, '8/14/2023', 9379, 'Treatment', 'RM:18');


CREATE TABLE insuranceCompany (
    companyID INT NOT NULL PRIMARY KEY,
    companyName VARCHAR (20) NOT NULL,
    billingStreet VARCHAR (40) NOT NULL,
    billingCity VARCHAR (20) NOT NULL,
    billingState VARCHAR (2) NOT NULL,
    billingZip INT NOT NULL,
    phoneNumber VARCHAR (15) NOT NULL,
    fax VARCHAR (12) NOT NULL
);

INSERT INTO insuranceCompany
    (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax)
VALUES
    (1, 'United Health', '42 South Lane', 'Idaho Falls', 'ID', 83405, '208-789-8627', '7861592588'),
    (9,'Unicare', '8011 Fallview Circle','Southfield','MI', 48076, '248-138-3039','2021121588'),
    (10,'WellPoint','17981 Clove Lane','Boston','MA', 2203,'617-706-5553','4156682830'),
    (13,'Vista' ,'37994 Union Trail','Boise','ID',83732,'208-425-5264','5108806098');


CREATE TABLE insurance (
    insuranceID INT NOT NULL PRIMARY KEY,
    patientID INT NOT NULL,
    companyID INT NOT NULL,
    effectiveDate VARCHAR (10) NOT NULL,
    networkType VARCHAR (4) NOT NULL,
    planType VARCHAR (15) NOT NULL,
    FOREIGN KEY (patientID) REFERENCES patient(patientID),
    FOREIGN KEY (companyID) REFERENCES insuranceCompany(companyID)
);

INSERT INTO insurance
    (insuranceID, patientID, companyID, effectiveDate, networkType, planType)
VALUES
    (34116, 74789, 1, '10/16/2012', 'PPO', 'medicare'),
    (32630, 87140, 10, '1/30/2013','POS', 'medicaid'),
    (84597, 1355, 13, '1/22/2015','EPO', 'medicare'),
    (32597, 95401, 9, '5/28/2011','CDHP', 'medicare'),
    (28482, 50411, 1, '12/26/2016','HMO', 'medicare');


CREATE TABLE claim (
    insuranceID INT NOT NULL,
    claimID INT NOT NULL PRIMARY KEY,
    totalCost INT NOT NULL,
    approvalStatus VARCHAR (10) NOT NULL,
    FOREIGN KEY (insuranceID) REFERENCES insurance(insuranceID)
);

INSERT INTO claim
    (insuranceID, claimID, totalCost, approvalStatus)
VALUES
    (34116, 21, 155, 'Accepted'),
    (32630, 595, 271, 'Reviewing');


CREATE TABLE claimItem (
    claimID INT NOT NULL,
    itemType VARCHAR (50) NOT NULL,
    cost INT NOT NULL,
    PRIMARY KEY (claimID, itemType),
    FOREIGN KEY (claimID) REFERENCES claim(claimID)
);

INSERT INTO claimItem
    (claimID, itemType, cost)
VALUES
    (21, 'Omeprazole', 155),
    (595, 'Ethanol', 271);



