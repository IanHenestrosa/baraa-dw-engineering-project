/*
=======================================================
Crear la Base de Datos y los Esquemas
=======================================================
Proposito:
    Este scrip crea una nueva base de datos llamada 'DataWarehouse' despues
    de verificar si ya existe.
    Si la base de datos ya existe la eliminta y la vuelve a crear.
    Adicionalmente el script inica thres esquemas dentro de la base de datos:
    'broze', 'silver' y  'gold'.

WARNING:
    Ejecutar este script eliminara la Base de Datos 'DataWarehouse' preexistente.
    Todos los datos dentro de esa Base de Datos seran borrados peranentemente.
    Se debera proceder con precaucion y asegurarse que se cuenta con todos los
    respaldos necesarios antes de que se ejecute este script.
*/



-- Create Database 'DataWarehouse'

USE master;
GO


-- Eliminar y recrear la base de datos 'DataWarehouse'
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Crear la base de datos 'DaraWarehouse'
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Crear los esquemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO