INSERT INTO Professor (Vorname, Nachname, Geburtsdatum, Raum_ID)
VALUES ('Albert', 'Einstein', '18790314', 14),
('Marie', 'Curie', '18671107', 12),
('Peter', 'Von Matt', '19370520', 8),
('Nikola', 'Peter', '18560710', 13),
('Wilhelm Conrad' , 'Röntgen', '18450327', 10),
('Jean-Paul', 'Satre', '19050621', 1),
('Jacobus', 'van''t Hoff', '18520830', 3);

UPDATE Professor
SET Nachname = 'Tesla'
WHERE Vorname = 'Nikola';


-- Repeat this statement 32 times.
INSERT INTO [dbo].[Raum]
DEFAULT VALUES;

