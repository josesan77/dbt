-- select database to work in
USE FacilityManagement_Core;
GO

SELECT ProductID,TypeLMH,AirTemp,ProcessTemp,RotationalSpeed,Torque,ToolWear,MachineFailure,TWF,HDF,PWF,OSF,RNF
INTO Staging_Production1
FROM Production1;