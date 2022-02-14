 create database practice;
 use practice;
 
 CREATE  TABLE IF NOT EXISTS role   ( 
    id   BIGINT(20) NOT NULL AUTO_INCREMENT , 
    name   VARCHAR(255) NOT NULL , 
  PRIMARY KEY (  id  ) ) ; 

 
CREATE  TABLE IF NOT EXISTS skill   ( 
    id   BIGINT(20) NOT NULL AUTO_INCREMENT , 
    description   VARCHAR(255) NULL DEFAULT NULL , 
    name   VARCHAR(255) NOT NULL , 
  PRIMARY KEY (  id  ) )  ; 



CREATE  TABLE IF NOT EXISTS  post_type   ( 
    id   BIGINT(20) NOT NULL AUTO_INCREMENT , 
    name   VARCHAR(255) NOT NULL , 
  PRIMARY KEY (  id  ) ) 
  ; 


CREATE  TABLE IF NOT EXISTS department   ( 
    id   BIGINT(20) NOT NULL AUTO_INCREMENT , 
    name   VARCHAR(255) NOT NULL , 
  PRIMARY KEY (  id  ) ) ; 

 

CREATE  TABLE IF NOT EXISTS degree   ( 
    id   BIGINT(20) NOT NULL AUTO_INCREMENT , 
    department_id   BIGINT(20) NOT NULL , 
    name   VARCHAR(255) NOT NULL , 
  PRIMARY KEY (  id  ) ) ; 

 

CREATE  TABLE IF NOT EXISTS profile   ( 
    id   BIGINT(20) NOT NULL AUTO_INCREMENT , 
    address   VARCHAR(255) NOT NULL , 
    batch   VARCHAR(255) NOT NULL , 
    degree_id   BIGINT(20) NOT NULL , 
    designation   VARCHAR(255) NULL DEFAULT NULL , 
    gender   VARCHAR(255) NOT NULL , 
    PRIMARY KEY (  id  )); 

 

CREATE  TABLE IF NOT EXISTS experience   ( 
    id   BIGINT(20) NOT NULL AUTO_INCREMENT , 
    company_name   VARCHAR(255) NOT NULL , 
    current   BIT(1) NOT NULL , 
    end   DATETIME NULL DEFAULT NULL , 
    start   DATETIME NOT NULL , 
    profile_id   BIGINT(20) NOT NULL , 
  PRIMARY KEY (  id  ) ) ; 

 

CREATE  TABLE IF NOT EXISTS project   ( 
    id   BIGINT(20) NOT NULL AUTO_INCREMENT , 
    name   VARCHAR(255) NOT NULL , 
    number_of_members   INT(11) NOT NULL , 
    profile_id   BIGINT(20) NOT NULL , 
    short_description   VARCHAR(255) NULL DEFAULT NULL , 
  PRIMARY KEY (  id  ) ) ; 

 

CREATE  TABLE IF NOT EXISTS profile_skills   ( 
    skill_id   BIGINT(20) NOT NULL , 
    profile_id   BIGINT(20) NOT NULL , 
  PRIMARY KEY (  profile_id  ,   skill_id  ) )  ; 

 


CREATE  TABLE IF NOT EXISTS user   ( 
    id   BIGINT(20) NOT NULL AUTO_INCREMENT , 
    emailid   VARCHAR(255) NOT NULL , 
    name   VARCHAR(255) NOT NULL , 
    password   VARCHAR(255) NOT NULL , 
    phonenumber   VARCHAR(255) NOT NULL , 
    profile_id   BIGINT(20) NULL DEFAULT NULL , 
    role_id   BIGINT(20) NOT NULL , 
    username   VARCHAR(255) NOT NULL , 
  PRIMARY KEY (  id  ) )  ; 

 


CREATE  TABLE IF NOT EXISTS query   ( 
    id   BIGINT(20) NOT NULL AUTO_INCREMENT , 
    content   VARCHAR(255) NOT NULL , 
    date   DATETIME NOT NULL , 
    parent_id   BIGINT(20) NULL DEFAULT NULL , 
    user_id   BIGINT(20) NOT NULL , 
  PRIMARY KEY (  id  ) ) ;

 


 

CREATE  TABLE IF NOT EXISTS event   ( 
    id   BIGINT(20) NOT NULL AUTO_INCREMENT , 
    date   DATETIME NOT NULL , 
    description   VARCHAR(255) NULL DEFAULT NULL , 
    invitation   VARCHAR(255) NOT NULL , 
    name   VARCHAR(255) NOT NULL , 
    organiser_id   BIGINT(20) NOT NULL, 
  PRIMARY KEY (  id  ) ) ; 

 

CREATE  TABLE IF NOT EXISTS  post   ( 
    id   BIGINT(20) NOT NULL AUTO_INCREMENT , 
    content   VARCHAR(255) NOT NULL , 
    date   DATETIME NOT NULL , 
    type_id   BIGINT(20) NOT NULL , 
    user_id   BIGINT(20) NOT NULL , 
  PRIMARY KEY (  id  ) ) ; 


 create table higher_degree 
  ( 
id bigint(20)primary key,degree_name varchar(255),university_name varchar(255),profile_id bigint(20) 
  ); 

 

  

 

insert into role(id,name) values(101,'Admin'); 

 

insert into role(id,name) values(102,'Student'); 

 

insert into role(id,name) values(103,'Alumni'); 

 

insert into role(id,name) values(104,'Faculty'); 

 

insert into role(id,name) values(105,'Alumni Coordinator'); 

 

insert into role(id,name) values(106,'Management'); 

 

insert into role(id,name) values(107,'Guest'); 

 

  

 

insert into skill(id,name, description) values(1001,'Programming', 'C/C++/Java'); 

 

insert into skill(id,name, description) values(1002,'Verilog', 'Hardware Description Language'); 

 

insert into skill(id,name,description) values(1003,'CAD','mysql'); 

 

insert into skill(id,name) values(1004,'CATIA'); 

 

insert into skill(id,name) values(1005,'Web Design'); 

 

insert into skill(id,name, description) values(1006,'SQL', 'Query Language'); 

 

insert into skill(id,name) values(1007,'MATLAB'); 

 

insert into skill(id,name) values(1008,'J2EE'); 

 

insert into skill(id,name) values(1009,'ProE'); 

  

 

insert into department(id,name) values(3001,'IT'); 

 

insert into department(id,name) values(3002,'CSE'); 

 

insert into department(id,name) values(3003,'ECE'); 

 

insert into department(id,name) values(3004,'EEE'); 

 

insert into department(id,name) values(3005,'Applied Sciences'); 

 

insert into department(id,name) values(3006,'MECH'); 

 

insert into department(id,name) values(3007,'CIVIL'); 

 

insert into department(id,name) values(3008,'Textile Engg'); 

 

  

 

insert into degree(id,department_id, name) values(4001,2, 'BE_CSE'); 

 

insert into degree(id,department_id, name) values(4002,2, 'ME_CSE'); 

 

insert into degree(id,department_id, name) values(4003,2, 'BE_SE'); 

 

insert into degree(id,department_id, name) values(4004,5, 'BSC_CT'); 

 

insert into degree(id,department_id, name) values(4005,1, 'BTECH_IT'); 

 

insert into degree(id,department_id, name) values(4006,1, 'MTECH_IT'); 

 

insert into degree(id,department_id, name) values(4007,5, 'BSC_IT'); 

 

insert into degree(id,department_id, name) values(4008,3, 'BE_ECE'); 

 

insert into degree(id,department_id, name) values(4009,3, 'ME_ECE'); 

 

insert into degree(id,department_id, name) values(4010,3, 'ME_VLSI'); 

 

insert into degree(id,department_id, name) values(4011,4, 'BE_EEE'); 

 

insert into degree(id,department_id, name) values(4012,4, 'ME_EEE'); 

 

insert into degree(id,department_id, name) values(4013,6, 'BE_MECH'); 

 

insert into degree(id,department_id, name) values(4014,6, 'ME_EnggDesign'); 

 

insert into degree(id,department_id, name) values(4015,7, 'ME_AppliedMech'); 

 

 

 insert into profile(id,gender, designation, batch, address, degree_id) values (5001,'Female', 'Project Manager', '2008', '1, AMC, PN Palayam, Coimbatore-37',1); 

 

