CREATE TABLE Osobebpreksavec (
    id INT PRIMARY KEY IDENTITY,
    ime VARCHAR(50) NOT NULL,
    prezime VARCHAR(50) NOT NULL,
    jmbg VARCHAR(13) UNIQUE NOT NULL,
    datum_rodjenja DATE NOT NULL,
    spol CHAR(1) CHECK (spol IN ('M', 'F')),
    visina INT CHECK (visina > 0),
    slika BIT,
    broj_cipela INT CHECK (broj_cipela > 0)
);

INSERT INTO Osobebpreksavec (ime, prezime, jmbg, datum_rodjenja, spol, visina, broj_cipela)
VALUES
	('Milan', 'Ponjević', '1122334455667', '1986-05-03', 'M', 189, 44),
	('Luka', 'Milić', '5793456123047', '1999-08-01', 'M', 178, 39),
	('Anka', 'Lukić', '3789633014785', '1956-02-06', 'F', 165, 36),
	('Andrija', 'Savić', '7876934215630', '2002-10-12', 'M', 202, 47),
	('Marija', 'Josipović', '9578610321455', '1998-03-05', 'F', 180, 42);
	
SELECT * FROM Osobebpreksavec;
	
UPDATE Osobebpreksavec
SET ime = 'Mile', prezime = 'Kitić'
WHERE id = 2;

UPDATE Osobebpreksavec
SET broj_cipela = broj_cipela + 1;

DELETE FROM Osobebpreksavec
WHERE id = 3;

SELECT * FROM Osobebpreksavec;

DROP TABLE Osobebpreksavec;

