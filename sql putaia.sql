CREATE TABLE Pracownicy ( 
pID INT NOT NULL IDENTITY(1,1),
nazwisko VARCHAR(50),
imię VARCHAR(50),
tytuł VARCHAR(35),
telefon INT,
email VARCHAR(35),
płaca INT,
zatrudniony DATETIME,
eID INT,
zID INT,
PRIMARY KEY (pID)
);
INSERT INTO Pracownicy VALUES ('Ważny', 'Feliks', 'prof. dr hab.', 8513421, 'fwazny@wz.pl', 2250, '1975-09-15', 1, 4);
INSERT INTO Pracownicy VALUES ('Janke', 'Anna', 'dr inż.', 8543421, 'ajanke@wz.pl', 1750, '1990-06-10', 2, 1);
INSERT INTO Pracownicy VALUES ('Wolny', 'Marian', 'prof. dr hab.', 8574532, 'mwolny@wz.pl', 2250, '1975-09-15', 1, 3);
INSERT INTO Pracownicy VALUES ('Tylman', 'Jan', 'mgr inż.', 8543212, 'jtylman@wz.pl', 1400, '1982-02-01', 3, 5);
INSERT INTO Pracownicy VALUES ('Kopytko', 'Witold', 'prof. dr hab.', 8543212, 'wkopytko@wz.pl', 2250, '1982-01-01', 1, 1);
INSERT INTO Pracownicy VALUES ('Malwa', 'Ryszard', 'prof. dr hab.', 8574312, 'rmalwa@wz.pl', 2250, '1980-04-01', 1, 5);
INSERT INTO Pracownicy VALUES ('Remis', 'Jolanta', 'prof. dr hab.', 8542313, 'jremis@wz.pl', 2250, '1980-06-01', 1, 2);
INSERT INTO Pracownicy VALUES ('Mikrus', 'Witold', 'mgr inż.', 8514432, 'mwitold@wz.pl', 900, '2002-05-01', 4, 6);
INSERT INTO Pracownicy VALUES ('Nowy', 'Marian', 'dr inż.', 8578765, 'mnowy@wz.pl', 1750, '2001-09-20', 2, 3);
INSERT INTO Pracownicy VALUES ('Sytke', 'Adrian', 'mgr inż.', 8514532, 'asytke@wz.pl', 1400, '1990-06-01', 3, 4);
INSERT INTO Pracownicy VALUES ('Rym', 'Agnieszka', 'dr inż.', 8543421, 'arym@wz.pl', 1750, '1975-09-15', 2, 2);
INSERT INTO Pracownicy VALUES ('Tom', 'Marcin', 'prof. dr hab.', 8515453, 'mtom@wz.pl', 2250, '1980-09-01', 1, 6);
CREATE TABLE Etaty (
eID INT NOT NULL IDENTITY(1,1),
nazwa VARCHAR(35),
pensum INT,
PRIMARY KEY (eID)
);
INSERT INTO Etaty VALUES ('PROFESOR', 190);
INSERT INTO Etaty VALUES ('ADIUNKT', 240);
INSERT INTO Etaty VALUES ('ASYSTENT', 240);
INSERT INTO Etaty VALUES ('DOKTORANT', 90); 
CREATE TABLE Zakłady (
zID INT NOT NULL IDENTITY(1,1),
nazwa VARCHAR(35),
adres VARCHAR(50),
kierownik INT,
PRIMARY KEY (zID)
);
INSERT INTO Zakłady VALUES ('Informatyki Stosowanej', 'ul. Procesorowa 50', 5);
INSERT INTO Zakłady VALUES ('Cybernetyki', 'ul. Prosta 23', 7);
INSERT INTO Zakłady VALUES ('Maszynoznawstwa', 'ul. Polna 5', 3);
INSERT INTO Zakłady VALUES ('Maszyn i Urządzeń Rolniczych', 'ul. Warstwowa 13', 1);
INSERT INTO Zakłady VALUES ('Obsługi Technicznej', 'ul. Polna 5', 6);
INSERT INTO Zakłady VALUES ('Roślin Strączkowych', 'ul. Warstwowa 13', 12);
12. select * from dbo.Pracownicy
13. select imię,nazwisko, tytuł from dbo.Pracownicy
14. select imię , pID from dbo.Pracownicy where pID >= 4
15. select nazwa,adres from dbo.Zakłady where adres LIKE  '%Prosta%'
16. select imię,płaca from dbo.Pracownicy where płaca > 2000
17. SELECT * from dbo.Pracownicy where eID in (Select eID from dbo.Etaty where nazwa = 'Adiunkt')
18.select * from dbo.Etaty where pensum <> 240
19. select concat(imię,' ', nazwisko) as pracownicy,telefon,email as adres_email from dbo.Pracownicy
20. select * from dbo.Pracownicy where imię = 'Witold' and nazwisko = 'Mikrus'
21.select * from dbo.Pracownicy where imię in ('Witold','Ryszard')
22.select * from dbo.Zakłady where adres LIKE  '%Prosta%' or adres like '%Polna%'
23. SELECT * from dbo.Pracownicy where eID in (Select eID from dbo.Etaty where nazwa <> 'Profesor')
24.select * from dbo.Pracownicy where zID in (Select zID from dbo.Zakłady where nazwa = 'Informatyki Stosowanej' or nazwa ='Obsługi Technicznej')
25.select * from dbo.Pracownicy where płaca <> 2250 and zID in (select zID from dbo.Zakłady where nazwa ='Maszynoznawstwa')
26.select * from dbo.Pracownicy where zID in (2, 4 ,6 )
27.select * from dbo.Pracownicy where płaca between 1000 and 2000
28.select * from dbo.Pracownicy order by płaca asc
28.select * from dbo.Pracownicy order by płaca desc
29.select top 4 * from dbo.Pracownicy where płaca > 2000 and zID = 2
and zatrudniony > '1980-12-31' order by nazwisko asc 