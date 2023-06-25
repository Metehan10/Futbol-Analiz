CREATE TABLE FutbolData1
(Ad varchar(50),
Yas int,
Mevki varchar(50),
Oynadigi_Takim varchar(50),
Oynadigi_Lig varchar(50),
Oynadigi_Mac_Sayisi int,
Gol_Sayisi int,
Asist_Sayisi int
)

INSERT INTO	FutbolData1 VALUES
('Martinelli' ,21,'Kanat','Arsenal','Ýngiltere',27,	12,	2),
('Saka',21,	'Kanat','Arsenal',	'Ýngiltere',	27,	10,	9),
('Odegaard',24,	'Orta Saha','Arsenal','Ýngiltere',26,10,6),
('Haaland',22,'Forvet','Man.City','Ýngiltere',26,28,5),
('Foden',22,'Kanat','Man.City','Ýngiltere',	24,	9,	5),
('Mahrez',32,	'Kanat','Man.City'	,'Ýngiltere'	,19,5,	4),
('Rashford',25,'Kanat','Man.Utd','Ýngiltere',26,14,	3),
('B.Fernandes',	28,	'Orta Saha','Man.Utd','Ýngiltere',25,	5,	6),
('Sancho',22,'Kanat','Man.Utd','Ýngiltere',14,	4,	1),
('Lewandowski',	34,	'Forvet','Barcelona',	'Ýspanya',	21,	15,	5),
('Pedri',20,'Orta Saha','Barcelona','Ýspanya',	21,	6,	0),
('Raphinha',26,	'Kanat','Barcelona','Ýspanya',	24,	6,	4),
('Benzema',	35,	'Forvet','Real Madrid',	'Ýspanya',	26,	11,	3),
('Vinicius Jr.',22,	'Kanat','Real Madrid',	'Ýspanya',	24,	8,	4),
('Valverde',24,	'Orta Saha','Real Madrid',	'Ýspanya',	25,	7,	2),
('Morata',30,'Forvet','Atletico Madrid','Ýspanya',	25,	10,	1),
('Griezman',31,	'Forvet','Atletico Madrid',	'Ýspanya',	25,	8,	8),
('Correa',28,'Kanat','Atletico Madrid','Ýspanya',23,	5,	0),
('Osimhen',	24,'Forvet','Napoli','Ýtalya',	22,	19,	4),
('Kvaratskhelia',22,'Kanat','Napoli','Ýtalya',22,11,9),
('Eljif Elmas',	23,'Orta Saha','Napoli','Ýtalya',	25,	6,	2),
('Martinez',25,	'Forvet','Ýnter','Ýtalya',26,14,	3),
('Dzeko',36,'Forvet','Ýnter','Ýtalya',26,7,	3),
('Barella',	26,	'Orta Saha','Ýnter','Ýtalya',25,	5,	6),
('Ýmmobile',33,	'Forvet','Lazio','Ýtalya',20,	9,	3),
('Zaccagni',27,	'Kanat','Lazio','Ýtalya',	23,	8,	4),
('Anderson',29,	'Kanat','Lazio','Ýtalya',26,	6,	2),
('Musiala',	20,	'Orta Saha','Bayern Münih',	'Almanya',	23,	11,	8),
('Choupo-Moting',33,'Forvet','Bayern Münih','Almanya',17,	10,	2),
('Gnabry',27,'Kanat','Bayern Münih','Almanya',24,	9,	4),
('Brandt',26,'Kanat','B. Dortmund',	'Almanya',23,	8,	4),
('Moukoko',18,'Forvet','B. Dortmund','Almanya',18,6,	3),
('Reyna',20,'Orta Saha','B. Dortmund','Almanya',20,5,0),
('Nkunku',25,'Forvet','RB Leipzig','Almanya',18,12,1),
('Werner',27,'Forvet','RB Leipzig',	'Almanya',	18,	7,	2),
('Forsberg',31,	'Orta Saha','RB Leipzig','Almanya',	21,	6,	3),
('Mbappe',24,'Forvet','Paris SG','Fransa',	23,	19,	3),
('Messi',35,'Kanat','Paris SG','Fransa'	,22,	13,	13),
('Neymar',31,'Kanat','Paris SG','Fransa',18,	13,	11),
('Sanchez',34,'Forvet','Marsilya','Fransa',24,	10,	1),
('Tavares',23,'Sol Bek','Marsilya','Fransa',23,	6,	0),
('Mbemba',28,'Stoper','Marsilya','Fransa',	26,	4,	0),
('Openda',23,'Forvet','Lens','Fransa',27,12,	2),
('Sotoca',32,'Forvet','Lens','Fransa',27,	6,	7),
('Said',27,	'Forvet','Lens','Fransa',17,5	,0)

