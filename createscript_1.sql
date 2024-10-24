
CREATE DATABASE UniDB;
USE UniDB
-------------------------------------

CREATE TABLE Vorlesungen (
    Vorlesung_ID INT NOT NULL,
    Titel varchar(100) NOT NULL,
    MatrikalNr int IDENTITY not null,
    FOREIGN KEY (Matrikalnr) REFERENCES Schueler(Matrikalnr),
    PRIMARY KEY (Vorlesung_ID)
);


CREATE TABLE Pruefungen (
    Pruefung_ID INT IDENTITY(1,1) PRIMARY KEY,
    Pruefungsaufsicht INT NOT NULL,
    PruefungsTermin DATE not null
    FOREIGN KEY (Pruefungsaufsicht) REFERENCES Professor(PersonalNr),
    
);
ALTER TABLE Vorlesungen 
    ADD CONSTRAINT fk_Vorlesung FOREIGN KEY (Vorlesung_ID) REFERENCES Vorlesungen(Vorlesung_ID);

--------------
CREATE TABLE InSesion_Test(
    Pruefung_ID int,
    MatrikalNr INT
    Primary Key (Pruefung_ID, MatrikalNr)
)
---------------
ALTER TABLE InSesion_Test 
    ADD CONSTRAINT fk_Student FOREIGN KEY (MatrikalNr) REFERENCES Schueler(MatrikalNr);
ALTER TABLE InSesion_Test 
    ADD CONSTRAINT fk_pruefung FOREIGN KEY (Pruefung_ID) REFERENCES Pruefungen(Pruefung_ID);
alter TABLE Assistent
    add PersonalNr_Chef int Not Null;
alter TABLE Assistent
    add CONSTRAINT fk_Assistent FOREIGN KEY (PersonalNr_Chef) REFERENCES Professor(PersonalNr);
alter TABLE Vorlesungen
    add PersonalNr int Not Null;
    alter TABLE Vorlesungen
    add CONSTRAINT fk_vorleser FOREIGN KEY (PersonalNr) REFERENCES Professor(PersonalNr);