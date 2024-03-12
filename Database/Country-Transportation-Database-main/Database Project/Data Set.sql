--21 tane Citizen Card �rne�i tan�mlad�k.
INSERT INTO CITIZEN_CARD (Card_ID, Money_Amount) VALUES
(0, 0.00),
(1, 10000.00),
(2, 15000.50),
(3, 20000.00),
(4, 25000.75),
(5, 30000.00),
(6, 35000.25),
(7, 40000.00),
(8, 45000.50),
(9, 50000.00),
(10, 55000.75),
(11, 60000.00),
(12, 65000.25),
(13, 70000.00),
(14, 75000.50),
(15, 80000.00),
(16, 85000.75),
(17, 90000.00),
(18, 95000.25),
(19, 100000.00),
(20, 105000.50),
(21, 110000.00);

--21 tane Person tan�mlad�k.
INSERT INTO PERSON (Name, Surname, TC, Gender, Birth_Date, Phone, Email, Card_ID) VALUES
('NO NAME', '----', '00000000000', '----', '1999-01-01', '----', '----', 0),
('Ali', 'Y�lmaz', '12345678901', 'Erkek', '1980-01-01', '05001112233', 'ali.yilmaz@example.com', 1),
('Ay�e', 'Demir', '12345678902', 'Kad�n', '1985-02-02', '05001112234', 'ayse.demir@example.com', 2),
('Ahmet', 'Kaya', '12345678903', 'Erkek', '1990-03-03', '05001112235', 'ahmet.kaya@example.com', 3),
('Elif', '�elik', '12345678904', 'Kad�n', '1995-04-04', '05001112236', 'elif.celik@example.com', 4),
('Mehmet', '�zt�rk', '12345678905', 'Erkek', '1992-05-05', '05001112237', 'mehmet.ozturk@example.com', 5),
('Zeynep', 'Ko�', '12345678906', 'Kad�n', '1988-06-06', '05001112238', 'zeynep.koc@example.com', 6),
('Emre', 'Ayd�n', '12345678907', 'Erkek', '1983-07-07', '05001112239', 'emre.aydin@example.com', 7),
('Selin', 'Can', '12345678908', 'Kad�n', '1996-08-08', '05001112240', 'selin.can@example.com', 8),
('Kerem', 'Y�ld�r�m', '12345678909', 'Erkek', '1981-09-09', '05001112241', 'kerem.yildirim@example.com', 9),
('Asl�', 'Kara', '12345678910', 'Kad�n', '1993-10-10', '05001112242', 'asli.kara@example.com', 10),
('Burak', '�etin', '12345678911', 'Erkek', '1994-11-11', '05001112243', 'burak.cetin@example.com', 11),
('Seda', 'Akar', '12345678912', 'Kad�n', '1987-12-12', '05001112244', 'seda.akar@example.com', 12),
('Caner', 'Tezcan', '12345678913', 'Erkek', '1982-01-13', '05001112245', 'caner.tezcan@example.com', 13),
('Melis', 'Uzun', '12345678914', 'Kad�n', '1991-02-14', '05001112246', 'melis.uzun@example.com', 14),
('O�uz', 'Kurt', '12345678915', 'Erkek', '1989-03-15', '05001112247', 'oguz.kurt@example.com', 15),
('Leyla', 'G�ne�', '12345678916', 'Kad�n', '1997-04-16', '05001112248', 'leyla.gunes@example.com', 16),
('Murat', '�ahin', '12345678917', 'Erkek', '1984-05-17', '05001112249', 'murat.sahin@example.com', 17),
('Esra', 'Y�ld�z', '12345678918', 'Kad�n', '1986-06-18', '05001112250', 'esra.yildiz@example.com', 18),
('Furkan', '�zdemir', '12345678919', 'Erkek', '1995-07-19', '05001112251', 'furkan.ozdemir@example.com', 19),
('Deniz', 'Arslan', '12345678920', 'Kad�n', '1998-08-20', '05001112252', 'deniz.arslan@example.com', 20),
('Sinan', 'K�l��', '12345678921', 'Erkek', '1999-09-21', '05001112253', 'sinan.kilic@example.com', 21);

