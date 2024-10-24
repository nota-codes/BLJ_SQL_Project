USE Universitaet
INSERT INTO Professor (ProfessorID, Nachname, Vorname, Hoersaal, Geburtsdatum) VALUES ('1', 'Einstein', 'Albert', '14', '1879-03-14');
INSERT INTO Professor (ProfessorID, Nachname, Vorname, Hoersaal, Geburtsdatum) VALUES ('2', 'Curie', 'Marie', '12', '1867-11-07');
INSERT INTO Professor (ProfessorID, Nachname, Vorname, Hoersaal, Geburtsdatum) VALUES ('3', 'Von Matt', 'Peter', '8', '1937-05-20');
INSERT INTO Professor (ProfessorID, Nachname, Vorname, Hoersaal, Geburtsdatum) VALUES ('4', 'Tesla', 'Nikola', '13', '1856-07-10');
INSERT INTO Professor (ProfessorID, Nachname, Vorname, Hoersaal, Geburtsdatum) VALUES ('5', 'Röntgen', 'Wilhelm Conrad', '10', '1845-03-27');
INSERT INTO Professor (ProfessorID, Nachname, Vorname, Hoersaal, Geburtsdatum) VALUES ('6', 'Sartre', 'Jean-Paul', '1', '1905-06-21');
INSERT INTO Professor (ProfessorID, Nachname, Vorname, Hoersaal, Geburtsdatum) VALUES ('7', 'van ''t Hoff', 'Jacobus', '3', '1852-08-30');

INSERT INTO Assistent (AssistentID, Nachname, Vorname, Geburtsdatum, Professor) VALUES
('1', 'Messi', 'Lionel', '1987-06-24', NULL),
('2', 'Shaqiri', 'Xherdan', '1991-10-10', '4'),
('3', 'Khedira', 'Sami', '1987-04-04', '3'),
('4', 'Ronaldo', 'Cristiano', '1985-02-05', '3'),
('5', 'Rooney', 'Wayne', '1985-10-24', NULL),
('6', 'Robben', 'Arjen', '1984-01-23', '7'),
('7', 'Pirlo', 'Andrea', '1979-05-19', '1'),
('8', 'Lewandowski', 'Robert', '1988-08-21', '3'),
('9', 'Suàrez', 'Luis', '1987-01-24', '5'),
('10', 'Sanchez', 'Alexis', '1988-12-19', '2');

INSERT INTO Student (Matrikelnummer, Vorname, Nachname, Eintrittsdatum) VALUES
('09-4845-0', 'Eliane', 'Burri', '2019-10-01'),
('12-5776-4', 'Guido', 'Duss', '2019-10-01'),
('09-7270-8', 'Gertrud', 'Zollinger', '2019-10-01'),
('08-5694-8', 'Giorgio', 'Antonelli', '2018-10-01'),
('13-3963-7', 'Miguel', 'Sanchez', '2019-10-01'),
('09-6537-7', 'Zoran', 'Stefanovski', '2019-10-01'),
('10-4336-3', 'Luis', 'Prieto', '2019-10-01'),
('13-4372-1', 'Martin', 'Isler', '2019-10-01'),
('09-1079-4', 'Paolo', 'Di Lavello', '2019-10-01'),
('10-5068-5', 'Rolf', 'Meier', '2019-10-01'),
('09-9370-0', 'Marco', 'Maggi', '2019-10-01'),
('09-0523-5', 'Heike', 'Kurmann', '2019-10-01'),
('09-9376-6', 'Lelzim', 'Krasniqi', '2019-10-01'),
('14-0556-8', 'Jean-Paul', 'Léchenne', '2019-10-01'),
('09-0665-1', 'Roger', 'Détraz', '2017-10-01'),
('11-8456-6', 'Hans', 'Dubach', '2018-10-01'),
('10-3201-8', 'Yvonne', 'Keller', '2019-10-01'),
('12-0948-3', 'Priska', 'Weber', '2019-10-01'),
('13-3225-2', 'Heidi', 'Dubuis', '2019-10-01'),
('13-5660-2', 'Slobodan', 'Stojanovic', '2019-10-01'),
('07-0633-6', 'Bruno', 'Zobrist', '2018-10-01'),
('10-1471-6', 'Slobodanka', 'Babaja', '2019-10-01'),
('10-2466-6', 'Roger', 'Gugler', '2018-10-01'),
('13-3704-2', 'Marian', 'Genkinger', '2019-10-01'),
('12-8867-9', 'Michele', 'Dell''Amore', '2019-10-01');


INSERT INTO Vorlesung (VorlesungID, Titel, Professor) VALUES 
('1', 'Ethik', '3'),
('2', 'Elektrotechnik', '4'),
('3', 'Sprachtheorie', '3'),
('4', 'Radiologie', '5'),
('5', 'Allgemeine Relativitätstheorie', '1'),
('6', 'Quantenphysik', '1'),
('7', 'Kinetik', '7'),
('8', 'Literaturgeschichte', '3'),
('9', 'Astrophysik', '1' ),
('10', 'Biochemie', '7'),
('11', 'Physikalische Chemie', '2');

