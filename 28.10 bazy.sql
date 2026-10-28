14.select * from Pracownicy where imię like 'J%'
15.select * from Pracownicy where telefon like '%54%'
16.select * from pracownicy where len(imię) = 4
17.select * from Zakłady where adres LIKE  '%Prosta%' or adres like '%Polna%'
18.SELECT * from Pracownicy where eID in (Select eID from Etaty where nazwa <> 'Profesor')
19.select * from Pracownicy where zID in (Select zID from Zakłady where nazwa = 'Informatyki Stosowanej' or nazwa ='Obsługi Technicznej')
20.select * from Pracownicy where nazwisko like '%a' or nazwisko like '%i'
21.select * from Pracownicy where imię like 'M%n'
22.select * from Pracownicy where cast(telefon as varchar) like '%5%5%'
23.select left(nazwisko,3) as skrot from Pracownicy
24.select *, right(cast(telefon as varchar),4) as koncowka from Pracownicy
25.select * from Zakłady where nazwa like '% % %'
26.select concat('adres', upper(adres)) as zmienionyadres from Zakłady
27.select email, substring(email,charindex('@', email) +1, len(email)) as domena from pracownicy 
28.select płaca , cast(round(płaca * 0.81,0)as int) as PlacaNetto from Pracownicy
29.select nazwa, replace(adres, 'ul', 'Ulica') as NowaNazwa from Zakłady
30.select concat(imię,' ', nazwisko,' ',cast(płaca as varchar)) as PracownikPlaca from Pracownicy
31.select concat(cast(pensum as varchar),'godz') as PensjaGodziny from etaty
32.select *, concat('+48 ', cast(telefon as varchar)) as ZmienionyTelefon from Pracownicy
33.select *, format(zatrudniony, 'dd-MM-yyyy') as datazatrudnienia from Pracownicy where zatrudniony > '2000-01-01'
34.select *, DATEDIFF(YEAR,zatrudniony,GETDATE()) as latapracy from Pracownicy
35.