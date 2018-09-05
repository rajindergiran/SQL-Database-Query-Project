create database COMPANY_DB9;
use COMPANY_DB9;
CREATE TABLE PHARMACIST(PHARMACIST_ID INT PRIMARY KEY,NAME CHAR(15) NOT NULL);
insert into PHARMACIST VALUES(301,'INDERJEET SINGH');
create table PHARMACY( PHARMACY_ID INT PRIMARY KEY ,NAME CHAR(30),ADRESS VARCHAR(50),FAX INT,PHARMACIST_ID INT REFERENCES PHARMACIST(PHARMACIST_ID) );
insert into PHARMACY VALUES  (201,'APOLLO HEALTH DRUG MART','105 PARKWAY FOREST Dr ,ON ',000647642,301);
DROP TABLE PHARMACY;
create table CLINIC(CLINIC_ID INT PRIMARY KEY ,NAME CHAR(20),ADRESS VARCHAR(50),PHARMACY_ID INT REFERENCES PHARMACY(PHARMACY_ID));
insert into CLINIC VALUES(101,'APOLLO HOSPITAL','105 PARKWAY FOREST Dr ,ON ',201);
CREATE TABLE SPECIALITY(SPECIALITY_ID INT PRIMARY KEY,NAME CHAR(30) NOT NULL,DESCRIPTION VARCHAR(200) NOT NULL)
insert into  SPECIALITY VALUES(401,'CARDIOLOGIST','Treats and Prevents from diseases like HEART AND BLOOD VESSELS');
insert into  SPECIALITY VALUES(402,'ALLERGIST AND IMMUNOLOGIST','Diagonoses ,treats and manages allergies ,asthma and immunologic disorders');
insert into  SPECIALITY VALUES(403,'ADDICTION PSYCHIATRIST','Focuses on the evaluation,diagnosis and treatment of people who are suffering from one or more disorders related to addiction');
insert into  SPECIALITY VALUES(404,'DENTIST','Focuses on the diagonosis,prevention and treatment of diseases and conditions of the oral cavity');
insert into  SPECIALITY VALUES(405,'DERMATOLOGIST','Focuses on the treatment of diseases of the skin');
insert into  SPECIALITY VALUES(406,'ONCOLOGIST','Deals with tumors incluing the origin ,development,diagnosis and treatment of malignant neoplasms');
insert into  SPECIALITY VALUES(407,'GENERAL PRACTITIONER','A medical practitioner whose practice is not limited to any specific branch of medicine or class of diseases');
insert into  SPECIALITY VALUES(408,'ENT SPECIALIST','Treats and Diagnosis disorders of the head , neck ,ears , nose and throat');
DROP TABLE SPECIALITY;
CREATE TABLE DOCTOR(DOCTOR_ID INT PRIMARY KEY,NAME CHAR(20) NOT NULL,EMAIL VARCHAR(50),PHONE VARCHAR(20) NOT NULL,SPECIALITY_ID INT NOT NULL references SPECIALITY(SPECIALITY_ID),CLINIC_ID INT NOT NULL REFERENCES CLINIC(CLINIC_ID));
insert into DOCTOR VALUES(501,'KAMAL VERMA','kamalverma621@gmail.com',9055781771,00405,101);
insert into DOCTOR VALUES(502,'JOHN WATERS','waters.jhon24@gmail.com',9058251032,00407,101);
insert into DOCTOR VALUES(503,'ROHIT SHARMA','sharma1099rohit@gmail.com',6478211640,00401,101);
insert into DOCTOR VALUES(504,'RAJ SRIVASTAV','sriraj67@outlook.com',9051073462,00403,101);
insert into DOCTOR VALUES(505,'SHASHI BAWA','shashibawa104@gmail.com',9056531060,00404,101);
insert into DOCTOR VALUES(506,'MARIANNE BUHLER','bhuler7890mar@gmail.com',6472388164,00408,101);
insert into DOCTOR VALUES(507,'MICHEL DANILOSKI','michel197daniloski@gmail.com',6476722496,00402,101);
insert into DOCTOR VALUES(508,'NANCY SALZMAN','salzman89nancy@yahoo.com',9056731462,00405,101);
insert into DOCTOR VALUES(509,'DR SALO','salo1995dr@gmail.com',9055148532,00401,101);
insert into DOCTOR VALUES(510,'PERRINE GILLOT','perrinegillot6220@outlook.com',905864156,00406,101);
insert into DOCTOR VALUES(511,'MARK JONES','jones.mark24@gmail.com',01400320000,00408,101);
insert into DOCTOR VALUES(512,'GARTH JOHNSON','garth678johnson@gmail.com',2504836018,00402,101);
insert into DOCTOR VALUES(513,'DR.PUJA GOYAL','goyal467puja@gmail.com',6134249077,00405,101);
insert into DOCTOR VALUES(514,'LAURA FLIGG','laurafligg89@yahoo.com',9056476511,00403,101);
insert into DOCTOR VALUES(515,'DAVID HOFFMAN','hoffman.david89@yahoo.com',6476511234,00406,101);
insert into DOCTOR VALUES(516,'GEOFF RAWSON','geoffrawson00@gmail.com',64798449875,00407,101);
insert into DOCTOR VALUES(517,'JIM WHITE','jimwhite23@gmail.com',9053333838,00402,101);
insert into DOCTOR VALUES(518,'DR.SMITH','smith.dr67@gmail.com',905864156,00407,101);
insert into DOCTOR VALUES(519,'DR.MARIE BROWN','brown.marie245@gmail.com',0142271360,00407,101);
insert into DOCTOR VALUES(520,'DR.JUHI SHARMA','juhisharma789@gmail.com',0142735110,00407,101);
insert into DOCTOR VALUES(521,'KIRAN GUPTA','kiran.gupta89@gmail.com',7804847924,00404,101);
insert into DOCTOR VALUES(522,'SUSHMA GOYAL','goyal.sushma231@gmail.com',9055614557,00408,101);
insert into DOCTOR VALUES(523,'DR.VEERPAL KAUR','veer.kaur567@gmail.com',6479266746,00405,101);
insert into DOCTOR VALUES(524,'DR.SETHI','sethi.89dr@gmail.com',9055781557,00407,101);
insert into DOCTOR VALUES(525,'AMAN GREWAL','grewalaman.89@gmail.com',647592246,00404,101);