INSERT INTO Vorlesung_Vorgänger (NachfolgerID, VorgängerID) VALUES
((SELECT VorlesungID FROM Vorlesung WHERE Titel = 'Quantenphysik'), (SELECT VorlesungID FROM Vorlesung WHERE Titel = 'Elektrotechnik'));
INSERT INTO Vorlesung_Vorgänger (NachfolgerID, VorgängerID) VALUES
((SELECT VorlesungID FROM Vorlesung WHERE Titel = 'Radiologie'), (SELECT VorlesungID FROM Vorlesung WHERE Titel = 'Quantenphysik'));

INSERT INTO VorlesungXStudent (Matrikelnummer, VorlesungID) 
VALUES
('07-0633-6', '11'),  -- Physikalische Chemie
('09-0665-1', '7'),   -- Kinetik
('09-1079-4', '10'),  -- Biochemie
('09-4845-0', '2'),   -- Elektrotechnik
('09-4845-0', '4'),   -- Radiologie
('09-7270-8', '10'),  -- Biochemie
('09-9370-0', '8'),   -- Literaturgeschichte
('10-3201-8', '7'),   -- Kinetik
('08-5694-8', '8'),   -- Literaturgeschichte
('12-5776-4', '2'),   -- Elektrotechnik
('12-8867-9', '1'),   -- Ethik
('13-3704-2', '1'),   -- Ethik
('13-3704-2', '8'),   -- Literaturgeschichte
('13-3704-2', '3'),   -- Sprachtheorie
('13-3963-7', '3'),   -- Sprachtheorie
('13-3963-7', '1'),   -- Ethik
('13-3963-7', '8'),   -- Literaturgeschichte
('13-4372-1', '7'),   -- Kinetik
('13-5660-2', '2'),   -- Elektrotechnik
('13-5660-2', '5'),   -- Allgemeine Relativitätstheorie
('13-5660-2', '7'),   -- Kinetik
('14-0556-8', '5');   -- Allgemeine Relativitätstheorie


INSERT INTO Prüfung (Matrikelnummer, VorlesungID, Prüfungstermin, Note, ProfessorID) 
VALUES
((SELECT Matrikelnummer FROM Student WHERE Matrikelnummer = '12-8867-9'), (SELECT VorlesungID FROM Vorlesung WHERE Titel = 'Ethik'), NULL, NULL, (SELECT ProfessorID FROM Professor WHERE Nachname = 'Sartre')),
((SELECT Matrikelnummer FROM Student WHERE Matrikelnummer = '13-5660-2'), (SELECT VorlesungID FROM Vorlesung WHERE Titel = 'Kinetik'), NULL, NULL, (SELECT ProfessorID FROM Professor WHERE Nachname = 'van ''t Hoff')),
((SELECT Matrikelnummer FROM Student WHERE Matrikelnummer = '09-4845-0'), (SELECT VorlesungID FROM Vorlesung WHERE Titel = 'Elektrotechnik'), '2020-10-25 00:00', 6.0, (SELECT ProfessorID FROM Professor WHERE Nachname = 'Tesla')),
((SELECT Matrikelnummer FROM Student WHERE Matrikelnummer = '09-4845-0'), (SELECT VorlesungID FROM Vorlesung WHERE Titel = 'Radiologie'), NULL, NULL, (SELECT ProfessorID FROM Professor WHERE Nachname = 'Curie')),
((SELECT Matrikelnummer FROM Student WHERE Matrikelnummer = '09-9370-0'), (SELECT VorlesungID FROM Vorlesung WHERE Titel = 'Literaturgeschichte'), '2020-03-03 15:30', 4.0, (SELECT ProfessorID FROM Professor WHERE Nachname = 'Von Matt')),
((SELECT Matrikelnummer FROM Student WHERE Matrikelnummer = '09-0665-1'), (SELECT VorlesungID FROM Vorlesung WHERE Titel = 'Kinetik'), '2020-05-28 10:00', 5.5, (SELECT ProfessorID FROM Professor WHERE Nachname = 'van ''t Hoff')),
((SELECT Matrikelnummer FROM Student WHERE Matrikelnummer = '10-3201-8'), (SELECT VorlesungID FROM Vorlesung WHERE Titel = 'Kinetik'), '2020-05-30 10:00', 2.5, (SELECT ProfessorID FROM Professor WHERE Nachname = 'van ''t Hoff')),
((SELECT Matrikelnummer FROM Student WHERE Matrikelnummer = '08-5694-8'), (SELECT VorlesungID FROM Vorlesung WHERE Titel = 'Literaturgeschichte'), NULL, NULL, (SELECT ProfessorID FROM Professor WHERE Nachname = 'Von Matt')),
((SELECT Matrikelnummer FROM Student WHERE Matrikelnummer = '13-3963-7'), (SELECT VorlesungID FROM Vorlesung WHERE Titel = 'Literaturgeschichte'), '2021-05-27 09:00', 3.5, (SELECT ProfessorID FROM Professor WHERE Nachname = 'Von Matt')),
((SELECT Matrikelnummer FROM Student WHERE Matrikelnummer = '13-3963-7'), (SELECT VorlesungID FROM Vorlesung WHERE Titel = 'Sprachtheorie'), NULL, NULL, (SELECT ProfessorID FROM Professor WHERE Nachname = 'Von Matt')),
((SELECT Matrikelnummer FROM Student WHERE Matrikelnummer = '13-3704-2'), (SELECT VorlesungID FROM Vorlesung WHERE Titel = 'Sprachtheorie'), '2021-05-27 08:30', 5.0, (SELECT ProfessorID FROM Professor WHERE Nachname = 'Von Matt')),
((SELECT Matrikelnummer FROM Student WHERE Matrikelnummer = '13-3704-2'), (SELECT VorlesungID FROM Vorlesung WHERE Titel = 'Literaturgeschichte'), '2020-03-10 10:00', 4.5, (SELECT ProfessorID FROM Professor WHERE Nachname = 'Von Matt')),
((SELECT Matrikelnummer FROM Student WHERE Matrikelnummer = '12-5776-4'), (SELECT VorlesungID FROM Vorlesung WHERE Titel = 'Elektrotechnik'), '2021-05-26 10:00', 5.5, (SELECT ProfessorID FROM Professor WHERE Nachname = 'Tesla')),
((SELECT Matrikelnummer FROM Student WHERE Matrikelnummer = '14-0556-8'), (SELECT VorlesungID FROM Vorlesung WHERE Titel = 'Allgemeine Relativitätstheorie'), NULL, NULL, (SELECT ProfessorID FROM Professor WHERE Nachname = 'Einstein')),
((SELECT Matrikelnummer FROM Student WHERE Matrikelnummer = '09-7270-8'), (SELECT VorlesungID FROM Vorlesung WHERE Titel = 'Biochemie'), '2020-05-25 08:30', 4.5, (SELECT ProfessorID FROM Professor WHERE Nachname = 'Röntgen'));


