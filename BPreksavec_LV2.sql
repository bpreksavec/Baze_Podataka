CREATE TABLE grupeBPreksavec(
id_grupe INT PRIMARY KEY,
oznaka_grupe VARCHAR (10) UNIQUE,
smjer VARCHAR (30),
broj_studenata SMALLINT 
)

CREATE TABLE studentBPreksavec(
br_indeksa INT PRIMARY KEY,
ime VARCHAR(15),
prezime VARCHAR(20),
grupa INT,
godina_upisa DATETIME,
godina_studija DATETIME,
FOREIGN KEY (grupa) REFERENCES grupeBPreksavec(id_grupe)
)

ALTER TABLE studentBPreksavec ADD prosjek DECIMAL(4,2) 

ALTER TABLE studentBPreksavec ADD CONSTRAINT chk_student_prosjek CHECK (prosjek >= 1)


ALTER TABLE studentBPreksavec DROP COLUMN godina_studija


CREATE TABLE tel_imenikBPreksavec(
br_telefona INT,
ime VARCHAR(15),
prezime VARCHAR(20),
email VARCHAR(30),
datum_unosa DATETIME,
CONSTRAINT pk2 PRIMARY KEY (br_telefona, datum_unosa)
)

CREATE INDEX idx_prosjek_desc ON studentBPreksavec (chk_prosjek_min_value DESC);

CREATE UNIQUE INDEX uniq_idx_br_tel_datumunosa ON tel_imenikBPreksavec (br_telefona, datum_unosa);