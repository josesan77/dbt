-- select database to work in
USE FacilityManagement_Core;
GO

CREATE VIEW Overheat AS
SELECT * 
FROM Production1 
WHERE ProcessTemp > 313.7;
GO