create table PATIENT(PATIENT_ID INT PRIMARY KEY,DOCTOR_ID INT NOT NULL REFERENCES DOCTOR(DOCTOR_ID),NAME CHAR(20) NOT NULL,AGE INT NOT NULL,GENDER CHAR(2) NOT NULL,ADRESS VARCHAR(70) NOT NULL,PHONE VARCHAR(20) NOT NULL,EMAIL VARCHAR(50)NOT NULL);
INSERT INTO PATIENT VALUES(901,516,'GURJEET KAUR',34,'F','65 Mount Ranier crest Brampton ON',6453728462,'gurjeetkaur@gmail.com'),
(902,502,'KARAN SINGH',21,'M','64 Rosemount drive Scarborough ON',8647283749,'karansingh@gmail.com'),
(903,519,'RAVINDER SINGH',68,'M','47 Leith hill road, North York ON',6372846382,'ravsingh@gmail.com'),
(904,502,'RAMAN GILL',45,'F','115 W.Broadway Vancouver, BC, V6J5A4',7482937465,'gillraman@gmail.com'),
(905,507,'PUJA SHARMA',35,'F','181 bay street suite 3000 Toronto, ON, M5J2T3 ',6384738374,'psharma@gmail.com'),
(906,501,'KIRAN KAPOOR',12,'F','Wellington street W.Barrie, ON , L4n5L2',8294384938,'kaporkiran@gmail.com'),
(907,508,'RAJAV VERMA',82,'M','86 York mills road, Toronto ON',7482934847,'rajverma@gmail.com'),
(908,503,'SUKHJINDER SINGH',46,'M','1 Wexford road Brampton, ON L2F2H1',7583927348,'sukhsingh@gmail.com'),
(909,506,'LAURA HOFFMAN',24,'F','68 forest road, Scarborough, ON',7482938473,'laurahoff@gmail.com'),
(910,505,'PAYAL MODI',75,'F','67 seclusion crest, Brampton On',9482738472,'modipayal@gmail.com'),
(911,510,'ROHAN KUMAR',93,'M','67 Dunrankin drive, Missisauga  ON',7483937444,'rohan@gmail.com'),
(912,517,'KOMAL PREET',53,'F','797 Princes street, Brampton, ON',6573829384,'komalprit@gmail.com'),
(913,511,'ALBERT MACK',67,'M','675 leith hill street, Toronto, ON',6372937848,'albert@gmail.com'),
(914,513,'NEHA SHARMA',24,'F','87 Dufferin road, Toronto, ON',6473829473,'nehasherma@gmail.com'),
(915,512,'JAS MAAN',62,'M','98 Dunrankin drive, Missisauga, ON',6473829473,'maanjas@gmail.com'),
(916,525,'AMAN HANDA',45,'F','67 Forest road, Missisauga, ON',7483927463,'handaaman@gmail.com'),
(917,522,'ARSH KUMARI',82,'F','59 seclusion crest, Missisuaga, ON',8463826738,'arshk@gmail.com'),
(918,519,'BABAL RAI',26,'M','76 bay view street, Toronto, ON',8472837483,'raibabal@gmail.com'),
(919,514,'SASHI KAPOOR',74,'M','23 Amberjack blvd, Scarborough, ON',8473827463,'shashi@gmail.com'),
(920,509,'DEEP KARAN',64,'F','5050 Dufferin street, North York, On',8473827374,'karandeep@gmail.com'),
(921,520,'MANPRIT KAUR',11,'F','7025 Tomken road, Missisauga, ON',8473829473,'manprit@gmail.com'),
(922,523,'KAMAL BAJAVA',23,'F','65 Dunrankin drive, ON',7362846394,'kamal@gmail.com'),
(923,521,'PREET DIA',33,'F','22 Eglinton avenue, Toronto, ON',7382937462,'diaprit@gmail.com'),
(924,524,'NAV KUMAR',25,'M','45 Queensdale Avenue E, Hamilton, ON',7583928563,'nav11@gmail.com'),
(925,510,'DIA PALEKAR',75,'F','55 Bayview villege, Toronto, ON',2643836747,'palekar55@gmail.com'),
(926,514,'PAHUL SAM',33,'M','99 Fernforest drive, Brampton, ON',8593746283,'pahul.sam@gmail.com'),
(927,505,'JOBAN ATWAL',76,'M','85 Alden road, Markham, On',7483746291,'joban_atwal@gmail.com'),
(928,501,'HARRY MAAN',54,'F','55 Hester street, Hamilton, ON',6253745836,'maanharry@gmail.com'),
(929,521,'DEPIKA SHARMA',63,'M','85 Dudley Avenue, Toronto, ON',8372745837,'sharmadepika@gmail.com'),
(930,525,'DAVID ROCK',34,'M','66 Redriver drive, Brampton, ON',8362837463,'david123@gmail.com'),
(931,501,'MANJIT DILHO',16,'F','485 Gough road, Markham, ON',7382947387,'dilho.m@gmail.com'),
(932,506,'LIAM PEG',36,'M','556 Kenneth Avenue, North York, ON',8493829487,'pegliam@gmail.com'),
(933,514,'EMMA ROBAN',53,'M','88 Ribbon drive, Brampton, ON',8593827464,'emma@gmail.com'),
(934,502,'WILLIAM VATT',74,'F','45 Clegg road, Markham, ON',9382937200,'vatt.wiliam@gmail.com'),
(935,516,'NATHAN GIAM',44,'M','88 Raymal road, Hamilton, ON',8003788283,'nathangiam@gmail.com'),
(936,501,'ALICE SEAR',34,'M','369 Barlow road, Markham, ON',9000947736,'alice@gmail.com'),
(937,518,'JACK JONE',51,'F','669 Olive Avenue, Toronto, ON',8887774465,'jackjine@gmail.com'),
(938,505,'AVERY BADR6A',23,'F','41 Clark blvd, Brampton, ON',9998477366,'avery@gmail.com'),
(939,519,'SOFHIA BATRA',74,'M','745 Mortimer Avenue, East York, ON',9888857774,'sofiabatra@gmail.com'),
(940,502,'VICTORIA DE',26,'F','65 Tomken road, Missisauga, ON',9111778883,'de.vic@gmail.com'),
(941,521,'HENRY PRINCE',34,'M','444 Mutual Street, Toronto, On',9111118888,'p.henry@gmail.com'),
(942,516,'EVA TIMY',54,'F','56 Ward road, Brampton, ON',8888333222,'evatim@gmail.com'),
(943,518,'HUNTER HOFIM',63,'M','654 Whaley Drive, Missisauga,ON',9876543210,'hofimhunter@gmail.com'),
(944,505,'JULIA DEES',26,'F','36 Eglinton avenue, Toronto, ON',8765432350,'deesjulia@gmail.com'),
(945,520,'LIKE POWED',66,'M','659 Grand Trunk Avenue, Vaughan, ON',5432109876,'likepowed@gmail.com'),
(946,501,'HARPER SIXEN',37,'M','91 Spar drive, Brampton, ON',8887776655,'sixenharper@gmail.com'),
(947,508,'JORDON TAP',56,'F','99 Twenty avenue, Hamilton, On',6754378954,'jordan@gmail.com'),
(948,518,'JUSTIN BIBER',64,'F','44 Mohawk road, Hamilton, ON',9999911111,'justin.biber@gmail.com'),
(949,514,'SIMON KOLE',39,'F','15 Barrhill road, Vaughan, ON ',7766885544,'simonkole@gmail.com'),
(950,516,'COLE DOREX',27,'F','5454 Deerhurst drive, Brampton, ON',9800008888,'coledorex@gmail.com');


