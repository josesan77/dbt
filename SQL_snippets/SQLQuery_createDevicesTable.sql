-- select database to work in
USE FacilityManagement_Core;
GO

IF OBJECT_ID('Devices', 'U') IS NOT NULL
    DROP TABLE Devices;

CREATE TABLE Devices (
    deviceID INT PRIMARY KEY,
    deviceName NVARCHAR(50),
    purchased DATETIME,
	device_state BIT,
	inProduction DATETIME
);
GO

BULK INSERT dbo.Devices
FROM 'F:\Data\DataScience\MSSQL\datasets\devices.csv'
WITH (
    FORMAT = 'CSV',
	CODEPAGE = '65001',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);
GO

-- visszaellenõrzés
SELECT * FROM Devices;