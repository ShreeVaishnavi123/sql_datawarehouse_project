/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates the 'DataWarehouse' database and
    sets up the 'bronze', 'silver', and 'gold' schemas
    within the database.

WARNING:
    Running this script will drop the entire 'DataWarehouse'
    database if it exists.
    All data in the database will be permanently deleted.
    Proceed with caution and ensure you have proper backups
    before executing this script.
=============================================================
*/

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database

CREATE DATABASE DataWarehouse;
GO

-- Switch to the 'DataWarehouse' database

USE DataWarehouse;
GO

-- Create Schemas

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