insert into profile(id,gender, designation, batch, address, degree_id) values (5002,'Female', 'Project Manager', '2008', '8, LMC, KK Pudhur, Coimbatore-48', 2); 

 

insert into profile(id,gender, designation, batch, address, degree_id) values (5003,'Male', 'Project Manager', '2005', '88, 1st cross, MG Road, Bangalore-57', 3); 

 

insert into profile(id,gender, designation, batch, address, degree_id) values (5004,'Female', 'Project Leader', '2000', '98, 1st cross, Annai Theresa Road, Kolkata-77', 3); 

 

insert into profile(id,gender, designation, batch, address, degree_id) values (5005,'Male', 'Software Engineer', '2012', '100, 11st cross, Gandhi Nagar, Chennai-77', 4); 

 

insert into profile(id,gender, designation, batch, address, degree_id) values (5006,'Male', 'Trainee Engineer', '2013', '81, 9th cross lane, Gangothri, Mysore-77', 8); 

 

insert into profile(id,gender, designation, batch, address, degree_id) values (5007,'Female', 'VLSI Engineer', '2008', '99, KK Street, Amphi Nagar, Chennai-28', 9); 

 

insert into profile(id,gender, designation, batch, address, degree_id) values (5008,'Male', 'Senior Software Engineer', '2012', '1, AMC, PN Palayam, Coimbatore-37', 1); 

 

insert into profile(id,gender, designation, batch, address, degree_id) values (5009,'Female', 'Project Manager', '2009', '8, MMC, PK Pudhur, Coimbatore-48', 2); 

 

insert into profile(id,gender, designation, batch, address, degree_id) values (5010,'Female', 'Project Leader', '2008', '76, 11th Street, Lakshmi Nagar, Trichy-57', 3); 

 

insert into profile(id,gender, designation, batch, address, degree_id) values (5011,'Male', 'Project Manager', '2002', '8, AMC, PN Palayam, Coimbatore-37', 1); 

 

insert into profile(id,gender, designation, batch, address, degree_id) values (5012,'Female', 'Project Manager', '2004', '18, LMC, KK Pudhur, Coimbatore-48', 5); 

 

insert into profile(id,gender, designation, batch, address, degree_id) values (5013,'Male', 'Project Manager', '2008', '48, 1st cross, MG Road, Bangalore-57', 4); 

 

insert into profile(id,gender, designation, batch, address, degree_id) values (5014,'Female', 'Project Leader', '2008', '78, 1st cross, Annai Theresa Road, Kolkata-77', 3); 

 

insert into profile(id,gender, designation, batch, address, degree_id) values (5015,'Female', 'Software Engineer', '2013', '105, 11st cross, Gandhi Nagar, Chennai-77', 4); 

 

insert into profile(id,gender, designation, batch, address, degree_id) values (5016,'Female', 'Trainee Engineer', '2013', '11, 9th cross lane, Gangothri, Mysore-77', 5); 

 

insert into profile(id,gender, designation, batch, address, degree_id) values (5017,'Female', 'VLSI Engineer', '2011', '98, KK Street, Amphi Nagar, Chennai-28', 10); 

 

insert into profile(id,gender, designation, batch, address, degree_id) values (5018,'Male', 'Senior Software Engineer', '2010', '101, AMC, PN Palayam, Coimbatore-37', 1); 

 

insert into profile(id,gender, designation, batch, address, degree_id) values (5019,'Female', 'Project Manager', '2009', '80, MMC, PK Pudhur, Coimbatore-48', 2); 

 

insert into profile(id,gender, designation, batch, address, degree_id) values (5020,'Male', 'Project Leader', '2002', '761, 11th Street, Lakshmi Nagar, Trichy-57', 3); 

 

insert into profile(id,gender, designation, batch, address, degree_id) values (5021,'Male', 'Senior Software Engineer', '2008', '19, AMC, PN Palayam, Coimbatore-37', 1); 

 

insert into profile(id,gender, designation, batch, address, degree_id) values (5022,'Male', 'Project Manager', '2008', '61, AMC, PN Palayam, Coimbatore-37', 4); 

 