CREATE TABLE APPOINTMENT(APPOINTMENT_ID INT PRIMARY KEY,DOCTOR_ID INT NOT NULL REFERENCES DOCTOR(DOCTOR_ID),PATIENT_ID INT NOT NULL REFERENCES PATIENT(PATIENT_ID),YEAR INT,MONTH INT,DATE INT,TIME TIME,COMMENTS VARCHAR(100));
INSERT INTO APPOINTMENT VALUES(601,516,901,2015,04,07,'10:30:35','URGENT APPOINTMENT');
INSERT INTO APPOINTMENT VALUES(602,502,902,2015,04,09,'11:40:36','ROUTINE CHECKUP');
INSERT INTO APPOINTMENT VALUES(603,519,903,2015,05,04,'12:25:15','GENERAL APPOINTMENT');
INSERT INTO APPOINTMENT VALUES(604,502,904,2015,05,28,'01:30:33','EMERGENCY');
INSERT INTO APPOINTMENT VALUES(605,507,905,2015,06,07,'02:45:00','WALK IN APPOINTMENT');
INSERT INTO APPOINTMENT VALUES(606,501,906,2015,06,07,'03:35:03','GENERAL CHECKUP');
INSERT INTO APPOINTMENT VALUES(607,508,907,2015,07,26,'04:30:01','PERIODIC HEALTH EXAM ');
INSERT INTO APPOINTMENT VALUES(608,503,908,2015,08,14,'05:45:19','PHYSICAL EXAMINATION');
INSERT INTO APPOINTMENT VALUES(609,506,909,2015,09,05,'12:30:03','GENERAL APPOINTMENT');
INSERT INTO APPOINTMENT VALUES(610,505,910,2015,10,07,'11:30:07','URGENT APPOINTMENT');
INSERT INTO APPOINTMENT VALUES(611,510,911,2015,11,25,'10:25:33','GENERAL CHECKUP');
INSERT INTO APPOINTMENT VALUES(612,517,912,2015,12,30,'09:55:57','ROUTINE CHECKUP');
INSERT INTO APPOINTMENT VALUES(613,511,913,2016,01,30,'10:15:11','GENERAL CHECKUP');
INSERT INTO APPOINTMENT VALUES(614,513,914,2016,02,29,'04:45:30','EMERGENCY');
INSERT INTO APPOINTMENT VALUES(615,512,915,2016,03,27,'11:30:11','URGENT APPOINTMENT');
INSERT INTO APPOINTMENT VALUES(616,525,916,2016,04,07,'02:30:20','PHYSICAL EXAMINATION');
INSERT INTO APPOINTMENT VALUES(617,522,917,2016,05,23,'10:00:11','ROUTINE CHECKUP');
INSERT INTO APPOINTMENT VALUES(618,519,918,2016,06,20,'12:30:57','URGENT APPOINTMENT');
INSERT INTO APPOINTMENT VALUES(619,514,919,2016,07,17,'10:20:55','EMERGENCY');
INSERT INTO APPOINTMENT VALUES(620,509,920,2016,08,13,'09:30:19','PHYSICAL EXAMINATION');
INSERT INTO APPOINTMENT VALUES(621,520,921,2016,09,11,'10:45:27','GENERAL CHECKUP');
INSERT INTO APPOINTMENT VALUES(622,523,922,2016,10,09,'01:30:25','GENERAL CHECKUP');
INSERT INTO APPOINTMENT VALUES(623,521,923,2016,11,04,'03:55:17','ROUTINE CHECKUP');
INSERT INTO APPOINTMENT VALUES(624,524,924,2016,12,02,'05:30:00','GENERAL CHECKUP');
INSERT INTO APPOINTMENT VALUES(625,510,925,2016,12,01,'06:10:10','PHYSICAL EXAMINATION'),
(626,514,926,2017,01,01,'10:30:10','ROUTINE CHECKUP'),
(627,505,927,2017,01,02,'11:30:20','GENERAL CHECKUP'),
(628,501,928,2017,01,02,'12:30:30','EMERGENCY'),
(629,521,929,2017,01,02,'02:30:40','PHYSICAL EXAMINATION'),
(630,525,930,2017,02,11,'10:30:33','EMERGENCY'),
(631,501,931,2017,02,14,'12:30:44','PHYSICAL EXAMINATION'),
(632,506,932,2017,02,18,'02:30:34','ROUTINE CHECKUP'),
(633,514,933,2017,02,21,'03:30:23','GENERAL APPOINTMENT'),
(634,502,934,2017,02,23,'05:30:12','WALK IN APPOINTMENT'),
INSERT INTO APPOINTMENT VALUES(635,516,935,2017,03,24,'11:30:10','ROUTINE CHECKUP');
INSERT INTO APPOINTMENT VALUES(636,501,936,2017,03,25,'12:30:11','GENERAL APPOINTMENT'),
(637,518,937,2017,03,26,'01:30:12','EMERGENCY'),
(638,505,938,2017,03,27,'03:30:11','GENERAL APPOINTMENT'),
(639,519,939,2017,03,28,'04:30:11','ROUTINE CHECKUP'),
(640,502,940,2017,04,02,'10:15:31','EMERGENCY'),
(641,521,941,2017,04,03,'12:45:54','ROUTINE CHECKUP'),
(642,516,942,2017,04,04,'02:45:14','URGENT APPOINTMENT'),
(643,518,943,2017,04,30,'11:30:19','ROUTINE CHECKUP'),
(644,505,944,2017,05,01,'10:30:05','URGENT APPOINTMENT'),
(645,520,945,2017,05,01,'12:25:10','EMERGENCY'),
(646,501,946,2017,05,05,'10:55:15','ROUTINE CHECKUP'),
(647,508,947,2017,05,07,'10:35:20','GENERAL APPOINTMENT'),
(648,518,948,2017,05,11,'11:45:25','URGENT APPOINTMENT'),
(649,514,949,2017,05,13,'02:15:30','EMERGENCY'),
(650,516,950,2017,05,18,'05:30:45','ROUTINE CHECKUP');
SELECT* FROM APPOINTMENT;
DROP TABLE APPOINTMENT;

