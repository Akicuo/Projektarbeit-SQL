CREATE TABLE Schueler{
MatrikalNr IDENTITY(1,1) int PRIMARY KEY NOT Null,
Vorname varchar(50) NOT Null,
Nachname varchar(50) NOT Null,
Eintritsdatum date NOT Null
}

Create TABLE Professor{
PersonalNr IDENTITY(1,1) int PRIMARY KEY NOT Null,
Geburtsdatum date NOT Null,
Vorname varchar(50) NOT Null,
Nachname varchar(50) NOT Null,
Raum_ID int FOREIGN KEY REFERENCES Raum(Raum_ID) NOT Null
}

Create TABLE Assistent{
    Assistenten_ID IDENTITY(1,1) int PRIMARY KEY NOT Null,
    Vorname varchar(50) NOT Null,
    Nachname varchar(50) NOT Null,
    Geburtsdatum date NOT Null
}

Create TABLE Raum{
    Raum_ID IDENTITY(1,1) int PRIMARY KEY NOT Null,
}
---------------------------------------------------------------