insert into profile(id,gender, designation, batch, address, degree_id) values (5023,'Male', 'Project Manager', '1999', '610, AMC, PNP Nagar, Coimbatore-37', 1); 

 

insert into profile(id,gender, designation, batch, address, degree_id) values (5024,'Male', 'Senior CAD Engineer', '2008', '24, AMC, PN Palayam, Coimbatore-37', 13); 

 

insert into profile(id,gender, designation, batch, address, degree_id) values (5025,'Male', 'Site Engineer', '2010', '25, AMC, PN Palayam, Coimbatore-37', 14); 

 

insert into profile(id,gender, designation, batch, address, degree_id) values (5026,'Male', 'Regional Manager', '1999', '26, AMC, PNP Nagar, Coimbatore-37', 15); 

 

insert into profile(id,gender, designation, batch, address, degree_id) values (5027,'Male', 'System Manager', '2008', '27, AMC, PNP Nagar, Coimbatore-37', 4); 

 

insert into profile(id,gender, designation, batch, address, degree_id) values (5028,'Female', 'Secretary', '1998', '28, AMC, PNP Nagar, Coimbatore-37', 4); 

 

  

 

  

 

insert into user(id,name, username, password, phonenumber, emailid, role_id, profile_id) values(6001,'Ram', 'user101', 'amphi1123', '1987023456', 'ram@yahoo.in',3,101); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id, profile_id) values(6002,'Ramaa', 'user102', 'amphi1231', '1887023456', 'rama@hotmail.com',3,4); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id, profile_id) values(602,'Samuel', 'user103', 'amphi1321', '1234569800', 'sam@gmail.com',3,3); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id, profile_id) values(603,'Kavithaa', 'user104', 'amphi1567', '1111193459', 'kavitha@lycos.com',3,2); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id, profile_id) values(604,'Anithaa', 'user105', 'amphi1777', '1708912345', 'anitha@gmail.com',3,1); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id, profile_id) values(605,'Jaya', 'user106', 'amphi1482', '1887023451', 'jayaa@yahoo.in',3,10); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id, profile_id) values(606,'Priyaa', 'user107', 'amphi1111', '1234561234', 'priya123@gmail.com',3,9); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id, profile_id) values(607,'Jeyan', 'user108', 'amphi1489', '1887023451', 'jayan@yahoo.in',3,8); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id, profile_id) values(608,'Jeyanthi', 'user109', 'amphi19', '1887023451', 'jayanthi@yahoo.in',3,7); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id, profile_id) values(609,'Manian', 'user110', 'amphi110', '1883423451', 'mani@gmail.com',3,6); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id, profile_id) values(610,'Navin', 'user111', 'amphi111', '1113423451', 'naveen@gmail.com',3,20); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id, profile_id) values(611,'Oviiya', 'user112', 'amphi112', '1123423451', 'oviya@gmail.com',3,19); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id, profile_id) values(612,'Pratheep', 'user113', 'amphi113', '1133423451', 'pradeep@gmail.com',3,18); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id, profile_id) values(613,'Reeta', 'user114', 'amphi114', '1143423451', 'rita@gmail.com',3,17); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id, profile_id) values(614,'Siindhu', 'user115', 'amphi115', '1153423451', 'sindhu@gmail.com',3,16); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id, profile_id) values(615,'Teena', 'user116', 'amphi116', '1163423451', 'tina@gmail.com',3,15); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id, profile_id) values(616,'Umaa', 'user117', 'amphi117', '1173423451', 'uma@gmail.com',3,14); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id, profile_id) values(617,'Vineth', 'user118', 'amphi118', '1183423451', 'vinith@gmail.com',3,13); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id, profile_id) values(618,'Veenaa', 'user119', 'amphi119', '1193423451', 'veena@gmail.com',3,12); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id, profile_id) values(619,'Yasar', 'user120', 'amphi120', '1203423451', 'yazar@gmail.com',3,11); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id, profile_id) values(620,'Baalaji', 'user121', 'amphi121', '1213423451', 'balaji@gmail.com',3,26); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id, profile_id) values(621,'Clinton', 'user122', 'amphi122', '1223423451', 'clinton@gmail.com',3,25); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id, profile_id) values(622,'Deepan', 'user123', 'amphi123', '1233423451', 'dheepan@gmail.com',3,24); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id, profile_id) values(623,'Loganath', 'user124', 'amphi124', '1243423451', 'balaji@gmail.com',3,23); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id, profile_id) values(624,'Pravin', 'user125', 'amphi125', '1253423451', 'praveen@gmail.com',3,22); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id, profile_id) values(625,'Rameesh', 'user126', 'amphi126', '1263423451', 'ramesh@gmail.com',3,21); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id) values(626,'Rathesh', 'user127', 'amphi127', '1273423451', 'rathish@gmail.com',2); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id) values(627,'Radhaa', 'user128', 'amphi128', '1283423451', 'balaji@gmail.com',2); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id) values(628,'Thaamarai', 'user129', 'amphi129', '1293423451', 'thamarai@gmail.com',1); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id) values(629,'Vegnesh', 'user130', 'amphi130', '1233423451', 'vignesh@gmail.com',4); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id) values(630,'Yokesh', 'user131', 'amphi131', '1313423451', 'yogesh@gmail.com',4); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id) values(631,'Premaa', 'user132', 'amphi132', '1323423451', 'prema@gmail.com',4); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id) values(632,'Ramyaa', 'user133', 'amphi133', '1333423451', 'ramya@gmail.com',5); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id) values(633,'Pravithaa', 'user134', 'amphi134', '1343423451', 'pravitha@gmail.com',5); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id, profile_id) values(634,'Mala', 'user135', 'amphi135', '1353423451', 'malini@gmail.com',6,28); 

 

