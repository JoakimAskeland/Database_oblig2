CREATE PROCEDURE ArtStats ()
BEGIN
	SELECT ArtNavn, BasisHelse, AngrepSkade, Bevegelseshastighet
    FROM Art;
END
