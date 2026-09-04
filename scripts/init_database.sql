/*
===========================================================
Database Initialization
===========================================================

Description:
    Creates the DataWarehouse database and initializes
    the Bronze, Silver, and Gold schemas.

Changes:
    - Drops the existing DataWarehouse database if it exists
    - Creates a new DataWarehouse database
    - Creates the bronze schema
    - Creates the silver schema
    - Creates the gold schema

Architecture:
    Bronze → Silver → Gold

===========================================================
*/




USE master;
GO

IF EXISTS(SELECT 1 FROM sys.databases WHERe name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse
END

CREATE DATABASE DataWareHouse;
GO

USE [DataWarehouse]
GO

	CREATE SCHEMA bronze;

GO
	CREATE SCHEMA silver;
GO
	CREATE SCHEMA gold;
GO