insert into user(id,name, username, password, phonenumber, emailid, role_id, profile_id) values(635,'Sendhil', 'user136', 'amphi136', '1363423451', 'senthil@gmail.com',1,27); 

 

  

 

  

 

  

 

  



insert into experience(id,company_name, current, end, start, profile_id) values (7001,'TCS', 0, '2012-05-01 00:00:00', '2010-07-01 00:00:00', 1); 

 

insert into experience(id,company_name, current, start, profile_id) values (701,'CTS', 1, '2012-05-10 00:00:00', 1); 

 

insert into experience(id,company_name, current, end, start, profile_id) values (702,'CTS', 0, '2012-05-01 00:00:00', '2010-07-01 00:00:00', 2); 

 

insert into experience(id,company_name, current, start, profile_id) values (703,'TCS', 1, '2012-05-10 00:00:00', 2); 

 

insert into experience(id,company_name, current, end, start, profile_id) values (704,'IBM', 0, '2008-06-01 00:00:00', '2007-07-01 00:00:00', 3); 

 

insert into experience(id,company_name, current, end, start, profile_id) values (705,'MPhasis', 0, '2010-05-01 00:00:00', '2008-07-01 00:00:00', 3); 

 

insert into experience(id,company_name, current, start, profile_id) values (706,'Amphisoft', 1, '2010-05-10 00:00:00', 3); 

 

insert into experience(id,company_name, current, end, start, profile_id) values (707,'Wipro', 0, '2008-05-01 00:00:00', '2002-07-01 00:00:00', 4); 

 

insert into experience(id,company_name, current, start, profile_id) values (708,'HCL', 1, '2008-05-10 00:00:00', 4); 

 

insert into experience(id,company_name, current, start, profile_id) values (709,'HCL', 1, '2013-05-10 00:00:00', 5); 

 

insert into experience(id,company_name, current, start, profile_id) values (710,'Payoda Technologies', 1, '2013-07-10 00:00:00', 6); 

 

insert into experience(id,company_name, current, start, profile_id) values (712,'Texas Instruments', 1, '2010-07-10 00:00:00', 7); 

 

insert into experience(id,company_name, current, start, profile_id) values (713,'Hexaware Technologies', 1, '2012-07-10 00:00:00', 8); 

 

insert into experience(id,company_name, current, start, profile_id) values (714,'iGate Solutions', 1, '2009-07-10 00:00:00', 9); 

 

insert into experience(id,company_name, current, end, start, profile_id) values (715,'Seimens', 0, '2009-05-01 00:00:00', '2006-07-01 00:00:00', 10); 

 

insert into experience(id,company_name, current, start, profile_id) values (716,'Google', 1, '2009-07-10 00:00:00', 10); 

 