CREATE TABLE MEDICATION (MEDICATION_ID INT PRIMARY KEY,NAME VARCHAR(30) NOT NULL,DESCRIPTION VARCHAR(200) NOT NULL);
DROP TABLE MEDICATION;
INSERT INTO MEDICATION VALUES(701,'Acetaminophen','acetaminophen is a pain reliever and a fever reducer'),
(702,'Amoxicillin','Treat many different types of infection caused by bacteria, such as tonsillitis, bronchitis, pneumonia'),
(703,'Clindamycin','Clindamycin is used to treat serious infections caused by bacteria'),
(704,'Cyclobenzaprine','Cyclobenzaprine is used to treat skeletal muscle conditions such as pain or injury'),
(705,'Doxycycline','Doxycycline is also used to treat blemishes, bumps, and acne-like lesions caused by rosacea.'),
(706,'Gabapentin','Gabapentin is used in adults to treat nerve pain caused by herpes virus or shingles '),
(707,'Hydrochlorothiazide','Hydrochlorothiazide is used to treat high blood pressure'),
(708,'Ibuprofen','Reduce fever and treat pain or inflammation caused  headache, toothache, back pain, arthritis minor injury.'),
(709,'Lisinopril','Lisinopril is also used to treat congestive heart failure,or to improve survival after a heart attack.'),
(710,'Loratadine','Loratadine is also used to treat skin hives and itching in people with chronic skin reactions.'),
(711,'Meloxicam','Meloxicam is used to treat pain or inflammation caused by rheumatoid arthritis and osteoarthritis'),
(712,'Metformin','Metformin is used to improve blood sugar control in people with type 2 diabetes.'),
(713,'Metoprolol','Treat angina (chest pain) and hypertension. It is also used to treat or prevent heart attack.'),
(714,'Naproxen','Treats pain or inflammation caused by conditions such as arthritis, ankylosing spondylitis, tendinitis'),
(715,'Omeprazole','Omeprazole is used to treat symptoms of gastroesophageal reflux disease'),
(716,'Oxycodone','Oxycodone is used to treat moderate to severe pain.'),
(717,'Pantoprazole','Pantoprazole is used to treat erosive esophagitis (damage to the esophagus from stomach acid)'),
(718,'Prednisone','Prednisone is used as an anti-inflammatory or an immunosuppressant medication.'),
(719,'Tramadol','Tramadol is used to treat moderate to severe pain.'),
(720,'Trazodone','Trazodone is used to treat major depressive disorder.'),
(721,'Viagra','Viagra is Aused to treat erectile dysfunction (impotence) in men'),
(722,'Wellbutrin','Wellbutrin treats major depressive disorder and seasonal affective disorder'),
(723,'Xanax','Xanax is used to treat anxiety disorders, panic disorders, and anxiety caused by depression.'),
(724,'Zoloft','Zoloft is used to treat depression, obsessive-compulsive disorder, panic disorder, anxiety disorders'),
(725,'Alprazolam','Alprazolam is used to treat anxiety disorders, panic disorders, and anxiety caused by depression');

