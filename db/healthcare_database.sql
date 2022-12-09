
CREATE DATABASE healthcare;

GRANT ALL PRIVILEGES ON healthcare.* TO 'webapp'@'%';

FLUSH PRIVILEGES;

-- Move into the database we just created.
USE healthcare;

drop table if exists claim;
drop table if exists insurance;
drop table if exists insuranceCompany;
drop table if exists appointment;
drop table if exists availability;
drop table if exists patient_condition;
drop table if exists record;
drop table if exists patient_physician;
drop table if exists test;
drop table if exists physician;
drop table if exists patient;




-- Put your DDL
CREATE TABLE patient (
    patientID VARCHAR (15) PRIMARY KEY,
    firstName VARCHAR (15) NOT NULL,
    lastName VARCHAR (20) NOT NULL,
    birthDate VARCHAR (15) NOT NULL,
    sex VARCHAR (2) NOT NULL,
    street VARCHAR (40),
    city VARCHAR (20),
    addystate VARCHAR (2),
    zip VARCHAR (15)
);

insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('789029', 'Jazmin', 'Gitting', '1/13/1993', 'F', '943 Judy Lane', 'Fort Wayne', 'IN', '46867');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('531364', 'Meryl', 'Baldin', '5/23/1979', 'F', '9 Maple Wood Terrace', 'Naples', 'FL', '34102');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('988675', 'Sloan', 'Mabee', '6/14/1977', 'M', '1 Di Loreto Junction', 'Hattiesburg', 'MS', '39404');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('533103', 'Matt', 'Bodham', '5/4/1954', 'M', '175 Hansons Junction', 'Northridge', 'CA', '91328');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('782893', 'Khalil', 'Karolczyk', '9/22/1996', 'M', '21 Hazelcrest Road', 'Sarasota', 'FL', '34233');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('274143', 'Farleigh', 'Bransden', '2/13/1971', 'M', '6 Scoville Avenue', 'Miami', 'FL', '33245');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('213702', 'Lucio', 'Heathorn', '8/30/1989', 'M', '9880 Packers Parkway', 'Cincinnati', 'OH', '45271');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('80616', 'Patrice', 'Stopps', '1/1/1988', 'F', '69012 Barnett Junction', 'Winston Salem', 'NC', '27110');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('537380', 'Jessy', 'Keppie', '8/23/1966', 'F', '49 Eliot Drive', 'Syracuse', 'NY', '13224');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('92507', 'Elsy', 'Dittson', '12/30/1971', 'F', '9 Dexter Court', 'Houston', 'TX', '77276');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('946708', 'Costanza', 'Vonderdell', '8/14/1990', 'F', '8708 Eastlawn Place', 'Norfolk', 'VA', '23514');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('915904', 'Anthony', 'Leworthy', '11/2/1953', 'M', '175 Brickson Park Way', 'Huntington', 'WV', '25770');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('520057', 'Benoit', 'Gooding', '8/11/1976', 'M', '3 Eastlawn Center', 'Allentown', 'PA', '18105');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('879510', 'Chandal', 'Sissel', '8/9/1993', 'F', '961 Sherman Trail', 'Palo Alto', 'CA', '94302');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('990647', 'Kaleb', 'Akker', '7/23/1958', 'M', '938 East Pass', 'Salinas', 'CA', '93907');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('414439', 'Marchelle', 'Bycraft', '3/7/1988', 'F', '84741 1st Circle', 'Modesto', 'CA', '95397');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('909738', 'Elinore', 'McKie', '2/13/2000', 'F', '297 Rigney Center', 'Long Beach', 'CA', '90810');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('740633', 'Darrin', 'Pawelczyk', '2/8/1956', 'M', '2928 Hudson Terrace', 'Lake Charles', 'LA', '70616');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('675283', 'Ty', 'Todd', '4/25/1975', 'M', '76 Mcguire Circle', 'Saint Paul', 'MN', '55123');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('376985', 'Abdel', 'Ebbens', '1/16/1953', 'M', '7834 Bashford Point', 'Lincoln', 'NE', '68517');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('211232', 'Oswell', 'Brockie', '12/2/1982', 'M', '083 Anzinger Lane', 'Portland', 'OR', '97221');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('744200', 'Annice', 'Lough', '7/28/1959', 'F', '179 Evergreen Point', 'Chandler', 'AZ', '85246');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('183255', 'Yorgo', 'Joret', '6/9/1979', 'M', '518 Garrison Street', 'Fort Lauderdale', 'FL', '33320');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('114053', 'Keri', 'Cloney', '12/14/1950', 'F', '65215 Bluejay Street', 'San Antonio', 'TX', '78260');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('257606', 'Rosemarie', 'Bendik', '5/14/1992', 'F', '6612 Amoth Crossing', 'New York City', 'NY', '10090');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('958817', 'Emmery', 'Turfitt', '8/20/1997', 'M', '67349 Lyons Drive', 'Anderson', 'SC', '29625');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('241440', 'Truda', 'Huckstepp', '6/12/1998', 'F', '10592 Portage Drive', 'Staten Island', 'NY', '10310');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('675986', 'Laraine', 'Dunphie', '10/17/1969', 'F', '6 Elka Alley', 'Canton', 'OH', '44710');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('31810', 'Prescott', 'Lafoy', '7/25/1987', 'M', '932 Sundown Point', 'Austin', 'TX', '78783');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('405175', 'Daren', 'Penniell', '8/5/1991', 'M', '67578 Golf View Street', 'Pompano Beach', 'FL', '33069');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('149316', 'Allys', 'Holehouse', '10/5/1960', 'F', '607 Homewood Way', 'Los Angeles', 'CA', '90030');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('716014', 'Marion', 'Goodwell', '3/7/1991', 'M', '46526 Gulseth Alley', 'San Jose', 'CA', '95155');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('63921', 'Janie', 'Cuddehy', '8/29/1986', 'F', '386 Mosinee Trail', 'Cleveland', 'OH', '44130');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('856842', 'Libbi', 'Tunnow', '4/17/1992', 'F', '964 Cottonwood Way', 'Raleigh', 'NC', '27605');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('65085', 'Sigismund', 'Dalgety', '9/20/1989', 'M', '90581 Lien Lane', 'Denver', 'CO', '80270');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('572448', 'Kizzee', 'Spuner', '11/13/1984', 'F', '598 Leroy Avenue', 'Chicago', 'IL', '60646');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('792469', 'Keene', 'Knocker', '6/30/1952', 'M', '30 Doe Crossing Center', 'Shawnee Mission', 'KS', '66220');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('657516', 'Florance', 'Tooby', '12/14/1954', 'F', '5142 Redwing Road', 'Colorado Springs', 'CO', '80951');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('890262', 'Jillian', 'Swindle', '5/12/1995', 'F', '185 Farragut Way', 'El Paso', 'TX', '88525');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('819434', 'Olin', 'Hendriks', '11/25/1999', 'M', '09 Arrowood Terrace', 'Garden Grove', 'CA', '92844');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('637586', 'Lorin', 'McKim', '8/2/1973', 'M', '029 Longview Place', 'Charleston', 'SC', '29424');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('299372', 'Gareth', 'Mathias', '9/10/1965', 'M', '125 Morrow Park', 'Houston', 'TX', '77218');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('391087', 'Bibi', 'Mation', '9/8/1995', 'F', '63178 Morrow Circle', 'Bronx', 'NY', '10459');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('679015', 'Ramona', 'Itzcovich', '3/22/1982', 'F', '59 Ramsey Road', 'Syracuse', 'NY', '13210');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('652896', 'Ethelred', 'Bullas', '2/24/1983', 'M', '02 Roxbury Court', 'Conroe', 'TX', '77305');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('42698', 'Yank', 'Ollivier', '9/18/1979', 'M', '05261 Delaware Drive', 'Houston', 'TX', '77255');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('499069', 'Izak', 'Kun', '12/20/1986', 'M', '2563 Village Pass', 'Young America', 'MN', '55573');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('953505', 'Devlen', 'McClure', '10/11/1971', 'M', '02549 Lyons Pass', 'Huntington', 'WV', '25721');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('633681', 'Saunder', 'Bilverstone', '7/17/1984', 'M', '13 Mockingbird Crossing', 'Greensboro', 'NC', '27455');
insert into patient (patientID, firstName, lastName, birthDate, sex, street, city, addystate, zip) values ('188982', 'Lucretia', 'Crusham', '9/15/1992', 'F', '1 Spohn Crossing', 'Los Angeles', 'CA', '90094');