insert into experience(id,company_name, current, end, start, profile_id) values (717,'TCS', 0, '2008-06-01 00:00:00', '2004-07-01 00:00:00', 11); 

 

insert into experience(id,company_name, current, end, start, profile_id) values (718,'IBM', 0, '2010-05-01 00:00:00', '2008-07-01 00:00:00',11); 

 

insert into experience(id,company_name, current, start, profile_id) values (719,'Amphisoft', 1, '2010-05-10 00:00:00', 11); 

 

insert into experience(id,company_name, current, end, start, profile_id) values (720,'Accenture', 0, '2008-06-01 00:00:00', '2004-07-01 00:00:00', 12); 

 

insert into experience(id,company_name, current, end, start, profile_id) values (721,'Wipro', 0, '2011-05-01 00:00:00', '2008-07-01 00:00:00', 12); 

 

insert into experience(id,company_name, current, start, profile_id) values (722,'Infosys', 1, '2011-05-10 00:00:00', 12); 

 

insert into experience(id,company_name, current, end, start, profile_id) values (723,'Infosys', 0, '2011-05-01 00:00:00', '2006-07-01 00:00:00', 13); 

 

insert into experience(id,company_name, current, start, profile_id) values (724,'Wipro', 1, '2011-05-10 00:00:00', 13); 

 

insert into experience(id,company_name, current, end, start, profile_id) values (725,'TCS', 0, '2011-05-01 00:00:00', '2008-07-01 00:00:00', 14); 

 

insert into experience(id,company_name, current, start, profile_id) values (726,'Amphisoft', 1, '2011-05-10 00:00:00', 14); 

 

insert into experience(id,company_name, current, start, profile_id) values (727,'CTS', 1, '2013-07-10 00:00:00', 15); 

 

insert into experience(id,company_name, current, start, profile_id) values (728,'CTS', 1, '2013-07-10 00:00:00', 16); 

 

insert into experience(id,company_name, current, start, profile_id) values (729,'CTS', 1, '2010-07-10 00:00:00', 18); 

 

insert into experience(id,company_name, current, end, start, profile_id) values (730,'TCS', 0, '2010-06-01 00:00:00', '2009-07-01 00:00:00', 19); 

 

insert into experience(id,company_name, current, end, start, profile_id) values (731,'CTS', 0, '2011-05-01 00:00:00', '2010-07-01 00:00:00',19); 

 

insert into experience(id,company_name, current, end, start, profile_id) values (732,'Infosys', 0, '2013-05-01 00:00:00', '2011-07-01 00:00:00',19); 

 

insert into experience(id,company_name, current, start, profile_id) values (7032,'IBM', 1, '2013-05-10 00:00:00', 19); 

 

insert into experience(id,company_name, current, end, start, profile_id) values (733,'IBM', 0, '2011-05-01 00:00:00', '2004-07-01 00:00:00',20); 

 

insert into experience(id,company_name, current, end, start, profile_id) values (734,'TCS', 0, '2013-05-01 00:00:00', '2011-07-01 00:00:00',20); 

 

insert into experience(id,company_name, current, start, profile_id) values (735,'CTS', 1, '2013-05-10 00:00:00', 20); 

 

insert into experience(id,company_name, current, start, profile_id) values (736,'CTS', 1, '2010-05-10 00:00:00', 21); 

 

insert into experience(id,company_name, current, start, profile_id) values (737,'Infosys', 1, '2010-07-10 00:00:00', 22); 

 

insert into experience(id,company_name, current, start, profile_id) values (738,'TCS', 1, '2001-05-10 00:00:00', 23); 

 

insert into experience(id,company_name, current, start, profile_id) values (739,'TCS', 1, '2010-07-01 00:00:00', 24); 

 

insert into experience(id,company_name, current, start, profile_id) values (740,'ABT', 1, '2012-07-10 00:00:00', 25); 

 

insert into experience(id,company_name, current, start, profile_id) values (741,'TCS', 1, '2005-07-10 00:00:00', 26); 

 

  

 

  

 

  

 

insert into post_type(id,name) values (901,'Oppurtunities'); 

 

insert into post_type(id,name) values (902,'Higher Studies'); 

 