create table PRESCRIPTION(PRESCRIPTION_ID INT PRIMARY KEY,DOCTOR_ID INT NOT NULL REFERENCES DOCTOR(DOCTOR_ID),PATIENT_ID INT NOT NULL REFERENCES PATIENT(PATIENT_ID),MEDICATION_ID INT NOT NULL REFERENCES MEDICATION(MEDICATION_ID),PHARMACY_ID INT NOT NULL REFERENCES PHARMACY(PHARMACY_ID) ,YEAR INT,MONTH INT ,DATE INT,DOSAGE VARCHAR(15) NOT NULL,FREQUENCY VARCHAR(15) NOT NULL,USAGE_DESCRIPTION VARCHAR(20));
INSERT INTO PRESCRIPTION VALUES(801,516,901,702,201,2015,3,10,'1 TABLET','3 TIMES','BEFORE MEAL'),
(802,502,902,701,201,2015,4,9,'1 TABLET','3 TIMES','AFTER MEAL'),
(803,519,903,703,201,2015,5,4,'1 TABLET','2 TIMES','BEFORE MEAL'),
(804,502,904,705,201,2015,5,28,'2 TABLETS','1 TIME','BEFORE MEAL'),
(805,507,905,707,201,2015,6,7,'1 TABLET','3 TIMES','BEFORE MEAL'),
(806,501,906,709,201,2015,6,7,'1 TABLET','2 TIMES','AFTER MEAL'),
(807,508,907,711,201,2015,7,26,'1 TABLET','3 TIMES','AFTER MEAL'),
(808,503,908,713,201,2015,8,14,'1 TABLET','3 TIMES','AFTER MEAL'),
(809,506,909,715,201,2015,9,5,'1 TABLET','3 TIMES','AFTER MEAL'),
(810,505,910,717,201,2015,10,7,'1 TABLET','2 TIMES','BEFORE MEAL'),
(811,510,911,719,201,2015,11,25,'1 TABLET','2 TIMES','AFTER MEAL'),
(812,517,912,721,201,2015,12,30,'2 TABLETS','1 TIME','BEFORE MEAL'),
(813,511,913,723,201,2016,1,30,'1 TABLET','2 TIMES','AFTER MEAL'),
(814,513,914,725,201,2016,2,29,'1 TABLET','3 TIMES','BEFORE MEAL'),
(815,512,915,709,201,2016,3,27,'1 TABLET','2 TIMES','BEFORE MEAL'),
(816,525,916,701,201,2016,4,7,'1 TABLET','2 TIMES','AFTER MEAL'),
(817,522,917,709,201,2016,5,23,'1 TABLET','2 TIMES','BEFORE MEAL'),
(818,519,918,705,201,2016,6,20,'1 TABLET','1 TIME','BEFORE MEAL'),
(819,514,919,707,201,2016,7,17,'1 TABLET','3 TIMES','AFTER MEAL'),
(820,509,920,703,201,2016,8,13,'1 TABLET','3 TIMES','BEFORE MEAL'),
(821,520,921,711,201,2016,9,11,'1 TABLET','2 TIMES','AFTER MEAL'),
(822,523,922,713,201,2016,10,9,'1 TABLET','1 TIME','AFTER MEAL'),
(823,521,923,715,201,2016,11,4,'1 TABLET','2 TIMES','BEFORE MEAL'),
(824,524,924,717,201,2016,12,2,'1 TABLET','2 TIMES','BEFORE MEAL'),
(825,510,925,719,201,2016,1,1,'1 TABLET','3 TIMES','BEFORE MEAL'),
(826,514,926,725,201,2017,1,1,'1 TABLET','2 TIMES','AFTER MEAL'),
(827,505,927,701,201,2017,1,2,'1 TABLET','1 TIME','BEFORE MEAL'),
(828,501,928,703,201,2017,1,2,'1 TABLET','1 TIME','BEFORE MEAL'),
(829,521,929,707,201,2017,2,2,'1 TABLET','2 TIMES','AFTER MEAL'),
(830,525,930,709,201,2017,2,11,'1 TABLET','3 TIMES','BEFORE MEAL'),
(831,501,931,711,201,2017,2,14,'1 TABLET','2 TIMES','AFTER MEAL'),
(832,506,932,713,201,2017,2,18,'1 TABLET','2 TIMES','BEFORE MEAL'),
(833,514,933,715,201,2017,2,21,'1 TABLET','3 TIMES','AFTER MEAL'),
(834,502,934,717,201,2017,2,23,'1 TABLET','1 TIME','BEFORE MEAL'),
(835,516,935,719,201,2017,3,24,'1 TABLET','3 TIMES','BEFORE MEAL'),
(836,501,936,721,201,2017,3,25,'1 TABLET','2 TIMES','AFTER MEAL'),
(837,518,937,723,201,2017,3,26,'1 TABLET','2 TIMES','AFTER MEAL'),
(838,505,938,725,201,2017,3,27,'1 TABLET','2 TIMES','BEFORE MEAL'),
(839,519,939,703,201,2017,3,28,'1 TABLET','3 TIMES','AFTER MEAL'),
(840,502,940,705,201,2017,4,2,'1 TABLET','3 TIMES','BEFORE MEAL'),
(841,521,941,707,201,2017,4,3,'1 TABLET','3 TIMES','AFTER MEAL'),
(842,516,942,709,201,2017,4,4,'1 TABLET','2 TIMES','BEFORE MEAL'),
(843,518,943,710,201,2017,4,30,'1 TABLET','1 TIME','AFTER MEAL'),
(844,505,944,711,201,2017,5,1,'2 TABLETS','1 TIME','AFTER MEAL'),
(845,520,945,713,201,2017,5,1,'1 TABLET','2 TIMES','AFTER MEAL'),
(846,501,946,715,201,2017,5,5,'1 TABLET','2 TIMES','BEFORE MEAL'),
(847,508,947,717,201,2017,5,7,'1 TABLET','2 TIMES','AFTER MEAL'),
(848,518,948,719,201,2017,5,11,'1 TABLET','2 TIMES','BEFORE MEAL'),
(849,514,949,723,201,2017,5,13,'1 TABLET','3 TIMES','BEFORE MEAL'),
(850,516,950,725,201,2017,5,18,'1 TABLET','3 TIMES','AFTER MEAL');
DROP TABLE PRESCRIPTION;


