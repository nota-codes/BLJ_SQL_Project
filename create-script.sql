CREATE DATABASE Universitaet;
GO

USE Universitaet;
GO

CREATE TABLE Student (
    Matrikelnummer varchar(10) PRIMARY KEY,
    Vorname varchar(50) NOT NULL,
    Nachname varchar(50) NOT NULL,
    Eintrittsdatum smalldatetime NOT NULL
);

CREATE TABLE Hoersaal (
    HoersaalID int PRIMARY KEY,
    Zimmer varchar(20)
);

CREATE TABLE Professor (
    ProfessorID int PRIMARY KEY,
    Vorname varchar(50) NOT NULL,
    Nachname varchar(50) NOT NULL,
    Geburtsdatum smalldatetime NOT NULL,
    Hoersaal int,
    CONSTRAINT fk_Hoersaal FOREIGN KEY (Hoersaal) REFERENCES Hoersaal(HoersaalID)
);

CREATE TABLE Assistent (
    AssistentID int PRIMARY KEY,
    Vorname varchar(50) NOT NULL,
    Nachname varchar(50) NOT NULL,
    Geburtsdatum smalldatetime NOT NULL,
    Professor int,
    CONSTRAINT fk_Professor FOREIGN KEY (Professor) REFERENCES Professor(ProfessorID)
);

CREATE TABLE Vorlesung (
    VorlesungID int PRIMARY KEY,
    Titel varchar(100),
    Professor int,
    Pruefung int,
    CONSTRAINT fkProfessor FOREIGN KEY (Professor) REFERENCES Professor(ProfessorID)
);

CREATE TABLE VorlesungXStudent (
    Matrikelnummer varchar(10),
    VorlesungID int,
    PRIMARY KEY (Matrikelnummer, VorlesungID),
    FOREIGN KEY (Matrikelnummer) REFERENCES Student(Matrikelnummer),
    FOREIGN KEY (VorlesungID) REFERENCES Vorlesung(VorlesungID)
);

CREATE TABLE Pruefung (
    PruefungsID int PRIMARY KEY,
    termin smalldatetime,
);

ALTER TABLE Vorlesung ADD CONSTRAINT fk_Vorlesung FOREIGN KEY (Pruefung) REFERENCES Pruefung(PruefungsID);

CREATE TABLE PruefungXStudent (
    PruefungID int,
    Matrikelnummer varchar(10),
    PRIMARY KEY (PruefungID, Matrikelnummer),
    FOREIGN KEY (PruefungID) REFERENCES Pruefung(PruefungsID),
    FOREIGN KEY (Matrikelnummer) REFERENCES Student(Matrikelnummer)
)

CREATE TABLE Voraussetzung (
    vorgaengerID int,
    nachgaengerID int,
    PRIMARY KEY (vorgaengerID, nachgaengerID),
    FOREIGN KEY (vorgaengerID) REFERENCES Pruefung(PruefungsID),
    FOREIGN KEY (nachgaengerID) REFERENCES Pruefung(PruefungsID)
)