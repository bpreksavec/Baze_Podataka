CREATE TABLE RacunaloBPrekasvec(
inv_broj SMALLINT,
tip VARCHAR(20),
ram SMALLINT,
hdd SMALLINT,
monitor SMALLINT,
mis VARCHAR(20),
tipkovnica VARCHAR(20),
mreza CHAR(2) DEFAULT 'DA',
modem CHAR(2) DEFAULT 'DA',
grafika VARCHAR(20)
)

CREATE TABLE SmartphoneBPreksavec(
ser_br INT,
proizvodac VARCHAR(20),
model VARCHAR(30),
memorija SMALLINT,
cpu_speed DECIMAL(4,2),
monitor_size DECIMAL(4,2),
OS_name VARCHAR(20),
datum_zadnje_nadogradnje DATETIME,
ime_korisnika VARCHAR(20),
prezime_korisnika VARCHAR(30)
)

CREATE TABLE autopijacBPreksavec(
marka_auto VARCHAR (30),
godiste SMALLINT,
tip_automobila VARCHAR(10),
datum_zadnje_registracije DATETIME,
boja_vozila VARCHAR(10),
predjeno_km INT,
broj_sasije INT,
snaga_motora VARCHAR(20)
)


CREATE TABLE DjelatnikBPreksavec (
mat_br VARCHAR(10) PRIMARY KEY,
ime VARCHAR(20),
prezime VARCHAR(30),
)

CREATE TABLE ProjektBPreksavec (
oznaka SMALLINT PRIMARY KEY,
naziv VARCHAR(20),
)

CREATE TABLE RadinaBPreksavec(
mat_br VARCHAR(10),
oznaka SMALLINT,
FOREIGN KEY (mat_br)  REFERENCES DjelatnikBPreksavec (mat_br),
FOREIGN KEY (oznaka)  REFERENCES ProjektBPreksavec (oznaka),
br_dana SMALLINT,
PRIMARY KEY (mat_br,oznaka)
)



