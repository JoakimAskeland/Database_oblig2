CREATE DEFINER=`root`@`localhost` PROCEDURE `ArtStats`()
BEGIN
	SELECT ArtNavn, BasisHelse, AngrepSkade, Bevegelseshastighet
    FROM Arter;
END