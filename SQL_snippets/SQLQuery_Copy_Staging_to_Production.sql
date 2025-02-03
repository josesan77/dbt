INSERT INTO Production1 (UID,ProductID,TypeLMH,AirTemp,ProcessTemp,RotationalSpeed,Torque,ToolWear,MachineFailure,TWF,HDF,PWF,OSF,RNF)
SELECT NEWID(),ProductID,TypeLMH,AirTemp,ProcessTemp,RotationalSpeed,Torque,ToolWear,MachineFailure,TWF,HDF,PWF,OSF,RNF
	FROM Staging_Production1;