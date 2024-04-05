SELECT * FROM student ORDER BY  datUpis ASC;

SELECT 
ime AS Ime,
prezime AS Prezime,
datRod AS 'Datum rođenja',
datUpis AS 'Datum upisa'
FROM student WHERE datRod < '1994-01-01' ;

SELECT s.ime, s.prezime, p.naziv FROM student s
JOIN ispit i ON s.mbr = i.mbrStud
JOIN predmet p ON i.sifPredmeta = p.sifra
WHERE i.ocjena >=4;

SELECT * FROM mjesto ORDER BY pbr ASC;