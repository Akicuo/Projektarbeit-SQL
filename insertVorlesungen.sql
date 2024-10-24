SET IDENTITY_INSERT VORLESUNGEN ON;

INSERT INTO Vorlesungen (Titel, MatrikalNr, PersonalNr)
VALUES
    ('Physikalische Chemie', '07-0633-6', (SELECT top 1 PersonalNr FROM Professor WHERE Concat(Nachname, ' ', Vorname) = 'Curie Marie')),
    ('Kinetik', '09-0665-1', (SELECT top 1 PersonalNr FROM Professor WHERE Concat(Nachname, ' ', Vorname) = 'van''t Hoff Jacobus')),
    ('Biochemie', '09-1079-4', (SELECT top 1 PersonalNr FROM Professor WHERE Concat(Nachname, ' ', Vorname) = 'van''t Hoff Jacobus')),
    ('Elektrotechnik', '09-4845-0', (SELECT top 1 PersonalNr FROM Professor WHERE Concat(Nachname, ' ', Vorname) = 'Tesla Nikola')),
    ('Radiologie', '09-4845-0', (SELECT top 1 PersonalNr FROM Professor WHERE Concat(Nachname, ' ', Vorname) = 'Röntgen Wilhelm Conrad')),
    ('Biochemie', '09-7270-8', (SELECT top 1 PersonalNr FROM Professor WHERE Concat(Nachname, ' ', Vorname) = 'van''t Hoff Jacobus')),
    ('Literaturgeschichte', '09-9370-0', (SELECT top 1 PersonalNr FROM Professor WHERE Concat(Nachname, ' ', Vorname) = 'Von Matt Peter')),
    ('Kinetikö', '10-3201-8', (SELECT top 1 PersonalNr FROM Professor WHERE Concat(Nachname, ' ', Vorname) = 'van''t Hoff Jacobus')),
    ('Literaturgeschichte', '08-5694-8', (SELECT top 1 PersonalNr FROM Professor WHERE Concat(Nachname, ' ', Vorname) = 'Von Matt Peter')),
    ('Elektrotechnik', '12-5776-4', (SELECT top 1 PersonalNr FROM Professor WHERE Concat(Nachname, ' ', Vorname) = 'Tesla Nikola')),
    ('Ethik', '12-8867-9', (SELECT top 1 PersonalNr FROM Professor WHERE Concat(Nachname, ' ', Vorname) = 'Matt Peter')),
    ('Ethik', '13-3704-2', (SELECT top 1 PersonalNr FROM Professor WHERE Concat(Nachname, ' ', Vorname) = 'Matt Peter')),
    ('Literaturgeschichte', '13-3704-2', (SELECT top 1 PersonalNr FROM Professor WHERE Concat(Nachname, ' ', Vorname) = 'Von Matt Peter')),
    ('Sprachtheorie', '13-3704-2', (SELECT top 1 PersonalNr FROM Professor WHERE Concat(Nachname, ' ', Vorname) = 'Von Matt Peter')),
    ('Sprachtheorie', '13-3963-7', (SELECT top 1 PersonalNr FROM Professor WHERE Concat(Nachname, ' ', Vorname) = 'Von Matt Peter')),
    ('Ethik', '13-3963-7', (SELECT top 1 PersonalNr FROM Professor WHERE Concat(Nachname, ' ', Vorname) = 'Matt Peter')),
    ('Literaturgeschichte', '13-3963-7', (SELECT top 1 PersonalNr FROM Professor WHERE Concat(Nachname, ' ', Vorname) = 'Von Matt Peter')),
    ('Kinetik', '13-4372-1', (SELECT top 1 PersonalNr FROM Professor WHERE Concat(Nachname, ' ', Vorname) = 'van''t Hoff Jacobus')),
    ('Elektrotechnik', '13-5660-2', (SELECT top 1 PersonalNr FROM Professor WHERE Concat(Nachname, ' ', Vorname) = 'Tesla Nikola')),
    ('Allgemeine Relativitätstheorie', '13-5660-2', (SELECT top 1 PersonalNr FROM Professor WHERE Concat(Nachname, ' ', Vorname) = 'Röntgen Wilhelm Conrad')),
    ('Kinetik', '13-5660-2', (SELECT top 1 PersonalNr FROM Professor WHERE Concat(Nachname, ' ', Vorname) = 'van''t Hoff Jacobus')),
    ('Allgemeine Relativitätstheorie', '14-0556-8', (SELECT top 1 PersonalNr FROM Professor WHERE Concat(Nachname, ' ', Vorname) = 'Röntgen Wilhelm Conrad'));

SET IDENTITY_INSERT VORLESUNGEN OFF;

