CREATE TABLE OkretanjeImenaBP (
	ime VARCHAR(50),
	okrenuto_ime VARCHAR(50)
)

CREATE FUNCTION Okretanje (@ulaz VARCHAR(50))
	RETURNS VARCHAR(50)
	AS
	BEGIN
		DECLARE @izlaz VARCHAR(50);
		SET @izlaz = REVERSE(@ulaz);
		RETURN @izlaz;
	END;
	
CREATE PROCEDURE IspisOkretanja(@ulaz VARCHAR(50))
	AS
	BEGIN
		DECLARE @naopakoime VARCHAR(50);
		SET @naopakoime = dbo.Okretanje(@ulaz);
		PRINT 'Ime okrenuto unatrag: ' + @naopakoime;
END;

CREATE TRIGGER DodajNaopako
	ON OkretanjeImenaBP
	INSTEAD OF INSERT 
	AS
	BEGIN
		INSERT INTO OkretanjeImenaBP (ime, okrenuto_ime)
		SELECT ime, dbo.Okretanje(ime) FROM inserted;
END;


DECLARE @test_ulaz VARCHAR(50) = 'Aleksandro';
DECLARE @okrenuto VARCHAR(50);
SET @okrenuto = dbo.Okretanje(@test_ulaz);
PRINT 'Okrenuto ime: ' + @okrenuto;


EXEC IspisOkretanja @ulaz = 'Vjekoslav';


INSERT INTO OkretanjeImenaBP (ime) VALUES ('Miroslav');


SELECT * FROM OkretanjeImenaBP;

DROP TABLE OkretanjeImenaBP;