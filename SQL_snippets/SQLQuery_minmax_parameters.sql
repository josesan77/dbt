USE FacilityManagement_Core;
GO

SELECT MIN(AirTemp) AS min_AirTemp, MAX(AirTemp) AS max_AirTemp, 
		MIN(ProcessTemp) AS min_ProcessTemp, MAX(ProcessTemp) AS max_ProcessTemp, 
		MIN(RotationalSpeed) AS min_RotSpeed, MAX(RotationalSpeed) AS max_RotSpeed, 
		MIN(Torque) AS min_Torque, MAX(Torque) AS max_Torque
FROM Production1;