CREATE TABLE PRESCRIPTION_HISTORY(PRESCRIPTION_ID INT NOT NULL REFERENCES PRESCRIPTION(PRESCRIPTION_ID),APPOINTMENT_ID INT NOT NULL REFERENCES APPOINTMENT(APPOINTMENT_ID));
INSERT INTO PRESCRIPTION_HISTORY VALUES(801,601),
(802,602),
(803,603),
(804,604),
(805,605),
(806,606),
(807,607),
(808,608),
(809,609),
(811,611),
(812,612),
(813,613),
(814,614),
(815,615),
(816,616),
(817,617),
(818,618),
(819,619),
(820,620),
(821,621),
(822,622),
(823,623),
(824,624),
(825,625),
(826,626),
(827,627),
(828,628),
(829,629),
(830,630),
(831,631),
(832,632),
(833,633),
(834,634),
(835,635),
(836,636),
(837,637),
(838,638),
(839,639),
(840,640),
(841,641),
(842,642),
(843,643),
(844,644),
(845,645),
(846,646),
(847,647),
(848,648),
(849,649),
(850,650);
SELECT *  FROM PRESCRIPTION_HISTORY;
DROP TABLE PRESCRIPTION_HISTORY;

DROP TABLE PATIENT_PROFILE;
CREATE TABLE PATIENT_PROFILE(APPOINTMENT_ID INT NOT NULL REFERENCES APPOINTMENT(APPOINTMENT_ID),NOTES VARCHAR(100));
INSERT INTO PATIENT_PROFILE VALUES(601,'_'),
(602,'-'),
(603,'-'),
(604,'-'),
(605,'-'),
(606,'-'),
(607,'-'),
(608,'-'),
(609,'-'),
(610,'-'),
(611,'-'),
(612,'-'),
(613,'-'),
(614,'-'),
(615,'-'),
(616,'-'),
(617,'-'),
(618,'-'),
(619,'-'),
(620,'-'),
(621,'-'),
(622,'-'),
(623,'-'),
(624,'-'),
(625,'-'),
(626,'-'),
(627,'-'),
(628,'-'),
(629,'-'),
(630,'-'),
(631,'-'),
(632,'-'),
(633,'-'),
(634,'-'),
(635,'-'),
(636,'-'),
(637,'-'),
(638,'-'),
(639,'-'),
(640,'-'),
(641,'-'),
(642,'-'),
(643,'-'),
(644,'-'),
(645,'-'),
(646,'-'),
(647,'-'),
(648,'-'),
(649,'-'),
(650,'-');
SELECT * FROM PATIENT_PROFILE;