Select Distinct(Oynadigi_Lig) from FutbolData1

SELECT COUNT(Ad) AS ADCOUNT FROM FutbolData1

SELECT MAX(Gol_Sayisi) FROM FutbolData1

SELECT AVG(Gol_Sayisi) FROM FutbolData1

select * from FutbolData1 Where Ad = 'Messi'

select * from FutbolData1 Where Ad <> 'Messi'

select * from FutbolData1 Where Gol_Sayisi < 10

select * from FutbolData1 Where Gol_Sayisi < 10 AND Oynadigi_Lig = 'Ýngiltere'

select * from FutbolData1 Where Gol_Sayisi < 10 OR Oynadigi_Lig = 'Ýngiltere'

select * from FutbolData1 Where Oynadigi_Takim LIKE 'A%'

select * from FutbolData1 Where Ad is null

select * from FutbolData1 Where Ad is not null

select * from FutbolData1 Where Ad in ('Messi','Mahrez')

select Mevki, COUNT(Mevki) from FutbolData1
GROUP BY Mevki
 
select Mevki, COUNT(Mevki) AS MevkiCount from FutbolData1
GROUP BY Mevki
ORDER BY MevkiCount

CREATE TABLE KullanýlanAyak
(Ad varchar(50),KullandýðýAyak varchar(50))


INSERT INTO	KullanýlanAyak VALUES
('Martinelli','Sað'),
('Saka','Sol'),
('Odegaard','Sol'),
('Haaland','Sol'),
('Foden','Sol'),
('Mahrez','Sol'),
('Rashford','Sað'),
('B.Fernandes','Sað'),
('Sancho','Sað'),
('Lewandowski','Sað'),
('Pedri','Sað'),
('Raphinha','Sað'),
('Benzema','Sað'),
('Vinicius Jr.','Sað'),
('Valverde','Sað'),
('Morata','Sað'),
('Griezman','Sol'),
('Correa','Sað'),
('Osimhen','Sað'),
('Kvaratskhelia','Sað'),
('Eljif Elmas','Sað'),
('Martinez','Sað'),
('Dzeko','Sað'),
('Barella','Sað'),
('Ýmmobile','Sað'),
('Zaccagni','Sað'),
('Anderson','Sol'),
('Musiala','Sað'),
('Choupo-Moting','Sað'),
('Gnabry','Sað'),
('Brandt','Sað'),
('Moukoko','Sol'),
('Reyna','Sað'),
('Nkunku','Sað'),
('Werner','Sað'),
('Forsberg','Sað'),
('Mbappe','Sað'),
('Messi','Sol'),
('Neymar','Sað'),
('Sanchez','Sað'),
('Tavares','Sol'),
('Mbemba','Sað'),
('Openda','Sað'),
('Sotoca','Sað'),
('Said','Sað')


select* from FUTBOL.dbo.FutbolData1
Inner Join FUTBOL.dbo.KullanýlanAyak
ON FutbolData1.Ad = KullanýlanAyak.Ad

select* from FUTBOL.dbo.FutbolData1
Left Outer Join FUTBOL.dbo.KullanýlanAyak
ON FutbolData1.Ad = KullanýlanAyak.Ad


select Ad, Oynadigi_Takim, Yas,
CASE
	WHEN Yas < 25 THEN 'Genç'
	WHEN Yas Between 25 and 30 then 'Orta Yaþlý'
	Else 'Yaþlý'
