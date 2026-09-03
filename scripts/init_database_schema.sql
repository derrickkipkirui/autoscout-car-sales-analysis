/*
============================================================================
Create Schemas
=============================================================================
Script Purpose:
This script creates a new schemas,the script sets up three schemas :'bronze1', 'silver1' and 'gold1'.

WARNING:
Running this script will drop the schemas if it exists.All data in the database will be permanently deleted.Proceed with caution
and ensure you have proper backups before runing the script.
*/

##Create schemas

CREATE SCHEMA gold1;
CREATE SCHEMA silver1;
CREATE SCHEMA bronze1;
