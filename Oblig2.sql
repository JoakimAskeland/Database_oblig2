/*
CREATE TABLE BrukerInfo (BrukerID SMALLINT AUTO_INCREMENT, DisplayNavn VARCHAR(20), BrukerLevel TINYINT, PRIMARY KEY(BrukerID)); 

INSERT INTO BrukerInfo (DisplayNavn, BrukerLevel) VALUES
('AdminBruker', '99');
*/

/* Dette er for en level 1 karakter */
/*
CREATE TABLE Arter (PRIMARY KEY (Artnummer), ArtNummer TINYINT AUTO_INCREMENT, ArtNavn VARCHAR(20), BasisHelse TINYINT, AngrepSkade TINYINT, Bevegelseshastighet TINYINT, Hjemmeverden VARCHAR(20));

INSERT INTO Arter (ArtNavn, BasisHelse, AngrepSkade, Bevegelseshastighet, Hjemmeverden) VALUES
('Xenomorph', 7000, 500, ),
('Menneske'), 
*/
CREATE TABLE BrukerInfo (BrukerID SMALLINT AUTO_INCREMENT, DisplayNavn VARCHAR(20), BrukerLevel TINYINT, PRIMARY KEY(BrukerID)); 

INSERT INTO BrukerInfo (DisplayNavn, BrukerLevel) VALUES
('AdminBruker', 99),
('GamerNr1', 1),
('Linus', 44),
('Joakim', 63),
('Kristian', 13);

CREATE TABLE IF NOT EXISTS Vaapen (
    VaapenID SMALLINT AUTO_INCREMENT,
    VaapenNavn VARCHAR (20),
    VaapenKlasse VARCHAR (20),
    VaapenSkade TINYINT,
    SkadeType VARCHAR (20),
    VaapenGrad VARCHAR (15)
);
INSERT INTO Vaapen (VaapenNavn, VaapenKlasse, VaapenSkade, SkadeType, VaapenGrad) VALUES (
    ('Fakkel', 'Klubbe', '10', 'Ild', 'Legendarisk'),
    ('Lang Sverd', 'Sverd', '7', 'Kuttende', 'Vanlig')
);

CREATE TABLE Arter 
(ArtNummer TINYINT AUTO_INCREMENT, ArtNavn VARCHAR(20), BasisHelse INT, AngrepSkade INT, Bevegelseshastighet INT, HjemmeVerden VARCHAR(20), PRIMARY KEY(ArtNummer));

INSERT INTO Arter (ArtNavn, BasisHelse, AngrepSkade, Bevegelseshastighet, Hjemmeverden) VALUES
('Xenomorph', 4000, 3000,  5000, 'LV-223'),
('Human', 500, 500,  2000, 'Terra'),
('Dalek', 10, 10,  10, 'Skaro'),
('Ork', 8000, 1000,  500, 'LV-223'),
('Amogi', 200, 1000,  500, 'Polus'),
('Sangheili', 6000, 1500,  3500, 'Sanghelios');

-- Navn er planetnavn brukt i spill, Biom er der spillets baner er, ikke nødvendigvis hele planeten, populasjon er for vår art.
CREATE TABLE Maps (PRIMARY KEY (VerdenNr), VerdenNr TINYINT AUTO_INCREMENT, VerdenNavn VARCHAR(20), Biom VARCHAR(15), Populasjon INT, HjemmeArt VARCHAR(20));

INSERT INTO Maps (VerdenNavn, Biom, Populasjon, HjemmeArt) VALUES
	('Terra', 'Frodig', 7000000000, 'Human'),
    ('LV-223', 'Temperert', 5000000, 'Xenomorph'),
    ('Skaro', 'Radioaktiv audemark', 200000, 'Dalek'),
    ('Gorro', 'Krigsherjet', 20000000, 'Ork'),
	('Polus', 'Arktisk', 2000, 'Amogi'),
	('Sanghelios', 'Frodig', 20000000, 'Sangheili');