End AS YasKategori
from Futbol.dbo.FutbolData1

Select Mevki, COUNT(Gol_Sayisi) from FutbolData1
Group By Mevki
Having COUNT(Gol_Sayisi) >10

select *from FutbolData1 AS Fut
INNER JOIN KullanýlanAyak AS Ayak
	ON Fut.Ad = Ayak.Ad

Select Ad,TRIM(Ad) As ADTrim 
from FutbolData1

Select Ad,LOWER(Ad) 
from FutbolData1

Select Ad,UPPER(Ad) 
from FutbolData1


select * from FutbolData1
select* from KullanýlanAyak


--Ýki Tabloyu birleþtirip Kullanýlan_Ayak sütununu ekliyoruz
ALTER TABLE FutbolData1
ADD Kullanýlan_Ayak VARCHAR(10);

UPDATE FutbolData1
SET Kullanýlan_Ayak = KA.KullandýðýAyak
FROM KullanýlanAyak KA
WHERE FutbolData1.Ad = KA.Ad;

--Tablodaki Sütun ve satýrý silmek
ALTER TABLE FutbolData1
DROP COLUMN Kullandýðý_Ayak;

DELETE FROM FutbolData1
WHERE Ad IS NULL;

select * from FutbolData1
select* from KullanýlanAyak

ALTER TABLE FutbolData1
ADD Aldýðý_süre INT;

UPDATE FutbolData1
SET Aldýðý_Süre = CASE
                      WHEN Ad = 'martinelli' THEN 2789
                      WHEN Ad = 'saka' THEN 3181
					  WHEN Ad = 'odegaard'THEN 3127
					  WHEN Ad = 'haaland' THEN 2769
					  WHEN Ad = 'foden' THEN 1842
					  WHEN Ad = 'mahrez' THEN 1920
					  WHEN Ad = 'rashford' THEN 2879
					  WHEN Ad = 'b.fernandes' THEN 3316
					  WHEN Ad = 'sancho' THEN 1686
					  WHEN Ad = 'lewandowski' THEN 2847
					  WHEN Ad = 'pedri' THEN 1976
					  WHEN Ad = 'raphinha' THEN 2072
					  WHEN Ad = 'benzema' THEN 2038
					  WHEN Ad = 'vinicius jr.' THEN 2823
					  WHEN Ad = 'valverde' THEN 2502
					  WHEN Ad = 'morata' THEN 1900
					  WHEN Ad = 'griezman' THEN 2859
					  WHEN Ad = 'correa' THEN 1455
					  WHEN Ad = 'osimhen' THEN 2567
					  WHEN Ad = 'Kvaratskhelia' THEN 2519
					  WHEN Ad = 'Eljif Elmas' THEN 1628
					  WHEN Ad = 'martinez' THEN 2576
					  WHEN Ad = 'dzeko' THEN 1731
					  WHEN Ad = 'barella' THEN 2613
					  WHEN Ad = 'immobile' THEN 2221
					  WHEN Ad = 'zaccagni' THEN 2770
					  WHEN Ad = 'anderson' THEN 2958
					  WHEN Ad = 'musiala' THEN 2198
					  WHEN Ad = 'Choupo-Moting' THEN 1112
					  WHEN Ad = 'gnabry' THEN 1941
					  WHEN Ad = 'Brandt' THEN 2397
					  WHEN Ad = 'Moukoko' THEN 1141
					  WHEN Ad = 'Reyna' THEN 625
					  WHEN Ad = 'Nkunku' THEN 1897
					  WHEN Ad = 'Werner' THEN 1937
					  WHEN Ad = 'Forsberg' THEN 1482
					  WHEN Ad = 'Mbappe' THEN 2818
					  WHEN Ad = 'Messi' THEN 2837
					  WHEN Ad = 'Neymar' THEN 1537
					  WHEN Ad = 'Sanchez' THEN 2679
					  WHEN Ad = 'Tavares' THEN 2349
					  WHEN Ad = 'Mbemba' THEN 2849
					  WHEN Ad = 'Openda' THEN 2517
					  WHEN Ad = 'Sotoca' THEN 3054
					  WHEN Ad = 'Said' THEN 644
                      ELSE Aldýðý_süre
                  END;

