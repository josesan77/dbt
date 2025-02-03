USE FacilityManagement_Core;
GO

BULK INSERT dbo.Staging_Production1
FROM 'F:\Data\DataScience\MSSQL\datasets\ai4i2020.csv'
WITH (
    FORMAT = 'CSV',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
	CODEPAGE = 'ACP'
);