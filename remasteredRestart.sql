

CREATE DATABASE UniDB;
USE UniDB


Create TABLE Raum(
    Raum_ID int IDENTITY(1,1) PRIMARY KEY NOT Null,
    
);

Create TABLE Professor(
PersonalNr int IDENTITY(1,1) PRIMARY KEY NOT Null,
Geburtsdatum date NOT Null,
Vorname varchar(50) NOT Null,
Nachname varchar(50) NOT Null,
Raum_ID int FOREIGN KEY REFERENCES Raum(Raum_ID) NULL
);

CREATE TABLE Schueler(
MatrikalNr VARCHAR(9) NOT Null,
Vorname varchar(50) NOT Null,
Nachname varchar(50) NOT Null,
Eintritsdatum date NOT Null,
CONSTRAINT uk_schuelerNR UNIQUE (MatrikalNr)
);



CREATE TABLE Vorlesungen (
    Vorlesung_ID INT IDENTITY(1,1) NOT NULL,
    Titel varchar(100) NOT NULL,
    MatrikalNr VARCHAR(9) not null,
    FOREIGN KEY (Matrikalnr) REFERENCES Schueler(Matrikalnr),
    PRIMARY KEY (Vorlesung_ID),
    CONSTRAINT fk_Vorlesung FOREIGN KEY (Vorlesung_ID) REFERENCES Vorlesungen(Vorlesung_ID),
    PersonalNr int Not Null,
    CONSTRAINT fk_vorleser FOREIGN KEY (PersonalNr) REFERENCES Professor(PersonalNr)
);


Create TABLE Assistent(
    Assistenten_ID int IDENTITY(1,1) PRIMARY KEY NOT Null,
    Vorname varchar(50) NOT Null,
    Nachname varchar(50) NOT Null,
    Geburtsdatum date NOT Null,
    PersonalNr_Chef int,
    CONSTRAINT fk_Assistent FOREIGN KEY (PersonalNr_Chef) REFERENCES Professor(PersonalNr)
)

CREATE TABLE Pruefungen (
    Pruefung_ID INT IDENTITY(1,1) PRIMARY KEY,
    Pruefungsaufsicht INT NOT NULL,
    PruefungsTermin DATE Not Null,
    FOREIGN KEY (Pruefungsaufsicht) REFERENCES Professor(PersonalNr),
    
);




CREATE TABLE InSesion_TEst (
    Pruefung_ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    MatrikalNr VARCHAR (9) NOT NULL,
    Termin DATE NULL,
    Note DECIMAL (2, 1) NULL,
    CONSTRAINT fk_pruefung FOREIGN KEY ([Pruefung_ID]) REFERENCES [dbo].[Pruefungen] ([Pruefung_ID]),
    CONSTRAINT fk_Student FOREIGN KEY ([MatrikalNr]) REFERENCES [dbo].[Schueler] ([MatrikalNr])
);


DECLARE @i INT = 1;
WHILE @i <= 32
BEGIN
    INSERT INTO [dbo].[Raum] DEFAULT VALUES;
    SET @i = @i + 1;
END
GO

INSERT INTO Professor (Vorname, Nachname, Geburtsdatum, Raum_ID)
VALUES ('Albert', 'Einstein', '18790314', 14),
('Marie', 'Curie', '18671107', 12),
('Peter', 'Von Matt', '19370520', 8),
('Nikola', 'Tesla', '18560710', 13),
('Wilhelm Conrad' , 'Röntgen', '18450327', 10),
('Jean-Paul', 'Satre', '19050621', 1),
('Jacobus', 'van''t Hoff', '18520830', 3);



Alter TABLE Pruefungen
    alter COLUMN PruefungsTermin date null;

Alter TABLE Pruefungen
    drop column PruefungsTermin;
Alter TABLE Pruefungen
    add PruefungThema varchar(100) not null;

alter table insesiom

---------------------------------------------------------------


alter table insen