-- �irketler (T�rkiye'ye �zg�)
INSERT INTO COMPANY (Company_Name) VALUES
('NO NAME'),
('T�rk Hava Yollar�'),
('Pegasus Havayollar�'),
('AnadoluJet'),
('Metro Turizm'),
('Ulusoy Seyahat'),
('Kamil Ko�'),
('Enterprise Ara� Kiralama'),
('Garenta Ara� Kiralama'),
('Avis Ara� Kiralama'),
('�DO'),
('�zban'),
('TCDD'),
('Mart� �stanbul');

INSERT INTO LOCATIONS (Location_Id, Company_Name, Address) VALUES
(0, 'NO NAME', '------------'),
-- Plane Companies (T�rk Hava Yollar�)
(1, 'T�rk Hava Yollar�', 'Ye�ilk�y Mah., Bak�rk�y, �stanbul'),
(2, 'Pegasus Havayollar�', 'Kurtk�y Mah., Pendik, �stanbul'),
(3, 'AnadoluJet', 'Akyurt Mah., Ankara'),

-- Bus Companies (Otob�s �irketleri)
(4, 'Metro Turizm', 'Esentepe Mah., �i�li, �stanbul'),
(5, 'Ulusoy Seyahat', 'Ulus Mah., Alt�nda�, Ankara'),
(6, 'Kamil Ko�', 'Konak Mah., Konak, �zmir'),

-- Vehicle Companies (Ara� Kiralama �irketleri - Birden fazla konum)
(7, 'Enterprise Ara� Kiralama', 'Seyhan Mah., Adana'),
(8, 'Enterprise Ara� Kiralama', 'Bornova Mah., �zmir'),
(9, 'Enterprise Ara� Kiralama', '�ankaya Mah., Ankara'),
(10, 'Garenta Ara� Kiralama', 'Be�ikta� Mah., �stanbul'),
(11, 'Garenta Ara� Kiralama', 'Konyaalt� Mah., Antalya'),
(12, 'Garenta Ara� Kiralama', 'Osmangazi Mah., Bursa'),
(13, 'Avis Ara� Kiralama', 'Ba�lar Mah., Diyarbak�r'),
(14, 'Avis Ara� Kiralama', '�ukurova Mah., Adana'),
(15, 'Avis Ara� Kiralama', 'Melikgazi Mah., Kayseri'),

-- Ferry Company (Feribot �irketi)
(16, '�DO', 'Yenikap� Feribot Terminali, Fatih, �stanbul'),

-- Metro Company (Metro �irketi)
(17, '�zban', 'Alsancak Gar�, Konak, �zmir'),

-- High Speed Train Company (H�zl� Tren �irketi)
(18, 'TCDD', 'Ankara Gar�, Alt�nda�, Ankara'),

-- MARTI Company (Elektrikli Scooter)
(19, 'Mart� �stanbul', 'Beyo�lu, �stanbul');

INSERT INTO JOURNEY (Journey_Id, Company_Name) VALUES
(0000, 'NO NAME'),

-- Plane Journey
(1001, 'T�rk Hava Yollar�'),
(1002, 'T�rk Hava Yollar�'),
(1003, 'Pegasus Havayollar�'),
(1004, 'AnadoluJet'),

-- Bus Journey
(2001, 'Metro Turizm'),
(2002, 'Ulusoy Seyahat'),
(2003, 'Kamil Ko�'),

-- Vehicle Journey
(3001, 'Enterprise Ara� Kiralama'),
(3002, 'Garenta Ara� Kiralama'),
(3003, 'Avis Ara� Kiralama'),

-- Ferry Journey
(4001, '�DO'),
(4002, '�DO'),
(4003, '�DO'),

-- Metro Journey
(5001, '�zban'),
(5002, '�zban'),
(5003, '�zban'),

-- High Speed Train Journey
(6001, 'TCDD'),
(6002, 'TCDD'),
(6003, 'TCDD'),

-- MARTI Journey
(7001, 'Mart� �stanbul'),
(7002, 'Mart� �stanbul'),
(7003, 'Mart� �stanbul');

INSERT INTO AIRPORT (Airport_Name, City) VALUES

('�stanbul Havaliman�', '�stanbul'),
('Sabiha G�k�en Havaliman�', '�stanbul'),
('Ankara Esenbo�a Havaliman�', 'Ankara'),
('�zmir Adnan Menderes Havaliman�', '�zmir'),
('Antalya Havaliman�', 'Antalya'),
('Adana �akirpa�a Havaliman�', 'Adana'),
('Trabzon Havaliman�', 'Trabzon');

INSERT INTO AIRPLANE (Aircraft_Type, Max_Range, High_Max_Speed, Wingspan_Length) VALUES
('Boeing 737', 6500, 850, 35),
('Airbus A320', 6100, 830, 34),
('Boeing 777', 13500, 905, 61),
('Airbus A380', 15200, 945, 80);


INSERT INTO PLANE_JOURNEY (
    Journey_Id, Aircraft_Type, Departure_Airport_Name, Arrival_Airport_Name,
    Departure_Time, Departure_Date, Arrival_Time, Arrival_Date, Next_Journey_ID
) VALUES
(1002, 'Airbus A320', 'Ankara Esenbo�a Havaliman�', '�zmir Adnan Menderes Havaliman�', 
 '10:00', '2023-07-15', '11:25', '2023-07-15', NULL),
(1001, 'Boeing 737', '�stanbul Havaliman�', 'Ankara Esenbo�a Havaliman�', 
 '08:00', '2023-07-15', '09:15', '2023-07-15', 1002),
(1003, 'Boeing 777', 'Antalya Havaliman�', 'Adana �akirpa�a Havaliman�', 
 '13:30', '2023-07-16', '14:45', '2023-07-16', NULL),
(1004, 'Airbus A380', 'Sabiha G�k�en Havaliman�', 'Trabzon Havaliman�', 
 '16:00', '2023-07-17', '17:50', '2023-07-17', NULL);

INSERT INTO BUS (Bus_ID, Fuel_Type, Number_of_Seats, Transmission_Type, Bus_Model) VALUES
(1, 'Dizel', 50, 'Manuel', 'Mercedes-Benz Travego'),
(2, 'Dizel', 45, 'Otomatik', 'Setra S 417 HDH'),
(3, 'Elektrikli', 30, 'Otomatik', 'Temsa Avenue Electron');

INSERT INTO BUS_STATION (Station_Name) VALUES
('�stanbul Otogar�'),
('Ankara A�T�'),
('�zmir Otogar�'),
('Antalya Otogar�'),
('Adana Otogar�'),
('Bursa Otogar�'),
('Trabzon Otogar�'),
('Konya Otogar�'),
('Kayseri Otogar�'),
('Samsun Otogar�'),
('Edirne Otogar�'),
('Diyarbak�r Otogar�'),
('Mersin Otogar�'),
('Gaziantep Otogar�'),
('Sivas Otogar�'),
('Erzurum Otogar�'),
('Van Otogar�'),
('Mu�la Otogar�'),
('Bal�kesir Otogar�'),
('�anakkale Otogar�'),
('Kocaeli Otogar�'),
('Sakarya Otogar�'),
('Afyonkarahisar Otogar�'),
('U�ak Otogar�'),
('Ayd�n Otogar�'),
('Denizli Otogar�'),
('Burdur Otogar�'),
('Gebze Otogar�');

INSERT INTO BUS_JOURNEY (
    Journey_Id, Bus_Id, Departure_Station, Departure_Time, Departure_Date, Arrival_Bus_Station, Arrival_Time, Arrival_Date
) VALUES
(2001, 1, '�stanbul Otogar�', '08:00', '2023-07-15', 'Ankara A�T�', '14:00', '2023-07-15'),
(2002, 2, 'Ankara A�T�', '09:00', '2023-07-16', '�zmir Otogar�', '17:00', '2023-07-16'),
(2003, 3, '�zmir Otogar�', '07:30', '2023-07-17', 'Antalya Otogar�', '13:30', '2023-07-17');

INSERT INTO BUS_STOPS (Station_Name, Bus_Journey_Id, Arrival_Time, Arrival_Date, Departure_Time, Departure_Date) VALUES
-- �stanbul'dan Ankara'ya seyahat (2001)
('Gebze Otogar�', 2001, '09:30', '2023-07-15', '09:45', '2023-07-15'),
('Kocaeli Otogar�', 2001, '10:30', '2023-07-15', '10:45', '2023-07-15'),
('Sakarya Otogar�', 2001, '11:30', '2023-07-15', '11:45', '2023-07-15'),

-- Ankara'dan �zmir'e seyahat (2002)
('Konya Otogar�', 2002, '10:30', '2023-07-16', '10:45', '2023-07-16'),
('Afyonkarahisar Otogar�', 2002, '13:00', '2023-07-16', '13:15', '2023-07-16'),
('U�ak Otogar�', 2002, '15:00', '2023-07-16', '15:15', '2023-07-16'),

-- �zmir'den Antalya'ya seyahat (2003)
('Ayd�n Otogar�', 2003, '08:00', '2023-07-17', '08:15', '2023-07-17'),
('Denizli Otogar�', 2003, '09:30', '2023-07-17', '09:45', '2023-07-17'),
('Burdur Otogar�', 2003, '11:00', '2023-07-17', '11:15', '2023-07-17');

INSERT INTO VEHICLE (Vehicle_ID, Model, Fuel_Type, Deposite_Fees, Car_Brand, Car_Class, Locations) VALUES
(1, 'Civic', 'Benzin', 500.00, 'Honda', 'Sedan', 'Bornova Mah., �zmir'),
(2, 'Corolla', 'Dizel', 600.00, 'Toyota', 'Sedan', 'Konyaalt� Mah., Antalya'),
(3, 'Model S', 'Elektrik', 1000.00, 'Tesla', 'Sedan', '�ukurova Mah., Adana');

INSERT INTO VEHICLE_JOURNEY (Journey_Id, Vehicle_Id) VALUES
(3001, 1),
(3002, 2),
(3003, 3);

INSERT INTO FERRY (Ferry_Id, Fuel_Type, Ferry_Type, Seat_Count) VALUES
(1, 'Dizel', 'Yolcu Feribotu', 300),
(2, 'Elektrik', 'Araba Feribotu', 100),
(3, 'Dizel-Elektrik Hibrit', 'H�zl� Feribot', 200);

INSERT INTO HARBOR (Port_Name) VALUES
('�stanbul Liman�'),
('�zmir Alsancak Liman�'),
('Mersin Liman�'),
('Antalya Liman�'),
('Trabzon Liman�'),
('Samsun Liman�'),
('Alia�a Liman�'),
('Band�rma Liman�'),
('Tekirda� Liman�'),
('Bodrum Liman�'),
('Ku�adas� Liman�'),
('Fethiye Liman�'),
('�anakkale Liman�'),
('Giresun Liman�'),
('G�k�eada Liman�'),
('Alanya Liman�'),
('Rize Liman�');

INSERT INTO FERRY_JOURNEY (
    Journey_ID, Ferry_ID, Departure_Port, Departure_Time, Departure_Date, Arrival_Port, Arrival_Time, Arrival_Date
) VALUES
(4001, 1, '�stanbul Liman�', '09:00', '2023-08-01', 'Band�rma Liman�', '12:00', '2023-08-01'),
(4002, 2, '�anakkale Liman�', '10:00', '2023-08-02', 'G�k�eada Liman�', '11:30', '2023-08-02'),
(4003, 3, 'Mersin Liman�', '08:00', '2023-08-03', 'Alanya Liman�', '11:00', '2023-08-03');

INSERT INTO FERRY_STOPS (Ferry_Journey_ID, Port_Name, Arrival_Time, Arrival_Date, Departure_Time, Departure_Date) VALUES
-- �stanbul'dan Band�rma'ya seyahat i�in ara duraklar (4001)
(4001, 'Tekirda� Liman�', '10:00', '2023-08-01', '10:15', '2023-08-01'),
(4001, '�anakkale Liman�', '11:00', '2023-08-01', '11:15', '2023-08-01'),

-- �anakkale'den G�k�eada'ya seyahat i�in ara duraklar (4002)
(4002, 'Giresun Liman�', '10:30', '2023-08-02', '10:45', '2023-08-02'),
(4002, 'Samsun Liman�', '11:30', '2023-08-02', '11:45', '2023-08-02'),

-- Mersin'den Alanya'ya seyahat i�in ara duraklar (4003)
(4003, 'Fethiye Liman�', '09:30', '2023-08-03', '09:45', '2023-08-03'),
(4003, 'Bodrum Liman�', '10:30', '2023-08-03', '10:45', '2023-08-03');

INSERT INTO METRO_TRAIN (Train_Number, Train_Type, Vagon_Type, Seat_Count) VALUES
(101, 'Yeralt� Metrosu', 'Standart', 200),
(102, 'Hafif Rayl� Sistem', 'Standart', 150),
(103, 'Yeralt� Metrosu', 'Ekspres', 180);

INSERT INTO METRO_STATION (Station_Name) VALUES
('Konak Metro �stasyonu'),
('Bornova Metro �stasyonu'),
('��yol Metro �stasyonu'),
('Halkap�nar Metro �stasyonu'),
('�ankaya Metro �stasyonu'),
('Fahrettin Altay Metro �stasyonu'),
('Evka-3 Metro �stasyonu'),
('Kar��yaka Metro �stasyonu'),
('B�lge Metro �stasyonu'),
('�irinyer Metro �stasyonu'),
('Hilal Metro �stasyonu'),
('G�ztepe Metro �stasyonu'),
('Poligon Metro �stasyonu'),
('��kuyular Metro �stasyonu');

INSERT INTO METRO_JOURNEY (
    Journey_ID, Train_Number, Departure_Station, Departure_Time, Departure_Date, Arrival_Station, Arrival_Time, Arrival_Date
) VALUES
(5001, 101, 'Konak Metro �stasyonu', '08:30', '2023-09-01', '�ankaya Metro �stasyonu', '09:20', '2023-09-01'),
(5002, 102, 'Halkap�nar Metro �stasyonu', '10:00', '2023-09-02', 'B�lge Metro �stasyonu', '10:30', '2023-09-02'),
(5003, 103, 'Fahrettin Altay Metro �stasyonu', '11:30', '2023-09-03', 'Poligon Metro �stasyonu', '12:20', '2023-09-03');

INSERT INTO METRO_STOPS (Metro_Journey_ID, Station_Name, Arrival_Time, Arrival_Date, Departure_Time, Departure_Date) VALUES
-- 5001 numaral� yolculuk i�in duraklar
(5001, 'Bornova Metro �stasyonu', '08:40', '2023-09-01', '08:42', '2023-09-01'),
(5001, '��yol Metro �stasyonu', '08:50', '2023-09-01', '08:52', '2023-09-01'),
(5001, 'Halkap�nar Metro �stasyonu', '09:05', '2023-09-01', '09:07', '2023-09-01'),

-- 5002 numaral� yolculuk i�in duraklar
(5002, '�ankaya Metro �stasyonu', '10:10', '2023-09-02', '10:12', '2023-09-02'),
(5002, 'Fahrettin Altay Metro �stasyonu', '10:20', '2023-09-02', '10:22', '2023-09-02'),
(5002, 'Evka-3 Metro �stasyonu', '10:30', '2023-09-02', '10:32', '2023-09-02'),
(5002, 'Kar��yaka Metro �stasyonu', '10:40', '2023-09-02', '10:42', '2023-09-02'),

-- 5003 numaral� yolculuk i�in duraklar
(5003, 'Kar��yaka Metro �stasyonu', '11:40', '2023-09-03', '11:42', '2023-09-03'),
(5003, 'B�lge Metro �stasyonu', '11:50', '2023-09-03', '11:52', '2023-09-03'),
(5003, '�irinyer Metro �stasyonu', '12:00', '2023-09-03', '12:02', '2023-09-03'),
(5003, 'G�ztepe Metro �stasyonu', '12:10', '2023-09-03', '12:12', '2023-09-03');

INSERT INTO MARTI (Marti_ID, Battery, Price, Location_X, Location_Y, Type) VALUES
(1, 85, 15.00, 38.419200, 27.128720, 'Standart Scooter'), -- �zmir'in koordinatlar�
(2, 90, 18.00, 39.933365, 32.859742, 'Standart Scooter'), -- Ankara'n�n koordinatlar�
(3, 75, 16.50, 41.008238, 28.978359, 'Standart Scooter'); -- �stanbul'un koordinatlar�

INSERT INTO MARTI_JOURNEY (Journey_ID, Marti_ID) VALUES
(7001, 1),
(7002, 2),
(7003, 3);

INSERT INTO HIGH_SPEED_TRAIN (Train_Number, Train_Type, Vagon_Type, Seat_Count) VALUES
(1, 'Elektrikli', 'Yatakl�', 200),
(2, 'Elektrikli', 'Yemekli', 180),
(3, 'Dizel', 'Kompart�man', 160),
(4, 'Dizel', 'Yatakl�', 200),
(5, 'Hibrit', 'Yemekli', 180);

INSERT INTO HIGH_SPEED_TRAIN_STATION (Station_Name) VALUES
('Ankara Gar'),
('Eski�ehir Gar'),
('Konya Gar'),
('�stanbul Pendik Gar'),
('�stanbul Halkal� Gar'),
('�zmir Gar'),
('Sivas Gar'),
('Polatl� Gar'),
('Boz�y�k Gar'),
('Arifiye Gar'),
('Bilecik Gar'),
('Gebze Gar'),
('�zmit Gar'),
('K�r�kkale Gar'),
('Sincan Gar'),
('Eryaman Gar'),
('Bal�kesir Gar');

INSERT INTO HIGH_SPEED_TRAIN_JOURNEY (
    Journey_ID, Train_Number, Departure_Station, Departure_Time, Departure_Date, Arrival_Station, Arrival_Time, Arrival_Date
) VALUES
(6001, 1, 'Ankara Gar', '08:30', '2023-10-01', 'Sivas Gar', '11:00', '2023-10-01'),
(6002, 2, 'Eski�ehir Gar', '11:00', '2023-10-02', '�stanbul Pendik Gar', '14:00', '2023-10-02'),
(6003, 3, 'Konya Gar', '09:00', '2023-10-03', 'Ankara Gar', '12:00', '2023-10-03');

INSERT INTO HIGH_SPEED_TRAIN_STOPS (
    HIGH_SPEED_TRAIN_Journey_ID, Station_Name, Arrival_Time, Arrival_Date, Departure_Time, Departure_Date
) VALUES
-- 6001 numaral� yolculuk i�in duraklar
(6001, 'Polatl� Gar', '09:00', '2023-10-01', '09:05', '2023-10-01'),
(6001, 'Boz�y�k Gar', '09:45', '2023-10-01', '09:50', '2023-10-01'),
(6001, 'Arifiye Gar', '10:30', '2023-10-01', '10:35', '2023-10-01'),

-- 6002 numaral� yolculuk i�in duraklar
(6002, 'Bilecik Gar', '11:45', '2023-10-02', '11:50', '2023-10-02'),
(6002, 'Gebze Gar', '13:00', '2023-10-02', '13:05', '2023-10-02'),
(6002, '�zmit Gar', '13:45', '2023-10-02', '13:50', '2023-10-02'),

-- 6003 numaral� yolculuk i�in duraklar
(6003, 'K�r�kkale Gar', '09:45', '2023-10-03', '09:50', '2023-10-03'),
(6003, 'Sincan Gar', '10:45', '2023-10-03', '10:50', '2023-10-03'),
(6003, 'Eryaman Gar', '11:20', '2023-10-03', '11:25', '2023-10-03');

INSERT INTO TRANSACTIONS (
    Transaction_Id, TC, Journey_Id, Seat_Number, Total_Price, 
    Scheduled_Arr_Date, Scheduled_Arr_Time, Scheduled_Dep_Date, Scheduled_Dep_Time, 
    Ticket_Category, Departure_Place, Receive_Place, Departure_Place_X, Departure_Place_Y, Receive_Place_X, Receive_Place_Y, Pet, Seat_Reservation, Extra_Baggage_Charges, 
    Purchase_Date, Purchase_Time
) VALUES
(0, '00000000000', 0000, 00, 0.00, '1999-01-01', '23:59', '1999-01-01', '23:59', '-----', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0.00, '1999-01-01', '23:59'),
-- Plane Journey (1001 - 1999)
(1, '12345678901', 1001, 12, 200.00, '2023-07-15', '11:25', '2023-07-15', '08:00', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0.00, '2023-07-10', '14:00'),
(8, '12345678908', 1003, 15, 220.00, '2023-07-16', '14:45', '2023-07-16', '13:30', 'Business', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0.00, '2023-07-11', '12:00'),
(15, '12345678915', 1004, 22, 230.00, '2023-07-17', '17:50', '2023-07-17', '16:00', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0.00, '2023-07-12', '13:00'),

-- Bus Journey (2001 - 2999)
(2, '12345678902', 2001, 3, 150.00, '2023-07-15', '14:00', '2023-07-15', '08:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2023-07-11', '15:00'),
(9, '12345678909', 2002, 5, 160.00, '2023-07-16', '17:00', '2023-07-16', '09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2023-07-12', '13:00'),
(16, '12345678916', 2003, 7, 170.00, '2023-07-17', '13:30', '2023-07-17', '07:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2023-07-13', '15:00'),

-- Vehicle Journey (3001 - 3999)
(3, '12345678903', 3001, NULL, 1000.00, '2023-07-17', '14:00', '2023-07-15', '09:00', NULL, 'Seyhan Mah., Adana', 'Bornova Mah., �zmir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-12', '16:00'),
(10, '12345678910', 3002, NULL, 1450.00, '2023-07-18', '17:00', '2023-07-16', '10:00', NULL, 'Konyaalt� Mah., Antalya', 'Konyaalt� Mah., Antalya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-13', '14:00'),
(17, '12345678917', 3003, NULL, 1400.00, '2023-07-19', '13:30', '2023-07-17', '11:00', NULL, 'Ba�lar Mah., Diyarbak�r', '�ukurova Mah., Adana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-14', '16:00'),

-- Ferry Journey (4001 - 4999)
(4, '12345678904', 4001, 3, 100.00, '2023-08-01', '12:00', '2023-08-01', '09:00', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-07-10', '17:00'),
(11, '12345678911', 4002, 5, 120.00, '2023-08-02', '11:30', '2023-08-02', '10:00', 'Business', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '2023-07-11', '16:00'),
(18, '12345678918', 4003, 7, 110.00, '2023-08-03', '11:00', '2023-08-03', '08:00', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-07-12', '17:00'),

-- Metro Journey (5001 - 5999)
(5, '12345678905', 5001, NULL, 30.00, '2023-09-01', '09:20', '2023-09-01', '08:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01', '08:30'),
(12, '12345678912', 5002, NULL, 35.00, '2023-09-02', '10:30', '2023-09-02', '10:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-02', '10:00'),
(19, '12345678919', 5003, NULL, 40.00, '2023-09-03', '12:20', '2023-09-03', '11:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-03', '11:30'),

-- High Speed Train Journey (6001 - 6999)
(6, '12345678906', 6001, 3, 250.00, '2023-10-01', '11:00', '2023-10-01', '08:30', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11.00, '2023-07-13', '10:00'),
(13, '12345678913', 6002, 5, 270.00, '2023-10-02', '14:00', '2023-10-02', '11:00', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.65, '2023-07-14', '10:00'),
(20, '12345678920', 6003, 7, 280.00, '2023-10-03', '12:00', '2023-10-03', '09:00', 'Business', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, '2023-07-15', '11:00'),

-- Mart� Journey (7001 - 7999)
(7, '12345678907', 7001, NULL, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41.008238, 28.978359, 38.419200, 27.128720, NULL, NULL, NULL, '2023-07-14', '11:00'),
(14, '12345678914', 7002, NULL, 25.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39.92077, 32.85411, 39.933365, 32.859742, NULL, NULL, NULL, '2023-07-15', '12:00'),
(21, '12345678921', 7003, NULL, 30.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38.41885, 27.12872, 41.008238, 28.978359 , NULL, NULL, NULL, '2023-07-16', '13:00');



INSERT INTO SEARCH_HISTORY (History_Id, TC, Journey_Id, Search_Time, Search_Date) VALUES
(1, '12345678901', 1001, '08:00', '2023-07-09'),
(2, '12345678901', 2002, '09:00', '2023-07-08'),
(3, '12345678902', 3002, '10:00', '2023-07-07'),
(4, '12345678902', 4003, '11:00', '2023-07-06'),
(5, '12345678903', 5003, '12:00', '2023-07-05'),
(6, '12345678903', 6001, '13:00', '2023-07-04'),
(7, '12345678904', 7001, '14:00', '2023-07-03'),
(8, '12345678904', 1002, '15:00', '2023-07-02'),
(9, '12345678905', 2001, '16:00', '2023-07-01'),
(10, '12345678905', 3003, '17:00', '2023-06-30'),
(11, '12345678906', 4002, '18:00', '2023-06-29'),
(12, '12345678906', 5002, '19:00', '2023-06-28'),
(13, '12345678907', 6002, '08:30', '2023-06-27'),
(14, '12345678907', 7002, '09:30', '2023-06-26'),
(15, '12345678908', 1003, '10:30', '2023-06-25'),
(16, '12345678908', 2003, '11:30', '2023-06-24'),
(17, '12345678909', 3001, '12:30', '2023-06-23'),
(18, '12345678909', 4001, '13:30', '2023-06-22'),
(19, '12345678910', 5001, '14:30', '2023-06-21'),
(20, '12345678910', 6003, '15:30', '2023-06-20'),
(21, '12345678911', 7003, '16:30', '2023-06-19'),
(22, '12345678911', 1001, '08:15', '2023-06-18'),
(23, '12345678912', 2002, '09:15', '2023-06-17'),
(24, '12345678912', 3002, '10:15', '2023-06-16'),
(25, '12345678913', 4003, '11:15', '2023-06-15'),
(26, '12345678913', 5003, '12:15', '2023-06-14'),
(27, '12345678914', 6001, '13:15', '2023-06-13'),
(28, '12345678914', 7001, '14:15', '2023-06-12'),
(29, '12345678915', 1002, '15:15', '2023-06-11'),
(30, '12345678915', 2001, '16:15', '2023-06-10'),
(31, '12345678916', 3003, '17:15', '2023-06-09'),
(32, '12345678916', 4002, '18:15', '2023-06-08'),
(33, '12345678917', 5002, '19:15', '2023-06-07'),
(34, '12345678917', 6002, '08:45', '2023-06-06'),
(35, '12345678918', 7002, '09:45', '2023-06-05'),
(36, '12345678918', 1003, '10:45', '2023-06-04'),
(37, '12345678919', 2003, '11:45', '2023-06-03'),
(38, '12345678919', 3001, '12:45', '2023-06-02'),
(39, '12345678920', 4001, '13:45', '2023-06-01'),
(40, '12345678920', 5001, '14:45', '2023-05-31'),
(41, '12345678921', 6003, '15:45', '2023-05-30'),
(42, '12345678921', 7003, '16:45', '2023-05-29'),
(43, '12345678901', 1004, '08:30', '2023-05-28'),
(44, '12345678902', 2002, '09:30', '2023-05-27'),
(45, '12345678903', 3001, '10:30', '2023-05-26'),
(46, '12345678904', 4002, '11:30', '2023-05-25'),
(47, '12345678905', 5003, '12:30', '2023-05-24'),
(48, '12345678906', 6001, '13:30', '2023-05-23'),
(49, '12345678907', 7003, '14:30', '2023-05-22'),
(50, '12345678908', 1002, '15:30', '2023-05-21'),
(51, '12345678909', 2003, '16:30', '2023-05-20'),
(52, '12345678910', 3001, '17:30', '2023-05-19'),
(53, '12345678911', 4002, '18:30', '2023-05-18'),
(54, '12345678912', 5003, '19:30', '2023-05-17'),
(55, '12345678913', 6001, '08:00', '2023-05-16'),
(56, '12345678914', 7002, '09:00', '2023-05-15'),
(57, '12345678915', 1002, '10:00', '2023-05-14'),
(58, '12345678916', 2003, '11:00', '2023-05-13'),
(59, '12345678917', 3001, '12:00', '2023-05-12'),
(60, '12345678918', 4003, '13:00', '2023-05-11');
