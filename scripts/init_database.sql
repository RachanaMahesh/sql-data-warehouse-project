/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    If you want to drop the entire 'DataWarehouse' database then ensureto switch to another database.
*/
-- Drop and recreate the 'DataWarehouse' database
-- DROP DATABASE IF EXISTS "DataWarehouse";
CREATE DATABASE "DataWarehouse";
CREATE SCHEMA bronze;
CREATE SCHEMA silver;
CREATE SCHEMA gold;
