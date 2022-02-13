create database exercise1;
use exercise1;
create table Trainer_Info(
Trainer_Id varchar(20),
Salutation varchar(7),
Trainer_Name varchar(30),
Trainer_Location varchar(30),
Trainer_Track varchar(15),
Trainer_Qualification varchar(100),
Trainer_Experiance int,
Trainer_Email varchar(100),
Trainer_Password varchar(20)
);

create table Batch_Info(
Batch_Id varchar(20),
Batch_Owner varchar(30),
Batch_BU_Name varchar(30)
);

create table Module_Info(
Module_Id varchar(20),
Module_Name varchar(40),
Module_Duration int
);

create table Associate_Info(
Associate_Id varchar(20),
Salutation varchar(7),
Associate_Name varchar(30),
Associate_Location varchar(30),
Associate_Track varchar(15),
Associate_Qualification varchar(200),
Associate_Email varchar(100),
Associate_Password varchar(20)
);

create table Questions(
Question_Id varchar(20),
Module_Id varchar(20),
Question_Text varchar(900)
);

create table Associate_Status(
Associate_Status varchar(20),
Module_Id varchar(20),
Start_Date varchar(20),
End_Date varchar(20),
AFeedbackGiven varchar(20),
TFeedbackGiven varchar(20)
);

create table Trainer_Feedback(
Trainer_Id varchar(20),
Question_Id varchar(20),
Batch_Id varchar(20),
Module_Id varchar(20),
Trainer_Rating int
);

create table Associate_Feedback(
Associate_Id varchar(20),
Question_Id varchar(20),
Module_Id varchar(20),
Associate_Rating int
);

create table Login_Details(
User_Id varchar(20),
User_Password varchar(20)
);



insert into Trainer_Info(Trainer_Id,Salutation,Trainer_Name,Trainer_Location,Trainer_Track,Trainer_Qualification,Trainer_Experiance,Trainer_Email,Trainer_Password)
values 
("F001","Mr.","PANKAJ GHOSH","Pune","Java","Bachelor of Technology",12,"Pankaj.Ghosh@alliance.com","fac1@123"),
("F002","Mr.","SANJAY RADHAKRISHNAN" ,"Bangalore","DotNet","Bachelor of Technology",12,"Sanjay.Radhakrishnan@alliance.com","fac2@123"),
("F003","Mr.","VIJAY MATHUR","Chennai","Mainframe","Bachelor of Technology",10,"Vijay.Mathur@alliance.com","fac3@123"),
("F004","Mrs.","NANDINI NAIR","Kolkata","Java","Master of Computer Applications",9,"Nandini.Nair@alliance.com","fac4@123"),
("F005","Miss.","ANITHA PAREKH","Hyderabad","Testing","Master of Computer Applications",6,"Anitha.Parekh@alliance.com","fac5@123"),
("F006","Mr.","MANOJ AGRAWAL","Mumbai","Mainframe","Bachelor of Technology",9,"Manoj.Agrawal@alliance.com","fac6@123"),
("F007","Ms.","MEENA KULKARNI","Coimbatore","Testing","Bachelor of Technology",5,"Meena.Kulkarni@alliance.com","fac7@123"),
("F009","Mr.","SAGAR MENON","Mumbai","Java","Master of Science In Information Technology",12,"Sagar.Menon@alliance.com","fac8@123")
;

insert into Batch_Info(Batch_Id,Batch_Owner,Batch_BU_Name)
values
("B001","MRS.SWATI ROY","MSP"),
("B002","MRS.ARURNA K","HEALTHCARE"),
("B003","MR.RAJESH KRISHNAN","LIFE SCIENCES"),
("B004","MR.SACHIN SHETTY","BFS"),
("B005","MR.RAMESH PATEL","COMMUNICATIONS"),
("B006","MRS.SUSAN CHERIAN","RETAIL & HOSPITALITY"),
("B007","MRS.SAMPADA JAIN","MSP"),
("B008","MRS.KAVITA REGE","BPO"),
("B009","MR.RAVI SEJPAL","MSP")
;

select * from Batch_Info;