UPDATE FutbolData1
SET Gol_Sayisi = CASE
                      WHEN Ad = 'martinelli' THEN 15
                      WHEN Ad = 'saka' THEN 14
					  WHEN Ad = 'odegaard'THEN 15
					  WHEN Ad = 'haaland' THEN 36
					  WHEN Ad = 'foden' THEN 11
					  WHEN Ad = 'mahrez' THEN 5
					  WHEN Ad = 'rashford' THEN 17
					  WHEN Ad = 'b.fernandes' THEN 8
					  WHEN Ad = 'sancho' THEN 6
					  WHEN Ad = 'lewandowski' THEN 23
					  WHEN Ad = 'pedri' THEN 6
					  WHEN Ad = 'raphinha' THEN 7
					  WHEN Ad = 'benzema' THEN 19
					  WHEN Ad = 'vinicius jr.' THEN 10
					  WHEN Ad = 'valverde' THEN 7
					  WHEN Ad = 'morata' THEN 13
					  WHEN Ad = 'griezman' THEN 15
					  WHEN Ad = 'correa' THEN 9
					  WHEN Ad = 'osimhen' THEN 26
					  WHEN Ad = 'Kvaratskhelia' THEN 12
					  WHEN Ad = 'Eljif Elmas' THEN 6
					  WHEN Ad = 'martinez' THEN 21
					  WHEN Ad = 'dzeko' THEN 9
					  WHEN Ad = 'barella' THEN 6
					  WHEN Ad = 'immobile' THEN 12
					  WHEN Ad = 'zaccagni' THEN 10
					  WHEN Ad = 'anderson' THEN 9
					  WHEN Ad = 'musiala' THEN 12
					  WHEN Ad = 'Choupo-Moting' THEN 10
					  WHEN Ad = 'gnabry' THEN 14
					  WHEN Ad = 'Brandt' THEN 9
					  WHEN Ad = 'Moukoko' THEN 7
					  WHEN Ad = 'Reyna' THEN 7
					  WHEN Ad = 'Nkunku' THEN 16
					  WHEN Ad = 'Werner' THEN 9
					  WHEN Ad = 'Forsberg' THEN 6
					  WHEN Ad = 'Mbappe' THEN 29
					  WHEN Ad = 'Messi' THEN 16
					  WHEN Ad = 'Neymar' THEN 13
					  WHEN Ad = 'Sanchez' THEN 14
					  WHEN Ad = 'Tavares' THEN 6
					  WHEN Ad = 'Mbemba' THEN 5
					  WHEN Ad = 'Openda' THEN 21
					  WHEN Ad = 'Sotoca' THEN 7
					  WHEN Ad = 'Said' THEN 5
					  ELSE Gol_Sayisi
                  END;



