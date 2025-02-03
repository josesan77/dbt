-- select database to work in
USE FacilityManagement_Core;
GO

CREATE SCHEMA Production1schema;
GO

DROP SCHEMA Production1schema;
GO

-- check the list of existing schemas in the database
SELECT * FROM sys.schemas;

SELECT * FROM Production1schema;