CREATE DEFINER=`root`@`localhost` TRIGGER `oblig2`.`brukerinfo_BEFORE_UPDATE` BEFORE UPDATE ON `brukerinfo` FOR EACH ROW
BEGIN
IF ((Artnummer <> ArtNummer.NEW)
OR(VerdenNr <> VerdenNr.NEW)
OR(Klassenr <> Klassenr.NEW))
THEN INSERT INTO Spillerfigur_endringer (ArtNummer, VerdenNr, Klassenr)
VALUES (ArtNummer, VerdenNr, Klassenr);
END IF;

END