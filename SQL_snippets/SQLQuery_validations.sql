-- select database to work in
USE FacilityManagement_Core;

SELECT TOP 10 ProcessTemp FROM Production1
    ORDER BY ProcessTemp DESC;

WITH validation AS (
    SELECT * FROM Production1
    WHERE ProcessTemp < 273 OR ProcessTemp > 313.7  -- Define your range here
)

SELECT *
FROM validation
GO

SELECT TOP 10 ProductID 
FROM Production1
WHERE ProductID NOT LIKE 'L%';
GO

-- MAX Torque 76,6 Nm
SELECT MAX(Torque)
FROM Production1;
GO

-- too high values
SELECT TOP 10 ProductID, Torque
FROM Production1
WHERE Torque > 75;
GO

SELECT TWF FROM Production1
	WHERE TWF is null;