CREATE TABLE record (
    patientID VARCHAR (15) NOT NULL,
    recordID VARCHAR (15) PRIMARY KEY,
    bloodType VARCHAR (3) NOT NULL,
    height VARCHAR (15) NOT NULL,
    patientweight VARCHAR (15) NOT NULL,
    dateLastUpdated VARCHAR (15),
    FOREIGN KEY (patientID) REFERENCES patient(patientID)
);

insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('31810', '1300', 'B-', '105', '164', '5/13/2022');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('42698', '6454', 'B-', '191', '85', '2/11/2022');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('63921', '7505', 'AB+', '114', '195', '5/29/2021');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('65085', '8452', 'AB+', '179', '104', '10/27/2022');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('80616', '2072', 'A-', '109', '146', '5/16/2022');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('92507', '4089', 'O-', '194', '188', '11/16/2022');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('114053', '6702', 'A+', '132', '145', '6/8/2022');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('149316', '1010', 'O-', '128', '126', '3/7/2021');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('183255', '6691', 'A+', '146', '196', '8/17/2022');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('188982', '9395', 'AB-', '176', '198', '11/15/2022');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('211232', '7777', 'B-', '147', '173', '9/5/2022');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('213702', '5160', 'AB-', '197', '160', '8/6/2022');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('241440', '7437', 'B-', '165', '152', '7/13/2022');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('257606', '7915', 'A-', '116', '131', '2/23/2022');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('274143', '4411', 'AB-', '132', '102', '1/17/2022');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('299372', '8618', 'AB-', '104', '106', '6/10/2022');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('376985', '3312', 'B+', '191', '114', '5/15/2022');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('391087', '2078', 'O-', '179', '182', '2/20/2021');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('405175', '2251', 'B+', '157', '157', '6/15/2022');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('414439', '0519', 'B-', '123', '89', '3/9/2022');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('499069', '8432', 'AB+', '150', '194', '8/29/2021');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('520057', '6260', 'A+', '137', '139', '8/29/2021');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('531364', '2228', 'A+', '169', '178', '7/25/2021');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('533103', '1028', 'O+', '117', '93', '10/3/2022');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('537380', '5018', 'A-', '148', '157', '12/22/2021');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('572448', '4410', 'B-', '181', '151', '12/14/2021');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('633681', '5693', 'A+', '177', '94', '12/6/2020');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('637586', '7855', 'B-', '198', '158', '6/14/2021');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('652896', '1713', 'A+', '127', '123', '1/9/2021');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('657516', '4420', 'AB-', '171', '98', '12/22/2020');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('675283', '1308', 'A+', '140', '119', '8/28/2022');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('675986', '4093', 'O-', '185', '186', '2/24/2021');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('679015', '3619', 'AB+', '140', '138', '9/14/2022');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('716014', '7968', 'O-', '101', '88', '6/10/2021');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('740633', '0838', 'B+', '114', '108', '9/16/2022');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('744200', '0461', 'B-', '151', '125', '3/8/2021');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('782893', '4080', 'AB-', '126', '200', '8/3/2022');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('789029', '6012', 'A+', '199', '158', '9/19/2021');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('792469', '4126', 'A-', '140', '97', '6/7/2022');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('819434', '9604', 'AB+', '157', '91', '3/9/2021');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('856842', '5973', 'AB-', '134', '110', '2/17/2022');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('879510', '0774', 'A+', '173', '148', '9/26/2022');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('890262', '0905', 'AB-', '182', '165', '12/18/2021');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('909738', '8654', 'O-', '135', '167', '12/8/2021');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('915904', '9233', 'O-', '115', '138', '11/6/2022');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('946708', '4579', 'B-', '147', '116', '11/24/2021');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('953505', '3458', 'B+', '193', '98', '8/14/2022');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('958817', '5621', 'O-', '168', '94', '6/23/2021');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('988675', '6496', 'A-', '128', '80', '5/22/2021');
insert into record (patientID, recordID, bloodType, height, patientweight, dateLastUpdated) values ('990647', '7568', 'A+', '163', '183', '5/31/2022');


CREATE TABLE patient_condition (
    patientID VARCHAR (15) NOT NULL,
    conditionName VARCHAR (100),
    diagnosisDate VARCHAR (10) NOT NULL,
    PRIMARY KEY (patientID, conditionName),
    FOREIGN KEY (patientID) REFERENCES patient(patientID)
);

insert into patient_condition (patientID, conditionName, diagnosisDate) values ('531364', 'Anterior dislocation of left sternoclavicular joint', '11/18/2018');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('792469', 'Lacerat extn musc/fasc/tend at forarm lv, left arm, subs', '2/28/2016');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('42698', 'Legal intervnt w oth blunt objects, suspect injured, init', '1/7/2013');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('42698', 'Postdysenteric arthropathy, left shoulder', '10/8/2015');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('716014', 'Disp fx of left tibial spine, init for opn fx type I/2', '7/4/2022');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('188982', 'Strain of musc/fasc/tend at forearm level, left arm, sequela', '2/18/2019');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('533103', 'Poisoning by oth parasympath, accidental, subs', '4/21/2015');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('92507', 'Oth fracture of unsp ilium, init encntr for closed fracture', '1/4/2017');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('572448', 'Oth injury of unspecified renal artery, subs encntr', '8/15/2021');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('958817', 'Other specified fracture of unspecified ischium, sequela', '10/31/2021');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('990647', 'Path fx in oth disease, r hand, subs for fx w routn heal', '5/17/2012');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('241440', 'Other physeal fracture of upper end of humerus, right arm', '12/12/2013');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('789029', 'Disp fx of med epicondyl of l humer, 7thD', '4/12/2012');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('531364', 'Other acquired abnormalities of left ear ossicles', '9/2/2013');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('652896', 'Other subluxation of right foot', '9/20/2016');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('988675', 'Unsp dislocation of right sternoclavicular joint, subs', '4/30/2014');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('188982', 'Exposure of implanted vaginal mesh into vagina, sequela', '2/26/2022');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('274143', 'Toxic effects of other corrosive organic compounds', '8/24/2020');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('149316', 'Acute lymphangitis of left lower limb', '6/19/2011');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('257606', 'Contact with scissors', '12/15/2013');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('391087', 'Burn of unsp degree of multiple sites of unsp ankle and foot', '7/18/2015');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('63921', 'Superficial (capsular) laceration of spleen, subs encntr', '2/28/2022');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('819434', 'Pnctr of abd wall w/o fb, unsp q w/o penet perit cav, sqla', '4/30/2017');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('792469', 'Salter-Harris Type II physeal fracture of lower end of femur', '12/4/2020');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('572448', 'Toxic effect of carbon dioxide', '10/29/2016');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('114053', 'Contact with nonvenomous toads, initial encounter', '11/19/2021');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('183255', 'Sltr-haris Type III physeal fx unspecified metatarsal', '12/31/2010');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('740633', 'Contact with hot tap-water', '10/10/2014');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('391087', 'Oth fx head/neck of r femur, subs for clos fx w delay heal', '5/31/2014');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('572448', 'Sprain of tarsometatarsal ligament of unsp foot, init encntr', '1/3/2019');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('405175', 'Corrosion of first degree of unsp toe(s) (nail), init encntr', '2/5/2012');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('744200', 'Unsp comp of fb acc left in body following unsp procedure', '1/28/2017');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('537380', 'Path fracture, right fibula, subs for fx w delay heal', '6/16/2020');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('679015', 'Crushing injury of right wrist, sequela', '9/25/2021');
insert into patient_condition (patientID, conditionName, diagnosisDate) values ('414439', 'Other retinoschisis and retinal cysts, right eye', '4/30/2012');