UPDATE FutbolData1
SET Asist_Sayisi = CASE
                      WHEN Ad = 'martinelli' THEN 5
                      WHEN Ad = 'saka' THEN 11
					  WHEN Ad = 'odegaard'THEN 7
					  WHEN Ad = 'haaland' THEN 8
					  WHEN Ad = 'foden' THEN 6
					  WHEN Ad = 'mahrez' THEN 10
					  WHEN Ad = 'rashford' THEN 5
					  WHEN Ad = 'b.fernandes' THEN 8
					  WHEN Ad = 'sancho' THEN 3
					  WHEN Ad = 'lewandowski' THEN 7
					  WHEN Ad = 'pedri' THEN 1
					  WHEN Ad = 'raphinha' THEN 7
					  WHEN Ad = 'benzema' THEN 3
					  WHEN Ad = 'vinicius jr.' THEN 9
					  WHEN Ad = 'valverde' THEN 4
					  WHEN Ad = 'morata' THEN 2
					  WHEN Ad = 'griezman' THEN 16
					  WHEN Ad = 'correa' THEN 1
					  WHEN Ad = 'osimhen' THEN 4
					  WHEN Ad = 'Kvaratskhelia' THEN 10
					  WHEN Ad = 'Eljif Elmas' THEN 3
					  WHEN Ad = 'martinez' THEN 6
					  WHEN Ad = 'dzeko' THEN 3
					  WHEN Ad = 'barella' THEN 6
					  WHEN Ad = 'immobile' THEN 5
					  WHEN Ad = 'zaccagni' THEN 6
					  WHEN Ad = 'anderson' THEN 2
					  WHEN Ad = 'musiala' THEN 10
					  WHEN Ad = 'Choupo-Moting' THEN 2
					  WHEN Ad = 'gnabry' THEN 5
					  WHEN Ad = 'Brandt' THEN 8
					  WHEN Ad = 'Moukoko' THEN 3
					  WHEN Ad = 'Reyna' THEN 2
					  WHEN Ad = 'Nkunku' THEN 4
					  WHEN Ad = 'Werner' THEN 3
					  WHEN Ad = 'Forsberg' THEN 4
					  WHEN Ad = 'Mbappe' THEN 5
					  WHEN Ad = 'Messi' THEN 16
					  WHEN Ad = 'Neymar' THEN 11
					  WHEN Ad = 'Sanchez' THEN 3
					  WHEN Ad = 'Tavares' THEN 0
					  WHEN Ad = 'Mbemba' THEN 0
					  WHEN Ad = 'Openda' THEN 4
					  WHEN Ad = 'Sotoca' THEN 9
					  WHEN Ad = 'Said' THEN 0
					  ELSE Asist_Sayisi
                  END;


UPDATE FutbolData1
SET Oynadigi_Mac_Sayisi = CASE
                      WHEN Ad = 'martinelli' THEN 34
                      WHEN Ad = 'saka' THEN 38
					  WHEN Ad = 'odegaard'THEN 37
					  WHEN Ad = 'haaland' THEN 35
					  WHEN Ad = 'foden' THEN 32
					  WHEN Ad = 'mahrez' THEN 30
					  WHEN Ad = 'rashford' THEN 35
					  WHEN Ad = 'b.fernandes' THEN 37
					  WHEN Ad = 'sancho' THEN 26
					  WHEN Ad = 'lewandowski' THEN 34
					  WHEN Ad = 'pedri' THEN 26
					  WHEN Ad = 'raphinha' THEN 36
					  WHEN Ad = 'benzema' THEN 24
					  WHEN Ad = 'vinicius jr.' THEN 33
					  WHEN Ad = 'valverde' THEN 34
					  WHEN Ad = 'morata' THEN 36
					  WHEN Ad = 'griezman' THEN 38
					  WHEN Ad = 'correa' THEN 35
					  WHEN Ad = 'osimhen' THEN 32
					  WHEN Ad = 'Kvaratskhelia' THEN 34
					  WHEN Ad = 'Eljif Elmas' THEN 36
					  WHEN Ad = 'martinez' THEN 38
					  WHEN Ad = 'dzeko' THEN 33
					  WHEN Ad = 'barella' THEN 35
					  WHEN Ad = 'immobile' THEN 31
					  WHEN Ad = 'zaccagni' THEN 35
					  WHEN Ad = 'anderson' THEN 38
					  WHEN Ad = 'musiala' THEN 33
					  WHEN Ad = 'Choupo-Moting' THEN 19
					  WHEN Ad = 'gnabry' THEN 34
					  WHEN Ad = 'Brandt' THEN 32
					  WHEN Ad = 'Moukoko' THEN 26
					  WHEN Ad = 'Reyna' THEN 22
					  WHEN Ad = 'Nkunku' THEN 25
					  WHEN Ad = 'Werner' THEN 27
					  WHEN Ad = 'Forsberg' THEN 30
					  WHEN Ad = 'Mbappe' THEN 34
					  WHEN Ad = 'Messi' THEN 32
					  WHEN Ad = 'Neymar' THEN 20
					  WHEN Ad = 'Sanchez' THEN 35
					  WHEN Ad = 'Tavares' THEN 31
					  WHEN Ad = 'Mbemba' THEN 36
					  WHEN Ad = 'Openda' THEN 38
					  WHEN Ad = 'Sotoca' THEN 38
					  WHEN Ad = 'Said' THEN 21
					  ELSE Oynadigi_Mac_Sayisi
                  END;



