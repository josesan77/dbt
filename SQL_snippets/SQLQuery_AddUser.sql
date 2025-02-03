use FacilityManagement_Core;
GO

CREATE LOGIN analyst WITH PASSWORD = 'dbanalyst135';
GO

CREATE USER analyst FOR LOGIN analyst;
GO

ALTER ROLE db_datareader ADD MEMBER analyst;
GO

GRANT SELECT ON dbo.Production1 TO analyst;
GO

SELECT 
    dp.name AS felhasznalo,
    dp.type_desc AS felhasznalo_tipus,
    ob.name AS objektum_nev,
    perm.permission_name AS jogosultsag,
    perm.state_desc AS allapot
FROM sys.database_permissions perm
JOIN sys.objects ob ON perm.major_id = ob.object_id
JOIN sys.database_principals dp ON perm.grantee_principal_id = dp.principal_id
WHERE dp.name = 'analyst' 
AND ob.name = 'Production1';
GO

SELECT * FROM fn_my_permissions(NULL, 'DATABASE');
GO