CREATE TABLE physician (
    physicianID VARCHAR (15) PRIMARY KEY,
    firstName VARCHAR (15) NOT NULL,
    lastName VARCHAR (20) NOT NULL,
    phystype VARCHAR(30) NOT NULL
);

insert into physician (physicianID, firstName, lastName, phystype) values ('637287', 'Towny', 'Swash', 'Family Physician');
insert into physician (physicianID, firstName, lastName, phystype) values ('509927', 'Nils', 'Coombes', 'Pathologist');
insert into physician (physicianID, firstName, lastName, phystype) values ('562079', 'Janie', 'Gresswell', 'Oncologist');
insert into physician (physicianID, firstName, lastName, phystype) values ('519963', 'Kate', 'Paireman', 'Internist');
insert into physician (physicianID, firstName, lastName, phystype) values ('417341', 'Mordy', 'Phinnessy', 'Nephrologist');
insert into physician (physicianID, firstName, lastName, phystype) values ('642953', 'Bobbye', 'Aldersey', 'Nephrologist');
insert into physician (physicianID, firstName, lastName, phystype) values ('603626', 'Ken', 'Comini', 'Oncologist');
insert into physician (physicianID, firstName, lastName, phystype) values ('659524', 'Pincas', 'Emerton', 'Cardiologist');
insert into physician (physicianID, firstName, lastName, phystype) values ('665010', 'Rayna', 'Skeemor', 'Nephrologist');
insert into physician (physicianID, firstName, lastName, phystype) values ('646658', 'Olivia', 'Brain', 'Family Physician');
insert into physician (physicianID, firstName, lastName, phystype) values ('120582', 'Druci', 'Sebrook', 'Nephrologist');
insert into physician (physicianID, firstName, lastName, phystype) values ('87168', 'Parsifal', 'Medgwick', 'Hematologist');
insert into physician (physicianID, firstName, lastName, phystype) values ('425220', 'Sancho', 'Irvine', 'Pathologist');
insert into physician (physicianID, firstName, lastName, phystype) values ('353389', 'Kariotta', 'Sacchetti', 'Hematologist');
insert into physician (physicianID, firstName, lastName, phystype) values ('278853', 'Shayna', 'Dilloway', 'Pathologist');
insert into physician (physicianID, firstName, lastName, phystype) values ('515182', 'Hastings', 'Tincey', 'Endocrinologist');
insert into physician (physicianID, firstName, lastName, phystype) values ('781716', 'Brenden', 'Camble', 'Cardiologist');
insert into physician (physicianID, firstName, lastName, phystype) values ('15267', 'Arleta', 'McAloren', 'Hematologist');
insert into physician (physicianID, firstName, lastName, phystype) values ('64616', 'Alis', 'Jubb', 'Cardiologist');
insert into physician (physicianID, firstName, lastName, phystype) values ('850399', 'Brander', 'Fairlaw', 'Internist');
insert into physician (physicianID, firstName, lastName, phystype) values ('410380', 'Adrea', 'Endrici', 'Cardiologist');
insert into physician (physicianID, firstName, lastName, phystype) values ('184261', 'Car', 'Hearnes', 'Oncologist');
insert into physician (physicianID, firstName, lastName, phystype) values ('45568', 'Sheff', 'Myatt', 'Pathologist');
insert into physician (physicianID, firstName, lastName, phystype) values ('885379', 'Jasmin', 'Ducarel', 'Oncologist');
insert into physician (physicianID, firstName, lastName, phystype) values ('296733', 'Martie', 'Roscamps', 'Pathologist');
insert into physician (physicianID, firstName, lastName, phystype) values ('332681', 'Thorn', 'O''Hallihane', 'Hematologist');
insert into physician (physicianID, firstName, lastName, phystype) values ('337016', 'Nikolaos', 'Durman', 'Family Physician');
insert into physician (physicianID, firstName, lastName, phystype) values ('436761', 'Alva', 'Gerrett', 'Internalist');
insert into physician (physicianID, firstName, lastName, phystype) values ('155928', 'Aldous', 'Ambrogi', 'Internist');
insert into physician (physicianID, firstName, lastName, phystype) values ('392261', 'Anastasia', 'Joberne', 'Cardiologist');
insert into physician (physicianID, firstName, lastName, phystype) values ('949771', 'Rosalia', 'Firsby', 'Pathologist');
insert into physician (physicianID, firstName, lastName, phystype) values ('747377', 'Nessie', 'Memory', 'Endocrinologist');
insert into physician (physicianID, firstName, lastName, phystype) values ('278866', 'Merv', 'Elies', 'Internist');
insert into physician (physicianID, firstName, lastName, phystype) values ('606755', 'Avivah', 'Dorking', 'Neurologist');
insert into physician (physicianID, firstName, lastName, phystype) values ('662782', 'Tanhya', 'Attril', 'Family Physician');
insert into physician (physicianID, firstName, lastName, phystype) values ('668379', 'Ettie', 'McLeese', 'Cardiologist');
insert into physician (physicianID, firstName, lastName, phystype) values ('705435', 'Rinaldo', 'Woolcocks', 'Oncologist');
insert into physician (physicianID, firstName, lastName, phystype) values ('835218', 'Asa', 'Eddolls', 'Internist');
insert into physician (physicianID, firstName, lastName, phystype) values ('187726', 'Franklyn', 'Haldane', 'Nephrologist');
insert into physician (physicianID, firstName, lastName, phystype) values ('12849', 'Ulrika', 'Calwell', 'Hematologist');


CREATE TABLE patient_physician (
    patientID VARCHAR (15) NOT NULL,
    physicianID VARCHAR (15) NOT NULL,
    PRIMARY KEY (patientID, physicianID),
    FOREIGN KEY (patientID) REFERENCES patient(patientID),
    FOREIGN KEY (physicianID) REFERENCES physician(physicianID)
);

