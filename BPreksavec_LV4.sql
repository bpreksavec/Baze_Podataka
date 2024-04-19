SELECT CONCAT(SUBSTRING(ime, 1,1),
SUBSTRING(prezime, 1, 1)) AS inicijali,
YEAR(datRod) AS godina_rodjenja FROM student;

SELECT * FROM student
ORDER BY datRod ASC;

SELECT TOP 1 ime, prezime FROM student
WHERE spol = 'F' ORDER BY datRod ASC;


/////////////////////////////////////////////////////////////////
SELECT COUNT(*) AS ukupno_studenata FROM student;
SELECT COUNT(DISTINCT pbrPreb) AS br_razl_mjesta FROM student;


/////////////////////////////////////////////////////////////////
SELECT ROUND(AVG(cast(ocjena AS float)),2) AS prosjek FROM ispit
WHERE ocjena > 1;

/////////////////////////////////////////////////////////////////
SELECT ime, prezime, ROUND(AVG(cast(Ocjena as Float)),2) AS Prosjecna_Ocjena1
from Student
JOIN Ispit ON mbr = mbrStud
WHERE Ocjena > 1
GROUP BY mbr, ime, prezime
ORDER BY Prosjecna_Ocjena1 DESC;


SELECT Ispit.mbrStud as MatBroj,
AVG(Ispit.Ocjena) as PRK
from Ispit
WHERE Ocjena > 1
GROUP BY Ispit.mbrStud
HAVING AVG(Ispit.Ocjena) > 2.5
ORDER BY PRK DESC;
////////////////////////////////////////////////////////////////
CREATE VIEW Ispitbprek AS
SELECT
	student.ime AS ImeStudenta,
	student.prezime AS PrezimeStudenta,
	predmet.naziv AS NazivPredmeta,
	ispit.ocjena
FROM
	ispit
JOIN
	student ON ispit.mbrStud = student.mbr
JOIN
	predmet ON ispit.sifPredmeta = predmet.sifra;
GO
	SELECT * FROM PogledIspita;
	
DROP VIEW Ispitbprek
