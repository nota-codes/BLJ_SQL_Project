USE Universitaet
SELECT Hoersaal FROM Professor WHERE Nachname = 'Von Matt'

SELECT * FROM Student WHERE Eintrittsdatum < '2019-01-01'

SELECT * FROM Assistent WHERE Professor IS NULL

SELECT * FROM Assistent WHERE Vorname LIKE '_r%'

SELECT MIN(Geburtsdatum) FROM Assistent

SELECT COUNT(Matrikelnummer) FROM Student WHERE Matrikelnummer LIKE '13-%'
