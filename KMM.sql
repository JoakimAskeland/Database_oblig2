-- Opretting av tabell BrukerINFO. Her lagres brukerinfo.

-- -- -- BRUKER INFO -- -- --

CREATE TABLE BrukerInfo (BrukerID SMALLINT AUTO_INCREMENT, DisplayNavn VARCHAR(20), BrukerLevel TINYINT, PRIMARY KEY(BrukerID));

INSERT INTO BrukerInfo (DisplayNavn, BrukerLevel)
VALUES ('AdminBruker', 99);

-- Adminbruker lagd. 

INSERT INTO BrukerInfo (DisplayNavn, BrukerLevel) VALUES
('GamerNr1', 1),
('Linus', 44),
('Joakim', 63),
('Kristian', 13);

-- -- -- ARTER -- -- --

DROP TABLE Arter;

CREATE TABLE Arter 
(ArtNummer TINYINT AUTO_INCREMENT, ArtNavn VARCHAR(20), BasisHelse INT, AngrepSkade INT, Bevegelseshastighet INT, HjemmeVerden VARCHAR(20), PRIMARY KEY(ArtNummer));

INSERT INTO Arter (ArtNavn, BasisHelse, AngrepSkade, Bevegelseshastighet, Hjemmeverden) VALUES
('Xenomorph', 4000, 3000,  5000, 'LV-223'),
('Human', 500, 500,  2000, 'Terra'),
('Dalek', 10, 10,  10, 'Skaro'),
('Ork', 8000, 1000,  500, 'LV-223'),
('Amogi', 200, 1000,  500, 'Polus'),
('Sangheili', 6000, 1500,  3500, 'Sanghelios');

-- -- -- Planeter/verdener -- -- --

DROP TABLE Maps; 
-- Navn er planetnavn brukt i spill, Biom er der spillets baner er, ikke nødvendigvis hele planeten, populasjon er for vår art.
CREATE TABLE Maps (PRIMARY KEY (VerdenNr), VerdenNr TINYINT AUTO_INCREMENT, VerdenNavn VARCHAR(20), Biom VARCHAR(30), Populasjon BIGINT, HjemmeArt VARCHAR(20));

INSERT INTO Maps (VerdenNavn, Biom, Populasjon, HjemmeArt) VALUES
	('Terra', 'Frodig', 7000000000, 'Human'),
    ('LV-223', 'Temperert', 5000000, 'Xenomorph'),
    ('Skaro', 'Radioaktiv audemark', 200000, 'Dalek'),
    ('Gorro', 'Krigsherjet', 20000000, 'Ork'),
	('Polus', 'Arktisk', 2000, 'Amogi'),
	('Sanghelios', 'Frodig', 20000000, 'Sangheili');
    
    -- -- -- VÅPEN -- -- --
    
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
    
    -- -- -- Klasser -- -- --
    
CREATE TABLE Klasser (PRIMARY KEY (Klassenr), Klassenr TINYINT AUTO_INCREMENT, Klassenavn VARCHAR(20), Skjold INT, Skadebonus INT);

INSERT INTO Klasser (Klassenavn, Skjold, Skadebonus) VALUES
('Lege', 200, 10),
('Soldat', 1000, 1000),
('Snikmorder', 10, 5000),
('Tank', 5000, 300);

-- -- -- Ting -- -- --

CREATE TABLE IF NOT EXISTS Ting (
	TingID SMALLINT AUTO_INCREMENT,
    TingNavn VARCHAR (20),
    BruksMaate VARCHAR (30),
    AntallBruk TINYINT,
    PRIMARY KEY (TingID)
);
INSERT INTO Ting (TingNavn, BruksMaate, AntallBruk) VALUES
	('Granat', 'Kastbar', 1),
    ('Eleksir', 'Drikkbar', 2);


-- -- -- Spillerfigur -- -- --

CREATE TABLE Spillerfigur 
(
    BrukerID SMALLINT, FOREIGN KEY (BrukerID) REFERENCES BrukerInfo(BrukerID),
    VaapenID SMALLINT, FOREIGN KEY (VaapenID) REFERENCES Vaapen(VaapenID),
    ArtNummer TINYINT, FOREIGN KEY (ArtNummer) REFERENCES Arter(ArtNummer),
    VerdenNr TINYINT, FOREIGN KEY (VerdenNr) REFERENCES Maps(VerdenNr),
    TingID TINYINT, FOREIGN KEY (TingID) REFERENCES Ting(TingID),
    Klassenr TINYINT, FOREIGN KEY (Klassenr) REFERENCES Klasser(Klassenr)
);

-- Spillerfigur trigger tabell -- 

CREATE TABLE Spillerfigur_endringer 
(PRIMARY KEY (ID), ID TINYINT AUTO_INCREMENT, BrukerID SMALLINT, ArtNummer TINYINT, Klassenr TINYINT);

-- -- -- VIEW -- -- --

CREATE VIEW LavPopulasjon AS 
SELECT VerdenNavn
FROM Maps
WHERE Populasjon < 3000000;

SELECT * FROM LavPopulasjon;

-- -- -- SELECT Setninger -- -- --






-- -- -- UPDATE OG INSERT setninger -- -- --
-- 
/*



*/