==>A
select PATIENT_ID,COUNT(PATIENT_ID)AS 'VISITS' from APPOINTMENT  group by PATIENT_ID having COUNT(PATIENT_ID)>1;

==>B
SELECT SPECIALITY.SPECIALITY_ID, COUNT(PATIENT.PATIENT_ID)AS 'NO.PATIENTS' FROM SPECIALITY , PATIENT , DOCTOR WHERE SPECIALITY.SPECIALITY_ID=DOCTOR.SPECIALITY_ID AND DOCTOR.DOCTOR_ID=PATIENT.DOCTOR_ID GROUP BY SPECIALITY.SPECIALITY_ID;

==>C
SELECT DOCTOR.NAME, COUNT(APPOINTMENT.PATIENT_ID) AS VISITS
FROM DOCTOR INNER JOIN APPOINTMENT ON DOCTOR.DOCTOR_ID = APPOINTMENT.DOCTOR_ID
WHERE     YEAR(CURRENT_TIMESTAMP) = APPOINTMENT.YEAR AND MONTH(CURRENT_TIMESTAMP) = APPOINTMENT.MONTH
GROUP BY DOCTOR.NAME
ORDER BY visits DESC;

==>D
SELECT DOCTOR_ID,COUNT(PATIENT_ID) AS 'EXAMS' FROM APPOINTMENT WHERE MONTH=MONTH(CURRENT_TIMESTAMP)-1 AND YEAR=YEAR(CURRENT_TIMESTAMP) GROUP BY DOCTOR_ID ORDER BY COUNT (PATIENT_ID) DESC;