UPDATE Student
SET Wohnort = CASE
    WHEN Matrikelnummer = '09-4845-0' THEN 'Bern'
    WHEN Matrikelnummer = '12-5776-4' THEN 'Solothurn'
    WHEN Matrikelnummer = '09-7270-8' THEN 'Thun'
    WHEN Matrikelnummer = '08-5694-8' THEN 'Sempach'
    WHEN Matrikelnummer = '09-6537-7' THEN 'Bern'
    WHEN Matrikelnummer = '10-4336-3' THEN 'Basel'
    WHEN Matrikelnummer = '09-1079-4' THEN 'Baden'
    WHEN Matrikelnummer = '10-5068-5' THEN 'Wettingen'
    WHEN Matrikelnummer = '09-9370-0' THEN 'Unterlunkhofen'
    WHEN Matrikelnummer = '09-0523-5' THEN 'Hochdorf'
    WHEN Matrikelnummer = '09-9376-6' THEN 'Courtedoux'
    WHEN Matrikelnummer = '14-0556-8' THEN 'Solothurn'
    WHEN Matrikelnummer = '09-0665-1' THEN 'Lurtigen'
    WHEN Matrikelnummer = '11-8456-6' THEN 'Bern'
    WHEN Matrikelnummer = '12-0948-3' THEN 'Riehen'
    WHEN Matrikelnummer = '13-3225-2' THEN 'Knutwil'
    WHEN Matrikelnummer = '13-5660-2' THEN 'Muttenz'
    WHEN Matrikelnummer = '07-0633-6' THEN 'Birr'
    WHEN Matrikelnummer = '10-1471-6' THEN 'Olten'
    WHEN Matrikelnummer = '10-2466-6' THEN 'Burgdorf'
    WHEN Matrikelnummer = '12-8867-9' THEN 'Langenthal'
    ELSE Wohnort
END
WHERE Matrikelnummer IN (
    '09-4845-0', '12-5776-4', '09-7270-8', '08-5694-8', 
    '09-6537-7', '10-4336-3', '09-1079-4', '10-5068-5', 
    '09-9370-0', '09-0523-5', '09-9376-6', '14-0556-8', 
    '09-0665-1', '11-8456-6', '12-0948-3', '13-3225-2', 
    '13-5660-2', '07-0633-6', '10-1471-6', '10-2466-6', 
    '12-8867-9'
);

