USE Universitaet
SELECT Hoersaal FROM Professor WHERE Nachname = 'Von Matt'

SELECT * FROM Student WHERE Eintrittsdatum < '2019-01-01'

SELECT * FROM Assistent WHERE Professor IS NULL

SELECT * FROM Assistent WHERE Vorname LIKE '_r%'

SELECT MIN(Geburtsdatum) FROM Assistent

SELECT COUNT(Matrikelnummer) FROM Student WHERE Matrikelnummer LIKE '13-%'

SELECT Vorname, Nachname
FROM Student 
WHERE Matrikelnummer IN (SELECT Matrikelnummer FROM VorlesungXStudent GROUP BY Matrikelnummer HAVING COUNT(*) >= 3);

SELECT COUNT(Note) AS 'Noten mit 5.5' FROM Prüfung WHERE Note = 5.5;

SELECT COUNT(Matrikelnummer) AS 'Studenten ohne Wohnort' FROM Student WHERE Wohnort IS NULL;

SELECT AVG(Note) AS 'Noten durchschnitt Student 13-3704-2' FROM Prüfung WHERE Matrikelnummer = '13-3704-2';