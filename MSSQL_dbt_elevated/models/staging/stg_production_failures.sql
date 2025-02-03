SELECT * 
FROM {{ source('production_source', 'Production1') }} --FacilityManagement_Core.dbo.Production1;
WHERE MachineFailure = 1; -- selecting only the faulty entries, for further analysis