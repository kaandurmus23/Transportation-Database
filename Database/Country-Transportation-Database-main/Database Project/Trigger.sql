CREATE SEQUENCE Seq_TransactionHistoryId
    AS INT
    START WITH 1
    INCREMENT BY 1;


CREATE TRIGGER trg_InsertTransactionHistory
ON TRANSACTIONS
AFTER INSERT
AS
BEGIN
    INSERT INTO TRANSACTION_HISTORY (History_Id, TC, Transaction_Id, Journey_Id)
    SELECT 
        NEXT VALUE FOR Seq_TransactionHistoryId, -- Sequence'dan sonraki deðeri alýr
        i.TC,
        i.Transaction_Id,
        i.Journey_Id
    FROM inserted i;
END;

-----------------
CREATE TRIGGER trg_UpdateCitizenCardBalance
ON TRANSACTIONS
AFTER INSERT
AS
BEGIN
    UPDATE CITIZEN_CARD
    SET Money_Amount = Money_Amount - i.Total_Price
    FROM inserted i
    INNER JOIN PERSON p ON i.TC = p.TC
    INNER JOIN CITIZEN_CARD cc ON p.Card_ID = cc.Card_ID
    WHERE cc.Card_ID = p.Card_ID;
END;

----------------
CREATE TRIGGER trg_vehiclekonum
ON TRANSACTIONS
AFTER INSERT
AS
BEGIN
    UPDATE VEHICLE
    SET VEHICLE.Locations = i.Receive_Place
    FROM VEHICLE V
    INNER JOIN VEHICLE_JOURNEY VJ ON V.Vehicle_ID = VJ.Vehicle_ID
    INNER JOIN inserted i ON VJ.Journey_Id = i.Journey_Id;
END;
--------------------
CREATE TRIGGER trg_martýkonum
ON TRANSACTIONS
AFTER INSERT
AS
BEGIN
    UPDATE MARTI
    SET MARTI.Location_X = i.Receive_Place_X, MARTI.Location_Y = i.Receive_Place_Y
    FROM MARTI
    INNER JOIN MARTI_JOURNEY ON MARTI.Marti_ID = MARTI_JOURNEY.Marti_ID
    INNER JOIN inserted i ON MARTI_JOURNEY.Journey_Id = i.Journey_Id;
END;
-----------------------
CREATE TRIGGER trg_DecreaseMartiBattery4
ON TRANSACTIONS
AFTER INSERT
AS
BEGIN
    -- Batarya seviyesini rastgele bir miktarla azalt
    UPDATE MARTI
    SET Battery = CASE 
                     -- RAND() ile 5 ile 100 arasýnda rastgele bir deðer üret
                     WHEN Battery - CAST((RAND(CHECKSUM(NEWID())) * 95 + 5) AS INT) < 0 THEN 0 
                     ELSE Battery - CAST((RAND(CHECKSUM(NEWID())) * 95 + 5) AS INT)
                  END
    FROM MARTI
    INNER JOIN MARTI_JOURNEY ON MARTI.Marti_ID = MARTI_JOURNEY.Marti_ID
    INNER JOIN inserted i ON MARTI_JOURNEY.Journey_Id = i.Journey_Id;
END;
------------------------------