insert into post_type(id,name) values (903,'Sharing Experiences'); 

 

insert into post_type(id,name) values (904,'Personal Accomplishments'); 

 

insert into post_type(id,name) values (905,'Technology'); 

 

  

 

insert into event(id,name, invitation, date, organiser_id) values (1001,'Alumni Meet 2008', 'All are Welcome', '2008-05-01 17:00:00', 34); 

 

insert into event(id,name, invitation, date, organiser_id) values (1002,'Alumni Meet 2009', 'All are Welcome', '2009-05-01 17:00:00', 34); 

 

insert into event(id,name, invitation, date, organiser_id) values (1003,'Alumni Meet 2010', 'All are Welcome', '2010-05-01 17:00:00', 34); 

 

insert into event(id,name, invitation, date, organiser_id) values (1004,'Alumni Meet 2011', 'All are Welcome', '2011-05-01 17:00:00', 34); 

 

insert into event(id,name, invitation, date, organiser_id) values (1005,'Alumni Meet 2012', 'All are Welcome', '2012-05-01 17:00:00', 34); 

 

insert into event(id,name, invitation, date, organiser_id) values (1006,'Alumni Meet 2013', 'All are Welcome', '2013-05-01 17:00:00', 33); 

 

insert into event(id,name, invitation, date, organiser_id) values (1007,'Alumni Meet 2014', 'All are Welcome', '2014-01-27 17:00:00', 33); 

 

insert into event(id,name, invitation, date, organiser_id) values (1008,'ICSIP 2008', 'All are Welcome', '2008-06-01 09:00:00', 31); 

 

insert into event(id,name, invitation, date, organiser_id) values (1009,'ICSIP 2010', 'All are Welcome', '2010-06-01 09:00:00', 31); 

 

insert into event(id,name, invitation, date, organiser_id) values (1010,'ICSIP 2012', 'All are Welcome', '2012-06-01 09:00:00', 32); 

 

insert into event(id,name, invitation, date, organiser_id) values (1011,'ACM ICPC 2013', 'Inter-Collegiate Programming Contest', '2013-12-05 09:00:00', 1); 

 

insert into event(id,name, invitation, date, organiser_id) values (1012,'Entrepreneurship Development Programme', 'All are Welcome', '2014-01-27 15:00:00', 32); 

 

insert into event(id,name, invitation, date, organiser_id) values (1013,'Freshers Induction Programme', 'All are Welcome', '2013-08-27 15:00:00', 35); 

 

insert into event(id,name, invitation, date, organiser_id) values (1014,'Literary Meet', 'All are Welcome', '2014-01-27 16:00:00', 5); 

 

  

 

INSERT INTO query(id,content, date, user_id) values (1101,'What are the options after MS?', '2012-01-05 01:00:00', 1); 

 

INSERT INTO query(id,content, date, user_id) values (1102,'Any one working on PHP?', '2013-06-01 09:00:00', 2); 

 

INSERT INTO query(id,content, date, user_id) values (1103,'Is there any one working in TCS?', '2014-01-02 04:00:00', 3); 

 

INSERT INTO query(id,content, date, user_id) values (1104,'Any one working on Grails?', '2013-09-10 13:00:00', 2); 

 

INSERT INTO query(id,content, date, user_id) values (1105,'After MS you can opt for PhD or you can apply for research organisations', '2012-01-05 14:00:00', 5); 

 

INSERT INTO query(id,content, date, user_id, parent_id) values (1106,'I am working in PHP domain for the past 3 years.  How can I help you?', '2013-06-01 19:00:00', 5, 2); 

 

INSERT INTO query(id,content, date, user_id, parent_id) values (1107,'I am currently working in TCS. What can I do for you?', '2014-01-02 14:00:00', 2,3); 

 

INSERT INTO query(id,content, date, user_id) values (1008,'Any one working on Ruby on Rails?', '2014-09-10 13:00:00', 2); 

 

INSERT INTO query(id,content, date, user_id, parent_id) values (1109,'I am working in PHP domain for the past 4 years.  How can I help you?', '2013-06-02 04:30:00', 8, 2); 



