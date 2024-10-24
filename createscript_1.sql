
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
