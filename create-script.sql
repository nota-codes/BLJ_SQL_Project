USE master
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

CREATE TABLE Professor (
    ProfessorID int PRIMARY KEY,
    Vorname varchar(50) NOT NULL,
    Nachname varchar(50) NOT NULL,
    Geburtsdatum date NOT NULL,
    Hoersaal int,
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
    CONSTRAINT fkProfessor FOREIGN KEY (Professor) REFERENCES Professor(ProfessorID)
);

CREATE TABLE VorlesungXStudent (
    Matrikelnummer varchar(10),
    VorlesungID int,
    PRIMARY KEY (Matrikelnummer, VorlesungID),
    FOREIGN KEY (Matrikelnummer) REFERENCES Student(Matrikelnummer) ON DELETE CASCADE,
    FOREIGN KEY (VorlesungID) REFERENCES Vorlesung(VorlesungID)
);

CREATE TABLE Prüfung (
    PrüfungID INT IDENTITY(1,1) PRIMARY KEY,
    Matrikelnummer varchar(10),
    VorlesungID INT,
    Prüfungstermin DATE,
    Note DECIMAL(3, 1),
    ProfessorID INT,
    FOREIGN KEY (Matrikelnummer) REFERENCES Student(Matrikelnummer) ON DELETE CASCADE,
    FOREIGN KEY (VorlesungID) REFERENCES Vorlesung(VorlesungID),
    FOREIGN KEY (ProfessorID) REFERENCES Professor(ProfessorID)
);

CREATE TABLE Vorlesung_Vorgänger (
    NachfolgerID INT,
    VorgängerID INT,
    FOREIGN KEY (NachfolgerID) REFERENCES Vorlesung(VorlesungID),
    FOREIGN KEY (VorgängerID) REFERENCES Vorlesung(VorlesungID),
    PRIMARY KEY (NachfolgerID, VorgängerID)
);
