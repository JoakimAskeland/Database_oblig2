-- CREATE DATABASE Oblig3;
USE Oblig3;


-- Drop Table BrukeriNFO;
CREATE TABLE IF NOT EXISTS BrukerInfo (
 	BrukerID SMALLINT AUTO_INCREMENT,
	DisplayNavn VARCHAR (20),
	BrukerLevel SMALLINT,
	PRIMARY KEY (BrukerID)
);
INSERT INTO BrukerInfo (DisplayNavn, BrukerLevel) VALUES
	('Admin', '99'),
	('Linus', '44'),
	('Joakim', '63'),
	('Kristian', '13');


DROP TABLE Arter;
CREATE TABLE IF NOT EXISTS Arter (
	ArtNummer TINYINT AUTO_INCREMENT,
    ArtNavn VARCHAR(20),
    BasisHelse INT,
    AngrepSkade INT,
    Bevegelseshastighet INT,
    Hjemmeverden VARCHAR(20),
    PRIMARY KEY (ArtNummer)
);
INSERT INTO Arter (ArtNavn, BasisHelse, AngrepSkade, Bevegelseshastighet, Hjemmeverden) VALUES 
	('Xenomorph', 4000, 3000,  5000, 'LV-223'),
	('Human', 5000, 500,  2000, 'Terra'),
	('Dalek', 10, 10,  10, 'Skaro'),
	('Ork', 8000, 1000,  500, 'LV-223'),
	('Amogi', 2000, 1000,  500, 'Polus'),
	('Sangheili', 6000, 1500,  3500, 'Sanghelios');


DROP TABLE Vaapen;
CREATE TABLE IF NOT EXISTS Vaapen (
    VaapenID SMALLINT AUTO_INCREMENT,
    VaapenNavn VARCHAR (20),
    VaapenKlasse VARCHAR (20),
    VaapenSkade TINYINT,
    SkadeType VARCHAR (20),
    VaapenGrad VARCHAR (15),
    PRIMARY KEY (VaapenID)
);
INSERT INTO Vaapen (VaapenNavn, VaapenKlasse, VaapenSkade, SkadeType, VaapenGrad) VALUES
    ('Fakkel', 'Klubbe', '10', 'Ild', 'Legendarisk'),
    ('Langsverd', 'Sverd', '7', 'Kuttende', 'Vanlig'),
    ('Pistol', 'Semi-automatisk', 1000000, 'Stikkende', 'Sjelden');


CREATE TABLE IF NOT EXISTS Kart (
	KartID SMALLINT AUTO_INCREMENT,
    StedsNavn VARCHAR (20),
    PRIMARY KEY (KartID)
);


CREATE TABLE IF NOT EXISTS Ting (
	TingID SMALLINT AUTO_INCREMENT,
    PRIMARY KEY (TingID)
);