==>E
SELECT DOCTOR_ID , COUNT (PATIENT_ID)AS 'EXAMS' FROM APPOINTMENT WHERE YEAR=YEAR(CURRENT_TIMESTAMP)-1 GROUP BY DOCTOR_ID ORDER BY COUNT (PATIENT_ID) DESC;

==>f
SELECT doctor.name ,count(comments) as WorkedInBehalfLastMonth  FROM appointment ,doctor where appointment.doctor_id = doctor.doctor_id and year=year(current_timestamp)and month=month(current_timestamp ) - 1 group by comments having count(comments) ORDER BY count(comments) DESC;

==>g
SELECT doctor.NAME,count(comments) as WorkedInBehalfLastYear  FROM appointment join doctor on appointment.comments = doctor.DOCTOR_ID where year=year(CURRENT_TIMESTAMP) - 1 group by DOCTOR.NAME ORDER BY count(comments) DESC;

==>H
select MEDICATION.NAME,COUNT(PRESCRIPTION.MEDICATION_ID) AS QUANTITY from MEDICATION,PRESCRIPTION where PRESCRIPTION.MEDICATION_ID=MEDICATION.MEDICATION_ID AND PRESCRIPTION.MONTH =MONTH(CURRENT_TIMESTAMP)-1 AND YEAR=YEAR(CURRENT_TIMESTAMP) group by MEDICATION.NAME ORDER BY QUANTITY DESC;  

==>I
select MEDICATION.NAME,COUNT(PRESCRIPTION.MEDICATION_ID) AS QUANTITY from MEDICATION,PRESCRIPTION where PRESCRIPTION.MEDICATION_ID=MEDICATION.MEDICATION_ID AND PRESCRIPTION.YEAR=YEAR(CURRENT_TIMESTAMP)-1 group by MEDICATION.NAME ORDER BY QUANTITY DESC;   

==>j
select MEDICATION.NAME,COUNT(PRESCRIPTION.MEDICATION_ID) AS QUANTITY from MEDICATION,PRESCRIPTION where PRESCRIPTION.MEDICATION_ID=MEDICATION.MEDICATION_ID AND PRESCRIPTION.MONTH !=MONTH(CURRENT_TIMESTAMP)-1 group by MEDICATION.NAME ORDER BY QUANTITY DESC;

==>k
select MEDICATION.NAME from MEDICATION,PRESCRIPTION where PRESCRIPTION.MEDICATION_ID=MEDICATION.MEDICATION_ID AND YEAR!=2016 group by MEDICATION.NAME;