INSERT INTO post(id,content, date, user_id, type_id) values (1201,'Openings for MS graduates in Computer Science', '2013-01-05 00:00:01', 1,1); 

 

INSERT INTO post(id,content, date, user_id, type_id) values (1202,'New Features in PHP', '2012-06-01 00:00:09', 2,5); 

 

INSERT INTO post(id,content, date, user_id, type_id) values (1203,'Attention - TCS Ex-Employees', '2014-01-02 00:00:04', 3,1); 

 

INSERT INTO post(id,content, date, user_id, type_id) values (1204,'Grails - Technology for the future', '2013-09-10 00:00:13', 2,5); 

 

INSERT INTO post(id,content, date, user_id, type_id) values (1205,'Research Grants - Automobile Engineering', '2012-01-05 00:00:14', 5,5); 

 

INSERT INTO post(id,content, date, user_id, type_id) values (1206,'Happy to announce that I have been honoured with the the Outstanding Indian Employee Award', '2013-06-01 00:00:19', 5, 4); 

 

INSERT INTO post(id,content, date, user_id, type_id) values (1207,'New Year Greetings', '2014-01-01 00:00:14', 3,4); 

 

INSERT INTO post(id,content, date, user_id, type_id) values (1208,'Good Coding Practices', '2013-09-10 00:00:13', 2,5); 
INSERT INTO post(id,content, date, user_id, type_id) values (1209,'Attention - TCS Ex-Employees...cont', '2014-01-02 00:00:07', 3,1); 
insert into project(id,name,number_of_members,profile_id,short_description)values('1201','database tech','5','2','database evaluation'); 
insert into project(id,name,number_of_members,profile_id,short_description)values('1202','data analytical','7','4','database analytical'); 
insert into project(id,name,number_of_members,profile_id,short_description)values('1203','informative cognus','8','1','back end process'); 
insert into project(id,name,number_of_members,profile_id,short_description)values('1204','java build','6','3','core development'); 
insert into higher_degree(id,degree_name,university_name,profile_id)values('1301','Bsc_ct','bharathiyar university','2'); 
insert into higher_degree(id,degree_name,university_name,profile_id)values('1302','Bsc_cs','anna university','3'); 
insert into higher_degree(id,degree_name,university_name,profile_id)values('1303','Bsc_bca','gd university','5'); 
insert into higher_degree(id,degree_name,university_name,profile_id)values('1304','Bsc_ss','it university','7'); 
insert into higher_degree(id,degree_name,university_name,profile_id)values('1305','Bsc_it','mgr university','8'); 



select count(id) as role_count from role;

 select count(id) as skill_count from skill;
 
 select count(id) as user_count from user where profile_id is null;
 
 select count(id) as alumni_2008_count from profile where batch = '2008';
 
 select count(id) as alumni_male_2008_count from profile where batch = '2008' and gender ='male';
 
 select batch,count(*) as alumni_count from profile group by batch;
 
 select batch,count(*) as alumni_count from profile where gender='female' group by batch;
 
 select count(distinct(designation)) as designation_count from profile;
 
 select count(*) as PM_Count from profile where designation = 'Project Manager';
 
  select min(batch) as Senior_PM_Count from profile where designation = 'Project Manager';
  
  select max(batch) as Junior_PM_Count from profile where designation = 'Project Manager';
  
  select designation,count(*) as designation_count from profile group by designation;
  
  select count(*) as company_count from experience where current=1;
  
  select company_name,count(*) as alumni_count from experience where current=1 group by company_name;
  
  select count(id) as project_count from project where number_of_members > 10;
  
  select count(*) as number_of_events from event where year(date)='2013';
  
  select year(date),count(id) as number_of_events from event group by year(date);
  
  select count(*) as number_of_posts from post where date > '2014-01';
 
 
 select count(*) as number_of_queries from query where time(date) between '01:00' and '05:00';
 
 select count(*) as number_of_event from event where date(date)='2013-01-27';
 
 select count(*) as number_of_posts from post where date(date) < '2013-12-01';
 
  select count(*) as number_of_posts from post where date(date) > '2013-12-01';
  
  select year(date),count(*) as number_of_events from event group by year(date);
  
  select monthname(date) as month_name,count(*) as number_of_events from event where year(date) = '2013' group by month(date);