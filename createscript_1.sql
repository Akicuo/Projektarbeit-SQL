
CREATE DATABASE UniDB;
USE UniDB
-------------------------------------

CREATE TABLE Vorlesungen (
    Vorlesung_ID INT NOT NULL,
    Titel varchar(100) NOT NULL,
    FOREIGN KEY (Matrikelnummer) REFERENCES Student(Matrikelnummer),
    PRIMARY KEY (Vorlesung_ID)
);


CREATE TABLE Pruefungen (
    Pruefung_ID INT IDENTITY(1,1) PRIMARY KEY,
    Pruefungsaufsicht INT NOT NULL,
    PruefungsTermin DATE not null
    FOREIGN KEY (Pruefungsaufsicht) REFERENCES Professor(PersonalNummer),
    PRIMARY KEY (Pruefung_ID)
);

--------------