insert into patient_physician (patientID, physicianID) values ('31810', '12849');
insert into patient_physician (patientID, physicianID) values ('42698', '417341');
insert into patient_physician (patientID, physicianID) values ('63921', '668379');
insert into patient_physician (patientID, physicianID) values ('65085', '659524');
insert into patient_physician (patientID, physicianID) values ('80616', '665010');
insert into patient_physician (patientID, physicianID) values ('92507', '417341');
insert into patient_physician (patientID, physicianID) values ('114053', '64616');
insert into patient_physician (patientID, physicianID) values ('149316', '45568');
insert into patient_physician (patientID, physicianID) values ('183255', '184261');
insert into patient_physician (patientID, physicianID) values ('188982', '45568');
insert into patient_physician (patientID, physicianID) values ('211232', '850399');
insert into patient_physician (patientID, physicianID) values ('213702', '184261');
insert into patient_physician (patientID, physicianID) values ('241440', '850399');
insert into patient_physician (patientID, physicianID) values ('257606', '659524');
insert into patient_physician (patientID, physicianID) values ('274143', '15267');
insert into patient_physician (patientID, physicianID) values ('299372', '15267');
insert into patient_physician (patientID, physicianID) values ('376985', '410380');
insert into patient_physician (patientID, physicianID) values ('391087', '184261');
insert into patient_physician (patientID, physicianID) values ('405175', '410380');
insert into patient_physician (patientID, physicianID) values ('414439', '949771');
insert into patient_physician (patientID, physicianID) values ('499069', '747377');
insert into patient_physician (patientID, physicianID) values ('520057', '659524');
insert into patient_physician (patientID, physicianID) values ('531364', '662782');
insert into patient_physician (patientID, physicianID) values ('533103', '410380');
insert into patient_physician (patientID, physicianID) values ('537380', '665010');
insert into patient_physician (patientID, physicianID) values ('572448', '187726');
insert into patient_physician (patientID, physicianID) values ('633681', '606755');
insert into patient_physician (patientID, physicianID) values ('637586', '637287');
insert into patient_physician (patientID, physicianID) values ('652896', '509927');
insert into patient_physician (patientID, physicianID) values ('657516', '410380');
insert into patient_physician (patientID, physicianID) values ('675283', '885379');
insert into patient_physician (patientID, physicianID) values ('675986', '187726');
insert into patient_physician (patientID, physicianID) values ('679015', '410380');
insert into patient_physician (patientID, physicianID) values ('716014', '662782');
insert into patient_physician (patientID, physicianID) values ('740633', '949771');
insert into patient_physician (patientID, physicianID) values ('744200', '332681');
insert into patient_physician (patientID, physicianID) values ('782893', '353389');
insert into patient_physician (patientID, physicianID) values ('789029', '603626');
insert into patient_physician (patientID, physicianID) values ('792469', '410380');
insert into patient_physician (patientID, physicianID) values ('819434', '425220');
insert into patient_physician (patientID, physicianID) values ('856842', '519963');
insert into patient_physician (patientID, physicianID) values ('879510', '606755');
insert into patient_physician (patientID, physicianID) values ('890262', '665010');
insert into patient_physician (patientID, physicianID) values ('909738', '668379');
insert into patient_physician (patientID, physicianID) values ('915904', '392261');
insert into patient_physician (patientID, physicianID) values ('946708', '603626');
insert into patient_physician (patientID, physicianID) values ('953505', '509927');
insert into patient_physician (patientID, physicianID) values ('958817', '637287');
insert into patient_physician (patientID, physicianID) values ('988675', '425220');
insert into patient_physician (patientID, physicianID) values ('990647', '278853');


CREATE TABLE availability (
    physicianID VARCHAR (15) NOT NULL,
    availableDate VARCHAR (10),
    rmlocation VARCHAR (5),
    availabilityID VARCHAR (15) PRIMARY KEY,
    FOREIGN KEY (physicianID) REFERENCES physician(physicianID)
);

insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('12849', '11/12/2023', 'RM:54', '1438');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('642953', '3/17/2023', 'RM:71', '3952');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('12849', '10/18/2023', 'RM:39', '3046');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('603626', '6/21/2023', 'RM:53', '1577');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('606755', '12/9/2022', 'RM:32', '3009');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('332681', '6/2/2023', 'RM:68', '2847');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('705435', '9/20/2023', 'RM:96', '0597');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('668379', '9/22/2023', 'RM:31', '9144');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('747377', '1/20/2023', 'RM:55', '0802');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('278866', '6/8/2023', 'RM:63', '4874');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('392261', '8/15/2023', 'RM:14', '9369');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('646658', '2/3/2023', 'RM:98', '0832');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('187726', '3/18/2023', 'RM:22', '5836');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('705435', '7/15/2023', 'RM:51', '5284');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('603626', '12/4/2022', 'RM:15', '6257');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('949771', '11/24/2022', 'RM:26', '9792');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('949771', '5/24/2023', 'RM:02', '6007');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('637287', '2/3/2023', 'RM:87', '9733');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('45568', '2/4/2023', 'RM:64', '3423');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('337016', '9/3/2023', 'RM:67', '8270');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('278866', '3/13/2023', 'RM:79', '6096');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('337016', '5/21/2023', 'RM:82', '1938');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('665010', '10/12/2023', 'RM:37', '2055');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('278866', '1/30/2023', 'RM:07', '8802');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('705435', '6/19/2023', 'RM:13', '0712');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('278853', '10/17/2023', 'RM:41', '9494');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('353389', '11/12/2023', 'RM:98', '7264');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('885379', '10/2/2023', 'RM:90', '6560');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('668379', '8/14/2023', 'RM:76', '2091');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('885379', '11/15/2023', 'RM:96', '5551');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('515182', '9/18/2023', 'RM:91', '4023');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('949771', '4/18/2023', 'RM:27', '7485');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('665010', '12/11/2022', 'RM:83', '1907');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('519963', '11/4/2023', 'RM:42', '4243');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('45568', '2/10/2023', 'RM:98', '3110');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('417341', '11/30/2022', 'RM:08', '2339');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('659524', '8/3/2023', 'RM:51', '8054');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('662782', '3/17/2023', 'RM:48', '4831');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('665010', '8/2/2023', 'RM:79', '7750');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('949771', '10/22/2023', 'RM:28', '3529');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('949771', '6/21/2023', 'RM:08', '0483');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('668379', '4/4/2023', 'RM:19', '3049');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('353389', '10/1/2023', 'RM:11', '9169');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('515182', '11/30/2022', 'RM:88', '5919');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('425220', '9/13/2023', 'RM:12', '3097');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('64616', '5/30/2023', 'RM:38', '7413');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('781716', '12/9/2022', 'RM:83', '1818');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('850399', '5/1/2023', 'RM:58', '3344');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('781716', '3/24/2023', 'RM:26', '7597');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('781716', '4/15/2023', 'RM:26', '9601');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('562079', '3/6/2023', 'RM:31', '8128');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('120582', '9/13/2023', 'RM:38', '0705');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('646658', '5/27/2023', 'RM:57', '8919');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('835218', '8/10/2023', 'RM:03', '8868');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('184261', '12/17/2022', 'RM:98', '0734');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('519963', '3/17/2023', 'RM:61', '6402');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('436761', '1/1/2023', 'RM:20', '0124');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('637287', '1/26/2023', 'RM:42', '4264');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('705435', '7/7/2023', 'RM:14', '5921');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('562079', '6/8/2023', 'RM:50', '8584');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('519963', '3/7/2023', 'RM:35', '6722');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('184261', '4/13/2023', 'RM:89', '3086');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('509927', '2/23/2023', 'RM:66', '4895');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('425220', '9/21/2023', 'RM:44', '5322');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('659524', '5/22/2023', 'RM:59', '5617');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('278866', '9/15/2023', 'RM:36', '5567');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('642953', '10/17/2023', 'RM:20', '7045');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('850399', '1/22/2023', 'RM:11', '5896');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('12849', '9/20/2023', 'RM:76', '1731');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('337016', '7/12/2023', 'RM:20', '6775');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('425220', '2/23/2023', 'RM:89', '5780');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('296733', '7/25/2023', 'RM:42', '3865');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('509927', '11/20/2023', 'RM:33', '4048');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('45568', '9/21/2023', 'RM:49', '3680');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('278853', '9/4/2023', 'RM:95', '4177');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('296733', '3/24/2023', 'RM:17', '0981');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('155928', '9/29/2023', 'RM:31', '7348');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('781716', '10/20/2023', 'RM:67', '8485');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('278853', '8/29/2023', 'RM:93', '9054');
insert into availability (physicianID, availableDate, rmlocation, availabilityID) values ('417341', '6/12/2023', 'RM:25', '5073');


