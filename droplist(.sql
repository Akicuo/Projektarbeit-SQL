drop TABLE Schueler;
drop Table InSesion_Test;

CREATE TABLE [dbo].[Schueler] (
    [MatrikalNr]    VARCHAR (9)  NOT NULL,
    [Vorname]       VARCHAR (50) NOT NULL,
    [Nachname]      VARCHAR (50) NOT NULL,
    [Eintritsdatum] DATE         NOT NULL,
    PRIMARY KEY CLUSTERED ([MatrikalNr] ASC),
    CONSTRAINT [Uk_MatrikalNr] UNIQUE NONCLUSTERED ([MatrikalNr] ASC)
);
CREATE TABLE [dbo].[InSesion_Test] (
    [Pruefung_ID] INT NOT NULL,
    [MatrikalNr]  VARCHAR(9) NOT NULL,
    PRIMARY KEY CLUSTERED ([Pruefung_ID] ASC, [MatrikalNr] ASC),
    CONSTRAINT [fk_pruefung] FOREIGN KEY ([Pruefung_ID]) REFERENCES [dbo].[Pruefungen] ([Pruefung_ID]),
    CONSTRAINT [fk_Student] FOREIGN KEY ([MatrikalNr]) REFERENCES [dbo].[Schueler] ([MatrikalNr])
);



