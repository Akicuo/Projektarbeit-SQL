DROP TABLE IF EXISTS InSesion_TEst;

CREATE TABLE InSesion_TEst (
    Pruefung_ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    MatrikalNr VARCHAR (9) NOT NULL,
    Termin DATE NULL,
    Note DECIMAL (2, 1) NULL,
    CONSTRAINT fk_pruefung FOREIGN KEY ([Pruefung_ID]) REFERENCES [dbo].[Pruefungen] ([Pruefung_ID]),
    CONSTRAINT fk_Student FOREIGN KEY ([MatrikalNr]) REFERENCES [dbo].[Schueler] ([MatrikalNr])
);

SET IDENTITY_INSERT InSesion_TEst ON;
INSERT INTO InSesion_TEst (Pruefung_ID, MatrikalNr, Termin, Note)
VALUES 
    (1, '12-8867-9', NULL, NULL),
    (2, '13-5660-2', NULL, NULL),
    (3, '09-4845-0', '2020-10-25 00:00', 6.0),
    (4, '09-4845-0', NULL, NULL),
    (5, '09-9370-0', '2020-03-03 15:30', 4.0),
    (6, '09-0665-1', '2020-05-28 10:00', 5.5),
    (7, '10-3201-8', '2020-05-30 10:00', 2.5),
    (8, '08-5694-8', NULL, NULL),
    (9, '13-3963-7', '2021-05-27 09:00', 3.5),
    (10, '13-3963-7', NULL, NULL),
    (11, '13-3704-2', '2021-05-27 08:00', 5.0),
    (12, '13-3704-2', '2020-03-10', 4.5),
    (13, '12-5776-4', '2021-05-26 10:00', 5.5),
    (14, '14-0556-8', NULL, NULL),
    (15, '09-7270-8', '2020-05-25 08:30', 4.5);



create table vorlesung(
    vorlesung_ID int IDENTITY(1,1) not null,
    Personal_ID int 
    Primary Key(vorlesung_ID, Personal_ID)
    CONSTRAINT fk_personal_ID FOREIGN KEY (Personal_ID) REFERENCES Professor(PersonalNr)
);