CREATE TABLE test (
    patientID VARCHAR (15) NOT NULL,
    physicianID VARCHAR (15) NOT NULL,
    testID VARCHAR (15) PRIMARY KEY,
    testType VARCHAR (40) NOT NULL,
    testResult VARCHAR (10),
    testDate VARCHAR (10) NOT NULL,
    FOREIGN KEY (physicianID) REFERENCES physician(physicianID),
    FOREIGN KEY (patientID) REFERENCES patient(patientID)
);

insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('988675', '885379', '54649', 'Troponin Test', 'positive', '1/3/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('637586', '45568', '74433', 'C-reactive Protein', 'negative', '1/30/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('782893', '515182', '28923', 'Methanol test', 'positive', '3/25/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('988675', '835218', '19008', 'Triglycerides Test', 'negative', '1/29/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('114053', '637287', '17359', 'Rheumatoid Factor', 'positive', '3/6/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('675986', '659524', '03870', 'Sickle cell test', 'positive', '11/14/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('744200', '187726', '18931', 'Plethysmography', 'positive', '4/15/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('675986', '392261', '18974', 'MIBG scintiscan', 'negative', '4/22/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('909738', '705435', '96302', 'Karyotyping', 'negative', '11/6/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('42698', '949771', '17596', 'Methanol test', 'negative', '1/15/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('915904', '665010', '35541', 'Karyotyping', 'negative', '7/16/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('572448', '155928', '72983', 'Rheumatoid Factor', 'negative', '5/23/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('257606', '87168', '37587', 'Intravenous pyelogram', 'negative', '6/27/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('953505', '337016', '32023', 'Creatine Kinase', 'positive', '11/11/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('890262', '637287', '61686', 'Plethysmography', 'positive', '8/26/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('946708', '337016', '69583', 'Insulin C-peptide test', 'positive', '6/2/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('856842', '606755', '01961', 'Lipase test', 'positive', '5/26/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('679015', '278866', '47959', 'Protein S blood test', 'negative', '6/11/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('92507', '705435', '26603', 'Creatine Kinase', 'positive', '11/1/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('114053', '417341', '66091', 'Lipase test', 'negative', '8/24/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('499069', '45568', '78598', 'Karyotyping', 'negative', '8/6/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('63921', '509927', '06538', 'Calcium Blood Test', 'negative', '1/14/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('257606', '606755', '01492', 'Arterial Blood Gas', 'negative', '1/21/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('405175', '642953', '26418', 'Sickle cell test', 'negative', '8/25/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('63921', '392261', '21910', 'Rheumatoid Factor', 'positive', '3/22/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('819434', '781716', '21798', 'Trypsinogen test', 'positive', '7/26/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('675986', '278853', '32441', 'Protein S blood test', 'positive', '6/22/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('537380', '747377', '34587', 'Arterial Blood Gas', 'negative', '6/3/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('988675', '646658', '17177', 'Antinuclear Antibody', 'negative', '6/5/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('679015', '668379', '17420', 'Latex agglutination test', 'positive', '8/5/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('744200', '64616', '92095', 'Karyotyping', 'positive', '8/8/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('211232', '659524', '90670', 'Thoracentesis', 'positive', '4/20/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('675986', '296733', '83400', 'Antinuclear Antibody', 'negative', '10/25/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('675986', '392261', '44617', 'Troponin Test', 'negative', '6/24/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('405175', '64616', '98608', 'Plethysmography', 'positive', '9/7/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('92507', '562079', '69373', 'Latex agglutination test', 'positive', '4/24/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('257606', '705435', '55695', 'Triglycerides Test', 'negative', '4/7/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('915904', '949771', '78691', 'Arterial Blood Gas', 'negative', '12/1/2021');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('958817', '885379', '90520', 'Protein S blood test', 'negative', '10/20/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('915904', '353389', '95983', 'Karyotyping', 'positive', '6/7/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('740633', '781716', '00663', 'Creatine Kinase', 'positive', '11/3/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('114053', '603626', '16643', 'Protein S blood test', 'negative', '10/1/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('391087', '665010', '69457', 'Troponin Test', 'positive', '7/25/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('958817', '515182', '48866', 'RPR test', 'negative', '12/7/2021');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('257606', '425220', '33606', 'Troponin Test', 'negative', '1/25/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('675986', '425220', '76907', 'Arterial Blood Gas', 'positive', '6/9/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('211232', '949771', '29101', 'Sickle cell test', 'negative', '8/10/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('499069', '668379', '39064', 'MIBG scintiscan', 'negative', '6/25/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('391087', '278853', '65949', 'Sickle cell test', 'positive', '10/11/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('213702', '606755', '06019', 'Creatine Kinase', 'positive', '6/14/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('183255', '515182', '80712', 'Intravenous pyelogram', 'negative', '5/9/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('80616', '850399', '26287', 'Trypsinogen test', 'positive', '8/19/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('740633', '296733', '88167', 'Karyotyping', 'negative', '4/30/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('211232', '606755', '96990', 'Insulin C-peptide test', 'negative', '9/7/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('257606', '417341', '40569', 'C-reactive Protein', 'positive', '4/27/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('241440', '337016', '19771', 'Troponin Test', 'positive', '10/13/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('65085', '705435', '24424', 'RPR test', 'positive', '11/29/2021');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('63921', '662782', '42383', 'Karyotyping', 'positive', '7/7/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('80616', '332681', '86046', 'Lipase test', 'positive', '11/4/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('958817', '278853', '55855', 'Insulin C-peptide test', 'positive', '4/16/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('675283', '519963', '91977', 'RPR test', 'negative', '4/12/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('149316', '12849', '04615', 'Arterial Blood Gas', 'negative', '8/2/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('114053', '417341', '98557', 'AC1 test', 'positive', '7/7/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('42698', '410380', '45653', 'MIBG scintiscan', 'positive', '7/7/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('63921', '662782', '84416', 'Karyotyping', 'negative', '3/30/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('405175', '337016', '74740', 'Latex agglutination test', 'negative', '4/14/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('679015', '515182', '24375', 'Intravenous pyelogram', 'positive', '6/12/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('405175', '515182', '54568', 'AC1 test', 'positive', '3/2/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('657516', '781716', '06316', 'Plethysmography', 'positive', '10/9/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('188982', '665010', '32291', 'Triglycerides Test', 'negative', '5/28/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('953505', '278853', '16693', 'Latex agglutination test', 'negative', '8/3/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('915904', '606755', '42858', 'Trypsinogen test', 'negative', '9/8/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('789029', '562079', '33308', 'C-reactive Protein', 'positive', '11/26/2021');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('80616', '278866', '10441', 'RPR test', 'positive', '10/31/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('675986', '747377', '80807', 'Insulin C-peptide test', 'negative', '8/11/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('988675', '332681', '97573', 'Sickle cell test', 'negative', '2/23/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('531364', '332681', '91658', 'Sickle cell test', 'positive', '1/24/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('909738', '187726', '67115', 'C-reactive Protein', 'negative', '4/2/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('789029', '187726', '23843', 'Latex agglutination test', 'positive', '9/29/2022');
insert into test (patientID, physicianID, testID, testType, testResult, testDate) values ('149316', '662782', '84289', 'Antinuclear Antibody', 'positive', '8/16/2022');


CREATE TABLE appointment (
    patientID VARCHAR (15) NOT NULL,
    physicianID VARCHAR (15) NOT NULL,
    appointmentDate VARCHAR (10) NOT NULL,
    appointmentID VARCHAR (15) PRIMARY KEY,
    appointmentType VARCHAR (30) NOT NULL,
    roomlocation VARCHAR (5),
    FOREIGN KEY (physicianID) REFERENCES physician(physicianID),
    FOREIGN KEY (patientID) REFERENCES patient(patientID)
);

insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('114053', '184261', '9/17/2023', '9971', 'Office Visit', 'RM:83');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('537380', '187726', '8/25/2023', '3587', 'Preventative Physical Exam', 'RM:52');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('257606', '747377', '3/11/2023', '8215', 'Preventative Physical Exam', 'RM:63');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('657516', '949771', '3/7/2023', '7346', 'Physical', 'RM:48');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('63921', '781716', '8/31/2023', '7849', 'Surgery', 'RM:64');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('211232', '278866', '3/16/2023', '0721', 'Treatment', 'RM:32');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('789029', '705435', '7/1/2023', '7348', 'Physical', 'RM:53');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('633681', '184261', '8/14/2023', '3182', 'Screening and Diagnostic labs', 'RM:02');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('520057', '155928', '6/16/2023', '2638', 'Surgery', 'RM:04');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('42698', '120582', '9/5/2023', '4552', 'Screening and Diagnostic labs', 'RM:42');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('80616', '45568', '2/7/2023', '3104', 'Office Visit', 'RM:42');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('782893', '665010', '5/29/2023', '4674', 'Screening and Diagnostic labs', 'RM:69');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('92507', '64616', '5/22/2023', '1380', 'Surgery', 'RM:27');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('499069', '509927', '2/19/2023', '7438', 'Screening and Diagnostic labs', 'RM:10');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('149316', '87168', '5/7/2023', '9144', 'Physical', 'RM:42');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('188982', '606755', '6/29/2023', '7495', 'Preventative Physical Exam', 'RM:15');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('42698', '519963', '8/23/2023', '7728', 'Treatment', 'RM:59');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('92507', '278853', '5/19/2023', '4808', 'Screening and Diagnostic labs', 'RM:86');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('299372', '155928', '3/28/2023', '2710', 'Office Visit', 'RM:38');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('274143', '665010', '6/3/2023', '4657', 'Surgery', 'RM:84');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('188982', '15267', '8/18/2023', '7090', 'Preventative Physical Exam', 'RM:95');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('990647', '509927', '7/21/2023', '9646', 'Surgery', 'RM:21');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('499069', '885379', '2/17/2023', '5571', 'Office Visit', 'RM:50');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('633681', '835218', '10/16/2023', '9862', 'Surgery', 'RM:32');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('274143', '949771', '4/19/2023', '9847', 'Screening and Diagnostic labs', 'RM:05');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('675283', '642953', '4/23/2023', '5041', 'Preventative Physical Exam', 'RM:32');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('675986', '850399', '1/26/2023', '0665', 'Physical', 'RM:65');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('149316', '668379', '3/18/2023', '1547', 'Treatment', 'RM:18');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('958817', '332681', '3/4/2023', '5456', 'Preventative Physical Exam', 'RM:55');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('958817', '705435', '7/26/2023', '2074', 'Physical', 'RM:50');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('637586', '184261', '2/9/2023', '3480', 'Screening and Diagnostic labs', 'RM:78');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('414439', '12849', '3/18/2023', '6269', 'Treatment', 'RM:64');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('213702', '87168', '7/27/2023', '8354', 'Preventative Physical Exam', 'RM:14');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('31810', '603626', '6/18/2023', '4067', 'Screening and Diagnostic labs', 'RM:17');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('533103', '850399', '10/26/2023', '8005', 'Screening and Diagnostic labs', 'RM:81');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('274143', '781716', '6/1/2023', '4646', 'Screening and Diagnostic labs', 'RM:71');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('42698', '606755', '2/10/2023', '6408', 'Physical', 'RM:50');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('92507', '392261', '4/5/2023', '1626', 'Surgery', 'RM:54');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('675283', '747377', '10/3/2023', '4001', 'Screening and Diagnostic labs', 'RM:96');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('257606', '45568', '7/2/2023', '8269', 'Preventative Physical Exam', 'RM:18');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('915904', '662782', '8/23/2023', '2001', 'Treatment', 'RM:55');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('531364', '392261', '2/25/2023', '0692', 'Treatment', 'RM:63');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('188982', '637287', '3/18/2023', '5441', 'Office Visit', 'RM:76');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('114053', '120582', '1/3/2023', '5966', 'Screening and Diagnostic labs', 'RM:48');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('572448', '296733', '9/2/2023', '7664', 'Screening and Diagnostic labs', 'RM:32');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('537380', '187726', '12/26/2022', '6364', 'Treatment', 'RM:62');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('80616', '665010', '9/24/2023', '2749', 'Screening and Diagnostic labs', 'RM:47');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('65085', '64616', '1/31/2023', '8008', 'Surgery', 'RM:84');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('499069', '662782', '2/21/2023', '2847', 'Surgery', 'RM:59');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('652896', '392261', '2/22/2023', '8843', 'Treatment', 'RM:31');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('740633', '659524', '4/16/2023', '1246', 'Office Visit', 'RM:51');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('414439', '642953', '3/24/2023', '1997', 'Physical', 'RM:38');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('257606', '646658', '4/1/2023', '4934', 'Treatment', 'RM:23');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('188982', '885379', '8/30/2023', '8628', 'Treatment', 'RM:38');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('679015', '187726', '1/12/2023', '2943', 'Surgery', 'RM:41');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('63921', '120582', '7/16/2023', '8868', 'Office Visit', 'RM:08');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('782893', '850399', '12/7/2022', '6407', 'Preventative Physical Exam', 'RM:31');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('531364', '781716', '11/3/2023', '9482', 'Surgery', 'RM:80');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('744200', '436761', '10/8/2023', '6483', 'Surgery', 'RM:68');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('792469', '781716', '8/18/2023', '5010', 'Preventative Physical Exam', 'RM:02');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('792469', '509927', '8/15/2023', '8464', 'Treatment', 'RM:71');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('533103', '668379', '10/23/2023', '7583', 'Surgery', 'RM:51');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('405175', '515182', '3/26/2023', '5996', 'Surgery', 'RM:83');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('531364', '659524', '2/14/2023', '7687', 'Screening and Diagnostic labs', 'RM:79');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('499069', '187726', '2/25/2023', '7745', 'Preventative Physical Exam', 'RM:86');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('213702', '835218', '7/16/2023', '7263', 'Screening and Diagnostic labs', 'RM:59');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('958817', '120582', '11/13/2023', '4717', 'Screening and Diagnostic labs', 'RM:69');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('679015', '562079', '9/2/2023', '3149', 'Treatment', 'RM:60');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('531364', '509927', '6/5/2023', '9722', 'Surgery', 'RM:00');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('652896', '45568', '6/5/2023', '5463', 'Treatment', 'RM:03');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('274143', '45568', '4/12/2023', '6924', 'Office Visit', 'RM:55');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('946708', '850399', '8/27/2023', '4120', 'Treatment', 'RM:22');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('537380', '642953', '5/17/2023', '4468', 'Office Visit', 'RM:70');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('65085', '296733', '11/22/2022', '0799', 'Treatment', 'RM:16');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('414439', '885379', '11/21/2022', '6361', 'Physical', 'RM:63');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('274143', '509927', '4/16/2023', '9409', 'Office Visit', 'RM:00');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('990647', '885379', '7/15/2023', '9125', 'Surgery', 'RM:14');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('537380', '332681', '12/10/2022', '5068', 'Physical', 'RM:83');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('183255', '15267', '11/30/2022', '3786', 'Screening and Diagnostic labs', 'RM:47');
insert into appointment (patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) values ('740633', '949771', '7/19/2023', '7714', 'Physical', 'RM:47');


CREATE TABLE insuranceCompany (
    companyID VARCHAR (15) NOT NULL PRIMARY KEY,
    companyName VARCHAR (35) NOT NULL,
    billingStreet VARCHAR (40) NOT NULL,
    billingCity VARCHAR (20) NOT NULL,
    billingState VARCHAR (2) NOT NULL,
    billingZip VARCHAR (15) NOT NULL,
    phoneNumber VARCHAR (15) NOT NULL,
    fax VARCHAR (12) NOT NULL
);

insert into insuranceCompany (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax) values ('1', 'United Health', '6 Fallview Point', 'Raleigh', 'NC', '27635', '919-648-8408', '3601142786');
insert into insuranceCompany (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax) values ('2', 'Blue Cross', '73621 Luster Plaza', 'Orlando', 'FL', '32854', '407-875-8784', '8634929199');
insert into insuranceCompany (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax) values ('3', 'Carefirst', '0 Meadow Valley Place', 'Stamford', 'CT', '06922', '203-947-1485', '8016311739');
insert into insuranceCompany (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax) values ('4', 'Kaiser Foundation', '37 East Parkway', 'Las Vegas', 'NV', '89115', '702-213-9983', '3132751047');
insert into insuranceCompany (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax) values ('5', 'Aetna', '9 Granby Plaza', 'Norfolk', 'VA', '23514', '757-414-2322', '3128599080');
insert into insuranceCompany (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax) values ('6', 'Cigna', '3 Johnson Alley', 'Akron', 'OH', '44310', '330-605-4318', '6825852914');
insert into insuranceCompany (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax) values ('7', 'LifeWise', '8 Cardinal Parkway', 'Fayetteville', 'NC', '28314', '910-779-0058', '2536081354');
insert into insuranceCompany (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax) values ('8', 'Unicare', '8 Fremont Pass', 'San Diego', 'CA', '92191', '619-880-8636', '5594593650');
insert into insuranceCompany (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax) values ('9', 'WellPoint', '0682 Johnson Street', 'Little Rock', 'AR', '72215', '501-632-8594', '3183770203');
insert into insuranceCompany (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax) values ('10', 'Connecticare', '64439 Aberg Lane', 'Kansas City', 'MO', '64193', '816-452-0497', '8178897372');
insert into insuranceCompany (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax) values ('11', 'Medical Mutual', '40512 Dexter Trail', 'New Brunswick', 'NJ', '08922', '732-136-6573', '9166219791');
insert into insuranceCompany (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax) values ('12', 'Vista', '1102 Lyons Terrace', 'Chicago', 'IL', '60619', '773-800-1258', '8132845812');
insert into insuranceCompany (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax) values ('13', 'Oxford', '2 Bunker Hill Street', 'Memphis', 'TN', '38131', '901-464-3734', '3031933706');
insert into insuranceCompany (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax) values ('14', 'Asuris', '21287 Eastwood Terrace', 'New Brunswick', 'NJ', '08922', '732-907-9671', '4101992038');
insert into insuranceCompany (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax) values ('15', 'Caliber Benefits', '704 Fuller Circle', 'Jacksonville', 'FL', '32204', '904-280-5687', '2144854501');
insert into insuranceCompany (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax) values ('16', 'Commonwealth Care', '3 Redwing Avenue', 'Springfield', 'MO', '65805', '417-644-3935', '7734171578');
insert into insuranceCompany (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax) values ('17', 'Thrive Medicare', '2 Lukken Court', 'Shawnee Mission', 'KS', '66210', '913-573-0550', '8162347664');
insert into insuranceCompany (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax) values ('18', 'UnitedHealthcare', '3 High Crossing Way', 'Honolulu', 'HI', '96815', '808-332-9424', '6168503467');
insert into insuranceCompany (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax) values ('19', 'Adelphi Health', '3264 Northview Hill', 'Oakland', 'CA', '94605', '510-546-2162', '5611347396');
insert into insuranceCompany (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax) values ('20', 'Healthnet', '6018 Crescent Oaks Circle', 'Grand Rapids', 'MI', '49518', '616-772-4290', '6141668121');
insert into insuranceCompany (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax) values ('21', 'Indigo', '54906 Michigan Crossing', 'Gainesville', 'FL', '32610', '352-337-8497', '2021556930');
insert into insuranceCompany (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax) values ('22', 'Unite Here Health', '99356 Blue Bill Park Alley', 'Hartford', 'CT', '06160', '860-896-2035', '3364709465');
insert into insuranceCompany (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax) values ('23', 'Humana', '91 Briar Crest Terrace', 'Los Angeles', 'CA', '90030', '213-578-6188', '7323740491');
insert into insuranceCompany (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax) values ('24', 'eternalHealth', '47036 Mallory Parkway', 'Terre Haute', 'IN', '47805', '812-673-1972', '8047072370');
insert into insuranceCompany (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax) values ('25', 'Blue Benefit', '154 La Follette Pass', 'Anderson', 'SC', '29625', '864-867-6704', '4077860635');
insert into insuranceCompany (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax) values ('26', 'First Rate Health', '127 Lukken Junction', 'Anaheim', 'CA', '92812', '714-512-3825', '3092008213');
insert into insuranceCompany (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax) values ('27', 'Elevance', '2 Sutherland Junction', 'Virginia Beach', 'VA', '23454', '757-701-6815', '6513991264');
insert into insuranceCompany (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax) values ('28', 'Oscar', '773 Luster Street', 'Milwaukee', 'WI', '53263', '414-125-2435', '8171042587');
insert into insuranceCompany (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax) values ('29', 'Molina', '60 Arkansas Street', 'Orlando', 'FL', '32835', '321-548-1521', '8064630728');
insert into insuranceCompany (companyID, companyName, billingStreet, billingCity, billingState, billingZip, phoneNumber, fax) values ('30', 'Tufts Health', '7106 Susan Center', 'Little Rock', 'AR', '72204', '501-280-6835', '8327726967');


CREATE TABLE insurance (
    insuranceID VARCHAR (15) NOT NULL PRIMARY KEY,
    patientID VARCHAR (15) NOT NULL,
    companyID VARCHAR (15) NOT NULL,
    effectiveDate VARCHAR (10) NOT NULL,
    networkType VARCHAR (4) NOT NULL,
    planType VARCHAR (20) NOT NULL,
    FOREIGN KEY (patientID) REFERENCES patient(patientID),
    FOREIGN KEY (companyID) REFERENCES insuranceCompany(companyID)
);

insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('22782', '31810', '13', '11/7/2020', 'HMO', 'employer-sponsored');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('75803', '42698', '6', '6/26/2011', 'POS', 'employer-sponsored');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('91062', '63921', '16', '8/11/2013', 'POS', 'self-insured');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('37652', '65085', '11', '5/1/2015', 'HMO', 'employer-sponsored');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('55942', '80616', '15', '12/1/2019', 'CDHP', 'self-insured');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('39874', '92507', '22', '2/4/2014', 'EPO', 'employer-sponsored');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('17317', '114053', '30', '12/14/2015', 'HMO', 'employer-sponsored');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('5564', '149316', '7', '12/19/2011', 'HMO', 'self-insured');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('6763', '183255', '24', '12/23/2010', 'HMO', 'employer-sponsored');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('47654', '188982', '20', '5/6/2019', 'CDHP', 'self-insured');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('2967', '211232', '17', '11/27/2016', 'POS', 'self-insured');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('88601', '213702', '4', '4/21/2015', 'POS', 'self-insured');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('28025', '241440', '7', '7/13/2019', 'POS', 'self-insured');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('90920', '257606', '30', '9/22/2013', 'HMO', 'self-insured');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('46928', '274143', '15', '7/9/2011', 'PPO', 'employer-sponsored');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('84802', '299372', '22', '12/27/2019', 'POS', 'self-insured');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('22925', '376985', '17', '6/27/2020', 'PPO', 'self-insured');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('78868', '391087', '23', '2/13/2020', 'CDHP', 'self-insured');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('22684', '405175', '15', '5/25/2017', 'EPO', 'employer-sponsored');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('76951', '414439', '22', '2/16/2015', 'CDHP', 'self-insured');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('21050', '499069', '25', '1/28/2015', 'POS', 'self-insured');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('61220', '520057', '30', '7/5/2014', 'CDHP', 'self-insured');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('44341', '531364', '1', '1/23/2020', 'CDHP', 'employer-sponsored');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('36313', '533103', '1', '10/1/2014', 'EPO', 'employer-sponsored');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('90925', '537380', '14', '6/14/2019', 'HMO', 'employer-sponsored');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('83614', '572448', '23', '5/26/2016', 'PPO', 'employer-sponsored');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('84720', '633681', '13', '8/5/2011', 'PPO', 'self-insured');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('31368', '637586', '1', '4/14/2020', 'PPO', 'self-insured');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('12584', '652896', '13', '1/23/2018', 'HMO', 'self-insured');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('24897', '657516', '25', '5/17/2016', 'HMO', 'employer-sponsored');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('76667', '675283', '1', '7/7/2014', 'POS', 'employer-sponsored');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('98631', '675986', '4', '5/24/2014', 'CDHP', 'self-insured');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('67661', '679015', '23', '8/22/2016', 'POS', 'self-insured');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('84111', '716014', '21', '6/11/2013', 'HMO', 'employer-sponsored');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('26758', '740633', '6', '11/11/2018', 'POS', 'self-insured');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('12538', '744200', '4', '1/7/2018', 'CDHP', 'employer-sponsored');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('1981', '782893', '26', '8/10/2020', 'CDHP', 'self-insured');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('75142', '789029', '6', '10/27/2019', 'HMO', 'self-insured');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('94363', '792469', '1', '1/9/2019', 'CDHP', 'self-insured');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('35596', '819434', '11', '2/12/2011', 'EPO', 'employer-sponsored');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('69260', '856842', '6', '11/16/2018', 'POS', 'self-insured');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('79874', '879510', '13', '3/13/2017', 'EPO', 'self-insured');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('77798', '890262', '30', '9/21/2014', 'EPO', 'employer-sponsored');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('6533', '909738', '16', '5/7/2011', 'EPO', 'employer-sponsored');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('4045', '915904', '10', '11/30/2013', 'CDHP', 'employer-sponsored');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('92611', '946708', '6', '4/30/2018', 'POS', 'self-insured');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('75167', '953505', '10', '12/25/2019', 'PPO', 'self-insured');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('73324', '958817', '30', '1/7/2019', 'EPO', 'employer-sponsored');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('44841', '988675', '2', '8/4/2015', 'POS', 'employer-sponsored');
insert into insurance (insuranceID, patientID, companyID, effectiveDate, networkType, planType) values ('13227', '990647', '21', '3/3/2017', 'CDHP', 'self-insured');



CREATE TABLE claim (
    insuranceID VARCHAR (15) NOT NULL,
    claimID VARCHAR (15) NOT NULL PRIMARY KEY,
    totalCost VARCHAR (15) NOT NULL,
    approvalStatus VARCHAR (10) NOT NULL,
    FOREIGN KEY (insuranceID) REFERENCES insurance(insuranceID)
);

insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('47654', '6724', '5704', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('21050', '7126', '3367', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('5564', '593', '2079', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('13227', '9058', '770', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('88601', '4179', '1100', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('37652', '1807', '6582', 'Rejected');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('36313', '923', '3650', 'Rejected');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('39874', '6929', '6026', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('84111', '7742', '4116', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('90925', '3745', '4695', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('21050', '7007', '6865', 'Reviewing');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('94363', '9888', '4858', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('75803', '2004', '6911', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('35596', '4197', '3673', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('12538', '208', '454', 'Rejected');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('36313', '1060', '1102', 'Reviewing');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('75803', '5302', '3543', 'Rejected');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('84111', '7815', '1907', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('84720', '9080', '1390', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('61220', '25', '2189', 'Reviewing');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('84111', '3277', '182', 'Reviewing');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('6763', '8273', '2309', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('12584', '7325', '238', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('77798', '3152', '5402', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('35596', '1684', '145', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('91062', '9920', '1176', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('83614', '5676', '127', 'Reviewing');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('55942', '268', '5659', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('98631', '8944', '2240', 'Rejected');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('39874', '929', '2284', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('44841', '9699', '280', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('91062', '9484', '421', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('91062', '144', '3840', 'Reviewing');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('83614', '9472', '878', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('22925', '9181', '6695', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('61220', '3196', '4400', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('98631', '8840', '2477', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('77798', '6037', '1259', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('1981', '5365', '5251', 'Reviewing');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('24897', '1945', '3419', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('76951', '2555', '4328', 'Reviewing');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('75803', '4415', '6572', 'Rejected');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('73324', '1489', '3695', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('28025', '4383', '3808', 'Reviewing');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('55942', '6168', '6680', 'Reviewing');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('12584', '5266', '3395', 'Reviewing');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('75167', '7793', '3728', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('84802', '2758', '1639', 'Reviewing');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('88601', '1446', '4058', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('84802', '848', '806', 'Reviewing');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('22684', '2400', '6036', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('44841', '2640', '5390', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('84802', '1958', '6381', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('31368', '6983', '988', 'Reviewing');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('22925', '2971', '5740', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('76667', '4168', '3203', 'Rejected');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('37652', '451', '6513', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('73324', '1486', '3452', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('76667', '7513', '6585', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('92611', '1078', '1301', 'Reviewing');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('2967', '5350', '5696', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('98631', '9598', '2084', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('36313', '7352', '1524', 'Reviewing');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('37652', '6227', '2186', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('35596', '8528', '5641', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('12538', '713', '644', 'Rejected');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('26758', '8443', '3141', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('69260', '2668', '6246', 'Reviewing');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('67661', '9532', '4663', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('90920', '9606', '3638', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('26758', '6448', '4603', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('73324', '431', '4316', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('31368', '1404', '6491', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('77798', '2058', '6137', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('83614', '349', '4384', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('84802', '565', '3425', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('17317', '7697', '3272', 'Reviewing');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('92611', '730', '2774', 'Accepted');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('12538', '5154', '6175', 'Reviewing');
insert into claim (insuranceID, claimID, totalCost, approvalStatus) values ('47654', '6838', '200', 'Accepted');



