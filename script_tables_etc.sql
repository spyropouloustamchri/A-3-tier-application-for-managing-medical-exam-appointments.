create database dbergasia2;
use dbergasia2;

create table Users (
	username varchar(20) primary key,
    password varchar(20),
    name varchar(20),
    surname varchar(20),
    age int,
    email varchar(30) 
);

create table Patient (
    username varchar(20),
    password varchar(20),
    name varchar(20),
    surname varchar(20),
    age int,
    email varchar(30),
    amka varchar(20) primary key,
    foreign key(username) references Users(username)
);

create table Doctor (
	username varchar(20),
    password varchar(20),
    name varchar(20),
    surname varchar(20),
    age int,
    email varchar(30),
    amka varchar(20) primary key,
    foreign key(username) references Users(username)
);


create table Admin (
	username varchar(20),
    password varchar(20),
    name varchar(20),
    surname varchar(20),
    age int,
    email varchar(30),
    amka varchar(20) primary key,
    foreign key(username) references Users(username)
);


create table Appointments(
	date varchar(20),
    dr_name varchar(20)
);


create table Historika(
ID int auto_increment,
Amka varchar(20) ,
Appointment_date date,
Dr varchar(20),
foreign key (Amka) references Patient(amka),
primary key (ID)
);


alter table Appointments add column availability boolean default true ;
alter table Appointments add column doctor_id varchar(20) ;
alter table Appointments add constraint fk foreign key (doctor_id) references Doctor(amka);
alter table Appointments modify column date date;
alter table Appointments add constraint pk primary key (date,dr_name);
drop table Appointments;
alter table Appointments add column specialty varchar(50);

insert into Users(username,password,name,surname,age,email) values ('Anna','12345','matina','spyropoulou',20,'matina@gmail.com');
insert into Users(username,password,name,surname,age,email) values ('Marika','122132','mar','stylianh',20,'marikakilou@gmail.com');
insert into Users(username,password,name,surname,age,email) values ('Natalia','65432','nat','samal',20,'natalia@gmail.com');
insert into Users(username,password,name,surname,age,email) values ('Αμαλια','632','nat','samal',20,'natalia@gmail.com');

alter table Users add column Salt varchar(255);
alter table Patient add column Salt varchar(255);
alter table Users add column amka varchar(20);
alter table Users modify column password varchar(255);
alter table Patient modify column password varchar(255);
alter table Users drop column Salt;
alter table Doctor add column Salt varchar(255);
alter table Doctor modify column password varchar(255);
alter table Admin add column Salt varchar(255);
alter table Admin modify column password varchar(255);

drop table Historika;
insert into Historika (Amka,Appointment_date,Appointment_time,Dr,Building) values ('12097856435','19/06/2025','20:30','Kontoulis Amvrosios','Orthopedic');
insert into Historika (Amka,Appointment_date,Appointment_time,Dr,Building) values ('12097856435','26/06/2025','18:30','Lilh Anagnwstaki','Ophthalmologic');
insert into Historika (Amka,Appointment_date,Appointment_time,Dr,Building) values ('12097856435','03/08/2025','09:00','Xaroula Alexiou','Plastic');

insert into Historika (Amka,Appointment_date,Appointment_time,Dr,Building) values ('17096986432','15/05/2025','17:30','Iwannis Eustratiou','Neurosurgeric');
insert into Historika (Amka,Appointment_date,Appointment_time,Dr,Building) values ('17096986432','18/07/2025','19:30','Mixalis Papaiwannou','Rheumatological');

insert into Historika (Amka,Appointment_date,Appointment_time,Dr,Building) values ('3078933785','25/05/2025','13:30','Ignadios Sfakianakhs','Rhinoplastic');
insert into Historika (Amka,Appointment_date,Appointment_time,Dr,Building) values ('3078933785','08/09/2025','14:15','Anna Latsi','Cardiological');
