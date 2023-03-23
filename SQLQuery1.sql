create Database CabinetVeterinar;
GO
USE CabinetVeterinar;
Create table Animal(
id_a int PRIMARY KEY,
nume varchar(50),
tip varchar(50),
boala varchar(100),
varsta int
);
Create table Medic(
id_me int PRIMARY KEY,
nume varchar(50),
an_abs int
);
Create table Consultatie(
id_a int FOREIGN KEY REFERENCES Animal(id_a) on delete cascade on update cascade ,
id_me int FOREIGN KEY REFERENCES Medic(id_me) on delete cascade on update cascade,
dat date ,
boala varchar(100),
CONSTRAINT PK_Consultatie
PRIMARY KEY(id_a,id_me)
);
Create table Medicament(
id_m int PRIMARY KEY,
nume varchar(100),
tip varchar(100)
);
Create table EvidentaMedicamente(
id_a int FOREIGN KEY REFERENCES Animal(id_a) on delete cascade on update cascade,
id_m int FOREIGN KEY REFERENCES Medicament(id_m) on delete cascade on update cascade ,
CONSTRAINT PK_EvidentaMedicamente
PRIMARY KEY(id_a,id_m)
);
Create table Asistenta(
id_as int PRIMARY KEY,
nume varchar(50),
facultate_abs varchar(500),
id_me int FOREIGN KEY REFERENCES Medic(id_me) on update cascade on delete cascade
);
Insert into Animal(id_a,nume,tip,boala,varsta)
Values(1,'Rex','caine','vaccin',2);
Insert into Animal(id_a,nume,tip,boala,varsta)
Values(2,'Tomas','pisica','deparazitare',1);
Insert into Animal(id_a,nume,tip,boala,varsta)
Values(3,'Tessy','caine','vaccin',3);
Insert into Medic(id_me,nume,an_abs)
Values(11,'Pop Silviu',2000);
Insert into Medic(id_me,nume,an_abs)
Values(12,'Pop Ana',2002);
Insert into Medic(id_me,nume,an_abs)
Values(13,'Ionescu Ion',2005);
Insert into Consultatie(id_a,id_me,dat,boala)
Values(1,11,'2021-10-10','luxatie picior');
Insert into Consultatie(id_a,id_me,dat,boala)
Values(1,12,'2022-05-12','vaccin');
Insert into Consultatie(id_a,id_me,dat,boala)
Values(3,11,'2022-09-14','deparzitare');
Insert into Medicament(id_m,nume,tip)
Values(21,'Vitamine','pentru articulatii');
Insert into Medicament(id_m,nume,tip)
Values(22,'Lypex','pentru digestie');
Insert into Medicament(id_m,nume,tip)
Values(23,'Lupoderm','pentru piele si blana');
Insert into EvidentaMedicamente(id_a,id_m)
Values(1,21);
Insert into EvidentaMedicamente(id_a,id_m)
Values(2,23);
Insert into EvidentaMedicamente(id_a,id_m)
Values(3,23);
Insert into Asistenta(id_as,nume,facultate_abs,id_me)
Values(31,'Chereji Andra','USAMV Cluj',11);
Insert into Asistenta(id_as,nume,facultate_abs,id_me)
Values(32,'Cristescu Mihai','USAMV Cluj',12);
Insert into Asistenta(id_as,nume,facultate_abs,id_me)
Values(33,'Pop Sorin','Universitatea Spiru Haret Bucuresti',13);
Update Medic
set an_abs=2002
where id_me is not NULL;
Delete from Consultatie
where id_a<=1;
Delete from Animal
where id_a=1;
Delete from Medic
where id_me=11;
SELECT * from Animal
Select * from Medic
Select * from Consultatie
Select * from Medicament
Select * from EvidentaMedicamente
Select * from Asistenta
Drop table Consultatie;
Drop table EvidentaMedicamente;
Drop table Asistenta;
Drop table Medic;
Drop table Medicament;
Drop table Animal;