ALTER TABLE FutbolData1
ADD Oynanan_Doksan_Dakika_Sayýsý DECIMAL(10, 2);

UPDATE FutbolData1
SET Oynanan_Doksan_Dakika_Sayýsý = CAST(Aldýðý_süre AS DECIMAL(10, 2)) / 90;


ALTER TABLE FutbolData1
ADD Doksan_Dakika_Baþýna_Gol DECIMAL(10, 2);

UPDATE FutbolData1
SET Doksan_Dakika_Baþýna_Gol = CAST(Gol_Sayisi AS DECIMAL(10, 2)) / Oynanan_Doksan_Dakika_Sayýsý;

ALTER TABLE FutbolData1
ADD xG DECIMAL(10, 1);

UPDATE FutbolData1
SET xG = CASE
                      WHEN Ad = 'martinelli' THEN 9.3
                      WHEN Ad = 'saka' THEN 11.2
					  WHEN Ad = 'odegaard'THEN 10.0
					  WHEN Ad = 'haaland' THEN 28.4
					  WHEN Ad = 'foden' THEN 5.9
					  WHEN Ad = 'mahrez' THEN 5.5
					  WHEN Ad = 'rashford' THEN 15.4
					  WHEN Ad = 'b.fernandes' THEN 9.3
					  WHEN Ad = 'sancho' THEN 4.2
					  WHEN Ad = 'lewandowski' THEN 24.3
					  WHEN Ad = 'pedri' THEN 4.9
					  WHEN Ad = 'raphinha' THEN 9.3
					  WHEN Ad = 'benzema' THEN 21.5
					  WHEN Ad = 'vinicius jr.' THEN 10.5
					  WHEN Ad = 'valverde' THEN 4.3
					  WHEN Ad = 'morata' THEN 11.8
					  WHEN Ad = 'griezman' THEN 12.3
					  WHEN Ad = 'correa' THEN 7.2
					  WHEN Ad = 'osimhen' THEN 21.3
					  WHEN Ad = 'Kvaratskhelia' THEN 8.2
					  WHEN Ad = 'Eljif Elmas' THEN 4.0
					  WHEN Ad = 'martinez' THEN 18.1
					  WHEN Ad = 'dzeko' THEN 9.7
					  WHEN Ad = 'barella' THEN 3.2
					  WHEN Ad = 'immobile' THEN 14.2
					  WHEN Ad = 'zaccagni' THEN 6.7
					  WHEN Ad = 'anderson' THEN 6.0
					  WHEN Ad = 'musiala' THEN 8.0
					  WHEN Ad = 'Choupo-Moting' THEN 6.1
					  WHEN Ad = 'gnabry' THEN 11.2
					  WHEN Ad = 'Brandt' THEN 5.2
					  WHEN Ad = 'Moukoko' THEN 6.4
					  WHEN Ad = 'Reyna' THEN 4.3
					  WHEN Ad = 'Nkunku' THEN 14.4
					  WHEN Ad = 'Werner' THEN 9.1
					  WHEN Ad = 'Forsberg' THEN 4.9
					  WHEN Ad = 'Mbappe' THEN 26.3
					  WHEN Ad = 'Messi' THEN 15.5
					  WHEN Ad = 'Neymar' THEN 8.1
					  WHEN Ad = 'Sanchez' THEN 12.6
					  WHEN Ad = 'Tavares' THEN 4.5
					  WHEN Ad = 'Mbemba' THEN 3.1
					  WHEN Ad = 'Openda' THEN 18.5
					  WHEN Ad = 'Sotoca' THEN 10.5
					  WHEN Ad = 'Said' THEN 3.3
					  ELSE xG
                  END;

select * from FutbolData1
