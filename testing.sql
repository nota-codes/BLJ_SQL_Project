USE Universitaet
SELECT Hoersaal FROM Professor WHERE Nachname = 'Von Matt'

SELECT * FROM Student WHERE Eintrittsdatum < '2019-01-01'

SELECT * FROM Assistent WHERE Professor IS NULL

SELECT * FROM Assistent WHERE Vorname LIKE '_r%'

SELECT MIN(Geburtsdatum) FROM Assistent

SELECT COUNT(Matrikelnummer) FROM Student WHERE Matrikelnummer LIKE '13-%'

SELECT Vorname, Nachname FROM Student WHERE Vorname LIKE '%a%' ORDER BY Nachname DESC;

SELECT COUNT(Note) FROM Prüfung WHERE Note IS NOT NULL

SELECT COUNT(VS.Matrikelnummer) AS Anzahl_Studenten
FROM Vorlesung V
JOIN VorlesungXStudent VS ON V.VorlesungID = VS.VorlesungID
WHERE V.Titel = 'Kinetik';

SELECT COUNT(Prüfung.PrüfungID) AS Anzahl_Prüfungen
FROM Prüfung
JOIN Professor ON Prüfung.ProfessorID = Professor.ProfessorID
WHERE Professor.Nachname = 'van ''t Hoff';

SELECT TOP 1 Vorname
FROM Assistent
ORDER BY Geburtsdatum ASC;





