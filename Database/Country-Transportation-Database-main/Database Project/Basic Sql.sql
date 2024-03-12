--CITIZEN  CARD dan veri silindi�inde persondaki foreign keye yans�mas�
/*
DELETE 
FROM CITIZEN_CARD
WHERE Card_ID = 6;

SELECT * 
FROM PERSON 
*/

--Company Name izban olan yolculuklar�n �riket ismi silindi, default de�er NO Name atand�.
/*
DELETE
FROM COMPANY
WHERE Company_Name = '�zban'

SELECT *
FROM JOURNEY
*/

--Company den Location_Id = 10 de�erini sildik.
/*
DELETE 
FROM LOCATIONS
WHERE Company_Name = 'Garenta Ara� Kiralama' And Address = 'Be�ikta� Mah., �stanbul'

SELECT * 
FROM LOCATIONS
*/


-- CITIZEN  CARD dan veri g�ncellendi�inde persondaki foreign keye yans�mas�
/*
UPDATE CITIZEN_CARD
SET Card_ID = 30
WHERE Card_ID = 3;

SELECT * 
FROM PERSON
*/

-- Plane_Journey u�ak veri tipi update �rne�i
/*
UPDATE PLANE_JOURNEY
SET Aircraft_Type = 'Boeing 737'
WHERE Journey_Id = 1002;

SELECT * 
FROM PLANE_JOURNEY
*/

-- Update �rne�i. Aktarmal� u�u�lar�n ini s�relerini g�nceller.
-- Direkt Where IS NOT NULL ile de yap�labilirdi, �e�itlilik olsun diye detayland�r�ld�.
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

-- 2 Tablolu SELECT �rne�i
/*
SELECT *
FROM PERSON AS P, TRANSACTIONS AS T
WHERE P.TC = T.TC AND  P.Name = 'Elif'
*/

-- 2li Sorgu �rne�i
-- Kad�n kullan�c�lar�n Arama ge�mi�i
/*
SELECT DISTINCT P.Name, P.Surname, S.*
FROM PERSON AS P, SEARCH_HISTORY AS S
WHERE P.TC = S.TC AND P.Gender = 'Kad�n'
*/

-- 3 Tablolu �rnek
-- Ferry Journey yapan ki�ileri d�nd�r�r.
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
-- 3 Tablolu �rnek
-- Antalya Havaliman�nda 2023-07-11 tarihinde 100 lira �st�ndeki i�lemin bilgileri.
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
            Departure_Airport_Name = 'Antalya Havaliman�' And P.TC = T.TC
    );*/

-- 3 Tablolu �rnek
--T�rk Havayollar�n�n�n 7000 alt�nda max renge sahip u�aklar�n�n bilgileri
/*
SELECT A.*
FROM JOURNEY AS J, AIRPLANE AS A
WHERE J.Company_Name = 'T�rk Hava Yollar�'   AND J.Journey_Id IN (
	SELECT P.Journey_Id
	FROM  PLANE_JOURNEY AS P
	WHERE P.Aircraft_Type = A.Aircraft_Type AND A.Max_Range < 7000
)
*/
------------------ View �rne�i
CREATE VIEW ALL_TICKET
AS SELECT P.Name, 
		P.Surname,
		 P.Phone,
		 T.Journey_Id,
		 T.Seat_Number
FROM PERSON AS P, TRANSACTIONS AS T
WHERE P.TC = T.TC
------------------
