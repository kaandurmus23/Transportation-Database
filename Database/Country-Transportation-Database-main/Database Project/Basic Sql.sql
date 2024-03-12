--CITIZEN  CARD dan veri silindiðinde persondaki foreign keye yansýmasý
/*
DELETE 
FROM CITIZEN_CARD
WHERE Card_ID = 6;

SELECT * 
FROM PERSON 
*/

--Company Name izban olan yolculuklarýn þriket ismi silindi, default deðer NO Name atandý.
/*
DELETE
FROM COMPANY
WHERE Company_Name = 'Ýzban'

SELECT *
FROM JOURNEY
*/

--Company den Location_Id = 10 deðerini sildik.
/*
DELETE 
FROM LOCATIONS
WHERE Company_Name = 'Garenta Araç Kiralama' And Address = 'Beþiktaþ Mah., Ýstanbul'

SELECT * 
FROM LOCATIONS
*/


-- CITIZEN  CARD dan veri güncellendiðinde persondaki foreign keye yansýmasý
/*
UPDATE CITIZEN_CARD
SET Card_ID = 30
WHERE Card_ID = 3;

SELECT * 
FROM PERSON
*/

-- Plane_Journey uçak veri tipi update örneði
/*
UPDATE PLANE_JOURNEY
SET Aircraft_Type = 'Boeing 737'
WHERE Journey_Id = 1002;

SELECT * 
FROM PLANE_JOURNEY
*/

-- Update Örneði. Aktarmalý uçuþlarýn ini sürelerini günceller.
-- Direkt Where IS NOT NULL ile de yapýlabilirdi, çeþitlilik olsun diye detaylandýrýldý.
/*
UPDATE PLANE_JOURNEY
SET Arrival_Date = '2013-11-01'
WHERE Next_Journey_ID in (
			Select Next_Journey_ID
			From	PLANE_JOURNEY
			Where	Next_Journey_ID IS NOT NULL
)

SELECT *
FROM PLANE_JOURNEY
*/

-- 2 Tablolu SELECT örneði
/*
SELECT *
FROM PERSON AS P, TRANSACTIONS AS T
WHERE P.TC = T.TC AND  P.Name = 'Elif'
*/

-- 2li Sorgu Örneði
-- Kadýn kullanýcýlarýn Arama geçmiþi
/*
SELECT DISTINCT P.Name, P.Surname, S.*
FROM PERSON AS P, SEARCH_HISTORY AS S
WHERE P.TC = S.TC AND P.Gender = 'Kadýn'
*/

-- 3 Tablolu Örnek
-- Ferry Journey yapan kiþileri döndürür.
/*
SELECT 
    P.Name, P.Surname , P.TC
FROM 
    PERSON AS P
WHERE 
    EXISTS (
        SELECT 
            1 
        FROM 
            TRANSACTIONS AS T, FERRY_JOURNEY AS FJ 
      
        WHERE 
            T.TC = P.TC and T.Journey_Id = FJ.Journey_Id
    );
*/
-- 3 Tablolu Örnek
-- Antalya Havalimanýnda 2023-07-11 tarihinde 100 lira üstündeki iþlemin bilgileri.
/*
SELECT 
    T.Transaction_Id, 
    T.Total_Price, 
    T.Purchase_Date,
    J.Journey_Id,
    J.Company_Name,
	P.Name,
	P.Surname,
	P.TC
FROM 
	PERSON AS P,
    TRANSACTIONS AS T
INNER JOIN 
    JOURNEY AS J ON T.Journey_Id = J.Journey_Id 
WHERE 
    T.Purchase_Date = '2023-07-11' AND 
    T.Total_Price > 100.00 AND 
    J.Journey_Id IN (
        SELECT 
            Journey_Id 
        FROM 
            PLANE_JOURNEY
        WHERE 
            Departure_Airport_Name = 'Antalya Havalimaný' And P.TC = T.TC
    );*/

-- 3 Tablolu Örnek
--Türk Havayollarýnýnýn 7000 altýnda max renge sahip uçaklarýnýn bilgileri
/*
SELECT A.*
FROM JOURNEY AS J, AIRPLANE AS A
WHERE J.Company_Name = 'Türk Hava Yollarý'   AND J.Journey_Id IN (
	SELECT P.Journey_Id
	FROM  PLANE_JOURNEY AS P
	WHERE P.Aircraft_Type = A.Aircraft_Type AND A.Max_Range < 7000
)
*/
------------------ View örneði
CREATE VIEW ALL_TICKET
AS SELECT P.Name, 
		P.Surname,
		 P.Phone,
		 T.Journey_Id,
		 T.Seat_Number
FROM PERSON AS P, TRANSACTIONS AS T
WHERE P.TC = T.TC
------------------
